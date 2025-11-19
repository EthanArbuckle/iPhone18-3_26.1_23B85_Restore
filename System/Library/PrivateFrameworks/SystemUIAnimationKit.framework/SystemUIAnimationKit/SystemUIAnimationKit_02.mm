void sub_26C5F9A44(uint64_t a1, void *a2)
{
  v3 = sub_26C614F88();
  v4 = sub_26C614E38();
  [a2 setValue:v3 forKeyPath:v4];
}

void sub_26C5F9AC8(uint64_t a1, void *a2)
{
  v3 = sub_26C614F88();
  v4 = sub_26C614E38();
  [a2 setValue:v3 forKeyPath:v4];
}

void sub_26C5F9B4C(uint64_t a1, void *a2)
{
  v3 = sub_26C614F88();
  v4 = sub_26C614E38();
  [a2 setValue:v3 forKeyPath:v4];
}

void sub_26C5F9BD0(__int128 *a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 0xFF0000) != 0x20000)
  {
    v8 = *(a1 + 9);
    v9 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_fillLightView;
    v10 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_fillLightView];
    if (v10)
    {
      v11 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_fillLightView];
LABEL_13:
      v37 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_fillLightMaskView;
      v38 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_fillLightMaskView];
      v39 = v10;
      if (v38)
      {
        goto LABEL_16;
      }

      [v11 bounds];
      v44 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_mainMaskView];
      if (v44)
      {
        v45 = v40;
        v46 = v41;
        v47 = v42;
        v48 = v43;
        v49 = objc_allocWithZone(MEMORY[0x277D76180]);
        v50 = v44;
        v51 = [v49 initWithFrame_];
        [v51 setMatchesPosition_];
        [v51 setMatchesAlpha_];
        [v51 setMatchesTransform_];
        [v51 setSourceView_];
        [v51 setHidesSourceView_];

        v52 = *&v2[v37];
        *&v2[v37] = v51;
        v53 = v51;

        [v11 setMaskView_];
LABEL_16:
        v54 = v11;
        v55 = [v54 layer];
        v56 = sub_26C614DE8();
        v57 = sub_26C614E38();
        [v55 setValue:v56 forKeyPath:v57];

        v58 = [v54 layer];
        v59 = sub_26C614DE8();
        v60 = sub_26C614E38();
        [v58 setValue:v59 forKeyPath:v60];

        v61 = swift_allocObject();
        *(v61 + 16) = v54;
        swift_beginAccess();
        atomic_fetch_add_explicit((a2 + 48), 1uLL, memory_order_relaxed);
        swift_endAccess();
        v62 = *(a2 + 48);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = *(a2 + 40);
        *(a2 + 40) = 0x8000000000000000;
        sub_26C6004D4(0x6168706C61, 0xE500000000000000, v62, isUniquelyReferenced_nonNull_native);
        *(a2 + 40) = aBlock;
        swift_endAccess();
        v64 = swift_allocObject();
        *(v64 + 16) = a2;
        *(v64 + 24) = v62;
        v65 = swift_allocObject();
        *(v65 + 16) = sub_26C604118;
        *(v65 + 24) = v61;
        v66 = a1[1];
        *(v65 + 32) = *a1;
        *(v65 + 48) = v66;
        v67 = a1[3];
        *(v65 + 64) = a1[2];
        *(v65 + 80) = v67;
        *(v65 + 96) = v3;
        *(v65 + 98) = BYTE2(v3);
        *(v65 + 103) = HIBYTE(v3);
        *(v65 + 99) = v3 >> 24;
        *(v65 + 104) = v8;
        if ((v3 & 0x100) != 0)
        {
          v74 = objc_opt_self();
          *&v88 = sub_26C60411C;
          *(&v88 + 1) = v65;
          *&v86 = MEMORY[0x277D85DD0];
          *(&v86 + 1) = 1107296256;
          *&v87 = sub_26C5F35E4;
          *(&v87 + 1) = &block_descriptor_334;
          v75 = _Block_copy(&v86);

          [v74 _performWithoutRetargetingAnimations_];
          _Block_release(v75);
          sub_26C60B2E0(0, a2, v62);
        }

        else
        {
          v68 = a1[1];
          v86 = *a1;
          v87 = v68;
          v69 = a1[3];
          v88 = a1[2];
          v89 = v69;
          v90 = v3;
          type metadata accessor for SUIAFluidBehaviorSettings(0);

          v70 = sub_26C5ED068(&v86);
          v84 = sub_26C60411C;
          v85 = v65;
          v79 = objc_opt_self();
          aBlock = MEMORY[0x277D85DD0];
          v81 = 1107296256;
          v82 = sub_26C5F35E4;
          v83 = &block_descriptor_337;
          v71 = _Block_copy(&aBlock);
          v72 = v70;

          v84 = sub_26C604110;
          v85 = v64;
          aBlock = MEMORY[0x277D85DD0];
          v81 = 1107296256;
          v82 = sub_26C5F3628;
          v83 = &block_descriptor_340;
          v73 = _Block_copy(&aBlock);

          [v79 _animateUsingSpringBehavior_tracking_animations_completion_];

          _Block_release(v73);
          _Block_release(v71);
        }

        return;
      }

LABEL_22:
      sub_26C6150B8();
      __break(1u);
      return;
    }

    v78 = *(a1 + 8);
    v12 = [v2 view];
    if (v12)
    {
      v13 = v12;
      [v12 bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v22 = [objc_allocWithZone(type metadata accessor for ShockwaveIntelligenceSystemLightView()) initWithFrame:0 preferringAudioReactivity:{v15, v17, v19, v21}];
      v23 = *&v2[v9];
      *&v2[v9] = v22;
      v11 = v22;

      v24 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
      v25 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) byte_279D40178];
      v26 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) byte_279D40178];
      v27 = [v11 layer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55A0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_26C61A0E0;
      v29 = sub_26C5CC548(0, &qword_2804A55A8);
      *(v28 + 32) = v24;
      *(v28 + 56) = v29;
      *(v28 + 64) = v25;
      *(v28 + 120) = v29;
      *(v28 + 88) = v29;
      *(v28 + 96) = v26;
      v76 = v24;
      v30 = v25;
      v31 = v26;
      v32 = sub_26C614EB8();

      [v27 setFilters_];

      v33 = [v11 layer];
      v34 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
      [v33 setCompositingFilter_];

      v35 = [v2 view];
      if (v35)
      {
        v36 = v35;
        [v35 addSubview_];

        v10 = 0;
        v3 = v78;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  v4 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_fillLightView];
  if (v4)
  {
    *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_fillLightView] = 0;
    [v4 removeFromSuperview];
  }

  v5 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_fillLightMaskView];
  if (v5)
  {
    *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_fillLightMaskView] = 0;
    v77 = v5;
    [v5 removeFromSuperview];
  }
}

void sub_26C5FA54C(const void *a1, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v4 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_50;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  memcpy(__dst, a1, sizeof(__dst));
  if (sub_26C6037AC(__dst) == 1 && *(a2 + 66) << 16 == 0x20000)
  {
    v18 = *&v4[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_mainMaskView];
    if (v18)
    {
      *&v4[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_mainMaskView] = 0;
      [v18 removeFromSuperview];
    }

    goto LABEL_14;
  }

  v19 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_mainMaskView;
  if (!*&v4[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_mainMaskView])
  {
    v20 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v21 = [v20 layer];
    [v21 setShouldRasterize_];

    v22 = *&v4[v19];
    *&v4[v19] = v20;
    v23 = v20;

    v24 = [v4 view];
    if (v24)
    {
      v25 = v24;
      [v24 insertSubview:v23 atIndex:0];

      goto LABEL_9;
    }

LABEL_50:
    __break(1u);
    return;
  }

LABEL_9:
  memcpy(v209, a1, sizeof(v209));
  if (sub_26C6037AC(v209) != 1)
  {
    v230 = v209[2];
    v231 = v209[3];
    v232 = v209[4];
    v228 = v209[0];
    v229 = v209[1];
    v227[0] = *(&v209[4] + 3);
    *(v227 + 5) = *(&v209[4] + 1);
    v26 = BYTE1(v209[9]);
    v27 = BYTE2(v209[9]);
    v28 = *(&v209[9] + 1);
    v30 = v209[10];
    v29 = *&v209[11];
    v226 = BYTE8(v209[15]);
    v224 = *(&v209[13] + 8);
    v225 = *(&v209[14] + 8);
    v222 = *(&v209[11] + 8);
    v223 = *(&v209[12] + 8);
    v221 = HIBYTE(v209[15]);
    v220 = *(&v209[15] + 11);
    v31 = v209[16];
    v210 = v209[17];
    v211 = v209[18];
    v214 = v209[21];
    v215 = v209[22];
    v212 = v209[19];
    v213 = v209[20];
    v218 = v209[25];
    v219 = v209[26];
    v216 = v209[23];
    v217 = v209[24];
    v196 = *&v4[v19];
    if (v196)
    {
      v186 = BYTE1(v209[4]);
      v188 = BYTE2(v209[4]);
      v187 = a2;
      v32 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_circleMaskView;
      v33 = *&v4[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_circleMaskView];
      if (v33)
      {
        v182 = BYTE9(v209[15]);
        v191 = BYTE10(v209[15]);
        v236 = v209[7];
        v237 = v209[8];
        v238 = v209[9];
        v235 = v209[6];
        v234 = v209[5];
        LODWORD(v249) = *(&v209[9] + 3);
        BYTE4(v249) = BYTE7(v209[9]);
        v34 = swift_allocObject();
        *(v34 + 16) = v33;
        swift_beginAccess();
        v179 = v33;
        v35 = v196;
        atomic_fetch_add_explicit((a3 + 48), 1uLL, memory_order_relaxed);
        swift_endAccess();
        v36 = *(a3 + 48);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v254 = *(a3 + 40);
        *(a3 + 40) = 0x8000000000000000;
        sub_26C6004D4(0xD000000000000012, 0x800000026C621410, v36, isUniquelyReferenced_nonNull_native);
        *(a3 + 40) = v254;
        swift_endAccess();
        v38 = swift_allocObject();
        *(v38 + 16) = a3;
        *(v38 + 24) = v36;
        v39 = swift_allocObject();
        *(v39 + 16) = sub_26C604208;
        *(v39 + 24) = v34;
        v40 = v237;
        *(v39 + 64) = v236;
        *(v39 + 80) = v40;
        *(v39 + 96) = v238;
        v41 = v235;
        *(v39 + 32) = v234;
        *(v39 + 48) = v41;
        *(v39 + 97) = v26;
        *(v39 + 98) = v27;
        *(v39 + 99) = v249;
        *(v39 + 103) = BYTE4(v249);
        *(v39 + 104) = v28;
        *(v39 + 112) = v30;
        *(v39 + 128) = v29;
        if (v26)
        {
          v42 = objc_opt_self();
          *&v241 = sub_26C604120;
          *(&v241 + 1) = v39;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v240 = sub_26C5F35E4;
          *(&v240 + 1) = &block_descriptor_294;
          v43 = _Block_copy(&aBlock);

          [v42 _performWithoutRetargetingAnimations_];
          _Block_release(v43);
          sub_26C60B2E0(0, a3, v36);
        }

        else
        {
          v277[2] = v236;
          v277[3] = v237;
          v278 = v238;
          v277[0] = v234;
          v277[1] = v235;
          type metadata accessor for SUIAFluidBehaviorSettings(0);

          v50 = sub_26C5ED068(v277);
          v178 = objc_opt_self();
          *&v241 = sub_26C604120;
          *(&v241 + 1) = v39;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v240 = sub_26C5F35E4;
          *(&v240 + 1) = &block_descriptor_317;
          v51 = _Block_copy(&aBlock);
          v52 = v50;

          *&v241 = sub_26C604110;
          *(&v241 + 1) = v38;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v240 = sub_26C5F3628;
          *(&v240 + 1) = &block_descriptor_320;
          v53 = _Block_copy(&aBlock);

          [v178 _animateUsingSpringBehavior_tracking_animations_completion_];

          _Block_release(v53);
          _Block_release(v51);
        }

        v54 = swift_allocObject();
        *(v54 + 16) = v179;
        swift_beginAccess();
        v180 = v179;
        atomic_fetch_add_explicit((a3 + 48), 1uLL, memory_order_relaxed);
        swift_endAccess();
        v55 = *(a3 + 48);
        swift_beginAccess();
        v56 = swift_isUniquelyReferenced_nonNull_native();
        *&v254 = *(a3 + 40);
        *(a3 + 40) = 0x8000000000000000;
        sub_26C6004D4(0xD000000000000014, 0x800000026C621430, v55, v56);
        *(a3 + 40) = v254;
        swift_endAccess();
        v57 = swift_allocObject();
        *(v57 + 16) = a3;
        *(v57 + 24) = v55;
        v58 = swift_allocObject();
        *(v58 + 16) = sub_26C604210;
        *(v58 + 24) = v54;
        v59 = v225;
        *(v58 + 64) = v224;
        *(v58 + 80) = v59;
        *(v58 + 96) = v226;
        v60 = v223;
        *(v58 + 32) = v222;
        *(v58 + 48) = v60;
        *(v58 + 97) = v182;
        *(v58 + 98) = v191;
        *(v58 + 99) = v220;
        *(v58 + 103) = v221;
        *(v58 + 104) = v31;
        if (v182)
        {
          v61 = objc_opt_self();
          *&v241 = sub_26C604124;
          *(&v241 + 1) = v58;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v240 = sub_26C5F35E4;
          *(&v240 + 1) = &block_descriptor_308;
          v62 = _Block_copy(&aBlock);

          [v61 _performWithoutRetargetingAnimations_];
          _Block_release(v62);
          sub_26C60B2E0(0, a3, v55);
        }

        else
        {
          v275[2] = v224;
          v275[3] = v225;
          v276 = v226;
          v275[1] = v223;
          v275[0] = v222;
          type metadata accessor for SUIAFluidBehaviorSettings(0);

          v63 = sub_26C5ED068(v275);
          v183 = objc_opt_self();
          *&v241 = sub_26C604124;
          *(&v241 + 1) = v58;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v240 = sub_26C5F35E4;
          *(&v240 + 1) = &block_descriptor_311;
          v64 = _Block_copy(&aBlock);
          v65 = v63;

          *&v241 = sub_26C604110;
          *(&v241 + 1) = v57;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v240 = sub_26C5F3628;
          *(&v240 + 1) = &block_descriptor_314;
          v66 = _Block_copy(&aBlock);

          [v183 _animateUsingSpringBehavior_tracking_animations_completion_];

          _Block_release(v66);
          _Block_release(v64);
        }

        v49 = v180;
      }

      else
      {
        v45 = objc_allocWithZone(SUIARadialGradientView);
        v46 = v196;
        v47 = [v45 initWithFrame_];
        v48 = *&v4[v32];
        *&v4[v32] = v47;
        v49 = v47;

        [v46 setMaskView_];
      }

      v245 = v216;
      v246 = v217;
      v247 = v218;
      v248 = v219;
      v241 = v212;
      v242 = v213;
      v243 = v214;
      v244 = v215;
      aBlock = v210;
      v240 = v211;
      v256 = v212;
      v257 = v213;
      v258 = v214;
      v255 = v211;
      v254 = v210;
      v67 = swift_allocObject();
      *(v67 + 16) = v49;
      swift_beginAccess();
      v68 = v49;
      atomic_fetch_add_explicit((a3 + 48), 1uLL, memory_order_relaxed);
      swift_endAccess();
      v69 = *(a3 + 48);
      swift_beginAccess();
      v70 = swift_isUniquelyReferenced_nonNull_native();
      *&v198 = *(a3 + 40);
      *(a3 + 40) = 0x8000000000000000;
      sub_26C6004D4(0xD00000000000001ELL, 0x800000026C6213D0, v69, v70);
      *(a3 + 40) = v198;
      swift_endAccess();
      v71 = swift_allocObject();
      *(v71 + 16) = a3;
      *(v71 + 24) = v69;
      v72 = BYTE1(v258);
      v73 = BYTE2(v258);
      v74 = swift_allocObject();
      *(v74 + 16) = sub_26C6037CC;
      *(v74 + 24) = v67;
      v75 = v257;
      *(v74 + 64) = v256;
      *(v74 + 80) = v75;
      *(v74 + 96) = v258;
      v76 = v255;
      *(v74 + 32) = v254;
      *(v74 + 48) = v76;
      if (v72)
      {
        v77 = objc_opt_self();
        *&v200 = sub_26C6035BC;
        *(&v200 + 1) = v74;
        *&v198 = MEMORY[0x277D85DD0];
        *(&v198 + 1) = 1107296256;
        *&v199 = sub_26C5F35E4;
        *(&v199 + 1) = &block_descriptor_235;
        v78 = _Block_copy(&v198);

        sub_26C603C78(&v254, &v249, &qword_2804A55C0);

        [v77 _performWithoutRetargetingAnimations_];
        _Block_release(v78);
        sub_26C60B2E0(0, a3, v69);
      }

      else
      {
        v273[2] = v256;
        v273[3] = v257;
        v274 = v258;
        v273[1] = v255;
        v273[0] = v254;
        type metadata accessor for SUIAFluidBehaviorSettings(0);

        sub_26C603C78(&v254, &v249, &qword_2804A55C0);
        v79 = sub_26C5ED068(v273);
        v181 = objc_opt_self();
        *&v251 = sub_26C6035BC;
        *(&v251 + 1) = v74;
        *&v249 = MEMORY[0x277D85DD0];
        *(&v249 + 1) = 1107296256;
        *&v250 = sub_26C5F35E4;
        *(&v250 + 1) = &block_descriptor_277;
        v80 = _Block_copy(&v249);
        v184 = v68;
        v81 = v79;

        *&v251 = sub_26C604110;
        *(&v251 + 1) = v71;
        *&v249 = MEMORY[0x277D85DD0];
        *(&v249 + 1) = 1107296256;
        *&v250 = sub_26C5F3628;
        *(&v250 + 1) = &block_descriptor_280;
        v82 = _Block_copy(&v249);

        [v181 _animateUsingSpringBehavior_tracking_animations_completion_];

        v83 = v82;
        v68 = v184;
        _Block_release(v83);
        _Block_release(v80);
      }

      v251 = v246;
      v252 = v247;
      v253 = v248;
      v250 = v245;
      v249 = v244;
      v84 = swift_allocObject();
      *(v84 + 16) = v68;
      swift_beginAccess();
      v44 = v68;
      atomic_fetch_add_explicit((a3 + 48), 1uLL, memory_order_relaxed);
      swift_endAccess();
      v85 = *(a3 + 48);
      swift_beginAccess();
      v86 = swift_isUniquelyReferenced_nonNull_native();
      *&v268 = *(a3 + 40);
      *(a3 + 40) = 0x8000000000000000;
      sub_26C6004D4(0xD00000000000001BLL, 0x800000026C6213B0, v85, v86);
      *(a3 + 40) = v268;
      swift_endAccess();
      v87 = swift_allocObject();
      *(v87 + 16) = a3;
      *(v87 + 24) = v85;
      v88 = BYTE1(v253);
      v89 = BYTE2(v253);
      v90 = swift_allocObject();
      *(v90 + 16) = sub_26C6037D4;
      *(v90 + 24) = v84;
      v91 = v252;
      *(v90 + 64) = v251;
      *(v90 + 80) = v91;
      *(v90 + 96) = v253;
      v92 = v250;
      *(v90 + 32) = v249;
      *(v90 + 48) = v92;
      if (v88)
      {
        v93 = objc_opt_self();
        *&v270 = sub_26C60411C;
        *(&v270 + 1) = v90;
        *&v268 = MEMORY[0x277D85DD0];
        *(&v268 + 1) = 1107296256;
        *&v269 = sub_26C5F35E4;
        *(&v269 + 1) = &block_descriptor_248;
        v94 = _Block_copy(&v268);

        sub_26C603C78(&v249, &v198, &qword_2804A55C8);

        [v93 _performWithoutRetargetingAnimations_];
        _Block_release(v94);
        sub_26C60B2E0(0, a3, v85);
      }

      else
      {
        v270 = v251;
        v271 = v252;
        v272 = v253;
        v269 = v250;
        v268 = v249;
        type metadata accessor for SUIAFluidBehaviorSettings(0);

        sub_26C603C78(&v249, &v198, &qword_2804A55C8);
        v95 = sub_26C5ED068(&v268);
        v185 = objc_opt_self();
        *&v200 = sub_26C60411C;
        *(&v200 + 1) = v90;
        *&v198 = MEMORY[0x277D85DD0];
        *(&v198 + 1) = 1107296256;
        *&v199 = sub_26C5F35E4;
        *(&v199 + 1) = &block_descriptor_271;
        v96 = _Block_copy(&v198);
        v97 = v95;

        *&v200 = sub_26C604110;
        *(&v200 + 1) = v87;
        *&v198 = MEMORY[0x277D85DD0];
        *(&v198 + 1) = 1107296256;
        *&v199 = sub_26C5F3628;
        *(&v199 + 1) = &block_descriptor_274;
        v98 = _Block_copy(&v198);

        [v185 _animateUsingSpringBehavior_tracking_animations_completion_];

        _Block_release(v98);
        _Block_release(v96);
      }

      v99 = swift_allocObject();
      *(v99 + 16) = v44;
      swift_beginAccess();
      atomic_fetch_add_explicit((a3 + 48), 1uLL, memory_order_relaxed);
      swift_endAccess();
      v100 = *(a3 + 48);
      swift_beginAccess();
      v101 = swift_isUniquelyReferenced_nonNull_native();
      *&v263 = *(a3 + 40);
      *(a3 + 40) = 0x8000000000000000;
      sub_26C6004D4(0xD000000000000015, 0x800000026C6213F0, v100, v101);
      *(a3 + 40) = v263;
      swift_endAccess();
      v102 = swift_allocObject();
      *(v102 + 16) = a3;
      *(v102 + 24) = v100;
      v103 = swift_allocObject();
      *(v103 + 16) = sub_26C60381C;
      *(v103 + 24) = v99;
      v104 = v231;
      *(v103 + 64) = v230;
      *(v103 + 80) = v104;
      *(v103 + 96) = v232;
      v105 = v229;
      *(v103 + 32) = v228;
      *(v103 + 48) = v105;
      *(v103 + 97) = v186;
      *(v103 + 98) = v188;
      *(v103 + 99) = v227[0];
      *(v103 + 104) = *(v227 + 5);
      if (v186)
      {
        v106 = objc_opt_self();
        *&v200 = sub_26C60411C;
        *(&v200 + 1) = v103;
        *&v198 = MEMORY[0x277D85DD0];
        *(&v198 + 1) = 1107296256;
        *&v199 = sub_26C5F35E4;
        *(&v199 + 1) = &block_descriptor_262;
        v107 = _Block_copy(&v198);

        [v106 _performWithoutRetargetingAnimations_];
        _Block_release(v107);
        sub_26C60B2E0(0, a3, v100);

        v108 = v196;
      }

      else
      {
        v200 = v230;
        v201 = v231;
        v202 = v232;
        v198 = v228;
        v199 = v229;
        type metadata accessor for SUIAFluidBehaviorSettings(0);

        v109 = sub_26C5ED068(&v198);
        v192 = objc_opt_self();
        *&v265 = sub_26C60411C;
        *(&v265 + 1) = v103;
        *&v263 = MEMORY[0x277D85DD0];
        *(&v263 + 1) = 1107296256;
        *&v264 = sub_26C5F35E4;
        *(&v264 + 1) = &block_descriptor_265;
        v110 = _Block_copy(&v263);
        v108 = v109;

        *&v265 = sub_26C604110;
        *(&v265 + 1) = v102;
        *&v263 = MEMORY[0x277D85DD0];
        *(&v263 + 1) = 1107296256;
        *&v264 = sub_26C5F3628;
        *(&v264 + 1) = &block_descriptor_268;
        v111 = _Block_copy(&v263);

        [v192 _animateUsingSpringBehavior_tracking_animations_completion_];

        _Block_release(v111);
        _Block_release(v110);
        v44 = v108;
      }

      a2 = v187;
      goto LABEL_32;
    }
  }

LABEL_14:
  v44 = *&v4[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_circleMaskView];
  if (v44)
  {
    *&v4[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_circleMaskView] = 0;
    [v44 removeFromSuperview];
LABEL_32:
  }

  v112 = *(a2 + 8);
  if ((v112 & 0xFF0000) == 0x20000 || (v113 = *&v4[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_mainMaskView]) == 0)
  {
    v121 = *&v4[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_depthDistanceFieldImageView];
    if (!v121)
    {
      return;
    }

    *&v4[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_depthDistanceFieldImageView] = 0;
    [v121 removeFromSuperview];
  }

  else
  {
    v114 = *(a2 + 9);
    v115 = a2[1];
    v259 = *a2;
    v260 = v115;
    v116 = a2[3];
    v261 = a2[2];
    v262 = v116;
    v117 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_depthDistanceFieldImageView;
    v118 = *&v4[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_depthDistanceFieldImageView];
    v197 = v113;
    if (v118)
    {
      v119 = v113;
      v120 = v118;
    }

    else
    {
      v189 = v112;
      v193 = v113;
      [v193 bounds];
      v126 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
      v127 = *&v4[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_imageMode];
      v128 = v126;
      [v128 setContentMode_];
      v129 = &v4[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_imageConfiguration];
      swift_beginAccess();
      v130 = *v129;
      v131 = *(v129 + 1);
      if (*v129)
      {
        v132 = v131;
      }

      else
      {
        v132 = 0;
      }

      sub_26C6026C0(v130, v131);
      sub_26C602700(v130, v131);
      [v128 setImage_];

      v133 = *&v4[v117];
      *&v4[v117] = v128;
      v120 = v128;

      v134 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
      v135 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
      v136 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
      v137 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
      v138 = sub_26C614E38();
      v139 = sub_26C614E38();
      [v137 setValue:v138 forKey:v139];

      v140 = [objc_opt_self() whiteColor];
      v141 = [v140 CGColor];

      v142 = sub_26C614E38();
      [v137 setValue:v141 forKey:v142];

      v143 = [v120 layer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55A0);
      v144 = swift_allocObject();
      *(v144 + 16) = xmmword_26C61A0A0;
      v145 = sub_26C5CC548(0, &qword_2804A55A8);
      *(v144 + 32) = v134;
      *(v144 + 56) = v145;
      *(v144 + 64) = v135;
      *(v144 + 88) = v145;
      *(v144 + 96) = v136;
      *(v144 + 152) = v145;
      *(v144 + 120) = v145;
      *(v144 + 128) = v137;
      v146 = v134;
      v147 = v135;
      v148 = v136;
      v149 = v137;
      v150 = sub_26C614EB8();

      [v143 setFilters_];

      [v193 addSubview_];
      v118 = 0;
      v112 = v189;
    }

    v190 = v112 >> 16;
    v194 = (v112 >> 24);
    v151 = v118;
    v152 = v112;
    v121 = v120;
    v153 = [v121 layer];
    v154 = sub_26C614DE8();
    v155 = sub_26C614E38();
    [v153 setValue:v154 forKeyPath:v155];

    v156 = [v121 layer];
    v157 = sub_26C614DE8();
    v158 = sub_26C614E38();
    [v156 setValue:v157 forKeyPath:v158];

    v159 = [v121 layer];
    v160 = sub_26C614DE8();
    v161 = sub_26C614E38();
    [v159 setValue:v160 forKeyPath:v161];

    v162 = [v121 layer];
    v163 = sub_26C614DE8();
    v164 = sub_26C614E38();
    [v162 setValue:v163 forKeyPath:v164];

    v165 = swift_allocObject();
    *(v165 + 16) = v121;
    swift_beginAccess();
    atomic_fetch_add_explicit((a3 + 48), 1uLL, memory_order_relaxed);
    swift_endAccess();
    v166 = *(a3 + 48);
    swift_beginAccess();
    v167 = swift_isUniquelyReferenced_nonNull_native();
    v203 = *(a3 + 40);
    *(a3 + 40) = 0x8000000000000000;
    sub_26C6004D4(0xD00000000000001BLL, 0x800000026C6213B0, v166, v167);
    *(a3 + 40) = v203;
    swift_endAccess();
    v168 = swift_allocObject();
    *(v168 + 16) = a3;
    *(v168 + 24) = v166;
    v169 = swift_allocObject();
    *(v169 + 16) = sub_26C6037C4;
    *(v169 + 24) = v165;
    v170 = v260;
    *(v169 + 32) = v259;
    *(v169 + 48) = v170;
    v171 = v262;
    *(v169 + 64) = v261;
    *(v169 + 80) = v171;
    *(v169 + 96) = v152;
    *(v169 + 98) = v190;
    *(v169 + 103) = HIBYTE(v152);
    *(v169 + 99) = v194;
    *(v169 + 104) = v114;
    if ((v152 & 0x100) != 0)
    {
      v176 = objc_opt_self();
      *&v265 = sub_26C60411C;
      *(&v265 + 1) = v169;
      *&v263 = MEMORY[0x277D85DD0];
      *(&v263 + 1) = 1107296256;
      *&v264 = sub_26C5F35E4;
      *(&v264 + 1) = &block_descriptor_216;
      v177 = _Block_copy(&v263);

      [v176 _performWithoutRetargetingAnimations_];
      _Block_release(v177);
      sub_26C60B2E0(0, a3, v166);

      v174 = v197;
    }

    else
    {
      v263 = v259;
      v264 = v260;
      v265 = v261;
      v266 = v262;
      v267 = v152;
      type metadata accessor for SUIAFluidBehaviorSettings(0);

      v172 = sub_26C5ED068(&v263);
      v195 = objc_opt_self();
      v207 = sub_26C60411C;
      v208 = v169;
      v203 = MEMORY[0x277D85DD0];
      v204 = 1107296256;
      v205 = sub_26C5F35E4;
      v206 = &block_descriptor_219;
      v173 = _Block_copy(&v203);
      v174 = v172;

      v207 = sub_26C604110;
      v208 = v168;
      v203 = MEMORY[0x277D85DD0];
      v204 = 1107296256;
      v205 = sub_26C5F3628;
      v206 = &block_descriptor_222;
      v175 = _Block_copy(&v203);

      [v195 _animateUsingSpringBehavior_tracking_animations_completion_];

      _Block_release(v175);
      _Block_release(v173);
      v121 = v174;
    }
  }
}

void sub_26C5FC664(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    sub_26C615078();
    v5 = v3 + 32;
    do
    {
      v5 += 8;
      sub_26C614DE8();
      sub_26C615058();
      sub_26C615088();
      sub_26C615098();
      sub_26C615068();
      --v4;
    }

    while (v4);
  }

  sub_26C5CC548(0, &unk_28125E420);
  v6 = sub_26C614EB8();

  [a2 setLocations_];
}

void sub_26C5FC768(uint64_t a1, void *a2)
{
  sub_26C5CC548(0, &qword_28125E430);
  v3 = sub_26C614EB8();
  [a2 setColors_];
}

void sub_26C5FC7E4(int a1, id a2)
{
  v2 = [a2 layer];
  v3 = sub_26C614DE8();
  v4 = sub_26C614E38();
  [v2 setValue:v3 forKeyPath:v4];
}

void sub_26C5FC894(__int128 *a1, uint64_t a2)
{
  if ((a1[4] & 0xFF0000) != 0x20000)
  {
    v69 = *(a1 + 9);
    v71 = *(a1 + 8);
    v7 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_inverseBlurBackdropView;
    v8 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_inverseBlurBackdropView];
    if (v8)
    {
      v9 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_inverseBlurBackdropView];
LABEL_13:
      v31 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_inverseBlurMaskView;
      v32 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_inverseBlurMaskView];
      v33 = v8;
      if (v32)
      {
        goto LABEL_16;
      }

      [v9 bounds];
      v38 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_mainMaskView];
      if (v38)
      {
        v39 = v34;
        v40 = v35;
        v41 = v36;
        v42 = v37;
        v43 = objc_allocWithZone(MEMORY[0x277D76180]);
        v44 = v38;
        v45 = [v43 initWithFrame_];
        [v45 setMatchesPosition_];
        [v45 setMatchesAlpha_];
        [v45 setMatchesTransform_];
        [v45 setSourceView_];
        [v45 setHidesSourceView_];

        v46 = *&v2[v31];
        *&v2[v31] = v45;
        v47 = v45;

        [v9 setMaskView_];
LABEL_16:
        v48 = [v9 layer];
        objc_opt_self();
        v49 = swift_dynamicCastObjCClassUnconditional();
        v50 = swift_allocObject();
        *(v50 + 16) = v49;
        v68 = v9;
        swift_beginAccess();
        v66 = v48;
        atomic_fetch_add_explicit((a2 + 48), 1uLL, memory_order_relaxed);
        swift_endAccess();
        v51 = *(a2 + 48);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = *(a2 + 40);
        *(a2 + 40) = 0x8000000000000000;
        sub_26C6004D4(0xD000000000000013, 0x800000026C6212F0, v51, isUniquelyReferenced_nonNull_native);
        *(a2 + 40) = aBlock;
        swift_endAccess();
        v53 = swift_allocObject();
        *(v53 + 16) = a2;
        *(v53 + 24) = v51;
        v54 = swift_allocObject();
        *(v54 + 16) = sub_26C6037A4;
        *(v54 + 24) = v50;
        v55 = a1[1];
        *(v54 + 32) = *a1;
        *(v54 + 48) = v55;
        v56 = a1[3];
        *(v54 + 64) = a1[2];
        *(v54 + 80) = v56;
        *(v54 + 96) = v71;
        *(v54 + 98) = BYTE2(v71);
        *(v54 + 103) = HIBYTE(v71);
        *(v54 + 99) = v71 >> 24;
        *(v54 + 104) = v69;
        if ((v71 & 0x100) != 0)
        {
          v64 = objc_opt_self();
          *&v80 = sub_26C60411C;
          *(&v80 + 1) = v54;
          *&v78 = MEMORY[0x277D85DD0];
          *(&v78 + 1) = 1107296256;
          *&v79 = sub_26C5F35E4;
          *(&v79 + 1) = &block_descriptor_196;
          v65 = _Block_copy(&v78);

          [v64 _performWithoutRetargetingAnimations_];
          _Block_release(v65);
          sub_26C60B2E0(0, a2, v51);
        }

        else
        {
          v57 = a1[1];
          v78 = *a1;
          v79 = v57;
          v58 = a1[3];
          v80 = a1[2];
          v81 = v58;
          v82 = v71;
          type metadata accessor for SUIAFluidBehaviorSettings(0);

          v59 = sub_26C5ED068(&v78);
          v60 = objc_opt_self();
          v76 = sub_26C60411C;
          v77 = v54;
          aBlock = MEMORY[0x277D85DD0];
          v73 = 1107296256;
          v74 = sub_26C5F35E4;
          v75 = &block_descriptor_199;
          v61 = _Block_copy(&aBlock);
          v62 = v59;

          v76 = sub_26C604110;
          v77 = v53;
          aBlock = MEMORY[0x277D85DD0];
          v73 = 1107296256;
          v74 = sub_26C5F3628;
          v75 = &block_descriptor_202;
          v63 = _Block_copy(&aBlock);

          [v60 _animateUsingSpringBehavior_tracking_animations_completion_];

          _Block_release(v63);
          _Block_release(v61);
        }

        return;
      }

LABEL_22:
      sub_26C6150B8();
      __break(1u);
      return;
    }

    v10 = [v2 view];
    if (v10)
    {
      v11 = v10;
      [v10 bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v20 = [objc_allocWithZone(type metadata accessor for BackdropView()) initWithFrame_];
      v21 = [v20 layer];
      objc_opt_self();
      v22 = swift_dynamicCastObjCClassUnconditional();
      v67 = v21;
      [v22 setInvertsMask_];
      v23 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
      v24 = sub_26C614EF8();
      [v23 setValue:v24 forKey:*MEMORY[0x277CDA4C8]];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55A0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_26C619B70;
      *(v25 + 56) = sub_26C5CC548(0, &qword_2804A55A8);
      *(v25 + 32) = v23;
      v26 = v23;
      v27 = sub_26C614EB8();

      [v22 setFilters_];

      v9 = v20;
      v28 = *&v2[v7];
      *&v2[v7] = v20;

      v29 = [v2 view];
      if (v29)
      {
        v30 = v29;
        [v29 addSubview_];

        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  v3 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_inverseBlurBackdropView];
  if (v3)
  {
    *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_inverseBlurBackdropView] = 0;
    [v3 removeFromSuperview];
  }

  v4 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_inverseBlurMaskView];
  if (v4)
  {
    *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_inverseBlurMaskView] = 0;
    v70 = v4;
    [v4 removeFromSuperview];
  }
}

void sub_26C5FD140(uint64_t a1, void *a2)
{
  v3 = sub_26C614DE8();
  v4 = sub_26C614E38();
  [a2 setValue:v3 forKeyPath:v4];
}

void sub_26C5FD1C4(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v90, __src, sizeof(v90));
  if (sub_26C6036A0(v90) == 1)
  {
    v5 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_meshBackdropView];
    if (v5)
    {
      *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_meshBackdropView] = 0;
      [v5 removeFromSuperview];
    }

    return;
  }

  v101 = v90[2];
  v102 = v90[3];
  v103 = v90[4];
  v99 = v90[0];
  v100 = v90[1];
  v78 = BYTE1(v90[4]);
  v6 = BYTE2(v90[4]);
  v98[0] = *(&v90[4] + 3);
  *(v98 + 5) = *(&v90[4] + 1);
  v7 = BYTE1(v90[9]);
  v8 = BYTE2(v90[9]);
  v9 = *(&v90[9] + 1);
  v10 = v90[10];
  v11 = *&v90[11];
  v97 = BYTE8(v90[15]);
  v95 = *(&v90[13] + 8);
  v96 = *(&v90[14] + 8);
  v93 = *(&v90[11] + 8);
  v94 = *(&v90[12] + 8);
  v92 = HIBYTE(v90[15]);
  v91 = *(&v90[15] + 11);
  v12 = v90[16];
  v13 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_meshBackdropView;
  v14 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_meshBackdropView];
  v80 = __src;
  if (v14)
  {
    v74 = BYTE9(v90[15]);
    v77 = BYTE10(v90[15]);
    v106 = v90[7];
    v107 = v90[8];
    v108 = v90[9];
    v104 = v90[5];
    v105 = v90[6];
    LODWORD(v114[0]) = *(&v90[9] + 3);
    BYTE4(v114[0]) = BYTE7(v90[9]);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    swift_beginAccess();
    v73 = v14;
    sub_26C603C78(__src, aBlock, &qword_2804A55B8);
    atomic_fetch_add_explicit((a2 + 48), 1uLL, memory_order_relaxed);
    swift_endAccess();
    v16 = *(a2 + 48);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(a2 + 40);
    *(a2 + 40) = 0x8000000000000000;
    sub_26C6004D4(0x756F62206873656DLL, 0xEB0000000073646ELL, v16, isUniquelyReferenced_nonNull_native);
    *(a2 + 40) = v83;
    swift_endAccess();
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = v16;
    v19 = swift_allocObject();
    v20 = v8;
    v21 = v19;
    *(v19 + 16) = sub_26C60377C;
    *(v19 + 24) = v15;
    v22 = v107;
    *(v19 + 64) = v106;
    *(v19 + 80) = v22;
    *(v19 + 96) = v108;
    v23 = v105;
    *(v19 + 32) = v104;
    *(v19 + 48) = v23;
    *(v19 + 97) = v7;
    *(v19 + 98) = v20;
    *(v19 + 99) = v114[0];
    *(v19 + 103) = BYTE4(v114[0]);
    *(v19 + 104) = v9;
    *(v19 + 112) = v10;
    *(v19 + 128) = v11;
    v76 = v6;
    if (v7)
    {
      v24 = objc_opt_self();
      aBlock[4] = sub_26C603780;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26C5F35E4;
      aBlock[3] = &block_descriptor_157;
      v25 = _Block_copy(aBlock);

      [v24 _performWithoutRetargetingAnimations_];
      _Block_release(v25);
      sub_26C60B2E0(0, a2, v16);
    }

    else
    {
      v116[2] = v106;
      v116[3] = v107;
      v117 = v108;
      v116[0] = v104;
      v116[1] = v105;
      v72 = v20;
      type metadata accessor for SUIAFluidBehaviorSettings(0);

      v41 = sub_26C5ED068(v116);
      v71 = objc_opt_self();
      aBlock[4] = sub_26C603780;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26C5F35E4;
      aBlock[3] = &block_descriptor_179;
      v42 = _Block_copy(aBlock);
      v43 = v41;

      aBlock[4] = sub_26C604110;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26C5F3628;
      aBlock[3] = &block_descriptor_182;
      v44 = _Block_copy(aBlock);

      [v71 _animateUsingSpringBehavior_tracking_animations_completion_];

      _Block_release(v44);
      _Block_release(v42);
    }

    v45 = swift_allocObject();
    *(v45 + 16) = v73;
    swift_beginAccess();
    v81 = v73;
    atomic_fetch_add_explicit((a2 + 48), 1uLL, memory_order_relaxed);
    swift_endAccess();
    v46 = *(a2 + 48);
    swift_beginAccess();
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(a2 + 40);
    *(a2 + 40) = 0x8000000000000000;
    sub_26C6004D4(0x736F70206873656DLL, 0xED00006E6F697469, v46, v47);
    *(a2 + 40) = v83;
    swift_endAccess();
    v48 = swift_allocObject();
    *(v48 + 16) = a2;
    *(v48 + 24) = v46;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_26C603784;
    *(v49 + 24) = v45;
    v50 = v96;
    *(v49 + 64) = v95;
    *(v49 + 80) = v50;
    *(v49 + 96) = v97;
    v51 = v94;
    *(v49 + 32) = v93;
    *(v49 + 48) = v51;
    *(v49 + 97) = v74;
    *(v49 + 98) = v77;
    *(v49 + 99) = v91;
    *(v49 + 103) = v92;
    *(v49 + 104) = v12;
    if (v74)
    {
      v52 = objc_opt_self();
      aBlock[4] = sub_26C6037A0;
      aBlock[5] = v49;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26C5F35E4;
      aBlock[3] = &block_descriptor_170;
      v53 = _Block_copy(aBlock);

      [v52 _performWithoutRetargetingAnimations_];
      _Block_release(v53);
      sub_26C60B2E0(0, a2, v46);
    }

    else
    {
      v114[2] = v95;
      v114[3] = v96;
      v115 = v97;
      v114[0] = v93;
      v114[1] = v94;
      type metadata accessor for SUIAFluidBehaviorSettings(0);

      v54 = sub_26C5ED068(v114);
      v75 = objc_opt_self();
      aBlock[4] = sub_26C6037A0;
      aBlock[5] = v49;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26C5F35E4;
      aBlock[3] = &block_descriptor_173;
      v55 = _Block_copy(aBlock);
      v56 = v54;

      aBlock[4] = sub_26C604110;
      aBlock[5] = v48;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26C5F3628;
      aBlock[3] = &block_descriptor_176;
      v57 = _Block_copy(aBlock);

      [v75 _animateUsingSpringBehavior_tracking_animations_completion_];

      _Block_release(v57);
      _Block_release(v55);
    }

    v6 = v76;
    v31 = v81;
    goto LABEL_15;
  }

  v26 = *(&v90[9] + 1) + *&v90[16] - *(&v90[10] + 1) * 0.5;
  v27 = *&v90[10] + *(&v90[16] + 1) - *&v90[11] * 0.5;
  v28 = objc_allocWithZone(type metadata accessor for BackdropView());
  memcpy(aBlock, __dst, sizeof(aBlock));
  sub_26C6036C4(aBlock, &v83);
  v29 = [v28 initWithFrame_];
  v30 = *&v2[v13];
  *&v2[v13] = v29;
  v31 = v29;

  v32 = [v31 layer];
  v33 = [v2 view];
  if (!v33)
  {
    __break(1u);
    goto LABEL_20;
  }

  v34 = v33;
  v35 = [v33 traitCollection];

  [v35 displayScale];
  v37 = v36;

  [v32 setRasterizationScale_];
  v38 = [v31 layer];
  [v38 setWantsExtendedDynamicRangeContent_];

  v39 = [v2 view];
  if (!v39)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v40 = v39;
  [v39 addSubview_];

LABEL_15:
  v82 = v31;
  v58 = swift_allocObject();
  *(v58 + 16) = v31;
  swift_beginAccess();
  memcpy(aBlock, __dst, sizeof(aBlock));
  sub_26C6036C4(aBlock, &v83);
  atomic_fetch_add_explicit((a2 + 48), 1uLL, memory_order_relaxed);
  swift_endAccess();
  v59 = *(a2 + 48);
  swift_beginAccess();
  v60 = swift_isUniquelyReferenced_nonNull_native();
  *&v109 = *(a2 + 40);
  *(a2 + 40) = 0x8000000000000000;
  sub_26C6004D4(0x6E6172546873656DLL, 0xED00006D726F6673, v59, v60);
  *(a2 + 40) = v109;
  swift_endAccess();
  v61 = swift_allocObject();
  *(v61 + 16) = a2;
  *(v61 + 24) = v59;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_26C603720;
  *(v62 + 24) = v58;
  v63 = v102;
  *(v62 + 64) = v101;
  *(v62 + 80) = v63;
  *(v62 + 96) = v103;
  v64 = v100;
  *(v62 + 32) = v99;
  *(v62 + 48) = v64;
  *(v62 + 97) = v78;
  *(v62 + 98) = v6;
  *(v62 + 99) = v98[0];
  *(v62 + 104) = *(v98 + 5);
  if (v78)
  {
    v65 = objc_opt_self();
    *&v111 = sub_26C603728;
    *(&v111 + 1) = v62;
    *&v109 = MEMORY[0x277D85DD0];
    *(&v109 + 1) = 1107296256;
    *&v110 = sub_26C5F35E4;
    *(&v110 + 1) = &block_descriptor_138;
    v66 = _Block_copy(&v109);
    sub_26C603C78(v80, &v83, &qword_2804A55B8);

    [v65 _performWithoutRetargetingAnimations_];
    _Block_release(v66);
    sub_26C60B2E0(0, a2, v59);

    sub_26C603BBC(v80, &qword_2804A55B8);

    sub_26C603BBC(v80, &qword_2804A55B8);
  }

  else
  {
    v111 = v101;
    v112 = v102;
    v113 = v103;
    v109 = v99;
    v110 = v100;
    type metadata accessor for SUIAFluidBehaviorSettings(0);
    sub_26C603C78(v80, &v83, &qword_2804A55B8);

    v67 = sub_26C5ED068(&v109);
    v79 = objc_opt_self();
    v87 = sub_26C603728;
    v88 = v62;
    v83 = MEMORY[0x277D85DD0];
    v84 = 1107296256;
    v85 = sub_26C5F35E4;
    v86 = &block_descriptor_141;
    v68 = _Block_copy(&v83);
    v69 = v67;

    v87 = sub_26C604110;
    v88 = v61;
    v83 = MEMORY[0x277D85DD0];
    v84 = 1107296256;
    v85 = sub_26C5F3628;
    v86 = &block_descriptor_144;
    v70 = _Block_copy(&v83);

    [v79 _animateUsingSpringBehavior_tracking_animations_completion_];

    sub_26C603BBC(v80, &qword_2804A55B8);

    sub_26C603BBC(v80, &qword_2804A55B8);

    _Block_release(v70);
    _Block_release(v68);
  }
}

void sub_26C5FE110(double *a1, id a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = [a2 layer];
  [v4 setPosition_];
}

void sub_26C5FE180(uint64_t *a1, id a2)
{
  v2 = *a1;
  v3 = [a2 layer];
  [v3 setMeshTransform_];
}

void sub_26C5FE1EC(__int128 *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_sourceImageView;
  v6 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_sourceImageView];
  if (!v6)
  {
    v8 = [v2 view];
    if (v8)
    {
      v9 = v8;
      [v8 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v18 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
      v19 = &v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_imageConfiguration];
      swift_beginAccess();
      v20 = *v19;
      v21 = *(v19 + 1);
      if (*v19)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0;
      }

      v23 = v18;
      sub_26C6026C0(v20, v21);
      sub_26C602700(v20, v21);
      [v23 setImage_];

      v24 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_imageMode];
      v25 = v23;
      [v25 setContentMode_];
      v26 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
      v7 = v25;
      v27 = [v7 layer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55A0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_26C619B70;
      *(v28 + 56) = sub_26C5CC548(0, &qword_2804A55A8);
      *(v28 + 32) = v26;
      v29 = v26;
      v30 = sub_26C614EB8();

      [v27 setFilters_];

      v31 = *&v2[v5];
      *&v2[v5] = v7;

      v32 = [v2 view];
      if (v32)
      {
        v33 = v32;
        [v32 addSubview_];

        v6 = 0;
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

  v7 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_sourceImageView];
LABEL_9:
  v74 = *(a1 + 265);
  v34 = *(a1 + 266);
  v35 = swift_allocObject();
  *(v35 + 16) = v7;
  swift_beginAccess();
  v36 = v6;
  v78 = v7;
  atomic_fetch_add_explicit((a2 + 48), 1uLL, memory_order_relaxed);
  swift_endAccess();
  v37 = *(a2 + 48);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v85 = *(a2 + 40);
  *(a2 + 40) = 0x8000000000000000;
  sub_26C6004D4(0xD00000000000001DLL, 0x800000026C621250, v37, isUniquelyReferenced_nonNull_native);
  *(a2 + 40) = v85;
  swift_endAccess();
  v39 = swift_allocObject();
  *(v39 + 16) = a2;
  *(v39 + 24) = v37;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_26C6035AC;
  *(v40 + 24) = v35;
  v41 = *(a1 + 216);
  v42 = *(a1 + 248);
  *(v40 + 64) = *(a1 + 232);
  *(v40 + 80) = v42;
  *(v40 + 96) = *(a1 + 264);
  *(v40 + 32) = *(a1 + 200);
  *(v40 + 48) = v41;
  *(v40 + 97) = v74;
  *(v40 + 99) = *(a1 + 267);
  *(v40 + 104) = *(a1 + 34);
  v76 = v34;
  *(v40 + 98) = v34;
  if (v74)
  {
    v77 = objc_opt_self();
    *&v92 = sub_26C6035BC;
    *(&v92 + 1) = v40;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v91 = sub_26C5F35E4;
    *(&v91 + 1) = &block_descriptor_2;
    v43 = _Block_copy(&aBlock);

    [v77 _performWithoutRetargetingAnimations_];
    _Block_release(v43);
    sub_26C60B2E0(0, a2, v37);
  }

  else
  {
    v44 = *(a1 + 216);
    v45 = *(a1 + 248);
    v92 = *(a1 + 232);
    v93 = v45;
    v94 = *(a1 + 264);
    aBlock = *(a1 + 200);
    v91 = v44;
    type metadata accessor for SUIAFluidBehaviorSettings(0);

    v46 = sub_26C5ED068(&aBlock);
    v75 = objc_opt_self();
    *&v87 = sub_26C6035BC;
    *(&v87 + 1) = v40;
    *&v85 = MEMORY[0x277D85DD0];
    *(&v85 + 1) = 1107296256;
    *&v86 = sub_26C5F35E4;
    *(&v86 + 1) = &block_descriptor_122;
    v47 = _Block_copy(&v85);
    v48 = v46;

    *&v87 = sub_26C6035B4;
    *(&v87 + 1) = v39;
    *&v85 = MEMORY[0x277D85DD0];
    *(&v85 + 1) = 1107296256;
    *&v86 = sub_26C5F3628;
    *(&v86 + 1) = &block_descriptor_125;
    v49 = _Block_copy(&v85);

    [v75 _animateUsingSpringBehavior_tracking_animations_completion_];

    _Block_release(v49);
    _Block_release(v47);
  }

  v50 = *(a1 + 65);
  v51 = *(a1 + 66);
  v52 = swift_allocObject();
  *(v52 + 16) = v78;
  swift_beginAccess();
  atomic_fetch_add_explicit((a2 + 48), 1uLL, memory_order_relaxed);
  swift_endAccess();
  v53 = *(a2 + 48);
  swift_beginAccess();
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *(a2 + 40);
  *(a2 + 40) = 0x8000000000000000;
  sub_26C6004D4(0xD000000000000016, 0x800000026C621280, v53, v54);
  *(a2 + 40) = v79;
  swift_endAccess();
  v55 = swift_allocObject();
  *(v55 + 16) = a2;
  *(v55 + 24) = v53;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_26C6035D8;
  *(v56 + 24) = v52;
  v57 = a1[3];
  *(v56 + 64) = a1[2];
  *(v56 + 80) = v57;
  *(v56 + 96) = *(a1 + 64);
  v58 = a1[1];
  *(v56 + 32) = *a1;
  *(v56 + 48) = v58;
  *(v56 + 97) = v50;
  *(v56 + 98) = v51;
  *(v56 + 99) = *(a1 + 67);
  v59 = *(a1 + 83);
  v60 = *(a1 + 99);
  v61 = *(a1 + 115);
  *(v56 + 163) = *(a1 + 131);
  *(v56 + 147) = v61;
  *(v56 + 131) = v60;
  *(v56 + 115) = v59;
  v62 = *(a1 + 147);
  v63 = *(a1 + 163);
  v64 = *(a1 + 179);
  *(v56 + 224) = *(a1 + 24);
  *(v56 + 211) = v64;
  *(v56 + 195) = v63;
  *(v56 + 179) = v62;
  if (v50)
  {
    v65 = objc_opt_self();
    *&v87 = sub_26C60362C;
    *(&v87 + 1) = v56;
    *&v85 = MEMORY[0x277D85DD0];
    *(&v85 + 1) = 1107296256;
    *&v86 = sub_26C5F35E4;
    *(&v86 + 1) = &block_descriptor_113;
    v66 = _Block_copy(&v85);

    [v65 _performWithoutRetargetingAnimations_];
    _Block_release(v66);
    sub_26C60B2E0(0, a2, v53);

    v67 = v78;
  }

  else
  {
    v68 = a1[3];
    v87 = a1[2];
    v88 = v68;
    v89 = *(a1 + 64);
    v69 = a1[1];
    v85 = *a1;
    v86 = v69;
    type metadata accessor for SUIAFluidBehaviorSettings(0);

    v70 = sub_26C5ED068(&v85);
    v71 = objc_opt_self();
    v83 = sub_26C60362C;
    v84 = v56;
    v79 = MEMORY[0x277D85DD0];
    v80 = 1107296256;
    v81 = sub_26C5F35E4;
    v82 = &block_descriptor_116;
    v72 = _Block_copy(&v79);
    v67 = v70;

    v83 = sub_26C604110;
    v84 = v55;
    v79 = MEMORY[0x277D85DD0];
    v80 = 1107296256;
    v81 = sub_26C5F3628;
    v82 = &block_descriptor_119;
    v73 = _Block_copy(&v79);

    [v71 _animateUsingSpringBehavior_tracking_animations_completion_];

    _Block_release(v73);
    _Block_release(v72);
  }
}

void sub_26C5FEC4C(int a1, id a2)
{
  v2 = [a2 layer];
  v3 = sub_26C614DE8();
  v4 = sub_26C614E38();
  [v2 setValue:v3 forKeyPath:v4];
}

uint64_t sub_26C5FECFC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for RootComponent(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (*(v2 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_didLayoutSubviewsOnce) == 1)
  {
    v8 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_rootComponent;
    swift_beginAccess();
    v9 = sub_26C6025F8(v2 + v8, v7, type metadata accessor for RootComponent);
    sub_26C60473C(v9);
    sub_26C602660(v7, type metadata accessor for RootComponent);
    type metadata accessor for GroupAnimation();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 40) = MEMORY[0x26D6A4330](20, MEMORY[0x277D84A28], MEMORY[0x277D837D0], MEMORY[0x277D84A38]);
    *(v10 + 48) = 1;
    sub_26C5F7034(v35);
    memcpy(v42, v34, sizeof(v42));
    sub_26C5FE1EC(v42, v10);
    memcpy(v41, v13, sizeof(v41));
    v40[3] = v18;
    v40[4] = v19;
    v40[5] = v20;
    v40[6] = v21;
    v40[0] = v15;
    v40[1] = v16;
    v40[2] = v17;
    sub_26C5FA54C(v41, v40, v10);
    v39[2] = v24;
    v39[3] = v25;
    v39[4] = v26;
    v39[5] = v27;
    v39[0] = v22;
    v39[1] = v23;
    sub_26C5F9BD0(v39, v10);
    memcpy(v38, v14, sizeof(v38));
    sub_26C5F8494(v38, v10);
    v37[1] = v29;
    v37[2] = v30;
    v37[3] = v31;
    v37[4] = v32;
    v37[0] = v28;
    sub_26C5FC894(v37, v10);
    memcpy(v36, v33, sizeof(v36));
    sub_26C5FD1C4(v36, v10);
    sub_26C60A06C(a1, a2);

    return sub_26C603558(v13);
  }

  else
  {
    result = sub_26C6150B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26C5FEFD8(double a1)
{
  v2 = v1;
  v4 = *(v1 + 120);
  v5 = *(v1 + 88);
  v6 = *(v1 + 104);
  v41[3] = *(v1 + 72);
  v41[4] = v5;
  v41[5] = v6;
  v41[6] = v4;
  v7 = *(v1 + 56);
  v41[1] = *(v1 + 40);
  v41[2] = v7;
  v41[0] = *(v1 + 24);
  v8 = *(&v4 + 1);
  v9 = *(*(&v4 + 1) + 16);
  result = sub_26C602AC0(v41, v40);
  v11 = 0;
  v12 = v8 + 56;
  v13 = MEMORY[0x277D84F90];
LABEL_2:
  v14 = v12 + 32 * v11;
  while (v9 != v11)
  {
    if (v11 >= *(v8 + 16))
    {
      __break(1u);
      return result;
    }

    ++v11;
    v15 = v14 + 32;
    v17 = *(v14 - 24);
    v16 = *(v14 - 16);
    v18 = *(v14 - 8);

    LOBYTE(v18) = v18(v19, a1);

    v14 = v15;
    if (v18)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26C6095FC(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
      }

      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_26C6095FC((v20 > 1), v21 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 16) = v21 + 1;
      v22 = v13 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v16;
      v12 = v8 + 56;
      goto LABEL_2;
    }
  }

  sub_26C602B1C(v41);
  v23 = sub_26C603484(v13, sub_26C5F0A0C, &type metadata for ComponentAnimatableProperty.Milestone.ID, &unk_2804A5590);

  swift_beginAccess();
  v24 = *(v1 + 136);
  if (*(v24 + 16) <= *(v23 + 16) >> 3)
  {
    *&v40[0] = v23;

    sub_26C6017B4(v24);

    v25 = *&v40[0];
  }

  else
  {

    v25 = sub_26C6018D4(v24, v23);
  }

  swift_beginAccess();
  sub_26C5FF34C(v23);
  swift_endAccess();
  v26 = *(v1 + 120);
  v27 = *(v1 + 56);
  v28 = *(v1 + 40);
  v29 = *(v1 + 88);
  v40[5] = *(v1 + 104);
  v40[6] = v26;
  v30 = *(v1 + 72);
  v40[1] = v28;
  v40[2] = v27;
  v40[3] = v30;
  v40[4] = v29;
  v40[0] = *(v1 + 24);
  v31 = *(&v26 + 1);
  v32 = *(*(&v26 + 1) + 16);
  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    sub_26C602AC0(v40, v39);
    v39[0] = v33;
    sub_26C613680(0, v32, 0);
    v33 = v39[0];
    v34 = (v31 + 32);
    v35 = *(v39[0] + 16);
    do
    {
      v36 = *v34;
      v39[0] = v33;
      v37 = *(v33 + 24);
      if (v35 >= v37 >> 1)
      {
        v38 = v36;
        sub_26C613680((v37 > 1), v35 + 1, 1);
        v36 = v38;
        v33 = v39[0];
      }

      *(v33 + 16) = v35 + 1;
      *(v33 + 16 * v35 + 32) = v36;
      v34 += 2;
      ++v35;
      --v32;
    }

    while (v32);
    sub_26C602B1C(v40);
  }

  swift_beginAccess();
  *(v2 + 136) = sub_26C601DE0(v33, *(v2 + 136));
  swift_endAccess();

  return v25;
}

uint64_t sub_26C5FF34C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      result = sub_26C600B00(&v11, *v10, v10[1], &unk_2804A5590);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_26C5FF464()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 104);
  v5[4] = *(v0 + 88);
  v5[5] = v2;
  v5[6] = *(v0 + 120);
  v3 = *(v0 + 40);
  v5[0] = *(v0 + 24);
  v5[1] = v3;
  v5[2] = *(v0 + 56);
  v5[3] = v1;
  sub_26C602B1C(v5);

  return swift_deallocClassInstance();
}

uint64_t sub_26C5FF520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_26C60A1F4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26C60AD24();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for ExternalRequestID(0);
    sub_26C602660(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for ExternalRequestID);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for ExternalContinuation(0);
    v20 = *(v13 - 8);
    sub_26C603A14(v12 + *(v20 + 72) * v7, a2, type metadata accessor for ExternalContinuation);
    sub_26C60A368(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ExternalContinuation(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_26C5FF6B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5610);
  v6 = sub_26C6150E8();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v32 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v21 = v20;
      }

      sub_26C615168();
      sub_26C615178();
      v22 = sub_26C615198();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) != 0)
      {
        v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        do
        {
          if (++v25 == v27 && (v26 & 1) != 0)
          {
            goto LABEL_35;
          }

          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
        }

        while (v29 == -1);
        v15 = __clz(__rbit64(~v29)) + (v25 << 6);
      }

      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v32;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_26C5FF980(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ExternalContinuation(0);
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ExternalRequestID(0);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5638);
  v42 = a2;
  result = sub_26C6150E8();
  v11 = result;
  if (*(v9 + 16))
  {
    v38 = v2;
    v39 = v9;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    v19 = v43;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v40 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v42)
      {
        sub_26C603A14(v26, v19, type metadata accessor for ExternalRequestID);
        v27 = *(v9 + 56);
        v28 = *(v41 + 72);
        sub_26C603A14(v27 + v28 * v24, v44, type metadata accessor for ExternalContinuation);
      }

      else
      {
        sub_26C6025F8(v26, v19, type metadata accessor for ExternalRequestID);
        v29 = *(v9 + 56);
        v28 = *(v41 + 72);
        sub_26C6025F8(v29 + v28 * v24, v44, type metadata accessor for ExternalContinuation);
      }

      sub_26C615168();
      sub_26C614DD8();
      sub_26C603E70(qword_2804A5390, MEMORY[0x277CC95F0]);
      sub_26C614E08();
      result = sub_26C615198();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v19 = v43;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v19 = v43;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      sub_26C603A14(v19, *(v11 + 48) + v25 * v20, type metadata accessor for ExternalRequestID);
      result = sub_26C603A14(v44, *(v11 + 56) + v28 * v20, type metadata accessor for ExternalContinuation);
      ++*(v11 + 16);
      v9 = v39;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_26C5FFE18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55F0);
  v6 = sub_26C6150E8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_32:

    goto LABEL_33;
  }

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
  v14 = v6 + 64;
  while (v12)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_15:
    v19 = v16 | (v8 << 6);
    v31 = *(*(v5 + 48) + 16 * v19);
    v20 = *(*(v5 + 56) + 8 * v19);
    if ((a2 & 1) == 0)
    {
    }

    sub_26C615168();
    sub_26C615178();
    v21 = sub_26C615198();
    v22 = -1 << *(v7 + 32);
    v23 = v21 & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) != 0)
    {
      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = 0;
      v26 = (63 - v22) >> 6;
      do
      {
        if (++v24 == v26 && (v25 & 1) != 0)
        {
          goto LABEL_35;
        }

        v27 = v24 == v26;
        if (v24 == v26)
        {
          v24 = 0;
        }

        v25 |= v27;
        v28 = *(v14 + 8 * v24);
      }

      while (v28 == -1);
      v15 = __clz(__rbit64(~v28)) + (v24 << 6);
    }

    *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    *(*(v7 + 48) + 16 * v15) = v31;
    *(*(v7 + 56) + 8 * v15) = v20;
    ++*(v7 + 16);
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
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

  if (a2)
  {
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
    goto LABEL_32;
  }

  v3 = v2;
LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26C6000E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55B0);
  v34 = a2;
  result = sub_26C6150E8();
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
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = sub_26C615158();
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
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
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

unint64_t sub_26C60036C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_26C60B598(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26C5FFE18(v16, a4 & 1);
      result = sub_26C60B598(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_26C615148();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_26C60B018();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;
}

unint64_t sub_26C6004D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_26C60A324(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26C6000E8(v16, a4 & 1);
      result = sub_26C60A324(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_26C615148();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_26C60B178();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_26C600634(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ExternalRequestID(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_26C60A1F4(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_26C60AD24();
      goto LABEL_7;
    }

    sub_26C5FF980(v16, a3 & 1);
    v23 = sub_26C60A1F4(a2);
    if ((v17 & 1) == (v24 & 1))
    {
      v13 = v23;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_26C6025F8(a2, v10, type metadata accessor for ExternalRequestID);
      return sub_26C6007F4(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_26C615148();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = v20 + *(*(type metadata accessor for ExternalContinuation(0) - 8) + 72) * v13;

  return sub_26C603E0C(a1, v21);
}

uint64_t sub_26C6007F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ExternalRequestID(0);
  sub_26C603A14(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for ExternalRequestID);
  v10 = a4[7];
  v11 = type metadata accessor for ExternalContinuation(0);
  result = sub_26C603A14(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for ExternalContinuation);
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

uint64_t sub_26C6008E0(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_26C609214(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for ScanwaveCommonAction();
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26C600A0C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26C6092A0(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 24 * v7 + 32), (v6 + 32), 24 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26C600B00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = *v4;
  sub_26C615168();
  sub_26C615178();
  v10 = sub_26C615198();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = (*(v9 + 48) + 16 * v12);
      v16 = *v14;
      v15 = v14[1];
      if (v16 == a2 && v15 == a3)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_26C6015F8(a2, a3, v12, isUniquelyReferenced_nonNull_native, a4);
    *v4 = v20;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_26C600C6C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *v3;
  sub_26C615168();
  sub_26C615178();
  v8 = sub_26C615198();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = (*(v7 + 48) + 16 * v10);
    v14 = *v12;
    v13 = v12[1];
    if (v14 == a1 && v13 == a2)
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  v20 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_26C600DE4(a3);
    v18 = v20;
  }

  v19 = *(*(v18 + 48) + 16 * v10);
  sub_26C601408(v10);
  result = v19;
  *v3 = v20;
  return result;
}

void *sub_26C600DE4(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_26C615008();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + 16 * v15) = *(*(v3 + 48) + 16 * v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_26C600F18(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v5 = sub_26C615018();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v4 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_26C615168();
      sub_26C615178();
      v21 = sub_26C615198();
      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) != 0)
      {
        v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        do
        {
          if (++v24 == v26 && (v25 & 1) != 0)
          {
            goto LABEL_28;
          }

          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
        }

        while (v28 == -1);
        v13 = __clz(__rbit64(~v28)) + (v24 << 6);
      }

      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
      }

      if (v7 >= v11)
      {
        break;
      }

      v17 = *(v4 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v6;
  return result;
}

uint64_t sub_26C601178(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v5 = sub_26C615018();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v5 + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v19 = (*(v4 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      sub_26C615168();
      sub_26C615178();
      v22 = sub_26C615198();
      v23 = -1 << *(v6 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        do
        {
          if (++v25 == v27 && (v26 & 1) != 0)
          {
            goto LABEL_30;
          }

          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
        }

        while (v29 == -1);
        v14 = __clz(__rbit64(~v29)) + (v25 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v4 + 32);
    if (v30 >= 64)
    {
      bzero((v4 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

unint64_t sub_26C601408(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_26C614FF8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_26C615168();
        sub_26C615178();
        v10 = sub_26C615198() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + 16 * v2);
          v13 = (v11 + 16 * v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
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

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  *(v3 + 16) = v16;
  ++*(v3 + 36);
  return result;
}

uint64_t sub_26C6015F8(uint64_t result, uint64_t a2, unint64_t a3, char a4, uint64_t *a5)
{
  v7 = result;
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
LABEL_15:
    v18 = *v5;
    *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
    v19 = (*(v18 + 48) + 16 * a3);
    *v19 = v7;
    v19[1] = a2;
    v20 = *(v18 + 16);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      __break(1u);
    }

    *(v18 + 16) = v22;
    return result;
  }

  if (a4)
  {
    sub_26C601178(v8 + 1, a5);
    goto LABEL_8;
  }

  if (v9 > v8)
  {
    v10 = a3;
    result = sub_26C600DE4(a5);
    a3 = v10;
    goto LABEL_15;
  }

  sub_26C600F18(v8 + 1, a5);
LABEL_8:
  v11 = *v5;
  sub_26C615168();
  sub_26C615178();
  result = sub_26C615198();
  v12 = -1 << *(v11 + 32);
  a3 = result & ~v12;
  if (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = ~v12;
  while (1)
  {
    v14 = (*(v11 + 48) + 16 * a3);
    v16 = *v14;
    v15 = v14[1];
    if (v16 == v7 && v15 == a2)
    {
      break;
    }

    a3 = (a3 + 1) & v13;
    if (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  result = sub_26C615138();
  __break(1u);
  return result;
}

uint64_t sub_26C6017B4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        result = sub_26C600C6C(*v11, v11[1], &unk_2804A5590);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_26C6018D4(uint64_t a1, uint64_t a2)
{
  v67 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v60 = 0;
    v53 = 0;
    v58 = a2;
    v59 = a1;
    v6 = a1 + 56;
    v5 = *(a1 + 56);
    v7 = -1 << *(a1 + 32);
    v57 = ~v7;
    if (-v7 < 64)
    {
      v8 = ~(-1 << -v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & v5;
    v10 = (63 - v7) >> 6;
    v11 = (a2 + 56);
    v12 = 1;
    while (1)
    {
      do
      {
        if (!v9)
        {
          v14 = v60;
          v13 = v58;
          while (1)
          {
            v15 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v15 >= v10)
            {

              goto LABEL_51;
            }

            v9 = *(v6 + 8 * v15);
            ++v14;
            if (v9)
            {
              v60 = v15;
              goto LABEL_13;
            }
          }

LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v13 = v58;
LABEL_13:
        v16 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v17 = (*(v59 + 48) + ((v60 << 10) | (16 * v16)));
        v3 = *v17;
        v18 = v17[1];
        sub_26C615168();
        v61 = v18 ^ v3;
        sub_26C615178();
        v19 = sub_26C615198();
        v20 = -1 << *(v13 + 32);
        v2 = v19 & ~v20;
        v4 = v2 >> 6;
        v13 = 1 << v2;
      }

      while (((1 << v2) & v11[v2 >> 6]) == 0);
      v21 = *(v58 + 48);
      v22 = (v21 + 16 * v2);
      v24 = *v22;
      v23 = v22[1];
      if (v24 == v3 && v23 == v18)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v4 = v2 >> 6;
        v13 = 1 << v2;
        if ((v11[v2 >> 6] & (1 << v2)) == 0)
        {
          break;
        }

        v26 = (v21 + 16 * v2);
        if (*v26 == v3 && v26[1] == v18)
        {
          goto LABEL_21;
        }
      }
    }

LABEL_21:
    v64 = v57;
    v65 = v60;
    v66 = v9;
    v63[0] = v59;
    v63[1] = v6;
    v12 = (63 - v20) >> 6;
    v3 = 8 * v12;

    if (v12 <= 0x80)
    {
      goto LABEL_22;
    }

LABEL_55:
    v50 = v58;

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_22:
      v54 = v12;
      v55 = &v53;
      MEMORY[0x28223BE20](v27);
      v12 = &v53 - v28;
      memcpy(&v53 - v28, v11, v3);
      *(v12 + 8 * v4) &= ~v13;
      v4 = v58;
      v29 = *(v58 + 16) - 1;
      v3 = 1;
LABEL_23:
      v56 = v29;
      while (v9)
      {
LABEL_31:
        v33 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v34 = (*(v59 + 48) + ((v60 << 10) | (16 * v33)));
        v35 = *v34;
        v13 = v34[1];
        sub_26C615168();
        v61 = v13 ^ v35;
        v2 = &v62;
        sub_26C615178();
        v36 = sub_26C615198();
        v37 = -1 << *(v4 + 32);
        v38 = v36 & ~v37;
        v39 = v38 >> 6;
        v40 = 1 << v38;
        if (((1 << v38) & v11[v38 >> 6]) != 0)
        {
          v41 = *(v4 + 48);
          v42 = (v41 + 16 * v38);
          v44 = *v42;
          v43 = v42[1];
          if (v44 == v35 && v43 == v13)
          {
LABEL_24:
            v30 = *(v12 + 8 * v39);
            *(v12 + 8 * v39) = v30 & ~v40;
            if ((v30 & v40) != 0)
            {
              v29 = v56 - 1;
              if (__OFSUB__(v56, 1))
              {
                __break(1u);
              }

              if (v56 == 1)
              {

                v13 = MEMORY[0x277D84FA0];
                goto LABEL_51;
              }

              goto LABEL_23;
            }
          }

          else
          {
            v46 = ~v37;
            while (1)
            {
              v38 = (v38 + 1) & v46;
              v39 = v38 >> 6;
              v40 = 1 << v38;
              if ((v11[v38 >> 6] & (1 << v38)) == 0)
              {
                break;
              }

              v47 = (v41 + 16 * v38);
              if (*v47 == v35 && v47[1] == v13)
              {
                goto LABEL_24;
              }
            }
          }
        }
      }

      v31 = v60;
      while (1)
      {
        v32 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v32 >= v10)
        {
          break;
        }

        v9 = *(v6 + 8 * v32);
        ++v31;
        if (v9)
        {
          v60 = v32;
          goto LABEL_31;
        }
      }

      if (v10 <= v60 + 1)
      {
        v48 = v60 + 1;
      }

      else
      {
        v48 = v10;
      }

      v60 = v48 - 1;
      v13 = sub_26C602128(v12, v54, v56, v4);
LABEL_51:
      sub_26C60351C();
      return v13;
    }

    v51 = swift_slowAlloc();
    memcpy(v51, v11, v3);
    v52 = v53;
    v13 = sub_26C602388(v51, v12, v50, v2, v63);

    if (!v52)
    {

      MEMORY[0x26D6A5010](v51, -1, -1);
      v57 = v64;
      v60 = v65;
      goto LABEL_51;
    }

    result = MEMORY[0x26D6A5010](v51, -1, -1);
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_26C601DE0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_26C601F80(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_26C603524(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x26D6A5010](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_26C601F80(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = 0;
  v7 = 0;
  v8 = a4 + 56;
  v29 = a3 + 32;
  while (1)
  {
    v10 = (v29 + 16 * v7);
    v12 = *v10;
    v11 = v10[1];
    sub_26C615168();
    sub_26C615178();
    v13 = sub_26C615198();
    v14 = -1 << *(a4 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    v17 = 1 << v15;
    if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
    {
      v18 = *(a4 + 48);
      v19 = (v18 + 16 * v15);
      v21 = *v19;
      v20 = v19[1];
      if (v21 != v12 || v20 != v11)
      {
        v23 = ~v14;
        do
        {
          v15 = (v15 + 1) & v23;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if ((*(v8 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
          {
            goto LABEL_4;
          }

          v24 = (v18 + 16 * v15);
        }

        while (*v24 != v12 || v24[1] != v11);
      }

      v9 = a1[v16];
      a1[v16] = v9 | v17;
      if ((v9 & v17) == 0 && __OFADD__(v6++, 1))
      {
        break;
      }
    }

LABEL_4:
    if (++v7 == v5)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_18:
  v6 = 0;
LABEL_19:

  return sub_26C602128(a1, a2, v6, a4);
}

uint64_t sub_26C602128(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A5590);
      v9 = sub_26C615028();
      v5 = v9;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v9 + 56;
      v13 = a4;
      v32 = a4;
      while (1)
      {
        if (v10)
        {
          v14 = __clz(__rbit64(v10));
          v10 &= v10 - 1;
          goto LABEL_16;
        }

        v15 = v11;
        do
        {
          v11 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
          }

          if (v11 >= a2)
          {
            goto LABEL_28;
          }

          v16 = a1[v11];
          ++v15;
        }

        while (!v16);
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
LABEL_16:
        v17 = (*(v13 + 48) + 16 * (v14 | (v11 << 6)));
        v19 = *v17;
        v18 = v17[1];
        sub_26C615168();
        sub_26C615178();
        v20 = sub_26C615198();
        v21 = -1 << *(v5 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) != 0)
        {
          v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v25 = 0;
          v26 = (63 - v21) >> 6;
          do
          {
            if (++v23 == v26 && (v25 & 1) != 0)
            {
              goto LABEL_31;
            }

            v27 = v23 == v26;
            if (v23 == v26)
            {
              v23 = 0;
            }

            v25 |= v27;
            v28 = *(v12 + 8 * v23);
          }

          while (v28 == -1);
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
        }

        *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = (*(v5 + 48) + 16 * v24);
        *v29 = v19;
        v29[1] = v18;
        ++*(v5 + 16);
        if (__OFSUB__(v4--, 1))
        {
          goto LABEL_32;
        }

        v13 = v32;
        if (!v4)
        {
LABEL_28:

          return v5;
        }
      }
    }

    return a4;
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_26C602388(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
LABEL_2:
  v35 = v9;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_10:
    v17 = (*(*a5 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v13)))));
    v18 = *v17;
    v19 = v17[1];
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_26C615168();
    sub_26C615178();
    v20 = sub_26C615198();
    v21 = -1 << *(a3 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & *(v10 + 8 * (v22 >> 6))) != 0)
    {
      v25 = *(a3 + 48);
      v26 = (v25 + 16 * v22);
      v28 = *v26;
      v27 = v26[1];
      if (v28 == v18 && v27 == v19)
      {
LABEL_3:
        v11 = a1[v23];
        a1[v23] = v11 & ~v24;
        if ((v11 & v24) != 0)
        {
          v9 = v35 - 1;
          if (__OFSUB__(v35, 1))
          {
            goto LABEL_28;
          }

          if (v35 == 1)
          {
            return MEMORY[0x277D84FA0];
          }

          goto LABEL_2;
        }
      }

      else
      {
        v30 = ~v21;
        while (1)
        {
          v22 = (v22 + 1) & v30;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if ((*(v10 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
          {
            break;
          }

          v31 = (v25 + 16 * v22);
          if (*v31 == v18 && v31[1] == v19)
          {
            goto LABEL_3;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_10;
    }
  }

  if (v15 <= v12 + 1)
  {
    v33 = v12 + 1;
  }

  else
  {
    v33 = (a5[2] + 64) >> 6;
  }

  a5[3] = v33 - 1;
  a5[4] = 0;

  return sub_26C602128(a1, a2, v35, a3);
}

uint64_t sub_26C6025BC(char *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_26C6025F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C602660(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_26C6026C0(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

void sub_26C602700(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_26C60279C()
{
  result = type metadata accessor for RootComponent(319);
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_26C602A54()
{
  result = type metadata accessor for ScanwaveCommonEvent();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26C602B70(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5610);
  v3 = sub_26C6150F8();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  result = sub_26C60B598(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v6;
    return v3;
  }

  v9 = (a1 + 9);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = (v3[6] + 16 * result);
    *v10 = v4;
    v10[1] = v5;
    *(v3[7] + 8 * result) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 3;
    v4 = *(v9 - 2);
    v5 = *(v9 - 1);
    v15 = *v9;
    v16 = v6;
    result = sub_26C60B598(v4, v5);
    v9 = v14;
    v6 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_26C602C88(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55F0);
  v3 = sub_26C6150F8();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_26C60B598(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_26C60B598(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26C602DA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5630);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5638);
    v7 = sub_26C6150F8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26C603C78(v9, v5, &qword_2804A5630);
      result = sub_26C60A1F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ExternalRequestID(0);
      sub_26C603A14(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for ExternalRequestID);
      v16 = v7[7];
      v17 = type metadata accessor for ExternalContinuation(0);
      result = sub_26C603A14(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for ExternalContinuation);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

char *sub_26C602FBC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_pendingRootComponentUpdates;
  result = swift_beginAccess();
  if (*(*(v0 + v2) + 16))
  {
    v24 = *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_isPerformingPreCAUpdate);
    v25 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_isPerformingPreCAUpdate;
    *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_isPerformingPreCAUpdate) = 1;
    v4 = *(v0 + v2);
    if (*(v4 + 16))
    {
      v5 = MEMORY[0x277D84F90];
      do
      {
        v6 = 0;
        v7 = v5;
        while (1)
        {
          *(v1 + v2) = v5;
          if (*(v4 + 16))
          {
            v8 = sub_26C5F5010(v4);
            v9 = 1;
          }

          else
          {
            v8 = v5;
            v9 = v6;
          }

          v6 |= v9;
          if (!*(v8 + 16))
          {
            break;
          }

          v10 = sub_26C5F6B70(v8);
          v12 = v11;

          sub_26C5F5EC4(v10);

          v13 = *(v12 + 16);
          v14 = *(v7 + 16);
          v15 = v14 + v13;
          if (__OFADD__(v14, v13))
          {
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
            return result;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result && v15 <= *(v7 + 24) >> 1)
          {
            if (!*(v12 + 16))
            {
              goto LABEL_6;
            }
          }

          else
          {
            if (v14 <= v15)
            {
              v16 = v14 + v13;
            }

            else
            {
              v16 = v14;
            }

            result = sub_26C6092A0(result, v16, 1, v7);
            v7 = result;
            if (!*(v12 + 16))
            {
LABEL_6:

              if (v13)
              {
                goto LABEL_31;
              }

              goto LABEL_7;
            }
          }

          v17 = *(v7 + 16);
          if ((*(v7 + 24) >> 1) - v17 < v13)
          {
            goto LABEL_32;
          }

          memcpy((v7 + 24 * v17 + 32), (v12 + 32), 24 * v13);

          if (v13)
          {
            v18 = *(v7 + 16);
            v19 = __OFADD__(v18, v13);
            v20 = v18 + v13;
            if (v19)
            {
              goto LABEL_33;
            }

            *(v7 + 16) = v20;
          }

LABEL_7:
          v4 = *(v1 + v2);
        }

        if (v6)
        {
          v21 = sub_26C5F6B70(v5);
          v23 = v22;
          sub_26C5F5EC4(v21);

          sub_26C600A0C(v23);
          if (*(v7 + 16))
          {
            sub_26C5F5D70(v7);
          }
        }

        v4 = *(v1 + v2);
      }

      while (*(v4 + 16));
    }

    *(v1 + v25) = v24;
  }

  return result;
}

void sub_26C603214()
{
  v1 = (v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_imageConfiguration);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_imageMode) = 2;
  *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_chromaticAberrationBackdropView) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_chromaticAberrationMaskView) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_fillLightView) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_fillLightMaskView) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_inverseBlurBackdropView) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_inverseBlurMaskView) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_mainMaskView) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_circleMaskView) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_depthDistanceFieldImageView) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_meshBackdropView) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_sourceImageView) = 0;
  v2 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_animatableProperties;
  v3 = MEMORY[0x277D84F90];
  *(v0 + v2) = sub_26C602C88(MEMORY[0x277D84F90]);
  *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_didLayoutSubviewsOnce) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_didPrepareInitialUpdate) = 0;
  v4 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_externalContinuations;
  *(v0 + v4) = sub_26C602DA4(v3);
  *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_isPerformingPreCAUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_hasEnqueuedPreCAUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_pendingRootComponentUpdates) = v3;
  v5 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_prototypeSettings;
  v6 = [objc_opt_self() rootSettings];
  v7 = *&v6[OBJC_IVAR___SUIAnimationKitPrototypeSettings_scanwaveSettings];

  *(v0 + v5) = v7;
  v8 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_timerController;
  type metadata accessor for LayoutTimerController();
  v9 = swift_allocObject();
  v9[2] = CGSizeMake;
  v9[3] = 0;
  v9[4] = sub_26C602B70(v3);
  *(v0 + v8) = v9;
  v10 = (v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_rootComponent);
  sub_26C603C70(__src);
  memcpy(v10, __src, 0x511uLL);
  type metadata accessor for RootComponent(0);
  type metadata accessor for RootComponent.State(0);
  swift_storeEnumTagMultiPayload();
  v11 = v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_transactionCommitObserverProvider;
  *(v11 + 24) = &type metadata for DefaultCATransactionCommitObserverProvider;
  *(v11 + 32) = &off_287D1EC18;
  sub_26C6150B8();
  __break(1u);
}

uint64_t sub_26C603484(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x26D6A4470](v7, a3, v8);
  v12 = result;
  if (v7)
  {
    v10 = (a1 + 40);
    do
    {
      sub_26C600B00(&v11, *(v10 - 1), *v10, a4);
      v10 += 2;
      --v7;
    }

    while (v7);
    return v12;
  }

  return result;
}

uint64_t sub_26C603524@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_26C601F80(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_26C6035D8(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[5];
  v8[4] = a1[4];
  v8[5] = v3;
  v4 = a1[7];
  v8[6] = a1[6];
  v8[7] = v4;
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v6 = a1[3];
  v8[2] = a1[2];
  v8[3] = v6;
  return [v2 setTransform3D_];
}

uint64_t sub_26C60362C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 208);
  v7[6] = *(v0 + 192);
  v7[7] = v2;
  v8 = *(v0 + 224);
  v3 = *(v0 + 144);
  v7[2] = *(v0 + 128);
  v7[3] = v3;
  v4 = *(v0 + 176);
  v7[4] = *(v0 + 160);
  v7[5] = v4;
  v5 = *(v0 + 112);
  v7[0] = *(v0 + 96);
  v7[1] = v5;
  return v1(v7 + 8);
}

uint64_t sub_26C6036A0(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C603728()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 96);
  return v1(&v3 + 8);
}

uint64_t sub_26C6037AC(uint64_t a1)
{
  v1 = *(a1 + 344);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t objectdestroy_231Tm()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_26C603850()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 112);
  v4[0] = *(v0 + 96);
  v4[1] = v2;
  v5 = *(v0 + 128);
  return v1(v4 + 8);
}

uint64_t sub_26C6038AC(uint64_t a1)
{
  v1 = *(a1 + 66);
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

uint64_t sub_26C6038E0()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 96);
  v4 = *(v0 + 112);
  return v1(&v3 + 8);
}

unint64_t sub_26C603968()
{
  result = qword_2804A5600;
  if (!qword_2804A5600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A5600);
  }

  return result;
}

uint64_t sub_26C603A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26C603AE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26C603B48(uint64_t a1)
{
  v1 = *(a1 + 560);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26C603BBC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C603C78(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26C603CE8()
{
  result = qword_2804A5640;
  if (!qword_2804A5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A5640);
  }

  return result;
}

uint64_t sub_26C603D3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26C603D50(a1, a2);
  }

  return a1;
}

uint64_t sub_26C603D50(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26C603DA4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26C603DB8(a1, a2);
  }

  return a1;
}

uint64_t sub_26C603DB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26C603E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalContinuation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C603E70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26C603F14()
{
  result = type metadata accessor for ScanwaveActivateResponse(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScanwaveViewController.OrderedFinalTransactionAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ScanwaveViewController.OrderedFinalTransactionAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_26C604214(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x28223BE20](a1);
  v4 = type metadata accessor for RootComponent.State(0);
  v5 = MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v40 - v7);
  v9 = type metadata accessor for ScanwaveActivateRequest(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v42 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v14 = type metadata accessor for ScanwaveCommonEvent();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v20 = MEMORY[0x277D84F90];
  v45 = MEMORY[0x277D84F90];
  memcpy(v47, v2, 0x511uLL);
  memcpy(v48, v2, 0x511uLL);
  if (sub_26C603B48(v48) != 1)
  {
    memcpy(v46, v48, 0x511uLL);
    sub_26C608E7C(v3, v19, type metadata accessor for ScanwaveCommonEvent);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26C609A8C(v19, v13, type metadata accessor for ScanwaveActivateRequest);
      memcpy(v44, v47, 0x511uLL);
      sub_26C603B60(v44, v43);
      v28 = sub_26C60499C(v13);
      sub_26C6008E0(v28);
      sub_26C603BBC(v47, &qword_2804A5618);
      v29 = type metadata accessor for ScanwaveActivateRequest;
      v30 = v13;
LABEL_16:
      sub_26C609240(v30, v29);
      return v45;
    }

    v21 = v3;
    v22 = *(type metadata accessor for RootComponent(0) + 20);
    sub_26C608E7C(v2 + v22, v8, type metadata accessor for RootComponent.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_15:
        v29 = type metadata accessor for ScanwaveCommonEvent;
        v30 = v19;
        goto LABEL_16;
      }

      v24 = *v8;
      memcpy(v44, v47, 0x511uLL);
      sub_26C603B60(v44, v43);
      v25 = sub_26C6083D4(v3, v46);
      sub_26C6008E0(v25);
      if (*(v24 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_isComplete) == 1)
      {
        v26 = v41;
        swift_storeEnumTagMultiPayload();
        v27 = sub_26C607340(v26);
        sub_26C609A28(v26, v2 + v22);
        sub_26C6008E0(v27);
      }

LABEL_8:
      sub_26C603BBC(v47, &qword_2804A5618);
      goto LABEL_15;
    }

    v31 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5778) + 48));
    v32 = *v31;
    v33 = v31[1];
    v34 = v42;
    sub_26C609A8C(v8, v42, type metadata accessor for ScanwaveActivateRequest);
    sub_26C608E7C(v21, v17, type metadata accessor for ScanwaveCommonEvent);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = sub_26C604D7C(v32, v33, *v17);
      memcpy(v44, v47, 0x511uLL);
      sub_26C603B60(v44, v43);

      if ((v35 & 1) == 0)
      {
        sub_26C609240(v34, type metadata accessor for ScanwaveActivateRequest);
        goto LABEL_8;
      }

      v36 = sub_26C604E84(v34);
      sub_26C6008E0(v36);
      sub_26C603BBC(v47, &qword_2804A5618);
      v37 = type metadata accessor for ScanwaveActivateRequest;
      v38 = v34;
    }

    else
    {
      sub_26C609240(v34, type metadata accessor for ScanwaveActivateRequest);
      v37 = type metadata accessor for ScanwaveCommonEvent;
      v38 = v17;
    }

    sub_26C609240(v38, v37);
    goto LABEL_15;
  }

  return v20;
}

void *sub_26C60473C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  sub_26C5F2134(__src);
  sub_26C605480(&__src[27]);
  sub_26C605684(v7);
  sub_26C609700(v7, __src, &qword_2804A5740);
  sub_26C6060CC(v8);
  __src[58] = v8[4];
  __src[59] = v8[5];
  __src[60] = v8[6];
  __src[54] = v8[0];
  __src[55] = v8[1];
  __src[57] = v8[3];
  __src[56] = v8[2];
  sub_26C606264(v9);
  __src[63] = v9[2];
  __src[64] = v9[3];
  __src[65] = v9[4];
  __src[66] = v9[5];
  __src[61] = v9[0];
  __src[62] = v9[1];
  v3 = sub_26C6063CC(v10);
  __src[68] = v10[1];
  __src[69] = v10[2];
  __src[70] = v10[3];
  __src[71] = v10[4];
  __src[67] = v10[0];
  sub_26C606684(v3);
  memcpy(&__src[89], v11, 0x118uLL);
  sub_26C606D90(v12);
  sub_26C609700(v12, &__src[72], &qword_2804A55B8);
  memcpy(v13, __src, sizeof(v13));
  memcpy(v14, __src, sizeof(v14));
  sub_26C609768(v13, v5);
  sub_26C603558(v14);
  return memcpy(v2, v13, 0x6B0uLL);
}

void *sub_26C60499C(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for ScanwaveCommonAction();
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RootComponent.State(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v31 = MEMORY[0x277D84F90];
  v15 = *(type metadata accessor for RootComponent(0) + 20);
  sub_26C608E7C(v1 + v15, v14, type metadata accessor for RootComponent.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_26C609240(v14, type metadata accessor for RootComponent.State);
  if (EnumCaseMultiPayload == 2 || (sub_26C608E7C(v1 + v15, v12, type metadata accessor for RootComponent.State), v17 = swift_getEnumCaseMultiPayload(), sub_26C609240(v12, type metadata accessor for RootComponent.State), v17 != 2))
  {
    v29 = 0;
    v30 = 0;
    MEMORY[0x26D6A50F0](&v29);
    v20 = v29;
    v21 = v30;
    v22 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5778) + 48)];
    sub_26C608E7C(a1, v9, type metadata accessor for ScanwaveActivateRequest);
    *v22 = v20;
    *(v22 + 1) = v21;
    swift_storeEnumTagMultiPayload();
    v23 = sub_26C607340(v9);
    sub_26C609A28(v9, v1 + v15);
    sub_26C6008E0(v23);
    *v5 = v20;
    *(v5 + 1) = v21;
    v5[16] = 1;
    swift_storeEnumTagMultiPayload();
    v19 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_26C609304(0, v19[2] + 1, 1, v19, &qword_2804A5628, &unk_26C61B070, type metadata accessor for ScanwaveCommonAction);
    }

    v25 = v19[2];
    v24 = v19[3];
    if (v25 >= v24 >> 1)
    {
      v19 = sub_26C609304(v24 > 1, v25 + 1, 1, v19, &qword_2804A5628, &unk_26C61B070, type metadata accessor for ScanwaveCommonAction);
    }

    v19[2] = v25 + 1;
    sub_26C609A8C(v5, v19 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, type metadata accessor for ScanwaveCommonAction);
  }

  else
  {
    v18 = sub_26C604E84(a1);
    sub_26C6008E0(v18);
    return v31;
  }

  return v19;
}

uint64_t sub_26C604D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_26C615168();
  sub_26C615178();
  v6 = sub_26C615198();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  do
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v12 = *v10;
    v11 = v10[1];
    v13 = v12 == a1 && v11 == a2;
    result = v13;
    if (v13)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
  }

  while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  return result;
}

void *sub_26C604E84(uint64_t a1)
{
  v2 = v1;
  v54 = MEMORY[0x28223BE20](a1);
  v64[163] = *MEMORY[0x277D85DE8];
  v55 = type metadata accessor for ScanwaveCommonAction();
  v3 = *(v55 - 8);
  v4 = MEMORY[0x28223BE20](v55);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v48 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  v12 = type metadata accessor for RootComponent.State(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for ScanwaveActivateRequest(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v63, v1, 0x511uLL);
  memcpy(v64, v1, 0x511uLL);
  v18 = sub_26C603B48(v64);
  v19 = MEMORY[0x277D84F90];
  if (v18 != 1)
  {
    v50 = v9;
    v52 = v3;
    v53 = v6;
    v58 = 0;
    v59 = MEMORY[0x277D84F90];
    v57 = 0;
    memcpy(v62, v63, 0x511uLL);
    sub_26C603B60(v62, &v60);
    MEMORY[0x26D6A50F0](&v57);
    v56 = v11;
    v20 = v57;
    v21 = v58;
    v60 = 0;
    v61 = 0;
    MEMORY[0x26D6A50F0](&v60);
    v23 = v60;
    v22 = v61;
    sub_26C608E7C(v54, v17, type metadata accessor for ScanwaveActivateRequest);
    type metadata accessor for RootComponent.ActiveContext(0);
    swift_allocObject();
    v24 = sub_26C6082C8(v17);
    v25 = v24 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_outroDelayTimerID;
    *v25 = v20;
    *(v25 + 8) = v21;
    *(v25 + 16) = 0;
    v26 = v24 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_completionTimerID;
    v51 = v23;
    *v26 = v23;
    *(v26 + 8) = v22;
    v49 = v22;
    *(v26 + 16) = 0;
    *v14 = v24;
    swift_storeEnumTagMultiPayload();
    v27 = *(type metadata accessor for RootComponent(0) + 20);
    v54 = v24;

    v28 = sub_26C607340(v14);
    sub_26C609A28(v14, v2 + v27);
    sub_26C6008E0(v28);
    v29 = *&v64[8];
    UIAnimationDragCoefficient();
    v31 = v55;
    *v56 = v20;
    *(v56 + 1) = v21;
    v32 = v56;
    *(v56 + 2) = v29 * v30;
    swift_storeEnumTagMultiPayload();
    v19 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_26C609304(0, v19[2] + 1, 1, v19, &qword_2804A5628, &unk_26C61B070, type metadata accessor for ScanwaveCommonAction);
    }

    v34 = v19[2];
    v33 = v19[3];
    v35 = v53;
    v36 = v50;
    if (v34 >= v33 >> 1)
    {
      v19 = sub_26C609304(v33 > 1, v34 + 1, 1, v19, &qword_2804A5628, &unk_26C61B070, type metadata accessor for ScanwaveCommonAction);
    }

    v19[2] = v34 + 1;
    v37 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v38 = *(v52 + 72);
    sub_26C609A8C(v32, v19 + v37 + v38 * v34, type metadata accessor for ScanwaveCommonAction);
    v39 = *&v64[9];
    UIAnimationDragCoefficient();
    v41 = v49;
    *v36 = v51;
    *(v36 + 8) = v41;
    *(v36 + 16) = v39 * v40;
    swift_storeEnumTagMultiPayload();
    v43 = v19[2];
    v42 = v19[3];
    if (v43 >= v42 >> 1)
    {
      v19 = sub_26C609304(v42 > 1, v43 + 1, 1, v19, &qword_2804A5628, &unk_26C61B070, type metadata accessor for ScanwaveCommonAction);
    }

    v19[2] = v43 + 1;
    sub_26C609A8C(v36, v19 + v37 + v43 * v38, type metadata accessor for ScanwaveCommonAction);
    if (qword_2804A4BF0 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v31, qword_2804A7300);
    sub_26C608E7C(v44, v35, type metadata accessor for ScanwaveCommonAction);
    v46 = v19[2];
    v45 = v19[3];
    if (v46 >= v45 >> 1)
    {
      v19 = sub_26C609304(v45 > 1, v46 + 1, 1, v19, &qword_2804A5628, &unk_26C61B070, type metadata accessor for ScanwaveCommonAction);
    }

    sub_26C603BBC(v63, &qword_2804A5618);

    v19[2] = v46 + 1;
    sub_26C609A8C(v35, v19 + v37 + v46 * v38, type metadata accessor for ScanwaveCommonAction);
  }

  return v19;
}

void *sub_26C605480@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for RootComponent.State(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for RootComponent(0);
  sub_26C608E7C(v1 + *(v6 + 20), v5, type metadata accessor for RootComponent.State);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_26C609240(v5, type metadata accessor for RootComponent.State);
  }

  else
  {
    sub_26C609240(v5, type metadata accessor for RootComponent.State);
    memcpy(v10, v1, sizeof(v10));
    if (sub_26C603B48(v10) != 1)
    {
      v8[15] = 1;
      memset(v9, 0, 64);
      LOWORD(v9[4]) = 256;
      BYTE2(v9[4]) = 0;
      *(&v9[4] + 1) = 0x3FF0000000000000;
      memset(&v9[5], 0, 64);
      LOWORD(v9[9]) = 256;
      BYTE2(v9[9]) = 0;
      *(&v9[13] + 1) = 0u;
      *(&v9[12] + 8) = 0u;
      *(&v9[11] + 8) = 0u;
      *(&v9[10] + 8) = 0u;
      *(&v9[9] + 8) = 0u;
      *(&v9[14] + 1) = 1;
      *(&v9[17] + 8) = 0u;
      *(&v9[18] + 8) = 0u;
      *(&v9[16] + 8) = 0u;
      *(&v9[15] + 8) = 0u;
      WORD4(v9[19]) = 256;
      BYTE10(v9[19]) = 0;
      memset(&v9[20], 0, 81);
      *(&v9[25] + 1) = 1;
      *(&v9[25] + 1) = *&v10[536];
      *(&v9[14] + 1) = -*&v10[536];
      *&v9[15] = -*&v10[544];
      v9[26] = *&v10[544];
      CGSizeMake(v9);
      memcpy(v11, v9, sizeof(v11));
      return memcpy(a1, v11, 0x1B0uLL);
    }
  }

  sub_26C5F2300(v11);
  return memcpy(a1, v11, 0x1B0uLL);
}

void *sub_26C605684@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for RootComponent.State(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v65[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v65[-v7];
  v9 = *(type metadata accessor for RootComponent(0) + 20);
  sub_26C608E7C(v1 + v9, v8, type metadata accessor for RootComponent.State);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_26C609240(v8, type metadata accessor for RootComponent.State);
    memcpy(v213, v1, sizeof(v213));
    if (sub_26C603B48(v213) == 1)
    {
      goto LABEL_4;
    }

    v78 = a1;
    v185 = 1;
    v186 = 0u;
    v187 = 0u;
    v188 = 0u;
    v189 = 0u;
    LOWORD(v190) = 256;
    BYTE2(v190) = 0;
    v191 = 0x3FF0000000000000;
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
    v195 = 0u;
    v196 = 0;
    v197 = 1;
    v204 = 0;
    v203 = 0u;
    v202 = 0u;
    v201 = 0u;
    v200 = 0u;
    v199 = 0u;
    v198 = 0u;
    v205 = 1;
    memset(v207, 0, sizeof(v207));
    v206 = 0u;
    v10 = MEMORY[0x277D84F90];
    v208 = 1;
    v209 = MEMORY[0x277D84F90];
    memset(v210, 0, sizeof(v210));
    v211 = 1;
    v212 = MEMORY[0x277D84F90];
    v184 = v190;
    v183 = 0u;
    v182 = 0u;
    v180 = 0u;
    v181 = 0u;
    v11 = *v213;
    v12 = *&v213[8];
    v13 = *&v213[16];
    v14 = *&v213[24];
    v15 = *&v213[560];
    v16 = *&v213[568];
    v17 = *&v213[584];
    v86 = *&v213[592];
    v18 = *&v213[600];
    v19 = *&v213[608];
    v85 = *&v213[576] * 0.5 + *&v213[32] + (*&v213[48] - *&v213[576]) * 0.5;
    v20 = *&v213[616];
    v83 = *&v213[576];
    v84 = *&v213[584] * 0.5 + *&v213[40] + (*&v213[56] - *&v213[584]) * 0.5;
    v21 = *&v213[696];
    sub_26C6098C8(&v213[560], v214);
    v215.origin.x = v11;
    v215.origin.y = v12;
    v215.size.width = v13;
    v215.size.height = v14;
    Height = CGRectGetHeight(v215);
    sub_26C608E7C(v1 + v9, v6, type metadata accessor for RootComponent.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v17 = v20;
        v24 = v84 - v21 * Height - v20 * 0.5;
        v25 = v85 - v19 * 0.5;
        sub_26C609240(v6, type metadata accessor for RootComponent.State);
        v26 = v19 * 0.5 + v25;
        v27 = v20 * 0.5 + v24;
        v72 = *&v213[712];
        v73 = *&v213[704];
        v69 = *&v213[728];
        v70 = *&v213[744];
        v71 = *&v213[720];
        v84 = *&v213[752];
        v85 = *&v213[760];
        v82 = v213[769];
        LODWORD(v83) = v213[768];
        v74 = *&v213[632];
        v75 = *&v213[736];
        v76 = *&v213[640];
        v77 = *&v213[648];
        v102 = *&v213[656];
        v103 = *&v213[664];
        v80 = *&v213[672];
        v81 = *&v213[624];
        v79 = *&v213[680];
        v28 = v213[688];
        v98 = v213[689];
        v29 = v18;

        sub_26C603BBC(v210, &qword_2804A55C8);
        v30 = *&v213[712];
        v100 = *&v213[720];
        v101 = *&v213[704];
        v99 = *&v213[728];
        v31 = *&v213[736];
        v32 = *&v213[744];
        v33 = *&v213[752];
        v34 = *&v213[760];
        v35 = v213[768];
        v95 = v213[769];
        v36 = v86;

        sub_26C603BBC(v207, &qword_2804A55C0);
        sub_26C609924(&v213[560]);
        v37 = v35;
        v38 = v34;
        v40 = v82;
        v39 = LODWORD(v83);
        v42 = v71;
        v41 = v72;
        v43 = v33;
        v44 = v73;
        v45 = v32;
        v46 = v80;
        v47 = v81;
        v48 = v28;
        v50 = v84;
        v49 = v85;
        v51 = v31;
        v52 = v79;
        v53 = v69;
        v54 = v70;
        v55 = v30;
        v96 = *&v213[712];
        v97 = *&v213[704];
        v93 = *&v213[728];
        v94 = *&v213[720];
        v91 = *&v213[744];
        v92 = *&v213[736];
        v89 = *&v213[760];
        v90 = *&v213[752];
        v87 = v213[769];
        v88 = v213[768];
        v56 = *&v213[864];
        v182 = *&v213[816];
        v183 = *&v213[832];
        LOWORD(v184) = *&v213[848];
        v86 = v36;
        v181 = *&v213[800];
        v180 = *&v213[784];
LABEL_10:
        LODWORD(v83) = v39;
        v84 = v50;
        v85 = v49;
        v80 = v46;
        v81 = v47;
        v66 = v48;
        v79 = v52;
        v67 = v55;
        v68 = v51;
        v69 = v45;
        v70 = v38;
        LODWORD(v71) = v37;
        v72 = v43;
        v73 = v29;
        *(&v104[9] + 3) = v178;
        *(&v104[15] + 11) = v176;
        *(&v104[21] + 3) = v174;
        *(&v104[26] + 3) = v172;
        *&v104[4] = v184;
        BYTE7(v104[9]) = v179;
        HIBYTE(v104[15]) = v177;
        BYTE7(v104[21]) = v175;
        BYTE7(v104[26]) = v173;
        v104[2] = v182;
        v104[3] = v183;
        v104[0] = v180;
        v104[1] = v181;
        *(&v104[4] + 1) = v56;
        *&v104[5] = v44;
        *(&v104[5] + 1) = v41;
        v58 = v42;
        *&v104[6] = v42;
        *(&v104[6] + 1) = v53;
        v60 = v75;
        v59 = v76;
        *&v104[7] = v75;
        *(&v104[7] + 1) = v54;
        *&v104[8] = v50;
        *(&v104[8] + 1) = v49;
        LOBYTE(v104[9]) = v39;
        v82 = v40;
        *(&v104[9] + 1) = v40;
        *(&v104[9] + 1) = 0;
        *&v104[10] = 0;
        *(&v104[10] + 1) = v19;
        *&v104[11] = v17;
        v61 = v74;
        *(&v104[11] + 1) = v47;
        *&v104[12] = v74;
        v62 = v77;
        *(&v104[12] + 1) = v76;
        *&v104[13] = v77;
        *(&v104[13] + 1) = v102;
        *&v104[14] = v103;
        *(&v104[14] + 1) = v46;
        *&v104[15] = v52;
        BYTE8(v104[15]) = v48;
        *(&v104[15] + 9) = v98;
        *&v104[16] = v26;
        *(&v104[16] + 1) = v27;
        *&v104[17] = v97;
        *(&v104[17] + 1) = v96;
        *&v104[18] = v94;
        *(&v104[18] + 1) = v93;
        *&v104[19] = v92;
        *(&v104[19] + 1) = v91;
        *&v104[20] = v90;
        *(&v104[20] + 1) = v89;
        LOBYTE(v104[21]) = v88;
        *(&v104[21] + 1) = v87;
        *(&v104[21] + 1) = v86;
        *&v104[22] = v101;
        *(&v104[22] + 1) = v55;
        *&v104[23] = v100;
        *(&v104[23] + 1) = v99;
        *&v104[24] = v51;
        *(&v104[24] + 1) = v45;
        *&v104[25] = v43;
        *(&v104[25] + 1) = v38;
        LOBYTE(v104[26]) = v37;
        *(&v104[26] + 1) = v95;
        *(&v104[26] + 1) = v29;
        v63 = v53;
        memcpy(v105, v104, sizeof(v105));
        CGSizeMake(v105);
        v112 = v44;
        v113 = v41;
        v114 = v58;
        v115 = v63;
        v116 = v60;
        v117 = v54;
        v118 = v84;
        v119 = v85;
        v120 = LOBYTE(v83);
        v121 = v82;
        v129 = v81;
        v130 = v61;
        v131 = v59;
        v132 = v62;
        v108 = v182;
        v109 = v183;
        v110 = v184;
        v107 = v181;
        v106 = v180;
        v111 = v56;
        v122 = 0;
        v123 = v178;
        v124 = v179;
        v125 = 0;
        v126 = 0;
        v127 = v19;
        v128 = v17;
        v133 = v102;
        v134 = v103;
        v135 = v80;
        v136 = v79;
        v137 = v66;
        v138 = v98;
        v139 = 0;
        v141 = v177;
        v140 = v176;
        v142 = v26;
        v143 = v27;
        v144 = v97;
        v145 = v96;
        v146 = v94;
        v147 = v93;
        v148 = v92;
        v149 = v91;
        v150 = v90;
        v151 = v89;
        v152 = v88;
        v153 = v87;
        v154 = 0;
        v155 = v174;
        v156 = v175;
        v157 = v86;
        v158 = v101;
        v159 = v67;
        v160 = v100;
        v161 = v99;
        v162 = v68;
        v163 = v69;
        v164 = v72;
        v165 = v70;
        v166 = v71;
        v167 = v95;
        v168 = 0;
        v169 = v172;
        v170 = v173;
        v171 = v73;
        sub_26C609978(v104, v214);
        sub_26C6099D4(&v106);
        memcpy(v214, v105, 0x1B0uLL);
        a1 = v78;
        return memcpy(a1, v214, 0x1B0uLL);
      }
    }

    else
    {
      sub_26C609240(v6, type metadata accessor for ScanwaveActivateRequest);
    }

    v57 = v185;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    LOWORD(v110) = 256;
    BYTE2(v110) = 0;
    *(&v110 + 3) = v172;
    HIBYTE(v110) = v173;
    v111 = v10;
    v29 = v16;

    sub_26C603BBC(&v106, &qword_2804A55C8);
    memset(v214, 0, 64);
    LOWORD(v214[4]) = 256;
    BYTE2(v214[4]) = 0;
    *(&v214[4] + 3) = v174;
    BYTE7(v214[4]) = v175;
    *(&v214[4] + 1) = v10;
    v86 = v15;

    sub_26C603BBC(v214, &qword_2804A55C0);
    sub_26C609924(&v213[560]);
    v44 = 0;
    v41 = 0;
    v42 = 0;
    v53 = 0;
    v74 = 0;
    v75 = 0;
    v54 = 0;
    v50 = 0.0;
    v49 = 0.0;
    v39 = 0;
    v47 = 0;
    v76 = 0;
    v77 = 0;
    v102 = 0;
    v103 = 0;
    v46 = 0;
    v52 = 0;
    v48 = 0;
    v100 = 0;
    v101 = 0;
    v55 = 0;
    v99 = 0;
    v51 = 0;
    v45 = 0;
    v43 = 0;
    v38 = 0;
    v37 = 0;
    v96 = 0;
    v97 = 0;
    v93 = 0;
    v94 = 0;
    v91 = 0;
    v92 = 0;
    v89 = 0;
    v90 = 0;
    v87 = v57;
    v88 = 0;
    v56 = *&v213[856];
    v98 = v57;
    v95 = v57;
    v40 = v57;
    v27 = v84;
    v26 = v85;
    v19 = v83;
    goto LABEL_10;
  }

  sub_26C609240(v8, type metadata accessor for RootComponent.State);
LABEL_4:
  sub_26C5F22C0(v214);
  return memcpy(a1, v214, 0x1B0uLL);
}

uint64_t sub_26C6060CC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RootComponent.State(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RootComponent(0);
  sub_26C608E7C(v1 + *(v6 + 20), v5, type metadata accessor for RootComponent.State);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    result = sub_26C609240(v5, type metadata accessor for RootComponent.State);
  }

  else
  {
    sub_26C609240(v5, type metadata accessor for RootComponent.State);
    memcpy(v17, v1, 0x511uLL);
    result = sub_26C603B48(v17);
    if (result != 1)
    {
      result = sub_26C608088(v18);
      v8 = v19;
      if ((v19 & 0xFF0000) != 0x20000)
      {
        v9 = v21;
        v14 = v20;
        v12 = v18[2];
        v13 = v18[3];
        v10 = v18[0];
        v11 = v18[1];
        v15 = *&v17[65];
        goto LABEL_6;
      }
    }
  }

  v9 = 0;
  v10 = 0uLL;
  v8 = 0x20000;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
LABEL_6:
  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  *(a1 + 64) = v8;
  *(a1 + 72) = v14;
  *(a1 + 88) = v9;
  *(a1 + 96) = v15;
  return result;
}

uint64_t sub_26C606264@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RootComponent.State(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for RootComponent(0);
  sub_26C608E7C(v1 + *(v6 + 20), v5, type metadata accessor for RootComponent.State);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    result = sub_26C609240(v5, type metadata accessor for RootComponent.State);
  }

  else
  {
    sub_26C609240(v5, type metadata accessor for RootComponent.State);
    memcpy(v12, v1, 0x511uLL);
    result = sub_26C603B48(v12);
    if (result != 1)
    {
      v11[7] = 1;
      v9 = *&v12[109];
      v10 = 256;
      v8 = 0x3FF0000000000000;
      goto LABEL_6;
    }
  }

  v8 = 0;
  v9 = 0uLL;
  v10 = 0x20000;
LABEL_6:
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = v10;
  *(a1 + 72) = v8;
  *(a1 + 80) = v9;
  return result;
}

uint64_t sub_26C6063CC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RootComponent.State(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v23[-v7];
  v9 = *(type metadata accessor for RootComponent(0) + 20);
  sub_26C608E7C(v1 + v9, v8, type metadata accessor for RootComponent.State);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_26C609240(v8, type metadata accessor for RootComponent.State);
    memcpy(v25, v1, sizeof(v25));
    result = sub_26C603B48(v25);
    if (result == 1)
    {
      goto LABEL_4;
    }

    v24 = 1;
    sub_26C608E7C(v1 + v9, v6, type metadata accessor for RootComponent.State);
    result = swift_getEnumCaseMultiPayload();
    if (result)
    {
      if (result == 1)
      {
        if (*(*v6 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_outroDelayTimerID + 16))
        {
          v17 = *(*v6 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_inverseBlurDelayTimerID + 16);

          if (v17)
          {
            v12 = *&v25[976];
            v14 = *&v25[992];
            v15 = *&v25[1008];
            v16 = *&v25[1024];
            LODWORD(v18) = v25[1040];
            v19 = v25[1041];
            v20 = v25[1042];
            v21 = *&v25[1043] | (v25[1047] << 32);
            v11 = *&v25[1048];
          }

          else
          {
            v12 = *&v25[896];
            v14 = *&v25[912];
            v15 = *&v25[928];
            v16 = *&v25[944];
            LODWORD(v18) = v25[960];
            v19 = v25[961];
            v20 = v25[962];
            v21 = *&v25[963] | (v25[967] << 32);
            v11 = *&v25[968];
          }
        }

        else
        {

          LODWORD(v18) = 0;
          v20 = 0;
          v11 = *&v25[888];
          v12 = 0uLL;
          v19 = v24;
          v14 = 0uLL;
          v15 = 0uLL;
          v16 = 0uLL;
        }

        v22 = (v20 << 16) | (v21 << 24);
        v18 = v18;
        goto LABEL_15;
      }
    }

    else
    {
      result = sub_26C609240(v6, type metadata accessor for ScanwaveActivateRequest);
    }

    v18 = 0;
    v22 = 0;
    v11 = *&v25[888];
    v12 = 0uLL;
    v19 = v24;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
LABEL_15:
    v13 = v18 | (v19 << 8) | v22;
    goto LABEL_16;
  }

  result = sub_26C609240(v8, type metadata accessor for RootComponent.State);
LABEL_4:
  v11 = 0;
  v12 = 0uLL;
  v13 = 0x20000;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
LABEL_16:
  *a1 = v12;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(a1 + 48) = v16;
  *(a1 + 64) = v13;
  *(a1 + 72) = v11;
  return result;
}

double sub_26C606684(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for RootComponent.State(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v11 = *(type metadata accessor for RootComponent(0) + 20);
  sub_26C608E7C(v2 + v11, v10, type metadata accessor for RootComponent.State);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_26C609240(v10, type metadata accessor for RootComponent.State);
    memcpy(v65, v2, 0x511uLL);
    memcpy(v66, v2, 0x511uLL);
    if (sub_26C603B48(v66) == 1)
    {
      goto LABEL_4;
    }

    v63 = 1;
    v30 = *(MEMORY[0x277CD9DE8] + 64);
    v53 = *(MEMORY[0x277CD9DE8] + 80);
    v54 = v30;
    *&v60[69] = v30;
    *&v60[85] = v53;
    v31 = *(MEMORY[0x277CD9DE8] + 96);
    v51 = *(MEMORY[0x277CD9DE8] + 112);
    v52 = v31;
    *&v60[101] = v31;
    *&v60[117] = v51;
    v32 = *(MEMORY[0x277CD9DE8] + 16);
    v49 = *MEMORY[0x277CD9DE8];
    v50 = v32;
    *&v60[5] = v49;
    *&v60[21] = v32;
    v33 = *(MEMORY[0x277CD9DE8] + 32);
    v47 = *(MEMORY[0x277CD9DE8] + 48);
    v48 = v33;
    *&v60[37] = v33;
    *&v60[53] = v47;
    sub_26C608E7C(v2 + v11, v8, type metadata accessor for RootComponent.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (*(*v8 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_outroDelayTimerID + 16))
        {
          v35 = v58;
          v53 = *(&v66[11] + 8);
          v54 = *(&v66[10] + 8);
          v51 = *(&v66[13] + 8);
          v52 = *(&v66[12] + 8);
          v13 = BYTE8(v66[14]);
          v23 = BYTE9(v66[14]);
          v14 = BYTE10(v66[14]);
          v61 = *(&v66[14] + 11);
          v62 = HIBYTE(v66[14]);
          v20 = *&v66[15];
          v36 = *(&v66[25] + 1);
          memcpy(v59, v65, 0x511uLL);
          sub_26C603B60(v59, v57);
          CATransform3DMakeScale(v57, v36, v36, 1.0);

          sub_26C603BBC(v65, &qword_2804A5618);
          v25 = v51;
          v24 = v52;
          v21 = v53;
          v19 = v54;
          *&v58[5] = v57[0];
          v26 = v66[21];
          v27 = v66[22];
          v28 = v66[23];
          v29 = v66[24];
          v12 = v66[25];
          v15 = BYTE1(v66[25]);
        }

        else
        {
          v35 = v56;
          v53 = *(&v66[6] + 8);
          v54 = *(&v66[5] + 8);
          v51 = *(&v66[8] + 8);
          v52 = *(&v66[7] + 8);
          v13 = BYTE8(v66[9]);
          v23 = BYTE9(v66[9]);
          v14 = BYTE10(v66[9]);
          v61 = *(&v66[9] + 11);
          v62 = HIBYTE(v66[9]);
          v20 = *&v66[10];
          v37 = *(&v66[20] + 1);
          memcpy(v59, v65, 0x511uLL);
          sub_26C603B60(v59, v57);
          CATransform3DMakeScale(v57, v37, v37, 1.0);

          sub_26C603BBC(v65, &qword_2804A5618);
          v25 = v51;
          v24 = v52;
          v21 = v53;
          v19 = v54;
          *&v56[5] = v57[0];
          v26 = v66[16];
          v27 = v66[17];
          v28 = v66[18];
          v29 = v66[19];
          v12 = v66[20];
          v15 = BYTE1(v66[20]);
        }

        *&v60[125] = *(v35 + 125);
        v38 = *(v35 + 7);
        *&v60[96] = *(v35 + 6);
        *&v60[112] = v38;
        v39 = *(v35 + 5);
        *&v60[64] = *(v35 + 4);
        *&v60[80] = v39;
        v40 = *(v35 + 3);
        *&v60[32] = *(v35 + 2);
        *&v60[48] = v40;
        v41 = *(v35 + 1);
        *v60 = *v35;
        *&v60[16] = v41;
        goto LABEL_14;
      }

      memcpy(v59, v65, 0x511uLL);
      sub_26C603B60(v59, v57);
    }

    else
    {
      memcpy(v59, v65, 0x511uLL);
      sub_26C603B60(v59, v57);
      sub_26C609240(v8, type metadata accessor for ScanwaveActivateRequest);
    }

    v20 = *&v66[5];
    v23 = v63;
    sub_26C603BBC(v65, &qword_2804A5618);
    v13 = 0;
    v12 = 0;
    v14 = 0;
    *&v55[5] = v49;
    *&v55[53] = v47;
    *&v55[37] = v48;
    *&v55[21] = v50;
    *&v55[117] = v51;
    *&v55[101] = v52;
    *&v55[85] = v53;
    *&v55[69] = v54;
    *&v60[32] = *&v55[32];
    *&v60[48] = *&v55[48];
    *v60 = *v55;
    *&v60[16] = *&v55[16];
    *&v60[125] = *(&v51 + 1);
    v19 = 0uLL;
    v15 = v23;
    v21 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    *&v60[96] = *&v55[96];
    *&v60[112] = *&v55[112];
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    *&v60[64] = *&v55[64];
    *&v60[80] = *&v55[80];
    v29 = 0uLL;
LABEL_14:
    *&v64[80] = *&v60[80];
    *&v64[96] = *&v60[96];
    *&v64[112] = *&v60[112];
    *&v64[125] = *&v60[125];
    *&v64[32] = *&v60[32];
    *&v64[48] = *&v60[48];
    *&v64[64] = *&v60[64];
    *v64 = *v60;
    *&v64[16] = *&v60[16];
    goto LABEL_15;
  }

  sub_26C609240(v10, type metadata accessor for RootComponent.State);
LABEL_4:
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 1;
  LOBYTE(v66[0]) = 1;
  v16 = *(MEMORY[0x277CD9DE8] + 80);
  *&v64[69] = *(MEMORY[0x277CD9DE8] + 64);
  *&v64[85] = v16;
  v17 = *(MEMORY[0x277CD9DE8] + 112);
  *&v64[101] = *(MEMORY[0x277CD9DE8] + 96);
  *&v64[117] = v17;
  v18 = *(MEMORY[0x277CD9DE8] + 16);
  *&v64[5] = *MEMORY[0x277CD9DE8];
  *&v64[21] = v18;
  v19 = 0uLL;
  v20 = 0;
  v21 = 0uLL;
  v22 = *(MEMORY[0x277CD9DE8] + 48);
  *&v64[37] = *(MEMORY[0x277CD9DE8] + 32);
  *&v64[53] = v22;
  v23 = 1;
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
LABEL_15:
  *v4 = v26;
  *(v4 + 16) = v27;
  *(v4 + 32) = v28;
  *(v4 + 48) = v29;
  *(v4 + 64) = v12;
  *(v4 + 65) = v15;
  *(v4 + 66) = 0;
  v42 = *&v64[64];
  *(v4 + 147) = *&v64[80];
  v43 = *&v64[112];
  *(v4 + 163) = *&v64[96];
  *(v4 + 179) = v43;
  *(v4 + 192) = *&v64[125];
  v44 = *v64;
  *(v4 + 83) = *&v64[16];
  result = *&v64[32];
  v46 = *&v64[48];
  *(v4 + 99) = *&v64[32];
  *(v4 + 115) = v46;
  *(v4 + 131) = v42;
  *(v4 + 67) = v44;
  *(v4 + 200) = v19;
  *(v4 + 216) = v21;
  *(v4 + 232) = v24;
  *(v4 + 248) = v25;
  *(v4 + 264) = v13;
  *(v4 + 265) = v23;
  *(v4 + 266) = v14;
  *(v4 + 267) = v61;
  *(v4 + 271) = v62;
  *(v4 + 272) = v20;
  return result;
}

void *sub_26C606D90@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for RootComponent.State(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - v7;
  v9 = *(type metadata accessor for RootComponent(0) + 20);
  sub_26C608E7C(v1 + v9, v8, type metadata accessor for RootComponent.State);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_26C609240(v8, type metadata accessor for RootComponent.State);
    memcpy(v88, v1, sizeof(v88));
    if (sub_26C603B48(v88) == 1)
    {
      goto LABEL_4;
    }

    v10 = 1;
    v87 = 1;
    v11 = *v88;
    v12 = *&v88[8];
    v13 = *&v88[16];
    v14 = *&v88[24];
    sub_26C6097C4(&v88[1064], v89);
    v90.origin.x = v11;
    v90.origin.y = v12;
    v90.size.width = v13;
    v90.size.height = v14;
    Width = CGRectGetWidth(v90);
    v16 = *&v88[32];
    v17 = *&v88[40];
    v18 = *&v88[48];
    v19 = *&v88[56];
    *&v42 = Width * 0.5;
    sub_26C608E7C(v1 + v9, v6, type metadata accessor for RootComponent.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v21 = v11 + (v13 - Width) * 0.5;
        v22 = *(*v6 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_outroDelayTimerID + 16);

        if (v22)
        {
          v23 = *&v88[1224];
          v45 = *&v88[1168];
          v46 = *&v88[1152];
          v43 = *&v88[1200];
          v44 = *&v88[1184];
          v24 = v88[1216];
          v25 = v88[1217];
          memset(v89, 0, 64);
          LOWORD(v89[8]) = 256;
          BYTE2(v89[8]) = 0;
          v89[9] = 0;
          v26 = &v88[1152];
        }

        else
        {
          v23 = *&v88[1144];
          v45 = *&v88[1088];
          v46 = *&v88[1072];
          v43 = *&v88[1120];
          v44 = *&v88[1104];
          v24 = v88[1136];
          v25 = v88[1137];
          memset(v89, 0, 64);
          LOWORD(v89[8]) = 256;
          BYTE2(v89[8]) = 0;
          v89[9] = 0;
          v26 = &v88[1072];
        }

        sub_26C603C78(v26, v50, &qword_2804A5748);
        sub_26C603BBC(v89, &qword_2804A5750);
        sub_26C609820(&v88[1064]);
        v35 = v43;
        v34 = v44;
        v33 = v45;
        v32 = v46;
        v10 = 0;
        v47 = *&v88[1232];
        v29 = *&v88[1248];
        v30 = *&v88[1264];
        v31 = *&v88[1280];
        v28 = v88[1296];
        v27 = 0.0;
        LOBYTE(v50[0]) = 0;
        goto LABEL_13;
      }
    }

    else
    {
      sub_26C609240(v6, type metadata accessor for ScanwaveActivateRequest);
    }

    v21 = v16 + (v18 - Width) * 0.5;
    v27 = v17 + (v19 - Width) * 0.5;
    v23 = *&v88[1064];
    sub_26C609820(&v88[1064]);
    memset(v89, 0, 64);
    v47 = 0u;
    LOWORD(v89[8]) = 256;
    BYTE2(v89[8]) = 0;
    v89[9] = 0;
    sub_26C603BBC(v89, &qword_2804A5750);
    v28 = 0;
    v24 = 0;
    v29 = 0uLL;
    v25 = 1;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
LABEL_13:
    v36 = *&v42;
    v45 = v33;
    v46 = v32;
    v43 = v35;
    v44 = v34;
    v40 = v29;
    v41 = v30;
    v42 = v31;
    v37 = v36 + v27;
    v38 = v36 + v21;
    v48[0] = v32;
    v48[1] = v33;
    v48[2] = v34;
    v48[3] = v35;
    LOBYTE(v48[4]) = v24;
    *(&v48[4] + 1) = v25;
    *(&v48[4] + 3) = v85;
    BYTE7(v48[4]) = v86;
    *(&v48[4] + 1) = v23;
    v48[5] = v47;
    v48[6] = v29;
    v48[7] = v30;
    v48[8] = v31;
    LOBYTE(v48[9]) = v28;
    *(&v48[9] + 1) = v10;
    *(&v48[9] + 3) = v83;
    BYTE7(v48[9]) = v84;
    *(&v48[9] + 1) = 0;
    *&v48[10] = 0;
    *(&v48[10] + 1) = Width;
    *&v48[11] = Width;
    *(&v48[11] + 8) = v47;
    *(&v48[12] + 8) = v29;
    *(&v48[13] + 8) = v30;
    *(&v48[14] + 8) = v31;
    BYTE8(v48[15]) = v28;
    *(&v48[15] + 9) = v10;
    HIBYTE(v48[15]) = v82;
    *(&v48[15] + 11) = v81;
    *&v48[16] = v38;
    *(&v48[16] + 1) = v37;
    memcpy(v49, v48, sizeof(v49));
    CGSizeMake(v49);
    v50[0] = v46;
    v50[1] = v45;
    v50[2] = v44;
    v50[3] = v43;
    v51 = v24;
    v52 = v25;
    v53 = 0;
    v54 = v85;
    v55 = v86;
    v56 = v23;
    v57 = v47;
    v58 = v40;
    v59 = v41;
    v60 = v42;
    v61 = v28;
    v62 = v10;
    v63 = 0;
    v64 = v83;
    v65 = v84;
    v66 = 0;
    v67 = 0;
    v68 = Width;
    v69 = Width;
    v70 = v47;
    v71 = v40;
    v72 = v41;
    v73 = v42;
    v74 = v28;
    v75 = v10;
    v76 = 0;
    v78 = v82;
    v77 = v81;
    v79 = v38;
    v80 = v37;
    sub_26C6036C4(v48, v89);
    sub_26C609874(v50);
    memcpy(v89, v49, 0x110uLL);
    return memcpy(a1, v89, 0x110uLL);
  }

  sub_26C609240(v8, type metadata accessor for RootComponent.State);
LABEL_4:
  sub_26C5F2360(v89);
  return memcpy(a1, v89, 0x110uLL);
}

void *sub_26C607340(uint64_t a1)
{
  v2 = type metadata accessor for ScanwaveCommonAction();
  v3 = *(v2 - 8);
  v89 = v2;
  v90 = v3;
  v4 = (MEMORY[0x28223BE20])();
  v83 = (&v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v82 = (&v78 - v7);
  MEMORY[0x28223BE20](v6);
  v84 = &v78 - v8;
  v9 = type metadata accessor for ExternalRequestID(0);
  v93 = *(v9 - 8);
  v94 = v9;
  MEMORY[0x28223BE20](v9);
  v79 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5780);
  MEMORY[0x28223BE20](v87);
  v88 = &v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5788);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v80 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v91 = &v78 - v16;
  MEMORY[0x28223BE20](v15);
  v92 = &v78 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5790);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v85 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v78 - v21;
  v23 = type metadata accessor for ScanwaveActivateRequest(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v96 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for RootComponent.State(0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = (&v78 - v31);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = (&v78 - v34);
  MEMORY[0x28223BE20](v33);
  v37 = &v78 - v36;
  v86 = a1;
  sub_26C608E7C(a1, &v78 - v36, type metadata accessor for RootComponent.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v38 = v37;
  v39 = v98;
  sub_26C609240(v38, type metadata accessor for RootComponent.State);
  sub_26C608E7C(v39, v35, type metadata accessor for RootComponent.State);
  v97 = v26;
  v40 = swift_getEnumCaseMultiPayload();
  v95 = v29;
  if (!v40)
  {
    sub_26C609A8C(v35, v22, type metadata accessor for ScanwaveActivateRequest);
    goto LABEL_5;
  }

  if (v40 == 1)
  {
    sub_26C608E7C(*v35 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_activateRequest, v22, type metadata accessor for ScanwaveActivateRequest);

LABEL_5:
    v41 = 0;
    goto LABEL_7;
  }

  v41 = 1;
LABEL_7:
  v42 = *(v24 + 56);
  v42(v22, v41, 1, v23);
  v43 = *(v24 + 48);
  if (v43(v22, 1, v23) == 1)
  {
    sub_26C603BBC(v22, &qword_2804A5790);
    v44 = MEMORY[0x277D84F90];
    v45 = v95;
    goto LABEL_28;
  }

  v46 = v96;
  sub_26C609A8C(v22, v96, type metadata accessor for ScanwaveActivateRequest);
  v47 = v46;
  v48 = v92;
  sub_26C608E7C(v47, v92, type metadata accessor for ExternalRequestID);
  v49 = 1;
  v50 = v48;
  v51 = *(v93 + 56);
  v51(v50, 0, 1, v94);
  sub_26C608E7C(v86, v32, type metadata accessor for RootComponent.State);
  v52 = swift_getEnumCaseMultiPayload();
  if (v52)
  {
    v53 = v85;
    if (v52 != 1)
    {
      goto LABEL_14;
    }

    sub_26C608E7C(*v32 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_activateRequest, v85, type metadata accessor for ScanwaveActivateRequest);
  }

  else
  {
    v53 = v85;
    sub_26C609A8C(v32, v85, type metadata accessor for ScanwaveActivateRequest);
  }

  v49 = 0;
LABEL_14:
  v42(v53, v49, 1, v23);
  if (v43(v53, 1, v23) == 1)
  {
    sub_26C603BBC(v53, &qword_2804A5790);
    v54 = 1;
    v55 = v94;
    v45 = v95;
    v56 = v88;
    v57 = v91;
    v58 = v92;
  }

  else
  {
    v57 = v91;
    sub_26C608E7C(v53, v91, type metadata accessor for ExternalRequestID);
    sub_26C609240(v53, type metadata accessor for ScanwaveActivateRequest);
    v54 = 0;
    v55 = v94;
    v45 = v95;
    v56 = v88;
    v58 = v92;
  }

  v51(v57, v54, 1, v55);
  v59 = *(v87 + 48);
  sub_26C603C78(v58, v56, &qword_2804A5788);
  sub_26C603C78(v57, v56 + v59, &qword_2804A5788);
  v60 = v57;
  v61 = *(v93 + 48);
  if (v61(v56, 1, v55) == 1)
  {
    sub_26C603BBC(v60, &qword_2804A5788);
    sub_26C603BBC(v58, &qword_2804A5788);
    if (v61(v56 + v59, 1, v55) == 1)
    {
      sub_26C603BBC(v56, &qword_2804A5788);
LABEL_27:
      sub_26C609240(v96, type metadata accessor for ScanwaveActivateRequest);
      v44 = MEMORY[0x277D84F90];
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  v62 = v80;
  sub_26C603C78(v56, v80, &qword_2804A5788);
  if (v61(v56 + v59, 1, v55) == 1)
  {
    sub_26C603BBC(v91, &qword_2804A5788);
    sub_26C603BBC(v58, &qword_2804A5788);
    sub_26C609240(v62, type metadata accessor for ExternalRequestID);
LABEL_22:
    sub_26C603BBC(v56, &qword_2804A5780);
    v63 = v84;
    goto LABEL_23;
  }

  v67 = v56 + v59;
  v68 = v79;
  sub_26C609A8C(v67, v79, type metadata accessor for ExternalRequestID);
  v69 = sub_26C614DB8();
  sub_26C609240(v68, type metadata accessor for ExternalRequestID);
  sub_26C603BBC(v91, &qword_2804A5788);
  sub_26C603BBC(v58, &qword_2804A5788);
  sub_26C609240(v62, type metadata accessor for ExternalRequestID);
  sub_26C603BBC(v56, &qword_2804A5788);
  v63 = v84;
  if (v69)
  {
    goto LABEL_27;
  }

LABEL_23:
  v64 = EnumCaseMultiPayload != 2;
  sub_26C608E7C(v96, v63, type metadata accessor for ExternalRequestID);
  *(v63 + *(type metadata accessor for ScanwaveActivateResponse(0) + 20)) = v64;
  swift_storeEnumTagMultiPayload();
  v44 = sub_26C609304(0, 1, 1, MEMORY[0x277D84F90], &qword_2804A5628, &unk_26C61B070, type metadata accessor for ScanwaveCommonAction);
  v66 = v44[2];
  v65 = v44[3];
  if (v66 >= v65 >> 1)
  {
    v44 = sub_26C609304(v65 > 1, v66 + 1, 1, v44, &qword_2804A5628, &unk_26C61B070, type metadata accessor for ScanwaveCommonAction);
  }

  sub_26C609240(v96, type metadata accessor for ScanwaveActivateRequest);
  v44[2] = v66 + 1;
  sub_26C609A8C(v63, v44 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v66, type metadata accessor for ScanwaveCommonAction);
LABEL_28:
  sub_26C608E7C(v98, v45, type metadata accessor for RootComponent.State);
  v70 = swift_getEnumCaseMultiPayload();
  if (v70)
  {
    if (v70 == 1)
    {
      v71 = *v45;
      v72 = *v45 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_outroDelayTimerID;
      if ((*(v72 + 16) & 1) == 0)
      {
        *v82 = *v72;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_26C609304(0, v44[2] + 1, 1, v44, &qword_2804A5628, &unk_26C61B070, type metadata accessor for ScanwaveCommonAction);
        }

        v74 = v44[2];
        v73 = v44[3];
        if (v74 >= v73 >> 1)
        {
          v44 = sub_26C609304(v73 > 1, v74 + 1, 1, v44, &qword_2804A5628, &unk_26C61B070, type metadata accessor for ScanwaveCommonAction);
        }

        v44[2] = v74 + 1;
        sub_26C609A8C(v82, v44 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v74, type metadata accessor for ScanwaveCommonAction);
      }

      if (*(v71 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_inverseBlurDelayTimerID + 16) == 1)
      {
      }

      else
      {
        *v83 = *(v71 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_inverseBlurDelayTimerID);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_26C609304(0, v44[2] + 1, 1, v44, &qword_2804A5628, &unk_26C61B070, type metadata accessor for ScanwaveCommonAction);
        }

        v76 = v44[2];
        v75 = v44[3];
        if (v76 >= v75 >> 1)
        {
          v44 = sub_26C609304(v75 > 1, v76 + 1, 1, v44, &qword_2804A5628, &unk_26C61B070, type metadata accessor for ScanwaveCommonAction);
        }

        v44[2] = v76 + 1;
        sub_26C609A8C(v83, v44 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v76, type metadata accessor for ScanwaveCommonAction);
      }
    }
  }

  else
  {
    sub_26C609240(v45, type metadata accessor for ScanwaveActivateRequest);
  }

  return v44;
}

uint64_t sub_26C608088@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RootComponent.State(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-v7];
  v9 = *(type metadata accessor for RootComponent(0) + 20);
  sub_26C608E7C(v1 + v9, v8, type metadata accessor for RootComponent.State);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_26C609240(v8, type metadata accessor for RootComponent.State);
    memcpy(v22, v1, sizeof(v22));
    result = sub_26C603B48(v22);
    if (result == 1)
    {
      goto LABEL_4;
    }

    v21 = 1;
    sub_26C608E7C(v1 + v9, v6, type metadata accessor for RootComponent.State);
    result = swift_getEnumCaseMultiPayload();
    if (result)
    {
      if (result == 1)
      {
        result = sub_26C609240(v6, type metadata accessor for RootComponent.State);
        v11 = *&v22[496];
        v12 = *&v22[416];
        v14 = *&v22[432];
        v15 = *&v22[448];
        v16 = *&v22[464];
        v18 = v22[480];
        v19 = v22[481];
LABEL_10:
        v17 = *&v22[504];
        v13 = v18 | (v19 << 8);
        goto LABEL_11;
      }
    }

    else
    {
      result = sub_26C609240(v6, type metadata accessor for ScanwaveActivateRequest);
    }

    v18 = 0;
    v11 = *&v22[488];
    v12 = 0uLL;
    v19 = v21;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    goto LABEL_10;
  }

  result = sub_26C609240(v8, type metadata accessor for RootComponent.State);
LABEL_4:
  v11 = 0;
  v12 = 0uLL;
  v13 = 0x20000;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
LABEL_11:
  *a1 = v12;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(a1 + 48) = v16;
  *(a1 + 64) = v13;
  *(a1 + 72) = v11;
  *(a1 + 80) = v17;
  return result;
}

uint64_t sub_26C6082C8(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = v1 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_completionTimerID;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = v1 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_outroDelayTimerID;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  v5 = v1 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_inverseBlurDelayTimerID;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  v6 = OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_progressAnimatablePropertyID;
  v9 = 0uLL;
  MEMORY[0x26D6A50F0](&v9);
  *(v1 + v6) = v9;
  v7 = OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_completionProgressMilestoneID;
  v9 = 0uLL;
  MEMORY[0x26D6A50F0](&v9);
  *(v1 + v7) = v9;
  *(v1 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_isComplete) = 0;
  sub_26C609A8C(a1, v1 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_activateRequest, type metadata accessor for ScanwaveActivateRequest);
  return v1;
}

void *sub_26C6083D4(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v58 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for ScanwaveCommonAction();
  v55 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v53 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v53 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  v16 = type metadata accessor for ScanwaveCommonEvent();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = &v53 - v20;
  sub_26C608E7C(a1, &v53 - v20, type metadata accessor for ScanwaveCommonEvent);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v31 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  sub_26C608E7C(v21, v19, type metadata accessor for ScanwaveCommonEvent);
  v22 = *v19;
  v23 = v19[1];
  v24 = v2 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_outroDelayTimerID;
  if ((*(v2 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_outroDelayTimerID + 16) & 1) == 0 && *v24 == v22 && *(v24 + 8) == v23)
  {
    v56 = 0;
    v57 = 0;
    MEMORY[0x26D6A50F0](&v56);
    v26 = v56;
    v27 = v57;
    v28 = v2 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_inverseBlurDelayTimerID;
    *v28 = v56;
    *(v28 + 8) = v27;
    *(v28 + 16) = 0;
    *v24 = 0;
    *(v24 + 8) = 0;
    *(v24 + 16) = 1;
    v29 = *(v54 + 1056);
    UIAnimationDragCoefficient();
    *v15 = v26;
    *(v15 + 1) = v27;
    *(v15 + 2) = v29 * v30;
    swift_storeEnumTagMultiPayload();
    v31 = sub_26C609304(0, 1, 1, MEMORY[0x277D84F90], &qword_2804A5628, &unk_26C61B070, type metadata accessor for ScanwaveCommonAction);
    v33 = v31[2];
    v32 = v31[3];
    if (v33 >= v32 >> 1)
    {
      v31 = sub_26C609304(v32 > 1, v33 + 1, 1, v31, &qword_2804A5628, &unk_26C61B070, type metadata accessor for ScanwaveCommonAction);
    }

    v31[2] = v33 + 1;
    v34 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v35 = *(v55 + 72);
    sub_26C609A8C(v15, v31 + v34 + v35 * v33, type metadata accessor for ScanwaveCommonAction);
    if (qword_2804A4BF0 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v4, qword_2804A7300);
    sub_26C608E7C(v36, v13, type metadata accessor for ScanwaveCommonAction);
    v38 = v31[2];
    v37 = v31[3];
    if (v38 >= v37 >> 1)
    {
      v31 = sub_26C609304(v37 > 1, v38 + 1, 1, v31, &qword_2804A5628, &unk_26C61B070, type metadata accessor for ScanwaveCommonAction);
    }

    v31[2] = v38 + 1;
    v39 = v31 + v34 + v38 * v35;
    v40 = v13;
    goto LABEL_38;
  }

  v41 = v2 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_inverseBlurDelayTimerID;
  if ((*(v2 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_inverseBlurDelayTimerID + 16) & 1) == 0 && *v41 == v22 && *(v41 + 8) == v23)
  {
    *v41 = 0;
    *(v41 + 8) = 0;
    *(v41 + 16) = 1;
    if (qword_2804A4BF0 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v4, qword_2804A7300);
    sub_26C608E7C(v43, v10, type metadata accessor for ScanwaveCommonAction);
    v31 = sub_26C609304(0, 1, 1, MEMORY[0x277D84F90], &qword_2804A5628, &unk_26C61B070, type metadata accessor for ScanwaveCommonAction);
    v45 = v31[2];
    v44 = v31[3];
    if (v45 >= v44 >> 1)
    {
      v31 = sub_26C609304(v44 > 1, v45 + 1, 1, v31, &qword_2804A5628, &unk_26C61B070, type metadata accessor for ScanwaveCommonAction);
    }

    v31[2] = v45 + 1;
    v39 = v31 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v45;
    v40 = v10;
    goto LABEL_38;
  }

  v46 = v2 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_completionTimerID;
  v31 = MEMORY[0x277D84F90];
  if ((*(v2 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_completionTimerID + 16) & 1) == 0 && *v46 == v22 && *(v46 + 8) == v23)
  {
    *v46 = 0;
    *(v46 + 8) = 0;
    *(v46 + 16) = 1;
    *(v2 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_isComplete) = 1;
    if (qword_2804A4BF0 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v4, qword_2804A7300);
    sub_26C608E7C(v48, v7, type metadata accessor for ScanwaveCommonAction);
    v31 = sub_26C609304(0, 1, 1, MEMORY[0x277D84F90], &qword_2804A5628, &unk_26C61B070, type metadata accessor for ScanwaveCommonAction);
    v50 = v31[2];
    v49 = v31[3];
    if (v50 >= v49 >> 1)
    {
      v31 = sub_26C609304(v49 > 1, v50 + 1, 1, v31, &qword_2804A5628, &unk_26C61B070, type metadata accessor for ScanwaveCommonAction);
    }

    v51 = v55;
    v31[2] = v50 + 1;
    v39 = v31 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v50;
    v40 = v7;
LABEL_38:
    sub_26C609A8C(v40, v39, type metadata accessor for ScanwaveCommonAction);
  }

LABEL_39:
  sub_26C609240(v21, type metadata accessor for ScanwaveCommonEvent);
  return v31;
}

uint64_t sub_26C608B10()
{
  sub_26C609240(v0 + OBJC_IVAR____TtCV20SystemUIAnimationKit13RootComponentP33_F30F26508A891EC295F2C3E7A2A3378913ActiveContext_activateRequest, type metadata accessor for ScanwaveActivateRequest);

  return swift_deallocClassInstance();
}

uint64_t sub_26C608BB0()
{
  result = sub_26C614DD8();
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

void sub_26C608CCC()
{
  sub_26C608D50();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RootComponent.State(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26C608D50()
{
  if (!qword_2804A5718)
  {
    v0 = sub_26C614FD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2804A5718);
    }
  }
}

void sub_26C608DA0()
{
  sub_26C608E14();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RootComponent.ActiveContext(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_26C608E14()
{
  if (!qword_2804A5730)
  {
    type metadata accessor for ScanwaveActivateRequest(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2804A5730);
    }
  }
}

uint64_t sub_26C608E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_26C608EE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5798);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_26C608FE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804A57A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

char *sub_26C609104(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26C609240(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

size_t sub_26C609304(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_26C6094F4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  v15 = 24 * v9;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v11;
}

char *sub_26C6095FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5738);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_26C609700(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C609A28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootComponent.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C609A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C609AF4(uint64_t a1, uint64_t a2)
{
  if ((sub_26C614E28() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ComponentIntroOutroValue();
  if ((sub_26C5F2DD8(a1 + *(v4 + 28), a2 + *(v4 + 28)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 32);

  return sub_26C5F2DD8(a1 + v5, a2 + v5);
}

uint64_t sub_26C609BC4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FluidBehaviorAnimatedValue();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26C609C50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v4 + 80);
  v9 = v8 | 7;
  v10 = (v8 | 7) + v6;
  v11 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v12 = ((((v8 + 67) & ~v8) + v6 + v9 + (v10 & ~v9)) & ~v9) + ((v8 + 67) & ~v8) + v6;
  v13 = 8 * v12;
  if (v12 > 3)
  {
    goto LABEL_7;
  }

  v15 = ((v11 + ~(-1 << v13)) >> v13) + 1;
  if (HIWORD(v15))
  {
    v14 = *(a1 + v12);
    if (v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v15 <= 0xFF)
    {
      if (v15 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_25;
      }

LABEL_14:
      v16 = (v14 - 1) << v13;
      if (v12 > 3)
      {
        v16 = 0;
      }

      if (v12)
      {
        if (v12 > 3)
        {
          LODWORD(v12) = 4;
        }

        if (v12 > 2)
        {
          if (v12 == 3)
          {
            LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v12) = *a1;
          }
        }

        else if (v12 == 1)
        {
          LODWORD(v12) = *a1;
        }

        else
        {
          LODWORD(v12) = *a1;
        }
      }

      return v7 + (v12 | v16) + 1;
    }

    v14 = *(a1 + v12);
    if (*(a1 + v12))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v18 = *(((a1 + v10) & ~v9) + 0x42);
  if (v18 < 2)
  {
    return 0;
  }

  return ((v18 + 2147483646) & 0x7FFFFFFF) + 1;
}

char *sub_26C609DF8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(v5 + 80);
  v10 = (v9 | 7) + v8;
  v11 = ((((v9 + 67) & ~v9) + v8 + (v9 | 7) + (v10 & ~(v9 | 7))) & ~(v9 | 7)) + ((v9 + 67) & ~v9) + v8;
  v12 = a3 >= v7;
  v13 = a3 - v7;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v18 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v18))
      {
        v14 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v14 = v19;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v7 < a2)
  {
    v15 = ~v7 + a2;
    if (v11 < 4)
    {
      v17 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v20 = v15 & ~(-1 << (8 * v11));
        v21 = result;
        bzero(result, v11);
        result = v21;
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *v21 = v20;
            if (v14 > 1)
            {
LABEL_44:
              if (v14 == 2)
              {
                *&result[v11] = v17;
              }

              else
              {
                *&result[v11] = v17;
              }

              return result;
            }
          }

          else
          {
            *v21 = v15;
            if (v14 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v21 = v20;
        v21[2] = BYTE2(v20);
      }

      if (v14 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v16 = result;
      bzero(result, v11);
      result = v16;
      *v16 = v15;
      v17 = 1;
      if (v14 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v14)
    {
      result[v11] = v17;
    }

    return result;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&result[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v11] = 0;
  }

  else if (v14)
  {
    result[v11] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 < 0xFE)
  {
    *((&result[v10] & ~(v9 | 7)) + 0x42) = a2 + 1;
  }

  else
  {
    v22 = *(v5 + 56);

    return v22();
  }

  return result;
}

uint64_t sub_26C60A06C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = (v2 + 24);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  sub_26C60A1E4(v3);
  result = swift_beginAccess();
  if (!*(*(v2 + 40) + 16))
  {
    v6 = *v4;
    if (*v4)
    {
      *v4 = 0;
      *(v2 + 32) = 0;
      v6(*(v2 + 16));
      return sub_26C60A1E4(v6);
    }
  }

  return result;
}

uint64_t sub_26C60A104()
{
  result = swift_beginAccess();
  if (!*(*(v0 + 40) + 16))
  {
    v2 = *(v0 + 24);
    if (v2)
    {
      *(v0 + 24) = 0;
      *(v0 + 32) = 0;
      v2(*(v0 + 16));
      return sub_26C60A1E4(v2);
    }
  }

  return result;
}

uint64_t sub_26C60A180()
{
  sub_26C60A1E4(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_26C60A1E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_26C60A1F4(uint64_t a1)
{
  sub_26C615168();
  sub_26C614DD8();
  sub_26C60B3BC();
  sub_26C614E08();
  v2 = sub_26C615198();

  return sub_26C60A994(a1, v2);
}

unint64_t sub_26C60A278(uint64_t a1, uint64_t a2)
{
  sub_26C615168();
  sub_26C615178();
  v4 = sub_26C615198();
  return sub_26C60AAE0(a1, a2, v4);
}

unint64_t sub_26C60A324(uint64_t a1)
{
  v2 = sub_26C615158();

  return sub_26C60AB58(a1, v2);
}

unint64_t sub_26C60A368(int64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for ExternalRequestID(0);
  v4 = *(v26 - 8);
  result = MEMORY[0x28223BE20](v26);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_26C614FF8();
    v27 = v11;
    v28 = (v12 + 1) & v11;
    v13 = *(v4 + 72);
    do
    {
      v14 = v13 * v10;
      sub_26C60B470(*(a2 + 48) + v13 * v10, v7, type metadata accessor for ExternalRequestID);
      sub_26C615168();
      sub_26C614DD8();
      sub_26C60B3BC();
      sub_26C614E08();
      v15 = sub_26C615198();
      result = sub_26C60B414(v7);
      v16 = v15 & v11;
      if (a1 >= v28)
      {
        if (v16 >= v28 && a1 >= v16)
        {
LABEL_11:
          if (v13 * a1 < v14 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v14 + v13))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v13 * a1 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17 = *(a2 + 56);
          v18 = *(*(type metadata accessor for ExternalContinuation(0) - 8) + 72);
          v19 = v18 * a1;
          result = v17 + v18 * a1;
          v20 = v18 * v10;
          v21 = v17 + v18 * v10 + v18;
          if (v19 < v20 || result >= v21)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v11 = v27;
          }

          else
          {
            a1 = v10;
            v11 = v27;
            if (v19 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              a1 = v10;
            }
          }
        }
      }

      else if (v16 >= v28 || a1 >= v16)
      {
        goto LABEL_11;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26C60A650(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C614FF8() + 1) & ~v5;
    do
    {
      sub_26C615168();
      sub_26C615178();
      result = sub_26C615198();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + 16 * v3);
        v12 = (v10 + 16 * v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  *(a2 + 16) = v18;
  ++*(a2 + 36);
  return result;
}

uint64_t sub_26C60A824(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C614FF8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_26C615158();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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

unint64_t sub_26C60A994(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ExternalRequestID(0);
  MEMORY[0x28223BE20]();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = -1 << *(v2 + 32);
  v8 = a2 & ~v7;
  if ((*(v2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = *(v4 + 72);
    do
    {
      sub_26C60B470(*(v2 + 48) + v10 * v8, v6, type metadata accessor for ExternalRequestID);
      v11 = sub_26C614DB8();
      sub_26C60B414(v6);
      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(v2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_26C60AAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_26C60AB58(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

id sub_26C60ABC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5610);
  v2 = *v0;
  v3 = sub_26C6150D8();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_26C60AD24()
{
  v1 = v0;
  v2 = type metadata accessor for ExternalContinuation(0);
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ExternalRequestID(0);
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5638);
  v6 = *v0;
  v7 = sub_26C6150D8();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v33 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v34 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v29;
        v23 = *(v30 + 72) * v21;
        sub_26C60B470(*(v6 + 48) + v23, v29, type metadata accessor for ExternalRequestID);
        v24 = v31;
        v25 = *(v32 + 72) * v21;
        sub_26C60B470(*(v6 + 56) + v25, v31, type metadata accessor for ExternalContinuation);
        v26 = v33;
        sub_26C60B4D8(v22, *(v33 + 48) + v23, type metadata accessor for ExternalRequestID);
        result = sub_26C60B4D8(v24, *(v26 + 56) + v25, type metadata accessor for ExternalContinuation);
        v16 = v34;
      }

      while (v34);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v27;
        v8 = v33;
        goto LABEL_18;
      }

      v20 = *(v28 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v34 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_26C60B018()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55F0);
  v2 = *v0;
  v3 = sub_26C6150D8();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26C60B178()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55B0);
  v2 = *v0;
  v3 = sub_26C6150D8();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26C60B2E0(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = sub_26C60A324(a3);
  if ((v7 & 1) == 0)
  {
    return swift_endAccess();
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + 40);
  *(a2 + 40) = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26C60B178();
  }

  sub_26C60A824(v8, v10);
  *(a2 + 40) = v10;
  swift_endAccess();

  *(a2 + 16) = (*(a2 + 16) | a1) & 1;
  return sub_26C60A104();
}

unint64_t sub_26C60B3BC()
{
  result = qword_2804A5390[0];
  if (!qword_2804A5390[0])
  {
    sub_26C614DD8();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804A5390);
  }

  return result;
}

uint64_t sub_26C60B414(uint64_t a1)
{
  v2 = type metadata accessor for ExternalRequestID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C60B470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C60B4D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C60B540(uint64_t result, uint64_t a2)
{

  return sub_26C5BBA84(result, a2);
}

unint64_t sub_26C60B598(uint64_t a1, uint64_t a2)
{

  return sub_26C5BBA2C(a1, a2);
}

uint64_t sub_26C60B618(unsigned int a1)
{
  if (a1 >= 6)
  {
    return 6;
  }

  else
  {
    return (0x50002040301uLL >> (8 * a1));
  }
}

uint64_t sub_26C60B63C(unsigned int a1)
{
  v2 = objc_opt_self();
  if (([v2 currentState] & 3) == 0)
  {
    return 0;
  }

  v3 = [v2 currentPhase];
  if (v3 == -1)
  {
    return 1;
  }

  v4 = v3;
  v5 = sub_26C60B618(a1);
  v6 = v5;
  if (v5 == 6)
  {
    return 0;
  }

  v8 = v5;
  v9 = sub_26C60B618(v4);
  v10 = v9 < 4;
  if (v6 != 5)
  {
    v10 = v9 < v8;
  }

  return v9 != 6 && v10;
}

id SUIAStingPrototypeSettings.defaultSpringSettings.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_defaultSpringSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAStingPrototypeSettings.defaultSpringSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_defaultSpringSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAStingPrototypeSettings.criticallyDampedSpringSettings.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_criticallyDampedSpringSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAStingPrototypeSettings.criticallyDampedSpringSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_criticallyDampedSpringSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAStingPrototypeSettings.slowCriticallyDampedSpringSettings.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_slowCriticallyDampedSpringSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAStingPrototypeSettings.slowCriticallyDampedSpringSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_slowCriticallyDampedSpringSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAStingPrototypeSettings.reallyDampedSpringSettings.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_reallyDampedSpringSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAStingPrototypeSettings.reallyDampedSpringSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_reallyDampedSpringSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAStingPrototypeSettings.reallyReallyDampedSpringSettings.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_reallyReallyDampedSpringSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAStingPrototypeSettings.reallyReallyDampedSpringSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_reallyReallyDampedSpringSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double SUIAStingPrototypeSettings.initialMeshScale.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_initialMeshScale;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAStingPrototypeSettings.initialMeshScale.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_initialMeshScale;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAStingPrototypeSettings.finalMeshScale.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_finalMeshScale;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAStingPrototypeSettings.finalMeshScale.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_finalMeshScale;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAStingPrototypeSettings.aberrationMagnitude.getter()
{
  v1 = v0 + OBJC_IVAR___SUIAStingPrototypeSettings_aberrationMagnitude;
  swift_beginAccess();
  return *v1;
}

uint64_t SUIAStingPrototypeSettings.aberrationMagnitude.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR___SUIAStingPrototypeSettings_aberrationMagnitude);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

double SUIAStingPrototypeSettings.aberrationEDRGain.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationEDRGain;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAStingPrototypeSettings.aberrationEDRGain.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationEDRGain;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAStingPrototypeSettings.aberrationColorBrightnessFactor.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationColorBrightnessFactor;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAStingPrototypeSettings.aberrationColorBrightnessFactor.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationColorBrightnessFactor;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAStingPrototypeSettings.aberrationColorSaturation.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationColorSaturation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAStingPrototypeSettings.aberrationColorSaturation.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationColorSaturation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAStingPrototypeSettings.aberrationIntensity.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationIntensity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAStingPrototypeSettings.aberrationIntensity.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_aberrationIntensity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SUIAStingPrototypeSettings.chromaticAberrationInitialDonutMask.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_chromaticAberrationInitialDonutMask;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAStingPrototypeSettings.chromaticAberrationInitialDonutMask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_chromaticAberrationInitialDonutMask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAStingPrototypeSettings.chromaticAberrationFinalDonutMask.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_chromaticAberrationFinalDonutMask;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAStingPrototypeSettings.chromaticAberrationFinalDonutMask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_chromaticAberrationFinalDonutMask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAStingPrototypeSettings.overlayColor.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_overlayColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAStingPrototypeSettings.overlayColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_overlayColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAStingPrototypeSettings.colorMatrix.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_colorMatrix;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAStingPrototypeSettings.colorMatrix.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_colorMatrix;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double SUIAStingPrototypeSettings.initialColorMatrixOpacity.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorMatrixOpacity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAStingPrototypeSettings.initialColorMatrixOpacity.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorMatrixOpacity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAStingPrototypeSettings.finalColorMatrixOpacity.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorMatrixOpacity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAStingPrototypeSettings.finalColorMatrixOpacity.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorMatrixOpacity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAStingPrototypeSettings.initialColorBlurRadius.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorBlurRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAStingPrototypeSettings.initialColorBlurRadius.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorBlurRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAStingPrototypeSettings.finalColorBlurRadius.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorBlurRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAStingPrototypeSettings.finalColorBlurRadius.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorBlurRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAStingPrototypeSettings.usesGaussianBlurMask.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_usesGaussianBlurMask;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAStingPrototypeSettings.usesGaussianBlurMask.setter(char a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_usesGaussianBlurMask;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAStingPrototypeSettings.initialColorMaskScale.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorMaskScale;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAStingPrototypeSettings.initialColorMaskScale.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorMaskScale;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAStingPrototypeSettings.finalColorMaskScale.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorMaskScale;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAStingPrototypeSettings.finalColorMaskScale.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorMaskScale;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAStingPrototypeSettings.initialColorMaskBlurRadius.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorMaskBlurRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAStingPrototypeSettings.initialColorMaskBlurRadius.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_initialColorMaskBlurRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAStingPrototypeSettings.finalColorMaskBlurRadius.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorMaskBlurRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAStingPrototypeSettings.finalColorMaskBlurRadius.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_finalColorMaskBlurRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SUIAStingPrototypeSettings.colorOverlayInitialRadialMask.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_colorOverlayInitialRadialMask;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAStingPrototypeSettings.colorOverlayInitialRadialMask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_colorOverlayInitialRadialMask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SUIAStingPrototypeSettings.colorOverlayFinalRadialMask.getter()
{
  v1 = OBJC_IVAR___SUIAStingPrototypeSettings_colorOverlayFinalRadialMask;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAStingPrototypeSettings.colorOverlayFinalRadialMask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAStingPrototypeSettings_colorOverlayFinalRadialMask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall SUIAStingPrototypeSettings.setDefaultValues()()
{
  sub_26C60D934();
  sub_26C60DC34();
  [v0 setInitialMeshScale_];
  [v0 setFinalMeshScale_];

  sub_26C60E698();
}

void sub_26C60D934()
{
  v1 = [v0 defaultSpringSettings];
  [v1 setDefaultValues];

  v2 = [v0 defaultSpringSettings];
  [v2 setDampingRatio_];

  v3 = [v0 defaultSpringSettings];
  [v3 setResponse_];

  v4 = [v0 criticallyDampedSpringSettings];
  [v4 setDefaultValues];

  v5 = [v0 criticallyDampedSpringSettings];
  [v5 setDampingRatio_];

  v6 = [v0 criticallyDampedSpringSettings];
  [v6 setResponse_];

  v7 = [v0 slowCriticallyDampedSpringSettings];
  [v7 setDefaultValues];

  v8 = [v0 slowCriticallyDampedSpringSettings];
  [v8 setDampingRatio_];

  v9 = [v0 slowCriticallyDampedSpringSettings];
  [v9 setResponse_];

  v10 = [v0 reallyDampedSpringSettings];
  [v10 setDefaultValues];

  v11 = [v0 reallyDampedSpringSettings];
  [v11 setDampingRatio_];

  v12 = [v0 reallyDampedSpringSettings];
  [v12 setResponse_];

  v13 = [v0 reallyReallyDampedSpringSettings];
  [v13 setDefaultValues];

  v14 = [v0 reallyReallyDampedSpringSettings];
  [v14 setDampingRatio_];

  v18 = [v0 reallyReallyDampedSpringSettings];
  v15 = [v0 reallyDampedSpringSettings];
  [v15 response];
  v17 = v16;

  [v18 setResponse_];
}

id sub_26C60DC34()
{
  v1 = v0;
  v2 = [v0 chromaticAberrationInitialDonutMask];
  v3 = sub_26C614E38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C61A5D0;
  sub_26C5CC548(0, &unk_28125E420);
  *(v4 + 32) = sub_26C614F98();
  *(v4 + 40) = sub_26C614F98();
  *(v4 + 48) = sub_26C614F98();
  *(v4 + 56) = sub_26C614F98();
  *(v4 + 64) = sub_26C614F98();
  *(v4 + 72) = sub_26C614F98();
  *(v4 + 80) = sub_26C614F98();
  *(v4 + 88) = sub_26C614F98();
  *(v4 + 96) = sub_26C614F98();
  *(v4 + 104) = sub_26C614F98();
  *(v4 + 112) = sub_26C614F98();
  *(v4 + 120) = sub_26C614F98();
  *(v4 + 128) = sub_26C614F98();
  *(v4 + 136) = sub_26C614F98();
  *(v4 + 144) = sub_26C614F98();
  *(v4 + 152) = sub_26C614F98();
  *(v4 + 160) = sub_26C614F98();
  *(v4 + 168) = sub_26C614F98();
  *(v4 + 176) = sub_26C614F98();
  *(v4 + 184) = sub_26C614F98();
  v5 = sub_26C614EB8();

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26C61A5D0;
  *(v6 + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.545098];
  *(v6 + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.533333];
  *(v6 + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.509804];
  *(v6 + 56) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.470588];
  *(v6 + 64) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.419608];
  *(v6 + 72) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.360784];
  *(v6 + 80) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.298039];
  *(v6 + 88) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.239216];
  *(v6 + 96) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.184314];
  *(v6 + 104) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.137255];
  *(v6 + 112) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0980392];
  *(v6 + 120) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0705882];
  *(v6 + 128) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0470588];
  *(v6 + 136) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.027451];
  *(v6 + 144) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0196078];
  *(v6 + 152) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:?];
  *(v6 + 160) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.00392157];
  *(v6 + 168) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0];
  *(v6 + 176) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0];
  *(v6 + 184) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0];
  sub_26C5CC548(0, &qword_28125E430);
  v7 = sub_26C614EB8();

  v9 = CGSizeMake(v8);
  [v2 setDefaultValuesWithName:v3 majorDiameter:20 ringWidth:v5 blurRadius:v7 sampleCount:251.0 locations:0.0 colors:100.0 gradientLayerSize:{v9, v10}];

  v11 = [v0 chromaticAberrationFinalDonutMask];
  v12 = sub_26C614E38();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26C61A5D0;
  *(v13 + 32) = sub_26C614F98();
  *(v13 + 40) = sub_26C614F98();
  *(v13 + 48) = sub_26C614F98();
  *(v13 + 56) = sub_26C614F98();
  *(v13 + 64) = sub_26C614F98();
  *(v13 + 72) = sub_26C614F98();
  *(v13 + 80) = sub_26C614F98();
  *(v13 + 88) = sub_26C614F98();
  *(v13 + 96) = sub_26C614F98();
  *(v13 + 104) = sub_26C614F98();
  *(v13 + 112) = sub_26C614F98();
  *(v13 + 120) = sub_26C614F98();
  *(v13 + 128) = sub_26C614F98();
  *(v13 + 136) = sub_26C614F98();
  *(v13 + 144) = sub_26C614F98();
  *(v13 + 152) = sub_26C614F98();
  *(v13 + 160) = sub_26C614F98();
  *(v13 + 168) = sub_26C614F98();
  *(v13 + 176) = sub_26C614F98();
  *(v13 + 184) = sub_26C614F98();
  v14 = sub_26C614EB8();

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26C61A5D0;
  *(v15 + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v15 + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v15 + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v15 + 56) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v15 + 64) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v15 + 72) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v15 + 80) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v15 + 88) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v15 + 96) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v15 + 104) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v15 + 112) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v15 + 120) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v15 + 128) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v15 + 136) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.972549];
  *(v15 + 144) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.85098];
  *(v15 + 152) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.592157];
  *(v15 + 160) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.286275];
  *(v15 + 168) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0823529];
  *(v15 + 176) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0117647];
  *(v15 + 184) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0];
  v16 = sub_26C614EB8();

  v18 = CGSizeMake(v17);
  [v11 setDefaultValuesWithName:v12 majorDiameter:20 ringWidth:v14 blurRadius:v16 sampleCount:251.0 locations:0.0 colors:100.0 gradientLayerSize:{v18, v19}];

  [v1 setAberrationMagnitude_];
  [v1 setAberrationEDRGain_];
  [v1 setAberrationColorBrightnessFactor_];
  [v1 setAberrationColorSaturation_];

  return [v1 setAberrationIntensity_];
}

void sub_26C60E698()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.878431373 green:0.341176471 blue:0.0352941176 alpha:1.0];
  [v1 setOverlayColor_];

  v3 = [v1 colorMatrix];
  [v3 setDefaultValues];

  withColorMatrix = *byte_26C61B4F0;
  v4 = [v1 colorMatrix];
  SUIAColorMatrixPrototypeSettings.update(withColorMatrix:)(&withColorMatrix);

  [v1 setInitialColorMatrixOpacity_];
  [v1 setFinalColorMatrixOpacity_];
  [v1 setInitialColorBlurRadius_];
  [v1 setFinalColorBlurRadius_];
  [v1 setUsesGaussianBlurMask_];
  [v1 setInitialColorMaskScale_];
  [v1 setFinalColorMaskScale_];
  [v1 setInitialColorMaskBlurRadius_];
  [v1 setFinalColorMaskBlurRadius_];
  v5 = [v1 colorOverlayInitialRadialMask];
  v6 = sub_26C614E38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26C61A5D0;
  sub_26C5CC548(0, &unk_28125E420);
  *(v7 + 32) = sub_26C614F98();
  *(v7 + 40) = sub_26C614F98();
  *(v7 + 48) = sub_26C614F98();
  *(v7 + 56) = sub_26C614F98();
  *(v7 + 64) = sub_26C614F98();
  *(v7 + 72) = sub_26C614F98();
  *(v7 + 80) = sub_26C614F98();
  *(v7 + 88) = sub_26C614F98();
  *(v7 + 96) = sub_26C614F98();
  *(v7 + 104) = sub_26C614F98();
  *(v7 + 112) = sub_26C614F98();
  *(v7 + 120) = sub_26C614F98();
  *(v7 + 128) = sub_26C614F98();
  *(v7 + 136) = sub_26C614F98();
  *(v7 + 144) = sub_26C614F98();
  *(v7 + 152) = sub_26C614F98();
  *(v7 + 160) = sub_26C614F98();
  *(v7 + 168) = sub_26C614F98();
  *(v7 + 176) = sub_26C614F98();
  *(v7 + 184) = sub_26C614F98();
  v8 = sub_26C614EB8();

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26C61A5D0;
  *(v9 + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.545098];
  *(v9 + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.533333];
  *(v9 + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.509804];
  *(v9 + 56) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.470588];
  *(v9 + 64) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.419608];
  *(v9 + 72) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.360784];
  *(v9 + 80) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.298039];
  *(v9 + 88) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.239216];
  *(v9 + 96) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.184314];
  *(v9 + 104) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.137255];
  *(v9 + 112) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0980392];
  *(v9 + 120) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0705882];
  *(v9 + 128) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0470588];
  *(v9 + 136) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.027451];
  *(v9 + 144) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0196078];
  *(v9 + 152) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:?];
  *(v9 + 160) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.00392157];
  *(v9 + 168) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0];
  *(v9 + 176) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0];
  *(v9 + 184) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0];
  sub_26C5CC548(0, &qword_28125E430);
  v10 = sub_26C614EB8();

  v12 = CGSizeMake(v11);
  [v5 setDefaultValuesWithName:v6 majorDiameter:20 ringWidth:v8 blurRadius:v10 sampleCount:251.0 locations:0.0 colors:100.0 gradientLayerSize:{v12, v13}];

  v14 = [v1 colorOverlayFinalRadialMask];
  v15 = sub_26C614E38();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26C61A5D0;
  *(v16 + 32) = sub_26C614F98();
  *(v16 + 40) = sub_26C614F98();
  *(v16 + 48) = sub_26C614F98();
  *(v16 + 56) = sub_26C614F98();
  *(v16 + 64) = sub_26C614F98();
  *(v16 + 72) = sub_26C614F98();
  *(v16 + 80) = sub_26C614F98();
  *(v16 + 88) = sub_26C614F98();
  *(v16 + 96) = sub_26C614F98();
  *(v16 + 104) = sub_26C614F98();
  *(v16 + 112) = sub_26C614F98();
  *(v16 + 120) = sub_26C614F98();
  *(v16 + 128) = sub_26C614F98();
  *(v16 + 136) = sub_26C614F98();
  *(v16 + 144) = sub_26C614F98();
  *(v16 + 152) = sub_26C614F98();
  *(v16 + 160) = sub_26C614F98();
  *(v16 + 168) = sub_26C614F98();
  *(v16 + 176) = sub_26C614F98();
  *(v16 + 184) = sub_26C614F98();
  v17 = sub_26C614EB8();

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26C61A5D0;
  *(v18 + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v18 + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v18 + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v18 + 56) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v18 + 64) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v18 + 72) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v18 + 80) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v18 + 88) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v18 + 96) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v18 + 104) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v18 + 112) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v18 + 120) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v18 + 128) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  *(v18 + 136) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.972549];
  *(v18 + 144) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.85098];
  *(v18 + 152) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.592157];
  *(v18 + 160) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.286275];
  *(v18 + 168) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0823529];
  *(v18 + 176) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0117647];
  *(v18 + 184) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0];
  v22 = sub_26C614EB8();

  v20 = CGSizeMake(v19);
  [v14 setDefaultValuesWithName:v15 majorDiameter:20 ringWidth:v17 blurRadius:v22 sampleCount:251.0 locations:0.0 colors:10.0 gradientLayerSize:{v20, v21}];
}