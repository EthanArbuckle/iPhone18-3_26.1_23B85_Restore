uint64_t sub_1A46060FC()
{
  result = type metadata accessor for InvitationsItem(319);
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A46061E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvitationsItem(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4606264@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x58))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A460631C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore27PXPinnedTitleViewController_shouldPinTitle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4606360(char a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore27PXPinnedTitleViewController_shouldPinTitle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id PXPinnedTitleViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id PXPinnedTitleViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR____TtC12PhotosUICore27PXPinnedTitleViewController_shouldPinTitle] = 1;
  if (a2)
  {
    v5 = sub_1A524C634();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for PXPinnedTitleViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id PXPinnedTitleViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PXPinnedTitleViewController.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC12PhotosUICore27PXPinnedTitleViewController_shouldPinTitle] = 1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PXPinnedTitleViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PXPinnedTitleViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXPinnedTitleViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4606838@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + class metadata base offset for PXPinnedTitleHostingController + 24))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4606928(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PXPinnedTitleHostingController + 16);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *PXPinnedTitleHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + class metadata base offset for PXPinnedTitleHostingController);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  *(v2 + *(v7 + 16)) = 1;
  (*(v5 + 16))(&v13 - v8, v6);
  v9 = sub_1A5249604();
  v10 = *(v5 + 8);
  v11 = v9;
  v10(a2, v4);
  if (v9)
  {
  }

  return v9;
}

id PXPinnedTitleHostingController.init(coder:)(void *a1)
{
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PXPinnedTitleHostingController + 16)) = 1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PXPinnedTitleHostingController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_1A4606D08@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 32))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4606DF4()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 16);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4606E74(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 16);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A4606F9C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 56))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A460708C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 24);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A460710C(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 24);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1A4607234(void *a1)
{
  v1 = a1;
  v2 = sub_1A4607278();

  return v2;
}

id sub_1A4607278()
{
  v1 = MEMORY[0x1E69E7D40];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for PXForcingInlinePinnedTitleHostingController();
  v2 = objc_msgSendSuper2(&v5, sel_navigationItem);
  v3 = [v2 setLargeTitleDisplayMode_];
  [v2 setHidesBackButton_];
  return v2;
}

uint64_t sub_1A46073E4(uint64_t a1, uint64_t (*a2)(uint64_t), void *a3)
{
  v6 = v3;
  v8 = objc_allocWithZone(v3);
  v9 = a2(a1);
  (*(*(*(v6 + *a3) - 8) + 8))(a1);
  return v9;
}

void *PXForcingInlinePinnedTitleHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + class metadata base offset for PXForcingInlinePinnedTitleHostingController);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - v8;
  *(v2 + *(v10 + 16)) = 3;
  *(v2 + *((*v11 & *v2) + *(v12 + 3816) + 24)) = 1;
  (*(v6 + 16))(&v17 - v8, v7);
  v13 = PXPinnedTitleHostingController.init(coder:rootView:)(a1, v9);
  v14 = *(v6 + 8);
  v15 = v13;
  v14(a2, v5);
  if (v13)
  {
  }

  return v13;
}

id PXForcingInlinePinnedTitleHostingController.init(coder:)(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 16)) = 3;
  *(v1 + *((*v3 & *v1) + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 24)) = 1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PXForcingInlinePinnedTitleHostingController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1A46077A8(void *a1, uint64_t (*a2)(void, void, void))
{
  v3 = a2(0, *((*MEMORY[0x1E69E7D40] & *v2) + *a1), *((*MEMORY[0x1E69E7D40] & *v2) + *a1 + 8));
  v5.receiver = v2;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1A4607840(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 16)) = 3;
  *(v1 + *((*v2 & *v1) + class metadata base offset for PXForcingInlinePinnedTitleHostingController + 24)) = 1;
  return sub_1A3C79F58(a1);
}

void type metadata accessor for LargeTitleDisplayMode()
{
  if (!qword_1EB13ED20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB13ED20);
    }
  }
}

uint64_t sub_1A4607D38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5243834();
  v131 = *(v3 - 8);
  v132 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v133 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C6B740(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v130 = &v125 - v6;
  v140 = sub_1A5243EC4();
  v135 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v134 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5244084();
  v152 = *(v8 - 8);
  v153 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v151 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v146 = &v125 - v11;
  sub_1A4608F40(0);
  v141 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v163 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v142 = (&v125 - v15);
  sub_1A4609F3C();
  v144 = *(v16 - 8);
  v145 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v143 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v161 = &v125 - v19;
  sub_1A4609490(0, &qword_1EB13EE48, sub_1A4609F9C, MEMORY[0x1E69C2928], MEMORY[0x1E697F948]);
  v138 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v139 = &v125 - v21;
  sub_1A460A04C(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v160 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v159 = &v125 - v25;
  sub_1A460A094();
  v148 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v164 = (&v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A460A1E4();
  v149 = *(v28 - 8);
  v150 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v147 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1A5249234();
  v126 = *(v30 - 8);
  v127 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v125 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A460A298(0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v125 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1A52404F4();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v1[12];
  v37 = v1[13];
  v39 = v1[18];
  v40 = v1[19];
  v165 = v1;
  v162 = v38;
  v156 = v37;
  if (v40)
  {
    *&v168 = v39;
    *(&v168 + 1) = v40;
    swift_unknownObjectRetain();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v137 = v39;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v158 = 0;
  v41 = v165;
  v42 = v165[21];
  if (v42)
  {
    *&v168 = v165[20];
    *(&v168 + 1) = v42;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v136 = v165[20];
  v157 = 0;
  v43 = *(v165 + 3);
  v44 = v165[3];
  v154 = a1;
  if (v44 != 1)
  {
    v125 = v43;
    v46 = v165[2];
    v47 = *(v165 + 5);
    v128 = *(v165 + 7);
    v129 = v47;
    v48 = v165[9];
    type metadata accessor for LemonadeICloudLinkCell(0);
    v49 = v41;
    v50 = type metadata accessor for iCloudLinkParticipantImageConfiguration(0);
    sub_1A460C26C(&qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697E7E0], &v35[*(v50 + 32)]);
    v51 = v41[23];
    if (*(v49 + 192) == 1)
    {
      v52 = v49[23];
    }

    else
    {

      sub_1A524D254();
      v53 = v35;
      v54 = sub_1A524A014();
      sub_1A5246DF4();

      v35 = v53;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3DD15BC(v51, 0);
      (*(v126 + 8))(v32, v127);
      v52 = v168;
    }

    *v35 = v46;
    *(v35 + 8) = v125;
    v55 = v128;
    *(v35 + 24) = v129;
    *(v35 + 40) = v55;
    *(v35 + 7) = v48;
    *&v35[*(v50 + 36)] = v52;
    (*(*(v50 - 8) + 56))(v35, 0, 1, v50);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v45 = type metadata accessor for iCloudLinkParticipantImageConfiguration(0);
  (*(*(v45 - 8) + 56))(v35, 1, 1, v45);
  v56 = _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  v57 = v164;
  *v164 = v56;
  v57[1] = v58;
  v59 = shouldUseNewCollectionsLayout()();
  v155 = v35;
  if (v59 && (v60 = v41[22]) != 0)
  {
    v166[0] = v41[22];
    *&v129 = v60;
    v61 = type metadata accessor for LemonadeiCloudLinkModel();
    sub_1A46098E0(&qword_1EB13EE58, type metadata accessor for LemonadeiCloudLinkModel);
    swift_retain_n();
    v62 = v162;
    swift_unknownObjectRetain();
    v63 = MEMORY[0x1E6981E70];
    v64 = sub_1A41F7694();
    LODWORD(v135) = sub_1A3C5A374();
    v65 = sub_1A43C9BB4();
    v67 = v66;
    v68 = swift_allocObject();
    *(v68 + 16) = v65;
    *(v68 + 24) = v67;
    v69 = sub_1A43C9BD0();
    LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(v166, 0, 0, 0, 0, v62, v135 & 1, sub_1A3F8B548, &v168, v64, v68, v69, v63, v61);
    v70 = v173;
    v71 = v139;
    *(v139 + 4) = v172;
    *(v71 + 5) = v70;
    v71[96] = v174;
    v72 = v169;
    *v71 = v168;
    *(v71 + 1) = v72;
    v73 = v171;
    *(v71 + 2) = v170;
    *(v71 + 3) = v73;
    swift_storeEnumTagMultiPayload();
    sub_1A460D5B8(&v168, v166, sub_1A4609F9C);
    sub_1A4609F9C();
    sub_1A46098E0(&qword_1EB13EEA0, sub_1A4609F9C);
    sub_1A46098E0(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    v74 = v159;
    v35 = v155;
    sub_1A5249744();

    sub_1A460C538(&v168, sub_1A4609F9C);
  }

  else
  {
    v179 = 0u;
    v180 = 0u;
    v181 = 1;
    v75 = sub_1A52429A4();
    (*(*(v75 - 8) + 56))(v130, 1, 1, v75);
    (*(v131 + 104))(v133, *MEMORY[0x1E69C2678], v132);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v76 = v134;
    sub_1A5243ED4();
    v77 = v135;
    v78 = v140;
    (*(v135 + 16))(v139, v76, v140);
    swift_storeEnumTagMultiPayload();
    sub_1A4609F9C();
    sub_1A46098E0(&qword_1EB13EEA0, sub_1A4609F9C);
    sub_1A46098E0(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    v74 = v159;
    sub_1A5249744();
    (*(v77 + 8))(v76, v78);
  }

  sub_1A460D480(0, &qword_1EB13EEA8, sub_1A460A128);
  v140 = v164 + *(v79 + 44);
  v80 = v161;
  sub_1A5242CC4();
  v81 = sub_1A5249584();
  v82 = v142;
  *v142 = v81;
  *(v82 + 8) = 0;
  *(v82 + 16) = 1;
  sub_1A460D480(0, &qword_1EB13EEB0, sub_1A4608FFC);
  sub_1A460A2EC(v35, v137, v158, v136, v157, v82 + *(v83 + 44));
  v84 = sub_1A524A064();
  v85 = v82 + *(v141 + 36);
  *v85 = v84;
  __asm { FMOV            V0.2D, #10.0 }

  *(v85 + 8) = _Q0;
  *(v85 + 24) = _Q0;
  *(v85 + 40) = 0;
  v91 = v160;
  sub_1A460D5B8(v74, v160, sub_1A460A04C);
  v92 = v143;
  v93 = v144;
  v94 = *(v144 + 16);
  v95 = v80;
  v96 = v145;
  v94(v143, v95, v145);
  sub_1A460D4EC(v82, v163, sub_1A4608F40);
  v97 = v91;
  v98 = v140;
  sub_1A460D5B8(v97, v140, sub_1A460A04C);
  sub_1A460A15C();
  v100 = v99;
  v94((v98 + *(v99 + 48)), v92, v96);
  v101 = v163;
  sub_1A460D4EC(v163, v98 + *(v100 + 64), sub_1A4608F40);
  sub_1A460C484(v82, sub_1A4608F40);
  v102 = *(v93 + 8);
  v102(v161, v96);
  sub_1A460C538(v159, sub_1A460A04C);
  sub_1A460C484(v101, sub_1A4608F40);
  v102(v92, v96);
  sub_1A460C538(v160, sub_1A460A04C);

  type metadata accessor for LemonadeICloudLinkCell(0);
  v103 = v165;
  v104 = v146;
  sub_1A460C26C(&qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E69C2948], v146);
  v105 = v151;
  sub_1A5243F24();
  v106 = v153;
  v107 = *(v152 + 8);
  v107(v104, v153);
  v108 = sub_1A46098E0(&qword_1EB13EE90, sub_1A460A094);
  v110 = v147;
  v109 = v148;
  v111 = v164;
  sub_1A524A784();
  v107(v105, v106);
  sub_1A460C484(v111, sub_1A460A094);
  v112 = v103[9];
  v176 = v103[8];
  v177 = v112;
  v178 = v103[10];
  v113 = v103[5];
  v172 = v103[4];
  v173 = v113;
  v114 = v103[7];
  v174 = v103[6];
  v175 = v114;
  v115 = v103[1];
  v168 = *v103;
  v169 = v115;
  v116 = v103[3];
  v170 = v103[2];
  v171 = v116;
  v167[3] = &type metadata for iCloudLinkItem;
  v167[4] = sub_1A460C4E4();
  v117 = swift_allocObject();
  v167[0] = v117;
  v118 = v103[9];
  v117[9] = v103[8];
  v117[10] = v118;
  v117[11] = v103[10];
  v119 = v103[5];
  v117[5] = v103[4];
  v117[6] = v119;
  v120 = v103[7];
  v117[7] = v103[6];
  v117[8] = v120;
  v121 = v103[1];
  v117[1] = *v103;
  v117[2] = v121;
  v122 = v103[3];
  v117[3] = v103[2];
  v117[4] = v122;
  sub_1A41855E8(&v168, v166);
  v166[0] = v109;
  v166[1] = v108;
  swift_getOpaqueTypeConformance2();
  v123 = v150;
  sub_1A524A554();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v149 + 8))(v110, v123);
  __swift_destroy_boxed_opaque_existential_0(v167);
  return sub_1A460C538(v155, sub_1A460A298);
}

void sub_1A4608F68()
{
  if (!qword_1EB13ED30)
  {
    sub_1A4608FFC(255);
    sub_1A46098E0(&qword_1EB13EE40, sub_1A4608FFC);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13ED30);
    }
  }
}

void sub_1A4609030()
{
  if (!qword_1EB13ED40)
  {
    sub_1A46090B4();
    sub_1A4609AF0(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB13ED40);
    }
  }
}

void sub_1A46090B4()
{
  if (!qword_1EB13ED48)
  {
    sub_1A4609148(255);
    sub_1A46098E0(&qword_1EB13EE00, sub_1A4609148);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13ED48);
    }
  }
}

void sub_1A460917C()
{
  if (!qword_1EB13ED58)
  {
    sub_1A46091E4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13ED58);
    }
  }
}

void sub_1A46091E4()
{
  if (!qword_1EB13ED60)
  {
    sub_1A4609278(255);
    sub_1A4609928(&qword_1EB13EDE8, sub_1A4609278, sub_1A46099A4);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13ED60);
    }
  }
}

void sub_1A46092D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4609360()
{
  if (!qword_1EB13ED80)
  {
    sub_1A4609400(255);
    sub_1A4609750();
    sub_1A3FA9580();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13ED80);
    }
  }
}

void sub_1A4609490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A4609514()
{
  if (!qword_1EB13ED98)
  {
    sub_1A4609570();
    v0 = sub_1A52425B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13ED98);
    }
  }
}

unint64_t sub_1A4609570()
{
  result = qword_1EB1CA528[0];
  if (!qword_1EB1CA528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CA528);
  }

  return result;
}

void sub_1A46095C4()
{
  if (!qword_1EB13EDA0)
  {
    sub_1A4609658(255);
    sub_1A4609928(&qword_1EB13EDB8, sub_1A4609658, sub_1A460971C);
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EDA0);
    }
  }
}

void sub_1A460968C()
{
  if (!qword_1EB13EDB0)
  {
    sub_1A3FA9580();
    v0 = sub_1A52488F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EDB0);
    }
  }
}

unint64_t sub_1A4609750()
{
  result = qword_1EB13EDC8;
  if (!qword_1EB13EDC8)
  {
    sub_1A4609400(255);
    sub_1A4609800();
    sub_1A46098E0(&qword_1EB13EDE0, sub_1A46095C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EDC8);
  }

  return result;
}

unint64_t sub_1A4609800()
{
  result = qword_1EB13EDD0;
  if (!qword_1EB13EDD0)
  {
    sub_1A4609448(255);
    sub_1A46098E0(&qword_1EB13EDD8, sub_1A4609514);
    sub_1A46098E0(&qword_1EB1245F8, sub_1A3FA95D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EDD0);
  }

  return result;
}

uint64_t sub_1A46098E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4609928(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A46099A4()
{
  result = qword_1EB13EDF0;
  if (!qword_1EB13EDF0)
  {
    sub_1A46092AC(255);
    sub_1A4609A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EDF0);
  }

  return result;
}

unint64_t sub_1A4609A24()
{
  result = qword_1EB13EDF8;
  if (!qword_1EB13EDF8)
  {
    sub_1A4609338(255);
    sub_1A4609400(255);
    sub_1A4609750();
    sub_1A3FA9580();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EDF8);
  }

  return result;
}

void sub_1A4609B24()
{
  if (!qword_1EB13EE10)
  {
    sub_1A4609BA4();
    sub_1A4609CEC(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EE10);
    }
  }
}

void sub_1A4609BA4()
{
  if (!qword_1EB13EE18)
  {
    sub_1A4609C28();
    sub_1A4609D58();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13EE18);
    }
  }
}

void sub_1A4609C28()
{
  if (!qword_1EB13EE20)
  {
    sub_1A4609490(255, &qword_1EB12C9C0, sub_1A3DF14C0, sub_1A41E5550, MEMORY[0x1E697E830]);
    sub_1A4609CEC(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EE20);
    }
  }
}

void sub_1A4609CEC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A460D688(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A4609D58()
{
  result = qword_1EB13EE28;
  if (!qword_1EB13EE28)
  {
    sub_1A4609C28();
    sub_1A4609DF8();
    sub_1A4609EEC(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EE28);
  }

  return result;
}

unint64_t sub_1A4609DF8()
{
  result = qword_1EB13EE30;
  if (!qword_1EB13EE30)
  {
    sub_1A4609490(255, &qword_1EB12C9C0, sub_1A3DF14C0, sub_1A41E5550, MEMORY[0x1E697E830]);
    sub_1A405D614();
    sub_1A46098E0(&qword_1EB13EE38, sub_1A41E5550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EE30);
  }

  return result;
}

uint64_t sub_1A4609EEC(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4609CEC(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4609F3C()
{
  if (!qword_1EB13CEC0)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CEC0);
    }
  }
}

void sub_1A4609F9C()
{
  if (!qword_1EB13EE50)
  {
    type metadata accessor for LemonadeiCloudLinkModel();
    sub_1A46098E0(&qword_1EB13EE58, type metadata accessor for LemonadeiCloudLinkModel);
    v0 = type metadata accessor for LemonadeMaterialTitleCell();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EE50);
    }
  }
}

void sub_1A460A094()
{
  if (!qword_1EB13EE68)
  {
    sub_1A460A128(255);
    sub_1A46098E0(&qword_1EB13EE80, sub_1A460A128);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EE68);
    }
  }
}

void sub_1A460A15C()
{
  if (!qword_1EB13EE78)
  {
    sub_1A460A04C(255);
    sub_1A4609F3C();
    sub_1A4608F40(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13EE78);
    }
  }
}

void sub_1A460A1E4()
{
  if (!qword_1EB13EE88)
  {
    sub_1A460A094();
    sub_1A46098E0(&qword_1EB13EE90, sub_1A460A094);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13EE88);
    }
  }
}

uint64_t sub_1A460A2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a5;
  v51 = a2;
  v52 = a4;
  v59 = a6;
  sub_1A4609C28();
  v54 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1A4609B24();
  v10 = *(v9 - 8);
  v60 = v9;
  v61 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4609AF0(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v58 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v50 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  sub_1A46091E4();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v50 - v26;
  sub_1A46090B4();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v56 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v50 - v31;
  *v32 = sub_1A52492F4();
  *(v32 + 1) = 0;
  v32[16] = 1;
  sub_1A460D480(0, &qword_1EB13EF38, sub_1A4609148);
  v34 = &v32[*(v33 + 44)];
  *v27 = sub_1A5249574();
  *(v27 + 1) = 0;
  v27[16] = 1;
  sub_1A460D480(0, &qword_1EB13EF40, sub_1A4609278);
  sub_1A460AC14(a1, &v27[*(v35 + 44)]);
  sub_1A460D4EC(v27, v24, sub_1A46091E4);
  *v34 = 0;
  v34[8] = 1;
  sub_1A460917C();
  sub_1A460D4EC(v24, &v34[*(v36 + 48)], sub_1A46091E4);
  sub_1A460C484(v27, sub_1A46091E4);
  sub_1A460C484(v24, sub_1A46091E4);
  if (a3)
  {
    v37 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v37 = v51 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {
      v62 = v51;
      v63 = a3;
      sub_1A3D5F9DC();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v38 = v60;
  v39 = v61 + 56;
  v40 = *(v61 + 56);
  v40(v21, 1, 1, v60);
  if (v55)
  {
    v41 = HIBYTE(v55) & 0xF;
    if ((v55 & 0x2000000000000000) == 0)
    {
      v41 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (v41)
    {
      v62 = v52;
      v63 = v55;
      sub_1A3D5F9DC();
      v61 = v39;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v40(v18, 1, 1, v38);
  v42 = v56;
  sub_1A460D4EC(v32, v56, sub_1A46090B4);
  v43 = v57;
  sub_1A460D4EC(v21, v57, sub_1A4609AF0);
  v44 = v58;
  sub_1A460D4EC(v18, v58, sub_1A4609AF0);
  v45 = v59;
  sub_1A460D4EC(v42, v59, sub_1A46090B4);
  sub_1A4609030();
  v47 = v46;
  v48 = v45 + *(v46 + 48);
  *v48 = 0;
  *(v48 + 8) = 1;
  sub_1A460D4EC(v43, v45 + *(v46 + 64), sub_1A4609AF0);
  sub_1A460D4EC(v44, v45 + *(v47 + 80), sub_1A4609AF0);
  sub_1A460C484(v18, sub_1A4609AF0);
  sub_1A460C484(v21, sub_1A4609AF0);
  sub_1A460C484(v32, sub_1A46090B4);
  sub_1A460C484(v44, sub_1A4609AF0);
  sub_1A460C484(v43, sub_1A4609AF0);
  return sub_1A460C484(v42, sub_1A46090B4);
}

uint64_t sub_1A460AC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v67 = a2;
  v63 = sub_1A5241F84();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A52429A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4609400(0);
  v68 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4609338(0);
  v59 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46092AC(0);
  v69 = *(v12 - 8);
  v70 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v57 - v15;
  sub_1A460A298(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for iCloudLinkParticipantImageConfiguration(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v57 - v24;
  sub_1A460D5B8(v66, v18, sub_1A460A298);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1A460C538(v18, sub_1A460A298);
    return (*(v69 + 56))(v67, 1, 1, v70);
  }

  else
  {
    v58 = v25;
    sub_1A460D554(v18, v25);
    sub_1A460D5B8(v25, v22, type metadata accessor for iCloudLinkParticipantImageConfiguration);
    (*(v4 + 104))(v6, *MEMORY[0x1E69C2050], v3);
    sub_1A4609570();
    sub_1A5242594();
    sub_1A4609448(0);
    *&v9[*(v27 + 36)] = 256;
    v28 = sub_1A524BC74();
    v30 = v29;
    v31 = sub_1A524B434();
    sub_1A5247EE4();
    v32 = v77[13];
    v33 = v77[14];
    v34 = v77[15];
    v35 = v77[11];
    v36 = v77[12];
    v37 = sub_1A524BC74();
    *&v71 = v35;
    *(&v71 + 1) = v36;
    *&v72 = v32;
    *(&v72 + 1) = v33;
    *&v73 = v34;
    *(&v73 + 1) = v31;
    *&v74 = 256;
    *(&v74 + 1) = v37;
    *&v75 = v38;
    *(&v75 + 1) = v28;
    v76 = v30;
    v77[0] = v35;
    v39 = &v9[*(v68 + 36)];
    v40 = v74;
    *(v39 + 2) = v73;
    *(v39 + 3) = v40;
    *(v39 + 4) = v75;
    *(v39 + 10) = v30;
    v41 = v72;
    *v39 = v71;
    *(v39 + 1) = v41;
    v77[1] = v36;
    v77[2] = v32;
    v77[3] = v33;
    v77[4] = v34;
    v77[5] = v31;
    v77[6] = 256;
    v77[7] = v37;
    v77[8] = v38;
    v77[9] = v28;
    v77[10] = v30;
    sub_1A460D5B8(&v71, v81, sub_1A46095C4);
    sub_1A460C538(v77, sub_1A46095C4);
    v42 = v60;
    sub_1A5241F64();
    sub_1A4609750();
    sub_1A3FA9580();
    v43 = v62;
    sub_1A524A4E4();
    (*(v61 + 8))(v42, v63);
    sub_1A460C538(v9, sub_1A4609400);
    sub_1A524BC74();
    sub_1A52481F4();
    v44 = &v43[*(v59 + 36)];
    v45 = v79;
    *v44 = v78;
    *(v44 + 1) = v45;
    *(v44 + 2) = v80;
    sub_1A524BC74();
    sub_1A5248AD4();
    sub_1A460C538(v58, type metadata accessor for iCloudLinkParticipantImageConfiguration);
    v46 = v43;
    v47 = v65;
    sub_1A460D620(v46, v65, sub_1A4609338);
    v48 = v70;
    v49 = (v47 + *(v70 + 36));
    v50 = v81[5];
    v49[4] = v81[4];
    v49[5] = v50;
    v49[6] = v81[6];
    v51 = v81[1];
    *v49 = v81[0];
    v49[1] = v51;
    v52 = v81[3];
    v49[2] = v81[2];
    v49[3] = v52;
    v53 = v47;
    v54 = v64;
    sub_1A460D620(v53, v64, sub_1A46092AC);
    v55 = v54;
    v56 = v67;
    sub_1A460D620(v55, v67, sub_1A46092AC);
    return (*(v69 + 56))(v56, 0, 1, v48);
  }
}

uint64_t sub_1A460B348@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[9];
  *(a3 + 128) = a1[8];
  *(a3 + 144) = v4;
  *(a3 + 160) = a1[10];
  v5 = a1[5];
  *(a3 + 64) = a1[4];
  *(a3 + 80) = v5;
  v6 = a1[7];
  *(a3 + 96) = a1[6];
  *(a3 + 112) = v6;
  v7 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v7;
  v8 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v8;
  *(a3 + 176) = a2;
  *(a3 + 184) = swift_getKeyPath();
  *(a3 + 192) = 0;
  v9 = type metadata accessor for LemonadeICloudLinkCell(0);
  v10 = *(v9 + 28);
  *(a3 + v10) = swift_getKeyPath();
  v11 = MEMORY[0x1E697DCB8];
  sub_1A3C6B740(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v12 = *(v9 + 32);
  *(a3 + v12) = swift_getKeyPath();
  sub_1A3C6B740(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], v11);

  return swift_storeEnumTagMultiPayload();
}

void sub_1A460B480()
{
  sub_1A524E404();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A460B638()
{
  if (v0[1])
  {
    sub_1A524ECB4();
    sub_1A524C794();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1A524ECB4();
    if (v0[3])
    {
LABEL_3:
      sub_1A524ECB4();
      sub_1A524C794();
      if (v0[5])
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_1A524ECB4();
      if (v0[7])
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  sub_1A524ECB4();
  if (!v0[5])
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_1A524ECB4();
  sub_1A524C794();
  if (v0[7])
  {
LABEL_5:
    sub_1A524ECB4();
    sub_1A524C794();
    goto LABEL_10;
  }

LABEL_9:
  sub_1A524ECB4();
LABEL_10:
  v1 = type metadata accessor for iCloudLinkParticipantImageConfiguration(0);
  sub_1A5248714();
  sub_1A46098E0(&qword_1EB13EF20, MEMORY[0x1E697E7E0]);
  sub_1A524C4B4();
  v2 = *(v0 + *(v1 + 36));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x1A590A040](*&v2);
}

uint64_t sub_1A460B7E0()
{
  sub_1A524EC94();
  sub_1A460B638();
  return sub_1A524ECE4();
}

uint64_t sub_1A460B824()
{
  sub_1A524EC94();
  sub_1A460B638();
  return sub_1A524ECE4();
}

void sub_1A460B864()
{
  sub_1A460CD30();
  type metadata accessor for iCloudLinkParticipantImageConfiguration(0);
  sub_1A460CCEC(qword_1EB1CA970);
  sub_1A3DBB130();
  sub_1A3DBB140();
}

uint64_t sub_1A460B8EC@<X0>(uint64_t a1@<X0>, void (*a2)(_BYTE *)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  if (qword_1EB1CA500 != -1)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v11 = a6;
    v12 = a5;
    swift_once();
    a1 = v8;
    a5 = v12;
    a6 = v11;
    a2 = v9;
    a3 = v10;
  }

  result = sub_1A3DBB330(a1, a2, a3, a5, a6);
  *a4 = result;
  return result;
}

void sub_1A460B988()
{
  if (qword_1EB1CA500 != -1)
  {
    swift_once();
  }

  sub_1A3DBB71C();
}

uint64_t sub_1A460B9F0()
{
  v0 = objc_opt_self();
  sub_1A3C52C70(0, &qword_1EB126660);
  v1 = sub_1A524CA14();
  v2 = [v0 transientAssetCollectionWithAssets:v1 title:0];

  v3 = [objc_opt_self() invitationWithAssetCollection_];
  sub_1A4622A28(0, 0, 0, 0, 0x796E6E686F4ALL, 0xE600000000000000, 0x656573656C707041, 0xE900000000000064, v9, 0, 0);
  v4 = v3;
  v7.n128_u64[1] = 0x656C746974627553;
  *(&v6 + 1) = 0x656C746974627553;
  v7.n128_u64[0] = 0xEA00000000003120;
  *&v6 = 0xE500000000000000;
  sub_1A4622A98(v4, 0, v9, 0, 0, 0x5420726574736F50, 0xEC000000656C7469, 0x656C746954, v8, v6, v7, 0xEA00000000003220);
  sub_1A524A044();
  sub_1A46092D4(0, &qword_1EB13EEC0, sub_1A460C668);
  sub_1A460C7A4();
  sub_1A5247D14();

  return sub_1A440594C(v8);
}

uint64_t sub_1A460BBF0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for LemonadeICloudLinkCell(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v63 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v63 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v63 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v63 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  v23 = a1[9];
  *(v22 + 8) = a1[8];
  *(v22 + 9) = v23;
  *(v22 + 10) = a1[10];
  v24 = a1[5];
  *(v22 + 4) = a1[4];
  *(v22 + 5) = v24;
  v25 = a1[7];
  *(v22 + 6) = a1[6];
  *(v22 + 7) = v25;
  v26 = a1[1];
  *v22 = *a1;
  *(v22 + 1) = v26;
  v27 = a1[3];
  *(v22 + 2) = a1[2];
  *(v22 + 3) = v27;
  *(v22 + 22) = 0;
  *(v22 + 23) = swift_getKeyPath();
  v22[192] = 0;
  v28 = *(v4 + 36);
  *&v22[v28] = swift_getKeyPath();
  v29 = MEMORY[0x1E697DCB8];
  sub_1A3C6B740(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v30 = *(v4 + 40);
  *&v22[v30] = swift_getKeyPath();
  sub_1A3C6B740(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], v29);
  swift_storeEnumTagMultiPayload();
  v31 = a1[9];
  *(v19 + 8) = a1[8];
  *(v19 + 9) = v31;
  *(v19 + 10) = a1[10];
  v32 = a1[5];
  *(v19 + 4) = a1[4];
  *(v19 + 5) = v32;
  v33 = a1[7];
  *(v19 + 6) = a1[6];
  *(v19 + 7) = v33;
  v34 = a1[1];
  *v19 = *a1;
  *(v19 + 1) = v34;
  v35 = a1[3];
  *(v19 + 2) = a1[2];
  *(v19 + 3) = v35;
  *(v19 + 22) = 0;
  *(v19 + 23) = swift_getKeyPath();
  v19[192] = 0;
  v36 = *(v4 + 36);
  *&v19[v36] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v37 = *(v4 + 40);
  *&v19[v37] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v38 = a1[9];
  *(v16 + 8) = a1[8];
  *(v16 + 9) = v38;
  *(v16 + 10) = a1[10];
  v39 = a1[5];
  *(v16 + 4) = a1[4];
  *(v16 + 5) = v39;
  v40 = a1[7];
  *(v16 + 6) = a1[6];
  *(v16 + 7) = v40;
  v41 = a1[1];
  *v16 = *a1;
  *(v16 + 1) = v41;
  v42 = a1[3];
  *(v16 + 2) = a1[2];
  *(v16 + 3) = v42;
  *(v16 + 22) = 0;
  *(v16 + 23) = swift_getKeyPath();
  v16[192] = 0;
  v43 = *(v4 + 36);
  *&v16[v43] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v44 = *(v4 + 40);
  *&v16[v44] = swift_getKeyPath();
  v45 = v16;
  v63 = v16;
  swift_storeEnumTagMultiPayload();
  v46 = a1[9];
  v47 = v64;
  *(v64 + 8) = a1[8];
  *(v47 + 144) = v46;
  *(v47 + 160) = a1[10];
  v48 = a1[5];
  *(v47 + 64) = a1[4];
  *(v47 + 80) = v48;
  v49 = a1[7];
  *(v47 + 96) = a1[6];
  *(v47 + 112) = v49;
  v50 = a1[1];
  *v47 = *a1;
  *(v47 + 16) = v50;
  v51 = a1[3];
  *(v47 + 32) = a1[2];
  *(v47 + 48) = v51;
  *(v47 + 176) = 0;
  *(v47 + 184) = swift_getKeyPath();
  *(v47 + 192) = 0;
  v52 = *(v4 + 36);
  *(v47 + v52) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v53 = *(v4 + 40);
  *(v47 + v53) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v54 = v69;
  sub_1A460D5B8(v22, v69, type metadata accessor for LemonadeICloudLinkCell);
  v55 = v65;
  sub_1A460D5B8(v19, v65, type metadata accessor for LemonadeICloudLinkCell);
  v56 = v45;
  v57 = v66;
  sub_1A460D5B8(v56, v66, type metadata accessor for LemonadeICloudLinkCell);
  v58 = v67;
  sub_1A460D5B8(v47, v67, type metadata accessor for LemonadeICloudLinkCell);
  v59 = v68;
  sub_1A460D5B8(v54, v68, type metadata accessor for LemonadeICloudLinkCell);
  sub_1A460C730();
  v61 = v60;
  sub_1A460D5B8(v55, v59 + *(v60 + 48), type metadata accessor for LemonadeICloudLinkCell);
  sub_1A460D5B8(v57, v59 + *(v61 + 64), type metadata accessor for LemonadeICloudLinkCell);
  sub_1A460D5B8(v58, v59 + *(v61 + 80), type metadata accessor for LemonadeICloudLinkCell);
  sub_1A41855E8(a1, v70);
  sub_1A41855E8(a1, v70);
  sub_1A41855E8(a1, v70);
  sub_1A41855E8(a1, v70);
  sub_1A460C538(v47, type metadata accessor for LemonadeICloudLinkCell);
  sub_1A460C538(v63, type metadata accessor for LemonadeICloudLinkCell);
  sub_1A460C538(v19, type metadata accessor for LemonadeICloudLinkCell);
  sub_1A460C538(v22, type metadata accessor for LemonadeICloudLinkCell);
  sub_1A460C538(v58, type metadata accessor for LemonadeICloudLinkCell);
  sub_1A460C538(v57, type metadata accessor for LemonadeICloudLinkCell);
  sub_1A460C538(v55, type metadata accessor for LemonadeICloudLinkCell);
  return sub_1A460C538(v69, type metadata accessor for LemonadeICloudLinkCell);
}

uint64_t sub_1A460C1D4(uint64_t a1)
{
  v2 = sub_1A460D3AC();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A460C220(uint64_t a1)
{
  v2 = sub_1A460D3AC();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t sub_1A460C26C@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C6B740(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A460D400(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_1A524D254();
    v19 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1A460C484(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A460C4E4()
{
  result = qword_1EB13EEB8;
  if (!qword_1EB13EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EEB8);
  }

  return result;
}

uint64_t sub_1A460C538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1A460C598@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A460D480(0, &qword_1EB13EF30, sub_1A460C6FC);
  sub_1A460BBF0(v3, a1 + *(v4 + 44));
  LOBYTE(v3) = sub_1A524A064();
  sub_1A46092D4(0, &qword_1EB13EEC0, sub_1A460C668);
  v6 = a1 + *(v5 + 36);
  *v6 = v3;
  result = 0.0;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  return result;
}

void sub_1A460C668()
{
  if (!qword_1EB13EEC8)
  {
    sub_1A460C6FC(255);
    sub_1A46098E0(&qword_1EB13EEE0, sub_1A460C6FC);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EEC8);
    }
  }
}

void sub_1A460C730()
{
  if (!qword_1EB13EED8)
  {
    type metadata accessor for LemonadeICloudLinkCell(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB13EED8);
    }
  }
}

unint64_t sub_1A460C7A4()
{
  result = qword_1EB13EEE8;
  if (!qword_1EB13EEE8)
  {
    sub_1A46092D4(255, &qword_1EB13EEC0, sub_1A460C668);
    sub_1A46098E0(&qword_1EB13EEF0, sub_1A460C668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EEE8);
  }

  return result;
}

unint64_t sub_1A460C898()
{
  result = qword_1EB13EEF8;
  if (!qword_1EB13EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EEF8);
  }

  return result;
}

void sub_1A460C930()
{
  sub_1A3C6B740(319, &qword_1EB13EF00, type metadata accessor for LemonadeiCloudLinkModel, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A460D688(319, &qword_1EB124830, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A3C6B740(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A3C6B740(319, &qword_1EB124710, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A460CAB8()
{
  if (!qword_1EB13EF10)
  {
    sub_1A46092D4(255, &qword_1EB13EEC0, sub_1A460C668);
    sub_1A460C7A4();
    v0 = sub_1A5247D04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EF10);
    }
  }
}

void sub_1A460CB68()
{
  sub_1A460D688(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A5248714();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A460CC64()
{
  result = qword_1EB1CA8E0;
  if (!qword_1EB1CA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CA8E0);
  }

  return result;
}

uint64_t sub_1A460CCEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for iCloudLinkParticipantImageConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A460CD30()
{
  if (!qword_1EB13EF18)
  {
    type metadata accessor for iCloudLinkParticipantImageConfiguration(255);
    sub_1A460CCEC(qword_1EB1CA970);
    v0 = type metadata accessor for PhotosAsyncImageProviderCache();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EF18);
    }
  }
}

BOOL sub_1A460CDB0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7)
  {
    if (!v8 || (a1[2] != a2[2] || v7 != v8) && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = a1[5];
  v10 = a2[5];
  if (v9)
  {
    if (!v10 || (a1[4] != a2[4] || v9 != v10) && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = a1[7];
  v12 = a2[7];
  if (v11)
  {
    if (!v12 || (a1[6] != a2[6] || v11 != v12) && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = type metadata accessor for iCloudLinkParticipantImageConfiguration(0);
  if (sub_1A5248704())
  {
    return *(a1 + *(v13 + 36)) == *(a2 + *(v13 + 36));
  }

  return 0;
}

void sub_1A460CF04(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = a2;
  v13 = a3;
  v4 = sub_1A5248714();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  v10[1] = a1[2];
  v10[2] = v8;
  v9 = a1[7];
  v10[3] = a1[6];
  v10[4] = v9;
  type metadata accessor for iCloudLinkParticipantImageConfiguration(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E697E7D8], v4);
  v11 = sub_1A5248704();
  (*(v5 + 8))(v7, v4);
  PXSizeScale();
}

void sub_1A460D1EC(void *a1, void *a2, id a3)
{
  v4 = *(v3 + 16);
  if (a1)
  {
    if (a2)
    {
      v7 = a1;
      [a2 BOOLValue];
    }

    else
    {
      v9 = a1;
    }

    [a1 px_pixelSize];
    sub_1A524D9B4();
  }

  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v10 = sub_1A5242584();
    sub_1A46098E0(&qword_1EB143160, MEMORY[0x1E69C1EC0]);
    v8 = swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x1E69C1EB0], v10);
    a3 = 0;
  }

  *&v13 = v8;
  v14 = 1;
  v12 = a3;
  v4(&v13);
}

unint64_t sub_1A460D3AC()
{
  result = qword_1EB13EF28;
  if (!qword_1EB13EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EF28);
  }

  return result;
}

uint64_t sub_1A460D400(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C6B740(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A460D480(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A460D4EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A460D554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for iCloudLinkParticipantImageConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A460D5B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A460D620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A460D688(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A460D6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31[0] = a1;
  sub_1A3C4C344(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v31 - v4;
  v6 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 8) = 1;
  v9 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0);
  v10 = v9[6];
  v11 = *MEMORY[0x1E69C2418];
  v12 = sub_1A5243334();
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = v9[7];
  v14 = sub_1A3C47918();
  v16 = v15;
  v17 = sub_1A3C47918();
  v19 = v18;
  v20 = sub_1A3C4ED50();
  v33 = 1;
  *v8 = xmmword_1A5317AE0;
  v8[16] = 1;
  *(v8 + 3) = 2;
  v8[32] = 1;
  *(v8 + 5) = v14;
  *(v8 + 6) = v16;
  *(v8 + 7) = v17;
  *(v8 + 8) = v19;
  *(v8 + 72) = xmmword_1A5317AF0;
  v8[88] = 0;
  v8[89] = v20;
  swift_storeEnumTagMultiPayload();
  sub_1A3C4ED54(v5);
  sub_1A3C52D78(v8, 0, v5, a2 + v13);
  v21 = v9[8];
  v22 = *MEMORY[0x1E69C2958];
  v23 = sub_1A5244094();
  (*(*(v23 - 8) + 104))(a2 + v21, v22, v23);
  *(a2 + v9[9]) = 1;
  v24 = v31[0];
  *a2 = v31[0];
  v25 = qword_1EB15C780;
  v26 = v24;
  v27 = v26;
  if (v25 != -1)
  {
    v26 = swift_once();
  }

  v28 = qword_1EB15C788;
  MEMORY[0x1EEE9AC00](v26);
  v31[-2] = v27;

  os_unfair_lock_lock((v28 + 24));
  sub_1A460E0DC((v28 + 16), &v32);
  os_unfair_lock_unlock((v28 + 24));

  v29 = v32;

  *(a2 + v9[10]) = v29;
  return result;
}

void sub_1A460D9DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
  v5 = *(v4 + 16);
  v6 = objc_opt_self();
  v16 = v5;
  v7 = [v6 sharedLibraryStatusProviderWithPhotoLibrary_];
  v8 = [v7 sharedLibrary];
  if (v8)
  {
    v9 = [v8 rule];
    v10 = [v9 personUUIDs];

    v11 = sub_1A524CA34();
    v12 = *(v11 + 16);

    v13 = v12 != 0;
  }

  else
  {
    v13 = 0;
  }

  *(a2 + 16) = 0x4026000000000000;
  *a2 = a1;
  *(a2 + 8) = v13;
  v14 = *(v4 + 16);
  *(swift_allocObject() + 16) = v14;
  type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider.SharedLibrarySuggestionsPlaceholderView(0);
  sub_1A3C52C70(0, &qword_1EB1206D0);
  v15 = v14;

  sub_1A5247C74();
  *(swift_allocObject() + 16) = v15;
  type metadata accessor for SharedLibraryFilterViewModel();
  sub_1A5247C74();

  swift_unknownObjectRelease();
}

uint64_t sub_1A460DBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LemonadeSharedLibrarySuggestionCell();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A460F690(0, &qword_1EB13EF48, sub_1A460E258, type metadata accessor for LemonadeSharedLibrarySuggestionCell, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v26 - v8;
  if (shouldUseNewCollectionsLayout()())
  {
    v27 = a1;
    v10 = *(*a1 + 200);

    v26[0] = v10(v11);
    v12 = type metadata accessor for LemonadeSharedLibrarySuggestionModel();
    sub_1A460FD40(&qword_1EB13EF58, type metadata accessor for LemonadeSharedLibrarySuggestionModel);
    v26[1] = a2;
    v26[2] = v4;
    v13 = MEMORY[0x1E6981E70];
    v14 = sub_1A41F7694();
    v15 = sub_1A3C5A374();
    v16 = sub_1A43C9BB4();
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = v18;
    v20 = sub_1A43C9BD0();
    LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(&v27, 0, 0, 0, 0, v26[0], v15 & 1, sub_1A3F8B548, v28, v14, v19, v20, v13, v12);
    v21 = v28[5];
    *(v9 + 4) = v28[4];
    *(v9 + 5) = v21;
    v9[96] = v29;
    v22 = v28[1];
    *v9 = v28[0];
    *(v9 + 1) = v22;
    v23 = v28[3];
    *(v9 + 2) = v28[2];
    *(v9 + 3) = v23;
    swift_storeEnumTagMultiPayload();
    sub_1A460E258();
    sub_1A460FD40(&qword_1EB13EF60, sub_1A460E258);
    sub_1A460FD40(&qword_1EB13EF68, type metadata accessor for LemonadeSharedLibrarySuggestionCell);
    return sub_1A5249744();
  }

  else
  {

    sub_1A4633164(v25, v6);
    sub_1A460E308(v6, v9, type metadata accessor for LemonadeSharedLibrarySuggestionCell);
    swift_storeEnumTagMultiPayload();
    sub_1A460E258();
    sub_1A460FD40(&qword_1EB13EF60, sub_1A460E258);
    sub_1A460FD40(&qword_1EB13EF68, type metadata accessor for LemonadeSharedLibrarySuggestionCell);
    sub_1A5249744();
    return sub_1A4610220(v6, type metadata accessor for LemonadeSharedLibrarySuggestionCell);
  }
}

uint64_t sub_1A460E040()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A460E078()
{
  v0 = [objc_opt_self() weakToStrongObjectsMapTable];
  sub_1A3C4A700();
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1EB15C788 = result;
  return result;
}

id sub_1A460E0DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  result = [*a1 objectForKey_];
  if (!result)
  {
    type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider.UnreadVisibilityMonitor();
    v7 = swift_allocObject();
    *(v7 + 24) = 0;
    *(v7 + 16) = v4;
    [v5 setObject:v7 forKey:v4];
    result = v7;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1A460E1A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SharedLibraryFilterViewModel();
  v4 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];
  result = SharedLibraryFilterViewModel.__allocating_init(sharedLibraryStatusProvider:)(v4);
  *a2 = result;
  return result;
}

id sub_1A460E20C@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];
  *a1 = result;
  return result;
}

void sub_1A460E258()
{
  if (!qword_1EB13EF50)
  {
    type metadata accessor for LemonadeSharedLibrarySuggestionModel();
    sub_1A460FD40(&qword_1EB13EF58, type metadata accessor for LemonadeSharedLibrarySuggestionModel);
    v0 = type metadata accessor for LemonadeMaterialTitleCell();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EF50);
    }
  }
}

uint64_t sub_1A460E308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A460E370(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A524C634();
  v5 = PXLocalizedSharedLibraryString(v4);

  v29 = sub_1A524C674();
  v7 = v6;

  v8 = sub_1A524C634();
  v9 = PXLocalizedSharedLibraryString(v8);

  v28 = sub_1A524C674();
  v11 = v10;

  v12 = sub_1A524C634();
  v13 = PXLocalizedSharedLibraryString(v12);

  v27 = sub_1A524C674();
  v15 = v14;

  v26 = sub_1A3C38BD4();
  v17 = v16;
  type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider.SharedLibrarySuggestionsPlaceholderView(0);
  sub_1A3C4C344(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
  v18 = sub_1A5247C84();
  v19 = (*(*v30 + 144))(v18);

  v20 = v19 == 0;
  if (v19)
  {
    v21 = v28;
  }

  else
  {
    v21 = v29;
  }

  if (!v20)
  {
    v7 = v11;
  }

  v22 = sub_1A5247C84();
  v23 = (*(*v30 + 144))(v22);

  if (v23)
  {
    v24 = v26;
  }

  else
  {
    v24 = v27;
  }

  if (!v23)
  {
    v17 = v15;
  }

  *a1 = sub_1A5249584();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1A460F468();
  sub_1A460E630(v21, v7, v2, v24, v17, a1 + *(v25 + 44));
}

void sub_1A460E630(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a5;
  v26 = a4;
  v22[4] = a3;
  v31 = a6;
  v8 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider.SharedLibrarySuggestionsPlaceholderView(0);
  v23 = *(v8 - 8);
  v22[5] = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v22[3] = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1A460F800;
  sub_1A460F7A4(0, &qword_1EB13EFA0, sub_1A460F800);
  v27 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10 - 8);
  v29 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v22[6] = v22 - v13;
  v25 = MEMORY[0x1E697D6D0];
  sub_1A460F7A4(0, &qword_1EB1239B0, MEMORY[0x1E697D6D0]);
  v22[2] = v14 - 8;
  MEMORY[0x1EEE9AC00](v14 - 8);
  v24 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v32 = v22 - v17;
  v18 = sub_1A524A204();
  MEMORY[0x1EEE9AC00](v18);
  sub_1A460F5C0();
  v22[1] = v19 - 8;
  MEMORY[0x1EEE9AC00](v19 - 8);
  v33 = v22 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v34 = a1;
  v35 = a2;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A460EDF8()
{
  v0 = sub_1A524A204();
  MEMORY[0x1EEE9AC00](v0);
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A460F024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1A5244094();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_1A460F11C(void **a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for SharedLibrarySuggestionsItemListManager(0);
  sub_1A4624674(v3, *(a2 + 24), 0xD000000000000011, 0x80000001A53E00A0, 3, 0, 1);
}

void sub_1A460F1B4()
{
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  swift_unknownObjectRetain();
  sub_1A3DB5914();
}

uint64_t sub_1A460F254(uint64_t a1)
{
  if ((*(*a1 + 200))())
  {
    swift_getObjectType();
    v1 = sub_1A49C3BB0();
    swift_unknownObjectRelease();
    return v1;
  }

  else
  {

    return sub_1A3C38BD4();
  }
}

id sub_1A460F300(id *a1)
{
  v1 = [*a1 displayCollection];

  return v1;
}

unint64_t sub_1A460F350(uint64_t a1)
{
  v2 = sub_1A460FD40(&qword_1EB129330, type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider);

  return sub_1A42E6E80(a1, v2);
}

void sub_1A460F3BC(char a1)
{
  v3 = *(v1 + *(type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0) + 40));
  *(v3 + 24) = a1;
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    if ((*(v3 + 25) & 1) == 0)
    {
      return;
    }

    v5 = [*(v3 + 16) px_sharedLibrarySharingSuggestionsCountsManager];
    [v5 markAnyNotificationsAsRead];

    v6 = [*(v3 + 16) px_sharedLibrarySharingSuggestionsCountsManager];
    [v6 markAllSuggestionsAsRead];

    v4 = 0;
  }

  *(v3 + 25) = v4;
}

void sub_1A460F468()
{
  if (!qword_1EB13EF70)
  {
    sub_1A3C4C344(255, &qword_1EB13EF78, sub_1A460F500, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EF70);
    }
  }
}

void sub_1A460F500()
{
  if (!qword_1EB13EF80)
  {
    sub_1A460F5C0();
    sub_1A460F7A4(255, &qword_1EB1239B0, MEMORY[0x1E697D6D0]);
    sub_1A460F7A4(255, &qword_1EB13EFA0, sub_1A460F800);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13EF80);
    }
  }
}

void sub_1A460F5C0()
{
  if (!qword_1EB13EF88)
  {
    sub_1A460F690(255, &qword_1EB13EF90, sub_1A460F714, sub_1A3EBB1B4, MEMORY[0x1E697E830]);
    sub_1A4610280(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EF88);
    }
  }
}

void sub_1A460F690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A460F714()
{
  if (!qword_1EB13EF98)
  {
    sub_1A3C4C344(255, &qword_1EB12C9D0, MEMORY[0x1E6980FB8], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EF98);
    }
  }
}

void sub_1A460F7A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A460F800()
{
  if (!qword_1EB13EFA8)
  {
    sub_1A3EC43B0();
    sub_1A3FF8F74();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EFA8);
    }
  }
}

uint64_t sub_1A460F880(uint64_t a1)
{
  result = sub_1A460FD40(&qword_1EB129338, type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider);
  *(a1 + 8) = result;
  return result;
}

void sub_1A460F9F0()
{
  type metadata accessor for LemonadeNavigationContext(319);
  if (v0 <= 0x3F)
  {
    sub_1A3CB6B10(319, &qword_1EB13EFB0, &qword_1EB1206D0, off_1E771F918, MEMORY[0x1E697DA80]);
    if (v1 <= 0x3F)
    {
      sub_1A3C4C344(319, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A460FB00()
{
  result = qword_1EB13EFC0;
  if (!qword_1EB13EFC0)
  {
    sub_1A460F690(255, &qword_1EB13EFC8, sub_1A460E258, type metadata accessor for LemonadeSharedLibrarySuggestionCell, MEMORY[0x1E697F960]);
    sub_1A460FD40(&qword_1EB13EF60, sub_1A460E258);
    sub_1A460FD40(&qword_1EB13EF68, type metadata accessor for LemonadeSharedLibrarySuggestionCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EFC0);
  }

  return result;
}

void sub_1A460FC24()
{
  if (!qword_1EB13EFD8)
  {
    sub_1A3C4C344(255, &qword_1EB13EF78, sub_1A460F500, MEMORY[0x1E6981F40]);
    sub_1A460FCB8();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EFD8);
    }
  }
}

unint64_t sub_1A460FCB8()
{
  result = qword_1EB13EFE0;
  if (!qword_1EB13EFE0)
  {
    sub_1A3C4C344(255, &qword_1EB13EF78, sub_1A460F500, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EFE0);
  }

  return result;
}

uint64_t sub_1A460FD40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A460FD88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider.SharedLibrarySuggestionsPlaceholderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A460FDEC()
{
  type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider.SharedLibrarySuggestionsPlaceholderView(0);
  sub_1A3C4C344(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
  v0 = sub_1A5247C84();
  v1 = (*(*v8 + 18))(v0);

  if (!v1)
  {
    sub_1A3CB6B10(0, &qword_1EB13EFB0, &qword_1EB1206D0, off_1E771F918, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    v3 = [objc_allocWithZone(PXSharedLibrarySuggestionsSettingsViewController) initWithSharedLibraryStatusProvider_];

    v4 = v3;
    v5 = [v4 navigationItem];
    v6 = sub_1A524C634();
    v7 = PXLocalizedSharedLibraryString(v6);

    if (!v7)
    {
      sub_1A524C674();
      v7 = sub_1A524C634();
    }

    [v5 setTitle_];

    [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    sub_1A4654ADC();
    PXPresentationEnvironmentForSender();
  }

  sub_1A5247C84();
  v2 = v8[3];

  [v2 setViewMode_];
}

uint64_t sub_1A4610158(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1A460F7A4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A46101C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A460F7A4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A4610220(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4610280(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4610334()
{
  v1 = v0;
  sub_1A4610664(0);
  *&v3 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [v0 assetCollectionReference];
  v7 = [v6 assetCollection];

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v9 = v8;
  v10 = [v1 presentationEnvironment];
  if (!v10)
  {
LABEL_7:
    result = sub_1A524E6E4();
    __break(1u);
    return result;
  }

  v11 = v10;
  sub_1A46106EC(0, &qword_1EB13F010, type metadata accessor for LemonadeCollectionCustomizationViewModel);
  sub_1A4610684();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v22 = sub_1A3EAAA08(v9, v11);
  HIBYTE(v21) = 1;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_1A4407D6C(&v22, &v21 + 7, sub_1A4610788, v12);
  sub_1A46107EC();
  v14 = v13;
  sub_1A478C8F8(v14, v5);
  v15 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v5);
  if (([v1 presentViewController_] & 1) == 0)
  {
    v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v17 = sub_1A524C634();
    v18 = [v16 initWithDomain:v17 code:1 userInfo:0];

    v19 = sub_1A5240B74();
    [v1 completeUserInteractionTaskWithSuccess:0 error:v19];
  }

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void sub_1A4610684()
{
  if (!qword_1EB13F000)
  {
    sub_1A3C52C70(255, &qword_1EB1265E0);
    v0 = type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F000);
    }
  }
}

void sub_1A46106EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4610684();
    v7 = v6;
    v8 = sub_1A4611304(&qword_1EB13F008, sub_1A4610684);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4610788(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1 & 1;
    v4 = Strong;
    [Strong completeUserInteractionTaskWithSuccess:v3 error:0];
  }
}

void sub_1A46107EC()
{
  if (!qword_1EB13F018)
  {
    sub_1A4610664(255);
    sub_1A4611304(&qword_1EB13F020, sub_1A4610664);
    v0 = type metadata accessor for PXSwiftUIHostingViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F018);
    }
  }
}

uint64_t sub_1A4610998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5243834();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0100(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 24) = &_s12PhotosUICore26CustomMenuHeaderTitleModelVN_0;
  *(a2 + 32) = sub_1A46112B0();
  v11 = swift_allocObject();
  *a2 = v11;
  sub_1A3C341C8(a1, v11 + 16);
  v16 = 0u;
  v17 = 0u;
  v18 = 1;
  v12 = sub_1A52429A4();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  (*(v5 + 104))(v7, *MEMORY[0x1E69C2678], v4);
  v15[3] = sub_1A5243EC4();
  v15[4] = sub_1A4611304(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_1A5243ED4();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1A3E79480(v15, a2 + 40);
}

id sub_1A4610DC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXPhotoKitMemoryCustomizeActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4610ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  return a3(v5, v6);
}

unint64_t sub_1A46111F4()
{
  result = qword_1EB1CAA50;
  if (!qword_1EB1CAA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CAA50);
  }

  return result;
}

unint64_t sub_1A46112B0()
{
  result = qword_1EB1CAA58[0];
  if (!qword_1EB1CAA58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CAA58);
  }

  return result;
}

uint64_t sub_1A4611304(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1A46113C4(void *a1)
{
  v1 = [a1 viewModel];
  v2 = [v1 isInSelectMode];

  return v2;
}

uint64_t type metadata accessor for GenerativeStoryDatePickerView()
{
  result = qword_1EB1CABE0;
  if (!qword_1EB1CABE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A461162C()
{
  sub_1A46118F0();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A461239C();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v0;
  sub_1A4611954();
  sub_1A46122E8();
  sub_1A524A294();
  sub_1A524A074();
  v11 = sub_1A4615620(&qword_1EB13F0F8, sub_1A46118F0);
  sub_1A524A984();
  (*(v3 + 8))(v5, v2);
  v12 = [objc_opt_self() currentDevice];
  [v12 userInterfaceIdiom];

  sub_1A46152FC();
  v17 = v2;
  v18 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v7;
  v18 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1A524A584();
  return (*(v8 + 8))(v10, v7);
}

void sub_1A46118F0()
{
  if (!qword_1EB13F028)
  {
    sub_1A4611954();
    sub_1A46122E8();
    v0 = sub_1A524A2A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F028);
    }
  }
}

void sub_1A4611954()
{
  if (!qword_1EB13F030)
  {
    sub_1A46119B8(255);
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F030);
    }
  }
}

void sub_1A46119EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4611A50()
{
  if (!qword_1EB13F040)
  {
    sub_1A4612194(255, &qword_1EB130100, MEMORY[0x1E697D6A0]);
    sub_1A4611ADC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13F040);
    }
  }
}

void sub_1A4611B58()
{
  if (!qword_1EB13F058)
  {
    sub_1A4611BBC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13F058);
    }
  }
}

void sub_1A4611BE4(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4611C3C(255, a3, a4);
    v5 = sub_1A524BE24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4611C3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4611CB4();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A4611CB4()
{
  if (!qword_1EB13F070)
  {
    sub_1A4611D48(255);
    sub_1A4615620(&qword_1EB13F090, sub_1A4611D48);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F070);
    }
  }
}

void sub_1A4611D7C()
{
  if (!qword_1EB13F080)
  {
    sub_1A4611DEC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13F080);
    }
  }
}

void sub_1A4611DEC()
{
  if (!qword_1EB13F088)
  {
    sub_1A3F1EA2C(255);
    sub_1A5249544();
    sub_1A3F1EC00();
    sub_1A4615620(&unk_1EB122DF0, MEMORY[0x1E697C540]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13F088);
    }
  }
}

void sub_1A4611EE8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A461559C(255, a3, a4, sub_1A3F332F4, MEMORY[0x1E697E830]);
    v5 = sub_1A524DF24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4611F6C()
{
  if (!qword_1EB13F0A8)
  {
    sub_1A46120C0();
    sub_1A5249C24();
    v0 = MEMORY[0x1E697BDB8];
    sub_1A4612194(255, &qword_1EB12E8C8, MEMORY[0x1E697BDB8]);
    sub_1A46121F4(&qword_1EB12E8E0, &qword_1EB12E8C8, v0);
    swift_getOpaqueTypeConformance2();
    sub_1A4615620(&qword_1EB12E8F0, MEMORY[0x1E697C900]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13F0A8);
    }
  }
}

void sub_1A46120C0()
{
  if (!qword_1EB13F0B0)
  {
    v0 = MEMORY[0x1E697BDB8];
    sub_1A4612194(255, &qword_1EB12E8C8, MEMORY[0x1E697BDB8]);
    sub_1A46121F4(&qword_1EB12E8E0, &qword_1EB12E8C8, v0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13F0B0);
    }
  }
}

void sub_1A4612194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E6981148], MEMORY[0x1E6981138]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A46121F4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1A4612194(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4612288()
{
  if (!qword_1EB13F0D8)
  {
    type metadata accessor for GenerativeStoryOptionalYearDatePickerRepresentable(255);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F0D8);
    }
  }
}

unint64_t sub_1A46122E8()
{
  result = qword_1EB13F0E0;
  if (!qword_1EB13F0E0)
  {
    sub_1A4611954();
    sub_1A4615620(&qword_1EB13F0E8, sub_1A46119B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F0E0);
  }

  return result;
}

void sub_1A461239C()
{
  if (!qword_1EB13F0F0)
  {
    sub_1A46118F0();
    sub_1A4615620(&qword_1EB13F0F8, sub_1A46118F0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13F0F0);
    }
  }
}

uint64_t sub_1A4612450()
{
  sub_1A46119B8(0);
  sub_1A4615620(&qword_1EB13F0E8, sub_1A46119B8);
  return sub_1A524BA64();
}

uint64_t sub_1A46124F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v62 = a2;
  sub_1A4612238(0);
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v51 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A461559C(0, &qword_1EB13F108, sub_1A4611B24, sub_1A4612238, MEMORY[0x1E697F948]);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v59 = v48 - v6;
  sub_1A4611B24(0);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v52 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4611BBC(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v48[2] = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v48[1] = v48 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v50 = v48 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v49 = v48 - v16;
  sub_1A4611ADC(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v60 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v58 = v48 - v20;
  sub_1A4612194(0, &qword_1EB130100, MEMORY[0x1E697D6A0]);
  v53 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v56 = v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v48 - v25;
  v27 = sub_1A524C634();
  v28 = PXMemoryCreationLocalizedString(v27);

  v29 = sub_1A524C674();
  v31 = v30;

  v67 = v29;
  v68 = v31;
  v32 = (a1 + *(type metadata accessor for GenerativeStoryDatePickerView() + 32));
  v33 = v32[1];
  LOBYTE(a1) = *(v32 + 16);
  v64 = *v32;
  v34 = v64;
  v65 = v33;
  v66 = a1;
  sub_1A4615544(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v36 = v35;
  sub_1A524B924();
  sub_1A3D5F9DC();
  v54 = v26;
  sub_1A524B864();
  v64 = v34;
  v65 = v33;
  v66 = a1;
  MEMORY[0x1A5906C60](&v63, v36);
  if (v63 == 1)
  {
    sub_1A4612CBC(v49);
  }

  v37 = v51;
  sub_1A4613A74(v51);
  sub_1A4615840(v37, v59, sub_1A4612238);
  swift_storeEnumTagMultiPayload();
  sub_1A4615620(&qword_1EB13F110, sub_1A4611B24);
  sub_1A4615620(&qword_1EB13F118, sub_1A4612238);
  v38 = v58;
  sub_1A5249744();
  sub_1A46158A8(v37, sub_1A4612238);
  v39 = *(v22 + 16);
  v40 = v56;
  v42 = v53;
  v41 = v54;
  v39(v56, v54, v53);
  v43 = v60;
  sub_1A4615840(v38, v60, sub_1A4611ADC);
  v44 = v62;
  v39(v62, v40, v42);
  sub_1A4611A50();
  sub_1A4615840(v43, &v44[*(v45 + 48)], sub_1A4611ADC);
  sub_1A46158A8(v38, sub_1A4611ADC);
  v46 = *(v22 + 8);
  v46(v41, v42);
  sub_1A46158A8(v43, sub_1A4611ADC);
  return (v46)(v40, v42);
}

void sub_1A4612CBC(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  sub_1A46115F8(0);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39[2] = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A461559C(0, &qword_1EB13F0A0, sub_1A4611F6C, sub_1A3F332F4, MEMORY[0x1E697E830]);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v39[1] = v39 - v7;
  sub_1A4611EC0(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = v39 - v11;
  v12 = type metadata accessor for GenerativeStoryDatePickerView();
  v13 = v12 - 8;
  v44 = *(v12 - 8);
  v43 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A5241144();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4611CB4();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v46 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v39 - v24;
  v42 = "tSheetDateRangeEndingDateTitle";
  v39[0] = *(v13 + 32);
  v39[3] = v4;
  MEMORY[0x1A5906C60](v4, v23);
  v26 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v27 = sub_1A524C634();
  [v26 setLocalizedDateFormatFromTemplate_];

  v28 = sub_1A5241074();
  v29 = [v26 stringFromDate_];

  v30 = sub_1A524C674();
  v40 = v31;
  v41 = v30;

  (*(v17 + 8))(v19, v16);
  v32 = v2;
  v33 = v2 + *(v13 + 52);
  v34 = *(v33 + 8);
  v54 = *v33;
  v55 = v34;
  sub_1A4615544(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v35 = v51;
  v36 = v52;
  LOBYTE(v2) = v53;
  v39[4] = v32;
  sub_1A4615E50(v32, v15, type metadata accessor for GenerativeStoryDatePickerView);
  v37 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v38 = swift_allocObject();
  sub_1A4615F18(v15, v38 + v37, type metadata accessor for GenerativeStoryDatePickerView);
  *v25 = sub_1A5249314();
  *(v25 + 1) = 0;
  v25[16] = 1;
  sub_1A46157D8();
  sub_1A4614C38(0xD000000000000040, v42 | 0x8000000000000000, v41, v40, sub_1A4615A04, v38, v35, v36, v2);
}

void sub_1A4613398(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  sub_1A46115F8(0);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39[2] = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A461559C(0, &qword_1EB13F0A0, sub_1A4611F6C, sub_1A3F332F4, MEMORY[0x1E697E830]);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v39[1] = v39 - v7;
  sub_1A4611EC0(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = v39 - v11;
  v12 = type metadata accessor for GenerativeStoryDatePickerView();
  v13 = v12 - 8;
  v44 = *(v12 - 8);
  v43 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A5241144();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4611CB4();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v46 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v39 - v24;
  v42 = "tSheetDateRangeButtonTitle";
  v39[0] = *(v13 + 36);
  v39[3] = v4;
  MEMORY[0x1A5906C60](v4, v23);
  v26 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v27 = sub_1A524C634();
  [v26 setLocalizedDateFormatFromTemplate_];

  v28 = sub_1A5241074();
  v29 = [v26 stringFromDate_];

  v30 = sub_1A524C674();
  v40 = v31;
  v41 = v30;

  (*(v17 + 8))(v19, v16);
  v32 = v2;
  v33 = v2 + *(v13 + 56);
  v34 = *(v33 + 8);
  v54 = *v33;
  v55 = v34;
  sub_1A4615544(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v35 = v51;
  v36 = v52;
  LOBYTE(v2) = v53;
  v39[4] = v32;
  sub_1A4615E50(v32, v15, type metadata accessor for GenerativeStoryDatePickerView);
  v37 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v38 = swift_allocObject();
  sub_1A4615F18(v15, v38 + v37, type metadata accessor for GenerativeStoryDatePickerView);
  *v25 = sub_1A5249314();
  *(v25 + 1) = 0;
  v25[16] = 1;
  sub_1A46157D8();
  sub_1A4614C38(0xD00000000000003ELL, v42 | 0x8000000000000000, v41, v40, sub_1A4615668, v38, v35, v36, v2);
}

uint64_t sub_1A4613A74@<X0>(uint64_t a1@<X8>)
{
  sub_1A46115F8(0);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48[2] = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenerativeStoryOptionalYearDatePickerRepresentable(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48[7] = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4612288();
  v48[6] = v8;
  MEMORY[0x1EEE9AC00](v8);
  v48[8] = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A461559C(0, &qword_1EB13F0D0, sub_1A4612288, sub_1A3F332F4, MEMORY[0x1E697E830]);
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v48[4] = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v48[3] = v48 - v13;
  sub_1A4612260(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v59 = v48 - v18;
  v19 = type metadata accessor for GenerativeStoryDatePickerView();
  v54 = *(v19 - 8);
  v20 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v55 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1A5241144();
  v21 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v23 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4611CB4();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v56 = v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v60 = (v48 - v28);
  v48[1] = *(v19 + 20);
  v48[5] = v4;
  v29 = MEMORY[0x1A5906C60](v4, v27);
  v30 = v1;
  result = (*(**v1 + 1184))(v29);
  if (result)
  {
    v50 = "tartingDateTitle";
    v32 = (*(*result + 888))(result);

    (*(*v32 + 192))(v23);

    v33 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v52 = a1;
    v51 = v16;
    v34 = sub_1A524C634();
    [v33 setLocalizedDateFormatFromTemplate_];

    v35 = sub_1A5241074();
    v36 = [v33 stringFromDate_];

    v49 = sub_1A524C674();
    v38 = v37;

    (*(v21 + 8))(v23, v53);
    v39 = v30 + *(v19 + 40);
    v40 = *(v39 + 8);
    v61 = *v39;
    v62 = v40;
    sub_1A4615544(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6C4();
    v41 = v63;
    v42 = v30;
    LOBYTE(v32) = v64;
    v53 = v30;
    v43 = v55;
    sub_1A4615E50(v42, v55, type metadata accessor for GenerativeStoryDatePickerView);
    v44 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v45 = swift_allocObject();
    sub_1A4615F18(v43, v45 + v44, type metadata accessor for GenerativeStoryDatePickerView);
    v46 = sub_1A5249314();
    v47 = v60;
    *v60 = v46;
    v47[1] = 0;
    *(v47 + 16) = 1;
    sub_1A46157D8();
    sub_1A4614C38(0xD000000000000035, v50 | 0x8000000000000000, v49, v38, sub_1A4615D58, v45, v41, *(&v41 + 1), v32);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4614454()
{
  sub_1A524A054();
  sub_1A461239C();
  sub_1A46118F0();
  sub_1A4615620(&qword_1EB13F0F8, sub_1A46118F0);
  swift_getOpaqueTypeConformance2();
  return sub_1A524A984();
}

void sub_1A4614524(char *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v56 = a2;
  v2 = sub_1A5249C24();
  v66 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5249794();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4615908();
  v63 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  v12 = sub_1A5241144();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  sub_1A4615970();
  v58 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46115F8(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4612194(0, &qword_1EB12E8C8, MEMORY[0x1E697BDB8]);
  v59 = *(v25 - 8);
  v60 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v57 = &v49 - v26;
  sub_1A46120C0();
  v28 = v27;
  v62 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v61 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1A5249434();
  v54 = v31;
  v55 = v30;
  v52 = v32;
  v53 = v33;
  v34 = v67;
  v67 = v24;
  sub_1A4615E50(v34, v24, sub_1A46115F8);
  sub_1A5241024();
  sub_1A5241104();
  sub_1A4615620(&unk_1EB134140, MEMORY[0x1E6969530]);
  if (sub_1A524C544())
  {
    v51 = v2;
    v35 = *(v13 + 32);
    v35(v11, v18, v12);
    v50 = v28;
    v36 = v63;
    v35(&v11[*(v63 + 48)], v15, v12);
    sub_1A4615E50(v11, v8, sub_1A4615908);
    v37 = *(v36 + 48);
    v35(v21, v8, v12);
    v38 = *(v13 + 8);
    v38(&v8[v37], v12);
    sub_1A4615F18(v11, v8, sub_1A4615908);
    v35(&v21[*(v58 + 36)], &v8[*(v36 + 48)], v12);
    v38(v8, v12);
    sub_1A5249784();
    v39 = v57;
    sub_1A5247B74();
    v40 = sub_1A46121F4(&qword_1EB12E8E0, &qword_1EB12E8C8, MEMORY[0x1E697BDB8]);
    v41 = v60;
    v42 = v61;
    sub_1A524AA74();
    (*(v59 + 8))(v39, v41);
    v43 = v65;
    sub_1A5249C14();
    v68 = v41;
    v69 = v40;
    swift_getOpaqueTypeConformance2();
    sub_1A4615620(&qword_1EB12E8F0, MEMORY[0x1E697C900]);
    v44 = v56;
    v46 = v50;
    v45 = v51;
    sub_1A524AB64();
    (*(v66 + 8))(v43, v45);
    (*(v62 + 8))(v42, v46);
    sub_1A461559C(0, &qword_1EB13F0A0, sub_1A4611F6C, sub_1A3F332F4, MEMORY[0x1E697E830]);
    v48 = v44 + *(v47 + 36);
    *v48 = xmmword_1A5351130;
    *(v48 + 16) = xmmword_1A5351130;
    *(v48 + 32) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1A4614C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v37 = a8;
  v34 = a7;
  v30 = a5;
  v31 = a6;
  v29 = a3;
  v33 = a9;
  v10 = sub_1A5249544();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v43 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4612194(0, &qword_1EB127480, MEMORY[0x1E697D670]);
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x1EEE9AC00](v12);
  sub_1A3F1EA2C(0);
  v41 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1A4611DEC();
  v32 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v42 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1A524C634();
  v18 = PXMemoryCreationLocalizedString(v17);

  v19 = sub_1A524C674();
  v21 = v20;

  v46 = v19;
  v47 = v21;
  sub_1A3D5F9DC();
  v22 = sub_1A524A464();
  v35 = v23;
  v36 = v22;
  v28[3] = v24;
  v38 = v25;
  v46 = v29;
  v47 = a4;
  v26 = swift_allocObject();
  v27 = v31;
  *(v26 + 16) = v30;
  *(v26 + 24) = v27;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4615190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  v17 = type metadata accessor for GenerativeStoryDatePickerView();
  sub_1A4615F18(a2, a9 + v17[5], sub_1A46115F8);
  sub_1A4615F18(a3, a9 + v17[6], sub_1A46115F8);
  sub_1A4615F18(a4, a9 + v17[7], sub_1A46115F8);
  v18 = a9 + v17[8];
  *v18 = a5;
  *(v18 + 1) = a6;
  v18[16] = a7;
  *(a9 + v17[9]) = a8;
  v19 = a9 + v17[10];
  sub_1A524B694();
  *v19 = v23;
  *(v19 + 1) = v24;
  v20 = a9 + v17[11];
  sub_1A524B694();
  *v20 = v23;
  *(v20 + 1) = v24;
  v21 = a9 + v17[12];
  result = sub_1A524B694();
  *v21 = v23;
  *(v21 + 1) = v24;
  return result;
}

void sub_1A46152FC()
{
  if (!qword_1EB13F100)
  {
    sub_1A461239C();
    sub_1A46118F0();
    sub_1A4615620(&qword_1EB13F0F8, sub_1A46118F0);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13F100);
    }
  }
}

void sub_1A4615420()
{
  type metadata accessor for GenerativeStoryCreationViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1A46115F8(319);
    if (v1 <= 0x3F)
    {
      sub_1A4615544(319, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for GenerativeStoryDisambiguationSelectedAssetsCountViewModel();
        if (v3 <= 0x3F)
        {
          sub_1A4615544(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A4615544(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A461559C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1A4615620(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4615668()
{
  type metadata accessor for GenerativeStoryDatePickerView();
  sub_1A4615544(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if ((v1 & 1) == 0)
  {
    sub_1A524B6A4();
    if (v1 == 1)
    {
      sub_1A524B6B4();
    }
  }

  sub_1A524B6A4();
  sub_1A524B6B4();
}

void sub_1A46157D8()
{
  if (!qword_1EB13F120)
  {
    sub_1A4611D48(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F120);
    }
  }
}

uint64_t sub_1A4615840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A46158A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4615908()
{
  if (!qword_1EB13F128)
  {
    sub_1A5241144();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13F128);
    }
  }
}

void sub_1A4615970()
{
  if (!qword_1EB13F130)
  {
    sub_1A5241144();
    sub_1A4615620(&unk_1EB134140, MEMORY[0x1E6969530]);
    v0 = sub_1A524C574();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F130);
    }
  }
}

uint64_t sub_1A4615A04()
{
  type metadata accessor for GenerativeStoryDatePickerView();
  sub_1A4615544(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if ((v1 & 1) == 0)
  {
    sub_1A524B6A4();
    if (v1 == 1)
    {
      sub_1A524B6B4();
    }
  }

  sub_1A524B6A4();
  sub_1A524B6B4();
}

uint64_t objectdestroyTm_66()
{
  v1 = (type metadata accessor for GenerativeStoryDatePickerView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[7];

  sub_1A46115F8(0);
  v5 = v4;
  v6 = *(v4 + 32);
  v7 = sub_1A5241144();
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v6, v7);
  v9 = v2 + v1[8];

  v8(v9 + *(v5 + 32), v7);
  v10 = v2 + v1[9];

  v8(v10 + *(v5 + 32), v7);

  return swift_deallocObject();
}

uint64_t sub_1A4615D58()
{
  type metadata accessor for GenerativeStoryDatePickerView();
  sub_1A4615544(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

  sub_1A524B6A4();
  sub_1A524B6B4();
}

uint64_t sub_1A4615E50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4615EB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4615F18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4615F80(uint64_t a1, uint64_t a2)
{
  sub_1A461559C(0, &qword_1EB13F0D0, sub_1A4612288, sub_1A3F332F4, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id SectionsBlurController.__allocating_init(blurrableSectionsSource:)()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v1[OBJC_IVAR___PXSectionsBlurController_behavior] = 0;
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

id SectionsBlurController.init(blurrableSectionsSource:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v0[OBJC_IVAR___PXSectionsBlurController_behavior] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SectionsBlurController();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1A461621C()
{
  v1 = OBJC_IVAR___PXSectionsBlurController_behavior;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A46162B4(uint64_t a1)
{
  v3 = OBJC_IVAR___PXSectionsBlurController_behavior;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A4616304@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

unint64_t SectionsBlurController.Behavior.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

id SectionsBlurController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SectionsBlurController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SectionsBlurController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A46165DC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    PXEdgeInsetsInsetRect();
  }

  return result;
}

unint64_t sub_1A46167E8()
{
  result = qword_1EB13F148;
  if (!qword_1EB13F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F148);
  }

  return result;
}

id sub_1A4616950(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  v13 = *(v5 + 40);
  v30 = *(v5 + 48);
  v14 = *(v5 + 56);
  v15 = (*((*MEMORY[0x1E69E7D40] & **(v5 + 16)) + 0x68))();
  v16 = 0.0;
  if (v15 != 1)
  {
    if (v15)
    {
      result = sub_1A524EB44();
      __break(1u);
      return result;
    }

    v17 = [objc_opt_self() sharedInstance];
    [v17 blurFadeDistance];
    v29 = v18;

    v32.origin.x = a2;
    v32.origin.y = a3;
    rect = a4;
    v32.size.width = a4;
    v32.size.height = a5;
    MinY = CGRectGetMinY(v32);
    v33.origin.x = v11;
    v33.origin.y = v12;
    v33.size.width = v13;
    v33.size.height = v30;
    v20 = (MinY - (CGRectGetMaxY(v33) - v29)) / v29;
    v21 = v12;
    if (v20 > 1.0)
    {
      v20 = 1.0;
    }

    if (v20 < 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v20;
    }

    v22 = v11;
    v23 = v13;
    v24 = v30;
    v25 = v29 + CGRectGetMinY(*(&v21 - 1));
    v34.origin.x = a2;
    v34.origin.y = a3;
    v34.size.width = rect;
    v34.size.height = a5;
    v26 = (v25 - CGRectGetMaxY(v34)) / v29;
    if (v26 > 1.0)
    {
      v26 = 1.0;
    }

    if (v16 <= v26)
    {
      v16 = v26;
    }
  }

  return [v14 setBlurIntensity:a1 forSectionAt:v16];
}

void sub_1A4616B84()
{
  v1 = v0;
  sub_1A4616CE8(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4616DAC(0, &qword_1EB13F168, type metadata accessor for LemonadeCollectionCustomizationViewModel);
  sub_1A4616D08();
  v9 = LemonadeCollectionCustomizationFoldersModel.__allocating_init(collection:)([v0 collectionList]);
  HIBYTE(v8) = 1;
  v5 = sub_1A4407D6C(&v9, &v8 + 7, 0, 0);
  sub_1A4616E48();
  v6 = v5;
  sub_1A478C8F8(v6, v4);
  v7 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v4);
  [v7 setModalPresentationStyle_];
  [v1 completeUserInteractionTaskWithSuccess:objc_msgSend(v1 error:{sel_presentViewController_, v7), 0}];
}

void sub_1A4616D08()
{
  if (!qword_1EB13F158)
  {
    sub_1A4616D60();
    v0 = type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F158);
    }
  }
}

unint64_t sub_1A4616D60()
{
  result = qword_1EB120A70;
  if (!qword_1EB120A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB120A70);
  }

  return result;
}

void sub_1A4616DAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4616D08();
    v7 = v6;
    v8 = sub_1A4617164(&qword_1EB13F160, sub_1A4616D08);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4616E48()
{
  if (!qword_1EB13F170)
  {
    sub_1A4616CE8(255);
    sub_1A4617164(&qword_1EB13F178, sub_1A4616CE8);
    v0 = type metadata accessor for PXSwiftUIHostingViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F170);
    }
  }
}

id sub_1A4617130()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXPhotoKitCollectionListCustomizeActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4617164(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static PXLemonadeWallpaperFeature.isFeatureAvailable.getter()
{
  v0 = sub_1A3C5C9EC();
  v1 = *((*MEMORY[0x1E69E7D40] & **v0) + 0xA0);
  v2 = *v0;
  LOBYTE(v1) = v1();

  return v1 & 1;
}

PXLemonadeWallpaperFeature __swiftcall PXLemonadeWallpaperFeature.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1A461733C@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C4C3A8(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()())
  {

    return sub_1A42E8184(3, 1, a1);
  }

  else
  {
    v9 = sub_1A3C47918();
    v11 = v10;
    v12 = sub_1A3C47918();
    v14 = v13;
    v15 = sub_1A3C52D68();
    v17 = v16;
    v21 = a1;
    v19 = v18;
    v20 = sub_1A3C4ED50();
    v22 = 1;
    *v7 = sub_1A461750C;
    *(v7 + 1) = 0;
    v7[16] = 2;
    *(v7 + 3) = 0;
    v7[32] = 1;
    *(v7 + 5) = v9;
    *(v7 + 6) = v11;
    *(v7 + 7) = v12;
    *(v7 + 8) = v14;
    *(v7 + 9) = v15;
    *(v7 + 10) = v17;
    v7[88] = v19;
    v7[89] = v20;
    swift_storeEnumTagMultiPayload();
    sub_1A3C4ED54(v4);
    return sub_1A3C52D78(v7, 0, v4, v21);
  }
}

uint64_t sub_1A461750C(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69C21F8])
  {
    return 7;
  }

  (*(v3 + 8))(v6, v2);
  return 3;
}

void sub_1A4617628(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[5] = a2;
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[4] = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  sub_1A3C38BD4();
  v7 = sub_1A3C38BD4();
  v9[2] = v8;
  v9[3] = v7;
  v9[1] = sub_1A3C38BD4();
  sub_1A3C38BD4();
  sub_1A52435C4();
  sub_1A4617848();
  (*(v4 + 8))(v6, v3);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4617848()
{
  v1 = v0;
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C2200])
  {
    return 0x656E6F687069;
  }

  if (v7 == *MEMORY[0x1E69C21F8])
  {
    return 0x6E616C2E64617069;
  }

  if (v7 == *MEMORY[0x1E69C21F0])
  {
    return 0;
  }

  if (v7 == *MEMORY[0x1E69C21E8])
  {
    return 30324;
  }

  if (v7 == *MEMORY[0x1E69C2208])
  {
    return 0x746177656C707061;
  }

  if (v7 != *MEMORY[0x1E69C2210])
  {
    if (v7 != *MEMORY[0x1E69C21E0])
    {
      (*(v3 + 8))(v6, v2);
    }

    return 0;
  }

  return 0x702E6E6F69736976;
}

uint64_t sub_1A4617A50()
{
  v1 = sub_1A5241144();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4617B0C, 0, 0);
}

uint64_t sub_1A4617B0C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = [objc_opt_self() standardUserDefaults];
  sub_1A5241104();
  v5 = sub_1A5241074();
  (*(v2 + 8))(v1, v3);
  [v4 setValue:v5 forKey:*MEMORY[0x1E69C1730]];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A4617C54@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if ([a1 px_isWallpaperSuggestionsVirtualCollection])
  {
    v9 = sub_1A42E6C64(a3, a4);
    *a5 = a2;
    a5[1] = v9;
    a5[2] = v10;
    v11 = type metadata accessor for LemonadeNavigationDestination();
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(a5, 0, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for LemonadeNavigationDestination();
    v14 = *(*(v13 - 8) + 56);

    return v14(a5, 1, 1, v13);
  }
}

uint64_t sub_1A4617D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = sub_1A42E6C64(a2, a3);
  *a4 = a1;
  a4[1] = v6;
  a4[2] = v7;
  v8 = type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(a4, 0, 1, v8);
}

void sub_1A4617E48(char a1)
{
  sub_1A3C4C3A8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  if (a1)
  {
    v5 = sub_1A524CCB4();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    sub_1A3D4D930(0, 0, v4, &unk_1A5351520, v6);
  }
}

unint64_t sub_1A4617F70(uint64_t a1)
{
  v2 = sub_1A3C52190();

  return sub_1A42E6E80(a1, v2);
}

id sub_1A4617FAC(uint64_t a1)
{
  v1 = [*(a1 + 16) px_virtualCollections];
  v2 = [v1 wallpaperSuggestionsCollection];

  return v2;
}

uint64_t sub_1A4618004@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  *a2 = v7;
  v24 = *(type metadata accessor for LemonadeWallpaperFeature.FeedProvider() + 20);
  v8 = v7;
  v9 = sub_1A3C47918();
  v11 = v10;
  v12 = sub_1A3C47918();
  v14 = v13;
  v15 = sub_1A3C52D68();
  v17 = v16;
  v19 = v18;
  v20 = sub_1A3C4ED50();
  v25 = 1;
  *v6 = sub_1A46183B4;
  *(v6 + 1) = 0;
  v6[16] = 2;
  *(v6 + 3) = 0;
  v6[32] = 1;
  *(v6 + 5) = v9;
  *(v6 + 6) = v11;
  *(v6 + 7) = v12;
  *(v6 + 8) = v14;
  *(v6 + 9) = v15;
  *(v6 + 10) = v17;
  v6[88] = v19;
  v6[89] = v20;
  swift_storeEnumTagMultiPayload();
  v21 = sub_1A3DC1AF8();
  return sub_1A437C3B8(v6, 0, v21, v22 & 1, a2 + v24);
}

uint64_t type metadata accessor for LemonadeWallpaperFeature.FeedProvider()
{
  result = qword_1EB183E68;
  if (!qword_1EB183E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A46181A0()
{
  sub_1A524EC94();
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A46184FC(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

void sub_1A4618250()
{
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A46184FC(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4618308()
{
  sub_1A524EC94();
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A46184FC(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A46183B4(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69C2200])
  {
    return 3;
  }

  (*(v3 + 8))(v6, v2);
  return 16;
}

uint64_t sub_1A46184FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A4618564()
{
  result = qword_1EB13F180;
  if (!qword_1EB13F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F180);
  }

  return result;
}

uint64_t sub_1A46186B0()
{
  result = qword_1EB128EB0;
  if (!qword_1EB128EB0)
  {
    sub_1A3FD505C();
    sub_1A52458C4();
  }

  return result;
}

uint64_t sub_1A4618728(uint64_t a1)
{
  result = sub_1A46184FC(&qword_1EB129EA8, type metadata accessor for LemonadeWallpaperFeature.FeedProvider);
  *(a1 + 8) = result;
  return result;
}

void sub_1A46188C4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WallpaperItemListManager();
  v3 = *(a2 + 24);
  v4 = *(a2 + 16);
  v5 = v3;
  sub_1A4101D80();
}

uint64_t sub_1A4618914@<X0>(void *a1@<X8>)
{

  return sub_1A41F8248(v2, a1);
}

uint64_t sub_1A4618950@<X0>(void *a1@<X8>)
{
  v2 = swift_unknownObjectRetain();
  sub_1A3D96070(v2, &v4);
  *a1 = v4;
  type metadata accessor for LemonadeNavigationDestination();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A46189D0()
{
  sub_1A46184FC(&qword_1EB129EA0, type metadata accessor for LemonadeWallpaperFeature.FeedProvider);

  return sub_1A3C47918();
}

id sub_1A4618A3C()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 wallpaperSuggestionsCollection];

  return v2;
}

uint64_t sub_1A4618AF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A4617A50();
}

uint64_t static StoryKeyAssetLayoutUtilities.frameForKeyAsset(_:viewportSize:timeout:)(uint64_t a1, double a2, double a3, double a4)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = a4;
  *(v4 + 96) = a2;
  *(v4 + 88) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A4618BC4, 0, 0);
}

uint64_t sub_1A4619008()
{

  return MEMORY[0x1EEE6DFA0](sub_1A4619120, 0, 0);
}

uint64_t sub_1A461913C(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v27 = a2;
  v9 = sub_1A524BEE4();
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524BF64();
  v28 = *(v12 - 8);
  v29 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4619F58();
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  if (qword_1EB164F70 != -1)
  {
    swift_once();
  }

  v19 = qword_1EB164F78;
  (*(v17 + 16))(&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
  v20 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v27;
  *(v21 + 24) = a3;
  *(v21 + 32) = a4;
  *(v21 + 40) = a5;
  (*(v17 + 32))(v21 + v20, &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  aBlock[4] = sub_1A4619FC0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_225;
  v22 = _Block_copy(aBlock);
  v23 = v19;
  swift_unknownObjectRetain();
  sub_1A524BF14();
  v31 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7F60];
  sub_1A3C29D2C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C29F88(0, &qword_1EB12B1C0, v24);
  sub_1A3C2A728(&qword_1EB12B1B0, &qword_1EB12B1C0, v24);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v14, v11, v22);
  _Block_release(v22);

  (*(v30 + 8))(v11, v9);
  (*(v28 + 8))(v14, v29);
}

void sub_1A4619524(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  sub_1A4619F58();
  v15 = *(v3 - 8);
  v16 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v12 = v4;
  v13 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A3C52C70(0, &qword_1EB1207C8);
  v5 = qword_1EB164F70;
  swift_unknownObjectRetain();
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB164F78;
  sub_1A3C48BDC(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  v10 = xmmword_1A52F9790;
  *(v7 + 16) = xmmword_1A52F9790;
  *(v7 + 32) = a1;
  sub_1A3D435C4();
  swift_unknownObjectRetain();
  v8 = v6;
  sub_1A524CA14();

  PXDisplayAssetFetchResultFromArray();
}

uint64_t sub_1A4619C00()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF14();
  v9 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E8030];
  sub_1A3C29D2C(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  sub_1A3C29F88(0, &qword_1EB126E40, v5);
  sub_1A3C2A728(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB164F78 = result;
  return result;
}

void sub_1A4619E60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1A4619ED4()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B5A8);
  __swift_project_value_buffer(v0, qword_1EB15B5A8);
  sub_1A5246EF4();
}

void sub_1A4619F58()
{
  if (!qword_1EB120BA8)
  {
    type metadata accessor for CGRect(255);
    v0 = sub_1A524CBF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120BA8);
    }
  }
}

void sub_1A4619FC0()
{
  sub_1A4619F58();
  v2 = *(v1 - 8);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  sub_1A4619524(v3, v4);
}

void sub_1A461A02C(uint64_t a1)
{
  sub_1A4619F58();
  v24 = *(v1 + ((*(*(v3 - 8) + 64) + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  if (!a1)
  {
    sub_1A461A53C();
    v8 = swift_allocError();
    *v10 = 2;
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = *(v1 + 16);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  memset(v33, 0, 32);
  v33[32] = 1;
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 1;
  v25[2] = ObjectType;
  v25[3] = a1;
  v25[4] = v4;
  v25[5] = &v26;
  PXStoryTimeline.enumerateClips(in:rect:using:)(&v29, v33, sub_1A461A590, v25);
  v6 = v26;
  v7 = v27;
  v33[0] = v28;
  if (v28)
  {
    sub_1A461A53C();
    v8 = swift_allocError();
    *v9 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_5:
    if (qword_1EB15B5A0 != -1)
    {
      swift_once();
    }

    v11 = sub_1A5246F24();
    __swift_project_value_buffer(v11, qword_1EB15B5A8);
    v12 = v8;
    v13 = sub_1A5246F04();
    v14 = sub_1A524D244();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v8;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1A3C1C000, v13, v14, "failed to compute frame for key asset: %@", v15, 0xCu);
      sub_1A3CB65E4(v16);
      MEMORY[0x1A590EEC0](v16, -1, -1);
      MEMORY[0x1A590EEC0](v15, -1, -1);
    }

    v29 = 0uLL;
    v30 = v24;
    sub_1A524CBE4();

    return;
  }

  v19 = *(&v27 + 1);
  if (qword_1EB15B5A0 != -1)
  {
    swift_once();
  }

  v20 = sub_1A5246F24();
  __swift_project_value_buffer(v20, qword_1EB15B5A8);
  v21 = sub_1A5246F04();
  v22 = sub_1A524D264();
  if (os_log_type_enabled(v21, v22))
  {
    buf = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *buf = 136315138;
    v29 = v6;
    *&v30 = v7;
    *(&v30 + 1) = v19;
    type metadata accessor for CGRect(0);
    sub_1A524C714();
    sub_1A3C2EF94();
  }

  v29 = v6;
  *&v30 = v7;
  *(&v30 + 1) = v19;
  sub_1A524CBE4();
  swift_unknownObjectRelease();
}

id sub_1A461A4A8(uint64_t a1, _BYTE *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = [v4 isTimelineFinal];
  if (result)
  {
    *a2 = 1;
    v7 = [v4 timeline];
    v5();

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1A461A53C()
{
  result = qword_1EB1CAD10;
  if (!qword_1EB1CAD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CAD10);
  }

  return result;
}

void sub_1A461A590(double a1, double a2, double a3, double a4, uint64_t a5, void *a6, _BYTE *a7)
{
  if (a6[1] == 1)
  {
    v13 = *(v7 + 32);
    v14 = *(v7 + 40);
    v15 = [*(v7 + 24) clipWithIdentifier_];
    if (v15)
    {
      v16 = [v15 resource];
      swift_unknownObjectRelease();
      v17 = swift_dynamicCastObjCProtocolConditional();
      if (v17)
      {
        v18 = [objc_msgSend(v17 px_storyResourceDisplayAsset];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v18)
        {
          *v14 = a1;
          *(v14 + 8) = a2;
          *(v14 + 16) = a3;
          *(v14 + 24) = a4;
          *(v14 + 32) = 0;
          *a7 = 1;
        }

        return;
      }

      swift_unknownObjectRelease();
    }

    sub_1A461A53C();
    v19 = swift_allocError();
    *v20 = 0;
    swift_willThrow();
    v21 = v19;
    if (qword_1EB15B5A0 != -1)
    {
      swift_once();
    }

    v22 = sub_1A5246F24();
    __swift_project_value_buffer(v22, qword_1EB15B5A8);
    v23 = v19;
    v24 = sub_1A5246F04();
    v25 = sub_1A524D244();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = v19;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1A3C1C000, v24, v25, "unexpected error occurred: %@", v26, 0xCu);
      sub_1A3CB65E4(v27);
      MEMORY[0x1A590EEC0](v27, -1, -1);
      MEMORY[0x1A590EEC0](v26, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t sub_1A461A844()
{
  result = qword_1EB1CAD18[0];
  if (!qword_1EB1CAD18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CAD18);
  }

  return result;
}

uint64_t sub_1A461A8B0(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v5 = a1;
  v6 = v1;
  v4(&unk_1A5351628, v3);
}

uint64_t sub_1A461A968(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  type metadata accessor for PhotosUnifiedScrollTestDefinition();
  v2[12] = swift_task_alloc();
  sub_1A524CC54();
  v2[13] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[14] = v4;
  v2[15] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A461AA2C, v4, v3);
}

uint64_t sub_1A461AA2C()
{
  *(v0 + 48) = 0xD000000000000018;
  v1 = *(v0 + 80);
  *(v0 + 56) = 0x80000001A53E0950;
  v2 = [v1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  *(v0 + 16) = v6;
  *(v0 + 32) = v7;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {

    sub_1A461B2A8(v0 + 16, sub_1A3C35B84);
  }

  sub_1A461B254();
  swift_allocError();
  *v3 = 0;
  v3[1] = 0;
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A461ACAC()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1A461AE70;
  }

  else
  {
    v5 = sub_1A461ADE8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A461ADE8()
{
  v1 = *(v0 + 96);

  sub_1A461B2A8(v1, type metadata accessor for PhotosUnifiedScrollTestDefinition);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A461AE70()
{
  v1 = *(v0 + 96);

  sub_1A461B2A8(v1, type metadata accessor for PhotosUnifiedScrollTestDefinition);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A461AEF8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A461A968(v2, v3);
}

id sub_1A461B07C(uint64_t a1)
{
  v3 = type metadata accessor for PhotosPPTTestRunner();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_1A3DE0CA0(a1, v5);
  v7 = sub_1A3FA4E54(v5);
  sub_1A461B2A8(a1, type metadata accessor for PhotosPPTTestRunner);
  return v7;
}

id sub_1A461B130()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PerformanceBaselinePPTTests();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PerformanceBaselinePPTTests()
{
  result = qword_1EB165E40;
  if (!qword_1EB165E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A461B1BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A461A968(v2, v3);
}

unint64_t sub_1A461B254()
{
  result = qword_1EB165ED0;
  if (!qword_1EB165ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB165ED0);
  }

  return result;
}

uint64_t sub_1A461B2A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A461B308(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A461B358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1A461B3AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_1A461B3D4()
{
  swift_getKeyPath();
  (*(*v0 + 440))();

  swift_beginAccess();
  v1 = v0[2];

  return v1;
}

uint64_t sub_1A461B464@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

void sub_1A461B504(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  sub_1A3C52C70(0, &qword_1EB13F2B0);
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[2];
    v2[2] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 448))(v9);
  }
}

void (*sub_1A461B648(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 440))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineDataSource___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4622904(&qword_1EB1255D0, type metadata accessor for TimelineVFXEngineDataSource);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030();
  return sub_1A461B798;
}

uint64_t type metadata accessor for TimelineVFXEngineDataSource()
{
  result = qword_1EB165B30;
  if (!qword_1EB165B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A461B7F0()
{
  swift_getKeyPath();
  (*(*v0 + 440))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A461B874@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t sub_1A461B914(uint64_t a1)
{
  swift_beginAccess();
  if (v1[3])
  {
    if (a1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 448))(v4);
  }

  v1[3] = 0;
}

void (*sub_1A461BA50(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 440))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineDataSource___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4622904(&qword_1EB1255D0, type metadata accessor for TimelineVFXEngineDataSource);
  sub_1A52415F4();

  v4[7] = sub_1A3DE36A4();
  return sub_1A461BBA0;
}

void sub_1A461BBAC()
{
  swift_getKeyPath();
  (*(*v0 + 440))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A461BC30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result;
  return result;
}

uint64_t sub_1A461BCE0(uint64_t a1)
{
  swift_beginAccess();
  if (v1[4])
  {
    if (a1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 448))(v4);
  }

  v1[4] = 0;
}

void (*sub_1A461BE1C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 440))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineDataSource___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4622904(&qword_1EB1255D0, type metadata accessor for TimelineVFXEngineDataSource);
  sub_1A52415F4();

  v4[7] = sub_1A4504FF8();
  return sub_1A461BF6C;
}

void sub_1A461BF78()
{
  swift_getKeyPath();
  (*(*v0 + 440))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A461BFFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  return result;
}

void (*sub_1A461C1D4(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 440))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineDataSource___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4622904(&qword_1EB1255D0, type metadata accessor for TimelineVFXEngineDataSource);
  sub_1A52415F4();

  v4[7] = sub_1A3DE3B2C();
  return sub_1A461C324;
}

void sub_1A461C380()
{
  swift_getKeyPath();
  (*(*v0 + 440))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A461C404@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result;
  return result;
}

void (*sub_1A461C5DC(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 440))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineDataSource___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4622904(&qword_1EB1255D0, type metadata accessor for TimelineVFXEngineDataSource);
  sub_1A52415F4();

  v4[7] = sub_1A461C330();
  return sub_1A461C72C;
}

uint64_t sub_1A461C738()
{
  v0 = swift_allocObject();
  sub_1A461C770();
  return v0;
}

void *sub_1A461C770()
{
  v0[3] = 0;
  v0[4] = 0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[5] = MEMORY[0x1E69E7CC0];
  if (v1 >> 62 && sub_1A524E2B4())
  {
    sub_1A4621DD0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v0[6] = v2;
  if (qword_1EB1579A8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB1579B0;
  sub_1A5246E74();
  sub_1A5241604();
  v0[2] = [objc_allocWithZone(MEMORY[0x1E6978718]) init];
  return v0;
}

uint64_t sub_1A461C84C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1A5246E54();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A461C918, 0, 0);
}

uint64_t sub_1A461C918()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    if (sub_1A524E2B4())
    {
LABEL_3:
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  sub_1A5246E84();
  sub_1A5246E24();

  v2 = sub_1A5246E84();
  v3 = sub_1A524D664();
  v4 = sub_1A524DEC4();
  v5 = v0[3];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    v7 = (*(*v5 + 256))();
    if (v7)
    {
      if (v7 >> 62)
      {
        v8 = sub_1A524E2B4();
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v8 = 0;
    }

    *(v6 + 4) = v8;

    v9 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v2, v3, v9, "Cancelled prewarm(placeholderAssets) – Empty Assets", "Existing Placeholder Asset Count %ld", v6, 0xCu);
    MEMORY[0x1A590EEC0](v6, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v10 = v0[1];
  v11 = MEMORY[0x1E69E7CC0];

  return v10(v11);
}

uint64_t sub_1A461CDD0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A461CF28, 0, 0);
  }
}

uint64_t sub_1A461CF28()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      v5 = v4;
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      --v2;
    }

    while (v2);

    v6 = v9;
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1A461D038(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1A5246E54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v57 - v12;
  if (!(a1 >> 62))
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_73:
    sub_1A5246E84();
    sub_1A5246E24();

    v18 = sub_1A5246E84();
    LOBYTE(v28) = sub_1A524D664();
    if ((sub_1A524DEC4() & 1) == 0)
    {

      return (*(v7 + 8))(v9, v6);
    }

    v23 = swift_slowAlloc();
    *v23 = 134217984;
    v54 = (*(*v3 + 256))();
    if (!v54)
    {
      v55 = 0;
      goto LABEL_80;
    }

    if (!(v54 >> 62))
    {
      v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_77:

LABEL_80:
      *(v23 + 4) = v55;

      v56 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v18, v28, v56, "Cancelled update(assets) – Empty Assets", "Existing Asset Count %ld", v23, 0xCu);
      MEMORY[0x1A590EEC0](v23, -1, -1);

      return (*(v7 + 8))(v9, v6);
    }

LABEL_104:
    v55 = sub_1A524E2B4();
    goto LABEL_77;
  }

  if (!sub_1A524E2B4())
  {
    goto LABEL_73;
  }

  v14 = sub_1A524E2B4();
LABEL_3:
  v58 = v6;
  v59 = v13;
  v15 = *v3;
  v61 = a2;
  v60 = v14;
  if (v14 > 49)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v16 = (*(v15 + 304))(v11);
  v17 = v16;
  v18 = (v16 >> 62);
  if (v16 >> 62)
  {
    v19 = sub_1A524E2B4();
  }

  else
  {
    v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(50, v14))
  {
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (v19 >= 50 - v14)
  {
    v9 = 50 - v14;
  }

  else
  {
    v9 = v19;
  }

  if (v9 < 0)
  {
    goto LABEL_89;
  }

  if (v18)
  {
    if (v17 < 0)
    {
      v21 = v17;
    }

    else
    {
      v21 = v17 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_1A524E2B4() < 0)
    {
      __break(1u);
      __break(1u);
      swift_unknownObjectRelease_n();
      sub_1A4621CC0(v14, a2, v7, v21);
      swift_unknownObjectRelease();
      v62 = a1;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v20 = sub_1A524E2B4();
  }

  else
  {
    v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20 >= v9)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      if (v9)
      {
        sub_1A3C52C70(0, &qword_1EB126660);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_90:
  __break(1u);
  swift_once();
  v22 = sub_1A5246F24();
  __swift_project_value_buffer(v22, qword_1EB15B6B0);
  v23 = sub_1A5246F04();
  v24 = sub_1A524D264();
  v25 = os_log_type_enabled(v23, v24);
  v26 = v60;
  if (v25)
  {
    v27 = swift_slowAlloc();
    *v27 = 134218240;
    *(v27 + 4) = v9;
    *(v27 + 12) = 2048;
    *(v27 + 14) = v26;
    _os_log_impl(&dword_1A3C1C000, v23, v24, "Added %ld additional assets to the incoming pool %ld assets", v27, 0x16u);
    MEMORY[0x1A590EEC0](v27, -1, -1);
  }

  v28 = v61;
  type metadata accessor for TimelineVFXEngineSpec();
  v29 = sub_1A4731C6C();
  LODWORD(v30) = v28;
  if (v28 <= 2u)
  {
    if (v28 >= 2u)
    {
      goto LABEL_39;
    }

    v31 = sub_1A4731C30();
    v32 = ceil(v29 + v29);
    if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v32 > -9.22337204e18)
    {
      if (v32 < 9.22337204e18)
      {
        v30 = *v31;
        v33 = *v31 + v32;
        if (!__OFADD__(*v31, v32))
        {
          goto LABEL_47;
        }

        __break(1u);
        goto LABEL_34;
      }

LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    __break(1u);
    goto LABEL_94;
  }

LABEL_34:
  if (v30 != 3)
  {
    goto LABEL_43;
  }

  v34 = ceil(v29 * 5.0);
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (v34 < 9.22337204e18)
  {
    goto LABEL_46;
  }

  __break(1u);
LABEL_39:
  v34 = ceil(v29 * 5.0);
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_98;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v34 >= 9.22337204e18)
  {
    __break(1u);
LABEL_43:
    v34 = ceil(v29 * 9.0);
    if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v34 > -9.22337204e18)
      {
        if (v34 < 9.22337204e18)
        {
          goto LABEL_46;
        }

        goto LABEL_103;
      }

LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    goto LABEL_99;
  }

LABEL_46:
  v33 = v34;
LABEL_47:
  v35 = (*v3 + 304);
  v36 = *v35;
  v37 = (*v35)();
  if (v37 >> 62)
  {
    v38 = sub_1A524E2B4();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57[2] = v33;
  if (v33 >= v38)
  {
    v33 = v38;
  }

  v40 = (v36)(v39);
  if (v33 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = v40;
    if (!(v40 >> 62))
    {
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v33)
      {
LABEL_54:
        if ((v9 & 0xC000000000000001) != 0 && v33)
        {
          sub_1A3C52C70(0, &qword_1EB126660);
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

LABEL_86:
      __break(1u);
      swift_once();
      v41 = sub_1A5246F24();
      __swift_project_value_buffer(v41, qword_1EB15B6B0);

      v42 = sub_1A5246F04();
      v43 = sub_1A524D264();
      if (os_log_type_enabled(v42, v43))
      {
        v57[1] = v7;
        v44 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v44 = 134218754;
        v45 = v36();
        if (v45 >> 62)
        {
          v46 = sub_1A524E2B4();
        }

        else
        {
          v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v44 + 4) = v46;

        *(v44 + 12) = 2048;
        *(v44 + 14) = v60;
        *(v44 + 22) = 2080;
        sub_1A452A584(v61);
        sub_1A3C2EF94();
      }

      v48 = (v36)(v47);
      (*(*v3 + 264))(v48);
      sub_1A5246E84();
      v49 = v59;
      sub_1A5246E24();

      v28 = sub_1A5246E84();
      LOBYTE(v6) = sub_1A524D664();
      if ((sub_1A524DEC4() & 1) == 0)
      {

        return (*(v7 + 8))(v49, v58);
      }

      v23 = swift_slowAlloc();
      *v23 = 134217984;
      v50 = (*(*v3 + 256))();
      if (!v50)
      {
        v51 = 0;
        goto LABEL_69;
      }

      if (!(v50 >> 62))
      {
        v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_66:

LABEL_69:
        *(v23 + 4) = v51;

        v52 = sub_1A5246E34();
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v28, v6, v52, "Updated Assets", "Existing Asset Count %ld", v23, 0xCu);
        MEMORY[0x1A590EEC0](v23, -1, -1);

        return (*(v7 + 8))(v49, v58);
      }

LABEL_95:
      v51 = sub_1A524E2B4();
      v49 = v59;
      goto LABEL_66;
    }
  }

  result = sub_1A524E2B4();
  if ((result & 0x8000000000000000) == 0)
  {
    if (sub_1A524E2B4() >= v33)
    {
      goto LABEL_54;
    }

    goto LABEL_86;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A461DDB4(unint64_t a1)
{
  v3 = (*(*v1 + 352))();
  v4 = v3;
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = sub_1A524E2B4();
    v4 = sub_1A46203A4(v5, v6);
  }

  v49 = a1;
  v7 = sub_1A4620584(a1, v4);
  v9 = v7;
  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_1A524E274();
    sub_1A3C52C70(0, &qword_1EB126660);
    sub_1A43085A8();
    sub_1A524CF84();
    v9 = v52;
    v10 = v53;
    v11 = v54;
    v12 = v55;
    v13 = v56;
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(v7 + 32);
    v10 = v7 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v7 + 56);
  }

  v17 = (v11 + 64) >> 6;
  if (v9 < 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      while (1)
      {
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v20 >= v17)
        {
          goto LABEL_23;
        }

        v19 = *(v10 + 8 * v20);
        ++v18;
        if (v19)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_17:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
      break;
    }

    while (1)
    {
      sub_1A3C52C70(0, &qword_1EB126860);
      v23 = [swift_getObjCClassFromMetadata() sharedInstance];
      v24 = [v23 vfxQualityUseBestCrop];

      v25 = sub_1A4622118(360.0, 360.0, v22, v24);
      v26 = (*(*v50 + 160))();
      sub_1A3C69BBC(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1A52F9790;
      *(v27 + 32) = v22;
      sub_1A3C52C70(0, &qword_1EB126660);
      v28 = v22;
      v29 = sub_1A524CA14();

      [v26 stopCachingImagesForAssets:v29 targetSize:0 contentMode:v25 options:{360.0, 360.0}];

      v12 = v20;
      v13 = v21;
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_19:
      if (sub_1A524E304())
      {
        sub_1A3C52C70(0, &qword_1EB126660);
        swift_dynamicCast();
        v22 = v51;
        v20 = v12;
        v21 = v13;
        if (v51)
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

LABEL_23:
  sub_1A3C42540();
  v8 = v49;
  if (!(v49 >> 62))
  {
    v30 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_25;
    }

LABEL_33:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_32:
  v46 = v8;
  v47 = sub_1A524E2B4();
  v8 = v46;
  v30 = v47;
  if (!v47)
  {
    goto LABEL_33;
  }

LABEL_25:
  v31 = v8;
  sub_1A3C52C70(0, &qword_1EB126860);
  result = swift_getObjCClassFromMetadata();
  v48 = result;
  if (v30 >= 1)
  {
    v33 = 0;
    v34 = v31;
    v35 = v31 & 0xC000000000000001;
    v36 = *(*v50 + 160);
    do
    {
      if (v35)
      {
        v37 = MEMORY[0x1A59097F0](v33);
      }

      else
      {
        v37 = *(v34 + 8 * v33 + 32);
      }

      v38 = v37;
      ++v33;
      v39 = [v48 sharedInstance];
      v40 = [v39 vfxQualityUseBestCrop];

      v41 = sub_1A4622118(360.0, 360.0, v38, v40);
      v42 = v36();
      sub_1A3C69BBC(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1A52F9790;
      *(v43 + 32) = v38;
      sub_1A3C52C70(0, &qword_1EB126660);
      v44 = v38;
      v45 = sub_1A524CA14();

      [v42 startCachingImagesForAssets:v45 targetSize:0 contentMode:v41 options:{360.0, 360.0}];

      v34 = v49;
    }

    while (v30 != v33);
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A461E398()
{
  v1 = sub_1A5246E54();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 264))(MEMORY[0x1E69E7CC0], v3);
  sub_1A5246E84();
  sub_1A5246E24();

  v6 = sub_1A5246E84();
  v7 = sub_1A524D664();
  if (sub_1A524DEC4())
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = (*(*v0 + 256))();
    if (v9)
    {
      if (v9 >> 62)
      {
        v13[1] = v9;
        v10 = sub_1A524E2B4();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v10 = 0;
    }

    *(v8 + 4) = v10;

    v11 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, v7, v11, "Clear Assets", "Existing Asset Count %ld", v8, 0xCu);
    MEMORY[0x1A590EEC0](v8, -1, -1);
  }

  else
  {
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1A461E5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 96) = a4;
  *(v7 + 104) = v6;
  *(v7 + 113) = a6;
  *(v7 + 112) = a5;
  *(v7 + 80) = a2;
  *(v7 + 88) = a3;
  *(v7 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A461E60C, 0, 0);
}

void sub_1A461E60C()
{
  v1 = v0[13];
  v2 = v0[10];
  if (v0[14])
  {
    v3 = 360.0;
  }

  else
  {
    v3 = *(v0 + 11);
  }

  if (v0[14])
  {
    v4 = 360.0;
  }

  else
  {
    v4 = *(v0 + 12);
  }

  v5 = sub_1A4622118(v3, v4, v0[10], *(v0 + 113));
  [v5 setSynchronous_];
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = (v6 + 16);
  v8 = (*(*v1 + 160))();
  v0[6] = sub_1A3EE0BC0;
  v0[7] = v6;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A3DD5B38;
  v0[5] = &block_descriptor_226;
  v9 = _Block_copy(v0 + 2);
  v10 = v5;

  [v8 requestImageForAsset:v2 targetSize:0 contentMode:v10 options:v9 resultHandler:{v3, v4}];
  _Block_release(v9);
  v38 = v10;

  swift_beginAccess();
  if (!*(v6 + 16))
  {
    if (qword_1EB15B6A8 != -1)
    {
      swift_once();
    }

    v23 = v0[10];
    v24 = sub_1A5246F24();
    __swift_project_value_buffer(v24, qword_1EB15B6B0);
    v25 = v23;
    v26 = sub_1A5246F04();
    v27 = sub_1A524D224();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[10];
    if (v28)
    {
      v30 = swift_slowAlloc();
      swift_slowAlloc();
      *v30 = 136315650;
      v31 = [v29 uuid];

      if (v31)
      {
        sub_1A524C674();

        sub_1A3C2EF94();
      }

      goto LABEL_26;
    }

    v32 = *v7;
    if (v32)
    {
      goto LABEL_19;
    }

LABEL_21:
    v33 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    goto LABEL_22;
  }

  v11 = qword_1EB15B6A8;
  v12 = *(v6 + 16);
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = v0[10];
  v14 = sub_1A5246F24();
  __swift_project_value_buffer(v14, qword_1EB15B6B0);
  v15 = v12;
  v16 = v13;
  v17 = sub_1A5246F04();
  v18 = sub_1A524D234();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[10];
  if (v19)
  {
    v21 = swift_slowAlloc();
    swift_slowAlloc();
    *v21 = 136316162;
    v22 = [v20 uuid];

    if (v22)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  v32 = *v7;
  if (!v32)
  {
    goto LABEL_21;
  }

LABEL_19:
  v33 = v32;
LABEL_22:
  v34 = v0[9];
  v0[8] = v33;
  v35 = sub_1A3C52C70(0, &qword_1EB126630);
  v36 = v32;
  SendableTransfer.init(wrappedValue:)((v0 + 8), v35, v34);

  v37 = v0[1];

  v37();
}

uint64_t sub_1A461EBC8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1A5246EA4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1A5246E54();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A461ECFC, 0, 0);
}

void sub_1A461ECFC()
{
  *(v0 + 104) = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineDataSource_signposter;
  sub_1A5246E84();
  sub_1A5246E24();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A461EF9C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1A461F2B8;
  }

  else
  {
    v2 = sub_1A461F0CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A461F0CC()
{
  v1 = v0[2];
  v2 = sub_1A5246E84();
  sub_1A5246EB4();
  v3 = sub_1A524D644();
  if (sub_1A524DEC4())
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];

    sub_1A5246EE4();

    if ((*(v5 + 88))(v4, v6) == *MEMORY[0x1E69E93E8])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[6] + 8))(v0[7], v0[5]);
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v2, v3, v9, "Load Assets", v7, v8, 2u);
    MEMORY[0x1A590EEC0](v8, -1, -1);
  }

  v10 = v0[12];
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[8];

  v14 = *(v12 + 8);
  v14(v11, v13);
  v14(v10, v13);

  v15 = v0[1];

  return v15(v1);
}

uint64_t sub_1A461F2B8()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[8];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A461F370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  sub_1A46227BC();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  sub_1A3DB4F20();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A461F46C, 0, 0);
}

uint64_t sub_1A461F46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 96);
  if (v4 >> 62)
  {
    v5 = sub_1A524E2B4();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_18:
    sub_1A46229C0(0, &qword_1EB125AC0, &qword_1EB126630, 0x1E69DCAB8, type metadata accessor for SendableTransfer);
    sub_1A3DBD9A0();
    sub_1A524CE04();
    *(v3 + 152) = MEMORY[0x1E69E7CC0];
    v23 = sub_1A4622904(&unk_1EB120B60, sub_1A46227BC);
    v24 = swift_task_alloc();
    *(v3 + 160) = v24;
    *v24 = v3;
    v24[1] = sub_1A461F888;
    a2 = *(v3 + 112);
    v5 = v3 + 72;
    a3 = v23;

    return MEMORY[0x1EEE6D8C8](v5, a2, a3);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v26 = *(v3 + 96) + 32;
    v27 = **(v3 + 88);
    v28 = v4 & 0xC000000000000001;
    v29 = v5;
    while (1)
    {
      if (v28)
      {
        v9 = MEMORY[0x1A59097F0](v6, *(v3 + 96));
      }

      else
      {
        v9 = *(v26 + 8 * v6);
      }

      v10 = v9;
      v12 = *(v3 + 136);
      v11 = *(v3 + 144);
      v13 = *(v3 + 104);
      v14 = sub_1A524CCB4();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v11, 1, 1, v14);
      v16 = swift_allocObject();
      v16[2] = 0;
      v17 = v16 + 2;
      v16[3] = 0;
      v16[4] = v13;
      v16[5] = v10;
      sub_1A3D96FAC(v11, v12);
      LODWORD(v11) = (*(v15 + 48))(v12, 1, v14);

      v18 = v10;
      v19 = *(v3 + 136);
      if (v11 == 1)
      {
        sub_1A3D97040(*(v3 + 136));
        if (!*v17)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1A524CCA4();
        (*(v15 + 8))(v19, v14);
        if (!*v17)
        {
LABEL_14:
          v20 = 0;
          v22 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v20 = sub_1A524CBC4();
      v22 = v21;
      swift_unknownObjectRelease();
LABEL_15:
      sub_1A46229C0(0, &qword_1EB125AC0, &qword_1EB126630, 0x1E69DCAB8, type metadata accessor for SendableTransfer);

      if (v22 | v20)
      {
        v7 = v3 + 16;
        *(v3 + 16) = 0;
        *(v3 + 24) = 0;
        *(v3 + 32) = v20;
        *(v3 + 40) = v22;
      }

      else
      {
        v7 = 0;
      }

      ++v6;
      v8 = *(v3 + 144);
      *(v3 + 48) = 1;
      *(v3 + 56) = v7;
      *(v3 + 64) = v27;
      swift_task_create();

      sub_1A3D97040(v8);
      if (v29 == v6)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return MEMORY[0x1EEE6D8C8](v5, a2, a3);
}

uint64_t sub_1A461F888()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    (*(v2[15] + 8))(v2[16], v2[14]);

    v3 = sub_1A461FBA8;
  }

  else
  {
    v3 = sub_1A461F9C0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A461F9C0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 152);
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 152);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_1A4620150(0, v4[2] + 1, 1, v4);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1A4620150((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    v4[v6 + 4] = v1;
    *(v0 + 152) = v4;
    v7 = sub_1A4622904(&unk_1EB120B60, sub_1A46227BC);
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v8[1] = sub_1A461F888;
    v9 = *(v0 + 112);

    return MEMORY[0x1EEE6D8C8](v0 + 72, v9, v7);
  }

  else
  {
    v10 = *(v0 + 80);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    *v10 = v2;

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1A461FBA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A461FC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A461FC44, 0, 0);
}

uint64_t sub_1A461FC44()
{
  v1 = v0[3];
  sub_1A3C52C70(0, &qword_1EB126860);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 vfxQualityUseBestCrop];

  v8 = (*(*v1 + 416) + **(*v1 + 416));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1A4306A24;
  v5 = v0[4];
  v6 = v0[2];

  return v8(v6, v5, 0, 0, 1, v3);
}

id sub_1A461FDD8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
  [v0 setDeliveryMode_];
  result = [v0 setNetworkAccessAllowed_];
  qword_1EB1EAE68 = v0;
  return result;
}

uint64_t sub_1A461FF7C()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineDataSource_signposter;
  v2 = sub_1A5246E94();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineDataSource___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4620080()
{
  sub_1A3C52C70(0, &qword_1EB12B140);
  sub_1A524C814();
  result = sub_1A524DEE4();
  qword_1EB1579B0 = result;
  return result;
}

void sub_1A46200EC()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B6B0);
  __swift_project_value_buffer(v0, qword_1EB15B6B0);
  sub_1A5246EF4();
}

void *sub_1A4620150(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A4622630(0, &qword_1EB120390, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A46229C0(0, &qword_1EB125AC0, &qword_1EB126630, 0x1E69DCAB8, type metadata accessor for SendableTransfer);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A46202B4(unint64_t a1)
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
  sub_1A4444A10(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_1A46203A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A462294C();
    v2 = sub_1A524E3C4();
    v14 = v2;
    sub_1A524E274();
    if (sub_1A524E304())
    {
      sub_1A3C52C70(0, &qword_1EB126660);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1A4620C94();
        }

        v2 = v14;
        result = sub_1A524DBE4();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1A524E304());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1A4620584(unint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v6 = a1;
    v4 = a1 >> 62;
    if (a1 >> 62)
    {
      v3 = a1;
      sub_1A524E2B4();
      a1 = v3;
    }

    v5 = a1;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1A4620A5C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v7 = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB126660);
  v8 = sub_1A524DBE4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v17 = *(*(v6 + 48) + 8 * v10);
    *a1 = v17;
    v18 = v17;
    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    v15 = a2;
    sub_1A4620EB0(v15, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    *a1 = v15;
    return 1;
  }
}

uint64_t sub_1A4620C94()
{
  v1 = v0;
  v2 = *v0;
  sub_1A462294C();
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1A524DBE4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void sub_1A4620EB0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A4620C94();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1A4621020();
      goto LABEL_12;
    }

    sub_1A4621164();
  }

  v8 = *v3;
  v9 = sub_1A524DBE4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1A3C52C70(0, &qword_1EB126660);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A524EB74();
  __break(1u);
}

id sub_1A4621020()
{
  v1 = v0;
  sub_1A462294C();
  v2 = *v0;
  v3 = sub_1A524E3A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A4621164()
{
  v1 = v0;
  v2 = *v0;
  sub_1A462294C();
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1A524DBE4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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

void sub_1A462136C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
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
          v9 = sub_1A524E2B4();
        }

        else
        {
          v9 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = v5[1];
        if (v10 == v9)
        {

          sub_1A46215AC(a1, a2, v26, a3);
          return;
        }

        v11 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1A59097F0](v5[1]);
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
        v14 = sub_1A524DBE4();
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

      sub_1A3C52C70(0, &qword_1EB126660);
      v19 = *(*(a3 + 48) + 8 * v16);
      v20 = sub_1A524DBF4();

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
          v23 = sub_1A524DBF4();
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

uint64_t sub_1A46215AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1A462294C();
  result = sub_1A524E3D4();
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
    result = sub_1A524DBE4();
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

uint64_t sub_1A4621794(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1A3C52C70(0, &qword_1EB126660);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1A59097F0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1A59097F0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1A524DBF4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1A524DBF4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1A524E2B4();
  }

  result = sub_1A524E2B4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

void sub_1A46219E4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 40) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4621A48(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
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

LABEL_43:
      MEMORY[0x1EEE6A200](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_1A3E2CAF8(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_1A3C52C70(0, &qword_1EB126660);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_1A524DBE4();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_1A524DBF4();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

void sub_1A4621CC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1A3C52C70(0, &qword_1EB126660);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1A3C69BBC(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1A4621DD0(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1A524E2B4())
    {
LABEL_3:
      sub_1A462294C();
      v3 = sub_1A524E3D4();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1A524E2B4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1A59097F0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1A524DBE4();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1A3C52C70(0, &qword_1EB126660);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1A524DBF4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_1A524DBE4();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1A3C52C70(0, &qword_1EB126660);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1A524DBF4();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1A46220B4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 48) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A4622118(double a1, double a2, uint64_t a3, char a4)
{
  if (qword_1EB165B40 != -1)
  {
    swift_once();
  }

  [qword_1EB1EAE68 copy];
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &qword_1EB120860);
  swift_dynamicCast();
  if ((a4 & 1) != 0 && (a1 != 0.0 || a2 != 0.0))
  {
    sub_1A524DA34();
  }

  [v8 setResizeMode_];
  return v8;
}

uint64_t sub_1A462243C(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
  {
    v4 = sub_1A3C52C70(0, &qword_1EB126660);
    v5 = sub_1A43085A8();
    result = MEMORY[0x1A59082D0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1A59097F0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1A4620A5C(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1A524E2B4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A462257C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A3CA8098;

  return sub_1A461F370(a1, a2, v7, v6);
}

void sub_1A4622630(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A46229C0(255, &qword_1EB125AC0, &qword_1EB126630, 0x1E69DCAB8, type metadata accessor for SendableTransfer);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A46226C4()
{
  result = sub_1A5246E94();
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1A46227BC()
{
  if (!qword_1EB120B58)
  {
    sub_1A46229C0(255, &qword_1EB125AC0, &qword_1EB126630, 0x1E69DCAB8, type metadata accessor for SendableTransfer);
    sub_1A3DBD9A0();
    v0 = sub_1A524CE14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120B58);
    }
  }
}

uint64_t sub_1A4622858(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3D60150;

  return sub_1A461FC20(a1, v6, v7, v5, v4);
}

uint64_t sub_1A4622904(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A462294C()
{
  if (!qword_1EB120528)
  {
    sub_1A3C52C70(255, &qword_1EB126660);
    sub_1A43085A8();
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120528);
    }
  }
}

void sub_1A46229C0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A4622A28@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

__n128 sub_1A4622A44@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4622E20(a1, v5);
  swift_unknownObjectRelease();
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v5[4];
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

__n128 sub_1A4622A98@<Q0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12)
{
  v27 = a1;
  v19 = sub_1A3C5D0E8(0, &qword_1EB13F2B8);
  swift_unknownObjectRetain();
  SendableTransfer.init(wrappedValue:)(&v27, v19, &v28);
  *a9 = v28;
  *(a9 + 8) = a2;
  v20 = a3[3];
  *(a9 + 48) = a3[2];
  *(a9 + 64) = v20;
  *(a9 + 80) = a3[4];
  v21 = a3[1];
  *(a9 + 16) = *a3;
  *(a9 + 32) = v21;
  v27 = a4;
  sub_1A4622F74(0, &qword_1EB126BC0, &qword_1EB12B190);
  v23 = v22;
  swift_unknownObjectRetain();
  SendableTransfer.init(wrappedValue:)(&v27, v23, &v28);
  *(a9 + 96) = v28;
  v27 = a5;
  sub_1A4622F74(0, &qword_1EB126A70, &qword_1EB126A80);
  SendableTransfer.init(wrappedValue:)(&v27, v24, &v28);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(a9 + 104) = v28;
  *(a9 + 112) = a6;
  *(a9 + 120) = a7;
  *(a9 + 128) = a8;
  result = a11;
  *(a9 + 136) = a10;
  *(a9 + 152) = a11;
  *(a9 + 168) = a12;
  return result;
}

double sub_1A4622C1C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 owner];
  if (v4)
  {
    sub_1A4622E20(v4, v20);
    v16 = v20[1];
    v17 = v20[0];
    v14 = v20[3];
    v15 = v20[2];
    v5 = v21;
    v6 = v22;
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v16 = 0u;
    v17 = xmmword_1A5301350;
    v14 = 0u;
    v15 = 0u;
  }

  v18 = a1;
  v7 = sub_1A3C5D0E8(0, &qword_1EB13F2B8);
  swift_unknownObjectRetain();
  SendableTransfer.init(wrappedValue:)(&v18, v7, &v19);
  v8 = v19;
  v18 = 0;
  sub_1A4622F74(0, &qword_1EB126BC0, &qword_1EB12B190);
  SendableTransfer.init(wrappedValue:)(&v18, v9, &v19);
  v10 = v19;
  v18 = 0;
  sub_1A4622F74(0, &qword_1EB126A70, &qword_1EB126A80);
  SendableTransfer.init(wrappedValue:)(&v18, v11, &v19);
  swift_unknownObjectRelease();
  v12 = v19;
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = v17;
  *(a2 + 32) = v16;
  *(a2 + 48) = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v5;
  *(a2 + 88) = v6;
  *(a2 + 96) = v10;
  *(a2 + 104) = v12;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0xE000000000000000;
  result = 0.0;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  return result;
}

uint64_t sub_1A4622DA4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = swift_getObjectType();
  *a1 = v3;

  return swift_unknownObjectRetain();
}

void sub_1A4622E20(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 emailAddressString];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1A524C674();
    v25 = v7;
    v27 = v6;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v8 = [a1 phoneNumberString];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1A524C674();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = [a1 firstName];
  v14 = sub_1A524C674();
  v16 = v15;

  v17 = [a1 lastName];
  v18 = sub_1A524C674();
  v20 = v19;

  v21 = [a1 localizedName];
  v22 = sub_1A524C674();
  v24 = v23;

  *a2 = v28;
  a2[1] = v26;
  a2[2] = v10;
  a2[3] = v12;
  a2[4] = v14;
  a2[5] = v16;
  a2[6] = v18;
  a2[7] = v20;
  a2[8] = v22;
  a2[9] = v24;
}

void sub_1A4622F74(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1A3C5D0E8(255, a3);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A4622FCC()
{
  result = qword_1EB13F2C0;
  if (!qword_1EB13F2C0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB13F2C0);
  }

  return result;
}

unint64_t sub_1A4623018()
{
  result = qword_1EB12A648;
  if (!qword_1EB12A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A648);
  }

  return result;
}

unint64_t sub_1A4623070()
{
  result = qword_1EB12A640;
  if (!qword_1EB12A640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A640);
  }

  return result;
}

unint64_t sub_1A46230C4()
{
  result = qword_1EB12A628;
  if (!qword_1EB12A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A628);
  }

  return result;
}

unint64_t sub_1A462311C()
{
  result = qword_1EB13F2D0;
  if (!qword_1EB13F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F2D0);
  }

  return result;
}

uint64_t sub_1A4623174(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_1A46231D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1A462327C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A46232C4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1A462334C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB176968);
  v1 = __swift_project_value_buffer(v0, qword_1EB176968);
  v2 = sub_1A453191C();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1A4623CAC()
{
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
  sub_1A52415D4();

  v1 = *(v0 + 16);

  return v1;
}

id sub_1A4623D5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
  sub_1A52415D4();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1A4623E40(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_1A3C52C70(0, &qword_1EB1208F8);
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
    sub_1A52415C4();
  }
}

uint64_t sub_1A4623FCC()
{
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
  sub_1A52415D4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A4624074@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
  sub_1A52415D4();

  *a2 = *(v3 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_1A4624144()
{
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
  sub_1A52415D4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A46241EC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
  sub_1A52415D4();

  *a2 = *(v3 + 48);
  return swift_unknownObjectRetain();
}

uint64_t sub_1A46242BC()
{
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
  sub_1A52415D4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A4624364@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
  sub_1A52415D4();

  *a2 = *(v3 + 72);
  return swift_unknownObjectRetain();
}

uint64_t sub_1A4624434()
{
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
  sub_1A52415D4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A46244DC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
  sub_1A52415D4();

  *a2 = *(v3 + 96);
  return swift_unknownObjectRetain();
}

uint64_t sub_1A46245AC()
{
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
  sub_1A52415C4();
}

uint64_t sub_1A4624708(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager__changeDetailsRepository;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
    sub_1A52415C4();
  }
}

uint64_t sub_1A4624838(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager___instanceIdentifier);
  v6 = *(v2 + OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager___instanceIdentifier + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
    sub_1A52415C4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1A46249B4()
{
  v0 = type metadata accessor for SharedLibrarySuggestionsItemList();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v14 = v2;
    swift_getKeyPath();
    v15 = v4;
    sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
    sub_1A52415D4();

    v5 = *(v4 + 16);
    v6 = *(v4 + 40);
    v7 = *(v4 + 64);
    v13 = *(v4 + 112);
    v12 = *(v4 + 120);
    v11 = *(v4 + OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager_logIdentifier);
    swift_getKeyPath();
    v15 = v4;
    v8 = v5;
    v9 = v6;
    v10 = v7;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A4624EC8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager__itemList;
  swift_beginAccess();
  return sub_1A4626AF8(v5 + v3, a1);
}

uint64_t sub_1A4624F90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager__itemList;
  swift_beginAccess();
  return sub_1A4626AF8(v3 + v4, a2);
}

uint64_t sub_1A4625058(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SharedLibrarySuggestionsItemList();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4626AF8(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
  sub_1A52415C4();

  return sub_1A4626A9C(v6);
}

uint64_t sub_1A4625308()
{
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
  sub_1A52415D4();

  swift_beginAccess();
}

uint64_t sub_1A46253C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager__changeDetailsRepository;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_1A46254BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

uint64_t sub_1A4625534()
{

  v1 = OBJC_IVAR____TtCC12PhotosUICore39SharedLibrarySuggestionsItemListManagerP33_D2F94720D08141BFA5EE64498B9C6A727Mutator__itemList;
  v2 = sub_1A4626FA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A46255D8(uint64_t a1)
{
  v2 = type metadata accessor for SharedLibrarySuggestionsItemList();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4626AF8(a1, v4);

  sub_1A52456B4();
}

void sub_1A46256A0(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

id sub_1A4625744()
{
  result = [*(v0 + 40) hasAnySuggestions];
  if ((result & 1) == 0)
  {
    swift_allocObject();
    swift_weakInit();
    sub_1A4626BDC(&qword_1EB129488, type metadata accessor for SharedLibrarySuggestionsItemListManager);
    sub_1A5245F44();
  }

  return result;
}

void sub_1A46258DC()
{
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4625998(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4626BDC(&qword_1EB129470, type metadata accessor for SharedLibrarySuggestionsItemListManager);
  sub_1A52415D4();

  v4 = *(v3 + OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager___instanceIdentifier + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager___instanceIdentifier);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id *sub_1A4625A90()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1A4626A9C(v0 + OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager__itemList);

  v1 = OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A4625B88()
{
  sub_1A4625A90();

  return swift_deallocClassInstance();
}

void sub_1A4625BE0()
{
  type metadata accessor for SharedLibrarySuggestionsItemListManager.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A4626B7C();
  sub_1A52456D4();
}

void sub_1A4625C84()
{
  sub_1A4626BDC(&qword_1EB129488, type metadata accessor for SharedLibrarySuggestionsItemListManager);

  sub_1A5245F44();
}

id sub_1A4625D08@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager_observable);
  *a1 = v2;
  return v2;
}

void sub_1A4625D20()
{
  sub_1A4626BDC(&qword_1EB129490, type metadata accessor for SharedLibrarySuggestionsItemListManager);

  sub_1A5245C54();
}

void sub_1A4625DA4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A4625E20(uint64_t a1)
{
  v2 = type metadata accessor for SharedLibrarySuggestionsItemList();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v8 - v6;
  sub_1A4626AF8(a1, &v8 - v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4626AF8(v7, v4);

  sub_1A52456B4();
}

char *sub_1A4625F1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C4D548(0, &qword_1EB13F348);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A4626040(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1A3C4D548(0, &qword_1EB13F348);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 48);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}