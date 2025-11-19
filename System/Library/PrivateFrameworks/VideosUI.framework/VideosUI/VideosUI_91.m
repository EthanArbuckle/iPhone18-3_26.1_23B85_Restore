uint64_t sub_1E3DA48A4()
{
  v1 = *MEMORY[0x1E69DDC20];
  *(v0 + 104) = *MEMORY[0x1E69DDC20];
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  v2 = v1;
  v3 = TVAppFeature.isEnabled.getter(10);
  v4 = 0;
  if ((v3 & 1) == 0)
  {
    v5 = TVAppFeature.isEnabled.getter(10);
    v4 = 0x402C000000000000;
    if (v5)
    {
      v4 = 0x4032000000000000;
    }
  }

  *(v0 + 128) = v4;
  *(v0 + 136) = v3 & 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 144) = 0;
  *(v0 + 168) = 0;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 176) = 0;
  sub_1E3E604E4();
  sub_1E3E603B8();
  v6 = objc_opt_self();
  v7 = [v6 whiteColor];
  v8 = [v7 colorWithAlphaComponent_];

  v9 = *sub_1E3E5FDEC();
  if (TVAppFeature.isEnabled.getter(10))
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;

  *(v0 + 200) = v11;
  *(v0 + 208) = sub_1E4203DF4();
  v12 = *MEMORY[0x1E69DDCE0];
  v13 = *(MEMORY[0x1E69DDCE0] + 8);
  v14 = *(MEMORY[0x1E69DDCE0] + 16);
  v15 = *(MEMORY[0x1E69DDCE0] + 24);
  *(v0 + 216) = *MEMORY[0x1E69DDCE0];
  *(v0 + 224) = v13;
  *(v0 + 232) = v14;
  *(v0 + 240) = v15;
  *(v0 + 248) = TVAppFeature.isEnabled.getter(10) & 1;
  *(v0 + 256) = sub_1E3DA439C();
  v16 = [v6 whiteColor];
  v17 = [v16 colorWithAlphaComponent_];

  *(v0 + 264) = v17;
  *(v0 + 272) = sub_1E3DA4420();
  *(v0 + 280) = OUTLINED_FUNCTION_8_142();
  *(v0 + 288) = 0;
  *(v0 + 296) = OUTLINED_FUNCTION_7_170();
  *(v0 + 304) = 0;
  v18 = sub_1E3C2F9A0();

  sub_1E3C37CBC(v19, 23);

  sub_1E3C37CBC(v20, 15);

  v21 = sub_1E3DA40FC();
  sub_1E3C37CBC(v21, 17);

  sub_1E3DA35A0();
  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    v57[32] = 0;
    v87 = v12;
    v88 = v13;
    v89 = v14;
    v90 = v15;
    v91 = 0;
    v82 = v12;
    v83 = v13;
    v84 = v14;
    v85 = v15;
    v86 = 0;
    type metadata accessor for UIEdgeInsets();
    v23 = v22;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_11_7(v24, v25, v26, v27, v28, v29, v30, v31, 20.0, 0.0, 24.0, 0.0, *&v57[32], *&v57[40], *&v57[48], *&v57[56], *&v57[64], *&v57[72], *&v57[80], *&v57[88], *&v57[96], *&v57[104], *&v57[112], *&v57[120], *&v57[128], *&v57[136], *&v57[144], *&v57[152], *&v57[160], *&v57[168], *&v57[176], *&v57[184], *&v57[192], *&v57[200], *&v57[208], *&v57[216], *&v57[224], *&v57[232], *&v58, *&v59, *&v60, *&v61, *&v62, *&v63, *&v64, *(&v64 + 1), v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81[0]);
    sub_1E3C3DE00(v23);
    OUTLINED_FUNCTION_4_10(v32, v33, v34, v35, v36, v37, v38, v39, *v57, *&v57[8], *&v57[16], *&v57[24], *&v57[32], *&v57[40], *&v57[48], *&v57[56], *&v57[64], *&v57[72], *&v57[80], *&v57[88], *&v57[96], *&v57[104], *&v57[112], *&v57[120], *&v57[128], *&v57[136], *&v57[144], *&v57[152], *&v57[160], *&v57[168], *&v57[176], *&v57[184], *&v57[192], *&v57[200], *&v57[208], *&v57[216], *&v57[224], *&v57[232], *&v58, *&v59, *&v60, *&v61, *&v62, *&v63, *&v64, *(&v64 + 1), v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
    v40 = sub_1E3C3DE00(v23);
    OUTLINED_FUNCTION_107(v40, v41, v42, v43, v44, v45, v46, v47, *v57, *&v57[8], *&v57[16], *&v57[24], *&v57[32], *&v57[40], *&v57[48], *&v57[56], *&v57[64], *&v57[72], *&v57[80], *&v57[88], *&v57[96], *&v57[104], *&v57[112], *&v57[120], *&v57[128], *&v57[136], *&v57[144], *&v57[152], *&v57[160], *&v57[168], *&v57[176], *&v57[184], *&v57[192], *&v57[200], *&v57[208], *&v57[216], *&v57[224], *&v57[232], v58, v59, v60, v61, v62, v63, v64);
    sub_1E3C2FCB8(v57, __src);
    memcpy(v57, __src, 0xE9uLL);
    v48 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_17_8(v48, v49, v50, v51, v52, v53, v54, v55, *v57);
    sub_1E3C2FDFC();
  }

  return v18;
}

uint64_t sub_1E3DA4BB0()
{
}

id *sub_1E3DA4C20()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3DA4C98()
{
  sub_1E3DA4C20();
  OUTLINED_FUNCTION_29_77();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3DA4CE8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3DA4D34()
{
  result = qword_1ECF38958;
  if (!qword_1ECF38958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38958);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TeamStatsLayout.VerticalAlignmentStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *sub_1E3DA4E68@<X0>(void *__src@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  result = memcpy(a3, __src, 0x52uLL);
  a3[82] = a2;
  return result;
}

id sub_1E3DA4EA0()
{
  v1 = OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView);
  }

  else
  {
    v4 = v0;
    if (*(v0 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_layout))
    {
      OUTLINED_FUNCTION_8();
      v6 = *(v5 + 2184);

      v8 = v6(v7);
    }

    else
    {
      v8 = 0;
    }

    _s14ExpandableViewCMa();
    v9 = sub_1E410AC58(v8 & 1);
    v10 = *(v0 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_1E3DA4F70()
{
  v1 = OBJC_IVAR____TtC8VideosUI17VerticalStackView_layout;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_layout) || (type metadata accessor for VerticalStackLayout(), *(v0 + v1) = sub_1E3F3CE94(), , (result = *(v0 + v1)) != 0))
  {
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E3DA4FE0()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  OUTLINED_FUNCTION_2_184(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView);
  *(v0 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_isPartiallyExpanded) = 1;
  v13 = v0;
  v14 = v1;
  v2 = OUTLINED_FUNCTION_2_0();
  v5 = objc_msgSendSuper2(v3, v4, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E4297BE0;
  *(v6 + 32) = sub_1E3280A90(0, &qword_1EE23AF90);
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00);
  v8 = sub_1E42062A4();

  OUTLINED_FUNCTION_4_0();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12[4] = sub_1E3DA51A0;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1E3790FBC;
  v12[3] = &block_descriptor_110;
  v10 = _Block_copy(v12);

  [v7 vui:v8 registerForTraitChanges:v10 withHandler:?];
  _Block_release(v10);

  return v7;
}

void sub_1E3DA51A0()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC8VideosUI17VerticalStackView_platterView];
    *&Strong[OBJC_IVAR____TtC8VideosUI17VerticalStackView_platterView] = 0;
  }

  OUTLINED_FUNCTION_5_0();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 setNeedsLayout];
  }
}

void sub_1E3DA5244()
{
  OUTLINED_FUNCTION_2_184(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView);
  *(v0 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_isPartiallyExpanded) = 1;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3DA52DC(char a1, double a2, double a3)
{
  v7.receiver = v3;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  if (a2 != 0.0 || a3 != 0.0)
  {
    sub_1E3DA535C(a1 & 1, a2, a3);
  }
}

void sub_1E3DA535C(char a1, double a2, double a3)
{
  v4 = v3;
  v238 = COERCE_DOUBLE(swift_getObjectType());
  v8 = 0.0;
  OUTLINED_FUNCTION_19();
  LODWORD(v239) = CGRectEqualToRect(v273, v286);
  sub_1E3DA4F70();
  OUTLINED_FUNCTION_30();
  (*(v9 + 176))(&v268);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0);
  OUTLINED_FUNCTION_20_91();
  sub_1E4148C68(v11, v10, v12);
  v13 = v264;
  v15 = v265;
  v14 = v266;
  sub_1E3DA4F70();
  OUTLINED_FUNCTION_2_1();
  v17 = (*(v16 + 352))();
  v19 = v18;

  *&v268 = v17;
  BYTE8(v268) = v19 & 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
  OUTLINED_FUNCTION_20_91();
  sub_1E4148C68(v21, v20, v22);
  sub_1E3DA4F70();
  OUTLINED_FUNCTION_2_1();
  v24 = (*(v23 + 328))();
  v26 = v25;

  *&v268 = v24;
  BYTE8(v268) = v26 & 1;
  OUTLINED_FUNCTION_20_91();
  sub_1E4148C68(v27, v20, v28);
  sub_1E3DA4F70();
  OUTLINED_FUNCTION_30();
  v30 = (*(v29 + 200))();
  v32 = v31;

  *&v268 = v30;
  BYTE8(v268) = v32 & 1;
  v242 = a2;
  v243 = a3;
  v244 = v13;
  v245 = v15;
  v246 = v14;
  sub_1E4148C68(sub_1E3DA8104, v20, &v251);
  if (v253 != 0.0 && v253 <= a3)
  {
    v34 = v253;
  }

  else
  {
    v34 = a3;
  }

  v35 = v252;
  if (v34 < v252 || v252 == 0.0)
  {
    v35 = v34;
  }

  v240 = v35;
  v241 = a3;
  v37 = v251;
  if (v251 >= a2)
  {
    v37 = a2 - sub_1E3952BE0(v13, *&v15, *(&v15 + 1), v14);
  }

  if (v37 >= a2)
  {
    v38 = 0.0;
  }

  else
  {
    v38 = (a2 - v37) * 0.5;
  }

  sub_1E3DA4F70();
  OUTLINED_FUNCTION_30();
  v40 = (*(v39 + 1848))();

  v249 = 0u;
  v250 = 0u;
  v247 = 0u;
  v248 = 0u;
  v41 = *&OBJC_IVAR____TtC8VideosUI17VerticalStackView_footerView;
  v42 = *&v3[OBJC_IVAR____TtC8VideosUI17VerticalStackView_footerView];
  if (v42)
  {
    v43 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_subviewElements;
    OUTLINED_FUNCTION_5_0();
    v44 = *(v42 + v43);
    if (v44 && sub_1E32AE9B0(v44))
    {
      LODWORD(v237) = v40;
      if ((v44 & 0xC000000000000001) != 0)
      {

        v45 = MEMORY[0x1E6911E60](0, v44);
      }

      else
      {
        if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v45 = *(v44 + 32);
      }

      v46 = sub_1E3DA4EA0();
      v47 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView_subviewElements;
      OUTLINED_FUNCTION_5_0();
      v48 = *&v46[v47];
      if (v48)
      {

        v49 = sub_1E37D027C(v48);

        if (v49)
        {
          v50 = OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView;
          v51 = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView];
          v52 = sub_1E410AB10();

          (*(*v52 + 176))(v254);

          v268 = v254[0];
          v269 = v254[1];
          v270 = v255;
          OUTLINED_FUNCTION_20_91();
          sub_1E4148C68(v53, v10, v54);
          v55 = *&v4[v50];
          v56 = sub_1E410AB10();

          v268 = v260;
          *&v269 = 0;
          *(&v269 + 1) = v262;
          v270 = 0;
          (*(*v56 + 184))(&v268);

          v57 = *&v4[*&v41];
          if (!v57 || (v58 = v57, v59 = sub_1E4078B58(), v58, !v59) || (OUTLINED_FUNCTION_8(), (*(v60 + 176))(&v256), v236 = v257, v61 = v258, , (v259 & 1) != 0))
          {
            v236 = *(MEMORY[0x1E69DDCE0] + 8);
            v61 = *(MEMORY[0x1E69DDCE0] + 24);
          }

          if (*&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_layout])
          {
            OUTLINED_FUNCTION_8();
            v63 = *(v62 + 2184);

            v63(v64);
            OUTLINED_FUNCTION_30_6();
          }

          else
          {

            LOBYTE(v63) = 0;
          }

          v65 = sub_1E3B98AF4(v45, v49, v63 & 1);

          v66 = *&v4[*&v41];
          if (v66)
          {
            v67 = v66;
            v68 = sub_1E4078B58();

            if (v68)
            {
              v265 = v236;
              v264 = v65;
              v266 = v61;
              v267 = 0;
              OUTLINED_FUNCTION_8();
              (*(v69 + 184))(&v264);
            }
          }
        }
      }

      else
      {
      }

      v40 = v237;
    }

    v70 = *&v4[*&v41];
    if (v70)
    {
      v71 = v70;
      sub_1E4078C7C(1, a2, v241);
      v8 = v72;
    }
  }

  v73 = a2;
  v74 = v38;
  v75 = sub_1E3DA4EA0();
  v234 = v73;
  sub_1E410AD98(1, v73, v241);
  v77 = v76;

  v78 = v8 + v77;
  v79 = v240;
  v80 = OBJC_IVAR____TtC8VideosUI17VerticalStackView_isScrollable;
  v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_isScrollable] = v240 < v8 + v77;
  v81 = sub_1E3DA7B6C(v8 + v77, v34);
  v82 = sub_1E3DA7B6C(v79, v81);
  if (v77 <= 0.0)
  {
    Height = 0.0;
    v88 = 0.0;
    v87 = 0.0;
    if (v8 <= 0.0)
    {
      v239 = 0.0;
      v240 = 0.0;
      v238 = 0.0;
      MaxY = 0.0;
      v90 = 0.0;
      v37 = 0.0;
      v91 = 0.0;
      *&v236 = 0;
      v233 = 0.0;
      v106 = 0.0;
      if (a1)
      {
        return;
      }

      goto LABEL_70;
    }
  }

  else
  {
    v83 = v37;
    if (v81 >= v78)
    {
      v84 = v77;
    }

    else
    {
      v84 = v81 - v8;
    }

    *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_maxExpandableHeight] = v84;
    if (v82 < v78)
    {
      v77 = v82 - v8;
    }

    *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_initialExpandableHeight] = v77;
    v85 = OBJC_IVAR____TtC8VideosUI17VerticalStackView_isPartiallyExpanded;
    OUTLINED_FUNCTION_5_0();
    if (v4[v85])
    {
      Height = v77;
    }

    else
    {
      Height = v84;
    }

    v37 = v83;
    *&v250 = v83;
    v87 = v74;
    *&v249 = v74;
    if ((LOBYTE(v239) & 1) == 0)
    {
      [*&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView] frame];
      Height = CGRectGetHeight(v274);
    }

    *(&v250 + 1) = Height;
    v240 = 0.0;
    v88 = v37;
    if (v8 <= 0.0)
    {
      v238 = 0.0;
      MaxY = 0.0;
      v90 = 0.0;
      v91 = Height;
      v87 = v74;
      if (a1)
      {
        return;
      }

LABEL_58:
      *&v236 = 0;
      if (v91 <= 0.0)
      {
        v239 = 0.0;
        v233 = 0.0;
        v106 = 0.0;
      }

      else
      {
        v92 = v91;
        if ((LOBYTE(v239) & 1) == 0)
        {
          v93 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView, off_1E8728288);
          [v93 frame];
          v239 = Height;
          v94 = v90;
          v96 = v95;
          v98 = v97;
          v235 = v91;
          v99 = MaxY;
          v100 = v37;
          v102 = v101;
          v103 = v87;
          v105 = v104;

          v276.origin.x = v96;
          v90 = v94;
          Height = v239;
          v276.origin.y = v98;
          v276.size.width = v102;
          v37 = v100;
          MaxY = v99;
          v91 = v235;
          v276.size.height = v105;
          v87 = v103;
          v92 = CGRectGetHeight(v276);
        }

        *&v236 = 0;
        v239 = 0.0;
        v106 = v234;
        if (v40)
        {
          v247 = 0uLL;
          *&v236 = v234;
          v239 = v92;
          *&v248 = v234;
          *(&v248 + 1) = v92;
        }

        v233 = v92;
        sub_1E3DA4F70();
        OUTLINED_FUNCTION_30();
        (*(v107 + 1560))();
        OUTLINED_FUNCTION_30_6();
        if (sub_1E3A24FDC(&selRef_dismissPresentedViewController))
        {
          [v4 bounds];
          v88 = CGRectGetHeight(v277) - v91;
          if (v4[v80] == 1)
          {
            v108 = v91 == *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_maxExpandableHeight];
            v109 = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView];
            v110 = sub_1E410AB98();

            [v110 setScrollEnabled_];
          }

          goto LABEL_70;
        }

        sub_1E3DA4F70();
        OUTLINED_FUNCTION_30();
        (*(v179 + 504))();
        OUTLINED_FUNCTION_30_6();
        LOBYTE(v272[0]) = &selRef_dismissPresentedViewController;
        v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389C0);
        sub_1E4148C68(sub_1E3DA7354, v180, &v260);
        sub_1E3DA4F70();
        OUTLINED_FUNCTION_2_1();
        (*(v181 + 1560))();
        OUTLINED_FUNCTION_30_6();
        v88 = v241 - v91;
        if ((sub_1E3A24FDC(&selRef_dismissPresentedViewController) & 1) != 0 || (sub_1E3A92050() & 1) == 0 && (sub_1E3A92050() & 1) == 0)
        {
LABEL_70:
          v231 = v90;
          v232 = MaxY;
          v234 = v87;
          v235 = v91;
          LODWORD(v237) = v40;
          v241 = v37;
          sub_1E3DA4F70();
          OUTLINED_FUNCTION_30();
          (*(v111 + 552))(&v260);
          v112 = v260;
          v113 = v261;
          v114 = v262;

          v115 = 0.0;
          if ((v263 & 1) == 0)
          {
            v115 = sub_1E3952BE8(*&v112, *(&v112 + 1), v113, v114);
          }

          v116 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView, off_1E8728288);
          v117 = [v116 vuiLayer];

          [v117 setCornerRadius_];
          v118 = OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView;
          [*&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView] setFrame_];
          v119 = [*&v4[v118] vuiLayer];
          [v119 setMasksToBounds_];

          v120 = COERCE_DOUBLE([*&v4[v118] superview]);
          *v272 = v120;
          MEMORY[0x1EEE9AC00](*&v120);
          v230 = v4;
          *&v121 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35970));
          v122 = OUTLINED_FUNCTION_11_129();
          sub_1E4148D98(v122, v229, v121);

          OUTLINED_FUNCTION_19();
          *&v278.size.width = v236;
          v278.size.height = v239;
          if (CGRectEqualToRect(v278, v287))
          {
            v123 = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_platterView];
            v124 = v241;
            v125 = v234;
            if (v123)
            {
              [v123 removeFromSuperview];
            }

            v126 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___platterContainerView, 0x1E69DD250);
            [v126 removeFromSuperview];

            v127 = v237;
          }

          else
          {
            v233 = v41;
            v128 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___platterContainerView, 0x1E69DD250);
            v129 = COERCE_DOUBLE([v128 superview]);

            *v272 = v129;
            MEMORY[0x1EEE9AC00](v130);
            OUTLINED_FUNCTION_1_27();
            *(v131 - 16) = v4;
            v132 = OUTLINED_FUNCTION_11_129();
            sub_1E4148D98(v132, v133, v121);

            v134 = OBJC_IVAR____TtC8VideosUI17VerticalStackView_platterView;
            v272[0] = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_platterView];
            MEMORY[0x1EEE9AC00](v135);
            v230 = v4;
            v137 = v136;
            v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF389B0);
            sub_1E4148D98(sub_1E3DA8238, v229, v138);

            v139 = *&v4[v134];
            v124 = v241;
            v125 = v234;
            if (v139)
            {
              v140 = COERCE_DOUBLE([v139 superview]);
              *v272 = v140;
              MEMORY[0x1EEE9AC00](*&v140);
              OUTLINED_FUNCTION_1_27();
              *(v141 - 16) = v4;
              sub_1E4148D98(sub_1E3DA8338, v142, v121);

              v143 = *&v4[v134];
              if (v143)
              {
                OUTLINED_FUNCTION_17_110(v143);
              }
            }

            OUTLINED_FUNCTION_17_110(*&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___platterContainerView]);
            v127 = v237;
            v41 = v233;
          }

          v240 = *&v121;
          v144 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___platterContainerView, 0x1E69DD250);
          v145 = [v144 layer];

          [v145 setMasksToBounds_];
          OUTLINED_FUNCTION_19();
          v279.origin.x = v125;
          v279.size.width = v124;
          v279.size.height = Height;
          v146 = CGRectEqualToRect(v279, v288);
          v147 = OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView;
          v148 = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView];
          if (v146)
          {
            [v148 removeFromSuperview];
          }

          else
          {
            v149 = COERCE_DOUBLE([v148 superview]);
            *v272 = v149;
            MEMORY[0x1EEE9AC00](*&v149);
            OUTLINED_FUNCTION_1_27();
            *(v150 - 16) = v4;
            v151 = OUTLINED_FUNCTION_11_129();
            sub_1E4148D98(v151, v152, *&v240);

            [*&v4[v147] &selRef:v125 setHeightThresholdForBottomPadding:{0.0, v124, Height}];
          }

          OUTLINED_FUNCTION_19();
          v280.origin.x = OUTLINED_FUNCTION_19_106();
          v153 = CGRectEqualToRect(v280, v289);
          v154 = *&v4[*&v41];
          if (v153)
          {
            if (v154)
            {
              [v154 removeFromSuperview];
            }
          }

          else if (v154)
          {
            v155 = v154;
            v156 = COERCE_DOUBLE([v155 superview]);
            *v272 = v156;
            MEMORY[0x1EEE9AC00](*&v156);
            OUTLINED_FUNCTION_1_27();
            *(v157 - 16) = v4;
            *(v157 - 8) = v155;
            v158 = OUTLINED_FUNCTION_11_129();
            sub_1E4148D98(v158, v159, *&v240);

            v160 = OUTLINED_FUNCTION_19_106();
            [v161 v162];
          }

          if (v127)
          {
            v163 = objc_opt_self();
            [v163 begin];
            [v163 setDisableActions_];
            sub_1E3DA4F70();
            OUTLINED_FUNCTION_2_1();
            v165 = (*(v164 + 1560))();

            if (sub_1E3A24FDC(v165))
            {
              sub_1E3DA7B98();
              v272[0] = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_topPlatterGradient];
              MEMORY[0x1EEE9AC00](v166);
              OUTLINED_FUNCTION_12_118();
              *(v167 - 16) = &v247;
              *(v167 - 8) = v4;
              v169 = v168;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3B8);
              v170 = OUTLINED_FUNCTION_11_129();
              sub_1E4148DE0(v170);

              v171 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
            }

            else
            {
              v172 = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_topPlatterGradient];
              v171 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
              if (v172)
              {
                [v172 removeFromSuperlayer];
              }
            }

            if (v4[v171[447]] != 1 || (v173 = sub_1E3DA4EA0(), [v173 frame], v175 = v174, v177 = v176, v173, v175 == 0.0) && v177 == 0.0)
            {
              v178 = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_bottomExpandableGradient];
              if (v178)
              {
                v178 = [v178 removeFromSuperlayer];
              }
            }

            else
            {
              v240 = *&OBJC_IVAR____TtC8VideosUI17VerticalStackView_bottomExpandableGradient;
              v271 = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_bottomExpandableGradient];
              v182 = v271;
              v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3B8);
              sub_1E4148C68(sub_1E38E2AD0, v183, v272);

              v184 = *v272;
              v185 = objc_opt_self();
              v186 = [v185 blackColor];
              v187 = [v186 CGColor];

              v188 = [v185 clearColor];
              v189 = [v188 CGColor];

              sub_1E3DA4F70();
              OUTLINED_FUNCTION_2_1();
              v191 = (*(v190 + 1560))();

              if ((sub_1E3A24FDC(v191) & 1) != 0 && (v192 = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_footerView]) != 0 && ([v192 frame], CGRectGetHeight(v281) == 0.0))
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
                v193 = swift_allocObject();
                *(v193 + 16) = xmmword_1E4298AD0;
                type metadata accessor for CGColor();
                *(v193 + 32) = v187;
                *(v193 + 56) = v194;
                *(v193 + 64) = v187;
                *(v193 + 88) = v194;
                *(v193 + 96) = v189;
                *(v193 + 152) = v194;
                *(v193 + 120) = v194;
                *(v193 + 128) = v189;
                v195 = v189;
                v196 = 1;
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
                v197 = swift_allocObject();
                *(v197 + 16) = xmmword_1E4297BD0;
                type metadata accessor for CGColor();
                v196 = 0;
                *(v197 + 32) = v187;
                *(v197 + 56) = v198;
                *(v197 + 64) = v187;
                *(v197 + 120) = v198;
                *(v197 + 88) = v198;
                *(v197 + 96) = v189;
              }

              v199 = v187;
              v200 = COERCE_DOUBLE(v189);
              v201 = v199;
              v202 = sub_1E42062A4();

              [*&v184 setColors_];

              [*&v184 bounds];
              OUTLINED_FUNCTION_3();
              v203 = OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView;
              [*&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView] &selRef_clearOffers_];
              if (OUTLINED_FUNCTION_8_143(v204, v205, v206, v207))
              {
              }

              else
              {
                v237 = v201;
                v238 = v200;
                v239 = v184;
                if (v196)
                {
                  v208 = 70.0;
                }

                else
                {
                  v208 = 10.0;
                }

                [*&v4[v203] frame];
                v209 = CGRectGetHeight(v282) - v208;
                [*&v4[v203] frame];
                *&v209 = v209 / CGRectGetHeight(v283);
                v210 = objc_allocWithZone(MEMORY[0x1E696AD98]);
                LODWORD(v211) = LODWORD(v209);
                v212 = [v210 initWithFloat_];
                [*&v4[v203] frame];
                v213 = CGRectGetHeight(v284) + -90.0;
                [*&v4[v203] frame];
                *&v213 = v213 / CGRectGetHeight(v285);
                v214 = objc_allocWithZone(MEMORY[0x1E696AD98]);
                LODWORD(v215) = LODWORD(v213);
                v216 = [v214 initWithFloat_];
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
                v217 = swift_allocObject();
                if (v196)
                {
                  *(v217 + 16) = xmmword_1E42A1E20;
                  sub_1E3280A90(0, &qword_1EE23ADD0);
                  *(v217 + 32) = sub_1E4206F34();
                  *(v217 + 40) = v212;
                  *(v217 + 48) = v216;
                  v218 = (v217 + 56);
                  v219 = v212;
                  v220 = v216;
                }

                else
                {
                  *(v217 + 16) = xmmword_1E42A73A0;
                  sub_1E3280A90(0, &qword_1EE23ADD0);
                  *(v217 + 32) = sub_1E4206F34();
                  *(v217 + 40) = v212;
                  v218 = (v217 + 48);
                  v220 = v212;
                }

                v221 = v239;
                v222 = v220;
                *v218 = sub_1E4206F34();
                sub_1E3280A90(0, &qword_1EE23ADD0);
                v223 = sub_1E42062A4();

                [*&v221 setLocations_];

                v224 = *&v4[*&v240];
                *&v4[*&v240] = v221;
              }
            }

            v272[0] = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_bottomExpandableGradient];
            MEMORY[0x1EEE9AC00](v178);
            OUTLINED_FUNCTION_12_118();
            *(v225 - 16) = &v249;
            *(v225 - 8) = v4;
            v227 = v226;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3B8);
            v228 = OUTLINED_FUNCTION_11_129();
            sub_1E4148DE0(v228);

            [v163 commit];
          }

          return;
        }
      }

      v88 = 0.0;
      goto LABEL_70;
    }
  }

  if (v81 >= v8)
  {
    v81 = v8;
  }

  v275.origin.y = 0.0;
  v275.origin.x = v87;
  v275.size.width = v88;
  v275.size.height = Height;
  MaxY = CGRectGetMaxY(v275);
  v240 = v81;
  v91 = v81 + Height;
  v238 = v37;
  v90 = v74;
  v37 = v88;
  if ((a1 & 1) == 0)
  {
    goto LABEL_58;
  }
}

double sub_1E3DA6ACC(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_footerView);
  if (v3 && (v4 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_subviewElements, OUTLINED_FUNCTION_5_0(), *(v3 + v4)) && (v5 = , v6 = sub_1E37D027C(v5), , v6) && (OUTLINED_FUNCTION_5_0(), Strong = swift_unknownObjectWeakLoadStrong(), , Strong) || (v8 = sub_1E3DA4EA0(), v9 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView_subviewElements, OUTLINED_FUNCTION_5_0(), v10 = *&v8[v9], , v8, v11 = 0.0, v10) && (v12 = sub_1E37D027C(v10), , v12) && (OUTLINED_FUNCTION_5_0(), Strong = swift_unknownObjectWeakLoadStrong(), , Strong))
  {
    [Strong bottomMarginWithBaselineMargin_];
    v11 = v13;
  }

  return v11;
}

char *sub_1E3DA6C4C(uint64_t a1, void *a2, uint64_t a3)
{
  if ((sub_1E373F6E0() & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*a1 + 464))();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (!sub_1E32AE9B0(v6))
  {

    return 0;
  }

  v49[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38978);
  v9 = sub_1E4148C68(sub_1E3DA71D8, v8, &v50);
  v10 = v50;
  if ((*(*a1 + 392))(v9))
  {
    type metadata accessor for VerticalStackLayout();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      if (*(a3 + 72) != 2 && (*(a3 + 82) & 1) != 0)
      {
        (*(*v11 + 2232))(v11);
      }

      *&v10[OBJC_IVAR____TtC8VideosUI17VerticalStackView_layout] = v12;

      v13 = sub_1E3DA4EA0();
      v14 = (*(*v12 + 2016))();
      sub_1E410AB80(v14);

      v15 = *&v10[OBJC_IVAR____TtC8VideosUI17VerticalStackView_footerView];
      if (v15)
      {
        v16 = *(*v12 + 2040);
        v17 = v15;
        v18 = v16();
        sub_1E4078C64(v18);
      }
    }
  }

  v19 = sub_1E3DA4EA0();
  v20 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView_subviewElements;
  OUTLINED_FUNCTION_5_0();
  v21 = *&v19[v20];

  v46 = OBJC_IVAR____TtC8VideosUI17VerticalStackView_footerView;
  v22 = *&v10[OBJC_IVAR____TtC8VideosUI17VerticalStackView_footerView];
  if (v22)
  {
    v23 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_subviewElements;
    OUTLINED_FUNCTION_5_0();
    v24 = *(v22 + v23);
  }

  else
  {
    v24 = 0;
  }

  v49[0] = 0;
  OUTLINED_FUNCTION_4_0();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v27 = (v26 + 16);
  OUTLINED_FUNCTION_4_0();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = (v28 + 16);
  sub_1E3DA7360(v21, v49, v7, v28, v10, v24, v26, a3);

  v30 = v49[0];
  if (v49[0])
  {
    v31 = v49[0][2];
    v32 = MEMORY[0x1E69E7CC0];
    if (v31)
    {
      v48 = MEMORY[0x1E69E7CC0];
      sub_1E4207574();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38980);
      v33 = v30 + 5;
      do
      {
        v34 = *v33;
        v35 = *(v33 - 1);

        sub_1E3B99458(v35, v34);
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
        v33 += 2;
        --v31;
      }

      while (v31);
      v32 = v48;
    }
  }

  else
  {
    v32 = 0;
  }

  v36 = *&v10[OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView];
  sub_1E410B128(v32);

  OUTLINED_FUNCTION_5_0();
  v37 = *v27;
  if (*v27)
  {
    v38 = *(v37 + 16);
    v39 = MEMORY[0x1E69E7CC0];
    if (v38)
    {
      v47 = MEMORY[0x1E69E7CC0];
      sub_1E4207574();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38980);
      v40 = (v37 + 40);
      do
      {
        v41 = *v40;
        v42 = *(v40 - 1);

        sub_1E3B99458(v42, v41);
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
        v40 += 2;
        --v38;
      }

      while (v38);
      v39 = v47;
    }
  }

  else
  {
    v39 = 0;
  }

  OUTLINED_FUNCTION_5_0();
  v43 = *v29;
  if (v43)
  {
    v44 = *&v10[v46];
    if (v44)
    {

      v45 = v44;
      sub_1E4078EC8(v39, v43);
    }
  }

  [v10 vui_setNeedsLayout];

  return v10;
}

id sub_1E3DA71D8@<X0>(void *a1@<X8>)
{
  type metadata accessor for VerticalStackView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

double sub_1E3DA7214()
{
  v1 = OBJC_IVAR____TtC8VideosUI17VerticalStackView_isPartiallyExpanded;
  swift_beginAccess();
  *(v0 + v1) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_isScrollable) = 0;
  v2 = OBJC_IVAR____TtC8VideosUI17VerticalStackView_scrollDraggedOffset;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_lastExpandableViewFrame);
  result = 0.0;
  *v3 = 0u;
  v3[1] = 0u;
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_lastPanelFrame);
  *v5 = 0u;
  v5[1] = 0u;
  *(v0 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_initialExpandableHeight) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_maxExpandableHeight) = 0;
  *(v0 + v2) = 0;
  return result;
}

void sub_1E3DA7360(unint64_t a1, void **a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  if (a3 >> 62)
  {
    goto LABEL_85;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E4207384())
  {
    if (i < 1)
    {
      __break(1u);
      return;
    }

    v55 = OBJC_IVAR____TtC8VideosUI17VerticalStackView_footerView;
    v64 = v9 & 0xC000000000000001;
    swift_beginAccess();
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v60 = a1 & 0xFFFFFFFFFFFFFF8;
    v61 = i;
    v58 = a1 & 0xC000000000000001;
    v62 = a1;
    v63 = v9;
    while (1)
    {
      if (v64)
      {
        v15 = MEMORY[0x1E6911E60](v14, v9);
        if (!a1)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v15 = *(v9 + 8 * v14 + 32);

        if (!a1)
        {
LABEL_16:
          Strong = 0;
          goto LABEL_19;
        }
      }

      v16 = a1 >> 62 ? sub_1E4207384() : *(v60 + 16);
      if (v13 >= v16)
      {
        Strong = 0;
      }

      else
      {
        if (v58)
        {
          MEMORY[0x1E6911E60](v13, a1);
        }

        else
        {
          if (v13 < 0)
          {
            goto LABEL_83;
          }

          if (v13 >= *(v60 + 16))
          {
            goto LABEL_84;
          }
        }

        OUTLINED_FUNCTION_5_0();
        Strong = swift_unknownObjectWeakLoadStrong();
      }

      v12 = v13;
LABEL_19:
      LOWORD(v74) = v15[49];
      v80 = 73;
      sub_1E3742F1C();
      v9 = &qword_1F5D5CE68;
      OUTLINED_FUNCTION_18_95();
      OUTLINED_FUNCTION_18_95();
      a1 = *&__src[8];
      if (v71 == *__src && *(&v71 + 1) == *&__src[8])
      {
      }

      else
      {
        v9 = sub_1E42079A4();

        if ((v9 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      a1 = v15;
      v20 = (*(*v15 + 464))(v19);
      if (!v20)
      {
        goto LABEL_33;
      }

      a1 = v20;
      if (v20 >> 62)
      {
        break;
      }

      if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

LABEL_29:
      *(a4 + 16) = v15;

      _s10FooterViewCMa();
      v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v22 = *(a5 + v55);
      *(a5 + v55) = v21;

      swift_beginAccess();
      sub_1E3DA7360(a6, a7 + 16, a1, a4, a5, a6, a7, a8);
      swift_endAccess();

LABEL_79:
      a1 = v62;
      v9 = v63;
      if (v61 == ++v14)
      {
        return;
      }
    }

    if (sub_1E4207384())
    {
      goto LABEL_29;
    }

LABEL_32:

LABEL_33:
    if (!__OFADD__(v12++, 1))
    {
      if (!sub_1E38504FC())
      {
        v80 = v15[49];
        v76 = 99;
        OUTLINED_FUNCTION_18_95();
        OUTLINED_FUNCTION_18_95();
        if (v71 == v74 && *(&v71 + 1) == v75)
        {
        }

        else
        {
          v25 = sub_1E42079A4();

          if ((v25 & 1) == 0)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0uLL;
            v29 = 1;
            v30 = 0uLL;
            v31 = 0uLL;
            v32 = 0uLL;
            goto LABEL_46;
          }
        }
      }

      v29 = *(a8 + 72);
      if (v29 == 2)
      {
        v26 = 0;
        v27 = 0;
        v67 = 0u;
        v68 = 0u;
        v29 = 1;
        v65 = 0u;
        v66 = 0u;
      }

      else
      {
        v27 = *(a8 + 80);
        v26 = *(a8 + 64);
        v65 = *(a8 + 48);
        v66 = *(a8 + 32);
        v67 = *(a8 + 16);
        v68 = *a8;
      }

      sub_1E37C5830(a8, &v71, &qword_1ECF38990);
      v30 = v67;
      v28 = v68;
      v32 = v65;
      v31 = v66;
LABEL_46:
      *__src = v28;
      *&__src[16] = v30;
      *&__src[32] = v31;
      *&__src[48] = v32;
      *&__src[64] = v26;
      v78 = v29;
      v79 = v27;
      v80 = v15[49];
      v76 = 222;
      OUTLINED_FUNCTION_18_95();
      OUTLINED_FUNCTION_18_95();
      if (v71 == v74 && *(&v71 + 1) == v75)
      {
      }

      else
      {
        v34 = sub_1E42079A4();

        if ((v34 & 1) == 0)
        {
          v35 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
          v36 = v78;
          if (v78 == 1)
          {
            v73 = 0;
            v71 = 0u;
            v72 = 0u;
          }

          else
          {
            v47 = v79;
            *(&v72 + 1) = &unk_1F5D869A0;
            v73 = &off_1F5D868A0;
            v48 = swift_allocObject();
            *&v71 = v48;
            memcpy((v48 + 16), __src, 0x48uLL);
            *(v48 + 88) = v36;
            *(v48 + 96) = v47;
          }

          v49 = v35;
          v50 = sub_1E393D9C4(v15, Strong, &v71, 0);

          sub_1E325F748(&v71, &qword_1ECF296C0);
          if (v50)
          {
            v51 = *a2;
            if (!*a2)
            {
              v51 = MEMORY[0x1E69E7CC0];
              *a2 = MEMORY[0x1E69E7CC0];
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v51 = sub_1E3DA7FD4(0, v51[2] + 1, 1, v51);
            }

            v53 = v51[2];
            v52 = v51[3];
            if (v53 >= v52 >> 1)
            {
              v51 = sub_1E3DA7FD4((v52 > 1), v53 + 1, 1, v51);
            }

            v51[2] = v53 + 1;
            v54 = &v51[2 * v53];
            v54[4] = v50;
            v54[5] = v15;
            *a2 = v51;
            goto LABEL_78;
          }

LABEL_77:

LABEL_78:
          v13 = v12;
          goto LABEL_79;
        }
      }

      sub_1E325F748(__src, &unk_1ECF31AB0);
      if (!*a2)
      {
        *a2 = MEMORY[0x1E69E7CC0];
      }

      sub_1E3DA4F70();
      OUTLINED_FUNCTION_30();
      v38 = (*(v37 + 2112))();

      if (Strong)
      {
        objc_opt_self();
        v39 = swift_dynamicCastObjCClass();
        if (v39)
        {
          v40 = Strong;
        }
      }

      else
      {
        v39 = 0;
      }

      sub_1E3280A90(0, &qword_1EE23B228);
      v41 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___tagsHelper, off_1E8728498);
      v42 = sub_1E4005268(v15, v38, v39, 0, v41);

      if (v42)
      {
        v43 = *a2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1E3DA7FD4(0, v43[2] + 1, 1, v43);
        }

        v45 = v43[2];
        v44 = v43[3];
        if (v45 >= v44 >> 1)
        {
          v43 = sub_1E3DA7FD4((v44 > 1), v45 + 1, 1, v43);
        }

        v43[2] = v45 + 1;
        v46 = &v43[2 * v45];
        v46[4] = v42;
        v46[5] = v15;
        *a2 = v43;
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    ;
  }
}

double sub_1E3DA7B6C(double result, double a2)
{
  if (fabs(result) > fabs(a2))
  {
    if ((*&a2 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      result = a2;
    }

    if ((~*&a2 & 0x7FF0000000000000) != 0)
    {
      return a2;
    }
  }

  return result;
}

void sub_1E3DA7B98()
{
  v6 = v0;
  sub_1E3DA4F70();
  OUTLINED_FUNCTION_30();
  v8 = (*(v7 + 1560))();

  if ((sub_1E3A24FDC(v8) & 1) == 0 || (v9 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView, off_1E8728288), [v9 frame], OUTLINED_FUNCTION_3(), v9, OUTLINED_FUNCTION_19(), v36.origin.x = v2, v36.origin.y = v3, v36.size.width = v4, v36.size.height = v5, CGRectEqualToRect(v36, v40)) || (v10 = OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView, objc_msgSend(*(v6 + OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView), sel_frame), CGRectGetMinY(v37) == 0.0))
  {
    v11 = *(v6 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_topPlatterGradient);
    if (v11)
    {

      [v11 removeFromSuperlayer];
    }
  }

  else
  {
    v12 = OBJC_IVAR____TtC8VideosUI17VerticalStackView_topPlatterGradient;
    v13 = *(v6 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_topPlatterGradient);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3B8);
    sub_1E4148C68(sub_1E38E2D2C, v14, &v34);

    v15 = v34;
    [v34 bounds];
    OUTLINED_FUNCTION_3();
    [*(v6 + v10) bounds];
    v20 = OUTLINED_FUNCTION_8_143(v16, v17, v18, v19);
    if (v20)
    {
    }

    else
    {
      v34 = *(v6 + v12);
      MEMORY[0x1EEE9AC00](v20);
      OUTLINED_FUNCTION_12_118();
      *(v21 - 16) = v15;
      v23 = v22;
      sub_1E4148D98(sub_1E3DA862C, v1, v14);

      [*(v6 + v10) frame];
      v24 = 80.0 / CGRectGetHeight(v38);
      v25 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      *&v26 = v24;
      v27 = [v25 initWithFloat_];
      [*(v6 + v10) frame];
      v28 = 140.0 / CGRectGetHeight(v39);
      v29 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      *&v30 = v28;
      v31 = [v29 initWithFloat_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1E42A73A0;
      sub_1E3280A90(0, &qword_1EE23ADD0);
      *(v32 + 32) = sub_1E4206F34();
      *(v32 + 40) = v27;
      *(v32 + 48) = v31;
      sub_1E38E2B5C(v32, v15);
      v33 = *(v6 + v12);
      *(v6 + v12) = v15;
    }
  }
}

uint64_t sub_1E3DA7ED4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 83))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 72);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3DA7F34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 82) = 0;
    *(result + 80) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 83) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 83) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 1;
    }
  }

  return result;
}

void *sub_1E3DA7FD4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF389A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_1E3DA8104@<D0>(double *a1@<X8>)
{
  v3 = v1[2];
  result = v3 + sub_1E3952BE0(v1[4], v1[5], v1[6], v1[7]);
  *a1 = result;
  return result;
}

void sub_1E3DA8144()
{
  v1 = *(v0 + 16);
  v2 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView, off_1E8728288);
  [v1 vui:v2 addSubview:0 oldView:?];
}

void sub_1E3DA81B0()
{
  v1 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView, off_1E8728288);
  v0 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___platterContainerView, 0x1E69DD250);
  [v1 insertSubview:v0 atIndex:0];
}

void sub_1E3DA8238()
{
  v1 = *(v0 + 16);
  v2 = [v1 traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 2)
  {
    v4 = 16;
  }

  else
  {
    v4 = 11;
  }

  v5 = [objc_opt_self() effectWithStyle_];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  v7 = [v6 layer];
  [v7 setMasksToBounds_];

  v8 = *&v1[OBJC_IVAR____TtC8VideosUI17VerticalStackView_platterView];
  *&v1[OBJC_IVAR____TtC8VideosUI17VerticalStackView_platterView] = v6;
}

void sub_1E3DA8338()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI17VerticalStackView_platterView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF389B0);
  sub_1E4148DE0(sub_1E3DA8784);
}

void sub_1E3DA83B4()
{
  v1 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView, off_1E8728288);
  v0 = sub_1E3DA4EA0();
  [v1 vui:v0 addSubview:0 oldView:?];
}

void sub_1E3DA842C(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  Width = CGRectGetWidth(*v2);
  [v3 setFrame_];
  v5 = sub_1E3DA4EA0();
  v6 = [v5 vuiLayer];

  if (v6)
  {
    [v6 setMask_];
  }
}

void sub_1E3DA8510(id *a1)
{
  v2 = *a1;
  [*a1 setFrame_];
  v3 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___platterContainerView, 0x1E69DD250);
  v4 = [v3 layer];

  [v4 setMask_];
}

id sub_1E3DA85B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView, off_1E8728288);
  [v3 vui:v2 addSubview:0 oldView:?];

  return [v1 vui:v2 bringSubviewToFront:?];
}

void sub_1E3DA862C()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E4297BD0;
  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  v5 = [v4 CGColor];

  type metadata accessor for CGColor();
  v7 = v6;
  *(v2 + 56) = v6;
  *(v2 + 32) = v5;
  v8 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.7];
  v9 = [v8 CGColor];

  *(v2 + 88) = v7;
  *(v2 + 64) = v9;
  v10 = [v3 blackColor];
  v11 = [v10 CGColor];

  *(v2 + 120) = v7;
  *(v2 + 96) = v11;

  sub_1E38E2BE0(v2, v1);
}

void sub_1E3DA8784(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___platterContainerView, 0x1E69DD250);
  [v2 addSubview_];
}

uint64_t sub_1E3DA87EC()
{
  v0 = sub_1E4207784();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3DA8840(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x6D6554726F727265;
  }
}

uint64_t sub_1E3DA8894(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0x6D6554726F727265;
  }

  if (v2)
  {
    v4 = 0xED00006574616C70;
  }

  else
  {
    v4 = 0x80000001E4282810;
  }

  if (a2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0x6D6554726F727265;
  }

  if (a2)
  {
    v6 = 0x80000001E4282810;
  }

  else
  {
    v6 = 0xED00006574616C70;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3DA8960()
{
  sub_1E4206014();
}

uint64_t sub_1E3DA89E4()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3DA8A74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3DA87EC();
  *a1 = result;
  return result;
}

uint64_t sub_1E3DA8AA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3DA8840(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3DA8AD8(char a1)
{
  OUTLINED_FUNCTION_13_6();
  swift_allocObject();
  return sub_1E3DA8B10(a1 & 1);
}

uint64_t sub_1E3DA8B10(char a1)
{
  *(v1 + 98) = 2;
  type metadata accessor for TextLayout();
  *(v1 + 104) = sub_1E383BCC0();
  *(v1 + 112) = sub_1E383BCC0();
  *(v1 + 120) = sub_1E383BCC0();
  *(v1 + 128) = sub_1E383BCC0();
  swift_beginAccess();
  *(v1 + 98) = a1 & 1;
  if (a1)
  {
    v3 = 0x80000001E4282810;
  }

  else
  {
    v3 = 0xED00006574616C70;
  }

  v4 = sub_1E3C2F9A0();
  if (v3 != 0xED00006574616C70 || (a1 & 1) != 0)
  {
    v5 = sub_1E42079A4();

    if (v5)
    {
      goto LABEL_8;
    }

    if (a1)
    {
    }

    else
    {
      v100 = sub_1E42079A4();

      if ((v100 & 1) == 0)
      {
LABEL_13:

        return v4;
      }
    }

    v101 = (*v4 + 1752);
    v102 = *v101;
    (*v101)(v99);
    OUTLINED_FUNCTION_2_1();
    (*(v103 + 1792))(6);

    v102(v104);
    OUTLINED_FUNCTION_2_1();
    (*(v105 + 1984))(1);

    v102(v106);
    OUTLINED_FUNCTION_2_1();
    (*(v107 + 1696))(3);

    v109 = (v102)(v108);
    v110 = sub_1E3E5F6B8();
    v111 = *v110;
    v112 = *(*v109 + 680);
    v113 = *v110;
    v112(v111);

    OUTLINED_FUNCTION_9_2();
    v115 = *(v114 + 1776);
    v116 = v115();
    sub_1E3952C88();
    __src[0] = v117;
    __src[1] = v118;
    __src[2] = v119;
    __src[3] = v120;
    LOBYTE(__src[4]) = 0;
    (*(*v116 + 160))(__src);

    (v115)(v121);
    OUTLINED_FUNCTION_2_1();
    (*(v122 + 2056))(5, 0);

    (v115)(v123);
    OUTLINED_FUNCTION_2_1();
    (*(v124 + 1984))(1);

    (v115)(v125);
    OUTLINED_FUNCTION_2_1();
    (*(v126 + 1696))(15);

    v128 = (v115)(v127);
    v129 = *v110;
    v130 = *(*v128 + 680);
    v131 = v129;
    v130(v129);

    goto LABEL_13;
  }

LABEL_8:
  v6 = sub_1E3E5FD88();
  v7 = *(*v4 + 1752);
  v8 = *v4 + 1752;
  v9 = *v6;
  v7();
  v10 = v8;
  OUTLINED_FUNCTION_2_1();
  v12 = *(v11 + 680);
  v136 = v9;
  v12(v9);

  (v7)(v13);
  LOBYTE(v170) = 0;
  sub_1E3C2FC98();
  LOBYTE(v164) = v167;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v158) = v161;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v152) = v155;
  v14 = sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v146) = v149;
  v22 = OUTLINED_FUNCTION_3_181(v14, v15, v16, v17, v18, v19, v20, v21, v133, v135, v136, v139, v141, v143, 2);
  sub_1E3C2FCB8(v22, v23);
  LODWORD(__dst[0]) = __src[0];
  WORD2(__dst[0]) = WORD2(__src[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v24 + 1600))(__dst, 48, v25 & 1, &qword_1F5D549D8);

  (v7)(v26);
  OUTLINED_FUNCTION_2_1();
  (*(v27 + 1984))(1);

  (v7)(v28);
  OUTLINED_FUNCTION_2_1();
  (*(v29 + 2056))(2, 0);

  (v7)(v30);
  OUTLINED_FUNCTION_2_1();
  (*(v31 + 1720))(6);

  OUTLINED_FUNCTION_9_2();
  v33 = *(v32 + 1776);
  v33();
  OUTLINED_FUNCTION_2_1();
  (*(v34 + 680))(v9);

  (v33)(v35);
  OUTLINED_FUNCTION_2_1();
  (*(v36 + 1696))(13);

  (v33)(v37);
  OUTLINED_FUNCTION_2_1();
  (*(v38 + 1984))(1);

  (v33)(v39);
  OUTLINED_FUNCTION_2_1();
  (*(v40 + 2056))(6, 0);

  (v33)(v41);
  OUTLINED_FUNCTION_2_1();
  (*(v42 + 1720))(6);

  (v33)(v43);
  sub_1E3952C88();
  __dst[0] = v44;
  __dst[1] = v45;
  __dst[2] = v46;
  __dst[3] = v47;
  LOBYTE(__dst[4]) = 0;
  sub_1E3952C88();
  v170 = v48;
  v171 = v49;
  v172 = v50;
  v173 = v51;
  v174 = 0;
  type metadata accessor for UIEdgeInsets();
  v53 = v52;
  sub_1E3C2FC98();
  v164 = v167;
  v165 = v168;
  v166 = v169;
  sub_1E3C3DE00(v53);
  v158 = v161;
  v159 = v162;
  v160 = v163;
  sub_1E3C3DE00(v53);
  v152 = v155;
  v153 = v156;
  v154 = v157;
  v54 = sub_1E3C3DE00(v53);
  v146 = v149;
  v147 = v150;
  v148 = v151;
  v62 = OUTLINED_FUNCTION_3_181(v54, v55, v56, v57, v58, v59, v60, v61, v7, v10, v137, v140, v142, v144, __dst[0]);
  sub_1E3C2FCB8(v62, v63);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v64 + 1600))(__dst, 0, v65 & 1, v53);

  OUTLINED_FUNCTION_9_2();
  v67 = *(v66 + 1800);
  v67();
  v68 = objc_opt_self();
  v69 = [v68 systemRedColor];
  OUTLINED_FUNCTION_36();
  (*(v70 + 680))();

  (v67)(v71);
  OUTLINED_FUNCTION_2_1();
  (*(v72 + 1696))(19);

  (v67)(v73);
  OUTLINED_FUNCTION_2_1();
  (*(v74 + 1984))(1);

  (v67)(v75);
  OUTLINED_FUNCTION_2_1();
  (*(v76 + 2056))(6, 0);

  (v67)(v77);
  OUTLINED_FUNCTION_2_1();
  (*(v78 + 1720))(4);

  OUTLINED_FUNCTION_9_2();
  v80 = *(v79 + 1824);
  v80();
  v81 = [v68 systemRedColor];
  OUTLINED_FUNCTION_36();
  (*(v82 + 680))();

  (v80)(v83);
  OUTLINED_FUNCTION_2_1();
  (*(v84 + 1696))(19);

  (v80)(v85);
  OUTLINED_FUNCTION_2_1();
  (*(v86 + 1984))(1);

  (v80)(v87);
  OUTLINED_FUNCTION_2_1();
  (*(v88 + 2056))(6, 0);

  (v67)(v89);
  OUTLINED_FUNCTION_2_1();
  (*(v90 + 1720))(4);

  v92 = v134(v91);
  sub_1E3C37CBC(v92, 23);

  v94 = (v33)(v93);
  sub_1E3C37CBC(v94, 4);

  v96 = (v67)(v95);
  sub_1E3C37CBC(v96, 7);

  v98 = (v80)(v97);
  sub_1E3C37CBC(v98, 8);

  return v4;
}

uint64_t sub_1E3DA99A8()
{
  OUTLINED_FUNCTION_13_6();
  swift_allocObject();
  return sub_1E3DA99D8();
}

uint64_t sub_1E3DA99D8()
{
  *(v0 + 98) = 2;
  type metadata accessor for TextLayout();
  *(v0 + 104) = sub_1E383BCC0();
  *(v0 + 112) = sub_1E383BCC0();
  *(v0 + 120) = sub_1E383BCC0();
  *(v0 + 128) = sub_1E383BCC0();

  return sub_1E3C2F9A0();
}

uint64_t sub_1E3DA9A3C()
{
  sub_1E38F0724();
  OUTLINED_FUNCTION_13_6();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3DA9AA4(char a1)
{
  v2 = v1;
  type metadata accessor for ErrorContentViewLayout();
  OUTLINED_FUNCTION_13_6();
  swift_allocObject();
  *(v2 + 104) = sub_1E3DA8B10(a1 & 1);
  v4 = sub_1E3C2F9A0();

  sub_1E3C37CBC(v5, 2);

  return v4;
}

unint64_t sub_1E3DA9B60()
{
  result = qword_1ECF389C8;
  if (!qword_1ECF389C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF389C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ErrorContentViewLayoutType(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_1E3DA9D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = a4();

  return v4;
}

uint64_t sub_1E3DA9DF0(uint64_t (*a1)(void))
{
  result = a1();
  if (!v1)
  {
    return sub_1E4207BD4();
  }

  return result;
}

id VUIRestrictionsUtilityProxyObjC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VUIRestrictionsUtilityProxyObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIRestrictionsUtilityProxyObjC();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VUIRestrictionsUtilityProxyObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIRestrictionsUtilityProxyObjC();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E3DA9F20()
{
  v1 = [v0 fontDescriptor];

  return v1;
}

id sub_1E3DA9F68(void *a1, double a2)
{
  v3 = [swift_getObjCClassFromMetadata() fontWithDescriptor:a1 size:a2];

  return v3;
}

UIFontDescriptor_optional __swiftcall UIFontDescriptor.vuiWithSymbolicTraits(_:)(UIFontDescriptorSymbolicTraits a1)
{
  v2 = [v1 fontDescriptorWithSymbolicTraits_];

  v3 = v2;
  result.value.super.isa = v3;
  result.is_nil = v4;
  return result;
}

uint64_t sub_1E3DAA014(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E3DAA0B4()
{
  OUTLINED_FUNCTION_93();
  v121 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389E0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v118 = &v97 - v4;
  v122 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v119 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v120 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  v112 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_20(v11);
  v115 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v117 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v114 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v111 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  v113 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_42_57();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v97 - v22;
  v24 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v30 = (v28 - v29);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_6();
  v116 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v97 - v34;
  v36 = OBJC_IVAR____TtCC8VideosUI22GroupActivitiesManager13TimingTracker_configurationDate;
  swift_beginAccess();
  sub_1E37E93E8(v0 + v36, v23, &unk_1ECF28E20);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    v37 = v23;
LABEL_7:
    sub_1E325F6F0(v37, &unk_1ECF28E20);
    v49 = v119;
    goto LABEL_13;
  }

  v38 = *(v26 + 32);
  v38(v35, v23, v24);
  v39 = OBJC_IVAR____TtCC8VideosUI22GroupActivitiesManager13TimingTracker_firstSessionReceivedDate;
  swift_beginAccess();
  sub_1E37E93E8(v0 + v39, v0, &unk_1ECF28E20);
  if (__swift_getEnumTagSinglePayload(v0, 1, v24) != 1)
  {
    (*(v26 + 8))(v35, v24);
    v37 = v0;
    goto LABEL_7;
  }

  v105 = v38;
  v106 = v26 + 32;
  v107 = v39;
  v108 = v0;
  sub_1E325F6F0(v0, &unk_1ECF28E20);
  sub_1E41FE5C4();
  v104 = v35;
  sub_1E41FE4F4();
  v41 = v40;
  sub_1E32ABC68();
  sub_1E41FE4F4();
  v43 = v42;
  v44 = *(v26 + 8);
  v109 = v26 + 8;
  v103 = v44;
  v44(v30, v24);
  v45 = sub_1E324FBDC();
  v46 = *(v117 + 16);
  v47 = v111;
  v102 = v45;
  v48 = v115;
  v101 = v117 + 16;
  v100 = v46;
  (v46)(v111);
  v49 = v119;
  v50 = v122;
  OUTLINED_FUNCTION_27_71();
  v99 = v51;
  v51();
  v52 = sub_1E41FFC94();
  v98 = sub_1E42067D4();
  if (OUTLINED_FUNCTION_35_57(v98))
  {
    v53 = OUTLINED_FUNCTION_49_0();
    v97 = OUTLINED_FUNCTION_100();
    v123[0] = v97;
    *v53 = 136315394;
    OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
    v54 = sub_1E4207944();
    v56 = v55;
    v57 = OUTLINED_FUNCTION_33_64();
    v110 = v58;
    v58(v57, v122);
    v59 = sub_1E3270FC8(v54, v56, v123);
    v48 = v115;

    *(v53 + 4) = v59;
    *(v53 + 12) = 2048;
    *(v53 + 14) = v41;
    _os_log_impl(&dword_1E323F000, v52, v98, "GroupActivitiesManager.Timing:: session <%s> received %f seconds after configuration", v53, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v97);
    OUTLINED_FUNCTION_6_0();
    v50 = v122;
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v60 = OUTLINED_FUNCTION_33_64();
    v110 = v61;
    v61(v60, v50);
  }

  v111 = *(v117 + 8);
  v111(v47, v48);
  v100(v114, v102, v48);
  v62 = v112;
  OUTLINED_FUNCTION_27_71();
  v99();
  v63 = sub_1E41FFC94();
  v64 = sub_1E42067D4();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = OUTLINED_FUNCTION_49_0();
    v66 = OUTLINED_FUNCTION_100();
    v123[0] = v66;
    *v65 = 136315394;
    OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
    v67 = sub_1E4207944();
    v69 = v68;
    v110(v62, v122);
    v70 = sub_1E3270FC8(v67, v69, v123);

    *(v65 + 4) = v70;
    *(v65 + 12) = 2048;
    *(v65 + 14) = v43;
    _os_log_impl(&dword_1E323F000, v63, v64, "GroupActivitiesManager.Timing:: session <%s> received %f seconds after app launch", v65, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v66);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v110(v62, v50);
  }

  OUTLINED_FUNCTION_38_48();
  v71();
  v103(v104, v24);
  v72 = v113;
  v105(v113, v116, v24);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v24);
  v76 = v108;
  v77 = v107;
  OUTLINED_FUNCTION_11_3();
  sub_1E32ABDC0(v72, v76 + v77);
  swift_endAccess();
LABEL_13:
  v78 = *(v49 + 16);
  v79 = v120;
  OUTLINED_FUNCTION_27_71();
  v78();
  v80 = v118;
  OUTLINED_FUNCTION_27_71();
  v78();
  v81 = _s13SessionTimingVMa(0);
  sub_1E41FE5C4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v24);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v24);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v24);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v24);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v81);
  OUTLINED_FUNCTION_11_3();
  sub_1E3DAAA04(v80, v79);
  swift_endAccess();
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3DAAA04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = _s13SessionTimingVMa(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) == 1)
  {
    sub_1E325F6F0(a1, &qword_1ECF389E0);
    sub_1E3DAD48C(a2, v8);
    v13 = sub_1E41FE624();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1E325F6F0(v8, &qword_1ECF389E0);
  }

  else
  {
    sub_1E3DAD358(a1, v11);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E3DAD614(v11, a2);
    *v3 = v17;
    v15 = sub_1E41FE624();
    return (*(*(v15 - 8) + 8))(a2, v15);
  }
}

void sub_1E3DAABDC()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_9_5();
  v142 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v146 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v138 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_170();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  v136 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v140 = v11;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v144 = v12;
  v145 = v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v139 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  v137 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v19 = OUTLINED_FUNCTION_20(v18);
  v20 = _s13SessionTimingVMa(v19);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v134 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389E0);
  OUTLINED_FUNCTION_17_2(v24);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15_15();
  v141 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_6();
  v31 = (v29 - v30);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_42_57();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v122 - v35;
  v37 = OBJC_IVAR____TtCC8VideosUI22GroupActivitiesManager13TimingTracker_sessions;
  OUTLINED_FUNCTION_34_61();
  v38 = *&v1[v37];
  v143 = v0;
  sub_1E3DAB5E8(v0, v38, v2);
  v39 = OUTLINED_FUNCTION_31_5();
  if (__swift_getEnumTagSinglePayload(v39, v40, v20))
  {
    sub_1E325F6F0(v2, &qword_1ECF389E0);
    swift_endAccess();
    v41 = sub_1E324FBDC();
    v43 = v144;
    v42 = v145;
    v44 = v139;
    (*(v145 + 16))(v139, v41, v144);
    v45 = v146;
    v46 = v138;
    v47 = v142;
    (*(v146 + 16))(v138, v143, v142);
    v48 = sub_1E41FFC94();
    v49 = sub_1E42067F4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_6_21();
      v51 = OUTLINED_FUNCTION_100();
      v147 = v51;
      *v50 = 136315138;
      OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
      sub_1E4207944();
      v52 = v46;
      v54 = v53;
      (*(v45 + 8))(v52, v47);
      v55 = OUTLINED_FUNCTION_13_130();
      v57 = sub_1E3270FC8(v55, v54, v56);

      *(v50 + 4) = v57;
      _os_log_impl(&dword_1E323F000, v48, v49, "GroupActivitiesManager.Timing:: no session for %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v42 + 8))(v44, v144);
    }

    else
    {

      (*(v45 + 8))(v46, v47);
      (*(v42 + 8))(v44, v43);
    }
  }

  else
  {
    v129 = v37;
    v133 = v1;
    v58 = v134;
    sub_1E3DAD298(v2, v134);
    sub_1E325F6F0(v2, &qword_1ECF389E0);
    swift_endAccess();
    v59 = *(v27 + 16);
    v60 = v58 + *(v20 + 20);
    v61 = v141;
    v125 = v27 + 16;
    v124 = v59;
    v59(v3, v60, v141);
    sub_1E3DAD2FC(v58);
    (*(v27 + 32))(v36, v3, v61);
    sub_1E41FE5C4();
    v130 = v36;
    sub_1E41FE4F4();
    v63 = v62;
    sub_1E32ABC68();
    v131 = v1;
    sub_1E41FE4F4();
    v65 = v64;
    v66 = *(v27 + 8);
    v134 = v27 + 8;
    v128 = v66;
    v66(v31, v61);
    v67 = sub_1E324FBDC();
    v68 = v146;
    v69 = *(v145 + 16);
    v70 = v135;
    v127 = v67;
    v71 = v144;
    v126 = v69;
    (v69)(v135);
    v72 = v142;
    v138 = *(v68 + 16);
    v139 = v68 + 16;
    (v138)(v140, v143, v142);
    v73 = sub_1E41FFC94();
    v74 = sub_1E42067D4();
    v75 = os_log_type_enabled(v73, v74);
    v132 = v20;
    if (v75)
    {
      v76 = OUTLINED_FUNCTION_49_0();
      v123 = OUTLINED_FUNCTION_100();
      v147 = v123;
      *v76 = 136315394;
      OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
      v77 = v140;
      sub_1E4207944();
      v79 = v78;
      v80 = v77;
      v81 = *(v68 + 8);
      v81(v80, v72);
      v82 = OUTLINED_FUNCTION_13_130();
      v84 = sub_1E3270FC8(v82, v79, v83);

      *(v76 + 4) = v84;
      *(v76 + 12) = 2048;
      *(v76 + 14) = v63;
      _os_log_impl(&dword_1E323F000, v73, v74, "GroupActivitiesManager.Timing:: session <%s> joined %f seconds after received", v76, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v123);
      OUTLINED_FUNCTION_6_0();
      v71 = v144;
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      v81 = *(v68 + 8);
      v81(v140, v72);
    }

    v85 = *(v145 + 8);
    v85(v70, v71);
    v86 = v137;
    v87 = v136;
    v126(v137, v127, v71);
    OUTLINED_FUNCTION_27_71();
    v138();
    v88 = sub_1E41FFC94();
    v89 = sub_1E42067D4();
    if (OUTLINED_FUNCTION_35_57(v89))
    {
      v90 = OUTLINED_FUNCTION_49_0();
      v142 = v85;
      v91 = v81;
      v92 = v87;
      v93 = v90;
      v94 = OUTLINED_FUNCTION_100();
      v147 = v94;
      *v93 = 136315394;
      OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
      sub_1E4207944();
      v96 = v95;
      v97 = v92;
      v81 = v91;
      v91(v97, v72);
      v98 = OUTLINED_FUNCTION_13_130();
      v100 = sub_1E3270FC8(v98, v96, v99);

      *(v93 + 4) = v100;
      *(v93 + 12) = 2048;
      *(v93 + 14) = v65;
      _os_log_impl(&dword_1E323F000, v88, v89, "GroupActivitiesManager.Timing:: session <%s> joined %f seconds after app launch", v93, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v94);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v142(v137, v144);
    }

    else
    {

      v101 = OUTLINED_FUNCTION_37_59();
      v81(v101, v72);
      v85(v86, v71);
    }

    v102 = v133;
    v103 = v129;
    OUTLINED_FUNCTION_27_71();
    v138();
    OUTLINED_FUNCTION_24_81();
    v104 = &v102[v103];
    v105 = sub_1E3DAB698(&v147);
    v107 = OUTLINED_FUNCTION_12_119(v105, v106);
    v108 = v132;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v107, v109, v132);
    v111 = v131;
    if (EnumTagSinglePayload)
    {
      v112 = OUTLINED_FUNCTION_26_86();
      v104(v112);
      v113 = v130;
      v114 = v141;
    }

    else
    {
      v115 = *(v108 + 24);
      sub_1E325F6F0(v103 + v115, &unk_1ECF28E20);
      v114 = v141;
      v124(v103 + v115, v111, v141);
      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v116, v117, v118, v114);
      v119 = OUTLINED_FUNCTION_26_86();
      v104(v119);
      v113 = v130;
    }

    swift_endAccess();
    v120 = OUTLINED_FUNCTION_37_59();
    v81(v120, v72);
    v121 = v128;
    v128(v111, v114);
    v121(v113, v114);
  }

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3DAB5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1E39E6224(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = _s13SessionTimingVMa(0);
    sub_1E3DAD298(v8 + *(*(v9 - 8) + 72) * v7, a3);
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = _s13SessionTimingVMa(0);
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

void (*sub_1E3DAB698(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v2;
  v3 = sub_1E41FE624();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  v2[5] = v4;
  v6 = __swift_coroFrameAllocStub(*(v4 + 64));
  v2[6] = v6;
  (*(v5 + 16))();
  v2[7] = sub_1E3DAD8CC(v2, v6);
  return sub_1E3DAB790;
}

void sub_1E3DAB790(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void sub_1E3DAB808()
{
  OUTLINED_FUNCTION_93();
  v75 = v0;
  v78 = v1;
  v2 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v77 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65 - v8;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v65 - v25;
  sub_1E41FE5C4();
  sub_1E32ABC68();
  v74 = v26;
  sub_1E41FE4F4();
  v28 = v27;
  v67 = v19;
  v29 = *(v19 + 8);
  v76 = v17;
  v72 = v29;
  v73 = v19 + 8;
  v29(v23, v17);
  v30 = sub_1E324FBDC();
  v70 = v12;
  v71 = v10;
  (*(v12 + 16))(v16, v30, v10);
  v31 = v4;
  v32 = *(v4 + 16);
  v33 = v2;
  v32(v9, v78, v2);
  v34 = sub_1E41FFC94();
  v35 = sub_1E42067D4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_49_0();
    v37 = OUTLINED_FUNCTION_100();
    v68 = v31;
    v38 = v37;
    v79 = v37;
    *v36 = 136315394;
    OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
    v66 = v32;
    sub_1E4207944();
    v39 = v33;
    v41 = v40;
    v42 = OUTLINED_FUNCTION_33_64();
    v69 = v43;
    v43(v42, v39);
    v44 = OUTLINED_FUNCTION_13_130();
    v46 = sub_1E3270FC8(v44, v41, v45);
    v33 = v39;
    v32 = v66;

    *(v36 + 4) = v46;
    *(v36 + 12) = 2048;
    *(v36 + 14) = v28;
    _os_log_impl(&dword_1E323F000, v34, v35, "GroupActivitiesManager.Timing:: session <%s> opening URL %f seconds after app launch", v36, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v47 = OUTLINED_FUNCTION_33_64();
    v69 = v48;
    v48(v47, v33);
  }

  (*(v70 + 8))(v16, v71);
  v49 = v77;
  v32(v77, v78, v33);
  OUTLINED_FUNCTION_24_81();
  v50 = sub_1E3DAB698(&v79);
  v52 = v51;
  v53 = _s13SessionTimingVMa(0);
  v54 = OUTLINED_FUNCTION_31_5();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, v55, v53);
  v57 = v74;
  if (EnumTagSinglePayload)
  {
    v58 = OUTLINED_FUNCTION_26_86();
    v50(v58);
    v59 = v76;
  }

  else
  {
    v60 = *(v53 + 28);
    sub_1E325F6F0(v52 + v60, &unk_1ECF28E20);
    v59 = v76;
    (*(v67 + 16))(v52 + v60, v57, v76);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v59);
    v64 = OUTLINED_FUNCTION_26_86();
    v50(v64);
  }

  swift_endAccess();
  v69(v49, v33);
  v72(v57, v59);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3DABCA4()
{
  OUTLINED_FUNCTION_93();
  v138 = v3;
  sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v134 = v4;
  v135 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  v132 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_18_6();
  v131 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_170();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v127 = v11;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v136 = v13;
  v137 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v133 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  v130 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v113 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389E0);
  OUTLINED_FUNCTION_17_2(v20);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v113 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v24);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_31_49();
  v26 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v129 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_6();
  v31 = (v29 - v30);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v113 - v34;
  v36 = OBJC_IVAR____TtCC8VideosUI22GroupActivitiesManager13TimingTracker_sessions;
  OUTLINED_FUNCTION_34_61();
  sub_1E3DAB5E8(v138, *(v1 + v36), v23);
  v37 = _s13SessionTimingVMa(0);
  if (__swift_getEnumTagSinglePayload(v23, 1, v37))
  {
    sub_1E325F6F0(v23, &qword_1ECF389E0);
    swift_endAccess();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v26);
    goto LABEL_4;
  }

  v123 = v36;
  v125 = v35;
  v126 = v2;
  v124 = v1;
  sub_1E37E93E8(&v23[*(v37 + 28)], v0, &unk_1ECF28E20);
  sub_1E325F6F0(v23, &qword_1ECF389E0);
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(v0, 1, v26) == 1)
  {
LABEL_4:
    sub_1E325F6F0(v0, &unk_1ECF28E20);
    v41 = sub_1E324FBDC();
    v42 = v136;
    v43 = v133;
    (*(v136 + 16))(v133, v41, v137);
    v44 = v134;
    v45 = v135;
    v46 = v132;
    (*(v135 + 16))(v132, v138, v134);
    v47 = sub_1E41FFC94();
    v48 = sub_1E42067F4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = OUTLINED_FUNCTION_6_21();
      v50 = OUTLINED_FUNCTION_100();
      v139 = v50;
      *v49 = 136315138;
      OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
      sub_1E4207944();
      v51 = v46;
      v53 = v52;
      (*(v45 + 8))(v51, v44);
      v54 = OUTLINED_FUNCTION_13_130();
      v56 = v43;
      v57 = sub_1E3270FC8(v54, v53, v55);

      *(v49 + 4) = v57;
      _os_log_impl(&dword_1E323F000, v47, v48, "GroupActivitiesManager.Timing:: no session for %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v42 + 8))(v56, v137);
    }

    else
    {

      (*(v45 + 8))(v46, v44);
      (*(v42 + 8))(v43, v137);
    }

    goto LABEL_7;
  }

  v121 = v37;
  v58 = v129;
  v59 = v125;
  (*(v129 + 32))(v125, v0, v26);
  v60 = v126;
  sub_1E41FE5C4();
  sub_1E41FE4F4();
  v62 = v61;
  sub_1E32ABC68();
  sub_1E41FE4F4();
  v64 = v63;
  v65 = *(v58 + 8);
  v120 = v58 + 8;
  v119 = v65;
  v65(v31, v26);
  v66 = sub_1E324FBDC();
  v67 = *(v136 + 16);
  v68 = v19;
  v118 = v66;
  v117 = v67;
  (v67)(v19);
  v69 = v134;
  v70 = v135;
  v71 = *(v135 + 16);
  v72 = v127;
  v132 = v135 + 16;
  v122 = v71;
  v71(v127, v138, v134);
  v73 = sub_1E41FFC94();
  v116 = sub_1E42067D4();
  if (os_log_type_enabled(v73, v116))
  {
    v74 = OUTLINED_FUNCTION_49_0();
    v115 = v26;
    v75 = v60;
    v76 = v59;
    v77 = v72;
    v78 = v74;
    v114 = OUTLINED_FUNCTION_100();
    v139 = v114;
    *v78 = 136315394;
    OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
    sub_1E4207944();
    v80 = v79;
    v81 = v77;
    v59 = v76;
    v60 = v75;
    v26 = v115;
    v133 = *(v135 + 8);
    v133(v81, v69);
    v82 = OUTLINED_FUNCTION_13_130();
    v84 = sub_1E3270FC8(v82, v80, v83);

    *(v78 + 4) = v84;
    *(v78 + 12) = 2048;
    *(v78 + 14) = v62;
    _os_log_impl(&dword_1E323F000, v73, v116, "GroupActivitiesManager.Timing:: session <%s> completed open URL after %f seconds", v78, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v114);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v133 = *(v70 + 8);
    v133(v72, v69);
  }

  v127 = *(v136 + 8);
  v127(v68, v137);
  v85 = v130;
  v117(v130, v118, v137);
  v86 = v128;
  v122(v128, v138, v69);
  v87 = sub_1E41FFC94();
  v88 = sub_1E42067D4();
  if (OUTLINED_FUNCTION_35_57(v88))
  {
    v89 = v86;
    v90 = OUTLINED_FUNCTION_49_0();
    v91 = OUTLINED_FUNCTION_100();
    v139 = v91;
    *v90 = 136315394;
    OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
    sub_1E4207944();
    v93 = v92;
    v133(v89, v69);
    v94 = OUTLINED_FUNCTION_13_130();
    v96 = sub_1E3270FC8(v94, v93, v95);
    v60 = v126;

    *(v90 + 4) = v96;
    *(v90 + 12) = 2048;
    *(v90 + 14) = v64;
    _os_log_impl(&dword_1E323F000, v87, v88, "GroupActivitiesManager.Timing:: session <%s> URL opened %f seconds after launch", v90, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v91);
    v59 = v125;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v97 = v130;
  }

  else
  {

    v133(v86, v69);
    v97 = v85;
  }

  v127(v97, v137);
  v98 = v124;
  v99 = v131;
  v122(v131, v138, v69);
  v100 = v123;
  OUTLINED_FUNCTION_24_81();
  v101 = (v98 + v100);
  v102 = sub_1E3DAB698(&v139);
  v104 = OUTLINED_FUNCTION_12_119(v102, v103);
  v105 = v121;
  if (!__swift_getEnumTagSinglePayload(v104, v106, v121))
  {
    v107 = *(v105 + 32);
    sub_1E325F6F0(v99 + v107, &unk_1ECF28E20);
    (*(v129 + 16))(v99 + v107, v60, v26);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v108, v109, v110, v26);
  }

  v111 = OUTLINED_FUNCTION_26_86();
  v101(v111);
  swift_endAccess();
  v133(v131, v69);
  v112 = v119;
  v119(v60, v26);
  v112(v59, v26);
LABEL_7:
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3DAC6F0()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v135 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v134 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  v130 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_170();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_20(v13);
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v136 = v15;
  v137 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  v132 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_6();
  v128 = v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_20(v20);
  v21 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v131 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_25_3();
  v133 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v26);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v115 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389E0);
  OUTLINED_FUNCTION_17_2(v30);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  v32 = OUTLINED_FUNCTION_15_15();
  v33 = _s13SessionTimingVMa(v32);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v37 = v36 - v35;
  v38 = OBJC_IVAR____TtCC8VideosUI22GroupActivitiesManager13TimingTracker_sessions;
  OUTLINED_FUNCTION_34_61();
  v129 = v2;
  v127 = v38;
  sub_1E3DAB5E8(v4, *(v2 + v38), v1);
  v39 = OUTLINED_FUNCTION_31_5();
  if (__swift_getEnumTagSinglePayload(v39, v40, v33) == 1)
  {
    sub_1E325F6F0(v1, &qword_1ECF389E0);
    swift_endAccess();
    v41 = sub_1E324FBDC();
    v42 = v136;
    v43 = v137;
    v44 = v132;
    (*(v136 + 16))(v132, v41, v137);
    v45 = v135;
    (*(v135 + 16))(v134, v4, v5);
    v46 = sub_1E41FFC94();
    v47 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_35_57(v47))
    {
      v48 = OUTLINED_FUNCTION_6_21();
      v49 = v5;
      v50 = OUTLINED_FUNCTION_100();
      v138[0] = v50;
      *v48 = 136315138;
      OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
      v51 = v134;
      v52 = sub_1E4207944();
      v54 = v53;
      (*(v45 + 8))(v51, v49);
      v55 = sub_1E3270FC8(v52, v54, v138);

      *(v48 + 4) = v55;
      _os_log_impl(&dword_1E323F000, v46, v47, "GroupActivitiesManager.Timing:: no session for %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v136 + 8))(v44, v137);
    }

    else
    {

      (*(v45 + 8))(v134, v5);
      (*(v42 + 8))(v44, v43);
    }
  }

  else
  {
    v132 = v4;
    v56 = v135;
    v134 = v5;
    sub_1E3DAD358(v1, v37);
    swift_endAccess();
    sub_1E37E93E8(v37 + *(v33 + 36), v29, &unk_1ECF28E20);
    if (__swift_getEnumTagSinglePayload(v29, 1, v21) == 1)
    {
      sub_1E325F6F0(v29, &unk_1ECF28E20);
      sub_1E41FE5C4();
      v121 = v33;
      v122 = v37;
      sub_1E41FE4F4();
      v58 = v57;
      sub_1E32ABC68();
      sub_1E41FE4F4();
      v60 = v59;
      v61 = OUTLINED_FUNCTION_33_64();
      v120 = v21;
      v119 = v62;
      v118 = v63;
      v63(v61, v21);
      v64 = sub_1E324FBDC();
      v65 = v136;
      v66 = *(v136 + 16);
      v67 = v126;
      v117 = v64;
      v68 = v137;
      v116 = v66;
      (v66)(v126);
      v69 = v56;
      v70 = *(v56 + 16);
      v71 = v125;
      v72 = v134;
      v124 = v56 + 16;
      v123 = v70;
      v70(v125, v132, v134);
      v73 = sub_1E41FFC94();
      v74 = sub_1E42067D4();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = OUTLINED_FUNCTION_49_0();
        v138[0] = OUTLINED_FUNCTION_100();
        v76 = v138[0];
        *v75 = 136315394;
        OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
        sub_1E4207944();
        v78 = v77;
        v125 = *(v135 + 8);
        v125(v71, v134);
        v79 = OUTLINED_FUNCTION_13_130();
        v81 = sub_1E3270FC8(v79, v78, v80);
        v72 = v134;

        *(v75 + 4) = v81;
        *(v75 + 12) = 2048;
        *(v75 + 14) = v58;
        _os_log_impl(&dword_1E323F000, v73, v74, "GroupActivitiesManager.Timing:: session <%s> playback started %f seconds after session received", v75, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v76);
        OUTLINED_FUNCTION_6_0();
        v68 = v137;
        OUTLINED_FUNCTION_6_0();
      }

      else
      {

        v125 = *(v69 + 8);
        v125(v71, v72);
      }

      v82 = *(v65 + 8);
      v82(v67, v68);
      v116(v128, v117, v68);
      OUTLINED_FUNCTION_28_66();
      v83();
      v84 = sub_1E41FFC94();
      v85 = sub_1E42067D4();
      if (OUTLINED_FUNCTION_35_57(v85))
      {
        v86 = OUTLINED_FUNCTION_49_0();
        v87 = OUTLINED_FUNCTION_100();
        v138[0] = v87;
        *v86 = 136315394;
        OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
        sub_1E4207944();
        v89 = v88;
        OUTLINED_FUNCTION_38_48();
        v90();
        v91 = OUTLINED_FUNCTION_13_130();
        v93 = sub_1E3270FC8(v91, v89, v92);

        *(v86 + 4) = v93;
        *(v86 + 12) = 2048;
        *(v86 + 14) = v60;
        _os_log_impl(&dword_1E323F000, v84, v85, "GroupActivitiesManager.Timing:: session <%s> playback started %f seconds after launch", v86, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v87);
        v72 = v134;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v94 = OUTLINED_FUNCTION_37_59();
      }

      else
      {

        OUTLINED_FUNCTION_38_48();
        v96();
        v94 = OUTLINED_FUNCTION_37_59();
        v95 = v68;
      }

      v82(v94, v95);
      OUTLINED_FUNCTION_28_66();
      v97();
      v98 = v129;
      v99 = v127;
      OUTLINED_FUNCTION_24_81();
      v100 = (v98 + v99);
      v101 = sub_1E3DAB698(v138);
      v103 = OUTLINED_FUNCTION_12_119(v101, v102);
      v104 = v121;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v103, v105, v121);
      v107 = v133;
      v108 = v120;
      if (!EnumTagSinglePayload)
      {
        v109 = *(v104 + 36);
        sub_1E325F6F0(v72 + v109, &unk_1ECF28E20);
        (*(v131 + 16))(v72 + v109, v107, v108);
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v110, v111, v112, v108);
      }

      v113 = OUTLINED_FUNCTION_26_86();
      v100(v113);
      swift_endAccess();
      OUTLINED_FUNCTION_38_48();
      v114();
      v118(v107, v108);
      sub_1E3DAD2FC(v122);
    }

    else
    {
      sub_1E3DAD2FC(v37);
      sub_1E325F6F0(v29, &unk_1ECF28E20);
    }
  }

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3DAD0D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389E0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_49();
  sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  (*(v9 + 16))(v7 - v6, a1);
  _s13SessionTimingVMa(0);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_11_3();
  sub_1E3DAAA04(v1, v8);
  return swift_endAccess();
}

uint64_t sub_1E3DAD1F8()
{
  v1 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtCC8VideosUI22GroupActivitiesManager13TimingTracker_configurationDate);
  sub_1E325F6F0(v1, v2);
  v3 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtCC8VideosUI22GroupActivitiesManager13TimingTracker_firstSessionReceivedDate);
  sub_1E325F6F0(v3, v4);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1E3DAD26C()
{
  sub_1E3DAD1F8();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E3DAD298(uint64_t a1, uint64_t a2)
{
  v4 = _s13SessionTimingVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3DAD2FC(uint64_t a1)
{
  v2 = _s13SessionTimingVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3DAD358(uint64_t a1, uint64_t a2)
{
  v4 = _s13SessionTimingVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3DAD3E4()
{
  sub_1E41FE624();
  if (v0 <= 0x3F)
  {
    sub_1E41FE5D4();
    if (v1 <= 0x3F)
    {
      sub_1E3273C28();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E3DAD48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E39E6224(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389E8);
    sub_1E4207644();
    v7 = *(v15 + 48);
    v8 = sub_1E41FE624();
    (*(*(v8 - 8) + 8))(v7 + *(*(v8 - 8) + 72) * v6, v8);
    v9 = *(v15 + 56);
    v10 = _s13SessionTimingVMa(0);
    sub_1E3DAD358(v9 + *(*(v10 - 8) + 72) * v6, a2);
    sub_1E32AC3CC(&qword_1EE28A440);
    sub_1E4207664();
    *v2 = v15;
    v11 = a2;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = _s13SessionTimingVMa(0);
    v11 = a2;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t sub_1E3DAD614(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E41FE624();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = sub_1E39E6224(a2);
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389E8);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_1E39E6224(a2);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_11:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v3;
  if (v14)
  {
    v18 = v17[7];
    v19 = v18 + *(*(_s13SessionTimingVMa(0) - 8) + 72) * v13;

    return sub_1E3DADF70(a1, v19);
  }

  else
  {
    (*(v7 + 16))(v9, a2, v6);
    return sub_1E3DAD7F0(v13, v9, a1, v17);
  }
}

uint64_t sub_1E3DAD7F0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1E41FE624();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = _s13SessionTimingVMa(0);
  result = sub_1E3DAD358(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void (*sub_1E3DAD8CC(void *a1, uint64_t a2))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v4;
  v5 = sub_1E41FE624();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[9] = v6;
  v8 = __swift_coroFrameAllocStub(*(v6 + 64));
  v4[10] = v8;
  swift_isUniquelyReferenced_nonNull_native();
  (*(v7 + 16))(v8, a2, v5);
  v4[11] = sub_1E377F45C(v4);
  v4[12] = sub_1E3DADA80(v4 + 4, v8);
  return sub_1E3DAD9E8;
}

void sub_1E3DAD9E8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_1E3DADA80(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_coroFrameAllocStub(0x78uLL);
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v7 = sub_1E41FE624();
  v6[2] = v7;
  v8 = *(v7 - 8);
  v6[3] = v8;
  v6[4] = __swift_coroFrameAllocStub(*(v8 + 64));
  v9 = _s13SessionTimingVMa(0);
  v6[5] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v6[6] = v10;
  v12 = *(v10 + 64);
  v6[7] = __swift_coroFrameAllocStub(v12);
  v6[8] = __swift_coroFrameAllocStub(v12);
  v6[9] = __swift_coroFrameAllocStub(v12);
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389E0) - 8) + 64);
  v6[10] = __swift_coroFrameAllocStub(v13);
  v6[11] = __swift_coroFrameAllocStub(v13);
  v14 = __swift_coroFrameAllocStub(v13);
  v6[12] = v14;
  v15 = *v2;
  v16 = sub_1E39E6224(a2);
  *(v6 + 112) = v17 & 1;
  if (__OFADD__(*(v15 + 16), (v17 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = v16;
  v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389E8);
  if (sub_1E4207644())
  {
    v20 = sub_1E39E6224(a2);
    if ((v19 & 1) == (v21 & 1))
    {
      v18 = v20;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

LABEL_5:
  v6[13] = v18;
  if (v19)
  {
    sub_1E3DAD358(*(*v3 + 56) + *(v11 + 72) * v18, v14);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v22, 1, v9);
  return sub_1E3DADD20;
}

void sub_1E3DADD20(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = v2[5];
  if (a2)
  {
    sub_1E37E93E8(v3, v2[10], &qword_1ECF389E0);
    v5 = OUTLINED_FUNCTION_31_5();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, v6, v4);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (EnumTagSinglePayload != 1)
    {
      v10 = v2[1];
      sub_1E3DAD358(v9, v2[8]);
      v11 = *v10;
      v12 = v2[13];
      v13 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[7];
        v15 = v2[4];
        (*(v2[3] + 16))(v15, *v2, v2[2]);
        sub_1E3DAD358(v13, v14);
        sub_1E3DAD7F0(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_1E37E93E8(v3, v2[11], &qword_1ECF389E0);
    v16 = OUTLINED_FUNCTION_31_5();
    v18 = __swift_getEnumTagSinglePayload(v16, v17, v4);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v18 != 1)
    {
      v19 = v2[1];
      sub_1E3DAD358(v9, v2[9]);
      v11 = *v19;
      v12 = v2[13];
      v13 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1E3DAD358(v13, v11[7] + *(v2[6] + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_1E325F6F0(v9, &qword_1ECF389E0);
  if (v8)
  {
    (*(v2[3] + 8))(*(*v2[1] + 48) + *(v2[3] + 72) * v2[13], v2[2]);
    sub_1E32AC3CC(&qword_1EE28A440);
    sub_1E4207664();
  }

LABEL_10:
  v20 = v2[11];
  v21 = v2[12];
  v23 = v2[9];
  v22 = v2[10];
  v25 = v2[7];
  v24 = v2[8];
  v26 = v2[4];
  sub_1E325F6F0(v21, &qword_1ECF389E0);
  free(v21);
  free(v20);
  free(v22);
  free(v23);
  free(v24);
  free(v25);
  free(v26);

  free(v2);
}

uint64_t sub_1E3DADF70(uint64_t a1, uint64_t a2)
{
  v4 = _s13SessionTimingVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3DADFD4(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E3DAE024(a1, a2);
  return v4;
}

uint64_t sub_1E3DAE024(void *a1, uint64_t a2)
{
  v5 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  sub_1E41FE614();
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC8VideosUI34AutoDownloadsServiceRequestContext_requestID, v10, v5);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  *(v2 + OBJC_IVAR____TtC8VideosUI34AutoDownloadsServiceRequestContext_episodeCount) = a2;
  return v2;
}

uint64_t sub_1E3DAE148@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  strcpy((inited + 32), "episodeCount");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = *(v1 + OBJC_IVAR____TtC8VideosUI34AutoDownloadsServiceRequestContext_episodeCount);
  v4 = sub_1E4205CB4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389F0);
  a1[3] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_1E3DAE204()
{
  v1 = OBJC_IVAR____TtC8VideosUI34AutoDownloadsServiceRequestContext_requestID;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  MEMORY[0x1E69144A0](v0 + OBJC_IVAR____TtC8VideosUI34AutoDownloadsServiceRequestContext_appContext);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E3DAE2A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8VideosUI34AutoDownloadsServiceRequestContext_requestID;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 16);

  return v7(a1, v3 + v4, v5);
}

uint64_t sub_1E3DAE380(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E3DAE3D0(a1, a2);
  return v4;
}

uint64_t sub_1E3DAE3D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v3;
  v3[2] = 0;
  v3 += 2;
  v3[1] = 0;
  v12 = (v3 + 1);
  swift_beginAccess();
  *v3 = a1;
  sub_1E327F454(a2, &v55);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0);
  type metadata accessor for AutoDownloadsServiceRequestContext();
  if (swift_dynamicCast())
  {
    v13 = v54;
  }

  else
  {
    v13 = 0;
  }

  ViewModelKeys.rawValue.getter(13);
  sub_1E3277E60(v14, v15, a1, &v55);

  if (!v56)
  {
    sub_1E329505C(&v55);
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  v16 = MEMORY[0x1E69E7CA0];
  if ((OUTLINED_FUNCTION_5_171() & 1) == 0)
  {
LABEL_33:
    v37 = sub_1E324FBDC();
    (*(v8 + 16))(v11, v37, v6);

    v38 = sub_1E41FFC94();
    v39 = sub_1E42067F4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v51 = a2;
      v41 = v40;
      v42 = swift_slowAlloc();
      v54 = v13;
      *&v55 = v42;
      *v41 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389F8);
      v43 = sub_1E42070D4();
      v45 = sub_1E3270FC8(v43, v44, &v55);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1E323F000, v38, v39, "AudoDownloadsModelFragment:: Failed to create playables from JSON <%s>.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1E69143B0](v42, -1, -1);
      MEMORY[0x1E69143B0](v41, -1, -1);

      v46 = v51;
    }

    else
    {

      v46 = a2;
    }

    __swift_destroy_boxed_opaque_existential_1(v46);
    (*(v8 + 8))(v11, v6);
    return v52;
  }

  v51 = a2;
  v17 = v54;
  v54 = MEMORY[0x1E69E7CC0];
  v18 = *(v17 + 16);
  v49 = v17;
  if (!v18)
  {
    v50 = MEMORY[0x1E69E7CC0];
LABEL_38:

    __swift_destroy_boxed_opaque_existential_1(v51);
    swift_beginAccess();
    *v12 = v50;

    return v52;
  }

  v19 = (v17 + 32);
  v50 = MEMORY[0x1E69E7CC0];
  v20 = 0x6C50736F65646976;
  while (1)
  {
    v21 = *v19;
    if (*(*v19 + 16))
    {
      break;
    }

LABEL_27:
    ++v19;
    if (!--v18)
    {
      goto LABEL_38;
    }
  }

  v22 = sub_1E327D33C(v20, 0xEF73656C62617961);
  if ((v23 & 1) == 0 || (sub_1E328438C(*(v21 + 56) + 32 * v22, &v55), (OUTLINED_FUNCTION_5_171() & 1) == 0))
  {

    goto LABEL_27;
  }

  v24 = v20;
  v25 = v16;
  v26 = v53;
  if (!*(v21 + 16) || (v27 = sub_1E327D33C(0x4D746E65746E6F63, 0xEF61746164617465), (v28 & 1) == 0))
  {

    goto LABEL_24;
  }

  sub_1E328438C(*(v21 + 56) + 32 * v27, &v55);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:

LABEL_25:
    v16 = v25;
LABEL_26:
    v20 = v24;
    goto LABEL_27;
  }

  v48 = v13;
  v29 = v53;
  v47 = objc_opt_self();
  v30 = sub_1E388A824(v26);

  v31 = sub_1E3744600(v29);

  v32 = sub_1E388C154(v30, v31, v47);
  if (!v32)
  {
    v13 = v48;
    goto LABEL_25;
  }

  v33 = v32;
  result = sub_1E32AE9B0(v32);
  if (!result)
  {
    v16 = v25;

    v13 = v48;
    goto LABEL_26;
  }

  v13 = v48;
  if ((v33 & 0xC000000000000001) != 0)
  {
    v35 = MEMORY[0x1E6911E60](0, v33);
LABEL_19:
    v50 = v35;

    MEMORY[0x1E6910BF0](v36);
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E42062F4();
    }

    sub_1E4206324();
    v50 = v54;
    goto LABEL_25;
  }

  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = *(v33 + 32);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for AutoDownloadsServiceRequestContext()
{
  result = qword_1EE2918A0;
  if (!qword_1EE2918A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3DAE9A4()
{
  sub_1E39C35F0();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E3DAE9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E3DAE380(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E3DAEA08()
{
  result = sub_1E41FE624();
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

uint64_t sub_1E3DAEAD4()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    type metadata accessor for LeagueStandingsLegendLayout();
    v1 = sub_1E3A67A5C();
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E3DAEB3C()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    type metadata accessor for FlexibleGridCollectionLayout();
    v1 = sub_1E3822820();
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t sub_1E3DAEBA4()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    type metadata accessor for ButtonLayout();
    v1 = sub_1E3BBB724();
    *(v0 + 128) = v1;
  }

  return v1;
}

uint64_t sub_1E3DAEC40()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E3DAEC84();

  return v1;
}

uint64_t sub_1E3DAEC84()
{
  sub_1E3DAEF54();
  sub_1E3DAF01C();
  sub_1E3DAEE80();
  sub_1E3DAEDDC();
  OUTLINED_FUNCTION_36();
  v1 = (*(v0 + 1720))();
  sub_1E3C37CBC(v1, 138);

  OUTLINED_FUNCTION_36();
  v3 = (*(v2 + 1744))();
  sub_1E3C37CBC(v3, 259);

  OUTLINED_FUNCTION_36();
  v5 = (*(v4 + 1768))();
  sub_1E3C37CBC(v5, 124);

  OUTLINED_FUNCTION_36();
  v7 = (*(v6 + 1792))();
  sub_1E3C37CBC(v7, 59);
}

uint64_t sub_1E3DAEDDC()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1720))();
  v3[0] = xmmword_1E4296D00;
  v3[1] = xmmword_1E4296C70;
  v4 = 0;
  (*(*v1 + 184))(v3);
}

uint64_t sub_1E3DAEE80()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1792))();
  v2 = (*(*v1 + 2048))(v1);

  (*(*v2 + 1696))(3);
}

uint64_t sub_1E3DAEF54()
{
  [objc_opt_self() isIpadInterface];
  OUTLINED_FUNCTION_36();
  (*(v0 + 1744))();
  OUTLINED_FUNCTION_8();
  (*(v1 + 184))();
}

uint64_t sub_1E3DAF01C()
{
  OUTLINED_FUNCTION_8();
  v0 += 221;
  v1 = *v0;
  v2 = (*v0)();
  sub_1E39537A8();
  v26 = v3;
  v27 = v4;
  v28 = v5;
  v29 = v6;
  LOBYTE(v30) = 0;
  (*(*v2 + 560))(&v26);

  v8 = (v1)(v7);
  v21 = sub_1E3952C40();
  v22 = v9;
  v23 = v10;
  v24 = v11;
  LOBYTE(v25) = 0;
  (*(*v8 + 1736))(&v21);

  v12 = [objc_opt_self() isIpadInterface];
  v13 = v1();
  v14 = v13;
  if (v12)
  {
    (*(*v13 + 208))(0, 1);

    v16 = (v1)(v15);
    (*(*v16 + 312))(0x4083600000000000, 0);
  }

  else
  {
    sub_1E3A286D4();
    v17 = sub_1E41DA724();
    (*(*v14 + 208))(*&v17, 0);

    v19 = *(*(v1)(v18) + 312);
    v19(0, 1);
  }
}

uint64_t sub_1E3DAF2DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_1E3DAF318(uint64_t a1, char a2, void *a3)
{
  OUTLINED_FUNCTION_2_185();
  v8 = *v4;
  v9 = *(v4 + 8);
  *v4 = a1;
  *(v4 + 8) = a2 & 1;
  v10 = v3 + *a3;
  result = OUTLINED_FUNCTION_1_217();
  if (*(v10 + 8))
  {
    if (v9)
    {
      return result;
    }

LABEL_8:
    *(v3 + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_isDirty) = 1;
    return result;
  }

  if (*v10 == v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1E3DAF3BC(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_2_185();
  v8 = *v4;
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  v11 = v3 + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_size;
  result = OUTLINED_FUNCTION_1_217();
  if (*(v11 + 16))
  {
    if (v10)
    {
      return result;
    }

LABEL_9:
    *(v3 + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_isDirty) = 1;
    return result;
  }

  if (v10)
  {
    goto LABEL_9;
  }

  if (*v11 != v8 || *(v11 + 8) != v9)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_1E3DAF470()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_isDirty) == 1)
  {
    *(v0 + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_isDirty) = 0;
    sub_1E3DAF504();
    sub_1E4200514();
    sub_1E4200594();
  }
}

unint64_t sub_1E3DAF504()
{
  result = qword_1EE24D450;
  if (!qword_1EE24D450)
  {
    type metadata accessor for ViewRepresentableProperties();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE24D450);
  }

  return result;
}

uint64_t type metadata accessor for ViewRepresentableProperties()
{
  result = qword_1EE2940E0;
  if (!qword_1EE2940E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3DAF5DC()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_firstBaselineFromTop;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = v0 + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_bottomBaseline;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = v0 + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_size;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_isDirty) = 0;
  return sub_1E3B500B4();
}

uint64_t sub_1E3DAF62C()
{
  v0 = sub_1E3B4FF80();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3DAF768(char a1)
{
  OUTLINED_FUNCTION_5_16();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SeparatorDecorationView();
  objc_msgSendSuper2(&v9, sel_vui_layoutSubviews_computationOnly_, a1 & 1, v3, v2);
  OUTLINED_FUNCTION_18_3();
  if ((a1 & 1) == 0)
  {
    v5 = *&v1[OBJC_IVAR____TtC8VideosUI23SeparatorDecorationView_lineView];
    [v1 bounds];
    Height = CGRectGetHeight(v10);
    v7 = *&v1[OBJC_IVAR____TtC8VideosUI23SeparatorDecorationView_lineHeight];
    v8 = Height - v7;
    [v1 bounds];
    [v5 setFrame_];
  }

  OUTLINED_FUNCTION_17_4();
}

id sub_1E3DAF938(char a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_5_16();
  v15.receiver = v2;
  v15.super_class = type metadata accessor for LeadingSeparatorDecorationView();
  result = OUTLINED_FUNCTION_11_130(v15.super_class, sel_vui_layoutSubviews_computationOnly_, v4, v5, v6, v7, v8, v9, v13, v14, v15);
  if ((a1 & 1) == 0)
  {
    type metadata accessor for LayoutGrid();
    OUTLINED_FUNCTION_5_6();
    Width = CGRectGetWidth(v16);
    sub_1E3A258E4(Width);
    OUTLINED_FUNCTION_5_6();
    CGRectGetHeight(v17);
    OUTLINED_FUNCTION_5_6();
    CGRectGetWidth(v18);
    v12 = *&v2[OBJC_IVAR____TtC8VideosUI30LeadingSeparatorDecorationView_lineView];
    OUTLINED_FUNCTION_5_6();
    OUTLINED_FUNCTION_9_130();
    [v2 vuiIsRTL];
    OUTLINED_FUNCTION_12_120();
    return [v12 setFrame_];
  }

  return result;
}

char *sub_1E3DAFAB0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_0_8();
  v8 = *v7;
  *(v3 + v8) = [objc_allocWithZone(VUIBaseView) init];
  v9 = *a2;
  *(v3 + v9) = *sub_1E418BA90();
  v19 = a3();
  v10 = OUTLINED_FUNCTION_2_0();
  v13 = objc_msgSendSuper2(v11, v12, v10, v3, v19);
  v14 = *a1;
  v15 = *&v13[v14];
  v16 = v13;
  v17 = v15;
  [v17 setVuiBackgroundColor_];

  [v16 addSubview_];
  return v16;
}

void sub_1E3DAFC04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  *(v3 + v5) = [objc_allocWithZone(VUIBaseView) init];
  v6 = *a3;
  *(v3 + v6) = *sub_1E418BA90();
  sub_1E42076B4();
  __break(1u);
}

id sub_1E3DAFCC8(char a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_5_16();
  v15.receiver = v2;
  v15.super_class = type metadata accessor for InsettedSeparatorDecorationView();
  result = OUTLINED_FUNCTION_11_130(v15.super_class, sel_vui_layoutSubviews_computationOnly_, v4, v5, v6, v7, v8, v9, v13, v14, v15);
  if ((a1 & 1) == 0)
  {
    type metadata accessor for LayoutGrid();
    OUTLINED_FUNCTION_5_6();
    Width = CGRectGetWidth(v16);
    sub_1E3A258E4(Width);
    OUTLINED_FUNCTION_5_6();
    CGRectGetWidth(v17);
    OUTLINED_FUNCTION_5_6();
    CGRectGetHeight(v18);
    v12 = *&v2[OBJC_IVAR____TtC8VideosUI31InsettedSeparatorDecorationView_lineView];
    OUTLINED_FUNCTION_5_6();
    OUTLINED_FUNCTION_9_130();
    [v2 vuiIsRTL];
    OUTLINED_FUNCTION_12_120();
    return [v12 setFrame_];
  }

  return result;
}

id sub_1E3DAFE38(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E3DAFE7C()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    v1 = sub_1E3BBD964(3, v3 & 1, v4, v5 & 1);
    *(v2 + 152) = v1;
  }

  return v1;
}

void *sub_1E3DAFF3C()
{
  *(v0 + 152) = 0;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();
  sub_1E39537A8();
  sub_1E3C2D7EC();
  TVAppFeature.isEnabled.getter(1);

  sub_1E3C2CC78();

  v2 = sub_1E3E5FACC();
  v3 = *v2;
  sub_1E3C2DE50();
  v4 = *v2;
  sub_1E3C2E258();
  [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  sub_1E3C2D938();
  v5 = sub_1E3C2D8FC();
  if (v5)
  {
    v6 = v5;
    [v5 setShadowOffset_];
  }

  v7 = sub_1E3C2D8FC();
  if (v7)
  {
    v8 = v7;
    [v7 setShadowBlurRadius_];
  }

  v9 = sub_1E3C2D8FC();

  if (v9)
  {
    v10 = [objc_opt_self() blackColor];
    v11 = [v10 colorWithAlphaComponent_];

    [v9 setShadowColor_];
  }

  v12 = sub_1E374E9C4();
  v13 = sub_1E418A524();
  (*(*v12 + 440))(*v13, 0);

  OUTLINED_FUNCTION_36();
  v15 = *(v14 + 1808);

  v15(3);

  OUTLINED_FUNCTION_36();
  v17 = (v16 + 2000);
  v18 = *(v16 + 2000);

  v18(0);

  sub_1E37BD0DC();
  OUTLINED_FUNCTION_2_1();
  (*(v19 + 1808))(1);

  v20 = v1[14];
  objc_opt_self();
  OUTLINED_FUNCTION_11_5();

  if ([v17 isTV])
  {
    v21 = sub_1E418A518();
  }

  else
  {
    v21 = sub_1E418A4F4();
  }

  (*(*v20 + 440))(*v21, 0);

  v22 = v1[14];

  sub_1E39537A8();
  v113[0] = v23;
  v113[1] = v24;
  v113[2] = v25;
  v113[3] = v26;
  v114 = 0;
  (*(*v22 + 560))(v113);

  v27 = sub_1E374EA94();
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_7_16();
  v28 = *(*v27 + 680);
  v29 = v17;
  v28(v17);

  OUTLINED_FUNCTION_2_186();
  v31 = *(v30 + 2008);

  v31(1);

  OUTLINED_FUNCTION_2_186();
  v33 = *(v32 + 1792);

  v33(10);

  OUTLINED_FUNCTION_2_186();
  v35 = *(v34 + 1696);

  v35(17);

  OUTLINED_FUNCTION_2_186();
  v37 = *(v36 + 2128);

  v37(0x3FE6666666666666, 0);

  OUTLINED_FUNCTION_2_186();
  v39 = *(v38 + 2056);

  v40 = OUTLINED_FUNCTION_8_5();
  v39(v40);

  OUTLINED_FUNCTION_2_186();
  v42 = *(v41 + 2080);

  v43 = OUTLINED_FUNCTION_8_5();
  v42(v43);

  OUTLINED_FUNCTION_2_186();
  v45 = *(v44 + 2104);

  v45(0, 0);

  v46 = [objc_opt_self() isSUIEnabled];

  sub_1E3952C88();
  OUTLINED_FUNCTION_1_219();
  (*(v47 + 160))();

  sub_1E374EAFC();
  OUTLINED_FUNCTION_2_1();
  (*(v48 + 2008))(1);

  v49 = v1[16];

  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v50 = *(*v49 + 680);
  v51 = v46;
  v50(v46);

  TVAppFeature.isEnabled.getter(1);

  sub_1E3952C88();
  OUTLINED_FUNCTION_1_219();
  (*(v52 + 160))();

  OUTLINED_FUNCTION_36();
  v54 = *(v53 + 1696);

  v54(19);

  OUTLINED_FUNCTION_36();
  v56 = *(v55 + 2056);

  v57 = OUTLINED_FUNCTION_8_5();
  v56(v57);

  OUTLINED_FUNCTION_36();
  v59 = *(v58 + 2080);

  v60 = OUTLINED_FUNCTION_8_5();
  v59(v60);

  OUTLINED_FUNCTION_36();
  v62 = (v61 + 2104);
  v63 = *(v61 + 2104);

  v64 = OUTLINED_FUNCTION_8_5();
  v63(v64);

  v65 = sub_1E374EB64();
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v66 = *(*v65 + 680);
  v67 = v62;
  v66(v62);

  OUTLINED_FUNCTION_36();
  v69 = *(v68 + 2056);

  v70 = OUTLINED_FUNCTION_8_5();
  v69(v70);

  OUTLINED_FUNCTION_36();
  v72 = *(v71 + 1696);

  v72(19);

  TVAppFeature.isEnabled.getter(1);

  sub_1E3952C88();
  OUTLINED_FUNCTION_1_219();
  (*(v73 + 160))();

  OUTLINED_FUNCTION_36();
  v75 = *(v74 + 2128);

  v75(0x3FE6666666666666, 0);

  sub_1E374EBCC();
  OUTLINED_FUNCTION_2_1();
  (*(v76 + 1984))(1);

  OUTLINED_FUNCTION_36();
  v78 = (v77 + 2056);
  v79 = *(v77 + 2056);

  v80 = OUTLINED_FUNCTION_8_5();
  v79(v80);

  v81 = v1[18];

  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v82 = *(*v81 + 680);
  v83 = v78;
  v82(v78);

  OUTLINED_FUNCTION_36();
  v85 = *(v84 + 1696);

  v85(21);

  v86 = [objc_opt_self() isSUIEnabled];

  sub_1E3952C88();
  OUTLINED_FUNCTION_1_219();
  (*(v87 + 160))();

  sub_1E3DAFE7C();
  OUTLINED_FUNCTION_2_1();
  (*(v88 + 2048))();
  OUTLINED_FUNCTION_11_5();

  sub_1E374EAFC();
  OUTLINED_FUNCTION_2_1();
  v90 = (*(v89 + 1688))();

  (*(*v86 + 1696))(v90);

  OUTLINED_FUNCTION_36();
  v92 = v91 + 2048;
  v93 = *(v91 + 2048);

  v93(v94);
  OUTLINED_FUNCTION_11_5();

  v95 = *(*v1[16] + 152);

  v95(v113, v96);

  (*(*v92 + 160))(v113);

  sub_1E374EA94();
  OUTLINED_FUNCTION_2_1();
  (*(v97 + 1720))(10);

  OUTLINED_FUNCTION_36();
  v99 = *(v98 + 1720);

  v99(10);

  sub_1E374EB64();
  OUTLINED_FUNCTION_2_1();
  (*(v100 + 1720))(10);

  OUTLINED_FUNCTION_36();
  v102 = v101 + 2048;
  v103 = *(v101 + 2048);

  v103(v104);
  OUTLINED_FUNCTION_11_5();

  (*(*v102 + 1720))(10);

  sub_1E3C37CBC(v105, 23);

  sub_1E3C37CBC(v106, 15);

  sub_1E3C37CBC(v107, 17);

  v108 = sub_1E374EBCC();
  sub_1E3C37CBC(v108, 14);

  v109 = sub_1E374E9C4();
  sub_1E3C37CBC(v109, 39);

  v110 = sub_1E37BD0DC();
  sub_1E3C37CBC(v110, 32);

  sub_1E3C37CBC(v111, 60);

  return v1;
}

id sub_1E3DB0F14(uint64_t *a1)
{
  v1 = *a1;
  if (TVAppFeature.isEnabled.getter(10))
  {
    v2 = 8;
  }

  else
  {
    v2 = 3;
  }

  (*(*v1 + 992))(v2, 0);
  result = [objc_opt_self() isTV];
  if (result)
  {
    OUTLINED_FUNCTION_8();
    return (*(v4 + 488))(1);
  }

  return result;
}

uint64_t sub_1E3DB0FC4()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ViewLayout();
    sub_1E3C2F968();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_2_187(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    v1 = v14;
    *(v2 + 112) = v14;
  }

  return v1;
}

id sub_1E3DB1058()
{
  OUTLINED_FUNCTION_44_47();
  __dst[0] = 22;
  LOBYTE(__dst[1]) = 0;
  *&v35[0] = 3;
  BYTE8(v35[0]) = 0;
  type metadata accessor for VUIGridStyle(0);
  v3 = v2;
  sub_1E3C2FC98();
  v50 = v55;
  LOBYTE(v51) = v56;
  sub_1E3C3DE00(v3);
  *&v42 = v45;
  BYTE8(v42) = v46;
  sub_1E3C3DE00(v3);
  v4 = OUTLINED_FUNCTION_20_92();
  sub_1E3C3DE00(v4);
  OUTLINED_FUNCTION_41_54();
  sub_1E3C2FCB8(__dst, __src);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_0();
  v6 = *(v5 + 1600);
  OUTLINED_FUNCTION_198();
  v6();
  v7 = *(v1 + 192);
  if (v7 != 8)
  {
    __src[0] = *(v1 + 192);
    LOBYTE(__dst[0]) = 1;
    sub_1E3DB52D4();
    if ((OUTLINED_FUNCTION_55_38() & 1) == 0)
    {
      __src[0] = v7;
      LOBYTE(__dst[0]) = 2;
      OUTLINED_FUNCTION_55_38();
    }
  }

  sub_1E3952C58();
  OUTLINED_FUNCTION_7_11(v8, v9, v10, v11);
  sub_1E3952C58();
  v50 = v12;
  v51 = v13;
  v52 = v14;
  v53 = v15;
  v54 = 0;
  sub_1E3952C94();
  v45 = v16;
  v46 = v17;
  v47 = v18;
  v48 = v19;
  v49 = 0;
  sub_1E3952C58();
  __dst[0] = v20;
  __dst[1] = v21;
  __dst[2] = v22;
  __dst[3] = v23;
  LOBYTE(__dst[4]) = 0;
  OUTLINED_FUNCTION_15_112();
  sub_1E3C2FC98();
  v42 = v35[0];
  v43 = v35[1];
  v44 = v35[2];
  sub_1E3C3DE00(v3);
  v37[0] = v39;
  v37[1] = v40;
  v38 = v41;
  sub_1E3C2FCB8(&v55, __src);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_198();
  v6();
  *&v42 = 0x4010000000000000;
  BYTE8(v42) = 0;
  v24 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  OUTLINED_FUNCTION_20_92();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_41_54();
  sub_1E3C3DE00(v24);
  OUTLINED_FUNCTION_84();
  sub_1E3C3DE00(v24);
  OUTLINED_FUNCTION_42_0();
  sub_1E3C2FCB8(v37, __dst);
  memcpy(v35, __dst, 0x59uLL);
  v25 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_17_8(v25, v26, v27, v28, v29, v30, v31, v32, *&v35[0]);
  OUTLINED_FUNCTION_198();
  v6();
  result = [objc_opt_self() isTV];
  if (result)
  {
    (*(*v0 + 464))(1);
    OUTLINED_FUNCTION_111();
    return (*(v34 + 488))(1);
  }

  return result;
}

uint64_t sub_1E3DB1420()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_2_187(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    v1 = v14;
    *(v2 + 128) = v14;
  }

  return v1;
}

uint64_t sub_1E3DB14B4(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = objc_opt_self();
  [v4 isTV];
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    v7 = 14;
  }

  else
  {
    v7 = 7;
  }

  (*(v5 + 1696))(v7);
  [v4 isTV];
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    v10 = 7;
  }

  else
  {
    v10 = 11;
  }

  (*(v8 + 1792))(v10);
  v11 = *sub_1E3E5FD88();
  v12 = *(*v3 + 680);
  v13 = v11;
  v14 = OUTLINED_FUNCTION_8_10();
  v12(v14);
  OUTLINED_FUNCTION_9_2();
  (*(v15 + 1984))(1);
  OUTLINED_FUNCTION_9_2();
  v17 = (*(v16 + 256))(0x7FF0000000000000, 0);
  if ((*(*v2 + 2056))(v17))
  {
    v18 = 0;
    v19 = 36.0;
  }

  else
  {
    v20 = (*(*v2 + 1152))();
    v19 = OUTLINED_FUNCTION_39_49(v20, v21);
    v18 = 0x4030000000000000;
  }

  *v68 = v18;
  *&v68[8] = v18;
  *&v68[16] = v19;
  *&v68[24] = v18;
  v68[32] = 0;
  v22 = (*v2 + 1152);
  v23 = *v22;
  v24 = (*v22)();
  sub_1E4149E0C(v24, v25 & 1, 8.0);
  v26 = v23();
  sub_1E4149E0C(v26, v27 & 1, 16.0);
  sub_1E3952C58();
  OUTLINED_FUNCTION_7_11(v28, v29, v30, v31);
  OUTLINED_FUNCTION_15_112();
  sub_1E3C3DE00(v32);
  OUTLINED_FUNCTION_7_33();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_11_7(v33, v34, v35, v36, v37, v38, v39, v40, *v68, *&v68[8], *&v68[16], *&v68[24], *&v68[32], *&v68[40], *&v68[48], *&v68[56], *&v68[64], *&v68[72], *&v68[80], *&v68[88], *&v68[96], *&v68[104], *&v68[112], *&v68[120], *&v68[128], *&v68[136], *&v68[144], *&v68[152], *&v68[160], *&v68[168], *&v68[176], *&v68[184], *&v68[192], *&v68[200], *&v68[208], *&v68[216], *&v68[224], *&v68[232], *&v69, *&v70, *&v71, *&v72, *&v73, *&v74, *&v75, *(&v75 + 1), *&v76, *&v77, *&v78, *&v79, *&v80, *&v81, *&v82, *&v83, *&v84, *&v85, *&v86, *(&v86 + 1), v87, v88, v89, v90, v91[0]);
  v41 = sub_1E3C3DE00(v2);
  OUTLINED_FUNCTION_4_190(v41, v42, v43, v44, v45, v46, v47, v48, *v68, *&v68[8], *&v68[16], *&v68[24], *&v68[32], *&v68[40], *&v68[48], *&v68[56], *&v68[64], *&v68[72], *&v68[80], *&v68[88], *&v68[96], *&v68[104], *&v68[112], *&v68[120], *&v68[128], *&v68[136], *&v68[144], *&v68[152], *&v68[160], *&v68[168], *&v68[176], *&v68[184], *&v68[192], *&v68[200], *&v68[208], *&v68[216], *&v68[224], *&v68[232], v69, v70, v71, v72, v73, v74, v75, *(&v75 + 1), v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
  v49 = sub_1E3C3DE00(v2);
  OUTLINED_FUNCTION_107(v49, v50, v51, v52, v53, v54, v55, v56, *v68, *&v68[8], *&v68[16], *&v68[24], *&v68[32], *&v68[40], *&v68[48], *&v68[56], *&v68[64], *&v68[72], *&v68[80], *&v68[88], *&v68[96], *&v68[104], *&v68[112], *&v68[120], *&v68[128], *&v68[136], *&v68[144], *&v68[152], *&v68[160], *&v68[168], *&v68[176], *&v68[184], *&v68[192], *&v68[200], *&v68[208], *&v68[216], *&v68[224], *&v68[232], v69, v70, v71, v72, v73, v74, v75);
  sub_1E3C2FCB8(v92, __src);
  memcpy(v68, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_0();
  v65 = OUTLINED_FUNCTION_5_172(v57, v58, v59, v60, v61, v62, v63, v64, *v68);
  v66(v65);
  [v4 isMac];
  return (*(*v3 + 2056))();
}

uint64_t sub_1E3DB1868()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    j__OUTLINED_FUNCTION_18();
    sub_1E3B050E8();
    v3 = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14_21(v3);
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_2_187(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);

    v1 = v15;
    *(v2 + 136) = v15;
  }

  return v1;
}

uint64_t sub_1E3DB1910()
{
  OUTLINED_FUNCTION_44_47();
  OUTLINED_FUNCTION_111();
  v2 = OUTLINED_FUNCTION_16_112();
  v3(v2);
  if (sub_1E39DFFC8() & 1) != 0 || (TVAppFeature.isEnabled.getter(10))
  {
    (*(*v0 + 1888))(0);
  }

  v4 = objc_opt_self();
  [v4 isTV];
  v88[0] = sub_1E3952C40();
  v88[1] = v5;
  v88[2] = v6;
  v88[3] = v7;
  v89 = 0;
  OUTLINED_FUNCTION_111();
  (*(v8 + 184))(v88);
  OUTLINED_FUNCTION_30_67();
  v83 = v9;
  LOBYTE(v84) = 0;
  *&v81[0] = 0x4046800000000000;
  BYTE8(v81[0]) = 0;
  v10 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  v76 = v78;
  v77 = v79;
  sub_1E3C3DE00(v10);
  v72 = v74;
  v73 = v75;
  sub_1E3C3DE00(v10);
  OUTLINED_FUNCTION_18_96();
  sub_1E3C2FCB8(v11, v12);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_198();
  v13();
  OUTLINED_FUNCTION_9_2();
  (*(v14 + 1280))(0x4034000000000000, 0);
  if ((sub_1E39DFFC8() & 1) == 0 && (TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    v15 = [v4 isTV];
    v16.n128_u64[0] = 14.0;
    if (v15)
    {
      v16.n128_f64[0] = 16.0;
    }

    __src[0] = j__OUTLINED_FUNCTION_7_78(v16);
    __src[1] = v17;
    __src[2] = v18;
    __src[3] = v19;
    LOBYTE(__src[4]) = 0;
    (*(*v0 + 560))(__src);
  }

  if ([v4 isTV])
  {
    (*(*v0 + 752))(0);
  }

  else if ([v4 isPhone] && ((*(*v1 + 2056))() & 1) != 0)
  {
    sub_1E3755B54();
    v20 = [objc_opt_self() whiteColor];
    v21 = [v20 colorWithAlphaComponent_];

    v22 = *sub_1E3E604E4();
    sub_1E3E5F2F8(v21, v22);

    OUTLINED_FUNCTION_9_2();
    v23 = OUTLINED_FUNCTION_8_10();
    v24(v23);
  }

  else
  {
    v25 = *sub_1E3E604E4();
    OUTLINED_FUNCTION_111();
    v27 = *(v26 + 752);
    v28 = v25;
    v29 = OUTLINED_FUNCTION_8_10();
    v27(v29);
  }

  v68 = v4;
  OUTLINED_FUNCTION_47_0();
  v30 += 257;
  v31 = *v30;
  if (((*v30)() & 1) == 0)
  {
    v32 = (*(*v1 + 1152))(8.0);
    sub_1E4149E0C(v32, v33 & 1, 12.0);
  }

  sub_1E3952C94();
  __dst[0] = v34;
  __dst[1] = v35;
  __dst[2] = v36;
  __dst[3] = v37;
  LOBYTE(__dst[4]) = 0;
  OUTLINED_FUNCTION_111();
  (*(v38 + 160))(__dst);
  OUTLINED_FUNCTION_9_2();
  v40 = *(v39 + 2096);
  v41 = v40();
  LOBYTE(v81[0]) = 7;
  if (v31())
  {
    v42 = 15;
  }

  else
  {
    v42 = 7;
  }

  LOBYTE(v78) = v42;
  if (v31())
  {
    v43 = 15;
  }

  else
  {
    v43 = 7;
  }

  LOBYTE(v76) = v43;
  LOBYTE(v74) = 15;
  LOBYTE(v72) = 15;
  sub_1E3C3DE00(&qword_1F5D549D8);
  v70 = v71;
  sub_1E3C2FCB8(v81, &v83);
  LODWORD(v81[0]) = LODWORD(v83);
  WORD2(v81[0]) = WORD2(v83);
  v44 = OUTLINED_FUNCTION_18();
  (*(*v41 + 1600))(v81, 96, v44 & 1, &qword_1F5D549D8);

  v46 = (v40)(v45);
  if (v31())
  {
    v47 = sub_1E3E5FD88();
  }

  else
  {
    v47 = sub_1E3E60700();
  }

  v48 = *v47;
  v49 = *(*v46 + 680);
  v50 = *v47;
  v49(v48);

  v52 = (v40)(v51);
  if ((v31() & 1) == 0)
  {
    [v68 isTV];
  }

  v83 = sub_1E3952CA4();
  v84 = v53;
  v85 = v54;
  v86 = v55;
  v87 = 0;
  (*(*v52 + 160))(&v83);

  OUTLINED_FUNCTION_9_2();
  v57 = *(v56 + 2048);
  v57();
  v40();
  OUTLINED_FUNCTION_2_1();
  v59 = (*(v58 + 2064))();

  OUTLINED_FUNCTION_13();
  (*(v60 + 1696))(v59);

  (v57)(v61);
  v40();
  OUTLINED_FUNCTION_2_1();
  v63 = (*(v62 + 672))();

  OUTLINED_FUNCTION_13();
  (*(v64 + 680))(v63);

  v66 = (v57)(v65);
  memset(v81, 0, sizeof(v81));
  v82 = 1;
  (*(*v66 + 160))(v81);
}

uint64_t sub_1E3DB21F4()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    sub_1E3BBD964(3, v3 & 1, v4, v5 & 1);
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_2_187(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    v1 = v17;
    *(v2 + 144) = v17;
  }

  return v1;
}

void sub_1E3DB22AC()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = *v2;
  OUTLINED_FUNCTION_111();
  v4 = OUTLINED_FUNCTION_16_112();
  v5(v4);
  OUTLINED_FUNCTION_9_2();
  (*(v6 + 312))(0, 1);
  if (sub_1E39DFFC8() & 1) != 0 || (TVAppFeature.isEnabled.getter(10))
  {
    (*(*v3 + 1888))(0);
  }

  v7 = objc_opt_self();
  [v7 isTV];
  v75[0] = sub_1E3952C40();
  v75[1] = v8;
  v75[2] = v9;
  v75[3] = v10;
  v76 = 0;
  OUTLINED_FUNCTION_111();
  (*(v11 + 184))(v75);
  OUTLINED_FUNCTION_30_67();
  v70 = v12;
  LOBYTE(v71) = 0;
  v68[0] = 0x4046800000000000;
  LOBYTE(v68[1]) = 0;
  v13 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  v63 = v65;
  v64 = v66;
  sub_1E3C3DE00(v13);
  v59 = v61;
  v60 = v62;
  sub_1E3C3DE00(v13);
  OUTLINED_FUNCTION_18_96();
  sub_1E3C2FCB8(v14, v15);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_198();
  v16();
  OUTLINED_FUNCTION_9_2();
  (*(v17 + 1280))(0x4034000000000000, 0);
  v18 = sub_1E39DFFC8();
  if ((v18 & 1) == 0)
  {
    v18 = TVAppFeature.isEnabled.getter(10);
    if ((v18 & 1) == 0)
    {
      v19 = [v7 isTV];
      v20.n128_u64[0] = 14.0;
      if (v19)
      {
        v20.n128_f64[0] = 16.0;
      }

      __src[0] = j__OUTLINED_FUNCTION_7_78(v20);
      __src[1] = v21;
      __src[2] = v22;
      __src[3] = v23;
      LOBYTE(__src[4]) = 0;
      v18 = (*(*v3 + 560))(__src);
    }
  }

  v24 = (*(*v1 + 1152))(v18);
  sub_1E4149E0C(v24, v25 & 1, 12.0);
  sub_1E3952C94();
  __dst[0] = v26;
  __dst[1] = v27;
  __dst[2] = v28;
  __dst[3] = v29;
  LOBYTE(__dst[4]) = 0;
  OUTLINED_FUNCTION_111();
  (*(v30 + 160))(__dst);
  OUTLINED_FUNCTION_9_2();
  v32 = *(v31 + 2096);
  v32();
  LOBYTE(v68[0]) = 7;
  LOBYTE(v65) = 15;
  LOBYTE(v63) = 15;
  sub_1E3C2FC98();
  LOBYTE(v59) = v61;
  sub_1E3C3DE00(&qword_1F5D549D8);
  v57 = v58;
  sub_1E3C3DE00(&qword_1F5D549D8);
  sub_1E3C2FCB8(v68, &v70);
  LODWORD(v68[0]) = LODWORD(v70);
  WORD2(v68[0]) = WORD2(v70);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v33 + 1600))(v68, 96, v34 & 1, &qword_1F5D549D8);

  v36 = (v32)(v35);
  v37 = *sub_1E3E60700();
  v38 = *(*v36 + 680);
  v39 = v37;
  v38(v37);

  v41 = (v32)(v40);
  if (([v7 &selRef_isAudioOnly] & 1) == 0 && v1[192] != 8)
  {
    LOBYTE(v70) = v1[192];
    LOBYTE(v68[0]) = 6;
    sub_1E3DB52D4();
    sub_1E4205E84();
  }

  v70 = sub_1E3952CA4();
  v71 = v42;
  v72 = v43;
  v73 = v44;
  v74 = 0;
  (*(*v41 + 160))(&v70);

  OUTLINED_FUNCTION_9_2();
  v46 = *(v45 + 2048);
  v46();
  v32();
  OUTLINED_FUNCTION_2_1();
  v48 = (*(v47 + 2064))();

  OUTLINED_FUNCTION_13();
  (*(v49 + 1696))(v48);

  (v46)(v50);
  v32();
  OUTLINED_FUNCTION_2_1();
  v52 = (*(v51 + 672))();

  OUTLINED_FUNCTION_13();
  (*(v53 + 680))(v52);

  v55 = (v46)(v54);
  memset(v68, 0, sizeof(v68));
  v69 = 1;
  (*(*v55 + 160))(v68);

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3DB2A10()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_2_187(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    v1 = v14;
    *(v2 + 152) = v14;
  }

  return v1;
}

void sub_1E3DB2AA4()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_44_47();
  v131[0] = 19;
  LOBYTE(v159[0]) = 19;
  v157[0] = 19;
  OUTLINED_FUNCTION_8();
  v2 += 257;
  v3 = *v2;
  if ((*v2)())
  {
    v4 = 22;
  }

  else
  {
    v4 = 21;
  }

  LOBYTE(v152) = v4;
  if (v3())
  {
    v5 = 17;
  }

  else
  {
    v5 = 14;
  }

  LOBYTE(v149) = v5;
  v6 = sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v142) = v146;
  v14 = OUTLINED_FUNCTION_46_47(v6, v7, v8, v9, v10, v11, v12, v13, *v131);
  sub_1E3C2FCB8(v14, v15);
  OUTLINED_FUNCTION_36_55();
  OUTLINED_FUNCTION_59_0();
  v17 = *(v16 + 1600);
  OUTLINED_FUNCTION_198();
  v17();
  v131[0] = 10;
  LOBYTE(v159[0]) = 7;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v152) = v157[0];
  sub_1E3C2FC98();
  LOBYTE(v146) = v149;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v138) = v142;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  __src[239] = v132;
  sub_1E3C2FCB8(&v152, __src);
  v18 = OUTLINED_FUNCTION_36_55();
  OUTLINED_FUNCTION_17_8(v18, v19, v20, v21, v22, v23, v24, v25, *v131);
  OUTLINED_FUNCTION_198();
  v26 = (v17)();
  if ((v3)(v26))
  {
    *v131 = *MEMORY[0x1E69DDCE0];
    sub_1E3952C94();
    v159[0] = v27;
    v159[1] = v28;
    v160 = v29;
    v161 = v30;
    v162 = 0;
    sub_1E3952C94();
    OUTLINED_FUNCTION_10_12(v31, v32, v33, v34);
    sub_1E3952C58();
    v152 = v35;
    v153 = v36;
    v154 = v37;
    v155 = v38;
    v156 = 0;
    OUTLINED_FUNCTION_15_112();
    sub_1E3C3DE00(v39);
    v146 = v149;
    v147 = v150;
    v148 = v151;
    v40 = sub_1E3C3DE00(v1);
    v138 = v142;
    v139 = v143;
    LOBYTE(v140) = v144;
    v48 = OUTLINED_FUNCTION_46_47(v40, v41, v42, v43, v44, v45, v46, v47, *v131);
    sub_1E3C2FCB8(v48, v49);
    memcpy(v131, __src, 0xE9uLL);
    v50 = OUTLINED_FUNCTION_18();
    v58 = OUTLINED_FUNCTION_5_172(v50, v51, v52, v53, v54, v55, v56, v57, *v131);
    (v17)(v58);
    v59 = objc_opt_self();
    if ([v59 isTV])
    {
      OUTLINED_FUNCTION_111();
      (*(v60 + 704))(1);
    }

    else if ([v59 isPhone])
    {
      sub_1E3755B54();
      v122 = [objc_opt_self() blackColor];
      v123 = *sub_1E3E5FDEC();
      sub_1E3E5F2F8(v122, v123);

      OUTLINED_FUNCTION_9_2();
      v124 = OUTLINED_FUNCTION_8_10();
      v125(v124);
    }

    else
    {
      v126 = *sub_1E3E5FDEC();
      OUTLINED_FUNCTION_111();
      v128 = *(v127 + 680);
      v129 = v126;
      v130 = OUTLINED_FUNCTION_8_10();
      v128(v130);
    }
  }

  else
  {
    v61 = 0.0;
    if ((sub_1E39DFFC8() & 1) == 0)
    {
      OUTLINED_FUNCTION_47_0();
      v63 = (*(v62 + 1152))();
      v65 = OUTLINED_FUNCTION_39_49(v63, v64);
      OUTLINED_FUNCTION_13();
      v67 = (*(v66 + 1880))();
      (*(*v67 + 152))(v159);

      if (v162)
      {
        v68 = 0;
      }

      else
      {
        v68 = v160;
      }

      sub_1E4149E0C(v68, v162 & 1, v65);
    }

    sub_1E3952C88();
    OUTLINED_FUNCTION_10_12(v69, v70, v71, v72);
    if ((sub_1E39DFFC8() & 1) == 0)
    {
      OUTLINED_FUNCTION_47_0();
      v74 = (*(v73 + 1152))();
      v61 = sub_1E4149E0C(v74, v75 & 1, 60.0);
    }

    OUTLINED_FUNCTION_47_0();
    v76 += 144;
    v77 = *v76;
    v78 = (*v76)();
    v80 = sub_1E4149E0C(v78, v79 & 1, 22.0);
    v152 = v61;
    v153 = 0x4030000000000000;
    v154 = v80;
    v155 = 0x4030000000000000;
    v156 = 0;
    if ((sub_1E39DFFC8() & 1) == 0)
    {
      v81 = v77();
      OUTLINED_FUNCTION_39_49(v81, v82);
    }

    v83 = v77();
    sub_1E4149E0C(v83, v84 & 1, 4.0);
    sub_1E3952C58();
    *v131 = v85;
    *&v131[8] = v86;
    *&v131[16] = v87;
    *&v131[24] = v88;
    v131[32] = 0;
    v89 = *(MEMORY[0x1E69DDCE0] + 16);
    v149 = *MEMORY[0x1E69DDCE0];
    v150 = v89;
    v151 = 0;
    OUTLINED_FUNCTION_15_112();
    v90 = sub_1E3C2FC98();
    OUTLINED_FUNCTION_4_190(v90, v91, v92, v93, v94, v95, v96, v97, *v131, *&v131[8], *&v131[16], *&v131[24], *&v131[32], *&v131[40], *&v131[48], *&v131[56], *&v131[64], *&v131[72], *&v131[80], *&v131[88], *&v131[96], *&v131[104], *&v131[112], *&v131[120], *&v131[128], *&v131[136], *&v131[144], *&v131[152], *&v131[160], *&v131[168], *&v131[176], *&v131[184], *&v131[192], *&v131[200], *&v131[208], *&v131[216], *&v131[224], *&v131[232], v132, v133, v134, v135, v136, v137, v138, *(&v138 + 1), v139, *(&v139 + 1), v140, v141, v142, *(&v142 + 1), v143, *(&v143 + 1), v144, v145, v146);
    v98 = sub_1E3C3DE00(v1);
    OUTLINED_FUNCTION_107(v98, v99, v100, v101, v102, v103, v104, v105, *v131, *&v131[8], *&v131[16], *&v131[24], *&v131[32], *&v131[40], *&v131[48], *&v131[56], *&v131[64], *&v131[72], *&v131[80], *&v131[88], *&v131[96], *&v131[104], *&v131[112], *&v131[120], *&v131[128], *&v131[136], *&v131[144], *&v131[152], *&v131[160], *&v131[168], *&v131[176], *&v131[184], *&v131[192], *&v131[200], *&v131[208], *&v131[216], *&v131[224], *&v131[232], v132, v133, v134, v135, v136, v137, v138);
    sub_1E3C2FCB8(v157, __src);
    memcpy(v131, __src, 0xE9uLL);
    v106 = OUTLINED_FUNCTION_18();
    v114 = OUTLINED_FUNCTION_5_172(v106, v107, v108, v109, v110, v111, v112, v113, *v131);
    (v17)(v114);
    v115 = *sub_1E3E5FDEC();
    v116 = *(*v0 + 680);
    v117 = v115;
    v118 = OUTLINED_FUNCTION_8_10();
    v116(v118);
  }

  v119 = OUTLINED_FUNCTION_16_112();
  v120(v119);
  v121 = 5;
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    if ([objc_opt_self() isTV])
    {
      v121 = 1;
    }

    else
    {
      v121 = 5;
    }
  }

  (*(*v0 + 1984))(v121);
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3DB318C()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ViewLayout();
    sub_1E3C2F968();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_2_187(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    v1 = v14;
    *(v2 + 168) = v14;
  }

  return v1;
}

uint64_t sub_1E3DB3220(uint64_t *a1)
{
  OUTLINED_FUNCTION_8();
  v4 = (*(v3 + 2056))();
  v5 = *a1;
  if (v4)
  {
    sub_1E3952C58();
    *v64 = v6;
    *&v64[8] = v7;
    *&v64[16] = v8;
    *&v64[24] = v9;
    v64[32] = 0;
    sub_1E3952C58();
    v93 = v10;
    v94 = v11;
    v95 = v12;
    v96 = v13;
    v97 = 0;
    sub_1E3952C58();
    v88 = v14;
    v89 = v15;
    v90 = v16;
    v91 = v17;
    v92 = 0;
    sub_1E3952C58();
    v83 = v18;
    v84 = v19;
    v85 = v20;
    v86 = v21;
    v87 = 0;
    OUTLINED_FUNCTION_15_112();
    v23 = sub_1E3C3DE00(v22);
    OUTLINED_FUNCTION_4_190(v23, v24, v25, v26, v27, v28, v29, v30, *v64, *&v64[8], *&v64[16], *&v64[24], *&v64[32], *&v64[40], *&v64[48], *&v64[56], *&v64[64], *&v64[72], *&v64[80], *&v64[88], *&v64[96], *&v64[104], *&v64[112], *&v64[120], *&v64[128], *&v64[136], *&v64[144], *&v64[152], *&v64[160], *&v64[168], *&v64[176], *&v64[184], *&v64[192], *&v64[200], *&v64[208], *&v64[216], *&v64[224], *&v64[232], v65, v66, v67, v68, v69, v70, v71, *(&v71 + 1), v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
    v31 = sub_1E3C3DE00(v1);
    OUTLINED_FUNCTION_107(v31, v32, v33, v34, v35, v36, v37, v38, *v64, *&v64[8], *&v64[16], *&v64[24], *&v64[32], *&v64[40], *&v64[48], *&v64[56], *&v64[64], *&v64[72], *&v64[80], *&v64[88], *&v64[96], *&v64[104], *&v64[112], *&v64[120], *&v64[128], *&v64[136], *&v64[144], *&v64[152], *&v64[160], *&v64[168], *&v64[176], *&v64[184], *&v64[192], *&v64[200], *&v64[208], *&v64[216], *&v64[224], *&v64[232], v65, v66, v67, v68, v69, v70, v71);
    sub_1E3C2FCB8(v64, __src);
    memcpy(v64, __src, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_59_0();
    v47 = OUTLINED_FUNCTION_5_172(v39, v40, v41, v42, v43, v44, v45, v46, *v64);
    v48(v47);
  }

  else
  {
    v49 = sub_1E39DFFC8();
    OUTLINED_FUNCTION_8();
    v51 = (*(v50 + 1152))();
    v53 = 32.0;
    if ((v49 & 1) == 0)
    {
      v53 = 16.0;
    }

    sub_1E4149E0C(v51, v52 & 1, v53);
    OUTLINED_FUNCTION_36();
    v55 = (*(v54 + 1152))();
    sub_1E4149E0C(v55, v56 & 1, 16.0);
    sub_1E3952C58();
    __src[0] = v57;
    __src[1] = v58;
    __src[2] = v59;
    __src[3] = v60;
    LOBYTE(__src[4]) = 0;
    (*(*v5 + 160))(__src);
  }

  v61 = OUTLINED_FUNCTION_16_112();
  return v62(v61);
}

uint64_t sub_1E3DB34A0()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ViewLayout();
    sub_1E3C2F968();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_2_187(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    v1 = v14;
    *(v2 + 176) = v14;
  }

  return v1;
}

uint64_t sub_1E3DB3534()
{
  v1 = *(MEMORY[0x1E69DDCE0] + 16);
  v41[0] = *MEMORY[0x1E69DDCE0];
  v41[1] = v1;
  v42 = 0;
  OUTLINED_FUNCTION_111();
  v3 = (*(v2 + 184))(v41);
  v38 = 0;
  v39 = 0;
  v4 = *(*v0 + 2056);
  if ((v4)(v3))
  {
    v5 = 0x4020000000000000;
  }

  else
  {
    v5 = 0;
  }

  v36 = v5;
  v37 = 0;
  if (v4())
  {
    v6 = 0x4020000000000000;
  }

  else
  {
    v6 = 0;
  }

  v34 = v6;
  v35 = 0;
  v4();
  v23[0] = 0x4028000000000000;
  LOBYTE(v23[1]) = 0;
  v7 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  v30 = v32;
  v31 = v33;
  sub_1E3C2FCB8(&v38, __src);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_0();
  v9 = *(v8 + 1600);
  v11 = (v9)(__dst, 11, v10 & 1, v7);
  (v4)(v11);
  v32 = 0x4028000000000000;
  v33 = 0;
  sub_1E3C3DE00(v7);
  v27 = v30;
  v28 = v31;
  sub_1E3C2FC98();
  v23[20] = v25;
  v24 = v26;
  sub_1E3C3DE00(v7);
  OUTLINED_FUNCTION_84();
  sub_1E3C3DE00(v7);
  OUTLINED_FUNCTION_42_0();
  sub_1E3C2FCB8(&v27, __dst);
  memcpy(v23, __dst, 0x59uLL);
  v12 = OUTLINED_FUNCTION_18();
  v20 = OUTLINED_FUNCTION_17_8(v12, v13, v14, v15, v16, v17, v18, v19, v23[0]);
  v9(v20, 10);
  OUTLINED_FUNCTION_9_2();
  return (*(v21 + 256))(0x7FF0000000000000, 0);
}

uint64_t sub_1E3DB381C()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 184);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    j__OUTLINED_FUNCTION_18();
    sub_1E3B050E8();
    v3 = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14_21(v3);
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_2_187(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);

    v1 = v15;
    *(v2 + 184) = v15;
  }

  return v1;
}

uint64_t sub_1E3DB38C4()
{
  OUTLINED_FUNCTION_44_47();
  v1 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  v2 = sub_1E3C3DE00(v1);
  LOBYTE(v581) = LOBYTE(v606);
  v10 = OUTLINED_FUNCTION_19_107(v2, v3, v4, v5, v6, v7, v8, v9, v218, v237, v256, v275, v294, v314, v334, v353, v373, v393, v413, v433, 0);
  sub_1E3C2FCB8(v10, v11);
  v20 = OUTLINED_FUNCTION_49_47(v12, v13, v14, v15, v16, v17, v18, v19, v219, v238, v257, v276, v295, v315, v335, v354, v374, v394, v414, v434, v453);
  memcpy(v20, v21, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_0();
  v23 = *(v22 + 1600);
  v32 = OUTLINED_FUNCTION_72_2(v24, v25, v26, v27, v28, v29, v30, v31, v220, v239, v258, v277, v296, v316, v336, v355, v375, v395, v415, v435, v454);
  v23(v32, 7);
  OUTLINED_FUNCTION_9_2();
  (*(v33 + 256))(0x7FF0000000000000, 0);
  LOBYTE(v473) = 0;
  sub_1E3952C64();
  type metadata accessor for UIEdgeInsets();
  v35 = v34;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_11_7(v36, v37, v38, v39, v40, v41, v42, v43, v221, v240, v259, v278, v297, v317, v337, v356, v376, v396, v416, v436, 15.0, 10.0, 15.0, 0.0, v473, v477, v481, v485, v489, v493, v497, v501, v505, v509, v513, v517, v521, v525, v529, v533, v537, v541, v545, v549, v553, v557, v561, v565, v569, v573, v602, v581, v586, v590, v594, v598, v602, v606, v608, v610, v612, v614, v617);
  v44 = sub_1E3C3DE00(v35);
  OUTLINED_FUNCTION_4_190(v44, v45, v46, v47, v48, v49, v50, v51, v222, v241, v260, v279, v298, v318, v338, v357, v377, v397, v417, v437, v455, v467, v469, v471, v474, v478, v482, v486, v490, v494, v498, v502, v506, v510, v514, v518, v522, v526, v530, v534, v538, v542, v546, v550, v554, v558, v562, v566, v570, v574, v577, v582, v587, v591, v595, v599, v603);
  v60 = OUTLINED_FUNCTION_19_107(v52, v53, v54, v55, v56, v57, v58, v59, v223, v242, v261, v280, v299, v319, v339, v358, v378, v398, v418, v438, v456);
  sub_1E3C2FCB8(v60, v61);
  v70 = OUTLINED_FUNCTION_49_47(v62, v63, v64, v65, v66, v67, v68, v69, v224, v243, v262, v281, v300, v320, v340, v359, v379, v399, v419, v439, v457);
  memcpy(v70, v71, 0xE9uLL);
  v72 = OUTLINED_FUNCTION_18();
  v80 = OUTLINED_FUNCTION_72_2(v72, v73, v74, v75, v76, v77, v78, v79, v225, v244, v263, v282, v301, v321, v341, v360, v380, v400, v420, v440, v458);
  v23(v80, 1);
  LOBYTE(v475) = 1;
  sub_1E3952C88();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_7_33();
  sub_1E3C3DE00(v35);
  OUTLINED_FUNCTION_11_7(v81, v82, v83, v84, v85, v86, v87, v88, v226, v245, v264, v283, v302, v322, v342, v361, v381, v401, v421, v441, 0.0, 0.0, 0.0, 0.0, v475, v479, v483, v487, v491, v495, v499, v503, v507, v511, v515, v519, v523, v527, v531, v535, v539, v543, v547, v551, v555, v559, v563, v567, v571, v575, v578, v583, v588, v592, v596, v600, v604, v607, v609, v611, v613, v615, v616);
  v89 = sub_1E3C3DE00(v35);
  OUTLINED_FUNCTION_4_190(v89, v90, v91, v92, v93, v94, v95, v96, v227, v246, v265, v284, v303, v323, v343, v362, v382, v402, v422, v442, v459, v468, v470, v472, v476, v480, v484, v488, v492, v496, v500, v504, v508, v512, v516, v520, v524, v528, v532, v536, v540, v544, v548, v552, v556, v560, v564, v568, v572, v576, v579, v584, v589, v593, v597, v601, v605);
  v97 = sub_1E3C3DE00(v35);
  LOBYTE(v304) = v423;
  v105 = OUTLINED_FUNCTION_23_81(v97, v98, v99, v100, v101, v102, v103, v104, v344, v363, v383, v403, v304, v324, v344, v363, v383, v403, v423, v443, v460);
  sub_1E3C2FCB8(v105, v106);
  v115 = OUTLINED_FUNCTION_49_47(v107, v108, v109, v110, v111, v112, v113, v114, v228, v247, v266, v285, v305, v325, v345, v364, v384, v404, v424, v444, v461);
  memcpy(v115, v116, 0xE9uLL);
  v117 = OUTLINED_FUNCTION_18();
  v125 = OUTLINED_FUNCTION_72_2(v117, v118, v119, v120, v121, v122, v123, v124, v229, v248, v267, v286, v306, v326, v346, v365, v385, v405, v425, v445, v462);
  v23(v125, 0);
  sub_1E3C2FC98();
  sub_1E3C3DE00(v1);
  v126 = sub_1E3C3DE00(v1);
  LOBYTE(v366) = v585;
  v134 = OUTLINED_FUNCTION_23_81(v126, v127, v128, v129, v130, v131, v132, v133, v230, v249, v268, v287, v307, v327, v580, v366, v386, v406, v426, v446, 0);
  sub_1E3C2FCB8(v134, v135);
  v144 = OUTLINED_FUNCTION_49_47(v136, v137, v138, v139, v140, v141, v142, v143, v231, v250, v269, v288, v308, v328, v347, v367, v387, v407, v427, v447, v463);
  memcpy(v144, v145, 0x59uLL);
  v146 = OUTLINED_FUNCTION_18();
  v154 = OUTLINED_FUNCTION_72_2(v146, v147, v148, v149, v150, v151, v152, v153, v232, v251, v270, v289, v309, v329, v348, v368, v388, v408, v428, v448, v464);
  v23(v154, 10);
  if (sub_1E39DFFC8() & 1) != 0 || (v155 = TVAppFeature.isEnabled.getter(10), (v155))
  {
    v155 = (*(*v0 + 1888))(0);
  }

  v156 = (*v0 + 2096);
  v157 = *v156;
  (*v156)(v155);
  sub_1E3C2FC98();
  sub_1E3C3DE00(&qword_1F5D549D8);
  v158 = sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v349) = v580;
  v166 = OUTLINED_FUNCTION_23_81(v158, v159, v160, v161, v162, v163, v164, v165, v233, v252, v271, v290, v310, v330, v349, v369, v389, v409, v429, v449, 17);
  sub_1E3C2FCB8(v166, v167);
  OUTLINED_FUNCTION_40_54();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v176 = OUTLINED_FUNCTION_72_2(v168, v169, v170, v171, v172, v173, v174, v175, v234, v253, v272, v291, v311, v331, v350, v370, v390, v410, v430, v450, v465);
  v177(v176, 96);

  v157(v178);
  [objc_opt_self() isVision];
  OUTLINED_FUNCTION_36();
  if (v180)
  {
    v181 = 5;
  }

  else
  {
    v181 = 7;
  }

  (*(v179 + 2168))(v181);

  v183 = (v157)(v182);
  OUTLINED_FUNCTION_13();
  v185 = *(v184 + 2056);
  if (v185())
  {
    v186 = sub_1E3E5FD88();
  }

  else
  {
    v186 = sub_1E3E60700();
  }

  v187 = *v186;
  v188 = *(*v183 + 680);
  v189 = *v186;
  v188(v187);

  OUTLINED_FUNCTION_9_2();
  v191 = *(v190 + 2048);
  v191();
  v185();
  v192 = v185();
  v200 = OUTLINED_FUNCTION_23_81(v192, v193, v194, v195, v196, v197, v198, v199, v235, v254, v273, v292, v312, v332, v351, v371, v391, v411, v431, v451, 17);
  sub_1E3C2FCB8(v200, v201);
  OUTLINED_FUNCTION_40_54();
  v202 = OUTLINED_FUNCTION_18();
  v210 = OUTLINED_FUNCTION_72_2(v202, v203, v204, v205, v206, v207, v208, v209, v236, v255, v274, v293, v313, v333, v352, v372, v392, v412, v432, v452, v466);
  v211(v210, 48);

  v213 = (v191)(v212);
  v214 = *sub_1E3E5FD88();
  v215 = *(*v213 + 680);
  v216 = v214;
  v215(v214);
}

uint64_t sub_1E3DB4080()
{
  type metadata accessor for ViewLayout();
  sub_1E3C2F968();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_1_220();
  OUTLINED_FUNCTION_56_29(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);

  *(v0 + 104) = v13;
  *(v0 + 112) = 0;
  type metadata accessor for BarButtonItemsLayout();
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = sub_1E4118274();
  *(v0 + 168) = 0;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  *(v0 + 192) = 8;
  type metadata accessor for OfferListLockupCellLayout();
  *(v0 + 120) = sub_1E4160CD4();
  v9 = sub_1E3C2F9A0();

  sub_1E3DB4138();

  return v9;
}

void sub_1E3DB4138()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_8();
  v1 += 223;
  v2 = *v1;
  v3 = (*v1)();
  sub_1E3C37CBC(v3, 117);

  OUTLINED_FUNCTION_36();
  v5 = *(v4 + 1808);
  v6 = v5();
  sub_1E3C37CBC(v6, 119);

  (v5)(v7);
  OUTLINED_FUNCTION_36();
  v9 = *(v8 + 1832);
  v10 = v9();
  OUTLINED_FUNCTION_35_58(v10);

  (v2)(v11);
  v12 = v9();
  OUTLINED_FUNCTION_35_58(v12);

  type metadata accessor for OfferSelectionGroupLayout();
  swift_allocObject();
  v13 = sub_1E3C2F9A0();
  v14 = v9();
  OUTLINED_FUNCTION_35_58(v14);

  (v5)(v15);
  sub_1E3C37CBC(v13, 140);

  (v2)(v16);
  sub_1E3C37CBC(v13, 140);

  v17 = *(v0 + 192);
  v18 = 0x4082C00000000000;
  if (v17 != 8)
  {
    __src[0] = *(v0 + 192);
    LOBYTE(__dst[0]) = 5;
    sub_1E3DB52D4();
    OUTLINED_FUNCTION_6_160();
    OUTLINED_FUNCTION_47_45();
    if ((v19 & 1) == 0)
    {
      __src[0] = v17;
      LOBYTE(__dst[0]) = 3;
      OUTLINED_FUNCTION_6_160();
      OUTLINED_FUNCTION_47_45();
      if ((v20 & 1) == 0)
      {
        __src[0] = v17;
        LOBYTE(__dst[0]) = 1;
        OUTLINED_FUNCTION_6_160();
        OUTLINED_FUNCTION_47_45();
        if ((v21 & 1) == 0)
        {
          __src[0] = v17;
          LOBYTE(__dst[0]) = 2;
          OUTLINED_FUNCTION_6_160();
          OUTLINED_FUNCTION_47_45();
          if ((v22 & 1) == 0)
          {
            __src[0] = v17;
            LOBYTE(__dst[0]) = 6;
            v23 = OUTLINED_FUNCTION_6_160();
            v18 = 0x407AE00000000000;
            if ((v23 & 1) == 0)
            {
              v18 = 0x4082C00000000000;
            }
          }
        }
      }
    }
  }

  v140 = v18;
  OUTLINED_FUNCTION_111();
  v24 += 257;
  v25 = *v24;
  if ((*v24)())
  {
    *&__dst[0] = 0;
    BYTE8(__dst[0]) = 0;
    v26 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    v181[0] = *&v145[0];
    LOBYTE(v181[1]) = BYTE8(v145[0]);
    sub_1E3C3DE00(v26);
    *&v198[0] = v178[0];
    BYTE8(v198[0]) = v178[1];
    sub_1E3C3DE00(v26);
    v188 = *&v193;
    LOBYTE(v189) = v194;
    sub_1E3C3DE00(v26);
    v165 = v183;
    LOBYTE(v166) = v184;
    sub_1E3C3DE00(v26);
    OUTLINED_FUNCTION_13_131();
    v27 = __dst;
  }

  else
  {
    *&v145[0] = 0;
    BYTE8(v145[0]) = 0;
    v181[0] = 0x4030000000000000;
    LOBYTE(v181[1]) = 0;
    v28 = sub_1E39DFFC8();
    v29 = 0x4010000000000000;
    if (v28)
    {
      v29 = 0;
    }

    *&__dst[0] = v29;
    BYTE8(__dst[0]) = 0;
    v178[0] = 0x4020000000000000;
    LOBYTE(v178[1]) = 0;
    v30 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    v193 = *&v198[0];
    LOBYTE(v194) = BYTE8(v198[0]);
    sub_1E3C3DE00(v30);
    v183 = v188;
    LOBYTE(v184) = v189;
    v27 = v145;
  }

  sub_1E3C2FCB8(v27, __src);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_198();
  v32 = v31();
  if (v17 == 8)
  {
    v33 = 32.0;
  }

  else
  {
    __src[0] = v17;
    LOBYTE(__dst[0]) = 2;
    sub_1E3DB52D4();
    v32 = OUTLINED_FUNCTION_6_160();
    v33 = 0.0;
    if ((v32 & 1) == 0)
    {
      __src[0] = v17;
      LOBYTE(__dst[0]) = 4;
      v32 = OUTLINED_FUNCTION_6_160();
      if (v32)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = 32.0;
      }
    }
  }

  v198[0] = xmmword_1E42B5E00;
  v198[1] = xmmword_1E42AE100;
  v199 = 0;
  v34 = (v25)(v32);
  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = 0x4030000000000000;
  }

  if (v34)
  {
    v36 = 0x4038000000000000;
  }

  else
  {
    v36 = 0x4034000000000000;
  }

  v193 = v35;
  v194 = v36;
  v195 = 0;
  v196 = v36;
  v197 = 0;
  v37 = v25();
  if (v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = 0x4030000000000000;
  }

  if (v37)
  {
    v39 = 0x4038000000000000;
  }

  else
  {
    v39 = 0x4034000000000000;
  }

  v188 = *&v38;
  v189 = v39;
  if (v37)
  {
    v40 = 0;
  }

  else
  {
    v40 = 0x4010000000000000;
  }

  v190 = v40;
  v191 = v39;
  v192 = 0;
  v41 = v25();
  v42.n128_u64[0] = 31.0;
  if ((v41 & 1) == 0)
  {
    v42.n128_f64[0] = v33;
  }

  v183 = j__OUTLINED_FUNCTION_7_78(v42);
  v184 = v43;
  v185 = v44;
  v186 = v45;
  v187 = 0;
  v46 = v25();
  __asm { FMOV            V2.2D, #16.0 }

  if (v46)
  {
    v52 = xmmword_1E429D540;
  }

  else
  {
    v135 = _Q2;
    if (sub_1E39DFFC8())
    {
      v52 = xmmword_1E42C07A0;
      _Q2 = v135;
    }

    else
    {
      v53.n128_u64[0] = 16.0;
      *&v52 = j__OUTLINED_FUNCTION_7_78(v53);
      *(&v52 + 1) = v54;
      *(&_Q2 + 1) = v55;
    }
  }

  __dst[0] = v52;
  __dst[1] = _Q2;
  LOBYTE(__dst[2]) = 0;
  __asm { FMOV            V1.2D, #24.0 }

  v145[0] = xmmword_1E42CA3A0;
  v145[1] = _Q1;
  LOBYTE(v145[2]) = 0;
  type metadata accessor for UIEdgeInsets();
  v58 = v57;
  sub_1E3C2FCB8(v198, __src);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_0();
  v60 = *(v59 + 1600);
  v61 = OUTLINED_FUNCTION_43_4();
  v60(v61, 1);
  OUTLINED_FUNCTION_9_2();
  v63 = (*(v62 + 464))(4);
  v179 = 0x4074000000000000;
  v180 = 0;
  v64 = (v25)(v63);
  v65 = 0x407F800000000000;
  if (v64)
  {
    v65 = 0x407F600000000000;
  }

  *&__dst[0] = v65;
  BYTE8(__dst[0]) = 0;
  *&v145[0] = 0x4070400000000000;
  BYTE8(v145[0]) = 0;
  v178[0] = 0x407AE00000000000;
  LOBYTE(v178[1]) = 0;
  v66 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  v67 = OUTLINED_FUNCTION_24_82();
  sub_1E3C3DE00(v67);
  OUTLINED_FUNCTION_34_52();
  sub_1E3C2FCB8(&v179, v181);
  memcpy(__dst, v181, 0x59uLL);
  OUTLINED_FUNCTION_18();
  v68 = OUTLINED_FUNCTION_43_4();
  v69 = (v60)(v68, 3);
  v176 = 0x407AE00000000000;
  v177 = 0;
  v70 = (v25)(v69);
  v71 = 0x4089A00000000000;
  if (v70)
  {
    v71 = 0x407F600000000000;
  }

  v174 = v71;
  v175 = 0;
  *&__dst[0] = v140;
  BYTE8(__dst[0]) = 0;
  sub_1E3C2FC98();
  v165 = *v145;
  LOBYTE(v166) = BYTE8(v145[0]);
  sub_1E3C3DE00(v66);
  OUTLINED_FUNCTION_13_131();
  sub_1E3C3DE00(v66);
  OUTLINED_FUNCTION_45_52();
  sub_1E3C2FCB8(&v176, v178);
  memcpy(__dst, v178, 0x59uLL);
  OUTLINED_FUNCTION_18();
  v72 = OUTLINED_FUNCTION_43_4();
  v60(v72, 4);
  *&v145[0] = 0x4063000000000000;
  BYTE8(v145[0]) = 0;
  v165 = 130.0;
  LOBYTE(v166) = 0;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_13_131();
  sub_1E3C3DE00(v66);
  OUTLINED_FUNCTION_45_52();
  sub_1E3C3DE00(v66);
  *&v149 = v152;
  BYTE8(v149) = BYTE8(v152);
  sub_1E3C3DE00(v66);
  v172 = v146;
  v173 = BYTE8(v146);
  sub_1E3C2FCB8(v145, __dst);
  memcpy(v145, __dst, 0x59uLL);
  v73 = OUTLINED_FUNCTION_18();
  v81 = OUTLINED_FUNCTION_28_2(v73, v74, v75, v76, v77, v78, v79, v80, v135, *(&v135 + 1), v140, v13, v145[0]);
  v60(v81, 7);
  *&v145[0] = 0x4082200000000000;
  BYTE8(v145[0]) = 0;
  sub_1E3C3DE00(v66);
  OUTLINED_FUNCTION_24_82();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_34_52();
  sub_1E3C3DE00(v66);
  *&v152 = v155;
  BYTE8(v152) = BYTE8(v155);
  sub_1E3C3DE00(v66);
  *&v146 = v149;
  BYTE8(v146) = BYTE8(v149);
  sub_1E3C3DE00(v66);
  v170 = v172;
  v171 = v173;
  sub_1E3C2FCB8(v163, __dst);
  memcpy(v145, __dst, 0x59uLL);
  v82 = OUTLINED_FUNCTION_18();
  v90 = OUTLINED_FUNCTION_28_2(v82, v83, v84, v85, v86, v87, v88, v89, v136, v138, v141, v143, v145[0]);
  v91 = (v60)(v90, 8);
  if ((v25)(v91))
  {
    v92.n128_f64[0] = 37.5;
  }

  else
  {
    v92.n128_f64[0] = 12.0;
  }

  v165 = j__OUTLINED_FUNCTION_7_78(v92);
  v166 = v93;
  v167 = v94;
  v168 = v95;
  v169 = 0;
  if (v25())
  {
    v96.n128_f64[0] = 37.5;
  }

  else
  {
    v96.n128_f64[0] = 12.0;
  }

  v163[0] = j__OUTLINED_FUNCTION_7_78(v96);
  v163[1] = v97;
  v163[2] = v98;
  v163[3] = v99;
  v164 = 0;
  v100 = v25();
  v101.n128_u64[0] = 0x4048000000000000;
  if (v100)
  {
    v101.n128_f64[0] = 64.0;
  }

  *&v145[0] = j__OUTLINED_FUNCTION_7_78(v101);
  *(&v145[0] + 1) = v102;
  *&v145[1] = v103;
  *(&v145[1] + 1) = v104;
  LOBYTE(v145[2]) = 0;
  sub_1E3C3DE00(v58);
  v158[0] = v160;
  v158[1] = v161;
  v159 = v162;
  sub_1E3C3DE00(v58);
  v152 = v155;
  v153 = v156;
  v154 = v157;
  sub_1E3C3DE00(v58);
  v146 = v149;
  v147 = v150;
  v148 = v151;
  sub_1E3C2FCB8(v158, __dst);
  memcpy(v145, __dst, 0xE9uLL);
  v105 = OUTLINED_FUNCTION_18();
  v113 = OUTLINED_FUNCTION_28_2(v105, v106, v107, v108, v109, v110, v111, v112, v137, v139, v142, v144, v145[0]);
  v60(v113, 17);
  OUTLINED_FUNCTION_9_2();
  v115 = (*(v114 + 1856))();
  sub_1E3C37CBC(v115, 23);

  OUTLINED_FUNCTION_9_2();
  v117 = (*(v116 + 1880))();
  sub_1E3C37CBC(v117, 59);

  OUTLINED_FUNCTION_9_2();
  v119 = (*(v118 + 1904))();
  sub_1E3C37CBC(v119, 60);

  OUTLINED_FUNCTION_9_2();
  v121 = *(v120 + 1928);
  v122 = v121();
  sub_1E3C37CBC(v122, 5);

  OUTLINED_FUNCTION_9_2();
  v124 = (*(v123 + 1976))();
  sub_1E3C37CBC(v124, 113);

  OUTLINED_FUNCTION_9_2();
  v126 = *(v125 + 2000);
  v127 = v126();
  sub_1E3C37CBC(v127, 91);

  OUTLINED_FUNCTION_9_2();
  v129 = *(v128 + 2024);
  v130 = v129();
  sub_1E3C37CBC(v130, 70);

  (v126)(v131);
  v132 = v121();
  sub_1E3C37CBC(v132, 23);

  (v126)(v133);
  v134 = v129();
  sub_1E3C37CBC(v134, 70);

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3DB4F2C()
{
  v1 = v0;
  v2 = type metadata accessor for ViewLayout();
  v11 = sub_1E3C2F968();
  OUTLINED_FUNCTION_1_220();
  sub_1E41E1A64(&v11, v3, v2, v10);

  *(v1 + 104) = v10[0];
  *(v1 + 112) = 0;
  type metadata accessor for BarButtonItemsLayout();
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = sub_1E4118274();
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  v10[3] = &unk_1F5D5D888;
  v10[4] = &off_1F5D5C918;
  LOBYTE(v10[0]) = 10;
  sub_1E3D79538();
  sub_1E39C2B80();
  __swift_destroy_boxed_opaque_existential_1(v10);
  v4 = v11;
  *(v1 + 192) = v11;
  LOBYTE(v11) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38210);
  v6 = type metadata accessor for OfferListLockupCellLayout();
  sub_1E4148F70(sub_1E3DB50E0, 0, v5, v6, v10);
  v7 = v10[0];
  if (!v10[0])
  {
    v7 = sub_1E4160CD4();
  }

  *(v1 + 120) = v7;
  v8 = sub_1E3C2F9A0();

  sub_1E3DB4138();

  return v8;
}

uint64_t sub_1E3DB50E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3DB50AC();
  *a1 = result;
  return result;
}

void *sub_1E3DB5114(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E3C35CA4(a1);
  if (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0())
  {
    if (v3)
    {
      [v3 copyWithZone_];
      sub_1E4207264();
      swift_unknownObjectRelease();

      type metadata accessor for ViewLayout();
      if (OUTLINED_FUNCTION_53_37())
      {
        return v11;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = *(a2 + 16);
      a2 = *(a2 + 24);
    }

    else
    {
      v5 = 0;
    }

    v6 = sub_1E37E1418();
    if (a2)
    {
      if (v5 == *v6 && a2 == *(v6 + 1))
      {
      }

      else
      {
        v8 = sub_1E42079A4();

        if ((v8 & 1) == 0)
        {
          return v3;
        }
      }

      OUTLINED_FUNCTION_8();
      v10 = (*(v9 + 1952))();

      return v10;
    }
  }

  return v3;
}

uint64_t sub_1E3DB5264()
{
  if ((sub_1E39DFFC8() & 1) != 0 && *(v0 + 192) != 8)
  {
    sub_1E3DB52D4();
    v1 = sub_1E4205E84();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

unint64_t sub_1E3DB52D4()
{
  result = qword_1ECF38A00;
  if (!qword_1ECF38A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38A00);
  }

  return result;
}

void *sub_1E3DB534C(uint64_t a1)
{
  result = sub_1E3C35CA4(a1);
  if (result)
  {
    [result copyWithZone_];
    sub_1E4207264();
    swift_unknownObjectRelease();

    type metadata accessor for ViewLayout();
    if (OUTLINED_FUNCTION_53_37())
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

uint64_t OUTLINED_FUNCTION_53_37()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_56_29(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{

  return sub_1E41E1A64(&a9, a2, v10, &a10);
}

uint64_t static GroupActivitiesManagerProxy.isConfigured.getter()
{
  v0 = *sub_1E32A9398();
  v1 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_isConfigured;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t static GroupActivitiesManagerProxy.isSessionActive.getter()
{
  v0 = *sub_1E32A9398();
  v1 = sub_1E3C14D60();

  return v1 & 1;
}

uint64_t static GroupActivitiesManagerProxy.isEligibleForSession.getter()
{
  v0 = *sub_1E32A9398();
  v1 = sub_1E3C14F38();

  return v1 & 1;
}

uint64_t static GroupActivitiesManagerProxy.handle(sharedPlayable:watchTogetherUrl:startupAction:previewMetadata:completion:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v31 = a3;
  v32 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v11 = OUTLINED_FUNCTION_8_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v31 - v19;
  v21 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  sub_1E37C5830(a2, v17, &unk_1ECF363C0);
  v22 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = a1;
  sub_1E327D738(v17, v25 + v22);
  v26 = v32;
  *(v25 + v23) = v31;
  *(v25 + v24) = a4;
  v27 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v27 = v26;
  v27[1] = a6;
  v28 = a4;

  v29 = a1;
  sub_1E376FE58(0, 0, v20, &unk_1E42D1C38, v25);
}

uint64_t sub_1E3DB5740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E3DB5770, 0, 0);
}

uint64_t sub_1E3DB5770()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E32A9398();
  v2 = *v1;
  *(v0 + 64) = *v1;
  v2;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1E3DB5824;

  return sub_1E3C17F94();
}

uint64_t sub_1E3DB5824()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *(v6 + 80) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E3DB5930, 0, 0);
}

uint64_t sub_1E3DB5930()
{
  OUTLINED_FUNCTION_24();
  sub_1E4206434();
  *(v0 + 88) = sub_1E4206424();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3DB59C0, v2, v1);
}

uint64_t sub_1E3DB59C0()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  v2(v1);
  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E3DB5A30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_8_0(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = (*(v4 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v5);
  v8 = *(v0 + v6);
  v9 = *(v0 + 32);
  v10 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_30_0(v11);
  *v12 = v15;
  v12[1] = sub_1E327C238;

  return sub_1E3DB5740(v12, v13, v14, v9, v0 + v3, v7, v8, v10);
}

uint64_t static GroupActivitiesManagerProxy.handleCommerce(sharedWatchUrl:)()
{
  v0 = *sub_1E32A9398();
  sub_1E3C19814();
  v2 = v1;

  return v2 & 1;
}

uint64_t static GroupActivitiesManagerProxy.itemProvider(for:sharedWatchUrl:previewMetadata:existing:)()
{
  v0 = *sub_1E32A9398();
  sub_1E3C174E4();
  v2 = v1;

  return v2;
}

id static GroupActivitiesManagerProxy.itemProvider(for:previewMetadata:existing:)()
{
  v1 = *sub_1E32A9398();
  v2 = OUTLINED_FUNCTION_9_131();
  v5 = sub_1E3C17748(v2, v3, v4);

  return v5;
}

id static GroupActivitiesManagerProxy.itemProvider(for:previewMetadata:existing:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *sub_1E32A9398();
  v9 = sub_1E3C17864(a1, a2, a3, a4);

  return v9;
}

void static GroupActivitiesManagerProxy.playerDidStart(_:)()
{
  v0 = *sub_1E32A9398();
  v1 = OUTLINED_FUNCTION_10_0();
  sub_1E3C19DCC(v1);
}

void static GroupActivitiesManagerProxy.allPlaybackDidEnd()()
{
  v0 = *sub_1E32A9398();
  OUTLINED_FUNCTION_51();
  sub_1E3C19FBC();
}

void static GroupActivitiesManagerProxy.startPlaybackFailed()()
{
  v0 = *sub_1E32A9398();
  OUTLINED_FUNCTION_51();
  sub_1E3C1B02C();
}

void static GroupActivitiesManagerProxy.leaveSession()()
{
  v0 = *sub_1E32A9398();
  OUTLINED_FUNCTION_51();
  sub_1E3C1B0C4();
}

void static GroupActivitiesManagerProxy.endSession(with:)()
{
  v0 = *sub_1E32A9398();
  OUTLINED_FUNCTION_10_0();
  sub_1E3C15F8C();
}

uint64_t static GroupActivitiesManagerProxy.requestPermissionToStartCowatching(for:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;
  v11 = a1;

  sub_1E376FE58(0, 0, v8, &unk_1E42D1C48, v10);
}

uint64_t sub_1E3DB6484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E3DB64A8, 0, 0);
}

uint64_t sub_1E3DB64A8()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E32A9398();
  v2 = *v1;
  *(v0 + 40) = *v1;
  v2;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1E3DB6558;

  return sub_1E3C1A01C();
}

uint64_t sub_1E3DB6558()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *(v6 + 56) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E3DB6664, 0, 0);
}

uint64_t sub_1E3DB6664()
{
  OUTLINED_FUNCTION_24();
  sub_1E4206434();
  *(v0 + 64) = sub_1E4206424();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3DB66F4, v2, v1);
}

uint64_t sub_1E3DB66F4()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);

  v2(v1);
  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E3DB6764()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_30_0(v4);
  *v5 = v8;
  v5[1] = sub_1E3286A7C;

  return sub_1E3DB6484(v5, v6, v7, v1, v2, v3);
}

uint64_t static GroupActivitiesManagerProxy.isSharedWatchIdValidForCurrentSession(sharedWatchId:)(uint64_t a1, uint64_t a2)
{
  v4 = *sub_1E32A9398();
  LOBYTE(a2) = sub_1E3C16FD0(a1, a2);

  return a2 & 1;
}

void static GroupActivitiesManagerProxy.requestForegroundPresentation()()
{
  v0 = *sub_1E32A9398();
  OUTLINED_FUNCTION_51();
  sub_1E3C16E80();
}

id GroupActivitiesManagerProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GroupActivitiesManagerProxy.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GroupActivitiesManagerProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3DB6AD4(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_templateUpdateObserver;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

void (*sub_1E3DB6B3C(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_templateUpdateObserver;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3DB6BC8;
}

void sub_1E3DB6BC8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  *((*a1)[6] + (*a1)[5] + 8) = (*a1)[4];
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

char *sub_1E3DB6C80(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_templateUpdateObserver + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_teamsServiceRequest] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_teamsServiceRequestCancellable] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_favoriteTeamsBefore] = MEMORY[0x1E69E7CD0];

  OUTLINED_FUNCTION_51_1();
  sub_1E3ED15A8(a1);
  OUTLINED_FUNCTION_106();
  v3 = type metadata accessor for CollectionImpressionManager();
  v4 = v1;
  v6[3] = v3;
  v6[4] = &off_1F5D8D100;
  v6[0] = sub_1E3F0AE3C();
  sub_1E41C8454(v6);

  return v4;
}

void sub_1E3DB6D50()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_templateUpdateObserver + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_teamsServiceRequest) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_teamsServiceRequestCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_favoriteTeamsBefore) = MEMORY[0x1E69E7CD0];
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3DB6E0C()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SportsFavoritesTemplateController();
  objc_msgSendSuper2(&v4, sel_vui_viewDidLoad);
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:sel_onAuthenticationDidChange_ name:*NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange.unsafeMutableAddressor() object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:sel_onFavoritesCacheUpdated_ name:*NSNotificationName.VUISportsFavoritesLocalStorageDidChange.unsafeMutableAddressor() object:0];
}

uint64_t type metadata accessor for SportsFavoritesTemplateController()
{
  result = qword_1EE2918B8;
  if (!qword_1EE2918B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3DB6F8C(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for SportsFavoritesTemplateController();
  objc_msgSendSuper2(&v9, sel_vui_viewDidAppear_, a1 & 1);
  v4 = *(**sub_1E3CFEA54() + 384);

  v6 = v4(v5);

  *&v2[OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_favoriteTeamsBefore] = v6;

  type metadata accessor for SportsFavoritesOnboardingViewController();
  OUTLINED_FUNCTION_4_0();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E39877BC(sub_1E3DB72B8, v7);
}

void sub_1E3DB70A4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (v1 == 3)
    {
      sub_1E3DB72C0();
    }

    else
    {
      sub_1E3DBA0E0(v1);
      v11 = sub_1E324FBDC();
      (*(v4 + 16))(v8, v11, v2);
      sub_1E3DBA0E0(v1);
      v12 = sub_1E41FFC94();
      v13 = sub_1E42067F4();
      sub_1E398B540(v1);
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19 = v18;
        *v14 = 136315138;
        sub_1E3DBA0F0();
        v15 = sub_1E4207AB4();
        v17 = sub_1E3270FC8(v15, v16, &v19);

        *(v14 + 4) = v17;
        _os_log_impl(&dword_1E323F000, v12, v13, "SportsFavoritesTemplateController:: not showing onboarding sheet. error=%s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        sub_1E398B540(v1);
      }

      else
      {

        sub_1E398B540(v1);
      }

      (*(v4 + 8))(v8, v2);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DB72C0()
{
  sub_1E32ADE38();
  OUTLINED_FUNCTION_4_0();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E3B79200(sub_1E3DB9FF8, v0);
}

void sub_1E3DB738C(char a1)
{
  v2 = v1;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for SportsFavoritesTemplateController();
  objc_msgSendSuper2(&v12, sel_vui_viewDidDisappear_, a1 & 1);
  v4 = *(**sub_1E3CFEA54() + 384);

  v6 = v4(v5);

  v7 = OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_favoriteTeamsBefore;

  v9 = sub_1E3868C04(v8, v6);

  if (v9)
  {
  }

  else
  {
    v10 = *(v6 + 16);

    if (*(*&v2[v7] + 16) < v10)
    {
      v11 = [objc_opt_self() sharedInstance];
      [v11 postNotificationFavoriteTeamsDidChange];
    }
  }
}

uint64_t sub_1E3DB7510()
{
  OUTLINED_FUNCTION_9_5();
  type metadata accessor for CollectionViewModel();
  result = swift_dynamicCastClass();
  if (result)
  {
    v1 = result;
    OUTLINED_FUNCTION_26_0();
    v3 = *(v2 + 1344);

    v3(v4);
    if (sub_1E373F6E0())
    {
      v5 = (*(*v1 + 1040))();
      if (v5)
      {
        v6 = v5;
        result = sub_1E32AE9B0(v5);
        if (!result)
        {

          return 0;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](0, v6);
        }

        else
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }
        }

        OUTLINED_FUNCTION_47_0();
        v8 = (*(v7 + 872))();
        if (v8)
        {
          *&v18 = v8;
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
          v10 = sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790);
          sub_1E38D2480(&v20, v9, v10);

          v11 = v20;
          if (v20)
          {
            v12 = sub_1E40B8524();
            if (v12)
            {
              v13 = v12;
              v14 = sub_1E4205F14();
              sub_1E3277E60(v14, v15, v13, &v18);

              if (*(&v19 + 1))
              {
                sub_1E329505C(&v18);
                sub_1E3CFEA54();
                OUTLINED_FUNCTION_8();
                v17 = *(v16 + 368);

                v17(v11);

                return 1;
              }
            }

            else
            {

              v18 = 0u;
              v19 = 0u;
            }

            sub_1E329505C(&v18);
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_1E3DB77F0()
{
  sub_1E3ED6400();
  type metadata accessor for SportsFavoritesLockupCell();
  swift_getObjCClassFromMetadata();
  sub_1E384EE08(210);
  v0 = sub_1E4205ED4();

  v1 = OUTLINED_FUNCTION_6_16();
  [v1 v2];

  sub_1E384EE08(211);
  v3 = sub_1E4205ED4();

  v4 = OUTLINED_FUNCTION_6_16();
  [v4 v5];

  sub_1E384EE08(212);
  v8 = sub_1E4205ED4();

  v6 = OUTLINED_FUNCTION_6_16();
  [v6 v7];
}

id sub_1E3DB78D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1E41CD2F0(a1, a2);
  if (a4)
  {
    swift_getObjectType();
    v6 = sub_1E40175B0();
  }

  else
  {
    v6 = 0.0;
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(v6);
  if (v5)
  {
    [v5 setContentInsets_];
  }

  return v5;
}

void sub_1E3DB7960()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FE7E4();
  OUTLINED_FUNCTION_9_5();
  v13 = type metadata accessor for SportsFavoritesTemplateController();
  v33.receiver = v1;
  v33.super_class = v13;
  objc_msgSendSuper2(&v33, sel_vuiCollectionView_didSelectItemAt_, v5, v0);

  v14 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x218))();
  sub_1E42000B4();

  v15 = v31;
  if (v31)
  {
    v27 = v30;
    v28 = v32;
    v26[1] = *sub_1E3CFEA54();
    OUTLINED_FUNCTION_4_0();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_4_0();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v8 + 16))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v6);
    v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v29 = v3;
    v19 = v5;
    v20 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    *(v21 + 16) = v16;
    *(v21 + 24) = v17;
    (*(v8 + 32))(v21 + v18, v12, v6);
    v22 = (v21 + v20);
    v5 = v19;
    v23 = v28;
    v24 = v27;
    *v22 = v27;
    v22[1] = v15;
    v22[2] = v23;

    sub_1E3D00E1C(v24, v15, v23, sub_1E3DB9B5C, v21);
  }

  v25 = sub_1E41FE7E4();
  [v5 deselectItemAtIndexPath:v25 animated:1];

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DB7D24(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  sub_1E41FE7E4();
  OUTLINED_FUNCTION_106();
  v25.receiver = v4;
  v25.super_class = type metadata accessor for SportsFavoritesTemplateController();
  objc_msgSendSuper2(&v25, sel_vuiCollectionView_willDisplay_for_, a1, a2, a3);

  v8 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x218))();
  sub_1E42000B4();

  if (!v20)
  {
    return;
  }

  OUTLINED_FUNCTION_47_0();
  if (!(*(v9 + 552))())
  {

    v23 = 0u;
    v24 = 0u;
LABEL_10:
    sub_1E329505C(&v23);
    return;
  }

  v21 = &type metadata for ViewModelKeys.Sports;
  v22 = &off_1F5D7BC68;
  LOBYTE(v19) = 3;
  sub_1E3F9F164(&v19);

  __swift_destroy_boxed_opaque_existential_1(&v19);
  if (!*(&v24 + 1))
  {

    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_13:

    return;
  }

  v11 = v19;
  v10 = v20;
  v12 = sub_1E41FE7E4();
  v13 = [a1 cellForItemAtIndexPath_];

  if (!v13)
  {

    goto LABEL_13;
  }

  type metadata accessor for SportsFavoritesLockupCell();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    sub_1E3CFEA54();
    OUTLINED_FUNCTION_8();
    v17 = *(v16 + 376);

    v18 = v17(v11, v10);

    type metadata accessor for SportsFavoritesLockupFactory();
    sub_1E401DB1C(v15, v18 & 1);
  }

  else
  {
  }
}

uint64_t sub_1E3DB8110()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x290))();
  result = sub_1E32AE9B0(v1);
  if (result)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](0, v1);
      goto LABEL_5;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_5:

      OUTLINED_FUNCTION_8();
      v4 = (*(v3 + 552))();

      return v4;
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_1E3DB822C()
{
  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_templateUpdateObserver);
}

id sub_1E3DB8290()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SportsFavoritesTemplateController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1E3DB83A8(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x840))();
  return sub_1E37BCF0C;
}

void sub_1E3DB843C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v56 = v2;
  v3 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v53 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v51 = v10;
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v54 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x230);
  if (!v20())
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_26_0();
  v22 = (*(v21 + 648))();

  if (!v22)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    goto LABEL_13;
  }

  if (!(v20)(v24) || (OUTLINED_FUNCTION_26_0(), v26 = (*(v25 + 552))(), , !v26))
  {

    v63 = 0u;
    v64 = 0u;
LABEL_12:
    sub_1E329505C(&v63);
    goto LABEL_13;
  }

  v60 = &type metadata for ViewModelKeys.Sports;
  v61 = &off_1F5D7BC68;
  LOBYTE(v57) = 0;
  sub_1E3F9F164(&v57);

  __swift_destroy_boxed_opaque_existential_1(&v57);
  if (!*(&v64 + 1))
  {

    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v49 = v58;
    v50 = v57;
    v27 = sub_1E324FBDC();
    (*(v54 + 16))(v19, v27, v14);

    v28 = sub_1E41FFC94();
    v29 = sub_1E42067E4();

    v48 = v29;
    if (os_log_type_enabled(v28, v29))
    {
      v47 = v28;
      v30 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v57 = v46;
      *v30 = 136315138;
      if (v56)
      {
        v31 = sub_1E4205CA4();
        v33 = v32;
      }

      else
      {
        v33 = 0xE300000000000000;
        v31 = 7104878;
      }

      v34 = sub_1E3270FC8(v31, v33, &v57);

      *(v30 + 4) = v34;
      v28 = v47;
      _os_log_impl(&dword_1E323F000, v47, v48, "SportsFavoritesTemplateController::fetchTeams:: contextData: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v54 + 8))(v19, v14);
    v35 = OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_teamsServiceRequest;
    if (*(v1 + OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_teamsServiceRequest))
    {
      OUTLINED_FUNCTION_8();
      v37 = *(v36 + 376);

      v37(v38);
    }

    type metadata accessor for CollectionServiceRequestContext();
    v55 = Strong;
    sub_1E3E3D284(1, v50, v49, Strong);
    OUTLINED_FUNCTION_26_0();
    v40 = *(v39 + 208);

    v40(v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A2A8);
    *(v1 + v35) = sub_1E37B2890();

    sub_1E32ADE38();
    v42 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v61 = sub_1E3DB9E9C;
    v62 = v43;
    v57 = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v59 = v44;
    v60 = &block_descriptor_111;
    v45 = _Block_copy(&v57);

    sub_1E4203FE4();
    v57 = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v13, v8, v45);
    _Block_release(v45);

    (*(v53 + 8))(v8, v3);
    (*(v51 + 8))(v13, v52);
  }

  else
  {
  }

LABEL_13:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DB8AEC()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x290))();
  result = sub_1E32AE9B0(v1);
  if (result)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](0, v1);
    }

    else
    {
      if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }
    }

    OUTLINED_FUNCTION_47_0();
    (*(v3 + 552))();
  }

  else
  {
  }

  sub_1E3DB843C();
}

uint64_t sub_1E3DB8C08()
{
  OUTLINED_FUNCTION_106();
  v1 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_1E41FDEE4();
  v8 = v0;
  sub_1E3DB8AEC();

  return (*(v3 + 8))(v7, v1);
}

void sub_1E3DB8CD4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  OUTLINED_FUNCTION_106();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v113[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v113[-v10];
  v133 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = *v0;
  if (*(v0 + 17))
  {
    v133 = v2;
    *&v139 = sub_1E3F6FB3C(v18, *(v0 + 8), *(v0 + 16));
    *(&v139 + 1) = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
    sub_1E4148C68(sub_1E394A5A0, v20, &v142);

    v21 = v142;
    v22 = sub_1E324FBDC();
    (*(v5 + 16))(v8, v22, v3);

    v23 = sub_1E41FFC94();
    v24 = sub_1E42067F4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v3;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v142 = v27;
      *v26 = 136315138;
      v28 = sub_1E3270FC8(v21, *(&v21 + 1), &v142);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_1E323F000, v23, v24, "Sports Favorites Teams Service Request:: Error obtaining teams - error %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v5 + 8))(v8, v25);
    }

    else
    {

      (*(v5 + 8))(v8, v3);
    }

    goto LABEL_82;
  }

  v127 = v3;
  OUTLINED_FUNCTION_5_0();
  v29 = *(v18 + 40);
  if (!v29)
  {
    goto LABEL_82;
  }

  ViewModelKeys.rawValue.getter(3);
  sub_1E3277E60(v30, v31, v29, &v142);

  if (!*(&v143 + 1))
  {
    v102 = &v142;
LABEL_81:
    sub_1E329505C(v102);
    goto LABEL_82;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_82:
    OUTLINED_FUNCTION_5_0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *&Strong[OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_teamsServiceRequest] = 0;
    }

    OUTLINED_FUNCTION_5_0();
    v104 = swift_unknownObjectWeakLoadStrong();
    if (v104)
    {
      *&v104[OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_teamsServiceRequestCancellable] = 0;
    }

    goto LABEL_86;
  }

  *(&v143 + 1) = &type metadata for ViewModelKeys;
  *&v144 = &off_1F5D7BCA8;
  LOBYTE(v142) = 13;
  sub_1E3F9F164(&v142);

  if (!*(&v140 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v142);
    v102 = &v139;
    goto LABEL_81;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v142);
    goto LABEL_82;
  }

  v33 = *&v138[0];
  __swift_destroy_boxed_opaque_existential_1(&v142);
  if (!*(v33 + 16))
  {

    goto LABEL_82;
  }

  v115 = v5;
  v116 = v11;
  v34 = *(v33 + 32);

  v36 = v34 + 64;
  v35 = *(v34 + 64);
  v125 = v34;
  v37 = 1 << *(v34 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v13;
  v40 = v38 & v35;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5_0();
  v41 = 0;
  v42 = (v37 + 63) >> 6;
  v122 = v39 + 16;
  v119 = v39;
  v132 = (v39 + 8);
  v128 = v42;
  v129 = v36;
  v123 = v32;
  v124 = v17;
  while (1)
  {
    if (v40)
    {
      v43 = v41;
      goto LABEL_19;
    }

    do
    {
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
LABEL_94:
        __break(1u);
        return;
      }

      if (v43 >= v42)
      {
        v40 = 0;
        v140 = 0u;
        v141 = 0u;
        v139 = 0u;
        goto LABEL_20;
      }

      v40 = *(v36 + 8 * v43);
      ++v41;
    }

    while (!v40);
    v41 = v43;
LABEL_19:
    v44 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v45 = v44 | (v43 << 6);
    v46 = (*(v125 + 48) + 16 * v45);
    v48 = *v46;
    v47 = v46[1];
    sub_1E328438C(*(v125 + 56) + 32 * v45, v138);
    *&v139 = v48;
    *(&v139 + 1) = v47;
    sub_1E329504C(v138, &v140);

LABEL_20:
    v142 = v139;
    v143 = v140;
    v144 = v141;
    if (!*(&v139 + 1))
    {

      goto LABEL_82;
    }

    sub_1E329504C(&v143, v138);
    v49 = sub_1E38506C8();
    if (v49 == 263)
    {
      goto LABEL_29;
    }

    v50 = v49;
    sub_1E328438C(v138, &v139);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_29;
    }

    v51 = v135[0];
    v134 = v50;
    v137 = 119;
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v139 != v135[0] || *(&v139 + 1) != v135[1])
    {
      break;
    }

LABEL_33:
    v54 = swift_unknownObjectWeakLoadStrong();
    if (!v54)
    {

LABEL_29:
      __swift_destroy_boxed_opaque_existential_1(v138);
      goto LABEL_30;
    }

    v55 = v54;
    v131 = v51;
    OUTLINED_FUNCTION_64();
    v57 = (*(v56 + 560))();

    v58 = v133;
    v59 = v124;
    if (v57)
    {
      type metadata accessor for CollectionViewModel();
      swift_retain_n();
      v121 = sub_1E40B198C(v50, v131, v57);
      if (!v121)
      {

        goto LABEL_29;
      }

      v60 = (*(*v57 + 464))();
      if (v60)
      {
        v61 = v60;

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v61 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          v61 = sub_1E37EFA58(v61);
        }

        if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_94;
        }

        *((v61 & 0xFFFFFFFFFFFFFF8) + 0x20) = v121;

        (*(*v57 + 472))(v61);
      }

      v63 = swift_unknownObjectWeakLoadStrong();
      if (v63)
      {
        v64 = v63;
        j__OUTLINED_FUNCTION_18();
        sub_1E404BB24();
      }

      v120 = v57;
      v65 = swift_unknownObjectWeakLoadStrong();
      if (v65)
      {
        v66 = v65;
        OUTLINED_FUNCTION_64();
        v68 = (*(v67 + 2096))();
        v70 = v69;

        if (v68)
        {
          ObjectType = swift_getObjectType();
          (*(v70 + 8))(1, ObjectType, v70);
        }
      }

      v72 = swift_unknownObjectWeakLoadStrong();
      if (v72)
      {
        v73 = v72;
        OUTLINED_FUNCTION_64();
        v75 = (*(v74 + 440))();

        v76 = [v75 indexPathsForVisibleItems];
        v58 = v133;
        v77 = sub_1E42062B4();
      }

      else
      {
        v77 = MEMORY[0x1E69E7CC0];
      }

      v42 = v128;
      v36 = v129;
      v78 = *(v77 + 16);
      if (v78)
      {
        v79 = v119;
        v80 = (*(v119 + 80) + 32) & ~*(v119 + 80);
        v118 = v77;
        v81 = v77 + v80;
        OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_5_0();
        v82 = *(v79 + 72);
        v130 = *(v79 + 16);
        v131 = v82;
        while (1)
        {
          v130(v59, v81, v58);
          v83 = swift_unknownObjectWeakLoadStrong();
          if (!v83)
          {
            break;
          }

          v84 = v83;
          OUTLINED_FUNCTION_64();
          v86 = (*(v85 + 536))();

          sub_1E42000B4();
          if (!*(&v139 + 1))
          {
            v93 = v132;
            v58 = v133;
            goto LABEL_68;
          }

          v126 = *(&v139 + 1);
          (*(*v140 + 672))();
          *(&v140 + 1) = &type metadata for ViewModelKeys;
          *&v141 = &off_1F5D7BCA8;
          LOBYTE(v139) = 11;
          v59 = MEMORY[0x1E69E7CA0];
          sub_1E3F9F164(&v139);

          v58 = v133;
          if (!v136)
          {
            goto LABEL_69;
          }

          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_70;
          }

          __swift_destroy_boxed_opaque_existential_1(&v139);
          *(&v140 + 1) = &unk_1F5D5D528;
          *&v141 = &off_1F5D5C868;
          LOBYTE(v139) = 0;
          sub_1E3F9F164(&v139);

          if (v136)
          {
            if ((swift_dynamicCast() & 1) == 0)
            {
LABEL_70:
              v96 = OUTLINED_FUNCTION_2_188();
              v97(v96);

              __swift_destroy_boxed_opaque_existential_1(&v139);
              goto LABEL_71;
            }

            v59 = v134;
            __swift_destroy_boxed_opaque_existential_1(&v139);
            v87 = swift_unknownObjectWeakLoadStrong();
            if (v87)
            {
              v88 = v87;
              v114 = v59;
              OUTLINED_FUNCTION_64();
              v90 = (*(v89 + 440))();

              v91 = sub_1E41FE7E4();
              v59 = [v90 cellForItemAtIndexPath_];

              v117 = v59;
              if (!v59)
              {
                v58 = v133;
                v100 = OUTLINED_FUNCTION_2_188();
                v101(v100);

                goto LABEL_71;
              }

              type metadata accessor for SportsFavoritesLockupCell();
              v92 = swift_dynamicCastClass();
              v58 = v133;
              if (v92)
              {
                OUTLINED_FUNCTION_106();
                type metadata accessor for SportsFavoritesLockupFactory();
                sub_1E401DB1C(v91, v114);
              }
            }

            else
            {
            }

            v98 = OUTLINED_FUNCTION_2_188();
            v99(v98);
          }

          else
          {
LABEL_69:
            v94 = OUTLINED_FUNCTION_2_188();
            v95(v94);

            __swift_destroy_boxed_opaque_existential_1(&v139);
            sub_1E329505C(v135);
          }

LABEL_71:
          v81 += v131;
          if (!--v78)
          {

            v42 = v128;
            v36 = v129;
            goto LABEL_77;
          }
        }

        v93 = v132;
LABEL_68:
        (*v93)(v59, v58);
        goto LABEL_71;
      }

LABEL_77:

      __swift_destroy_boxed_opaque_existential_1(v138);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v138);

LABEL_30:
      v42 = v128;
      v36 = v129;
    }
  }

  v53 = sub_1E42079A4();

  if (v53)
  {
    goto LABEL_33;
  }

  v105 = sub_1E324FBDC();
  v107 = v115;
  v106 = v116;
  v108 = v127;
  (*(v115 + 16))(v116, v105, v127);
  v109 = sub_1E41FFC94();
  v110 = sub_1E42067E4();
  if (os_log_type_enabled(v109, v110))
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    _os_log_impl(&dword_1E323F000, v109, v110, "SportsFavoritesTemplateController::fetchTeams:: collection is not a list collection.", v112, 2u);
    v106 = v116;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v107 + 8))(v106, v108);
  __swift_destroy_boxed_opaque_existential_1(v138);
LABEL_86:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DB9B5C()
{
  OUTLINED_FUNCTION_9_5();
  sub_1E41FE874();
  if (v0)
  {
    v14[0] = v0;
    v1 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    if ((swift_dynamicCast() & 1) != 0 && sub_1E374E8E4(v15, 1))
    {
      OUTLINED_FUNCTION_5_0();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        sub_1E3DB72C0();
      }

      return;
    }
  }

  OUTLINED_FUNCTION_5_0();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1E41FE7E4();
    v7 = [v5 cellForItemAtIndexPath_];

    if (v7)
    {
      type metadata accessor for SportsFavoritesLockupCell();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = v8;
        OUTLINED_FUNCTION_47_0();
        if ((*(v10 + 552))())
        {
          v14[3] = &type metadata for ViewModelKeys.Sports;
          v14[4] = &off_1F5D7BC68;
          LOBYTE(v14[0]) = 3;
          sub_1E3F9F164(v14);

          __swift_destroy_boxed_opaque_existential_1(v14);
          if (*(&v16 + 1))
          {
            if (swift_dynamicCast())
            {
              v11 = v14[0];
              v12 = v14[1];
              v13 = *(**sub_1E3CFEA54() + 376);

              LOBYTE(v11) = v13(v11, v12);

              type metadata accessor for SportsFavoritesLockupFactory();
              sub_1E401DB1C(v9, v11 & 1);
            }

            goto LABEL_13;
          }
        }

        else
        {

          v15 = 0u;
          v16 = 0u;
        }

        sub_1E329505C(&v15);
        return;
      }

LABEL_13:
    }
  }
}

uint64_t sub_1E3DB9E9C()
{
  OUTLINED_FUNCTION_5_0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    OUTLINED_FUNCTION_5_0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v3 = Strong, v4 = *(Strong + OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_teamsServiceRequest), , v3, v4) && (v5 = (*(*v4 + 352))(), , v5))
    {
      OUTLINED_FUNCTION_4_0();
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_5_0();
      v7 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v8 = sub_1E41EC148(sub_1E3DB9FF0, v6);
    }

    else
    {
      v8 = 0;
    }

    *&v1[OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_teamsServiceRequestCancellable] = v8;
  }

  return result;
}

void sub_1E3DB9FF8()
{
  OUTLINED_FUNCTION_5_0();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_9_5();
    type metadata accessor for SportsFavoritesOnboardingViewController();
    sub_1E398B5BC(v5);
    v1 = sub_1E39874B4();
    aBlock[4] = sub_1E3A2AF94;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    aBlock[2] = v2;
    aBlock[3] = &block_descriptor_22_1;
    v3 = _Block_copy(aBlock);
    [v0 presentViewController:v1 animated:1 completion:v3];
    _Block_release(v3);
  }
}

id sub_1E3DBA0E0(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

unint64_t sub_1E3DBA0F0()
{
  result = qword_1ECF38A08;
  if (!qword_1ECF38A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38A08);
  }

  return result;
}

uint64_t sub_1E3DBA150@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  *&v5 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v7 = &v13 - v6;
  v8 = *(v1 + _MergedGlobals_81);
  [v8 elapsedTime];
  v9 = sub_1E41FE5D4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  [v8 rate];
  v10 = [v8 selectedAudioOption];
  if (v10)
  {
    sub_1E3DBDB94(v10);
  }

  sub_1E41FEE74();
  v11 = sub_1E41FEE84();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v11);
}

void (*sub_1E3DBA2A8(void *a1))(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32C68);
  OUTLINED_FUNCTION_17_2(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  *a1 = v4;
  sub_1E3DBA150(v4);
  return sub_1E3DBA328;
}

void sub_1E3DBA328(uint64_t *a1)
{
  v1 = *a1;
  sub_1E325F6F0(*a1, &qword_1ECF32C68);

  free(v1);
}

uint64_t sub_1E3DBA3B0(void *a1)
{
  v3 = sub_1E41FEC64();
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v43 = v6 - v5;
  v42 = sub_1E41FEC94();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = sub_1E41FECF4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  v38 = v17;
  v39 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - v21;
  v23 = (v1 + qword_1EE237E38);
  *v23 = 0u;
  v23[1] = 0u;
  v24 = (v1 + qword_1EE237E40);
  *v24 = 0u;
  v24[1] = 0u;
  *(v1 + qword_1EE237E48) = MEMORY[0x1E69E7CD0];
  *(v1 + qword_1EE237E50) = MEMORY[0x1E69E7CC0];
  v25 = v1 + qword_1EE237E58;
  *v25 = 0;
  *(v25 + 8) = 1;
  sub_1E41FFCA4();
  *(v1 + _MergedGlobals_81) = a1;
  v40 = a1;
  v26 = sub_1E41FEF34();
  sub_1E3DBE174(&qword_1EE251C30, type metadata accessor for PlayerBasedMetadataVendor);
  swift_retain_n();
  sub_1E41FEEA4();
  v27 = [objc_opt_self() sharedInstance];
  v28 = [v27 timedMetadataConfig];

  sub_1E41FECE4();
  v29 = OUTLINED_FUNCTION_29_78();
  [v29 initialLookAhead];

  OUTLINED_FUNCTION_25_78();
  sub_1E41FECB4();
  v30 = OUTLINED_FUNCTION_29_78();
  [v30 initialLookBack];

  OUTLINED_FUNCTION_25_78();
  sub_1E41FECA4();
  v31 = OUTLINED_FUNCTION_29_78();
  [v31 lookAhead];

  OUTLINED_FUNCTION_25_78();
  sub_1E41FECD4();
  v32 = OUTLINED_FUNCTION_29_78();
  [v32 timeRangeProximityThreshold];

  OUTLINED_FUNCTION_25_78();
  sub_1E41FECC4();
  (*(v16 + 16))(v19, v22, v14);
  v33 = sub_1E41FEEB4();
  sub_1E41FEC54();
  v33(v44, 0);
  sub_1E41FEC84();
  v34 = [v28 audioSmoothingConfig];
  [v34 durationToRetainAudioEntity];

  sub_1E41FEC74();
  v35 = v42;
  (*(v8 + 16))(v41, v13, v42);
  v36 = sub_1E41FEEB4();
  sub_1E41FEC44();
  v36(v44, 0);
  sub_1E41FEEC4();
  sub_1E41FEED4();

  sub_1E3DBBB50();
  sub_1E3DBC328();
  sub_1E3DBC504();
  sub_1E3DBC6D4();
  sub_1E3DBC884();

  (*(v8 + 8))(v13, v35);
  (*(v39 + 8))(v22, v38);
  return v26;
}

uint64_t sub_1E3DBA8C4()
{
  sub_1E325F6F0(v0 + qword_1EE237E38, &unk_1ECF296E0);
  sub_1E325F6F0(v0 + qword_1EE237E40, &unk_1ECF296E0);

  v1 = qword_1EE296050;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1E3DBA990()
{
  v0 = sub_1E328740C();
  v1 = *((*MEMORY[0x1E69E7D40] & **v0) + 0xF8);
  v2 = *v0;
  v1();

  v3 = sub_1E41FEF64();
  sub_1E325F6F0(v3 + qword_1EE237E38, &unk_1ECF296E0);
  sub_1E325F6F0(v3 + qword_1EE237E40, &unk_1ECF296E0);

  v4 = qword_1EE296050;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2();
  (*(v5 + 8))(v3 + v4);
  return v3;
}

uint64_t sub_1E3DBAAAC()
{
  v0 = sub_1E3DBA990();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3DBAB00()
{
  sub_1E41FEF44();
  v1 = sub_1E41FEF54();
  v1();
  sub_1E3DBC9FC();
  v2 = qword_1EE237E40;
  OUTLINED_FUNCTION_5_0();
  sub_1E3294F34(v0 + v2, &v5);
  if (!*(&v6 + 1))
  {
    return sub_1E325F6F0(&v5, &unk_1ECF296E0);
  }

  sub_1E329504C(&v5, &v7);
  v3 = *(v0 + _MergedGlobals_81);
  __swift_project_boxed_opaque_existential_1(&v7, v8);
  [v3 removeElapsedTimeObserverWithToken_];
  swift_unknownObjectRelease();
  v5 = 0u;
  v6 = 0u;
  OUTLINED_FUNCTION_11_3();
  sub_1E37EB5D0(&v5, v0 + v2);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(&v7);
}

uint64_t sub_1E3DBAC1C()
{
  sub_1E41FEF44();
  v1 = sub_1E41FEF54();
  v1();
  v2 = qword_1EE237E38;
  OUTLINED_FUNCTION_5_0();
  sub_1E3294F34(v0 + v2, &v5);
  if (!v6)
  {
    return sub_1E325F6F0(&v5, &unk_1ECF296E0);
  }

  sub_1E329504C(&v5, &v7);
  v3 = *(v0 + _MergedGlobals_81);
  __swift_project_boxed_opaque_existential_1(&v7, v8);
  [v3 removeBoundaryTimeObserverWithToken_];
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(&v7);
}

void sub_1E3DBAD04()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32D00);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34390);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39[-v14];
  v16 = sub_1E41FEB94();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  if ((v5 & 1) == 0)
  {
    goto LABEL_21;
  }

  v40 = v7;
  sub_1E41FEC04();
  v23 = sub_1E41FEAE4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v23) == 1)
  {
    sub_1E325F6F0(v11, &unk_1ECF32D00);
    v41 = 0u;
    v42 = 0u;
    v43 = 0;
LABEL_13:
    sub_1E325F6F0(&v41, &unk_1ECF38A10);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    goto LABEL_14;
  }

  v24 = sub_1E41FEAC4();
  (*(*(v23 - 8) + 8))(v11, v23);
  sub_1E39574B8(v24, &v41);

  if (!*(&v42 + 1))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343A0);
  v25 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v15, v25 ^ 1u, 1, v16);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
  {
    (*(v18 + 32))(v22, v15, v16);
    v26 = sub_1E41FEB44();
    if (v27)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0xE000000000000000;
    }

    (*(v18 + 8))(v22, v16);
    goto LABEL_15;
  }

LABEL_14:
  sub_1E325F6F0(v15, &unk_1ECF34390);
  v28 = 0;
  v29 = 0xE000000000000000;
LABEL_15:

  v30 = sub_1E41FFC94();
  v31 = sub_1E4206814();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_6_21();
    v33 = OUTLINED_FUNCTION_100();
    *&v41 = v33;
    *v32 = 136315138;

    v34 = sub_1E3270FC8(v28, v29, &v41);

    *(v32 + 4) = v34;
    _os_log_impl(&dword_1E323F000, v30, v31, "Setting current embedded song adam ID to %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v35 = [*(v1 + _MergedGlobals_81) currentMediaItem];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1E4205ED4();

    [v36 setMediaItemMetadata:v37 forProperty:*MEMORY[0x1E69D5B28]];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  LOBYTE(v7) = v40;
LABEL_21:
  sub_1E41FEF44();
  v38 = sub_1E41FEF54();
  v38(v7 & 1, v5 & 1, v3);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DBB160()
{
  OUTLINED_FUNCTION_24();
  v1[12] = v2;
  v1[13] = v0;
  v1[14] = sub_1E4206434();
  v1[15] = sub_1E4206424();
  v3 = swift_task_alloc();
  v1[16] = v3;
  *v3 = v1;
  v3[1] = sub_1E3DBB20C;

  return sub_1E3DBCC24();
}

uint64_t sub_1E3DBB20C()
{
  OUTLINED_FUNCTION_24();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v4 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3DBB33C, v4, v3);
}

uint64_t sub_1E3DBB33C()
{

  v1 = sub_1E41FFC94();
  v2 = sub_1E4206814();
  if (OUTLINED_FUNCTION_104(v2))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_3_12(&dword_1E323F000, v3, v4, "Continuing after metadata required to fetch timed metadata payload is loaded");
    OUTLINED_FUNCTION_6_0();
  }

  if (OUTLINED_FUNCTION_21_88())
  {
    ObjectType = swift_getObjectType();
    v6 = *MEMORY[0x1E69D5BF0];
    v7 = MEMORY[0x1E69E6158];
    sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]);
    sub_1E4123590(v6, v7, v0 + 16);
    swift_unknownObjectRelease();
  }

  if (OUTLINED_FUNCTION_21_88())
  {
    v8 = swift_getObjectType();
    v9 = *MEMORY[0x1E69D5DA8];
    v10 = MEMORY[0x1E69E6158];
    sub_1E4123588(v8, MEMORY[0x1E69E6158]);
    sub_1E4123590(v9, v10, v0 + 32);
    swift_unknownObjectRelease();
  }

  if (OUTLINED_FUNCTION_21_88())
  {
    v11 = swift_getObjectType();
    sub_1E4123588(v11, MEMORY[0x1E69E63B0]);
    OUTLINED_FUNCTION_28_67(v0 + 80);
    swift_unknownObjectRelease();
  }

  if (OUTLINED_FUNCTION_21_88())
  {
    v12 = swift_getObjectType();
    sub_1E4123588(v12, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_28_67(v0 + 48);
    swift_unknownObjectRelease();
  }

  if (OUTLINED_FUNCTION_21_88())
  {
    v13 = swift_getObjectType();
    v14 = *MEMORY[0x1E69D5CD8];
    v15 = MEMORY[0x1E69E6158];
    sub_1E4123588(v13, MEMORY[0x1E69E6158]);
    sub_1E4123590(v14, v15, v0 + 64);
    swift_unknownObjectRelease();
  }

  sub_1E41FEE54();
  v16 = *(v0 + 8);

  return v16();
}

void sub_1E3DBB670(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = qword_1EE237E38;
  OUTLINED_FUNCTION_5_0();
  sub_1E3294F34(v2 + v6, &v25);
  if (*(&v26 + 1))
  {
    sub_1E329504C(&v25, &aBlock);
    v7 = *(v2 + _MergedGlobals_81);
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v22 + 1));
    [v7 removeBoundaryTimeObserverWithToken_];
    swift_unknownObjectRelease();
    v25 = 0u;
    v26 = 0u;
    OUTLINED_FUNCTION_11_3();
    sub_1E37EB5D0(&v25, v3 + v6);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    sub_1E325F6F0(&v25, &unk_1ECF296E0);
  }

  v8 = v3 + qword_1EE237E58;
  *v8 = a1;
  *(v8 + 8) = a2 & 1;
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();
  v11 = OUTLINED_FUNCTION_104(v10);
  if (a2)
  {
    if (v11)
    {
      v12 = OUTLINED_FUNCTION_125_0();
      *v12 = 0;
      _os_log_impl(&dword_1E323F000, v9, v10, "Not scheduling next boundary time since next time is not available.", v12, 2u);
      OUTLINED_FUNCTION_6_0();
    }
  }

  else
  {
    if (v11)
    {
      v13 = OUTLINED_FUNCTION_6_21();
      *v13 = 134217984;
      *(v13 + 4) = a1;
      _os_log_impl(&dword_1E323F000, v9, v10, "Scheduling next boundary time for %f", v13, 0xCu);
      OUTLINED_FUNCTION_6_0();
    }

    v14 = *(v3 + _MergedGlobals_81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1E4297BE0;
    *(v15 + 56) = MEMORY[0x1E69E63B0];
    *(v15 + 32) = a1;
    OUTLINED_FUNCTION_4_0();
    v16 = swift_allocObject();
    OUTLINED_FUNCTION_31_3();
    v23 = sub_1E3DBDC50;
    v24 = v16;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v22 = sub_1E37EB82C;
    *(&v22 + 1) = &block_descriptor_112;
    v17 = _Block_copy(&aBlock);

    v18 = OUTLINED_FUNCTION_74();
    v20 = sub_1E37F9910(v18, v19, v14);
    _Block_release(v17);
    if (v20)
    {
      sub_1E4207264();
      swift_unknownObjectRelease();
    }

    else
    {
      aBlock = 0u;
      v22 = 0u;
    }

    OUTLINED_FUNCTION_11_3();
    sub_1E37EB5D0(&aBlock, v3 + v6);
    swift_endAccess();
  }
}

id sub_1E3DBB970(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1E39C8E64(a1, a2);
  v6 = sub_1E41FFC94();
  v7 = sub_1E4206814();
  v8 = OUTLINED_FUNCTION_74();
  sub_1E38DCE1C(v8, v9);
  if (os_log_type_enabled(v6, v7))
  {
    v10 = OUTLINED_FUNCTION_6_21();
    v11 = OUTLINED_FUNCTION_100();
    v34 = v11;
    *v10 = 136315138;
    if (a2 >> 60 == 15)
    {
      OUTLINED_FUNCTION_26_87();
    }

    else
    {
      v12 = MEMORY[0x1E6969080];
      v13 = a1;
      v14 = a2;
    }

    v31 = v13;
    v32 = v14;
    v33 = v12;
    v15 = OUTLINED_FUNCTION_74();
    sub_1E39C8E64(v15, v16);
    v17 = sub_1E3294FA4(&v31);
    v19 = sub_1E3270FC8(v17, v18, &v34);

    *(v10 + 4) = v19;
    OUTLINED_FUNCTION_35_8();
    _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_0();
  }

  result = [*(v3 + _MergedGlobals_81) currentMediaItem];
  if (result)
  {
    ObjectType = swift_getObjectType();
    v27 = *MEMORY[0x1E69D5BF0];
    v28 = MEMORY[0x1E69E6158];
    sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]);
    sub_1E4123590(v27, v28, &v31);
    swift_unknownObjectRelease();
    result = v32;
    if (v32)
    {

      sub_1E41FEF44();
      sub_1E41FEF54();
      v29 = OUTLINED_FUNCTION_74();
      return v30(v29);
    }
  }

  return result;
}

void sub_1E3DBBB50()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33A10);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v8 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_3_183();
  sub_1E3DBE174(v9, v10);
  sub_1E42007B4();

  (*(v2 + 8))(v6, v0);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_31_3();
  sub_1E32752B0(&qword_1EE28A2E0, &unk_1ECF33A10);
  sub_1E4200844();

  v11 = OUTLINED_FUNCTION_74();
  v12(v11);
  OUTLINED_FUNCTION_11_3();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DBBDD8()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E41FDF14();
    if (v19[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A150);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_23;
      }

      v2 = [*(v1 + _MergedGlobals_81) currentMediaItem];
      if (!v2)
      {

        goto LABEL_22;
      }

      v3 = v2;
      swift_getObjectType();
      if (([v3 isEqualToMediaItem_] & 1) == 0)
      {
LABEL_21:

        swift_unknownObjectRelease();
        goto LABEL_22;
      }

      v4 = sub_1E41FDF24();
      if (v4)
      {
        v5 = v4;
        v17 = sub_1E4205F14();
        v18 = v6;
        sub_1E4207414();
        sub_1E375D7E8(v19, v5, &v20);

        sub_1E375D84C(v19);
        if (*(&v21 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33A20);
          v7 = swift_dynamicCast();
          if (v7)
          {
            v8 = v19[0];
            v9 = *MEMORY[0x1E69D5BE8];
            v19[0] = *MEMORY[0x1E69D5BE8];
            MEMORY[0x1EEE9AC00](v7);
            v16 = v19;
            v10 = sub_1E3B42F1C(sub_1E3B44AE0, v15, v8);
            if (v10)
            {

LABEL_20:
              v13 = OUTLINED_FUNCTION_18();
              sub_1E4123650(v9, v13 & 1);
              v14 = OUTLINED_FUNCTION_18();
              sub_1E4123650(@"VUIMediaItemMetadataKeyIsEligibleForTimedMetadata", v14 & 1);
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              goto LABEL_23;
            }

            v19[0] = @"VUIMediaItemMetadataKeyIsEligibleForTimedMetadata";
            MEMORY[0x1EEE9AC00](v10);
            v16 = v19;
            v12 = sub_1E3B42F1C(sub_1E3DBE1C0, v15, v8);

            if (v12)
            {
              goto LABEL_20;
            }

            goto LABEL_21;
          }

          swift_unknownObjectRelease();

LABEL_22:
          swift_unknownObjectRelease();
          goto LABEL_23;
        }

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v20 = 0u;
        v21 = 0u;
      }

      v11 = &v20;
    }

    else
    {

      v11 = v19;
    }

    sub_1E325F6F0(v11, &unk_1ECF296E0);
  }

LABEL_23:
  OUTLINED_FUNCTION_25_2();
}