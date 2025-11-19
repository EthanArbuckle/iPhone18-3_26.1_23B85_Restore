Swift::Void __swiftcall FlightShareMessageBubbleView.layoutSubviews()()
{
  v195 = *MEMORY[0x1E69E9840];
  v194.receiver = v0;
  v194.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v194, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR___PKFlightShareMessageBubbleView_contentInsets];
  v10 = swift_beginAccess();
  v12 = PKEdgeInsetsMake(v10, v11);
  v14 = PKEdgeInsetsInsetRectTm(v2, v4, v6, v8, v12, v13);
  v177 = v15;
  v182 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_stripeSubtitle];
  [v20 sizeThatFits_];
  v22 = v21;
  v23 = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_stripeTitle];
  [v23 sizeThatFits_];
  v25 = v22 + v24 + 12.0;
  [v0 bounds];
  CGRectGetWidth(v196);
  [v0 bounds];
  PKSizeAlignedInRect();
  [*&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_stripe] setFrame_];
  [v0 bounds];
  CGRectGetWidth(v197);
  PKSizeAlignedInRect();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v198.origin.y = v177;
  v198.origin.x = v182;
  v198.size.width = v17;
  v198.size.height = v19;
  CGRectDivide(v198, &slice, &remainder, v25, CGRectMaxYEdge);
  x = remainder.origin.x;
  y = remainder.origin.y;
  width = remainder.size.width;
  height = remainder.size.height;
  v36 = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_followButton];
  [v36 sizeThatFits_];
  v178 = width;
  PKSizeAlignedInRect();
  v38 = v37;
  v170 = v40;
  v171 = v39;
  rect = v41;
  [v36 setFrame_];
  PKEdgeInsetsInsetRectTm(v27, v29, v31, v33, 6.0, v9[1] + 14.0);
  PKSizeAlignedInRect();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v172 = v38;
  if (([v36 isHidden] & 1) == 0)
  {
    v199.origin.x = v43;
    v199.origin.y = v45;
    v199.size.width = v47;
    v199.size.height = v49;
    if (v38 < CGRectGetMaxX(v199) + 10.0)
    {
      v200.origin.x = v43;
      v200.origin.y = v45;
      v200.size.width = v47;
      v200.size.height = v49;
      v168 = CGRectGetMaxX(v200) + 10.0;
      v201.origin.x = v38;
      v201.size.width = v170;
      v201.origin.y = v171;
      v201.size.height = rect;
      CGRectGetMinX(v201);
      v43 = PKEdgeInsetsInsetRectTm(v43, v45, v47, v49, 0.0, 0.0);
      v45 = v50;
      v47 = v51;
      v49 = v52;
    }
  }

  [v23 setFrame_];
  PKSizeAlignedInRect();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  if (([v36 isHidden] & 1) == 0)
  {
    v202.origin.x = v54;
    v202.origin.y = v56;
    v202.size.width = v58;
    v202.size.height = v60;
    if (v172 < CGRectGetMaxX(v202) + 10.0)
    {
      v203.origin.x = v54;
      v203.origin.y = v56;
      v203.size.width = v58;
      v203.size.height = v60;
      CGRectGetMaxX(v203);
      v204.origin.x = v172;
      v204.size.width = v170;
      v204.origin.y = v171;
      v204.size.height = rect;
      CGRectGetMinX(v204);
      v54 = PKEdgeInsetsInsetRectTm(v54, v56, v58, v60, 0.0, 0.0);
      v56 = v61;
      v58 = v62;
      v60 = v63;
    }
  }

  [v20 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v205.origin.x = x;
  v205.size.height = height;
  v205.size.width = v178;
  v205.origin.y = y;
  CGRectDivide(v205, &slice, &remainder, 8.0, CGRectMaxYEdge);
  v64 = remainder.origin.x;
  v65 = remainder.origin.y;
  v66 = remainder.size.width;
  v67 = remainder.size.height;
  v68 = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_rightSubtitle];
  [v68 sizeThatFits_];
  PKSizeAlignedInRect();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v190 = v75;
  [v68 setFrame_];
  v76 = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_leftSubtitle];
  [v76 sizeThatFits_];
  v184 = v65;
  v187 = v64;
  v176 = v67;
  v179 = v66;
  PKSizeAlignedInRect();
  v77 = v206.origin.x;
  v78 = v206.origin.y;
  v79 = v206.size.width;
  v80 = v206.size.height;
  if (v70 >= CGRectGetMaxX(v206) + 10.0)
  {
    v87 = v190;
  }

  else
  {
    v207.origin.x = v77;
    v207.origin.y = v78;
    v207.size.width = v79;
    v207.size.height = v80;
    v81 = CGRectGetMaxX(v207) + 10.0;
    v208.origin.x = v70;
    v208.origin.y = v190;
    v208.size.width = v72;
    v208.size.height = v74;
    v82 = (v81 - CGRectGetMinX(v208)) * 0.5;
    v77 = PKEdgeInsetsInsetRectTm(v77, v78, v79, v80, 0.0, 0.0);
    v78 = v83;
    v79 = v84;
    v80 = v85;
    v70 = PKEdgeInsetsInsetRectTm(v70, v190, v72, v74, 0.0, v82);
    v87 = v86;
    v72 = v88;
    v74 = v89;
    [v68 setFrame_];
  }

  [v76 setFrame_];
  v209.origin.x = v77;
  v209.origin.y = v78;
  v209.size.width = v79;
  v209.size.height = v80;
  v90 = CGRectGetHeight(v209);
  v210.origin.x = v70;
  v210.origin.y = v87;
  v210.size.width = v72;
  v210.size.height = v74;
  v91 = CGRectGetHeight(v210);
  v92 = CGFloatMax(v90, v91);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v211.origin.y = v184;
  v211.origin.x = v187;
  v211.size.height = v176;
  v211.size.width = v179;
  CGRectDivide(v211, &slice, &remainder, v92, CGRectMaxYEdge);
  v94 = remainder.origin.x;
  v93 = remainder.origin.y;
  v95 = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_leftTitle];
  size = remainder.size;
  [v95 sizeThatFits_];
  v96 = [v76 font];
  if (!v96)
  {
    __break(1u);
    goto LABEL_22;
  }

  v97 = v96;
  [v96 ascender];

  v98 = [v76 font];
  if (!v98)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v99 = v98;
  [v98 capHeight];

  v100 = [v95 font];
  if (!v100)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v101 = v100;
  [v100 descender];

  v180 = v94;
  v102 = v93;
  PKSizeAlignedInRect();
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v185 = v109;
  [v95 setFrame_];
  v110 = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_rightTitle];
  [v110 sizeThatFits_];
  v111 = [v68 font];
  if (!v111)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v112 = v111;
  [v111 ascender];

  v113 = [v68 font];
  if (!v113)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v114 = v113;
  v174 = v108;
  [v113 capHeight];

  v115 = [v110 font];
  if (!v115)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v116 = v115;
  [v115 descender];

  PKSizeAlignedInRect();
  v118 = v117;
  v120 = v119;
  v122 = v121;
  v173 = v102;
  v124 = v123;
  [v110 setFrame_];
  v212.origin.x = v104;
  v212.size.width = v174;
  v212.origin.y = v106;
  v212.size.height = v185;
  v125 = CGRectGetHeight(v212);
  v213.origin.x = v118;
  v213.origin.y = v120;
  v213.size.width = v122;
  v213.size.height = v124;
  v126 = CGRectGetHeight(v213);
  v127 = CGFloatMax(v125, v126);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v214.origin.x = v180;
  v214.origin.y = v173;
  v214.size.width = size.width;
  v214.size.height = size.height;
  CGRectDivide(v214, &slice, &remainder, v127, CGRectMaxYEdge);
  v128 = remainder.origin.x;
  v129 = remainder.origin.y;
  v130 = remainder.size.width;
  v131 = remainder.size.height;
  v132 = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_flightStatus];
  [v132 sizeThatFits_];
  v181 = v129;
  v186 = v128;
  PKSizeAlignedInRect();
  v189 = v134;
  v191 = v133;
  v136 = v135;
  v138 = v137;
  [v132 setFrame_];
  v139 = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_airlineLogo];
  [v139 sizeThatFits_];
  PKSizeAspectFit();
  PKSizeAlignedInRect();
  v141 = v140;
  v143 = v142;
  v145 = v144;
  v147 = v146;
  [v139 setFrame_];
  v215.origin.x = v141;
  v215.origin.y = v143;
  v215.size.width = v145;
  v215.size.height = v147;
  v148 = CGRectGetHeight(v215);
  v216.origin.y = v189;
  v216.origin.x = v191;
  v216.size.width = v136;
  v216.size.height = v138;
  v149 = CGRectGetHeight(v216);
  v150 = CGFloatMax(v148, v149);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v217.origin.y = v181;
  v217.origin.x = v186;
  v217.size.width = v130;
  v217.size.height = v131;
  CGRectDivide(v217, &slice, &remainder, v150, CGRectMinYEdge);
  v218 = CGRectInset(remainder, 0.0, 10.0);
  v151 = OBJC_IVAR___PKFlightShareMessageBubbleView_progressView;
  v152 = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_progressView];
  if (!v152)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v153 = v218.size.width;
  v154 = v218.size.height;
  v155 = [v152 view];
  if (!v155)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v156 = v155;
  [v155 sizeThatFits_];

  PKSizeAlignedInRect();
  v161 = *&v0[v151];
  if (!v161)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  v162 = v157;
  v163 = v158;
  v164 = v159;
  v165 = v160;
  v166 = [v161 view];
  if (!v166)
  {
    goto LABEL_30;
  }

  v167 = v166;
  [v166 setFrame_];
}

double FlightShareMessageBubbleView.contentInsets.getter()
{
  v1 = v0 + OBJC_IVAR___PKFlightShareMessageBubbleView_contentInsets;
  swift_beginAccess();
  return *v1;
}

id FlightShareMessageBubbleView.contentInsets.setter(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR___PKFlightShareMessageBubbleView_contentInsets];
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return [v4 setNeedsLayout];
}

id sub_1BD1ED398(_OWORD *a1, void **a2)
{
  v3 = *a2;
  v4 = *a2 + OBJC_IVAR___PKFlightShareMessageBubbleView_contentInsets;
  swift_beginAccess();
  v5 = a1[1];
  *v4 = *a1;
  v4[1] = v5;
  return [v3 setNeedsLayout];
}

id (*FlightShareMessageBubbleView.contentInsets.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BD1ED468;
}

id sub_1BD1ED468(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

id FlightShareMessageBubbleView.isFromMe.setter(char a1)
{
  [*&v1[OBJC_IVAR___PKFlightShareMessageBubbleView_followButton] setHidden_];

  return [v1 setNeedsLayout];
}

id (*FlightShareMessageBubbleView.isFromMe.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___PKFlightShareMessageBubbleView_followButton);
  *a1 = v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = [v3 isHidden];
  return sub_1BD1ED620;
}

id sub_1BD1ED620(uint64_t a1)
{
  v1 = *a1;
  [*(a1 + 8) setHidden_];

  return [v1 setNeedsLayout];
}

void sub_1BD1ED670()
{
  [*(v0 + OBJC_IVAR___PKFlightShareMessageBubbleView_followButton) setEnabled_];
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = *(v0 + OBJC_IVAR___PKFlightShareMessageBubbleView_properties);
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = [v3 flight];
  v5 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v6 = [v5 UUIDString];

  if (!v6)
  {
    sub_1BE052434();
    v6 = sub_1BE052404();
  }

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_1BD1EE218;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BD3F08C0;
  v9[3] = &block_descriptor_23;
  v8 = _Block_copy(v9);

  [v2 addSharedFlight:v4 fromSenderAddress:v6 completion:v8];
  _Block_release(v8);
}

uint64_t sub_1BD1ED830(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE051F54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v13 = sub_1BE052D54();
  aBlock[4] = sub_1BD1EE220;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_5;
  v14 = _Block_copy(aBlock);
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v7, v14);
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

void sub_1BD1EDAA0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___PKFlightShareMessageBubbleView_followButton);

    [v2 setEnabled_];
  }
}

id FlightShareMessageBubbleView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id FlightShareMessageBubbleView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id FlightShareMessageBubbleViewRepresentable.init(flight:pass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = [objc_allocWithZone(PKFlightSharingMessageExtensionViewProperties) init];
  a3[1] = a2;
  a3[2] = result;
  *a3 = a1;
  return result;
}

char *FlightShareMessageBubbleViewRepresentable.makeUIView(context:)()
{
  v1 = v0[1];
  v2 = v0[2];
  [(PKFlightSharingMessageExtensionViewProperties *)v2 setFlight:*v0];
  v3 = [v1 logoImage];
  if (v3)
  {
    v4 = v3;
    result = [objc_opt_self() imageWithPKImage_];
    if (!result)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v6 = result;
    [(PKFlightSharingMessageExtensionViewProperties *)v2 setLogoImage:result];
  }

  result = [v1 displayProfile];
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  v8 = [result foregroundColor];

  if (v8)
  {
    [(PKFlightSharingMessageExtensionViewProperties *)v2 setForegroundColor:v8];
  }

  result = [v1 displayProfile];
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  v10 = [result backgroundColor];

  if (v10)
  {
    [(PKFlightSharingMessageExtensionViewProperties *)v2 setBackgroundColor:v10];
  }

  v11 = [objc_allocWithZone(type metadata accessor for FlightShareMessageBubbleView()) init];
  v12 = &v11[OBJC_IVAR___PKFlightShareMessageBubbleView_contentInsets];
  swift_beginAccess();
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 1) = xmmword_1BE0C0AA0;
  [v11 setNeedsLayout];
  FlightShareMessageBubbleView.updateView(properties:)(v2);
  return v11;
}

uint64_t sub_1BD1EDFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD1EE3F8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD1EE01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD1EE3F8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD1EE080()
{
  sub_1BD1EE3F8();
  sub_1BE04F964();
  __break(1u);
}

uint64_t sub_1BD1EE0A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlightWidgetProgressView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1EE10C(uint64_t a1)
{
  v2 = type metadata accessor for FlightWidgetProgressView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD1EE1B4()
{
  result = qword_1EBD3D188;
  if (!qword_1EBD3D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D188);
  }

  return result;
}

void sub_1BD1EE228()
{
  *(v0 + OBJC_IVAR___PKFlightShareMessageBubbleView_properties) = 0;
  *(v0 + OBJC_IVAR___PKFlightShareMessageBubbleView_model) = 0;
  *(v0 + OBJC_IVAR___PKFlightShareMessageBubbleView_progressView) = 0;
  v1 = OBJC_IVAR___PKFlightShareMessageBubbleView_stripeTitle;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR___PKFlightShareMessageBubbleView_stripeSubtitle;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = OBJC_IVAR___PKFlightShareMessageBubbleView_stripe;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v4 = OBJC_IVAR___PKFlightShareMessageBubbleView_leftTitle;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = OBJC_IVAR___PKFlightShareMessageBubbleView_leftSubtitle;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v6 = OBJC_IVAR___PKFlightShareMessageBubbleView_rightTitle;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v7 = OBJC_IVAR___PKFlightShareMessageBubbleView_rightSubtitle;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v8 = OBJC_IVAR___PKFlightShareMessageBubbleView_airlineLogo;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v9 = OBJC_IVAR___PKFlightShareMessageBubbleView_flightStatus;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v10 = OBJC_IVAR___PKFlightShareMessageBubbleView_followButton;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v11 = (v0 + OBJC_IVAR___PKFlightShareMessageBubbleView_contentInsets);
  v12 = *(MEMORY[0x1E69DDCE0] + 16);
  *v11 = *MEMORY[0x1E69DDCE0];
  v11[1] = v12;
  sub_1BE053994();
  __break(1u);
}

unint64_t sub_1BD1EE3F8()
{
  result = qword_1EBD3D190;
  if (!qword_1EBD3D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D190);
  }

  return result;
}

id sub_1BD1EE44C(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v18 - v10;
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v18 - v13;
  if (a1 == 1)
  {
    (*(v3 + 104))(v11, *MEMORY[0x1E69B80C0], v2);
    result = PKPassKitBundle();
    if (result)
    {
      v17 = result;
      v15 = sub_1BE04B6F4();
      v14 = v11;
      goto LABEL_10;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a1 == 3)
  {
    (*(v3 + 104))(v7, *MEMORY[0x1E69B80C0], v2);
    result = PKPassKitBundle();
    if (result)
    {
      v17 = result;
      v15 = sub_1BE04B6F4();
      v14 = v7;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_13;
  }

  v15 = 0;
  if (a1 != 2)
  {
    return v15;
  }

  (*(v3 + 104))(&v18 - v13, *MEMORY[0x1E69B80C0], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v17 = result;
    v15 = sub_1BE04B6F4();
LABEL_10:

    (*(v3 + 8))(v14, v2);
    return v15;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t PeerPaymentMessagesExplanation.init(message:buttonTitle:buttonAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

__n128 PeerPaymentMessagesExplanationView.init(explanation:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
  result = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 16) = result;
  *(a2 + 32) = v4;
  return result;
}

id PeerPaymentMessagesExplanationView.makeUIViewController(context:)()
{
  v0 = [objc_allocWithZone(PKPeerPaymentMessagesExplanationViewController) init];
  sub_1BD1EE77C(v0);
  return v0;
}

void sub_1BD1EE77C(void *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1BE052404();
  [a1 setExplanation_];

  if (v3)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    sub_1BE048964();
    v8 = sub_1BE052404();
    [a1 setButtonTitle_];

    v10[4] = v4;
    v10[5] = v5;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1BD126964;
    v10[3] = &block_descriptor_24;
    v9 = _Block_copy(v10);
    sub_1BE048964();

    [a1 setButtonAction_];
    _Block_release(v9);
    sub_1BD0D4744(v4);
  }
}

unint64_t sub_1BD1EE8EC()
{
  result = qword_1EBD3D198;
  if (!qword_1EBD3D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D198);
  }

  return result;
}

id sub_1BD1EE940()
{
  v0 = [objc_allocWithZone(PKPeerPaymentMessagesExplanationViewController) init];
  sub_1BD1EE77C(v0);
  return v0;
}

uint64_t sub_1BD1EEA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD1EEBE4();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD1EEA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD1EEBE4();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD1EEAF0()
{
  sub_1BD1EEBE4();
  sub_1BE0500A4();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD1EEB40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD1EEB88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD1EEBE4()
{
  result = qword_1EBD3D1A0;
  if (!qword_1EBD3D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D1A0);
  }

  return result;
}

char *ApplePayUserEducationInstructionsViewController.init(source:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_animationView] = 0;
  *&v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_demoViewController] = 0;
  v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_invalidationReason] = 4;
  *&v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_source] = a1;
  v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_didStartAnimation] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ApplePayUserEducationInstructionsViewController();
  result = objc_msgSendSuper2(&v11, sel_initWithContext_, 0);
  if (result)
  {
    v3 = result;
    [v3 setExplanationViewControllerDelegate_];
    v4 = objc_allocWithZone(type metadata accessor for ApplePayUserEducationDemoViewController());
    v5 = sub_1BD1F0BE4(v3, v4);
    v6 = OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_demoViewController;
    v7 = *&v3[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_demoViewController];
    *&v3[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_demoViewController] = v5;

    v8 = *&v3[v6];
    if (v8)
    {
      [v8 setModalPresentationStyle_];
      v9 = *&v3[v6];
      if (v9)
      {
        [v9 setModalTransitionStyle_];
      }
    }

    v10 = [objc_opt_self() defaultCenter];
    [v10 addObserver:v3 selector:sel_applicationWillAddDeactivationReasonWithNotification_ name:*MEMORY[0x1E69DE878] object:0];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ApplePayUserEducationInstructionsViewController.__deallocating_deinit()
{
  v1 = v0[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_invalidationReason];
  if (v1 >= 2)
  {
    if (v1 - 3 >= 2)
    {
      v0[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_invalidationReason] = 3;
    }

    else
    {
      [objc_opt_self() endSubjectReporting_];
    }
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ApplePayUserEducationInstructionsViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BD1EEF14()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v49 - v13;
  v15 = type metadata accessor for ApplePayUserEducationInstructionsViewController();
  v57.receiver = v1;
  v57.super_class = v15;
  objc_msgSendSuper2(&v57, sel_loadView);
  [v1 setShowCancelButton_];
  [v1 setShowCloseButton_];
  v16 = [v1 explanationView];
  if (v16)
  {
    v54 = v1;
    v55 = v7;
    v17 = v16;
    v56 = v16;
    [v16 setShowPrivacyView_];
    [v17 setImageIgnoresTopSafeArea_];
    v18 = *MEMORY[0x1E69B80D8];
    v19 = *(v3 + 104);
    v19(v14, v18, v2);
    v20 = PKPassKitBundle();
    if (v20)
    {
      v21 = v20;
      sub_1BE04B6F4();

      v53 = *(v3 + 8);
      v53(v14, v2);
      v22 = sub_1BE052404();

      v23 = v56;
      [v56 setTitleText_];

      v51 = v18;
      v52 = v3 + 104;
      v50 = v19;
      v19(v11, v18, v2);
      v24 = PKPassKitBundle();
      if (v24)
      {
        v25 = v24;
        sub_1BE04B6F4();

        v26 = v53;
        v53(v11, v2);
        v27 = sub_1BE052404();

        [v23 setBodyText_];

        [v23 setTopMargin_];
        v28 = objc_allocWithZone(type metadata accessor for ApplePayUserEducationDemoAnimationView());
        v29 = ApplePayUserEducationDemoAnimationView.init()();
        v30 = OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_animationView;
        v31 = v54;
        v32 = *&v54[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_animationView];
        *&v54[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_animationView] = v29;
        v33 = v29;

        v34 = v23;
        v35 = v26;
        if (v33)
        {
          v36 = [v33 layer];
          [v36 setSpeed_];

          v37 = [v33 layer];
          [v37 setTimeOffset_];

          v38 = [v33 layer];
          [v38 setBeginTime_];
        }

        [v34 setHeroView_];
        v39 = [v34 dockView];
        v40 = v55;
        if (!v39)
        {
          v41 = v34;
LABEL_13:

          return;
        }

        v41 = v39;
        v42 = [v39 primaryButton];
        if (v42)
        {
          v43 = v42;
          v50(v40, v51, v2);
          v44 = PKPassKitBundle();
          if (v44)
          {
            v45 = v44;
            sub_1BE04B6F4();

            v35(v40, v2);
            v46 = sub_1BE052404();

            [v43 setTitle:v46 forState:0];

            v47 = *&v31[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_demoViewController];
            if (v47)
            {
              v48 = v47;
              [v48 loadViewIfNeeded];
            }

            goto LABEL_13;
          }

LABEL_18:
          __break(1u);
          return;
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

id sub_1BD1EF4A0(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v19 - v5;
  v7 = type metadata accessor for ApplePayUserEducationInstructionsViewController();
  v19.receiver = v1;
  v19.super_class = v7;
  result = objc_msgSendSuper2(&v19, sel_viewDidAppear_, a1 & 1);
  if (v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_invalidationReason] == 4)
  {
    if ((v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_didStartAnimation] & 1) == 0)
    {
      v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_didStartAnimation] = 1;
      v9 = *&v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_animationView];
      if (v9)
      {
        v10 = v9;
        sub_1BDA8313C();
      }
    }

    v11 = *MEMORY[0x1E69BB6B0];
    v12 = objc_opt_self();
    v13 = [v12 reporterForSubject_];
    if (v13)
    {
    }

    else
    {
      [v12 beginSubjectReporting_];
    }

    v14 = sub_1BE0528D4();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    sub_1BE0528A4();
    v15 = v1;
    v16 = sub_1BE052894();
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E85E0];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;
    sub_1BD122C00(0, 0, v6, &unk_1BE0C0E10, v17);
  }

  return result;
}

uint64_t sub_1BD1EF694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  sub_1BE0528A4();
  v4[13] = sub_1BE052894();
  v6 = sub_1BE052844();
  v4[14] = v6;
  v4[15] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD1EF72C, v6, v5);
}

uint64_t sub_1BD1EF72C()
{
  v1 = v0[12];
  v0[16] = sub_1BE052434();
  v0[17] = v2;
  v0[18] = sub_1BE052434();
  v0[19] = v3;
  v0[20] = *(v1 + OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_source);
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_1BD1EF7F4;

  return sub_1BD1F0E70();
}

uint64_t sub_1BD1EF7F4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 176) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1BD1EF91C, v4, v3);
}

uint64_t sub_1BD1EF91C()
{
  v26 = v0;
  v1 = v0[19];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v6 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  *(inited + 40) = v2;
  *(inited + 48) = v1;
  v7 = *MEMORY[0x1E69BA680];
  *(inited + 56) = *MEMORY[0x1E69BA680];
  *(inited + 64) = v4;
  *(inited + 72) = v3;
  v8 = v6;
  v9 = v7;
  v10 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  v11 = PKApplePayUserEducationDemoSourceToString();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1BE052434();
    v15 = v14;

    v16 = *MEMORY[0x1E69BA338];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v10;
    sub_1BD1DAE70(v13, v15, v16, isUniquelyReferenced_nonNull_native);
  }

  v18 = v0[22];
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v25 = v10;
  sub_1BD6BC0F4(v18, sub_1BD6B2140, 0, v19, &v25);

  v20 = objc_opt_self();
  v21 = *MEMORY[0x1E69BB6B0];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v22 = sub_1BE052224();

  [v20 subject:v21 sendEvent:v22];

  v23 = v0[1];

  return v23();
}

void sub_1BD1EFBDC(char a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for ApplePayUserEducationInstructionsViewController();
  objc_msgSendSuper2(&v17, sel_viewDidDisappear_, a1 & 1);
  if ((*(v1 + OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_invalidationReason) & 0xFB) == 0)
  {
    v3 = sub_1BE052434();
    v5 = v4;
    v6 = sub_1BE052434();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v10 = *MEMORY[0x1E69BABE8];
    *(inited + 32) = *MEMORY[0x1E69BABE8];
    *(inited + 40) = v6;
    *(inited + 48) = v8;
    v11 = *MEMORY[0x1E69BA680];
    *(inited + 56) = *MEMORY[0x1E69BA680];
    *(inited + 64) = v3;
    *(inited + 72) = v5;
    v12 = v10;
    v13 = v11;
    sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
    swift_arrayDestroy();
    v14 = objc_opt_self();
    v15 = *MEMORY[0x1E69BB6B0];
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD1F0E18();
    v16 = sub_1BE052224();

    [v14 subject:v15 sendEvent:v16];
  }
}

void sub_1BD1EFE2C(int a1)
{
  LODWORD(v2) = a1;
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = v63 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = v63 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v24 = v63 - v23;
  if (v2 < 2u)
  {
    v25 = [v1 presentingViewController];
    if (v25)
    {
      v26 = v25;
      v77 = sub_1BD1F0764;
      v78 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v74 = 1107296256;
      v75 = sub_1BD126964;
      v76 = &block_descriptor_33;
      v27 = v2;
      v2 = _Block_copy(&aBlock);
      [v26 dismissViewControllerAnimated:1 completion:v2];
      v28 = v2;
      LOBYTE(v2) = v27;
      _Block_release(v28);
LABEL_23:
    }

LABEL_24:
    v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_invalidationReason] = v2;
    return;
  }

  if (v2 != 2)
  {
    goto LABEL_24;
  }

  v70 = v4;
  v72 = v22;
  v29 = [v1 pkui_frontMostViewController];
  if (!v29)
  {
    v29 = v1;
  }

  v30 = v29;
  sub_1BD0E5E8C(0, &qword_1EBD3D280);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v71 = v30;
  if (([v30 isKindOfClass_] & 1) == 0)
  {
    v35 = v72;
    v36 = *(v72 + 104);
    LODWORD(v70) = *MEMORY[0x1E69B80D8];
    v68 = v36;
    v36(v24);
    v37 = PKPassKitBundle();
    if (v37)
    {
      v38 = v37;
      v65 = sub_1BE04B6F4();
      v69 = v39;

      v40 = *(v35 + 8);
      v72 = v35 + 8;
      v40(v24, v8);
      v41 = *&v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_source];
      v64 = v2;
      v66 = v1;
      if (v41 == 2)
      {
        v42 = "PAYMETS_AND_CONTACTLESS";
      }

      else if (PKIsSettingsShowingPaymentsAndContactless())
      {
        v42 = "v16@?0@UIAlertAction8";
      }

      else
      {
        v42 = "USER_EDUCATION_DEMO_END_TITLE";
      }

      v67 = v40;
      v43 = v68;
      v68(v20, v70, v8);
      v44 = PKPassKitBundle();
      if (v44)
      {
        v45 = v44;
        v63[0] = v42;
        v63[1] = sub_1BE04B6F4();
        v63[2] = v46;

        v47 = v67;
        v67(v20, v8);
        v43(v16, *MEMORY[0x1E69B80D0], v8);
        v48 = PKPassKitBundle();
        if (v48)
        {
          v49 = v48;
          sub_1BE04B6F4();

          v47(v16, v8);
          v43(v12, v70, v8);
          v50 = PKPassKitBundle();
          if (v50)
          {
            v51 = v50;
            sub_1BE04B6F4();

            v47(v12, v8);
            v52 = sub_1BE052404();
            v53 = sub_1BE052404();
            v54 = [objc_opt_self() alertControllerWithTitle:v52 message:v53 preferredStyle:1];

            v55 = sub_1BE052404();
            v56 = objc_opt_self();
            v57 = [v56 actionWithTitle:v55 style:0 handler:0];

            [v54 addAction_];
            v58 = swift_allocObject();
            v1 = v66;
            swift_unknownObjectWeakInit();
            sub_1BE048964();
            v59 = sub_1BE052404();
            v77 = sub_1BD1F1EF4;
            v78 = v58;
            aBlock = MEMORY[0x1E69E9820];
            v74 = 1107296256;
            v75 = sub_1BD198918;
            v76 = &block_descriptor_30_0;
            v60 = _Block_copy(&aBlock);

            v61 = [v56 actionWithTitle:v59 style:2 handler:v60];
            _Block_release(v60);

            [v54 addAction_];
            v62 = [v1 pkui_frontMostViewController];
            if (v62)
            {
              v26 = v62;

              [v26 presentViewController:v54 animated:1 completion:0];

              LOBYTE(v2) = v64;
              goto LABEL_23;
            }

            goto LABEL_29;
          }

LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  sub_1BE04D134();
  v32 = sub_1BE04D204();
  v33 = sub_1BE052C34();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1BD026000, v32, v33, "Frontmost VC is an alert view, skipping presenting another", v34, 2u);
    MEMORY[0x1BFB45F20](v34, -1, -1);
  }

  else
  {
  }

  (*(v70 + 8))(v7, v3);
}

void sub_1BD1F0658()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentingViewController];
    if (v2)
    {
      v3 = v2;
      aBlock[4] = sub_1BD1F0764;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_36;
      v4 = _Block_copy(aBlock);
      [v3 dismissViewControllerAnimated:1 completion:v4];
      _Block_release(v4);
    }

    v1[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_invalidationReason] = 1;
  }
}

id sub_1BD1F0764()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69BB6B0];

  return [v0 endSubjectReporting_];
}

uint64_t sub_1BD1F07A8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

void sub_1BD1F080C(void *a1)
{
  v2 = v1;
  v3 = [a1 userInfo];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  v5 = sub_1BE052244();

  sub_1BE052434();
  sub_1BE0537C4();
  if (!*(v5 + 16) || (v6 = sub_1BD149040(v10), (v7 & 1) == 0))
  {

    sub_1BD149CE8(v10);
LABEL_12:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_13;
  }

  sub_1BD038CD0(*(v5 + 56) + 32 * v6, &v11);
  sub_1BD149CE8(v10);

  if (!*(&v12 + 1))
  {
LABEL_13:
    sub_1BD0DE53C(&v11, &qword_1EBD3EC90);
    return;
  }

  if ((swift_dynamicCast() & 1) != 0 && v10[0] != 7 && v10[0] != 12)
  {
    v8 = *(v2 + OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_demoViewController);
    if (v8)
    {
      v9 = [v8 presentingViewController];
      if (v9)
      {

        sub_1BD1EFE2C(2);
      }
    }
  }
}

id ApplePayUserEducationInstructionsViewController.__allocating_init(context:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithContext_];
}

Swift::Void __swiftcall ApplePayUserEducationInstructionsViewController.applePayUserEducationDidSelectEndDemo()()
{
  v1 = [v0 presentingViewController];
  if (v1)
  {
    v2 = v1;
    v4[4] = sub_1BD1F0764;
    v4[5] = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 1107296256;
    v4[2] = sub_1BD126964;
    v4[3] = &block_descriptor_25;
    v3 = _Block_copy(v4);
    [v2 dismissViewControllerAnimated:1 completion:v3];
    _Block_release(v3);
  }

  *(v0 + OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_invalidationReason) = 1;
}

char *sub_1BD1F0BE4(void *a1, _BYTE *a2)
{
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_delegate + 8] = 0;
  v4 = swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_headerInstructionView] = 0;
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackView] = 0;
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_physicalButtonView] = 0;
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_springBoardBlurView] = 0;
  *(v4 + 8) = &protocol witness table for ApplePayUserEducationInstructionsViewController;
  swift_unknownObjectWeakAssign();

  a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stage] = 0;
  a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_stackViewTargetVisibility] = 1;
  *&a2[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_lockButtonConsumer] = [objc_allocWithZone(type metadata accessor for ApplePayUserEducationDemoViewController.LockButtonConsumer()) init];
  v12.receiver = a2;
  v12.super_class = type metadata accessor for ApplePayUserEducationDemoViewController();
  v5 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, 0, 0);
  v6 = *&v5[OBJC_IVAR____TtC9PassKitUI39ApplePayUserEducationDemoViewController_lockButtonConsumer];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = &v6[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_didConsumeDoublePressUp];
  v9 = *&v6[OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_didConsumeDoublePressUp];
  *v8 = sub_1BD1F1EFC;
  v8[1] = v7;
  v10 = v6;
  sub_1BE048964();
  sub_1BD0D4744(v9);

  return v5;
}

uint64_t sub_1BD1F0D64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD1EF694(a1, v4, v5, v6);
}

unint64_t sub_1BD1F0E18()
{
  result = qword_1EBD35F00;
  if (!qword_1EBD35F00)
  {
    type metadata accessor for PKAnalyticsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD35F00);
  }

  return result;
}

uint64_t sub_1BD1F0E70()
{
  v1 = sub_1BE04AF64();
  v0[29] = v1;
  v0[30] = *(v1 - 8);
  v0[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  v0[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E840);
  v0[33] = swift_task_alloc();
  v2 = sub_1BE04A474();
  v0[34] = v2;
  v0[35] = *(v2 - 8);
  v0[36] = swift_task_alloc();
  v3 = sub_1BE04B104();
  v0[37] = v3;
  v0[38] = *(v3 - 8);
  v0[39] = swift_task_alloc();
  v4 = sub_1BE04B2F4();
  v0[40] = v4;
  v0[41] = *(v4 - 8);
  v0[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  sub_1BE0528A4();
  v0[45] = sub_1BE052894();
  v6 = sub_1BE052844();
  v0[46] = v6;
  v0[47] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD1F1128, v6, v5);
}

uint64_t sub_1BD1F1128()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    v42 = *(v0 + 344);
    v3 = *(v0 + 328);
    v34 = *(v0 + 336);
    v4 = *(v0 + 312);
    v5 = *(v0 + 320);
    v6 = *(v0 + 296);
    v7 = *(v0 + 304);
    v36 = *(v0 + 288);
    v39 = *(v0 + 352);
    v40 = *(v0 + 280);
    v8 = *(v0 + 264);
    v41 = *(v0 + 272);
    v33 = *(v0 + 256);
    v35 = *(v0 + 248);
    v37 = *(v0 + 240);
    v38 = *(v0 + 232);
    *(v0 + 408) = [v1 hasPassesOfType_];

    (*(v7 + 104))(v4, *MEMORY[0x1E6969868], v6);
    sub_1BE04B114();
    (*(v7 + 8))(v4, v6);
    (*(v3 + 56))(v8, 1, 1, v5);
    v9 = sub_1BE04B3B4();
    (*(*(v9 - 8) + 56))(v33, 1, 1, v9);
    LOBYTE(v32) = 1;
    LOBYTE(v31) = 1;
    LOBYTE(v30) = 1;
    LOBYTE(v29) = 1;
    LOBYTE(v28) = 1;
    LOBYTE(v27) = 1;
    LOBYTE(v26) = 1;
    LOBYTE(v25) = 1;
    LOBYTE(v24) = 1;
    LOBYTE(v23) = 1;
    LOBYTE(v22) = 1;
    sub_1BE04A454();
    sub_1BE04AEF4();
    sub_1BE04B214();
    v10 = *(v37 + 8);
    v10(v35, v38);
    (*(v40 + 8))(v36, v41);
    (*(v3 + 8))(v34, v5);
    v11 = [objc_allocWithZone(MEMORY[0x1E69B8EC8]) init];
    *(v0 + 384) = v11;
    sub_1BD15D62C(v39, v42);
    v12 = 0;
    if ((*(v37 + 48))(v42, 1, v38) != 1)
    {
      v13 = *(v0 + 344);
      v14 = *(v0 + 232);
      v12 = sub_1BE04AE64();
      v10(v13, v14);
    }

    [v11 setStartDate_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BE0B7020;
    *(v15 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    *(v0 + 392) = sub_1BD0E5E8C(0, &qword_1EBD3D270);
    v16 = sub_1BE052724();

    [v11 setTransactionTypes_];

    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BE0B7020;
    *(v17 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v18 = sub_1BE052724();

    [v11 setTransactionSources_];

    v19 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
    *(v0 + 400) = v19;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 224;
    *(v0 + 24) = sub_1BD1F1670;
    v20 = swift_continuation_init();
    *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D278);
    *(v0 + 160) = MEMORY[0x1E69E9820];
    *(v0 + 168) = 1107296256;
    *(v0 + 176) = sub_1BD1F07A8;
    *(v0 + 184) = &block_descriptor_24_0;
    *(v0 + 192) = v20;
    [v19 transactionCountForRequest:v11 completion:v0 + 160];
    v1 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1BD1F1670()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);

  return MEMORY[0x1EEE6DFA0](sub_1BD1F1778, v2, v1);
}

uint64_t sub_1BD1F1778()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 384);
  v3 = *(v0 + 408);

  v4 = *(v0 + 224);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  v6 = inited;
  v7 = MEMORY[0x1E69BA8A8];
  *(inited + 16) = xmmword_1BE0B6CA0;
  v8 = *v7;
  *(inited + 32) = v8;
  v9 = 1702195828;
  if (!v3)
  {
    v9 = 0x65736C6166;
  }

  v10 = 0xE500000000000000;
  if (v3)
  {
    v10 = 0xE400000000000000;
  }

  *(inited + 40) = v9;
  *(inited + 48) = v10;
  v11 = *MEMORY[0x1E69BA8A0];
  *(inited + 56) = *MEMORY[0x1E69BA8A0];
  v12 = v8;
  v13 = v11;
  v14 = sub_1BE053054();
  v15 = v14;
  if (v4)
  {
    v4 = v4;
    v16 = sub_1BE053074();

    if (v16)
    {
      v17 = 0xE400000000000000;
      v18 = 1701736302;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v18 = sub_1BE052434();
LABEL_10:
  v19 = *(v0 + 384);
  v20 = *(v0 + 352);
  *(v6 + 64) = v18;
  *(v6 + 72) = v17;
  v23 = sub_1BD1AAF50(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();

  sub_1BD0DE53C(v20, &unk_1EBD39970);

  v21 = *(v0 + 8);

  return v21(v23);
}

uint64_t sub_1BD1F19B0()
{
  v1 = *&v0[OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_demoViewController];
  if (v1)
  {
    [v0 presentViewController:v1 animated:1 completion:0];
  }

  v2 = sub_1BE052434();
  v4 = v3;
  v5 = sub_1BE052434();
  v7 = v6;
  v8 = sub_1BE052434();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v12 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  *(inited + 40) = v5;
  *(inited + 48) = v7;
  v13 = *MEMORY[0x1E69BA680];
  *(inited + 56) = *MEMORY[0x1E69BA680];
  *(inited + 64) = v2;
  *(inited + 72) = v4;
  v14 = v12;
  v15 = v13;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  v16 = *MEMORY[0x1E69BA440];
  sub_1BE048C84();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BD1DAE70(v8, v10, v16, isUniquelyReferenced_nonNull_native);

  v18 = objc_opt_self();
  v19 = *MEMORY[0x1E69BB6B0];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v20 = sub_1BE052224();

  [v18 subject:v19 sendEvent:v20];
}

void _s9PassKitUI47ApplePayUserEducationInstructionsViewControllerC011explanationiJ15DidSelectCancelyySo013PKExplanationiJ0CF_0()
{
  v1 = v0;
  v2 = sub_1BE052434();
  v4 = v3;
  v5 = sub_1BE052434();
  v7 = v6;
  v8 = sub_1BE052434();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v12 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  *(inited + 40) = v5;
  *(inited + 48) = v7;
  v13 = *MEMORY[0x1E69BA680];
  *(inited + 56) = *MEMORY[0x1E69BA680];
  *(inited + 64) = v2;
  *(inited + 72) = v4;
  v14 = v12;
  v15 = v13;
  v16 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  v17 = *MEMORY[0x1E69BA440];
  sub_1BE048C84();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25[0] = v16;
  sub_1BD1DAE70(v8, v10, v17, isUniquelyReferenced_nonNull_native);

  v19 = objc_opt_self();
  v20 = *MEMORY[0x1E69BB6B0];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v21 = sub_1BE052224();

  [v19 subject:v20 sendEvent:{v21, v16}];

  v22 = [v1 presentingViewController];
  if (v22)
  {
    v23 = v22;
    v25[4] = sub_1BD1F0764;
    v25[5] = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 1107296256;
    v25[2] = sub_1BD126964;
    v25[3] = &block_descriptor_20;
    v24 = _Block_copy(v25);
    [v23 dismissViewControllerAnimated:1 completion:v24];
    _Block_release(v24);
  }

  *(v1 + OBJC_IVAR___PKApplePayUserEducationInstructionsViewController_invalidationReason) = 0;
}

unint64_t sub_1BD1F1E88()
{
  result = qword_1EBD3D250;
  if (!qword_1EBD3D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D250);
  }

  return result;
}

uint64_t PKPeerPaymentRecurringPaymentFrequency.id.getter()
{
  v0 = PKPeerPaymentRecurringPaymentFrequencyToString();
  v1 = sub_1BE052434();

  return v1;
}

unint64_t sub_1BD1F1F70(uint64_t a1)
{
  result = sub_1BD1F1F98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BD1F1F98()
{
  result = qword_1EBD3D290;
  if (!qword_1EBD3D290)
  {
    type metadata accessor for PKPeerPaymentRecurringPaymentFrequency(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D290);
  }

  return result;
}

void sub_1BD1F1FF0(uint64_t *a1@<X8>)
{
  v2 = PKPeerPaymentRecurringPaymentFrequencyToString();
  v3 = sub_1BE052434();
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
}

uint64_t type metadata accessor for FrequencySelectionRow()
{
  result = qword_1EBD3D298;
  if (!qword_1EBD3D298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD1F20B4()
{
  sub_1BD1F21A8();
  if (v0 <= 0x3F)
  {
    sub_1BD1F223C(319, &qword_1EBD36A40, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      sub_1BD1F223C(319, &qword_1EBD3D2B8, sub_1BD1F2290);
      if (v2 <= 0x3F)
      {
        sub_1BD0FA9D0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD1F21A8()
{
  if (!qword_1EBD3D2A8)
  {
    type metadata accessor for FrequencySelectionModel();
    sub_1BD1F3FB0(&qword_1EBD3D2B0, type metadata accessor for FrequencySelectionModel);
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD3D2A8);
    }
  }
}

void sub_1BD1F223C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BD1F2290()
{
  result = qword_1EBD43100;
  if (!qword_1EBD43100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD43100);
  }

  return result;
}

uint64_t sub_1BD1F22F8@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D2C0);
  MEMORY[0x1EEE9AC00](v67, v2);
  v4 = v51 - v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D2C8);
  MEMORY[0x1EEE9AC00](v65, v5);
  v7 = v51 - v6;
  v66 = sub_1BE04EB64();
  v8 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v9);
  v61 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FrequencySelectionRow();
  v12 = v11 - 8;
  v57 = *(v11 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v58 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v56, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D2D0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v51 - v18;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D2D8);
  v60 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v20);
  v59 = v51 - v21;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D2E0);
  MEMORY[0x1EEE9AC00](v64, v22);
  if (*(v1 + *(v12 + 32)) == 1)
  {
    v51[1] = *(v1 + 8);
    v54 = v51 - v23;
    v55 = v24;
    type metadata accessor for FrequencySelectionModel();
    sub_1BD1F3FB0(&qword_1EBD3D2B0, type metadata accessor for FrequencySelectionModel);
    v53 = v8;
    sub_1BE04E964();
    swift_getKeyPath();
    sub_1BE04E974();

    v52 = v7;
    *&v27 = MEMORY[0x1EEE9AC00](v25, v26);
    v68 = v27;
    v69 = v28;
    sub_1BD1F2EA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D318);
    sub_1BD1103C8();
    sub_1BD1F3FF8();
    sub_1BD1F404C();
    sub_1BE0517D4();
    v29 = sub_1BE051494();
    KeyPath = swift_getKeyPath();
    v31 = &v19[*(v16 + 36)];
    *v31 = KeyPath;
    v31[1] = v29;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v32 = v58;
    sub_1BD1F41CC(v1, v58);
    v33 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v34 = swift_allocObject();
    sub_1BD1F4230(v32, v34 + v33);
    v35 = sub_1BD1F3E70();
    v36 = sub_1BD1F3F54();
    v37 = v59;
    sub_1BE051064();

    sub_1BD054808(v19);
    v38 = v61;
    sub_1BE04EB54();
    v70 = v16;
    v71 = &type metadata for WrappedFrequency;
    v72 = v35;
    v73 = v36;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = MEMORY[0x1E697C178];
    v41 = v54;
    v42 = v63;
    v43 = v66;
    sub_1BE050924();
    (*(v53 + 8))(v38, v43);
    (*(v60 + 8))(v37, v42);
    v44 = v55;
    v45 = v64;
    (*(v55 + 16))(v52, v41, v64);
    swift_storeEnumTagMultiPayload();
    v70 = v42;
    v71 = v43;
    v72 = OpaqueTypeConformance2;
    v73 = v40;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD3D310, &qword_1EBD3D2C0);
    sub_1BE04F9A4();
    return (*(v44 + 8))(v41, v45);
  }

  else
  {
    *v4 = sub_1BE050194();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D2E8);
    sub_1BD1F31D0(&v4[*(v47 + 44)]);
    sub_1BD0DE19C(v4, v7, &qword_1EBD3D2C0);
    swift_storeEnumTagMultiPayload();
    v48 = sub_1BD1F3E70();
    v49 = sub_1BD1F3F54();
    v70 = v16;
    v71 = &type metadata for WrappedFrequency;
    v72 = v48;
    v73 = v49;
    v50 = swift_getOpaqueTypeConformance2();
    v70 = v63;
    v71 = v66;
    v72 = v50;
    v73 = MEMORY[0x1E697C178];
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD3D310, &qword_1EBD3D2C0);
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v4, &qword_1EBD3D2C0);
  }
}

uint64_t sub_1BD1F2BC4()
{
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D338);
  sub_1BD0DE4F4(&qword_1EBD3D348, &qword_1EBD3D340);
  sub_1BD1F40D0();
  sub_1BD1F4314();
  return sub_1BE0519D4();
}

uint64_t sub_1BD1F2CC8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D358);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v18 - v5;
  v7 = *a1;
  v8 = PKPeerPaymentRecurringPaymentFrequencyToLocalizedString();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1BE052434();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v18 = v10;
  v19 = v12;
  sub_1BD0DDEBC();
  *v6 = sub_1BE0506C4();
  *(v6 + 1) = v13;
  v6[16] = v14 & 1;
  *(v6 + 3) = v15;
  *(v6 + 4) = v7;
  v6[40] = 1;
  sub_1BE052434();
  v16 = sub_1BD1F3FF8();
  v18 = MEMORY[0x1E6981148];
  v19 = &type metadata for WrappedFrequency;
  v20 = MEMORY[0x1E6981138];
  v21 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();

  return (*(v3 + 8))(v6, v2);
}

id sub_1BD1F2EA8()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x1E69B80D8], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v2 + 8))(v5, v1);
    v27 = v8;
    v28 = v10;
    sub_1BD0DDEBC();
    v11 = sub_1BE0506C4();
    v13 = v12;
    v15 = v14;
    v16 = *(v0 + *(type metadata accessor for FrequencySelectionRow() + 28));
    if (v16)
    {
      v17 = v16;
      v18 = sub_1BE0511C4();
    }

    else
    {
      v18 = sub_1BE051464();
    }

    v27 = v18;
    v19 = sub_1BE050574();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    sub_1BD0DDF10(v11, v13, v15 & 1);

    v27 = v19;
    v28 = v21;
    v29 = v23 & 1;
    v30 = v25;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v19, v21, v23 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD1F3108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for FrequencySelectionRow();
  v5 = *(a3 + *(result + 32));
  if (v5)
  {
    sub_1BE048964();
    v6 = PKPeerPaymentRecurringPaymentFrequencyToString();
    v7 = sub_1BE052434();
    v9 = v8;

    v5(v7, v9);

    return sub_1BD0D4744(v5);
  }

  return result;
}

uint64_t sub_1BD1F31D0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D360);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D368);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v22 - v16;
  *v17 = sub_1BE04F504();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D370);
  sub_1BD1F3414(&v17[*(v18 + 44)]);
  *v9 = sub_1BE04F7B4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D378);
  sub_1BD1F38E0(&v9[*(v19 + 44)]);
  sub_1BD0DE19C(v17, v14, &qword_1EBD3D368);
  sub_1BD0DE19C(v9, v6, &qword_1EBD3D360);
  sub_1BD0DE19C(v14, a1, &qword_1EBD3D368);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D380);
  sub_1BD0DE19C(v6, a1 + *(v20 + 48), &qword_1EBD3D360);
  sub_1BD0DE53C(v9, &qword_1EBD3D360);
  sub_1BD0DE53C(v17, &qword_1EBD3D368);
  sub_1BD0DE53C(v6, &qword_1EBD3D360);
  return sub_1BD0DE53C(v14, &qword_1EBD3D368);
}

uint64_t sub_1BD1F3414@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D388);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D390);
  v6 = v5 - 8;
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v33 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v33 - v24;
  sub_1BD1F2EA8();
  sub_1BD1F3728();
  sub_1BE051CF4();
  sub_1BE04EE54();
  sub_1BD0DE204(v4, v14, &qword_1EBD3D388);
  v26 = &v14[*(v6 + 44)];
  v27 = v40;
  *(v26 + 4) = v39;
  *(v26 + 5) = v27;
  *(v26 + 6) = v41;
  v28 = v36;
  *v26 = v35;
  *(v26 + 1) = v28;
  v29 = v38;
  *(v26 + 2) = v37;
  *(v26 + 3) = v29;
  sub_1BD0DE204(v14, v17, &qword_1EBD3D390);
  sub_1BD0DE19C(v25, v22, &qword_1EBD452C0);
  sub_1BD0DE19C(v17, v10, &qword_1EBD3D390);
  v30 = v34;
  sub_1BD0DE19C(v22, v34, &qword_1EBD452C0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D3C0);
  sub_1BD0DE19C(v10, v30 + *(v31 + 48), &qword_1EBD3D390);
  sub_1BD0DE53C(v17, &qword_1EBD3D390);
  sub_1BD0DE53C(v25, &qword_1EBD452C0);
  sub_1BD0DE53C(v10, &qword_1EBD3D390);
  return sub_1BD0DE53C(v22, &qword_1EBD452C0);
}

uint64_t sub_1BD1F3728()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v1 = type metadata accessor for FrequencySelectionRow();
  sub_1BD8FC944(v0 + *(v1 + 20));
  sub_1BD0DDEBC();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  sub_1BE051494();
  v7 = sub_1BE050564();
  v9 = v8;
  v11 = v10;

  sub_1BD0DDF10(v2, v4, v6 & 1);

  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D3B0);
  sub_1BD1F4368();
  sub_1BE050DE4();

  sub_1BD0DDF10(v7, v9, v11 & 1);
}

uint64_t sub_1BD1F38E0@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D388);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v62 = &v61 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D390);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v61 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D398);
  v10 = v9 - 8;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v64 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v61 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v63 = &v61 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v61 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D3A0);
  v25 = v24 - 8;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v61 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = &v61 - v31;
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v61 - v34;
  sub_1BD1F2EA8();
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD0DE204(v23, v32, &qword_1EBD452C0);
  v36 = &v32[*(v25 + 44)];
  v37 = v71;
  *(v36 + 4) = v70;
  *(v36 + 5) = v37;
  *(v36 + 6) = v72;
  v38 = v67;
  *v36 = v66;
  *(v36 + 1) = v38;
  v39 = v69;
  *(v36 + 2) = v68;
  *(v36 + 3) = v39;
  sub_1BD0DE204(v32, v35, &qword_1EBD3D3A0);
  v40 = v62;
  sub_1BD1F3728();
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD0DE204(v40, v8, &qword_1EBD3D388);
  v41 = &v8[*(v5 + 44)];
  v42 = v78;
  *(v41 + 4) = v77;
  *(v41 + 5) = v42;
  *(v41 + 6) = v79;
  v43 = v74;
  *v41 = v73;
  *(v41 + 1) = v43;
  v44 = v76;
  *(v41 + 2) = v75;
  *(v41 + 3) = v44;
  v45 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_1BD0DE204(v8, v17, &qword_1EBD3D390);
  v54 = &v17[*(v10 + 44)];
  *v54 = v45;
  *(v54 + 1) = v47;
  *(v54 + 2) = v49;
  *(v54 + 3) = v51;
  *(v54 + 4) = v53;
  v54[40] = 0;
  v55 = v63;
  sub_1BD0DE204(v17, v63, &qword_1EBD3D398);
  v56 = v61;
  sub_1BD0DE19C(v35, v61, &qword_1EBD3D3A0);
  v57 = v64;
  sub_1BD0DE19C(v55, v64, &qword_1EBD3D398);
  v58 = v65;
  sub_1BD0DE19C(v56, v65, &qword_1EBD3D3A0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D3A8);
  sub_1BD0DE19C(v57, v58 + *(v59 + 48), &qword_1EBD3D398);
  sub_1BD0DE53C(v55, &qword_1EBD3D398);
  sub_1BD0DE53C(v35, &qword_1EBD3D3A0);
  sub_1BD0DE53C(v57, &qword_1EBD3D398);
  return sub_1BD0DE53C(v56, &qword_1EBD3D3A0);
}

unint64_t sub_1BD1F3E70()
{
  result = qword_1EBD3D2F0;
  if (!qword_1EBD3D2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D2D0);
    sub_1BD0DE4F4(&qword_1EBD3D2F8, &qword_1EBD3D300);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D2F0);
  }

  return result;
}

unint64_t sub_1BD1F3F54()
{
  result = qword_1EBD3D308;
  if (!qword_1EBD3D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D308);
  }

  return result;
}

uint64_t sub_1BD1F3FB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD1F3FF8()
{
  result = qword_1EBD3D320;
  if (!qword_1EBD3D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D320);
  }

  return result;
}

unint64_t sub_1BD1F404C()
{
  result = qword_1EBD3D328;
  if (!qword_1EBD3D328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D318);
    sub_1BD1F40D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D328);
  }

  return result;
}

unint64_t sub_1BD1F40D0()
{
  result = qword_1EBD3D330;
  if (!qword_1EBD3D330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D338);
    sub_1BD1F3FF8();
    swift_getOpaqueTypeConformance2();
    sub_1BD1F3FB0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D330);
  }

  return result;
}

uint64_t sub_1BD1F41CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FrequencySelectionRow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1F4230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FrequencySelectionRow();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1F4294(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for FrequencySelectionRow() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD1F3108(a1, a2, v6);
}

unint64_t sub_1BD1F4314()
{
  result = qword_1EBD3D350;
  if (!qword_1EBD3D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D350);
  }

  return result;
}

unint64_t sub_1BD1F4368()
{
  result = qword_1EBD3D3B8;
  if (!qword_1EBD3D3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D3B8);
  }

  return result;
}

unint64_t sub_1BD1F43EC()
{
  result = qword_1EBD3D3C8;
  if (!qword_1EBD3D3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3D3D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D2D8);
    sub_1BE04EB64();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D2D0);
    sub_1BD1F3E70();
    sub_1BD1F3F54();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD3D310, &qword_1EBD3D2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D3C8);
  }

  return result;
}

uint64_t sub_1BD1F4558@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1BD1F4588@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v26 = a2;
  v27 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v25 - v12;
  sub_1BE04CDA4();
  sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  a4[4] = sub_1BE04EEC4();
  a4[5] = v14;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  sub_1BD0DE19C(v29, v28, &qword_1EBD51EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0);
  sub_1BE051694();
  sub_1BD0DE53C(v29, &qword_1EBD51EC0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D5C0);
  v16 = sub_1BE04C614();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  sub_1BD0DE19C(v13, v9, &qword_1EBD3D520);
  sub_1BE051694();
  sub_1BD0DE53C(v13, &qword_1EBD3D520);
  v17 = *(v15 + 108);
  *(a4 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  swift_storeEnumTagMultiPayload();
  v18 = a4 + *(v15 + 112);
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  type metadata accessor for ExternalAuthorizationModel();
  sub_1BD2000E0(&qword_1EBD3A280, type metadata accessor for ExternalAuthorizationModel);
  sub_1BE048964();
  *a4 = sub_1BE04E954();
  a4[1] = v19;
  sub_1BD0EE8CC(a1, (a4 + 6));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  type metadata accessor for AuthenticatorModel();
  sub_1BD2000E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  v20 = sub_1BE04E954();
  v22 = v21;

  a4[2] = v20;
  a4[3] = v22;
  a4[11] = 0;
  a4[12] = 0;
  v23 = v27;
  a4[13] = v26;
  a4[14] = v23;
  a4[15] = 0;
  a4[16] = 0;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1BD1F48F4@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v26 = a2;
  v27 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v25 - v12;
  sub_1BE04CDA4();
  sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  *(a4 + 32) = sub_1BE04EEC4();
  *(a4 + 40) = v14;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  sub_1BD0DE19C(v29, v28, &qword_1EBD51EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0);
  sub_1BE051694();
  sub_1BD0DE53C(v29, &qword_1EBD51EC0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D620);
  v16 = sub_1BE04C614();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  sub_1BD0DE19C(v13, v9, &qword_1EBD3D520);
  sub_1BE051694();
  sub_1BD0DE53C(v13, &qword_1EBD3D520);
  v17 = *(v15 + 108);
  *(a4 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  swift_storeEnumTagMultiPayload();
  v18 = a4 + *(v15 + 112);
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  type metadata accessor for ExternalAuthorizationModel();
  sub_1BD2000E0(&qword_1EBD3A280, type metadata accessor for ExternalAuthorizationModel);
  sub_1BE048964();
  *a4 = sub_1BE04E954();
  *(a4 + 8) = v19;
  sub_1BD0EE8CC(a1, a4 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  type metadata accessor for AuthenticatorModel();
  sub_1BD2000E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  v20 = sub_1BE04E954();
  v22 = v21;

  *(a4 + 16) = v20;
  *(a4 + 24) = v22;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  v23 = v27;
  *(a4 + 120) = v26;
  *(a4 + 128) = v23;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1BD1F4C64@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v26 = a2;
  v27 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v25 - v12;
  sub_1BE04CDA4();
  sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  *(a4 + 32) = sub_1BE04EEC4();
  *(a4 + 40) = v14;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  sub_1BD0DE19C(v29, v28, &qword_1EBD51EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0);
  sub_1BE051694();
  sub_1BD0DE53C(v29, &qword_1EBD51EC0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D600);
  v16 = sub_1BE04C614();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  sub_1BD0DE19C(v13, v9, &qword_1EBD3D520);
  sub_1BE051694();
  sub_1BD0DE53C(v13, &qword_1EBD3D520);
  v17 = *(v15 + 108);
  *(a4 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  swift_storeEnumTagMultiPayload();
  v18 = a4 + *(v15 + 112);
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  type metadata accessor for ExternalAuthorizationModel();
  sub_1BD2000E0(&qword_1EBD3A280, type metadata accessor for ExternalAuthorizationModel);
  sub_1BE048964();
  *a4 = sub_1BE04E954();
  *(a4 + 8) = v19;
  sub_1BD0EE8CC(a1, a4 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  type metadata accessor for AuthenticatorModel();
  sub_1BD2000E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  v20 = sub_1BE04E954();
  v22 = v21;

  *(a4 + 16) = v20;
  *(a4 + 24) = v22;
  v23 = v27;
  *(a4 + 88) = v26;
  *(a4 + 96) = v23;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1BD1F4FD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v192 = a2;
  v191 = a1;
  v198 = a4;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D630);
  MEMORY[0x1EEE9AC00](v156, v5);
  v172 = &v152 - v6;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D638);
  MEMORY[0x1EEE9AC00](v171, v7);
  v170 = &v152 - v8;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D620);
  MEMORY[0x1EEE9AC00](v155, v9);
  v169 = &v152 - v10;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D640);
  MEMORY[0x1EEE9AC00](v175, v11);
  v176 = &v152 - v12;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D600);
  MEMORY[0x1EEE9AC00](v166, v13);
  v168 = &v152 - v14;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D648);
  MEMORY[0x1EEE9AC00](v163, v15);
  v164 = &v152 - v16;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D5F0);
  MEMORY[0x1EEE9AC00](v161, v17);
  v167 = (&v152 - v18);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D610);
  MEMORY[0x1EEE9AC00](v174, v19);
  v154 = &v152 - v20;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D5E0);
  MEMORY[0x1EEE9AC00](v173, v21);
  v165 = &v152 - v22;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D5C0);
  MEMORY[0x1EEE9AC00](v162, v23);
  v153 = (&v152 - v24);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D650);
  MEMORY[0x1EEE9AC00](v158, v25);
  v160 = &v152 - v26;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D5B0);
  MEMORY[0x1EEE9AC00](v159, v27);
  v29 = (&v152 - v28);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D658);
  MEMORY[0x1EEE9AC00](v196, v30);
  v197 = &v152 - v31;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D660);
  MEMORY[0x1EEE9AC00](v186, v32);
  v187 = &v152 - v33;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D590);
  MEMORY[0x1EEE9AC00](v182, v34);
  v36 = (&v152 - v35);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D668);
  MEMORY[0x1EEE9AC00](v178, v37);
  v181 = &v152 - v38;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v190, v39);
  v188 = &v152 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v189 = &v152 - v43;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D580);
  MEMORY[0x1EEE9AC00](v179, v44);
  v46 = (&v152 - v45);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D5A0);
  MEMORY[0x1EEE9AC00](v184, v47);
  v157 = &v152 - v48;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D570);
  MEMORY[0x1EEE9AC00](v183, v49);
  v180 = &v152 - v50;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D5D0);
  MEMORY[0x1EEE9AC00](v195, v51);
  v53 = &v152 - v52;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D560);
  MEMORY[0x1EEE9AC00](v193, v54);
  v185 = &v152 - v55;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v56 = sub_1BE04C824();
  v194 = v57;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v58 = sub_1BE04C834();
  v199 = v59;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v60 = sub_1BE04C814();
  v61 = v60;
  v201 = v60;
  v202 = v62;
  v200 = v58;
  if (v58)
  {
    if (v56)
    {
      if (v60)
      {
        sub_1BD0EE8CC(v191, &v207);
        v63 = swift_allocObject();
        v191 = v63;
        v64 = v194;
        *(v63 + 16) = v56;
        *(v63 + 24) = v64;
        v65 = swift_allocObject();
        v67 = v199;
        v66 = v200;
        *(v65 + 16) = v200;
        *(v65 + 24) = v67;
        v68 = swift_allocObject();
        v69 = v202;
        *(v68 + 16) = v61;
        *(v68 + 24) = v69;
        sub_1BD0D44B8(v66);
        sub_1BD0D44B8(v56);
        sub_1BD0D44B8(v61);
        sub_1BD0D44B8(v56);
        sub_1BD0D44B8(v66);
        sub_1BD0D44B8(v61);
        sub_1BE04CDA4();
        sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
        v46[4] = sub_1BE04EEC4();
        v46[5] = v70;
        v206 = 0;
        v204 = 0u;
        v205 = 0u;
        sub_1BD0DE19C(&v204, v203, &qword_1EBD51EC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0);
        sub_1BE051694();
        sub_1BD0DE53C(&v204, &qword_1EBD51EC0);
        v177 = v56;
        v71 = v179;
        v72 = sub_1BE04C614();
        v73 = v189;
        (*(*(v72 - 8) + 56))(v189, 1, 1, v72);
        sub_1BD0DE19C(v73, v188, &qword_1EBD3D520);
        sub_1BE051694();
        sub_1BD0DE53C(v73, &qword_1EBD3D520);
        v74 = *(v71 + 108);
        *(v46 + v74) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
        swift_storeEnumTagMultiPayload();
        v75 = v46 + *(v71 + 112);
        *v75 = swift_getKeyPath();
        v75[8] = 0;
        type metadata accessor for ExternalAuthorizationModel();
        sub_1BD2000E0(&qword_1EBD3A280, type metadata accessor for ExternalAuthorizationModel);
        sub_1BE048964();
        *v46 = sub_1BE04E954();
        v46[1] = v76;
        sub_1BD0EE8CC(&v207, (v46 + 6));
        __swift_project_boxed_opaque_existential_1(&v207, v208);
        sub_1BE04CC54();
        type metadata accessor for AuthenticatorModel();
        sub_1BD2000E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
        v46[2] = sub_1BE04E954();
        v46[3] = v77;
        v78 = v191;
        v46[11] = sub_1BD2007A8;
        v46[12] = v78;
        v46[13] = sub_1BD2007A8;
        v46[14] = v65;
        v46[15] = sub_1BD2007A8;
        v46[16] = v68;
        __swift_destroy_boxed_opaque_existential_0(&v207);
        v79 = &qword_1EBD3D580;
        sub_1BD0DE19C(v46, v181, &qword_1EBD3D580);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD3D578, &qword_1EBD3D580);
        sub_1BD0DE4F4(&qword_1EBD3D588, &qword_1EBD3D590);
        v80 = v180;
        v56 = v177;
        sub_1BE04F9A4();
        sub_1BD0D4744(v201);
        v81 = v46;
      }

      else
      {
        sub_1BD0EE8CC(v191, &v207);
        v118 = swift_allocObject();
        v119 = v194;
        *(v118 + 16) = v56;
        *(v118 + 24) = v119;
        v120 = swift_allocObject();
        v191 = v120;
        v122 = v199;
        v121 = v200;
        *(v120 + 16) = v200;
        *(v120 + 24) = v122;
        sub_1BD0D44B8(v121);
        sub_1BD0D44B8(v56);
        sub_1BD0D44B8(v56);
        sub_1BD0D44B8(v121);
        sub_1BE04CDA4();
        sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
        v36[4] = sub_1BE04EEC4();
        v36[5] = v123;
        v206 = 0;
        v204 = 0u;
        v205 = 0u;
        sub_1BD0DE19C(&v204, v203, &qword_1EBD51EC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0);
        sub_1BE051694();
        sub_1BD0DE53C(&v204, &qword_1EBD51EC0);
        v124 = v182;
        v125 = sub_1BE04C614();
        v126 = v189;
        (*(*(v125 - 8) + 56))(v189, 1, 1, v125);
        sub_1BD0DE19C(v126, v188, &qword_1EBD3D520);
        sub_1BE051694();
        sub_1BD0DE53C(v126, &qword_1EBD3D520);
        v127 = *(v124 + 108);
        *(v36 + v127) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
        swift_storeEnumTagMultiPayload();
        v128 = v36 + *(v124 + 112);
        *v128 = swift_getKeyPath();
        v128[8] = 0;
        type metadata accessor for ExternalAuthorizationModel();
        sub_1BD2000E0(&qword_1EBD3A280, type metadata accessor for ExternalAuthorizationModel);
        sub_1BE048964();
        *v36 = sub_1BE04E954();
        v36[1] = v129;
        sub_1BD0EE8CC(&v207, (v36 + 6));
        __swift_project_boxed_opaque_existential_1(&v207, v208);
        sub_1BE04CC54();
        type metadata accessor for AuthenticatorModel();
        sub_1BD2000E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
        v36[2] = sub_1BE04E954();
        v36[3] = v130;
        v36[11] = sub_1BD2007A8;
        v36[12] = v118;
        v131 = v191;
        v36[13] = sub_1BD2007A8;
        v36[14] = v131;
        v36[15] = 0;
        v36[16] = 0;
        __swift_destroy_boxed_opaque_existential_0(&v207);
        v79 = &qword_1EBD3D590;
        sub_1BD0DE19C(v36, v181, &qword_1EBD3D590);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD3D578, &qword_1EBD3D580);
        sub_1BD0DE4F4(&qword_1EBD3D588, &qword_1EBD3D590);
        v80 = v180;
        sub_1BE04F9A4();
        v81 = v36;
      }

      sub_1BD0DE53C(v81, v79);
      v132 = &qword_1EBD3D570;
      sub_1BD0DE19C(v80, v187, &qword_1EBD3D570);
      swift_storeEnumTagMultiPayload();
      sub_1BD20036C();
      sub_1BD20044C();
      v133 = v185;
      sub_1BE04F9A4();
      sub_1BD0D4744(v56);
    }

    else
    {
      if (v60)
      {
        sub_1BD0EE8CC(v191, &v207);
        v104 = swift_allocObject();
        v106 = v199;
        v105 = v200;
        *(v104 + 16) = v200;
        *(v104 + 24) = v106;
        v107 = swift_allocObject();
        v108 = v202;
        *(v107 + 16) = v61;
        *(v107 + 24) = v108;
        sub_1BD0D44B8(v105);
        sub_1BD0D44B8(v61);
        sub_1BD0D44B8(v105);
        sub_1BD0D44B8(v61);
        sub_1BE04CDA4();
        sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
        v29[4] = sub_1BE04EEC4();
        v29[5] = v109;
        v206 = 0;
        v204 = 0u;
        v205 = 0u;
        sub_1BD0DE19C(&v204, v203, &qword_1EBD51EC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0);
        sub_1BE051694();
        sub_1BD0DE53C(&v204, &qword_1EBD51EC0);
        v110 = v159;
        v111 = sub_1BE04C614();
        v112 = v189;
        (*(*(v111 - 8) + 56))(v189, 1, 1, v111);
        sub_1BD0DE19C(v112, v188, &qword_1EBD3D520);
        sub_1BE051694();
        sub_1BD0DE53C(v112, &qword_1EBD3D520);
        v113 = *(v110 + 108);
        *(v29 + v113) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
        swift_storeEnumTagMultiPayload();
        v114 = v29 + *(v110 + 112);
        *v114 = swift_getKeyPath();
        v114[8] = 0;
        type metadata accessor for ExternalAuthorizationModel();
        sub_1BD2000E0(&qword_1EBD3A280, type metadata accessor for ExternalAuthorizationModel);
        sub_1BE048964();
        *v29 = sub_1BE04E954();
        v29[1] = v115;
        sub_1BD0EE8CC(&v207, (v29 + 6));
        __swift_project_boxed_opaque_existential_1(&v207, v208);
        sub_1BE04CC54();
        type metadata accessor for AuthenticatorModel();
        sub_1BD2000E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
        v29[2] = sub_1BE04E954();
        v29[3] = v116;
        v29[11] = 0;
        v29[12] = 0;
        v29[13] = sub_1BD2007A8;
        v29[14] = v104;
        v29[15] = sub_1BD2007A8;
        v29[16] = v107;
        __swift_destroy_boxed_opaque_existential_0(&v207);
        v117 = &qword_1EBD3D5B0;
        sub_1BD0DE19C(v29, v160, &qword_1EBD3D5B0);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD3D5A8, &qword_1EBD3D5B0);
        sub_1BD0DE4F4(&qword_1EBD3D5B8, &qword_1EBD3D5C0);
        v80 = v157;
        sub_1BE04F9A4();
        sub_1BD0D4744(v201);
      }

      else
      {
        sub_1BD0EE8CC(v191, &v207);
        v144 = swift_allocObject();
        v146 = v199;
        v145 = v200;
        *(v144 + 16) = v200;
        *(v144 + 24) = v146;
        sub_1BD0D44B8(v145);
        sub_1BD0D44B8(v145);
        sub_1BE048964();
        v29 = v153;
        sub_1BD1F4588(&v207, sub_1BD2007A8, v144, v153);
        v117 = &qword_1EBD3D5C0;
        sub_1BD0DE19C(v29, v160, &qword_1EBD3D5C0);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD3D5A8, &qword_1EBD3D5B0);
        sub_1BD0DE4F4(&qword_1EBD3D5B8, &qword_1EBD3D5C0);
        v80 = v157;
        sub_1BE04F9A4();
      }

      sub_1BD0DE53C(v29, v117);
      v132 = &qword_1EBD3D5A0;
      sub_1BD0DE19C(v80, v187, &qword_1EBD3D5A0);
      swift_storeEnumTagMultiPayload();
      sub_1BD20036C();
      sub_1BD20044C();
      v133 = v185;
      sub_1BE04F9A4();
    }

    sub_1BD0DE53C(v80, v132);
    v147 = &qword_1EBD3D560;
    sub_1BD0DE19C(v133, v197, &qword_1EBD3D560);
    swift_storeEnumTagMultiPayload();
    sub_1BD2002E0();
    sub_1BD20052C();
    sub_1BE04F9A4();
    v148 = v200;
    sub_1BD0D4744(v200);
    sub_1BD0D4744(v201);
    sub_1BD0D4744(v56);
    sub_1BD0D4744(v148);
    v149 = v133;
  }

  else
  {
    v82 = v168;
    v83 = v169;
    v84 = v172;
    v85 = v170;
    v86 = v167;
    v200 = v53;
    v177 = v56;
    if (v56)
    {
      if (v60)
      {
        sub_1BD0EE8CC(v191, &v207);
        v87 = swift_allocObject();
        v88 = v177;
        v89 = v194;
        *(v87 + 16) = v177;
        *(v87 + 24) = v89;
        v90 = swift_allocObject();
        v91 = v202;
        *(v90 + 16) = v61;
        *(v90 + 24) = v91;
        sub_1BD0D44B8(v88);
        sub_1BD0D44B8(v61);
        sub_1BD0D44B8(v88);
        sub_1BD0D44B8(v61);
        sub_1BE04CDA4();
        sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
        v86[4] = sub_1BE04EEC4();
        v86[5] = v92;
        v206 = 0;
        v204 = 0u;
        v205 = 0u;
        sub_1BD0DE19C(&v204, v203, &qword_1EBD51EC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0);
        sub_1BE051694();
        sub_1BD0DE53C(&v204, &qword_1EBD51EC0);
        v93 = v161;
        v94 = sub_1BE04C614();
        v95 = v189;
        (*(*(v94 - 8) + 56))(v189, 1, 1, v94);
        sub_1BD0DE19C(v95, v188, &qword_1EBD3D520);
        sub_1BE051694();
        sub_1BD0DE53C(v95, &qword_1EBD3D520);
        v96 = *(v93 + 108);
        *(v86 + v96) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
        swift_storeEnumTagMultiPayload();
        v97 = v86 + *(v93 + 112);
        *v97 = swift_getKeyPath();
        v97[8] = 0;
        type metadata accessor for ExternalAuthorizationModel();
        sub_1BD2000E0(&qword_1EBD3A280, type metadata accessor for ExternalAuthorizationModel);
        sub_1BE048964();
        *v86 = sub_1BE04E954();
        v86[1] = v98;
        sub_1BD0EE8CC(&v207, (v86 + 6));
        __swift_project_boxed_opaque_existential_1(&v207, v208);
        sub_1BE04CC54();
        type metadata accessor for AuthenticatorModel();
        sub_1BD2000E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
        v86[2] = sub_1BE04E954();
        v86[3] = v99;
        v86[11] = sub_1BD2007A8;
        v86[12] = v87;
        v86[13] = 0;
        v86[14] = 0;
        v86[15] = sub_1BD2007A8;
        v86[16] = v90;
        __swift_destroy_boxed_opaque_existential_0(&v207);
        v100 = &qword_1EBD3D5F0;
        sub_1BD0DE19C(v86, v164, &qword_1EBD3D5F0);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD3D5E8, &qword_1EBD3D5F0);
        sub_1BD0DE4F4(&qword_1EBD3D5F8, &qword_1EBD3D600);
        v101 = v165;
        sub_1BE04F9A4();
        sub_1BD0D4744(v201);
        v102 = v86;
        v103 = v177;
      }

      else
      {
        sub_1BD0EE8CC(v191, &v207);
        v139 = swift_allocObject();
        v103 = v177;
        v140 = v194;
        *(v139 + 16) = v177;
        *(v139 + 24) = v140;
        sub_1BD0D44B8(v103);
        sub_1BD0D44B8(v103);
        sub_1BE048964();
        sub_1BD1F4C64(&v207, sub_1BD2007A8, v139, v82);
        v100 = &qword_1EBD3D600;
        sub_1BD0DE19C(v82, v164, &qword_1EBD3D600);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD3D5E8, &qword_1EBD3D5F0);
        sub_1BD0DE4F4(&qword_1EBD3D5F8, &qword_1EBD3D600);
        v101 = v165;
        sub_1BE04F9A4();
        v102 = v82;
      }

      sub_1BD0DE53C(v102, v100);
      v141 = &qword_1EBD3D5E0;
      sub_1BD0DE19C(v101, v176, &qword_1EBD3D5E0);
      swift_storeEnumTagMultiPayload();
      sub_1BD2005B8();
      sub_1BD200698();
      v142 = v200;
      sub_1BE04F9A4();
      sub_1BD0D4744(v103);
      v143 = v101;
    }

    else
    {
      if (v60)
      {
        sub_1BD0EE8CC(v191, &v207);
        v134 = swift_allocObject();
        v135 = v202;
        *(v134 + 16) = v61;
        *(v134 + 24) = v135;
        sub_1BD0D44B8(v61);
        sub_1BE048964();
        sub_1BD1F48F4(&v207, sub_1BD200778, v134, v83);
        v136 = &qword_1EBD3D620;
        sub_1BD0DE19C(v83, v85, &qword_1EBD3D620);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD3D618, &qword_1EBD3D620);
        sub_1BD0DE4F4(&qword_1EBD3D628, &qword_1EBD3D630);
        v137 = v154;
        sub_1BE04F9A4();
        v138 = v83;
      }

      else
      {
        sub_1BD0EE8CC(v191, &v207);
        v150 = v192;
        sub_1BE048964();
        sub_1BD141854(&v207, v150, v84);
        v136 = &qword_1EBD3D630;
        sub_1BD0DE19C(v84, v85, &qword_1EBD3D630);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD3D618, &qword_1EBD3D620);
        sub_1BD0DE4F4(&qword_1EBD3D628, &qword_1EBD3D630);
        v137 = v154;
        sub_1BE04F9A4();
        v138 = v84;
      }

      sub_1BD0DE53C(v138, v136);
      v103 = v177;
      v141 = &qword_1EBD3D610;
      sub_1BD0DE19C(v137, v176, &qword_1EBD3D610);
      swift_storeEnumTagMultiPayload();
      sub_1BD2005B8();
      sub_1BD200698();
      v142 = v200;
      sub_1BE04F9A4();
      v143 = v137;
    }

    sub_1BD0DE53C(v143, v141);
    v147 = &qword_1EBD3D5D0;
    sub_1BD0DE19C(v142, v197, &qword_1EBD3D5D0);
    swift_storeEnumTagMultiPayload();
    sub_1BD2002E0();
    sub_1BD20052C();
    sub_1BE04F9A4();
    sub_1BD0D4744(v201);
    sub_1BD0D4744(v103);
    v149 = v142;
  }

  return sub_1BD0DE53C(v149, v147);
}

id static PaymentRequestViewInterfaceFactory.interface(forConfiguration:withDelegate:)(void *a1, uint64_t a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D3E0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v39 - v12;
  sub_1BD038CD0(a2, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D3E8);
  if (swift_dynamicCast())
  {
    v43 = v10;
    v44 = v9;
    v14 = v52[0];
    sub_1BE04CDA4();
    swift_allocObject();
    v15 = sub_1BE04CD94();
    v16 = [a1 request];
    v17 = [v16 _shouldSupportLandscapeOrientation];

    if (v17)
    {
      sub_1BE051C54();
    }

    sub_1BE04CD64();
    v52[5] = sub_1BD1F792C(v52, a1, v15, v14);
    sub_1BD0DE19C(v52, v49, &qword_1EBD3D3F0);

    sub_1BD0DE19C(v52, v47, &qword_1EBD3D3F0);
    v39 = v48;
    v41 = type metadata accessor for PaymentRequestViewInterface();
    v22 = v14;
    v23 = objc_allocWithZone(v41);
    swift_unknownObjectWeakInit();
    v42 = v22;
    *&v23[OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_hostDelegate] = v22;
    swift_unknownObjectRetain();
    v24 = [a1 presenter];
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *&v23[OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_context] = v15;
    sub_1BD0EE8CC(v49, &v23[OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine]);
    v25 = v50;
    v26 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v27 = *(v26 + 24);
    sub_1BE048964();
    *&v23[OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_serviceDelegate] = v27(v25, v26);
    v40 = [a1 paymentSheetExperiment];
    sub_1BD0E5E8C(0, &qword_1EBD35E30);
    sub_1BD0EE33C();
    v28 = sub_1BE04D804();
    type metadata accessor for PresentationContext();
    v29 = v39;
    sub_1BE048964();
    v30 = [a1 presenter];
    v31 = swift_allocObject();
    v32 = OBJC_IVAR____TtC9PassKitUI19PresentationContext__presenter;
    v46[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D3F8);
    sub_1BE04D874();
    (*(v43 + 32))(v31 + v32, v13, v44);
    swift_getKeyPath();
    swift_getKeyPath();
    v46[0] = v30;
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD2000E0(&unk_1EBD361B0, type metadata accessor for PresentationContext);
    v33 = sub_1BE04D804();
    sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
    v34 = sub_1BE04D804();
    v46[0] = v29;
    v46[1] = v28;
    v35 = v40;
    v46[2] = v40;
    v46[3] = v33;
    v46[4] = v31;
    v46[5] = v34;
    v46[6] = v15;
    v36 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D400));
    swift_retain_n();
    sub_1BE048964();
    sub_1BE048964();
    v37 = v35;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    *&v23[OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_viewController] = sub_1BE04CCC4();
    v45.receiver = v23;
    v45.super_class = v41;
    v21 = objc_msgSendSuper2(&v45, sel_init);
    sub_1BD0FF718();
    swift_unknownObjectRelease();

    sub_1BD0DE53C(v52, &qword_1EBD3D3F0);
    __swift_destroy_boxed_opaque_existential_0(v49);
    __swift_destroy_boxed_opaque_existential_0(v47);
  }

  else
  {
    sub_1BE04D084();
    v18 = sub_1BE04D204();
    v19 = sub_1BE052C34();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BD026000, v18, v19, "Delegate did not conform to PKPaymentAuthorizationHostProtocol", v20, 2u);
      MEMORY[0x1BFB45F20](v20, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  return v21;
}

uint64_t sub_1BD1F792C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v687 = a3;
  v688 = a4;
  v673 = type metadata accessor for PaymentSheet();
  MEMORY[0x1EEE9AC00](v673, v6);
  v672 = (&v662 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for VirtualCardSheet();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v662 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v675 = type metadata accessor for AccountServiceSheet();
  MEMORY[0x1EEE9AC00](v675, v12);
  v674 = (&v662 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1BE052CF4();
  MEMORY[0x1EEE9AC00](v14, v15);
  v682 = (&v662 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1BE052D44();
  v677 = *(v17 - 8);
  v678 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v662 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v662 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D410);
  v685 = *(v25 - 1);
  v686 = v25;
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v662 - v28;
  v30 = [a2 request];
  v31 = [v30 requestType];
  v683 = a1;
  v684 = v30;
  v680 = v14;
  v681 = v20;
  v679 = v24;
  if (v31 > 7)
  {
    v674 = v11;
    v675 = v8;
    if (v31 <= 11)
    {
      if ((v31 - 8) >= 3)
      {
        goto LABEL_318;
      }

LABEL_30:
      if (([v30 _isPSD2StyleRequest] & 1) == 0 && (objc_msgSend(v30, sel__isAMPApplePayClassicRequest) & 1) == 0 && !objc_msgSend(v30, sel__isPVKRequest))
      {
        v241 = [a2 request];
        v242 = [v241 requestType];

        v243 = [objc_allocWithZone(MEMORY[0x1E69BC740]) init];
        if (v242)
        {
          v244 = v242 == 10;
        }

        else
        {
          v244 = 1;
        }

        v245 = v244;
        LODWORD(v668) = v245;
        v669 = [objc_allocWithZone(MEMORY[0x1E69B8B88]) init];
        v675 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
        v667 = [objc_allocWithZone(MEMORY[0x1E69B9000]) init];
        v670 = objc_opt_self();
        v674 = [v670 sharedService];
        if (!v674)
        {
          goto LABEL_315;
        }

        v671 = [objc_allocWithZone(MEMORY[0x1E69B8400]) init];
        v666 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4D0);
        v123 = objc_allocWithZone(v666);
        v246 = MEMORY[0x1E69E7D40];
        v676 = *((*MEMORY[0x1E69E7D40] & *v123) + 0x90);
        v247 = v676;
        type metadata accessor for PaymentAuthorizationServiceContext();
        v248 = swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        *(v248 + 32) = 0;
        *&v247[v123] = v248;
        v249 = *((*v246 & *v123) + 0xA0);
        sub_1BE04BE74();
        swift_unknownObjectRetain();
        v250 = a2;
        sub_1BE048964();
        v665 = v243;
        *(v123 + v249) = MEMORY[0x1BFB38EF0]();
        v251 = *((*v246 & *v123) + 0xA8);
        LOBYTE(v702) = 0;
        sub_1BE04D874();
        (v685)[4](v123 + v251, v29, v686);
        *(v123 + *((*v246 & *v123) + 0xB0)) = 0;
        *(v123 + *((*v246 & *v123) + 0xB8)) = 0;
        *(v123 + *((*v246 & *v123) + 0xC0)) = 0;
        *(v123 + *((*v246 & *v123) + 0xC8)) = 0;
        v686 = [(objc_class *)v250 request];
        v252 = (v123 + *((*v246 & *v123) + 0x78));
        swift_beginAccess();
        sub_1BE04CDA4();
        sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
        sub_1BE048964();
        *v252 = sub_1BE04E954();
        v252[1] = v253;
        swift_endAccess();
        v52 = *((*v246 & *v123) + 0xD8);
        v254 = v669;
        *(v52 + v123) = v669;
        v664 = v254;
        sub_1BE048964();
        v255 = [(objc_class *)v250 presenter];
        swift_unknownObjectWeakAssign();

        swift_unknownObjectRelease();
        swift_unknownObjectWeakAssign();
        v256 = [v670 sharedService];
        if (!v256)
        {
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
          goto LABEL_318;
        }

        v257 = v256;
        v258 = [v256 context];

        v259 = [v258 configuration];
        v260 = [v259 contactFormatConfiguration];
        if (v260)
        {
          v685 = [objc_allocWithZone(MEMORY[0x1E69B8730]) initWithConfiguration_];
        }

        else
        {
          v685 = 0;
        }

        v307 = [objc_allocWithZone(MEMORY[0x1E69B8B68]) initWithMode_];
        if (!v307)
        {
          goto LABEL_317;
        }

        v308 = *((*MEMORY[0x1E69E7D40] & *v123) + 0xD0);
        *(v308 + v123) = v307;
        v309 = v307;
        v670 = v667;
        [v309 setPeerPaymentService_];
        v310 = *(v308 + v123);
        v311 = [(objc_class *)v250 applicationIdentifier];
        v84 = v250;
        if (!v311)
        {
          sub_1BE052434();
          v311 = sub_1BE052404();
        }

        [v310 setHostApplicationIdentifier_];

        v312 = *(v308 + v123);
        v313 = [(objc_class *)v250 localizedApplicationName];
        if (!v313)
        {
          sub_1BE052434();
          v313 = sub_1BE052404();
        }

        [v312 setHostAppLocalizedName_];

        v314 = *(v308 + v123);
        v315 = [(objc_class *)v250 bundleIdentifier];
        if (!v315)
        {
          sub_1BE052434();
          v315 = sub_1BE052404();
        }

        v667 = v259;
        [v314 setBundleIdentifier_];

        v316 = *(v308 + v123);
        v317 = [(objc_class *)v250 relevantPassUniqueID];
        if (!v317)
        {
          sub_1BE052434();
          v317 = sub_1BE052404();
        }

        [v316 setRelevantPassUniqueID_];

        [*(v308 + v123) setContactFormatValidator_];
        [*(v308 + v123) setSupportsEmptyPass_];
        v236 = v308;
        v318 = *(v308 + v123);
        v319 = [(objc_class *)v250 presenter];
        if (v319)
        {
          v320 = [v319 isIssuerInstallmentsRepayment];
          swift_unknownObjectRelease();
        }

        else
        {
          v320 = 0;
        }

        v321 = v686;
        v668 = v260;
        [v318 setPresenterIsIssuerInstallmentsRepayment_];

        v669 = v236;
        [*(v236 + v123) setPaymentRequest_];
        if ([v321 requestType] != 5)
        {
          goto LABEL_286;
        }

        v322 = [v321 paymentSummaryItems];
        sub_1BD0E5E8C(0, &qword_1EBD3D4A0);
        v149 = sub_1BE052744();

        v151 = *(v669 + v123);
        v323 = [v321 paymentSummaryItems];
        v153 = sub_1BE052744();

        if (!(v153 >> 62))
        {
          v324 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v324)
          {
LABEL_284:
            v328 = v236;

            v327 = 0;
            goto LABEL_285;
          }

LABEL_213:
          v154 = __OFSUB__(v324, 1);
          v302 = v324 - 1;
          if (!v154)
          {
            if ((v153 & 0xC000000000000001) == 0)
            {
              if ((v302 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v302 < *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v325 = *(v153 + 8 * v302 + 32);
LABEL_218:
                v326 = v325;

                v327 = [v326 amount];

                v328 = v236;
LABEL_285:
                [v151 setInstallmentAuthorizationAmount_];

                v607 = *(v328 + v123);
                v608 = sub_1BD1FFD7C(1, v149);
                sub_1BD3F0360(v608);

                v609 = sub_1BE052724();

                [v607 setPaymentSummaryItems_];

                v250 = v84;
LABEL_286:
                v663 = v250;
                [*(v52 + v123) setPaymentService_];
                [*(v52 + v123) setPaymentWebService_];
                [*(v52 + v123) setAccountService_];
                v610 = *(v52 + v123);
                v611 = v670;
                [v610 setPeerPaymentService_];

                v612 = *(v52 + v123);
                v613 = objc_allocWithZone(MEMORY[0x1E69B8538]);
                v614 = v612;
                v615 = [v613 init];
                [v614 setAggregateDictionary_];

                sub_1BD0E5E8C(0, &qword_1EBD35E90);
                sub_1BE051F94();
                (*(v677 + 104))(v681, *MEMORY[0x1E69E8098], v678);
                *&v702 = MEMORY[0x1E69E7CC0];
                sub_1BD2000E0(&unk_1EBD35EB0, MEMORY[0x1E69E8030]);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420);
                sub_1BD0DE4F4(&unk_1EBD35F10, &unk_1EBD3D420);
                sub_1BE053664();
                v616 = sub_1BE052D74();
                v617 = MEMORY[0x1E69E7D40];
                *(v123 + *((*MEMORY[0x1E69E7D40] & *v123) + 0x88)) = v616;
                v618 = v669;
                v619 = *(v669 + v123);
                type metadata accessor for AddressManager();
                swift_allocObject();
                v620 = sub_1BD0E6090(v619, v616);
                *(v123 + *((*v617 & *v123) + 0x80)) = v620;
                v621 = *(v618 + v123);
                v622 = v123 + *((*v617 & *v123) + 0x60);
                v624 = v664;
                v623 = v665;
                *v622 = v664;
                *(v622 + 1) = v623;
                *(v622 + 1) = xmmword_1BE0B8E10;
                *(v622 + 4) = v621;
                *(v622 + 5) = v620;
                v625 = v623;
                v626 = v624;
                sub_1BE048964();
                v627 = v621;
                v628 = [v686 clientAnalyticsParameters];
                v682 = v626;
                if (v628)
                {
                  type metadata accessor for PKPaymentRequestClientAnalyticsParameters(0);
                  sub_1BD2000E0(&qword_1EBD38220, type metadata accessor for PKPaymentRequestClientAnalyticsParameters);
                  sub_1BE052244();

                  v628 = sub_1BE052224();
                }

                [(objc_class *)v625 setClientAnalyticsParameters:v628];

                v702 = *v622;
                v703 = *(v622 + 1);
                v704 = *(v622 + 2);
                v629 = v702;
                v630 = v704;
                v716 = *(&v702 + 1);
                v717[0] = *(&v703 + 1);
                type metadata accessor for AuthenticatorModel();
                swift_allocObject();
                v631 = v629;
                sub_1BD0DE19C(&v716, &v711, &qword_1EBD3D490);
                sub_1BD0DE19C(v717, &v711, &qword_1EBD40150);
                v632 = v630;
                sub_1BE048964();
                v633 = sub_1BD83D0D4(&v702, 2, 0, 1);
                v634 = v625;
                v635 = MEMORY[0x1E69E7D40];
                swift_beginAccess();
                *&v708 = v633;
                sub_1BE048964();
                sub_1BE04D874();
                swift_endAccess();
                v636 = objc_allocWithZone(type metadata accessor for AuthenticatorWrapper());
                v637 = v634;
                v680 = v633;
                v681 = v637;
                v638 = sub_1BE048964();
                *(v123 + *((*v635 & *v123) + 0x70)) = sub_1BD7F33EC(v638, v637);
                v711 = *v622;
                v712 = *(v622 + 1);
                v713 = *(v622 + 2);
                v701[0] = *(&v711 + 1);
                v639 = v711;
                v640 = v713;
                v707[0] = *(&v712 + 1);
                type metadata accessor for PaymentAuthorizationModel(0);
                swift_allocObject();
                v641 = v639;
                sub_1BD0DE19C(v701, &v708, &qword_1EBD3D490);
                sub_1BD0DE19C(v707, &v708, &qword_1EBD40150);
                v642 = v640;
                sub_1BE048964();
                v643 = sub_1BD5D6AE4(&v711);

                sub_1BD0DE53C(v701, &qword_1EBD3D490);
                sub_1BD0DE53C(v707, &qword_1EBD40150);

                v644 = MEMORY[0x1E69E7D40];
                swift_beginAccess();
                v715 = v643;
                sub_1BE04D874();
                swift_endAccess();
                v645 = *&v676[v123];
                v646 = type metadata accessor for PaymentAuthorizationServiceDelegate();
                v647 = objc_allocWithZone(v646);
                v648 = v682;
                *&v647[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine] = v682;
                *&v647[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_context] = v645;
                v696.receiver = v647;
                v696.super_class = v646;
                v649 = v648;
                sub_1BE048964();
                *(v123 + *((*v644 & *v123) + 0x98)) = objc_msgSendSuper2(&v696, sel_init);
                v650 = v666;
                v695.receiver = v123;
                v695.super_class = v666;
                v651 = objc_msgSendSuper2(&v695, sel_init);
                sub_1BE04BE34();
                v652 = swift_allocObject();
                swift_unknownObjectWeakInit();
                sub_1BD42B68C(v651, v652);

                v653 = v663;
                v654 = v681;

                swift_unknownObjectRelease();

                v655 = v683;
                v683[3] = v650;
                v655[4] = sub_1BD0DE4F4(&qword_1EBD3D4D8, &qword_1EBD3D4D0);
                *v655 = v651;
                v656 = v651;
                v657 = [(objc_class *)v653 request];
                v658 = [v657 supportedNetworks];

                type metadata accessor for PKPaymentNetwork(0);
                v659 = sub_1BE052744();

                v660 = [(objc_class *)v653 request];
                v661 = [v660 merchantCapabilities];

                sub_1BD251AE8(v656, v659, v661, 0, v672);
                sub_1BD2000E0(&qword_1EBD3D4E0, type metadata accessor for PaymentSheet);
                v422 = sub_1BE0518D4();

                goto LABEL_277;
              }

              __break(1u);
              goto LABEL_297;
            }

LABEL_294:
            v325 = MEMORY[0x1BFB40900](v302, v153);
            goto LABEL_218;
          }

LABEL_293:
          __break(1u);
          goto LABEL_294;
        }

LABEL_283:
        v324 = sub_1BE053704();
        if (!v324)
        {
          goto LABEL_284;
        }

        goto LABEL_213;
      }

      sub_1BD1FF9E0(a2, v707);
      v93 = [a2 request];
      if (([v93 _isPSD2StyleRequest] & 1) == 0 && !objc_msgSend(v93, sel__isAMPApplePayClassicRequest))
      {
        v94 = [v93 merchantSession];
        if (!v94)
        {
          v282 = [v93 requestType];
          v95 = 3;
          if (v282 == 3)
          {
            v95 = 1;
          }

LABEL_38:
          v671 = v95;
          v669 = v93;
          v672 = [objc_allocWithZone(MEMORY[0x1E69B8B88]) init];
          v675 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
          v670 = [objc_allocWithZone(MEMORY[0x1E69B9000]) init];
          v676 = objc_opt_self();
          v674 = [v676 sharedService];
          if (!v674)
          {
LABEL_297:
            __break(1u);
            goto LABEL_298;
          }

          v673 = [objc_allocWithZone(MEMORY[0x1E69B8400]) init];
          v666 = [objc_allocWithZone(MEMORY[0x1E69BC740]) init];
          v668 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51FD0);
          v52 = objc_allocWithZone(v668);
          v96 = MEMORY[0x1E69E7D40];
          v97 = *((*MEMORY[0x1E69E7D40] & *v52) + 0x90);
          type metadata accessor for PaymentAuthorizationServiceContext();
          v98 = swift_allocObject();
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakInit();
          *(v98 + 32) = 0;
          *&v97[v52] = v98;
          v99 = *((*v96 & *v52) + 0xA0);
          sub_1BE04BE74();
          swift_unknownObjectRetain();
          v100 = a2;
          v101 = sub_1BE048964();
          *(v52 + v99) = MEMORY[0x1BFB38EF0](v101);
          v102 = *((*v96 & *v52) + 0xA8);
          LOBYTE(v702) = 0;
          sub_1BE04D874();
          (v685)[4](v52 + v102, v29, v686);
          *(v52 + *((*v96 & *v52) + 0xB0)) = 0;
          *(v52 + *((*v96 & *v52) + 0xB8)) = 0;
          *(v52 + *((*v96 & *v52) + 0xC0)) = 0;
          *(v52 + *((*v96 & *v52) + 0xC8)) = 0;
          v686 = [v100 request];
          v103 = (v52 + *((*v96 & *v52) + 0x78));
          swift_beginAccess();
          sub_1BE04CDA4();
          sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
          sub_1BE048964();
          *v103 = sub_1BE04E954();
          v103[1] = v104;
          swift_endAccess();
          v105 = *v96;
          v39 = v100;
          v84 = *((v105 & *v52) + 0xD8);
          v106 = v672;
          *(v84 + v52) = v672;
          v107 = v106;
          sub_1BE048964();
          v108 = [v100 presenter];
          swift_unknownObjectWeakAssign();

          swift_unknownObjectRelease();
          v667 = v97;
          swift_unknownObjectWeakAssign();
          v109 = [v676 sharedService];
          if (!v109)
          {
LABEL_298:
            __break(1u);
LABEL_299:
            __break(1u);
            goto LABEL_300;
          }

          v110 = v109;
          v663 = v107;
          v111 = [v109 context];

          v112 = [v111 configuration];
          v665 = v112;
          v113 = [(objc_class *)v112 contactFormatConfiguration];
          if (v113)
          {
            v676 = [objc_allocWithZone(MEMORY[0x1E69B8730]) initWithConfiguration_];
          }

          else
          {
            v676 = 0;
          }

          v131 = v686;
          v664 = v113;
          v132 = objc_allocWithZone(MEMORY[0x1E69B8B68]);
          v133 = [v132 initWithMode_];
          if (!v133)
          {
            goto LABEL_299;
          }

          v134 = *((*MEMORY[0x1E69E7D40] & *v52) + 0xD0);
          *&v134[v52] = v133;
          v135 = v133;
          v672 = v670;
          [v135 setPeerPaymentService_];
          v136 = *&v134[v52];
          v137 = [v100 applicationIdentifier];
          v685 = v134;
          if (!v137)
          {
            sub_1BE052434();
            v137 = sub_1BE052404();
            v134 = v685;
          }

          [v136 setHostApplicationIdentifier_];

          v138 = *&v134[v52];
          v139 = [v100 localizedApplicationName];
          if (!v139)
          {
            sub_1BE052434();
            v139 = sub_1BE052404();
            v134 = v685;
          }

          [v138 setHostAppLocalizedName_];

          v140 = *&v134[v52];
          v141 = [v100 bundleIdentifier];
          if (!v141)
          {
            sub_1BE052434();
            v141 = sub_1BE052404();
            v134 = v685;
          }

          [v140 setBundleIdentifier_];

          v142 = *&v134[v52];
          v143 = [v100 relevantPassUniqueID];
          if (!v143)
          {
            sub_1BE052434();
            v143 = sub_1BE052404();
            v134 = v685;
          }

          [v142 setRelevantPassUniqueID_];

          [*&v134[v52] setContactFormatValidator_];
          [*&v134[v52] setSupportsEmptyPass_];
          v144 = *&v134[v52];
          v145 = [v100 presenter];
          if (v145)
          {
            v146 = [v145 isIssuerInstallmentsRepayment];
            v134 = v685;
            swift_unknownObjectRelease();
          }

          else
          {
            v146 = 0;
          }

          [v144 setPresenterIsIssuerInstallmentsRepayment_];

          [*&v134[v52] setPaymentRequest_];
          v147 = v134;
          if ([v131 requestType] != 5)
          {
            goto LABEL_225;
          }

          v123 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
          v148 = [v131 paymentSummaryItems];
          sub_1BD0E5E8C(0, &qword_1EBD3D4A0);
          v149 = sub_1BE052744();

          v150 = *&v134[v52];
          v32 = [v131 paymentSummaryItems];
          v151 = sub_1BE052744();

          if (v151 >> 62)
          {
            v152 = sub_1BE053704();
            v153 = v685;
            if (v152)
            {
LABEL_63:
              v154 = __OFSUB__(v152, 1);
              v155 = v152 - 1;
              if (v154)
              {
                __break(1u);
              }

              else if ((v151 & 0xC000000000000001) == 0)
              {
                if ((v155 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (v155 < *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v156 = *(v151 + 8 * v155 + 32);
LABEL_68:
                  v157 = v156;

                  v158 = [v157 amount];

                  v153 = v685;
LABEL_224:
                  [v150 setInstallmentAuthorizationAmount_];

                  v330 = *(v52 + v153);
                  v331 = sub_1BD1FFD7C(1, v149);
                  sub_1BD3F0360(v331);
                  v147 = v153;

                  v332 = sub_1BE052724();

                  [v330 setPaymentSummaryItems_];

LABEL_225:
                  v685 = v39;
                  [*(v84 + v52) setPaymentService_];
                  [*(v84 + v52) setPaymentWebService_];
                  [*(v84 + v52) setAccountService_];
                  v333 = *(v84 + v52);
                  v334 = v672;
                  [v333 setPeerPaymentService_];

                  v335 = *(v84 + v52);
                  v336 = objc_allocWithZone(MEMORY[0x1E69B8538]);
                  v337 = v335;
                  v338 = [v336 init];
                  [v337 setAggregateDictionary_];

                  v671 = sub_1BD0E5E8C(0, &qword_1EBD35E90);
                  sub_1BE051F94();
                  (*(v677 + 104))(v681, *MEMORY[0x1E69E8098], v678);
                  *&v702 = MEMORY[0x1E69E7CC0];
                  sub_1BD2000E0(&unk_1EBD35EB0, MEMORY[0x1E69E8030]);
                  v339 = v147;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420);
                  sub_1BD0DE4F4(&unk_1EBD35F10, &unk_1EBD3D420);
                  sub_1BE053664();
                  v340 = sub_1BE052D74();
                  v341 = MEMORY[0x1E69E7D40];
                  *(v52 + *((*MEMORY[0x1E69E7D40] & *v52) + 0x88)) = v340;
                  v342 = *&v339[v52];
                  type metadata accessor for AddressManager();
                  swift_allocObject();
                  v343 = sub_1BD0E6090(v342, v340);
                  *(v52 + *((*v341 & *v52) + 0x80)) = v343;
                  v344 = *&v339[v52];
                  v345 = v52 + *((*v341 & *v52) + 0x60);
                  v346 = v663;
                  v347 = v666;
                  *v345 = v663;
                  *(v345 + 1) = v347;
                  *(v345 + 1) = xmmword_1BE0B8E10;
                  *(v345 + 4) = v344;
                  *(v345 + 5) = v343;
                  v348 = v346;
                  sub_1BE048964();
                  v349 = v347;
                  v350 = v344;
                  v351 = [v686 clientAnalyticsParameters];
                  v682 = v348;
                  if (v351)
                  {
                    type metadata accessor for PKPaymentRequestClientAnalyticsParameters(0);
                    sub_1BD2000E0(&qword_1EBD38220, type metadata accessor for PKPaymentRequestClientAnalyticsParameters);
                    sub_1BE052244();

                    v351 = sub_1BE052224();
                  }

                  [(objc_class *)v349 setClientAnalyticsParameters:v351];

                  v711 = *v345;
                  v712 = *(v345 + 1);
                  v713 = *(v345 + 2);
                  v352 = v711;
                  v353 = v713;
                  v714 = *(&v711 + 1);
                  v715 = *(&v712 + 1);
                  type metadata accessor for AuthenticatorModel();
                  swift_allocObject();
                  v354 = v352;
                  sub_1BD0DE19C(&v714, &v702, &qword_1EBD3D490);
                  sub_1BD0DE19C(&v715, &v702, &qword_1EBD40150);
                  v355 = v353;
                  sub_1BE048964();
                  v356 = sub_1BD83D0D4(&v711, 2, 0, 1);
                  v357 = v349;
                  v358 = MEMORY[0x1E69E7D40];
                  swift_beginAccess();
                  *&v708 = v356;
                  sub_1BE048964();
                  sub_1BE04D874();
                  swift_endAccess();
                  v359 = objc_allocWithZone(type metadata accessor for AuthenticatorWrapper());
                  v360 = v357;
                  v681 = v360;
                  v361 = sub_1BE048964();
                  *(v52 + *((*v358 & *v52) + 0x70)) = sub_1BD7F33EC(v361, v360);
                  v708 = *v345;
                  v709 = *(v345 + 1);
                  v710 = *(v345 + 2);
                  v362 = v708;
                  v363 = v710;
                  v716 = *(&v708 + 1);
                  v717[0] = *(&v709 + 1);
                  type metadata accessor for AMPAuthorizationModel();
                  swift_allocObject();
                  v364 = v362;
                  sub_1BD0DE19C(&v716, &v702, &qword_1EBD3D490);
                  sub_1BD0DE19C(v717, &v702, &qword_1EBD40150);
                  v365 = v363;
                  sub_1BE048964();
                  v366 = sub_1BD28BE10(&v708);
                  swift_beginAccess();
                  v701[0] = v366;
                  sub_1BE04D874();
                  swift_endAccess();
                  v367 = *&v667[v52];
                  v368 = type metadata accessor for PaymentAuthorizationServiceDelegate();
                  v369 = objc_allocWithZone(v368);
                  v370 = v682;
                  *&v369[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine] = v682;
                  *&v369[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_context] = v367;
                  v694.receiver = v369;
                  v694.super_class = v368;
                  v371 = v370;
                  sub_1BE048964();
                  *(v52 + *((*v358 & *v52) + 0x98)) = objc_msgSendSuper2(&v694, sel_init);
                  v372 = v668;
                  v693.receiver = v52;
                  v693.super_class = v668;
                  v373 = objc_msgSendSuper2(&v693, sel_init);
                  goto LABEL_244;
                }

                __break(1u);
                goto LABEL_232;
              }

              v156 = MEMORY[0x1BFB40900](v155, v151);
              goto LABEL_68;
            }
          }

          else
          {
            v152 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v153 = v685;
            if (v152)
            {
              goto LABEL_63;
            }
          }

          v158 = 0;
          goto LABEL_224;
        }
      }

      v95 = 1;
      goto LABEL_38;
    }

    if (v31 > 13)
    {
      if (v31 != 14)
      {
        if (v31 != 15)
        {
          goto LABEL_318;
        }

        goto LABEL_70;
      }
    }

    else if (v31 != 12)
    {
      v672 = [objc_allocWithZone(MEMORY[0x1E69B8B88]) init];
      v676 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
      v671 = [objc_allocWithZone(MEMORY[0x1E69B9000]) init];
      v673 = objc_opt_self();
      v675 = [(objc_class *)v673 sharedService];
      if (!v675)
      {
LABEL_312:
        __break(1u);
        goto LABEL_313;
      }

      v674 = [objc_allocWithZone(MEMORY[0x1E69B8400]) init];
      v669 = [objc_allocWithZone(MEMORY[0x1E69BC740]) init];
      v670 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4B8);
      v52 = objc_allocWithZone(v670);
      v53 = MEMORY[0x1E69E7D40];
      v54 = *((*MEMORY[0x1E69E7D40] & *v52) + 0x90);
      type metadata accessor for PaymentAuthorizationServiceContext();
      v55 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      *(v55 + 32) = 0;
      *(v54 + v52) = v55;
      v56 = *((*v53 & *v52) + 0xA0);
      sub_1BE04BE74();
      swift_unknownObjectRetain();
      v57 = a2;
      v58 = sub_1BE048964();
      *(v52 + v56) = MEMORY[0x1BFB38EF0](v58);
      v59 = v57;
      v60 = *((*v53 & *v52) + 0xA8);
      LOBYTE(v702) = 0;
      sub_1BE04D874();
      (v685)[4](v52 + v60, v29, v686);
      *(v52 + *((*v53 & *v52) + 0xB0)) = 0;
      *(v52 + *((*v53 & *v52) + 0xB8)) = 0;
      *(v52 + *((*v53 & *v52) + 0xC0)) = 0;
      *(v52 + *((*v53 & *v52) + 0xC8)) = 0;
      v686 = [v57 request];
      v61 = (v52 + *((*v53 & *v52) + 0x78));
      swift_beginAccess();
      sub_1BE04CDA4();
      sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
      sub_1BE048964();
      *v61 = sub_1BE04E954();
      v61[1] = v62;
      swift_endAccess();
      v63 = *((*v53 & *v52) + 0xD8);
      v64 = v672;
      *(v63 + v52) = v672;
      v668 = v64;
      sub_1BE048964();
      v65 = [v59 presenter];
      swift_unknownObjectWeakAssign();

      swift_unknownObjectRelease();
      v672 = v54;
      swift_unknownObjectWeakAssign();
      v66 = [(objc_class *)v673 sharedService];
      if (!v66)
      {
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
        goto LABEL_316;
      }

      v67 = v66;
      v68 = [v66 context];

      v69 = [v68 configuration];
      v70 = [v69 contactFormatConfiguration];
      v667 = v70;
      if (v70)
      {
        v685 = [objc_allocWithZone(MEMORY[0x1E69B8730]) initWithConfiguration_];
      }

      else
      {
        v685 = 0;
      }

      v283 = v686;
      v666 = v63;
      v284 = [objc_allocWithZone(MEMORY[0x1E69B8B68]) initWithMode_];
      if (!v284)
      {
        goto LABEL_314;
      }

      v285 = *((*MEMORY[0x1E69E7D40] & *v52) + 0xD0);
      *(v285 + v52) = v284;
      v286 = v284;
      v673 = v671;
      [v286 setPeerPaymentService_];
      v287 = *(v285 + v52);
      v288 = [v59 applicationIdentifier];
      v84 = v285;
      if (!v288)
      {
        sub_1BE052434();
        v288 = sub_1BE052404();
      }

      [v287 setHostApplicationIdentifier_];

      v289 = *(v285 + v52);
      v290 = [v59 localizedApplicationName];
      if (!v290)
      {
        sub_1BE052434();
        v290 = sub_1BE052404();
      }

      [v289 setHostAppLocalizedName_];

      v291 = *(v285 + v52);
      v292 = [v59 bundleIdentifier];
      if (!v292)
      {
        sub_1BE052434();
        v292 = sub_1BE052404();
      }

      [v291 setBundleIdentifier_];

      v293 = *(v285 + v52);
      v294 = [v59 relevantPassUniqueID];
      if (!v294)
      {
        sub_1BE052434();
        v294 = sub_1BE052404();
      }

      [v293 setRelevantPassUniqueID_];

      [*(v285 + v52) setContactFormatValidator_];
      [*(v285 + v52) setSupportsEmptyPass_];
      v295 = *(v285 + v52);
      v296 = [v59 presenter];
      v665 = v59;
      if (v296)
      {
        v297 = [v296 isIssuerInstallmentsRepayment];
        swift_unknownObjectRelease();
      }

      else
      {
        v297 = 0;
      }

      v671 = v69;
      [v295 setPresenterIsIssuerInstallmentsRepayment_];

      v298 = v285;
      [*(v285 + v52) setPaymentRequest_];
      if ([v283 requestType] != 5)
      {
LABEL_273:
        v563 = v666;
        [*(v666 + v52) setPaymentService_];
        [*(v563 + v52) setPaymentWebService_];
        [*(v563 + v52) setAccountService_];
        v564 = *(v563 + v52);
        v565 = v673;
        [v564 setPeerPaymentService_];

        v566 = *(v563 + v52);
        v567 = objc_allocWithZone(MEMORY[0x1E69B8538]);
        v568 = v566;
        v569 = [v567 init];
        [v568 setAggregateDictionary_];

        v666 = sub_1BD0E5E8C(0, &qword_1EBD35E90);
        sub_1BE051F94();
        (*(v677 + 104))(v681, *MEMORY[0x1E69E8098], v678);
        *&v702 = MEMORY[0x1E69E7CC0];
        sub_1BD2000E0(&unk_1EBD35EB0, MEMORY[0x1E69E8030]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420);
        sub_1BD0DE4F4(&unk_1EBD35F10, &unk_1EBD3D420);
        sub_1BE053664();
        v570 = sub_1BE052D74();
        v571 = MEMORY[0x1E69E7D40];
        *(v52 + *((*MEMORY[0x1E69E7D40] & *v52) + 0x88)) = v570;
        v572 = *(v298 + v52);
        type metadata accessor for AddressManager();
        swift_allocObject();
        v573 = sub_1BD0E6090(v572, v570);
        *(v52 + *((*v571 & *v52) + 0x80)) = v573;
        v574 = *(v298 + v52);
        v575 = v52 + *((*v571 & *v52) + 0x60);
        v576 = v668;
        v577 = v669;
        *v575 = v668;
        *(v575 + 1) = v577;
        *(v575 + 1) = xmmword_1BE0B8E10;
        *(v575 + 4) = v574;
        *(v575 + 5) = v573;
        v578 = v576;
        sub_1BE048964();
        v579 = v577;
        v580 = v574;
        v581 = [v686 clientAnalyticsParameters];
        v682 = v578;
        if (v581)
        {
          type metadata accessor for PKPaymentRequestClientAnalyticsParameters(0);
          sub_1BD2000E0(&qword_1EBD38220, type metadata accessor for PKPaymentRequestClientAnalyticsParameters);
          sub_1BE052244();

          v581 = sub_1BE052224();
        }

        [(objc_class *)v579 setClientAnalyticsParameters:v581];

        v711 = *v575;
        v712 = *(v575 + 1);
        v713 = *(v575 + 2);
        v582 = v711;
        v583 = v713;
        v716 = *(&v711 + 1);
        v717[0] = *(&v712 + 1);
        type metadata accessor for AuthenticatorModel();
        swift_allocObject();
        v584 = v582;
        sub_1BD0DE19C(&v716, &v702, &qword_1EBD3D490);
        sub_1BD0DE19C(v717, &v702, &qword_1EBD40150);
        v585 = v583;
        sub_1BE048964();
        v586 = sub_1BD83D0D4(&v711, 2, 0, 1);
        v587 = v579;
        v588 = MEMORY[0x1E69E7D40];
        swift_beginAccess();
        *&v708 = v586;
        sub_1BE048964();
        sub_1BE04D874();
        swift_endAccess();
        v589 = objc_allocWithZone(type metadata accessor for AuthenticatorWrapper());
        v590 = v587;
        v681 = v590;
        v591 = sub_1BE048964();
        *(v52 + *((*v588 & *v52) + 0x70)) = sub_1BD7F33EC(v591, v590);
        v708 = *v575;
        v709 = *(v575 + 1);
        v710 = *(v575 + 2);
        v701[0] = *(&v708 + 1);
        v592 = v708;
        v593 = v710;
        v707[0] = *(&v709 + 1);
        type metadata accessor for IdentityAuthorizationModel(0);
        swift_allocObject();
        v594 = v592;
        sub_1BD0DE19C(v701, &v702, &qword_1EBD3D490);
        sub_1BD0DE19C(v707, &v702, &qword_1EBD40150);
        v595 = v593;
        sub_1BE048964();
        v596 = sub_1BD695CF0(&v708);
        swift_beginAccess();
        v715 = v596;
        sub_1BE04D874();
        swift_endAccess();
        v597 = *(v672 + v52);
        v598 = type metadata accessor for PaymentAuthorizationServiceDelegate();
        v599 = objc_allocWithZone(v598);
        v600 = v682;
        *&v599[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine] = v682;
        *&v599[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_context] = v597;
        v698.receiver = v599;
        v698.super_class = v598;
        v601 = v600;
        sub_1BE048964();
        *(v52 + *((*v588 & *v52) + 0x98)) = objc_msgSendSuper2(&v698, sel_init);
        v602 = v670;
        v697.receiver = v52;
        v697.super_class = v670;
        v603 = objc_msgSendSuper2(&v697, sel_init);
        sub_1BE04BE34();
        v604 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1BD42B6D4(v603, v604);

        swift_unknownObjectRelease();

        v605 = v683;
        v683[3] = v602;
        v605[4] = sub_1BD0DE4F4(&qword_1EBD3D4C0, &qword_1EBD3D4B8);
        *v605 = v603;
        v512 = v603;
        sub_1BD24AEE4(v512, &v702);
        sub_1BD2001A0();
        goto LABEL_276;
      }

      v236 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
      v299 = [v283 paymentSummaryItems];
      v153 = sub_1BD0E5E8C(0, &qword_1EBD3D4A0);
      v149 = sub_1BE052744();

      v123 = *(v84 + v52);
      v300 = [v283 paymentSummaryItems];
      v151 = sub_1BE052744();

      if (!(v151 >> 62))
      {
        v301 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v301)
        {
          goto LABEL_191;
        }

        goto LABEL_271;
      }

LABEL_270:
      v301 = sub_1BE053704();
      if (v301)
      {
LABEL_191:
        v154 = __OFSUB__(v301, 1);
        v302 = v301 - 1;
        if (v154)
        {
          __break(1u);
        }

        else if ((v151 & 0xC000000000000001) == 0)
        {
          if ((v302 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v302 < *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v303 = *(v151 + 8 * v302 + 32);
LABEL_196:
            v304 = v303;

            v305 = [v304 amount];

            v306 = v84;
LABEL_272:
            [v123 setInstallmentAuthorizationAmount_];

            v560 = *(v306 + v52);
            v561 = sub_1BD1FFD7C(1, v149);
            sub_1BD3F0360(v561);
            v298 = v306;

            v562 = sub_1BE052724();

            [v560 setPaymentSummaryItems_];

            goto LABEL_273;
          }

          __break(1u);
          goto LABEL_293;
        }

        v303 = MEMORY[0x1BFB40900](v302, v151);
        goto LABEL_196;
      }

LABEL_271:
      v306 = v84;

      v305 = 0;
      goto LABEL_272;
    }

    v670 = [objc_allocWithZone(MEMORY[0x1E69B8B88]) init];
    v676 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
    v669 = [objc_allocWithZone(MEMORY[0x1E69B9000]) init];
    v671 = objc_opt_self();
    v673 = [(objc_class *)v671 sharedService];
    if (!v673)
    {
LABEL_306:
      __break(1u);
      goto LABEL_307;
    }

    v672 = [objc_allocWithZone(MEMORY[0x1E69B8400]) init];
    v666 = [objc_allocWithZone(MEMORY[0x1E69BC740]) init];
    v668 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4E8);
    v52 = objc_allocWithZone(v668);
    v114 = MEMORY[0x1E69E7D40];
    v115 = *((*MEMORY[0x1E69E7D40] & *v52) + 0x90);
    type metadata accessor for PaymentAuthorizationServiceContext();
    v116 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *(v116 + 32) = 0;
    *&v115[v52] = v116;
    v117 = *((*v114 & *v52) + 0xA0);
    sub_1BE04BE74();
    swift_unknownObjectRetain();
    v118 = a2;
    v119 = sub_1BE048964();
    *(v52 + v117) = MEMORY[0x1BFB38EF0](v119);
    v120 = *((*v114 & *v52) + 0xA8);
    LOBYTE(v702) = 0;
    sub_1BE04D874();
    (v685)[4](v52 + v120, v29, v686);
    *(v52 + *((*v114 & *v52) + 0xB0)) = 0;
    *(v52 + *((*v114 & *v52) + 0xB8)) = 0;
    *(v52 + *((*v114 & *v52) + 0xC0)) = 0;
    *(v52 + *((*v114 & *v52) + 0xC8)) = 0;
    v686 = [v118 request];
    v121 = (v52 + *((*v114 & *v52) + 0x78));
    swift_beginAccess();
    sub_1BE04CDA4();
    sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
    sub_1BE048964();
    v39 = v118;
    *v121 = sub_1BE04E954();
    v121[1] = v122;
    swift_endAccess();
    v123 = *((*v114 & *v52) + 0xD8);
    v124 = v670;
    *(v123 + v52) = v670;
    v665 = v124;
    sub_1BE048964();
    v125 = [v118 presenter];
    swift_unknownObjectWeakAssign();

    swift_unknownObjectRelease();
    v667 = v115;
    swift_unknownObjectWeakAssign();
    v126 = [(objc_class *)v671 sharedService];
    if (!v126)
    {
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
      goto LABEL_309;
    }

    v127 = v126;
    v128 = [v126 context];

    v129 = [v128 configuration];
    v664 = v129;
    v130 = [(objc_class *)v129 contactFormatConfiguration];
    v663 = v130;
    if (v130)
    {
      v685 = [objc_allocWithZone(MEMORY[0x1E69B8730]) initWithConfiguration_];
    }

    else
    {
      v685 = 0;
    }

    v220 = v686;
    v221 = [objc_allocWithZone(MEMORY[0x1E69B8B68]) initWithMode_];
    if (!v221)
    {
      goto LABEL_308;
    }

    v222 = *((*MEMORY[0x1E69E7D40] & *v52) + 0xD0);
    *(v222 + v52) = v221;
    v223 = v221;
    v671 = v669;
    [v223 setPeerPaymentService_];
    v224 = *(v222 + v52);
    v225 = [v118 applicationIdentifier];
    v84 = v222;
    if (!v225)
    {
      sub_1BE052434();
      v225 = sub_1BE052404();
    }

    [v224 setHostApplicationIdentifier_];

    v226 = *(v222 + v52);
    v227 = [v39 localizedApplicationName];
    if (!v227)
    {
      sub_1BE052434();
      v227 = sub_1BE052404();
    }

    [v226 setHostAppLocalizedName_];

    v228 = *(v222 + v52);
    v229 = [v39 bundleIdentifier];
    if (!v229)
    {
      sub_1BE052434();
      v229 = sub_1BE052404();
    }

    [v228 setBundleIdentifier_];

    v230 = *(v222 + v52);
    v231 = [v39 relevantPassUniqueID];
    if (!v231)
    {
      sub_1BE052434();
      v231 = sub_1BE052404();
    }

    [v230 setRelevantPassUniqueID_];

    [*(v222 + v52) setContactFormatValidator_];
    [*(v222 + v52) setSupportsEmptyPass_];
    v232 = *(v222 + v52);
    v233 = [v39 presenter];
    if (v233)
    {
      v234 = [v233 isIssuerInstallmentsRepayment];
      swift_unknownObjectRelease();
    }

    else
    {
      v234 = 0;
    }

    [v232 setPresenterIsIssuerInstallmentsRepayment_];

    v670 = v222;
    [*(v222 + v52) setPaymentRequest_];
    if ([v220 requestType] != 5)
    {
LABEL_248:
      v669 = v39;
      [*(v123 + v52) setPaymentService_];
      [*(v123 + v52) setPaymentWebService_];
      [*(v123 + v52) setAccountService_];
      v470 = *(v123 + v52);
      v471 = v671;
      [v470 setPeerPaymentService_];

      v472 = *(v123 + v52);
      v473 = objc_allocWithZone(MEMORY[0x1E69B8538]);
      v474 = v472;
      v475 = [v473 init];
      [v474 setAggregateDictionary_];

      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      sub_1BE051F94();
      (*(v677 + 104))(v681, *MEMORY[0x1E69E8098], v678);
      *&v702 = MEMORY[0x1E69E7CC0];
      sub_1BD2000E0(&unk_1EBD35EB0, MEMORY[0x1E69E8030]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420);
      sub_1BD0DE4F4(&unk_1EBD35F10, &unk_1EBD3D420);
      sub_1BE053664();
      v476 = sub_1BE052D74();
      v477 = MEMORY[0x1E69E7D40];
      *(v52 + *((*MEMORY[0x1E69E7D40] & *v52) + 0x88)) = v476;
      v478 = v670;
      v479 = *&v670[v52];
      type metadata accessor for AddressManager();
      swift_allocObject();
      v480 = sub_1BD0E6090(v479, v476);
      *(v52 + *((*v477 & *v52) + 0x80)) = v480;
      v481 = *(v478 + v52);
      v482 = v52 + *((*v477 & *v52) + 0x60);
      v483 = v665;
      v484 = v666;
      *v482 = v665;
      *(v482 + 1) = v484;
      *(v482 + 1) = xmmword_1BE0B8E10;
      *(v482 + 4) = v481;
      *(v482 + 5) = v480;
      v485 = v483;
      sub_1BE048964();
      v486 = v484;
      v487 = v481;
      v488 = [v686 clientAnalyticsParameters];
      v682 = v485;
      if (v488)
      {
        type metadata accessor for PKPaymentRequestClientAnalyticsParameters(0);
        sub_1BD2000E0(&qword_1EBD38220, type metadata accessor for PKPaymentRequestClientAnalyticsParameters);
        sub_1BE052244();

        v488 = sub_1BE052224();
      }

      [(objc_class *)v486 setClientAnalyticsParameters:v488];

      v702 = *v482;
      v703 = *(v482 + 1);
      v704 = *(v482 + 2);
      v489 = v702;
      v490 = v704;
      v716 = *(&v702 + 1);
      v717[0] = *(&v703 + 1);
      type metadata accessor for AuthenticatorModel();
      v681 = v486;
      swift_allocObject();
      v491 = v489;
      sub_1BD0DE19C(&v716, &v711, &qword_1EBD3D490);
      sub_1BD0DE19C(v717, &v711, &qword_1EBD40150);
      v492 = v490;
      sub_1BE048964();
      v493 = sub_1BD83D0D4(&v702, 2, 0, 1);
      v494 = MEMORY[0x1E69E7D40];
      swift_beginAccess();
      *&v708 = v493;
      sub_1BE048964();
      sub_1BE04D874();
      swift_endAccess();
      v495 = objc_allocWithZone(type metadata accessor for AuthenticatorWrapper());
      v496 = v681;
      v681 = v496;
      v497 = sub_1BE048964();
      *(v52 + *((*v494 & *v52) + 0x70)) = sub_1BD7F33EC(v497, v496);
      v711 = *v482;
      v712 = *(v482 + 1);
      v713 = *(v482 + 2);
      v701[0] = *(&v711 + 1);
      v498 = v711;
      v499 = v713;
      v707[0] = *(&v712 + 1);
      type metadata accessor for VirtualCardAuthorizationModel();
      swift_allocObject();
      v500 = v498;
      sub_1BD0DE19C(v701, &v708, &qword_1EBD3D490);
      sub_1BD0DE19C(v707, &v708, &qword_1EBD40150);
      v501 = v499;
      sub_1BE048964();
      v502 = sub_1BD416524(&v711);
      swift_beginAccess();
      v715 = v502;
      sub_1BE04D874();
      swift_endAccess();
      v503 = *&v667[v52];
      v504 = type metadata accessor for PaymentAuthorizationServiceDelegate();
      v505 = objc_allocWithZone(v504);
      v506 = v682;
      *&v505[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine] = v682;
      *&v505[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_context] = v503;
      v692.receiver = v505;
      v692.super_class = v504;
      v507 = v506;
      sub_1BE048964();
      *(v52 + *((*v494 & *v52) + 0x98)) = objc_msgSendSuper2(&v692, sel_init);
      v508 = v668;
      v691.receiver = v52;
      v691.super_class = v668;
      v509 = objc_msgSendSuper2(&v691, sel_init);
      sub_1BE04BE34();
      v510 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1BD42B5FC(v509, v510);

      swift_unknownObjectRelease();

      v511 = v683;
      v683[3] = v508;
      v511[4] = sub_1BD0DE4F4(&qword_1EBD3D4F0, &qword_1EBD3D4E8);
      *v511 = v509;
      v512 = v509;
      sub_1BD7A7624(v512, v674);
      v513 = &unk_1EBD3D4F8;
      v514 = type metadata accessor for VirtualCardSheet;
      goto LABEL_262;
    }

    v235 = [v220 paymentSummaryItems];
    sub_1BD0E5E8C(0, &qword_1EBD3D4A0);
    v149 = sub_1BE052744();

    v151 = *&v670[v52];
    v236 = [v220 paymentSummaryItems];
    v153 = sub_1BE052744();

    if (v153 >> 62)
    {
      v237 = sub_1BE053704();
      if (v237)
      {
        goto LABEL_134;
      }
    }

    else
    {
      v237 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v237)
      {
LABEL_134:
        v154 = __OFSUB__(v237, 1);
        v216 = v237 - 1;
        if (v154)
        {
LABEL_266:
          __break(1u);
          goto LABEL_267;
        }

        if ((v153 & 0xC000000000000001) != 0)
        {
LABEL_267:
          v238 = MEMORY[0x1BFB40900](v216, v153);
          goto LABEL_139;
        }

        if ((v216 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v216 < *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v238 = *(v153 + 8 * v216 + 32);
LABEL_139:
          v239 = v238;

          v240 = [v239 amount];

LABEL_247:
          [v151 setInstallmentAuthorizationAmount_];

          v467 = *(v84 + v52);
          v468 = sub_1BD1FFD7C(1, v149);
          sub_1BD3F0360(v468);

          v469 = sub_1BE052724();

          [v467 setPaymentSummaryItems_];

          goto LABEL_248;
        }

        __break(1u);
        goto LABEL_270;
      }
    }

    v240 = 0;
    goto LABEL_247;
  }

  if (v31 > 2)
  {
    if ((v31 - 4) < 2)
    {
      goto LABEL_30;
    }

    if ((v31 - 6) >= 2)
    {
      if (v31 != 3)
      {
        goto LABEL_318;
      }

LABEL_20:
      sub_1BD1FF9E0(a2, v707);
      v71 = [a2 request];
      if (([v71 _isPSD2StyleRequest] & 1) == 0 && !objc_msgSend(v71, sel__isAMPApplePayClassicRequest))
      {
        v72 = [v71 merchantSession];
        if (!v72)
        {
          v329 = [v71 requestType];
          v73 = 3;
          if (v329 == 3)
          {
            v73 = 1;
          }

LABEL_25:
          v671 = v73;
          v669 = v71;
          v672 = [objc_allocWithZone(MEMORY[0x1E69B8B88]) init];
          v675 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
          v670 = [objc_allocWithZone(MEMORY[0x1E69B9000]) init];
          v676 = objc_opt_self();
          v674 = [v676 sharedService];
          if (!v674)
          {
LABEL_303:
            __break(1u);
            goto LABEL_304;
          }

          v673 = [objc_allocWithZone(MEMORY[0x1E69B8400]) init];
          v666 = [objc_allocWithZone(MEMORY[0x1E69BC740]) init];
          v668 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51FD0);
          v52 = objc_allocWithZone(v668);
          v74 = MEMORY[0x1E69E7D40];
          v75 = *((*MEMORY[0x1E69E7D40] & *v52) + 0x90);
          type metadata accessor for PaymentAuthorizationServiceContext();
          v76 = swift_allocObject();
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakInit();
          *(v76 + 32) = 0;
          *&v75[v52] = v76;
          v77 = *((*v74 & *v52) + 0xA0);
          sub_1BE04BE74();
          swift_unknownObjectRetain();
          v78 = a2;
          v79 = sub_1BE048964();
          *(v52 + v77) = MEMORY[0x1BFB38EF0](v79);
          v80 = *((*v74 & *v52) + 0xA8);
          LOBYTE(v702) = 0;
          sub_1BE04D874();
          (v685)[4](v52 + v80, v29, v686);
          *(v52 + *((*v74 & *v52) + 0xB0)) = 0;
          *(v52 + *((*v74 & *v52) + 0xB8)) = 0;
          *(v52 + *((*v74 & *v52) + 0xC0)) = 0;
          *(v52 + *((*v74 & *v52) + 0xC8)) = 0;
          v686 = [v78 request];
          v81 = (v52 + *((*v74 & *v52) + 0x78));
          swift_beginAccess();
          sub_1BE04CDA4();
          sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
          sub_1BE048964();
          *v81 = sub_1BE04E954();
          v81[1] = v82;
          swift_endAccess();
          v83 = *v74;
          v39 = v78;
          v84 = *((v83 & *v52) + 0xD8);
          v85 = v672;
          *(v84 + v52) = v672;
          v86 = v85;
          sub_1BE048964();
          v87 = [v78 presenter];
          swift_unknownObjectWeakAssign();

          swift_unknownObjectRelease();
          v667 = v75;
          swift_unknownObjectWeakAssign();
          v88 = [v676 sharedService];
          if (!v88)
          {
LABEL_304:
            __break(1u);
LABEL_305:
            __break(1u);
            goto LABEL_306;
          }

          v89 = v88;
          v663 = v86;
          v90 = [v88 context];

          v91 = [v90 configuration];
          v665 = v91;
          v92 = [(objc_class *)v91 contactFormatConfiguration];
          v664 = v92;
          if (v92)
          {
            v676 = [objc_allocWithZone(MEMORY[0x1E69B8730]) initWithConfiguration_];
          }

          else
          {
            v676 = 0;
          }

          v197 = v686;
          v198 = [objc_allocWithZone(MEMORY[0x1E69B8B68]) initWithMode_];
          if (!v198)
          {
            goto LABEL_305;
          }

          v199 = *((*MEMORY[0x1E69E7D40] & *v52) + 0xD0);
          *&v199[v52] = v198;
          v200 = v198;
          v672 = v670;
          [v200 setPeerPaymentService_];
          v201 = *&v199[v52];
          v202 = [v78 applicationIdentifier];
          v685 = v199;
          if (!v202)
          {
            sub_1BE052434();
            v202 = sub_1BE052404();
            v199 = v685;
          }

          [v201 setHostApplicationIdentifier_];

          v203 = *&v199[v52];
          v204 = [v78 localizedApplicationName];
          if (!v204)
          {
            sub_1BE052434();
            v204 = sub_1BE052404();
            v199 = v685;
          }

          [v203 setHostAppLocalizedName_];

          v205 = *&v199[v52];
          v206 = [v78 bundleIdentifier];
          if (!v206)
          {
            sub_1BE052434();
            v206 = sub_1BE052404();
            v199 = v685;
          }

          [v205 setBundleIdentifier_];

          v207 = *&v199[v52];
          v208 = [v78 relevantPassUniqueID];
          if (!v208)
          {
            sub_1BE052434();
            v208 = sub_1BE052404();
            v199 = v685;
          }

          [v207 setRelevantPassUniqueID_];

          [*&v199[v52] setContactFormatValidator_];
          [*&v199[v52] setSupportsEmptyPass_];
          v209 = *&v199[v52];
          v210 = [v78 presenter];
          if (v210)
          {
            v211 = [v210 isIssuerInstallmentsRepayment];
            v199 = v685;
            swift_unknownObjectRelease();
          }

          else
          {
            v211 = 0;
          }

          [v209 setPresenterIsIssuerInstallmentsRepayment_];

          [*&v199[v52] setPaymentRequest_];
          v212 = v199;
          if ([v197 requestType] != 5)
          {
            goto LABEL_241;
          }

          v123 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
          v213 = [v197 paymentSummaryItems];
          sub_1BD0E5E8C(0, &qword_1EBD3D4A0);
          v149 = sub_1BE052744();

          v214 = *&v199[v52];
          v32 = [v197 paymentSummaryItems];
          v151 = sub_1BE052744();

          if (v151 >> 62)
          {
            v215 = sub_1BE053704();
            v153 = v685;
            if (v215)
            {
LABEL_112:
              v154 = __OFSUB__(v215, 1);
              v216 = v215 - 1;
              if (!v154)
              {
                if ((v151 & 0xC000000000000001) != 0)
                {
                  v217 = MEMORY[0x1BFB40900](v216, v151);
                  goto LABEL_117;
                }

                if ((v216 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (v216 < *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v217 = *(v151 + 8 * v216 + 32);
LABEL_117:
                  v218 = v217;

                  v219 = [v218 amount];

                  v153 = v685;
LABEL_240:
                  [v214 setInstallmentAuthorizationAmount_];

                  v423 = *(v52 + v153);
                  v424 = sub_1BD1FFD7C(1, v149);
                  sub_1BD3F0360(v424);
                  v212 = v153;

                  v425 = sub_1BE052724();

                  [v423 setPaymentSummaryItems_];

LABEL_241:
                  v685 = v39;
                  [*(v84 + v52) setPaymentService_];
                  [*(v84 + v52) setPaymentWebService_];
                  [*(v84 + v52) setAccountService_];
                  v426 = *(v84 + v52);
                  v427 = v672;
                  [v426 setPeerPaymentService_];

                  v428 = *(v84 + v52);
                  v429 = objc_allocWithZone(MEMORY[0x1E69B8538]);
                  v430 = v428;
                  v431 = [v429 init];
                  [v430 setAggregateDictionary_];

                  v671 = sub_1BD0E5E8C(0, &qword_1EBD35E90);
                  sub_1BE051F94();
                  (*(v677 + 104))(v681, *MEMORY[0x1E69E8098], v678);
                  *&v702 = MEMORY[0x1E69E7CC0];
                  sub_1BD2000E0(&unk_1EBD35EB0, MEMORY[0x1E69E8030]);
                  v432 = v212;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420);
                  sub_1BD0DE4F4(&unk_1EBD35F10, &unk_1EBD3D420);
                  sub_1BE053664();
                  v433 = sub_1BE052D74();
                  v434 = MEMORY[0x1E69E7D40];
                  *(v52 + *((*MEMORY[0x1E69E7D40] & *v52) + 0x88)) = v433;
                  v435 = *&v432[v52];
                  type metadata accessor for AddressManager();
                  swift_allocObject();
                  v436 = sub_1BD0E6090(v435, v433);
                  *(v52 + *((*v434 & *v52) + 0x80)) = v436;
                  v437 = *&v432[v52];
                  v438 = v52 + *((*v434 & *v52) + 0x60);
                  v439 = v663;
                  v440 = v666;
                  *v438 = v663;
                  *(v438 + 1) = v440;
                  *(v438 + 1) = xmmword_1BE0B8E10;
                  *(v438 + 4) = v437;
                  *(v438 + 5) = v436;
                  v682 = v439;
                  sub_1BE048964();
                  v441 = v440;
                  v442 = v437;
                  v443 = [v686 clientAnalyticsParameters];
                  if (v443)
                  {
                    type metadata accessor for PKPaymentRequestClientAnalyticsParameters(0);
                    sub_1BD2000E0(&qword_1EBD38220, type metadata accessor for PKPaymentRequestClientAnalyticsParameters);
                    sub_1BE052244();

                    v443 = sub_1BE052224();
                  }

                  [(objc_class *)v441 setClientAnalyticsParameters:v443];

                  v711 = *v438;
                  v712 = *(v438 + 1);
                  v713 = *(v438 + 2);
                  v444 = v711;
                  v445 = v713;
                  v714 = *(&v711 + 1);
                  v715 = *(&v712 + 1);
                  type metadata accessor for AuthenticatorModel();
                  swift_allocObject();
                  v446 = v444;
                  sub_1BD0DE19C(&v714, &v702, &qword_1EBD3D490);
                  sub_1BD0DE19C(&v715, &v702, &qword_1EBD40150);
                  v447 = v445;
                  sub_1BE048964();
                  v448 = sub_1BD83D0D4(&v711, 2, 0, 1);
                  v449 = v441;
                  v450 = MEMORY[0x1E69E7D40];
                  swift_beginAccess();
                  *&v708 = v448;
                  sub_1BE048964();
                  sub_1BE04D874();
                  swift_endAccess();
                  v451 = objc_allocWithZone(type metadata accessor for AuthenticatorWrapper());
                  v452 = v449;
                  v681 = v452;
                  v453 = sub_1BE048964();
                  *(v52 + *((*v450 & *v52) + 0x70)) = sub_1BD7F33EC(v453, v452);
                  v708 = *v438;
                  v709 = *(v438 + 1);
                  v710 = *(v438 + 2);
                  v454 = v708;
                  v455 = v710;
                  v716 = *(&v708 + 1);
                  v717[0] = *(&v709 + 1);
                  type metadata accessor for AMPAuthorizationModel();
                  swift_allocObject();
                  v456 = v454;
                  sub_1BD0DE19C(&v716, &v702, &qword_1EBD3D490);
                  sub_1BD0DE19C(v717, &v702, &qword_1EBD40150);
                  v457 = v455;
                  sub_1BE048964();
                  v458 = sub_1BD28BE10(&v708);
                  swift_beginAccess();
                  v701[0] = v458;
                  sub_1BE04D874();
                  swift_endAccess();
                  v459 = *&v667[v52];
                  v460 = type metadata accessor for PaymentAuthorizationServiceDelegate();
                  v461 = objc_allocWithZone(v460);
                  v462 = v682;
                  *&v461[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine] = v682;
                  *&v461[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_context] = v459;
                  v706.receiver = v461;
                  v706.super_class = v460;
                  v371 = v462;
                  sub_1BE048964();
                  *(v52 + *((*v450 & *v52) + 0x98)) = objc_msgSendSuper2(&v706, sel_init);
                  v705.receiver = v52;
                  v372 = v668;
                  v705.super_class = v668;
                  v373 = objc_msgSendSuper2(&v705, sel_init);
LABEL_244:
                  v463 = v373;
                  sub_1BE04BE34();
                  v464 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  sub_1BD42B644(v463, v464);

                  swift_unknownObjectRelease();

                  v465 = v683;
                  v683[3] = v372;
                  v465[4] = sub_1BD0DE4F4(&qword_1EBD35F70, &unk_1EBD51FD0);
                  *v465 = v463;
                  sub_1BD0DE19C(v707, v701, &qword_1EBD3D498);
                  v466 = v463;
                  sub_1BD7417CC(v466, v701, &v702);
                  sub_1BD20014C();
                  v422 = sub_1BE0518D4();

                  sub_1BD0DE53C(v707, &qword_1EBD3D498);
                  return v422;
                }

                __break(1u);
                goto LABEL_266;
              }

LABEL_255:
              __break(1u);
              goto LABEL_256;
            }
          }

          else
          {
            v215 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v153 = v685;
            if (v215)
            {
              goto LABEL_112;
            }
          }

          v219 = 0;
          goto LABEL_240;
        }
      }

      v73 = 1;
      goto LABEL_25;
    }

LABEL_70:
    v671 = [objc_allocWithZone(MEMORY[0x1E69B8B88]) init];
    v674 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
    v670 = [objc_allocWithZone(MEMORY[0x1E69B9000]) init];
    v675 = objc_opt_self();
    v673 = [v675 sharedService];
    if (!v673)
    {
LABEL_300:
      __break(1u);
      goto LABEL_301;
    }

    v672 = [objc_allocWithZone(MEMORY[0x1E69B8400]) init];
    v667 = [objc_allocWithZone(MEMORY[0x1E69BC740]) init];
    v669 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4A8);
    v52 = objc_allocWithZone(v669);
    v159 = MEMORY[0x1E69E7D40];
    v160 = *((*MEMORY[0x1E69E7D40] & *v52) + 0x90);
    type metadata accessor for PaymentAuthorizationServiceContext();
    v161 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *(v161 + 32) = 0;
    *(v160 + v52) = v161;
    v162 = *((*v159 & *v52) + 0xA0);
    sub_1BE04BE74();
    swift_unknownObjectRetain();
    v163 = a2;
    v164 = sub_1BE048964();
    *(v52 + v162) = MEMORY[0x1BFB38EF0](v164);
    v165 = *((*v159 & *v52) + 0xA8);
    LOBYTE(v702) = 0;
    sub_1BE04D874();
    (v685)[4](v52 + v165, v29, v686);
    *(v52 + *((*v159 & *v52) + 0xB0)) = 0;
    *(v52 + *((*v159 & *v52) + 0xB8)) = 0;
    *(v52 + *((*v159 & *v52) + 0xC0)) = 0;
    *(v52 + *((*v159 & *v52) + 0xC8)) = 0;
    v685 = [v163 request];
    v166 = (v52 + *((*v159 & *v52) + 0x78));
    swift_beginAccess();
    sub_1BE04CDA4();
    sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
    sub_1BE048964();
    v84 = v163;
    *v166 = sub_1BE04E954();
    v166[1] = v167;
    swift_endAccess();
    v39 = *((*v159 & *v52) + 0xD8);
    v168 = v671;
    *&v39[v52] = v671;
    v169 = v168;
    sub_1BE048964();
    v170 = [v163 presenter];
    swift_unknownObjectWeakAssign();

    swift_unknownObjectRelease();
    v668 = v160;
    swift_unknownObjectWeakAssign();
    v171 = [v675 sharedService];
    if (!v171)
    {
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
      goto LABEL_303;
    }

    v172 = v171;
    v665 = v169;
    v173 = [v171 context];

    v174 = [v173 configuration];
    v175 = [v174 contactFormatConfiguration];
    if (v175)
    {
      v675 = [objc_allocWithZone(MEMORY[0x1E69B8730]) initWithConfiguration_];
    }

    else
    {
      v675 = 0;
    }

    v176 = v685;
    v666 = v175;
    v177 = [objc_allocWithZone(MEMORY[0x1E69B8B68]) initWithMode_];
    if (!v177)
    {
      goto LABEL_302;
    }

    v178 = *((*MEMORY[0x1E69E7D40] & *v52) + 0xD0);
    *&v178[v52] = v177;
    v179 = v177;
    v671 = v670;
    [v179 setPeerPaymentService_];
    v180 = *&v178[v52];
    v181 = [(objc_class *)v84 applicationIdentifier];
    v686 = v178;
    if (!v181)
    {
      sub_1BE052434();
      v181 = sub_1BE052404();
      v178 = v686;
    }

    [v180 setHostApplicationIdentifier_];

    v182 = *&v178[v52];
    v183 = [(objc_class *)v84 localizedApplicationName];
    if (!v183)
    {
      sub_1BE052434();
      v183 = sub_1BE052404();
      v178 = v686;
    }

    [v182 setHostAppLocalizedName_];

    v184 = *&v178[v52];
    v185 = [(objc_class *)v84 bundleIdentifier];
    if (!v185)
    {
      sub_1BE052434();
      v185 = sub_1BE052404();
      v178 = v686;
    }

    [v184 setBundleIdentifier_];

    v186 = *&v178[v52];
    v187 = [(objc_class *)v84 relevantPassUniqueID];
    if (!v187)
    {
      sub_1BE052434();
      v187 = sub_1BE052404();
      v178 = v686;
    }

    [v186 setRelevantPassUniqueID_];

    [*&v178[v52] setContactFormatValidator_];
    [*&v178[v52] setSupportsEmptyPass_];
    v188 = *&v178[v52];
    v189 = [(objc_class *)v84 presenter];
    if (v189)
    {
      v190 = [v189 isIssuerInstallmentsRepayment];
      swift_unknownObjectRelease();
    }

    else
    {
      v190 = 0;
    }

    v670 = v174;
    [v188 setPresenterIsIssuerInstallmentsRepayment_];

    [*&v686[v52] setPaymentRequest_];
    if ([v176 requestType] != 5)
    {
LABEL_235:
      v664 = v84;
      [*&v39[v52] setPaymentService_];
      [*&v39[v52] setPaymentWebService_];
      [*&v39[v52] setAccountService_];
      v377 = *&v39[v52];
      v378 = v671;
      [v377 setPeerPaymentService_];

      v379 = *&v39[v52];
      v380 = objc_allocWithZone(MEMORY[0x1E69B8538]);
      v381 = v379;
      v382 = [v380 init];
      [v381 setAggregateDictionary_];

      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      sub_1BE051F94();
      (*(v677 + 104))(v681, *MEMORY[0x1E69E8098], v678);
      *&v702 = MEMORY[0x1E69E7CC0];
      sub_1BD2000E0(&unk_1EBD35EB0, MEMORY[0x1E69E8030]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420);
      sub_1BD0DE4F4(&unk_1EBD35F10, &unk_1EBD3D420);
      sub_1BE053664();
      v383 = sub_1BE052D74();
      v384 = MEMORY[0x1E69E7D40];
      *(v52 + *((*MEMORY[0x1E69E7D40] & *v52) + 0x88)) = v383;
      v385 = v686;
      v386 = *&v686[v52];
      type metadata accessor for AddressManager();
      swift_allocObject();
      v387 = sub_1BD0E6090(v386, v383);
      *(v52 + *((*v384 & *v52) + 0x80)) = v387;
      v388 = *&v385[v52];
      v389 = v52 + *((*v384 & *v52) + 0x60);
      v390 = v665;
      v391 = v667;
      *v389 = v665;
      *(v389 + 1) = v391;
      *(v389 + 1) = xmmword_1BE0B8E10;
      *(v389 + 4) = v388;
      *(v389 + 5) = v387;
      v392 = v390;
      sub_1BE048964();
      v393 = v391;
      v394 = v388;
      v395 = [v685 clientAnalyticsParameters];
      v686 = v392;
      if (v395)
      {
        type metadata accessor for PKPaymentRequestClientAnalyticsParameters(0);
        sub_1BD2000E0(&qword_1EBD38220, type metadata accessor for PKPaymentRequestClientAnalyticsParameters);
        sub_1BE052244();

        v395 = sub_1BE052224();
      }

      [v393 setClientAnalyticsParameters_];

      v702 = *v389;
      v703 = *(v389 + 1);
      v704 = *(v389 + 2);
      v396 = v702;
      v397 = v704;
      v716 = *(&v702 + 1);
      v717[0] = *(&v703 + 1);
      type metadata accessor for AuthenticatorModel();
      swift_allocObject();
      v398 = v396;
      sub_1BD0DE19C(&v716, &v711, &qword_1EBD3D490);
      sub_1BD0DE19C(v717, &v711, &qword_1EBD40150);
      v399 = v397;
      sub_1BE048964();
      v400 = sub_1BD83D0D4(&v702, 2, 0, 1);
      v401 = v393;
      v402 = MEMORY[0x1E69E7D40];
      swift_beginAccess();
      *&v708 = v400;
      sub_1BE048964();
      sub_1BE04D874();
      swift_endAccess();
      v403 = objc_allocWithZone(type metadata accessor for AuthenticatorWrapper());
      v404 = v401;
      v682 = v404;
      v405 = sub_1BE048964();
      *(v52 + *((*v402 & *v52) + 0x70)) = sub_1BD7F33EC(v405, v404);
      v711 = *v389;
      v712 = *(v389 + 1);
      v713 = *(v389 + 2);
      v701[0] = *(&v711 + 1);
      v406 = v711;
      v407 = v713;
      v707[0] = *(&v712 + 1);
      type metadata accessor for ExternalAuthorizationModel();
      swift_allocObject();
      v408 = v406;
      sub_1BD0DE19C(v701, &v708, &qword_1EBD3D490);
      sub_1BD0DE19C(v707, &v708, &qword_1EBD40150);
      v409 = v407;
      sub_1BE048964();
      v410 = sub_1BD80A550(&v711);
      swift_beginAccess();
      v715 = v410;
      sub_1BE04D874();
      swift_endAccess();
      v411 = *(v668 + v52);
      v412 = type metadata accessor for PaymentAuthorizationServiceDelegate();
      v413 = objc_allocWithZone(v412);
      v414 = v686;
      *&v413[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine] = v686;
      *&v413[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_context] = v411;
      v700.receiver = v413;
      v700.super_class = v412;
      v415 = v414;
      sub_1BE048964();
      *(v52 + *((*v402 & *v52) + 0x98)) = objc_msgSendSuper2(&v700, sel_init);
      v416 = v669;
      v699.receiver = v52;
      v699.super_class = v669;
      v417 = objc_msgSendSuper2(&v699, sel_init);
      sub_1BE04BE34();
      v418 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1BD42B71C(v417, v418);

      v419 = v664;

      swift_unknownObjectRelease();

      v420 = v683;
      v683[3] = v416;
      v420[4] = sub_1BD0DE4F4(&qword_1EBD3D4B0, &qword_1EBD3D4A8);
      *v420 = v417;
      v421 = v417;
      v422 = sub_1BD1FF240(v676, v419, v421);

      return v422;
    }

    v191 = [v176 paymentSummaryItems];
    v123 = sub_1BD0E5E8C(0, &qword_1EBD3D4A0);
    v149 = sub_1BE052744();

    v153 = *&v686[v52];
    v32 = [v176 paymentSummaryItems];
    v151 = sub_1BE052744();

    if (!(v151 >> 62))
    {
      v192 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v192)
      {
LABEL_233:

        v196 = 0;
        goto LABEL_234;
      }

LABEL_90:
      v154 = __OFSUB__(v192, 1);
      v193 = v192 - 1;
      if (v154)
      {
        __break(1u);
      }

      else if ((v151 & 0xC000000000000001) == 0)
      {
        if ((v193 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v193 < *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v194 = *(v151 + 8 * v193 + 32);
LABEL_95:
          v195 = v194;

          v196 = [v195 amount];

LABEL_234:
          [v153 setInstallmentAuthorizationAmount_];

          v374 = *&v686[v52];
          v375 = sub_1BD1FFD7C(1, v149);
          sub_1BD3F0360(v375);

          v376 = sub_1BE052724();

          [v374 setPaymentSummaryItems_];

          goto LABEL_235;
        }

        __break(1u);
        goto LABEL_255;
      }

      v194 = MEMORY[0x1BFB40900](v193, v151);
      goto LABEL_95;
    }

LABEL_232:
    v192 = sub_1BE053704();
    if (!v192)
    {
      goto LABEL_233;
    }

    goto LABEL_90;
  }

  switch(v31)
  {
    case 0:
      goto LABEL_30;
    case 1:
      goto LABEL_20;
    case 2:
      v670 = [objc_allocWithZone(MEMORY[0x1E69B8B88]) init];
      v676 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
      v669 = [objc_allocWithZone(MEMORY[0x1E69B9000]) init];
      v671 = objc_opt_self();
      v673 = [(objc_class *)v671 sharedService];
      if (!v673)
      {
LABEL_309:
        __break(1u);
        goto LABEL_310;
      }

      v672 = [objc_allocWithZone(MEMORY[0x1E69B8400]) init];
      v666 = [objc_allocWithZone(MEMORY[0x1E69BC740]) init];
      v668 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D500);
      v32 = objc_allocWithZone(v668);
      v33 = MEMORY[0x1E69E7D40];
      v34 = *((*MEMORY[0x1E69E7D40] & *v32) + 0x90);
      type metadata accessor for PaymentAuthorizationServiceContext();
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      *(v35 + 32) = 0;
      *&v34[v32] = v35;
      v36 = *((*v33 & *v32) + 0xA0);
      sub_1BE04BE74();
      swift_unknownObjectRetain();
      v37 = a2;
      v38 = sub_1BE048964();
      *(v32 + v36) = MEMORY[0x1BFB38EF0](v38);
      v39 = v37;
      v40 = *((*v33 & *v32) + 0xA8);
      LOBYTE(v702) = 0;
      sub_1BE04D874();
      (v685)[4](v32 + v40, v29, v686);
      *(v32 + *((*v33 & *v32) + 0xB0)) = 0;
      *(v32 + *((*v33 & *v32) + 0xB8)) = 0;
      *(v32 + *((*v33 & *v32) + 0xC0)) = 0;
      *(v32 + *((*v33 & *v32) + 0xC8)) = 0;
      v686 = [v37 request];
      v41 = (v32 + *((*v33 & *v32) + 0x78));
      swift_beginAccess();
      sub_1BE04CDA4();
      sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
      sub_1BE048964();
      *v41 = sub_1BE04E954();
      v41[1] = v42;
      swift_endAccess();
      v43 = *((*v33 & *v32) + 0xD8);
      v44 = v670;
      *(v43 + v32) = v670;
      v45 = v44;
      sub_1BE048964();
      v46 = [v39 presenter];
      swift_unknownObjectWeakAssign();

      swift_unknownObjectRelease();
      v667 = v34;
      swift_unknownObjectWeakAssign();
      v47 = [(objc_class *)v671 sharedService];
      if (!v47)
      {
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
        goto LABEL_312;
      }

      v48 = v47;
      v49 = [v47 context];

      v50 = [v49 configuration];
      v665 = v50;
      v51 = [(objc_class *)v50 contactFormatConfiguration];
      if (v51)
      {
        v685 = [objc_allocWithZone(MEMORY[0x1E69B8730]) initWithConfiguration_];
      }

      else
      {
        v685 = 0;
      }

      v663 = v45;
      v664 = v51;
      v261 = [objc_allocWithZone(MEMORY[0x1E69B8B68]) initWithMode_];
      if (!v261)
      {
        goto LABEL_311;
      }

      v262 = *((*MEMORY[0x1E69E7D40] & *v32) + 0xD0);
      *(v262 + v32) = v261;
      v263 = v261;
      v671 = v669;
      [v263 setPeerPaymentService_];
      v264 = *(v262 + v32);
      v265 = [v39 applicationIdentifier];
      if (!v265)
      {
        sub_1BE052434();
        v265 = sub_1BE052404();
      }

      [v264 setHostApplicationIdentifier_];

      v266 = *(v262 + v32);
      v267 = [v39 localizedApplicationName];
      if (!v267)
      {
        sub_1BE052434();
        v267 = sub_1BE052404();
      }

      [v266 setHostAppLocalizedName_];

      v268 = *(v262 + v32);
      v269 = [v39 bundleIdentifier];
      if (!v269)
      {
        sub_1BE052434();
        v269 = sub_1BE052404();
      }

      [v268 setBundleIdentifier_];

      v270 = *(v262 + v32);
      v271 = [v39 relevantPassUniqueID];
      if (!v271)
      {
        sub_1BE052434();
        v271 = sub_1BE052404();
      }

      [v270 setRelevantPassUniqueID_];

      [*(v262 + v32) setContactFormatValidator_];
      [*(v262 + v32) setSupportsEmptyPass_];
      v123 = v262;
      v272 = *(v262 + v32);
      v273 = [v39 presenter];
      v84 = v43;
      if (v273)
      {
        v274 = [v273 isIssuerInstallmentsRepayment];
        swift_unknownObjectRelease();
      }

      else
      {
        v274 = 0;
      }

      v236 = v676;
      [v272 setPresenterIsIssuerInstallmentsRepayment_];

      v670 = v123;
      v52 = v686;
      [*(v123 + v32) setPaymentRequest_];
      if ([v52 requestType] != 5)
      {
        goto LABEL_259;
      }

      v275 = [v52 paymentSummaryItems];
      sub_1BD0E5E8C(0, &qword_1EBD3D4A0);
      v149 = sub_1BE052744();

      v151 = *&v670[v32];
      v276 = [v52 paymentSummaryItems];
      v153 = sub_1BE052744();

      if (!(v153 >> 62))
      {
        v277 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v236 = v676;
        if (v277)
        {
          goto LABEL_166;
        }

        goto LABEL_257;
      }

LABEL_256:
      v277 = sub_1BE053704();
      v236 = v676;
      if (v277)
      {
LABEL_166:
        v154 = __OFSUB__(v277, 1);
        v278 = v277 - 1;
        if (v154)
        {
          __break(1u);
        }

        else if ((v153 & 0xC000000000000001) == 0)
        {
          if ((v278 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v278 < *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v279 = *(v153 + 8 * v278 + 32);
LABEL_171:
            v280 = v279;

            v281 = [v280 amount];

            v236 = v676;
LABEL_258:
            [v151 setInstallmentAuthorizationAmount_];

            v515 = *(v123 + v32);
            v516 = sub_1BD1FFD7C(1, v149);
            sub_1BD3F0360(v516);

            v517 = sub_1BE052724();

            [v515 setPaymentSummaryItems_];

            v52 = v686;
LABEL_259:
            v669 = v39;
            [*(v84 + v32) setPaymentService_];
            [*(v84 + v32) setPaymentWebService_];
            [*(v84 + v32) setAccountService_];
            v518 = *(v84 + v32);
            v519 = v671;
            [v518 setPeerPaymentService_];

            v520 = *(v84 + v32);
            v521 = objc_allocWithZone(MEMORY[0x1E69B8538]);
            v522 = v520;
            v523 = [v521 init];
            [v522 setAggregateDictionary_];

            v662 = sub_1BD0E5E8C(0, &qword_1EBD35E90);
            sub_1BE051F94();
            (*(v677 + 104))(v681, *MEMORY[0x1E69E8098], v678);
            *&v702 = MEMORY[0x1E69E7CC0];
            sub_1BD2000E0(&unk_1EBD35EB0, MEMORY[0x1E69E8030]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420);
            sub_1BD0DE4F4(&unk_1EBD35F10, &unk_1EBD3D420);
            sub_1BE053664();
            v524 = sub_1BE052D74();
            v525 = MEMORY[0x1E69E7D40];
            *(v32 + *((*MEMORY[0x1E69E7D40] & *v32) + 0x88)) = v524;
            v526 = v670;
            v527 = *&v670[v32];
            type metadata accessor for AddressManager();
            swift_allocObject();
            v528 = sub_1BD0E6090(v527, v524);
            *(v32 + *((*v525 & *v32) + 0x80)) = v528;
            v529 = *(v526 + v32);
            v530 = v32 + *((*v525 & *v32) + 0x60);
            v531 = v663;
            v532 = v666;
            *v530 = v663;
            *(v530 + 1) = v532;
            *(v530 + 1) = xmmword_1BE0B8E10;
            *(v530 + 4) = v529;
            *(v530 + 5) = v528;
            v682 = v531;
            sub_1BE048964();
            v533 = v532;
            v534 = v529;
            v535 = [v52 clientAnalyticsParameters];
            if (v535)
            {
              type metadata accessor for PKPaymentRequestClientAnalyticsParameters(0);
              sub_1BD2000E0(&qword_1EBD38220, type metadata accessor for PKPaymentRequestClientAnalyticsParameters);
              sub_1BE052244();

              v535 = sub_1BE052224();
            }

            [(objc_class *)v533 setClientAnalyticsParameters:v535];

            v702 = *v530;
            v703 = *(v530 + 1);
            v704 = *(v530 + 2);
            v536 = v702;
            v537 = v704;
            v716 = *(&v702 + 1);
            v717[0] = *(&v703 + 1);
            type metadata accessor for AuthenticatorModel();
            swift_allocObject();
            v538 = v536;
            sub_1BD0DE19C(&v716, &v711, &qword_1EBD3D490);
            sub_1BD0DE19C(v717, &v711, &qword_1EBD40150);
            v539 = v537;
            sub_1BE048964();
            v540 = sub_1BD83D0D4(&v702, 2, 0, 1);
            v541 = v533;
            v542 = MEMORY[0x1E69E7D40];
            swift_beginAccess();
            *&v708 = v540;
            sub_1BE048964();
            sub_1BE04D874();
            swift_endAccess();
            v543 = objc_allocWithZone(type metadata accessor for AuthenticatorWrapper());
            v544 = v541;
            v681 = v544;
            v545 = sub_1BE048964();
            *(v32 + *((*v542 & *v32) + 0x70)) = sub_1BD7F33EC(v545, v544);
            v711 = *v530;
            v712 = *(v530 + 1);
            v713 = *(v530 + 2);
            v701[0] = *(&v711 + 1);
            v546 = v711;
            v547 = v713;
            v707[0] = *(&v712 + 1);
            type metadata accessor for AccountServiceAuthorizationModel(0);
            swift_allocObject();
            v548 = v546;
            sub_1BD0DE19C(v701, &v708, &qword_1EBD3D490);
            sub_1BD0DE19C(v707, &v708, &qword_1EBD40150);
            v549 = v547;
            sub_1BE048964();
            v550 = sub_1BD3ED280(&v711);
            swift_beginAccess();
            v715 = v550;
            sub_1BE04D874();
            swift_endAccess();
            v551 = *&v667[v32];
            v552 = type metadata accessor for PaymentAuthorizationServiceDelegate();
            v553 = objc_allocWithZone(v552);
            v554 = v682;
            *&v553[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine] = v682;
            *&v553[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_context] = v551;
            v690.receiver = v553;
            v690.super_class = v552;
            v555 = v554;
            sub_1BE048964();
            *(v32 + *((*v542 & *v32) + 0x98)) = objc_msgSendSuper2(&v690, sel_init);
            v556 = v668;
            v689.receiver = v32;
            v689.super_class = v668;
            v557 = objc_msgSendSuper2(&v689, sel_init);
            sub_1BE04BE34();
            v558 = swift_allocObject();
            swift_unknownObjectWeakInit();
            sub_1BD42B5B4(v557, v558);

            swift_unknownObjectRelease();

            v559 = v683;
            v683[3] = v556;
            v559[4] = sub_1BD0DE4F4(&qword_1EBD3D508, &qword_1EBD3D500);
            *v559 = v557;
            v512 = v557;
            sub_1BD0E959C(v512, v674);
            v513 = &unk_1EBD3D510;
            v514 = type metadata accessor for AccountServiceSheet;
LABEL_262:
            sub_1BD2000E0(v513, v514);
LABEL_276:
            v422 = sub_1BE0518D4();

LABEL_277:
            return v422;
          }

          __break(1u);
          goto LABEL_283;
        }

        v279 = MEMORY[0x1BFB40900](v278, v153);
        goto LABEL_171;
      }

LABEL_257:

      v281 = 0;
      goto LABEL_258;
  }

LABEL_318:
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD1FF240(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D518);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D528);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v47 - v19);
  sub_1BD1FF9E0(a2, &v51);
  if (*(&v52 + 1))
  {
    sub_1BD043990(&v51, v54);
    *(&v52 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4A8);
    v53 = sub_1BD0DE4F4(&unk_1EBD3D530, &qword_1EBD3D4A8);
    *&v51 = a3;
    MEMORY[0x1EEE9AC00](v53, v21);
    v22 = type metadata accessor for ExternalAuthorizationModel();
    *(&v47 - 2) = v22;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v24);
    *(&v47 - 2) = v22;
    swift_getKeyPath();
    v25 = a3;
    sub_1BE04D8B4();

    sub_1BD1F4FD4(&v51, v50, v54, v8);

    __swift_destroy_boxed_opaque_existential_0(&v51);
    sub_1BD200254();
    v26 = sub_1BE0518D4();
    __swift_destroy_boxed_opaque_existential_0(v54);
    return v26;
  }

  else
  {
    sub_1BD0DE53C(&v51, &qword_1EBD3D498);
    v54[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4A8);
    v55 = sub_1BD0DE4F4(&unk_1EBD3D530, &qword_1EBD3D4A8);
    v54[0] = a3;
    MEMORY[0x1EEE9AC00](v55, v28);
    v29 = type metadata accessor for ExternalAuthorizationModel();
    *(&v47 - 2) = v29;
    v30 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v30, v31);
    *(&v47 - 2) = v29;
    swift_getKeyPath();
    v32 = a3;
    sub_1BE04D8B4();

    v49 = swift_allocObject();
    *(v49 + 16) = v32;
    v48 = swift_allocObject();
    *(v48 + 16) = v32;
    sub_1BE04CDA4();
    sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
    v47 = v32;
    v20[4] = sub_1BE04EEC4();
    v20[5] = v33;
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    sub_1BD0DE19C(&v51, &v50, &qword_1EBD51EC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0);
    sub_1BE051694();
    sub_1BD0DE53C(&v51, &qword_1EBD51EC0);
    v34 = sub_1BE04C614();
    (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
    sub_1BD0DE19C(v16, v12, &qword_1EBD3D520);
    sub_1BE051694();
    sub_1BD0DE53C(v16, &qword_1EBD3D520);
    v35 = *(v17 + 108);
    *(v20 + v35) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
    swift_storeEnumTagMultiPayload();
    v36 = v20 + *(v17 + 112);
    *v36 = swift_getKeyPath();
    v36[8] = 0;
    sub_1BD2000E0(&qword_1EBD3A280, type metadata accessor for ExternalAuthorizationModel);
    sub_1BE048964();
    *v20 = sub_1BE04E954();
    v20[1] = v37;
    v38 = sub_1BD0EE8CC(v54, (v20 + 6));
    MEMORY[0x1EEE9AC00](v38, v39);
    *(&v47 - 2) = v29;
    v40 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v40, v41);
    *(&v47 - 2) = v29;
    swift_getKeyPath();
    sub_1BE04D8B4();

    type metadata accessor for AuthenticatorModel();
    sub_1BD2000E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
    v42 = sub_1BE04E954();
    v44 = v43;

    v20[2] = v42;
    v20[3] = v44;
    v20[11] = 0;
    v20[12] = 0;
    v45 = v48;
    v46 = v49;
    v20[13] = sub_1BD2001F4;
    v20[14] = v46;
    v20[15] = sub_1BD200224;
    v20[16] = v45;
    __swift_destroy_boxed_opaque_existential_0(v54);
    sub_1BD0DE4F4(&qword_1EBD3D548, &qword_1EBD3D528);
    return sub_1BE0518D4();
  }
}

void sub_1BD1FF9E0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = [a1 request];
  v3 = [v15 clientViewSourceIdentifier];
  if (!v3)
  {

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v4 = v3;
  v5 = sub_1BE052434();
  v7 = v6;

  v8 = v5 == 0xD00000000000001DLL && 0x80000001BE11DBC0 == v7;
  if (!v8 && (sub_1BE053B84() & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  [objc_opt_self() softLink];
  v9 = sub_1BE052404();
  v10 = NSClassFromString(v9);

  if (!v10)
  {
    goto LABEL_15;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  v12 = swift_conformsToProtocol2();
  if (!v12 || !ObjCClassMetadata)
  {
    goto LABEL_15;
  }

  v13 = v12;

  v14 = [v15 clientViewSourceParameter];
  *(a2 + 24) = ObjCClassMetadata;
  *(a2 + 32) = v13;
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1BE04C844();
}

uint64_t sub_1BD1FFBA0@<X0>(uint64_t (*a1)()@<X1>, uint64_t *a2@<X8>)
{
  type metadata accessor for ExternalAuthorizationModel();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = a1();
  *a2 = result;
  return result;
}

id PaymentRequestViewInterfaceFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PaymentRequestViewInterfaceFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentRequestViewInterfaceFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PaymentRequestViewInterfaceFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentRequestViewInterfaceFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD1FFD2C@<X0>(uint64_t *a1@<X8>)
{
  sub_1BD0E5E8C(0, &qword_1EBD35E30);
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD1FFD7C(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v2 = a2;
  v3 = a1;
  if (a1)
  {
    v22 = MEMORY[0x1E69E7CC0];
    v23 = MEMORY[0x1E69E7CC0];
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (!(a2 >> 62))
    {
      v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_5;
      }

      goto LABEL_29;
    }

LABEL_28:
    v5 = sub_1BE053704();
    if (v5)
    {
LABEL_5:
      v6 = 0;
      v21 = 0;
      while (1)
      {
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x1BFB40900](v6, v2);
          }

          else
          {
            if (v6 >= *(v4 + 16))
            {
              goto LABEL_26;
            }

            v7 = *(v2 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v10 = v22;
          v11 = *(v22 + 16);
          if (v11 >= v3)
          {
            break;
          }

          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
          ++v6;
          if (v9 == v5)
          {
            goto LABEL_29;
          }
        }

        if (v21 >= v11)
        {
          break;
        }

        *(v22 + 8 * v21 + 32);
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1BD5F0648(v22);
          v22 = v10;
        }

        if (v21 >= *(v10 + 16))
        {
          goto LABEL_32;
        }

        v12 = v10 + 8 * v21;
        v13 = *(v12 + 32);
        *(v12 + 32) = v8;

        sub_1BE0538D4();
        if ((v21 + 1) < v3)
        {
          v14 = v21 + 1;
        }

        else
        {
          v14 = 0;
        }

        v21 = v14;
        v6 = v9;
        if (v9 == v5)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_29:

    v15 = v23;

    return v15;
  }

  if (!(a2 >> 62))
  {
    return a2 & 0xFFFFFFFFFFFFFF8;
  }

LABEL_33:
  v17 = sub_1BE053704();
  if (!v17)
  {
LABEL_36:

    return MEMORY[0x1E69E7CC0];
  }

  v18 = v17;
  v15 = sub_1BD1DED88(v17, 0);
  sub_1BDA7D768(v15 + 32, v18, v2);
  v20 = v19;

  if (v20 != v18)
  {
    __break(1u);
    goto LABEL_36;
  }

  return v15;
}

uint64_t sub_1BD1FFFE4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD200064()
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD2000E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD20014C()
{
  result = qword_1EBD35F50;
  if (!qword_1EBD35F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD35F50);
  }

  return result;
}

unint64_t sub_1BD2001A0()
{
  result = qword_1EBD3D4C8;
  if (!qword_1EBD3D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D4C8);
  }

  return result;
}

unint64_t sub_1BD200254()
{
  result = qword_1EBD3D550;
  if (!qword_1EBD3D550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D518);
    sub_1BD2002E0();
    sub_1BD20052C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D550);
  }

  return result;
}

unint64_t sub_1BD2002E0()
{
  result = qword_1EBD3D558;
  if (!qword_1EBD3D558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D560);
    sub_1BD20036C();
    sub_1BD20044C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D558);
  }

  return result;
}

unint64_t sub_1BD20036C()
{
  result = qword_1EBD3D568;
  if (!qword_1EBD3D568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D570);
    sub_1BD0DE4F4(&qword_1EBD3D578, &qword_1EBD3D580);
    sub_1BD0DE4F4(&qword_1EBD3D588, &qword_1EBD3D590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D568);
  }

  return result;
}

unint64_t sub_1BD20044C()
{
  result = qword_1EBD3D598;
  if (!qword_1EBD3D598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D5A0);
    sub_1BD0DE4F4(&qword_1EBD3D5A8, &qword_1EBD3D5B0);
    sub_1BD0DE4F4(&qword_1EBD3D5B8, &qword_1EBD3D5C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D598);
  }

  return result;
}

unint64_t sub_1BD20052C()
{
  result = qword_1EBD3D5C8;
  if (!qword_1EBD3D5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D5D0);
    sub_1BD2005B8();
    sub_1BD200698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D5C8);
  }

  return result;
}

unint64_t sub_1BD2005B8()
{
  result = qword_1EBD3D5D8;
  if (!qword_1EBD3D5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D5E0);
    sub_1BD0DE4F4(&qword_1EBD3D5E8, &qword_1EBD3D5F0);
    sub_1BD0DE4F4(&qword_1EBD3D5F8, &qword_1EBD3D600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D5D8);
  }

  return result;
}

unint64_t sub_1BD200698()
{
  result = qword_1EBD3D608;
  if (!qword_1EBD3D608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D610);
    sub_1BD0DE4F4(&qword_1EBD3D618, &qword_1EBD3D620);
    sub_1BD0DE4F4(&qword_1EBD3D628, &qword_1EBD3D630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D608);
  }

  return result;
}

uint64_t sub_1BD200778@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

unint64_t sub_1BD2007C0()
{
  result = qword_1EBD3D670;
  if (!qword_1EBD3D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D670);
  }

  return result;
}

void sub_1BD200908(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_method) strategy];
  if (v5 == 3)
  {
    *(v2 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_destination) = 1;
    goto LABEL_5;
  }

  if (v5 == 2)
  {
    *(v2 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_destination) = 0;
LABEL_5:
    a1(1);
    return;
  }

  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_verificationController);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v10[4] = sub_1BD201960;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1BD126964;
  v10[3] = &block_descriptor_26;
  v9 = _Block_copy(v10);
  sub_1BE048964();

  [v6 performStoreLookupForBankAppWithCompletion_];
  _Block_release(v9);
}

void sub_1BD200A80(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if ([*(Strong + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_verificationController) isBankAppInstalled])
    {
      v11[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_destination] = 2;
      a2(1);
    }

    else
    {
      v12 = [*&v11[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_method] url];
      sub_1BE04A9F4();

      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = a2;
      v14[4] = a3;
      v15 = objc_allocWithZone(MEMORY[0x1E6994678]);
      sub_1BE048964();
      sub_1BE048964();
      v16 = sub_1BE04A9C4();
      v17 = [v15 initWithURL_];

      v18 = swift_allocObject();
      *(v18 + 16) = sub_1BD20196C;
      *(v18 + 24) = v14;
      aBlock[4] = sub_1BD201978;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD14E1D8;
      aBlock[3] = &block_descriptor_28;
      v19 = _Block_copy(aBlock);
      sub_1BE048964();

      [v17 requestMetadataWithCompletion_];
      _Block_release(v19);

      (*(v6 + 8))(v9, v5);
    }
  }
}

void sub_1BD200D54(char a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    *(Strong + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_destination) = v6;
    v7 = Strong;
    a3(1);
  }
}

uint64_t sub_1BD200DDC(uint64_t a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04AA64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    return 0;
  }

  v15 = v11;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = *(v1 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_destination);
    switch(v17)
    {
      case 2:
        [*(v1 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_verificationController) launchBankApp];
        type metadata accessor for ProvisioningVerificationUniversalURLFlowSection.SystemViewFlowItem();
        v34 = swift_allocObject();
        v34[3] = 0;
        swift_unknownObjectWeakInit();

        result = v34;
        v34[4] = 0xD000000000000012;
        break;
      case 3:
        v21 = *(v1 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_context);
        v47 = *(v1 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_methodGroup);
        v22 = v47;
        v23 = *(v1 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_method);
        v24 = [v23 url];
        sub_1BE04A9F4();

        v25 = *(v1 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_verificationController);
        v49 = type metadata accessor for ProvisioningVerificationAppClipFlowItem();
        v26 = objc_allocWithZone(v49);
        swift_unknownObjectWeakInit();
        *&v26[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v27 = &v26[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_identifier];
        *v27 = 0xD00000000000001BLL;
        *(v27 + 1) = 0x80000001BE11DD40;
        *&v26[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_context] = v21;
        *&v26[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_methodGroup] = v22;
        *&v26[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_method] = v23;
        v28 = *(v9 + 16);
        v48 = v15;
        v28(&v26[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_url], v13, v15);
        *&v26[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_verificationController] = v25;
        swift_unknownObjectWeakAssign();
        sub_1BE052434();
        v29 = v23;
        sub_1BE048964();
        v30 = v47;
        v31 = v25;
        v32 = sub_1BE04BB74();

        *&v26[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_reporter] = v32;
        v50.receiver = v26;
        v50.super_class = v49;
        v33 = objc_msgSendSuper2(&v50, sel_init);

        (*(v9 + 8))(v13, v48);
        return v33;
      case 4:
        sub_1BE04D0C4();
        v18 = sub_1BE04D204();
        v19 = sub_1BE052C34();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_1BD026000, v18, v19, "Attempted to handle universal link, but destination not set", v20, 2u);
          MEMORY[0x1BFB45F20](v20, -1, -1);
        }

        else
        {
        }

        (*(v4 + 8))(v7, v3);
        return 0;
      default:
        if (v17)
        {
          v35 = *(v1 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_context);
          v36 = *(v1 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_methodGroup);
          v37 = *(v1 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_method);
          v38 = *(v1 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_verificationController);
          v39 = type metadata accessor for ProvisioningVerificationURLFlowItem();
          v40 = objc_allocWithZone(v39);
          swift_unknownObjectWeakInit();
          *&v40[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_delegate + 8] = 0;
          swift_unknownObjectWeakInit();
          v41 = &v40[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_identifier];
          *v41 = 0xD000000000000017;
          *(v41 + 1) = 0x80000001BE11DD20;
          *&v40[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem__hasSeenMethodsScreen] = &type metadata for ProvisioningVerificationHasSeenMethodsScreenKey;
          *&v40[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_context] = v35;
          *&v40[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_methodGroup] = v36;
          *&v40[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_method] = v37;
          *&v40[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_verificationController] = v38;
          swift_unknownObjectWeakAssign();
          v51.receiver = v40;
          v51.super_class = v39;
          sub_1BE048964();
          v42 = v36;
          v43 = v37;
          v44 = v38;
          v45 = objc_msgSendSuper2(&v51, sel_init);

          return v45;
        }

        sub_1BD2013E8();
        type metadata accessor for ProvisioningVerificationUniversalURLFlowSection.SystemViewFlowItem();
        v34 = swift_allocObject();
        v34[3] = 0;
        swift_unknownObjectWeakInit();

        result = v34;
        v34[4] = 0xD000000000000012;
        break;
    }

    v34[5] = 0x80000001BE0C1560;
  }

  return result;
}

void sub_1BD2013E8()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_context];
  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_verificationController];
  v3 = [v2 pass];
  if (v3)
  {
    v4 = v3;
    v5 = *&v0[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_methodGroup];
    v6 = *&v0[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_method];
    v7 = type metadata accessor for ProvisioningVerificationURLPerformController();
    v8 = objc_allocWithZone(v7);
    v9 = OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_authSession;
    *&v8[v9] = [objc_allocWithZone(PKWebAuthenticationSession) init];
    *&v8[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_window] = 0;
    *&v8[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_provisioningContext] = v1;
    *&v8[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_pass] = v4;
    *&v8[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_methodGroup] = v5;
    *&v8[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_method] = v6;
    *&v8[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_verificationController] = v2;
    v15.receiver = v8;
    v15.super_class = v7;
    sub_1BE048964();
    v10 = v5;
    v11 = v6;
    v12 = v2;
    v13 = objc_msgSendSuper2(&v15, sel_init);
    v14 = v0;
    sub_1BD431770(v13, v14, v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD201558()
{
  sub_1BD0D4534(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ProvisioningVerificationUniversalURLFlowSection.URLDestination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
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

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for ProvisioningVerificationUniversalURLFlowSection.URLDestination(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1BD201728(unsigned __int8 *a1)
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

_BYTE *sub_1BD201744(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1BD20176C()
{
  v1 = *(v0 + 32);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD20179C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD2017E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD201820(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD201870(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a3 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (a2)
  {
    if (result)
    {
      v7 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      memset(v11, 0, sizeof(v11));
      v12 = 2;
      sub_1BD865A00(a3, &off_1F3B97738, v11, ObjectType, v7);
      swift_unknownObjectRelease();
      return sub_1BD12FF7C(v11);
    }
  }

  else if (result)
  {
    v9 = *(v5 + 8);
    v10 = swift_getObjectType();
    sub_1BD8659A4(a3, &off_1F3B97738, v10, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD201988@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_1BE04F434();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D6B8);
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D6C0);
  v12 = *(v11 - 8);
  v22 = v11;
  v23 = v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v21 - v14;
  v25 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D6C8);
  sub_1BD0DE4F4(&qword_1EBD3D6D0, &qword_1EBD3D6C8);
  sub_1BE04E934();
  v29 = *v1;
  v26 = *v1;
  (*(v3 + 104))(v6, *MEMORY[0x1E697C438], v2);
  v16 = sub_1BD0DE4F4(&qword_1EBD3D6D8, &qword_1EBD3D6B8);
  v17 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v18 = MEMORY[0x1E69E6158];
  sub_1BE050C94();
  (*(v3 + 8))(v6, v2);
  sub_1BD1BCDE4(&v29);
  (*(v21 + 8))(v10, v7);
  sub_1BE052434();
  *&v26 = v7;
  *(&v26 + 1) = v18;
  v27 = v16;
  v28 = v17;
  swift_getOpaqueTypeConformance2();
  v19 = v22;
  sub_1BE050DE4();

  return (*(v23 + 8))(v15, v19);
}

uint64_t sub_1BD201D24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D6E0);
  sub_1BD0DE4F4(&qword_1EBD3D6E8, &qword_1EBD3D6E0);
  return sub_1BE0504E4();
}

uint64_t sub_1BD201DC8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D6F0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D6F8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v20 - v16;
  sub_1BD201FB8(&v20 - v16);
  sub_1BD2022BC(v9);
  sub_1BD0DE19C(v17, v13, &qword_1EBD3D6F8);
  sub_1BD0DE19C(v9, v5, &qword_1EBD3D6F0);
  sub_1BD0DE19C(v13, a1, &qword_1EBD3D6F8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D700);
  sub_1BD0DE19C(v5, a1 + *(v18 + 48), &qword_1EBD3D6F0);
  sub_1BD0DE53C(v9, &qword_1EBD3D6F0);
  sub_1BD0DE53C(v17, &qword_1EBD3D6F8);
  sub_1BD0DE53C(v5, &qword_1EBD3D6F0);
  return sub_1BD0DE53C(v13, &qword_1EBD3D6F8);
}

void sub_1BD201FB8(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D810);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D818);
  MEMORY[0x1EEE9AC00](v8, v9);
  v13 = v22 - v12;
  if (*(*(v1 + 16) + 16))
  {
    v22[1] = a1;
    MEMORY[0x1EEE9AC00](v10, v11);
    v22[-2] = v1;
    v14 = sub_1BE052404();
    v15 = PKLocalizedBankConnectString(v14);

    if (v15)
    {
      v16 = sub_1BE052434();
      v18 = v17;

      v23 = v16;
      v24 = v18;
      sub_1BD0DDEBC();
      v23 = sub_1BE0506C4();
      v24 = v19;
      v25 = v20 & 1;
      v26 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D820);
      sub_1BD2066F0(&qword_1EBD3D828, &qword_1EBD3D820, &unk_1BE0C1890, sub_1BD20676C);
      sub_1BE051A24();
      (*(v4 + 16))(v13, v7, v3);
      swift_storeEnumTagMultiPayload();
      sub_1BD2068A8();
      sub_1BE04F9A4();
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD2068A8();
    sub_1BE04F9A4();
  }
}

void sub_1BD2022BC(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D708);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D710);
  MEMORY[0x1EEE9AC00](v8, v9);
  v13 = v22 - v12;
  if (*(*(v1 + 24) + 16))
  {
    v22[1] = v22;
    v22[2] = a1;
    MEMORY[0x1EEE9AC00](v10, v11);
    v22[0] = &v22[-4];
    sub_1BD204240(v1, v27);
    v14 = sub_1BE052404();
    v15 = PKLocalizedBankConnectString(v14);

    if (v15)
    {
      v16 = sub_1BE052434();
      v18 = v17;

      v23 = v16;
      v24 = v18;
      sub_1BD0DDEBC();
      v23 = sub_1BE0506C4();
      v24 = v19;
      v25 = v20 & 1;
      v26 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D718);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D720);
      sub_1BD205EBC();
      sub_1BD2066F0(&qword_1EBD3D730, &qword_1EBD3D720, &unk_1BE0C1758, sub_1BD205F40);
      sub_1BE051A34();
      (*(v4 + 16))(v13, v7, v3);
      swift_storeEnumTagMultiPayload();
      sub_1BD206194();
      sub_1BE04F9A4();
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD206194();
    sub_1BE04F9A4();
  }
}

uint64_t sub_1BD202604(__int128 *a1)
{
  v2 = *(a1 + 3);
  v13 = *(a1 + 2);
  v12 = *a1;
  v11 = v2;
  v3 = *(a1 + 4);
  v8 = v13;
  v9 = v3;
  v10 = *(a1 + 40);
  v4 = swift_allocObject();
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  *(v4 + 41) = *(a1 + 25);
  sub_1BE048C84();
  sub_1BD0DE19C(&v13, v7, &qword_1EBD3D780);
  sub_1BD206260(&v12, v7);
  sub_1BD0DE19C(&v11, v7, &qword_1EBD3D780);
  sub_1BD0DE19C(&v9, v7, &qword_1EBD3D788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D780);
  sub_1BE049D04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D838);
  sub_1BD0DE4F4(&qword_1EBD3D790, &qword_1EBD3D780);
  sub_1BD20676C();
  sub_1BD2062BC(&qword_1EBD3D798, MEMORY[0x1E6967BE8]);
  return sub_1BE0519D4();
}

uint64_t sub_1BD2027D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v119 = a2;
  v113 = a3;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D868);
  MEMORY[0x1EEE9AC00](v111, v4);
  v112 = &v87 - v5;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D870);
  MEMORY[0x1EEE9AC00](v106, v6);
  v107 = &v87 - v7;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D848);
  MEMORY[0x1EEE9AC00](v110, v8);
  v109 = &v87 - v9;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D858);
  MEMORY[0x1EEE9AC00](v105, v10);
  v108 = &v87 - v11;
  v116 = sub_1BE04FF64();
  v121 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v12);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D760);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v87 - v17;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7A8);
  v117 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v19);
  v21 = &v87 - v20;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D748);
  MEMORY[0x1EEE9AC00](v118, v22);
  v120 = &v87 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7B0);
  v104 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v103 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v102 = &v87 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v101 = &v87 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v115 = &v87 - v35;
  v36 = sub_1BE049D04();
  v37 = *(v36 - 8);
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v41 = (&v87 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v41, a1, v36, v39);
  v42 = (*(v37 + 88))(v41, v36);
  v43 = v42 == *MEMORY[0x1E6967BD0];
  v98 = v15;
  if (v43)
  {
    (*(v37 + 96))(v41, v36);
    v45 = v41[1];
    v93 = *v41;
    v44 = v93;
    v89 = v45;
    v46 = v41[3];
    v100 = v41[2];
    v99 = v46;
    *v18 = sub_1BE04F504();
    *(v18 + 1) = 0;
    v18[16] = 1;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7B8);
    sub_1BD20470C(v44, v45, &v18[*(v97 + 44)]);
    sub_1BE04FF44();
    v47 = sub_1BD0DE4F4(&qword_1EBD3D768, &qword_1EBD3D760);
    v94 = v47;
    sub_1BE050D14();
    v91 = v14;
    v96 = *(v121 + 8);
    v121 += 8;
    v96(v14, v116);
    sub_1BD0DE53C(v18, &qword_1EBD3D760);
    sub_1BE052434();
    v122 = v15;
    v123 = v47;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v48 = v114;
    v88 = v21;
    sub_1BE050DE4();

    v117 = *(v117 + 8);
    v49 = (v117)(v21, v48);
    v87 = &v87;
    MEMORY[0x1EEE9AC00](v49, v50);
    v51 = v93;
    *(&v87 - 4) = v119;
    *(&v87 - 3) = v51;
    v86 = v89;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D750);
    v90 = sub_1BD206068();
    v93 = sub_1BD0DE4F4(&qword_1EBD3D770, &qword_1EBD3D750);
    v52 = v120;
    sub_1BE0508B4();

    sub_1BD0DE53C(v52, &qword_1EBD3D748);
    *v18 = sub_1BE04F504();
    *(v18 + 1) = 0;
    v18[16] = 1;
    v53 = v100;
    v54 = v99;
    sub_1BD204D34(v100, v99, &v18[*(v97 + 44)]);
    v55 = v91;
    sub_1BE04FF44();
    v56 = v88;
    sub_1BE050D14();
    v96(v55, v116);
    sub_1BD0DE53C(v18, &qword_1EBD3D760);
    sub_1BE052434();
    sub_1BE050DE4();

    v57 = (v117)(v56, v48);
    MEMORY[0x1EEE9AC00](v57, v58);
    *(&v87 - 4) = v119;
    *(&v87 - 3) = v53;
    v86 = v54;
    v59 = v101;
    sub_1BE0508B4();
    v100 = 0;
    v60 = v115;
LABEL_6:

    sub_1BD0DE53C(v120, &qword_1EBD3D748);
    v77 = v104;
    v78 = *(v104 + 16);
    v79 = v102;
    v78(v102, v60, v24);
    v80 = v103;
    v78(v103, v59, v24);
    v81 = v108;
    v78(v108, v79, v24);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D878);
    v78((v81 + *(v82 + 48)), v80, v24);
    v83 = *(v77 + 8);
    v83(v80, v24);
    v83(v79, v24);
    sub_1BD0DE19C(v81, v107, &qword_1EBD3D858);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD3D850, &qword_1EBD3D858);
    v84 = v109;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v84, v112, &qword_1EBD3D848);
    swift_storeEnumTagMultiPayload();
    sub_1BD2067F8();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v84, &qword_1EBD3D848);
    sub_1BD0DE53C(v81, &qword_1EBD3D858);
    v83(v59, v24);
    return (v83)(v60, v24);
  }

  v97 = v24;
  if (v42 == *MEMORY[0x1E6967BE0])
  {
    (*(v37 + 96))(v41, v36);
    v62 = *v41;
    v100 = v41[1];
    v61 = v100;
    v63 = v41[3];
    v96 = v41[2];
    v99 = v63;
    *v18 = sub_1BE04F504();
    *(v18 + 1) = 0;
    v18[16] = 1;
    OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7B8);
    sub_1BD20470C(v62, v61, &v18[*(OpaqueTypeConformance2 + 44)]);
    sub_1BE04FF44();
    v64 = v21;
    v65 = sub_1BD0DE4F4(&qword_1EBD3D768, &qword_1EBD3D760);
    v90 = v65;
    sub_1BE050D14();
    v66 = *(v121 + 8);
    v121 += 8;
    v94 = v66;
    v66(v14, v116);
    sub_1BD0DE53C(v18, &qword_1EBD3D760);
    sub_1BE052434();
    v122 = v15;
    v123 = v65;
    v93 = swift_getOpaqueTypeConformance2();
    v67 = v120;
    v68 = v114;
    sub_1BE050DE4();

    v69 = *(v117 + 8);
    v117 += 8;
    v92 = v69;
    v70 = v69(v64, v68);
    v87 = &v87;
    MEMORY[0x1EEE9AC00](v70, v71);
    *(&v87 - 4) = v119;
    *(&v87 - 3) = v62;
    v86 = v100;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D750);
    sub_1BD206068();
    sub_1BD0DE4F4(&qword_1EBD3D770, &qword_1EBD3D750);
    v60 = v115;
    sub_1BE0508B4();

    sub_1BD0DE53C(v67, &qword_1EBD3D748);
    *v18 = sub_1BE04F504();
    *(v18 + 1) = 0;
    v100 = 1;
    v18[16] = 1;
    v72 = v96;
    v73 = v99;
    sub_1BD2050EC(v96, v99, &v18[*(OpaqueTypeConformance2 + 44)]);
    sub_1BE04FF44();
    sub_1BE050D14();
    v94(v14, v116);
    sub_1BD0DE53C(v18, &qword_1EBD3D760);
    sub_1BE052434();
    v74 = v114;
    sub_1BE050DE4();

    v75 = v92(v64, v74);
    MEMORY[0x1EEE9AC00](v75, v76);
    *(&v87 - 4) = v119;
    *(&v87 - 3) = v72;
    v86 = v73;
    v59 = v101;
    sub_1BE0508B4();
    v24 = v97;
    goto LABEL_6;
  }

  v122 = 0;
  v123 = 0xE000000000000000;
  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000050, 0x80000001BE11DE50);
  sub_1BE053974();
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD20382C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 2);
  v13 = *(a1 + 3);
  v14 = v6;
  v15 = *a1;
  v11 = *(a1 + 4);
  v12 = *(a1 + 40);
  v7 = swift_allocObject();
  v8 = a1[1];
  *(v7 + 16) = *a1;
  *(v7 + 32) = v8;
  *(v7 + 41) = *(a1 + 25);
  *(v7 + 64) = a2;
  *(v7 + 72) = a3;
  sub_1BD206260(&v15, v10);
  sub_1BD0DE19C(&v14, v10, &qword_1EBD3D780);
  sub_1BD0DE19C(&v13, v10, &qword_1EBD3D780);
  sub_1BD0DE19C(&v11, v10, &qword_1EBD3D788);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7C0);
  sub_1BD20634C();
  return sub_1BE051704();
}

uint64_t sub_1BD203970(__int128 *a1)
{
  v2 = *(a1 + 2);
  v13 = *(a1 + 3);
  v12 = *a1;
  v11 = v2;
  v3 = *(a1 + 4);
  v8 = v13;
  v9 = v3;
  v10 = *(a1 + 40);
  v4 = swift_allocObject();
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  *(v4 + 41) = *(a1 + 25);
  sub_1BE048C84();
  sub_1BD0DE19C(&v13, v7, &qword_1EBD3D780);
  sub_1BD206260(&v12, v7);
  sub_1BD0DE19C(&v11, v7, &qword_1EBD3D780);
  sub_1BD0DE19C(&v9, v7, &qword_1EBD3D788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D780);
  sub_1BE049D04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D740);
  sub_1BD0DE4F4(&qword_1EBD3D790, &qword_1EBD3D780);
  sub_1BD205F40();
  sub_1BD2062BC(&qword_1EBD3D798, MEMORY[0x1E6967BE8]);
  return sub_1BE0519D4();
}

uint64_t sub_1BD203B40@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v55 = a3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7A0);
  MEMORY[0x1EEE9AC00](v53, v4);
  v54 = &v44 - v5;
  v47 = sub_1BE04FF64();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D760);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v44 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7A8);
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v13);
  v15 = &v44 - v14;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D748);
  MEMORY[0x1EEE9AC00](v49, v16);
  v18 = &v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7B0);
  v50 = *(v19 - 8);
  v51 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v44 = &v44 - v21;
  v22 = sub_1BE049D04();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = (&v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v27, a1, v22, v25);
  if ((*(v23 + 88))(v27, v22) == *MEMORY[0x1E6967BD8])
  {
    (*(v23 + 96))(v27, v22);
    v29 = *v27;
    v28 = v27[1];
    *v12 = sub_1BE04F504();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7B8);
    sub_1BD2054A4(v29, v28, &v12[*(v30 + 44)]);
    sub_1BE04FF44();
    v31 = sub_1BD0DE4F4(&qword_1EBD3D768, &qword_1EBD3D760);
    sub_1BE050D14();
    (*(v45 + 8))(v8, v47);
    sub_1BD0DE53C(v12, &qword_1EBD3D760);
    sub_1BE052434();
    v56 = v9;
    v57 = v31;
    swift_getOpaqueTypeConformance2();
    v32 = v48;
    sub_1BE050DE4();

    v33 = (*(v46 + 8))(v15, v32);
    MEMORY[0x1EEE9AC00](v33, v34);
    *(&v44 - 4) = v52;
    *(&v44 - 3) = v29;
    v43 = v28;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D750);
    v36 = sub_1BD206068();
    v37 = sub_1BD0DE4F4(&qword_1EBD3D770, &qword_1EBD3D750);
    v38 = v44;
    v39 = v49;
    sub_1BE0508B4();

    sub_1BD0DE53C(v18, &qword_1EBD3D748);
    v41 = v50;
    v40 = v51;
    (*(v50 + 16))(v54, v38, v51);
    swift_storeEnumTagMultiPayload();
    v56 = v39;
    v57 = v35;
    v58 = v36;
    v59 = v37;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v41 + 8))(v38, v40);
  }

  else
  {
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0xD000000000000050, 0x80000001BE11DE50);
    sub_1BE053974();
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

void sub_1BD204240(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*(a1 + 16) + 16))
  {
    goto LABEL_4;
  }

  v3 = sub_1BE052404();
  v4 = PKLocalizedBankConnectString(v3);

  if (v4)
  {
    v5 = sub_1BE052434();
    v7 = v6;

    *&v8 = v5;
    *(&v8 + 1) = v7;
    sub_1BD0DDEBC();
    sub_1BE0506C4();
LABEL_4:
    sub_1BE04F9A4();
    *a2 = v8;
    *(a2 + 16) = v9;
    *(a2 + 32) = v10;
    return;
  }

  __break(1u);
}

void sub_1BD204384(uint64_t a1)
{
  v2 = sub_1BE04F3D4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 40);
  v10 = *(a1 + 32);
  if ((v11 & 1) == 0)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v7 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v10, &qword_1EBD3D788);
    (*(v3 + 8))(v6, v2);
  }

  v8 = [objc_opt_self() generalPasteboard];
  v9 = sub_1BE052404();
  [v8 setString_];
}

void sub_1BD20453C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v10 - v3;
  v5 = sub_1BE052404();
  v6 = PKLocalizedBankConnectString(v5);

  if (v6)
  {
    v7 = sub_1BE052434();
    v9 = v8;

    v10[0] = v7;
    v10[1] = v9;
    sub_1BD0DDEBC();
    sub_1BE051624();
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
    sub_1BE050DE4();

    (*(v1 + 8))(v4, v0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD20470C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7D0);
  MEMORY[0x1EEE9AC00](v48, v5);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7D8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v47 - v16;
  v18 = sub_1BE052404();
  v19 = PKLocalizedBankConnectString(v18);

  if (v19)
  {
    v20 = sub_1BE052434();
    v22 = v21;

    v52 = v20;
    v53 = v22;
    sub_1BD0DDEBC();
    v23 = sub_1BE0506C4();
    v25 = v24;
    v27 = v26;
    sub_1BD204AC4(v23, v24, v26 & 1, v28, MEMORY[0x1E6981528]);
    sub_1BD0DDF10(v23, v25, v27 & 1);

    v52 = a1;
    v53 = a2;
    sub_1BE048C84();
    v29 = sub_1BE0506C4();
    v31 = v30;
    v33 = v32;
    v34 = sub_1BE0505B4();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_1BD0DDF10(v29, v31, v33 & 1);

    sub_1BD204AC4(v34, v36, v38 & 1, v40, MEMORY[0x1E6981560]);
    sub_1BD0DDF10(v34, v36, v38 & 1);

    v41 = v48;
    v42 = v49;
    v10[*(v48 + 36)] = 1;
    v10[*(v41 + 40)] = 1;
    sub_1BD0DE19C(v17, v42, &qword_1EBD3D7D8);
    v43 = v51;
    sub_1BD0DE19C(v10, v51, &qword_1EBD3D7D0);
    v44 = v50;
    sub_1BD0DE19C(v42, v50, &qword_1EBD3D7D8);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7E0);
    v46 = v44 + *(v45 + 48);
    *v46 = 0;
    *(v46 + 8) = 1;
    sub_1BD0DE19C(v43, v44 + *(v45 + 64), &qword_1EBD3D7D0);
    sub_1BD0DE53C(v10, &qword_1EBD3D7D0);
    sub_1BD0DE53C(v17, &qword_1EBD3D7D8);
    sub_1BD0DE53C(v43, &qword_1EBD3D7D0);
    sub_1BD0DE53C(v42, &qword_1EBD3D7D8);
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD204AC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC40]);
  if (result)
  {
    v11 = sub_1BE050484();
    LOBYTE(v35[0]) = a3 & 1;
    *&v16 = a1;
    *(&v16 + 1) = a2;
    LOBYTE(v17) = a3 & 1;
    *(&v17 + 1) = a4;
    *&v18 = swift_getKeyPath();
    *(&v18 + 1) = v11;
    *&v19 = swift_getKeyPath();
    *(&v19 + 1) = 0x3FC999999999999ALL;
    v20[0] = a1;
    v37 = v16;
    v38 = v17;
    v39 = v18;
    v40 = v19;
    v36 = 1;
    v20[1] = a2;
    v21 = a3 & 1;
    v22 = a4;
    v23 = v18;
    v24 = v11;
    v25 = v19;
    v26 = 0x3FC999999999999ALL;
    sub_1BD0D7F18(a1, a2, a3 & 1);
    sub_1BE048C84();
    sub_1BD0DE19C(&v16, &v41, &qword_1EBD3A9A8);
    v12 = sub_1BD0DE53C(v20, &qword_1EBD3A9A8);
    v13 = a5(v12);
    v27 = v37;
    v28 = v38;
    v29 = v39;
    *v30 = v40;
    *&v30[16] = 0;
    v14 = v36;
    v30[24] = v36;
    v30[25] = 0;
    KeyPath = swift_getKeyPath();
    v43 = v29;
    *v44 = *v30;
    *&v44[10] = *&v30[10];
    v41 = v27;
    v42 = v28;
    *&v45 = KeyPath;
    *(&v45 + 1) = v13;
    v31[0] = v37;
    v31[1] = v38;
    v31[2] = v39;
    v31[3] = v40;
    v32 = 0;
    v33 = v14;
    v34 = 0;
    sub_1BD0DE19C(&v27, v35, &qword_1EBD3A9B0);
    sub_1BD0DE53C(v31, &qword_1EBD3A9B0);
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A9A0);
    sub_1BD206434();
    sub_1BE050DE4();

    v35[2] = v43;
    v35[3] = *v44;
    v35[4] = *&v44[16];
    v35[5] = v45;
    v35[0] = v41;
    v35[1] = v42;
    return sub_1BD0DE53C(v35, &qword_1EBD3A9A0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD204D34(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7D0);
  MEMORY[0x1EEE9AC00](v48, v5);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7D8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v47 - v16;
  v18 = sub_1BE052404();
  v19 = PKLocalizedBankConnectString(v18);

  if (v19)
  {
    v20 = sub_1BE052434();
    v22 = v21;

    v52 = v20;
    v53 = v22;
    sub_1BD0DDEBC();
    v23 = sub_1BE0506C4();
    v25 = v24;
    v27 = v26;
    sub_1BD204AC4(v23, v24, v26 & 1, v28, MEMORY[0x1E6981528]);
    sub_1BD0DDF10(v23, v25, v27 & 1);

    v52 = a1;
    v53 = a2;
    sub_1BE048C84();
    v29 = sub_1BE0506C4();
    v31 = v30;
    v33 = v32;
    v34 = sub_1BE0505B4();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_1BD0DDF10(v29, v31, v33 & 1);

    sub_1BD204AC4(v34, v36, v38 & 1, v40, MEMORY[0x1E6981560]);
    sub_1BD0DDF10(v34, v36, v38 & 1);

    v41 = v48;
    v42 = v49;
    v10[*(v48 + 36)] = 1;
    v10[*(v41 + 40)] = 1;
    sub_1BD0DE19C(v17, v42, &qword_1EBD3D7D8);
    v43 = v51;
    sub_1BD0DE19C(v10, v51, &qword_1EBD3D7D0);
    v44 = v50;
    sub_1BD0DE19C(v42, v50, &qword_1EBD3D7D8);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7E0);
    v46 = v44 + *(v45 + 48);
    *v46 = 0;
    *(v46 + 8) = 1;
    sub_1BD0DE19C(v43, v44 + *(v45 + 64), &qword_1EBD3D7D0);
    sub_1BD0DE53C(v10, &qword_1EBD3D7D0);
    sub_1BD0DE53C(v17, &qword_1EBD3D7D8);
    sub_1BD0DE53C(v43, &qword_1EBD3D7D0);
    sub_1BD0DE53C(v42, &qword_1EBD3D7D8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD2050EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7D0);
  MEMORY[0x1EEE9AC00](v48, v5);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7D8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v47 - v16;
  v18 = sub_1BE052404();
  v19 = PKLocalizedBankConnectString(v18);

  if (v19)
  {
    v20 = sub_1BE052434();
    v22 = v21;

    v52 = v20;
    v53 = v22;
    sub_1BD0DDEBC();
    v23 = sub_1BE0506C4();
    v25 = v24;
    v27 = v26;
    sub_1BD204AC4(v23, v24, v26 & 1, v28, MEMORY[0x1E6981528]);
    sub_1BD0DDF10(v23, v25, v27 & 1);

    v52 = a1;
    v53 = a2;
    sub_1BE048C84();
    v29 = sub_1BE0506C4();
    v31 = v30;
    v33 = v32;
    v34 = sub_1BE0505B4();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_1BD0DDF10(v29, v31, v33 & 1);

    sub_1BD204AC4(v34, v36, v38 & 1, v40, MEMORY[0x1E6981560]);
    sub_1BD0DDF10(v34, v36, v38 & 1);

    v41 = v48;
    v42 = v49;
    v10[*(v48 + 36)] = 1;
    v10[*(v41 + 40)] = 1;
    sub_1BD0DE19C(v17, v42, &qword_1EBD3D7D8);
    v43 = v51;
    sub_1BD0DE19C(v10, v51, &qword_1EBD3D7D0);
    v44 = v50;
    sub_1BD0DE19C(v42, v50, &qword_1EBD3D7D8);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7E0);
    v46 = v44 + *(v45 + 48);
    *v46 = 0;
    *(v46 + 8) = 1;
    sub_1BD0DE19C(v43, v44 + *(v45 + 64), &qword_1EBD3D7D0);
    sub_1BD0DE53C(v10, &qword_1EBD3D7D0);
    sub_1BD0DE53C(v17, &qword_1EBD3D7D8);
    sub_1BD0DE53C(v43, &qword_1EBD3D7D0);
    sub_1BD0DE53C(v42, &qword_1EBD3D7D8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD2054A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7D0);
  MEMORY[0x1EEE9AC00](v48, v5);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7D8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v47 - v16;
  v18 = sub_1BE052404();
  v19 = PKLocalizedBankConnectString(v18);

  if (v19)
  {
    v20 = sub_1BE052434();
    v22 = v21;

    v52 = v20;
    v53 = v22;
    sub_1BD0DDEBC();
    v23 = sub_1BE0506C4();
    v25 = v24;
    v27 = v26;
    sub_1BD204AC4(v23, v24, v26 & 1, v28, MEMORY[0x1E6981528]);
    sub_1BD0DDF10(v23, v25, v27 & 1);

    v52 = a1;
    v53 = a2;
    sub_1BE048C84();
    v29 = sub_1BE0506C4();
    v31 = v30;
    v33 = v32;
    v34 = sub_1BE0505B4();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_1BD0DDF10(v29, v31, v33 & 1);

    sub_1BD204AC4(v34, v36, v38 & 1, v40, MEMORY[0x1E6981560]);
    sub_1BD0DDF10(v34, v36, v38 & 1);

    v41 = v48;
    v42 = v49;
    v10[*(v48 + 36)] = 1;
    v10[*(v41 + 40)] = 1;
    sub_1BD0DE19C(v17, v42, &qword_1EBD3D7D8);
    v43 = v51;
    sub_1BD0DE19C(v10, v51, &qword_1EBD3D7D0);
    v44 = v50;
    sub_1BD0DE19C(v42, v50, &qword_1EBD3D7D8);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7E0);
    v46 = v44 + *(v45 + 48);
    *v46 = 0;
    *(v46 + 8) = 1;
    sub_1BD0DE19C(v43, v44 + *(v45 + 64), &qword_1EBD3D7D0);
    sub_1BD0DE53C(v10, &qword_1EBD3D7D0);
    sub_1BD0DE53C(v17, &qword_1EBD3D7D8);
    sub_1BD0DE53C(v43, &qword_1EBD3D7D0);
    sub_1BD0DE53C(v42, &qword_1EBD3D7D8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD20585C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BE049D04();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v76 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v75 = &v66 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v66 - v18;
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v74 = &v66 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v73 = &v66 - v25;
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v66 - v27;
  result = swift_getKeyPath();
  v30 = *(a1 + 16);
  if (v30)
  {
    v66 = result;
    v70 = v19;
    v67 = a2;
    v68 = a3;
    v69 = a4;
    v32 = *(v9 + 16);
    v31 = v9 + 16;
    v72 = (*(v31 + 64) + 32) & ~*(v31 + 64);
    v33 = (a1 + v72);
    v34 = *(v31 + 56);
    v86 = (v31 + 72);
    v87 = v32;
    v85 = *MEMORY[0x1E6967BD0];
    v80 = *MEMORY[0x1E6967BE0];
    v35 = (v31 - 8);
    v83 = (v31 + 16);
    v77 = MEMORY[0x1E69E7CC0];
    v78 = v34;
    v36 = v33;
    v37 = v30;
    v79 = v31;
    v84 = (v31 - 8);
    v71 = v30;
    do
    {
      v39 = v34;
      v40 = v87;
      v87(v28, v36, v8);
      v41 = v73;
      v40(v73, v28, v8);
      v82 = *v86;
      v42 = v82(v41, v8);
      v43 = v28;
      v44 = *v35;
      (*v35)(v41, v8);
      v45 = v42 == v85 || v42 == v80;
      v81 = v44;
      if (v45)
      {
        v46 = *v83;
        (*v83)(v74, v43, v8);
        v47 = v77;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v88 = v47;
        v28 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BD531CFC(0, *(v47 + 16) + 1, 1);
          v47 = v88;
        }

        v38 = v71;
        v50 = *(v47 + 16);
        v49 = *(v47 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_1BD531CFC(v49 > 1, v50 + 1, 1);
          v47 = v88;
        }

        *(v47 + 16) = v50 + 1;
        v77 = v47;
        v51 = v47 + v72;
        v34 = v78;
        v46((v51 + v50 * v78), v74, v8);
        v35 = v84;
      }

      else
      {
        v44(v43, v8);
        v38 = v71;
        v28 = v43;
        v34 = v39;
      }

      v36 += v34;
      --v37;
    }

    while (v37);
    v52 = *MEMORY[0x1E6967BD8];
    v53 = MEMORY[0x1E69E7CC0];
    a2 = v67;
    v54 = v70;
    do
    {
      v56 = v87;
      v87(v54, v33, v8);
      v57 = v75;
      v56(v75, v54, v8);
      v58 = v82(v57, v8);
      v59 = v57;
      v60 = v81;
      v81(v59, v8);
      if (v58 == v85 || v58 == v80 || v58 != v52)
      {
        v60(v54, v8);
        v55 = v78;
      }

      else
      {
        v61 = *v83;
        (*v83)(v76, v54, v8);
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v88 = v53;
        if ((v62 & 1) == 0)
        {
          sub_1BD531CFC(0, *(v53 + 16) + 1, 1);
          v53 = v88;
        }

        v64 = *(v53 + 16);
        v63 = *(v53 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_1BD531CFC(v63 > 1, v64 + 1, 1);
          v53 = v88;
        }

        *(v53 + 16) = v64 + 1;
        v55 = v78;
        v61((v53 + v72 + v64 * v78), v76, v8);
        v54 = v70;
      }

      v33 += v55;
      --v38;
    }

    while (v38);
    a3 = v68;
    a4 = v69;
    result = v66;
    v65 = v77;
  }

  else
  {
    v65 = MEMORY[0x1E69E7CC0];
    v53 = MEMORY[0x1E69E7CC0];
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = v65;
  *(a4 + 24) = v53;
  *(a4 + 32) = result;
  *(a4 + 40) = 0;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BD205DE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD205E2C(uint64_t result, int a2, int a3)
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

unint64_t sub_1BD205EBC()
{
  result = qword_1EBD3D728;
  if (!qword_1EBD3D728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D728);
  }

  return result;
}

unint64_t sub_1BD205F40()
{
  result = qword_1EBD3D738;
  if (!qword_1EBD3D738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D750);
    sub_1BD206068();
    sub_1BD0DE4F4(&qword_1EBD3D770, &qword_1EBD3D750);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D738);
  }

  return result;
}

unint64_t sub_1BD206068()
{
  result = qword_1EBD3D758;
  if (!qword_1EBD3D758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D760);
    sub_1BD0DE4F4(&qword_1EBD3D768, &qword_1EBD3D760);
    swift_getOpaqueTypeConformance2();
    sub_1BD2062BC(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D758);
  }

  return result;
}

unint64_t sub_1BD206194()
{
  result = qword_1EBD3D778;
  if (!qword_1EBD3D778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D708);
    sub_1BD205EBC();
    sub_1BD2066F0(&qword_1EBD3D730, &qword_1EBD3D720, &unk_1BE0C1758, sub_1BD205F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D778);
  }

  return result;
}

uint64_t sub_1BD2062BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD20634C()
{
  result = qword_1EBD3D7C8;
  if (!qword_1EBD3D7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D7C0);
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
    sub_1BD2062BC(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D7C8);
  }

  return result;
}

unint64_t sub_1BD206434()
{
  result = qword_1EBD3D7E8;
  if (!qword_1EBD3D7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A9A0);
    sub_1BD2064EC();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D7E8);
  }

  return result;
}

unint64_t sub_1BD2064EC()
{
  result = qword_1EBD3D7F0;
  if (!qword_1EBD3D7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A9B0);
    sub_1BD206578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D7F0);
  }

  return result;
}

unint64_t sub_1BD206578()
{
  result = qword_1EBD3D7F8;
  if (!qword_1EBD3D7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A9A8);
    sub_1BD206630();
    sub_1BD0DE4F4(&qword_1EBD3A8B0, &qword_1EBD3A8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D7F8);
  }

  return result;
}

unint64_t sub_1BD206630()
{
  result = qword_1EBD3D800;
  if (!qword_1EBD3D800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D808);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D800);
  }

  return result;
}

uint64_t sub_1BD2066F0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD20676C()
{
  result = qword_1EBD3D830;
  if (!qword_1EBD3D830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D838);
    sub_1BD2067F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D830);
  }

  return result;
}

unint64_t sub_1BD2067F8()
{
  result = qword_1EBD3D840;
  if (!qword_1EBD3D840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D848);
    sub_1BD0DE4F4(&qword_1EBD3D850, &qword_1EBD3D858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D840);
  }

  return result;
}

unint64_t sub_1BD2068A8()
{
  result = qword_1EBD3D860;
  if (!qword_1EBD3D860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D810);
    sub_1BD2066F0(&qword_1EBD3D828, &qword_1EBD3D820, &unk_1BE0C1890, sub_1BD20676C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D860);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{

  sub_1BD0D4604(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm()
{

  sub_1BD0D4604(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

unint64_t sub_1BD206B14()
{
  result = qword_1EBD3D880;
  if (!qword_1EBD3D880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D6B8);
    sub_1BD0DE4F4(&qword_1EBD3D6D8, &qword_1EBD3D6B8);
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    sub_1BD2062BC(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D880);
  }

  return result;
}

void sub_1BD206C58()
{

  v1 = *(v0 + 80);
}

uint64_t sub_1BD206C90()
{
  sub_1BD0D4534(v0 + 16);

  sub_1BE048964();

  v1 = *(v0 + 80);

  return swift_deallocClassInstance();
}

id sub_1BD206E14(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_action);
  if ([v2 type] != 1)
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v4 = result;
    v5 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_context);
    v6 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_provisionedPasses);
    v7 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_upgradeRequest);
    v8 = type metadata accessor for PrecursorPassActionIdentityProofingFlowItem();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_product] = 0;
    *&v9[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v10 = &v9[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_identifier];
    *v10 = 0xD00000000000002BLL;
    *(v10 + 1) = 0x80000001BE11E070;
    *&v9[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_context] = v5;
    *&v9[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_provisionedPasses] = v6;
    *&v9[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_upgradeRequest] = v7;
    *&v9[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_action] = v4;
    v14.receiver = v9;
    v14.super_class = v8;
    v11 = v2;
    sub_1BE048964();
    v12 = v6;
    v13 = v7;
    return objc_msgSendSuper2(&v14, sel_init);
  }

  return result;
}

uint64_t sub_1BD206F98()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD206FD4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD207020(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  sub_1BE048964();
  v8 = a2;
  v9 = a3;
  v10 = [v9 actions];
  sub_1BD2072B8();
  v11 = sub_1BE052744();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_11:

    v23 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v24 = sub_1BD3EFD6C(v23);

    *(v4 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v4 + 40) = 0xD00000000000001FLL;
    *(v4 + 48) = 0x80000001BE0C18D0;
    *(v4 + 56) = v24;
    *(v4 + 32) = 514;
    return v4;
  }

  v12 = sub_1BE053704();
  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_3:
  v27 = MEMORY[0x1E69E7CC0];
  result = sub_1BE0538E4();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v25 = v11 & 0xC000000000000001;
    v15 = v11;
    do
    {
      if (v25)
      {
        v16 = MEMORY[0x1BFB40900](v14, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v14 + 32);
      }

      v17 = v16;
      ++v14;
      v18 = type metadata accessor for PrecursorPassActionFlowSection();
      v19 = objc_allocWithZone(v18);
      *&v19[OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v20 = &v19[OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_identifier];
      *v20 = 0xD00000000000001ELL;
      *(v20 + 1) = 0x80000001BE0C18F0;
      *&v19[OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_context] = a1;
      *&v19[OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_provisionedPasses] = v8;
      *&v19[OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_upgradeRequest] = v9;
      *&v19[OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_action] = v17;
      v26.receiver = v19;
      v26.super_class = v18;
      sub_1BE048964();
      v21 = v8;
      v22 = v9;
      objc_msgSendSuper2(&v26, sel_init);
      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
      v11 = v15;
    }

    while (v12 != v14);

    v23 = v27;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD2072B8()
{
  result = qword_1EBD3D8C0;
  if (!qword_1EBD3D8C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3D8C0);
  }

  return result;
}

uint64_t sub_1BD207304(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v23 = a2;
  v24 = a1;
  v3 = sub_1BE04BAC4();
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v22 = v2;
  v7 = sub_1BD187F94(v2);

  v8 = (v7 + 32);
  v9 = *(v7 + 16);
  v28 = 0x80000001BE1182F0;
  v29 = 0x80000001BE118310;
  v26 = 0x80000001BE118280;
  v27 = 0x80000001BE1182A0;
  v25 = 0x80000001BE118260;
  while (2)
  {
    if (v9)
    {
      switch(*v8)
      {
        case 2:

          break;
        default:
          v10 = sub_1BE053B84();

          ++v8;
          --v9;
          if ((v10 & 1) == 0)
          {
            continue;
          }

          break;
      }

      v13 = 0x6E65206775626564;
      v16 = 0xED000064656C6261;
      goto LABEL_12;
    }

    break;
  }

  sub_1BE04BC34();
  v11 = sub_1BE04B994();
  (*(v20 + 8))(v6, v21);
  if (v11)
  {
    v12 = "is card on file provisioning";
    v13 = 0xD000000000000044;
LABEL_15:
    v16 = v12 | 0x8000000000000000;
    v17 = 1;
    return v24(v13, v16, 0, v17);
  }

  v14 = sub_1BE04BCA4();
  if (v14 >> 62)
  {
    v18 = sub_1BE053704();

    if (v18)
    {
      goto LABEL_9;
    }

LABEL_14:
    v12 = "UIStaticFlowSection";
    v13 = 0xD00000000000001ALL;
    goto LABEL_15;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_9:
  v13 = 0;
  v16 = 0;
LABEL_12:
  v17 = 0;
  return v24(v13, v16, 0, v17);
}

uint64_t sub_1BD207744(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  v4 = v2;
  v5 = sub_1BE04BCA4();
  if (v5 >> 62)
  {
    goto LABEL_22;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  v26 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
LABEL_24:
    v5 = sub_1BE053704();
    v7 = v5;
    if (v5)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

  v5 = sub_1BE04BCA4();
  v1 = v5;
  if (v5 >> 62)
  {
    goto LABEL_24;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
LABEL_8:
    v8 = 0;
    v24 = v1 & 0xFFFFFFFFFFFFFF8;
    v25 = v1 & 0xC000000000000001;
    v9 = MEMORY[0x1E69E7CC0];
    v22 = v1;
    v23 = v4;
    while (1)
    {
      if (v25)
      {
        v5 = MEMORY[0x1BFB40900](v8, v1);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v8 >= *(v24 + 16))
        {
          goto LABEL_21;
        }

        v5 = *(v1 + 8 * v8 + 32);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          v1 = v5;
          v6 = sub_1BE053704();
          goto LABEL_5;
        }
      }

      v11 = *(v4 + 16);
      v12 = v5;
      v13 = sub_1BE04BC84();
      v14 = type metadata accessor for ProvisioningMoreInfoFlowItem();
      v15 = objc_allocWithZone(v14);
      *&v15[OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v16 = &v15[OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_identifier];
      *v16 = 0xD000000000000010;
      v16[1] = 0x80000001BE11E170;
      *&v15[OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_context] = v11;
      *&v15[OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_moreInfoItem] = v12;
      *&v15[OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_pass] = v13;
      v15[OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_isLastItem] = v26 == v8;
      v27.receiver = v15;
      v27.super_class = v14;
      sub_1BE048964();
      v17 = objc_msgSendSuper2(&v27, sel_init);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1BD1D7488(0, v9[2] + 1, 1, v9);
      }

      v19 = v9[2];
      v18 = v9[3];
      if (v19 >= v18 >> 1)
      {
        v9 = sub_1BD1D7488((v18 > 1), v19 + 1, 1, v9);
      }

      v9[2] = v19 + 1;
      v20 = &v9[2 * v19];
      v20[4] = v17;
      v20[5] = &off_1F3B97B10;
      ++v8;
      v1 = v22;
      v4 = v23;
      if (v10 == v7)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_25:
  v9 = MEMORY[0x1E69E7CC0];
LABEL_26:

  type metadata accessor for UIStaticFlowSection();
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  swift_unknownObjectWeakInit();
  result = v21;
  *(v21 + 40) = 0xD000000000000013;
  *(v21 + 48) = 0x80000001BE11E190;
  *(v21 + 56) = v9;
  *(v21 + 32) = 514;
  return result;
}

uint64_t sub_1BD207A5C()
{

  sub_1BD0D4534(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD207AD4()
{
  v1 = *(v0 + 48);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD207B04(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD207C20()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1BE04B944();
  v6 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v12 = v1 + OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_delegate;
  swift_unknownObjectWeakLoadStrong();
  *(v11 + 24) = *(v12 + 8);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BE0B7020;
  v15 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_moreInfoItem);
  *(v14 + 32) = v15;
  v16 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_pass);
  v17 = v15;
  v18 = v16;
  sub_1BE04BB94();
  v19 = sub_1BE04B934();
  (*(v6 + 8))(v9, v29);
  sub_1BE04BC34();
  v20 = sub_1BE04B9A4();
  (*(v30 + 8))(v5, v31);
  v21 = objc_allocWithZone(PKPaymentSetupMoreInfoViewController);
  sub_1BD2081D0();
  sub_1BE048964();
  v22 = sub_1BE052724();

  aBlock[4] = sub_1BD2081C8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD20815C;
  aBlock[3] = &block_descriptor_27;
  v23 = _Block_copy(aBlock);

  v24 = [v21 initWithMoreInfoItems:v22 paymentPass:v18 targetDevice:v19 context:v20 dismissalHandler:v23];
  _Block_release(v23);

  swift_unknownObjectRelease();
  if (v24)
  {
    [v24 setIsFinalViewController_];
    sub_1BE052434();
    v25 = v24;
    v26 = sub_1BE04BB74();

    [v25 setReporter_];
  }

  return v24;
}

void sub_1BD208010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(a3 + 24);
      ObjectType = swift_getObjectType();
      v8 = v5;
      sub_1BD8659A4(v8, &off_1F3B97B10, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1BD2080D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD20810C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD20815C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1BE048964();
  v4 = a2;
  v3(a2);
}

unint64_t sub_1BD2081D0()
{
  result = qword_1EBD3D8F8[0];
  if (!qword_1EBD3D8F8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EBD3D8F8);
  }

  return result;
}

uint64_t sub_1BD20821C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for FlightWidgetPassSnapshotView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for FlightWidgetPassSnapshotView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD208348()
{
  result = qword_1EBD3D990;
  if (!qword_1EBD3D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D990);
  }

  return result;
}

id sub_1BD20839C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69BC768]) initWithRemotePaymentInstrument:*v0 thumbnailSize:{*(v0 + 8), *(v0 + 16)}];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2083F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD2084E4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD208458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD2084E4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD2084BC()
{
  sub_1BD2084E4();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BD2084E4()
{
  result = qword_1EBD3D998;
  if (!qword_1EBD3D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D998);
  }

  return result;
}

uint64_t sub_1BD208538(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v30 = MEMORY[0x1E69E7CC0];
  sub_1BD531DC0(0, v1, 0);
  v2 = v30;
  v4 = v3 + 56;
  result = sub_1BE053674();
  v6 = result;
  v7 = 0;
  v25 = v3 + 64;
  v26 = v1;
  v27 = v3 + 56;
  v28 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_26;
    }

    v10 = *(*(v3 + 48) + v6);
    v29 = *(v3 + 36);
    v11 = sub_1BE052434();
    v13 = v12;
    if (v11 == sub_1BE052434() && v13 == v14)
    {

      v10 = 7;
    }

    else
    {
      v15 = sub_1BE053B84();

      if (v15)
      {
        v10 = 7;
      }
    }

    v17 = *(v30 + 16);
    v16 = *(v30 + 24);
    v4 = v27;
    if (v17 >= v16 >> 1)
    {
      result = sub_1BD531DC0((v16 > 1), v17 + 1, 1);
    }

    *(v30 + 16) = v17 + 1;
    *(v30 + v17 + 32) = v10;
    v3 = v28;
    v8 = 1 << *(v28 + 32);
    if (v6 >= v8)
    {
      goto LABEL_27;
    }

    v18 = *(v27 + 8 * v9);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_28;
    }

    if (v29 != *(v28 + 36))
    {
      goto LABEL_29;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (v25 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1BD20DE9C(v6, v29, 0);
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_1BD20DE9C(v6, v29, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v26)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}