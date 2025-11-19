unint64_t sub_1A3FDD9C8()
{
  result = qword_1EB15B958[0];
  if (!qword_1EB15B958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15B958);
  }

  return result;
}

unint64_t sub_1A3FDDAC0()
{
  result = qword_1EB19FF00[0];
  if (!qword_1EB19FF00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19FF00);
  }

  return result;
}

void sub_1A3FDDB50()
{
  sub_1A3FDDB98();

  sub_1A5245BB4();
}

unint64_t sub_1A3FDDB98()
{
  result = qword_1EB15C128[0];
  if (!qword_1EB15C128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15C128);
  }

  return result;
}

void sub_1A3FDDBEC(uint64_t a1)
{
  sub_1A3FDDC40(a1, v1);
  sub_1A3FDDB98();
  sub_1A5245BC4();
}

uint64_t sub_1A3FDDC40(uint64_t a1, uint64_t a2)
{
  sub_1A3FDDCA4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A3FDDCA4()
{
  if (!qword_1EB125210)
  {
    sub_1A3FDDCFC();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125210);
    }
  }
}

unint64_t sub_1A3FDDCFC()
{
  result = qword_1EB125218;
  if (!qword_1EB125218)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB125218);
  }

  return result;
}

uint64_t sub_1A3FDDD60(uint64_t a1)
{
  sub_1A3FDDCA4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1A3FDDDFC()
{
  qword_1EB19FEF8 = 0;
  result = 0.0;
  xmmword_1EB19FED8 = 0u;
  unk_1EB19FEE8 = 0u;
  return result;
}

uint64_t sub_1A3FDDE14@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EB19FED0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1A3FDDC40(&xmmword_1EB19FED8, v2);
}

void sub_1A3FDDF30()
{
  v1 = [objc_opt_self() px_deprecated_appPhotoLibrary];
  if (v1)
  {
    v2 = v1;
    if (*(v0 + 96) == 1)
    {
      v3 = [objc_allocWithZone(PXContentFilterState) initWithPhotoLibrary_];
    }

    else
    {
      v3 = *(v0 + 88);
    }

    v4 = v3;
    v5 = *(v0 + 24);
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v11[4] = sub_1A3FE180C;
    v11[5] = v6;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1A3D7692C;
    v11[3] = &block_descriptor_70;
    v7 = _Block_copy(v11);
    v8 = v4;

    [v5 performChanges_];
    _Block_release(v7);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v0 + 72);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(v0, ObjectType, v9);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A3FDE0CC(int a1)
{
  if ((a1 & 0x2000000) != 0)
  {
    v2 = v1;
    v3 = [*(v1 + 24) contentFilterState];
    v26 = v3;
    if (v3)
    {
      LOBYTE(v3) = [v3 isFiltering];
    }

    *(v1 + 96) = v3;
    v5 = *(v1 + 80);
    v4 = *(v2 + 88);
    v6 = v4;
    sub_1A3FDEEDC(v4);
    *(v5 + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_isFilterActive) = *(v2 + 96);
    sub_1A3FDF50C();
    if (*(v2 + 96) == 1)
    {
      if (v26)
      {
        [v26 copy];
        sub_1A524E0B4();
        swift_unknownObjectRelease();
        sub_1A3C52C70(0, &qword_1EB12FEF8);
        swift_dynamicCast();
        v7 = *(v2 + 88);
        *(v2 + 88) = v27;
        v8 = v27;

        v9 = *(v2 + 80);
        sub_1A3FDEEDC(v8);
        *(v9 + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_isFilterActive) = *(v2 + 96);
        sub_1A3FDF50C();
        v10 = *(v2 + 48);
        v11 = *(v2 + 56);
        v12 = *(v2 + 88);
        v13 = [objc_opt_self() standardUserDefaults];
        sub_1A524E404();

        MEMORY[0x1A5907B60](v10, v11);
        v14 = *(sub_1A3FDFEC4() + 16);
        if (v14)
        {
          v24 = v13;
          v25 = v8;
          v28 = MEMORY[0x1E69E7CC0];
          sub_1A3C57108(0, v14, 0);
          v15 = 32;
          do
          {
            v16 = sub_1A524EA44();
            v18 = v17;
            v20 = *(v28 + 16);
            v19 = *(v28 + 24);
            if (v20 >= v19 >> 1)
            {
              sub_1A3C57108((v19 > 1), v20 + 1, 1);
            }

            *(v28 + 16) = v20 + 1;
            v21 = v28 + 16 * v20;
            *(v21 + 32) = v16;
            *(v21 + 40) = v18;
            v15 += 8;
            --v14;
          }

          while (v14);

          v8 = v25;
          v13 = v24;
        }

        else
        {
        }

        sub_1A3FE1998(0, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        sub_1A3CAD85C();
        sub_1A524C514();

        v22 = sub_1A524EB54();
        v23 = sub_1A524C634();

        [v13 setObject:v22 forKey:v23];

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1A3FDE478()
{
  swift_unknownObjectRelease();

  sub_1A3D35A10((v0 + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_1A3FDE4E0(char a1, uint64_t a2)
{
  v3 = v2;
  v81 = a2;
  v6 = sub_1A524DCC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524DE34();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = &v2[OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_onToggle];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v2[OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_onShowDetails];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_targetFilterState] = 0;
  v2[OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_isFilterActive] = 0;
  *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_dynamicConstraints] = MEMORY[0x1E69E7CC0];
  v2[OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_style] = a1 & 1;
  *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_expansionEdge] = a2;
  sub_1A3C52C70(0, &qword_1EB126570);
  sub_1A524DCA4();
  sub_1A524DCF4();
  (*(v7 + 104))(v9, *MEMORY[0x1E69DC508], v6);
  sub_1A524DCD4();
  *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_button] = sub_1A524DE44();
  v13 = [objc_opt_self() effectWithStyle_];
  v14 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *&v3[OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_backgroundVisualEffectView] = v14;
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&v3[OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_label] = v15;
  v16 = type metadata accessor for FilterView();
  v83.receiver = v3;
  v83.super_class = v16;
  v17 = 0.0;
  v18 = objc_msgSendSuper2(&v83, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v19 = OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_backgroundVisualEffectView;
  v20 = *&v18[OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_backgroundVisualEffectView];
  v21 = v18;
  [v21 addSubview_];
  v22 = [*&v18[v19] contentView];
  v23 = OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_label;
  v24 = *&v21[OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_label];
  v78 = v22;
  [v22 addSubview_];
  v25 = OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_button;
  [v21 addSubview_];
  [*&v18[v19] setTranslatesAutoresizingMaskIntoConstraints_];
  v82 = v23;
  [*&v21[v23] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v21[v25] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1A3FE1998(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1A53103F0;
  v27 = [*&v18[v19] leadingAnchor];
  v28 = [v21 leadingAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v26 + 32) = v29;
  v30 = &selRef_trailingAnchor;
  v31 = [*&v18[v19] trailingAnchor];
  v32 = [v21 trailingAnchor];

  v33 = [v31 constraintEqualToAnchor_];
  *(v26 + 40) = v33;
  v34 = [*&v18[v19] topAnchor];
  v35 = [v21 topAnchor];

  v36 = [v34 constraintEqualToAnchor_];
  *(v26 + 48) = v36;
  v37 = [*&v18[v19] bottomAnchor];
  v38 = [v21 bottomAnchor];

  v39 = [v37 constraintEqualToAnchor_];
  v40 = v81;
  *(v26 + 56) = v39;
  v41 = *&v21[v25];
  v79 = v19;
  if (v40 == 2)
  {
    v17 = -0.0;
  }

  else
  {
    if (v40 != 8)
    {
      goto LABEL_13;
    }

    v30 = &selRef_leadingAnchor;
  }

  v42 = v41;
  v43 = [v42 *v30];
  v44 = [v21 *v30];
  v45 = [v43 constraintEqualToAnchor:v44 constant:v17];

  *(v26 + 64) = v45;
  v46 = [*&v21[v25] topAnchor];
  v47 = [v21 topAnchor];

  v48 = [v46 constraintEqualToAnchor_];
  *(v26 + 72) = v48;
  v49 = [*&v21[v25] bottomAnchor];
  v50 = [v21 bottomAnchor];

  v51 = [v49 constraintEqualToAnchor_];
  *(v26 + 80) = v51;
  v52 = *&v21[v82];
  v80 = v18;
  if (v81 != 2)
  {
    if (v81 == 8)
    {
      v53 = 5.0;
      v54 = &selRef_trailingAnchor;
      v55 = &selRef_leadingAnchor;
      goto LABEL_9;
    }

LABEL_13:
    result = sub_1A524E6E4();
    __break(1u);
    return result;
  }

  v53 = -5.0;
  v54 = &selRef_leadingAnchor;
  v55 = &selRef_trailingAnchor;
LABEL_9:
  v56 = *&v21[v25];
  v57 = v52;
  v58 = v56;
  v59 = [v57 *v55];
  v60 = [v58 *v54];
  v61 = objc_opt_self();
  v62 = [v59 constraintEqualToAnchor:v60 constant:v53];

  *(v26 + 88) = v62;
  v63 = v82;
  v64 = [*&v21[v82] topAnchor];
  v65 = [v21 topAnchor];

  v66 = [v64 constraintEqualToAnchor_];
  *(v26 + 96) = v66;
  v67 = [*&v21[v63] bottomAnchor];
  v68 = [v21 bottomAnchor];
  v69 = [v67 constraintEqualToAnchor_];

  *(v26 + 104) = v69;
  sub_1A3C52C70(0, &qword_1EB126A30);
  v70 = sub_1A524CA14();

  [v61 activateConstraints_];

  v71 = *&v21[v25];
  sub_1A3C52C70(0, &qword_1EB126590);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v72 = v71;
  v73 = sub_1A524DC64();
  [v72 addAction:v73 forControlEvents:0x2000];

  v74 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v21 action:sel_handleTap_];
  [v21 addGestureRecognizer_];

  if (v21[OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_isFilterActive])
  {
    v75 = 0;
  }

  else
  {
    v75 = v21[OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_style] ^ 1;
  }

  [*&v80[v79] setHidden_];

  return v21;
}

void sub_1A3FDEEDC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_targetFilterState;
  v5 = *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_targetFilterState);
  *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_targetFilterState) = a1;
  a1;

  if (a1)
  {
    v6 = *(v2 + v4);
    if (v6)
    {
      v7 = *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_button);
      v8 = v6;
      v9 = sub_1A3FDFB08();
      if (v9)
      {
        v10 = v9;
        v11 = [objc_opt_self() configurationWithPointSize:6 weight:14.0];
        v12 = [v10 imageWithConfiguration_];
      }

      else
      {
        v12 = 0;
      }

      [v7 setImage:v12 forState:0];
    }

    [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
    v13 = [objc_opt_self() preferredFontForTextStyle_];
    v14 = sub_1A524C634();
    v15 = PXLocalizedString(v14);

    sub_1A524C674();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A3FDF50C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_isFilterActive;
  if (*(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_isFilterActive))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_style) ^ 1;
  }

  v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_backgroundVisualEffectView);
  [v3 setHidden_];
  v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_button);
  if (*(v0 + v1) == 1)
  {
    v5 = [objc_opt_self() linkColor];
  }

  else
  {
    v5 = 0;
  }

  [v4 setBackgroundColor_];

  if (*(v0 + v1) == 1)
  {
    v6 = [objc_opt_self() whiteColor];
  }

  else
  {
    v6 = 0;
  }

  [v4 setTintColor_];

  v7 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_label);
  [v7 setHidden_];
  v8 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_targetFilterState);
  if (v8)
  {
    v9 = v0;
    v10 = v8;
    v11 = sub_1A3FDFB08();
    if (v11)
    {
      v12 = v11;
      v13 = [objc_opt_self() configurationWithPointSize:6 weight:14.0];
      v14 = [v12 imageWithConfiguration_];
    }

    else
    {
      v14 = 0;
    }

    [v4 setImage:v14 forState:0];

    v0 = v9;
  }

  v15 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_expansionEdge);
  if (*(v0 + v1) != 1)
  {
    if (v15 == 8)
    {
      v17 = &selRef_trailingAnchor;
      v16 = -0.0;
    }

    else
    {
      if (v15 != 2)
      {
        goto LABEL_26;
      }

      v16 = 0.0;
      v17 = &selRef_leadingAnchor;
    }

    v7 = v4;
LABEL_25:
    v18 = [v3 *v17];
    v19 = [v7 *v17];
    v20 = [v18 constraintEqualToAnchor:v19 constant:v16];

    sub_1A3FE1998(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1A52F9790;
    *(v21 + 32) = v20;
    v20;
    sub_1A3FDFA20(v21);
  }

  if (v15 == 8)
  {
    v16 = 15.0;
    v17 = &selRef_trailingAnchor;
    goto LABEL_25;
  }

  if (v15 == 2)
  {
    v16 = -15.0;
    v17 = &selRef_leadingAnchor;
    goto LABEL_25;
  }

LABEL_26:
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A3FDFA20(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_dynamicConstraints) = a1;
  v2 = objc_opt_self();
  sub_1A3C52C70(0, &qword_1EB126A30);
  v3 = sub_1A524CA14();

  [v2 deactivateConstraints_];

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A3FDFB08()
{
  v0 = sub_1A3FDFEC4();
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    v4 = *(v0 + 32);

    if (v4 != 8 && v4 != 9 && v4 != 11)
    {
      v3 = PXContentFilterImageForItemTag(v4);
      if (!v3)
      {
        goto LABEL_12;
      }

      return v3;
    }
  }

  else
  {
    if (v1)
    {

LABEL_12:
      v5 = sub_1A524C634();
      v3 = [objc_opt_self() systemImageNamed_];

      return v3;
    }
  }

  v2 = sub_1A524C634();

  v3 = [objc_opt_self() systemImageNamed_];

  if (!v3)
  {
    goto LABEL_12;
  }

  return v3;
}

id sub_1A3FDFDEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FilterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A3FDFEC4()
{
  v1 = v0;
  v2 = [v0 isContentFilterActive_];
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1A3FE00FC(0, 1, 1);
    v3 = v13;
    v5 = *(v13 + 16);
    v4 = *(v13 + 24);
    if (v5 >= v4 >> 1)
    {
      sub_1A3FE00FC((v4 > 1), v5 + 1, 1);
      v3 = v13;
    }

    *(v3 + 16) = v5 + 1;
    *(v3 + 8 * v5 + 32) = 8;
  }

  if ([v1 isContentFilterActive_])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1A3FE00FC(0, *(v3 + 16) + 1, 1);
    }

    v7 = *(v3 + 16);
    v6 = *(v3 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_1A3FE00FC((v6 > 1), v7 + 1, 1);
    }

    *(v3 + 16) = v7 + 1;
    *(v3 + 8 * v7 + 32) = 9;
  }

  if ([v1 isContentFilterActive_])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1A3FE00FC(0, *(v3 + 16) + 1, 1);
    }

    v9 = *(v3 + 16);
    v8 = *(v3 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_1A3FE00FC((v8 > 1), v9 + 1, 1);
    }

    *(v3 + 16) = v9 + 1;
    *(v3 + 8 * v9 + 32) = 10;
  }

  if ([v1 isContentFilterActive_])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1A3FE00FC(0, *(v3 + 16) + 1, 1);
    }

    v11 = *(v3 + 16);
    v10 = *(v3 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1A3FE00FC((v10 > 1), v11 + 1, 1);
    }

    *(v3 + 16) = v11 + 1;
    *(v3 + 8 * v11 + 32) = 11;
  }

  return v3;
}

char *sub_1A3FE00FC(char *a1, int64_t a2, char a3)
{
  result = sub_1A3FE011C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A3FE011C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3FE175C(0, &qword_1EB12FEE8, type metadata accessor for PXContentFilterItemTag);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1A3FE0230(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3FE175C(0, &qword_1EB12FEE8, type metadata accessor for PXContentFilterItemTag);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_1A3FE0344(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FE08D0()
{
  v0 = sub_1A524C8E4();
  v4 = sub_1A3FE0950(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1A3FE0950(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1A524DF44();
    if (v9)
    {
      v10 = v9;
      v11 = sub_1A3C2E898(v9, 0);
      sub_1A3FE0AA8(v13, (v11 + 4), v10, a1, a2, a3, a4);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v12 = sub_1A524C784();

    return v12;
  }

  else if ((a4 & 0x2000000000000000) != 0)
  {
    v13[0] = a3;
    v13[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    return sub_1A524C784();
  }

  else
  {
    if ((a3 & 0x1000000000000000) == 0)
    {
      sub_1A524E4F4();
    }

    return sub_1A524C784();
  }
}

unint64_t sub_1A3FE0AA8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1A3FE0CC8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1A524C874();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1A524E4F4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1A3FE0CC8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1A524C844();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1A3FE0CC8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1A524C884();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1A5907BC0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_1A3FE0D44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v8[9] = 0;
  v8[4] = 0;
  v8[5] = 0;
  swift_unknownObjectWeakInit();
  v8[3] = a1;
  v8[6] = a2;
  v8[7] = a3;
  v8[9] = a7;
  swift_unknownObjectWeakAssign();
  v13 = objc_allocWithZone(type metadata accessor for FilterView());
  v14 = a1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A3FE1660()
{
  result = qword_1EB12FE88;
  if (!qword_1EB12FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FE88);
  }

  return result;
}

void sub_1A3FE175C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524EA54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A3FE17B0(uint64_t a1)
{
  sub_1A3C8BC40();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3FE181C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A3FDDF30();
  }

  return result;
}

uint64_t sub_1A3FE1870()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [*(result + 24) gridActionManager];
    v3 = [v2 actionPerformerForActionType_];

    if (v3)
    {
      [v3 setSender_];
      [v3 performActionWithCompletionHandler_];
    }
  }

  return result;
}

uint64_t sub_1A3FE193C(uint64_t a1, int a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A3FDE0CC(a2);
  }

  return result;
}

void sub_1A3FE1998(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3FE19E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_onToggle);
    v2 = *(Strong + OBJC_IVAR____TtC12PhotosUICoreP33_1A021748C2E8715B5DBBC8A539A4122610FilterView_onToggle + 8);
    v3 = Strong;
    sub_1A3D607F0(v1);

    if (v1)
    {
      v1();
      sub_1A3C784D4(v1, v2);
    }
  }
}

id static UIFontDescriptorTraitKey.design.getter()
{
  result = *MEMORY[0x1E69658E0];
  if (*MEMORY[0x1E69658E0])
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3FE1A98(uint64_t a1)
{
  v1 = sub_1A3FE1EB4(a1);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  v3 = sub_1A3FE1B4C(v1, *MEMORY[0x1E69DDC50]);

  v4 = v3;
  sub_1A524A284();
  v5 = sub_1A524A1F4();

  return v5;
}

id sub_1A3FE1B4C(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = [v4 currentTraitCollection];
  v6 = [v5 preferredContentSizeCategory];

  if (sub_1A524D744())
  {
    v7 = v6;
  }

  else
  {
    v7 = a2;
  }

  v8 = v7;
  v9 = [v4 traitCollectionWithPreferredContentSizeCategory_];

  v10 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  v11 = [v10 scaledFontForFont:a1 compatibleWithTraitCollection:v9];

  return v11;
}

unint64_t sub_1A3FE1C60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A3FE2350(0, &qword_1EB1263D8, MEMORY[0x1E69E6EC8]);
    v3 = sub_1A524E794();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A3FE23F8(v4, &v11, &qword_1EB126870, type metadata accessor for TraitKey);
      v5 = v11;
      result = sub_1A3FBDC38(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A3C57128(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1A3FE1D98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A3FBE784();
    v3 = sub_1A524E794();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A3FE23F8(v4, &v11, &qword_1EB1267F0, type metadata accessor for AttributeName);
      v5 = v11;
      result = sub_1A3FBDC38(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A3C57128(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_1A3FE1EB4(uint64_t a1)
{
  sub_1A3FE21F8(0, &unk_1EB1261B8, &qword_1EB126870, type metadata accessor for TraitKey);
  result = swift_initStackObject();
  *(result + 16) = xmmword_1A52F8E10;
  v3 = *MEMORY[0x1E69658E0];
  if (*MEMORY[0x1E69658E0])
  {
    v4 = result;
    *(result + 32) = v3;
    result = *MEMORY[0x1E69658A0];
    if (*MEMORY[0x1E69658A0])
    {
      v5 = sub_1A524C674();
      v6 = MEMORY[0x1E69E6158];
      v4[8] = MEMORY[0x1E69E6158];
      v4[5] = v5;
      v4[6] = v7;
      v8 = v3;
      v9 = sub_1A3FE1C60(v4);
      swift_setDeallocating();
      sub_1A3FE2180((v4 + 4));
      sub_1A3FE21F8(0, &qword_1EB1261B0, &qword_1EB1267F0, type metadata accessor for AttributeName);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A52FC9F0;
      v11 = *MEMORY[0x1E69DB8F0];
      *(inited + 32) = *MEMORY[0x1E69DB8F0];
      sub_1A3FE2350(0, &qword_1EB126FD0, MEMORY[0x1E69E5E28]);
      *(inited + 40) = v9;
      v12 = *MEMORY[0x1E69DB8B0];
      *(inited + 64) = v13;
      *(inited + 72) = v12;
      sub_1A3FE22B8(0, &qword_1EB126ED0, v6, MEMORY[0x1E69E62F8]);
      *(inited + 104) = v14;
      *(inited + 80) = a1;
      v15 = v11;
      v16 = v12;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3FE2180(uint64_t a1)
{
  sub_1A3FE2250(0, &qword_1EB126870, type metadata accessor for TraitKey);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3FE21F8(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A3FE2250(255, a3, a4);
    v5 = sub_1A524EA54();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3FE2250(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A3FE22B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A3FE2308(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A3FE2350(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for TraitKey(255);
    v7 = v6;
    v8 = sub_1A3FE2308(&qword_1EB126878, type metadata accessor for TraitKey);
    v9 = a3(a1, v7, MEMORY[0x1E69E7CA0] + 8, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A3FE23F8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1A3FE2250(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A3FE24B4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1EB12AA20;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A3FE2520(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = qword_1EB12AA20;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A3FE25C0;
}

void sub_1A3FE25C0(uint64_t a1, char a2)
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

void sub_1A3FE26C0()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v20.receiver = v0;
  v20.super_class = type metadata accessor for PhotosPagingContentViewController();
  v5 = objc_msgSendSuper2(&v20, sel_viewDidLoad);
  if (MEMORY[0x1A590D320](v5))
  {
    goto LABEL_5;
  }

  v6 = [v0 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  type metadata accessor for PhotosPagingSecondaryToolbarController();
  swift_unknownObjectRetain();
  v8 = sub_1A43FFCD0(v7, v1);
  v9 = *&v1[qword_1EB18F448];
  *&v1[qword_1EB18F448] = v8;

  v10 = *&v1[qword_1EB18F448];
  if (v10)
  {
    v11 = *((*v2 & *v10) + 0x88);
    v12 = v1;
    v13 = v10;
    v11(v1, &off_1F16EFF40);

LABEL_5:
    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_opt_self() clearColor];
      [v15 setBackgroundColor_];

      type metadata accessor for PhotosPagingLayout();
      v17 = *&v1[qword_1EB12AA18];
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = v3;
      v19[3] = v4;
      v19[4] = v18;
      sub_1A3D976A8(v17, v1, sub_1A3FEC504, v19);
    }

    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
}

void sub_1A3FE2C08(void *a1)
{
  v1 = a1;
  sub_1A3FE26C0();
}

void sub_1A3FE2C50()
{
  v1 = MEMORY[0x1E69E7D40];
  v18.receiver = v0;
  v18.super_class = type metadata accessor for PhotosPagingContentViewController();
  v2 = objc_msgSendSuper2(&v18, sel_viewWillLayoutSubviews);
  v3 = MEMORY[0x1A590D320](v2);
  if ((v3 & 1) == 0)
  {
    v4 = *(v0 + qword_1EB18F448);
    if (!v4)
    {
LABEL_9:
      __break(1u);
      return;
    }

    v3 = [v4 updateIfNeeded];
  }

  v5 = (*((*v1 & *v0) + 0x1E8))(v3);
  sub_1A3FE4FD0(v5);

  v6 = *(v0 + qword_1EB18F458);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v7 setFrame_];
}

void sub_1A3FE2DC4(void *a1)
{
  v1 = a1;
  sub_1A3FE2C50();
}

uint64_t sub_1A3FE2E0C(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PhotosPagingContentViewController();
  v4 = objc_msgSendSuper2(&v7, sel_addChildViewController_, a1);
  v5 = (*((*v3 & *v1) + 0x1E8))(v4);
  if (v5)
  {
  }

  else
  {
    sub_1A3FE5110();
  }

  return sub_1A3FE920C();
}

void sub_1A3FE2EE8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1A3FE2E0C(v4);
}

BOOL sub_1A3FE2F50(void *a1)
{
  v1 = a1;
  v2 = sub_1A3FE2F84();

  return v2;
}

BOOL sub_1A3FE2FF0(void *a1)
{
  v1 = a1;
  v2 = sub_1A3FE3024();

  return v2;
}

id sub_1A3FE3090(void *a1)
{
  v1 = a1;
  sub_1A3FE31CC(&v10);

  v2 = v11;
  if (v11)
  {
    v3 = __swift_project_boxed_opaque_existential_1(&v10, v11);
    v4 = *(v2 - 8);
    v5 = MEMORY[0x1EEE9AC00](v3);
    v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7, v5);
    v8 = sub_1A524EA94();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_0(&v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

_OWORD *sub_1A3FE31CC@<X0>(_OWORD *a1@<X8>)
{
  v71 = a1;
  v2 = *MEMORY[0x1E69E7D40];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v63 = v59 - v4;
  v62 = sub_1A5246F24();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59[4] = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59[3] = v59 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v66 = AssociatedTypeWitness;
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v59[2] = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v59 - v12;
  v14 = sub_1A524DF24();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v65 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v59 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v59 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v25 = **(v1 + qword_1EB12AA18) & v2;
  v27 = v59 - v26;
  v28 = *(v25 + 240);
  v70 = *(v1 + qword_1EB12AA18);
  v28(v24);
  v29 = *(v15 + 16);
  v74 = v27;
  v68 = v29;
  v69 = v15 + 16;
  v29(v22, v27, v14);
  v72 = *(v9 + 48);
  v73 = v9 + 48;
  if (v72(v22, 1, v8) == 1)
  {
    (*(v15 + 8))(v22, v14);
    v30 = MEMORY[0x1E69E7D40];
  }

  else
  {
    v67 = v15;
    v31 = (*(v9 + 32))(v13, v22, v8);
    v30 = MEMORY[0x1E69E7D40];
    v32 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1E8))(v31);
    if (v32)
    {
      v33 = v32;
      v59[1] = v9;
      v34 = [v32 representedItem];
      v59[0] = v13;
      if (v34)
      {
        sub_1A524E0B4();
        swift_unknownObjectRelease();
        sub_1A3C57128(&v75, &v76);
        swift_getAssociatedConformanceWitness();
        sub_1A5246244();
      }

      sub_1A3C52C70(0, &qword_1EB12B140);
      v38 = sub_1A524DEF4();
      *&v76 = 0;
      *(&v76 + 1) = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](0xD000000000000032, 0x80000001A53C1780);
      v39 = v33;
      v40 = [v39 description];
      v41 = sub_1A524C674();
      v43 = v42;

      MEMORY[0x1A5907B60](v41, v43);

      AssociatedConformanceWitness = v76;
      v44 = v38;
      sub_1A5246F34();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    (*(v9 + 8))(v13, v8);
    v15 = v67;
  }

  v35 = v70;
  v36 = v74;
  v37 = v19;
  v68(v19, v74, v14);
  if (v72(v19, 1, v8) != 1)
  {
    *(&v77 + 1) = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v76);
    (*(v9 + 32))(boxed_opaque_existential_1, v19, v8);
    (*(v15 + 8))(v36, v14);
    return sub_1A3C57128(&v76, v71);
  }

  v47 = *(v15 + 8);
  v46 = v15 + 8;
  v45 = v47;
  v48 = (v47)(v37, v14);
  v76 = 0u;
  v77 = 0u;
  v49 = (*((*v30 & *v35) + 0x120))(v48);
  if (!v49)
  {
    v45(v74, v14);
    v53 = v65;
    (*(v9 + 56))(v65, 1, 1, v8);
LABEL_15:
    result = (v45)(v53, v14);
    v56 = v71;
    *v71 = 0u;
    v56[1] = 0u;
    if (!*(&v77 + 1))
    {
      return result;
    }

    return sub_1A3C35B00(&v76);
  }

  v50 = v49;
  v51 = v74;
  v67 = v46;
  v52 = v63;
  (*((*v30 & *v35) + 0xD8))();
  v53 = v65;
  v50(v52);
  sub_1A3C33378(v50);
  (*(v64 + 8))(v52, v66);
  if (v72(v53, 1, v8) == 1)
  {
    v45(v51, v14);
    goto LABEL_15;
  }

  v57 = v71;
  *(v71 + 3) = v8;
  v58 = __swift_allocate_boxed_opaque_existential_1(v57);
  (*(v9 + 32))(v58, v53, v8);
  result = (v45)(v51, v14);
  if (!*(&v77 + 1))
  {
    return result;
  }

  return sub_1A3C35B00(&v76);
}

id sub_1A3FE3EF0(void *a1)
{
  v1 = a1;
  v2 = sub_1A3FE3F34();

  return v2;
}

uint64_t sub_1A3FE3F70(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1EB12AA28);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1A3FE3F8C(uint64_t a1)
{
  sub_1A48C299C();
  sub_1A3FEDA60();
  if (sub_1A524E114())
  {
    sub_1A3FE5110();
  }

  sub_1A48C250C();
  if (sub_1A524E114() & 1) != 0 || (sub_1A48C2500(), (sub_1A524E114()))
  {
    sub_1A3FE4E00();
    sub_1A3FE96E8();
  }

  sub_1A48C2500();
  v3 = sub_1A524E114();
  if ((v3 & 1) != 0 && (*((*MEMORY[0x1E69E7D40] & *v1) + 0x138))(v3, v4))
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(v1, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  v9 = *sub_1A48C35A8();
  result = sub_1A524E114();
  if (result)
  {
    [v1 setNeedsStatusBarAppearanceUpdate];
    [v1 setNeedsUpdateOfHomeIndicatorAutoHidden];
    return [v1 px_adjustAdditionalSafeAreaInsetsToKeepContentStableRegardlessOfStatusBarVisibility];
  }

  return result;
}

void sub_1A3FE41B0(uint64_t a1)
{
  v2 = *(v1 + qword_1EB12AA30);
  *(v1 + qword_1EB12AA30) = a1;
}

void sub_1A3FE41C4(uint64_t a1)
{
  v2 = *(v1 + qword_1EB12AA48);
  *(v1 + qword_1EB12AA48) = a1;
}

void sub_1A3FE41D8(uint64_t a1)
{
  v2 = *(v1 + qword_1EB12AA40);
  *(v1 + qword_1EB12AA40) = a1;
}

uint64_t sub_1A3FE41EC@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EB1722F0;
  swift_beginAccess();
  return sub_1A3FEDDAC(v1 + v3, a1, &qword_1EB124A60, off_1E7721250);
}

uint64_t sub_1A3FE4260(uint64_t a1)
{
  v3 = qword_1EB1722F0;
  swift_beginAccess();
  sub_1A3FED9E0(a1, v1 + v3);
  return swift_endAccess();
}

void *sub_1A3FE42C0()
{
  v1 = qword_1EB1EB5E0;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A3FE430C(void *a1)
{
  sub_1A3FEC630(a1);
}

void (*sub_1A3FE4344(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = qword_1EB1EB5E0;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1A3FE43E0;
}

void sub_1A3FE43E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1A3FEC630(v3);

    v3 = *v4;
  }

  else
  {
    sub_1A3FEC630(*(*a1 + 24));
  }

  free(v2);
}

uint64_t sub_1A3FE445C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1EB18F420);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

id sub_1A3FE4478(uint64_t a1)
{
  if ((a1 & 0x1000) != 0)
  {
    sub_1A3FE786C();
  }

  if ((a1 & 0x80100400000025) != 0)
  {
    sub_1A3FE6678(1);
  }

  if ((a1 & 4) != 0)
  {
    sub_1A3FE5554(0);
    if ((a1 & 0x20) == 0)
    {
LABEL_7:
      if ((a1 & 0x200000000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((a1 & 0x20) == 0)
  {
    goto LABEL_7;
  }

  sub_1A3FE7664();
  if ((a1 & 0x200000000000000) == 0)
  {
LABEL_8:
    if ((a1 & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_16:
  sub_1A3FE96E8();
  if ((a1 & 0x20) != 0)
  {
LABEL_9:
    sub_1A3FE9CD0();
  }

LABEL_10:
  result = [objc_opt_self() shouldReconfigureOpacityOfSecondaryToolbarControllerForViewModelChange_];
  if (result)
  {
    result = sub_1A3FE7E40();
  }

  if ((a1 & 0x800000000000000) != 0)
  {
    sub_1A3FE7F38();

    return sub_1A3FE920C();
  }

  return result;
}

void sub_1A3FE4538(uint64_t a1)
{
  v2 = *(v1 + qword_1EB18F3F8);
  *(v1 + qword_1EB18F3F8) = a1;
}

void sub_1A3FE454C(uint64_t a1)
{
  v2 = *(v1 + qword_1EB18F3B0);
  *(v1 + qword_1EB18F3B0) = a1;
}

void sub_1A3FE4560(uint64_t a1)
{
  v2 = *(v1 + qword_1EB18F3A8);
  *(v1 + qword_1EB18F3A8) = a1;
}

void sub_1A3FE4574(uint64_t a1)
{
  v2 = *(v1 + qword_1EB1722E0);
  *(v1 + qword_1EB1722E0) = a1;
}

void sub_1A3FE4588(uint64_t a1)
{
  v2 = *(v1 + qword_1EB1722D8);
  *(v1 + qword_1EB1722D8) = a1;
}

void sub_1A3FE459C(uint64_t a1)
{
  v2 = *(v1 + qword_1EB1722D0);
  *(v1 + qword_1EB1722D0) = a1;
}

void sub_1A3FE45B0(uint64_t a1)
{
  v2 = *(v1 + qword_1EB18F448);
  *(v1 + qword_1EB18F448) = a1;
}

uint64_t sub_1A3FE45D4(char a1)
{
  *(v1 + qword_1EB18F3E0) = a1;
  result = MEMORY[0x1A590D320]();
  if (result)
  {
    return result;
  }

  result = *(v1 + qword_1EB18F448);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  [result invalidateSecondaryToolbarLayout];
  result = *(v1 + qword_1EB18F448);
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  return [result updateIfNeeded];
}

uint64_t sub_1A3FE4658(uint64_t result)
{
  if (*(v1 + qword_1EB18F398) != (result & 1))
  {
    sub_1A3FE5554(0);

    return sub_1A3FE6678(0);
  }

  return result;
}

uint64_t sub_1A3FE46B8(char a1)
{
  v2 = *(v1 + qword_1EB18F398);
  *(v1 + qword_1EB18F398) = a1;
  return sub_1A3FE4658(v2);
}

id sub_1A3FE46F0()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8))();
  if (result)
  {
    v2 = result;
    v3 = [result viewModel];
    v4 = ([v3 allowedChromeItems] & 0x40) != 0 && objc_msgSend(v3, sel_contentPrivacyState) != 1;
    v5 = [v3 customLeadingAccessoryView];
    if (v5)
    {
      v6 = v5;

      return v6;
    }

    else if (v4)
    {
      v7 = [v2 filterButtonController];
      [v7 invalidateButton];
      v8 = [v7 button];

      return v8;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *sub_1A3FE4840()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8))();
  if (result)
  {
    v2 = result;
    v3 = [result viewModel];
    if (([v3 allowedChromeItems] & 0x40) != 0)
    {
      v4 = [v3 contentPrivacyState];

      if (v4 == 1)
      {
        return 0;
      }

      else
      {
        v5 = *(v0 + qword_1EB18F3B0);
        v6 = v5;
        return v5;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1A3FE4920()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 viewModel];
  v4 = ([v3 allowedChromeItems] & 0x40) == 0 || objc_msgSend(v3, sel_contentPrivacyState) == 1;
  v5 = [v3 customTrailingAccessoryView];

  if (!v5 && !v4)
  {
    v5 = *(v0 + qword_1EB18F3A8);
    if (!v5)
    {
      v5 = *(v0 + qword_1EB18F3F8);
    }

    v6 = v5;
  }

  return v5;
}

uint64_t sub_1A3FE4A30()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 viewModel];
    if ([v3 isInSelectMode])
    {
LABEL_3:
      v4 = MEMORY[0x1E69E7CC0];
LABEL_11:

      return v4;
    }

    v5 = ([v3 allowedChromeItems] & 0x40) != 0 && objc_msgSend(v3, sel_contentPrivacyState) != 1;
    v6 = [v3 customLeadingAccessoryBarButtonItems];
    if (v6)
    {
      v7 = v6;
      sub_1A3C52C70(0, &qword_1EB126B80);
      v4 = sub_1A524CA34();
      v8 = v2;
      v2 = v3;
      v3 = v7;
    }

    else
    {
      if (!v5 || (MEMORY[0x1A590D320]() & 1) != 0)
      {
        goto LABEL_3;
      }

      v8 = [v2 filterButtonController];
      [v8 invalidateButton];
      sub_1A3C37240(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1A52F9790;
      v10 = [v8 button];

      v11 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
      *(v4 + 32) = v11;
    }

    goto LABEL_11;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A3FE4C48()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 viewModel];
    if (([v3 isInSelectMode] & 1) == 0)
    {
      v5 = ([v3 allowedChromeItems] & 0x40) == 0 || objc_msgSend(v3, sel_contentPrivacyState) == 1;
      v6 = [v3 customTrailingAccessoryBarButtonItems];
      if (v6)
      {
        v7 = v6;
        sub_1A3C52C70(0, &qword_1EB126B80);
        v4 = sub_1A524CA34();

        v2 = v3;
        v3 = v7;
        goto LABEL_10;
      }

      if (((MEMORY[0x1A590D320]() | v5) & 1) == 0)
      {
        v9 = *(v0 + qword_1EB1722D0);
        if (v9)
        {
          sub_1A3C37240(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v4 = swift_allocObject();
          *(v4 + 16) = xmmword_1A52F9790;
          *(v4 + 32) = v9;
          v10 = v9;
          goto LABEL_10;
        }
      }
    }

    v4 = MEMORY[0x1E69E7CC0];
LABEL_10:

    return v4;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1A3FE4E00()
{
  v1 = v0;
  if (![v0 isViewLoaded])
  {
    return;
  }

  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8))();
  if (v3)
  {

    v4 = [objc_opt_self() systemBlackColor];
LABEL_4:
    v5 = v4;
    goto LABEL_7;
  }

  v5 = (*((*v2 & *v0) + 0x528))();
  if (!v5)
  {
    v4 = [objc_opt_self() systemBackgroundColor];
    goto LABEL_4;
  }

LABEL_7:
  v6 = *(v0 + qword_1EB12AA48);
  if (!v6)
  {
    __break(1u);
    goto LABEL_17;
  }

  v10 = v5;
  [v6 setBackgroundColor_];
  if (sub_1A499F314())
  {
    v7 = [v1 navigationController];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 view];

      if (v9)
      {
        [v9 setBackgroundColor_];

        goto LABEL_12;
      }

LABEL_17:
      __break(1u);
      return;
    }
  }

LABEL_12:
}

void sub_1A3FE4FD0(void *a1)
{
  if (v1[qword_1EB18F3E0] != 1)
  {
    return;
  }

  if (MEMORY[0x1A590D320]())
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v3 = *&v1[qword_1EB18F448];
    if (!v3)
    {
LABEL_15:
      __break(1u);
      return;
    }

    [v3 containerViewAdditionalEdgeInsets];
    [a1 setAdditionalSafeAreaInsets_];
  }

  v4 = [a1 viewIfLoaded];
  if (!v4)
  {
    return;
  }

  v15 = v4;
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  [v5 layoutMargins];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v15 setLayoutMargins_];
}

void sub_1A3FE5110()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *MEMORY[0x1E69E7D40];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  (*((**(v0 + qword_1EB12AA18) & v2) + 0xF0))(v10);
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    (*(v5 + 8))(v7, v4);
    v13 = 0;
  }

  else
  {
    (*(v8 + 32))(v12, v7, AssociatedTypeWitness);
    v13 = sub_1A3FE878C(v12);
    (*(v8 + 8))(v12, AssociatedTypeWitness);
    v14 = v13;
  }

  (*((*v1 & *v0) + 0x1F0))(v13);
}

void sub_1A3FE53E0()
{
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8))();
    if (v1)
    {
      v2 = v1;
      v3 = [v0 navigationItem];
      v4 = [v2 navigationItem];
      v5 = [v4 standardAppearance];
      [v3 setStandardAppearance_];

      v6 = [v4 compactAppearance];
      [v3 setCompactAppearance_];

      v7 = [v4 scrollEdgeAppearance];
      [v3 setScrollEdgeAppearance_];
    }
  }
}

uint64_t sub_1A3FE5554(char a1)
{
  v2 = v1;
  result = MEMORY[0x1A590D320]();
  if ((result & 1) == 0)
  {
    result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1E8))();
    if (result)
    {
      v5 = result;
      v31 = [result viewModel];
      v6 = [v31 currentDataSource];
      v7 = [v6 containsAnyItems];

      v8 = sub_1A3FE8EF0();
      v9 = [v8 navigationItem];

      v10 = [v5 navigationItem];
      v11 = [v10 leftBarButtonItems];
      if (v11)
      {
        v12 = v11;
        sub_1A3C52C70(0, &qword_1EB126B80);
        v13 = sub_1A524CA34();
      }

      else
      {
        v13 = 0;
      }

      if (*(v2 + qword_1EB18F398) == 1)
      {
        v14 = sub_1A3FE46F0();
        if (v14)
        {
          v15 = v14;
          if (v13)
          {
            [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
            MEMORY[0x1A5907D70]();
            if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1A524CA74();
            }

            sub_1A524CAE4();
          }
        }
      }

      v16 = [v10 rightBarButtonItems];
      if (v16)
      {
        v17 = v16;
        sub_1A3C52C70(0, &qword_1EB126B80);
        v18 = sub_1A524CA34();
      }

      else
      {
        v18 = 0;
      }

      if (*(v2 + qword_1EB18F398) & v7)
      {
        v19 = sub_1A3FE4920();
        if (v19)
        {
          v20 = v19;
          if (v18)
          {
            [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
            MEMORY[0x1A5907D70]();
            if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1A524CA74();
            }

            sub_1A524CAE4();
          }
        }
      }

      if (*(v2 + qword_1EB18F3C0) == 1)
      {
        sub_1A3C52C70(0, &qword_1EB126A10);
        v21 = v10;
        v22 = [swift_getObjCClassFromMetadata() sharedInstance];
        v23 = [v22 detailsViewHeaderImplementation];

        v10 = v21;
        if (v23 != 1)
        {
          if (v23)
          {
            type metadata accessor for PXDetailsViewHeaderImplementation(0);
            result = sub_1A524EB44();
            __break(1u);
            return result;
          }

          v24 = [v5 viewModel];
          v25 = [v24 currentDataSource];

          v26 = [v25 containerCollection];
          if (v26)
          {
            v27 = [v26 localizedTitle];
            swift_unknownObjectRelease();
            if (v27)
            {
              sub_1A524C674();
            }
          }

          v28 = sub_1A524C634();

          [v9 setTitle_];

          v10 = v21;
        }
      }

      if (v13)
      {
        sub_1A3C52C70(0, &qword_1EB126B80);
        v29 = sub_1A524CA14();
      }

      else
      {
        v29 = 0;
      }

      [v9 setLeftBarButtonItems:v29 animated:a1 & 1];

      if (v18)
      {
        sub_1A3C52C70(0, &qword_1EB126B80);
        v30 = sub_1A524CA14();
      }

      else
      {
        v30 = 0;
      }

      [v9 setRightBarButtonItems:v30 animated:a1 & 1];

      sub_1A3FE6678(a1 & 1);
    }
  }

  return result;
}

uint64_t sub_1A3FE5AA0()
{
  v1 = MEMORY[0x1E69E7D40];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  result = MEMORY[0x1A590D320](v3);
  if ((result & 1) == 0)
  {
    result = [v0 isViewLoaded];
    if (result)
    {
      v5 = *&v0[qword_1EB18F448];
      if (v5)
      {
        v6 = *((*v1 & **&v0[qword_1EB12AA18]) + 0xD8);
        v7 = v5;
        v6();
        swift_getAssociatedConformanceWitness();
        sub_1A5246344();
      }

      __break(1u);
      __break(1u);
      __break(1u);
    }
  }

  return result;
}

void sub_1A3FE5DBC()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8))();
  if (v1)
  {
    v2 = v1;
    [v1 contentController];

    sub_1A436B760();
  }

  v3 = *(v0 + qword_1EB18F3F8);
  *(v0 + qword_1EB18F3F8) = 0;
}

void sub_1A3FE5EEC()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8))();
  if (v1)
  {
    v2 = v1;
    [v1 contentController];

    sub_1A436B760();
  }

  v3 = *(v0 + qword_1EB1722E0);
  *(v0 + qword_1EB1722E0) = 0;
}

void sub_1A3FE5FE4()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    v4 = (*((*v2 & *v1) + 0x1E8))();
    if (v4)
    {
      v31 = v4;
      v5 = [v4 viewModel];
      v6 = [v5 assetActionManager];
      v7 = [v5 centerAccessoryActionType];
      v32 = v5;
      v30 = v6;
      if (v7)
      {
        v8 = sub_1A524C674();
        v10 = v9;
        sub_1A3FE831C();
        if (v11)
        {
          v12 = [v6 localizedTitleForActionType:v7 useCase:1];

          if (v12)
          {
            sub_1A524C674();

            type metadata accessor for PhotosPagingAccessoryButton();
            v13 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v14 = swift_allocObject();
            v14[2] = *(v3 + 80);
            v14[3] = *(v3 + 88);
            v14[4] = v13;
            v14[5] = v8;
            v14[6] = v10;
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }
        }

        else
        {
        }
      }

      v15 = *(v1 + qword_1EB18F3B0);
      *(v1 + qword_1EB18F3B0) = 0;
      v16 = 0;

      v17 = *(v1 + qword_1EB1722D8);
      *(v1 + qword_1EB1722D8) = 0;
      v18 = 0;

      v19 = [v5 trailingAccessoryActionType];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1A524C674();
        v23 = v22;

        sub_1A3FE831C();
        if (v24)
        {
          type metadata accessor for PhotosPagingAccessoryButton();
          v25 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v26 = swift_allocObject();
          v26[2] = *(v3 + 80);
          v26[3] = *(v3 + 88);
          v26[4] = v25;
          v26[5] = v21;
          v26[6] = v23;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      v27 = *(v1 + qword_1EB18F3A8);
      *(v1 + qword_1EB18F3A8) = 0;
      v28 = 0;

      v29 = *(v1 + qword_1EB1722D0);
      *(v1 + qword_1EB1722D0) = 0;
    }
  }
}

void sub_1A3FE6678(char a1)
{
  v2 = v1;
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1E8))();
  if (v4)
  {
    v97 = a1;
    v102 = v4;
    v5 = [v4 viewModel];
    v6 = [v5 contentPrivacyState];
    v100 = [v5 allowedChromeItems];
    v7 = [v5 allowsLensControl];
    v8 = [v2 view];
    if (!v8)
    {
      __break(1u);
      goto LABEL_87;
    }

    v9 = v8;
    v10 = [v8 traitCollection];

    v11 = [v10 userInterfaceIdiom];
    v12 = [v5 currentDataSource];
    v103 = [v12 containsAnyItems];

    v13 = [v5 isInSelectMode];
    if (MEMORY[0x1A590D320]())
    {
      v14 = (v6 != 1) & (v100 >> 5);
    }

    else if ((v100 & 0x20) != 0)
    {
      v14 = (v6 != 1) & ~[v5 isInSelectMode];
    }

    else
    {
      v14 = 0;
    }

    v15 = [v5 dataSourceManager];
    v16 = [v15 dataSource];

    v17 = [v16 containerCollection];
    if (v17)
    {
      swift_getObjectType();
      sub_1A524D674();
    }

    v19 = MEMORY[0x1A590D320](v18);
    v20 = [v2 traitCollection];
    v95 = [v20 horizontalSizeClass];

    if (v11 >= 2)
    {
      v21 = v102;
      if (v11 != 6)
      {
LABEL_95:
        sub_1A524E6E4();
        __break(1u);
        goto LABEL_96;
      }

      sub_1A3C52C70(0, &qword_1EB126A10);
      v26 = [swift_getObjCClassFromMetadata() sharedInstance];
      v27 = [v26 detailsViewHeaderImplementation];

      if (v27 == 1)
      {
        v24 = v13 ^ 1;
        v23 = 1;
      }

      else
      {
        if (v27)
        {
LABEL_96:
          type metadata accessor for PXDetailsViewHeaderImplementation(0);
          sub_1A524EB44();
          __break(1u);
          return;
        }

        v28 = [v102 viewModel];
        v29 = [v28 fullscreenOverlayControllers];

        if (v29)
        {

          v24 = 0;
        }

        else
        {
          v24 = 1;
        }

        v23 = v19;
      }

      v30 = *(v2 + qword_1EB18F3F0);
      if (v30)
      {
        (*(*v30 + 216))(v14 & v7 ^ 1);
        (*(*v30 + 312))(v103 ^ 1);
      }

      v25 = 0;
      v98 = 0;
      v96 = 0;
      v99 = MEMORY[0x1E69E7CC0];
      v101 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v21 = v102;
      v96 = sub_1A3FE46F0();
      if (v103)
      {
        v98 = sub_1A3FE4920();
        v101 = sub_1A3FE4A30();
        v22 = sub_1A3FE4C48();
        v103 = [v5 gridStyle] == 3;
        if (!v19)
        {
          v99 = v22;
          v23 = 0;
          v24 = 0;
LABEL_16:
          v25 = v14;
          LOBYTE(v14) = 0;
          goto LABEL_29;
        }

LABEL_15:
        v99 = v22;
        v24 = v13 ^ 1;
        v23 = 1;
        goto LABEL_16;
      }

      v98 = 0;
      v103 = 0;
      v22 = MEMORY[0x1E69E7CC0];
      v101 = MEMORY[0x1E69E7CC0];
      if (v19)
      {
        goto LABEL_15;
      }

      v23 = 0;
      v25 = v14;
      v24 = 0;
      LOBYTE(v14) = 0;
      v99 = MEMORY[0x1E69E7CC0];
      v101 = MEMORY[0x1E69E7CC0];
    }

LABEL_29:
    v31 = *(v2 + qword_1EB18F398);
    *(v2 + qword_1EB18F398) = v14;
    sub_1A3FE4658(v31);
    *(v2 + qword_1EB18F3C0) = v24;
    sub_1A3FE45D4(v25);
    v32 = sub_1A3FE8EF0();
    v33 = [v32 navigationItem];

    if (v23)
    {
      if (v24)
      {
        v34 = [v5 headerTitle];
        [v33 setAttributedTitle_];

        v35 = [v5 headerSubtitle];
      }

      else
      {
        [v33 setAttributedTitle_];
        v35 = 0;
      }

      [v33 setAttributedSubtitle_];
    }

    v36 = [v5 toolbarStyle];
    if (v19)
    {
      if (v36)
      {
        v37 = *(v2 + qword_1EB18F408);
        if (v37)
        {

          v38 = [v21 toolbarItems];
          if (v38)
          {
            v39 = v38;
            sub_1A3C52C70(0, &qword_1EB126B80);
            v40 = sub_1A524CA34();
          }

          else
          {
            v40 = 0;
          }

          (*(*v37 + 128))(v40);
        }
      }

      v51 = v21;
      v52 = [v51 navigationItem];
      v53 = [v52 leftBarButtonItems];

      [v33 setLeftBarButtonItems:v53 animated:v97 & 1];
      v54 = [v51 navigationItem];
      v55 = [v54 centerItemGroups];

      if (!v55)
      {
        sub_1A3C52C70(0, &unk_1EB12FF68);
        sub_1A524CA34();
        v55 = sub_1A524CA14();
      }

      [v33 setCenterItemGroups_];

      v56 = [v51 navigationItem];
      v57 = [v56 rightBarButtonItems];

      [v33 setRightBarButtonItems:v57 animated:v97 & 1];
      if (v101 >> 62)
      {
        v58 = sub_1A524E2B4();
      }

      else
      {
        v58 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v59 = v99 >> 62;
      v60 = MEMORY[0x1E69E7C98];
      if (!v58)
      {
        if (v59)
        {
          v61 = sub_1A524E2B4();
        }

        else
        {
          v61 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v61)
        {

          v92 = sub_1A3FE8EF0();
          v93 = [v51 toolbarItems];

          [v92 setToolbarItems:v93 animated:v97 & 1];
          goto LABEL_65;
        }

        sub_1A3C37240(0, &qword_1EB126180, v60 + 8, MEMORY[0x1E69E6F90]);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1A52F9790;
        *(v62 + 32) = [objc_opt_self() flexibleSpaceItem];
      }

      v63 = [v51 toolbarItems];

      if (v63)
      {
        sub_1A3C52C70(0, &qword_1EB126B80);
        sub_1A524CA34();

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v65 = MEMORY[0x1E69E7CC0];
      if (MEMORY[0x1E69E7CC0] >> 62)
      {
        v64 = sub_1A524E2B4();
      }

      else
      {
        v64 = *((MEMORY[0x1E69E7CC0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v94 = v33;
      if (!v64)
      {

        sub_1A3C37240(0, &qword_1EB126180, v60 + 8, MEMORY[0x1E69E6F90]);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_1A52F9790;
        *(v65 + 32) = [objc_opt_self() flexibleSpaceItem];
      }

      v66 = v99;
      if (v59)
      {
        if (sub_1A524E2B4())
        {
          goto LABEL_64;
        }
      }

      else if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_64:
        v67 = sub_1A3FE8EF0();
        sub_1A3C37240(0, &qword_1EB126180, v60 + 8, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1A52F9790;
        v69 = objc_opt_self();
        *(inited + 32) = [v69 flexibleSpaceItem];
        sub_1A3FEBA64(inited);
        sub_1A3FEBA64(v65);
        v70 = swift_initStackObject();
        *(v70 + 16) = xmmword_1A52F9790;
        *(v70 + 32) = [v69 flexibleSpaceItem];
        sub_1A3FEBA64(v70);
        sub_1A3FEBA64(v66);
        sub_1A3C52C70(0, &qword_1EB126B80);
        v71 = sub_1A524CA14();

        [v67 setToolbarItems:v71 animated:v97 & 1];

        v21 = v102;
        v33 = v94;
LABEL_65:
        [v33 setStyle_];
        v72 = v96;
LABEL_79:
        sub_1A3FE7E40();

        return;
      }

      sub_1A3C37240(0, &qword_1EB126180, v60 + 8, MEMORY[0x1E69E6F90]);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1A52F9790;
      *(v66 + 32) = [objc_opt_self() flexibleSpaceItem];
      goto LABEL_64;
    }

    if (v36 && (v41 = *(v2 + qword_1EB18F408)) != 0)
    {
      v42 = [v21 toolbarItems];
      if (v42)
      {
        v43 = v42;
        sub_1A3C52C70(0, &qword_1EB126B80);
        v44 = sub_1A524CA34();
      }

      else
      {
        v44 = 0;
      }

      (*(*v41 + 128))(v44);
    }

    else
    {
      v45 = sub_1A3FE8EF0();
      v46 = [v21 toolbarItems];
      [v45 setToolbarItems:v46 animated:v97 & 1];

      if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x138))())
      {
        v48 = v47;
        ObjectType = swift_getObjectType();
        v50 = sub_1A3FE8EF0();
        (*(v48 + 8))(v50, v97 & 1, ObjectType, v48);

        swift_unknownObjectRelease();
      }
    }

    v73 = *(v2 + qword_1EB18F448);
    if (v73)
    {
      v72 = v96;
      [v73 setLeadingAccessoryView_];
      v74 = *(v2 + qword_1EB18F448);
      if (v74)
      {
        [v74 setTrailingAccessoryView_];
        v75 = *(v2 + qword_1EB18F448);
        if (v75)
        {
          [v75 setLegibilityGradientEnabled_];
          v76 = *(v2 + qword_1EB18F448);
          if (v76)
          {
            v77 = v76;
            v78 = [v21 gridView];
            v79 = [v78 scrollViewController];

            [v77 setContentScrollViewController_];
            v80 = *(v2 + qword_1EB18F448);
            if (v80)
            {
              v81 = v80;
              v82 = sub_1A3FE4840();
              v83 = MEMORY[0x1E69E7D40];
              (*((*MEMORY[0x1E69E7D40] & *v81) + 0x148))(v82);

              v84 = *(v2 + qword_1EB18F448);
              if (v84)
              {
                v85 = *((*v83 & *v84) + 0xE8);
                v86 = v84;
                v85(v7 ^ 1);

                v87 = *(v2 + qword_1EB18F448);
                if (v87)
                {
                  v88 = *((*v83 & *v87) + 0x118);
                  v89 = v87;
                  v88(v103);

                  v90 = *(v2 + qword_1EB18F448);
                  if (v90)
                  {
                    v91 = v90;

                    (*((*v83 & *v91) + 0x130))(0);

                    v21 = v102;
                    goto LABEL_79;
                  }

                  goto LABEL_94;
                }

LABEL_93:
                __break(1u);
LABEL_94:
                __break(1u);
                goto LABEL_95;
              }

LABEL_92:
              __break(1u);
              goto LABEL_93;
            }

LABEL_91:
            __break(1u);
            goto LABEL_92;
          }

LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

LABEL_87:
    __break(1u);
    goto LABEL_88;
  }
}

void sub_1A3FE7664()
{
  v1 = [*&v0[qword_1EB18F418] customBannerView];
  v11 = *&v0[qword_1EB18F458];
  *&v0[qword_1EB18F458] = v1;
  v2 = qword_1EB18F458;
  v3 = *&v0[qword_1EB18F458];
  v4 = v1;
  if (v3)
  {
    if (v3 == v11)
    {
      goto LABEL_9;
    }
  }

  else if (!v11)
  {
    goto LABEL_9;
  }

  [v11 removeFromSuperview];
  v5 = *&v0[v2];
  if (v5)
  {
    v6 = v5;
    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 addSubview_];

      v9 = [v0 view];
      if (v9)
      {
        v10 = v9;
        [v9 setNeedsLayout];

        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_9:
}

void sub_1A3FE779C()
{
  v1 = *(v0 + qword_1EB18F418);
  if (v1)
  {
    v4[4] = sub_1A3FE7858;
    v4[5] = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 1107296256;
    v4[2] = sub_1A3D7692C;
    v4[3] = &block_descriptor_21_0;
    v2 = _Block_copy(v4);
    v3 = v1;
    [v3 performChanges_];
    _Block_release(v2);
  }
}

void sub_1A3FE786C()
{
  v1 = *(v0 + qword_1EB18F418);
  if (v1)
  {
    v3 = v1;
    if ([v3 appearState] == 2)
    {
      if (PXPhotosViewModel.searchQueryFetcher.getter())
      {
      }

      else
      {
        aBlock[4] = sub_1A3FE79A4;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1A3D7692C;
        aBlock[3] = &block_descriptor_18_1;
        v2 = _Block_copy(aBlock);
        [v3 performChanges_];
        _Block_release(v2);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1A3FE79A4(void *a1)
{
  swift_getObjectType();
  type metadata accessor for LemonadeSuggestedSearchQueryFetcher(0);
  v2 = [a1 dataSourceManager];
  v3 = [v2 dataSource];

  sub_1A3FB0F5C(v3);
  return sub_1A47F9448();
}

uint64_t sub_1A3FE7AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3FEDC4C(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_1A524CCB4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1A524CC54();

  v11 = sub_1A524CC44();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = v9;

  sub_1A3D4D930(0, 0, v7, &unk_1A53108B8, v12);
}

uint64_t sub_1A3FE7C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 88) = a4;
  sub_1A524CC54();
  *(v4 + 96) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3FE7CF8, v6, v5);
}

uint64_t sub_1A3FE7CF8()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + qword_1EB18F3F0);
    v3 = Strong;

    if (v2)
    {
      (*(*v2 + 352))();

      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        v5 = v4;
        sub_1A3FE8190();
      }
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_1A3FE7A34();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1A3FE7E40()
{
  v1 = v0;
  result = MEMORY[0x1A590D320]();
  if ((result & 1) == 0)
  {
    v3 = *(v0 + qword_1EB18F448);
    if (!v3)
    {
      __break(1u);
      return result;
    }

    [objc_opt_self() configureOpacityOfSecondaryToolbarController:v3 withViewModel:*(v1 + qword_1EB18F418)];
  }

  v4 = *(v1 + qword_1EB18F418);
  if (v4)
  {
    v4 = [v4 chromeOpacity];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = *(v1 + qword_1EB18F3F0);
  if (v7)
  {
    (*(*v7 + 168))(v4, v6);
  }

  v8 = *(v1 + qword_1EB18F458);

  return [v8 setAlpha_];
}

void *sub_1A3FE7F38()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8))();
  if (result)
  {
    v2 = result;
    [result viewModel];
    v3 = [v2 viewModel];
    sub_1A524D584();
  }

  return result;
}

void *sub_1A3FE8190()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8))();
  if (result)
  {
    v2 = result;
    [result viewModel];

    sub_1A524D584();
  }

  return result;
}

id sub_1A3FE831C()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 viewModel];

    v4 = [v3 assetActionManager];
    if (v4)
    {
      v5 = sub_1A524C634();
      v6 = [v4 systemImageNameForActionType_];

      if (v6)
      {
        v7 = sub_1A524C674();

        return v7;
      }

      return 0;
    }
  }

  sub_1A524D244();
  result = PLGridZeroGetLog();
  if (result)
  {
    v9 = result;
    sub_1A5246DF4();

    return 0;
  }

  __break(1u);
  return result;
}

void sub_1A3FE8488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x1E8))();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 viewModel];

    v22 = [v7 assetActionManager];
    if (v22)
    {
      v8 = sub_1A524C634();
      v21 = [v22 actionPerformerForActionType_];

      if (v21)
      {
        v9 = [v21 selectionSnapshot];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 dataSource];

          if (v11)
          {
            v12 = v11;
            v13 = [v12 allItemIndexPaths];
            v14 = [objc_allocWithZone(off_1E77218D8) initWithDataSource:v12 selectedIndexPaths:v13];

            [v21 setSelectionSnapshot_];
          }
        }

        [v21 setSender_];
        [v21 performActionWithCompletionHandler_];

        v15 = v21;
        goto LABEL_11;
      }

      v17 = sub_1A524D244();
      v18 = PLGridZeroGetLog();
      if (v18)
      {
        v19 = v18;
        if (os_log_type_enabled(v18, v17))
        {
          v20 = swift_slowAlloc();
          swift_slowAlloc();
          *v20 = 136315138;
          sub_1A3C2EF94();
        }

        goto LABEL_10;
      }

LABEL_19:
      __break(1u);
      return;
    }
  }

  sub_1A524D244();
  v16 = PLGridZeroGetLog();
  if (!v16)
  {
    __break(1u);
    goto LABEL_19;
  }

  v22 = v16;
  sub_1A5246DF4();
LABEL_10:
  v15 = v22;
LABEL_11:
}

void *sub_1A3FE878C(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = [*(v1 + qword_1EB18F438) allObjects];
  sub_1A3C52C70(0, &unk_1EB126880);
  v5 = sub_1A524CA34();

  v9[1] = *(v3 + 80);
  v10 = a1;
  v6 = sub_1A3FE8BAC(sub_1A3FED778, v9, v5);

  if (v6)
  {
    v7 = v6;
    sub_1A3FE9144(v7);
  }

  return v6;
}

uint64_t sub_1A3FE88A0(id *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_1A524DF24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - v5;
  v7 = *(AssociatedTypeWitness - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = v15 - v10;
  if ([*a1 representedItem])
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
    sub_1A3C57128(v15, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  sub_1A3C37240(0, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v12 = swift_dynamicCast();
  v13 = *(v7 + 56);
  if (v12)
  {
    v13(v6, 0, 1, AssociatedTypeWitness);
    (*(v7 + 32))(v11, v6, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    sub_1A5246284();
  }

  v13(v6, 1, 1, AssociatedTypeWitness);
  (*(v4 + 8))(v6, v3);
  return 0;
}

void *sub_1A3FE8BAC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1A59097F0](j, a3);
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

id sub_1A3FE8CC0(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  result = sub_1A3FE878C(a1);
  if (!result)
  {
    v6 = *(**(*(v1 + qword_1EB12AA18) + *((*v4 & **(v1 + qword_1EB12AA18)) + 0x60)) + 144);

    v7 = v6(a1);

    [v7 setScrollingBehavior_];
    [v7 setDelegate_];
    [v7 setAllowedInteractiveDismissBehaviors_];
    v8 = [objc_allocWithZone(PXPhotosUIViewController) initWithConfiguration_];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    v9 = v8;
    [v9 setExplicitRepresentedItem_];

    swift_unknownObjectRelease();
    [v9 setGridPresentationBarsUpdateDelegate_];
    sub_1A3FE9144(v9);
    v10 = v9;
    sub_1A3FE4FD0(v9);

    [v10 loadViewIfNeeded];
    return v10;
  }

  return result;
}

NSObject *sub_1A3FE8EF0()
{
  if (MEMORY[0x1A590D320]())
  {
    if ((*((*MEMORY[0x1E69E7D40] & *v14) + 0x138))())
    {
      v1 = v0;
      ObjectType = swift_getObjectType();
      v3 = (*(v1 + 32))(v14, ObjectType, v1);
      swift_unknownObjectRelease();
      if (v3)
      {
        return v3;
      }
    }
  }

  else
  {
    v5 = *(*(*(v14 + qword_1EB12AA18) + *((*MEMORY[0x1E69E7D40] & **(v14 + qword_1EB12AA18)) + 0x60)) + 56);
    result = [v14 parentViewController];
    if (v5)
    {
      if (result)
      {
        v6 = result;
        v3 = [result parentViewController];

        if (v3)
        {
          v7 = [v14 navigationController];
          if (!v7)
          {
            return v3;
          }

          v8 = v7;
          sub_1A3C52C70(0, &qword_1EB126B10);
          v9 = v3;
          v10 = sub_1A524DBF4();

          if ((v10 & 1) == 0)
          {
            return v9;
          }
        }
      }

      result = PLGridZeroGetLog();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v11 = result;
      v12 = sub_1A524D264();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1A3C1C000, v11, v12, "Failed to obtain parent view for updating bars, falling back to self", v13, 2u);
        MEMORY[0x1A590EEC0](v13, -1, -1);
      }
    }

    else if (result)
    {
      return result;
    }
  }

  return v14;
}

uint64_t sub_1A3FE9144(uint64_t a1)
{
  [*(v1 + qword_1EB18F438) addObject_];
  v3 = *(v1 + qword_1EB18F430);
  [v3 insertObject:a1 atIndex:0];
  result = [v3 count];
  if (result >= 4)
  {
    result = [v3 count];
    if (__OFSUB__(result, 3))
    {
      __break(1u);
    }

    else
    {

      return [v3 removeObjectsInRange_];
    }
  }

  return result;
}

uint64_t sub_1A3FE920C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8))();
  if (v2)
  {
    v3 = v2;
    [v2 viewModel];

    sub_1A524D584();
  }

  v4 = [v25 childViewControllers];
  sub_1A3C52C70(0, &qword_1EB126B10);
  v5 = sub_1A524CA34();

  v26 = MEMORY[0x1E69E7CC0];
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_22:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v6 = sub_1A524E2B4();
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_5:
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1A59097F0](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_23;
      }
    }

    MEMORY[0x1A5907D70]();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    v8 = v26;
    v1 = MEMORY[0x1E69E7D40];
  }

  while (v7 != v6);
LABEL_23:

  if (v8 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v13 = 0;
    v24 = i;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1A59097F0](v13, v8);
      }

      else
      {
        if (v13 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v15 = *(v8 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v18 = (*((*v1 & *v25) + 0x1E8))();
      if (v18)
      {
        v19 = v18;
        sub_1A3C52C70(0, &qword_1EB12B160);
        if (sub_1A524DBF4())
        {
          v20 = [v19 viewModel];
          v21 = [v20 lastPreferredScrollDetent];

          v14 = 0;
          v22 = [v16 contentController];
          [v22 setNumberOfItemsToPlayInline_];

          i = v24;
          goto LABEL_28;
        }
      }

      v14 = [v16 contentController];
      [v14 setNumberOfItemsToPlayInline_];
LABEL_28:

      ++v13;
      if (v17 == i)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

LABEL_40:
}

void *sub_1A3FE96E8()
{
  v1 = MEMORY[0x1E69E7D40];
  sub_1A3FEDC4C(0, &qword_1EB124A60, off_1E7721250);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v8[0] = v8 - v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v8[1] = [swift_getObjCClassFromMetadata() sharedInstance];
  result = *(v0 + qword_1EB12AA48);
  if (result)
  {
    v6 = [result scrollViewController];
    [v6 setShowsHorizontalScrollIndicator_];
    v7 = [v6 setShowsVerticalScrollIndicator_];
    (*((*v1 & **(v0 + qword_1EB12AA18)) + 0xD8))(v7);
    swift_getAssociatedConformanceWitness();
    sub_1A5246344();
  }

  __break(1u);
  __break(1u);
  return result;
}

id sub_1A3FE9C7C()
{
  [v0 setNeedsStatusBarAppearanceUpdate];
  [v0 setNeedsUpdateOfHomeIndicatorAutoHidden];

  return [v0 px_adjustAdditionalSafeAreaInsetsToKeepContentStableRegardlessOfStatusBarVisibility];
}

void sub_1A3FE9CD0()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = *(v0 + qword_1EB18F418);
  if (v2)
  {
    v3 = [v2 allowedChromeItems];
  }

  else
  {
    v3 = -1;
  }

  v6 = *(v0 + qword_1EB12AA18);
  v4 = swift_allocObject();
  v4[2] = *(v1 + 80);
  v4[3] = *(v1 + 88);
  v4[4] = v3;
  type metadata accessor for PhotosPagingViewModel();
  v5 = v6;
  swift_getWitnessTable();
  sub_1A5245F44();
}

id sub_1A3FE9DF8()
{
  result = (*((*MEMORY[0x1E69E7D40] & **&v0[qword_1EB12AA18]) + 0x108))();
  if (v2)
  {

    return [v0 dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

id sub_1A3FE9E94(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1A3FEC978();

  return v6;
}

void *sub_1A3FE9EF0(void *result)
{
  v2 = *(v1 + qword_1EB12AA40);
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1(result, result[3]);
    v3 = v2;
    v4 = [v3 itemPlacementControllerForItemReference_];

    swift_unknownObjectRelease();
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A3FE9F80(void *a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1E8))();
  if (v3)
  {
    v4 = v3;

    if (v4 == a1)
    {

      sub_1A3FE53E0();
    }
  }
}

void sub_1A3FEA018(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1A3FE9F80(v4);
}

void sub_1A3FEA084(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_1A3FECCAC(v6, a4);
}

double sub_1A3FEA128(void *a1)
{
  type metadata accessor for PhotosChromeSpec();
  v3 = static PhotosChromeSpec.secondaryToolbarSize.getter();
  v5 = v4;
  v6 = [a1 contentView];
  if (v6)
  {
    v7 = v6;
    v8 = [v1 px_extendedTraitCollection];
    [v8 layoutReferenceSize];
    v10 = v9;

    [v7 sizeThatFits_];
    v3 = v11;
  }

  return v3;
}

double sub_1A3FEA1F0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1A3FEA128(v4);

  return v6;
}

double sub_1A3FEA288(void *a1, uint64_t a2, void *a3, double (*a4)(void))
{
  v6 = a3;
  v7 = a1;
  v8 = a4();

  return v8;
}

double sub_1A3FEA338(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1A3FECF14();

  return v6;
}

void sub_1A3FEA394()
{
  v1 = v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &AssociatedConformanceWitness - v6;
  v27 = v4;
  v28 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedTypeWitness();
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &AssociatedConformanceWitness - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &AssociatedConformanceWitness - v12;
  v14 = *(v0 + qword_1EB18F448);
  if (v14)
  {
    v15 = *((*v14 & v2) + 0xB0);
    v16 = v14;
    v17 = v15();

    (*((*MEMORY[0x1E69E7D40] & **(v1 + qword_1EB12AA18)) + 0xD8))();
    MEMORY[0x1A59016D0](v17, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v25 + 8))(v7, AssociatedTypeWitness);
    v29 = *(v1 + qword_1EB12AA18);
    v18 = v29;
    v19 = v26;
    (*(v8 + 16))(v10, v13, v26);
    v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v21 = swift_allocObject();
    v22 = v28;
    *(v21 + 16) = v27;
    *(v21 + 24) = v22;
    (*(v8 + 32))(v21 + v20, v10, v19);
    type metadata accessor for PhotosPagingViewModel();
    v23 = v18;
    swift_getWitnessTable();
    sub_1A5245F44();
  }

  __break(1u);
}

uint64_t sub_1A3FEA73C(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  v10 = *(AssociatedTypeWitness - 8);
  (*(v10 + 16))(v7, a2, AssociatedTypeWitness);
  (*(v10 + 56))(v7, 0, 1, AssociatedTypeWitness);
  return (*(v8 + 32))(v7, ObjectType, v8);
}

void *sub_1A3FEA8C8(void *a1)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC8))();

  return sub_1A3FE8190();
}

uint64_t sub_1A3FEA930(void *a1)
{
  v2 = v1;
  result = MEMORY[0x1A590D320]();
  if ((result & 1) == 0)
  {
    v5 = [a1 isShowingGradient];
    v6 = objc_opt_self();
    v7 = &selRef_whiteColor;
    if (!v5)
    {
      v7 = &selRef_secondaryLabelColor;
    }

    v8 = [v6 *v7];
    v9 = MEMORY[0x1E69E7D40];
    v10 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1E8))();
    if (v10)
    {
      v11 = v10;
      v12 = [v10 filterButtonController];

      [v12 setForegroundColor_];
    }

    v13 = *(v2 + qword_1EB18F3F8);
    if (v13)
    {
      v14 = *((*v9 & *v13) + 0xC0);
      v15 = v13;
      v16 = v8;
      v14(v8);
    }

    v17 = *(v2 + qword_1EB18F3B0);
    if (v17)
    {
      v18 = *((*v9 & *v17) + 0x70);
      v19 = v8;
      v20 = v17;
      v18(v8);
    }

    v21 = *(v2 + qword_1EB18F3A8);
    if (v21)
    {
      v22 = *((*v9 & *v21) + 0x70);
      v23 = v8;
      v24 = v21;
      v22(v8);
    }

    return (*((*v9 & *a1) + 0x100))(v8);
  }

  return result;
}

void sub_1A3FEAB74()
{
  sub_1A3FEDC4C(0, &qword_1EB124A60, off_1E7721250);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A5246694();
}

void sub_1A3FEADB4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  a1;
  sub_1A3FEAB74();
}

void sub_1A3FEAE54()
{
  sub_1A3FEDC4C(0, &qword_1EB124A60, off_1E7721250);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A5246694();
}

void sub_1A3FEB0A8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1A3FEAE54();
}

uint64_t sub_1A3FEB148(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = sub_1A3FED068(a4);

  swift_unknownObjectRelease();
  return v8 & 1;
}

uint64_t sub_1A3FEB1EC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = sub_1A3FED110(a4);

  swift_unknownObjectRelease();
  return v8 & 1;
}

uint64_t sub_1A3FEB298@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x528))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3FEB2FC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x530);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A3FEB36C()
{
  v1 = qword_1EB1EB008;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A3FEB3B8(void *a1)
{
  v3 = qword_1EB1EB008;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1A3FE4E00();
}

void (*sub_1A3FEB420(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A3FEB484;
}

void sub_1A3FEB484(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A3FE4E00();
  }
}

id PhotosPagingContentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1A524C634();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1A3FEB56C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1A3FED130();
}

id PhotosPagingContentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosPagingContentViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A3FEB64C(uint64_t a1)
{
  sub_1A3D35A10(a1 + qword_1EB12AA20);

  swift_unknownObjectRelease();
  sub_1A3FEDE18(a1 + qword_1EB1722F0, &qword_1EB124A60, off_1E7721250);

  swift_unknownObjectRelease();

  v2 = *(a1 + qword_1EB1EB008);
}

void (*sub_1A3FEB940(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x538))();
  return sub_1A3D3D728;
}

void *sub_1A3FEB9E8(void *a1)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xF0))();

  return sub_1A3FE8190();
}

uint64_t sub_1A3FEBA64(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A524E2B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1A524E2B4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A3FEBB54(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1A3FEBB54(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A524E2B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A524E2B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A3FED7D4();
          sub_1A3FED8FC(&qword_1EB12FF80, sub_1A3FED7D4);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1A3D5C268(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A3C52C70(0, &qword_1EB126B80);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3FEBD00(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A3FEDD34();
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

void sub_1A3FEBDF8()
{
  sub_1A3FEDC4C(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext);
  MEMORY[0x1EEE9AC00](v1 - 8);
  MEMORY[0x1EEE9AC00](v2);
  *(v0 + qword_1EB12AA20 + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = (v0 + qword_1EB12AA28);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + qword_1EB12AA30) = 0;
  *(v0 + qword_1EB12AA48) = 0;
  *(v0 + qword_1EB12AA40) = 0;
  sub_1A5246694();
}

void sub_1A3FEC2D8()
{
  *(v0 + qword_1EB12AA20 + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + qword_1EB12AA28);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + qword_1EB12AA30) = 0;
  *(v0 + qword_1EB12AA48) = 0;
  *(v0 + qword_1EB12AA40) = 0;
  sub_1A5246694();
}

id sub_1A3FEC504(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = sub_1A3FE8CC0(a1);

  return v4;
}

void sub_1A3FEC570(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A3FE3F8C(v1);
  }

  sub_1A48C2C50();
  sub_1A3D9C984();
  if (sub_1A524EEA4())
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      sub_1A3FE9DF8();
    }
  }
}

void sub_1A3FEC630(void *a1)
{
  v2 = v1;
  v4 = qword_1EB1EB5E0;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = qword_1EB1EB5E0;
  v7 = a1;
  swift_beginAccess();
  v8 = *(v2 + v6);
  if (v8)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    sub_1A3C52C70(0, &unk_1EB126880);
    v9 = v8;
    v10 = v5;
    v11 = sub_1A524DBF4();

    if ((v11 & 1) == 0)
    {
      v8 = *(v2 + v6);
      goto LABEL_7;
    }
  }

  else if (v5)
  {
    v8 = 0;
LABEL_7:
    v12 = v8;
    sub_1A3FE4FD0(v8);

    sub_1A3FE920C();
    sub_1A3FE53E0();
    sub_1A3FE5554(0);
    sub_1A3FE5AA0();
    sub_1A3FE5DBC();
    sub_1A3FE5EEC();
    sub_1A3FE5FE4();
    sub_1A3FE6678(0);
    sub_1A3FE7664();
    sub_1A3FE7F38();
    sub_1A3FE96E8();
    v13 = *(v2 + v6);
    if (v13)
    {
      v13 = [v13 viewModel];
    }

    v14 = *(v2 + qword_1EB18F418);
    *(v2 + qword_1EB18F418) = v13;
    v15 = v13;

    sub_1A3FE9CD0();
  }
}

uint64_t sub_1A3FEC978()
{
  v1 = v0;
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = *(v2 + 488);
  v14 = v13(v10);
  if (v14)
  {
  }

  else
  {
    (*((*MEMORY[0x1E69E7D40] & **(v1 + qword_1EB12AA18)) + 0xF0))();
    if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
    {
      v15 = (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*(v8 + 32))(v12, v7, AssociatedTypeWitness);
      v16 = sub_1A3FE8CC0(v12);
      (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1F0))(v16);
      v15 = (*(v8 + 8))(v12, AssociatedTypeWitness);
    }
  }

  return (v13)(v15);
}

void sub_1A3FECCAC(void *a1, char a2)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1E8))();
  if (v5)
  {
    v6 = v5;

    if (v6 == a1)
    {
      sub_1A3FE5554(a2 & 1);

      sub_1A3FE6678(a2 & 1);
    }
  }
}

void sub_1A3FECD54()
{
  type metadata accessor for PhotosChromeSpec();
  v1 = [v0 px_extendedTraitCollection];
  v2 = [v1 layoutSizeClass];

  v3 = [v0 px_extendedTraitCollection];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  static PhotosChromeSpec.secondaryToolbarPadding(forSizeClass:safeAreaInsets:)(v2, v5, v7, v9);
}

void sub_1A3FECE20()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 contentController];

    v4 = [v3 layout];
    if (v4)
    {
      sub_1A524D2C4();
    }
  }
}

double sub_1A3FECF14()
{
  v1 = [v0 px_extendedTraitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    return 0.0;
  }

  type metadata accessor for PhotosChromeSpec();
  return static PhotosChromeSpec.maximumAccessoryViewPadding.getter();
}

uint64_t sub_1A3FECF80(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1A3FEA73C(a1, v4);
}

void *sub_1A3FED068(void *a1)
{
  result = *(v1 + qword_1EB18F418);
  if (result)
  {
    v4 = [result currentLens];
    v5 = [v4 wantsCuration];

    return (v5 && ([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_playbackStyle) - 3 < 2);
  }

  return result;
}

void sub_1A3FED160()
{
  sub_1A3FEDC4C(319, &qword_1EB124A60, off_1E7721250);
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1A3FED724(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 80))(v2, ObjectType, v3);
}

void sub_1A3FED7D4()
{
  if (!qword_1EB12FF78)
  {
    sub_1A3C52C70(255, &qword_1EB126B80);
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12FF78);
    }
  }
}

void sub_1A3FED840(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1A3FE8488(v3, v4, a1);
  }
}

uint64_t objectdestroy_24Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3FED8FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A3FED944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for PhotosViewCurationModel(255);
    v7 = sub_1A3FED8FC(&qword_1EB12AC68, type metadata accessor for PhotosViewCurationModel);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A3FED9E0(uint64_t a1, uint64_t a2)
{
  sub_1A3FEDC4C(0, &qword_1EB124A60, off_1E7721250);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A3FEDA60()
{
  result = qword_1EB12A9C8;
  if (!qword_1EB12A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A9C8);
  }

  return result;
}

void sub_1A3FEDAB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1A3FE4478(a2);
  }
}

uint64_t sub_1A3FEDB10@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 16) + qword_1EB18F3F0);
  if (v3)
  {
    result = (*(*v3 + 352))();
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  *(a1 + 8) = v3 == 0;
  return result;
}

uint64_t (*sub_1A3FEDB88())()
{
  v1 = **(v0 + 16);
  v2 = *MEMORY[0x1E69E7D40];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v4[2] = *((v2 & v1) + 0x50);
  v4[3] = *((v2 & v1) + 0x58);
  v4[4] = v3;
  return sub_1A3FEDC40;
}

void sub_1A3FEDC4C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A3FEDCA0()
{
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A3FE7C60(v3, v4, v5, v2);
}

void sub_1A3FEDD34()
{
  if (!qword_1EB12FF88)
  {
    sub_1A3C52C70(255, &qword_1EB126570);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12FF88);
    }
  }
}

uint64_t sub_1A3FEDDAC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1A3FEDC4C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A3FEDE18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A3FEDC4C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3FEDE74(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeDetailsContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1A3FEE024()
{
  v1 = objc_opt_self();
  sub_1A3FEE3C8(0, &unk_1EB126170, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A52F8E10;
  *(v2 + 56) = sub_1A3C52C70(0, &qword_1EB126AC0);
  *(v2 + 32) = v0;
  v3 = v0;
  v4 = sub_1A524CA14();

  v5 = [v1 transientCollectionListWithCollections:v4 title:0 identifier:0];

  result = [v3 photoLibrary];
  if (result)
  {
    v7 = result;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [v7 librarySpecificFetchOptions];

    v10 = [ObjCClassFromMetadata fetchCollectionsInCollectionList:v5 options:v9];
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A3FEE19C(void *a1)
{
  v2 = [a1 sortDescriptors];
  if (!v2)
  {
    sub_1A3FEE3C8(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1A52F9790;
    v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v5 = sub_1A524C634();
    v6 = [v4 initWithKey:v5 ascending:1];

    *(v3 + 32) = v6;
    sub_1A3C52C70(0, &qword_1EB126B60);
    v7 = sub_1A524CA14();

    [a1 setSortDescriptors_];
    v2 = v7;
  }

  sub_1A3C52C70(0, &qword_1EB126D20);
  sub_1A3E072BC();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A52F8E10;
  sub_1A3FEE3C8(0, &qword_1EB126E90, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  *(v8 + 56) = v9;
  *(v8 + 64) = sub_1A3FEE418();
  *(v8 + 32) = &unk_1F16F0200;
  v10 = sub_1A524D134();
  [a1 setInternalPredicate_];
  v11 = [objc_opt_self() fetchAssetCollectionsWithType:1 subtype:0x7FFFFFFFFFFFFFFFLL options:a1];

  return v11;
}

void sub_1A3FEE3C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A3FEE418()
{
  result = qword_1EB126E70;
  if (!qword_1EB126E70)
  {
    sub_1A3FEE3C8(255, &qword_1EB126E90, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126E70);
  }

  return result;
}

uint64_t View.lemonadeInlinePlaybackEnvironment(allowedPlayState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LemonadeInlinePlaybackModifier();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A52425F4();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  v10 = sub_1A48F4244();
  v11 = v10[3];
  v13 = *v10;
  v14 = *(v10 + 1);
  v15 = v11;

  PhotosPreference.init(_:)(&v13, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
  MEMORY[0x1A5906490](v8, a2, v6, a3);
  return sub_1A3FEE620(v8);
}

uint64_t type metadata accessor for LemonadeInlinePlaybackModifier()
{
  result = qword_1EB17D298;
  if (!qword_1EB17D298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3FEE620(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeInlinePlaybackModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A3FEE67C()
{
  result = qword_1EB17D2B0[0];
  if (!qword_1EB17D2B0[0])
  {
    type metadata accessor for LemonadeInlinePlaybackModifier();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17D2B0);
  }

  return result;
}

void sub_1A3FEE6E8()
{
  if (!qword_1EB12ACE8)
  {
    v0 = type metadata accessor for PhotosPreference();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12ACE8);
    }
  }
}

void sub_1A3FEE754()
{
  sub_1A52425F4();
  if (v0 <= 0x3F)
  {
    sub_1A3FEE6E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A3FEE7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a1;
  v11[1] = a2;
  v14 = sub_1A52435E4();
  v12 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A52425F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7E8B0();
  v9 = [swift_getObjCClassFromMetadata() sharedInstance];
  type metadata accessor for LemonadeInlinePlaybackModifier();
  sub_1A3FEE6E8();
  PhotosPreference.wrappedValue.getter(&v16);
  if (v16 == 1)
  {
    (*(v6 + 16))(v8, v2, v5);
  }

  else
  {
    (*(v6 + 104))(v8, *MEMORY[0x1E69C1EF0], v5);
  }

  PhotosPreference.wrappedValue.getter(&v15);
  [v9 inlinePlaybackMaxConcurrentPlayers];
  [v9 inlinePlaybackMaxPreloadPlayers];
  [v9 inlinePlaybackMaxSupportedVisiblePlayers];
  [v9 inlinePlaybackVisibilityThreshold];
  [v9 enableInlinePlaybackOnHover];
  [v9 inlinePlaybackOnHoverPlaybackDelay];
  [v9 enableInlinePlaybackDebugHUD];
  sub_1A52435D4();
  sub_1A3FEEB08();
  sub_1A3FEEB6C();
  sub_1A524A6F4();

  (*(v12 + 8))(v4, v14);
  return (*(v6 + 8))(v8, v5);
}

void sub_1A3FEEB08()
{
  if (!qword_1EB127C08)
  {
    type metadata accessor for LemonadeInlinePlaybackModifier();
    sub_1A3FEE67C();
    v0 = sub_1A52499C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127C08);
    }
  }
}

unint64_t sub_1A3FEEB6C()
{
  result = qword_1EB127C10;
  if (!qword_1EB127C10)
  {
    sub_1A3FEEB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127C10);
  }

  return result;
}

uint64_t PhotoKitFetchResultFirstAssetModel.__allocating_init(fetchResult:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1A3FEF4B0(a1);

  return v2;
}

uint64_t PhotoKitFetchResultFirstAssetModel.init(fetchResult:)(void *a1)
{
  v2 = sub_1A3FEF4B0(a1);

  return v2;
}

void sub_1A3FEEC3C(void *a1)
{
  v3 = v1[2];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 200))(v9);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB126660);
  v4 = v3;
  v5 = a1;
  v6 = sub_1A524DBF4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[2];
LABEL_8:
  v1[2] = a1;
}

uint64_t sub_1A3FEEDA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

void sub_1A3FEEDEC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A3FEEC3C(v1);
}

void *sub_1A3FEEE1C()
{
  swift_getKeyPath();
  (*(*v0 + 192))();

  v1 = v0[2];
  v2 = v1;
  return v1;
}

id sub_1A3FEEE80()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    ResultFirstAsset = type metadata accessor for PhotoKitFetchResultFirstAssetModel.Proxy();
    v4 = objc_allocWithZone(ResultFirstAsset);
    swift_weakInit();
    v5 = &v4[OBJC_IVAR____TtCC12PhotosUICore34PhotoKitFetchResultFirstAssetModelP33_7A638B2861AEEAE35A983DCD609E6EC05Proxy_fetchResultKey];
    *v5 = 0x7365526863746566;
    *(v5 + 1) = 0xEB00000000746C75;
    swift_weakAssign();
    v10.receiver = v4;
    v10.super_class = ResultFirstAsset;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    v7 = *(v0 + 32);
    *(v0 + 32) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

uint64_t sub_1A3FEEF4C()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 24);
    sub_1A3C52C70(0, &qword_1EB126660);
    v2 = v1;
    v3 = sub_1A524DC44();

    if (v3)
    {
      sub_1A3FDA204();
      *(swift_initStackObject() + 16) = xmmword_1A52F8E10;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    return 0;
  }

  return result;
}

id sub_1A3FEF220()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoKitFetchResultFirstAssetModel.Proxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id *PhotoKitFetchResultFirstAssetModel.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore34PhotoKitFetchResultFirstAssetModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotoKitFetchResultFirstAssetModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore34PhotoKitFetchResultFirstAssetModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A3FEF4B0(void *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  sub_1A5241604();
  v3 = [a1 firstObject];

  *(v1 + 16) = v3;
  *(v1 + 24) = a1;
  v4 = [a1 photoLibrary];
  v5 = sub_1A3FEEE80();
  [v4 px:v5 registerChangeObserver:?];

  return v1;
}

unint64_t sub_1A3FEF55C()
{
  result = qword_1EB12FFB8;
  if (!qword_1EB12FFB8)
  {
    type metadata accessor for PhotoKitFetchResultFirstAssetModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12FFB8);
  }

  return result;
}

uint64_t type metadata accessor for PhotoKitFetchResultFirstAssetModel()
{
  result = qword_1EB1A0620;
  if (!qword_1EB1A0620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3FEF608()
{
  result = sub_1A5241614();
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

uint64_t sub_1A3FEF728(uint64_t a1)
{
  if (a1)
  {
    v2 = *(v1 + OBJC_IVAR____TtCC12PhotosUICore34PhotoKitFetchResultFirstAssetModelP33_7A638B2861AEEAE35A983DCD609E6EC05Proxy_fetchResultKey + 8);
    v4 = *(v1 + OBJC_IVAR____TtCC12PhotosUICore34PhotoKitFetchResultFirstAssetModelP33_7A638B2861AEEAE35A983DCD609E6EC05Proxy_fetchResultKey);
    v5 = v2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  memset(v6, 0, sizeof(v6));
  return sub_1A3FEF8AC(v6, sub_1A3C35B84);
}

uint64_t sub_1A3FEF8AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3FEF90C@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 24);
  result = swift_weakLoadStrong();
  v5 = result;
  if (result)
  {
    sub_1A3FEEC3C([v3 firstObject]);
  }

  *a1 = v5 == 0;
  return result;
}

NSObject *sub_1A3FEFA58(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_visibility;
  *&v1[OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_visibility] = 3;
  *&v1[OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_humans] = 0;
  *&v1[OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_pets] = 0;
  v5 = [a1 px_localDefaults];
  v6 = OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_defaults;
  *&v1[OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_defaults] = v5;
  v7 = v5;
  v8 = sub_1A524C634();
  v9 = [v7 numberForKey_];

  v10 = *&v1[v6];
  v11 = sub_1A524C634();
  v12 = [v10 numberForKey_];

  IsLaunchedToExecuteTests = PFProcessIsLaunchedToExecuteTests();
  if (v9)
  {
    v14 = IsLaunchedToExecuteTests;
  }

  else
  {
    v14 = 1;
  }

  if (v12)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v18 = [v9 BOOLValue];
    v16 = [v12 BOOLValue];
    v17 = v18;
  }

  v19 = PXPeoplePetsHomeVisibilityMake(v17, v16);
  swift_beginAccess();
  *&v1[v4] = v19;
  v38.receiver = v1;
  v38.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v38, sel_init);
  if (v15)
  {
    sub_1A3FEFF8C(a1);
    v21 = sub_1A524D264();
    result = PLUIGetLog();
    if (result)
    {
      v23 = result;
      if (os_log_type_enabled(result, v21))
      {
        v24 = swift_slowAlloc();
        swift_slowAlloc();
        *v24 = 136315138;
        v25 = OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_visibility;
        swift_beginAccess();
        v26 = PXPeoplePetsHomeVisibilityDescription(*&v20[v25]);
        sub_1A524C674();

        sub_1A3C2EF94();
      }

      return v20;
    }

    __break(1u);
  }

  else
  {
    v27 = sub_1A524D264();
    result = PLUIGetLog();
    if (result)
    {
      v28 = result;
      if (os_log_type_enabled(result, v27))
      {
        v29 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v29 = 136315138;
        v30 = OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_visibility;
        swift_beginAccess();
        v31 = PXPeoplePetsHomeVisibilityDescription(*&v20[v30]);
        sub_1A524C674();

        sub_1A3C2EF94();
      }

      v32 = [objc_opt_self() sharedScheduler];
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      *(v34 + 24) = a1;
      aBlock[4] = sub_1A3FF0A70;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_72;
      v35 = _Block_copy(aBlock);
      v36 = a1;

      [v32 scheduleMainQueueTask_];

      _Block_release(v35);
      return v20;
    }
  }

  __break(1u);
  return result;
}

id sub_1A3FEFF8C(void *a1)
{
  v2 = v1;
  PHPhotoLibrary.fetcher.getter();
  v16[0] = 0;
  sub_1A3FF0DD0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52F9790;
  *(v4 + 32) = sub_1A524EC34();
  v5 = sub_1A3C6E9EC();
  v6 = PhotoKitFetcher.fetchPeople(for:libraryFilterViewMode:fetchLimit:type:detectionTypes:)(v16, v5, 1, 0, 1);

  v7 = OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_humans;
  swift_beginAccess();
  v8 = *(v2 + v7);
  *(v2 + v7) = v6;

  PHPhotoLibrary.fetcher.getter();
  v15[0] = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A52F9790;
  *(v9 + 32) = sub_1A524EC34();
  v10 = sub_1A3C6E9EC();
  v11 = PhotoKitFetcher.fetchPeople(for:libraryFilterViewMode:fetchLimit:type:detectionTypes:)(v15, v10, 1, 0, 1);

  v12 = OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_pets;
  swift_beginAccess();
  v13 = *(v2 + v12);
  *(v2 + v12) = v11;

  sub_1A3FF016C();
  return [a1 px:v2 registerChangeObserver:?];
}

void *sub_1A3FF016C()
{
  v1 = sub_1A524BEE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_humans;
  swift_beginAccess();
  result = *(v0 + v9);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = [result count];
  v12 = OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_pets;
  swift_beginAccess();
  result = *(v0 + v12);
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v21 = v5;
  v22 = v2;
  v13 = [result count];
  v14 = PXPeoplePetsHomeVisibilityMake(v11 > 0, v13 > 0);
  v15 = OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_visibility;
  swift_beginAccess();
  *(v0 + v15) = v14;
  v16 = *(v0 + OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_defaults);
  if (qword_1EB17CB30 != -1)
  {
    swift_once();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v11 > 0;
  *(v17 + 25) = v13 > 0;
  aBlock[4] = sub_1A3FF0C70;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_12_3;
  v18 = _Block_copy(aBlock);
  v19 = v16;
  sub_1A524BF14();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1A3FF0C28(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v20 = MEMORY[0x1E69E7F60];
  sub_1A3C2A1D0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
  sub_1A3FF0D80(&qword_1EB12B1B0, &qword_1EB12B1C0, v20);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v8, v4, v18);
  _Block_release(v18);
  (*(v22 + 8))(v4, v1);
  (*(v6 + 8))(v8, v21);
}

uint64_t sub_1A3FF0534()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D774();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB126890);
  sub_1A524BF14();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A3FF0C28(&unk_1EB126898, MEMORY[0x1E69E8120]);
  v5 = MEMORY[0x1E69E8120];
  sub_1A3C2A1D0(0, &qword_1EB126E00, MEMORY[0x1E69E8120]);
  sub_1A3FF0D80(&qword_1EB126DF8, &qword_1EB126E00, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8098], v8);
  result = sub_1A524D784();
  qword_1EB1EB228 = result;
  return result;
}

id PeoplePetsHomeVisibilitySource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeoplePetsHomeVisibilitySource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall PeoplePetsHomeVisibilitySource.photoLibraryDidChange(onMainQueue:)(PHChange onMainQueue)
{
  v2 = OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_humans;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1A3C52C70(0, &qword_1EB1265C0);
  v4 = v3;
  v5 = sub_1A524DC44();

  v6 = OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_pets;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (!v7)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = sub_1A524DC44();

  if (v5)
  {
    v10 = [v5 fetchResultAfterChanges];
    v11 = *(v1 + v2);
    *(v1 + v2) = v10;
  }

  if (v9)
  {
    v12 = [v9 fetchResultAfterChanges];
    v13 = *(v1 + v6);
    *(v1 + v6) = v12;
  }

  sub_1A3FF016C();
}

void sub_1A3FF0A70()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A3FEFF8C(v1);
    v4 = sub_1A524D264();
    v5 = PLUIGetLog();
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, v4))
      {
        v7 = swift_slowAlloc();
        swift_slowAlloc();
        *v7 = 136315138;
        v8 = OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_visibility;
        swift_beginAccess();
        v9 = PXPeoplePetsHomeVisibilityDescription(*&v3[v8]);
        sub_1A524C674();

        sub_1A3C2EF94();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1A3FF0C28(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A3FF0C70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1A524C634();
  [v1 setNumber:v4 forKey:v5];

  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v6 = sub_1A524C634();
  [v1 setNumber:v7 forKey:v6];
}

uint64_t sub_1A3FF0D80(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C2A1D0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3FF0DD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3FF0E74()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1A0638);
  __swift_project_value_buffer(v0, qword_1EB1A0638);
  sub_1A5246EF4();
}

id sub_1A3FF0F18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXMemoryMoodFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A3FF0F50(uint64_t a1)
{
  sub_1A3FF1384();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1A5245684();
  MEMORY[0x1EEE9AC00](v3);
  if (*(a1 + 16))
  {
    sub_1A3C5DCA4(1685024589, 0xE400000000000000);
    if (v4)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  if (qword_1EB1A0630 != -1)
  {
    swift_once();
  }

  v5 = sub_1A5246F24();
  __swift_project_value_buffer(v5, qword_1EB1A0638);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3FF1384()
{
  if (!qword_1EB130018)
  {
    sub_1A5245684();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130018);
    }
  }
}

uint64_t sub_1A3FF13DC(uint64_t a1)
{
  sub_1A3FF1384();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3FF1438(void *a1)
{
  v1 = [a1 localIdentifier];
  v2 = sub_1A524C674();

  return v2;
}

double sub_1A3FF148C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = a1;
  *(a3 + 8) = a4;
  *(a3 + 16) = a4 * a5;
  result = a4 * a6;
  *(a3 + 24) = result;
  *(a3 + 32) = a2;
  return result;
}

uint64_t sub_1A3FF14AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1A3FF14F8(v5, v7) & 1;
}

uint64_t sub_1A3FF14F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 32))
  {
    v2 = a1;
    v4 = [*(a1 + 32) localIdentifier];
    v5 = sub_1A524C674();
    v7 = v6;

    v8 = a2;
    v9 = *(a2 + 32);
    if (!v9)
    {
      a1 = v2;
      if (!v7)
      {
        goto LABEL_19;
      }

LABEL_17:

      return 0;
    }
  }

  else
  {
    v8 = a2;
    v9 = *(a2 + 32);
    if (!v9)
    {
      goto LABEL_19;
    }

    v2 = a1;
    v7 = 0;
    v5 = 0;
  }

  v10 = [v9 localIdentifier];
  v11 = sub_1A524C674();
  v13 = v12;

  if (v7)
  {
    if (!v13)
    {
      goto LABEL_17;
    }

    if (v5 == v11 && v7 == v13)
    {

      a1 = v2;
      goto LABEL_19;
    }

    v15 = sub_1A524EAB4();

    a1 = v2;
    if (v15)
    {
      goto LABEL_19;
    }

    return 0;
  }

  a1 = v2;
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_19:
  v16 = [*a1 localIdentifier];
  v17 = sub_1A524C674();
  v19 = v18;

  v20 = [*v8 localIdentifier];
  v21 = sub_1A524C674();
  v23 = v22;

  if (v17 == v21 && v19 == v23)
  {

    return 1;
  }

  else
  {
    v24 = sub_1A524EAB4();

    return v24 & 1;
  }
}

uint64_t type metadata accessor for LemonadeMemoriesCreationUnavailableSubtitle()
{
  result = qword_1EB1A0770;
  if (!qword_1EB1A0770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3FF1784@<X0>(uint64_t a1@<X8>)
{
  sub_1A3FF2DDC(0, &qword_1EB130020, sub_1A3FF1BD0, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_1A3FF1BD0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FF1CFC(0, &qword_1EB128F90, MEMORY[0x1E69C14A0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = sub_1A52453A4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for LemonadeMemoriesCreationUnavailableSubtitle() + 24);
  v25 = v1;
  v19 = *(*(*(v1 + v18) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 56);
  if (v19)
  {
    v24[0] = v5;
    v24[1] = a1;
    v20 = *(*v19 + 192);

    v20(v21);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_1A475C0F0(v10, v13);
    sub_1A3FF2070(v10);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      (*(v15 + 32))(v17, v13, v14);
      *v7 = sub_1A5249314();
      *(v7 + 1) = 0x4010000000000000;
      v7[16] = 0;
      sub_1A3FF255C();
      sub_1A3FF20FC(v25, v17, &v7[*(v23 + 44)]);
    }

    sub_1A3FF2070(v13);
  }

  swift_storeEnumTagMultiPayload();
  sub_1A3FF1F98();
  return sub_1A5249744();
}

void sub_1A3FF1BD0()
{
  if (!qword_1EB130028)
  {
    sub_1A3FF1C68();
    sub_1A3FF1CFC(255, &qword_1EB127820, sub_1A3FF1F48, MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130028);
    }
  }
}

void sub_1A3FF1C68()
{
  if (!qword_1EB130030)
  {
    sub_1A3FF1CFC(255, &qword_1EB130038, sub_1A3FF1D60, MEMORY[0x1E6981F40]);
    sub_1A3FF1EC0();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130030);
    }
  }
}

void sub_1A3FF1CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3FF1D60()
{
  if (!qword_1EB130040)
  {
    sub_1A3FF1DC8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB130040);
    }
  }
}

void sub_1A3FF1DC8()
{
  if (!qword_1EB130048)
  {
    sub_1A3FF1E68();
    sub_1A3FF2DDC(255, &qword_1EB130050, MEMORY[0x1E697E568], MEMORY[0x1E697E558], MEMORY[0x1E6980480]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130048);
    }
  }
}

void sub_1A3FF1E68()
{
  if (!qword_1EB127450)
  {
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127450);
    }
  }
}

unint64_t sub_1A3FF1EC0()
{
  result = qword_1EB130058;
  if (!qword_1EB130058)
  {
    sub_1A3FF1CFC(255, &qword_1EB130038, sub_1A3FF1D60, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130058);
  }

  return result;
}

void sub_1A3FF1F48()
{
  if (!qword_1EB1276A0)
  {
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1276A0);
    }
  }
}

unint64_t sub_1A3FF1F98()
{
  result = qword_1EB130060;
  if (!qword_1EB130060)
  {
    sub_1A3FF1BD0();
    sub_1A3FF2018();
    sub_1A3F96350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130060);
  }

  return result;
}

unint64_t sub_1A3FF2018()
{
  result = qword_1EB130068;
  if (!qword_1EB130068)
  {
    sub_1A3FF1C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130068);
  }

  return result;
}

uint64_t sub_1A3FF2070(uint64_t a1)
{
  sub_1A3FF1CFC(0, &qword_1EB128F90, MEMORY[0x1E69C14A0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3FF20FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = a2;
  v47 = a1;
  v49 = a3;
  v3 = type metadata accessor for LemonadeMemoriesCreationUnavailableSubtitle();
  v45 = *(v3 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1A52453A4();
  v5 = *(v41 - 8);
  v42 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FF1DC8();
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = sub_1A524C634();
  v13 = PXMemoryCreationLocalizedString(v12);

  v14 = sub_1A524C674();
  v16 = v15;

  v50 = v14;
  v51 = v16;
  sub_1A3D5F9DC();
  v17 = sub_1A524A464();
  v19 = v18;
  v21 = v20;
  LODWORD(v50) = sub_1A5249A14();
  v37 = sub_1A524A374();
  v23 = v22;
  v38 = v24;
  v39 = v25;
  sub_1A3E04DF4(v17, v19, v21 & 1);

  v26 = v40;
  v27 = v41;
  (*(v5 + 16))(v40, v44, v41);
  v28 = v43;
  sub_1A3FF3070(v47, v43, type metadata accessor for LemonadeMemoriesCreationUnavailableSubtitle);
  v29 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v30 = (v42 + *(v45 + 80) + v29) & ~*(v45 + 80);
  v31 = swift_allocObject();
  (*(v5 + 32))(v31 + v29, v26, v27);
  sub_1A3FF3008(v28, v31 + v30, type metadata accessor for LemonadeMemoriesCreationUnavailableSubtitle);
  sub_1A524B704();
  sub_1A5248554();
  v32 = v48;
  sub_1A3FF3070(v11, v48, sub_1A3FF1DC8);
  v33 = v49;
  v34 = v37;
  *v49 = v37;
  v33[1] = v23;
  LOBYTE(v29) = v38 & 1;
  *(v33 + 16) = v38 & 1;
  v33[3] = v39;
  v35 = v33;
  sub_1A3FF1D60();
  sub_1A3FF3070(v32, v35 + *(v36 + 48), sub_1A3FF1DC8);
  sub_1A3E75E68(v34, v23, v29);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3FF255C()
{
  if (!qword_1EB130070)
  {
    sub_1A3FF1CFC(255, &qword_1EB130038, sub_1A3FF1D60, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130070);
    }
  }
}

void sub_1A3FF25F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeMemoriesCreationUnavailableSubtitle();
  sub_1A3FF29A0(v10);
  sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    sub_1A5245C94();
  }

  sub_1A3FF2F14(v10, sub_1A3D63A58);
  v12 = *a2;
  if (*(a2 + 8) == 1)
  {
    v13 = v12;
  }

  else
  {

    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v12, 0);
    (*(v5 + 8))(v7, v4);
    v13 = v16;
    v12 = v16;
  }

  static LemonadeMemoriesCreationUnavailableAlert.show(state:viewController:photoLibrary:)(a1, 0, v12);
}

uint64_t sub_1A3FF28A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A524B544();
  *a1 = result;
  return result;
}

uint64_t sub_1A3FF28EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v4 = type metadata accessor for LemonadeMemoriesCreationUnavailableSubtitle();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_1A3FF1CFC(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + *(v4 + 24)) = a1;
  return result;
}

uint64_t sub_1A3FF29A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FF1CFC(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1A3FF2F74(v2, &v13 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A3FF3008(v10, a1, sub_1A3D63A58);
  }

  sub_1A524D254();
  v12 = sub_1A524A014();
  sub_1A5246DF4();

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

void sub_1A3FF2BD4()
{
  sub_1A3FF2CA0();
  if (v0 <= 0x3F)
  {
    sub_1A3FF1CFC(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LemonadeNavigationContext(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A3FF2CA0()
{
  if (!qword_1EB1246A0)
  {
    sub_1A3C4B840(255, &qword_1EB126BE0, &qword_1EB126BF0, 0x1E69789A8, MEMORY[0x1E69E6720]);
    v0 = sub_1A5247E54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1246A0);
    }
  }
}

unint64_t sub_1A3FF2D24()
{
  result = qword_1EB130078;
  if (!qword_1EB130078)
  {
    sub_1A3FF2DDC(255, &unk_1EB130080, sub_1A3FF1BD0, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A3FF1F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130078);
  }

  return result;
}

void sub_1A3FF2DDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A3FF2E48()
{
  v1 = *(sub_1A52453A4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for LemonadeMemoriesCreationUnavailableSubtitle() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1A3FF25F4(v0 + v2, v5);
}

uint64_t sub_1A3FF2F14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3FF2F74(uint64_t a1, uint64_t a2)
{
  sub_1A3FF1CFC(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3FF3008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3FF3070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A3FF34DC()
{
  v1 = sub_1A5244EE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___PXMovePersonActionPerformer_sourcePeople;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:
    v7 = 0;
LABEL_16:
    v0 = sub_1A524D244();
    v27 = PLPeopleGetLog();
    if (v27)
    {
      v28 = v27;
      sub_1A5246DF4();

      return;
    }

    goto LABEL_20;
  }

  if (!sub_1A524E2B4())
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
    v8 = [v7 photoLibrary];
    v9 = v7;
    if (v8)
    {
      v10 = v8;
      v11 = OBJC_IVAR___PXMovePersonActionPerformer_destinationManualOrder;
      swift_beginAccess();
      v12 = *(v0 + v11);
      if (v12 == sub_1A52403B4())
      {
      }

      else
      {
        v13 = OBJC_IVAR___PXMovePersonActionPerformer_destinationType;
        swift_beginAccess();
        v14 = *(v0 + v13);

        if (v14 != -1)
        {
          v30 = v11;
          v15 = *MEMORY[0x1E69C12C0];
          v32 = v13;
          v31 = *(v2 + 104);
          v31(v4, v15, v1);
          sub_1A3C36888();
          v16 = sub_1A3C30368();
          v33 = sub_1A414E968(v10, v4, 0, 0, v16 & 1);
          v17 = *(v2 + 8);
          v29[1] = v2 + 8;
          v17(v4, v1);
          v31(v4, *MEMORY[0x1E69C12B8], v1);
          v18 = sub_1A3C30368();
          v19 = sub_1A414E968(v10, v4, 0, 0, v18 & 1);
          v17(v4, v1);
          v2 = v32;
          v20 = *(v0 + v32);
          v21 = v19;
          v22 = v33;
          if (v20 == 1 || (v21 = v33, v22 = v19, !v20))
          {
            v32 = v19;
            v23 = OBJC_IVAR___PXMovePersonActionPerformer_sourceType;
            swift_beginAccess();
            v31 = *(v0 + v23);
            v30 = *(v0 + v30);
            swift_beginAccess();
            sub_1A3C52C70(0, &qword_1EB1265C0);
            v24 = v22;
            v25 = v21;
            v26 = v24;
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          goto LABEL_21;
        }
      }

      v9 = v10;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  aBlock = 0;
  v35 = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000001CLL, 0x80000001A53C2020);
  v36 = *(v0 + v2);
  type metadata accessor for PHPersonType(0);
  sub_1A524E624();
  sub_1A524E6E4();
  __break(1u);
}

id sub_1A3FF3BB8(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___PXMovePersonActionPerformer_sourcePeople] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR___PXMovePersonActionPerformer_sourceType] = -1;
  v6 = OBJC_IVAR___PXMovePersonActionPerformer_destinationManualOrder;
  *&v3[v6] = sub_1A52403B4();
  *&v3[OBJC_IVAR___PXMovePersonActionPerformer_destinationType] = -1;
  v7 = &v3[OBJC_IVAR___PXMovePersonActionPerformer_targetLocalIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = sub_1A524C634();

  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0);
  v9 = sub_1A524C3D4();

  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithActionType_assetCollectionReference_parameters_, v8, a3, v9);

  return v10;
}

void sub_1A3FF3E14(char a1, void *a2)
{
  if (a2)
  {
    v5 = *(v2 + 24);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = OBJC_IVAR___PXMovePersonActionPerformer_destinationManualOrder;
      v8 = Strong;
      swift_beginAccess();
      v9 = *&v8[v7];
      v10 = a2;
    }

    else
    {
      v11 = a2;
      v9 = sub_1A52403B4();
    }

    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = OBJC_IVAR___PXMovePersonActionPerformer_destinationType;
      v14 = v12;
      swift_beginAccess();
      v15 = *&v14[v13];
    }

    else
    {
      v15 = -1;
    }

    v16 = sub_1A524D244();
    v17 = PLPeopleGetLog();
    if (!v17)
    {
      __break(1u);
      return;
    }

    v18 = v17;
    if (os_log_type_enabled(v17, v16))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138413058;
      *(v19 + 4) = v5;
      *v20 = v5;
      *(v19 + 12) = 2048;
      *(v19 + 14) = v9;
      *(v19 + 22) = 2048;
      *(v19 + 24) = v15;
      *(v19 + 32) = 2112;
      v21 = a2;
      v22 = v5;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 34) = v23;
      v20[1] = v23;
      _os_log_impl(&dword_1A3C1C000, v18, v16, "Error moving person: %@ to index: %ld with destinationType: %ld error: %@", v19, 0x2Au);
      sub_1A3D3F118();
      swift_arrayDestroy();
      MEMORY[0x1A590EEC0](v20, -1, -1);
      MEMORY[0x1A590EEC0](v19, -1, -1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    if (a2)
    {
      v26 = sub_1A5240B74();
    }

    else
    {
      v26 = 0;
    }

    [v25 completeBackgroundTaskWithSuccess:a1 & 1 error:v26];
  }
}

void sub_1A3FF40D4(uint64_t a1@<X8>)
{
  v54 = a1;
  v51 = sub_1A5247E04();
  v2 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v47 - v5;
  sub_1A3FF6FD0();
  v53 = v6;
  v52 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v1;
  sub_1A3C38BD4();
  v8 = sub_1A524C734();
  v10 = v9;

  v60 = v8;
  v61 = v10;
  sub_1A3D5F9DC();
  v74 = sub_1A524A464();
  v75 = v11;
  v76 = v12 & 1;
  v77 = v13;
  v60 = 0;
  v61 = 0xE000000000000000;
  v14 = sub_1A524A464();
  v16 = v15;
  LOBYTE(v10) = v17;
  v19 = v18;
  v20 = sub_1A524A084();
  sub_1A5247BC4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v10 & 1;
  LOBYTE(v60) = v10 & 1;
  LOBYTE(v56) = 0;
  v30 = sub_1A524A254();
  KeyPath = swift_getKeyPath();
  v32 = sub_1A524B3D4();
  v33 = swift_getKeyPath();
  v60 = v14;
  v61 = v16;
  v62 = v29;
  v63 = v19;
  v64 = v20;
  v65 = v22;
  v66 = v24;
  v67 = v26;
  v68 = v28;
  v69 = 0;
  v70 = KeyPath;
  v71 = v30;
  v72 = v33;
  v73 = v32;
  sub_1A3FF705C();
  sub_1A3FF8D98(0, &qword_1EB130110, sub_1A3FF71A4);
  sub_1A3FF834C(255, &qword_1EB130100, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
  v35 = v34;
  v36 = sub_1A3FF7120();
  v56 = v35;
  v57 = MEMORY[0x1E69E6370];
  v58 = v36;
  v59 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  v37 = v48;
  sub_1A3FF8ED4(&qword_1EB130120, &qword_1EB130110, sub_1A3FF71A4, sub_1A3FF72C4);
  sub_1A524BA44();
  v38 = v49;
  sub_1A3DEA79C(v49);
  v39 = v50;
  v40 = v51;
  (*(v2 + 104))(v50, *MEMORY[0x1E697DBB8], v51);
  v41 = v39;
  LOBYTE(v39) = sub_1A5247DF4();
  v42 = *(v2 + 8);
  v42(v41, v40);
  v42(v38, v40);
  if (v39)
  {
    v43 = sub_1A524B2E4();
  }

  else
  {
    v43 = sub_1A524B2A4();
  }

  v60 = v43;
  v44 = sub_1A524B8E4();
  v45 = v54;
  (*(v52 + 32))(v54, v37, v53);
  sub_1A3FF73B4(0);
  *(v45 + *(v46 + 36)) = v44;
}

uint64_t sub_1A3FF45D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for SharedCollectionToggleSettingsSection(0);
  v4 = v3 - 8;
  v18 = *(v3 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A3FF834C(0, &qword_1EB130100, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v26 = sub_1A3C38BD4();
  v27 = v9;
  v10 = a1 + *(v4 + 36);
  v12 = *(v10 + 8);
  v24 = *v10;
  v11 = v24;
  v25 = v12;
  sub_1A3FF9C64(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  sub_1A3D5F9DC();
  sub_1A524B864();
  LOBYTE(v22) = v11;
  v23 = v12;
  sub_1A524B6A4();
  LOBYTE(v22) = v26;
  sub_1A3FF913C(a1, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedCollectionToggleSettingsSection);
  v13 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v14 = swift_allocObject();
  sub_1A3FF9AF8(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for SharedCollectionToggleSettingsSection);
  sub_1A3FF7120();
  v15 = v20;
  sub_1A524B144();

  return (*(v19 + 8))(v8, v15);
}

void sub_1A3FF48CC(char *a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for SharedCollectionToggleSettingsSection(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5246F24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a2 + *(v4 + 20));
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v34 = v8;
    v15 = v12;
    v16 = [v14 photoLibrary];
    if (v16)
    {
      v17 = v16;
      v18 = swift_allocObject();
      *(v18 + 16) = v14;
      *(v18 + 24) = v11;
      aBlock[4] = sub_1A3FF9BD0;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_56_0;
      v19 = _Block_copy(aBlock);
      v20 = v15;

      aBlock[0] = 0;
      v21 = [v17 performChangesAndWait:v19 error:aBlock];
      _Block_release(v19);

      if (v21)
      {
        v22 = aBlock[0];
      }

      else
      {
        v23 = aBlock[0];
        v24 = sub_1A5240B84();

        swift_willThrow();
        v25 = sub_1A3C56D80();
        v26 = v34;
        (*(v34 + 16))(v10, v25, v7);
        sub_1A3FF913C(a2, v6, type metadata accessor for SharedCollectionToggleSettingsSection);
        v27 = v24;
        v28 = sub_1A5246F04();
        v29 = sub_1A524D264();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v32[1] = swift_slowAlloc();
          v33 = swift_slowAlloc();
          aBlock[0] = v33;
          *v30 = 136446466;
          v31 = [*&v6[*(v4 + 20)] uuid];
          sub_1A524C674();

          sub_1A3FF91A4(v6, type metadata accessor for SharedCollectionToggleSettingsSection);
          sub_1A3C2EF94();
        }

        (*(v26 + 8))(v10, v7);
        sub_1A3FF91A4(v6, type metadata accessor for SharedCollectionToggleSettingsSection);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1A3FF4D90(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_1A3FF94E8(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for SharedCollectionDeleteAlbumSection(0);
  v9 = a4 + v8[8];
  sub_1A524B694();
  *v9 = v60;
  *(v9 + 1) = v61;
  v58 = v8[9];
  v10 = (a4 + v8[13]);
  v11 = sub_1A524C634();
  v12 = PXLocalizedString(v11);

  v13 = sub_1A524C674();
  v15 = v14;

  *v10 = v13;
  v10[1] = v15;
  v16 = (a4 + v8[5]);
  type metadata accessor for SharedCollectionActionViewModel();
  v17 = a1;
  sub_1A524B694();
  *v16 = v60;
  v16[1] = v61;
  *(a4 + v8[6]) = a2;
  *(a4 + v8[7]) = a3;
  v18 = a2;
  v59 = v17;
  if ([v18 px_isOwnedCloudKitSharedAlbum])
  {
    v19 = sub_1A524C634();
    v20 = PLServicesLocalizedFrameworkString();

    if (v20)
    {
LABEL_5:
      v22 = (a4 + v58);
      v23 = sub_1A524C674();
      v25 = v24;

      *v22 = v23;
      v22[1] = v25;
      v26 = sub_1A524C634();

      v27 = PXLocalizedString(v26);

      sub_1A524C674();
      sub_1A3FF94E8(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1A52F8E10;
      v29 = [v18 localizedTitle];
      if (v29)
      {
        v30 = v29;
        v31 = sub_1A524C674();
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 0;
      }

      *(v28 + 56) = MEMORY[0x1E69E6158];
      v34 = sub_1A3D710E8();
      *(v28 + 64) = v34;
      if (v33)
      {
        v35 = v31;
      }

      else
      {
        v35 = 0;
      }

      v36 = 0xE000000000000000;
      if (v33)
      {
        v36 = v33;
      }

      *(v28 + 32) = v35;
      *(v28 + 40) = v36;
      v37 = (a4 + v8[10]);
      v38 = sub_1A524C6C4();
      v40 = v39;

      *v37 = v38;
      v37[1] = v40;
      v41 = sub_1A524C634();

      v42 = PXLocalizedString(v41);

      sub_1A524C674();
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1A52F8E10;
      v44 = [v18 localizedTitle];

      if (v44)
      {
        v45 = sub_1A524C674();
        v47 = v46;

        *(v43 + 56) = MEMORY[0x1E69E6158];
        *(v43 + 64) = v34;
        if (v47)
        {
LABEL_18:
          *(v43 + 32) = v45;
          *(v43 + 40) = v47;
          v48 = (a4 + v8[11]);
          v49 = (a4 + v8[12]);
          v50 = sub_1A524C6C4();
          v52 = v51;

          *v48 = v50;
          v48[1] = v52;
          v53 = sub_1A524C634();

          v54 = PXLocalizedString(v53);

          v55 = sub_1A524C674();
          v57 = v56;

          *v49 = v55;
          v49[1] = v57;
          return;
        }

        v45 = 0;
      }

      else
      {
        v45 = 0;
        *(v43 + 56) = MEMORY[0x1E69E6158];
        *(v43 + 64) = v34;
      }

      v47 = 0xE000000000000000;
      goto LABEL_18;
    }

    __break(1u);
  }

  else
  {
    v21 = sub_1A524C634();
    v20 = PLServicesLocalizedFrameworkString();

    if (v20)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_1A3FF52C4(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_1A5247E04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  sub_1A3FF7408();
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  sub_1A3FF746C();
  sub_1A3FF75A0();
  v13 = v12;
  sub_1A3FF7760(255);
  v15 = v14;
  v16 = sub_1A3FF8A84(&unk_1EB13B010, sub_1A3FF75A0);
  v17 = sub_1A3D5F9DC();
  v18 = sub_1A3FF8A84(&qword_1EB121040, sub_1A3FF7760);
  v29 = v13;
  v30 = MEMORY[0x1E69E6158];
  v31 = v15;
  v32 = MEMORY[0x1E6981148];
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  sub_1A524BA54();
  sub_1A3DEA79C(v8);
  (*(v3 + 104))(v5, *MEMORY[0x1E697DBB8], v2);
  LOBYTE(v16) = sub_1A5247DF4();
  v19 = *(v3 + 8);
  v19(v5, v2);
  v19(v8, v2);
  if (v16)
  {
    v20 = sub_1A524B2E4();
  }

  else
  {
    v20 = sub_1A524B2A4();
  }

  v29 = v20;
  v21 = sub_1A524B8E4();
  v22 = v27;
  (*(v25 + 32))(v27, v11, v26);
  sub_1A3FF782C(0);
  *(v22 + *(v23 + 36)) = v21;
}

void sub_1A3FF55F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = type metadata accessor for SharedCollectionDeleteAlbumSection(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A3FF75A0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1A3FF913C(a1, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedCollectionDeleteAlbumSection);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1A3FF9AF8(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for SharedCollectionDeleteAlbumSection);
  v15[12] = a1;
  sub_1A3FF7634();
  sub_1A3FF8A84(&qword_1EB13AFA0, sub_1A3FF7634);
  sub_1A524B704();
  v10 = (a1 + *(v4 + 48));
  v11 = v10[1];
  v18 = *v10;
  v19 = v11;
  v12 = a1 + *(v4 + 40);
  v13 = *v12;
  v14 = *(v12 + 8);
  v16 = v13;
  v17 = v14;
  sub_1A3FF9C64(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3FF59C4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[7] = a2;
  v3 = type metadata accessor for SharedCollectionDeleteAlbumSection(0);
  v4 = v3 - 8;
  v16[4] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A3FF94E8(0, &qword_1EB1249B0, MEMORY[0x1E697BDB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1A3FF834C(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  MEMORY[0x1EEE9AC00](v6);
  v16[6] = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v16[5] = v16 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v16[3] = v16 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v16[1] = a1;
  v16[2] = v16 - v13;
  v14 = (a1 + *(v4 + 56));
  v15 = v14[1];
  v16[8] = *v14;
  v16[9] = v15;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3FF5E58(uint64_t a1)
{
  v2 = type metadata accessor for SharedCollectionDeleteAlbumSection(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1A3FF9C64(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A52F9790;
  v7 = *(a1 + *(v3 + 32));
  *(v6 + 32) = v7;
  sub_1A3FF913C(a1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedCollectionDeleteAlbumSection);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_1A3FF9AF8(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for SharedCollectionDeleteAlbumSection);
  v10 = v7;
  SharedCollectionsDeleteAlbums(sharedAlbums:completionHandler:)(v6, sub_1A3FF977C, v9);
}

uint64_t sub_1A3FF5FF4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  type metadata accessor for SharedCollectionActionViewModel();
  result = sub_1A524B694();
  *a3 = v7;
  a3[1] = v8;
  a3[2] = a1;
  a3[3] = a2;
  return result;
}

void SharedCollectionSettingsView.body.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A3FF7860();
  sub_1A3FF60E8(v3, v4, v6, v5, (a1 + *(v7 + 44)));
  v8 = sub_1A524B344();
  LOBYTE(v3) = sub_1A524A064();
  sub_1A3FF8224();
  v10 = a1 + *(v9 + 36);
  *v10 = v8;
  *(v10 + 8) = v3;
}

uint64_t sub_1A3FF60E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v55 = a1;
  v56 = a2;
  v66 = a5;
  v7 = sub_1A52493A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FF7CD8();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FF9D6C(0, &qword_1EB1301D0, sub_1A3FF7B48, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v61 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - v16;
  sub_1A3FF7A8C();
  v19 = *(v18 - 8);
  v64 = v18;
  v65 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FF7998();
  v63 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v62 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v58 = &v55 - v25;
  v60 = a3 != 0;
  v67 = v55;
  v68 = v56;
  v69 = a3;
  v70 = a4;
  sub_1A3FF94E8(0, &qword_1EB1301F8, sub_1A3FF7D6C, MEMORY[0x1E69E6720]);
  sub_1A3FF7E10();
  sub_1A524A294();
  sub_1A3FF8A84(&qword_1EB130220, sub_1A3FF7CD8);
  sub_1A524ADD4();
  (*(v12 + 8))(v14, v11);
  v26 = v57;
  sub_1A5249394();
  sub_1A3FF7B7C(0);
  v28 = *(v27 + 36);
  (*(v8 + 16))(&v17[v28], v26, v7);
  v29 = *(v8 + 56);
  v29(&v17[v28], 0, 1, v7);
  KeyPath = swift_getKeyPath();
  sub_1A3FF7B48(0);
  v32 = &v17[*(v31 + 36)];
  sub_1A3FF7F7C(0);
  v34 = *(v33 + 28);
  (*(v8 + 32))(v32 + v34, v26, v7);
  v29(v32 + v34, 0, 1, v7);
  *v32 = KeyPath;
  LOBYTE(KeyPath) = sub_1A524A054();
  sub_1A5247BC4();
  v35 = v61;
  v36 = &v17[*(v61 + 36)];
  *v36 = KeyPath;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  v41 = sub_1A3FF7FE4();
  v42 = v59;
  sub_1A524AB34();
  sub_1A3CD32E0(v17);
  v72 = v35;
  v73 = v41;
  swift_getOpaqueTypeConformance2();
  v43 = v58;
  v44 = v64;
  sub_1A524AEB4();
  (*(v65 + 8))(v42, v44);
  LOBYTE(v72) = v60;
  v45 = *(v22 + 16);
  v47 = v62;
  v46 = v63;
  v45(v62, v43, v63);
  v71 = 1;
  v48 = v66;
  *v66 = v72;
  sub_1A3FF78FC();
  v50 = v49;
  v45(&v48[*(v49 + 48)], v47, v46);
  v51 = &v48[*(v50 + 64)];
  v52 = v71;
  *v51 = 0;
  v51[8] = v52;
  v53 = *(v22 + 8);
  v53(v43, v46);
  return (v53)(v47, v46);
}

uint64_t sub_1A3FF66D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a1;
  v40 = a2;
  sub_1A3FF7D6C(0);
  v9 = v8;
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SharedCollectionDeleteAlbumSection(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v37 - v16);
  v18 = type metadata accessor for SharedCollectionToggleSettingsSection(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = (&v37 - v23);
  if (a3)
  {
    *v24 = swift_getKeyPath();
    sub_1A3FF94E8(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    *(v24 + v18[5]) = a3;
    objc_opt_self();
    v25 = swift_dynamicCastObjCClassUnconditional();
    v38 = v9;
    v26 = v25;
    v27 = a3;
    swift_unknownObjectRetain_n();
    v28 = v27;
    v37 = a5;
    v29 = v28;
    v30 = [v26 notificationState] == 0x7FFF;
    v31 = v24 + v18[7];
    LOBYTE(v42) = v30;
    sub_1A524B694();
    v32 = v44;
    *v31 = v43;
    *(v31 + 1) = v32;
    *(v24 + v18[6]) = a4;
    v43 = v39;
    v44 = v40;
    sub_1A3FF94E8(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    sub_1A3FF4D90(v42, v29, a4, v17);
    sub_1A3FF913C(v24, v20, type metadata accessor for SharedCollectionToggleSettingsSection);
    sub_1A3FF913C(v17, v14, type metadata accessor for SharedCollectionDeleteAlbumSection);
    sub_1A3FF913C(v20, v11, type metadata accessor for SharedCollectionToggleSettingsSection);
    sub_1A3FF7DA0();
    sub_1A3FF913C(v14, &v11[*(v33 + 48)], type metadata accessor for SharedCollectionDeleteAlbumSection);
    sub_1A3FF91A4(v17, type metadata accessor for SharedCollectionDeleteAlbumSection);
    sub_1A3FF91A4(v24, type metadata accessor for SharedCollectionToggleSettingsSection);
    sub_1A3FF91A4(v14, type metadata accessor for SharedCollectionDeleteAlbumSection);
    sub_1A3FF91A4(v20, type metadata accessor for SharedCollectionToggleSettingsSection);
    v34 = v37;
    sub_1A3FF9AF8(v11, v37, sub_1A3FF7D6C);
    return (*(v41 + 56))(v34, 0, 1, v38);
  }

  else
  {
    v36 = *(v41 + 56);

    return v36(a5, 1, 1, v9, v22);
  }
}

__n128 sub_1A3FF6B38@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharingDisplayNameIncludingEmail:1 allowsEmail:1];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1A524C674();
    v10 = v9;

    v11 = sub_1A524C634();
    v12 = PXLocalizedString(v11);

    sub_1A524C674();
    sub_1A3FF94E8(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1A52F8E10;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1A3D710E8();
    *(v13 + 32) = v8;
    *(v13 + 40) = v10;
    v14 = sub_1A524C6C4();
    v16 = v15;

    *&v51 = v14;
    *(&v51 + 1) = v16;
    sub_1A3D5F9DC();
    v17 = sub_1A524A464();
    v19 = v18;
    LOBYTE(v11) = v20;
    sub_1A524A254();
    sub_1A524A104();

    v21 = sub_1A524A3C4();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    sub_1A3E04DF4(v17, v19, v11 & 1);

    KeyPath = swift_getKeyPath();
    v29 = sub_1A524B4A4();
    v30 = swift_getKeyPath();
    LOBYTE(v51) = v25 & 1;
    v31 = sub_1A524A064();
    v50 = 0;
    v39[3] = v21;
    v39[4] = v23;
    v40 = v25 & 1;
    v41 = v27;
    v42 = KeyPath;
    v43 = 1;
    v44 = v30;
    v45 = v29;
    v46 = v31;
    v47 = xmmword_1A5310E80;
    v48 = xmmword_1A5310E80;
    v49 = 0;
  }

  else
  {
    v32 = sub_1A3C56D80();
    (*(v3 + 16))(v5, v32, v2);
    v33 = sub_1A5246F04();
    v34 = sub_1A524D244();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1A3C1C000, v33, v34, "Empty creator information string not displayed in settings!", v35, 2u);
      MEMORY[0x1A590EEC0](v35, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v50 = 1;
    HIBYTE(v49) = 1;
  }

  sub_1A3FF8D1C();
  sub_1A3FF8E1C();
  sub_1A5249744();
  v36 = v56[0];
  *(a1 + 64) = v55;
  *(a1 + 80) = v36;
  *(a1 + 90) = *(v56 + 10);
  v37 = v52;
  *a1 = v51;
  *(a1 + 16) = v37;
  result = v54;
  *(a1 + 32) = v53;
  *(a1 + 48) = result;
  return result;
}

void sub_1A3FF6F3C(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A3FF7860();
  sub_1A3FF60E8(v3, v4, v6, v5, (a1 + *(v7 + 44)));
  v8 = sub_1A524B344();
  LOBYTE(v3) = sub_1A524A064();
  sub_1A3FF8224();
  v10 = a1 + *(v9 + 36);
  *v10 = v8;
  *(v10 + 8) = v3;
}

void sub_1A3FF6FD0()
{
  if (!qword_1EB1300F0)
  {
    sub_1A3FF705C();
    sub_1A3FF8D98(255, &qword_1EB130110, sub_1A3FF71A4);
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1300F0);
    }
  }
}

void sub_1A3FF705C()
{
  if (!qword_1EB1300F8)
  {
    sub_1A3FF834C(255, &qword_1EB130100, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
    sub_1A3FF7120();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1300F8);
    }
  }
}

unint64_t sub_1A3FF7120()
{
  result = qword_1EB130108;
  if (!qword_1EB130108)
  {
    sub_1A3FF834C(255, &qword_1EB130100, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130108);
  }

  return result;
}

void sub_1A3FF71A4()
{
  if (!qword_1EB130118)
  {
    sub_1A3FF834C(255, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A3FF7250(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130118);
    }
  }
}

void sub_1A3FF7250(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3FF9C64(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A3FF72C4()
{
  result = qword_1EB130128;
  if (!qword_1EB130128)
  {
    sub_1A3FF71A4();
    sub_1A3E003FC();
    sub_1A3FF7364(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130128);
  }

  return result;
}

uint64_t sub_1A3FF7364(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3FF7250(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3FF7408()
{
  if (!qword_1EB130160)
  {
    sub_1A3FF746C();
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130160);
    }
  }
}

void sub_1A3FF746C()
{
  if (!qword_1EB13B000)
  {
    sub_1A3FF75A0();
    sub_1A3FF7760(255);
    sub_1A3FF8A84(&unk_1EB13B010, sub_1A3FF75A0);
    sub_1A3D5F9DC();
    sub_1A3FF8A84(&qword_1EB121040, sub_1A3FF7760);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B000);
    }
  }
}

void sub_1A3FF75A0()
{
  if (!qword_1EB130170)
  {
    sub_1A3FF7634();
    sub_1A3FF8A84(&qword_1EB13AFA0, sub_1A3FF7634);
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130170);
    }
  }
}

void sub_1A3FF7634()
{
  if (!qword_1EB1382E0)
  {
    sub_1A3FF76C8(255);
    sub_1A3FF8A84(&qword_1EB130190, sub_1A3FF76C8);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1382E0);
    }
  }
}

void sub_1A3FF76FC()
{
  if (!qword_1EB1382F0)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB1382F0);
    }
  }
}

void sub_1A3FF7794()
{
  if (!qword_1EB121AA0)
  {
    sub_1A3FF834C(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB121AA0);
    }
  }
}

void sub_1A3FF7860()
{
  if (!qword_1EB1301A0)
  {
    sub_1A3FF78C8(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1301A0);
    }
  }
}

void sub_1A3FF78FC()
{
  if (!qword_1EB1301B0)
  {
    sub_1A3FF9C64(255, &qword_1EB1301B8, &type metadata for SharedCollectionSettingsView.creatorInfo, MEMORY[0x1E69E6720]);
    sub_1A3FF7998();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB1301B0);
    }
  }
}

void sub_1A3FF7998()
{
  if (!qword_1EB1301C0)
  {
    sub_1A3FF7A8C();
    sub_1A3FF9D6C(255, &qword_1EB1301D0, sub_1A3FF7B48, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A3FF7FE4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1301C0);
    }
  }
}

void sub_1A3FF7A8C()
{
  if (!qword_1EB1301C8)
  {
    sub_1A3FF9D6C(255, &qword_1EB1301D0, sub_1A3FF7B48, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A3FF7FE4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1301C8);
    }
  }
}

void sub_1A3FF7BB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A3FF7C24()
{
  if (!qword_1EB1301E8)
  {
    sub_1A3FF7CD8();
    sub_1A3FF8A84(&qword_1EB130220, sub_1A3FF7CD8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1301E8);
    }
  }
}

void sub_1A3FF7CD8()
{
  if (!qword_1EB1301F0)
  {
    sub_1A3FF94E8(255, &qword_1EB1301F8, sub_1A3FF7D6C, MEMORY[0x1E69E6720]);
    sub_1A3FF7E10();
    v0 = sub_1A524A2A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1301F0);
    }
  }
}

void sub_1A3FF7DA0()
{
  if (!qword_1EB130208)
  {
    type metadata accessor for SharedCollectionToggleSettingsSection(255);
    type metadata accessor for SharedCollectionDeleteAlbumSection(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB130208);
    }
  }
}

unint64_t sub_1A3FF7E10()
{
  result = qword_1EB130210;
  if (!qword_1EB130210)
  {
    sub_1A3FF94E8(255, &qword_1EB1301F8, sub_1A3FF7D6C, MEMORY[0x1E69E6720]);
    sub_1A3FF8A84(&qword_1EB130218, sub_1A3FF7D6C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130210);
  }

  return result;
}

void sub_1A3FF7EE8()
{
  if (!qword_1EB130228)
  {
    sub_1A5249D84();
    sub_1A3FF8A84(&qword_1EB130230, MEMORY[0x1E697CA38]);
    v0 = sub_1A52499B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130228);
    }
  }
}

unint64_t sub_1A3FF7FE4()
{
  result = qword_1EB130248;
  if (!qword_1EB130248)
  {
    sub_1A3FF9D6C(255, &qword_1EB1301D0, sub_1A3FF7B48, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A3FF8ACC(&qword_1EB130250, sub_1A3FF7B48, sub_1A3FF80E0, sub_1A3FF81F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130248);
  }

  return result;
}

unint64_t sub_1A3FF80E0()
{
  result = qword_1EB130258;
  if (!qword_1EB130258)
  {
    sub_1A3FF7B7C(255);
    sub_1A3FF7CD8();
    sub_1A3FF8A84(&qword_1EB130220, sub_1A3FF7CD8);
    swift_getOpaqueTypeConformance2();
    sub_1A3FF8A84(&qword_1EB130260, sub_1A3FF7EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130258);
  }

  return result;
}

void sub_1A3FF8224()
{
  if (!qword_1EB130270)
  {
    sub_1A3FF82B8();
    sub_1A3FF834C(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130270);
    }
  }
}

void sub_1A3FF82B8()
{
  if (!qword_1EB130278)
  {
    sub_1A3FF78C8(255);
    sub_1A3FF8A84(&qword_1EB130280, sub_1A3FF78C8);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130278);
    }
  }
}

void sub_1A3FF834C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1A3FF841C()
{
  sub_1A3FF94E8(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A3C52C70(319, &qword_1EB126AC0);
    if (v1 <= 0x3F)
    {
      sub_1A3FF8534();
      if (v2 <= 0x3F)
      {
        sub_1A3FF9C64(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A3FF8534()
{
  result = qword_1EB130288;
  if (!qword_1EB130288)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB130288);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3FF94E8(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A3FF94E8(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

void sub_1A3FF8794()
{
  sub_1A3FF94E8(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A3FF94E8(319, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1A3C52C70(319, &qword_1EB126AC0);
      if (v2 <= 0x3F)
      {
        sub_1A3FF8534();
        if (v3 <= 0x3F)
        {
          sub_1A3FF9C64(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1A3FF8918()
{
  result = qword_1EB130298;
  if (!qword_1EB130298)
  {
    sub_1A3FF6FD0();
    sub_1A3FF834C(255, &qword_1EB130100, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
    sub_1A3FF7120();
    swift_getOpaqueTypeConformance2();
    sub_1A3FF8ED4(&qword_1EB130120, &qword_1EB130110, sub_1A3FF71A4, sub_1A3FF72C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130298);
  }

  return result;
}

uint64_t sub_1A3FF8A84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3FF8ACC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3FF8B58()
{
  result = qword_1EB1302B0;
  if (!qword_1EB1302B0)
  {
    sub_1A3FF7408();
    sub_1A3FF75A0();
    sub_1A3FF7760(255);
    sub_1A3FF8A84(&unk_1EB13B010, sub_1A3FF75A0);
    sub_1A3D5F9DC();
    sub_1A3FF8A84(&qword_1EB121040, sub_1A3FF7760);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1302B0);
  }

  return result;
}

void sub_1A3FF8D1C()
{
  if (!qword_1EB1302D0)
  {
    sub_1A3FF8D98(255, &qword_1EB1302D8, sub_1A3EC43B0);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1302D0);
    }
  }
}

void sub_1A3FF8D98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A3FF7250(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A3FF8E1C()
{
  result = qword_1EB1302E0;
  if (!qword_1EB1302E0)
  {
    sub_1A3FF8D1C();
    sub_1A3FF8ED4(&unk_1EB1302E8, &qword_1EB1302D8, sub_1A3EC43B0, sub_1A3FF8F74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1302E0);
  }

  return result;
}

uint64_t sub_1A3FF8ED4(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A3FF8D98(255, a2, a3);
    a4();
    sub_1A3FF7364(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3FF8F74()
{
  result = qword_1EB1286F0;
  if (!qword_1EB1286F0)
  {
    sub_1A3EC43B0();
    sub_1A3FF8FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1286F0);
  }

  return result;
}

unint64_t sub_1A3FF8FF4()
{
  result = qword_1EB127850;
  if (!qword_1EB127850)
  {
    sub_1A3FF9C64(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127850);
  }

  return result;
}

uint64_t sub_1A3FF9094(uint64_t a1)
{
  sub_1A3FF7FB0(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FF913C(a1, v4, sub_1A3FF7FB0);
  return MEMORY[0x1A59043E0](v4);
}

uint64_t sub_1A3FF913C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3FF91A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3FF9204()
{
  type metadata accessor for SharedCollectionDeleteAlbumSection(0);
  sub_1A3FF9C64(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

  sub_1A524B6A4();
  sub_1A524B6B4();
}

void sub_1A3FF92FC()
{
  sub_1A5249314();
  type metadata accessor for SharedCollectionDeleteAlbumSection(0);
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3FF9468()
{
  type metadata accessor for SharedCollectionDeleteAlbumSection(0);
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3FF94E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroyTm_18()
{
  v1 = type metadata accessor for SharedCollectionDeleteAlbumSection(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_1A3FF94E8(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5247E04();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1A3FF971C()
{
  v1 = *(type metadata accessor for SharedCollectionDeleteAlbumSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1A3FF5E58(v2);
}

void sub_1A3FF977C(char a1, void *a2)
{
  v5 = type metadata accessor for SharedCollectionDeleteAlbumSection(0);
  v6 = v2 + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80));
  if (a1)
  {
    v7 = (v6 + *(v5 + 20));
    v9 = *v7;
    v8 = v7[1];
    aBlock = v9;
    v20 = v8;
    sub_1A3FF94E8(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
    v10 = sub_1A524B6A4();
    (*((*MEMORY[0x1E69E7D40] & *v18) + 0x110))(v10);

    v11 = sub_1A4654ADC();

    if (v11)
    {
      [v11 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    v12 = *(v6 + *(v5 + 28));
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1A3FF9A0C;
    *(v14 + 24) = v13;
    v23 = sub_1A3D78DD0;
    v24 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_1A3D35A90;
    v22 = &block_descriptor_74;
    v15 = _Block_copy(&aBlock);
    v16 = a2;

    v17 = [v12 presentAlertWithConfigurationHandler_];
    swift_unknownObjectRelease();
    _Block_release(v15);
    LODWORD(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
    }
  }
}

void sub_1A3FF9A0C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1A524C634();
  v5 = PXLocalizedSharedCollectionsString(v4);

  if (!v5)
  {
    sub_1A524C674();
    v5 = sub_1A524C634();
  }

  [a1 setTitle_];

  if (v3)
  {
    swift_getErrorValue();
    sub_1A524EBE4();
    v3 = sub_1A524C634();
  }

  [a1 setMessage_];
}

uint64_t sub_1A3FF9AF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A3FF9B60(uint64_t a1, char *a2)
{
  v4 = *(type metadata accessor for SharedCollectionToggleSettingsSection(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  sub_1A3FF48CC(a2, v5);
}

void sub_1A3FF9BD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [objc_opt_self() changeRequestForCollectionShare_];
  if (v3)
  {
    if (v2)
    {
      v4 = 0x7FFFLL;
    }

    else
    {
      v4 = 1;
    }

    v5 = v3;
    [v3 setNotificationState_];
  }
}

void sub_1A3FF9C64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A3FF9CB4()
{
  result = qword_1EB1302F8;
  if (!qword_1EB1302F8)
  {
    sub_1A3FF9D6C(255, &unk_1EB130300, sub_1A3FF8D1C, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A3FF8E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1302F8);
  }

  return result;
}

void sub_1A3FF9D6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A3FF9DD8()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  return v0[16];
}

uint64_t sub_1A3FF9E3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3FF9EB0(uint64_t result)
{
  if (v1[16] != result)
  {
    v2 = result;
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    v5 = v1;
    v6 = v2;
    (*(*v1 + 512))(v4);
  }

  return result;
}

void sub_1A3FF9F98()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FFA00C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

void sub_1A3FFA1B8()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FFA22C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

void sub_1A3FFA3E0()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FFA454@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A3FFA4E8(uint64_t a1, uint64_t a2)
{
  v5 = v2[6];
  if (v5)
  {
    if (a2)
    {
      v6 = v2[5] == a1 && v5 == a2;
      if (v6 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    v12 = a2;
    (*(*v2 + 512))(v9);
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  v2[5] = a1;
  v2[6] = a2;
}

void sub_1A3FFA638()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FFA6AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 360))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3FFA72C(uint64_t a1)
{
  if (sub_1A3D3D27C(v1[7], a1))
  {
    v1[7] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 512))(v5);
  }
}

void sub_1A3FFA850()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FFA8D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 408))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3FFA928(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v2;
  (*(*v3 + 512))(KeyPath, sub_1A4000ECC, v6, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1A3FFA9D8(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 512))();
}

void sub_1A3FFAA80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FFAAE0(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v14[4] = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v14[5] = v3;
  sub_1A3C563A4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A52444C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[6] = a1;
  sub_1A4000C68(a1, v7, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v12 = *(v9 + 32);
    v14[7] = v8;
    v12(v11, v7, v8);
    sub_1A5244464();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = sub_1A40009DC(v7, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
  __break(1u);
  return result;
}

uint64_t sub_1A3FFB180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A3FFB1A4, 0, 0);
}

uint64_t sub_1A3FFB1A4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1A3FFB294;
    v4 = v0[6];
    v3 = v0[7];

    return sub_1A3FFB5AC(v4, v3);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1A3FFB294()
{

  return MEMORY[0x1EEE6DFA0](sub_1A3FFB390, 0, 0);
}

uint64_t sub_1A3FFB390()
{
  sub_1A524CC54();
  *(v0 + 80) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3FFB424, v2, v1);
}

uint64_t sub_1A3FFB424()
{
  v1 = *(v0 + 64);

  if (*(v1 + 16) != 2)
  {
    v2 = *(v0 + 64);
    KeyPath = swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    *(v4 + 24) = 2;
    (*(*v2 + 512))(KeyPath, sub_1A3E93AF4, v4, MEMORY[0x1E69E7CA8] + 8);
  }

  return MEMORY[0x1EEE6DFA0](sub_1A3FFB54C, 0, 0);
}

uint64_t sub_1A3FFB54C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3FFB5AC(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v3[12] = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v4 = sub_1A5244FD4();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = MEMORY[0x1E69E6720];
  sub_1A3C563A4(0, &qword_1EB12D668, type metadata accessor for GenerativeStoryEventSuggestion, MEMORY[0x1E69E6720]);
  v3[18] = swift_task_alloc();
  v6 = type metadata accessor for GenerativeStoryEventSuggestion();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v7 = sub_1A52469C4();
  v3[23] = v7;
  v3[24] = *(v7 - 8);
  v3[25] = swift_task_alloc();
  sub_1A4000974();
  v3[26] = v8;
  v3[27] = *(v8 - 8);
  v3[28] = swift_task_alloc();
  v9 = sub_1A5244794();
  v3[29] = v9;
  v3[30] = *(v9 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  sub_1A3C563A4(0, &qword_1EB12EE20, MEMORY[0x1E69C14E0], v5);
  v3[33] = swift_task_alloc();
  v3[34] = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  v3[35] = swift_task_alloc();
  v10 = sub_1A52444C4();
  v3[36] = v10;
  v3[37] = *(v10 - 8);
  v3[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A3FFB96C, 0, 0);
}

uint64_t sub_1A3FFB96C()
{
  v148 = v0;
  v1 = v0;
  sub_1A4000C68(v0[9], v0[35], type metadata accessor for GenerativeStoryAmbiguityData.Payload);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A40009DC(v0[35], type metadata accessor for GenerativeStoryAmbiguityData.Payload);
LABEL_16:
    sub_1A4000C68(v1[9], v1[14], type metadata accessor for GenerativeStoryAmbiguityData);
    v32 = sub_1A5246F04();
    v33 = sub_1A524D264();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v1[14];
    if (v34)
    {
      v36 = v1[13];
      v37 = swift_slowAlloc();
      v147[0] = swift_slowAlloc();
      *v37 = 136642819;
      sub_1A4000C68(v35, v36, type metadata accessor for GenerativeStoryAmbiguityData);
      sub_1A524C714();
      sub_1A40009DC(v35, type metadata accessor for GenerativeStoryAmbiguityData);
      sub_1A3C2EF94();
    }

    sub_1A40009DC(v35, type metadata accessor for GenerativeStoryAmbiguityData);
LABEL_19:

    v38 = v1[1];

    return v38();
  }

  v2 = v0[33];
  (*(v0[37] + 32))(v0[38], v0[35], v0[36]);
  sub_1A52444A4();
  v3 = sub_1A5245604();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = v1[33];
    (*(v1[37] + 8))(v1[38], v1[36]);
    sub_1A4000A3C(v5, &qword_1EB12EE20, MEMORY[0x1E69C14E0]);
    goto LABEL_16;
  }

  v6 = v1[33];
  v7 = sub_1A52455F4();
  (*(v4 + 8))(v6, v3);
  v8 = *(v7 + 16);
  if (!v8)
  {
    (*(v1[37] + 8))(v1[38], v1[36]);

    goto LABEL_16;
  }

  v9 = v1[30];
  v147[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C57108(0, v8, 0);
  v10 = v147[0];
  v11 = *(v9 + 16);
  v9 += 16;
  v146 = v11;
  v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
  v144 = v1;
  v145 = *(v9 + 56);
  v143 = (v9 - 8);
  v13 = v12;
  v14 = v8;
  do
  {
    v15 = v1[32];
    v16 = v1[29];
    v146(v15, v13, v16);
    v17 = sub_1A5244754();
    v19 = v18;
    v140 = *v143;
    (*v143)(v15, v16);
    v147[0] = v10;
    v21 = *(v10 + 16);
    v20 = *(v10 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_1A3C57108((v20 > 1), v21 + 1, 1);
      v10 = v147[0];
    }

    *(v10 + 16) = v21 + 1;
    v22 = v10 + 16 * v21;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
    v1 = v144;
    v13 += v145;
    --v14;
  }

  while (v14);
  v23 = v144[27];
  v141 = v144[28];
  v24 = v144[26];
  v147[0] = MEMORY[0x1E69E7CC0];
  sub_1A3FFF7F4(0, v8, 0);
  v25 = v147[0];
  do
  {
    v26 = v144[28];
    v146(v26 + *(v24 + 48), v12, v144[29]);
    *v26 = sub_1A5244754();
    *(v141 + 8) = v27;
    v147[0] = v25;
    v29 = *(v25 + 16);
    v28 = *(v25 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_1A3FFF7F4(v28 > 1, v29 + 1, 1);
      v25 = v147[0];
    }

    v30 = v144[28];
    *(v25 + 16) = v29 + 1;
    sub_1A4000AAC(v30, v25 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v29, sub_1A4000974);
    v12 += v145;
    --v8;
  }

  while (v8);
  sub_1A4000CD0(0, &qword_1EB130348, MEMORY[0x1E69C0FC8]);
  v147[0] = sub_1A524E794();

  sub_1A3FFF284(v31, 1, v147);
  v1 = v144;
  v40 = v144[10];

  v41 = v147[0];
  v42 = objc_opt_self();
  v43 = sub_1A524CA14();
  v44 = [v40 librarySpecificFetchOptions];
  v45 = [v42 fetchAssetsWithUUIDs:v43 options:v44];
  v144[39] = v45;

  if (!v45)
  {

    v55 = sub_1A5246F04();
    v56 = sub_1A524D264();

    v57 = os_log_type_enabled(v55, v56);
    v59 = v144[37];
    v58 = v144[38];
    v60 = v144[36];
    if (v57)
    {
      v61 = swift_slowAlloc();
      v147[0] = swift_slowAlloc();
      *v61 = 136315138;
      MEMORY[0x1A5907DB0](v10, MEMORY[0x1E69E6158]);

      sub_1A3C2EF94();
    }

    (*(v59 + 8))(v58, v60);
    goto LABEL_19;
  }

  sub_1A3D3B558(v10);

  v46 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v47 = sub_1A524CA14();

  v48 = [v46 initWithArray_];

  v49 = [v45 px:v48 fetchedObjectIDsSortedByUUIDs:?];
  sub_1A4000B14();
  v50 = sub_1A524CA34();

  sub_1A3F6BAA8(v50);

  v51 = [v45 fetchType];
  if (v51)
  {
    v52 = v51;
    sub_1A524C674();
    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  v62 = [v45 fetchPropertySets];
  if (v62)
  {
    v63 = v62;
    v64 = sub_1A524CF44();
  }

  else
  {
    v64 = 0;
  }

  v65 = sub_1A524CA14();

  if (v54)
  {
    v66 = sub_1A524C634();
  }

  else
  {
    v66 = 0;
  }

  v1 = v144;
  if (v64)
  {
    v67 = sub_1A524CF34();
  }

  else
  {
    v67 = 0;
  }

  v68 = [objc_allocWithZone(MEMORY[0x1E69788E0]) initWithOids:v65 photoLibrary:v144[10] fetchType:v66 fetchPropertySets:v67 identifier:0 registerIfNeeded:0];
  v144[40] = v68;

  v69 = [v68 fetchedObjects];
  if (!v69 || (v70 = v69, v71 = sub_1A524CA34(), v70, v72 = sub_1A3FFCF14(v71), , !v72))
  {

    v118 = v68;
    v119 = sub_1A5246F04();
    v120 = sub_1A524D264();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v147[0] = swift_slowAlloc();
      *v121 = 136315138;
      v122 = [v118 fetchedObjects];
      if (v122)
      {
        v123 = v122;
        v124 = sub_1A524CA34();
      }

      else
      {
        v124 = 0;
      }

      v144[7] = v124;
      sub_1A4000B60();
      sub_1A524C714();
      sub_1A3C2EF94();
    }

    v126 = v144[37];
    v125 = v144[38];
    v127 = v144[36];

    (*(v126 + 8))(v125, v127);
    goto LABEL_19;
  }

  v138 = v41;
  v73 = MEMORY[0x1E69C1878];
  sub_1A3C563A4(0, &qword_1EB1202E0, MEMORY[0x1E69C1878], MEMORY[0x1E69E6F90]);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1A52FC9F0;
  sub_1A52469B4();
  sub_1A52469A4();
  v144[8] = v74;
  sub_1A3FFF23C(&qword_1EB124A50, MEMORY[0x1E69C1878]);
  sub_1A3C563A4(0, &qword_1EB120C98, v73, MEMORY[0x1E69E62F8]);
  sub_1A4000BE0();
  sub_1A524E224();
  sub_1A5245214();
  swift_allocObject();
  v144[41] = sub_1A52451F4();
  v75 = v72 & 0xFFFFFFFFFFFFFF8;
  if (v72 >> 62)
  {
LABEL_77:
    v76 = sub_1A524E2B4();
    v41 = v138;
    if (v76)
    {
      goto LABEL_41;
    }

LABEL_78:
    v139 = MEMORY[0x1E69E7CC0];
LABEL_79:
    v144[42] = v139;

    sub_1A524CC54();
    v144[43] = sub_1A524CC44();
    v128 = sub_1A524CBC4();
    v130 = v129;
    v81 = sub_1A3FFCD68;
    v82 = v128;
    v83 = v130;

    return MEMORY[0x1EEE6DFA0](v81, v82, v83);
  }

  v76 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v76)
  {
    goto LABEL_78;
  }

LABEL_41:
  v77 = 0;
  v78 = v144[20];
  v131 = (v144[16] + 8);
  v133 = v78;
  v135 = (v78 + 48);
  v136 = (v78 + 56);
  v139 = MEMORY[0x1E69E7CC0];
  v134 = v75;
  v137 = v76;
  while (1)
  {
    if ((v72 & 0xC000000000000001) != 0)
    {
      v79 = MEMORY[0x1A59097F0](v77, v72);
    }

    else
    {
      if (v77 >= *(v75 + 16))
      {
        goto LABEL_76;
      }

      v79 = *(v72 + 8 * v77 + 32);
    }

    v80 = v79;
    if (__OFADD__(v77, 1))
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v81 = [v79 uuid];
    if (!v81)
    {
      __break(1u);
      goto LABEL_83;
    }

    v84 = v81;
    v85 = sub_1A524C674();
    v87 = v86;

    v142 = v77 + 1;
    if (*(v41 + 16))
    {
      v88 = sub_1A3C5DCA4(v85, v87);
      v90 = v89;

      if (v90)
      {
        v91 = v144[10];
        v146(v144[31], *(v41 + 56) + v88 * v145, v144[29]);
        sub_1A5244744();
        PXSharingFilterFromPhotoLibrary(v91);
        sub_1A5244CE4();
        swift_allocObject();
        v92 = v91;
        sub_1A5244CD4();
        sub_1A5244FC4();
        v93 = sub_1A52451B4();
        v144[5] = sub_1A52469D4();
        v144[6] = MEMORY[0x1E69C1888];
        v144[2] = v93;
        v94 = sub_1A5245404();
        __swift_destroy_boxed_opaque_existential_0((v144 + 2));
        if (*(v94 + 16))
        {
          v132 = v144[18];
          v95 = sub_1A5244764();
          v97 = v96;
          v98 = v80;
          sub_1A5244774();
          sub_1A5244784();
          sub_1A48925AC(v95, v97, v132);
        }

        v104 = sub_1A5246F04();
        v105 = sub_1A524D264();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = 0;
          _os_log_impl(&dword_1A3C1C000, v104, v105, "Could not construct GenerativeStoryEventSuggestion object because there are no assets to show", v106, 2u);
          MEMORY[0x1A590EEC0](v106, -1, -1);
        }

        v107 = v144[31];
        v108 = v144[29];
        v109 = v144[17];
        v110 = v144[15];

        (*v131)(v109, v110);
        v140(v107, v108);
        v75 = v134;
        goto LABEL_61;
      }
    }

    else
    {
    }

    v99 = v80;
    v100 = sub_1A5246F04();
    v101 = sub_1A524D264();
    if (os_log_type_enabled(v100, v101))
    {
      break;
    }

LABEL_61:
    v111 = v144[18];
    v112 = v144[19];
    (*v136)(v111, 1, 1, v112);

    if ((*v135)(v111, 1, v112) == 1)
    {
      sub_1A4000A3C(v144[18], &qword_1EB12D668, type metadata accessor for GenerativeStoryEventSuggestion);
    }

    else
    {
      v113 = v144[21];
      v114 = v144[22];
      sub_1A4000AAC(v144[18], v114, type metadata accessor for GenerativeStoryEventSuggestion);
      sub_1A4000AAC(v114, v113, type metadata accessor for GenerativeStoryEventSuggestion);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v139 = sub_1A3E870AC(0, v139[2] + 1, 1, v139);
      }

      v116 = v139[2];
      v115 = v139[3];
      if (v116 >= v115 >> 1)
      {
        v139 = sub_1A3E870AC(v115 > 1, v116 + 1, 1, v139);
      }

      v117 = v144[21];
      v139[2] = v116 + 1;
      sub_1A4000AAC(v117, v139 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v116, type metadata accessor for GenerativeStoryEventSuggestion);
    }

    v41 = v138;
    ++v77;
    if (v142 == v137)
    {
      goto LABEL_79;
    }
  }

  v102 = swift_slowAlloc();
  v147[0] = swift_slowAlloc();
  *v102 = 136315138;
  v103 = [v99 uuid];

  if (v103)
  {
    sub_1A524C674();

    sub_1A3C2EF94();
  }

LABEL_83:
  __break(1u);
  return MEMORY[0x1EEE6DFA0](v81, v82, v83);
}

uint64_t sub_1A3FFCDDC()
{
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[36];
  v5 = v0[37];

  (*(v5 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}