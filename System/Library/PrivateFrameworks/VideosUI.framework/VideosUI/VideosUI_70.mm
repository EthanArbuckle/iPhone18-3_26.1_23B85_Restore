uint64_t sub_1E3BD36BC(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E3BD3114();
  return OUTLINED_FUNCTION_116();
}

void sub_1E3BD3734(void *a1, unint64_t *a2)
{
  sub_1E3280A90(0, a2);
  sub_1E3C2CA00();
}

uint64_t sub_1E3BD3788(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  sub_1E3280A90(0, &qword_1EE23AE20);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_116();
}

void sub_1E3BD3800(void **a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  if (a2)
  {
    v5 = v4;
    a3(v4);
  }

  else
  {
    a3(*a1);
  }
}

uint64_t sub_1E3BD38E8(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BD396C()
{
  type metadata accessor for SymbolScale(0);
  sub_1E3C2C6A0();
  return v1;
}

void sub_1E3BD39A8()
{
  OUTLINED_FUNCTION_6_116();
  type metadata accessor for SymbolScale(0);
  sub_1E3C2CA00();
}

uint64_t sub_1E3BD39E0()
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_3_9(v1);
  type metadata accessor for SymbolScale(0);
  *(v0 + 40) = v2;
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_3_138();
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E3BD3A50(void **a1)
{
  v2 = *(*a1 + 8);
  v1 = *a1;
  *(v1 + 2) = **a1;
  v1[24] = v2;
  sub_1E3C2CA00();

  free(v1);
}

uint64_t sub_1E3BD3B0C(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BD3BF8(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BD3CE4(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BD3DE4(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3BD3E30(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1E3BD3D9C();
  }

  sub_1E3BD3D9C();
}

uint64_t sub_1E3BD3EF8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_3_138();
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E3BD3F64(void **a1)
{
  v2 = *(*a1 + 8);
  v1 = *a1;
  *(v1 + 2) = **a1;
  v1[24] = v2;
  sub_1E3C2CA00();

  free(v1);
}

uint64_t sub_1E3BD4028(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E3BD40AC()
{
  sub_1E4201DF4();

  sub_1E3C2C6A0();
}

uint64_t sub_1E3BD40F0(uint64_t a1)
{
  sub_1E4201DF4();
  sub_1E3C2CA00();
  return sub_1E325F748(a1, &qword_1ECF2B858);
}

uint64_t sub_1E3BD4140(void *a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B858) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  a1[2] = __swift_coroFrameAllocStub(v3);
  a1[3] = sub_1E4201DF4();
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E3BD41EC(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  if (a2)
  {
    sub_1E3BD4AAC(v2, v3);
    sub_1E3C2CA00();
    sub_1E325F748(v3, &qword_1ECF2B858);
  }

  else
  {
    sub_1E3C2CA00();
  }

  sub_1E325F748(v2, &qword_1ECF2B858);
  free(v2);

  free(v3);
}

uint64_t sub_1E3BD42FC(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

id sub_1E3BD4380()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69D5948]) init];
  OUTLINED_FUNCTION_36();
  v2 = (*(v1 + 1696))();
  v3 = OUTLINED_FUNCTION_19_76(v2);
  if (!v5)
  {
    v3 = 0.0;
    v4 = 0.0;
  }

  [v0 setImageSize_];
  OUTLINED_FUNCTION_36();
  v7 = (*(v6 + 1728))();
  [v0 setUpscaleFactor_];
  OUTLINED_FUNCTION_36();
  v10 = (*(v9 + 432))();
  [v0 setAspectRatio_];
  OUTLINED_FUNCTION_36();
  (*(v12 + 1800))();
  OUTLINED_FUNCTION_14_17();
  if (v5)
  {
    v14 = 1;
  }

  else
  {
    v14 = j__OUTLINED_FUNCTION_13_30(v13);
  }

  [v0 setScaleMode_];
  OUTLINED_FUNCTION_9_2();
  (*(v15 + 552))(&v54);
  if ((v55 & 1) == 0)
  {
    sub_1E3952BF8();
    [v0 setBorderRadii_];
  }

  OUTLINED_FUNCTION_111();
  v17 = (*(v16 + 1824))();
  OUTLINED_FUNCTION_13_0(v17, sel_setBorderColor_);

  OUTLINED_FUNCTION_9_2();
  (*(v18 + 1848))(v56);
  if (v57)
  {
    OUTLINED_FUNCTION_18_68();
  }

  else
  {
    v19 = v56[1];
    v20 = v56[2];
    v21 = v56[3];
  }

  [v0 setBorderWidth_];
  OUTLINED_FUNCTION_9_2();
  [v0 setContinuousBorder_];
  OUTLINED_FUNCTION_9_2();
  v24 = *(v23 + 672);
  v25 = v0;
  v26 = v24();
  OUTLINED_FUNCTION_13_0(v26, sel_setTintColor_);

  v27 = v24();
  OUTLINED_FUNCTION_13_0(v27, sel_setDarkTintColor_);

  OUTLINED_FUNCTION_9_2();
  v29 = (*(v28 + 864))();
  OUTLINED_FUNCTION_13_0(v29, sel_setHighlightColor_);

  OUTLINED_FUNCTION_111();
  v31 = (*(v30 + 248))();
  [v25 setMaxWidth_];
  OUTLINED_FUNCTION_9_2();
  v34 = (*(v33 + 352))();
  [v25 setMaxHeight_];
  OUTLINED_FUNCTION_9_2();
  v37 = (*(v36 + 1272))();
  [v25 setFocusSizeIncrease_];
  OUTLINED_FUNCTION_9_2();
  LOBYTE(v58[0]) = (*(v39 + 1344))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC60);
  OUTLINED_FUNCTION_23_57();
  [v25 setCenterGrowth_];
  OUTLINED_FUNCTION_9_2();
  LOBYTE(v58[0]) = (*(v40 + 1320))();
  OUTLINED_FUNCTION_23_57();
  [v25 setAcceptsFocus_];
  OUTLINED_FUNCTION_9_2();
  v42 = (*(v41 + 600))();
  OUTLINED_FUNCTION_13_0(v42, sel_setShadow_);

  OUTLINED_FUNCTION_111();
  (*(v43 + 152))(v58);
  if (v59)
  {
    OUTLINED_FUNCTION_18_68();
  }

  else
  {
    v44 = v58[1];
    v45 = v58[2];
    v46 = v58[3];
  }

  [v25 setMargin_];
  OUTLINED_FUNCTION_111();
  (*(v47 + 176))(v60);
  if (v61)
  {
    OUTLINED_FUNCTION_18_68();
  }

  else
  {
    v48 = v60[1];
    v49 = v60[2];
    v50 = v60[3];
  }

  [v25 setPadding_];

  OUTLINED_FUNCTION_9_2();
  v53 = (*(v51 + 1944))();
  MEMORY[0x1EEE9AC00](v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34A10);
  sub_1E4148DE0(sub_1E3BD4B1C);

  return v25;
}

uint64_t sub_1E3BD4AAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B858);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3BD4B34(uint64_t a1)
{
  sub_1E3C34E14();
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = &v207;

  v9 = 0;
  v171 = a1;
LABEL_4:
  if (v5)
  {
    v10 = v9;
    goto LABEL_10;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      v5 = 0;
      v208 = 0u;
      v209 = 0u;
      v207 = 0u;
      goto LABEL_11;
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
LABEL_10:
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v12 = v11 | (v10 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      sub_1E328438C(*(a1 + 56) + 32 * v12, __src);
      *&v207 = v14;
      *(&v207 + 1) = v15;
      sub_1E329504C(__src, v7 + 1);

LABEL_11:
      v192 = v207;
      v193 = v208;
      v194 = v209;
      if (!*(&v207 + 1))
      {
      }

      sub_1E329504C(&v193, &v189);
      OUTLINED_FUNCTION_53();
      v16 = sub_1E3D46B48();
      switch(v16)
      {
        case 'O':
        case 'W':
        case '\\':
        case '^':
          OUTLINED_FUNCTION_24_56(v16, v17, v18, v19, v20, v21, v22, v23, v115, v122, v129, v136, v143, v150);
          v24 = OUTLINED_FUNCTION_28_44();
          sub_1E3C3AB84(v24, v25, v26);
          goto LABEL_30;
        case 'P':
        case 'R':
        case 'S':
        case 'd':
          OUTLINED_FUNCTION_24_56(v16, v17, v18, v19, v20, v21, v22, v23, v115, v122, v129, v136, v143, v150);
          v27 = OUTLINED_FUNCTION_28_44();
          sub_1E3C3A5D4(v27, v28, v29);
          goto LABEL_30;
        case 'T':
          v65 = OUTLINED_FUNCTION_22_60(v16, v17, v18, v19, v20, v21, v22, v23, v115, v122, v129, v136, v143, v150, v157, v164, v171, v178, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, *(&v192 + 1), v193, *(&v193 + 1), v194, *(&v194 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, __src[0]);
          OUTLINED_FUNCTION_16_88(v65, v66, v67, v68, v69, v70, v71, v72, v119, v126, v133, v140, v147, v154, v161, v168, v175, v182, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, *(&v192 + 1), v193, *(&v193 + 1), v194, *(&v194 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, __src[0]);
          sub_1E3C3913C();
          if (*(&v207 + 1))
          {

            OUTLINED_FUNCTION_53();
            LODWORD(v164) = sub_1E3B64E18();
          }

          else
          {
            LODWORD(v164) = 5;
          }

          if (*(&v208 + 1))
          {

            HIDWORD(v157) = sub_1E3B64E18();
          }

          else
          {
            HIDWORD(v157) = 5;
          }

          if (*(&v209 + 1))
          {
            OUTLINED_FUNCTION_40_44();
            OUTLINED_FUNCTION_9_96();
            sub_1E3B64E18();
          }

          if (v211)
          {
            OUTLINED_FUNCTION_39_36();
            OUTLINED_FUNCTION_9_96();
            sub_1E3B64E18();
          }

          if (v213)
          {

            sub_1E3B64E18();
          }

          v7 = v215;
          if (!v215)
          {
            goto LABEL_105;
          }

          OUTLINED_FUNCTION_37_41();
          sub_1E325F748(&v207, &qword_1ECF346E8);
          OUTLINED_FUNCTION_169_0();
          sub_1E3B64E18();
          goto LABEL_106;
        case 'U':
          OUTLINED_FUNCTION_24_56(v16, v17, v18, v19, v20, v21, v22, v23, v115, v122, v129, v136, v143, v150);
          v47 = 85;
          goto LABEL_28;
        case 'V':
          OUTLINED_FUNCTION_24_56(v16, v17, v18, v19, v20, v21, v22, v23, v115, v122, v129, v136, v143, v150);
          sub_1E3C3A238(&v207, 86, 1);
          goto LABEL_30;
        case 'Y':
          v73 = OUTLINED_FUNCTION_22_60(v16, v17, v18, v19, v20, v21, v22, v23, v115, v122, v129, v136, v143, v150, v157, v164, v171, v178, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, *(&v192 + 1), v193, *(&v193 + 1), v194, *(&v194 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, __src[0]);
          OUTLINED_FUNCTION_16_88(v73, v74, v75, v76, v77, v78, v79, v80, v120, v127, v134, v141, v148, v155, v162, v169, v176, v183, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, *(&v192 + 1), v193, *(&v193 + 1), v194, *(&v194 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, __src[0]);
          sub_1E3C3913C();
          if (*(&v207 + 1))
          {
            OUTLINED_FUNCTION_36_36();
            OUTLINED_FUNCTION_34();
            LODWORD(v164) = sub_1E3B650E8();
          }

          else
          {
            LODWORD(v164) = 3;
          }

          if (*(&v208 + 1))
          {

            HIDWORD(v157) = sub_1E3B650E8();
          }

          else
          {
            HIDWORD(v157) = 3;
          }

          if (*(&v209 + 1))
          {
            OUTLINED_FUNCTION_40_44();
            OUTLINED_FUNCTION_9_96();
            sub_1E3B650E8();
          }

          if (v211)
          {
            OUTLINED_FUNCTION_39_36();
            OUTLINED_FUNCTION_9_96();
            sub_1E3B650E8();
          }

          if (v213)
          {
            OUTLINED_FUNCTION_38_33();
            OUTLINED_FUNCTION_9_96();
            sub_1E3B650E8();
          }

          v7 = v215;
          if (!v215)
          {
            goto LABEL_105;
          }

          OUTLINED_FUNCTION_37_41();
          sub_1E325F748(&v207, &qword_1ECF346E8);
          OUTLINED_FUNCTION_169_0();
          sub_1E3B650E8();
          goto LABEL_106;
        case 'Z':
          OUTLINED_FUNCTION_24_56(v16, v17, v18, v19, v20, v21, v22, v23, v115, v122, v129, v136, v143, v150);
          v47 = 90;
LABEL_28:
          sub_1E3C39D64(&v207, v47, 1);
LABEL_30:
          v64 = &v207;
          goto LABEL_31;
        case '[':
          sub_1E328438C(&v189, &v185);
          sub_1E3C3913C();
          if (!*(&v207 + 1) || (OUTLINED_FUNCTION_36_36(), OUTLINED_FUNCTION_34(), sub_1E3B651BC(), OUTLINED_FUNCTION_14_17(), v31))
          {
            v164 = 0;
            HIDWORD(v157) = 1;
          }

          else
          {
            v164 = sub_1E3B651B0(v30);
            HIDWORD(v157) = 0;
          }

          if (!*(&v208 + 1) || (, OUTLINED_FUNCTION_34(), sub_1E3B651BC(), OUTLINED_FUNCTION_14_17(), v31))
          {
            v150 = 0;
            LODWORD(v143) = 1;
          }

          else
          {
            v150 = sub_1E3B651B0(v104);
            LODWORD(v143) = 0;
          }

          if (!*(&v209 + 1) || (, OUTLINED_FUNCTION_34(), sub_1E3B651BC(), OUTLINED_FUNCTION_14_17(), v31))
          {
            v136 = 0;
            HIDWORD(v129) = 1;
          }

          else
          {
            v136 = sub_1E3B651B0(v105);
            HIDWORD(v129) = 0;
          }

          if (!v211 || (, OUTLINED_FUNCTION_34(), sub_1E3B651BC(), OUTLINED_FUNCTION_14_17(), v31))
          {
            v122 = 0;
            v107 = 1;
          }

          else
          {
            v122 = sub_1E3B651B0(v106);
            v107 = 0;
          }

          if (!v213 || (OUTLINED_FUNCTION_38_33(), OUTLINED_FUNCTION_9_96(), sub_1E3B651BC(), OUTLINED_FUNCTION_14_17(), v31))
          {
            v109 = 0;
            v110 = 1;
          }

          else
          {
            v109 = sub_1E3B651B0(v108);
            v110 = 0;
          }

          if (v215)
          {

            sub_1E325F748(&v207, &qword_1ECF346E8);
            OUTLINED_FUNCTION_9_96();
            sub_1E3B651BC();
            OUTLINED_FUNCTION_14_17();
            if (!v31)
            {
              v112 = sub_1E3B651B0(v111);
              v113 = 0;
              goto LABEL_128;
            }
          }

          else
          {
            sub_1E325F748(&v207, &qword_1ECF346E8);
          }

          v112 = 0;
          v113 = 1;
LABEL_128:
          a1 = v171;
          *__dst = v164;
          __dst[8] = BYTE4(v157);
          v204 = v150;
          LOBYTE(v205) = v143;
          v202 = v136;
          LOBYTE(v203) = BYTE4(v129);
          v200 = v122;
          LOBYTE(v201) = v107;
          v198 = v109;
          LOBYTE(v199) = v110;
          v196 = v112;
          LOBYTE(v197) = v113;
          type metadata accessor for SymbolScale(0);
          sub_1E3C2FCB8(__dst, __src);
          memcpy(__dst, __src, 0x59uLL);
          OUTLINED_FUNCTION_36();
          OUTLINED_FUNCTION_8_11();
          v114();
          sub_1E325F748(&v185, &unk_1ECF296E0);
          result = __swift_destroy_boxed_opaque_existential_1(&v189);
          v7 = &v207;
          goto LABEL_4;
        case ']':
          v32 = OUTLINED_FUNCTION_22_60(v16, v17, v18, v19, v20, v21, v22, v23, v115, v122, v129, v136, v143, v150, v157, v164, v171, v178, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, *(&v192 + 1), v193, *(&v193 + 1), v194, *(&v194 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, __src[0]);
          OUTLINED_FUNCTION_16_88(v32, v33, v34, v35, v36, v37, v38, v39, v116, v123, v130, v137, v144, v151, v158, v165, v172, v179, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, *(&v192 + 1), v193, *(&v193 + 1), v194, *(&v194 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, __src[0]);
          sub_1E3C3913C();
          v40 = v208;
          v41 = BYTE8(v208);
          v42 = v209;
          v43 = BYTE8(v209);
          v44 = v211;
          v136 = v210;
          v143 = v212;
          v45 = v213;
          v150 = v214;
          HIDWORD(v157) = v215;
          if (BYTE8(v207))
          {
            v46 = 2;
          }

          else
          {
            v46 = sub_1E385EB90(v207);
          }

          LODWORD(v164) = v46;
          if (v41)
          {
            v90 = 2;
            if ((v43 & 1) == 0)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v90 = sub_1E385EB90(v40);
            if ((v43 & 1) == 0)
            {
LABEL_42:
              v91 = sub_1E385EB90(v42);
              if ((v44 & 1) == 0)
              {
                goto LABEL_43;
              }

              goto LABEL_47;
            }
          }

          v91 = 2;
          if ((v44 & 1) == 0)
          {
LABEL_43:
            v92 = sub_1E385EB90(v136);
            if ((v45 & 1) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_48;
          }

LABEL_47:
          v92 = 2;
          if ((v45 & 1) == 0)
          {
LABEL_44:
            v93 = sub_1E385EB90(v143);
            goto LABEL_49;
          }

LABEL_48:
          v93 = 2;
LABEL_49:
          if ((v157 & 0x100000000) == 0)
          {
            sub_1E385EB90(v150);
          }

          __dst[0] = v164;
          LOBYTE(v185) = v90;
          LOBYTE(v204) = v91;
          LOBYTE(v202) = v92;
          LOBYTE(v200) = v93;
          OUTLINED_FUNCTION_15_93();
          sub_1E3C2FCB8(v94, v95);
          *__dst = v207;
          *&__dst[4] = WORD2(v207);
          OUTLINED_FUNCTION_8_11();
          v96();
          sub_1E325F748(__src, &unk_1ECF296E0);
          result = __swift_destroy_boxed_opaque_existential_1(&v189);
          a1 = v171;
          v7 = &v207;
          break;
          v56 = OUTLINED_FUNCTION_22_60(v16, v17, v18, v19, v20, v21, v22, v23, v115, v122, v129, v136, v143, v150, v157, v164, v171, v178, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, *(&v192 + 1), v193, *(&v193 + 1), v194, *(&v194 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, __src[0]);
          OUTLINED_FUNCTION_16_88(v56, v57, v58, v59, v60, v61, v62, v63, v118, v125, v132, v139, v146, v153, v160, v167, v174, v181, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, *(&v192 + 1), v193, *(&v193 + 1), v194, *(&v194 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, __src[0]);
          sub_1E3C3913C();
          if (*(&v207 + 1))
          {
            OUTLINED_FUNCTION_36_36();
            OUTLINED_FUNCTION_34();
            LODWORD(v164) = sub_1E376AD24();
          }

          else
          {
            LODWORD(v164) = 27;
          }

          if (*(&v208 + 1))
          {

            HIDWORD(v157) = sub_1E376AD24();
          }

          else
          {
            HIDWORD(v157) = 27;
          }

          if (*(&v209 + 1))
          {
            OUTLINED_FUNCTION_40_44();
            OUTLINED_FUNCTION_9_96();
            sub_1E376AD24();
          }

          if (v211)
          {
            OUTLINED_FUNCTION_39_36();
            OUTLINED_FUNCTION_9_96();
            sub_1E376AD24();
          }

          if (v213)
          {
            OUTLINED_FUNCTION_38_33();
            OUTLINED_FUNCTION_9_96();
            sub_1E376AD24();
          }

          v7 = v215;
          if (!v215)
          {
            goto LABEL_105;
          }

          OUTLINED_FUNCTION_37_41();
          sub_1E325F748(&v207, &qword_1ECF346E8);
          OUTLINED_FUNCTION_169_0();
          sub_1E376AD24();
          goto LABEL_106;
        case 'a':
          v48 = OUTLINED_FUNCTION_22_60(v16, v17, v18, v19, v20, v21, v22, v23, v115, v122, v129, v136, v143, v150, v157, v164, v171, v178, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, *(&v192 + 1), v193, *(&v193 + 1), v194, *(&v194 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, __src[0]);
          OUTLINED_FUNCTION_16_88(v48, v49, v50, v51, v52, v53, v54, v55, v117, v124, v131, v138, v145, v152, v159, v166, v173, v180, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, *(&v192 + 1), v193, *(&v193 + 1), v194, *(&v194 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, __src[0]);
          sub_1E3C3913C();
          if (*(&v207 + 1))
          {
            OUTLINED_FUNCTION_36_36();
            OUTLINED_FUNCTION_34();
            LODWORD(v164) = sub_1E376B2C8();
          }

          else
          {
            LODWORD(v164) = 11;
          }

          if (*(&v208 + 1))
          {

            HIDWORD(v157) = sub_1E376B2C8();
          }

          else
          {
            HIDWORD(v157) = 11;
          }

          if (*(&v209 + 1))
          {
            OUTLINED_FUNCTION_40_44();
            OUTLINED_FUNCTION_9_96();
            sub_1E376B2C8();
          }

          if (v211)
          {
            OUTLINED_FUNCTION_39_36();
            OUTLINED_FUNCTION_9_96();
            sub_1E376B2C8();
          }

          if (v213)
          {
            OUTLINED_FUNCTION_38_33();
            OUTLINED_FUNCTION_9_96();
            sub_1E376B2C8();
          }

          v7 = v215;
          if (v215)
          {
            OUTLINED_FUNCTION_37_41();
            sub_1E325F748(&v207, &qword_1ECF346E8);
            OUTLINED_FUNCTION_169_0();
            sub_1E376B2C8();
          }

          else
          {
LABEL_105:
            sub_1E325F748(&v207, &qword_1ECF346E8);
          }

LABEL_106:
          OUTLINED_FUNCTION_0_169();
          sub_1E3C2FCB8(v100, v101);
          OUTLINED_FUNCTION_12_89();
          LODWORD(v185) = *__dst;
          WORD2(v185) = v102;
          OUTLINED_FUNCTION_8_11();
          v103();
          sub_1E325F748(__src, &unk_1ECF296E0);
          result = __swift_destroy_boxed_opaque_existential_1(&v189);
          a1 = v171;
          goto LABEL_4;
        case 'c':
          v81 = OUTLINED_FUNCTION_22_60(v16, v17, v18, v19, v20, v21, v22, v23, v115, v122, v129, v136, v143, v150, v157, v164, v171, v178, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, *(&v192 + 1), v193, *(&v193 + 1), v194, *(&v194 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, __src[0]);
          OUTLINED_FUNCTION_16_88(v81, v82, v83, v84, v85, v86, v87, v88, v121, v128, v135, v142, v149, v156, v163, v170, v177, v184, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, *(&v192 + 1), v193, *(&v193 + 1), v194, *(&v194 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, __src[0]);
          sub_1E3C3913C();
          if (BYTE8(v207))
          {
            v89 = 2;
          }

          else
          {
            v89 = sub_1E3B65758(v207);
          }

          __dst[0] = v89;
          LOBYTE(v185) = v89;
          LOBYTE(v204) = v89;
          LOBYTE(v202) = v89;
          LOBYTE(v200) = v89;
          OUTLINED_FUNCTION_15_93();
          sub_1E3C2FCB8(v97, v98);
          *__dst = v207;
          *&__dst[4] = WORD2(v207);
          OUTLINED_FUNCTION_8_11();
          v99();
          v64 = __src;
LABEL_31:
          sub_1E325F748(v64, &unk_1ECF296E0);
          goto LABEL_32;
        default:
LABEL_32:
          result = __swift_destroy_boxed_opaque_existential_1(&v189);
          goto LABEL_4;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

double sub_1E3BD5844()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1696))();
  v2 = OUTLINED_FUNCTION_19_76(v1);
  if (!v4)
  {
    v2 = 0.0;
    v3 = 0.0;
  }

  return sub_1E3BD58A0(v2, v3);
}

double sub_1E3BD58A0(double a1, double a2)
{
  OUTLINED_FUNCTION_8();
  v5 += 54;
  v6 = *v5;
  v7 = (*v5)();
  OUTLINED_FUNCTION_13_99(v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
  v10 = sub_1E3A1F10C();
  OUTLINED_FUNCTION_35_40();
  if ((v63 & 1) == 0)
  {
    v11 = v62;
    if (sub_1E3AC5C30(a1, a2) == 0.0 && (OUTLINED_FUNCTION_111(), v13 = (*(v12 + 1752))(), OUTLINED_FUNCTION_13_99(v13, v14), OUTLINED_FUNCTION_35_40(), (v63 & 1) == 0))
    {
      v15 = sqrt(v62 * v62);
      OUTLINED_FUNCTION_111();
      v17 = *(v16 + 224);
      v18 = v17();
      OUTLINED_FUNCTION_13_99(v18, v19);
      v62 = v15;
      v20 = sub_1E3793CAC();
      if (sub_1E414A658(&v61, &v62, MEMORY[0x1E69E7DE0], v20) & 1) != 0 || (OUTLINED_FUNCTION_111(), v22 = (*(v21 + 328))(), OUTLINED_FUNCTION_13_99(v22, v23), v62 = v15 / v11, (sub_1E414A658(&v61, &v62, MEMORY[0x1E69E7DE0], v20)))
      {
        v24 = v17();
        v26 = OUTLINED_FUNCTION_27_49(v24, v25);
        MEMORY[0x1EEE9AC00](v26);
        v60 = v11;
        type metadata accessor for CGSize(0);
        v28 = v27;
        v29 = sub_1E4149C30(sub_1E3BD6264, v59, v9, v27, v10, &v61);
        v30 = (*(*v2 + 328))(v29);
        v32 = OUTLINED_FUNCTION_27_49(v30, v31);
        MEMORY[0x1EEE9AC00](v32);
        v60 = v11;
        sub_1E4149C30(sub_1E3BD6290, v59, v9, v28, v10, &v61);
      }
    }

    else if (a1 == 0.0 || a2 == 0.0)
    {
      VUIRoundValue();
    }
  }

  VUIRoundValue();
  v34 = v33;
  VUIRoundValue();
  v36 = v35;
  OUTLINED_FUNCTION_111();
  v38 = COERCE_DOUBLE((*(v37 + 248))());
  v40 = 0.0;
  if (v39)
  {
    v41 = 0.0;
  }

  else
  {
    v41 = v38;
  }

  v42 = COERCE_DOUBLE((*(*v2 + 352))());
  if (v43)
  {
    v44 = 0.0;
  }

  else
  {
    v44 = v42;
  }

  if (v41 != 0.0 || v44 != 0.0)
  {
    OUTLINED_FUNCTION_111();
    (*(v46 + 1800))();
    OUTLINED_FUNCTION_14_17();
    if (v48)
    {
      v49 = 1;
    }

    else
    {
      v49 = v47;
    }

    v50 = COERCE_DOUBLE(v6());
    if ((v51 & 1) == 0)
    {
      v40 = v50;
    }

    if (sub_1E3B646EC(v49, 1))
    {
      if (v41 == 0.0 || v44 == 0.0)
      {
        if (v44 == 0.0)
        {
          if (v41 != 0.0 && (v34 == 0.0 && v36 == 0.0 && v40 != 0.0 || v41 < v34 && v36 > 0.0))
          {
            VUIRoundValue();
            return v41;
          }
        }

        else if (v34 == 0.0 && v36 == 0.0 && v40 != 0.0)
        {
          VUIRoundValue();
          return v58;
        }

        else if (v44 < v36)
        {
          return v34 / v36 * v44;
        }
      }

      else
      {
        if (v34 == 0.0 && v36 == 0.0)
        {
          VUIRoundValue();
          v34 = v52;
          v36 = v44;
        }

        v67.origin.x = 0.0;
        v67.origin.y = 0.0;
        v64.width = v34;
        v64.height = v36;
        v67.size.width = v41;
        v67.size.height = v44;
        v65 = AVMakeRectWithAspectRatioInsideRect(v64, v67);
        x = v65.origin.x;
        y = v65.origin.y;
        width = v65.size.width;
        height = v65.size.height;
        CGRectGetWidth(v65);
        VUIRoundValue();
        v34 = v57;
        v66.origin.x = x;
        v66.origin.y = y;
        v66.size.width = width;
        v66.size.height = height;
        CGRectGetHeight(v66);
        VUIRoundValue();
      }
    }

    else if (sub_1E3B646EC(v49, 3))
    {
      type metadata accessor for ImageLayout();
      return sub_1E3BD6074(v41, v44, v34, v36, v40);
    }
  }

  return v34;
}

void sub_1E3BD5E48(double a1, double a2)
{
  OUTLINED_FUNCTION_8();
  v5 = (*(v4 + 1696))();
  v7 = OUTLINED_FUNCTION_19_76(v5);
  if (v6)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0.0;
  }

  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0.0;
  }

  if (sub_1E3AC5C30(v9, v10) != 0.0)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_111();
  (*(v11 + 1752))();
  OUTLINED_FUNCTION_20_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
  sub_1E3A1F10C();
  v12 = OUTLINED_FUNCTION_34();
  sub_1E4149AF0(v12, v13);
  if ((v27 & 1) == 0)
  {
    v17 = v26;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_111();
  (*(v14 + 1776))();
  OUTLINED_FUNCTION_20_66();
  v15 = OUTLINED_FUNCTION_34();
  sub_1E4149AF0(v15, v16);
  if ((v25 & 1) != 0 || sub_1E3AC5C30(a1, a2) <= 0.0)
  {
LABEL_12:
    OUTLINED_FUNCTION_111();
    (*(v18 + 2288))();
    return;
  }

  v17 = v24 * sub_1E3AC5C30(a1, a2);
LABEL_14:
  OUTLINED_FUNCTION_111();
  (*(v19 + 432))();
  OUTLINED_FUNCTION_20_66();
  v20 = OUTLINED_FUNCTION_34();
  sub_1E4149AF0(v20, v21);
  if (v25)
  {
    v22 = v17 / v10;
    if (v10 <= 0.0)
    {
      v22 = v9;
    }

    v23 = v17 / v9;
    if (v9 > 0.0)
    {
      v22 = v9;
    }

    else
    {
      v23 = v10;
    }
  }

  else
  {
    v22 = sqrt(v17 * v24);
    v23 = v22 / v24;
  }

  sub_1E3BD58A0(v22, v23);
}

double sub_1E3BD6074(double a1, double a2, double a3, double a4, double a5)
{
  if (a1 == 0.0 || a2 == 0.0)
  {
    if (a2 == 0.0)
    {
      if (a1 != 0.0 && (a3 == 0.0 && a4 == 0.0 && a5 != 0.0 || a1 < a3 && a4 > 0.0))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (a3 == 0.0 && a4 == 0.0 && a5 != 0.0)
      {
        VUIRoundValue();
        return v7;
      }

      if (a2 < a4)
      {
        return a3 / a4 * a2;
      }
    }

    return a3;
  }

  if (a1 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a1;
  }

  if (a5 != 0.0)
  {
    if (a3 != 0.0)
    {
      if (a4 == 0.0)
      {
        VUIRoundValue();
      }

      return v6;
    }

    if (a4 != 0.0)
    {
      VUIRoundValue();
      if (v10 <= a1)
      {
        return v10;
      }

      else
      {
        return a1;
      }
    }

    VUIRoundValue();
    v6 = v8;
    if (v8 <= a1)
    {
      return v6;
    }

LABEL_29:
    VUIRoundValue();
    return a1;
  }

  return v6;
}

uint64_t sub_1E3BD6210()
{
  v0 = sub_1E3C36C6C();

  return MEMORY[0x1EEE6BDC0](v0, 99, 7);
}

void sub_1E3BD62BC(double *a1@<X0>, double (*a2)(double, double)@<X1>, uint64_t a3@<X8>)
{
  *a3 = a2(*a1, *(v3 + 16));
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;
}

id sub_1E3BD62FC()
{
  sub_1E3280A90(0, &qword_1EE23AE20);
  v0 = sub_1E42062A4();

  v1 = [swift_getObjCClassFromMetadata() configurationWithPaletteColors_];

  return v1;
}

uint64_t sub_1E3BD6380()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34A10);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E3BD63E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v17 = type metadata accessor for Monogram();
  v18 = v17[12];
  *(a9 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  OUTLINED_FUNCTION_10_5();
  v19 = v17[13];
  *(a9 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  OUTLINED_FUNCTION_10_5();
  v20 = v17[14];
  *(a9 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8);
  OUTLINED_FUNCTION_10_5();
  v21 = a9 + v17[15];
  sub_1E42038E4();
  *v21 = v43;
  *(v21 + 1) = *(&v43 + 1);
  v22 = a9 + v17[17];
  type metadata accessor for CGRect(0);
  sub_1E42038E4();
  *v22 = v43;
  *(v22 + 1) = v44;
  *(v22 + 4) = v45;
  *a9 = a1;
  a9[14] = a2;
  memcpy(a9 + 1, a3, 0x5BuLL);
  a9[15] = a4;
  a9[16] = a5;
  a9[17] = a6;
  a9[18] = a7;
  a9[19] = a8;
  v23 = *(*a1 + 488);

  v25 = v23(v24);
  if (v25)
  {
    v26 = sub_1E373E010(39, v25);

    if (v26)
    {
      type metadata accessor for ImageViewModel();
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        v28 = v27;
        type metadata accessor for LayoutGrid();

        v29 = sub_1E3A256EC();
        v30 = (*(*v28 + 1016))(v29);
        v32 = v31;

        if (v32)
        {
          v33 = v30 & 0xFFFFFFFFFFFFLL;
          goto LABEL_8;
        }
      }
    }
  }

  else
  {
    v26 = 0;
  }

  v33 = 0;
  v32 = 0xE000000000000000;
LABEL_8:

  v35 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v35 = v33;
  }

  if (v35)
  {

    v36 = 0;
  }

  else if (v26)
  {
    type metadata accessor for LibImageViewModel();
    v37 = swift_dynamicCastClass();

    v36 = v37 == 0;
  }

  else
  {
    v36 = 1;
  }

  v38 = a9 + v17[16];
  *v38 = v36;
  *(v38 + 1) = 0;
  v39 = (*(*a1 + 488))(v34);

  if (!v39)
  {
    goto LABEL_19;
  }

  v41 = sub_1E373E010(17, v39);

  if (v41 && *v41 != _TtC8VideosUI13TextViewModel)
  {

LABEL_19:
    v41 = 0;
  }

  a9[13] = v41;
  return result;
}

uint64_t type metadata accessor for Monogram()
{
  result = qword_1EE28F870;
  if (!qword_1EE28F870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3BD67CC@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v3 = type metadata accessor for Monogram();
  v54 = *(v3 - 8);
  v4 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34A20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34A28);
  OUTLINED_FUNCTION_0_10();
  v55 = v7;
  v56 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v58 = v9;
  v10 = v1[15];
  if (v10)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_8();
  if ((*(v11 + 392))())
  {

LABEL_4:
    OUTLINED_FUNCTION_8();
    v13 = *(v12 + 152);
    v14 = swift_retain_n();
    v13(v65, v14);
  }

  v15.n128_f64[0] = OUTLINED_FUNCTION_6();
  j_nullsub_1(v15, v16, v17, v18);
  sub_1E3BD6E10(v1, v2);
  v19 = *v1;
  v61[0] = *v1;
  sub_1E3BD7C20(v1, &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v21 = swift_allocObject();
  sub_1E38F856C(&v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  type metadata accessor for ViewModel();
  sub_1E3BD7EC8();
  sub_1E388C264();

  sub_1E4203524();

  v22 = sub_1E325F6F0(v2, &qword_1ECF34A20);
  if (v10)
  {
    v22 = (*(*v10 + 600))(v22);
    if (v22)
    {
      v23 = v22;
      goto LABEL_10;
    }
  }

  v24 = (*(*v19 + 392))(v22);
  if (!v24)
  {
    v23 = 0;
    goto LABEL_20;
  }

  v23 = (*(*v24 + 600))();

  if (!v23)
  {
LABEL_20:
    v36 = 0;
    v46 = 0;
    v30 = 0;
    v32 = 0;
    v34 = 0;
    v39 = 0;
    v41 = 0;
    v43 = 0;
    v45 = 0;
    goto LABEL_21;
  }

LABEL_10:
  v25 = objc_opt_self();
  v23 = v23;
  v26 = [v25 blackColor];
  v27 = [v26 colorWithAlphaComponent_];

  if ([v23 shadowColor])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
  }

  v59[0] = v66;
  v59[1] = v67;
  if (!*(&v67 + 1))
  {
    sub_1E325F6F0(v59, &unk_1ECF296E0);
    goto LABEL_17;
  }

  sub_1E3755B54();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v28 = v27;
    goto LABEL_18;
  }

  v28 = v65[5];
LABEL_18:
  [v23 shadowBlurRadius];
  v30 = v29;
  [v23 shadowOffset];
  v32 = v31;
  [v23 shadowOffset];
  v34 = v33;
  v35 = v28;
  v36 = sub_1E4203644();
  v37 = sub_1E4202734();
  sub_1E4200A54();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v46 = v37;
LABEL_21:

  v47 = sub_1E4203DA4();
  v49 = v48;

  v60[0] = v36;
  v60[1] = v30;
  v60[2] = v32;
  v60[3] = v34;
  v60[4] = v46;
  v60[5] = v39;
  v60[6] = v41;
  v60[7] = v43;
  v60[8] = v45;
  LOBYTE(v60[9]) = 0;
  v60[10] = v47;
  v60[11] = v49;
  v50 = v57;
  (*(v55 + 32))(v57, v58, v56);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34AC8);
  memcpy((v50 + *(v51 + 36)), v60, 0x60uLL);
  v61[0] = v36;
  v61[1] = v30;
  v61[2] = v32;
  v61[3] = v34;
  v61[4] = v46;
  v61[5] = v39;
  v61[6] = v41;
  v61[7] = v43;
  v61[8] = v45;
  v62 = 0;
  v63 = v47;
  v64 = v49;
  sub_1E3743538(v60, v59, &qword_1ECF34AD0);
  return sub_1E325F6F0(v61, &qword_1ECF34AD0);
}

uint64_t sub_1E3BD6E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34A88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34A70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31_2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34AE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34A50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v25 - v13);
  v15 = type metadata accessor for Monogram();
  OUTLINED_FUNCTION_7_135(*(v15 + 64));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  sub_1E42038F4();
  if ((v28 & 1) != 0 || (OUTLINED_FUNCTION_7_135(*(v15 + 60)), sub_1E42038F4(), (v28 & 1) == 0))
  {
    *v14 = sub_1E4203DA4();
    v14[1] = v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34AF0);
    sub_1E3BD71A4(v14 + *(v22 + 44));
    v23 = sub_1E4202734();
    OUTLINED_FUNCTION_11_97(v23, v14 + *(v11 + 36));
    sub_1E3743538(v14, v10, &qword_1ECF34A50);
    swift_storeEnumTagMultiPayload();
    sub_1E3BD7FD8();
    sub_1E3BD8090();
    sub_1E4201F44();
    v19 = OUTLINED_FUNCTION_32_0();
  }

  else
  {
    sub_1E3BD7A10();
    v16 = *(a1 + 144);
    sub_1E3BD8210();
    sub_1E39B87A4(v16);
    sub_1E325F6F0(v6, &qword_1ECF34A88);
    sub_1E4200DD4();
    sub_1E4203E14();
    v17 = sub_1E4200E04();

    *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34A80) + 36)) = v17;
    v18 = sub_1E4202734();
    OUTLINED_FUNCTION_11_97(v18, v2 + *(v26 + 36));
    sub_1E3743538(v2, v10, &qword_1ECF34A70);
    swift_storeEnumTagMultiPayload();
    sub_1E3BD7FD8();
    sub_1E3BD8090();
    sub_1E4201F44();
    v19 = v2;
    v20 = &qword_1ECF34A70;
  }

  return sub_1E325F6F0(v19, v20);
}

uint64_t sub_1E3BD71A4@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B08);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B10);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  sub_1E3BD73FC(&v19 - v13);
  sub_1E4200DD4();
  sub_1E4203E14();
  v15 = sub_1E4200E04();

  *&v14[*(v9 + 44)] = v15;
  sub_1E3BD7A10();
  *&v7[*(v2 + 44)] = 0;
  sub_1E3743538(v14, v11, &qword_1ECF34B10);
  sub_1E3743538(v7, v4, &qword_1ECF34B08);
  v16 = v20;
  sub_1E3743538(v11, v20, &qword_1ECF34B10);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B18);
  sub_1E3743538(v4, v16 + *(v17 + 48), &qword_1ECF34B08);
  sub_1E325F6F0(v7, &qword_1ECF34B08);
  sub_1E325F6F0(v14, &qword_1ECF34B10);
  sub_1E325F6F0(v4, &qword_1ECF34B08);
  return sub_1E325F6F0(v11, &qword_1ECF34B10);
}

void sub_1E3BD73FC(uint64_t a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B20);
  OUTLINED_FUNCTION_0_10();
  v46 = v5;
  v47 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v43 = v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v45 = v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v42 = v11;
  v12 = *(v1 + 120);
  v13 = v12;
  if (!v12)
  {
    OUTLINED_FUNCTION_8();
    if ((*(v22 + 392))())
    {
      type metadata accessor for MonogramLayout();
      v13 = swift_dynamicCastClass();
      if (!v13)
      {
      }
    }

    else
    {
      v13 = 0;
    }
  }

  v14 = *(v1 + 49);
  v16 = *(v1 + 8);
  v15 = *(v1 + 16);
  v17 = *(v2 + 24);

  if (v14 == 1 && (v17 & 1) == 0)
  {
    v19 = v16;
    if (v16 > 0.0 || (v19 = v15, v15 > 0.0))
    {
      if (v12)
      {
        (*(*v12 + 1744))(v18);
      }

      else
      {
        v23 = sub_1E3BAE454();
        if (!v23)
        {
          goto LABEL_21;
        }

        v24 = (*(*v23 + 392))(v23);

        if (!v24)
        {
          goto LABEL_21;
        }

        type metadata accessor for ImageLayout();
        if (!swift_dynamicCastClass())
        {
LABEL_14:

          goto LABEL_21;
        }
      }

      OUTLINED_FUNCTION_8();
      v21 = (*(v20 + 1704))();
      if (v21 != 2 && (v21 & 1) != 0)
      {
        [objc_opt_self() scaleContentSizeValue:0 forTraitCollection:v19];

        goto LABEL_21;
      }

      goto LABEL_14;
    }
  }

LABEL_21:
  if (v14)
  {
    v25 = 0;
  }

  else
  {
    v25 = 0x3FF0000000000000;
  }

  if (*(v2 + 104))
  {
    v40 = v25;
    v41 = a1;
    if (v13)
    {
      v26 = *(*v13 + 1768);

      v28 = v26(v27);
    }

    else
    {

      v28 = 0;
    }

    v34 = OUTLINED_FUNCTION_18();

    sub_1E3FAC790(v35, v28, v34, v51);
    sub_1E4203DA4();
    sub_1E4200D94();
    sub_1E4203DA4();
    sub_1E42015C4();
    memcpy(v52, v51, 0x60uLL);
    v52[208] = v14;
    v36 = memcpy(v50, v52, 0xD0uLL);
    v50[26] = v40;
    LOBYTE(v50[27]) = v14;
    BYTE1(v50[27]) = 1;
    v37 = *(v2 + 152);
    v38 = v37;
    if (v13)
    {
      v38 = *(v2 + 152);
      if (!v37)
      {
        v38 = (*(*v13 + 672))(v36);
      }
    }

    v39 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B38);
    sub_1E3BD938C();
    sub_1E39B87A4(v38);

    memcpy(v49, v50, 0xDAuLL);
    sub_1E325F6F0(v49, &qword_1ECF34B38);
    (*(v46 + 32))(v45, v43, v47);
    *(v45 + *(v44 + 36)) = 256;
    sub_1E3BD9584();
    sub_1E4202ED4();

    sub_1E325F6F0(v45, &qword_1ECF34B28);
    sub_1E3741EA0(v42, v41, &qword_1ECF34B30);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v48);
    OUTLINED_FUNCTION_54_0();
  }

  else
  {

    OUTLINED_FUNCTION_54_0();

    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  }
}

uint64_t sub_1E3BD7A10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34AF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34AA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_2();
  v6 = sub_1E3BAE454();
  if (v6)
  {
    v7 = v6;
    if (*(v0 + 120))
    {
      OUTLINED_FUNCTION_8();
      v9 = (*(v8 + 1744))();
    }

    else
    {
      v9 = (*(*v6 + 392))(v6);
    }

    sub_1E3BD8440(v7, v9, v1);

    sub_1E3743538(v1, v4, &qword_1ECF34AA0);
    swift_storeEnumTagMultiPayload();
    sub_1E3BD829C();
    sub_1E4201F44();

    return sub_1E325F6F0(v1, &qword_1ECF34AA0);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1E3BD829C();
    return sub_1E4201F44();
  }
}

uint64_t sub_1E3BD7C20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Monogram();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3BD7C84(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for Monogram();
  OUTLINED_FUNCTION_32_5();
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  v4 = sub_1E4203904();
  v5 = (*(*v3 + 488))(v4);
  if (v5)
  {
    v6 = sub_1E373E010(39, v5);

    if (v6)
    {
      type metadata accessor for ImageViewModel();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;
        type metadata accessor for LayoutGrid();

        v9 = sub_1E3A256EC();
        v10 = (*(*v8 + 1016))(v9);
        v12 = v11;

        if (v12)
        {
          v13 = v10 & 0xFFFFFFFFFFFFLL;
          goto LABEL_8;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = 0;
  v12 = 0xE000000000000000;
LABEL_8:

  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v13;
  }

  if (v14)
  {
  }

  else if (v6)
  {
    type metadata accessor for LibImageViewModel();
    swift_dynamicCastClass();
  }

  return sub_1E4203904();
}

unint64_t sub_1E3BD7EC8()
{
  result = qword_1ECF34A30;
  if (!qword_1ECF34A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34A20);
    sub_1E3BD7F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34A30);
  }

  return result;
}

unint64_t sub_1E3BD7F4C()
{
  result = qword_1ECF34A38;
  if (!qword_1ECF34A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34A40);
    sub_1E3BD7FD8();
    sub_1E3BD8090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34A38);
  }

  return result;
}

unint64_t sub_1E3BD7FD8()
{
  result = qword_1ECF34A48;
  if (!qword_1ECF34A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34A50);
    sub_1E32752B0(&qword_1ECF34A58, &qword_1ECF34A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34A48);
  }

  return result;
}

unint64_t sub_1E3BD8090()
{
  result = qword_1ECF34A68;
  if (!qword_1ECF34A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34A70);
    sub_1E3BD811C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34A68);
  }

  return result;
}

unint64_t sub_1E3BD811C()
{
  result = qword_1ECF34A78;
  if (!qword_1ECF34A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34A80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34A88);
    sub_1E3BD8210();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE2889D0, &qword_1ECF2A0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34A78);
  }

  return result;
}

unint64_t sub_1E3BD8210()
{
  result = qword_1ECF34A90;
  if (!qword_1ECF34A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34A88);
    sub_1E3BD829C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34A90);
  }

  return result;
}

unint64_t sub_1E3BD829C()
{
  result = qword_1ECF34A98;
  if (!qword_1ECF34A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34AA0);
    sub_1E3BD8354();
    sub_1E32752B0(&qword_1ECF34AB8, &qword_1ECF34AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34A98);
  }

  return result;
}

unint64_t sub_1E3BD8354()
{
  result = qword_1ECF34AA8;
  if (!qword_1ECF34AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34AB0);
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289E00, &qword_1ECF2A1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34AA8);
  }

  return result;
}

void sub_1E3BD8440(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v48 = a1;
  v52 = a3;
  v4 = type metadata accessor for Monogram();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v45 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38[-v9];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34AB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v49 = v12;
  memcpy(__dst, (v3 + 8), 0x5BuLL);
  v13 = LOBYTE(__dst[2]);
  v14 = *&__dst[0];
  v15 = *&__dst[1];
  v68[0] = *(v3 + 25);
  *(v68 + 3) = *(v3 + 28);
  v16 = *(v3 + 65);
  v63 = *(v3 + 49);
  v64 = v16;
  v65 = *(v3 + 81);
  v66 = *(v3 + 97);
  v17 = __dst[0];
  if (LOBYTE(__dst[2]))
  {
    v17 = 0.0;
  }

  if (LOBYTE(__dst[2]) & 1 | (__dst[0] != 0.0))
  {
    v18 = v17;
  }

  else
  {
    v18 = 0.0;
  }

  v67 = (LOBYTE(__dst[2]) & 1 | (__dst[0] != 0.0)) == 0;
  sub_1E375C2C0(__dst, v69);
  sub_1E3AC5824();
  v40 = v20;
  v41 = v19;
  v39 = v21;
  v75 = v63;
  v69[0] = v14;
  v50 = v15;
  v69[1] = v15;
  v51 = v13;
  v70 = v13;
  *v71 = v68[0];
  *&v71[3] = *(v68 + 3);
  v72 = v18;
  v73 = v18;
  v46 = v67;
  v74 = v67;
  v76 = v64;
  v77 = v65;
  v78 = v66;
  if (v42)
  {
    type metadata accessor for ImageLayout();
    v22 = swift_dynamicCastClass();
  }

  else
  {
    v22 = 0;
  }

  sub_1E3BD7C20(v3, &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v23 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v24 = swift_allocObject();
  sub_1E38F856C(v6, v24 + v23);
  v25 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(v48, v69, v22, v25 & 1, sub_1E3BD8FFC, v24, v10);

  v26 = v49;
  v27 = (*(v45 + 32))(v49, v10, v47);
  *(v26 + *(v44 + 36)) = 256;
  v53[0] = *(v3 + 112);
  MEMORY[0x1EEE9AC00](v27);
  v28 = v40;
  *&v38[-32] = v41;
  *&v38[-24] = v28;
  v38[-16] = v39 & 1;
  *&v38[-8] = v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34AA0);
  v30 = v52;
  v31 = v52 + *(v29 + 36);

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B00);
  sub_1E4148F70(sub_1E3BD9150, &v38[-48], v32, v33, v31);

  v34 = sub_1E4203D94();
  v36 = v35;
  v37 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34AC0) + 36));
  *v37 = v34;
  v37[1] = v36;
  sub_1E3741EA0(v26, v30, &qword_1ECF34AB0);
  v53[0] = v14;
  v59 = v63;
  v53[1] = v50;
  v54 = v51;
  *v55 = v68[0];
  *&v55[3] = *(v68 + 3);
  v56 = v18;
  v57 = v18;
  v58 = v46;
  v60 = v64;
  v61 = v65;
  v62 = v66;
  sub_1E375C31C(v53);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3BD891C()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    sub_1E3BD8C24(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E3BD8C24(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1E3BD8C24(319, qword_1EE2821E8, type metadata accessor for MonogramLayout, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E381ECE4();
          if (v4 <= 0x3F)
          {
            sub_1E3BD8C24(319, &unk_1EE23AE10, sub_1E3755B54, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1E3BD8C24(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1E3BD8C24(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1E3BD8C24(319, &qword_1EE289EC0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
                  {
                    sub_1E3BD9678(319, &qword_1EE288668, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                    if (v9 <= 0x3F)
                    {
                      sub_1E3BD8C24(319, &qword_1EE288650, type metadata accessor for CGRect, MEMORY[0x1E6981790]);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E3BD8C24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E3BD8C88()
{
  result = qword_1ECF34AD8;
  if (!qword_1ECF34AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34AC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34A20);
    type metadata accessor for ViewModel();
    sub_1E3BD7EC8();
    sub_1E388C264();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1ECF34AE0, &qword_1ECF34AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34AD8);
  }

  return result;
}

uint64_t objectdestroyTm_27()
{
  v1 = type metadata accessor for Monogram();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 128))
  {
  }

  v3 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4201324();
    OUTLINED_FUNCTION_2();
    (*(v6 + 8))(v2 + v5);
  }

  else
  {
  }

  v7 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4200B44();
    OUTLINED_FUNCTION_2();
    (*(v8 + 8))(v2 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E3BD8FFC(uint64_t a1, double a2, double a3)
{
  type metadata accessor for Monogram();
  OUTLINED_FUNCTION_32_5();
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));
  OUTLINED_FUNCTION_6_117();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  sub_1E4203904();
  if (!a1)
  {
    OUTLINED_FUNCTION_6_117();
    sub_1E4203904();
  }

  v9.n128_u64[0] = 0;
  v10.n128_u64[0] = 0;
  nullsub_1(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DF8);
  result = sub_1E4203904();
  v12 = *(v8 + 128);
  if (v12)
  {
    return v12(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1E3BD9150@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Monogram();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DF8);
  sub_1E42038F4();
  OUTLINED_FUNCTION_18();
  v2 = sub_1E3BF493C();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_6();
  sub_1E3CCD0F0(v6, v7, v8, v9, v10, v2, v4, v11, v5, v12, v13, v14);

  KeyPath = swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B00);
  v17 = (a1 + *(v16 + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0) + 28);
  type metadata accessor for ImageViewModel();
  v19 = swift_dynamicCastClass();
  if (v19 && (v20 = v19, type metadata accessor for LayoutGrid(), v21 = sub_1E3A256EC(), v22 = (*(*v20 + 1032))(v21), (v23 & 1) == 0))
  {
    v24 = v22;
    sub_1E4200B44();
    OUTLINED_FUNCTION_2();
    if (v24 == 1)
    {
      v26 = MEMORY[0x1E697DBB8];
    }

    else
    {
      v26 = MEMORY[0x1E697DBA8];
    }

    (*(v25 + 104))(v17 + v18, *v26);
  }

  else
  {
    sub_1E379EBAC(v17 + v18);
  }

  *v17 = KeyPath;
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v16);
}

unint64_t sub_1E3BD938C()
{
  result = qword_1ECF34B40;
  if (!qword_1ECF34B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34B38);
    sub_1E3BD9418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34B40);
  }

  return result;
}

unint64_t sub_1E3BD9418()
{
  result = qword_1ECF34B48;
  if (!qword_1ECF34B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34B50);
    sub_1E3BD94A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34B48);
  }

  return result;
}

unint64_t sub_1E3BD94A4()
{
  result = qword_1ECF34B58;
  if (!qword_1ECF34B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34B60);
    sub_1E3BD9530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34B58);
  }

  return result;
}

unint64_t sub_1E3BD9530()
{
  result = qword_1EE23BDE0[0];
  if (!qword_1EE23BDE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE23BDE0);
  }

  return result;
}

unint64_t sub_1E3BD9584()
{
  result = qword_1ECF34B68;
  if (!qword_1ECF34B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34B28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34B38);
    sub_1E3BD938C();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289E00, &qword_1ECF2A1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34B68);
  }

  return result;
}

void sub_1E3BD9678(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1E3BD9700(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 248) = a1;
}

uint64_t sub_1E3BD9778(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 256) = a1;
}

uint64_t sub_1E3BD980C(__int16 a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 248) = 0;
  *(v3 + 256) = 0;

  v7 = sub_1E39BEDCC(a1, a2, a3);
  if (v7)
  {

    v8 = sub_1E39C408C(23);
    v9 = v8;
    if (v8 && *v8 != _TtC8VideosUI13TextViewModel)
    {

      v9 = 0;
    }

    OUTLINED_FUNCTION_3_0();
    *(v7 + 248) = v9;

    v10 = sub_1E3BD9914();

    OUTLINED_FUNCTION_3_0();
    *(v7 + 256) = v10;
  }

  return v7;
}

uint64_t sub_1E3BD9914()
{
  if (sub_1E39C408C(36))
  {
    type metadata accessor for ImageViewModel();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  result = sub_1E39C408C(39);
  if (result)
  {
    type metadata accessor for ImageViewModel();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1E3BD99C8()
{
}

uint64_t sub_1E3BD99F8()
{
  v0 = ViewModel.deinit();

  return v0;
}

uint64_t sub_1E3BD9A30()
{
  v0 = sub_1E3BD99F8();

  return MEMORY[0x1EEE6BDC0](v0, 264, 7);
}

void *sub_1E3BD9AF8(uint64_t a1, uint64_t a2)
{
  if (!(*(a2 + 8))())
  {
    return 0;
  }

  OUTLINED_FUNCTION_18();
  v2 = sub_1E3C287F4(0);

  if (v2)
  {
    v3 = [v2 string];

    v2 = sub_1E4205F14();
  }

  return v2;
}

id sub_1E3BD9BA4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  v3 = sub_1E3BD9BEC(v2);

  return v3;
}

id sub_1E3BD9BEC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_1_36();
  v3 = (*(*a1 + 1000))(0, v2);
  if (v4 == 255)
  {
    return 0;
  }

  v5 = v3;
  if (v4)
  {
    sub_1E379098C(v3, v4);
    return 0;
  }

  v6 = [v3 type];
  v7 = [v5 name];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      sub_1E4205F14();
      v8 = sub_1E4205ED4();
    }

    v9 = objc_opt_self();
    v10 = [objc_opt_self() vui_videosUIBundle];
    v11 = [v9 vuiImageNamed:v8 inBundle:v10];
    sub_1E379098C(v5, 0);
  }

  else
  {
    if (!v7)
    {
      sub_1E4205F14();
      v8 = sub_1E4205ED4();
    }

    v11 = [objc_opt_self() vuiSystemImageNamed:v8 withConfiguration:0 accessibilityDescription:0];
    sub_1E379098C(v5, 0);
  }

  return v11;
}

uint64_t sub_1E3BD9DCC()
{
  v16 = 0x40C9640000000000;
  v17 = 0;
  v14 = 0x40C9640000000000;
  v15 = 0;
  v12 = 0x40C9640000000000;
  v13 = 0;
  v0 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  v8 = v10;
  v9 = v11;
  sub_1E3C3DE00(v0);
  v4[12] = v6;
  v5 = v7;
  sub_1E3C2FCB8(&v8, __src);
  memcpy(v4, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  return (*(v1 + 1600))(v4, 82, v2 & 1, v0);
}

uint64_t sub_1E3BD9EEC()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E3BD9F64(unsigned __int16 a1)
{
  OUTLINED_FUNCTION_3_139();
  swift_allocObject();
  return sub_1E3BDA3F4(a1);
}

uint64_t sub_1E3BD9FF0(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 120) = a1;
}

uint64_t sub_1E3BDA060()
{
  v1 = v0;
  v2 = type metadata accessor for ImageLayout();
  v20[0] = sub_1E3BD61D8();
  OUTLINED_FUNCTION_0_170();
  sub_1E41E1A64(v20, v3, v2, v21);

  v1[13] = v21[0];
  v1[14] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E42A73A0;
  type metadata accessor for OfferListCardLayout();
  OUTLINED_FUNCTION_3_139();
  swift_allocObject();
  *(v4 + 32) = sub_1E3BDA3F4(0xCFu);
  OUTLINED_FUNCTION_3_139();
  swift_allocObject();
  *(v4 + 40) = sub_1E3BDA3F4(0xD0u);
  OUTLINED_FUNCTION_3_139();
  swift_allocObject();
  *(v4 + 48) = sub_1E3BDA3F4(0xD1u);
  v1[15] = v4;
  v5 = sub_1E3C2F9A0();
  OUTLINED_FUNCTION_5_0();

  sub_1E3C37CBC(v6, 46);

  v8 = (*v5 + 1736);
  v9 = *v8;
  v10 = (*v8)(v7);
  sub_1E3C37CBC(v10, 119);

  v12 = v9(v11);
  sub_1E3C37CBC(v12, 118);

  type metadata accessor for ViewLayout();
  v13 = sub_1E3C2F968();
  OUTLINED_FUNCTION_5_0();
  v14 = v5[15];
  v15 = sub_1E32AE9B0(v14);

  for (i = 0; ; ++i)
  {
    if (v15 == i)
    {

      v9(v19);
      sub_1E3C37CBC(v13, 140);

      return v5;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, v14);
      v18 = result;
    }

    else
    {
      if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v18 = *(v14 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E3C37CBC(v18, *(v18 + 98));
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1E3BDA31C()
{
}

uint64_t sub_1E3BDA354()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3BDA394()
{
  v0 = sub_1E3BDA354();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1E3BDA3F4(unsigned __int16 a1)
{
  type metadata accessor for ImageLayout();
  *(v1 + 104) = sub_1E3BD61D8();
  type metadata accessor for ButtonLayout();
  *(v1 + 112) = sub_1E3BBB724();
  *(v1 + 98) = a1;
  v3 = sub_1E3C2F9A0();
  if (a1 - 207 >= 2)
  {
    if (a1 != 209)
    {

      goto LABEL_7;
    }

    OUTLINED_FUNCTION_5_0();
    v58 = 0;
    v66 = 0x40AF400000000000;
    v67 = 0;
    v64 = 0x40D57C0000000000;
    v65 = 0;
    v62 = 0x40AF400000000000;
    v63 = 0;
    v60 = 0x40AF400000000000;
    v61 = 0;

    v25 = MEMORY[0x1E69E7DE0];
    sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
    OUTLINED_FUNCTION_2_135();
    sub_1E3C2FCB8(v59, v68);
    OUTLINED_FUNCTION_9_97(v26, v27, v28, v29, v30, v31, v32, v33, v39, v41, v43, v45, v47, v49, v51, v53, v55, 0);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v34 + 1600))(__dst, 82, v35 & 1, v25);
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v58 = 0;

    v4 = MEMORY[0x1E69E7DE0];
    sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
    OUTLINED_FUNCTION_7_136();
    OUTLINED_FUNCTION_6_118();
    OUTLINED_FUNCTION_2_135();
    sub_1E3C3DE00(v4);
    OUTLINED_FUNCTION_8_100();
    OUTLINED_FUNCTION_1_168();
    OUTLINED_FUNCTION_9_97(v5, v6, v7, v8, v9, v10, v11, v12, v39, v41, v43, v45, v47, v49, v51, v53, v55, 0);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v13 + 1600))(__dst, 2, v14 & 1, v4);

    *__dst = 0x4066800000000000;
    v58 = 0;

    sub_1E3C3DE00(v4);
    OUTLINED_FUNCTION_7_136();
    OUTLINED_FUNCTION_6_118();
    OUTLINED_FUNCTION_2_135();
    sub_1E3C3DE00(v4);
    OUTLINED_FUNCTION_8_100();
    OUTLINED_FUNCTION_1_168();
    OUTLINED_FUNCTION_9_97(v15, v16, v17, v18, v19, v20, v21, v22, v40, v42, v44, v46, v48, v50, v52, v54, v56, __dst[0]);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v23 + 1600))(__dst, 6, v24 & 1, v4);
  }

LABEL_7:
  OUTLINED_FUNCTION_5_0();

  sub_1E3C37CBC(v36, 39);

  OUTLINED_FUNCTION_5_0();

  sub_1E3C37CBC(v37, 59);

  return v3;
}

uint64_t sub_1E3BDA718()
{
  OUTLINED_FUNCTION_3_139();
  swift_allocObject();
  return sub_1E3BDA3F4(0xCFu);
}

uint64_t sub_1E3BDA74C()
{
  sub_1E37BD5C4();
  OUTLINED_FUNCTION_3_139();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3BDA79C(unint64_t a1)
{
  v1 = 0x6F697463656C6573;
  if (a1 >> 62 == 1)
  {
    v1 = 0x676E617272616572;
  }

  if (a1 >> 62)
  {
    return v1;
  }

  else
  {
    return 1953064037;
  }
}

uint64_t sub_1E3BDA7FC()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 816))();
  v2 = sub_1E32AE9B0(v1);
  if (v2)
  {
    v3 = v2;
    v12 = MEMORY[0x1E69E7CC0];
    result = sub_1E4207574();
    if (v3 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = OUTLINED_FUNCTION_11_6();
          MEMORY[0x1E6911E60](v6);
        }

        else
        {
          v7 = *(v1 + 8 * v5 + 32);
        }

        ++v5;
        OUTLINED_FUNCTION_64();
        v9 = *(v8 + 504);
        v11 = v10;
        v9();

        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
      }

      while (v3 != v5);

      return v12;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1E3BDA978@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3BDAA40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B78);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B70);
  OUTLINED_FUNCTION_21_15();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_27_0();
  return v5(v4);
}

uint64_t sub_1E3BDAB34()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1E3BDAB80(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1();
  *(v2 + 8) = a2;
  OUTLINED_FUNCTION_57();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1E3BDABD4(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_11_3();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return OUTLINED_FUNCTION_40_1();
}

uint64_t (*sub_1E3BDAC68())()
{
  OUTLINED_FUNCTION_72_3();
  OUTLINED_FUNCTION_11_3();
  return j_j__swift_endAccess;
}

void sub_1E3BDACBC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2 & 1;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_shouldMaximizeScreenUsage;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v1 + v15) != v3)
  {
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v22 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23[4] = sub_1E3BE5E78;
    v23[5] = v16;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v23[2] = v17;
    v23[3] = &block_descriptor_213;
    v18 = _Block_copy(v23);

    sub_1E4203FE4();
    v23[0] = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    v19 = OUTLINED_FUNCTION_57();
    __swift_instantiateConcreteTypeFromMangledNameV2(v19);
    sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v14, v7, v18);
    _Block_release(v18);

    v20 = OUTLINED_FUNCTION_11_6();
    v21(v20);
    (*(v10 + 8))(v14, v8);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3BDAF5C()
{
  v1 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_shouldMaximizeScreenUsage;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1E3BDAF9C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_shouldMaximizeScreenUsage;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  sub_1E3BDACBC();
}

uint64_t sub_1E3BDAFE4(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_shouldMaximizeScreenUsage;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  *(v3 + 32) = *(v1 + v4);
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E3BDB05C(uint64_t a1)
{
  v1 = *a1;
  sub_1E3BDAF9C(*(*a1 + 32));

  free(v1);
}

uint64_t sub_1E3BDB09C()
{
  v1 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_isDimmed;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1E3BDB0DC(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_isDimmed;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  sub_1E3BE2938();
}

void (*sub_1E3BDB120(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_72_3();
  OUTLINED_FUNCTION_11_3();
  return sub_1E3BDB178;
}

void sub_1E3BDB178(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E3BE2938();
  }
}

uint64_t sub_1E3BDB1AC()
{
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_119();
  v3 += 33;
  v4 = *v3;
  v5 = (*v3)();
  sub_1E32AE9B0(v5);
  OUTLINED_FUNCTION_87_0();

  if (v1 == 2 && (OUTLINED_FUNCTION_6_119(), !(*(v6 + 480))()))
  {
    OUTLINED_FUNCTION_6_119();
    (*(v15 + 528))(v18);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v4();
    [v0 bounds];
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_26_3();
    (*((*v2 & v16) + 0x190))();
    OUTLINED_FUNCTION_26_3();
    (*((*v2 & v17) + 0x328))();
    v12.n128_f64[0] = OUTLINED_FUNCTION_17_4();
  }

  else
  {
    OUTLINED_FUNCTION_6_119();
    (*(v7 + 528))(v18);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v4();
    [v0 bounds];
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_26_3();
    (*((*v2 & v8) + 0x1E0))();
    OUTLINED_FUNCTION_26_3();
    (*((*v2 & v9) + 0x190))();
    OUTLINED_FUNCTION_26_3();
    (*((*v2 & v10) + 0x328))();
    v12.n128_f64[0] = OUTLINED_FUNCTION_17_4();
  }

  v13 = v11(v12);

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v13 & 1;
}

uint64_t sub_1E3BDB510()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_16_0();
  sub_1E34AF604(v0);
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1E3BDB568(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1();
  v5 = *v2;
  *v2 = a1;
  v2[1] = a2;
  return sub_1E34AF594(v5);
}

uint64_t (*sub_1E3BDB5B0())()
{
  OUTLINED_FUNCTION_72_3();
  OUTLINED_FUNCTION_11_3();
  return j__swift_endAccess;
}

uint64_t sub_1E3BDB604()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3BDB674@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1E0))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3BDB738(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v31[0] = a1;
  v4 = v1;
  sub_1E4200684();
  OUTLINED_FUNCTION_36_3();
  v6 = *((*MEMORY[0x1E69E7D40] & v5) + 0x108);
  v7 = v6();
  v8 = OUTLINED_FUNCTION_28_45(v7);
  if (KeyPath == 2 || (v9 = (v6)(v8), result = OUTLINED_FUNCTION_28_45(v9), KeyPath == 4))
  {
    if ([objc_opt_self() isFeatureEnabled_])
    {
      if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
      {
        sub_1E3BE3058();
      }

      OUTLINED_FUNCTION_25();
      sub_1E3BDFE50(v27, v28, v29, v30, 0);
    }

    else
    {
      OUTLINED_FUNCTION_12_5();
      v11 += 60;
      v12 = *v11;
      if (!(*v11)())
      {
        sub_1E3BE2938();
      }

      v13 = v6();
      v14 = OUTLINED_FUNCTION_28_45(v13);
      if (KeyPath == 2 && (v12)(v14) == 1)
      {
        OUTLINED_FUNCTION_12_5();
        (*(v15 + 528))(v31);
        __swift_project_boxed_opaque_existential_1(v31, v31[3]);
        v16 = OUTLINED_FUNCTION_34();
        v18 = COERCE_DOUBLE(v17(v16));
        v20 = v19;
        __swift_destroy_boxed_opaque_existential_1(v31);
        if ((v20 & 1) == 0 && v18 <= 0.5)
        {
          v21 = &v4[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_layoutEngine];
          OUTLINED_FUNCTION_11_3();
          v22 = *(v21 + 3);
          v23 = *(v21 + 4);
          v24 = OUTLINED_FUNCTION_57();
          __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
          (*(v23 + 24))(0x3FF0000000000000, 0, v22, v23);
          swift_endAccess();
        }
      }

      sub_1E3280A90(0, &qword_1EE23AE80);
      OUTLINED_FUNCTION_4_0();
      swift_allocObject();
      OUTLINED_FUNCTION_45_2();
      OUTLINED_FUNCTION_4_0();
      v26 = swift_allocObject();
      OUTLINED_FUNCTION_45_38(v26);
      swift_unknownObjectWeakInit();

      OUTLINED_FUNCTION_5_11();
      sub_1E3B02648();
    }
  }

  return result;
}

uint64_t (*sub_1E3BDBAB8(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1E3BDB604();
  return sub_1E3BDBB00;
}

uint64_t sub_1E3BDBB40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C490);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B80);
  OUTLINED_FUNCTION_21_15();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_27_0();
  return v5(v4);
}

void (*sub_1E3BDBC34(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C490);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B80);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3BDBD50;
}

void sub_1E3BDBD50(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = OUTLINED_FUNCTION_34();
    v8(v7);
    sub_1E3BDBB40();
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1E3BDBB40();
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1E3BDBE00()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_72_3();
  return sub_1E327F454(v0, v1);
}

uint64_t sub_1E3BDBE50(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_layoutEngine;
  OUTLINED_FUNCTION_11_3();
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);
  sub_1E3251BE8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E3BDBEC4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_87_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_57();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3BDBF28@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x228))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3BDBFD0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1E4200684();
}

uint64_t sub_1E3BDC054()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B98);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B90);
  OUTLINED_FUNCTION_21_15();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_27_0();
  return v5(v4);
}

BOOL sub_1E3BDC148()
{
  v1 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_animatingViews;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    sub_1E4207384();
    OUTLINED_FUNCTION_50();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  return v3 != 0;
}

id sub_1E3BDC1C4()
{
  v1 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___panGesture;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___panGesture];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___panGesture];
  }

  else
  {
    v4 = v0;
    v10[3] = type metadata accessor for MultiPlayerView();
    v10[0] = v0;
    objc_allocWithZone(MEMORY[0x1E69DCD28]);
    v5 = v0;
    v6 = sub_1E3BE2DCC(v10, sel_onPanGesture_);
    v7 = *&v0[v1];
    *&v4[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1E3BDC268()
{
  v1 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___adjustmentView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___adjustmentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___adjustmentView);
  }

  else
  {
    v4 = v0;
    type metadata accessor for MultiPlayerGrabberView();
    v5 = sub_1E416EA48(1);
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1E3BDC2DC()
{
  v1 = [v0 window];
  if (v1)
  {
    return v1;
  }

  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 fullScreenViewControllerForPresentation];

  if (!v3)
  {
    return 0;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
    return 0;
  }

  OUTLINED_FUNCTION_50();
  swift_unknownObjectRetain();
  result = [v2 view];
  if (result)
  {
    v5 = result;
    v6 = [result window];
    OUTLINED_FUNCTION_87_0();
    swift_unknownObjectRelease_n();

    return v1;
  }

  __break(1u);
  return result;
}

void *sub_1E3BDC3E0()
{
  OUTLINED_FUNCTION_21();
  result = (*(v0 + 800))();
  if (result)
  {
    v2 = result;
    [result bounds];
    Width = CGRectGetWidth(v5);
    [v2 bounds];
    Height = CGRectGetHeight(v6);

    return (Width < Height);
  }

  return result;
}

uint64_t sub_1E3BDC478()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E3BDC4BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_containerViews;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
}

void sub_1E3BDC560()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v93 = v2;
  v92 = v3;
  v5 = v4;
  v94 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v88 = v8;
  sub_1E42069E4();
  OUTLINED_FUNCTION_0_10();
  v81 = v10;
  v82 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v79 = v12 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34BA8);
  OUTLINED_FUNCTION_0_10();
  v77 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v76 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34BB0);
  OUTLINED_FUNCTION_0_10();
  v83 = v17;
  v84 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v80 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34BB8);
  OUTLINED_FUNCTION_0_10();
  v86 = v21;
  v87 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v85 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B90);
  OUTLINED_FUNCTION_0_10();
  v89 = v25;
  v90 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v75 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B80);
  OUTLINED_FUNCTION_0_10();
  v95 = v30;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v75 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B70);
  OUTLINED_FUNCTION_0_10();
  v36 = v35;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v75 - v38;
  v40 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_playerLayout;
  type metadata accessor for ViewLayout();
  *&v0[v40] = sub_1E3C2F968();
  v41 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView__mode;
  v98 = 0x8000000000000000;
  sub_1E4200634();
  (*(v36 + 32))(&v1[v41], v39, v34);
  v42 = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_cancellables] = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v43 = &v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_didSelectPlayerViewController];
  *v43 = 0;
  v43[1] = 0;
  v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_isDimmed] = 0;
  v44 = &v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_didPinchPlayerViewController];
  *v44 = 0;
  v44[1] = 0;
  v45 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView__distribution;
  v98 = 1;
  type metadata accessor for MultiPlayerViewControllerPlayerDistribution(0);
  sub_1E4200634();
  v46 = *(v95 + 32);
  v91 = v29;
  v46(&v1[v45], v33, v29);
  v47 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView__focusedPlayerViewController;
  v98 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B88);
  sub_1E4200634();
  (*(v89 + 32))(&v1[v47], v28, v90);
  v48 = MEMORY[0x1E69E7CC0];
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    sub_1E3BE3058();
    v42 = v49;
  }

  *&v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_animatingViews] = v42;
  v50 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_animationDebounceSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34BA0);
  swift_allocObject();
  *&v1[v50] = sub_1E4200544();
  v51 = &v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_initialPinchFrame];
  v52 = *(MEMORY[0x1E695F050] + 16);
  *v51 = *MEMORY[0x1E695F050];
  v51[1] = v52;
  *&v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_scaleRange] = xmmword_1E42C1AA0;
  *&v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureView] = 0;
  v53 = &v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureInitialLocation];
  *v53 = 0;
  v53[1] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___panGesture] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_maxPanVelocity] = 0x409F400000000000;
  v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_isAdjustingView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___adjustmentView] = 0;
  v54 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_patternGenerator;
  type metadata accessor for MultiPlayerPatternGenerator();
  v55 = sub_1E37BEDD8();
  *&v1[v54] = OUTLINED_FUNCTION_69_18(v55);
  *&v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_containerViews] = v48;
  sub_1E327F454(v94, &v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_layoutEngine]);
  OUTLINED_FUNCTION_11_3();
  (*(v95 + 8))(&v1[v45], v91);
  v97 = v92;
  sub_1E4200634();
  swift_endAccess();
  v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_shouldMaximizeScreenUsage] = v93 & 1;
  v56 = type metadata accessor for MultiPlayerView();
  v96.receiver = v1;
  v96.super_class = v56;
  v57 = objc_msgSendSuper2(&v96, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1E3BDFCA8();
  v58 = sub_1E32AE9B0(v5);
  v59 = 0;
  v60 = MEMORY[0x1E69E7D40];
  while (1)
  {
    if (v58 == v59)
    {

      v63 = sub_1E3BDC268();
      [v57 insertSubview:v63 atIndex:0];

      [*(v57 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___adjustmentView) setAlpha_];
      sub_1E3BE2938();
      v64 = sub_1E3BDC1C4();
      [v57 addGestureRecognizer_];

      v98 = *(v57 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_animationDebounceSubject);
      sub_1E32752B0(&qword_1ECF34BC8, &qword_1ECF34BA0);

      v65 = v76;
      sub_1E4200734();

      v66 = v79;
      sub_1E42069B4();
      sub_1E3280A90(0, &qword_1EE23B1D0);
      v67 = sub_1E4206A04();
      v98 = v67;
      v95 = sub_1E42069A4();
      v68 = v88;
      __swift_storeEnumTagSinglePayload(v88, 1, 1, v95);
      sub_1E32752B0(&qword_1ECF34BD0, &qword_1ECF34BA8);
      sub_1E32ADE7C(&qword_1EE23B1E0, &qword_1EE23B1D0);
      v69 = v80;
      v70 = v78;
      sub_1E42007F4();
      sub_1E32ADF50(v68);

      (*(v81 + 8))(v66, v82);
      (*(v77 + 8))(v65, v70);
      v71 = sub_1E4206A04();
      v98 = v71;
      __swift_storeEnumTagSinglePayload(v68, 1, 1, v95);
      sub_1E32752B0(&qword_1ECF34BD8, &qword_1ECF34BB0);
      v73 = v84;
      v72 = v85;
      sub_1E42007D4();
      sub_1E32ADF50(v68);

      (*(v83 + 8))(v69, v73);
      OUTLINED_FUNCTION_4_0();
      swift_allocObject();
      OUTLINED_FUNCTION_99_4();
      sub_1E32752B0(&qword_1ECF34BE0, &qword_1ECF34BB8);
      v74 = v87;
      sub_1E4200844();
      OUTLINED_FUNCTION_50();

      (*(v86 + 8))(v72, v74);
      OUTLINED_FUNCTION_11_3();
      sub_1E42004C4();
      swift_endAccess();

      __swift_destroy_boxed_opaque_existential_1(v94);
      OUTLINED_FUNCTION_25_2();
      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v61 = MEMORY[0x1E6911E60](v59, v5);
    }

    else
    {
      if (v59 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v61 = *(v5 + 8 * v59 + 32);
    }

    v62 = v61;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    (*((*v60 & *v57) + 0x350))(v61, 0, 1, 0, 0, 0);

    ++v59;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_1E3BDD0A4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v51 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B90);
  OUTLINED_FUNCTION_0_10();
  v54 = v4;
  v55 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B80);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B70);
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  v20 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_playerLayout;
  type metadata accessor for ViewLayout();
  v21 = sub_1E3C2F968();
  v48 = v20;
  *(v0 + v20) = v21;
  v22 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView__mode;
  v56 = 0x8000000000000000;
  sub_1E4200634();
  v49 = v16;
  v50 = v14;
  v23 = *(v16 + 32);
  v47 = v22;
  v23(v1 + v22, v19, v14);
  v24 = MEMORY[0x1E69E7CD0];
  v46 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_cancellables;
  *(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_cancellables) = MEMORY[0x1E69E7CD0];
  v25 = v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_delegate;
  *(v25 + 8) = 0;
  v45 = v25;
  swift_unknownObjectWeakInit();
  v26 = (v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_didSelectPlayerViewController);
  *v26 = 0;
  v26[1] = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_isDimmed) = 0;
  v27 = (v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_didPinchPlayerViewController);
  *v27 = 0;
  v27[1] = 0;
  v28 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView__distribution;
  v56 = 1;
  type metadata accessor for MultiPlayerViewControllerPlayerDistribution(0);
  sub_1E4200634();
  v52 = v10;
  v53 = v8;
  v29 = *(v10 + 32);
  v44 = v28;
  v29(v1 + v28, v13, v8);
  v30 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView__focusedPlayerViewController;
  v56 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B88);
  sub_1E4200634();
  v31 = *(v54 + 32);
  v43 = v30;
  v31(v1 + v30, v7, v55);
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    sub_1E3BE3058();
    v24 = v32;
  }

  *(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_animatingViews) = v24;
  v33 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_animationDebounceSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34BA0);
  swift_allocObject();
  *(v1 + v33) = sub_1E4200544();
  v34 = (v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_initialPinchFrame);
  v35 = *(MEMORY[0x1E695F050] + 16);
  *v34 = *MEMORY[0x1E695F050];
  v34[1] = v35;
  *(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_scaleRange) = xmmword_1E42C1AA0;
  v36 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureView;
  *(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureView) = 0;
  v37 = (v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureInitialLocation);
  *v37 = 0;
  v37[1] = 0;
  v38 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___panGesture;
  *(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___panGesture) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_maxPanVelocity) = 0x409F400000000000;
  *(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_isAdjustingView) = 0;
  v39 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___adjustmentView;
  *(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___adjustmentView) = 0;
  v40 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_patternGenerator;
  type metadata accessor for MultiPlayerPatternGenerator();
  v41 = sub_1E37BEDD8();
  v42 = OUTLINED_FUNCTION_69_18(v41);

  *(v1 + v40) = v42;
  *(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_containerViews) = MEMORY[0x1E69E7CC0];

  (*(v49 + 8))(v1 + v47, v50);

  sub_1E32AF6F8(v45);
  sub_1E34AF594(*v26);
  sub_1E34AF594(*v27);
  (*(v52 + 8))(v1 + v44, v53);
  (*(v54 + 8))(v1 + v43, v55);

  type metadata accessor for MultiPlayerView();
  OUTLINED_FUNCTION_36_3();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BDD5E4()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for MultiPlayerView();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  if (!sub_1E3BDC148())
  {
    if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
    {
      sub_1E3BE3058();
    }

    sub_1E3BE0254();
  }

  v1 = sub_1E3BDC268();
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 808))();
  v4 = 1.57079633;
  if ((v3 & 1) == 0)
  {
    v4 = 0.0;
  }

  Rotation = CGAffineTransformMakeRotation(&v12, v4);
  OUTLINED_FUNCTION_95_10(Rotation, sel_setTransform_, v6, v7, v8, v9, v10, v11, *&v12.a, *&v12.c, *&v12.tx, *&v12.a, *&v12.c, *&v12.tx);

  sub_1E3BE2938();
}

void sub_1E3BDD748(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v10 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v12 = (*(v11 + 888))();
  OUTLINED_FUNCTION_26_3();
  v43 = *((*((*v10 & v13) + 0x3A8))() + 16) == 0;

  v14 = v12;
  v15 = OUTLINED_FUNCTION_6();
  [v16 v17];
  v18 = objc_opt_self();
  v19 = [v18 isFeatureEnabled_];
  if (v19)
  {
    v19 = [v14 setAlpha_];
  }

  else if (a4)
  {
    [v14 setAlpha_];
    CGAffineTransformMakeScale(&v42, 0.5, 0.5);
    v19 = [v14 setTransform_];
  }

  (*(**(v6 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_playerLayout) + 552))(&v42, v19);
  v20 = 0.0;
  if ((LOBYTE(v42.tx) & 1) == 0)
  {
    v20 = sub_1E3952BE8(v42.a, v42.b, v42.c, v42.d);
  }

  v21 = [a1 view];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 layer];

    [v23 setMasksToBounds_];
    v24 = (*((*v10 & *v7) + 0x228))();
    if (v24)
    {

      if (a4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v27 = a1;
      sub_1E3BDBFBC();
      if (a4)
      {
LABEL_10:

        if ([v18 isFeatureEnabled_])
        {
          if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
          {
            sub_1E3BE3058();
            v26 = v25;
          }

          else
          {
            v26 = MEMORY[0x1E69E7CD0];
          }

          sub_1E3BDFE50(v26, 0, 0, a5, v40);
        }

        else
        {
          sub_1E3280A90(0, &qword_1EE23AE80);
          OUTLINED_FUNCTION_4_0();
          v32 = swift_allocObject();
          swift_unknownObjectWeakInit();
          OUTLINED_FUNCTION_5_10();
          v33 = swift_allocObject();
          *(v33 + 2) = v32;
          *(v33 + 3) = a1;
          v33[4] = v20;
          OUTLINED_FUNCTION_4_0();
          v34 = swift_allocObject();
          swift_unknownObjectWeakInit();
          OUTLINED_FUNCTION_5_10();
          v35 = swift_allocObject();
          v35[2] = v34;
          v35[3] = a5;
          v35[4] = v40;
          v36 = a1;

          sub_1E34AF604(a5);
          OUTLINED_FUNCTION_5_11();
          sub_1E3B02648();

          OUTLINED_FUNCTION_2_4();
          v37 = swift_allocObject();
          *(v37 + 16) = v14;
          *(v37 + 24) = v20;
          v38 = v14;
          OUTLINED_FUNCTION_25();
          sub_1E3B02648();
        }

LABEL_22:

        return;
      }
    }

    [v14 setAlpha_];
    v28 = [v14 layer];

    [v28 setCornerRadius_];
    v29 = [a1 view];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 layer];

      [v31 setCornerRadius_];
      if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
      {
        sub_1E3BE3058();
      }

      sub_1E3BE0254();

      sub_1E3BE2938();
      if (a5)
      {
        a5();
      }

      goto LABEL_22;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E3BDDD34(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_87_3();
  v6 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_119();
  v23[1] = (*(v7 + 816))();
  v21 = a2;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34BE8);
  OUTLINED_FUNCTION_46();
  sub_1E32752B0(v8, v9);
  sub_1E38D2054(&v21, v23);
  v10 = v23[0];

  if (v10)
  {
    OUTLINED_FUNCTION_15_94();
    v14 = (*(v11 + 504))(v12, v13);
    OUTLINED_FUNCTION_39();
    v18 = (*((*v6 & v15) + 0x228))(v16, v17);

    if (v18)
    {

      if (v14 == v18)
      {
        v19 = v3;
        sub_1E3BDBFBC();
      }
    }

    OUTLINED_FUNCTION_15_94();
    (*(v20 + 704))(v3, a3 & 1);
  }
}

void sub_1E3BDDEFC()
{
  OUTLINED_FUNCTION_194();
  v20 = v1;
  v21 = v0;
  v19 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_4_133();
  v6 = (*(v5 + 816))();
  v7 = sub_1E32AE9B0(v6);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E6911E60](v9, v6);
      }

      else
      {
        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      OUTLINED_FUNCTION_16_89();
      v13 = (*(v12 + 504))();

      if (v13 == v4)
      {
        break;
      }

      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      ++v9;
      if (v14 == v8)
      {
        goto LABEL_10;
      }
    }

    OUTLINED_FUNCTION_16_89();
    (*(v16 + 872))(v9, v19 & 1, v21, v20);
    OUTLINED_FUNCTION_192();
  }

  else
  {
LABEL_10:

    if (v21)
    {
      v21(v15);
    }

    OUTLINED_FUNCTION_192();
  }
}

void sub_1E3BDE0A4(unint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v9 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v49 = *(v10 + 816);
  v58[1] = v49();
  aBlock = a1;
  LOBYTE(v53) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34BE8);
  OUTLINED_FUNCTION_46();
  sub_1E32752B0(v11, v12);
  sub_1E38D2054(&aBlock, v58);
  v13 = v58[0];

  if (!v13)
  {
    if (a3)
    {
      a3(v14);
    }

    goto LABEL_26;
  }

  v50 = a4;
  v15 = (*((*v9 & *v13) + 0x1F8))(v14);
  OUTLINED_FUNCTION_11_3();
  v16 = sub_1E37EF010(a1);
  swift_endAccess();

  v17 = *((*v9 & *v5) + 0x228);
  v18 = v15;
  v19 = v17();

  if (v19)
  {

    if (v18 == v19)
    {
      v20 = v49();
      if (sub_1E32AE9B0(v20))
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1E6911E60](0, v20);
        }

        else
        {
          if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_29;
          }

          v21 = *(v20 + 32);
        }

        v22 = v21;

        (*((*v9 & *v22) + 0x1F8))(v23);
      }

      else
      {
      }

      sub_1E3BDBFBC();
    }
  }

  if (a2)
  {
    if ([objc_opt_self() isFeatureEnabled_])
    {
      if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
      {
        sub_1E3BE3058();
      }

      OUTLINED_FUNCTION_25();
      sub_1E3BDFE50(v37, v38, v39, v40, 0);

      v41 = objc_opt_self();
      OUTLINED_FUNCTION_4_0();
      v42 = swift_allocObject();
      *(v42 + 16) = v13;
      v56 = sub_1E3BE3670;
      v57 = v42;
      aBlock = MEMORY[0x1E69E9820];
      v53 = 1107296256;
      v54 = sub_1E378AEA4;
      v55 = &block_descriptor_74;
      v43 = _Block_copy(&aBlock);
      v44 = v13;

      OUTLINED_FUNCTION_10_9();
      v45 = swift_allocObject();
      v45[2] = v18;
      v45[3] = v44;
      v45[4] = a3;
      v45[5] = v50;
      v56 = sub_1E3BE35F4;
      v57 = v45;
      aBlock = MEMORY[0x1E69E9820];
      v53 = 1107296256;
      v54 = sub_1E37EB82C;
      v55 = &block_descriptor_39_3;
      v46 = _Block_copy(&aBlock);
      v47 = v18;
      v48 = v44;
      sub_1E34AF604(a3);

      [v41 animateWithDuration:v43 animations:v46 completion:0.33];

      _Block_release(v46);
      _Block_release(v43);
      goto LABEL_26;
    }

    [v13 center];
    v25 = v24;
    v27 = v26;
    sub_1E3BE2938();
    sub_1E3280A90(0, &qword_1EE23AE80);
    OUTLINED_FUNCTION_4_0();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = v13;
    v29[4] = v25;
    v29[5] = v27;
    v29[6] = 0;
    v29[7] = 0;
    OUTLINED_FUNCTION_10_9();
    v30 = swift_allocObject();
    v30[2] = v18;
    v30[3] = v13;
    v30[4] = a3;
    v30[5] = v50;
    v31 = v13;
    v32 = v18;
    v13 = v31;
    v33 = OUTLINED_FUNCTION_13_8();
    sub_1E34AF604(v33);

    OUTLINED_FUNCTION_5_11();
    sub_1E3B02648();

LABEL_24:

LABEL_26:
    OUTLINED_FUNCTION_96_5();
    return;
  }

  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    sub_1E3BE3058();
  }

  sub_1E3BE0254();

  v34 = [v18 view];
  if (v34)
  {
    v35 = v34;
    [v34 removeFromSuperview];

    v36 = [v13 removeFromSuperview];
    if (a3)
    {
      a3(v36);
    }

    goto LABEL_24;
  }

LABEL_29:
  __break(1u);
}

void sub_1E3BDE714()
{
  OUTLINED_FUNCTION_194();
  v1 = v0;
  v25 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v12 += 102;
  v13 = *v12;
  v14 = (*v12)();
  v15 = sub_1E32AE9B0(v14);

  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v10 < 0 || v15 <= v10)
    {
      goto LABEL_14;
    }

    v17 = (v13)(v16);
    v18 = sub_1E32AE9B0(v17);

    if ((v18 & 0x8000000000000000) == 0)
    {
      if ((v8 & 0x8000000000000000) == 0 && v18 > v8)
      {
        OUTLINED_FUNCTION_11_3();
        sub_1E3BDE9C0(v10, v8);
        swift_endAccess();
        OUTLINED_FUNCTION_39();
        if ((*((*v11 & v19) + 0x158))())
        {
          v21 = v20;
          ObjectType = swift_getObjectType();
          (*(v21 + 8))(v1, v10, v8, ObjectType, v21);
          swift_unknownObjectRelease();
        }

        if (v6)
        {
          sub_1E3280A90(0, &qword_1EE23AE80);
          OUTLINED_FUNCTION_4_0();
          swift_allocObject();
          OUTLINED_FUNCTION_99_4();
          OUTLINED_FUNCTION_2_4();
          v23 = swift_allocObject();
          *(v23 + 16) = v4;
          *(v23 + 24) = v25;

          v24 = OUTLINED_FUNCTION_27_0();
          sub_1E34AF604(v24);
          OUTLINED_FUNCTION_5_11();
          sub_1E3B02648();

LABEL_16:
          OUTLINED_FUNCTION_192();
          return;
        }

        if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
        {
          sub_1E3BE3058();
        }

        sub_1E3BE0254();
      }

LABEL_14:
      if (v4)
      {
        v4(v16);
      }

      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1E3BDE9C0(unint64_t a1, unint64_t a2)
{
  if (a1 != a2)
  {
    v5 = *v2;
    v6 = *v2 & 0xC000000000000001;
    sub_1E34AF4E4(a1, v6 == 0, *v2);
    if (v6)
    {
      v7 = MEMORY[0x1E6911E60](a1, v5);
    }

    else
    {
      v7 = *(v5 + 8 * a1 + 32);
    }

    v8 = v7;
    sub_1E34AF4E4(a2, v6 == 0, v5);
    if (v6)
    {
      v9 = MEMORY[0x1E6911E60](a2, v5);
    }

    else
    {
      v9 = *(v5 + 8 * a2 + 32);
    }

    v10 = v9;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
    {
      v5 = sub_1E37EFA58(v5);
      v11 = (v5 >> 62) & 1;
    }

    else
    {
      LODWORD(v11) = 0;
    }

    v12 = v5 & 0xFFFFFFFFFFFFFF8;
    v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = v10;

    if ((v5 & 0x8000000000000000) != 0 || v11)
    {
      v5 = sub_1E37EFA58(v5);
      v12 = v5 & 0xFFFFFFFFFFFFFF8;
      if ((a2 & 0x8000000000000000) == 0)
      {
LABEL_15:
        if (*(v12 + 16) > a2)
        {
          v14 = v12 + 8 * a2;
          v15 = *(v14 + 32);
          *(v14 + 32) = v8;

          *v2 = v5;
          return;
        }

LABEL_21:
        __break(1u);
        return;
      }
    }

    else if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_21;
  }
}

void sub_1E3BDEAFC()
{
  OUTLINED_FUNCTION_63_18();
  v45 = v1;
  v46 = v2;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v8 removeFromParentViewController];
  v10 = [v9 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  [v10 removeFromSuperview];

  [v9 didMoveToParentViewController_];
  v12 = [v9 view];
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v12;
  [v12 setUserInteractionEnabled_];

  OUTLINED_FUNCTION_39();
  v14 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & v15) + 0x398))(v9))
  {
    OUTLINED_FUNCTION_64();
    (*(v16 + 688))();
LABEL_10:
    OUTLINED_FUNCTION_63_13();
    return;
  }

  v43 = v5;
  v41 = v7;
  v17 = [v9 view];
  if (v17)
  {
    v18 = v17;
    [v17 frame];
    OUTLINED_FUNCTION_3();

    type metadata accessor for MultiPlayerContainerView();
    v19 = sub_1E3FD87C8(v9, 0, 0);
    v20 = [v19 layer];
    [v20 setMasksToBounds_];

    v21 = OUTLINED_FUNCTION_6();
    [v22 v23];

    v44[3] = type metadata accessor for MultiPlayerView();
    v44[0] = v3;
    v24 = objc_allocWithZone(MEMORY[0x1E69DCD80]);
    v25 = v3;
    v42 = sub_1E3BE2DCC(v44, sel_viewPinchedWithGesture_);
    [v19 addGestureRecognizer_];
    OUTLINED_FUNCTION_4_0();
    v26 = swift_allocObject();
    OUTLINED_FUNCTION_99_4();
    OUTLINED_FUNCTION_4_0();
    v27 = swift_allocObject();
    OUTLINED_FUNCTION_45_38(v27);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = &selRef_textLayout;
    v29 = *((*v14 & *v19) + 0x1B8);
    v30 = v19;

    v29(sub_1E3BE36D4, v28);

    OUTLINED_FUNCTION_4_0();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_45_38(v31);
    swift_unknownObjectWeakInit();
    v32 = *((*v14 & *v30) + 0x1D0);

    v33 = OUTLINED_FUNCTION_40_1();
    v32(v33);

    OUTLINED_FUNCTION_4_0();
    v34 = swift_allocObject();
    OUTLINED_FUNCTION_99_4();
    OUTLINED_FUNCTION_4_0();
    v35 = swift_allocObject();
    OUTLINED_FUNCTION_45_38(v35);
    swift_unknownObjectWeakInit();

    OUTLINED_FUNCTION_2_4();
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *(v36 + 24) = &selRef_textLayout;
    v37 = *((*v14 & *v30) + 0x1E8);

    v37(sub_1E3BE3AF8, v36);

    v38 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_containerViews;
    OUTLINED_FUNCTION_11_3();
    if (v43)
    {
      v39 = v30;
      MEMORY[0x1E6910BF0]();
      sub_1E38C5A18(*((*(v25 + v38) & 0xFFFFFFFFFFFFFF8) + 0x10));
      OUTLINED_FUNCTION_13_8();
      sub_1E4206324();
    }

    else
    {
      sub_1E37EFABC(v41, *(v25 + v38));
      sub_1E3BE3C6C(v41, v41, v30);
    }

    swift_endAccess();
    v40 = sub_1E3BDC268();
    [v25 insertSubview:v30 aboveSubview:v40];

    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
}

void sub_1E3BDF02C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E32AE9B0(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E6911E60](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    type metadata accessor for MultiPlayerContainerView();
    v7 = sub_1E4206F64();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

void sub_1E3BDF108()
{
  OUTLINED_FUNCTION_335();
  v3 = v2;
  OUTLINED_FUNCTION_6_119();
  v5 = (*(v4 + 816))();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(v5);
  OUTLINED_FUNCTION_81_13();
  while (v0 != v1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = OUTLINED_FUNCTION_39_3();
      v6 = MEMORY[0x1E6911E60](v10);
    }

    else
    {
      if (v1 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v6 = *(v5 + 8 * v1 + 32);
    }

    v7 = v6;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_15_94();
    v9 = (*(v8 + 504))();

    if (v3 && v9 == v3)
    {
    }

    else
    {
      sub_1E4207544();
      OUTLINED_FUNCTION_86_5();
      sub_1E4207584();
      OUTLINED_FUNCTION_86_5();
      sub_1E4207594();
      sub_1E4207554();
    }

    ++v1;
  }

  v11 = sub_1E32AE9B0(v18);
  for (i = 0; v11 != i; ++i)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v16 = OUTLINED_FUNCTION_11_6();
      v13 = MEMORY[0x1E6911E60](v16);
    }

    else
    {
      if (i >= *(v18 + 16))
      {
        goto LABEL_27;
      }

      v13 = *(v18 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_6_119();
    (*(v15 + 712))();
  }

  OUTLINED_FUNCTION_15_36();
}

void sub_1E3BDF304()
{
  OUTLINED_FUNCTION_335();
  v3 = v2;
  OUTLINED_FUNCTION_6_119();
  v5 = (*(v4 + 816))();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(v5);
  OUTLINED_FUNCTION_81_13();
  while (v0 != v1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = OUTLINED_FUNCTION_39_3();
      v6 = MEMORY[0x1E6911E60](v10);
    }

    else
    {
      if (v1 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v6 = *(v5 + 8 * v1 + 32);
    }

    v7 = v6;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_15_94();
    v9 = (*(v8 + 504))();

    if (v3 && v9 == v3)
    {
    }

    else
    {
      sub_1E4207544();
      OUTLINED_FUNCTION_86_5();
      sub_1E4207584();
      OUTLINED_FUNCTION_86_5();
      sub_1E4207594();
      sub_1E4207554();
    }

    ++v1;
  }

  v11 = sub_1E32AE9B0(v18);
  for (i = 0; v11 != i; ++i)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v16 = OUTLINED_FUNCTION_11_6();
      v13 = MEMORY[0x1E6911E60](v16);
    }

    else
    {
      if (i >= *(v18 + 16))
      {
        goto LABEL_27;
      }

      v13 = *(v18 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_6_119();
    (*(v15 + 720))(0);
  }

  OUTLINED_FUNCTION_15_36();
}

void sub_1E3BDF504(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_4_133();
  v5 = (*(v4 + 920))();
  if (!v5)
  {
LABEL_8:
    OUTLINED_FUNCTION_6();
    return;
  }

  v6 = v5;
  OUTLINED_FUNCTION_16_89();
  (*(v7 + 696))();
  v8 = [a1 view];
  if (v8)
  {
    v9 = v8;
    v10 = v6;
    [v10 frame];
    [v9 setFrame_];

    [v10 frame];
    OUTLINED_FUNCTION_3();
    v11 = COERCE_DOUBLE((*(**&v10[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_layout] + 1272))());
    if ((v13 & 1) == 0)
    {
      v12 = v11 + v11;
    }

    if (![v2 isFocused])
    {
      [v10 frame];
      OUTLINED_FUNCTION_3();
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_1E3BDF6BC()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 816))();
  sub_1E32AE9B0(v4);
  OUTLINED_FUNCTION_81_13();
  while (1)
  {
    if (v1 == v2)
    {
LABEL_10:

      OUTLINED_FUNCTION_25_2();
      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E6911E60](v2, v4);
    }

    else
    {
      if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(v4 + 8 * v2 + 32);
    }

    v6 = v5;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_21();
    v8 = (*(v7 + 504))();

    if (v8 == v0)
    {
      goto LABEL_10;
    }

    ++v2;
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_1E3BDF7D8()
{
  OUTLINED_FUNCTION_63_18();
  v27 = v1;
  v28 = v2;
  v3 = v0;
  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_4_133();
  v6 = (*(v5 + 272))();
  if (v6 == 0x8000000000000000)
  {
    OUTLINED_FUNCTION_12_5();
    (*(v7 + 400))();
  }

  else
  {
  }

  OUTLINED_FUNCTION_12_5();
  (*(v8 + 528))(v26);
  v25 = __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  OUTLINED_FUNCTION_36_3();
  v10 = (*((*v4 & v9) + 0x330))();
  v11 = sub_1E32AE9B0(v10);
  if (v11)
  {
    v12 = v11;
    sub_1E4207574();
    if (v12 < 0)
    {
      __break(1u);
      return;
    }

    v13 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v13, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      ++v13;
      OUTLINED_FUNCTION_16_89();
      v16 = *(v15 + 504);
      v18 = v17;
      v16();

      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }

    while (v12 != v13);
  }

  [v3 bounds];
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v30.size.width = 0.0;
  v30.size.height = 0.0;
  if (CGRectEqualToRect(v29, v30))
  {
    v19 = [objc_opt_self() mainScreen];
    [v19 bounds];
    OUTLINED_FUNCTION_3();
  }

  else
  {
    [v3 bounds];
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_12_5();
  (*(v20 + 400))();
  OUTLINED_FUNCTION_36_3();
  (*((*v4 & v21) + 0x1E0))();
  OUTLINED_FUNCTION_36_3();
  (*((*v4 & v22) + 0x328))();
  v23 = OUTLINED_FUNCTION_17_4();
  v24(v23);

  __swift_destroy_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_63_13();
}

void sub_1E3BDFB84()
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 816))();
  sub_1E32AE9B0(v3);
  OUTLINED_FUNCTION_81_13();
  while (v0 != v1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = OUTLINED_FUNCTION_39_3();
      v4 = MEMORY[0x1E6911E60](v7);
    }

    else
    {
      if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v4 = *(v3 + 8 * v1 + 32);
    }

    v5 = v4;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_21();
    (*(v6 + 360))(0);

    ++v1;
  }

  sub_1E3BDAA10();
}

uint64_t sub_1E3BDFCA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_playerLayout);
  v44[0] = sub_1E3952C10(20.0, 20.0);
  v44[1] = v2;
  v44[2] = v3;
  v44[3] = v4;
  v45 = 0;
  v5 = (*(*v1 + 184))(v44);
  v5.n128_u64[0] = 18.0;
  j__OUTLINED_FUNCTION_7_78(v5);
  v6.n128_u64[0] = 24.0;
  v38 = j__OUTLINED_FUNCTION_7_78(v6);
  v39 = v7;
  v40 = v8;
  v41 = v9;
  v42 = 0;
  type metadata accessor for UIEdgeInsets();
  v11 = v10;
  sub_1E3C3DE00(v10);
  v33[0] = v35;
  v33[1] = v36;
  v34 = v37;
  sub_1E3C2FC98();
  v27 = v30;
  v28 = v31;
  v29 = v32;
  sub_1E3C3DE00(v11);
  v21 = v24;
  v22 = v25;
  v23 = v26;
  sub_1E3C3DE00(v11);
  v15 = v18;
  v16 = v19;
  v17 = v20;
  sub_1E3C2FCB8(v33, __src);
  memcpy(v14, __src, 0xE9uLL);
  v12 = OUTLINED_FUNCTION_18();
  return (*(*v1 + 1600))(v14, 17, v12 & 1, v11);
}

void sub_1E3BDFE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v8 = (*(v7 + 816))();
  aBlock = MEMORY[0x1E69E7CC0];
  v9 = sub_1E32AE9B0(v8);
  v10 = 0;
  v11 = v8 & 0xC000000000000001;
  v34 = v8;
  v35 = v8 & 0xC000000000000001;
  v38 = (v8 & 0xFFFFFFFFFFFFFF8);
  v37 = v8 + 32;
  v36 = v9;
  while (1)
  {
LABEL_2:
    if (v10 == v9)
    {

      v23 = aBlock;
      v39 = objc_opt_self();
      OUTLINED_FUNCTION_4_0();
      v24 = swift_allocObject();
      *(v24 + 16) = aBlock;
      v44 = sub_1E3BE5854;
      v45 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v41 = 1107296256;
      OUTLINED_FUNCTION_23_58();
      v42 = v25;
      v43 = &block_descriptor_168;
      v26 = _Block_copy(&aBlock);

      OUTLINED_FUNCTION_4_0();
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_67_6();
      v28 = swift_allocObject();
      v28[2] = a2;
      v28[3] = a3;
      v28[4] = v27;
      v28[5] = a1;
      v28[6] = v23;
      v28[7] = a4;
      v28[8] = a5;
      v44 = sub_1E3BE585C;
      v45 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v41 = 1107296256;
      v42 = sub_1E37EB82C;
      v43 = &block_descriptor_175;
      v29 = _Block_copy(&aBlock);
      sub_1E34AF604(a2);

      sub_1E34AF604(a4);

      [v39 animateWithDuration:v26 animations:v29 completion:0.33];
      _Block_release(v29);
      _Block_release(v26);
      return;
    }

    if (v11)
    {
      v12 = MEMORY[0x1E6911E60](v10, v34);
    }

    else
    {
      if (v10 >= v38[2])
      {
        goto LABEL_20;
      }

      v12 = *(v37 + 8 * v10);
    }

    v13 = v12;
    if (__OFADD__(v10++, 1))
    {
      break;
    }

    v15 = (*((*v6 & *v12) + 0x1F8))();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = sub_1E42073D4();

      if ((v16 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (*(a1 + 16))
      {
        sub_1E3280A90(0, &qword_1ECF2C3E0);
        sub_1E4206F54();
        OUTLINED_FUNCTION_38_28();
        v19 = ~v18;
        while (1)
        {
          v20 = v17 & v19;
          if (((*(a1 + 56 + (((v17 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v19)) & 1) == 0)
          {
            break;
          }

          v21 = *(*(a1 + 48) + 8 * v20);
          v22 = sub_1E4206F64();

          v17 = v20 + 1;
          if (v22)
          {

            v6 = MEMORY[0x1E69E7D40];
            v11 = v35;
            v9 = v36;
            goto LABEL_2;
          }
        }
      }

      v6 = MEMORY[0x1E69E7D40];
      v11 = v35;
      v9 = v36;
LABEL_16:
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1E3BE0254()
{
  OUTLINED_FUNCTION_87_3();
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_4_133();
  v4 = (*(v3 + 816))();
  sub_1E32AE9B0(v4);
  OUTLINED_FUNCTION_50();

  if (v0)
  {
    v6 = *(v0 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_patternGenerator);
    (*(*v6 + 232))(result);
    OUTLINED_FUNCTION_39();
    v8 = (*((*v2 & v7) + 0x3A8))();
    OUTLINED_FUNCTION_4_0();
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_99_4();
    OUTLINED_FUNCTION_5_10();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v8;
    v10[4] = v1;
    v11 = *(*v6 + 200);

    v13 = v11(v12);
    sub_1E3BE047C(v13, v14, v9, v8, v1);

    OUTLINED_FUNCTION_2_4();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1E3BE5B2C;
    *(v15 + 24) = v10;
    v16 = *(*v6 + 224);

    v17 = OUTLINED_FUNCTION_40_1();
    v16(v17);
  }

  return result;
}

void sub_1E3BE047C(CGFloat a1, CGFloat a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;
  v11 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_64();
  v13 = (*(v12 + 816))();
  v14 = 0;
  v72 = sub_1E32AE9B0(v13);
  v68 = v10;
  v70 = a5 & 0xC000000000000001;
  v69 = a4;
  v74 = a5 + 56;
  v76 = a5;
  while (v14 != v72)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1E6911E60](v14, v13);
    }

    else
    {
      if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return;
      }

      v15 = *(v13 + 32 + 8 * v14);
    }

    v16 = v15;
    v17 = *(a4 + 16);
    if (v14 == v17)
    {

      break;
    }

    if (v14 >= v17)
    {
      goto LABEL_33;
    }

    v18 = *((*v11 & *v15) + 0x1F8);
    v19 = v18();
    if (v70)
    {
      v20 = sub_1E42073D4();

      if (v20)
      {
        v19 = v16;
        goto LABEL_22;
      }
    }

    else
    {
      if (*(a5 + 16))
      {
        sub_1E3280A90(0, &qword_1ECF2C3E0);
        sub_1E4206F54();
        OUTLINED_FUNCTION_38_28();
        v23 = ~v22;
        while (1)
        {
          v24 = v21 & v23;
          if (((*(v74 + (((v21 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v23)) & 1) == 0)
          {
            break;
          }

          v25 = *(*(a5 + 48) + 8 * v24);
          v26 = sub_1E4206F64();

          a5 = v76;
          v21 = v24 + 1;
          if (v26)
          {

            v10 = v68;
            v11 = MEMORY[0x1E69E7D40];
            a4 = v69;
            goto LABEL_22;
          }
        }
      }

      v10 = v68;
      v11 = MEMORY[0x1E69E7D40];
    }

    v27 = v18();
    v28 = [v27 view];

    v19 = v16;
    v79.origin.x = OUTLINED_FUNCTION_6_18();
    v80 = CGRectOffset(v79, a1, a2);
    [v19 setFrame_];
    OUTLINED_FUNCTION_39();
    if ((*((*v11 & v29) + 0x158))())
    {
      swift_getObjectType();
      v30 = v18();
      [v19 frame];
      OUTLINED_FUNCTION_24_57();

      v31 = OUTLINED_FUNCTION_6_18();
      v11 = MEMORY[0x1E69E7D40];
      v32(v31);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    a4 = v69;
    a5 = v76;
LABEL_22:
    ++v14;
  }

  if (*(a4 + 16))
  {
    v34 = *(a4 + 56);
    (*((*v11 & *v10) + 0x210))(v78, v33);
    __swift_project_boxed_opaque_existential_1(v78, v78[3]);
    v35 = OUTLINED_FUNCTION_34();
    v10 = v68;
    v73 = v36(v35);
    v75 = v37;
    v77 = v38;
    v40 = v39;
    __swift_destroy_boxed_opaque_existential_1(v78);
    OUTLINED_FUNCTION_39();
    (*((*v11 & v41) + 0x328))();
    v42 = OUTLINED_FUNCTION_49_31();
    v45 = v34;
    if (v46)
    {
      v71 = CGRect.center.getter(v42, v43, v44, v34);
      v47 = sub_1E3BDC268();
      [v47 frame];
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;

      v81.origin.x = v49;
      v81.origin.y = v51;
      v81.size.width = v53;
      v81.size.height = v55;
      v56 = v71 - CGRectGetWidth(v81) * 0.5;
      v82.origin.x = OUTLINED_FUNCTION_49_31();
      MaxY = CGRectGetMaxY(v82);
      v58 = MaxY + sub_1E3952BD8(v73, v75, v77) * 0.5 + a1;
    }

    else
    {
      v59 = v34;
      MaxX = CGRectGetMaxX(*&v42);
      v56 = MaxX + sub_1E3952BE0(v73, v75, v77, v40) * 0.5 + a1;
      v61 = OUTLINED_FUNCTION_49_31();
      CGRect.center.getter(v61, v62, v63, v59);
      v65 = v64;
      v66 = sub_1E3BDC268();
      [v66 frame];
      OUTLINED_FUNCTION_24_57();

      v83.origin.x = OUTLINED_FUNCTION_6_18();
      v58 = v65 - CGRectGetHeight(v83) * 0.5 + a2;
    }

    v67 = *(v68 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___adjustmentView);
    [v67 frame];
    [v67 setFrame_];
  }
}

void sub_1E3BE0A8C(void *a1)
{
  OUTLINED_FUNCTION_11_3();
  v2 = a1;
  sub_1E3BE41D8(&v19, v2, &qword_1EE23AE80, 0x1E69DD250, &qword_1ECF34C08, &unk_1E42C1DB0);
  v3 = v19;
  swift_endAccess();

  v4 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v17 = sub_1E3BE555C;
  v18 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  OUTLINED_FUNCTION_23_58();
  v15 = v6;
  v16 = &block_descriptor_139_0;
  v7 = _Block_copy(&aBlock);
  v8 = v2;

  OUTLINED_FUNCTION_4_0();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_4();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v17 = sub_1E3BE45C4;
  v18 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1E37EB82C;
  v16 = &block_descriptor_146;
  v11 = _Block_copy(&aBlock);
  v12 = v8;

  [v4 animateKeyframesWithDuration:0 delay:v7 options:v11 animations:0.25 completion:0.0];
  _Block_release(v11);
  _Block_release(v7);
}

void sub_1E3BE0C90(void *a1)
{
  v5 = v1;
  v7 = [a1 view];
  if (!v7)
  {
    goto LABEL_27;
  }

  v63 = v7;
  type metadata accessor for MultiPlayerContainerView();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    [a1 scale];
    v11 = v10;
    v12 = [a1 state];
    if (v12 != 2)
    {
      if (v12 == 1)
      {
        OUTLINED_FUNCTION_11_3();
        v13 = v63;
        sub_1E3BE41D8(&v65, v9, &qword_1EE23AE80, 0x1E69DD250, &qword_1ECF34C08, &unk_1E42C1DB0);
        v14 = v65;
        swift_endAccess();

        v15 = OUTLINED_FUNCTION_17_1();
        [v15 v16];
        [v9 frame];
        OUTLINED_FUNCTION_3();

        v17 = v5 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_initialPinchFrame;
        *v17 = v11;
        *(v17 + 1) = v2;
        *(v17 + 2) = v3;
        *(v17 + 3) = v4;
        if (!(*((*MEMORY[0x1E69E7D40] & *v5) + 0x158))())
        {

          goto LABEL_27;
        }

        OUTLINED_FUNCTION_96_10();
        OUTLINED_FUNCTION_79_1();
        v18 = OUTLINED_FUNCTION_17_1();
        v19(v18);
      }

      else
      {
        if (v11 >= 1.3 && (OUTLINED_FUNCTION_15_94(), v28 += 63, v29 = *v28, v30 = (*v28)(), v31 = [v30 isReadyForDisplay], v30, (v31 & 1) != 0))
        {
          OUTLINED_FUNCTION_12_5();
          v33 = (*(v32 + 264))();
          v34 = v29();
          sub_1E386ABC0(v34, v33);
          v36 = v35;
          v38 = v37;

          if ((v38 & 1) == 0)
          {
            OUTLINED_FUNCTION_12_5();
            v40 = (*(v39 + 456))();
            if (v40)
            {
              v41 = v40;
              v42 = v29();
              v41(v42, v36);
              sub_1E34AF594(v41);
            }

            v29();
            sub_1E3BDBFBC();
          }

          v43 = (v5 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_initialPinchFrame);
          *v43 = 0u;
          v43[1] = 0u;
          OUTLINED_FUNCTION_11_3();
          v44 = sub_1E3BE4E30(v9);
          swift_endAccess();
        }

        else
        {
          v45 = objc_opt_self();
          OUTLINED_FUNCTION_2_4();
          v46 = swift_allocObject();
          *(v46 + 16) = v9;
          *(v46 + 24) = v5;
          v70 = sub_1E3BE54A0;
          v71 = v46;
          aBlock = MEMORY[0x1E69E9820];
          v67 = 1107296256;
          OUTLINED_FUNCTION_22_61();
          v68 = v47;
          v69 = &block_descriptor_126_0;
          v48 = _Block_copy(&aBlock);
          v49 = v63;
          v5;

          OUTLINED_FUNCTION_4_0();
          v50 = swift_allocObject();
          OUTLINED_FUNCTION_99_4();
          OUTLINED_FUNCTION_2_4();
          v51 = swift_allocObject();
          *(v51 + 16) = v50;
          *(v51 + 24) = v9;
          v70 = sub_1E3BE54C4;
          v71 = v51;
          aBlock = MEMORY[0x1E69E9820];
          v67 = 1107296256;
          v68 = sub_1E37EB82C;
          v69 = &block_descriptor_133;
          v52 = _Block_copy(&aBlock);
          v53 = v49;

          [v45 animateWithDuration:v48 animations:v52 completion:0.25];
          _Block_release(v52);
          _Block_release(v48);
        }

        OUTLINED_FUNCTION_15_94();
        if (!(*(v54 + 344))())
        {

          goto LABEL_27;
        }

        OUTLINED_FUNCTION_96_10();
        OUTLINED_FUNCTION_79_1();
        v55 = OUTLINED_FUNCTION_17_1();
        v56(v55);
      }

      swift_unknownObjectRelease();
LABEL_27:
      OUTLINED_FUNCTION_96_5();
      return;
    }

    if (v11 < 0.8 || v11 > 1.3)
    {
      v57 = OUTLINED_FUNCTION_76_12();
      [v57 v58];
      v59 = OUTLINED_FUNCTION_76_12();
      [v59 v60];
    }

    else
    {
      v20 = *(v5 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_initialPinchFrame + 16);
      v21 = *(v5 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_initialPinchFrame + 24);
      v22 = v11 * v20;
      v23 = v11 * v21;
      v24 = *(v5 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_initialPinchFrame);
      v25 = *(v5 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_initialPinchFrame + 8);
      v26 = v20 - v22;
      v27 = v21 - v23;
      v64 = v63;
      v72.origin.x = v24;
      v72.origin.y = v25;
      v72.size.width = v20;
      v72.size.height = v21;
      v73 = CGRectInset(v72, v26, v27);
      [v9 setFrame_];
    }
  }

  OUTLINED_FUNCTION_96_5();
}

BOOL sub_1E3BE1328()
{
  OUTLINED_FUNCTION_5_16();
  v2 = sub_1E3BDC268();
  [v2 frame];
  OUTLINED_FUNCTION_24_57();

  v3 = OUTLINED_FUNCTION_6_18();
  v7 = CGRect.center.getter(v3, v4, v5, v6);
  return sub_1E3FB31C0(v7, v8, v1, v0) <= 40.0;
}

void sub_1E3BE13A4()
{
  OUTLINED_FUNCTION_63_18();
  v2 = v0;
  OUTLINED_FUNCTION_87_3();
  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v4 += 33;
  v5 = *v4;
  v6 = (*v4)();
  v7 = sub_1E32AE9B0(v6);

  if (v7 < 2)
  {
    goto LABEL_29;
  }

  v8 = OUTLINED_FUNCTION_33_14();
  [v8 v9];
  v11 = v10;
  v13 = v12;
  v14 = OUTLINED_FUNCTION_33_14();
  [v14 v15];
  v17 = v16;
  v19 = v18;
  v20 = [v1 state];
  if (v20 != 2)
  {
    if (v20 != 1)
    {
      v81 = *(v2 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureView);
      *(v2 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureView) = 0;

      v82 = (v2 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureInitialLocation);
      *v82 = 0;
      v82[1] = 0;
      *(v2 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_isAdjustingView) = 0;
      sub_1E3280A90(0, &qword_1EE23AE80);
      OUTLINED_FUNCTION_4_0();
      swift_allocObject();
      OUTLINED_FUNCTION_45_2();
      OUTLINED_FUNCTION_4_0();
      v83 = swift_allocObject();
      OUTLINED_FUNCTION_45_38(v83);
      swift_unknownObjectWeakInit();

      OUTLINED_FUNCTION_5_11();
      sub_1E3B02648();

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_10_53();
    if ((*(v21 + 992))(v11, v13) & 1) != 0 && (sub_1E3BDB1AC())
    {
      *(v2 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_isAdjustingView) = 1;
      OUTLINED_FUNCTION_10_53();
      (*(v22 + 808))();
      [v2 frame];
      OUTLINED_FUNCTION_55_29();
      OUTLINED_FUNCTION_11_3();
      v23 = OUTLINED_FUNCTION_34();
      __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
      v25 = OUTLINED_FUNCTION_33_44();
      v26(v25);
      swift_endAccess();
      if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
      {
        sub_1E3BE3058();
        v28 = v27;
      }

      else
      {
        v28 = MEMORY[0x1E69E7CD0];
      }

      sub_1E3BE0254();

      v111 = (v5)(v110);
      OUTLINED_FUNCTION_28_45(v111);
      if (v28 != 2)
      {
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_10_53();
      if ((*(v112 + 480))())
      {
        goto LABEL_29;
      }

      goto LABEL_68;
    }

    OUTLINED_FUNCTION_10_53();
    v85 = (*(v84 + 816))();
    v86 = sub_1E32AE9B0(v85);
    for (i = 0; v86 != i; ++i)
    {
      if ((v85 & 0xC000000000000001) != 0)
      {
        v88 = MEMORY[0x1E6911E60](i, v85);
      }

      else
      {
        if (i >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_76;
        }

        v88 = *(v85 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v89 = v88;
      [v89 frame];
      v129.x = v11;
      v129.y = v13;
      if (CGRectContainsPoint(v132, v129))
      {

        v97 = *(v2 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureView);
        *(v2 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureView) = v89;
        v126 = v89;

        [v126 center];
        v99 = v98;
        v101 = v100;

        v102 = (v2 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureInitialLocation);
        *v102 = v99;
        v102[1] = v101;
        [v2 bringSubviewToFront_];
        OUTLINED_FUNCTION_36_3();
        if (!(*((*v3 & v103) + 0x158))())
        {
          goto LABEL_71;
        }

        OUTLINED_FUNCTION_96_10();
        OUTLINED_FUNCTION_79_1();
        v104 = OUTLINED_FUNCTION_17_1();
        v105(v104);

        OUTLINED_FUNCTION_18_69();

        swift_unknownObjectRelease();
        return;
      }
    }

LABEL_48:
    OUTLINED_FUNCTION_18_69();

    return;
  }

  v29 = *(v2 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureView);
  if (!v29)
  {
    if (*(v2 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_isAdjustingView) != 1)
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_10_53();
    (*(v90 + 808))();
    [v2 frame];
    OUTLINED_FUNCTION_55_29();
    OUTLINED_FUNCTION_11_3();
    v91 = OUTLINED_FUNCTION_34();
    __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
    v93 = OUTLINED_FUNCTION_33_44();
    v94(v93);
    swift_endAccess();
    if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
    {
      sub_1E3BE3058();
      v96 = v95;
    }

    else
    {
      v96 = MEMORY[0x1E69E7CD0];
    }

    sub_1E3BE0254();

    v114 = (v5)(v113);
    OUTLINED_FUNCTION_28_45(v114);
    if (v96 != 2)
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_10_53();
    v115 += 60;
    v116 = *v115;
    if ((*v115)() == 1 && v13 <= 0.5)
    {
      OUTLINED_FUNCTION_10_53();
      v122 = *(v121 + 488);
      v123 = 0;
LABEL_74:
      v122(v123);
      goto LABEL_29;
    }

    if (v116())
    {
LABEL_29:
      OUTLINED_FUNCTION_18_69();
      return;
    }

LABEL_68:
    if (v13 > 0.5)
    {
      OUTLINED_FUNCTION_10_53();
      v122 = *(v118 + 488);
      v123 = 1;
      goto LABEL_74;
    }

    goto LABEL_29;
  }

  v30 = v29;
  v31 = OUTLINED_FUNCTION_33_14();
  [v31 v32];
  v34 = v33;
  v36 = v35;
  v37 = OUTLINED_FUNCTION_33_14();
  [v37 v38];
  v40 = v39;
  v42 = v41;
  v125 = v30;
  if (sub_1E3BE1FBC(v125, v40, v42, v34, v36))
  {
    v43 = v5();
    v44 = *((*v3 & *v125) + 0x1F8);
    v45 = v44();
    sub_1E386ABC0(v45, v43);
    v47 = v46;
    v49 = v48;

    if ((v49 & 1) == 0)
    {
      [v1 setEnabled_];
      [v1 setEnabled_];
      OUTLINED_FUNCTION_36_3();
      v51 = (*((*v3 & v50) + 0x158))();
      if (v51)
      {
        v53 = v52;
        ObjectType = swift_getObjectType();
        v54 = v47;
        v55 = v44();
        (*(v53 + 16))(v2, v55, v54, ObjectType, v53);

        v47 = v54;
        v51 = swift_unknownObjectRelease();
      }

      v56 = (v44)(v51);
      OUTLINED_FUNCTION_4_0();
      v57 = swift_allocObject();
      OUTLINED_FUNCTION_45_2();
      OUTLINED_FUNCTION_5_10();
      v58 = swift_allocObject();
      v58[2] = v57;
      v58[3] = v125;
      v58[4] = v47;
      v59 = *((*v3 & *v2) + 0x360);
      v60 = v125;

      v59(v56, 1, sub_1E3BE5378, v58);
    }
  }

  [v125 center];
  v62 = v61;

  v63 = v17 + v62;
  [v125 center];
  v65 = v64;

  v66 = v19 + v65;
  [v125 setCenter_];

  v67 = OUTLINED_FUNCTION_33_14();
  [v67 v68];
  OUTLINED_FUNCTION_36_3();
  v70 = *((*v3 & v69) + 0x330);
  v71 = v70();
  v72 = sub_1E32AE9B0(v71);
  if (!v72)
  {
    v80 = v125;
LABEL_47:

    goto LABEL_48;
  }

  v73 = v72;
  v74 = 0;
  while (1)
  {
    if ((v71 & 0xC000000000000001) != 0)
    {
      v75 = OUTLINED_FUNCTION_67_0();
      v76 = MEMORY[0x1E6911E60](v75);
    }

    else
    {
      if (v74 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_78;
      }

      v76 = *(v71 + 8 * v74 + 32);
    }

    v77 = v76;
    if (v76 == v125)
    {

      goto LABEL_25;
    }

    [v76 frame];
    v127.x = v63;
    v127.y = v66;
    if (CGRectContainsPoint(v130, v127))
    {
      break;
    }

    [v77 frame];
    v128.x = v40;
    v128.y = v42;
    v78 = CGRectContainsPoint(v131, v128);

    if (v78)
    {
      goto LABEL_52;
    }

LABEL_25:
    v79 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      return;
    }

    ++v74;
    v80 = v125;
    if (v79 == v73)
    {
      goto LABEL_47;
    }
  }

LABEL_52:

  v109 = (v70)(v108);
  sub_1E3BDF02C(v125, v109);
  OUTLINED_FUNCTION_68_19();
  if ((v77 & 1) == 0)
  {
    if ([objc_opt_self() isFeatureEnabled_])
    {
      if (!sub_1E3BDC148())
      {

        sub_1E4200524();

        goto LABEL_29;
      }
    }

    else
    {
      OUTLINED_FUNCTION_34();
      sub_1E3BE21C8();
    }
  }

LABEL_71:
  OUTLINED_FUNCTION_18_69();
}

uint64_t sub_1E3BE1FBC(void *a1, double a2, double a3, CGFloat a4, double a5)
{
  OUTLINED_FUNCTION_5_16();
  if (sub_1E3BDC148())
  {
    return 0;
  }

  v31 = a4;
  [v5 frame];
  OUTLINED_FUNCTION_24_57();
  v15 = v14;
  [a1 frame];
  v45.origin.x = v16;
  v45.origin.y = v17;
  v45.size.width = v18;
  v45.size.height = v19;
  v33.origin.x = a4;
  v33.origin.y = v8;
  v33.size.width = v9;
  v33.size.height = v15;
  v34 = CGRectIntersection(v33, v45);
  sub_1E3CEEAF4(v34.origin.x, v34.origin.y, v34.size.width, v34.size.height);
  OUTLINED_FUNCTION_42_44();
  v32 = sub_1E3CEEAF4(v20, v21, v22, v23);
  if (floor(v32) == floor(v8))
  {
    goto LABEL_4;
  }

  v35.origin.x = OUTLINED_FUNCTION_13_100();
  CGRectGetMinY(v35);
  OUTLINED_FUNCTION_42_44();
  if (CGRectGetMinY(v36) < v8)
  {
    v25 = a5 < -2000.0;
    goto LABEL_7;
  }

  v37.origin.x = OUTLINED_FUNCTION_13_100();
  CGRectGetMaxY(v37);
  OUTLINED_FUNCTION_42_44();
  if (v8 >= CGRectGetMaxY(v38))
  {
    v41.origin.x = OUTLINED_FUNCTION_13_100();
    CGRectGetMinX(v41);
    OUTLINED_FUNCTION_42_44();
    if (CGRectGetMinX(v42) < v8)
    {
      v25 = a4 < -2000.0;
LABEL_7:
      v24 = v25;
      goto LABEL_12;
    }

    v43.origin.x = OUTLINED_FUNCTION_13_100();
    MaxX = CGRectGetMaxX(v43);
    [a1 frame];
    if (MaxX >= CGRectGetMaxX(v44))
    {
LABEL_4:
      v24 = 0;
      goto LABEL_12;
    }

    v24 = v31 > 2000.0;
  }

  else
  {
    v24 = a5 > 2000.0;
  }

LABEL_12:
  [v5 frame];
  Width = CGRectGetWidth(v39);
  if (v7 <= 0.0 || Width <= v7)
  {
    return 1;
  }

  [v5 frame];
  Height = CGRectGetHeight(v40);
  if (v6 <= 0.0 || Height <= v6)
  {
    return 1;
  }

  if (v8 / v32 <= 0.75)
  {
    return v24;
  }

  return 0;
}

void sub_1E3BE21C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureView);
  if (v1)
  {
    OUTLINED_FUNCTION_5_16();
    v3 = v2;
    v5 = v4;
    OUTLINED_FUNCTION_11_3();
    v6 = v1;
    sub_1E3BDE9C0(v3, v5);
    swift_endAccess();
    OUTLINED_FUNCTION_39();
    v7 = MEMORY[0x1E69E7D40];
    v9 = (*((*MEMORY[0x1E69E7D40] & v8) + 0x158))();
    if (v9)
    {
      v11 = v10;
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(v0, v3, v5, ObjectType, v11);
      v9 = swift_unknownObjectRelease();
    }

    v53 = v5;
    v58 = (*((*v7 & *v0) + 0x3A8))(v9);
    v54 = v3;
    v55 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C410);
    OUTLINED_FUNCTION_46();
    sub_1E32752B0(v13, v14);
    sub_1E38D2054(&v54, &v56);
    if (v57)
    {

LABEL_26:

      return;
    }

    OUTLINED_FUNCTION_11_3();
    v15 = v6;
    sub_1E3BE41D8(&v54, v15, &qword_1EE23AE80, 0x1E69DD250, &qword_1ECF34C08, &unk_1E42C1DB0);
    v16 = v54;
    swift_endAccess();

    if (![objc_opt_self() isFeatureEnabled_])
    {
      sub_1E3280A90(0, &qword_1EE23AE80);
      OUTLINED_FUNCTION_4_0();
      v35 = swift_allocObject();
      OUTLINED_FUNCTION_45_2();
      v36 = swift_allocObject();
      v37 = OUTLINED_FUNCTION_82_9(v36);
      v37[8] = v15;
      v37[9] = v35;
      OUTLINED_FUNCTION_4_0();
      v38 = swift_allocObject();
      OUTLINED_FUNCTION_45_2();
      OUTLINED_FUNCTION_2_4();
      v39 = swift_allocObject();
      *(v39 + 16) = v38;
      *(v39 + 24) = v15;
      v6 = v15;

      OUTLINED_FUNCTION_5_11();
      sub_1E3B02648();

      goto LABEL_26;
    }

    v51 = v15;
    OUTLINED_FUNCTION_10_53();
    v18 = (*(v17 + 264))();
    v19 = v18 + 32;
    v20 = sub_1E32AE9B0(v18);
    v21 = 0;
    v22 = (v18 & 0xC000000000000001);
    v52 = v18;
    v23 = v18 & 0xFFFFFFFFFFFFFF8;
    v24 = MEMORY[0x1E69E7CC0];
    v25 = v53;
    while (v20 != v21)
    {
      if (v22)
      {
        v26 = MEMORY[0x1E6911E60](v21, v52);
      }

      else
      {
        if (v21 >= *(v23 + 16))
        {
          goto LABEL_35;
        }

        v26 = *(v19 + 8 * v21);
      }

      v27 = v26;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      if (v25 == v21 || v3 == v21)
      {

        ++v21;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E3BE2F08(0, *(v24 + 16) + 1, 1);
          v25 = v53;
          v24 = v56;
        }

        v31 = *(v24 + 16);
        v30 = *(v24 + 24);
        v32 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          v34 = v31 + 1;
          v50 = v31;
          sub_1E3BE2F08((v30 > 1), v31 + 1, 1);
          v32 = v34;
          v31 = v50;
          v25 = v53;
          v24 = v56;
        }

        *(v24 + 16) = v32;
        v33 = v24 + 16 * v31;
        *(v33 + 32) = v21;
        *(v33 + 40) = v27;
        ++v21;
      }
    }

    v40 = *(v24 + 16);
    if (v40)
    {
      v56 = MEMORY[0x1E69E7CC0];
      sub_1E4207574();
      v41 = 40;
      v42 = v51;
      do
      {
        v22 = *(v24 + v41);
        sub_1E4207544();
        v3 = *(v56 + 16);
        sub_1E4207584();
        OUTLINED_FUNCTION_39_3();
        sub_1E4207594();
        sub_1E4207554();
        v41 += 16;
        --v40;
      }

      while (v40);

      v43 = v56;
    }

    else
    {

      v43 = MEMORY[0x1E69E7CC0];
      v42 = v51;
    }

    sub_1E3BE27E0(v43);
    v45 = v44;
    OUTLINED_FUNCTION_67_6();
    v46 = swift_allocObject();
    OUTLINED_FUNCTION_82_9(v46)[8] = v42;
    OUTLINED_FUNCTION_4_0();
    v47 = swift_allocObject();
    OUTLINED_FUNCTION_45_38(v47);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v48 = swift_allocObject();
    *(v48 + 16) = v22;
    *(v48 + 24) = v42;
    v49 = v42;

    sub_1E3BDFE50(v45, sub_1E3BE4594, v3, sub_1E3BE45C0, v48);
  }
}

void sub_1E3BE27E0(unint64_t a1)
{
  v2 = sub_1E32AE9B0(a1);
  v3 = sub_1E3280A90(0, &qword_1ECF2C3E0);
  v4 = sub_1E32ADE7C(&qword_1ECF34C10, &qword_1ECF2C3E0);
  v8[1] = MEMORY[0x1E6910FA0](v2, v3, v4);
  v5 = sub_1E32AE9B0(a1);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E3BE41D8(v8, v7, &qword_1ECF2C3E0, 0x1E6958608, &unk_1ECF34C18, &unk_1E42C1DB8);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1E3BE2938()
{
  OUTLINED_FUNCTION_4_133();
  if (((*(v0 + 424))() & 1) == 0)
  {
    v7 = sub_1E3BDB1AC();
    OUTLINED_FUNCTION_4_133();
    v8 += 33;
    v9 = *v8;
    v10 = (*v8)();
    v11 = sub_1E32AE9B0(v10);

    if (v7)
    {
      if (v11 == 2 || (v14 = (v9)(v12), sub_1E32AE9B0(v14), OUTLINED_FUNCTION_87_0(), v15 = , v7 >= 2 && (OUTLINED_FUNCTION_4_133(), v15 = (*(v16 + 480))(), v15 == 1)) || (v17 = (v9)(v15), sub_1E32AE9B0(v17), OUTLINED_FUNCTION_87_0(), , v7 == 3) && (OUTLINED_FUNCTION_4_133(), !(*(v18 + 480))()))
      {
        v1 = 1;
        goto LABEL_3;
      }
    }

    else if (v11 == 2)
    {
      OUTLINED_FUNCTION_4_133();
      v1 = (*(v13 + 400))();
      goto LABEL_3;
    }
  }

  v1 = 0;
LABEL_3:
  v2 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1 & 1;
  OUTLINED_FUNCTION_0_155();
  v19[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v19[2] = v5;
  v19[3] = &block_descriptor_209;
  v6 = _Block_copy(v19);

  [v2 animateWithDuration:v6 animations:0.25];
  _Block_release(v6);
}

id sub_1E3BE2BE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiPlayerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E3BE2DCC(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_5();
    v10 = v9 - v8;
    (*(v7 + 16))(v9 - v8);
    v11 = sub_1E4207994();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

void *sub_1E3BE2F08(void *a1, int64_t a2, char a3)
{
  result = sub_1E3BE2F28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3BE2F28(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34C20);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34C28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1E3BE3058()
{
  OUTLINED_FUNCTION_194();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  if (sub_1E32AE9B0(v4))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v3);
    v6 = sub_1E4207464();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  v26 = sub_1E32AE9B0(v5);
  if (v26)
  {
    v7 = 0;
    v8 = v6 + 56;
    v24 = v5;
    v25 = v5 & 0xC000000000000001;
    v23 = v5 + 32;
    while (1)
    {
      sub_1E34AF4E4(v7, v25 == 0, v5);
      v9 = v25 ? MEMORY[0x1E6911E60](v7, v5) : *(v23 + 8 * v7);
      v10 = v9;
      v11 = __OFADD__(v7++, 1);
      if (v11)
      {
        break;
      }

      sub_1E4206F54();
      OUTLINED_FUNCTION_38_28();
      v14 = ~v13;
      while (1)
      {
        v15 = v12 & v14;
        v16 = (v12 & v14) >> 6;
        v17 = *(v8 + 8 * v16);
        v18 = 1 << (v12 & v14);
        if ((v18 & v17) == 0)
        {
          break;
        }

        sub_1E3280A90(0, v1);
        v19 = *(*(v6 + 48) + 8 * v15);
        v20 = sub_1E4206F64();

        if (v20)
        {

          goto LABEL_17;
        }

        v12 = v15 + 1;
      }

      *(v8 + 8 * v16) = v18 | v17;
      *(*(v6 + 48) + 8 * v15) = v10;
      v21 = *(v6 + 16);
      v11 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v11)
      {
        goto LABEL_20;
      }

      *(v6 + 16) = v22;
LABEL_17:
      v5 = v24;
      if (v7 == v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    OUTLINED_FUNCTION_192();
  }
}

uint64_t type metadata accessor for MultiPlayerView()
{
  result = qword_1ECF599B0;
  if (!qword_1ECF599B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3BE3244()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_17_4();
    sub_1E3BE21C8();
  }
}

void sub_1E3BE32B4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4298880;
    *(inited + 32) = v1;
    if (sub_1E32AE9B0(inited))
    {
      v6 = v1;
      sub_1E3BE3058();
    }

    else
    {
      swift_setDeallocating();
      v7 = v1;
      sub_1E377D458();
    }

    sub_1E3BE0254();
  }

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 layer];

    [v10 setCornerRadius_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3BE3404()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1E3BE2938();
  }

  if (v1)
  {
    v1();
  }
}

id sub_1E3BE3470()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v1 setAlpha_];
  v3 = [v1 layer];
  [v3 setCornerRadius_];

  *&v4 = OUTLINED_FUNCTION_61_17(MEMORY[0x1E695EFD0]).n128_u64[0];
  return [v1 v5];
}

void sub_1E3BE3504()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [v1 setAlpha_];
    v4 = OUTLINED_FUNCTION_6();
    [v5 v6];
    if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
    {
      sub_1E3BE3058();
    }

    sub_1E3BE0254();
  }
}

id sub_1E3BE35F4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  result = [*(v0 + 16) view];
  if (result)
  {
    v4 = result;
    [result removeFromSuperview];

    result = [v1 removeFromSuperview];
    if (v2)
    {
      return v2(result);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_29Tm()
{
  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

void sub_1E3BE36D4()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_12_5();
      v6 = (*(v5 + 272))();
      v7 = v6;
      if (!(v6 >> 62))
      {

        return;
      }

      if (v6 >> 62 == 1)
      {

        sub_1E3BDFB84();
      }

      else
      {
        OUTLINED_FUNCTION_12_5();
        v9 = (*(v8 + 376))();
        if (v9)
        {
          v10 = v9;
          OUTLINED_FUNCTION_12_5();
          v12 = (*(v11 + 264))();
          v13 = *((*v4 & *v3) + 0x1F8);
          v14 = v13();
          sub_1E386ABC0(v14, v12);
          v16 = v15;
          v18 = v17;

          if ((v18 & 1) == 0)
          {
            v20 = (v13)(v19);
            v10(v20, v16);

            v13();
            sub_1E3BDBFBC();
            sub_1E3BE0A8C(v3);

            sub_1E34AF594(v10);
            return;
          }

          sub_1E34AF594(v10);
        }
      }
    }
  }
}

void sub_1E3BE3928(void *a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_88_10();
    v5 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_64();
    (*(v6 + 264))();
    v7 = OUTLINED_FUNCTION_67_0();
    sub_1E386ABC0(v7, v8);
    OUTLINED_FUNCTION_68_19();
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_12_5();
      if ((*(v9 + 344))())
      {
        swift_getObjectType();
        v10 = OUTLINED_FUNCTION_27_0();
        v11(v10);
        swift_unknownObjectRelease();
      }

      OUTLINED_FUNCTION_4_0();
      v12 = swift_allocObject();
      OUTLINED_FUNCTION_45_2();
      OUTLINED_FUNCTION_5_10();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = a1;
      v13[4] = v2;
      v14 = *((*v5 & *v1) + 0x360);

      v14(a1, 1, sub_1E3BE577C, v13);
    }
  }
}

void sub_1E3BE3AF8()
{
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_88_10();
    OUTLINED_FUNCTION_64();
    (*(v3 + 264))();
    v4 = OUTLINED_FUNCTION_67_0();
    sub_1E386ABC0(v4, v5);
    OUTLINED_FUNCTION_68_19();
    if ((v1 & 1) == 0)
    {
      OUTLINED_FUNCTION_12_5();
      v7 = (*(v6 + 456))();
      if (v7)
      {
        v8 = v7;
        v9 = OUTLINED_FUNCTION_34();
        v8(v9);
        sub_1E34AF594(v8);
      }

      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        sub_1E3FD93C0();
        OUTLINED_FUNCTION_21();
        (*(v12 + 680))(1, 1);
      }
    }
  }
}

void sub_1E3BE3C6C(uint64_t a1, uint64_t a2, char *a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  if (sub_1E32AE9B0(*v3) < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = 1 - v8;
  if (__OFSUB__(1, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1E32AE9B0(v7);
  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1E3797CDC(v12);

  sub_1E3BE4094(a1, a2, 1, a3);
}

void sub_1E3BE3D24()
{
  sub_1E3BE5DEC(319, &qword_1ECF34BF0, &type metadata for MultiPlayerView.Mode, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1E3BE3EE0();
    if (v1 <= 0x3F)
    {
      sub_1E3BE3F38();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1E3BE3EE0()
{
  if (!qword_1ECF34BF8)
  {
    type metadata accessor for MultiPlayerViewControllerPlayerDistribution(255);
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF34BF8);
    }
  }
}

void sub_1E3BE3F38()
{
  if (!qword_1ECF34C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34B88);
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF34C00);
    }
  }
}

unint64_t get_enum_tag_for_layout_string_8VideosUI15MultiPlayerViewC4ModeO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1E3BE3FB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 125);
    }

    v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
    if (v3 >= 0x7D)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v3);
}

void *sub_1E3BE4008(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      return OUTLINED_FUNCTION_25_9(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

void *sub_1E3BE4060(void *a1, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *a1 & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return OUTLINED_FUNCTION_25_9(a1, v2);
}

void sub_1E3BE4094(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a3;
  v6 = a2;
  v19 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  type metadata accessor for MultiPlayerContainerView();
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_25:
  v13 = sub_1E4207384();
LABEL_6:
  v14 = &v13[-v6];
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = &v5[v4];
  v16 = (v8 + 8 * v6);
  if (v15 != v16 || &v16[8 * v14] <= v15)
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    v13 = sub_1E4207384();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_27;
  }

  *(v7 + 16) = &v13[v10];
LABEL_17:
  v13 = v19;
  if (v4 >= 1)
  {
    *v5 = v19;
    if (v4 == 1)
    {
      return;
    }

LABEL_28:
    v18 = v13;
    __break(1u);
    return;
  }
}

uint64_t sub_1E3BE41D8(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_1E4207394();

    if (v17)
    {

      sub_1E3280A90(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = sub_1E4207384();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        sub_1E3BE4648(v15, result + 1, a5, a6, a3, a4, v25, v26, v33, v34, v35);
        v28 = v27;
        v38 = v27;
        if (*(v27 + 24) <= *(v27 + 16))
        {
          sub_1E3BE4810();
          v28 = v38;
        }

        v29 = v16;
        sub_1E3BE49A4(v29, v28);

        *v11 = v28;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_1E3280A90(0, a3);
    sub_1E4206F54();
    OUTLINED_FUNCTION_38_28();
    v21 = ~v20;
    while (1)
    {
      v22 = v19 & v21;
      if (((*(v14 + 56 + (((v19 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v21)) & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v39 = *v11;
        v30 = a2;
        sub_1E3BE4A24();
        *v11 = v39;
        *a1 = v30;
        return 1;
      }

      v23 = *(*(v14 + 48) + 8 * v22);
      v24 = sub_1E4206F64();

      if (v24)
      {
        break;
      }

      v19 = v22 + 1;
    }

    v31 = *(*(v14 + 48) + 8 * v22);
    *a1 = v31;
    v32 = v31;
    return 0;
  }

  return result;
}

void sub_1E3BE4430()
{
  v1 = *(v0 + 64);
  [v1 setFrame_];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4298880;
    *(inited + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1F8))();
    if (sub_1E32AE9B0(inited))
    {
      sub_1E3BE3058();
    }

    else
    {
      swift_setDeallocating();
      sub_1E377D458();
    }

    sub_1E3BE0254();
  }
}

void sub_1E3BE45C4()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    OUTLINED_FUNCTION_11_3();
    v4 = sub_1E3BE4E30(v1);
    swift_endAccess();
  }
}

void sub_1E3BE4648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_194();
  if (v13)
  {
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(v11);
    v15 = sub_1E4207454();
    v26 = v15;
    sub_1E4207344();
    while (1)
    {
      if (!sub_1E42073C4())
      {

        goto LABEL_18;
      }

      sub_1E3280A90(0, v14);
      swift_dynamicCast();
      if (*(v15 + 24) <= *(v15 + 16))
      {
        sub_1E3BE4810();
      }

      v15 = v26;
      v16 = sub_1E4206F54();
      v17 = v26 + 56;
      v18 = -1 << *(v26 + 32);
      v19 = v16 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v26 + 56 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v26 + 56 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v26 + 48) + 8 * v21) = a11;
      ++*(v26 + 16);
    }

    v22 = 0;
    v23 = (63 - v18) >> 6;
    while (++v20 != v23 || (v22 & 1) == 0)
    {
      v24 = v20 == v23;
      if (v20 == v23)
      {
        v20 = 0;
      }

      v22 |= v24;
      v25 = *(v17 + 8 * v20);
      if (v25 != -1)
      {
        v21 = __clz(__rbit64(~v25)) + (v20 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
LABEL_18:
    OUTLINED_FUNCTION_192();
  }
}

void sub_1E3BE4810()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_41_40(v2, v3);
  OUTLINED_FUNCTION_67_0();
  v4 = sub_1E4207444();
  v5 = v4;
  if (!*(v1 + 16))
  {
LABEL_27:

    *v0 = v5;
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v6 = 0;
  v7 = (v1 + 56);
  v8 = 1 << *(v1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v1 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      ++v13;
      if (v7[v6])
      {
        OUTLINED_FUNCTION_40_7();
        v10 = v15 & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v1 + 32);
    if (v24 >= 64)
    {
      sub_1E373CBF0(0, (v24 + 63) >> 6, v1 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_38_28();
      *v7 = v25;
    }

    *(v1 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_93_8();
LABEL_12:
    v16 = sub_1E4206F54() & ~(-1 << *(v5 + 32));
    if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_91_9();
LABEL_21:
    OUTLINED_FUNCTION_84_12();
    *(v12 + v21) |= v22;
    OUTLINED_FUNCTION_59_18(v23);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_89_7();
  while (++v17 != v19 || (v18 & 1) == 0)
  {
    v20 = v17 == v19;
    if (v17 == v19)
    {
      v17 = 0;
    }

    v18 |= v20;
    if (*(v12 + 8 * v17) != -1)
    {
      OUTLINED_FUNCTION_85_11();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

unint64_t sub_1E3BE49A4(uint64_t a1, uint64_t a2)
{
  sub_1E4206F54();
  OUTLINED_FUNCTION_38_28();
  result = sub_1E4207324();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1E3BE4A24()
{
  OUTLINED_FUNCTION_335();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(*v0 + 16);
  v10 = *(*v0 + 24);
  if (v10 <= v9 || (v1 & 1) == 0)
  {
    if (v1)
    {
      sub_1E3BE4810();
      goto LABEL_8;
    }

    if (v10 <= v9)
    {
      sub_1E3BE4CA8();
LABEL_8:
      v11 = *v0;
      sub_1E4206F54();
      OUTLINED_FUNCTION_38_28();
      v14 = ~v13;
      while (1)
      {
        v6 = v12 & v14;
        if (((*(v11 + 56 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v14)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1E3280A90(0, v4);
        v15 = *(*(v11 + 48) + 8 * v6);
        v16 = sub_1E4206F64();

        if (v16)
        {
          goto LABEL_15;
        }

        v12 = v6 + 1;
      }
    }

    sub_1E3BE4B7C(v2);
  }

LABEL_12:
  v17 = *v0;
  *(*v0 + 8 * (v6 >> 6) + 56) |= 1 << v6;
  *(*(v17 + 48) + 8 * v6) = v8;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_15:
    sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
    OUTLINED_FUNCTION_15_36();
  }
}

id sub_1E3BE4B7C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1E4207434();
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
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_93_8();
LABEL_17:
        v19 = v15 | (v9 << 6);
        v20 = *(*(v3 + 48) + 8 * v19);
        *(*(v5 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      ++v16;
      if (*(v3 + 56 + 8 * v9))
      {
        OUTLINED_FUNCTION_40_7();
        v13 = v18 & v17;
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

void sub_1E3BE4CA8()
{
  OUTLINED_FUNCTION_335();
  OUTLINED_FUNCTION_41_40(v2, v3);
  OUTLINED_FUNCTION_67_0();
  v4 = sub_1E4207444();
  v5 = v4;
  if (*(v1 + 16))
  {
    v24 = v0;
    v6 = 0;
    v7 = 1 << *(v1 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v1 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        *(*(v1 + 48) + 8 * (v12 | (v6 << 6)));
        v16 = sub_1E4206F54() & ~(-1 << *(v5 + 32));
        if (((-1 << v16) & ~*(v11 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_91_9();
LABEL_21:
        OUTLINED_FUNCTION_84_12();
        *(v11 + v21) |= v22;
        OUTLINED_FUNCTION_59_18(v23);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_89_7();
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        if (*(v11 + 8 * v17) != -1)
        {
          OUTLINED_FUNCTION_85_11();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v0 = v24;
          goto LABEL_25;
        }

        ++v13;
        if (*(v1 + 56 + 8 * v6))
        {
          OUTLINED_FUNCTION_40_7();
          v9 = v15 & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v0 = v5;
    OUTLINED_FUNCTION_15_36();
  }
}

uint64_t sub_1E3BE4E30(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_1E3280A90(0, &qword_1EE23AE80);
    v8 = sub_1E4206F54();
    v9 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v10 = v8 & v9;
      if (((*(v4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
      {
        break;
      }

      v11 = *(*(v4 + 48) + 8 * v10);
      v12 = sub_1E4206F64();

      if (v12)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = *v2;
        v16 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E3BE4B7C(&qword_1ECF34C08);
          v14 = v16;
        }

        v7 = *(*(v14 + 48) + 8 * v10);
        sub_1E3BE5134(v10);
        *v2 = v16;
        return v7;
      }

      v8 = v10 + 1;
    }

    return 0;
  }

  v5 = a1;
  v6 = sub_1E42073D4();

  if ((v6 & 1) == 0)
  {

    return 0;
  }

  v7 = sub_1E3BE4FC0();

  return v7;
}

uint64_t sub_1E3BE4FC0()
{

  v0 = sub_1E4207384();
  v1 = swift_unknownObjectRetain();
  sub_1E3BE4648(v1, v0, &unk_1ECF34C08, &unk_1E42C1DB0, &qword_1EE23AE80, 0x1E69DD250, v2, v3, v13, v15, v17);
  v5 = v4;
  v16 = v4;

  v6 = sub_1E4206F54();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      break;
    }

    sub_1E3280A90(0, &qword_1EE23AE80);
    v9 = *(*(v5 + 48) + 8 * v8);
    v10 = sub_1E4206F64();

    if (v10)
    {

      v11 = *(*(v5 + 48) + 8 * v8);
      sub_1E3BE5134(v8);
      if (sub_1E4206F64())
      {
        *v14 = v16;
        return v11;
      }

      __break(1u);
      break;
    }

    v6 = v8 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E3BE5134(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E4207304();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1E4206F54();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
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
          goto LABEL_15;
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

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1E3BE52C8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_88_10();
    OUTLINED_FUNCTION_64();
    if ((*(v1 + 344))())
    {
      OUTLINED_FUNCTION_96_10();
      OUTLINED_FUNCTION_79_1();
      v2 = OUTLINED_FUNCTION_17_1();
      v3(v2);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1E3BE5378()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_88_10();
    OUTLINED_FUNCTION_15_94();
    if ((*(v3 + 344))())
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      OUTLINED_FUNCTION_15_94();
      v8 = (*(v7 + 504))();
      (*(v5 + 24))(v1, v8, v2, ObjectType, v5);
      swift_unknownObjectRelease();

      v1 = v8;
    }
  }
}

void sub_1E3BE54C4()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (Strong + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_initialPinchFrame);
    *v4 = 0u;
    v4[1] = 0u;
    OUTLINED_FUNCTION_11_3();
    v5 = sub_1E3BE4E30(v1);
    swift_endAccess();
  }
}

void sub_1E3BE555C()
{
  v1 = *(v0 + 16);
  objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v16 = sub_1E3BE56F4;
  v17 = v2;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1E378AEA4;
  v15 = &block_descriptor_152;
  v3 = _Block_copy(&v12);
  v4 = v1;

  v5 = OUTLINED_FUNCTION_17_1();
  [v5 v6];
  _Block_release(v3);
  OUTLINED_FUNCTION_4_0();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  v16 = sub_1E3BE5744;
  v17 = v7;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1E378AEA4;
  v15 = &block_descriptor_158;
  v8 = _Block_copy(&v12);
  v9 = v4;

  v10 = OUTLINED_FUNCTION_17_1();
  [v10 v11];
  _Block_release(v8);
}

void sub_1E3BE577C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OUTLINED_FUNCTION_64();
    if ((*(v2 + 344))())
    {
      swift_getObjectType();
      v3 = OUTLINED_FUNCTION_11_6();
      v4(v3);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1E3BE585C()
{
  v1 = v0[2];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[8];
  if (v1)
  {
    v1();
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E3BE0254();
  }

  v7 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v20 = sub_1E3BE5A64;
  v21 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  OUTLINED_FUNCTION_22_61();
  v18 = v9;
  v19 = &block_descriptor_181;
  v10 = _Block_copy(&aBlock);

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  MEMORY[0x1E69144A0](v15);
  OUTLINED_FUNCTION_2_4();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v4;
  v20 = sub_1E387E1E4;
  v21 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1E37EB82C;
  v19 = &block_descriptor_187_0;
  v13 = _Block_copy(&aBlock);
  v14 = OUTLINED_FUNCTION_27_0();
  sub_1E34AF604(v14);

  [v7 animateWithDuration:v10 animations:v13 completion:0.33];
  _Block_release(v13);
  _Block_release(v10);
}

void sub_1E3BE5A6C(double a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1E32AE9B0(v3);
  for (i = 0; v4 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = OUTLINED_FUNCTION_13_8();
      v6 = MEMORY[0x1E6911E60](v8);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    [v6 setAlpha_];
  }
}

void sub_1E3BE5B38()
{
  OUTLINED_FUNCTION_5_16();
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  objc_opt_self();
  OUTLINED_FUNCTION_10_9();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v1;
  OUTLINED_FUNCTION_0_155();
  v10[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v10[2] = v6;
  v10[3] = &block_descriptor_200_0;
  v7 = _Block_copy(v10);

  v8 = OUTLINED_FUNCTION_17_1();
  [v8 v9];
  _Block_release(v7);
}

void sub_1E3BE5C38()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OUTLINED_FUNCTION_64();
    if ((*(v2 + 480))() == 1)
    {
      sub_1E3BE2938();
    }
  }
}

void sub_1E3BE5CC4()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1E3BDC268();

    v5 = 0.0;
    if (v1)
    {
      v5 = 1.0;
    }

    [v4 setAlpha_];
  }
}

void sub_1E3BE5D48()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
    {
      sub_1E3BE3058();
    }

    sub_1E3BE0254();
  }
}

void sub_1E3BE5DEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_68_19()
{
}

uint64_t OUTLINED_FUNCTION_69_18(double a1)
{

  return sub_1E37BEDE4(10.0, 10.0, a1);
}

void *OUTLINED_FUNCTION_82_9(void *result)
{
  result[2] = v2;
  result[3] = v1;
  result[4] = v6;
  result[5] = v5;
  result[6] = v4;
  result[7] = v3;
  return result;
}

id OUTLINED_FUNCTION_95_10(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, __n128 a9, __n128 a10, __n128 a11, __int128 a12, __int128 a13, __int128 a14)
{
  a12 = a9;
  a13 = a10;
  a14 = a11;

  return [v14 a2];
}

uint64_t OUTLINED_FUNCTION_96_10()
{

  return swift_getObjectType();
}

void sub_1E3BE5F8C()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 184))();
  v4 = OBJC_IVAR____TtC8VideosUI15CountDownButton_progressWidth;
  v5 = OUTLINED_FUNCTION_5_0();
  (*((*v1 & *v3) + 0xB0))(v5, *(v0 + v4));
}

double sub_1E3BE6038()
{
  v1 = OBJC_IVAR____TtC8VideosUI15CountDownButton_progressWidth;
  OUTLINED_FUNCTION_5_0();
  return *(v0 + v1);
}

void sub_1E3BE6074(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15CountDownButton_progressWidth;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1E3BE5F8C();
}

void (*sub_1E3BE60C8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E3BE612C;
}

void sub_1E3BE612C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E3BE5F8C();
  }
}

uint64_t sub_1E3BE6160()
{
  v1 = OBJC_IVAR____TtC8VideosUI15CountDownButton_didAutoPlay;
  OUTLINED_FUNCTION_5_0();
  return *(v0 + v1);
}

uint64_t sub_1E3BE619C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15CountDownButton_didAutoPlay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1E3BE61EC()
{
  v1 = OBJC_IVAR____TtC8VideosUI15CountDownButton____lazy_storage___countDownIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI15CountDownButton____lazy_storage___countDownIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI15CountDownButton____lazy_storage___countDownIndicator);
  }

  else
  {
    v4 = v0;
    v5 = [v0 imageTintColor];
    if (!v5)
    {
      v5 = [objc_opt_self() blackColor];
    }

    v6 = *(**(v0 + OBJC_IVAR____TtC8VideosUI15CountDownButton_layout) + 2096);
    v7 = v5;
    v6();
    OUTLINED_FUNCTION_30();
    (*(v8 + 176))(&v31);

    type metadata accessor for CountDownProgressView();
    v9 = OUTLINED_FUNCTION_24_0();
    v13 = sub_1E3952BE0(v9, v10, v11, v12);
    v14 = OUTLINED_FUNCTION_24_0();
    v17 = sub_1E3952BD8(v14, v15, v16);
    v18 = *(v0 + OBJC_IVAR____TtC8VideosUI15CountDownButton_duration);
    v19 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
    v20 = *(v0 + OBJC_IVAR____TtC8VideosUI15CountDownButton_image);
    v21 = *(v6)(v20);
    v22 = (*(v21 + 864))();

    v24 = *(v6)(v23);
    v25 = (*(v24 + 1944))();

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v27 = sub_1E4004540(v7, v20, v22, v25, sub_1E3BE8308, v26, 0.0, 0.0, v13, v17, v18, v19);

    v28 = *(v4 + v1);
    *(v4 + v1) = v27;
    v3 = v27;

    v2 = 0;
  }

  v29 = v2;
  return v3;
}

void sub_1E3BE6500()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC8VideosUI15CountDownButton_didAutoPlay;
    swift_beginAccess();
    v1[v2] = 1;
  }

  OUTLINED_FUNCTION_5_0();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 selectActionHandler];

    if (v5)
    {
      OUTLINED_FUNCTION_5_0();
      v6 = swift_unknownObjectWeakLoadStrong();
      v7 = v6;
      if (v6)
      {
        v6 = type metadata accessor for CountDownButton();
      }

      else
      {
        v18[1] = 0;
        v18[2] = 0;
      }

      v18[0] = v7;
      v18[3] = v6;
      sub_1E3294F34(v18, v16);
      v8 = v17;
      if (v17)
      {
        __swift_project_boxed_opaque_existential_1(v16, v17);
        OUTLINED_FUNCTION_1_2();
        v10 = v9;
        MEMORY[0x1EEE9AC00](v11);
        OUTLINED_FUNCTION_5();
        v14 = v13 - v12;
        (*(v10 + 16))(v13 - v12);
        v15 = sub_1E4207994();
        (*(v10 + 8))(v14, v8);
        __swift_destroy_boxed_opaque_existential_1(v16);
      }

      else
      {
        v15 = 0;
      }

      v5[2](v5, v15);
      swift_unknownObjectRelease();
      _Block_release(v5);
      sub_1E329505C(v18);
    }
  }
}

void sub_1E3BE66F0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI15CountDownButton____lazy_storage___countDownIndicator);
  *(v1 + OBJC_IVAR____TtC8VideosUI15CountDownButton____lazy_storage___countDownIndicator) = a1;
}

id sub_1E3BE6790(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v8[OBJC_IVAR____TtC8VideosUI15CountDownButton_didAutoPlay] = 0;
  *&v8[OBJC_IVAR____TtC8VideosUI15CountDownButton____lazy_storage___countDownIndicator] = 0;
  v12 = &v8[OBJC_IVAR____TtC8VideosUI15CountDownButton_title];
  *v12 = a1;
  v12[1] = a2;
  *&v8[OBJC_IVAR____TtC8VideosUI15CountDownButton_image] = a3;
  *&v8[OBJC_IVAR____TtC8VideosUI15CountDownButton_duration] = a7;
  *&v8[OBJC_IVAR____TtC8VideosUI15CountDownButton_layout] = a4;
  *&v8[OBJC_IVAR____TtC8VideosUI15CountDownButton_progressWidth] = a8;
  v19.receiver = v8;
  v19.super_class = type metadata accessor for CountDownButton();
  v13 = a3;

  v14 = objc_msgSendSuper2(&v19, sel_initWithType_interfaceStyle_, a5, a6);
  v15 = objc_allocWithZone(MEMORY[0x1E69DF740]);
  v16 = v14;
  v17 = [v15 init];
  [v16 setImageView_];

  [v16 configureWithLayoutProperties];
  sub_1E3BE6FB0();

  return v16;
}

uint64_t sub_1E3BE68FC(void *a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI15CountDownButton_didAutoPlay) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI15CountDownButton____lazy_storage___countDownIndicator) = 0;
  type metadata accessor for CountDownButton();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1E3BE6974(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 464);
  v4 = *v3;
  v5 = (*v3)();
  if (v5)
  {
    v6 = v5;
    v46 = v4;
    result = sub_1E32AE9B0(v5);
    v8 = result;
    for (i = 0; v8 != i; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1E6911E60](i, v6);
      }

      else
      {
        if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        return result;
      }

      v10 = result;
      v54 = *(result + 98);
      v53 = 23;
      sub_1E3742F1C();
      sub_1E4206254();
      sub_1E4206254();
      if (v48 == *&v51 && v49 == v52)
      {

LABEL_18:

        if (*v10 == _TtC8VideosUI13TextViewModel)
        {

          v14 = sub_1E3C27024();
          v16 = v15;

          v13 = a2;
          v4 = v46;
          if (v16)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

LABEL_22:
        v13 = a2;
        v4 = v46;
        goto LABEL_23;
      }

      v12 = sub_1E42079A4();

      if (v12)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_22;
  }

  v13 = a2;
LABEL_23:

  v14 = 0;
  v16 = 0xE000000000000000;
LABEL_24:
  v18 = (v4)(v17);
  v19 = v18;
  if (!v18)
  {
    goto LABEL_50;
  }

  v44 = v16;
  v45 = v14;
  result = sub_1E32AE9B0(v18);
  v20 = result;
  for (j = 0; ; ++j)
  {
    if (v20 == j)
    {

LABEL_47:
      v13 = a2;
      v16 = v44;
      v14 = v45;
      goto LABEL_50;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](j, v19);
      v22 = result;
    }

    else
    {
      if (j >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_69;
      }

      v22 = *(v19 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_68;
    }

    v54 = *(v22 + 98);
    v53 = 39;
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v48 == *&v51 && v49 == v52)
    {
      break;
    }

    v24 = sub_1E42079A4();

    if (v24)
    {
      goto LABEL_40;
    }
  }

LABEL_40:

  type metadata accessor for ImageViewModel();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {

    goto LABEL_47;
  }

  v26 = OUTLINED_FUNCTION_1_36();
  v27 = (*(*v25 + 1000))(0, v26);
  v29 = v28;

  v16 = v44;
  v14 = v45;
  if (v29 == 255)
  {
LABEL_49:
    v13 = a2;
LABEL_50:
    v33 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    if (!v13)
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (v29)
  {
    sub_1E379098C(v27, v29);
    goto LABEL_49;
  }

  v30 = [objc_opt_self() makeImageViewWithResourceDescriptor:v27 existingView:0];
  if (v30)
  {
    v31 = v30;
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (!v32)
    {
    }
  }

  else
  {
    v32 = 0;
  }

  v36 = [v32 image];
  if (!v36)
  {
    v36 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  v33 = v36;

  sub_1E379098C(v27, 0);
  v13 = a2;
  if (a2)
  {
LABEL_51:
    v34 = v33;
    v35 = v13;
    goto LABEL_57;
  }

LABEL_56:
  type metadata accessor for ButtonLayout();
  v37 = v33;
  v35 = sub_1E3BBB724();
LABEL_57:
  v38 = objc_opt_self();

  v39 = [v38 isMac];
  LOBYTE(v51) = 0;
  (*(*a1 + 776))(&v48, &v51, &unk_1F5D5DEB8, &off_1F5D5CA78);
  if (v50)
  {
    if (swift_dynamicCast())
    {
      v40 = v51;
      goto LABEL_62;
    }
  }

  else
  {
    sub_1E329505C(&v48);
  }

  v40 = 10.0;
LABEL_62:
  if (v39)
  {
    v41 = 2.0;
  }

  else
  {
    v41 = 3.0;
  }

  v42 = objc_allocWithZone(type metadata accessor for CountDownButton());
  v43 = sub_1E3BE6790(v14, v16, v33, v35, 0, 0, v40, v41);

  return v43;
}

id sub_1E3BE6FB0()
{
  v1 = v0;
  v2 = sub_1E4203FC4();
  OUTLINED_FUNCTION_1_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4203FF4();
  OUTLINED_FUNCTION_1_2();
  v59 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_21();
  v16 = *(v15 + 184);
  v17 = v16();
  [v1 vui:v17 addSubview:0 oldView:?];

  v18 = v16();
  [v1 vui:v18 bringSubviewToFront:?];

  v19 = v16();
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];

  result = [v1 textContentView];
  if (result)
  {
    v21 = result;
    v55 = v8;
    v56 = v9;
    v57 = v4;
    v58 = v2;
    v22 = *&v1[OBJC_IVAR____TtC8VideosUI15CountDownButton_layout];
    (*(*v22 + 2096))();
    OUTLINED_FUNCTION_30();
    (*(v23 + 176))(&v61);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1E42A1E20;
    v25 = v16();
    v26 = [v25 trailingAnchor];

    v27 = v21;
    v28 = [v27 leadingAnchor];
    (*(*v22 + 2048))();
    OUTLINED_FUNCTION_30();
    (*(v29 + 152))(v62);

    v30 = *&v62[1];
    LOBYTE(v25) = v63;
    v31 = objc_opt_self();
    v32 = -v30;
    if (v25)
    {
      v32 = -0.0;
    }

    v33 = [v26 constraintEqualToAnchor:v28 constant:v32];

    *(v24 + 32) = v33;
    v34 = v16();
    v35 = [v34 centerYAnchor];

    v36 = [v27 centerYAnchor];
    v37 = [v35 constraintEqualToAnchor_];

    *(v24 + 40) = v37;
    v38 = v16();
    v39 = [v38 widthAnchor];

    v40 = OUTLINED_FUNCTION_6();
    v44 = [v39 constraintEqualToConstant_];

    *(v24 + 48) = v44;
    v45 = v16();
    v46 = [v45 heightAnchor];

    v47 = OUTLINED_FUNCTION_6();
    v50 = [v46 constraintEqualToConstant_];

    *(v24 + 56) = v50;
    sub_1E3280A90(0, &qword_1EE23B1A0);
    v51 = sub_1E42062A4();

    [v31 activateConstraints_];

    sub_1E3280A90(0, &qword_1EE23B1D0);
    v52 = sub_1E4206A04();
    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1E3BE828C;
    aBlock[5] = v53;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E378AEA4;
    aBlock[3] = &block_descriptor_75;
    v54 = _Block_copy(aBlock);

    sub_1E4203FE4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    sub_1E378AD28();
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v14, v55, v54);
    _Block_release(v54);

    (*(v57 + 8))(v55, v58);
    return (*(v59 + 8))(v14, v56);
  }

  return result;
}

void sub_1E3BE7698()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 184))();
  (*((*v0 & *v2) + 0x168))();
}

void sub_1E3BE7748()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 184))();
  (*((*v0 & *v2) + 0x170))();
}

void sub_1E3BE77F8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI15CountDownButton_layout];
  OUTLINED_FUNCTION_47_0();
  [(*(v3 + 2048))() copyWithZone_];

  sub_1E4207264();
  swift_unknownObjectRelease();
  type metadata accessor for TextLayout();
  if (swift_dynamicCast())
  {
    v4 = v23[0];
    v5 = *(*v23[0] + 168);

    v7 = v5(v23);
    if (*(v6 + 32))
    {
      v7(v23, 0);
    }

    else
    {
      v8 = v6;
      OUTLINED_FUNCTION_47_0();
      (*(v9 + 2096))();
      OUTLINED_FUNCTION_30();
      (*(v10 + 176))(&v24);

      v11 = 0.0;
      if ((v25 & 1) == 0)
      {
        v12 = OUTLINED_FUNCTION_6();
        v11 = sub_1E3952BE0(v12, v13, v14, v15);
      }

      *(v8 + 8) = v11 + *(v8 + 8);
      v7(v23, 0);
    }

    sub_1E3280A90(0, &qword_1EE23AD40);
    v16 = *&v0[OBJC_IVAR____TtC8VideosUI15CountDownButton_title];
    v17 = *&v0[OBJC_IVAR____TtC8VideosUI15CountDownButton_title + 8];
    v18 = *(*v4 + 2408);

    v20 = v18(v19);
    v21 = sub_1E3810954(v16, v17, v20, [v1 textContentView]);
    [v1 setTextContentView_];
    sub_1E3BE7B20(v2);
    v22.receiver = v1;
    v22.super_class = type metadata accessor for CountDownButton();
    objc_msgSendSuper2(&v22, sel_configureWithLayoutProperties);
  }
}

uint64_t sub_1E3BE7B20(uint64_t a1)
{
  v27 = (*(*a1 + 304))();
  v28 = v1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
  OUTLINED_FUNCTION_10_92(sub_1E3BE812C);
  OUTLINED_FUNCTION_47_0();
  v3 = (*(v2 + 200))();
  OUTLINED_FUNCTION_2_136(v3, v4);
  OUTLINED_FUNCTION_10_92(sub_1E3BE8140);
  OUTLINED_FUNCTION_47_0();
  v6 = (*(v5 + 224))();
  OUTLINED_FUNCTION_2_136(v6, v7);
  OUTLINED_FUNCTION_10_92(sub_1E3BE8154);
  OUTLINED_FUNCTION_47_0();
  v9 = (*(v8 + 248))();
  OUTLINED_FUNCTION_2_136(v9, v10);
  OUTLINED_FUNCTION_10_92(sub_1E3BE8168);
  OUTLINED_FUNCTION_13();
  v12 = (*(v11 + 328))();
  OUTLINED_FUNCTION_2_136(v12, v13);
  OUTLINED_FUNCTION_10_92(sub_1E3BE817C);
  OUTLINED_FUNCTION_13();
  v15 = (*(v14 + 352))();
  OUTLINED_FUNCTION_2_136(v15, v16);
  OUTLINED_FUNCTION_10_92(sub_1E3BE8190);
  OUTLINED_FUNCTION_47_0();
  (*(v17 + 176))(&v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0);
  OUTLINED_FUNCTION_10_92(sub_1E3BE81A4);
  OUTLINED_FUNCTION_13();
  v19 = (*(v18 + 744))();
  v27 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC50);
  sub_1E4148DE0(sub_1E3BE81C0);

  OUTLINED_FUNCTION_13();
  v21 = (*(v20 + 864))();
  v27 = v21;
  sub_1E4148DE0(sub_1E3BE81D4);

  OUTLINED_FUNCTION_13();
  (*(v22 + 552))(&v27);
  OUTLINED_FUNCTION_10_92(sub_1E3BE81E8);
  OUTLINED_FUNCTION_13();
  v24 = (*(v23 + 600))();
  v27 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34C68);
  sub_1E4148DE0(sub_1E3BE8230);

  OUTLINED_FUNCTION_13();
  LOBYTE(v27) = (*(v25 + 1880))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34C70);
  return sub_1E4148DE0(sub_1E3BE8244);
}

id sub_1E3BE8088()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CountDownButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E3BE81E8(double *a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1E3952BE8(*a1, a1[1], a1[2], a1[3]);

  return [v2 setCornerRadius_];
}

id sub_1E3BE8244(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1E3BC0050(*a1);

  return [v2 setButtonShape_];
}

void sub_1E3BE828C()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong vui_setNeedsLayout];
  }

  OUTLINED_FUNCTION_5_0();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 vui_layoutIfNeeded];
  }
}

uint64_t sub_1E3BE8344()
{
  type metadata accessor for ButtonLayout();
  v1 = j__OUTLINED_FUNCTION_18();
  v2 = sub_1E3B050E8();
  v3 = j__OUTLINED_FUNCTION_18();
  *(v0 + 104) = sub_1E3BBD964(8, v1 & 1, v2, v3 & 1);
  type metadata accessor for DescriptionTemplateLayout();
  *(v0 + 112) = sub_1E3D4F8C4();
  v4 = sub_1E3C2F9A0();
  OUTLINED_FUNCTION_15_0();

  sub_1E3C37CBC(v5, 9);

  return v4;
}

uint64_t sub_1E3BE843C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3BE8428();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3BE8490@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3BE847C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3BE853C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3BE8528();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3BE8590()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3BE85FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3BE857C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3BE863C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3BE86B4(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B488);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v42 - v3;
  v44 = type metadata accessor for SportsPlayPeriod();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v42 = v6 - v5;
  v49 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v48 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v46 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v43 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  type metadata accessor for BaseballVoiceOverUtility();
  v23 = sub_1E4205414();
  sub_1E3BE8B14(v23);

  sub_1E3BE863C();
  v24 = sub_1E4205424();
  sub_1E3BE8D44(v24);
  sub_1E3BE863C();
  v25 = sub_1E4205434();
  v26 = sub_1E4205444();
  v27 = v25;
  v28 = v22;
  v29 = v46;
  sub_1E3BE8DA8(v27, v26);
  sub_1E3BE863C();
  sub_1E4205704();
  sub_1E4205BD4();
  v30 = sub_1E42056A4();
  sub_1E4205044();

  v31 = v49;
  (*(v8 + 104))(v12, *MEMORY[0x1E69D3B68], v49);
  LOBYTE(v30) = sub_1E3823168();
  v32 = *(v8 + 8);
  v32(v12, v31);
  v33 = v15;
  v34 = v48;
  v32(v33, v31);
  if (v30)
  {
    v35 = sub_1E42056A4();
    v36 = sub_1E4205054();

    v37 = sub_1E4205684();
    sub_1E4205294();

    (*(v29 + 16))(v43, v28, v34);
    v38 = v45;
    sub_1E385BAA0();
    if (__swift_getEnumTagSinglePayload(v38, 1, v44) != 1)
    {
      v39 = v38;
      v40 = v42;
      sub_1E385BE80(v39, v42);
      sub_1E3BE8E48(v40);
      sub_1E3BE863C();
      sub_1E383B454(v40);
      return (*(v29 + 8))(v28, v34);
    }

    sub_1E325F6F0(v38, &qword_1ECF2B488);
  }

  sub_1E3BE863C();
  return (*(v29 + 8))(v28, v34);
}

uint64_t sub_1E3BE8B14(void *a1)
{
  switch(a1[2])
  {
    case 0:
      type metadata accessor for SportsVoiceOverUtility();
      v4 = sub_1E38BA38C();
      v5 = 38;
      goto LABEL_7;
    case 1:
      sub_1E3BE94E4(a1[4]);
      OUTLINED_FUNCTION_60_0();
      if (v17)
      {
        type metadata accessor for SportsVoiceOverUtility();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4297BE0;
        *(inited + 32) = 14;
        *(inited + 40) = v1;
        *(inited + 48) = v2;
        sub_1E38EA7FC();
        v19 = sub_1E4205CB4();
        v20 = sub_1E38BAE70();
        sub_1E38BA3C8(35, v19, v20);
        OUTLINED_FUNCTION_60_0();
      }

      break;
    case 2:
      v6 = sub_1E3BE94E4(a1[4]);
      v8 = v7;
      if (v7)
      {
        v9 = v6;
        v10 = sub_1E3BE94E4(a1[5]);
        if (v11)
        {
          v12 = v10;
          v13 = v11;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580);
          v14 = swift_initStackObject();
          *(v14 + 16) = xmmword_1E4299720;
          *(v14 + 32) = 15;
          *(v14 + 40) = v9;
          *(v14 + 48) = v8;
          *(v14 + 56) = 16;
          *(v14 + 64) = v12;
          *(v14 + 72) = v13;
          sub_1E38EA7FC();
          v15 = sub_1E4205CB4();
          type metadata accessor for SportsVoiceOverUtility();
          v16 = sub_1E38BAE70();
          sub_1E38BA3C8(36, v15, v16);
          OUTLINED_FUNCTION_60_0();
        }

        else
        {
        }
      }

      break;
    case 3:
      type metadata accessor for SportsVoiceOverUtility();
      v4 = sub_1E38BA38C();
      v5 = 37;
LABEL_7:
      sub_1E38BA390(v5, v4);
      OUTLINED_FUNCTION_60_0();

      break;
    default:
      return OUTLINED_FUNCTION_32_0();
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3BE8D44(unint64_t a1)
{
  if (a1 > 3)
  {
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    v1 = a1;
    type metadata accessor for SportsVoiceOverUtility();
    v2 = sub_1E38BA38C();
    sub_1E38BA390(v1 + 39, v2);
    OUTLINED_FUNCTION_60_0();
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3BE8DA8(unint64_t a1, unint64_t a2)
{
  v3 = sub_1E3BE9548(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v3;
  v6 = sub_1E3BE95AC(a2);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    MEMORY[0x1E69109E0](8236, 0xE200000000000000);
    MEMORY[0x1E69109E0](v8, v9);

    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1E3BE8E48(uint64_t a1)
{
  v2 = sub_1E4205B24();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BDA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD90);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v21 = sub_1E385D0F0();
  if (v20)
  {
    v33 = v20;
    v22 = *(type metadata accessor for SportsPlayPeriod() + 24);
    (*(v4 + 104))(v19, *MEMORY[0x1E69D3CB0], v2);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v2);
    v23 = *(v9 + 48);
    sub_1E385B9C0(a1 + v22, v12);
    sub_1E385B9C0(v19, &v12[v23]);
    OUTLINED_FUNCTION_63(v12);
    if (v24)
    {
      sub_1E325F6F0(v19, &qword_1ECF2BD90);
      OUTLINED_FUNCTION_63(&v12[v23]);
      if (v24)
      {
        sub_1E325F6F0(v12, &qword_1ECF2BD90);
LABEL_14:
        v25 = 34;
        goto LABEL_15;
      }
    }

    else
    {
      sub_1E385B9C0(v12, v16);
      OUTLINED_FUNCTION_63(&v12[v23]);
      if (!v24)
      {
        (*(v4 + 32))(v8, &v12[v23], v2);
        sub_1E3BE983C(&qword_1ECF2BDA8, MEMORY[0x1E69D3CC8]);
        v26 = sub_1E4205E84();
        v27 = *(v4 + 8);
        v27(v8, v2);
        sub_1E325F6F0(v19, &qword_1ECF2BD90);
        v27(v16, v2);
        sub_1E325F6F0(v12, &qword_1ECF2BD90);
        if (v26)
        {
          goto LABEL_14;
        }

LABEL_12:
        v25 = 33;
LABEL_15:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4297BE0;
        *(inited + 32) = 13;
        v29 = v33;
        *(inited + 40) = v21;
        *(inited + 48) = v29;
        sub_1E38EA7FC();
        v30 = sub_1E4205CB4();
        type metadata accessor for SportsVoiceOverUtility();
        v31 = sub_1E38BAE70();
        sub_1E38BA3C8(v25, v30, v31);
        OUTLINED_FUNCTION_60_0();

        return OUTLINED_FUNCTION_32_0();
      }

      sub_1E325F6F0(v19, &qword_1ECF2BD90);
      (*(v4 + 8))(v16, v2);
    }

    sub_1E325F6F0(v12, &qword_1ECF2BDA0);
    goto LABEL_12;
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3BE9244()
{
  v1 = OBJC_IVAR____TtC8VideosUI26BaseballVoiceOverViewModel__inning;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B498);
  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC8VideosUI26BaseballVoiceOverViewModel__baseRunners, v2);
  v4(v0 + OBJC_IVAR____TtC8VideosUI26BaseballVoiceOverViewModel__outs, v2);
  v4(v0 + OBJC_IVAR____TtC8VideosUI26BaseballVoiceOverViewModel__pitchCount, v2);
  return v0;
}

uint64_t sub_1E3BE9308()
{
  sub_1E3BE9244();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3BE9360()
{
  v0 = swift_allocObject();
  sub_1E3BE9398();
  return v0;
}

uint64_t sub_1E3BE9398()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B498);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - v5;
  v13[0] = 0;
  v13[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
  sub_1E4200634();
  v7 = *(v3 + 32);
  v8 = OUTLINED_FUNCTION_8_7();
  v7(v8);
  OUTLINED_FUNCTION_4_142();
  v9 = OUTLINED_FUNCTION_8_7();
  v7(v9);
  OUTLINED_FUNCTION_4_142();
  v10 = OUTLINED_FUNCTION_8_7();
  v7(v10);
  v11 = OBJC_IVAR____TtC8VideosUI26BaseballVoiceOverViewModel__pitchCount;
  OUTLINED_FUNCTION_4_142();
  (v7)(v0 + v11, v6, v1);
  return v0;
}