id sub_100001DC0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001332C();
  __chkstk_darwin(v4 - 8);
  v5 = OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController_contentUnavailableView;
  v6 = sub_100004548(0, &qword_100021CC0);
  sub_10001331C();
  *&v1[v5] = sub_10001374C();
  *&v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController_cancellables] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController____lazy_storage___galleryWidthConstraint] = 0;
  *&v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController____lazy_storage___sidebarWidthConstraint] = 0;
  *&v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController____lazy_storage___searchBarHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController_viewModel] = a1;
  objc_opt_self();
  sub_100004838();

  v7 = [v6 effectWithStyle:9];
  v8 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v7];

  *&v2[OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController_backgroundMaterialView] = v8;
  v9 = objc_allocWithZone(type metadata accessor for PencilActionConfigurationSearchViewController());
  sub_100004838();

  *&v2[OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController_searchViewController] = sub_10000C074(v10);
  v11 = objc_allocWithZone(type metadata accessor for PencilActionConfigurationSidebarViewController());
  sub_100004838();

  *&v2[OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController_sidebarViewController] = sub_10000D0FC(v12);
  v13 = objc_allocWithZone(type metadata accessor for PencilActionConfigurationGalleryViewController());
  sub_100004838();

  *&v2[OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController_galleryViewController] = sub_100005B88(v14);
  v16.receiver = v2;
  v16.super_class = type metadata accessor for PencilActionConfigurationViewController();
  objc_msgSendSuper2(&v16, "initWithNibName:bundle:", 0, 0);
  sub_100004838();

  return v7;
}

void sub_100001FBC()
{
  sub_10001332C();
  __chkstk_darwin();
  v1 = OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController_contentUnavailableView;
  sub_100004548(0, &qword_100021CC0);
  sub_10001331C();
  *(v0 + v1) = sub_10001374C();
  *(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController_cancellables) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController____lazy_storage___galleryWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController____lazy_storage___sidebarWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController____lazy_storage___searchBarHeightConstraint) = 0;
  sub_10001381C();
  __break(1u);
}

void sub_1000020FC()
{
  v2 = v0;
  v192.receiver = v0;
  v192.super_class = type metadata accessor for PencilActionConfigurationViewController();
  objc_msgSendSuper2(&v192, "loadView");
  sub_100004294(&unk_100022410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000145A0;
  v4 = *&v2[OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController_backgroundMaterialView];
  *(inited + 32) = v4;
  v5 = *&v2[OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController_contentUnavailableView];
  *(inited + 40) = v5;
  i = inited & 0xC000000000000001;
  v7 = v4;
  v162 = v5;
  v8 = 0;
  v9 = &PencilActionConfigurationViewController;
  while (v8 != 2)
  {
    if (i)
    {
      v10 = sub_1000137FC();
    }

    else
    {
      if (v8 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        sub_10001368C();
LABEL_22:
        sub_10001369C();
        isa = sub_10001366C().super.isa;

        [i setInteractions:isa];

        goto LABEL_23;
      }

      v10 = *(inited + 8 * v8 + 32);
    }

    v1 = v10;
    v11 = [v2 view];
    if (!v11)
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v12 = v11;
    ++v8;
    [v11 addSubview:v1];

    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  swift_setDeallocating();
  sub_100004500();
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1000145B0;
  v14 = *&v2[OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController_galleryViewController];
  *(v13 + 32) = v14;
  v15 = *&v2[OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController_sidebarViewController];
  *(v13 + 40) = v15;
  v16 = v2;
  v17 = *&v2[OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController_searchViewController];
  *(v13 + 48) = v17;
  v8 = v13 & 0xC000000000000001;
  v1 = (v13 & 0xFFFFFFFFFFFFFF8);
  v182 = v14;
  v187 = v15;
  v167 = v17;
  for (i = 0; i != 3; ++i)
  {
    if (v8)
    {
      v18 = sub_1000137FC();
    }

    else
    {
      if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v18 = *(v13 + 8 * i + 32);
    }

    v19 = v18;
    v20 = [v18 v9[47].base_props];
    if (!v20)
    {
      goto LABEL_51;
    }

    v21 = v9;
    v22 = v20;
    v23 = [objc_opt_self() clearColor];
    [v22 setBackgroundColor:v23];

    v24 = [v19 v21[47].base_props];
    if (!v24)
    {
      goto LABEL_52;
    }

    v25 = v24;
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

    [v16 addChildViewController:v19];
    v26 = [v16 v21[47].base_props];
    if (!v26)
    {
      goto LABEL_53;
    }

    v27 = v26;
    v28 = [v19 v21[47].base_props];
    if (!v28)
    {
      goto LABEL_50;
    }

    v29 = v28;
    [v27 addSubview:v28];

    [v19 didMoveToParentViewController:v16];
    v9 = v21;
  }

  v8 = v9;
  swift_setDeallocating();
  sub_100004500();
  v1 = v167;
  v30 = [*&v167[OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController_searchView] searchTextField];
  i = [v30 backgroundView];

  if (i)
  {
    v31 = sub_1000130CC();
    [objc_allocWithZone(_UIScrollPocketInteraction) initWithScrollView:v31 edge:1 style:1];

    v32 = [i interactions];
    sub_100004294(&qword_100021DC8);
    v33 = sub_10001367C();

    sub_10001365C();
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_48;
    }

    goto LABEL_22;
  }

LABEL_23:
  *&v187[OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_delegate + 8] = &off_10001D160;
  swift_unknownObjectWeakAssign();
  *&v182[qword_1000220F8 + 8] = &off_10001D148;
  swift_unknownObjectWeakAssign();
  v35 = sub_100004800();
  *(v35 + 16) = xmmword_1000145C0;
  *(v35 + 32) = sub_1000034C4();
  v36 = v8;
  v37 = [v1 *(v8 + 3448)];
  if (!v37)
  {
    goto LABEL_54;
  }

  v38 = v37;
  v39 = [v37 topAnchor];

  v40 = sub_100004844();
  if (!v40)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v41 = v40;
  v42 = [v40 topAnchor];

  v43 = [v39 constraintEqualToAnchor:v42];
  *(v35 + 40) = v43;
  v44 = [v1 *(v8 + 3448)];
  if (!v44)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v45 = v44;
  v46 = [v44 leadingAnchor];

  v55 = sub_100004874(v47, v48, v49, v50, v51, v52, v53, v54, v158, v162, v167, v172, 4, 9, v182, v187);
  if (!v55)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v56 = v55;
  v57 = [v55 trailingAnchor];

  v58 = [v46 constraintEqualToAnchor:v57];
  *(v35 + 48) = v58;
  v59 = [v1 *(v8 + 3448)];
  if (!v59)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v60 = v59;
  v61 = [v59 trailingAnchor];

  v62 = sub_100004844();
  if (!v62)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v63 = v62;
  v64 = objc_opt_self();
  v65 = [v63 trailingAnchor];

  v66 = sub_10000481C();
  *(v35 + 56) = v66;
  v173 = sub_100004548(0, &qword_100021D60);
  v67 = sub_10001366C().super.isa;

  [v64 activateConstraints:v67];

  v68 = sub_100004800();
  *(v68 + 16) = *v176;
  v69 = sub_1000034A8();
  *(v68 + 32) = v69;
  v77 = sub_100004874(v69, v70, v71, v72, v73, v74, v75, v76, v159, v163, v168, v173, v176[0], v176[1], v183, v188);
  if (!v77)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v78 = v77;
  v79 = [v77 topAnchor];

  v80 = sub_100004844();
  if (!v80)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v81 = v80;
  v82 = [v80 topAnchor];

  v83 = sub_10000481C();
  *(v68 + 40) = v83;
  v92 = sub_100004874(v84, v85, v86, v87, v88, v89, v90, v91, v160, v164, v169, v174, v177, v180, v184, v189);
  if (!v92)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v93 = v92;
  v94 = [v92 bottomAnchor];

  v95 = sub_100004844();
  if (!v95)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v96 = sub_10000488C(v95);

  v97 = sub_10000481C();
  *(v68 + 48) = v97;
  v106 = sub_100004874(v98, v99, v100, v101, v102, v103, v104, v105, v161, v165, v170, v175, v178, v181, v185, v190);
  if (!v106)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v107 = v106;
  v108 = [v106 leadingAnchor];

  v109 = sub_100004844();
  if (!v109)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v110 = v109;
  v111 = [v109 leadingAnchor];

  v112 = sub_10000481C();
  *(v68 + 56) = v112;
  v113 = sub_10001366C().super.isa;

  v191 = v64;
  [v64 activateConstraints:v113];

  v114 = sub_100004800();
  *(v114 + 16) = *v179;
  *(v114 + 32) = sub_10000348C();
  v115 = [v186 *(v36 + 3448)];
  if (!v115)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v116 = v115;
  v117 = v36;
  v118 = [v115 topAnchor];

  v119 = sub_100004844();
  if (!v119)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v120 = v119;
  v121 = [v119 topAnchor];

  v122 = [v118 constraintEqualToAnchor:v121];
  *(v114 + 40) = v122;
  v123 = [v186 *(v36 + 3448)];
  if (!v123)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v124 = sub_10000488C(v123);

  v125 = sub_10000485C();
  if (!v125)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v126 = sub_10000488C(v125);

  v127 = [v124 constraintEqualToAnchor:v126];
  *(v114 + 48) = v127;
  v128 = [v186 *(v36 + 3448)];
  if (!v128)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v129 = v128;
  v130 = [v128 leadingAnchor];

  v131 = sub_10000485C();
  if (!v131)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v132 = v131;
  v133 = [v131 leadingAnchor];

  v134 = [v130 constraintEqualToAnchor:v133];
  *(v114 + 56) = v134;
  v135 = sub_10001366C().super.isa;

  [v191 activateConstraints:v135];

  v136 = sub_100004800();
  *(v136 + 16) = *v179;
  v137 = [v166 topAnchor];
  v138 = [v171 *(v117 + 3448)];
  if (!v138)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v139 = sub_10000488C(v138);

  v140 = [v137 constraintEqualToAnchor:v139];
  *(v136 + 32) = v140;
  v141 = [v166 bottomAnchor];
  v142 = sub_10000485C();
  if (!v142)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v143 = v142;
  v144 = [v142 keyboardLayoutGuide];

  v145 = [v144 topAnchor];
  v146 = [v141 constraintEqualToAnchor:v145];

  *(v136 + 40) = v146;
  v147 = [v166 leadingAnchor];
  v148 = sub_10000485C();
  if (!v148)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v149 = v148;
  v150 = [v148 leadingAnchor];

  v151 = [v147 constraintEqualToAnchor:v150];
  *(v136 + 48) = v151;
  v152 = [v166 trailingAnchor];
  v153 = sub_10000485C();
  if (v153)
  {
    v154 = v153;
    v155 = [v153 trailingAnchor];

    v156 = [v152 constraintEqualToAnchor:v155];
    *(v136 + 56) = v156;
    v157 = sub_10001366C().super.isa;

    [v191 activateConstraints:v157];

    return;
  }

LABEL_75:
  __break(1u);
}

uint64_t sub_100002E74()
{
  sub_100004294(&qword_100021D28);
  __chkstk_darwin();
  v2 = v14 - v1;
  v3 = sub_100004294(&unk_100021D30);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v14 - v5;
  v7 = type metadata accessor for PencilActionConfigurationViewController();
  v15.receiver = v0;
  v15.super_class = v7;
  objc_msgSendSuper2(&v15, "viewDidLoad");
  sub_10001302C();
  sub_1000040D0(&unk_100022550, &type metadata accessor for SmartShortcutPickerDataSource);

  v8 = sub_1000133FC();

  v14[0] = v8;
  v9 = [objc_opt_self() mainRunLoop];
  v14[3] = v9;
  v10 = sub_10001377C();
  sub_1000042DC(v2, 1, 1, v10);
  sub_10001340C();
  sub_100004548(0, &unk_100021D40);
  sub_100004304();
  sub_10001341C();
  sub_10000436C(v2);

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10000440C;
  *(v12 + 24) = v11;
  sub_100004454();
  sub_10001342C();

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  sub_1000133EC();
  swift_endAccess();
}

void sub_100003198()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController_contentUnavailableView);

    v3 = sub_10001300C();

    v4 = *(v3 + 16);

    [v2 setHidden:v4 != 0];
  }
}

id sub_10000329C()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for PencilActionConfigurationViewController();
  objc_msgSendSuper2(&v12, "viewDidLayoutSubviews");
  sub_1000035A8();
  v1 = *&v0[OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController_backgroundMaterialView];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    return [v1 setFrame:{v5, v7, v9, v11}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1000033E8()
{
  v1 = [objc_opt_self() sharedProvider];
  [v1 metricsWithInterfaceOrientation:{objc_msgSend(v0, "interfaceOrientation")}];
  [v1 sheetPreferredContentSizeWithMetrics:&v5];
  v3 = v2;

  return v3;
}

id sub_1000034E0(uint64_t *a1, void *a2, SEL *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
LABEL_5:
    v13 = v5;
    return v6;
  }

  result = [*(v3 + *a2) view];
  if (result)
  {
    v9 = result;
    v10 = [result *a3];

    v11 = [v10 constraintEqualToConstant:0.0];
    v12 = *(v3 + v4);
    *(v3 + v4) = v11;
    v6 = v11;

    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1000035A8()
{
  v1 = [objc_opt_self() sharedProvider];
  [v1 metricsWithInterfaceOrientation:{objc_msgSend(v0, "interfaceOrientation")}];

  v2 = sub_1000034C4();
  [v2 setConstant:v11];

  v3 = sub_1000034A8();
  [v3 setConstant:v5];

  v4 = sub_10000348C();
  [v4 setConstant:v5 + v7 * v6 + v8 * (v6 + -1.0) + v9 + v10];
}

id sub_1000036D8()
{
  v1 = sub_100006314();
  sub_100003760(v1, v2, 20.0);
  v4 = v3;
  v5 = sub_10000FEB4();
  sub_100003760(v5, v6, 20.0);
  v8 = *(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension39PencilActionConfigurationViewController_searchViewController);
  if (v4 <= v7)
  {
    v4 = v7;
  }

  result = sub_10000C014();
  *(v8 + OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController_backgroundVisibility) = v4;
  return result;
}

uint64_t sub_100003760(double a1, double a2, double a3)
{
  if (a3 >= 0.0)
  {
    return sub_1000131CC();
  }

  __break(1u);
  return result;
}

id sub_10000387C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PencilActionConfigurationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000039B8()
{
  v0 = sub_1000135EC();
  v2 = v1;
  if (v0 == sub_1000135EC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_10001384C();
  }

  return v5 & 1;
}

uint64_t sub_100003A50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100003AB4(uint64_t a1, id *a2)
{
  result = sub_1000135CC();
  *a2 = 0;
  return result;
}

uint64_t sub_100003B30(uint64_t a1, id *a2)
{
  v3 = sub_1000135DC();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_100003BB0@<X0>(void *a1@<X8>)
{
  result = sub_100003BD8();
  *a1 = result;
  return result;
}

NSString sub_100003BD8()
{
  sub_1000135EC();
  v0 = sub_1000135BC();

  return v0;
}

uint64_t sub_100003C1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001106C();
  *a1 = result;
  return result;
}

uint64_t sub_100003C44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100003C74(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100003C7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100003CAC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100003CB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100003CE4(*a1, *v2);
  *a2 = result;
  return result;
}

BOOL sub_100003CF4(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_100003D20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100003D54(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100003D54(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_100003D78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100003DAC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100003DAC(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_100003E0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100003E3C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100003ED0@<X0>(void *a1@<X8>)
{
  v2 = sub_1000135BC();

  *a1 = v2;
  return result;
}

uint64_t sub_100003F18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000039B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100003F50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100003A50(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100003F84(uint64_t a1)
{
  v2 = sub_1000040D0(&qword_100021CB0, type metadata accessor for WFSystemActionConfigurationContext);
  v3 = sub_1000040D0(&qword_100021CB8, type metadata accessor for WFSystemActionConfigurationContext);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000040D0(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100004160@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100004184()
{
  sub_1000135EC();
  v0 = sub_10001364C();

  return v0;
}

uint64_t sub_1000041C4()
{
  sub_1000135EC();
  sub_10001362C();
}

Swift::Int sub_100004220()
{
  sub_1000135EC();
  sub_10001389C();
  sub_10001362C();
  v0 = sub_1000138BC();

  return v0;
}

uint64_t sub_100004294(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004304()
{
  result = qword_100022560;
  if (!qword_100022560)
  {
    sub_100004548(255, &unk_100021D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100022560);
  }

  return result;
}

uint64_t sub_10000436C(uint64_t a1)
{
  v2 = sub_100004294(&qword_100021D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000043D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004414()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100004454()
{
  result = qword_100021D50;
  if (!qword_100021D50)
  {
    sub_1000044B8(&unk_100021D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021D50);
  }

  return result;
}

uint64_t sub_1000044B8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004500()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100004548(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 sub_1000045A0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000045AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000045CC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_10000472C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100004738(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100004758(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void sub_1000047A8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100004800()
{

  return swift_allocObject();
}

id sub_10000481C()
{
  v4 = *(v2 + 3616);

  return [v0 v4];
}

id sub_100004844()
{
  v3 = *(v1 + 3448);

  return [v0 v3];
}

id sub_10000485C()
{
  v3 = *(v1 + 3448);

  return [v0 v3];
}

id sub_100004874(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16)
{
  v18 = *(v16 + 3448);

  return [a16 v18];
}

id sub_10000488C(void *a1)
{
  v3 = *(v1 + 3648);

  return [a1 v3];
}

uint64_t sub_1000048A4(void *a1)
{
  v2 = sub_100004294(&qword_1000220C8);
  v3 = sub_100005AB4(v2);
  __chkstk_darwin(v3);
  v37 = &v36 - v4;
  v5 = sub_10001317C();
  v6 = sub_100005AB4(v5);
  __chkstk_darwin(v6);
  sub_100005A40();
  v7 = sub_10001315C();
  v8 = sub_100005AB4(v7);
  __chkstk_darwin(v8);
  sub_100005A40();
  v9 = sub_100012EFC();
  v10 = sub_100005AB4(v9);
  __chkstk_darwin(v10);
  sub_100005A40();
  v11 = sub_100012FCC();
  sub_100005AC0();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100005A40();
  v17 = (v16 - v15);
  sub_100004294(&qword_1000220D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100014A80;
  v19 = objc_opt_self();
  v20 = a1;
  v21 = [v19 defaultDatabase];
  sub_10001313C();
  sub_100005A9C();
  v22 = sub_10001312C();
  v23 = sub_1000059F4(&qword_1000220D8, &type metadata accessor for SmartShortcutPickerUserLibraryDataSource);
  *(v18 + 32) = v22;
  *(v18 + 40) = v23;
  sub_10001319C();
  sub_100005A9C();
  v24 = sub_10001318C();
  v25 = sub_1000059F4(&qword_1000220E0, &type metadata accessor for SmartShortcutPickerPromotedActionsDataSource);
  *(v18 + 48) = v24;
  *(v18 + 56) = v25;
  *v17 = v20;
  (*(v13 + 104))(v17, enum case for SmartShortcutPickerViewStyle.actionButton(_:), v11);
  sub_1000131BC();
  sub_100005A9C();
  v26 = v20;
  v27 = sub_1000131AC();
  v28 = sub_1000059F4(&qword_1000220E8, &type metadata accessor for SmartShortcutPickerStaccatoSuggestionsDataSource);
  *(v18 + 64) = v27;
  *(v18 + 72) = v28;
  [objc_allocWithZone(LNAutoShortcutsProvider) init];
  sub_100012EEC();
  sub_100012F1C();
  sub_100005A9C();
  v29 = sub_100012F0C();
  v30 = sub_1000059F4(&qword_1000220F0, &type metadata accessor for SmartShortcutPickerAppShortcutDataSource);
  *(v18 + 80) = v29;
  *(v18 + 88) = v30;
  v31 = v26;
  sub_10001314C();
  v32 = v31;
  sub_10001316C();
  v33 = sub_100012F2C();
  sub_1000042DC(v37, 1, 1, v33);
  sub_10001302C();
  sub_100005A9C();
  v34 = sub_100012FFC();

  return v34;
}

void sub_100004CC8(void *a1)
{
  sub_10001243C(a1);
  v2 = [objc_allocWithZone(WFActionButtonConfigurationEvent) init];
  v6 = v2;
  if (a1)
  {
    v3 = [a1 associatedBundleIdentifier];
    if (!v3)
    {
      sub_1000135EC();
      v3 = sub_1000135BC();
    }

    [v6 setBundleIdentifier:v3];

    v4 = [a1 identifier];
    if (!v4)
    {
      sub_1000135EC();
      v4 = sub_1000135BC();
    }
  }

  else
  {
    [v2 setBundleIdentifier:0];
    v4 = 0;
  }

  [v6 setIntentIdentifier:v4];

  if (a1)
  {
    v5 = [a1 sectionIdentifier];
  }

  else
  {
    v5 = 0;
  }

  [v6 setSectionIdentifier:v5];

  [v6 setSuccess:a1 != 0];
  [v6 track];
}

id sub_100004E78()
{
  v1 = sub_100012FCC();
  sub_100005AC0();
  v3 = v2;
  v5 = __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v21 - v9;
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = *(v0 + 48);

  v14 = v13;
  sub_100012FBC();
  v15 = *(v3 + 16);
  v15(v10, v12, v1);
  v15(v7, v12, v1);
  type metadata accessor for SystemActionConfigurationSelectionCoordinator();
  sub_100005A9C();

  sub_1000098F0(v7);
  v16 = objc_allocWithZone(sub_1000130AC());
  v17 = sub_10001309C();
  v18 = objc_allocWithZone(type metadata accessor for ActionButtonConfigurationViewController());
  v19 = sub_100005098(v17);
  (*(v3 + 8))(v12, v1);
  return v19;
}

uint64_t sub_100005044()
{
  v0 = sub_1000124AC();

  return _swift_deallocClassInstance(v0, 56, 7);
}

id sub_100005098(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34SystemActionConfigurationExtension39ActionButtonConfigurationViewController_materialView;
  v4 = [objc_opt_self() effectWithStyle:17];
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v4];

  *&v1[v3] = v5;
  *&v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension39ActionButtonConfigurationViewController_embeddedViewController] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ActionButtonConfigurationViewController();
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

void sub_100005154()
{
  v1 = OBJC_IVAR____TtC34SystemActionConfigurationExtension39ActionButtonConfigurationViewController_materialView;
  v2 = [objc_opt_self() effectWithStyle:17];
  v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v2];

  *(v0 + v1) = v3;
  sub_10001381C();
  __break(1u);
}

void sub_10000522C()
{
  v62.receiver = v0;
  v62.super_class = type metadata accessor for ActionButtonConfigurationViewController();
  objc_msgSendSuper2(&v62, "viewDidLoad");
  v1 = sub_100005A68();
  if (!v1)
  {
    __break(1u);
    goto LABEL_19;
  }

  v2 = v1;
  [v1 addSubview:*&v0[OBJC_IVAR____TtC34SystemActionConfigurationExtension39ActionButtonConfigurationViewController_materialView]];

  v3 = sub_100005A68();
  if (!v3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = v3;
  v5 = objc_opt_self();
  v6 = [v5 blackColor];
  v7 = [v6 colorWithAlphaComponent:0.2];

  [v4 setBackgroundColor:v7];
  v8 = *&v0[OBJC_IVAR____TtC34SystemActionConfigurationExtension39ActionButtonConfigurationViewController_embeddedViewController];
  v9 = sub_100005A50();
  if (!v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = v9;
  v11 = sub_100005A68();
  if (!v11)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v12 = v11;
  [v11 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v10 setFrame:{v14, v16, v18, v20}];
  v21 = sub_100005A50();
  if (!v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = v21;
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = sub_100005A50();
  if (!v23)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v24 = v23;
  v25 = [v5 blackColor];
  v26 = [v25 colorWithAlphaComponent:0.2];

  [v24 setBackgroundColor:v26];
  [v0 addChildViewController:v8];
  v27 = sub_100005A68();
  if (!v27)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = v27;
  v29 = sub_100005A50();
  if (!v29)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v30 = v29;
  [v28 addSubview:v29];

  [v8 didMoveToParentViewController:v0];
  sub_100004294(&unk_100022410);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1000145C0;
  v32 = sub_100005A50();
  if (!v32)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v33 = v32;
  v34 = [v32 topAnchor];

  v35 = sub_100005A68();
  if (!v35)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v36 = v35;
  v37 = [v35 topAnchor];

  v38 = sub_100005A80();
  *(v31 + 32) = v38;
  v39 = sub_100005A50();
  if (!v39)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v40 = v39;
  v41 = [v39 bottomAnchor];

  v42 = sub_100005A68();
  if (!v42)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v43 = v42;
  v44 = [v42 bottomAnchor];

  v45 = sub_100005A80();
  *(v31 + 40) = v45;
  v46 = sub_100005A50();
  if (!v46)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v47 = v46;
  v48 = [v46 leadingAnchor];

  v49 = sub_100005A68();
  if (!v49)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v50 = v49;
  v51 = [v49 leadingAnchor];

  v52 = sub_100005A80();
  *(v31 + 48) = v52;
  v53 = sub_100005A50();
  if (!v53)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v54 = v53;
  v55 = [v53 trailingAnchor];

  v56 = sub_100005A68();
  if (v56)
  {
    v57 = v56;
    v58 = objc_opt_self();
    v59 = [v57 trailingAnchor];

    v60 = [v55 constraintEqualToAnchor:v59];
    *(v31 + 56) = v60;
    sub_1000059B0();
    isa = sub_10001366C().super.isa;

    [v58 activateConstraints:isa];

    return;
  }

LABEL_33:
  __break(1u);
}

id sub_1000057B0()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for ActionButtonConfigurationViewController();
  objc_msgSendSuper2(&v12, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC34SystemActionConfigurationExtension39ActionButtonConfigurationViewController_materialView];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    return [v1 setFrame:{v5, v7, v9, v11}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10000590C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionButtonConfigurationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000059B0()
{
  result = qword_100021D60;
  if (!qword_100021D60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100021D60);
  }

  return result;
}

uint64_t sub_1000059F4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100005A50()
{
  v3 = *(v1 + 3448);

  return [v0 v3];
}

id sub_100005A68()
{
  v3 = *(v1 + 3448);

  return [v0 v3];
}

id sub_100005A80()
{
  v4 = *(v2 + 3616);

  return [v0 v4];
}

uint64_t sub_100005A9C()
{

  return swift_allocObject();
}

uint64_t type metadata accessor for PencilActionConfigurationGalleryViewController()
{
  result = qword_100022110;
  if (!qword_100022110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005B88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100012FCC();
  sub_100005AC0();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  *(v2 + qword_1000220F8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + qword_100022108) = &_swiftEmptySetSingleton;
  *(v2 + qword_100022100) = a1;
  v13 = enum case for SmartShortcutPickerViewStyle.pencilSettings(_:);
  v14 = *(v6 + 104);
  v14(v12, enum case for SmartShortcutPickerViewStyle.pencilSettings(_:), v4);
  v14(v10, v13, v4);
  type metadata accessor for SystemActionConfigurationSelectionCoordinator();
  swift_allocObject();
  swift_retain_n();

  sub_1000098F0(v10);
  v15 = sub_10001309C();

  return v15;
}

void sub_100005D38()
{
  *(v0 + qword_1000220F8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_100022108) = &_swiftEmptySetSingleton;
  sub_10001381C();
  __break(1u);
}

void sub_100005DD8()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for PencilActionConfigurationGalleryViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setClipsToBounds:0];

    v3 = sub_1000130CC();
    [v3 setClipsToBounds:0];

    v4 = sub_1000130CC();
    [v4 setContentOffset:{0.0, 0.0}];

    v5 = sub_1000130CC();
    [v5 setDelaysContentTouches:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_100005EAC(void *a1)
{
  v1 = a1;
  sub_100005DD8();
}

void sub_100005EF4()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for PencilActionConfigurationGalleryViewController();
  objc_msgSendSuper2(&v6, "viewDidLayoutSubviews");
  v1 = [objc_opt_self() sharedProvider];
  [v1 metricsWithInterfaceOrientation:{objc_msgSend(v0, "interfaceOrientation")}];

  v2 = sub_1000130CC();
  [v2 contentInset];
  [v2 setContentInset:v4 + v5];

  v3 = sub_1000130CC();
  [v3 verticalScrollIndicatorInsets];
  [v3 setVerticalScrollIndicatorInsets:v5];
}

void sub_100005FF0(void *a1)
{
  v1 = a1;
  sub_100005EF4();
}

void sub_100006038(uint64_t a1)
{
  v2 = sub_100012EDC();
  sub_100005AC0();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100005A40();
  v8 = v7 - v6;

  v9 = sub_10001300C();

  sub_10000CD80(a1, v9);
  LOBYTE(a1) = v10;

  if ((a1 & 1) == 0)
  {
    sub_100012ECC();
    v11 = sub_1000130CC();
    v12 = [v11 collectionViewLayout];

    v13 = UICollectionElementKindSectionHeader;
    isa = sub_100012E8C().super.isa;
    v15 = [v12 layoutAttributesForSupplementaryViewOfKind:v13 atIndexPath:isa];

    if (v15)
    {
      [v15 frame];
      v41 = v16;
    }

    else
    {
      v41 = 0.0;
    }

    v17 = sub_1000130CC();
    [v17 adjustedContentInset];
    v19 = v18;
    v21 = v20;
    v42 = v22;
    v24 = v23;

    v25 = sub_1000130CC();
    [v25 contentSize];
    v27 = v26;

    v28 = sub_1000130CC();
    [v28 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v37 = sub_100006D88(v30, v32, v34, v36, v19, v21, v42, v24);
    if (v27 >= v38)
    {
      if (v27 - v38 - v19 > v41)
      {
        v39 = v41 - v19;
      }

      else
      {
        v39 = v27 - v38 - v19;
      }

      v40 = sub_1000130CC();
      [v40 setContentOffset:0 animated:{v21, v39}];

      (*(v4 + 8))(v8, v2);
    }

    else
    {
      (*(v4 + 8))(v8, v2, v37);
    }
  }
}

double sub_100006314()
{
  v0 = sub_1000130CC();
  [v0 contentOffset];
  v2 = v1;

  v3 = sub_1000130CC();
  [v3 adjustedContentInset];
  v5 = v4;

  v6 = sub_1000130CC();
  [v6 adjustedContentInset];

  return v2 + v5;
}

void sub_1000063A8(uint64_t a1@<X8>)
{
  v2 = v1;
  v90 = sub_100012EDC();
  sub_100005AC0();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100005A40();
  v89 = v8 - v7;

  v9 = sub_10001300C();

  v10 = *(v9 + 16);

  if (v10)
  {
    v11 = sub_1000130CC();
    [v11 adjustedContentInset];

    v12 = sub_1000130CC();
    sub_100006DBC(v12);

    v13 = sub_1000130CC();
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v91.origin.x = v15;
    v91.origin.y = v17;
    v91.size.width = v19;
    v91.size.height = v21;
    CGRectGetWidth(v91);
    v22 = sub_1000130CC();
    sub_100006DBC(v22);

    v23 = sub_1000130CC();
    sub_100006DBC(v23);

    v24 = sub_1000130CC();
    [v24 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v92.origin.x = v26;
    v92.origin.y = v28;
    v92.size.width = v30;
    v92.size.height = v32;
    CGRectGetHeight(v92);
    v33 = sub_1000130CC();
    sub_100006DBC(v33);

    v34 = sub_1000130CC();
    sub_100006DBC(v34);

    v35 = sub_1000130CC();
    [v35 contentSize];
    v37 = v36;

    v38 = v37 - sub_100006DFC();
    v39 = sub_1000130CC();
    [v39 contentOffset];
    v41 = v40;

    v42 = v38 - v41;
    v43 = sub_1000130CC();
    sub_100006DBC(v43);
    v45 = v44;

    if (v42 - v45 < 0.0)
    {
      v46 = 0.0;
    }

    else
    {
      v46 = v42 - v45;
    }

    if (v46 >= sub_100006DFC())
    {
      v62 = sub_1000130CC();
      [v62 contentInset];
      v56 = v63;
    }

    else
    {
      v47 = sub_100006D9C() - v46;
      v48 = v47 / sub_100006D9C();
      v49 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseIn];
      *&v50 = v48;
      [v49 _solveForInput:v50];
      LODWORD(v48) = v51;
      v52 = sub_1000130CC();
      [v52 contentInset];
      v54 = v53;

      v55 = sub_100006D9C();
      v56 = v54 + v55 * *&v48;
    }

    v64 = sub_10001300C();

    v65 = *(v64 + 16);

    v66 = 0;
    if (v65)
    {
      v67 = 0;
      v68 = (v5 + 8);
      while (1)
      {
        v69 = sub_1000130CC();
        v70 = [v69 collectionViewLayout];

        v71 = UICollectionElementKindSectionHeader;
        sub_100012ECC();
        isa = sub_100012E8C().super.isa;
        (*v68)(v89, v90);
        v73 = [v70 layoutAttributesForSupplementaryViewOfKind:v71 atIndexPath:isa];

        if (v73)
        {
          [v73 frame];
          v75 = v74;
          v77 = v76;
          v79 = v78;
          v81 = v80;

          v93.origin.x = v75;
          v93.origin.y = v77;
          v93.size.width = v79;
          v93.size.height = v81;
          MinY = CGRectGetMinY(v93);
        }

        else
        {
          MinY = 0.0;
        }

        v83 = sub_1000130CC();
        [v83 contentOffset];
        v85 = v84;

        if (v56 + v85 <= MinY)
        {
          break;
        }

        v86 = v67 + 1;
        v66 = v67;
        v67 = v86;
        if (v65 == v86)
        {
          v66 = v86 - 1;
          break;
        }
      }
    }

    v87 = sub_10001300C();

    if (v66 >= *(v87 + 16))
    {
      __break(1u);
    }

    else
    {
      v88 = sub_100012F9C();
      (*(*(v88 - 8) + 16))(a1, v87 + ((*(*(v88 - 8) + 80) + 32) & ~*(*(v88 - 8) + 80)) + *(*(v88 - 8) + 72) * v66, v88);

      sub_1000042DC(a1, 0, 1, v88);
      sub_100006DD4();
    }
  }

  else
  {
    sub_100012F9C();
    sub_100006DD4();

    sub_1000042DC(v57, v58, v59, v60);
  }
}

id sub_100006938(void *a1)
{
  v2 = sub_100004294(&qword_100022160);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_100012F9C();
  sub_100005AC0();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100005A40();
  v11 = v10 - v9;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100006314();
    sub_1000036D8();
    swift_unknownObjectRelease();
  }

  if (([a1 isTracking] & 1) != 0 || (objc_msgSend(a1, "isDragging") & 1) != 0 || (result = objc_msgSend(a1, "isDecelerating"), result))
  {
    sub_1000063A8(v4);
    if (sub_100006CF8(v4, 1, v5) == 1)
    {
      return sub_100006D20(v4);
    }

    else
    {
      (*(v7 + 32))(v11, v4, v5);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_10000EBB4(v11);
        (*(v7 + 8))(v11, v5);
        return swift_unknownObjectRelease();
      }

      else
      {
        return (*(v7 + 8))(v11, v5);
      }
    }
  }

  return result;
}

void sub_100006B4C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100006938(v4);
}

uint64_t sub_100006BE4()
{
  sub_100006CD0(v0 + qword_1000220F8);
}

id sub_100006C34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PencilActionConfigurationGalleryViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100006C6C(uint64_t a1)
{
  sub_100006CD0(a1 + qword_1000220F8);
}

uint64_t sub_100006D20(uint64_t a1)
{
  v2 = sub_100004294(&qword_100022160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100006D9C()
{
  v4 = 0;
  v5 = v3;
  v6 = v1;
  v7 = v2;

  return CGRectGetHeight(*&v4);
}

id sub_100006DBC(void *a1)
{
  v3 = *(v1 + 3872);

  return [a1 v3];
}

double sub_100006DFC()
{
  v5 = v2;
  v6 = v3;
  v7 = v1;
  v8 = v4;

  return CGRectGetHeight(*&v5);
}

Swift::Int sub_100006E44()
{
  sub_10001389C();
  sub_1000138AC(0);
  return sub_1000138BC();
}

Swift::Int sub_100006E90()
{
  sub_10001389C();
  sub_1000138AC(0);
  return sub_1000138BC();
}

void sub_100006EE0()
{
  sub_100009604();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_10001322C();
  sub_100005AC0();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000094EC();
  *&v0[OBJC_IVAR___WFSystemActionConfigurationServiceViewController_viewModel] = 0;
  *&v0[OBJC_IVAR___WFSystemActionConfigurationServiceViewController_embeddedViewController] = 0;
  if (WFLogCategorySystemActionConfiguration)
  {
    sub_10001320C();
    v10 = sub_10001321C();
    v11 = sub_10001370C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = sub_10000958C();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Creating SystemActionConfigurationServiceViewController", v12, 2u);
      sub_100009524();
    }

    (*(v8 + 8))(v0, v6);
    if (v5)
    {
      v13 = sub_1000135BC();
    }

    else
    {
      v13 = 0;
    }

    v14.receiver = v1;
    v14.super_class = type metadata accessor for SystemActionConfigurationServiceViewController();
    objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v13, v3);

    sub_1000095EC();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000070DC()
{
  *(v0 + OBJC_IVAR___WFSystemActionConfigurationServiceViewController_viewModel) = 0;
  *(v0 + OBJC_IVAR___WFSystemActionConfigurationServiceViewController_embeddedViewController) = 0;
  sub_10001381C();
  __break(1u);
}

id sub_100007168()
{
  v1 = sub_10001322C();
  sub_100005AC0();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000094EC();
  result = WFLogCategorySystemActionConfiguration;
  if (WFLogCategorySystemActionConfiguration)
  {
    sub_10001320C();
    v6 = sub_10001321C();
    v7 = sub_10001370C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = sub_10000958C();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Destroying SystemActionConfigurationServiceViewController", v8, 2u);
      sub_100009524();
    }

    (*(v3 + 8))(v0, v1);
    v9.receiver = v0;
    v9.super_class = type metadata accessor for SystemActionConfigurationServiceViewController();
    return objc_msgSendSuper2(&v9, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100007320()
{
  v1 = v0;
  v44.receiver = v0;
  v44.super_class = type metadata accessor for SystemActionConfigurationServiceViewController();
  objc_msgSendSuper2(&v44, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR___WFSystemActionConfigurationServiceViewController_viewModel];
  if (v2)
  {
    v3 = *(*v2 + 176);

    v5 = v3(v4);
    v6 = sub_1000095C8();
    if (v6)
    {
      v7 = v6;
      v8 = sub_100009558();
      if (v8)
      {
        v9 = v8;
        [v7 addSubview:v8];

        [v1 addChildViewController:v5];
        [v5 didMoveToParentViewController:v1];
        v10 = sub_100009558();
        if (v10)
        {
          v11 = v10;
          [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

          sub_100004294(&unk_100022410);
          v12 = swift_allocObject();
          *(v12 + 16) = xmmword_1000145C0;
          v13 = sub_100009558();
          if (v13)
          {
            v14 = v13;
            v15 = [v13 topAnchor];

            v16 = sub_1000095C8();
            if (v16)
            {
              v17 = v16;
              v18 = [v16 topAnchor];

              v19 = sub_100009570();
              *(v12 + 32) = v19;
              v20 = sub_100009558();
              if (v20)
              {
                v21 = v20;
                v22 = [v20 bottomAnchor];

                v23 = sub_1000095C8();
                if (v23)
                {
                  v24 = v23;
                  v25 = [v23 bottomAnchor];

                  v26 = sub_100009570();
                  *(v12 + 40) = v26;
                  v27 = sub_100009558();
                  if (v27)
                  {
                    v28 = v27;
                    v29 = [v27 leadingAnchor];

                    v30 = sub_1000095C8();
                    if (v30)
                    {
                      v31 = v30;
                      v32 = [v30 leadingAnchor];

                      v33 = sub_100009570();
                      *(v12 + 48) = v33;
                      v34 = sub_100009558();
                      if (v34)
                      {
                        v35 = v34;
                        v36 = [v34 trailingAnchor];

                        v37 = sub_1000095C8();
                        if (v37)
                        {
                          v38 = v37;
                          v39 = objc_opt_self();
                          v40 = [v38 trailingAnchor];

                          v41 = [v36 constraintEqualToAnchor:v40];
                          *(v12 + 56) = v41;
                          sub_100004548(0, &qword_100021D60);
                          isa = sub_10001366C().super.isa;

                          [v39 activateConstraints:isa];

                          [v5 preferredContentSize];
                          [v1 setPreferredContentSize:?];

                          v43 = *&v1[OBJC_IVAR___WFSystemActionConfigurationServiceViewController_embeddedViewController];
                          *&v1[OBJC_IVAR___WFSystemActionConfigurationServiceViewController_embeddedViewController] = v5;

                          return;
                        }

LABEL_25:
                        __break(1u);
                        return;
                      }

LABEL_24:
                      __break(1u);
                      goto LABEL_25;
                    }

LABEL_23:
                    __break(1u);
                    goto LABEL_24;
                  }

LABEL_22:
                  __break(1u);
                  goto LABEL_23;
                }

LABEL_21:
                __break(1u);
                goto LABEL_22;
              }

LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }
}

id sub_100007784(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SystemActionConfigurationServiceViewController();
  return objc_msgSendSuper2(&v4, "viewWillAppear:", a1 & 1);
}

id sub_10000781C()
{
  v1 = type metadata accessor for SystemActionConfigurationServiceViewController();
  v5.receiver = v0;
  v5.super_class = v1;
  objc_msgSendSuper2(&v5, "viewDidLayoutSubviews");
  v2 = *&v0[OBJC_IVAR___WFSystemActionConfigurationServiceViewController_embeddedViewController];
  if (v2)
  {
    [v2 preferredContentSize];
  }

  else
  {
    v4.receiver = v0;
    v4.super_class = v1;
    objc_msgSendSuper2(&v4, "preferredContentSize");
  }

  return [v0 setPreferredContentSize:?];
}

void *sub_1000078E8(void *a1)
{
  v2 = sub_1000135EC();
  v4 = v3;
  if (v2 == sub_1000135EC() && v4 == v5)
  {
    goto LABEL_17;
  }

  v7 = sub_1000095A4();

  if (v7)
  {
LABEL_18:
    type metadata accessor for ActionButtonModernConfigurationViewModel();
    goto LABEL_19;
  }

  v8 = sub_1000135EC();
  v10 = v9;
  if (v8 == sub_1000135EC() && v10 == v11)
  {
LABEL_17:

    goto LABEL_18;
  }

  v13 = sub_1000095A4();

  if (v13)
  {
    goto LABEL_18;
  }

  v14 = sub_1000135EC();
  v16 = v15;
  if (v14 == sub_1000135EC() && v16 == v17)
  {

    goto LABEL_21;
  }

  v19 = sub_10001384C();

  if (v19)
  {
LABEL_21:
    type metadata accessor for PencilActionConfigurationViewModel();
    goto LABEL_19;
  }

  type metadata accessor for SystemActionConfigurationViewModel();
LABEL_19:
  swift_allocObject();
  return sub_1000125CC(a1);
}

void sub_100007A60()
{
  sub_100009604();
  v2 = v1;
  v3 = sub_10001322C();
  sub_100005AC0();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000094EC();
  if (WFLogCategorySystemActionConfiguration)
  {
    sub_10001320C();
    v7 = v2;
    v8 = sub_10001321C();
    v9 = sub_10001370C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = sub_10000961C();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "Host send selected action: %@", v10, 0xCu);
      sub_100009238(v11, &qword_100022220);
      sub_100009524();
      sub_100009524();
    }

    (*(v5 + 8))(v0, v3);
    if (*(v0 + OBJC_IVAR___WFSystemActionConfigurationServiceViewController_viewModel))
    {
      v13 = v7;

      sub_1000124E4(v7);
    }

    sub_1000095EC();
  }

  else
  {
    __break(1u);
  }
}

void sub_100007C68()
{
  sub_100009604();
  v67 = v0;
  v2 = v1;
  v3 = sub_10001322C();
  sub_100005AC0();
  v5 = v4;
  v7 = __chkstk_darwin(v6);
  v66 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v64 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v64 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v64 - v16;
  __chkstk_darwin(v15);
  v19 = &v64 - v18;
  v20 = WFLogCategorySystemActionConfiguration;
  if (WFLogCategorySystemActionConfiguration)
  {
    sub_10001320C();
    v21 = v2;
    v22 = sub_10001321C();
    v23 = sub_10001370C();

    v24 = os_log_type_enabled(v22, v23);
    v68 = v20;
    if (v24)
    {
      v25 = sub_10000961C();
      v65 = v11;
      v26 = v5;
      v27 = v3;
      v28 = v25;
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v21;
      *v29 = v21;
      v30 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "Starting remote System Action Configuration request with context: %@", v28, 0xCu);
      sub_100009238(v29, &qword_100022220);
      sub_100009524();
      v3 = v27;
      v5 = v26;
      v11 = v65;
      sub_100009524();
    }

    v31 = *(v5 + 8);
    v31(v19, v3);
    v32 = type metadata accessor for SystemActionConfigurationServiceViewController();
    v75.receiver = v67;
    v75.super_class = v32;
    objc_msgSendSuper2(&v75, "beginRequestWithExtensionContext:", v21);
    sub_10001320C();
    v33 = sub_10001321C();
    v34 = sub_10001370C();
    if (sub_10000953C(v34))
    {
      *sub_10000958C() = 0;
      sub_100009504(&_mh_execute_header, v35, v36, "Initializing process for System Action Configuration");
      sub_100009524();
    }

    v31(v17, v3);
    [objc_opt_self() initializeProcessWithDatabase:1];
    sub_10001320C();
    v37 = sub_10001321C();
    v38 = sub_10001370C();
    if (sub_10000953C(v38))
    {
      *sub_10000958C() = 0;
      sub_100009504(&_mh_execute_header, v39, v40, "Initialized process for System Action Configuration");
      sub_100009524();
    }

    v31(v14, v3);
    v41 = [v21 inputItems];
    v42 = sub_10001367C();

    sub_10000CF34(v42, &v71);

    if (!v72)
    {
      sub_100009238(&v71, &unk_100022500);
      goto LABEL_20;
    }

    sub_100004548(0, &qword_100022228);
    if (swift_dynamicCast())
    {
      v43 = v73;
      v44 = sub_100009298(v73);
      if (v44)
      {
        v45 = v44;
        v69 = sub_1000135EC();
        v70 = v46;
        sub_1000137DC();
        sub_10000CF54(&v71, v45, &v73);

        sub_100009304(&v71);
        if (*(&v74 + 1))
        {
          type metadata accessor for WFSystemActionConfigurationContext(0);
          if (swift_dynamicCast())
          {
            v66 = v3;
            v47 = v71;
            v48 = sub_1000078E8(v71);
            *&v67[OBJC_IVAR___WFSystemActionConfigurationServiceViewController_viewModel] = v48;

            v48[3] = &off_10001D370;
            swift_unknownObjectWeakAssign();

            sub_10001320C();
            v49 = v47;
            v50 = sub_10001321C();
            v51 = sub_10001370C();

            if (os_log_type_enabled(v50, v51))
            {
              v52 = sub_10000961C();
              v65 = v11;
              v53 = v52;
              v54 = swift_slowAlloc();
              *&v71 = v54;
              *v53 = 136315138;
              *&v73 = v49;
              v55 = v49;
              v56 = sub_1000135FC();
              v58 = sub_10000B8F8(v56, v57, &v71);

              *(v53 + 4) = v58;
              _os_log_impl(&_mh_execute_header, v50, v51, "Configuring System Action Picker for context: %s", v53, 0xCu);
              sub_1000091EC(v54);
              sub_100009524();
              sub_100009524();

              v59 = v65;
            }

            else
            {

              v59 = v11;
            }

LABEL_23:
            (v31)(v59);
            sub_1000095EC();
            return;
          }

          goto LABEL_20;
        }
      }

      else
      {

        v73 = 0u;
        v74 = 0u;
      }

      sub_100009238(&v73, &unk_100022500);
    }

LABEL_20:
    sub_10001320C();
    v60 = sub_10001321C();
    v61 = sub_1000136FC();
    if (sub_10000953C(v61))
    {
      *sub_10000958C() = 0;
      sub_100009504(&_mh_execute_header, v62, v63, "Failed to decode context for System Action Picker");
      sub_100009524();
    }

    v59 = sub_1000095E0();
    goto LABEL_23;
  }

  __break(1u);
}

void sub_100008338()
{
  sub_100009604();
  v1 = v0;
  v2 = sub_10001322C();
  sub_100005AC0();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  if (WFLogCategorySystemActionConfiguration)
  {
    sub_10001320C();
    v11 = sub_10001321C();
    v12 = sub_10001370C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_10000958C();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Connecting to host process", v13, 2u);
      sub_100009524();
    }

    v14 = *(v4 + 8);
    v14(v10, v2);
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    v36 = sub_100009174;
    v37 = v15;
    *&v34 = _NSConcreteStackBlock;
    *(&v34 + 1) = 1107296256;
    *&v35 = sub_10000895C;
    *(&v35 + 1) = &unk_10001D3E0;
    v16 = _Block_copy(&v34);
    v17 = v1;

    v18 = [v17 _remoteViewControllerProxyWithErrorHandler:v16];
    _Block_release(v16);
    if (v18)
    {
      sub_10001379C();
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    v34 = v32;
    v35 = v33;
    sub_10001320C();
    sub_10000917C(&v34, &v32);
    v19 = sub_10001321C();
    v20 = sub_10001370C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = sub_10000961C();
      v22 = swift_slowAlloc();
      v30 = v14;
      v31 = v22;
      v23 = v22;
      *v21 = 136315138;
      v29 = v2;
      sub_100004294(&unk_100022500);
      v24 = sub_10001378C();
      v26 = v25;
      sub_100009238(&v32, &unk_100022500);
      v27 = sub_10000B8F8(v24, v26, &v31);

      *(v21 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "Connected to host process with: %s", v21, 0xCu);
      sub_1000091EC(v23);
      sub_100009524();
      sub_100009524();

      v30(v8, v29);
    }

    else
    {

      sub_100009238(&v32, &unk_100022500);
      v14(v8, v2);
    }

    v32 = v34;
    v33 = v35;
    if (*(&v35 + 1))
    {
      sub_100004294(&qword_100022218);
      swift_dynamicCast();
    }

    else
    {
      sub_100009238(&v32, &unk_100022500);
    }

    sub_1000095EC();
  }

  else
  {
    __break(1u);
  }
}

void sub_100008730(uint64_t a1, void *a2)
{
  v4 = sub_10001322C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!WFLogCategorySystemActionConfiguration)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_10001320C();
  swift_errorRetain();
  v8 = sub_10001321C();
  v9 = sub_1000136FC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v10 + 4) = v12;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "Connection interrupted to system action configuration host process: %@", v10, 0xCu);
    sub_100009238(v11, &qword_100022220);
  }

  (*(v5 + 8))(v7, v4);
  v14 = [a2 extensionContext];
  if (v14)
  {
    if (a1)
    {
      v15 = v14;
      v16 = sub_100012E6C();
      [v15 cancelRequestWithError:v16];

      return;
    }

LABEL_12:
    __break(1u);
  }
}

void sub_10000895C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_1000089C8()
{
  v0 = WFSystemActionConfigurationServiceXPCInterface();

  return v0;
}

id sub_100008A1C()
{
  v0 = WFSystemActionConfigurationHostXPCInterface();

  return v0;
}

void sub_100008A94(uint64_t a1)
{
  v3 = [v1 presentingViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 nextResponder];

    [v5 resignFirstResponder];
  }

  sub_100008338();
  if (v6)
  {
    [v6 didSelectSystemAction:a1];

    swift_unknownObjectRelease();
  }
}

void sub_100008B4C()
{
  sub_100008338();
  if (v0)
  {
    v1 = v0;
    sub_1000090E8();
    swift_allocError();
    v2 = sub_100012E6C();

    [v1 didCancelSystemActionConfiguration:v2];

    swift_unknownObjectRelease();
  }
}

void sub_100008BE8()
{
  v1 = v0;
  sub_100004548(0, &qword_100022200);
  sub_10001361C();
  sub_10001361C();
  if (qword_100021C10 != -1)
  {
    swift_once();
  }

  v2 = static NSBundle._current;
  v3 = sub_1000135BC();
  v4 = sub_1000135BC();

  v5 = sub_1000135BC();

  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  v7 = sub_1000135EC();
  v9 = v8;

  v10 = sub_100008EA8(0, 0, v7, v9, 1);
  sub_100004548(0, &qword_100022208);
  sub_10001361C();
  sub_10001361C();
  sub_1000095E0();
  v11 = sub_1000135BC();
  sub_1000095E0();
  v12 = sub_1000135BC();

  v13 = sub_1000135BC();

  v14 = [v2 localizedStringForKey:v11 value:v12 table:v13];

  sub_1000135EC();
  v15 = sub_1000095E0();
  v17 = sub_100008F60(v15, v16, 0, 0, 0);
  [v10 addAction:v17];

  v18 = [v1 presentedViewController];
  if (!v18)
  {
    v18 = v1;
  }

  v19 = v18;
  [v18 presentViewController:v10 animated:1 completion:0];
}

id sub_100008EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_1000135BC();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_1000135BC();

LABEL_6:
  v9 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v7 message:v8 preferredStyle:a5];

  return v9;
}

id sub_100008F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_1000135BC();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100009068;
  v12[3] = &unk_10001D390;
  v9 = _Block_copy(v12);

LABEL_6:
  v10 = [swift_getObjCClassFromMetadata() actionWithTitle:v8 style:a3 handler:v9];
  _Block_release(v9);

  return v10;
}

void sub_100009068(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000090D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000090E8()
{
  result = qword_100022210;
  if (!qword_100022210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100022210);
  }

  return result;
}

uint64_t sub_10000913C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000917C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004294(&unk_100022500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000091EC(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100009238(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100004294(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100009298(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10001359C();

  return v3;
}

uint64_t getEnumTagSinglePayload for PencilActionConfigurationSidebarViewController.Section(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for SystemActionConfigurationServiceViewController.Error(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100009448);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100009490()
{
  result = qword_100022230;
  if (!qword_100022230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100022230);
  }

  return result;
}

void sub_100009504(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t sub_100009524()
{
}

BOOL sub_10000953C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id sub_100009558()
{
  v3 = *(v1 + 3448);

  return [v0 v3];
}

id sub_100009570()
{
  v4 = *(v2 + 3616);

  return [v0 v4];
}

uint64_t sub_10000958C()
{

  return swift_slowAlloc();
}

uint64_t sub_1000095A4()
{

  return sub_10001384C();
}

id sub_1000095C8()
{
  v3 = *(v1 + 3448);

  return [v0 v3];
}

uint64_t sub_10000961C()
{

  return swift_slowAlloc();
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_10001361C();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_10001361C();
    }

LABEL_9:
    __break(1u);
    return sub_10001361C();
  }

  __break(1u);
  return result;
}

uint64_t *NSBundle._current.unsafeMutableAddressor()
{
  if (qword_100021C10 != -1)
  {
    sub_100009844();
  }

  return &static NSBundle._current;
}

id sub_10000976C()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static NSBundle._current = result;
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_100021C10 != -1)
  {
    sub_100009844();
  }

  v1 = static NSBundle._current;

  return v1;
}

uint64_t sub_100009844()
{

  return swift_once();
}

uint64_t type metadata accessor for SystemActionConfigurationSelectionCoordinator()
{
  result = qword_1000222D0;
  if (!qword_1000222D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000098F0(uint64_t a1)
{
  v2 = sub_100012FCC();
  sub_100005AC0();
  v4 = v3;
  __chkstk_darwin(v5);
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);

  v7 = sub_1000130EC();
  (*(v4 + 8))(a1, v2);
  return v7;
}

uint64_t sub_100009A14(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v23 = a2;
  v2 = sub_10001306C();
  v20 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v21 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100012FAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004294(&qword_100022320);
  __chkstk_darwin(v9 - 8);
  v11 = v19 - v10;
  v12 = sub_1000136EC();
  sub_1000042DC(v11, 1, 1, v12);
  (*(v6 + 16))(v8, v22, v5);
  (*(v3 + 16))(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v2);
  sub_1000136CC();

  v13 = sub_1000136BC();
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = (v7 + *(v3 + 80) + v14) & ~*(v3 + 80);
  v16 = (v4 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = &protocol witness table for MainActor;
  (*(v6 + 32))(v17 + v14, v8, v5);
  (*(v3 + 32))(v17 + v15, v21, v20);
  *(v17 + v16) = v19[1];
  sub_10000B170(0, 0, v11, &unk_100014D98, v17);
}

uint64_t sub_100009D08()
{
  v0 = sub_1000130FC();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_100009D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_10001311C();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = sub_10001322C();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  sub_100004294(&qword_100022328);
  v6[13] = swift_task_alloc();
  v9 = sub_100012F5C();
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v10 = sub_1000130DC();
  v6[18] = v10;
  v6[19] = *(v10 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v11 = sub_10001308C();
  v6[23] = v11;
  v6[24] = *(v11 - 8);
  v6[25] = swift_task_alloc();
  v12 = sub_100012FAC();
  v6[26] = v12;
  v6[27] = *(v12 - 8);
  v6[28] = swift_task_alloc();
  sub_1000136CC();
  v6[29] = sub_1000136BC();
  v14 = sub_1000136AC();
  v6[30] = v14;
  v6[31] = v13;

  return _swift_task_switch(sub_10000A074, v14, v13);
}

uint64_t sub_10000A074()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for SmartShortcutPickerSelection.workflow(_:))
  {
    v5 = v0[28];
    v7 = v0[26];
    v6 = v0[27];
    v8 = v0[19];
    v9 = v0[20];
    v10 = v0[18];

    (*(v6 + 96))(v5, v7);
    v11 = *v5;
    v12 = [v11 name];
    v13 = sub_1000135EC();
    v15 = v14;

    *v9 = v13;
    v9[1] = v15;
    v9[2] = &_swiftEmptyArrayStorage;
    (*(v8 + 104))(v9, enum case for SmartShortcutPickerActionConfiguration.formed(_:), v10);
    sub_10001305C();
    sub_10001310C();
    sub_100012E5C();
    swift_allocObject();
    sub_100012E4C();
    sub_10000B8A0();
    v16 = sub_100012E3C();
    v18 = v0[7];
    v17 = v0[8];
    v19 = v0[6];
    v37 = v16;
    v39 = v38;
    v40 = v0[5];
    v41 = objc_allocWithZone(WFConfiguredSystemWorkflowAction);
    sub_10000BE68(v37, v39);
    v42 = sub_10000B4B4(v11, v37, v39);
    (*(*v40 + 192))();

    sub_10000BEC0(v37, v39);
    (*(v18 + 8))(v17, v19);
LABEL_8:
    sub_10000BF94();

    sub_10000BFD8();

    return v43();
  }

  if (v4 != enum case for SmartShortcutPickerSelection.actionTemplate(_:))
  {
    v33 = v0[28];
    v34 = v0[26];
    v35 = v0[27];
    v36 = v0[5];

    (*(*v36 + 192))(0);
    (*(v35 + 8))(v33, v34);
    goto LABEL_8;
  }

  v20 = v0[28];
  v21 = v0[25];
  v22 = v0[23];
  v23 = v0[24];
  v24 = v0[22];
  v25 = v0[18];
  v26 = v0[19];
  (*(v0[27] + 96))(v20, v0[26]);
  v27 = *(sub_100004294(&qword_100022340) + 48);
  (*(v23 + 32))(v21, v20, v22);
  (*(v26 + 32))(v24, v20 + v27, v25);
  sub_10001305C();
  v28 = sub_10001304C();
  v0[32] = v28;
  sub_10001303C();
  v29 = swift_task_alloc();
  v0[33] = v29;
  *v29 = v0;
  v29[1] = sub_10000A63C;
  v30 = v0[22];
  v31 = v0[17];
  v32 = v0[13];

  return SmartShortcutPickerActionTemplate.asSystemAction(with:sectionIdentifier:iconOverride:colorScheme:)(v30, v31, v28, v32);
}

uint64_t sub_10000A63C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  v5 = *(v3 + 136);
  v6 = *(v3 + 120);
  v7 = *(v3 + 112);
  v8 = *(v3 + 104);

  sub_100009238(v8, &qword_100022328);
  (*(v6 + 8))(v5, v7);
  v9 = *(v3 + 248);
  v10 = *(v3 + 240);
  if (v1)
  {
    v11 = sub_10000AB48;
  }

  else
  {
    v11 = sub_10000A828;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_10000A828()
{
  v40 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);

  sub_10001320C();
  v5 = *(v4 + 16);
  v5(v1, v2, v3);
  v6 = sub_10001321C();
  v7 = sub_10001370C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 168);
  if (v8)
  {
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v33 = v7;
    v12 = *(v0 + 144);
    v34 = *(v0 + 80);
    v35 = *(v0 + 72);
    v36 = *(v0 + 96);
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v39 = v32;
    *v13 = 136315138;
    v5(v10, v9, v12);
    v14 = sub_1000135FC();
    v16 = v15;
    v38 = *(v11 + 8);
    v38(v9, v12);
    v17 = sub_10000B8F8(v14, v16, &v39);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v33, "User configured entry for Action Button: %s", v13, 0xCu);
    sub_1000091EC(v32);
    sub_100009524();
    sub_100009524();

    (*(v34 + 8))(v36, v35);
  }

  else
  {
    v18 = *(v0 + 144);
    v19 = *(v0 + 152);
    v20 = *(v0 + 96);
    v21 = *(v0 + 72);
    v22 = *(v0 + 80);

    v38 = *(v19 + 8);
    v38(v9, v18);
    (*(v22 + 8))(v20, v21);
  }

  v23 = *(v0 + 272);
  v24 = *(v0 + 192);
  v37 = *(v0 + 200);
  v26 = *(v0 + 176);
  v25 = *(v0 + 184);
  v27 = *(v0 + 144);
  v28 = *(**(v0 + 40) + 192);
  v29 = v23;
  v28(v23);

  v38(v26, v27);
  (*(v24 + 8))(v37, v25);
  sub_10000BF94();

  sub_10000BFD8();

  return v30();
}

uint64_t sub_10000AB48()
{
  v25 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[18];
  v6 = v0[19];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[35];
  sub_10001320C();
  swift_errorRetain();
  v8 = sub_10001321C();
  LOBYTE(v2) = sub_1000136FC();

  if (os_log_type_enabled(v8, v2))
  {
    v9 = v0[10];
    v23 = v0[11];
    v10 = v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    v0[2] = v7;
    swift_errorRetain();
    sub_100004294(&qword_100022338);
    v13 = sub_1000135FC();
    v15 = sub_10000B8F8(v13, v14, &v24);

    *(v11 + 4) = v15;
    sub_10000BFF4(&_mh_execute_header, v16, v17, "Failed to construct selected action due to: %s");
    sub_1000091EC(v12);
    sub_100009524();
    sub_100009524();

    (*(v9 + 8))(v23, v10);
  }

  else
  {
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[9];

    (*(v19 + 8))(v18, v20);
  }

  sub_100012574();

  sub_10000BF94();

  sub_10000BFD8();

  return v21();
}

uint64_t sub_10000ADB4()
{
  v1 = sub_100012FAC();
  sub_100005AC0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_10001306C();
  sub_100005AC0();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = v4 | v13;
  v16 = (*(v12 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return _swift_deallocObject(v0, v16 + 8, v15 | 7);
}

uint64_t sub_10000AF00(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100012FAC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10001306C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000B088;

  return sub_100009D48(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_10000B088()
{
  v1 = *v0;
  sub_10000BFE4();
  *v2 = v1;

  sub_10000BFD8();

  return v3();
}

uint64_t sub_10000B170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004294(&qword_100022320);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_10000B444(a3, v24 - v10);
  v12 = sub_1000136EC();
  v13 = sub_100006CF8(v11, 1, v12);

  if (v13 == 1)
  {
    sub_100009238(v11, &qword_100022320);
  }

  else
  {
    sub_1000136DC();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1000136AC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10001360C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_100009238(a3, &qword_100022320);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100009238(a3, &qword_100022320);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10000B444(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004294(&qword_100022320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10000B4B4(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100012E7C().super.isa;
    sub_10000BF18(a2, a3);
  }

  v8 = [v3 initWithWorkflow:a1 shortcutsMetadata:isa];

  return v8;
}

uint64_t sub_10000B544(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000B63C;

  return v6(a1);
}

uint64_t sub_10000B63C()
{
  v1 = *v0;
  sub_10000BFE4();
  *v2 = v1;

  sub_10000BFD8();

  return v3();
}

uint64_t sub_10000B728()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B760()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_10000BFB8(v1);

  return v3(v2);
}

uint64_t sub_10000B800()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_10000BFB8(v1);

  return v3(v2);
}

unint64_t sub_10000B8A0()
{
  result = qword_100022330;
  if (!qword_100022330)
  {
    sub_10001311C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100022330);
  }

  return result;
}

unint64_t sub_10000B8F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000B9BC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10000BF2C(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1000091EC(v11);
  return v7;
}

unint64_t sub_10000B9BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000BABC(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_10001380C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000BABC(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000BB08(a1, a2);
  sub_10000BC20(&off_10001D098);
  return v3;
}

char *sub_10000BB08(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_10001363C())
  {
    result = sub_10000BD04(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1000137EC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_10001380C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10000BC20(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_10000BD74(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000BD04(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100004294(&qword_100022348);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_10000BD74(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004294(&qword_100022348);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10000BE68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000BEC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000BF18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000BEC0(a1, a2);
  }

  return a1;
}

uint64_t sub_10000BF2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10000BFF4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_10000C014()
{
  sub_10000CD04();
  sub_1000131CC();
  *(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController_backgroundVisibility) = v2;
  return sub_10000C9DC();
}

id sub_10000C074(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController_searchView;
  *&v1[v3] = [objc_allocWithZone(WFSearchBar) initWithStyle:1];
  v4 = OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController_navigationBar;
  *&v1[v4] = [objc_allocWithZone(UINavigationBar) init];
  *&v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController_backgroundVisibility] = 0;
  *&v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController____lazy_storage___searchViewTopConstraint] = 0;
  *&v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController____lazy_storage___searchViewBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController____lazy_storage___searchViewWidthConstraint] = 0;
  *&v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController_viewModel] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PencilActionConfigurationSearchViewController();
  return objc_msgSendSuper2(&v6, "initWithNibName:bundle:", 0, 0);
}

void sub_10000C14C()
{
  v1 = OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController_searchView;
  *(v0 + v1) = [objc_allocWithZone(WFSearchBar) initWithStyle:1];
  v2 = OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController_navigationBar;
  *(v0 + v2) = [objc_allocWithZone(UINavigationBar) init];
  *(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController_backgroundVisibility) = 0;
  *(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController____lazy_storage___searchViewTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController____lazy_storage___searchViewBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController____lazy_storage___searchViewWidthConstraint) = 0;
  sub_10001381C();
  __break(1u);
}

id sub_10000C244()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for PencilActionConfigurationSearchViewController();
  objc_msgSendSuper2(&v19, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController_searchView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController_navigationBar];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100004294(&unk_100022410);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100014DF0;
  *(v4 + 32) = [objc_allocWithZone(UINavigationItem) init];
  sub_10000CC1C(v4, v3);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = result;
  [result addSubview:v3];

  result = [v0 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  [result addSubview:v2];

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000145C0;
  *(v8 + 32) = sub_10000C72C();
  *(v8 + 40) = sub_10000C740();
  *(v8 + 48) = sub_10000C840();
  v9 = [v2 centerXAnchor];
  result = [v0 view];
  if (result)
  {
    v10 = result;
    v11 = objc_opt_self();
    v12 = [v10 centerXAnchor];

    v13 = [v9 constraintEqualToAnchor:v12];
    *(v8 + 56) = v13;
    sub_100004548(0, &qword_100021D60);
    isa = sub_10001366C().super.isa;

    [v11 activateConstraints:isa];

    [v2 setDelegate:v1];
    v15 = [v2 searchTextField];

    v16 = sub_100012FDC();
    v18 = v17;

    sub_10000CCA0(v16, v18, v15);

    return sub_10000C9DC();
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_10000C574(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PencilActionConfigurationSearchViewController();
  objc_msgSendSuper2(&v4, "viewDidDisappear:", a1 & 1);
  return [*&v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController_searchView] reset];
}

id sub_10000C624()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for PencilActionConfigurationSearchViewController();
  objc_msgSendSuper2(&v12, "viewDidLayoutSubviews");
  sub_10000C8E8();
  v1 = *&v0[OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController_navigationBar];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    return [v1 setFrame:{v5, v7, v9, v11}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10000C754(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *&v2[*a1];
  if (v4)
  {
    v5 = *&v2[*a1];
LABEL_5:
    v13 = v4;
    return v5;
  }

  v7 = [*&v2[OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController_searchView] *a2];
  result = [v2 view];
  if (result)
  {
    v9 = result;
    v10 = [result *a2];

    v11 = [v7 constraintEqualToAnchor:v10 constant:0.0];
    v12 = *&v2[v3];
    *&v2[v3] = v11;
    v5 = v11;

    v4 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_10000C840()
{
  v1 = OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController____lazy_storage___searchViewWidthConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController____lazy_storage___searchViewWidthConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController____lazy_storage___searchViewWidthConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension45PencilActionConfigurationSearchViewController_searchView) widthAnchor];
    v5 = [v4 constraintEqualToConstant:0.0];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_10000C8E8()
{
  v1 = [objc_opt_self() sharedProvider];
  [v1 metricsWithInterfaceOrientation:{objc_msgSend(v0, "interfaceOrientation")}];

  v2 = sub_10000C72C();
  [v2 setConstant:v6];

  v3 = sub_10000C740();
  [v3 setConstant:-v7];

  v4 = sub_10000C840();
  [v4 setConstant:v5];
}

uint64_t sub_10000CA00()
{

  sub_100012FEC();
}

id sub_10000CB38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PencilActionConfigurationSearchViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000CC1C(uint64_t a1, void *a2)
{
  sub_100004548(0, &qword_100022420);
  isa = sub_10001366C().super.isa;

  [a2 setItems:isa];
}

void sub_10000CCA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1000135BC();

  [a3 setText:v4];
}

unint64_t sub_10000CD04()
{
  result = qword_100022428;
  if (!qword_100022428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100022428);
  }

  return result;
}

uint64_t sub_10000CD80(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (1)
  {
    if (v3 == v2)
    {
      return 0;
    }

    sub_100012F9C();
    sub_100011F40();
    sub_100011504(&qword_100022540, v4);
    if (sub_1000135AC())
    {
      break;
    }

    ++v2;
  }

  return v2;
}

uint64_t sub_10000CE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_100012EDC();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_1000042DC(a2, v7, 1, v6);
}

double sub_10000CF34@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_10000BF2C(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_10000CF54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_100011148(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_10000BF2C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

BOOL sub_10000CFB8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10001D0C0;
  v6._object = a2;
  v4 = sub_10001383C(v3, v6);

  return v4 != 0;
}

Swift::Int sub_10000D008()
{
  sub_10001389C();
  sub_10001362C();
  return sub_1000138BC();
}

Swift::Int sub_10000D06C()
{
  sub_10001389C();
  sub_10001362C();
  return sub_1000138BC();
}

BOOL sub_10000D0B4@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000CFB8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

id sub_10000D0FC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_cancellables] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_dataSource] = 0;
  v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_shouldAllowAnimatedSelection] = 1;
  *&v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_viewModel] = a1;
  *&v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_visibleSections] = &_swiftEmptyArrayStorage;

  v3 = sub_10000D2C0();
  v4 = [objc_allocWithZone(UICollectionView) initWithFrame:v3 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_collectionView] = v4;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for PencilActionConfigurationSidebarViewController();
  v5 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", 0, 0);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 defaultCenter];
  [v8 addObserver:v7 selector:"keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];

  v9 = [v6 defaultCenter];
  [v9 addObserver:v7 selector:"keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];

  return v7;
}

uint64_t sub_10000D2C0()
{
  v0 = sub_10001336C();
  sub_100005AC0();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100005A40();
  v6 = v5 - v4;
  v7 = sub_10001339C();
  sub_100005AC0();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100005A40();
  v13 = v12 - v11;
  (*(v2 + 104))(v6, enum case for UICollectionLayoutListConfiguration.Appearance.sidebar(_:), v0);
  sub_10001337C();
  v14 = [objc_opt_self() clearColor];
  sub_10001338C();
  sub_100004548(0, &qword_1000224F8);
  v15 = sub_10001375C();
  (*(v9 + 8))(v13, v7);
  return v15;
}

void sub_10000D454()
{
  *(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_cancellables) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_shouldAllowAnimatedSelection) = 1;
  sub_10001381C();
  __break(1u);
}

id sub_10000D510()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for PencilActionConfigurationSidebarViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10000D638()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1000133BC();
  v3 = sub_100005AB4(v2);
  __chkstk_darwin(v3);
  sub_100005A40();
  v63[1] = v5 - v4;
  v6 = sub_100004294(&qword_100021D28);
  sub_100005AB4(v6);
  sub_100011F8C();
  __chkstk_darwin(v7);
  v9 = v63 - v8;
  v65 = sub_100004294(&unk_100021D30);
  sub_100005AC0();
  v11 = v10;
  sub_100011F8C();
  __chkstk_darwin(v12);
  v14 = v63 - v13;
  v15 = type metadata accessor for PencilActionConfigurationSidebarViewController();
  v67.receiver = v0;
  v67.super_class = v15;
  objc_msgSendSuper2(&v67, "viewDidLoad");
  v16 = *&v0[OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_collectionView];
  [v16 setDelegate:v0];
  v17 = [objc_opt_self() clearColor];
  [v16 setBackgroundColor:v17];

  [v16 setShowsVerticalScrollIndicator:0];
  [v16 setKeyboardDismissMode:3];
  sub_100004548(0, &qword_100022548);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = sub_1000135BC();
  [v16 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v19];

  sub_10001302C();
  sub_100011504(&unk_100022550, &type metadata accessor for SmartShortcutPickerDataSource);

  v20 = sub_1000133FC();

  v66[0] = v20;
  v21 = [objc_opt_self() mainRunLoop];
  v66[5] = v21;
  v22 = sub_10001377C();
  sub_1000042DC(v9, 1, 1, v22);
  sub_10001340C();
  sub_100004548(0, &unk_100021D40);
  sub_100004304();
  sub_10001341C();
  sub_100011DD0(v9, &qword_100021D28);

  sub_100011FD8();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_10001176C;
  *(v24 + 24) = v23;
  sub_100011E6C(&qword_100021D50, &unk_100021D30);
  v25 = v65;
  sub_10001342C();

  (*(v11 + 8))(v14, v25);
  swift_beginAccess();
  sub_1000133EC();
  swift_endAccess();

  v26 = [v1 view];
  if (!v26)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v27 = v26;
  [v26 addSubview:v16];

  sub_100011FD8();
  *(swift_allocObject() + 16) = ObjectType;
  v28 = objc_allocWithZone(sub_100004294(&qword_100022570));
  v29 = v16;
  v30 = sub_10001333C();
  v31 = *&v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_dataSource];
  *&v1[OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_dataSource] = v30;
  v32 = v30;

  [v29 setDataSource:v32];
  if (!_UISolariumEnabled())
  {
LABEL_9:

    return;
  }

  v33 = [objc_allocWithZone(UIView) init];
  v34 = [v33 layer];
  [v34 setCornerRadius:27.0];

  v35 = [v29 layer];
  [v35 setCornerRadius:27.0];

  v36 = [v29 layer];
  [v36 setMasksToBounds:1];

  v37 = [v33 layer];
  [v37 setCornerCurve:kCACornerCurveContinuous];

  sub_1000133AC();
  v66[3] = sub_1000133CC();
  v66[4] = &protocol witness table for _Glass;
  sub_1000117C0(v66);
  sub_1000133DC();
  sub_10001376C();
  v38 = [v1 view];
  if (!v38)
  {
    goto LABEL_11;
  }

  v39 = v38;
  [v38 insertSubview:v33 atIndex:0];

  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100004294(&unk_100022410);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1000145C0;
  v41 = [v33 topAnchor];
  v42 = sub_100011F70();
  if (!v42)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v43 = v42;
  v44 = [v42 topAnchor];

  v45 = sub_100011FB8();
  *(v40 + 32) = v45;
  v46 = [v33 bottomAnchor];
  v47 = sub_100011F70();
  if (!v47)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v48 = v47;
  v49 = [v47 bottomAnchor];

  v50 = [v35 constraintEqualToAnchor:v49 constant:-8.0];
  *(v40 + 40) = v50;
  v51 = [v33 leadingAnchor];
  v52 = sub_100011F70();
  if (!v52)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v53 = v52;
  v54 = [v52 leadingAnchor];

  v55 = sub_100011FB8();
  *(v40 + 48) = v55;
  v56 = [v33 trailingAnchor];
  v57 = sub_100011F70();
  if (v57)
  {
    v58 = v57;
    v59 = objc_opt_self();
    v60 = [v58 trailingAnchor];

    v61 = [v35 constraintEqualToAnchor:v60];
    *(v40 + 56) = v61;
    sub_100004548(0, &qword_100021D60);
    isa = sub_10001366C().super.isa;

    [v59 activateConstraints:isa];

    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_10000DF20()
{
  v0 = sub_100012EDC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10000F748();
    v6 = OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_collectionView;
    v7 = [*&v5[OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_collectionView] indexPathsForSelectedItems];
    if (v7)
    {
      v8 = v7;
      v9 = sub_10001367C();
    }

    else
    {
      v9 = &_swiftEmptyArrayStorage;
    }

    v10 = sub_10000E0E8(v9, &_swiftEmptyArrayStorage);

    if (v10)
    {
      if (*(*&v5[OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_visibleSections] + 16))
      {
        v11 = *&v5[v6];
        sub_100012ECC();
        isa = sub_100012E8C().super.isa;
        (*(v1 + 8))(v3, v0);
        [v11 selectItemAtIndexPath:isa animated:0 scrollPosition:1];

        v5 = isa;
      }
    }
  }
}

uint64_t sub_10000E0E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012EDC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_100011504(&qword_100022538, &type metadata accessor for IndexPath);
    v21 = sub_1000135AC();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

id sub_10000E2FC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100012F9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_1000135BC();
  isa = sub_100012E8C().super.isa;
  v10 = [a1 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:isa];

  v15 = v10;
  v16 = a3;
  v17[3] = sub_100004294(&qword_100022578);
  v17[4] = sub_100011E6C(&qword_100022580, &qword_100022578);
  sub_1000117C0(v17);
  type metadata accessor for PencilActionConfigurationSidebarCell();
  sub_100011504(&qword_100022588, type metadata accessor for PencilActionConfigurationSidebarCell);
  sub_1000134CC();
  sub_10001371C();
  (*(v6 + 16))(&v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], a3, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v5);
  sub_10001373C();
  return v10;
}

uint64_t sub_10000E568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100004294(&qword_100022590);
  __chkstk_darwin(v5 - 8);
  v7 = &v19[-v6];
  v8 = sub_100004294(&qword_100022598);
  __chkstk_darwin(v8 - 8);
  v10 = &v19[-v9];
  v11 = sub_1000132BC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a1;
  v21 = a3;
  v22[3] = sub_100004294(&qword_100022578);
  v22[4] = sub_100011E6C(&qword_100022580, &qword_100022578);
  sub_1000117C0(v22);
  type metadata accessor for PencilActionConfigurationSidebarCell();
  sub_100011504(&qword_100022588, type metadata accessor for PencilActionConfigurationSidebarCell);
  sub_1000134CC();
  sub_10001371C();
  sub_1000132AC();
  sub_10001330C();
  v15 = sub_1000132FC();
  sub_1000042DC(v10, 0, 1, v15);
  sub_10001329C();
  sub_10001327C();
  LOBYTE(v10) = sub_10001323C();
  v16 = sub_10001324C();
  if (v10)
  {
    [objc_allocWithZone(UIColor) initWithWhite:0.39 alpha:0.12];
  }

  else if (v16)
  {
    [objc_allocWithZone(UIColor) initWithWhite:0.39 alpha:0.06];
  }

  else
  {
    v17 = [objc_opt_self() clearColor];
  }

  sub_10001328C();
  (*(v12 + 16))(v7, v14, v11);
  sub_1000042DC(v7, 0, 1, v11);
  sub_10001372C();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_10000E8D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = [a1 _bridgedConfigurationState];
  v6 = type metadata accessor for PencilActionConfigurationSidebarCell();
  sub_10001325C();

  v7 = *(v6 + 24);
  sub_100012F9C();
  sub_100011F58();
  (*(v8 + 16))(a3 + v7, a2);
  *a3 = swift_getKeyPath();
  v9 = sub_100004294(&qword_1000225A0);

  return _swift_storeEnumTagMultiPayload(a3, v9, 0);
}

void sub_10000E9F4()
{
  v22.receiver = v0;
  v22.super_class = type metadata accessor for PencilActionConfigurationSidebarViewController();
  objc_msgSendSuper2(&v22, "viewDidLayoutSubviews");
  v1 = _UISolariumEnabled();
  v2 = *&v0[OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_collectionView];
  v3 = [v0 view];
  v4 = v3;
  if (!v1)
  {
    if (v3)
    {
      [v3 bounds];
      sub_100011EDC();

      v16 = sub_100011EF0();
      [v17 v18];
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v3 bounds];
  sub_100011EDC();

  v23.origin.x = sub_100011EF0();
  Width = CGRectGetWidth(v23);
  v6 = [v0 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v24.origin.x = v9;
    v24.origin.y = v11;
    v24.size.width = v13;
    v24.size.height = v15;
    [v2 setFrame:{8.0, 8.0, Width + -8.0, CGRectGetHeight(v24) + -16.0}];
LABEL_7:
    sub_1000104E8();
    return;
  }

LABEL_10:
  __break(1u);
}

id sub_10000EBB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100004294(&qword_100022530);
  sub_100005AB4(v4);
  sub_100011F8C();
  __chkstk_darwin(v5);
  v7 = &v82 - v6;
  v8 = sub_100012EDC();
  sub_100005AC0();
  v10 = v9;
  v12 = __chkstk_darwin(v11);
  v86 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v88 = &v82 - v15;
  v85 = v16;
  __chkstk_darwin(v14);
  v87 = &v82 - v17;
  v18 = sub_100012F9C();
  sub_100005AC0();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_100005A40();
  v24 = v23 - v22;
  v25 = sub_100012F4C();
  v26 = *&v2[OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_visibleSections];
  if (v25)
  {
    v82 = v2;
    v83 = v10;
    v84 = v8;
    v27 = *(v26 + 16);

    for (i = 0; ; ++i)
    {
      if (v27 == i)
      {
      }

      if (i >= *(v26 + 16))
      {
        break;
      }

      (*(v20 + 16))(v24, v26 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * i, v18);
      v30 = sub_100012F3C();
      result = (*(v20 + 8))(v24, v18);
      if (v30)
      {

        v10 = v83;
        v8 = v84;
        v2 = v82;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  sub_10000CD80(a1, v26);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_11:
    v33 = v87;
    sub_100012EAC();
    v34 = *&v2[OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_collectionView];
    v35 = [v34 indexPathsForSelectedItems];
    v36 = v88;
    if (v35)
    {
      v37 = v35;
      v38 = sub_10001367C();

      sub_10000CE8C(v38, v7);

      if (sub_100006CF8(v7, 1, v8) != 1)
      {
        (*(v10 + 32))(v36, v7, v8);
        goto LABEL_17;
      }
    }

    else
    {
      sub_1000042DC(v7, 1, 1, v8);
    }

    sub_100012EAC();
    if (sub_100006CF8(v7, 1, v8) != 1)
    {
      sub_100011DD0(v7, &qword_100022530);
    }

LABEL_17:
    sub_100011504(&qword_100022538, &type metadata accessor for IndexPath);
    if ((sub_1000135AC() & 1) == 0)
    {
      isa = sub_100012E8C().super.isa;
      [v34 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

      v40 = [v34 collectionViewLayout];
      v41 = sub_100012E8C().super.isa;
      v42 = [v40 layoutAttributesForItemAtIndexPath:v41];

      if (v42)
      {
        if (v2[OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_shouldAllowAnimatedSelection] == 1)
        {
          [v42 frame];
          sub_100011EDC();
          v43 = [v2 view];
          v44 = sub_100011EF0();
          [v45 v46];
          sub_100011EDC();

          result = [v2 view];
          if (!result)
          {
LABEL_31:
            __break(1u);
            return result;
          }

          v47 = result;
          [result bounds];
          v49 = v48;
          v51 = v50;
          v53 = v52;
          v55 = v54;

          [v34 contentInset];
          sub_100011FA4();
          sub_10001154C(v49, v51, v53, v55, v56, v57);
          sub_100011FA4();
          v95.origin.x = sub_100011EF0();
          v96 = CGRectIntersection(v95, v97);
          width = v96.size.width;
          height = v96.size.height;
          [v42 frame];
          if (width != v61 || height != v60)
          {
            v63 = sub_100012EBC();
            v64 = sub_100012EBC();
            v65 = 4;
            if (v63 >= v64)
            {
              v65 = 1;
            }

            v83 = v65;
            v66 = [objc_opt_self() sharedSettings];
            v84 = objc_opt_self();
            [v66 sidebarSpringDamping];
            v68 = v67;
            [v66 sidebarSpringRepsonse];
            v70 = v69;
            v71 = v86;
            (*(v10 + 16))(v86, v33, v8);
            v72 = v2;
            v73 = (*(v10 + 80) + 24) & ~*(v10 + 80);
            v74 = v10;
            v75 = (v85 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
            v76 = swift_allocObject();
            *(v76 + 16) = v72;
            (*(v74 + 32))(v76 + v73, v71, v8);
            *(v76 + v75) = v83;
            v93 = sub_10001156C;
            v94 = v76;
            aBlock = _NSConcreteStackBlock;
            v90 = 1107296256;
            v91 = sub_10000F6A4;
            v92 = &unk_10001D668;
            v77 = _Block_copy(&aBlock);
            v78 = v72;

            v93 = nullsub_1;
            v94 = 0;
            aBlock = _NSConcreteStackBlock;
            v90 = 1107296256;
            v10 = v74;
            v91 = sub_10000F6E8;
            v92 = &unk_10001D690;
            v79 = _Block_copy(&aBlock);
            [v84 _animateUsingSpringWithDampingRatio:1 response:v77 tracking:v79 dampingRatioSmoothing:v68 responseSmoothing:v70 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
            v80 = v79;
            v36 = v88;
            _Block_release(v80);
            _Block_release(v77);

            v42 = v66;
          }
        }
      }
    }

    v81 = *(v10 + 8);
    v81(v36, v8);
    return (v81)(v33, v8);
  }

  return result;
}

uint64_t sub_10000F394(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100012EDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = objc_opt_self();
  v10 = WFPencilActionConfigurationHighFrameRateReason;
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  (*(v7 + 32))(v12 + v11, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100011648;
  *(v13 + 24) = v12;
  aBlock[4] = sub_100011710;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F67C;
  aBlock[3] = &unk_10001D708;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  LODWORD(v16) = 1117782016;
  LODWORD(v17) = 1123024896;
  LODWORD(v18) = 1123024896;
  [v9 _modifyAnimationsWithPreferredFrameRateRange:v10 updateReason:v14 animations:{v16, v17, v18}];
  _Block_release(v14);

  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_10000F604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_collectionView);
  isa = sub_100012E8C().super.isa;
  [v4 scrollToItemAtIndexPath:isa atScrollPosition:a3 animated:0];
}

uint64_t sub_10000F6A4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000F6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_10000F748()
{
  sub_100004294(&qword_100022510);
  sub_100005AC0();
  v47 = v2;
  v48 = v1;
  sub_100011F8C();
  __chkstk_darwin(v3);
  v46 = &v43 - v4;
  v57 = sub_100012F5C();
  sub_100005AC0();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100005A40();
  v10 = v9 - v8;
  v11 = sub_100012F9C();
  sub_100005AC0();
  v13 = v12;
  v15 = __chkstk_darwin(v14);
  v50 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v43 - v17;
  v45 = v0;

  v19 = sub_10001300C();
  v20 = v11;

  v22 = 0;
  v58 = *(v19 + 16);
  v55 = (v6 + 88);
  v56 = v13 + 16;
  v54 = enum case for SmartShortcutPickerSection.ID.libraryFolder(_:);
  v49 = (v13 + 32);
  v52 = (v13 + 8);
  v53 = (v6 + 8);
  v51 = &_swiftEmptyArrayStorage;
  while (v58 != v22)
  {
    if (v22 >= *(v19 + 16))
    {
      __break(1u);
      return result;
    }

    v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v24 = v19;
    v25 = *(v13 + 72);
    (*(v13 + 16))(v18, v19 + v23 + v25 * v22, v20);
    v26 = v20;
    sub_100012F6C();
    v27 = v57;
    v28 = (*v55)(v10, v57);
    (*v53)(v10, v27);
    if (v28 == v54)
    {
      result = (*v52)(v18, v26);
      ++v22;
      v20 = v26;
      v19 = v24;
    }

    else
    {
      v44 = *v49;
      v44(v50, v18, v26);
      v29 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v29;
      v60 = v29;
      v20 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100011250(0, v31[2] + 1, 1);
        v20 = v26;
        v31 = v60;
      }

      v19 = v24;
      v33 = v31[2];
      v32 = v31[3];
      if (v33 >= v32 >> 1)
      {
        v51 = v20;
        sub_100011250(v32 > 1, v33 + 1, 1);
        v20 = v51;
        v31 = v60;
      }

      ++v22;
      v31[2] = v33 + 1;
      v51 = v31;
      result = (v44)(v31 + v23 + v33 * v25, v50, v20);
    }
  }

  sub_1000114B0();
  sub_100011F40();
  sub_100011504(v34, v35);
  v36 = v46;
  sub_1000132EC();
  v37._rawValue = &off_10001D0F8;
  v38 = v48;
  sub_1000132DC(v37);
  v59 = 0;
  v39 = v51;
  sub_1000132CC();
  v40 = v45;
  *(v45 + OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_visibleSections) = v39;

  v41 = *(v40 + OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_dataSource);
  if (v41)
  {
    v42 = v41;
    sub_10001335C();
  }

  return (*(v47 + 8))(v36, v38);
}

uint64_t sub_10000FBFC()
{
  v1 = sub_100004294(&qword_100022160);
  sub_100005AB4(v1);
  sub_100011F8C();
  __chkstk_darwin(v2);
  v4 = &v15 - v3;
  v5 = sub_100012F9C();
  sub_100005AC0();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100005A40();
  v11 = v10 - v9;
  v12 = *(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_dataSource);
  if (!v12)
  {
    sub_1000042DC(v4, 1, 1, v5);
    return sub_100011DD0(v4, &qword_100022160);
  }

  v13 = v12;
  sub_10001334C();

  if (sub_100006CF8(v4, 1, v5) == 1)
  {
    return sub_100011DD0(v4, &qword_100022160);
  }

  (*(v7 + 32))(v11, v4, v5);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000037C8(v0, v11);
    swift_unknownObjectRelease();
  }

  return (*(v7 + 8))(v11, v5);
}

double sub_10000FEB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_collectionView);
  [v1 contentOffset];
  v3 = v2;
  [v1 contentInset];
  v5 = v3 + v4;
  [v1 contentInset];
  return v5;
}

void sub_10000FF24()
{
  v1 = [*(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_collectionView) layer];
  [v1 removeAllAnimations];

  *(v0 + OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_shouldAllowAnimatedSelection) = 0;
}

void sub_10000FFE0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = [*(v2 + OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_collectionView) layer];
    [v3 removeAllAnimations];

    *(v2 + OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_shouldAllowAnimatedSelection) = 1;
  }
}

uint64_t sub_1000100E4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10000FEB4();
    sub_1000036D8();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000101A4(void *a1)
{
  v1 = sub_100009298(a1);
  if (!v1)
  {
    v5 = 0u;
    v6 = 0u;
    goto LABEL_6;
  }

  v2 = v1;
  sub_1000135EC();
  sub_1000137DC();
  sub_10000CF54(&v4, v2, &v5);

  sub_100009304(&v4);
  if (!*(&v6 + 1))
  {
LABEL_6:
    sub_100011DD0(&v5, &unk_100022500);
    return;
  }

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    Height = CGRectGetHeight(v4);
    sub_100010358(Height);
  }
}

void sub_100010358(double a1)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  sub_100011F04();
  sub_100011F28();
  v8[2] = v5;
  v8[3] = &unk_10001D618;
  v6 = _Block_copy(v8);
  v7 = v1;

  [v3 animateWithDuration:v6 animations:0.4];
  _Block_release(v6);
}

id sub_100010428(uint64_t a1, double a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_collectionView);
  [v3 contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v3 safeAreaInsets];
  if (a2 <= 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = a2 - v10;
  }

  [v3 setContentInset:{v5, v7, v11, v9}];

  return [v3 setScrollIndicatorInsets:{v5, v7, v11, v9}];
}

void sub_1000104E8()
{
  v1 = objc_opt_self();
  sub_100011FD8();
  *(swift_allocObject() + 16) = v0;
  sub_100011F04();
  sub_100011F28();
  v5[2] = v2;
  v5[3] = &unk_10001D5C8;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.4];
  _Block_release(v3);
}

id sub_1000105A4(char *a1)
{
  v2 = [objc_opt_self() sharedProvider];
  [v2 metricsWithInterfaceOrientation:{objc_msgSend(a1, "interfaceOrientation")}];
  v3 = v8;

  v4 = _UISolariumEnabled();
  v5 = *&a1[OBJC_IVAR____TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController_collectionView];
  if ((v4 & 1) == 0)
  {
    [v5 directionalLayoutMargins];
    [v5 setDirectionalLayoutMargins:?];
    v3 = v7 + v8;
  }

  [v5 contentInset];
  [v5 setContentInset:v3];
  [v5 safeAreaInsets];
  [v5 contentInset];

  return [v5 setContentInset:?];
}

_BYTE *storeEnumTagSinglePayload for PencilActionConfigurationSidebarViewController.Section(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1000107F4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100010830()
{
  result = qword_1000224F0;
  if (!qword_1000224F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000224F0);
  }

  return result;
}

uint64_t sub_100010884()
{
  sub_100011FD8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000108C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000108D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001091C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1000134BC();
  *(a1 + 8) = 0x4036000000000000;
  *(a1 + 16) = 0;
  v7 = sub_100004294(&qword_100022650);
  sub_100010A48(a1 + *(v7 + 44));
  v8 = sub_1000134DC();
  sub_10001343C();
  sub_100011EDC();
  v9 = a1 + *(sub_100004294(&qword_100022658) + 36);
  *v9 = v8;
  *(v9 + 8) = v2;
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  *(v9 + 32) = v5;
  *(v9 + 40) = 0;
  *(a1 + *(sub_100004294(&qword_100022660) + 36)) = 0;
  v10 = *(type metadata accessor for PencilActionConfigurationSidebarCell() + 24);
  v11 = *(sub_100004294(&qword_100022668) + 52);
  sub_100012F9C();
  sub_100011F58();
  v13 = *(v12 + 16);

  return v13(a1 + v11, v1 + v10);
}

uint64_t sub_100010A48@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = sub_100004294(&qword_100022670);
  __chkstk_darwin(v1 - 8);
  v3 = &v44 - v2;
  v45 = sub_1000131EC();
  v4 = *(v45 - 8);
  __chkstk_darwin(v45);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000131DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100004294(&qword_100022678);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v46 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v48 = &v44 - v15;
  type metadata accessor for PencilActionConfigurationSidebarCell();
  sub_100012F7C();
  *v10 = vdupq_n_s64(0x4040000000000000uLL);
  (*(v8 + 104))(v10, enum case for IconSize.custom(_:), v7);
  v16 = [objc_opt_self() labelColor];
  v17 = [objc_allocWithZone(WFColor) initWithPlatformColor:v16];

  *v6 = v17;
  v6[8] = 0;
  (*(v4 + 104))(v6, enum case for IconView.DisplayMode.customColor(_:), v45);
  v18 = v48;
  sub_1000131FC();
  sub_10001358C();
  sub_10001346C();
  v19 = (v18 + *(v12 + 44));
  v20 = v52;
  *v19 = v51;
  v19[1] = v20;
  v19[2] = v53;
  v49 = sub_100012F8C();
  v50 = v21;
  sub_100011CB4();
  v22 = sub_10001353C();
  v24 = v23;
  LOBYTE(v12) = v25;
  v26 = sub_1000134EC();
  sub_1000042DC(v3, 1, 1, v26);
  sub_10001350C();
  sub_100011DD0(v3, &qword_100022670);
  v27 = sub_10001352C();
  v29 = v28;
  LOBYTE(v17) = v30;

  sub_100011D08(v22, v24, v12 & 1);

  sub_1000134FC();
  v31 = sub_10001351C();
  v33 = v32;
  LOBYTE(v22) = v34;
  v36 = v35;
  sub_100011D08(v27, v29, v17 & 1);

  KeyPath = swift_getKeyPath();
  v38 = sub_10001357C();
  LOBYTE(v49) = v22 & 1;
  v54 = 0;
  v39 = v48;
  v40 = v46;
  sub_100011D50(v48, v46);
  LOBYTE(v22) = v54;
  LOBYTE(v4) = v49;
  v41 = v47;
  sub_100011D50(v40, v47);
  v42 = v41 + *(sub_100004294(&qword_100022688) + 48);
  *v42 = v31;
  *(v42 + 8) = v33;
  *(v42 + 16) = v4;
  *(v42 + 24) = v36;
  *(v42 + 32) = KeyPath;
  *(v42 + 40) = 1;
  *(v42 + 48) = v22;
  *(v42 + 56) = v38;
  sub_100011DC0(v31, v33, v4 & 1);

  sub_100011DD0(v39, &qword_100022678);
  sub_100011D08(v31, v33, v4 & 1);

  return sub_100011DD0(v40, &qword_100022678);
}

uint64_t sub_100010FA4(uint64_t a1)
{
  v2 = sub_10001344C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10001348C();
}

uint64_t sub_100011074(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_100012F9C(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_100012F9C();

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

unint64_t sub_100011148(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000137BC(*(v2 + 40));

  return sub_10001118C(a1, v4);
}

unint64_t sub_10001118C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100011454(*(v2 + 48) + 40 * i, v7);
    v5 = sub_1000137CC();
    sub_100009304(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

size_t sub_100011250(size_t a1, int64_t a2, char a3)
{
  result = sub_100011270(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100011270(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004294(&qword_100022528);
  v10 = *(sub_100012F9C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100012F9C() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_100011074(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_1000114B0()
{
  result = qword_100022518;
  if (!qword_100022518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100022518);
  }

  return result;
}

uint64_t sub_100011504(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100011584()
{
  v1 = sub_100012EDC();
  sub_100005AC0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_100011660(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(sub_100012EDC() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4, v1 + v3, v5);
}

uint64_t sub_100011738()
{
  swift_unknownObjectWeakDestroy();
  sub_100011FD8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100011774()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t *sub_1000117C0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t type metadata accessor for PencilActionConfigurationSidebarCell()
{
  result = qword_100022608;
  if (!qword_100022608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100011888()
{
  sub_100012F9C();
  sub_100011F58();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100011908(uint64_t a1, uint64_t a2)
{
  v5 = sub_100012F9C();
  sub_100005AB4(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_10000E568(a1, a2, v7);
}

uint64_t sub_1000119C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100004294(&qword_1000225A8);
  sub_100011F98();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_10001326C();
    sub_100011F98();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_100012F9C();
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return sub_100006CF8(v9, a2, v8);
}

uint64_t sub_100011AB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100004294(&qword_1000225A8);
  sub_100011F98();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_10001326C();
    sub_100011F98();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = sub_100012F9C();
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return sub_1000042DC(v11, a2, a2, v10);
}

void sub_100011BA4()
{
  sub_100011C40();
  if (v0 <= 0x3F)
  {
    sub_10001326C();
    if (v1 <= 0x3F)
    {
      sub_100012F9C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100011C40()
{
  if (!qword_100022618)
  {
    sub_10001344C();
    v0 = sub_10001345C();
    if (!v1)
    {
      atomic_store(v0, &qword_100022618);
    }
  }
}

unint64_t sub_100011CB4()
{
  result = qword_100022680;
  if (!qword_100022680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100022680);
  }

  return result;
}

uint64_t sub_100011D08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100011D18@<X0>(uint64_t a1@<X8>)
{
  result = sub_10001349C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100011D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004294(&qword_100022678);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011DC0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100011DD0(uint64_t a1, uint64_t *a2)
{
  sub_100004294(a2);
  sub_100011F58();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100011E6C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000044B8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100011F70()
{
  v3 = *(v1 + 3448);

  return [v0 v3];
}

id sub_100011FB8()
{
  v4 = *(v2 + 48);

  return [v0 v4];
}

uint64_t sub_100011FE4(void *a1)
{
  v2 = sub_100004294(&qword_1000220C8);
  v3 = sub_100005AB4(v2);
  __chkstk_darwin(v3);
  v5 = &v31 - v4;
  v6 = sub_10001317C();
  v7 = sub_100005AB4(v6);
  __chkstk_darwin(v7);
  sub_100005A40();
  v8 = sub_10001315C();
  v9 = sub_100005AB4(v8);
  __chkstk_darwin(v9);
  sub_100005A40();
  v10 = sub_100012EFC();
  v11 = sub_100005AB4(v10);
  __chkstk_darwin(v11);
  sub_100005A40();
  v12 = sub_100012FCC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100005A40();
  v16 = v15 - v14;
  sub_100004294(&qword_1000220D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100014A80;
  v18 = [objc_opt_self() defaultDatabase];
  sub_10001313C();
  sub_100005A9C();
  v19 = sub_10001312C();
  v20 = sub_1000059F4(&qword_1000220D8, &type metadata accessor for SmartShortcutPickerUserLibraryDataSource);
  *(v17 + 32) = v19;
  *(v17 + 40) = v20;
  sub_10001319C();
  sub_100005A9C();
  v21 = sub_10001318C();
  v22 = sub_1000059F4(&qword_1000220E0, &type metadata accessor for SmartShortcutPickerPromotedActionsDataSource);
  *(v17 + 48) = v21;
  *(v17 + 56) = v22;
  (*(v13 + 104))(v16, enum case for SmartShortcutPickerViewStyle.pencilSettings(_:), v12);
  sub_1000131BC();
  sub_100005A9C();
  v23 = sub_1000131AC();
  v24 = sub_1000059F4(&qword_1000220E8, &type metadata accessor for SmartShortcutPickerStaccatoSuggestionsDataSource);
  *(v17 + 64) = v23;
  *(v17 + 72) = v24;
  [objc_allocWithZone(LNAutoShortcutsProvider) init];
  sub_100012EEC();
  sub_100012F1C();
  sub_100005A9C();
  v25 = sub_100012F0C();
  v26 = sub_1000059F4(&qword_1000220F0, &type metadata accessor for SmartShortcutPickerAppShortcutDataSource);
  *(v17 + 80) = v25;
  *(v17 + 88) = v26;
  v27 = a1;
  sub_10001314C();
  v28 = v27;
  sub_10001316C();
  v29 = sub_100012F2C();
  sub_1000042DC(v5, 1, 1, v29);
  sub_10001302C();
  sub_100005A9C();
  return sub_100012FFC();
}

id sub_1000123DC()
{
  v0 = objc_allocWithZone(type metadata accessor for PencilActionConfigurationViewController());

  return sub_100001DC0(v1);
}

uint64_t sub_10001243C(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (!result)
    {
      return result;
    }

    v3 = a1;
    sub_100008A94(v3);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    sub_100008B4C();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1000124AC()
{
  sub_100006CD0(v0 + 16);

  return v0;
}

void sub_1000124E4(void *a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  v3 = a1;

  sub_10001266C();
}

uint64_t sub_100012574()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100008BE8();

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1000125CC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  v2[4] = 0;
  v2[5] = (*(v4 + 168))(a1);
  v2[6] = a1;
  return v2;
}

uint64_t sub_10001266C()
{
  v1 = sub_10001322C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  __chkstk_darwin(v3);
  v46 = &v37 - v4;
  v5 = sub_100004294(&qword_100022920);
  v6 = __chkstk_darwin(v5 - 8);
  v45 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v37 - v8;
  v10 = sub_10001306C();
  v11 = __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v37 - v15;
  __chkstk_darwin(v14);
  v19 = &v37 - v18;
  v20 = *(v0 + 32);
  if (!v20 || (v43 = v0, v44 = v17, v47 = v20, sub_100012D70(), v21 = v20, sub_100004294(&qword_100022938), (swift_dynamicCast() & 1) == 0))
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    return sub_100009238(&v48, &qword_100022928);
  }

  if (!*(&v49 + 1))
  {
    return sub_100009238(&v48, &qword_100022928);
  }

  v41 = v1;
  v42 = v2;
  sub_100012DB4(&v48, v51);
  sub_100012DCC(v51, v51[3]);
  sub_1000130BC();
  v23 = sub_100006CF8(v9, 1, v10);
  if (v23 == 1)
  {
    sub_100009238(v9, &qword_100022920);
    return sub_1000091EC(v51);
  }

  v24 = v44;
  (*(v44 + 32))(v19, v9, v10);
  result = WFLogCategorySystemActionConfiguration;
  if (WFLogCategorySystemActionConfiguration)
  {
    v25 = v46;
    sub_10001320C();
    v26 = *(v24 + 16);
    v26(v16, v19, v10);
    v27 = sub_10001321C();
    v28 = sub_10001370C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v48 = v39;
      *v29 = 136315138;
      v26(v13, v16, v10);
      v38 = sub_1000135FC();
      v40 = v26;
      v31 = v30;
      v32 = *(v24 + 8);
      LODWORD(v44) = v28;
      v32(v16, v10);
      v33 = v32;
      v34 = sub_10000B8F8(v38, v31, &v48);
      v26 = v40;

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v44, "Selecting entry with identifier: %s", v29, 0xCu);
      sub_1000091EC(v39);

      (*(v42 + 8))(v46, v41);
    }

    else
    {

      v35 = *(v24 + 8);
      v35(v16, v10);
      v33 = v35;
      (*(v42 + 8))(v25, v41);
    }

    v36 = v45;
    v26(v45, v19, v10);
    sub_1000042DC(v36, 0, 1, v10);
    sub_10001301C();
    v33(v19, v10);
    return sub_1000091EC(v51);
  }

  __break(1u);
  return result;
}

uint64_t sub_100012D18()
{
  sub_1000124AC();

  return _swift_deallocClassInstance(v0, 56, 7);
}

unint64_t sub_100012D70()
{
  result = qword_100022930;
  if (!qword_100022930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100022930);
  }

  return result;
}

uint64_t sub_100012DB4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100012DCC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100012E10()
{

  return sub_10001381C();
}