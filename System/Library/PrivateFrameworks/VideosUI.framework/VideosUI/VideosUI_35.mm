uint64_t sub_1E38E4D50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E38E4E34(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E38E4E74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E38E4F18()
{
  result = qword_1ECF2D450;
  if (!qword_1ECF2D450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D408);
    sub_1E374AD40(&qword_1ECF2D440, &qword_1ECF2D408);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D450);
  }

  return result;
}

uint64_t sub_1E38E5068(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_14()
{

  OUTLINED_FUNCTION_12_43();

  return swift_deallocObject();
}

uint64_t sub_1E38E514C()
{
  v0 = sub_1E38E51A8(&unk_1F5D62CC0);
  v3 = v0;
  result = sub_1E39DFFC0();
  if (result)
  {
    result = sub_1E38E8158(&v2, 256);
    v0 = v3;
  }

  qword_1EE2AA7E0 = v0;
  return result;
}

uint64_t sub_1E38E51A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E37414E0();
  v4 = MEMORY[0x1E6910FA0](v2, &qword_1F5D5CE68, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_1E38E8158(&v9, *(a1 + v6));
      v6 += 2;
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

void sub_1E38E5240(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v40 = a4;
  v13 = sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  if (a1)
  {

    if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
    {
      goto LABEL_9;
    }

    if (qword_1EE28F158 != -1)
    {
      OUTLINED_FUNCTION_9_48();
    }

    if (sub_1E38E5664(*(a1 + 98), qword_1EE2AA7E0))
    {
      v22 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
      sub_1E38E574C(a1, a2, a3, v40, a5, a6, a7);

      OUTLINED_FUNCTION_25_2();
    }

    else
    {
LABEL_9:
      v38 = a5;
      v39 = a7;
      sub_1E37E93E8(a3, v45, &qword_1ECF296C0);
      sub_1E37E93E8(a3, v43, &qword_1ECF296C0);
      if (v44)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        if (swift_dynamicCast())
        {
          v24 = swift_allocObject();
          memcpy((v24 + 16), v42, 0x52uLL);
          sub_1E325F6F0(v45, &qword_1ECF296C0);
          v45[0] = v24;
          v45[3] = &unk_1F5D869A0;
          v45[4] = &off_1F5D868A0;
        }
      }

      else
      {
        sub_1E325F6F0(v43, &qword_1ECF296C0);
      }

      v30 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
      (*(v15 + 16))(v21, a2, v13);
      if (__swift_getEnumTagSinglePayload(v21, 1, a6) == 1)
      {
        v31 = *(v15 + 8);
        v32 = v30;
        v31(v21, v13);
        v33 = 0;
      }

      else
      {
        sub_1E38E7D78();
        v34 = v30;
        if (swift_dynamicCast())
        {
          v33 = v41;
        }

        else
        {
          v33 = 0;
        }
      }

      v35 = sub_1E38E68BC(a1, v33, v45, v40, v38);

      sub_1E325F6F0(v45, &qword_1ECF296C0);
      v41 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D490);
      v36 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v19, v36 ^ 1u, 1, a6);
      (*(v15 + 32))(v39, v19, v13);
      OUTLINED_FUNCTION_25_2();
    }
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  }
}

BOOL sub_1E38E5664(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1E37414E0();
  v3 = sub_1E4205DA4();
  v4 = ~(-1 << *(a2 + 32));
  do
  {
    v5 = v3 & v4;
    v6 = (1 << (v3 & v4)) & *(a2 + 56 + (((v3 & v4) >> 3) & 0xFFFFFFFFFFFFFF8));
    v7 = v6 != 0;
    if (!v6)
    {
      break;
    }

    sub_1E3741534();
    v8 = sub_1E4205E84();
    v3 = v5 + 1;
  }

  while ((v8 & 1) == 0);
  return v7;
}

void sub_1E38E574C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v243 = a4;
  v244 = a5;
  v245 = a2;
  v246 = a3;
  v250 = a1;
  v251 = a7;
  v252 = a6;
  sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v247 = v8;
  v248 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_6();
  v234 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_6();
  v233 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v239 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  v238 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_6();
  v242 = v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_6();
  v241 = v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = v232 - v29;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_18_6();
  v235 = v31;
  OUTLINED_FUNCTION_49();
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = v232 - v34;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = v232 - v38;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = v232 - v42;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_18_6();
  v240 = v44;
  OUTLINED_FUNCTION_49();
  v46 = MEMORY[0x1EEE9AC00](v45);
  v48 = v232 - v47;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_18_6();
  v236 = v49;
  OUTLINED_FUNCTION_49();
  v51 = MEMORY[0x1EEE9AC00](v50);
  v53 = v232 - v52;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_18_6();
  v237 = v54;
  OUTLINED_FUNCTION_49();
  v56 = MEMORY[0x1EEE9AC00](v55);
  v58 = v232 - v57;
  v59 = MEMORY[0x1EEE9AC00](v56);
  v61 = v232 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59);
  v64 = v232 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v249 = v232 - v65;
  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (qword_1EE28F158 != -1)
  {
    OUTLINED_FUNCTION_9_48();
  }

  v66 = *(v250 + 98);
  if (sub_1E38E5664(*(v250 + 98), qword_1EE2AA7E0))
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v252);
    switch(v66)
    {
      case 189:
      case 190:
      case 214:
        OUTLINED_FUNCTION_12_44();
        v70 = v241;
        v71 = OUTLINED_FUNCTION_16_38();
        v72(v71);
        OUTLINED_FUNCTION_5_64(v70);
        if (v98)
        {
          v73 = OUTLINED_FUNCTION_10_43();
          v74(v73);
          v75 = 0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4F0);
          OUTLINED_FUNCTION_13_55();
          OUTLINED_FUNCTION_26_25();
          if (v98)
          {
            v75 = 0;
          }

          else
          {
            v75 = v99;
          }
        }

        OUTLINED_FUNCTION_8_43();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4F0);
        OUTLINED_FUNCTION_3_61();
        sub_1E3D79DF8();
        v101 = v100;

        v102 = OUTLINED_FUNCTION_4_64();
        v103(v102);
        v253 = v101;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4F8);
        OUTLINED_FUNCTION_25_30();
        v104 = v242;
        goto LABEL_110;
      case 191:
      case 192:
      case 195:
      case 197:
      case 198:
      case 199:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 216:
      case 218:
LABEL_35:
        v30 = v248;
        v75 = *(v247 + 32);
        OUTLINED_FUNCTION_29_20();
        goto LABEL_112;
      case 193:
        OUTLINED_FUNCTION_12_44();
        OUTLINED_FUNCTION_28_25();
        v139();
        v140 = v252;
        if (__swift_getEnumTagSinglePayload(v64, 1, v252) == 1)
        {
          OUTLINED_FUNCTION_17_33();
          v141(v64, v30);
          v75 = 0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D540);
          OUTLINED_FUNCTION_27_19();
          swift_dynamicCast();
          OUTLINED_FUNCTION_26_25();
          if (v98)
          {
            v75 = 0;
          }

          else
          {
            v75 = v199;
          }
        }

        OUTLINED_FUNCTION_29_20();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D540);
        OUTLINED_FUNCTION_11_47();
        sub_1E3D79DF8();
        v201 = v200;

        v202 = OUTLINED_FUNCTION_4_64();
        v203(v202);
        v253 = v201;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D548);
        OUTLINED_FUNCTION_25_30();
        v189 = swift_dynamicCast() ^ 1;
        v188 = v61;
        v190 = 1;
        v191 = v140;
        goto LABEL_92;
      case 194:
      case 215:
        OUTLINED_FUNCTION_12_44();
        v85 = v238;
        v86 = OUTLINED_FUNCTION_16_38();
        v87(v86);
        OUTLINED_FUNCTION_5_64(v85);
        if (v98)
        {
          v88 = OUTLINED_FUNCTION_10_43();
          v89(v88);
          v75 = 0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4D0);
          OUTLINED_FUNCTION_13_55();
          OUTLINED_FUNCTION_26_25();
          if (v115)
          {
            v75 = 0;
          }

          else
          {
            v75 = v116;
          }
        }

        OUTLINED_FUNCTION_8_43();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4D0);
        OUTLINED_FUNCTION_3_61();
        sub_1E3D79DF8();
        v118 = v117;

        v119 = OUTLINED_FUNCTION_4_64();
        v120(v119);
        v253 = v118;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4D8);
        OUTLINED_FUNCTION_25_30();
        v104 = v239;
        goto LABEL_110;
      case 196:
        OUTLINED_FUNCTION_12_44();
        v110 = v233;
        v111 = OUTLINED_FUNCTION_16_38();
        v112(v111);
        OUTLINED_FUNCTION_5_64(v110);
        if (v98)
        {
          v113 = OUTLINED_FUNCTION_10_43();
          v114(v113);
          v75 = 0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4B0);
          OUTLINED_FUNCTION_13_55();
          OUTLINED_FUNCTION_26_25();
          if (v177)
          {
            v75 = 0;
          }

          else
          {
            v75 = v178;
          }
        }

        OUTLINED_FUNCTION_8_43();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4B0);
        OUTLINED_FUNCTION_3_61();
        sub_1E3D79DF8();
        v180 = v179;

        v181 = OUTLINED_FUNCTION_4_64();
        v182(v181);
        v253 = v180;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4B8);
        OUTLINED_FUNCTION_25_30();
        v104 = v234;
        goto LABEL_110;
      case 200:
        OUTLINED_FUNCTION_12_44();
        OUTLINED_FUNCTION_28_25();
        v121();
        OUTLINED_FUNCTION_5_64(v39);
        if (v98)
        {
          v122 = OUTLINED_FUNCTION_4_64();
          v123(v122);
          v75 = 0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D508);
          OUTLINED_FUNCTION_27_19();
          OUTLINED_FUNCTION_34_24();
          OUTLINED_FUNCTION_26_25();
          if (v183)
          {
            v75 = 0;
          }

          else
          {
            v75 = v184;
          }
        }

        v53 = v251;
        v61 = v232[8];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D508);
        OUTLINED_FUNCTION_11_47();
        sub_1E3D79DF8();
        v186 = v185;

        OUTLINED_FUNCTION_17_33();
        v39 = v249;
        v187(v249, v30);
        v253 = v186;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D510);
        OUTLINED_FUNCTION_25_30();
        OUTLINED_FUNCTION_45_17();
        OUTLINED_FUNCTION_21_18();
LABEL_92:
        __swift_storeEnumTagSinglePayload(v188, v189, v190, v191);
        v135 = OUTLINED_FUNCTION_19_34();
        v136 = v61;
        goto LABEL_111;
      case 206:
      case 217:
        v92 = v247;
        v30 = v248;
        OUTLINED_FUNCTION_28_25();
        v93();
        v94 = v252;
        if (__swift_getEnumTagSinglePayload(v58, 1, v252) == 1)
        {
          (*(v92 + 8))(v58, v30);
          v95 = 0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A520);
          OUTLINED_FUNCTION_27_19();
          swift_dynamicCast();
          OUTLINED_FUNCTION_26_25();
          if (v98)
          {
            v95 = 0;
          }

          else
          {
            v95 = v142;
          }
        }

        OUTLINED_FUNCTION_29_20();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A520);
        OUTLINED_FUNCTION_3_61();
        sub_1E3D79DF8();
        v144 = v143;

        (*(v92 + 8))(v39, v30);
        v253 = v144;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D538);
        OUTLINED_FUNCTION_25_30();
        v145 = v237;
        v146 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v145, v146 ^ 1u, 1, v94);
        v75 = *(v92 + 32);
        (v75)(v39, v145, v30);
        goto LABEL_112;
      case 213:
LABEL_24:
        OUTLINED_FUNCTION_12_44();
        OUTLINED_FUNCTION_28_25();
        v96();
        OUTLINED_FUNCTION_5_64(v53);
        if (v98)
        {
          OUTLINED_FUNCTION_17_33();
          v97(v53, v30);
          v75 = 0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A540);
          OUTLINED_FUNCTION_27_19();
          OUTLINED_FUNCTION_34_24();
          OUTLINED_FUNCTION_26_25();
          if (v147)
          {
            v75 = 0;
          }

          else
          {
            v75 = v148;
          }
        }

        v39 = v249;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A540);
        OUTLINED_FUNCTION_11_47();
        sub_1E3D79DF8();
        v150 = v149;

        v151 = OUTLINED_FUNCTION_4_64();
        v152(v151);
        v253 = v150;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D530);
        OUTLINED_FUNCTION_25_30();
        v153 = v236;
        OUTLINED_FUNCTION_45_17();
        OUTLINED_FUNCTION_21_18();
        __swift_storeEnumTagSinglePayload(v154, v155, v156, v157);
        v158 = OUTLINED_FUNCTION_19_34();
        (v75)(v158, v153, v30);
        v53 = v251;
        goto LABEL_112;
      case 219:
      case 220:
        OUTLINED_FUNCTION_12_44();
        OUTLINED_FUNCTION_28_25();
        v90();
        OUTLINED_FUNCTION_5_64(v48);
        if (v98)
        {
          OUTLINED_FUNCTION_17_33();
          v91(v48, v30);
          v75 = 0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A530);
          OUTLINED_FUNCTION_27_19();
          OUTLINED_FUNCTION_34_24();
          OUTLINED_FUNCTION_26_25();
          if (v124)
          {
            v75 = 0;
          }

          else
          {
            v75 = v125;
          }
        }

        OUTLINED_FUNCTION_29_20();
        v126 = v240;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A530);
        OUTLINED_FUNCTION_11_47();
        sub_1E3D79DF8();
        v128 = v127;

        v129 = OUTLINED_FUNCTION_4_64();
        v130(v129);
        v253 = v128;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D528);
        OUTLINED_FUNCTION_25_30();
        OUTLINED_FUNCTION_45_17();
        OUTLINED_FUNCTION_21_18();
        __swift_storeEnumTagSinglePayload(v131, v132, v133, v134);
        v135 = OUTLINED_FUNCTION_19_34();
        v136 = v126;
        goto LABEL_111;
      case 221:
        OUTLINED_FUNCTION_12_44();
        OUTLINED_FUNCTION_28_25();
        v137();
        OUTLINED_FUNCTION_5_64(v43);
        if (v98)
        {
          OUTLINED_FUNCTION_17_33();
          v138(v43, v30);
          v75 = 0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D518);
          OUTLINED_FUNCTION_27_19();
          OUTLINED_FUNCTION_34_24();
          OUTLINED_FUNCTION_26_25();
          if (v192)
          {
            v75 = 0;
          }

          else
          {
            v75 = v193;
          }
        }

        OUTLINED_FUNCTION_8_43();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D518);
        OUTLINED_FUNCTION_3_61();
        sub_1E3D79DF8();
        v195 = v194;

        v196 = OUTLINED_FUNCTION_4_64();
        v197(v196);
        v253 = v195;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D520);
        OUTLINED_FUNCTION_25_30();
        v198 = &v258;
        goto LABEL_109;
      default:
        switch(v66)
        {
          case 169:
            OUTLINED_FUNCTION_12_44();
            v172 = v232[3];
            v173 = OUTLINED_FUNCTION_16_38();
            v174(v173);
            OUTLINED_FUNCTION_5_64(v172);
            if (v98)
            {
              v175 = OUTLINED_FUNCTION_10_43();
              v176(v175);
              v75 = 0;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4E0);
              OUTLINED_FUNCTION_13_55();
              OUTLINED_FUNCTION_26_25();
              if (v216)
              {
                v75 = 0;
              }

              else
              {
                v75 = v217;
              }
            }

            OUTLINED_FUNCTION_8_43();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4E0);
            OUTLINED_FUNCTION_3_61();
            sub_1E3D79DF8();
            v219 = v218;

            v220 = OUTLINED_FUNCTION_4_64();
            v221(v220);
            v253 = v219;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4E8);
            OUTLINED_FUNCTION_25_30();
            v198 = &v256;
            break;
          case 170:
            OUTLINED_FUNCTION_12_44();
            v167 = v232[4];
            v168 = OUTLINED_FUNCTION_16_38();
            v169(v168);
            OUTLINED_FUNCTION_5_64(v167);
            if (v98)
            {
              v170 = OUTLINED_FUNCTION_10_43();
              v171(v170);
              v75 = 0;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4A0);
              OUTLINED_FUNCTION_13_55();
              OUTLINED_FUNCTION_26_25();
              if (v210)
              {
                v75 = 0;
              }

              else
              {
                v75 = v211;
              }
            }

            OUTLINED_FUNCTION_8_43();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4A0);
            OUTLINED_FUNCTION_3_61();
            sub_1E3D79DF8();
            v213 = v212;

            v214 = OUTLINED_FUNCTION_4_64();
            v215(v214);
            v253 = v213;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4A8);
            OUTLINED_FUNCTION_25_30();
            v198 = &v257;
            break;
          case 171:
            v165 = v248;
            (*(v247 + 16))(v30, v245, v248);
            OUTLINED_FUNCTION_5_64(v30);
            if (v98)
            {
              OUTLINED_FUNCTION_17_33();
              v166(v30, v165);
              v75 = 0;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C960);
              OUTLINED_FUNCTION_27_19();
              OUTLINED_FUNCTION_34_24();
              OUTLINED_FUNCTION_26_25();
              if (v204)
              {
                v75 = 0;
              }

              else
              {
                v75 = v205;
              }
            }

            v53 = v251;
            v30 = v165;
            v39 = v249;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C960);
            OUTLINED_FUNCTION_3_61();
            sub_1E3D79DF8();
            v207 = v206;

            v208 = OUTLINED_FUNCTION_4_64();
            v209(v208);
            v253 = v207;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D500);
            OUTLINED_FUNCTION_25_30();
            v198 = &v255;
            break;
          case 172:
          case 173:
          case 174:
          case 175:
          case 176:
          case 177:
          case 180:
          case 181:
          case 182:
            goto LABEL_35;
          case 178:
            goto LABEL_24;
          case 179:
          case 183:
            OUTLINED_FUNCTION_12_44();
            v81 = OUTLINED_FUNCTION_16_38();
            v82(v81);
            OUTLINED_FUNCTION_5_64(v35);
            if (v98)
            {
              v83 = OUTLINED_FUNCTION_10_43();
              v84(v83);
              v75 = 0;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4E0);
              OUTLINED_FUNCTION_13_55();
              OUTLINED_FUNCTION_26_25();
              if (v159)
              {
                v75 = 0;
              }

              else
              {
                v75 = v160;
              }
            }

            OUTLINED_FUNCTION_8_43();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4E0);
            OUTLINED_FUNCTION_3_61();
            sub_1E3D79DF8();
            v162 = v161;

            v163 = OUTLINED_FUNCTION_4_64();
            v164(v163);
            v253 = v162;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4E8);
            OUTLINED_FUNCTION_25_30();
            v104 = v235;
            goto LABEL_110;
          default:
            if (v66 != 256)
            {
              goto LABEL_35;
            }

            OUTLINED_FUNCTION_12_44();
            v105 = v232[1];
            v106 = OUTLINED_FUNCTION_16_38();
            v107(v106);
            OUTLINED_FUNCTION_5_64(v105);
            if (v98)
            {
              v108 = OUTLINED_FUNCTION_10_43();
              v109(v108);
              v75 = 0;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4C0);
              OUTLINED_FUNCTION_13_55();
              OUTLINED_FUNCTION_26_25();
              if (v222)
              {
                v75 = 0;
              }

              else
              {
                v75 = v223;
              }
            }

            OUTLINED_FUNCTION_8_43();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4C0);
            OUTLINED_FUNCTION_3_61();
            sub_1E3D79DF8();
            v225 = v224;

            v226 = OUTLINED_FUNCTION_4_64();
            v227(v226);
            v253 = v225;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4C8);
            OUTLINED_FUNCTION_25_30();
            v198 = &v254;
            break;
        }

LABEL_109:
        v104 = *(v198 - 32);
LABEL_110:
        OUTLINED_FUNCTION_45_17();
        OUTLINED_FUNCTION_21_18();
        __swift_storeEnumTagSinglePayload(v228, v229, v230, v231);
        v135 = OUTLINED_FUNCTION_19_34();
        v136 = v104;
LABEL_111:
        (v75)(v135, v136, v30);
LABEL_112:
        (v75)(v53, v39, v30);
        OUTLINED_FUNCTION_25_2();
        break;
    }
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
  }
}

void *sub_1E38E68BC(__int16 *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  v184 = &v180 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D550);
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  v186 = &v180 - v15;
  v185 = type metadata accessor for ViewModelLinkEntity(0);
  OUTLINED_FUNCTION_0_10();
  v181 = v16;
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v182 = &v180 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v183 = &v180 - v21;
  v22 = swift_allocObject();
  v24 = v22;
  *(v22 + 16) = 0;
  v25 = (v22 + 16);
  switch(a1[49])
  {
    case 166:
    case 168:
    case 192:
      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0);
      if (*(&v188[1] + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        if (OUTLINED_FUNCTION_18_29())
        {
          v32 = OUTLINED_FUNCTION_0_75();
LABEL_50:
          OUTLINED_FUNCTION_1_85(v31, v32, v33);
          type metadata accessor for CanonicalInfoCardCell();
          v49 = OUTLINED_FUNCTION_15_50();
          v48 = sub_1E380F630(v49, v50);
          goto LABEL_82;
        }
      }

      else
      {
        sub_1E325F6F0(v188, &qword_1ECF296C0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
      goto LABEL_50;
    case 167:
      if (a2)
      {
        type metadata accessor for FeaturedLockupCell();
        v87 = OUTLINED_FUNCTION_31_21();
        if (v87)
        {
          v88 = a2;
        }
      }

      else
      {
        v87 = 0;
      }

      sub_1E37E93E8(a3, &v190, &qword_1ECF296C0);
      if (*(&v191 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        if (swift_dynamicCast())
        {
          v147 = v189[0];
          v148 = v189[1];
          v149 = v189[2];
          v150 = v189[3];
          v151 = v189[4];
          v152 = v189[5];
        }

        else
        {
          v152 = 0;
          v151 = xmmword_1E4297170;
          v147 = 0uLL;
          v148 = 0uLL;
          v149 = 0uLL;
          v150 = 0uLL;
        }

        v188[0] = v147;
        v188[1] = v148;
        v188[2] = v149;
        v188[3] = v150;
        v188[4] = v151;
      }

      else
      {
        sub_1E325F6F0(&v190, &qword_1ECF296C0);
        v152 = 0;
        memset(v188, 0, 72);
        *(&v188[4] + 1) = 1;
      }

      LOWORD(v188[5]) = v152;
      memcpy(v189, v188, 0x52uLL);
      sub_1E37E93E8(a3, v187, &qword_1ECF296C0);
      if (v187[3])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        if (swift_dynamicCast())
        {
          v171 = v189;
          v172 = v190;
          v173 = v191;
          v174 = v192;
          v175 = v193 | (v194 << 16);
          goto LABEL_218;
        }
      }

      else
      {
        sub_1E325F6F0(v187, &qword_1ECF296C0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_218:
      v171[6] = v172;
      v171[7] = v173;
      v192 = v174;
      v193 = v175;
      v194 = BYTE2(v175);
      type metadata accessor for FeaturedLockupCell();
      v98 = sub_1E40BCBE0(a1, v87, v189);

      sub_1E325F6F0(v188, &unk_1ECF31AB0);
      goto LABEL_219;
    case 169:
    case 178:
    case 179:
    case 183:
    case 213:
      v22 = TVAppFeature.isEnabled.getter(10);
      if (v22)
      {
        goto LABEL_84;
      }

      goto LABEL_73;
    case 170:
    case 171:
    case 214:
      v22 = TVAppFeature.isEnabled.getter(10);
      if ((v22 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_84;
    case 172:
    case 185:
    case 186:
    case 202:
    case 203:
    case 207:
    case 208:
    case 209:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 240:
    case 241:
    case 242:
    case 243:
    case 245:
    case 246:
    case 247:
    case 248:
    case 249:
    case 250:
    case 251:
    case 252:
    case 253:
    case 254:
    case 255:
      goto LABEL_84;
    case 173:
    case 197:
    case 216:
      goto LABEL_22;
    case 174:
    case 175:
      if (a2)
      {
        type metadata accessor for FlowcaseViewCell();
        v40 = OUTLINED_FUNCTION_31_21();
        if (v40)
        {
          v41 = a2;
        }
      }

      else
      {
        v40 = 0;
      }

      type metadata accessor for FlowcaseViewCell();
      v98 = sub_1E3DEBDA0(a1, v40, a3);
      goto LABEL_174;
    case 176:
      if (a2)
      {
        type metadata accessor for NavBarCell();
        v22 = OUTLINED_FUNCTION_31_21();
      }

      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0);
      if (*(&v188[1] + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        if (OUTLINED_FUNCTION_18_29())
        {
          v134 = OUTLINED_FUNCTION_0_75();
          goto LABEL_166;
        }
      }

      else
      {
        sub_1E325F6F0(v188, &qword_1ECF296C0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_166:
      OUTLINED_FUNCTION_1_85(v133, v134, v135);
      type metadata accessor for NavBarCell();
      v136 = OUTLINED_FUNCTION_6_53();
      v48 = sub_1E3DFD154(v136, v137);
      goto LABEL_82;
    case 177:
      if (a2)
      {
        type metadata accessor for VideoItunesExtrasDescriptionCell();
        v22 = OUTLINED_FUNCTION_31_21();
      }

      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0);
      if (*(&v188[1] + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        if (OUTLINED_FUNCTION_18_29())
        {
          v167 = OUTLINED_FUNCTION_0_75();
          goto LABEL_210;
        }
      }

      else
      {
        sub_1E325F6F0(v188, &qword_1ECF296C0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_210:
      OUTLINED_FUNCTION_1_85(v166, v167, v168);
      type metadata accessor for VideoItunesExtrasDescriptionCell();
      v169 = OUTLINED_FUNCTION_6_53();
      v48 = sub_1E375C9C4(v169, v170);
      goto LABEL_82;
    case 180:
      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0);
      if (*(&v188[1] + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        if (OUTLINED_FUNCTION_18_29())
        {
          v85 = OUTLINED_FUNCTION_0_75();
          goto LABEL_187;
        }
      }

      else
      {
        sub_1E325F6F0(v188, &qword_1ECF296C0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_187:
      OUTLINED_FUNCTION_1_85(v84, v85, v86);
      type metadata accessor for OfferCardCollectionViewCell();
      v145 = OUTLINED_FUNCTION_15_50();
      v48 = sub_1E4178184(v145, v146);
      goto LABEL_82;
    case 181:
    case 204:
    case 205:
      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0);
      if (*(&v188[1] + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        if (OUTLINED_FUNCTION_18_29())
        {
          v35 = OUTLINED_FUNCTION_0_75();
          goto LABEL_53;
        }
      }

      else
      {
        sub_1E325F6F0(v188, &qword_1ECF296C0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_53:
      OUTLINED_FUNCTION_1_85(v34, v35, v36);
      type metadata accessor for FloatingCardHostingCollectionViewCell();
      v51 = OUTLINED_FUNCTION_15_50();
      v48 = sub_1E39C4DA4(v51, v52);
      goto LABEL_82;
    case 182:
      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0);
      if (*(&v188[1] + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        if (OUTLINED_FUNCTION_18_29())
        {
          v82 = OUTLINED_FUNCTION_0_75();
          goto LABEL_184;
        }
      }

      else
      {
        sub_1E325F6F0(v188, &qword_1ECF296C0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_184:
      OUTLINED_FUNCTION_1_85(v81, v82, v83);
      type metadata accessor for OfferListLockupCell();
      v143 = OUTLINED_FUNCTION_15_50();
      v48 = sub_1E3B93B04(v143, v144);
      goto LABEL_82;
    case 184:
    case 188:
    case 189:
    case 190:
      v22 = TVAppFeature.isEnabled.getter(10);
      if (v22)
      {
        v22 = [objc_opt_self() isVision];
        if (!v22)
        {
          goto LABEL_84;
        }
      }

      goto LABEL_73;
    case 187:
      goto LABEL_73;
    case 191:
      if (a2)
      {
        type metadata accessor for SportsPlayByPlayCell();
        OUTLINED_FUNCTION_31_21();
      }

      type metadata accessor for SportsPlayByPlayCell();
      v131 = OUTLINED_FUNCTION_7_69();
      v48 = sub_1E3743588(v131, v132);
      goto LABEL_82;
    case 193:
      v22 = TVAppFeature.isEnabled.getter(10);
      if (v22)
      {
        v22 = sub_1E373F6E0();
      }

LABEL_73:
      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0);
      if (*(&v188[1] + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        if (OUTLINED_FUNCTION_18_29())
        {
          v57 = OUTLINED_FUNCTION_0_75();
          goto LABEL_78;
        }
      }

      else
      {
        sub_1E325F6F0(v188, &qword_1ECF296C0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_78:
      OUTLINED_FUNCTION_2_65(v56, v57, v58);
      if (a4)
      {
        type metadata accessor for CardCollectionViewCellLayout();
        a4 = swift_dynamicCastClass();
      }

      type metadata accessor for CardCollectionViewCell();
      v44 = v189;
      v42 = a1;
      v43 = a2;
      v45 = a4;
      goto LABEL_81;
    case 194:
    case 206:
    case 215:
    case 217:
      v26 = sub_1E373F6E0();
      OUTLINED_FUNCTION_33_25(v26, v27, &qword_1ECF296C0);
      if (*(&v188[1] + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        if (OUTLINED_FUNCTION_18_29())
        {
          v29 = OUTLINED_FUNCTION_0_75();
          goto LABEL_34;
        }
      }

      else
      {
        sub_1E325F6F0(v188, &qword_1ECF296C0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_34:
      OUTLINED_FUNCTION_1_85(v28, v29, v30);
      type metadata accessor for LibViewModel();
      if (swift_dynamicCastClass())
      {
        if ((sub_1E39DFFC0() & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
      {
LABEL_42:
        if (a2)
        {
          type metadata accessor for MonogramLockupCell();
          OUTLINED_FUNCTION_31_21();
        }

        type metadata accessor for MonogramLockupCell();
        v93 = OUTLINED_FUNCTION_6_53();
        v48 = sub_1E3DCCCE0(v93, v94, v95);
        goto LABEL_82;
      }

      if ((sub_1E373F6E0() & 1) == 0 && (sub_1E373F6E0() & 1) == 0)
      {
        goto LABEL_42;
      }

      if (a2)
      {
        type metadata accessor for EntityLockupCollectionViewCell();
        OUTLINED_FUNCTION_31_21();
      }

      type metadata accessor for EntityLockupCollectionViewCell();
      v99 = OUTLINED_FUNCTION_6_53();
      v48 = sub_1E3AC113C(v99, v100, v101);
LABEL_82:
      v59 = *v25;
      *v25 = v48;
LABEL_83:

LABEL_84:
      type metadata accessor for Accessibility();
      sub_1E40A8408();
      v62 = v186;
      if (v61)
      {
        if (*v25)
        {
          sub_1E38E89A0(v60, v61, *v25);
        }

        else
        {
        }
      }

      if (TVAppFeature.isEnabled.getter(7))
      {

        sub_1E3CF1174();
        if (__swift_getEnumTagSinglePayload(v62, 1, v185) == 1)
        {
          sub_1E325F6F0(v62, &qword_1ECF2D550);
        }

        else
        {
          v63 = v183;
          sub_1E38E7DBC(v62, v183);
          sub_1E4206474();
          v64 = v184;
          OUTLINED_FUNCTION_32_2();
          __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
          v69 = v182;
          sub_1E38E7FC4(v63, v182);
          sub_1E4206434();

          v70 = sub_1E4206424();
          v71 = (*(v181 + 80) + 40) & ~*(v181 + 80);
          v72 = swift_allocObject();
          v73 = MEMORY[0x1E69E85E0];
          v72[2] = v70;
          v72[3] = v73;
          v72[4] = v24;
          sub_1E38E7DBC(v69, v72 + v71);
          sub_1E3797438(0, 0, v64, &unk_1E42A98F0, v72);

          sub_1E38E80FC(v63);
        }
      }

      swift_beginAccess();
      v74 = *(v24 + 16);
      v75 = v74;

      return v74;
    case 195:
      if (a2)
      {
        type metadata accessor for SportsFavoriteBannerCell();
        v22 = OUTLINED_FUNCTION_31_21();
        v40 = v22;
        if (v22)
        {
          v22 = a2;
        }
      }

      else
      {
        v40 = 0;
      }

      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0);
      if (*(&v188[1] + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        if (OUTLINED_FUNCTION_18_29())
        {
          v139 = OUTLINED_FUNCTION_0_75();
          goto LABEL_173;
        }
      }

      else
      {
        sub_1E325F6F0(v188, &qword_1ECF296C0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_173:
      OUTLINED_FUNCTION_1_85(v138, v139, v140);
      type metadata accessor for SportsFavoriteBannerCell();
      v98 = sub_1E3B799C0(a1);

LABEL_174:
      goto LABEL_219;
    case 196:
      if (TVAppFeature.isEnabled.getter(10))
      {
        goto LABEL_84;
      }

      v22 = [objc_opt_self() isPad];
      if (!v22)
      {
        if (a2)
        {
          type metadata accessor for SyndicationCell();
          OUTLINED_FUNCTION_31_21();
        }

        type metadata accessor for SyndicationCell();
        v178 = OUTLINED_FUNCTION_7_69();
        v48 = sub_1E3C5E3E4(v178, v179);
        goto LABEL_82;
      }

LABEL_22:
      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0);
      if (*(&v188[1] + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        if (OUTLINED_FUNCTION_18_29())
        {
          v38 = OUTLINED_FUNCTION_0_75();
          goto LABEL_31;
        }
      }

      else
      {
        sub_1E325F6F0(v188, &qword_1ECF296C0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_31:
      OUTLINED_FUNCTION_1_85(v37, v38, v39);
      type metadata accessor for CardCollectionViewCell();
      v42 = OUTLINED_FUNCTION_15_50();
      v45 = 0;
LABEL_81:
      v48 = sub_1E3EEF4F4(v42, v43, v44, v45);
      goto LABEL_82;
    case 198:
      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0);
      if (*(&v188[1] + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        if (OUTLINED_FUNCTION_18_29())
        {
          v54 = OUTLINED_FUNCTION_0_75();
          goto LABEL_150;
        }
      }

      else
      {
        sub_1E325F6F0(v188, &qword_1ECF296C0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_150:
      OUTLINED_FUNCTION_2_65(v53, v54, v55);
      if (a2)
      {
        type metadata accessor for BrandLockupCell();
        OUTLINED_FUNCTION_31_21();
      }

      type metadata accessor for BrandLockupCell();
      v120 = OUTLINED_FUNCTION_6_53();
      v48 = sub_1E3E00E14(v120, v121, v122);
      goto LABEL_82;
    case 199:
      if (a2)
      {
        type metadata accessor for ViewHostingCell();
        v22 = OUTLINED_FUNCTION_31_21();
      }

      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0);
      if (*(&v188[1] + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        if (OUTLINED_FUNCTION_18_29())
        {
          v126 = OUTLINED_FUNCTION_0_75();
          goto LABEL_159;
        }
      }

      else
      {
        sub_1E325F6F0(v188, &qword_1ECF296C0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_159:
      OUTLINED_FUNCTION_1_85(v125, v126, v127);
      type metadata accessor for ViewHostingCell();
      v128 = OUTLINED_FUNCTION_6_53();
      v48 = sub_1E3BC7768(v128, v129, v130);
      goto LABEL_82;
    case 200:
      if (a2)
      {
        type metadata accessor for OrdinalCardCell();
        v22 = OUTLINED_FUNCTION_31_21();
      }

      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0);
      if (*(&v188[1] + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        if (OUTLINED_FUNCTION_18_29())
        {
          v161 = OUTLINED_FUNCTION_0_75();
          goto LABEL_204;
        }
      }

      else
      {
        sub_1E325F6F0(v188, &qword_1ECF296C0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_204:
      OUTLINED_FUNCTION_1_85(v160, v161, v162);
      type metadata accessor for OrdinalCardCell();
      v163 = OUTLINED_FUNCTION_6_53();
      v48 = sub_1E3BD0C60(v163, v164, v165);
      goto LABEL_82;
    case 201:
      if (a2)
      {
        type metadata accessor for OrdinalListCell();
        v22 = OUTLINED_FUNCTION_31_21();
      }

      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0);
      if (*(&v188[1] + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        if (OUTLINED_FUNCTION_18_29())
        {
          v115 = OUTLINED_FUNCTION_0_75();
          goto LABEL_147;
        }
      }

      else
      {
        sub_1E325F6F0(v188, &qword_1ECF296C0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_147:
      OUTLINED_FUNCTION_1_85(v114, v115, v116);
      type metadata accessor for OrdinalListCell();
      v117 = OUTLINED_FUNCTION_6_53();
      v48 = sub_1E3FB0CFC(v117, v118, v119);
      goto LABEL_82;
    case 210:
    case 211:
    case 212:
      if (a2)
      {
        type metadata accessor for SportsFavoritesLockupCell();
        OUTLINED_FUNCTION_31_21();
      }

      type metadata accessor for SportsFavoritesLockupFactory();
      v46 = OUTLINED_FUNCTION_7_69();
      v48 = sub_1E401D114(v46, v47);
      goto LABEL_82;
    case 218:
      if (a2)
      {
        type metadata accessor for HintListCell();
        OUTLINED_FUNCTION_31_21();
      }

      type metadata accessor for SearchCellFactory();
      v123 = OUTLINED_FUNCTION_7_69();
      v48 = sub_1E3B46574(v123, v124);
      goto LABEL_82;
    case 219:
    case 220:
      TVAppFeature.isEnabled.getter(10);
      goto LABEL_84;
    case 244:
      OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0);
      if (*(&v188[1] + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        if (OUTLINED_FUNCTION_18_29())
        {
          v77 = LOBYTE(v189[0]);
          v78 = *(v189 + 1);
          v80 = *(&v189[1] + 1);
          v79 = *&v189[1];
          goto LABEL_177;
        }
      }

      else
      {
        sub_1E325F6F0(v188, &qword_1ECF296C0);
      }

      v78 = 0.0;
      v77 = 2;
      v79 = 0.0;
      v80 = 0.0;
LABEL_177:
      if (a2)
      {
        type metadata accessor for LeagueStandingsCard();
        OUTLINED_FUNCTION_31_21();
      }

      if (v77 == 2)
      {
        v78 = 0.0;
        v79 = 0.0;
        v80 = 0.0;
      }

      type metadata accessor for LeagueStandingsCard();
      v141 = OUTLINED_FUNCTION_20_13();
      v48 = sub_1E37BAD44(v141, v142, v78, v79, v80);
      goto LABEL_82;
    case 256:
      *&v188[0] = a1;
      type metadata accessor for ViewModel();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D558);
      if (swift_dynamicCast())
      {
        v89 = *(&v189[1] + 1);
        v90 = *&v189[2];
        __swift_project_boxed_opaque_existential_1(v189, *(&v189[1] + 1));
        (*(v90 + 16))(v89, v90);
        v91 = __swift_destroy_boxed_opaque_existential_1(v189);
      }

      else
      {
        memset(v189, 0, 40);
        v91 = sub_1E325F6F0(v189, &qword_1ECF2D560);
      }

      if (a2)
      {
        type metadata accessor for CardCollectionViewCell();
        v91 = OUTLINED_FUNCTION_31_21();
      }

      OUTLINED_FUNCTION_33_25(v91, v92, &qword_1ECF296C0);
      if (*(&v188[1] + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        if (OUTLINED_FUNCTION_18_29())
        {
          v154 = OUTLINED_FUNCTION_0_75();
          goto LABEL_198;
        }
      }

      else
      {
        sub_1E325F6F0(v188, &qword_1ECF296C0);
      }

      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_23_27();
LABEL_198:
      OUTLINED_FUNCTION_1_85(v153, v154, v155);
      type metadata accessor for CardCollectionViewCell();
      v156 = *sub_1E3C8E044();

      v157 = OUTLINED_FUNCTION_20_13();
      v98 = sub_1E3EEF4F4(v157, v158, v159, v156);

LABEL_219:
      v59 = *v25;
      *v25 = v98;
      goto LABEL_83;
    default:
      switch(a1[49])
      {
        case 'K':
          if (a2)
          {
            type metadata accessor for ConnectedAppFooterViewCell();
            OUTLINED_FUNCTION_31_21();
          }

          type metadata accessor for ConnectedAppFooterViewCell();
          v112 = OUTLINED_FUNCTION_7_69();
          v48 = sub_1E3792CCC(v112, v113);
          goto LABEL_82;
        case 'L':
        case 'M':
        case 'N':
        case 'O':
        case 'P':
        case 'Q':
        case 'W':
        case 'X':
          goto LABEL_84;
        case 'R':
          if (a2)
          {
            type metadata accessor for ChannelBannerCollectionViewCell();
            OUTLINED_FUNCTION_31_21();
          }

          type metadata accessor for ChannelBannerCollectionViewCell();
          v110 = OUTLINED_FUNCTION_20_13();
          v48 = sub_1E3D5E300(v110, v111);
          goto LABEL_82;
        case 'S':
          if (a2)
          {
            type metadata accessor for CanonicalBannerViewCell();
            v22 = OUTLINED_FUNCTION_31_21();
          }

          OUTLINED_FUNCTION_33_25(v22, v23, &qword_1ECF296C0);
          if (*(&v188[1] + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
            if (OUTLINED_FUNCTION_18_29())
            {
              v105 = OUTLINED_FUNCTION_0_75();
              goto LABEL_139;
            }
          }

          else
          {
            sub_1E325F6F0(v188, &qword_1ECF296C0);
          }

          OUTLINED_FUNCTION_24_20();
          OUTLINED_FUNCTION_23_27();
LABEL_139:
          OUTLINED_FUNCTION_1_85(v104, v105, v106);
          type metadata accessor for CanonicalBannerFactory();
          v107 = OUTLINED_FUNCTION_20_13();
          v48 = sub_1E4126F6C(v107, v108, v109, a5);
          break;
        case 'T':
        case 'U':
          if (a2)
          {
            type metadata accessor for RoomBannerCollectionViewCell();
            OUTLINED_FUNCTION_31_21();
          }

          type metadata accessor for RoomBannerCollectionViewCell();
          v96 = OUTLINED_FUNCTION_7_69();
          v48 = sub_1E4090E28(v96, v97);
          goto LABEL_82;
        case 'V':
          if (a2)
          {
            type metadata accessor for SportsCanonicalBannerCell();
            OUTLINED_FUNCTION_31_21();
          }

          type metadata accessor for SportsCanonicalBannerCell();
          v102 = OUTLINED_FUNCTION_20_13();
          v48 = sub_1E4106FAC(v102, v103, a5);
          goto LABEL_82;
        case 'Y':
          if (a2)
          {
            type metadata accessor for QueryDescriptionBannerViewCell();
            OUTLINED_FUNCTION_31_21();
          }

          type metadata accessor for QueryDescriptionBannerViewCell();
          OUTLINED_FUNCTION_7_69();
          v48 = sub_1E3EF7C44();
          goto LABEL_82;
        default:
          if (a1[49] != 107)
          {
            goto LABEL_84;
          }

          if (a2)
          {
            type metadata accessor for CanonicalFooterViewCell();
            OUTLINED_FUNCTION_31_21();
          }

          type metadata accessor for CanonicalFooterFactory();
          v176 = OUTLINED_FUNCTION_7_69();
          v48 = sub_1E3D85330(v176, v177);
          goto LABEL_82;
      }

      goto LABEL_82;
  }
}

unint64_t sub_1E38E7D78()
{
  result = qword_1EE23B120;
  if (!qword_1EE23B120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B120);
  }

  return result;
}

uint64_t sub_1E38E7DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewModelLinkEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E38E7E20()
{
  OUTLINED_FUNCTION_24();
  v0[6] = v1;
  v0[7] = v2;
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D568);
  OUTLINED_FUNCTION_17_2(v4);
  v0[8] = swift_task_alloc();
  sub_1E4206434();
  v0[9] = sub_1E4206424();
  v6 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E38E7EEC, v6, v5);
}

uint64_t sub_1E38E7EEC()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 48);

  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 64);
    v4 = v2;
    sub_1E3CF14B0();
    v5 = sub_1E41FDCC4();
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
    sub_1E4206EA4();
  }

  **(v0 + 40) = v2 == 0;

  OUTLINED_FUNCTION_54();

  return v6();
}

uint64_t sub_1E38E7FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewModelLinkEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E38E8028()
{
  OUTLINED_FUNCTION_27_2();
  v0 = type metadata accessor for ViewModelLinkEntity(0);
  OUTLINED_FUNCTION_17_2(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_14_3(v1);
  *v2 = v3;
  v2[1] = sub_1E37E1058;

  return sub_1E38E7E20();
}

uint64_t sub_1E38E80FC(uint64_t a1)
{
  v2 = type metadata accessor for ViewModelLinkEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1E38E8158(_WORD *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1E37414E0();
  v5 = sub_1E4205DA4();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    v8 = (1 << (v5 & v6)) & *(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      sub_1E38E84D8(a2, v7, isUniquelyReferenced_nonNull_native);
      *v2 = v12;
      goto LABEL_7;
    }

    sub_1E3741534();
    if (sub_1E4205E84())
    {
      break;
    }

    v5 = v7 + 1;
  }

  LOWORD(a2) = *(*(v4 + 48) + 2 * v7);
LABEL_7:
  result = v8 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_1E38E8284()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35B90);
  result = sub_1E4207444();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

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
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1E373CBF0(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 2 * (v12 | (v5 << 6)));
    sub_1E37414E0();
    result = sub_1E4205DA4();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 2 * v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1E38E84D8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1E38E8284();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1E38E877C();
LABEL_10:
      v12 = *v3;
      sub_1E37414E0();
      result = sub_1E4205DA4();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_1E3741534();
        if (sub_1E4205E84())
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1E38E863C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 2 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_1E38E863C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35B90);
  v2 = *v0;
  v3 = sub_1E4207434();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1E38E877C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35B90);
  result = sub_1E4207444();
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
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 2 * (v11 | (v5 << 6)));
        sub_1E37414E0();
        result = sub_1E4205DA4();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 2 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
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
    *v1 = v4;
  }

  return result;
}

void sub_1E38E89A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  [a3 setVuiAccessibilityIdentifier_];
}

uint64_t sub_1E38E8A04()
{
  OUTLINED_FUNCTION_24();
  v1 = *(*v0 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v5;

  *v1 = *(v5 + 32);
  OUTLINED_FUNCTION_54();

  return v3();
}

void __swiftcall SportsVoiceOverUtility.Competitor.init(canonicalId:name:isHomeTeam:)(VideosUI::SportsVoiceOverUtility::Competitor *__return_ptr retstr, Swift::String canonicalId, Swift::String name, Swift::Bool isHomeTeam)
{
  retstr->canonicalId = canonicalId;
  retstr->name = name;
  retstr->isHomeTeam = isHomeTeam;
}

uint64_t sub_1E38E8B18(void *a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_23_28();
  sub_1E38E8B5C(a1, a2);
  return v4;
}

void *sub_1E38E8B5C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1E42056A4();
  v14 = sub_1E4205054();

  v3[3] = v14;
  v15 = sub_1E42056A4();
  v16 = sub_1E4205054();

  v17 = sub_1E4205684();
  v3[2] = v17;
  v18 = sub_1E42056A4();
  v19 = sub_1E4205054();

  v20 = sub_1E4205674();
  v3[4] = v20;
  v21 = sub_1E42056A4();
  v22 = sub_1E4205024();

  v3[5] = a2;
  v3[6] = v22;
  sub_1E4205704();
  sub_1E4205BD4();

  (*(v8 + 32))(v3 + OBJC_IVAR____TtC8VideosUI22SportsVoiceOverUtility_sport, v12, v6);
  return v3;
}

uint64_t sub_1E38E8CD0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_23_28();
  sub_1E38E8D1C(a1, a2, a3);
  return v6;
}

char *sub_1E38E8D1C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 3) = sub_1E4205054();
  v8 = sub_1E4205054();
  v9 = sub_1E4205684();

  *(v4 + 2) = v9;
  v10 = sub_1E4205054();
  v11 = sub_1E4205674();

  *(v4 + 4) = v11;
  v12 = sub_1E4205024();

  *(v4 + 5) = a2;
  *(v4 + 6) = v12;
  v13 = OBJC_IVAR____TtC8VideosUI22SportsVoiceOverUtility_sport;
  sub_1E4205BF4();
  OUTLINED_FUNCTION_2();
  (*(v14 + 32))(&v4[v13], a3);
  return v4;
}

uint64_t sub_1E38E8DF0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  if ((a1 & 0x8000000000000000) != 0)
  {
    (*(v7 + 16))(v10, a3);
    v11 = OUTLINED_FUNCTION_23_28();
    v13 = (a1 & 0x7FFFFFFFFFFFFFFFLL);

    sub_1E38E8D1C(v13, a2, v10);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_23_28();
    v12 = a1;

    sub_1E38E8B5C(v12, a2);
  }

  return v11;
}

void sub_1E38E8F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE30);
  OUTLINED_FUNCTION_17_2(v23);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &a9 - v25;
  v27 = OBJC_IVAR____TtC8VideosUI22SportsVoiceOverUtility_sport;
  v28 = sub_1E4205BF4();
  OUTLINED_FUNCTION_2();
  (*(v29 + 16))(v26, v20 + v27, v28);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v28);
  sub_1E38E904C();
  OUTLINED_FUNCTION_60_0();
  sub_1E325F6F0(v26, &qword_1ECF2CE30);
  OUTLINED_FUNCTION_6_54();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38E904C()
{
  OUTLINED_FUNCTION_31_1();
  v88 = v0;
  v97 = v1;
  v100 = v2;
  v89 = v3;
  v90 = v4;
  v6 = v5;
  v91 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE30);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v10);
  v98 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v92 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_3();
  v99 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D570);
  OUTLINED_FUNCTION_17_2(v14);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v16);
  v93 = _s5ClockVMa();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v18);
  v19 = sub_1E4205784();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D578) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v86 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v32 = v30 - v31;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v86 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v86 - v37;
  v96 = v6;
  v39 = sub_1E4205294();
  sub_1E4205514();

  (*(v21 + 104))(v36, *MEMORY[0x1E69D3BF8], v19);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v19);
  v43 = *(v24 + 56);
  sub_1E379D7E4(v38, v27, &qword_1ECF2BD98);
  sub_1E379D7E4(v36, &v27[v43], &qword_1ECF2BD98);
  OUTLINED_FUNCTION_14_16(v27);
  if (v48)
  {
    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v44, v45);
    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v46, v47);
    OUTLINED_FUNCTION_14_16(&v27[v43]);
    if (v48)
    {
      sub_1E325F6F0(v27, &qword_1ECF2BD98);
LABEL_14:
      sub_1E38EAC5C();
      OUTLINED_FUNCTION_60_0();
      goto LABEL_33;
    }

    goto LABEL_9;
  }

  sub_1E379D7E4(v27, v32, &qword_1ECF2BD98);
  OUTLINED_FUNCTION_14_16(&v27[v43]);
  if (v48)
  {
    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v49, v50);
    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v51, v52);
    (*(v21 + 8))(v32, v19);
LABEL_9:
    sub_1E325F6F0(v27, &qword_1ECF2D578);
    goto LABEL_10;
  }

  v56 = &v27[v43];
  v57 = v86;
  (*(v21 + 32))(v86, v56, v19);
  sub_1E38EB28C();
  v58 = sub_1E4205E84();
  v59 = *(v21 + 8);
  v59(v57, v19);
  OUTLINED_FUNCTION_31_22(v36);
  OUTLINED_FUNCTION_31_22(v38);
  v59(v32, v19);
  OUTLINED_FUNCTION_31_22(v27);
  if (v58)
  {
    goto LABEL_14;
  }

LABEL_10:
  v53 = v100;
  if (v100 == 0xFF)
  {
    v60 = 0;
    v61 = 0;
    v55 = v98;
    v54 = v99;
    goto LABEL_17;
  }

  v55 = v98;
  v54 = v99;
  if ((v100 & 1) == 0)
  {
    v60 = v90;
    v61 = v89;
LABEL_17:
    v62 = sub_1E4205684();
    v63 = sub_1E4205294();

    sub_1E4205664();
    v64 = v101;
    v65 = v102;

    v66 = v94;
    sub_1E379D7E4(v97, v94, &qword_1ECF2CE30);
    OUTLINED_FUNCTION_14_16(v66);
    if (v48)
    {
      (*(v92 + 104))(v54, *MEMORY[0x1E69D3D80], v55);
      OUTLINED_FUNCTION_14_16(v66);
      if (!v48)
      {
        sub_1E325F6F0(v66, &qword_1ECF2CE30);
      }
    }

    else
    {
      (*(v92 + 32))(v54, v66, v55);
    }

    v67 = v53 == -1;
    v68 = v96;
    v69 = v95;
    sub_1E3E01A88(v68, v60, v61, v67, v64, v65, v54, v95);
    OUTLINED_FUNCTION_52(v69, 1, v93);
    if (v48)
    {
      sub_1E325F6F0(v69, &qword_1ECF2D570);
    }

    else
    {
      v70 = v87;
      sub_1E38E97F0(v69, v87);
      v71 = sub_1E3E024F0();
      if (v72)
      {
        v73 = v71;
        v74 = v72;
        if (sub_1E38BA7D0(v97) == 56)
        {
          v75 = v87;
        }

        else
        {
          v76 = v87;
          v77 = sub_1E3E01C24();
          if (v78)
          {
            v79 = v77;
            v80 = v78;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1E4299720;
            *(inited + 32) = 10;
            *(inited + 40) = v73;
            *(inited + 48) = v74;
            *(inited + 56) = 11;
            *(inited + 64) = v79;
            *(inited + 72) = v80;
            sub_1E38EA7FC();
            sub_1E4205CB4();
            v82 = sub_1E38BAE70();
            OUTLINED_FUNCTION_55_0();
            sub_1E38BA3C8(v83, v84, v85);
            OUTLINED_FUNCTION_60_0();

            sub_1E38E9854(v76);
            goto LABEL_33;
          }

          v75 = v76;
        }

        sub_1E38E9854(v75);
      }

      else
      {
        sub_1E38E9854(v70);
      }
    }

    OUTLINED_FUNCTION_29_21();
    goto LABEL_33;
  }

  sub_1E38EA850(v90, v89, 1);
LABEL_33:
  OUTLINED_FUNCTION_6_54();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38E97F0(uint64_t a1, uint64_t a2)
{
  v4 = _s5ClockVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E38E9854(uint64_t a1)
{
  v2 = _s5ClockVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E38E990C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v38 = v2;
  v4 = v3;
  v5 = sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_3();
  if (v4)
  {
    v37 = v9;
    v10 = v1 ^ 1;
    v45 = v4;
    v39 = (v1 ^ 1) & 1;
    v40 = 0;
    v11 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11);
    OUTLINED_FUNCTION_0_32();
    OUTLINED_FUNCTION_21_1();
    sub_1E32752B0(v12, v13);
    sub_1E38D2054(&v39, &v41);
    v14 = v42;
    if (v42)
    {
      v35 = v5;
      v15 = v41;
      v34 = v43;
      v36 = v44;
      v16 = sub_1E32AE9B0(v38);
      for (i = 0; ; ++i)
      {
        if (v16 == i)
        {

          goto LABEL_17;
        }

        if ((v38 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1E6911E60](i, v38);
        }

        else
        {
          if (i >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v18 = *(v38 + 8 * i + 32);
        }

        v19 = v18;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return;
        }

        v20 = sub_1E4205964();
        v21 = sub_1E42054D4();
        v23 = v22;

        if (v21 == v15 && v14 == v23)
        {
          break;
        }

        v25 = sub_1E42079A4();

        if (v25)
        {
          goto LABEL_19;
        }
      }

LABEL_19:
      sub_1E4205BC4();
      v26 = sub_1E4205984();
      (*(v7 + 8))(v37, v35);
      if (v26)
      {
        v27 = sub_1E4205AE4();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4299720;
        *(inited + 32) = v10 & 1;
        *(inited + 40) = v34;
        *(inited + 48) = v36;
        *(inited + 56) = 12;
        v41 = v27;

        *(inited + 64) = sub_1E4207944();
        *(inited + 72) = v29;

        sub_1E38EA7FC();
        sub_1E4205CB4();
        v30 = sub_1E38BAE70();
        OUTLINED_FUNCTION_55_0();
        sub_1E38BA3C8(v31, v32, v33);
        OUTLINED_FUNCTION_60_0();
      }

      else
      {
      }
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_6_54();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38E9D10()
{
  OUTLINED_FUNCTION_31_1();
  v99 = v0;
  v95 = v1;
  v3 = v2;
  v5 = v4;
  v98 = sub_1E4205784();
  OUTLINED_FUNCTION_0_10();
  v96 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v8);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D578);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_20(v91 - v15);
  sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = *(v17 + 16);
  OUTLINED_FUNCTION_82();
  v22();

  v23 = sub_1E3EA84D4(v5, v3, 0, v21);
  v26 = v25;
  if (!v25)
  {
    goto LABEL_25;
  }

  v27 = v23;
  v28 = v24;
  OUTLINED_FUNCTION_82();
  v22();

  v29 = sub_1E3EA84D4(v5, v3, 1, v21);
  if (!v30)
  {

    goto LABEL_25;
  }

  v32 = v29;
  v33 = v30;
  v34 = v31;
  v91[0] = v5;
  v91[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580);
  inited = swift_initStackObject();
  v36 = OUTLINED_FUNCTION_26_26(inited, xmmword_1E4298AD0);
  v36[2].n128_u64[1] = v27;
  v36[3].n128_u64[0] = v26;
  v36[3].n128_u8[8] = 7;
  v102 = v28;
  inited[4].n128_u64[0] = sub_1E4207944();
  inited[4].n128_u64[1] = v37;
  inited[5].n128_u8[0] = 8;
  inited[5].n128_u64[1] = v32;
  inited[6].n128_u64[0] = v33;
  inited[6].n128_u8[8] = 9;
  v102 = v34;
  inited[7].n128_u64[0] = sub_1E4207944();
  inited[7].n128_u64[1] = v38;
  sub_1E38EA7FC();
  v39 = sub_1E4205CB4();
  v40 = sub_1E38BAE70();
  v41 = sub_1E38BA3C8(8, v39, v40);
  v43 = v42;

  v44 = sub_1E4205294();
  v45 = v101;
  sub_1E4205514();

  v46 = v96;
  v47 = v100;
  v48 = v98;
  (*(v96 + 104))(v100, *MEMORY[0x1E69D3BF8], v98);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v48);
  v52 = *(v94 + 48);
  v53 = v97;
  sub_1E379D7E4(v45, v97, &qword_1ECF2BD98);
  sub_1E379D7E4(v47, v53 + v52, &qword_1ECF2BD98);
  OUTLINED_FUNCTION_52(v53, 1, v48);
  if (!v59)
  {
    v58 = v93;
    sub_1E379D7E4(v53, v93, &qword_1ECF2BD98);
    OUTLINED_FUNCTION_52(v53 + v52, 1, v48);
    if (!v59)
    {
      v64 = v53 + v52;
      v65 = v92;
      (*(v46 + 32))(v92, v64, v48);
      sub_1E38EB28C();
      v66 = sub_1E4205E84();
      v67 = *(v46 + 8);
      v67(v65, v48);
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v68, v69);
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v70, v71);
      v67(v58, v48);
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v72, v73);
      if ((v66 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v60, v61);
    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v62, v63);
    (*(v46 + 8))(v58, v48);
LABEL_13:
    sub_1E325F6F0(v53, &qword_1ECF2D578);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v54, v55);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v56, v57);
  OUTLINED_FUNCTION_52(v53 + v52, 1, v48);
  if (!v59)
  {
    goto LABEL_13;
  }

  sub_1E325F6F0(v53, &qword_1ECF2BD98);
LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40750);
  v74 = swift_initStackObject();
  *(v74 + 16) = xmmword_1E4299720;
  *(v74 + 32) = v41;
  *(v74 + 40) = v43;
  sub_1E38EAC5C();
  v75 = 0;
  *(v74 + 48) = v76;
  *(v74 + 56) = v77;
  v78 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v79 = (v74 + 40 + 16 * v75);
  while (++v75 != 3)
  {
    v80 = v79 + 2;
    v81 = *v79;
    v79 += 2;
    if (v81)
    {
      v82 = *(v80 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = OUTLINED_FUNCTION_27();
        v78 = sub_1E3740F88(v86, v87, v88, v78);
      }

      v84 = *(v78 + 2);
      v83 = *(v78 + 3);
      if (v84 >= v83 >> 1)
      {
        v78 = sub_1E3740F88((v83 > 1), v84 + 1, 1, v78);
      }

      *(v78 + 2) = v84 + 1;
      v85 = &v78[16 * v84];
      *(v85 + 4) = v82;
      *(v85 + 5) = v81;
      goto LABEL_16;
    }
  }

  swift_setDeallocating();
  sub_1E3740994();
  v102 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  OUTLINED_FUNCTION_82();
  sub_1E32752B0(v89, v90);
  sub_1E4205DF4();

LABEL_25:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38EA474(uint64_t a1, uint64_t a2, char a3)
{
  if (!a1)
  {
    v28 = 0u;
    v29 = 0u;
    goto LABEL_14;
  }

  v26 = &type metadata for ViewModelKeys.Sports;
  v27 = &off_1F5D7BC68;
  LOBYTE(v24) = 6;
  sub_1E3F9F164(&v24);
  __swift_destroy_boxed_opaque_existential_1(&v24);
  if (!*(&v29 + 1))
  {
LABEL_14:
    sub_1E325F6F0(&v28, &unk_1ECF296E0);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    OUTLINED_FUNCTION_29_21();
    return OUTLINED_FUNCTION_32_0();
  }

  *&v28 = v24;
  v24 = (a3 & 1) == 0;
  v25 = 0;
  OUTLINED_FUNCTION_0_32();
  sub_1E32752B0(v5, v6);
  sub_1E38D2054(&v24, v23);
  v7 = v23[0];

  if (!v7)
  {
    return OUTLINED_FUNCTION_32_0();
  }

  v26 = &type metadata for ViewModelKeys.Sports;
  v27 = &off_1F5D7BC68;
  LOBYTE(v24) = 22;
  sub_1E3F9F164(&v24);

  if (!*(&v29 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v24);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v24);
    goto LABEL_15;
  }

  v9 = v23[0];
  v8 = v23[1];
  __swift_destroy_boxed_opaque_existential_1(&v24);
  if (!a2 || !*(a2 + 16) || (v10 = *(a2 + 32), !v10[2]) || (v12 = v10[4], v11 = v10[5], v13 = sub_1E38EA748(v10), !v14))
  {

    goto LABEL_15;
  }

  v15 = v14;
  if (a3)
  {

    v16 = 0;
    v17 = 31;
    v18 = v12;
    v15 = v11;
  }

  else
  {
    v18 = v13;
    v16 = 1;
    v17 = 32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = v16;
  *(inited + 40) = v9;
  *(inited + 48) = v8;
  *(inited + 56) = 12;
  *(inited + 64) = v18;
  *(inited + 72) = v15;
  sub_1E38EA7FC();
  v21 = sub_1E4205CB4();
  v22 = sub_1E38BAE70(v21);
  sub_1E38BA3C8(v17, v21, v22);
  OUTLINED_FUNCTION_60_0();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E38EA748(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

uint64_t sub_1E38EA790(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32 * v1);

  return v2;
}

unint64_t sub_1E38EA7FC()
{
  result = qword_1ECF2D588;
  if (!qword_1ECF2D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D588);
  }

  return result;
}

uint64_t sub_1E38EA850(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1E38EA860(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v99 = 0u;
    v100 = 0u;
    goto LABEL_22;
  }

  v97 = &type metadata for ViewModelKeys.Sports;
  v98 = &off_1F5D7BC68;
  v10 = OUTLINED_FUNCTION_27_20(a1, a1, a3, a4, a5, a6, a7, a8, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, 6);
  sub_1E3F9F164(v10);
  __swift_destroy_boxed_opaque_existential_1(v96);
  if (!*(&v100 + 1))
  {
LABEL_22:
    sub_1E325F6F0(&v99, &unk_1ECF296E0);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  result = swift_dynamicCast();
  if (result)
  {
    HIDWORD(v67) = a2;
    v69 = v8;
    v12 = 0;
    v13 = *v96;
    v71 = MEMORY[0x1E69E7CC0];
    v14 = *(*v96 + 16);
    while (1)
    {
      if (v14 == v12)
      {

        v43 = v71[2];
        v44 = (v71 + 6);
        v45 = v43 + 1;
        while (--v45)
        {
          v46 = v44 + 24;
          v47 = *v44;
          v44 += 24;
          if ((v47 & 1) == 0)
          {
            v48 = *(v46 - 5);
            v49 = *(v46 - 4);
            v50 = (v71 + 6);
            v51 = v43 + 1;
            while (--v51)
            {
              v52 = v50 + 24;
              v53 = *v50;
              v50 += 24;
              if (v53)
              {
                v55 = *(v52 - 5);
                v54 = *(v52 - 4);

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1E4299720;
                *(inited + 32) = 0;
                *(inited + 40) = v48;
                *(inited + 48) = v49;
                *(inited + 56) = 1;
                *(inited + 64) = v55;
                *(inited + 72) = v54;
                sub_1E38EA7FC();
                v57 = sub_1E4205CB4();
                v58 = sub_1E38BAE70(v57);
                OUTLINED_FUNCTION_55_0();
                sub_1E38BA3C8(v59, v60, v61);
                OUTLINED_FUNCTION_60_0();

                return OUTLINED_FUNCTION_32_0();
              }
            }

            break;
          }
        }

        goto LABEL_23;
      }

      if (v12 >= *(v13 + 16))
      {
        __break(1u);
        return result;
      }

      v97 = &type metadata for ViewModelKeys.Sports;
      v98 = &off_1F5D7BC68;
      v96[0] = 22;

      v23 = OUTLINED_FUNCTION_27_20(v15, v16, v17, v18, v19, v20, v21, v22, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v96[0]);
      sub_1E3F9F164(v23);
      if (!*(&v100 + 1))
      {
        __swift_destroy_boxed_opaque_existential_1(v96);
        sub_1E325F6F0(&v99, &unk_1ECF296E0);
        goto LABEL_15;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v24 = v93;
      v25 = v95;
      v26 = __swift_destroy_boxed_opaque_existential_1(v96);
      v97 = &type metadata for ViewModelKeys.Sports;
      v98 = &off_1F5D7BC68;
      v34 = OUTLINED_FUNCTION_27_20(v26, v27, v28, v29, v30, v31, v32, v33, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, 23);
      sub_1E3F9F164(v34);
      if (*(&v100 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {

          __swift_destroy_boxed_opaque_existential_1(v96);
          goto LABEL_15;
        }

        LODWORD(v67) = v93;
        __swift_destroy_boxed_opaque_existential_1(v96);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          v39 = OUTLINED_FUNCTION_27();
          result = sub_1E38EB890(v39, v40, v41, v42);
          v71 = result;
        }

        v36 = v71[2];
        v35 = v71[3];
        v37 = v36 + 1;
        if (v36 >= v35 >> 1)
        {
          v65 = v36 + 1;
          result = sub_1E38EB890((v35 > 1), v36 + 1, 1, v71);
          v37 = v36 + 1;
          v71 = result;
        }

        ++v12;
        v71[2] = v37;
        v38 = &v71[3 * v36];
        v38[4] = v24;
        v38[5] = v25;
        *(v38 + 48) = v93;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v96);
        sub_1E325F6F0(&v99, &unk_1ECF296E0);
LABEL_15:

        ++v12;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v96);
    goto LABEL_15;
  }

LABEL_23:
  OUTLINED_FUNCTION_29_21();
  return OUTLINED_FUNCTION_32_0();
}

void sub_1E38EAC5C()
{
  OUTLINED_FUNCTION_31_1();
  v63 = v0;
  v2 = v1;
  sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v4);
  v5 = *(v2 + 16) + 1;
  v6 = v2;
  v60 = *(v2 + 16);
  while (--v5)
  {
    v7 = (v6 + 40);
    v8 = *(v6 + 64);
    v6 += 40;
    if (v8 == 1)
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v11 = v7[2];
      v57 = v7[1];

      v59 = v11;

      goto LABEL_6;
    }
  }

  v57 = 0;
  v59 = 0;
  v10 = 0;
  v9 = 0;
LABEL_6:
  v12 = sub_1E32AE9B0(v63);
  v13 = 0;
  v62 = v63 & 0xC000000000000001;
  while (1)
  {
    if (v12 == v13)
    {

      goto LABEL_26;
    }

    if (v62)
    {
      v14 = MEMORY[0x1E6911E60](v13, v63);
    }

    else
    {
      if (v13 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      v14 = *(v63 + 8 * v13 + 32);
    }

    v15 = v14;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      return;
    }

    v16 = sub_1E4205964();
    v17 = sub_1E42054D4();
    v19 = v18;

    if (!v9)
    {

      goto LABEL_20;
    }

    if (v17 == v10 && v9 == v19)
    {
      break;
    }

    v21 = sub_1E42079A4();

    if (v21)
    {
      goto LABEL_24;
    }

LABEL_20:

    ++v13;
  }

LABEL_24:

  v22 = OUTLINED_FUNCTION_11_48();
  v23(v22);
  v24 = sub_1E4205984();

  (*(v17 + 8))(v19, v13);
  if (v24)
  {
    sub_1E4205AE4();

    v58 = 0;
    goto LABEL_27;
  }

LABEL_26:
  v58 = 1;
LABEL_27:
  v25 = v60 + 1;
  while (--v25)
  {
    v26 = (v2 + 40);
    v27 = *(v2 + 64);
    v2 += 40;
    if ((v27 & 1) == 0)
    {
      v28 = *(v26 - 1);
      v29 = *v26;
      v30 = v26[2];
      v61 = v26[1];

      goto LABEL_32;
    }
  }

  v61 = 0;
  v30 = 0;
  v28 = 0;
  v29 = 0;
LABEL_32:
  v31 = 0;
  while (2)
  {
    if (v12 == v31)
    {

      v39 = 1;
      v40 = v59;
      goto LABEL_53;
    }

    if (v62)
    {
      v32 = MEMORY[0x1E6911E60](v31, v63);
    }

    else
    {
      if (v31 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v32 = *(v63 + 8 * v31 + 32);
    }

    v33 = v32;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_66;
    }

    v34 = sub_1E4205964();
    v35 = sub_1E42054D4();
    v37 = v36;

    if (!v29)
    {

LABEL_46:

      ++v31;
      continue;
    }

    break;
  }

  if (v35 != v28 || v29 != v37)
  {
    v35 = sub_1E42079A4();

    if (v35)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

LABEL_50:

  v41 = OUTLINED_FUNCTION_11_48();
  v42(v41);
  v43 = sub_1E4205984();

  (*(v35 + 8))(v34, v28);
  v40 = v59;
  if (v43)
  {
    sub_1E4205AE4();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

LABEL_53:
  if (v58)
  {
LABEL_56:

LABEL_57:

LABEL_58:
    OUTLINED_FUNCTION_29_21();
    goto LABEL_59;
  }

  if (!v40)
  {
    goto LABEL_57;
  }

  if (v39)
  {
    goto LABEL_56;
  }

  if (!v30)
  {
    goto LABEL_57;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4298AD0;
  *(inited + 32) = 1;
  *(inited + 40) = v57;
  *(inited + 48) = v40;
  *(inited + 56) = 4;
  *(inited + 64) = sub_1E4207944();
  *(inited + 72) = v45;
  *(inited + 80) = 0;
  *(inited + 88) = v61;
  *(inited + 96) = v30;
  *(inited + 104) = 3;
  *(inited + 112) = sub_1E4207944();
  *(inited + 120) = v46;
  sub_1E38EA7FC();
  v47 = sub_1E4205CB4();
  v48 = sub_1E38BAE70();
  v49 = sub_1E38BA3C8(20, v47, v48);
  v51 = v50;

  if (!v51)
  {
    goto LABEL_58;
  }

  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_1E4297BE0;
  *(v52 + 32) = 12;
  *(v52 + 40) = v49;
  *(v52 + 48) = v51;
  sub_1E4205CB4();
  v53 = sub_1E38BAE70();
  OUTLINED_FUNCTION_55_0();
  sub_1E38BA3C8(v54, v55, v56);
  OUTLINED_FUNCTION_60_0();

LABEL_59:
  OUTLINED_FUNCTION_6_54();
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E38EB28C()
{
  result = qword_1ECF2D590;
  if (!qword_1ECF2D590)
  {
    sub_1E4205784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D590);
  }

  return result;
}

uint64_t sub_1E38EB2E4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v58 = 0u;
    v59 = 0u;
    goto LABEL_19;
  }

  v56 = &type metadata for ViewModelKeys.Sports;
  v57 = &off_1F5D7BC68;
  LOBYTE(v55[0]) = 6;
  sub_1E3F9F164(v55);
  __swift_destroy_boxed_opaque_existential_1(v55);
  if (!*(&v59 + 1))
  {
LABEL_19:
    sub_1E325F6F0(&v58, &unk_1ECF296E0);
    return OUTLINED_FUNCTION_32_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return OUTLINED_FUNCTION_32_0();
  }

  v52 = a2;
  v3 = 0;
  v4 = v55[0];
  v5 = v55[0][2];
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v3)
    {

      if (*(v6 + 2))
      {
        v18 = *(v6 + 4);
        v19 = *(v6 + 5);
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      v20 = v52;
      if (v52 && *(v52 + 16) && (v21 = *(v52 + 32), v21[2]))
      {
        v23 = v21[4];
        v22 = v21[5];
      }

      else
      {
        v23 = 0;
        v22 = 0;
      }

      v24 = sub_1E38EA748(v6);
      v26 = v25;

      if (v52)
      {
        if (*(v52 + 16))
        {
          v20 = sub_1E38EA748(*(v52 + 32));
          v28 = v27;
LABEL_34:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D5A8);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_1E4299720;
          *(v29 + 32) = v18;
          *(v29 + 40) = v19;
          *(v29 + 48) = v23;
          *(v29 + 56) = v22;
          *(v29 + 64) = v24;
          *(v29 + 72) = v26;
          *(v29 + 80) = v20;
          *(v29 + 88) = v28;
          v55[0] = v29;

          sub_1E38EB9C4(v55);

          v30 = v55[0];
          if (v55[0][2])
          {
            v31 = v55[0][5];
            if (v31)
            {
              v32 = v55[0][7];
              if (v32)
              {
                v33 = v55[0][4];
                v34 = v55[0][6];
                v35 = sub_1E38EA790(v55[0]);
                if (v36 != 1)
                {
                  v37 = v35;
                  v38 = v36;

                  if (v38)
                  {
                    sub_1E38EA790(v30);
                    v40 = v39;
                    v42 = v41;
                    v44 = v43;

                    if (v40 == 1 || (, !v44))
                    {
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580);
                      inited = swift_initStackObject();
                      v46 = OUTLINED_FUNCTION_26_26(inited, xmmword_1E4298AD0);
                      v46[2].n128_u64[1] = v33;
                      v46[3].n128_u64[0] = v31;
                      v46[3].n128_u8[8] = 7;
                      v46[4].n128_u64[0] = v34;
                      v46[4].n128_u64[1] = v32;
                      v46[5].n128_u8[0] = 8;
                      v46[5].n128_u64[1] = v37;
                      v46[6].n128_u64[0] = v38;
                      v46[6].n128_u8[8] = 9;
                      v46[7].n128_u64[0] = v42;
                      v46[7].n128_u64[1] = v44;
                      sub_1E38EA7FC();
                      v47 = sub_1E4205CB4();
                      v48 = sub_1E38BAE70(v47);
                      OUTLINED_FUNCTION_55_0();
                      sub_1E38BA3C8(v49, v50, v51);
                      OUTLINED_FUNCTION_60_0();
                    }

                    return OUTLINED_FUNCTION_32_0();
                  }
                }
              }
            }
          }

          return OUTLINED_FUNCTION_32_0();
        }

        v20 = 0;
      }

      v28 = 0;
      goto LABEL_34;
    }

    if (v3 >= v4[2])
    {
      break;
    }

    v56 = &type metadata for ViewModelKeys.Sports;
    v57 = &off_1F5D7BC68;
    LOBYTE(v55[0]) = 22;

    sub_1E3F9F164(v55);

    if (!*(&v59 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1(v55);
      sub_1E325F6F0(&v58, &unk_1ECF296E0);
      goto LABEL_17;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      v53 = 0;
      v54 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v55);
    if (v54)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = OUTLINED_FUNCTION_27();
        v6 = sub_1E3740F88(v13, v14, v15, v6);
      }

      v7 = v6;
      v8 = *(v6 + 2);
      v9 = v7;
      v10 = *(v7 + 3);
      v11 = v8 + 1;
      if (v8 >= v10 >> 1)
      {
        v16 = sub_1E3740F88((v10 > 1), v8 + 1, 1, v9);
        v11 = v8 + 1;
        v9 = v16;
      }

      ++v3;
      *(v9 + 2) = v11;
      v12 = &v9[16 * v8];
      v6 = v9;
      *(v12 + 4) = v53;
      *(v12 + 5) = v54;
    }

    else
    {
LABEL_17:
      ++v3;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

id *SportsVoiceOverUtility.deinit()
{

  v1 = OBJC_IVAR____TtC8VideosUI22SportsVoiceOverUtility_sport;
  sub_1E4205BF4();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t SportsVoiceOverUtility.__deallocating_deinit()
{
  SportsVoiceOverUtility.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1E38EB890(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CED8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D5B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E38EB9C4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E38EC684(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1E38EBC78(v5);
  *a1 = v2;
  return result;
}

uint64_t type metadata accessor for SportsVoiceOverUtility()
{
  result = qword_1EE299850;
  if (!qword_1EE299850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E38EBA84()
{
  result = sub_1E4205BF4();
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

uint64_t sub_1E38EBB38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E38EBB78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaskRetryStrategy(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TaskRetryStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E38EBC78(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E4207914();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D5B0);
        v6 = sub_1E4206314();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1E38EBE4C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E38EBD7C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E38EBD7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = v6 + 32 * v4;
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      v12 = v8;
      v13 = v7;
      do
      {
        if (v11)
        {
          v14 = *(v13 - 8);
          if (v14)
          {
            result = *(v13 - 16);
            if (result == v10 && v14 == v11)
            {
              break;
            }

            result = sub_1E42079A4();
            if ((result & 1) == 0)
            {
              break;
            }
          }
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = *(v13 + 16);
        v11 = *(v13 + 24);
        v16 = *v13;
        v17 = *(v13 - 16);
        *v13 = *(v13 - 32);
        *(v13 + 16) = v17;
        *(v13 - 16) = v10;
        *(v13 - 8) = v11;
        *(v13 - 32) = v16;
        v13 -= 32;
      }

      while (!__CFADD__(v12++, 1));
      ++v4;
      v7 += 32;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E38EBE4C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v90 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3 + 32 * v6;
        v10 = *(v9 + 24);
        v11 = *a3 + 32 * v8;
        if (v10 && (v12 = *(v11 + 24)) != 0)
        {
          result = *(v11 + 16);
          if (result == *(v9 + 16) && v12 == v10)
          {
            v14 = 0;
          }

          else
          {
            result = sub_1E42079A4();
            v14 = result;
          }
        }

        else
        {
          v14 = 1;
        }

        v6 = v8 + 2;
        v15 = 32 * v8;
        v16 = (v11 + 88);
        while (v6 < v5)
        {
          if (*v16 && (v17 = *(v16 - 4)) != 0)
          {
            result = *(v16 - 5);
            if (result == *(v16 - 1) && v17 == *v16)
            {
              if (v14)
              {
                goto LABEL_28;
              }
            }

            else
            {
              result = sub_1E42079A4();
              if ((v14 ^ result))
              {
                break;
              }
            }
          }

          else if ((v14 & 1) == 0)
          {
            goto LABEL_35;
          }

          ++v6;
          v16 += 4;
        }

        if (v14)
        {
LABEL_28:
          if (v6 < v8)
          {
            goto LABEL_133;
          }

          if (v8 < v6)
          {
            v19 = 32 * v6;
            v20 = v6;
            v21 = v8;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_136;
                }

                v23 = (v22 + v15);
                v24 = v22 + v19;
                v25 = *v23;
                v26 = v23[1];
                v27 = *(v24 - 16);
                *v23 = *(v24 - 32);
                v23[1] = v27;
                *(v24 - 32) = v25;
                *(v24 - 16) = v26;
              }

              ++v21;
              v19 -= 32;
              v15 += 32;
            }

            while (v21 < v20);
          }
        }
      }

LABEL_35:
      v28 = a3[1];
      if (v6 < v28)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_130;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_131;
          }

          if (v8 + a4 >= v28)
          {
            v29 = a3[1];
          }

          else
          {
            v29 = v8 + a4;
          }

          if (v29 < v8)
          {
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
            return result;
          }

          if (v6 != v29)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v6;
            v32 = v8 - v6;
            do
            {
              v33 = v30 + 32 * v6;
              v34 = *(v33 + 16);
              v35 = *(v33 + 24);
              v36 = v32;
              v37 = v31;
              do
              {
                if (v35)
                {
                  v38 = *(v37 - 8);
                  if (v38)
                  {
                    result = *(v37 - 16);
                    if (result == v34 && v38 == v35)
                    {
                      break;
                    }

                    result = sub_1E42079A4();
                    if ((result & 1) == 0)
                    {
                      break;
                    }
                  }
                }

                if (!v30)
                {
                  goto LABEL_134;
                }

                v34 = *(v37 + 16);
                v35 = *(v37 + 24);
                v40 = *v37;
                v41 = *(v37 - 16);
                *v37 = *(v37 - 32);
                *(v37 + 16) = v41;
                *(v37 - 16) = v34;
                *(v37 - 8) = v35;
                *(v37 - 32) = v40;
                v37 -= 32;
              }

              while (!__CFADD__(v36++, 1));
              ++v6;
              v31 += 32;
              --v32;
            }

            while (v6 != v29);
            v6 = v29;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_129;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E37FFF70(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v44 = *(v7 + 16);
      v43 = *(v7 + 24);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        result = sub_1E37FFF70((v43 > 1), v44 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v45;
      v46 = v7 + 32;
      v47 = (v7 + 32 + 16 * v44);
      *v47 = v8;
      v47[1] = v6;
      v88 = *v87;
      if (!*v87)
      {
        goto LABEL_137;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = (v46 + 16 * (v45 - 1));
          v50 = (v7 + 16 * v45);
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = *(v7 + 32);
            v52 = *(v7 + 40);
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_78:
            if (v54)
            {
              goto LABEL_119;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_122;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_125;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_127;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_100;
            }

            goto LABEL_93;
          }

          if (v45 < 2)
          {
            goto LABEL_121;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_93:
          if (v69)
          {
            goto LABEL_124;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (v76 < v68)
          {
            goto LABEL_107;
          }

LABEL_100:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

          if (!*a3)
          {
            goto LABEL_135;
          }

          v80 = v7;
          v81 = (v46 + 16 * (v48 - 1));
          v82 = *v81;
          v83 = (v46 + 16 * v48);
          v84 = v83[1];
          result = sub_1E38EC4A4((*a3 + 32 * *v81), (*a3 + 32 * *v83), (*a3 + 32 * v84), v88);
          if (v4)
          {
          }

          if (v84 < v82)
          {
            goto LABEL_114;
          }

          v85 = *(v80 + 16);
          if (v48 > v85)
          {
            goto LABEL_115;
          }

          *v81 = v82;
          v81[1] = v84;
          if (v48 >= v85)
          {
            goto LABEL_116;
          }

          v45 = v85 - 1;
          result = memmove((v46 + 16 * v48), v83 + 2, 16 * (v85 - 1 - v48));
          v7 = v80;
          *(v80 + 16) = v85 - 1;
          if (v85 <= 2)
          {
            goto LABEL_107;
          }
        }

        v55 = v46 + 16 * v45;
        v56 = *(v55 - 64);
        v57 = *(v55 - 56);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_117;
        }

        v60 = *(v55 - 48);
        v59 = *(v55 - 40);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_118;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_120;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_123;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_128;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_100;
        }

        goto LABEL_78;
      }

LABEL_107:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v90 = v7;
        break;
      }
    }
  }

  if (!*v87)
  {
    goto LABEL_138;
  }

  sub_1E38EC378(&v90, *v87, a3);
}

uint64_t sub_1E38EC378(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1E37FFF5C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1E38EC4A4((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1E38EC4A4(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 32;
  v9 = (a3 - __dst) / 32;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[32 * v8] <= a4)
    {
      memmove(a4, __src, 32 * v8);
    }

    v11 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v19 = v7;
        goto LABEL_50;
      }

      v13 = *(v6 + 3);
      if (!v13)
      {
        break;
      }

      v14 = *(v4 + 3);
      if (!v14)
      {
        break;
      }

      v15 = *(v4 + 2) == *(v6 + 2) && v14 == v13;
      if (!v15 && (sub_1E42079A4() & 1) != 0)
      {
        break;
      }

      v16 = v4;
      v15 = v7 == v4;
      v4 += 32;
      if (!v15)
      {
        goto LABEL_20;
      }

LABEL_21:
      v7 += 32;
    }

    v16 = v6;
    v15 = v7 == v6;
    v6 += 32;
    if (v15)
    {
      goto LABEL_21;
    }

LABEL_20:
    v17 = *(v16 + 1);
    *v7 = *v16;
    *(v7 + 1) = v17;
    goto LABEL_21;
  }

  if (a4 != __dst || &__dst[32 * v9] <= a4)
  {
    memmove(a4, __dst, 32 * v9);
  }

  v11 = &v4[32 * v9];
LABEL_31:
  v19 = v6;
  for (v5 -= 32; v11 > v4 && v6 > v7; v5 -= 32)
  {
    v21 = *(v11 - 1);
    if (!v21 || (v22 = *(v6 - 1)) == 0 || (*(v6 - 2) == *(v11 - 2) ? (v23 = v22 == v21) : (v23 = 0), !v23 && (sub_1E42079A4() & 1) != 0))
    {
      v6 -= 32;
      if (v5 + 32 != v19)
      {
        v25 = *(v19 - 1);
        *v5 = *v6;
        *(v5 + 1) = v25;
      }

      goto LABEL_31;
    }

    if (v11 != v5 + 32)
    {
      v24 = *(v11 - 1);
      *v5 = *(v11 - 2);
      *(v5 + 1) = v24;
    }

    v11 -= 32;
  }

LABEL_50:
  v26 = (v11 - v4) / 32;
  if (v19 != v4 || v19 >= &v4[32 * v26])
  {
    memmove(v19, v4, 32 * v26);
  }

  return 1;
}

void *sub_1E38EC698(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D5A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D5B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1E38EC7C8(void *a1)
{
  v4 = *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_tagsView];
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_tagsView] = a1;
  v2 = a1;
  if (v4)
  {
    v3 = [v4 layer];
    [v3 setCompositingFilter_];
  }

  [v1 vui:*&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_tagsView] addSubview:v4 oldView:?];
}

void sub_1E38EC87C(void *a1)
{
  v4 = *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_channelLogoView];
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_channelLogoView] = a1;
  v2 = *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_channelLogoView];
  v3 = a1;
  [v1 vui:v2 addSubview:v4 oldView:?];
  [v1 vui_setNeedsLayout];
}

id sub_1E38EC910()
{
  v1 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_storedGradientLayer;
  OUTLINED_FUNCTION_14_0();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1E4299720;
    v6 = objc_opt_self();
    v7 = [v6 blackColor];
    v8 = [v7 colorWithAlphaComponent_];

    v9 = [v8 CGColor];
    type metadata accessor for CGColor();
    v11 = v10;
    *(v5 + 56) = v10;
    *(v5 + 32) = v9;
    v12 = [v6 blackColor];
    v13 = [v12 colorWithAlphaComponent_];

    v14 = [v13 CGColor];
    *(v5 + 88) = v11;
    *(v5 + 64) = v14;
    sub_1E38E2BE0(v5, v4);
    v15 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

id sub_1E38ECAC4()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *sub_1E38ECC58(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = (*(*a1 + 488))(a1);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v100 = a1;
  v99 = v5;
  v104 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D5E8);
  sub_1E4148C68(sub_1E38ED82C, v12, &v101);
  v13 = v101;
  [v13 setVuiBackgroundColor_];
  v14 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_layout;
  swift_beginAccess();
  *&v13[v14] = a2;

  v15 = &selRef_textLayout;
  if (sub_1E373E010(31, v11))
  {
    type metadata accessor for ImageViewModel();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      type metadata accessor for UIFactory();
      v18 = *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contextImageView];
      v103 = 0;
      v101 = 0u;
      v102 = 0u;
      sub_1E3280A90(0, &qword_1EE23B360);
      v19 = v18;
      v15 = &selRef_textLayout;
      v20 = sub_1E393D92C(v17, v18, &v101, 0);

      sub_1E325F748(&v101, &qword_1ECF296C0);
      OUTLINED_FUNCTION_12_45(OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contextImageView);
      OUTLINED_FUNCTION_19_35();
      OUTLINED_FUNCTION_2_66();
    }

    else
    {
    }
  }

  if (sub_1E373E010(39, v11))
  {
    type metadata accessor for ImageViewModel();
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      v22 = v21;
      v23 = *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contextImageView] != 0;
      v24 = *(**&v13[v14] + 2064);
      v25 = v14;

      v24(v23, a4);

      type metadata accessor for UIFactory();
      OUTLINED_FUNCTION_1_86();
      sub_1E3280A90(0, &qword_1EE23AE80);

      v26 = v23;
      v27 = sub_1E393D92C(v22, v23, &v101, 0);

      v14 = v25;
      v15 = &selRef_textLayout;
      sub_1E325F748(&v101, &qword_1ECF296C0);
      OUTLINED_FUNCTION_12_45(OBJC_IVAR____TtC8VideosUI15UpsellOfferView_coverArtImageView);
      OUTLINED_FUNCTION_19_35();
      OUTLINED_FUNCTION_2_66();
    }

    else
    {
    }
  }

  if (sub_1E373E010(99, v11) || sub_1E373E010(40, v11))
  {
    if ([objc_opt_self() isTV] & 1) != 0 || (sub_1E39DFFC8())
    {
      v28 = *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_channelLogoView];
      v29 = v28;
      v30 = OUTLINED_FUNCTION_17_4();
      v33 = sub_1E38ED874(v31, v28, v30, v32);

      sub_1E38EC87C(v33);
    }
  }

  v34 = sub_1E373E010(23, v11);
  if (v34)
  {
    if (*v34 == _TtC8VideosUI13TextViewModel)
    {
      type metadata accessor for UIFactory();
      OUTLINED_FUNCTION_1_86();
      sub_1E3280A90(0, &qword_1EE23AD40);
      v35 = _TtC8VideosUI13TextViewModel;
      v36 = OUTLINED_FUNCTION_3_62();
      v40 = sub_1E393D92C(v36, v37, v38, v39);

      sub_1E325F748(&v101, &qword_1ECF296C0);
      OUTLINED_FUNCTION_12_45(OBJC_IVAR____TtC8VideosUI15UpsellOfferView_titleLabel);
      OUTLINED_FUNCTION_19_35();
      OUTLINED_FUNCTION_2_66();
    }

    else
    {
    }
  }

  v41 = sub_1E373E010(17, v11);
  if (v41)
  {
    if (*v41 == _TtC8VideosUI13TextViewModel)
    {
      type metadata accessor for UIFactory();
      OUTLINED_FUNCTION_1_86();
      sub_1E3280A90(0, &qword_1EE23AD40);
      v42 = _TtC8VideosUI13TextViewModel;
      v43 = OUTLINED_FUNCTION_3_62();
      v47 = sub_1E393D92C(v43, v44, v45, v46);

      sub_1E325F748(&v101, &qword_1ECF296C0);
      OUTLINED_FUNCTION_12_45(OBJC_IVAR____TtC8VideosUI15UpsellOfferView_descriptionLabel);
      OUTLINED_FUNCTION_19_35();
      OUTLINED_FUNCTION_2_66();
    }

    else
    {
    }
  }

  if (sub_1E373E010(35, v11))
  {
    type metadata accessor for ImageViewModel();
    v48 = swift_dynamicCastClass();
    if (v48)
    {
      v49 = v48;
      v50 = *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contextImageView] != 0;
      v51 = *&v13[v14];
      v52 = *(*v51 + 2072);
      v53 = v14;

      v54 = OUTLINED_FUNCTION_17_4();
      v52(v50, v54);

      type metadata accessor for UIFactory();
      OUTLINED_FUNCTION_1_86();
      sub_1E3280A90(0, &qword_1EE23AE80);

      v55 = v51;
      v56 = OUTLINED_FUNCTION_3_62();
      v60 = sub_1E393D92C(v56, v57, v58, v59);

      v14 = v53;
      v15 = &selRef_textLayout;
      sub_1E325F748(&v101, &qword_1ECF296C0);
      OUTLINED_FUNCTION_12_45(OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageView);
      OUTLINED_FUNCTION_19_35();
      OUTLINED_FUNCTION_2_66();

      *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageModel] = v49;
    }
  }

  if (!sub_1E373E010(43, v11))
  {
    goto LABEL_33;
  }

  type metadata accessor for ImageViewModel();
  v61 = swift_dynamicCastClass();
  if (!v61)
  {

LABEL_33:
    v73 = sub_1E373E010(5, v11);

    if (v73)
    {
      if (*v73 == _TtC8VideosUI13TextViewModel)
      {
        type metadata accessor for UIFactory();
        OUTLINED_FUNCTION_1_86();
        sub_1E3280A90(0, &qword_1EE23AD40);

        v74 = _TtC8VideosUI13TextViewModel;
        v75 = OUTLINED_FUNCTION_3_62();
        v79 = sub_1E393D92C(v75, v76, v77, v78);

        sub_1E325F748(&v101, &qword_1ECF296C0);
        OUTLINED_FUNCTION_12_45(OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentTextLabel);
        v80 = *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentTextLabel];
        v81 = v15[466];
        v82 = v79;
        [v13 v81];
      }

      else
      {
      }
    }

    goto LABEL_37;
  }

  v62 = v61;

  type metadata accessor for UIFactory();
  v63 = *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentLogoView];
  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  sub_1E3280A90(0, &qword_1EE23AE80);

  v64 = v63;
  v65 = sub_1E393D92C(v62, v63, &v101, 0);

  sub_1E325F748(&v101, &qword_1ECF296C0);
  OUTLINED_FUNCTION_36();
  v67 = *(v66 + 2088);

  v67(v68, a4);

  v69 = *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentLogoView];
  *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentLogoView] = v65;
  v70 = *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentLogoView];
  v71 = v15[466];
  v72 = v65;
  [v13 v71];

LABEL_37:
  type metadata accessor for LayoutGrid();
  sub_1E3A2579C(a4);
  v83 = *&v13[v14];

  v84 = sub_1E38ED980();
  v85 = [v13 vuiTraitCollection];

  v86 = [v85 isAXEnabled];
  (*(*v83 + 2080))(v84, v86);

  v87 = *(**sub_1E32ABF64() + 96);

  LOBYTE(v87) = v87(v88);

  v89 = sub_1E38EDAD8(v100, v87 & 1);
  if (v89)
  {
    v90 = v89;
    v91 = OUTLINED_FUNCTION_6_19();
    sub_1E38EC7C8(v91);
    OUTLINED_FUNCTION_36();
    v93 = (*(v92 + 1880))();
    v94 = [v93 isGroupActivityTagEnabled];

    if (v94)
    {
      v95 = [objc_opt_self() defaultCenter];
      *&v101 = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D5F0);
      v96 = sub_1E4207A34();
      v97 = *sub_1E3C0EB8C();
      [v95 addObserver:v96 selector:sel_handleGroupWatchActivityStateDidChange_ name:v97 object:0];

      swift_unknownObjectRelease();
    }
  }

  *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_upsellViewModel] = v100;

  *&v13[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentWidth] = a4;

  return v13;
}

id sub_1E38ED82C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for UpsellOfferView()) initWithFrame_];
  *a1 = result;
  return result;
}

uint64_t sub_1E38ED874(uint64_t a1, void *a2, double a3, double a4)
{
  sub_1E3DF9E68(v14);
  v13 = 0;
  type metadata accessor for UIFactory();
  v12[3] = &unk_1F5D869A0;
  v12[4] = &off_1F5D868A0;
  v8 = swift_allocObject();
  v12[0] = v8;
  v9 = *&v14[16];
  *(v8 + 16) = *v14;
  *(v8 + 32) = v9;
  *(v8 + 48) = *&v14[32];
  *(v8 + 64) = a3;
  *(v8 + 72) = a4;
  *(v8 + 80) = 0;
  *(v8 + 81) = *&v14[65];
  *(v8 + 97) = v14[81];
  sub_1E3280A90(0, &qword_1EE23AE80);
  v10 = sub_1E393D92C(a1, a2, v12, 0);
  sub_1E325F748(v12, &qword_1ECF296C0);
  return v10;
}

BOOL sub_1E38ED980()
{
  v1 = v0;
  if ([objc_opt_self() isPhone] && ((v2 = objc_msgSend(objc_opt_self(), sel_vui_main)) == 0 ? (Height = 0.0) : (v3 = v2, objc_msgSend(v2, sel_vui_bounds), v5 = v4, v7 = v6, v3, v14.origin.x = OUTLINED_FUNCTION_17_4(), v14.size.width = v5, v14.size.height = v7, Height = CGRectGetHeight(v14)), *(v1 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_coverArtImageView) && (OUTLINED_FUNCTION_25(), swift_beginAccess(), OUTLINED_FUNCTION_36(), v10 = *(v9 + 2016), v11 = , v12 = v10(v11), , Height < v12)))
  {
    return 0;
  }

  else
  {
    return *(v1 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageView) != 0;
  }
}

id sub_1E38EDAD8(uint64_t a1, char a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v7;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = a2;
  v8 = sub_1E4205CB4();
  if (a1)
  {
    sub_1E3280A90(0, &qword_1EE23B228);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    OUTLINED_FUNCTION_36();
    v10 = (v9 + 1880);
    v11 = *(v9 + 1880);

    v11(v12);
    OUTLINED_FUNCTION_6_19();

    v13 = *(v3 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_tagsView);
    v14 = v13;
    v15 = sub_1E4005268(a1, v10, v13, v8, 0);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_1E38EDC78()
{
  v0 = sub_1E41FDF24();
  if (!v0)
  {
    v9 = 0u;
    v10 = 0u;
    goto LABEL_6;
  }

  v1 = v0;
  v2 = sub_1E3C0EBCC();
  v4 = *v2;
  v3 = *(v2 + 1);
  *&v9 = v4;
  *(&v9 + 1) = v3;

  sub_1E4207414();
  sub_1E375D7E8(v8, v1, &v9);

  sub_1E375D84C(v8);
  if (!*(&v10 + 1))
  {
LABEL_6:
    sub_1E325F748(&v9, &unk_1ECF296E0);
    goto LABEL_7;
  }

  if (!swift_dynamicCast())
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v5 = v8[0];
LABEL_8:

  v7 = sub_1E38EDAD8(v6, v5);

  sub_1E38EC7C8(v7);
}

void sub_1E38EDE88(char a1, double a2, double a3)
{
  v4 = v3;
  v319.width = 0.0;
  v319.height = 0.0;
  if (CGSizeEqualToSize(*&a2, v319))
  {
    goto LABEL_162;
  }

  v288 = a1;
  v7 = [v4 vuiTraitCollection];
  v8 = [v7 userInterfaceStyle];

  v9 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_layout;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  OUTLINED_FUNCTION_36();
  v11 = *(v10 + 1976);

  v13 = v11(v12);

  v15 = (*(*v13 + 1576))(v14);

  if (v15)
  {
    v16 = [v15 userInterfaceStyle];
  }

  else
  {
    v16 = 0;
  }

  v294 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_channelLogoView;
  if (*(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_channelLogoView))
  {
    v17 = v16 == v8;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  type metadata accessor for LayoutGrid();
  v19 = sub_1E3A2579C(a2);

  v20 = [v4 vuiTraitCollection];
  v298 = v19;
  sub_1E3C2AE10();
  v22 = v21;
  OUTLINED_FUNCTION_36();
  (*(v23 + 1640))();

  v24 = sub_1E38ED980();
  v25 = [v4 vuiTraitCollection];
  v26 = [v25 isAXEnabled];

  v308 = v26;
  if (v24 && *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentWidth) != a2)
  {
    v138 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageView);
    if (v138)
    {
      objc_opt_self();
      v139 = swift_dynamicCastObjCClass();
      if (v139)
      {
        if (*(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageModel))
        {
          v307 = v139;
          v140 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_layout;
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          v141 = *(v4 + v140);
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          v302 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contextImageView) != 0;
          v142 = *(*v141 + 2072);

          v305 = v138;
          v143 = OUTLINED_FUNCTION_17_4();
          v142(v302, v143);

          v144 = *(**(v4 + v140) + 1784);

          v146 = v144(v145);

          v148 = (*(*v146 + 2288))(v147);
          v150 = sub_1E3C3E520(v148, v149);
          v151 = v150;
          if (!v150 || (v152 = v150, v153 = [v307 imageProxy], v303 = objc_msgSend(v152, sel_isEqual_, v153), v153, v152, (v303 & 1) == 0))
          {
            [v307 setImageProxy:v151 completion:0];
            v152 = v151;
          }

          v26 = v26;
        }
      }
    }
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  OUTLINED_FUNCTION_36();
  v28 = *(v27 + 2080);

  v28(v24, v26);

  v29 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentPrefersUberLayout);
  if (v29 == 2 || (v30 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentIsAXEnabled), v30 == 2) || ((v24 ^ v29) & 1) != 0 || ((v26 ^ v30) & 1) != 0)
  {
    v31 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_upsellViewModel);

    v32 = *(**sub_1E32ABF64() + 96);

    LOBYTE(v32) = v32(v33);

    v34 = sub_1E38EDAD8(v31, v32 & 1);

    if (v34)
    {
      v35 = v34;
      v36 = OUTLINED_FUNCTION_6_19();
      sub_1E38EC7C8(v36);
    }
  }

  v37 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_tagsView);
  v38 = &selRef_vui_disableLocalAsset;
  if (v37)
  {
    v39 = v37;
    if (v26 & 1 | !v24)
    {
      v40 = [v4 vuiUserInterfaceStyle];
    }

    else
    {
      v40 = 2;
    }

    [v39 vui:v40 setOverrideUserInterfaceStyle:?];
  }

  if (*(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentWidth) != a2)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    OUTLINED_FUNCTION_36();
    v38 = *(v41 + 2088);

    (v38)(v42, a2);
  }

  v43 = v298;
  if (v18)
  {
    v44 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_upsellViewModel;
    if (*(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_upsellViewModel))
    {

      sub_1E39C408C(99);
      OUTLINED_FUNCTION_18_30();
      if (v38)
      {
        v45 = *(v4 + v294);
        v46 = v45;
        v47 = OUTLINED_FUNCTION_17_4();
        v50 = sub_1E38ED874(v48, v45, v47, v49);

        sub_1E38EC87C(v50);
      }

      else if (*(v4 + v44))
      {

        sub_1E39C408C(40);
        OUTLINED_FUNCTION_18_30();
      }
    }
  }

  v51 = *(v4 + v9);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v52 = *(*v51 + 2008);

  v53 = OUTLINED_FUNCTION_17_4();
  v292 = v52(v53);
  v55 = v54;
  v57 = v56;

  v285 = a2;
  v58 = a2 - v55 - v57;
  v306 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentTextLabel;
  v59 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentTextLabel);
  v60 = 0;
  v61 = 0.0;
  v62 = 0.0;
  if (v59)
  {
    OUTLINED_FUNCTION_9_49(v59);
  }

  v297 = v62;
  v300 = v61;
  v63 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_tagsView;
  v64 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_tagsView);
  v304 = 0.0;
  if (v64)
  {
    OUTLINED_FUNCTION_9_49(v64);
    v60 = v65;
    v304 = v66;
  }

  v287 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contextImageView;
  v67 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contextImageView);
  v301 = 0.0;
  v68 = 0;
  v69 = 0.0;
  if (v67)
  {
    v70 = [v67 image];
    if (v70)
    {
      v71 = v70;
      [v70 size];
      v68 = v72;
      v69 = v73;
    }
  }

  v277 = v60;
  v286 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_titleLabel;
  v74 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_titleLabel);
  if (v74)
  {
    OUTLINED_FUNCTION_9_49(v74);
    v301 = v75;
  }

  v296 = v69;
  v278 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_descriptionLabel;
  v76 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_descriptionLabel);
  v77 = 0.0;
  v78 = 0.0;
  if (v76)
  {
    OUTLINED_FUNCTION_9_49(v76);
    v78 = v79;
  }

  OUTLINED_FUNCTION_0_76();
  v81 = *(v80 + 1808);

  v81(v82);
  OUTLINED_FUNCTION_6_19();

  OUTLINED_FUNCTION_30_1();
  (*(v83 + 152))(v309);

  if (v310)
  {
    v84 = 0.0;
  }

  else
  {
    v84 = *&v309[2];
  }

  OUTLINED_FUNCTION_0_76();
  v86 = *(v85 + 1832);

  v86(v87);
  OUTLINED_FUNCTION_6_19();

  OUTLINED_FUNCTION_30_1();
  (*(v88 + 152))(v311);

  if (v312)
  {
    v89 = 0.0;
  }

  else
  {
    v89 = *&v311[2];
  }

  v90 = *(v4 + v63);
  v282[4] = !v24;
  v276 = v68;
  HIDWORD(v270) = !v24 | v26;
  if (!v90 || ((!v24 | v26) & 1) != 0)
  {
    v96 = *&v306[v4];
    if (v96)
    {
      [v96 bottomMarginWithBaselineMargin_];
      v89 = v97;
    }
  }

  else
  {
    v91 = v90;
    [v91 topMarginWithBaselineMargin_];
    v84 = v92;
    OUTLINED_FUNCTION_14_53();
    v94 = v93;
    [v91 topMarginToLabel:v94 withBaselineMargin:v89];
    v89 = v95;
  }

  OUTLINED_FUNCTION_0_76();
  v98 = (v98 + 2048);
  v99 = *v98;
  v100 = v98;

  v283 = v99(v298);

  v101 = 0.0;
  if (*(v4 + v63))
  {
    OUTLINED_FUNCTION_0_76();
    v100 = *(v102 + 1880);
    v104 = v103;
    OUTLINED_FUNCTION_6_19();

    v100(v105);
    OUTLINED_FUNCTION_18_30();
    [v100 margin];
    v107 = v106;

    [v99 topMarginWithBaselineMargin_];
    v101 = v108;

    if (*(v4 + v63))
    {
      OUTLINED_FUNCTION_0_76();
      v100 = *(v109 + 1880);
      v111 = v110;
      OUTLINED_FUNCTION_6_19();

      v100(v112);
      v43 = v298;
      OUTLINED_FUNCTION_18_30();
      [v100 margin];
      v114 = v113;

      [v99 bottomMarginWithBaselineMargin_];
      v77 = v115;
    }
  }

  OUTLINED_FUNCTION_0_76();
  if (v24)
  {
    v117 = (v116 + 1784);
  }

  else
  {
    v117 = (v116 + 1856);
  }

  v118 = *v117;

  v118(v119);
  v120 = OUTLINED_FUNCTION_18_30();
  (*(*v100 + 2288))(v120);

  OUTLINED_FUNCTION_36();
  v122 = *(v121 + 1808);

  v122(v123);
  OUTLINED_FUNCTION_6_19();

  v299 = (*(*v122 + 2288))(v124);
  v295 = v125;

  v280 = 0.0;
  VUICeilValue();
  v127 = v126;
  VUICeilValue();
  v128 = v292 + 0.0;
  v129 = v127;
  v131 = v130;
  v279 = *&v58;
  v132 = (v285 - v127) * 0.5;
  v133 = v292 + 0.0 + v130;
  v291 = v292 + 0.0;
  v293 = v129;
  v289 = v132;
  v290 = v130;
  if (v24)
  {
    if (*(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentLogoView))
    {
      v275 = (v285 - v299) * 0.5;
      if (v26)
      {
        v134 = 0.0;
      }

      else
      {
        v134 = v304 + v77;
      }

      v135 = v132;
      v273 = CGRectGetMaxY(*(&v128 - 1)) - v295 - v84 - v134;
    }

    else
    {
      OUTLINED_FUNCTION_14_53();
      if (v158)
      {
        v280 = (v285 - v300) * 0.5;
        v159 = v157;
        MaxY = CGRectGetMaxY(*(&v154 - 1));
        if (v26)
        {
          v136 = v296;
          v133 = v297 + v101 + v133;
          v275 = 0.0;
          OUTLINED_FUNCTION_13_56();
LABEL_79:
          OUTLINED_FUNCTION_14_53();
          v280 = v164;
          if (v161)
          {
            v137 = v164;
          }

          v274 = v165;
          if (v161)
          {
            v128 = v165;
          }

          v300 = v129;
          if (!v161)
          {
            v129 = v162;
          }

          v297 = v131;
          if (!v161)
          {
            v131 = v163;
          }

          goto LABEL_87;
        }

        v274 = MaxY - v297 - v89 - (v304 + v77);
        v275 = 0.0;
        OUTLINED_FUNCTION_13_56();
        v136 = v296;
LABEL_92:
        v320.origin.y = v291;
        v320.size.width = v293;
        v320.origin.x = v289;
        v320.size.height = v290;
        v272 = CGRectGetMaxY(v320) - v304 - v77;
        goto LABEL_93;
      }

      v275 = 0.0;
      OUTLINED_FUNCTION_13_56();
    }

    v136 = v296;
    if (v26)
    {
      goto LABEL_79;
    }

    v280 = 0.0;
    v274 = 0.0;
    v300 = 0.0;
    v297 = 0.0;
    goto LABEL_92;
  }

  v274 = 0.0;
  v137 = v132;
  v299 = 0.0;
  v300 = 0.0;
  v297 = 0.0;
  v275 = 0.0;
  v273 = 0.0;
  v295 = 0.0;
  v136 = v296;
LABEL_87:
  v272 = v101 + CGRectGetMaxY(*(&v128 - 1));
  v133 = v304 + v101 + v133;
LABEL_93:
  v281 = (v285 - v58) * 0.5;
  v166 = 0.0;
  v167 = v283;
  if (v136 <= 0.0)
  {
    v167 = 0.0;
  }

  v284 = v167 + v133;
  v168 = v136 + v167 + v133;
  v169 = sub_1E39DFFC8();
  v170 = *(v4 + v9);
  if (v169)
  {
    v171 = *(*v170 + 1784);

    v171(v172);
    OUTLINED_FUNCTION_6_19();

    OUTLINED_FUNCTION_30_1();
    (*(v173 + 152))(v313);

    v174 = *&v313[2];
    v175 = 0.0;
    if (v314)
    {
      v174 = 0.0;
    }

    v176 = v168 + v174;
    v177 = *(v4 + v294);
    if (v177)
    {
      OUTLINED_FUNCTION_0_76();
      v179 = *(v178 + 1976);

      v180 = v177;
      v179();
      OUTLINED_FUNCTION_6_19();

      v182 = (*(*v179 + 2288))(v181);
      v184 = v183;

      *&v185 = COERCE_DOUBLE(sub_1E4149DC0(v182, v184));
      if (v187)
      {
        [v180 vui:v58 sizeThatFits:1.79769313e308];
        v189 = v188;
        v191 = v190;
      }

      else
      {
        v189 = *&v185;
        v191 = v186;
      }

      OUTLINED_FUNCTION_0_76();
      v205 += 247;
      v206 = *v205;
      v207 = v205;

      (v206)(v208);
      OUTLINED_FUNCTION_6_19();

      v210 = (*v207)[57](v209);

      if (v210 == 7 || (LOBYTE(v315[0]) = v210, v318 = 4, sub_1E3793D00(), v213 = sub_1E4205E84(), v211.n128_u64[0] = 0, (v213 & 1) == 0))
      {
        v211.n128_f64[0] = (v58 - v189) * 0.5;
      }

      v211.n128_f64[0] = v281 + v211.n128_f64[0];
      v212.n128_f64[0] = v176;
      nullsub_1(v211, v212);
      v175 = v214;
      v198 = v215;
      v199 = v216;
      v166 = v217;
      OUTLINED_FUNCTION_36();
      v219 = *(v218 + 1976);

      v219(v220);
      OUTLINED_FUNCTION_6_19();

      OUTLINED_FUNCTION_30_1();
      (*(v221 + 152))(v315);

      if (v317)
      {
        v222 = 0;
      }

      else
      {
        v222 = *&v316;
      }

      v223 = sub_1E4149E00(v222, v317 & 1, v191);

      v197 = v176 + v223;
    }

    else
    {
      OUTLINED_FUNCTION_0_76();
      v201 = *(v200 + 1904);

      v201(v202);
      OUTLINED_FUNCTION_6_19();

      OUTLINED_FUNCTION_30_1();
      (*(v203 + 152))(v315);

      v204 = v316;
      if (v317)
      {
        v204 = 0.0;
      }

      v197 = v176 + v204;
      v198 = 0.0;
      v199 = 0.0;
    }
  }

  else
  {
    v192 = *(v4 + v287) != 0;
    v193 = *(*v170 + 2040);

    v194 = v193(v43, v192);

    v195 = *(v4 + v286);
    if (v195)
    {
      [v195 topMarginWithBaselineMargin_];
      v166 = v196;
    }

    v197 = v168 + v166;
    v175 = 0.0;
    v198 = 0.0;
    v199 = 0.0;
    v166 = 0.0;
  }

  if ((v288 & 1) == 0)
  {
    v224 = &OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageView;
    if (!v24)
    {
      v224 = &OBJC_IVAR____TtC8VideosUI15UpsellOfferView_coverArtImageView;
    }

    v225 = *(v4 + *v224);
    [v225 setFrame_];
    v235 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageView);
    if (v235)
    {
      OUTLINED_FUNCTION_17_34(v235, v226, v227, v228, v229, v230, v231, v232, v269, v270, *&v272, *&v273, *&v274, *&v275, v276, v277, v278, *&v58, *&v280, *&v281, *v282, v282[4]);
    }

    v236 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_coverArtImageView);
    if (v236)
    {
      [v236 setHidden_];
    }

    v237 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentLogoView;
    v238 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentLogoView);
    if (v238)
    {
      OUTLINED_FUNCTION_17_34(v238, v226, v227, v228, v229, v230, v231, v232, v269, v270, *&v272, *&v273, *&v274, *&v275, v276, v277, v278, v279, *&v280, *&v281, *v282, v282[4]);
    }

    v239 = *&v306[v4];
    if (v239)
    {
      OUTLINED_FUNCTION_17_34(v239, v226, v227, v228, v229, v230, v231, v232, v269, v270, *&v272, *&v273, *&v274, *&v275, v276, v277, v278, v279, *&v280, *&v281, *v282, v282[4]);
      OUTLINED_FUNCTION_14_53();
      if (v240)
      {
        v241 = v240;
        if (v271)
        {
          v242 = [v4 vuiUserInterfaceStyle];
        }

        else
        {
          v242 = 2;
        }

        [v241 vui:v242 setOverrideUserInterfaceStyle:?];
      }
    }

    v243 = *(v4 + v237);
    if (v243)
    {
      [v243 setFrame_];
    }

    v244 = *&v306[v4];
    if (v244)
    {
      [v244 setFrame_];
    }

    if (*(v4 + v63))
    {
      v245 = OUTLINED_FUNCTION_20_36(v233, v234, *&v277);
      [v246 v247];
    }

    if (*(v4 + v287))
    {
      v248 = OUTLINED_FUNCTION_20_36(v233, v234, *&v276);
      [v249 v250];
    }

    v251 = *(v4 + v294);
    if (v251)
    {
      [v251 setFrame_];
    }

    v252 = *(v4 + v286);
    if (v252)
    {
      [v252 setFrame_];
    }

    v253 = *(v4 + v278);
    if (v253)
    {
      [v253 setFrame_];
    }

    if (v24)
    {
      if (*(v4 + v63) || *(v4 + v237) || (OUTLINED_FUNCTION_14_53(), v254))
      {
        v255 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_storedGradientView;
        swift_beginAccess();
        v256 = *(v4 + v255);
        if (v256)
        {
          v257 = *(v4 + v255);
        }

        else
        {
          v258 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
          v259 = [objc_opt_self() clearColor];
          [v258 setVuiBackgroundColor_];

          v260 = [v258 vuiLayer];
          if (v260)
          {
            v261 = v260;
            v262 = sub_1E38EC910();
            [v261 addSublayer_];
          }

          v263 = *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageView);
          if (v263)
          {
            [v263 vui:v258 addSubview:*(v4 + v255) oldView:?];
          }

          v264 = *(v4 + v255);
          *(v4 + v255) = v258;
          v257 = v258;

          v256 = 0;
          LOBYTE(v26) = v308;
        }

        v265 = v256;
        v266 = sub_1E38EC910();
        if (sub_1E373F630())
        {
          v267 = 184;
        }

        else
        {
          v268 = sub_1E373F630();
          v267 = 192;
          if (v268)
          {
            v267 = 184;
          }
        }

        v321.origin.y = v291;
        v321.origin.x = v289;
        v321.size.height = v290;
        v321.size.width = v293;
        [v257 setFrame_];
        [v257 bounds];
        [v266 setFrame_];
      }
    }
  }

  *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentWidth) = v285;
  *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentPrefersUberLayout) = v24;
  *(v4 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentIsAXEnabled) = v26;
LABEL_162:
  OUTLINED_FUNCTION_17_4();
}

id sub_1E38EF608()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_layout;
  type metadata accessor for UpsellOfferViewLayout();
  *(v0 + v2) = sub_1E38A8DF4();
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_debugUIOverlay) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentPrefersUberLayout) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentIsAXEnabled) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_upsellViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_coverArtImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_tagsView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contextImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_channelLogoView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_descriptionLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentWidth) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_storedGradientLayer) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_storedGradientView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentLogoView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentTextLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_presentingViewWidth) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15UpsellOfferView_containerHeight) = 0;
  v3 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v4, v5, v3, v0, ObjectType);
}

id sub_1E38EF764(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_layout;
  type metadata accessor for UpsellOfferViewLayout();
  *&v1[v4] = sub_1E38A8DF4();
  v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_debugUIOverlay] = 0;
  v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentPrefersUberLayout] = 2;
  v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentIsAXEnabled] = 2;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_upsellViewModel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_coverArtImageView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_tagsView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contextImageView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_channelLogoView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_descriptionLabel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageModel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_currentWidth] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_backgroundImageView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_storedGradientLayer] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_storedGradientView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentLogoView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_contentTextLabel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_presentingViewWidth] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15UpsellOfferView_containerHeight] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_1E38EF930(char a1)
{
  result = swift_beginAccess();
  *(v1 + 98) = a1;
  return result;
}

uint64_t sub_1E38EF97C()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    type metadata accessor for MonogramLayout();
    v1 = sub_1E4097BF8(0);
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t sub_1E38EFA34(char a1, char a2)
{
  *(v2 + 120) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 98) = a1;
  v4 = sub_1E3C2F9A0();
  v5 = *(* + 1752);
  v5();
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 2056))(2, 0);

  v8 = (v5)(v7);
  v9 = *sub_1E3E5FD88();
  v10 = *(*v8 + 680);
  v11 = v9;
  v10(v9);

  v13 = (v5)(v12);
  LOBYTE(v92) = 27;
  v98 = 19;
  v97 = 19;
  v96 = 17;
  v95 = 14;
  v94 = 14;
  sub_1E3C2FCB8(&v92, &v99);
  v92 = v99;
  v93 = WORD2(v99);
  v14 = OUTLINED_FUNCTION_18();
  (*(*v13 + 1600))(&v92, 48, v14 & 1, &qword_1F5D549D8);

  v16 = (v5)(v15);
  OUTLINED_FUNCTION_9_2();
  v18 = *(v17 + 1728);
  if (v18())
  {
    v19 = 5;
  }

  else
  {
    v19 = 1;
  }

  (*(*v16 + 1984))(v19);

  (v5)(v20);
  OUTLINED_FUNCTION_2_1();
  (*(v21 + 2080))(1, 0);

  (v5)(v22);
  OUTLINED_FUNCTION_2_1();
  (*(v23 + 2104))(0, 0);

  if ([objc_opt_self() isSUIEnabled])
  {
    v24 = a2;
    v5();
  }

  else
  {
    v25 = v18();
    v5();
    v24 = a2;
    if (v25)
    {
      v26 = *(MEMORY[0x1E69DDCE0] + 16);
      v99 = *MEMORY[0x1E69DDCE0];
      v100 = v26;
      goto LABEL_9;
    }
  }

  sub_1E3952C58();
  *&v99 = v27;
  *(&v99 + 1) = v28;
  *&v100 = v29;
  *(&v100 + 1) = v30;
LABEL_9:
  OUTLINED_FUNCTION_4_65();
  (*(v31 + 160))(&v99);

  OUTLINED_FUNCTION_9_2();
  v33 = *(v32 + 1776);
  v34 = v33();
  OUTLINED_FUNCTION_9_2();
  v36 = *(v35 + 1728);
  if (v36())
  {
    v37 = 5;
  }

  else
  {
    v37 = 1;
  }

  (*(*v34 + 1984))(v37);

  (v33)(v38);
  OUTLINED_FUNCTION_2_1();
  (*(v39 + 2056))(2, 0);

  v41 = (v33)(v40);
  v42 = *sub_1E3E5FDEC();
  v43 = *(*v41 + 680);
  v44 = v42;
  v43(v42);

  v46 = (v33)(v45);
  v47 = objc_opt_self();
  if ([v47 isMac])
  {
    v48 = 14;
  }

  else
  {
    v48 = 21;
  }

  (*(*v46 + 1696))(v48);

  if (![objc_opt_self() isSUIEnabled] && (v36() & 1) == 0 && (objc_msgSend(v47, sel_isPhone) & 1) == 0)
  {
    [v47 isPad];
  }

  v33();
  sub_1E3952C58();
  *&v99 = v49;
  *(&v99 + 1) = v50;
  *&v100 = v51;
  *(&v100 + 1) = v52;
  OUTLINED_FUNCTION_4_65();
  (*(v53 + 160))(&v99);

  (v33)(v54);
  OUTLINED_FUNCTION_2_1();
  (*(v55 + 2080))(1, 0);

  (v33)(v56);
  OUTLINED_FUNCTION_2_1();
  (*(v57 + 2104))(0, 0);

  type metadata accessor for MonogramLayout();
  *(v4 + 120) = sub_1E4097BF8(v24);

  OUTLINED_FUNCTION_9_2();
  if ((*(v58 + 1728))())
  {
    if (sub_1E38F07C0())
    {
      v59 = *sub_1E3E60480();
    }

    else
    {
      v59 = *sub_1E3E608EC();
    }

    OUTLINED_FUNCTION_111();
    v61 = *(v60 + 872);
    v62 = v59;
    v61(v59);
    OUTLINED_FUNCTION_9_2();
    (*(v63 + 1800))();
    sub_1E3952C58();
    *&v99 = v64;
    *(&v99 + 1) = v65;
    *&v100 = v66;
    *(&v100 + 1) = v67;
    OUTLINED_FUNCTION_4_65();
    (*(v68 + 160))(&v99);

    OUTLINED_FUNCTION_111();
    v69 += 225;
    v70 = *v69;
    (*v69)();
    OUTLINED_FUNCTION_2_1();
    (*(v71 + 1744))();

    v72 = OUTLINED_FUNCTION_5_65();
    v73(v72);

    (v70)(v74);
    OUTLINED_FUNCTION_2_1();
    (*(v75 + 1744))();

    v76 = OUTLINED_FUNCTION_5_65();
    v77(v76);
  }

  OUTLINED_FUNCTION_111();
  v79 = (*(v78 + 1824))();
  v80 = *sub_1E3E5FDEC();
  v81 = *(*v79 + 680);
  v82 = v80;
  v81(v80);

  OUTLINED_FUNCTION_9_2();
  v84 = (*(v83 + 1752))();
  sub_1E3C37CBC(v84, 23);

  OUTLINED_FUNCTION_9_2();
  v86 = (*(v85 + 1776))();
  sub_1E3C37CBC(v86, 15);

  OUTLINED_FUNCTION_9_2();
  v88 = (*(v87 + 1800))();
  sub_1E3C37CBC(v88, 41);

  OUTLINED_FUNCTION_9_2();
  v90 = (*(v89 + 1824))();
  sub_1E3C37CBC(v90, 31);

  return v4;
}

void sub_1E38F067C()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E38F06E4()
{
}

uint64_t sub_1E38F0724()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E38F076C()
{
  v0 = sub_1E38F0724();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

uint64_t sub_1E38F07C0()
{
  sub_1E38F0870();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

unint64_t sub_1E38F0870()
{
  result = qword_1ECF2D5F8;
  if (!qword_1ECF2D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D5F8);
  }

  return result;
}

uint64_t sub_1E38F08C4(void *a1)
{
  v1 = a1;

  return sub_1E4203644();
}

uint64_t sub_1E38F08EC()
{
  v0 = sub_1E4203654();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E38F0A08(0.0, 1.0);
  sub_1E38F0A08(0.0, 1.0);
  sub_1E38F0A08(0.0, 1.0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69814D8], v0);
  return sub_1E4203764();
}

void sub_1E38F0A08(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_1E38F0A80(0x20000000000001uLL);
  }
}

unint64_t sub_1E38F0A80(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1E69143D0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1E69143D0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E38F0B0C()
{
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI15ChannelLogoView_viewModel))
  {
    v7 = 0u;
    v8 = 0u;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8();
  v2 = *(v1 + 776);

  v2(&v7, v3, &unk_1F5D5CEF8, &off_1F5D5CD38);

  if (!*(&v8 + 1))
  {
LABEL_11:
    sub_1E325F748(&v7, &unk_1ECF296E0);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_1E4207784();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void *sub_1E38F0C20()
{
  v1 = OBJC_IVAR____TtC8VideosUI15ChannelLogoView____lazy_storage___appleTvImageView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI15ChannelLogoView____lazy_storage___appleTvImageView);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = v0;
    v5 = objc_opt_self();
    v6 = sub_1E4205ED4();
    v7 = [objc_opt_self() vui_videosUIBundle];
    v8 = [v5 vuiImageNamed:v6 inBundle:v7];

    if (v8)
    {
      v9 = [v8 vuiTemplateImage];
    }

    else
    {
      v9 = 0;
    }

    sub_1E38F1BD0();
    v10 = sub_1E38F0EA0(0.0, 0.0);
    if (v10)
    {
      v11 = v10;
      v12 = [objc_opt_self() makeImageViewWithResourceDescriptor:v10 existingView:0];
      if (v12)
      {
        v13 = v12;
        objc_opt_self();
        v3 = swift_dynamicCastObjCClass();
        if (v3)
        {
          if (*(v4 + OBJC_IVAR____TtC8VideosUI15ChannelLogoView_logoViewLayout))
          {
            OUTLINED_FUNCTION_8();
            v15 = *(v14 + 1760);

            v17 = v15(v16);

            v19 = (*(*v17 + 672))(v18);
          }

          else
          {
            v19 = 0;
          }

          [v3 _setTintColor_];
          v13 = v11;
        }

        else
        {
          v19 = v11;
        }

        v11 = v9;
        v9 = v19;
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

    v20 = *(v4 + v1);
    *(v4 + v1) = v3;
    v21 = v3;
    sub_1E329CC84(v20);
  }

  sub_1E34AF5F4(v2);
  return v3;
}

id sub_1E38F0EA0(double a1, double a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1E4205ED4();

  v6 = [v4 initWithResource:v5 size:{a1, a2}];

  return v6;
}

double sub_1E38F0F2C(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI15ChannelLogoView_channelImageView;
  v5 = *&v1[OBJC_IVAR____TtC8VideosUI15ChannelLogoView_channelImageView];
  width = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  if (v5)
  {
    [v5 vui_sizeThatFits_];
    v7 = v9;
    v8 = v10;
  }

  if (sub_1E38F0B0C() == 2)
  {
    height = 0.0;
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_7_70();
  if (v12)
  {
  }

  else
  {
    v13 = OUTLINED_FUNCTION_2_67();

    height = 0.0;
    if ((v13 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v14 = sub_1E38F0C20();
  v15 = 0.0;
  if (v14)
  {
    v16 = v14;
    v17 = v8;
    v18 = [v14 image];

    if (v18)
    {
      [v18 size];
      v20 = v19;
      v22 = v21;

      if (v20 > 0.0)
      {
        v23 = 0.0;
        v24 = 0.0;
        if (v22 > 0.0)
        {
          v15 = v22;
          v23 = v20;
          v24 = v20 / v22;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    v17 = v8;
  }

  v23 = 0.0;
  v24 = 0.0;
LABEL_15:
  v25 = *&v2[OBJC_IVAR____TtC8VideosUI15ChannelLogoView_logoViewLayout];
  if (v25)
  {
    v26 = *(*v25 + 1760);

    v28 = v26(v27);

    v29 = (*v28 + 304);
    v30 = *v29;

    v30(v31);
    OUTLINED_FUNCTION_3_63();
    if (v30)
    {
      OUTLINED_FUNCTION_8();
      v33 = *(v32 + 200);
      v34 = v32 - 56;

      (*&v33)(v35);
      OUTLINED_FUNCTION_3_63();
      v36 = v33 / v24;
      if (v24 <= 0.0)
      {
        v36 = v15;
      }

      if (v34)
      {
        v37 = v15;
      }

      else
      {
        v37 = v36;
      }

      if (v34)
      {
        width = v23;
      }

      else
      {
        width = v33;
      }
    }

    else
    {
      v37 = *&v29;
      width = v24 * *&v29;
    }

    OUTLINED_FUNCTION_8();
    v38 += 44;
    v39 = *v38;
    v40 = v38;

    (*&v39)(v41);
    OUTLINED_FUNCTION_3_63();
    if (v40)
    {
      v15 = v37;
    }

    else
    {
      v15 = v39;
    }

    OUTLINED_FUNCTION_8();
    v43 = *(v42 + 248);
    v44 = v42 - 8;

    v43(v45);
    OUTLINED_FUNCTION_3_63();
    v8 = v17;
    if (v44)
    {
      v23 = width;
    }

    else
    {
      v23 = *&v43;
    }

    height = v37;
  }

  else
  {
    width = v23;
    v8 = v17;
    height = v15;
  }

  v75.width = width;
  v75.height = height;
  v77.width = v23;
  v77.height = v15;
  if (!CGSizeEqualToSize(v75, v77))
  {
    v79.origin.x = 0.0;
    v79.origin.y = 0.0;
    v76.width = width;
    v76.height = height;
    v79.size.width = v23;
    v79.size.height = v15;
    v78 = AVMakeRectWithAspectRatioInsideRect(v76, v79);
    width = v78.size.width;
    height = v78.size.height;
  }

LABEL_37:
  v46 = OBJC_IVAR____TtC8VideosUI15ChannelLogoView_logoViewLayout;
  if (!*&v2[OBJC_IVAR____TtC8VideosUI15ChannelLogoView_logoViewLayout])
  {
    v51 = 0.0;
    v52 = 0.0;
LABEL_50:
    v58 = 0.0;
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_8();
  v47 += 44;
  v48 = *v47;
  v49 = v47;

  (*&v48)(v50);
  OUTLINED_FUNCTION_3_63();
  v51 = 0.0;
  if (v49)
  {
    v52 = 0.0;
  }

  else
  {
    v52 = v48;
  }

  if (!*&v2[v46])
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_8();
  v54 = *(v53 + 1736);

  v56 = v54(v55);

  (*(*v56 + 152))(v71, v57);

  v58 = 0.0;
  if (v72)
  {
    v51 = 0.0;
  }

  else
  {
    v51 = *&v71[2];
  }

  if (*&v2[v46])
  {
    OUTLINED_FUNCTION_8();
    v60 = *(v59 + 1760);

    v62 = v60(v61);

    (*(*v62 + 152))(v73, v63);

    v58 = v73[0];
    if (v74)
    {
      v58 = 0.0;
    }
  }

LABEL_51:
  v64 = fmax(v51, v58);
  if (v52 < v8 + height + v64)
  {
    v7 = v7 / v8 * (v52 - height - v64);
  }

  if (v7 > width)
  {
    v65 = v7;
  }

  else
  {
    v65 = width;
  }

  VUIRoundValue();
  VUIRoundValue();
  VUIRoundValue();
  if (height == 0.0)
  {
    if (a1)
    {
      return v65;
    }
  }

  else if (a1)
  {
    return v65;
  }

  v66 = *&v2[v4];
  if (v66)
  {
    v67 = v66;
    [v2 bounds];
    [v2 vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v67 setFrame_];
  }

  v68 = sub_1E38F0C20();
  if (v68)
  {
    v69 = v68;
    [v2 bounds];
    [v2 vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v69 setFrame_];
  }

  return v65;
}

void *sub_1E38F15E4(void *result, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC8VideosUI15ChannelLogoView_viewModel;
  v5 = *&v2[OBJC_IVAR____TtC8VideosUI15ChannelLogoView_viewModel];
  if (v5)
  {
    v6 = v5 == result;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v8 = result;
    result = (*(*result + 488))(result);
    if (result)
    {
      v9 = result;
      if (result[2])
      {
        *&v3[v4] = v8;

        OUTLINED_FUNCTION_8();
        v11 = *(v10 + 392);

        if (v11(v12))
        {
          type metadata accessor for ChannelLogoViewLayout();
          v13 = swift_dynamicCastClass();
          if (!v13)
          {
          }
        }

        else
        {
          v13 = 0;
        }

        v37[0] = v13;
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D600);
        sub_1E4148C68(sub_1E38F198C, v14, v36);

        *&v3[OBJC_IVAR____TtC8VideosUI15ChannelLogoView_logoViewLayout] = v36[0];

        v15 = sub_1E373E010(39, v9);

        if (v15)
        {
          type metadata accessor for ImageViewModel();
          v16 = swift_dynamicCastClass();
          if (!v16)
          {
          }

          v17 = v16;

          v18 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
          v19 = *&v3[OBJC_IVAR____TtC8VideosUI15ChannelLogoView_channelImageView];
          v20 = *(a2 + 72);
          if (v20 == 1)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v37[1] = 0;
            v37[2] = 0;
          }

          else
          {
            v24 = *(a2 + 80);
            v21 = swift_allocObject();
            memcpy((v21 + 16), a2, 0x48uLL);
            *(v21 + 88) = v20;
            *(v21 + 96) = v24;
            v23 = &off_1F5D868A0;
            v22 = &unk_1F5D869A0;
          }

          v37[0] = v21;
          v37[3] = v22;
          v37[4] = v23;
          v25 = v19;
          v26 = v18;
          sub_1E38F1B60(a2, v36);
          v27 = sub_1E393D9C4(v17, v19, v37, 0);

          sub_1E325F748(v37, &qword_1ECF296C0);
          if (!v27)
          {
LABEL_30:
          }

          v28 = *&v3[OBJC_IVAR____TtC8VideosUI15ChannelLogoView_channelImageView];
          *&v3[OBJC_IVAR____TtC8VideosUI15ChannelLogoView_channelImageView] = v27;
          v29 = OBJC_IVAR____TtC8VideosUI15ChannelLogoView_channelImageView;
          v30 = *&v3[OBJC_IVAR____TtC8VideosUI15ChannelLogoView_channelImageView];
          v31 = v27;
          [v3 vui:v30 addSubview:v28 oldView:?];
          if (sub_1E38F0B0C() == 2)
          {
            goto LABEL_26;
          }

          OUTLINED_FUNCTION_7_70();
          if (v32)
          {
          }

          else
          {
            v33 = OUTLINED_FUNCTION_2_67();

            if ((v33 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          if (*&v3[v29])
          {
            v34 = sub_1E38F0C20();
            [v3 vui:v34 addSubview:0 oldView:?];
            goto LABEL_28;
          }

LABEL_26:
          v35 = sub_1E38F0C20();
          if (!v35)
          {
LABEL_29:

            goto LABEL_30;
          }

          v34 = v35;
          [v35 removeFromSuperview];
LABEL_28:

          goto LABEL_29;
        }
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1E38F198C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ChannelLogoViewLayout();
  result = sub_1E3E390C4();
  *a1 = result;
  return result;
}

id sub_1E38F19C0()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  OUTLINED_FUNCTION_0_77(&OBJC_IVAR____TtC8VideosUI15ChannelLogoView_viewModel);
  v0 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v1, v2, v0);
}

id sub_1E38F1A3C(void *a1)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_0_77(&OBJC_IVAR____TtC8VideosUI15ChannelLogoView_viewModel);
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

uint64_t sub_1E38F1B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E38F1BD0()
{
  result = qword_1EE23AF98;
  if (!qword_1EE23AF98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AF98);
  }

  return result;
}

uint64_t sub_1E38F1C14()
{
  result = sub_1E38F1C3C(&unk_1F5D62F38);
  qword_1EE2AA888 = result;
  return result;
}

uint64_t sub_1E38F1C3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E37DA464();
  v4 = MEMORY[0x1E6910FA0](v2, &type metadata for LibMenuType, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_1E38F5470(&v9, *(a1 + v6++));
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

uint64_t *sub_1E38F1CD4()
{
  if (qword_1EE290B40 != -1)
  {
    OUTLINED_FUNCTION_1_87();
  }

  return &qword_1EE2AA888;
}

id sub_1E38F1D14@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_navigationBarTraits;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  *a1 = *v3;
  OUTLINED_FUNCTION_43_1(*(v3 + 8));
  *(a1 + 48) = v4;

  return v4;
}

void sub_1E38F1D8C(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  v15 = v7 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_navigationBarTraits;
  swift_beginAccess();
  v16 = *(v15 + 48);
  *v15 = a1;
  *(v15 + 8) = a2;
  *(v15 + 16) = a3;
  *(v15 + 24) = a4 & 1;
  *(v15 + 32) = a5;
  *(v15 + 40) = a6 & 1;
  *(v15 + 48) = a7;
}

void *sub_1E38F1E8C()
{
  v1 = OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_detailsViewController;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E38F1ED4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_detailsViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1E38F1F2C()
{
  v1 = OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController____lazy_storage___contentPresenter;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController____lazy_storage___contentPresenter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController____lazy_storage___contentPresenter);
  }

  else
  {
    v4 = [objc_allocWithZone(VUIViewControllerContentPresenter) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E38F2014(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_detailsViewController) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController____lazy_storage___contentPresenter) = 0;
  v12 = OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_contentView;
  *(v6 + v12) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_cancellables) = MEMORY[0x1E69E7CC0];
  *(v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_menuUpdateCancellable) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_menuItem) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_finishSetupContentPresenter) = 0;
  v13 = (v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_previousSafeAreaInsets);
  v14 = *(MEMORY[0x1E69DDCE0] + 16);
  *v13 = *MEMORY[0x1E69DDCE0];
  v13[1] = v14;
  *(v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_dataSourceManager) = a1;
  sub_1E327F454(a2, v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_source);
  *(v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_isRoot) = a6;
  if (a3)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v16 = objc_opt_self();

  v17 = [v16 isPad];
  v18 = 3;
  if ((v17 & a6) == 0)
  {
    v18 = v15;
  }

  v19 = v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_navigationBarTraits;
  *v19 = a3;
  *(v19 + 8) = v18;
  *(v19 + 16) = 0;
  *(v19 + 24) = 1;
  *(v19 + 32) = 0;
  *(v19 + 40) = 1;
  *(v19 + 48) = 0;
  v20 = (v6 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_navigationTitle);
  *v20 = a4;
  v20[1] = a5;
  type metadata accessor for LibraryDetailsContainerViewController();
  OUTLINED_FUNCTION_25();
  v23 = objc_msgSendSuper2(v21, v22);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v23;
}

void sub_1E38F21D8()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_detailsViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController____lazy_storage___contentPresenter) = 0;
  v1 = OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_contentView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_cancellables) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_menuUpdateCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_menuItem) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_finishSetupContentPresenter) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_previousSafeAreaInsets);
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  *v2 = *MEMORY[0x1E69DDCE0];
  v2[1] = v3;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E38F22D4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v29 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v35.receiver = v0;
  v35.super_class = type metadata accessor for LibraryDetailsContainerViewController();
  objc_msgSendSuper2(&v35, sel_viewWillAppear_, v2 & 1);
  OUTLINED_FUNCTION_21();
  (*(v9 + 208))(v30);
  v10 = v30[0];
  v11 = v30[1];
  v12 = v30[2];
  v13 = v31;
  v14 = v32;
  v15 = v33;
  v16 = v34;
  v17 = OUTLINED_FUNCTION_5_11();
  sub_1E3F6FED8(v0, v10, v11, v17, v12, v13, v14, v15, v16);

  if (*&v0[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_menuItem])
  {
    OUTLINED_FUNCTION_12_6();
    v19 = *(v18 + 256);

    if (v19(v20))
    {
      v21 = sub_1E324FBDC();
      (*(v4 + 16))(v8, v21, v29);

      v22 = sub_1E41FFC94();
      v23 = sub_1E4206814();

      if (os_log_type_enabled(v22, v23))
      {
        OUTLINED_FUNCTION_6_21();
        v24 = OUTLINED_FUNCTION_10_11();
        v30[0] = v24;
        *v13 = 136315138;
        sub_1E38F53C4();
        v25 = sub_1E4207944();
        v27 = sub_1E3270FC8(v25, v26, v30);

        *(v13 + 4) = v27;
        _os_log_impl(&dword_1E323F000, v22, v23, "LibraryDetailsContainerViewController:: will appear, fetch collection data for %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v4 + 8))(v8, v29);
      OUTLINED_FUNCTION_12_6();
      (*(v28 + 472))(0, 0);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38F2598()
{
  OUTLINED_FUNCTION_21();
  (*(v1 + 208))(v10);
  v2 = v10[0];
  v3 = v10[1];
  v4 = v10[2];
  v5 = v11;
  v6 = v12;
  v7 = v13;
  v9 = v14;
  v8 = OUTLINED_FUNCTION_5_11();
  sub_1E3F6FED8(v0, v2, v3, v8, v4, v5, v6, v7, v9);
}

uint64_t sub_1E38F26A8(char a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for LibraryDetailsContainerViewController();
  objc_msgSendSuper2(&v15, sel_viewWillDisappear_, a1 & 1);
  sub_1E3F6FD54(v1, v14);
  OUTLINED_FUNCTION_7_71(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14[0]);
  OUTLINED_FUNCTION_21();
  return (*(v11 + 216))();
}

uint64_t sub_1E38F2728()
{
  sub_1E3F6FD54(v0, v13);
  OUTLINED_FUNCTION_7_71(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13[0]);
  OUTLINED_FUNCTION_21();
  v10 = *(v9 + 216);

  return v10();
}

void sub_1E38F27D4(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for LibraryDetailsContainerViewController();
  objc_msgSendSuper2(&v9, sel_viewDidAppear_, a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 interactivePopGestureRecognizer];

    if (v5)
    {
      [v5 setEnabled_];
    }
  }

  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 interactivePopGestureRecognizer];

    if (v8)
    {
      [v8 setDelegate_];
    }
  }
}

void sub_1E38F2918()
{
  v1 = v0;
  v32.receiver = v0;
  v32.super_class = type metadata accessor for LibraryDetailsContainerViewController();
  objc_msgSendSuper2(&v32, sel_viewSafeAreaInsetsDidChange);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  [v2 safeAreaInsets];
  v30 = v4;
  v31 = v5;
  v27 = v6;
  v29 = v7;

  if ([objc_opt_self() isPad])
  {
    if (v1[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_isRoot] == 1)
    {
      v8 = &v1[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_previousSafeAreaInsets];
      v9.f64[0] = v30;
      v9.f64[1] = v31;
      v10.f64[0] = v27;
      v10.f64[1] = v29;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, *&v1[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_previousSafeAreaInsets]), vceqq_f64(v10, *&v1[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_previousSafeAreaInsets + 16])))) & 1) == 0)
      {
        v11 = OUTLINED_FUNCTION_30_19();
        if (v11)
        {
          v12 = v11;
          [v11 safeAreaInsets];

          v13 = OUTLINED_FUNCTION_30_19();
          if (v13)
          {
            v14 = v13;
            [v13 safeAreaInsets];

            if (OUTLINED_FUNCTION_30_19())
            {
              OUTLINED_FUNCTION_106();
              type metadata accessor for LayoutGrid();
              [v14 bounds];
              v16 = v15;
              v18 = v17;
              v20 = v19;
              v22 = v21;

              v33.origin.x = v16;
              v33.origin.y = v18;
              v33.size.width = v20;
              v33.size.height = v22;
              Width = CGRectGetWidth(v33);
              sub_1E3A258E4(Width);
              v24 = OUTLINED_FUNCTION_30_19();
              if (v24)
              {
                v25 = v24;
                [v24 vuiIsRTL];

                v26 = [v1 navigationItem];
                [v26 _titleMinimumMargins];
                [v26 _setTitleMinimumMargins_];

                *v8 = v30;
                v8[1] = v31;
                *(v8 + 2) = v28;
                v8[3] = v29;
                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }
  }
}

id sub_1E38F2BB4()
{
  v1 = v0;
  v41.receiver = v0;
  v41.super_class = type metadata accessor for LibraryDetailsContainerViewController();
  objc_msgSendSuper2(&v41, sel_viewDidLoad);
  v2 = sub_1E38F1F2C();
  result = [v1 view];
  if (result)
  {
    v4 = result;
    [v2 setRootView_];

    v5 = *(v1 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController____lazy_storage___contentPresenter);
    v6 = sub_1E4205ED4();
    [v5 setLogName_];

    v7 = [objc_opt_self() sharedInstance];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1E38F1F2C();
      [v9 setContentView_];

      v10 = OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController____lazy_storage___contentPresenter;
      v11 = "LIBRARY_EMPTY_DESCRIPTION_NEW";
      v12 = *(v1 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController____lazy_storage___contentPresenter);
      v13 = OUTLINED_FUNCTION_20_37();
      if (v14)
      {
        sub_1E4205ED4();
        v13 = OUTLINED_FUNCTION_18_31();
      }

      else
      {
        v11 = 0;
      }

      OUTLINED_FUNCTION_19_36(v13, sel_setLoadingMessage_);

      v15 = "LIBRARY_LOADING_MESSAGE";
      v16 = *(v1 + v10);
      v17 = OUTLINED_FUNCTION_31_23(0xD000000000000015);
      if (v18)
      {
        sub_1E4205ED4();
        v17 = OUTLINED_FUNCTION_18_31();
      }

      else
      {
        v15 = 0;
      }

      OUTLINED_FUNCTION_19_36(v17, sel_setLoadingTitle_);

      v19 = "LIBRARY_LOADING_TITLE";
      v20 = *(v1 + v10);
      v21 = OUTLINED_FUNCTION_31_23(0xD000000000000021);
      if (v22)
      {
        sub_1E4205ED4();
        v21 = OUTLINED_FUNCTION_18_31();
      }

      else
      {
        v19 = 0;
      }

      OUTLINED_FUNCTION_19_36(v21, sel_setCloudUpdateFailedTitle_);

      v23 = "DATE_FAILED_TITLE";
      v24 = *(v1 + v10);
      v25 = OUTLINED_FUNCTION_31_23(0xD000000000000023);
      if (v26)
      {
        sub_1E4205ED4();
        v25 = OUTLINED_FUNCTION_18_31();
      }

      else
      {
        v23 = 0;
      }

      OUTLINED_FUNCTION_19_36(v25, sel_setCloudUpdateFailedMessage_);

      v27 = "LIBRARY_NO_MOVIES_MESSAGE";
      v28 = *(v1 + v10);
      v29 = OUTLINED_FUNCTION_20_37();
      if (v30)
      {
        sub_1E4205ED4();
        v29 = OUTLINED_FUNCTION_18_31();
      }

      else
      {
        v27 = 0;
      }

      OUTLINED_FUNCTION_19_36(v29, sel_setNoContentErrorTitle_);

      v31 = "LIBRARY_EMPTY_TITLE_NEW";
      v32 = *(v1 + v10);
      v33 = OUTLINED_FUNCTION_31_23(0xD00000000000001DLL);
      if (v34)
      {
        sub_1E4205ED4();
        v33 = OUTLINED_FUNCTION_18_31();
      }

      else
      {
        v31 = 0;
      }

      OUTLINED_FUNCTION_19_36(v33, sel_setNoContentErrorMessage_);
    }

    result = sub_1E38F2FBC();
    *(v1 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_finishSetupContentPresenter) = 1;
    v35 = *(v1 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_menuItem);
    if (v35)
    {
      v36 = *(*v35 + 256);

      LOBYTE(v36) = v36(v37);
      OUTLINED_FUNCTION_21_6();
      v39 = *(v38 + 216);

      LOBYTE(v39) = v39(v40);

      (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))(v35, v36 & 1, v39 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E38F2FBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12[-v5 - 8];
  sub_1E327F454(v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_source, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
  OUTLINED_FUNCTION_106();
  type metadata accessor for LibLocalSource();
  result = swift_dynamicCast();
  if (result)
  {

    OUTLINED_FUNCTION_21_6();
    v9 = *(v8 + 240);

    v9(v10);

    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E32752B0(&unk_1EE28A0D0, &qword_1ECF3D8F0);
    sub_1E4200844();
    OUTLINED_FUNCTION_16_5();

    (*(v3 + 8))(v6, v1);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32580);
    sub_1E32752B0(&qword_1EE23B5E0, &qword_1ECF32580);
    sub_1E42004D4();
    swift_endAccess();
  }

  return result;
}

void sub_1E38F3264()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for LibraryDetailsContainerViewController();
  objc_msgSendSuper2(&v10, sel_viewWillLayoutSubviews);
  v1 = sub_1E38F1F2C();
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 bounds];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_18_28(v1, sel_configureCurrentViewFrameForBounds_);
  OUTLINED_FUNCTION_21();
  v5 = (*(v4 + 232))();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = [v5 view];

  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [v0 view];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 bounds];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_18_28(v7, sel_setFrame_);
}

void sub_1E38F33F8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  if (qword_1EE290B40 != -1)
  {
    OUTLINED_FUNCTION_1_87();
  }

  v84 = v6[32];
  if (sub_1E37D7DAC(v84, qword_1EE2AA888))
  {
    v83 = v4;
    *&v0[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_menuItem] = v6;

    sub_1E324FBDC();
    OUTLINED_FUNCTION_12_7();
    v14(v13);
    swift_retain_n();
    v15 = v0;
    v16 = sub_1E41FFC94();
    v17 = sub_1E4206814();
    if (os_log_type_enabled(v16, v17))
    {
      v81 = v15;
      v82 = v2;
      v18 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v18 = 136316418;
      sub_1E3A8ADF4(v84);
      v21 = sub_1E3270FC8(v19, v20, v86);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      v22 = sub_1E41E1364(v6);
      v24 = sub_1E3270FC8(v22, v23, v86);

      *(v18 + 14) = v24;
      *(v18 + 22) = 1024;
      v26 = (*(*v6 + 256))(v25);

      *(v18 + 24) = v26 & 1;

      *(v18 + 28) = 2048;
      v28 = (*(*v6 + 312))(v27);
      if (v28)
      {
        v29 = sub_1E3798694(v28);
      }

      else
      {

        v29 = 0;
      }

      *(v18 + 30) = v29;

      *(v18 + 38) = 1024;
      v30 = v81;
      v32 = v81[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_finishSetupContentPresenter];

      *(v18 + 40) = v32;
      *(v18 + 44) = 1024;
      v31 = v83;
      *(v18 + 46) = v83 & 1;
      _os_log_impl(&dword_1E323F000, v16, v17, "    LibraryDetailsContainerViewController::configureWithMenuItem %s\n    address %s\n    collection need update %{BOOL}d\n    collection count %ld\n    view finished setting up %{BOOL}d\n    fetchCollectionImmediately %{BOOL}d", v18, 0x32u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v9 + 8))(v13, v7);
      v2 = v82;
    }

    else
    {

      (*(v9 + 8))(v13, v7);
      v30 = v15;
      v31 = v83;
    }

    if (v30[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_finishSetupContentPresenter] == 1)
    {
      v33 = sub_1E38F1F2C();
      [v33 setCurrentContentViewType_];

      sub_1E38F3DFC();
      v34 = [objc_opt_self() sharedInstance];
      if (!v34)
      {
        goto LABEL_34;
      }

      v35 = v34;
      if (sub_1E38BBD0C())
      {
        v36 = v30;
        v37 = sub_1E38F1F2C();
        v38 = OUTLINED_FUNCTION_17_35("LIBRARY_EMPTY_TITLE_NEW");
        if (v39)
        {
          sub_1E4205ED4();
          OUTLINED_FUNCTION_16_5();
        }

        else
        {
          v36 = 0;
        }

        OUTLINED_FUNCTION_2_34(v38, sel_setNoContentErrorTitle_);

        OUTLINED_FUNCTION_11_49();
        v49 = "LIBRARY_EMPTY_TITLE_NEW";
        v51 = v50;
        v52 = 0xD00000000000001DLL;
      }

      else if (sub_1E38BBD0C())
      {
        v40 = v30;
        v41 = sub_1E38F1F2C();
        v42 = OUTLINED_FUNCTION_17_35("LIBRARY_NO_MOVIES_TITLE");
        if (v43)
        {
          sub_1E4205ED4();
          OUTLINED_FUNCTION_16_5();
        }

        else
        {
          v40 = 0;
        }

        OUTLINED_FUNCTION_2_34(v42, sel_setNoContentErrorTitle_);

        OUTLINED_FUNCTION_11_49();
        v49 = "LIBRARY_NO_MOVIES_TITLE";
        v51 = v55;
        v52 = 0xD000000000000019;
      }

      else
      {
        v44 = sub_1E38BBD0C();
        v45 = v30;
        v46 = sub_1E38F1F2C();
        if ((v44 & 1) == 0)
        {
          v53 = sub_1E3741090(0xD000000000000021, 0x80000001E4267010, v35);
          if (v54)
          {
            sub_1E4205ED4();
            OUTLINED_FUNCTION_16_5();
          }

          else
          {
            v45 = 0;
          }

          v31 = v83;
          OUTLINED_FUNCTION_2_34(v53, sel_setNoContentErrorTitle_);

          OUTLINED_FUNCTION_11_49();
          v58 = v80;
          sub_1E37FB7F0(0, 0xE000000000000000, v58, &selRef_setNoContentErrorMessage_);
          goto LABEL_33;
        }

        v47 = sub_1E3741090(0xD000000000000019, 0x80000001E4267040, v35);
        if (v48)
        {
          sub_1E4205ED4();
          OUTLINED_FUNCTION_16_5();
        }

        else
        {
          v45 = 0;
        }

        OUTLINED_FUNCTION_2_34(v47, sel_setNoContentErrorTitle_);

        OUTLINED_FUNCTION_11_49();
        v49 = "LIBRARY_NO_TV_SHOWS_TITLE";
        v51 = v56;
        v52 = 0xD00000000000001BLL;
      }

      sub_1E3741090(v52, v49 | 0x8000000000000000, v35);
      if (v57)
      {
        v58 = sub_1E4205ED4();
      }

      else
      {
        v58 = 0;
      }

      v31 = v83;
      [v51 setNoContentErrorMessage_];

LABEL_33:
LABEL_34:
      if (v31)
      {
        OUTLINED_FUNCTION_12_6();
        (*(v59 + 472))(0, 0);
      }

      if (sub_1E38BBD0C())
      {
        v60 = *(**&v30[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_dataSourceManager] + 672);

        v62 = v60(v61);

        sub_1E37D9AD0(v62, v86);

        if (v87)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
          OUTLINED_FUNCTION_106();
          v63 = type metadata accessor for LibLocalSource();
          if (swift_dynamicCast())
          {
            if (v2)
            {
              OUTLINED_FUNCTION_11_49();
              v65 = v64;
              [v65 setCurrentContentViewType_];
            }

            else
            {
              type metadata accessor for LibDataSourceManager();
              v87 = v63;
              v88 = sub_1E38F5418();
              v86[0] = v85;
              v74 = v85;
              v75 = sub_1E3B7D288(v86);
              __swift_destroy_boxed_opaque_existential_1(v86);
              OUTLINED_FUNCTION_11_49();
              v77 = v76;
              v78 = v77;
              if (v75)
              {
                v79 = 4;
              }

              else
              {
                v79 = 2;
              }

              [v77 setCurrentContentViewType_];
            }
          }
        }

        else
        {
          sub_1E325F748(v86, &unk_1ECF2A740);
        }

        goto LABEL_55;
      }

      OUTLINED_FUNCTION_12_6();
      v86[0] = (*(v66 + 312))();
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D158);
      sub_1E32752B0(&qword_1EE23B5A0, &qword_1ECF2CFF8);
      v68 = sub_1E4149048(v67);

      if (v68)
      {
        type metadata accessor for LibMenuItem();
        if (sub_1E3A8BA7C(v84))
        {
          OUTLINED_FUNCTION_12_6();
          v70 = (*(v69 + 256))();
          v71 = *&v30[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController____lazy_storage___contentPresenter];
          if ((v70 & 1) == 0)
          {
            v72 = 2;
LABEL_51:
            [v71 setCurrentContentViewType_];
            goto LABEL_55;
          }

LABEL_50:
          v72 = 1;
          goto LABEL_51;
        }
      }

      v73 = *(**sub_1E3B7B1C8() + 808);

      v73(v86, v6);

      if (v87)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
        type metadata accessor for LibMPSource();
        if (swift_dynamicCast())
        {

          if (v2)
          {
            LOBYTE(v86[0]) = v84;
            sub_1E37DA4B8();
            if ((sub_1E4205E84() & 1) == 0)
            {
              v71 = *&v30[OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController____lazy_storage___contentPresenter];
              goto LABEL_50;
            }
          }
        }
      }

      else
      {
        sub_1E325F748(v86, &unk_1ECF2A740);
      }

      sub_1E38F40E4(v6);
    }
  }

LABEL_55:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38F3DFC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_menuUpdateCancellable;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_menuUpdateCancellable))
  {

    sub_1E42004E4();
  }

  v12 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v12, v4);

  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();

  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_6_21();
    v24 = v11;
    v15 = OUTLINED_FUNCTION_10_11();
    v25 = v15;
    *v1 = 136315138;
    v16 = sub_1E41E1364(v3);
    v18 = sub_1E3270FC8(v16, v17, &v25);

    *(v1 + 4) = v18;
    _os_log_impl(&dword_1E323F000, v13, v14, "LibraryDetailsContainerViewController:: observe menu collection update for %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v11 = v24;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v19 = (*(v6 + 8))(v10, v4);
  v25 = (*(*v3 + 360))(v19);
  OUTLINED_FUNCTION_4_0();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_4_0();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D620);
  sub_1E32752B0(&qword_1EE28A1F8, &qword_1ECF2D620);
  v23 = sub_1E4200844();

  *(v1 + v11) = v23;

  OUTLINED_FUNCTION_25_2();
}

id sub_1E38F40E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v75 - v11;
  v13 = *(**(v1 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_dataSourceManager) + 696);

  v15 = v13(v14);

  sub_1E3B70934();
  v17 = v16;

  v77 = v17;
  if (v17)
  {
    v18 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    v19 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE8);
    v20 = *v18;
    v21 = v19();
    v22 = sub_1E3D9DBC0(v77);

    sub_1E324FBDC();
    OUTLINED_FUNCTION_12_7();
    v23(v12);
    v24 = v22;
    v25 = sub_1E41FFC94();
    v26 = sub_1E4206814();
    v27 = v24;

    if (os_log_type_enabled(v25, v26))
    {
      v28 = OUTLINED_FUNCTION_6_21();
      v76 = a1;
      v29 = v28;
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v27;
      *v30 = v22;
      v31 = v27;
      _os_log_impl(&dword_1E323F000, v25, v26, "LibraryDetailsContainerViewController:: details view controller %@", v29, 0xCu);
      sub_1E325F748(v30, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      a1 = v76;
      OUTLINED_FUNCTION_6_0();
    }

    v32 = (*(v6 + 8))(v12, v4);
    if (*(v2 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_navigationTitle + 8))
    {
      v33 = *(v2 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_navigationTitle);
      v34 = *(v2 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_navigationTitle + 8);
      v35 = v27;
    }

    else
    {
      v44 = (*(*a1 + 200))(v32);
      v35 = v27;
      if (v45)
      {
        v33 = v44;
        v34 = v45;
      }

      else
      {
        v33 = *(a1 + 40);
        v34 = *(a1 + 48);
      }
    }

    v46 = MEMORY[0x1E69E7D40];

    sub_1E37FB7F0(v33, v34, v2, &selRef_setVuiTitle_);
    if (!v22)
    {
      goto LABEL_22;
    }

    v47 = *((*v46 & *v2) + 0xE8);
    v48 = v35;
    v49 = v47();
    if (v49)
    {
      v50 = v49;
      [v49 willMoveToParentViewController_];
      result = [v50 view];
      if (!result)
      {
LABEL_26:
        __break(1u);
        return result;
      }

      v51 = result;
      [result removeFromSuperview];

      [v50 removeFromParentViewController];
    }

    v52 = OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_detailsViewController;
    swift_beginAccess();
    v53 = *(v2 + v52);
    *(v2 + v52) = v22;
    v54 = v48;

    [v2 addChildViewController_];
    result = [v54 view];
    if (result)
    {
      v55 = result;
      result = [v2 view];
      if (result)
      {
        v56 = result;
        [result bounds];
        OUTLINED_FUNCTION_3();

        OUTLINED_FUNCTION_18_28(v55, sel_setFrame_);
        v57 = *(v2 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_contentView);
        result = [v54 view];
        if (result)
        {
          v58 = result;
          [v57 addSubview_];

          [v54 didMoveToParentViewController_];
          v59 = sub_1E38F1F2C();
          [v59 setCurrentContentViewType_];

          type metadata accessor for StackTemplateController();
          v60 = swift_dynamicCastClass();
          if (v60)
          {
            v61 = *((*v46 & *v60) + 0x1B8);
            v62 = v54;
            v63 = v61();

            type metadata accessor for Accessibility();
            v64 = v63;
            v65 = v77;

            sub_1E40A91FC(v63, 5, v65);
          }

          else
          {
          }

LABEL_22:
          type metadata accessor for LibCommons();
          v66 = sub_1E41A3164();
          v68 = v67;
          type metadata accessor for Metrics();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4299720;
          *(inited + 32) = sub_1E4205F14();
          *(inited + 40) = v70;
          v71 = MEMORY[0x1E69E6158];
          *(inited + 72) = MEMORY[0x1E69E6158];
          *(inited + 48) = v66;
          *(inited + 56) = v68;
          *(inited + 80) = sub_1E4205F14();
          *(inited + 88) = v72;
          *(inited + 120) = v71;
          *(inited + 96) = v66;
          *(inited + 104) = v68;

          v73 = sub_1E4205CB4();
          v74 = *sub_1E3BA5560(v73, 1);
          (*(v74 + 296))();
        }

        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_12_7();
  v36(v9);

  v37 = sub_1E41FFC94();
  v38 = sub_1E4206814();

  if (os_log_type_enabled(v37, v38))
  {
    OUTLINED_FUNCTION_6_21();
    v39 = OUTLINED_FUNCTION_10_11();
    v79[0] = v39;
    *v15 = 136315138;
    v78 = *(a1 + 32);
    sub_1E38F53C4();
    v40 = sub_1E4207944();
    v42 = sub_1E3270FC8(v40, v41, v79);

    *(v15 + 4) = v42;
    _os_log_impl(&dword_1E323F000, v37, v38, "LibraryDetailsContainerViewController::failed to create template view model from menu %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  return (*(v6 + 8))(v9, v4);
}

id sub_1E38F4938()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryDetailsContainerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E38F4A2C()
{
  result = [v0 vuiView];
  if (result)
  {
    v2 = result;
    v3 = sub_1E4206ED4();

    if (v3)
    {
      v4 = v3;
      sub_1E3D79C84();

      v5 = sub_1E4206ED4();

      if (v5)
      {

        return v5;
      }
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E38F4B74()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_106();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = *v0;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_dataSourceManager);

    v12 = (*(*v11 + 408))();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_1E324FBDC();
  (*(v3 + 16))(v7, v13, v1);

  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();

  v16 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  if (os_log_type_enabled(v14, v15))
  {
    v34 = v1;
    v17 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v17 = 67109634;
    *(v17 + 4) = v8;
    *(v17 + 8) = 2080;
    v35 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D628);
    v18 = sub_1E4205F84();
    v20 = sub_1E3270FC8(v18, v19, v36);

    *(v17 + 10) = v20;
    *(v17 + 18) = 2080;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v23 = *(v21 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_menuItem);

      if (v23)
      {
      }
    }

    v24 = sub_1E4205F84();
    v26 = sub_1E3270FC8(v24, v25, v36);

    *(v17 + 20) = v26;
    _os_log_impl(&dword_1E323F000, v14, v15, "LibraryDetailsContainerViewController:: new library loading status %{BOOL}d\ncurrent selected menu %s\ncurrent display menu %s", v17, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v3 + 8))(v7, v34);
    v8 = v35;
    v16 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  }

  else
  {

    (*(v3 + 8))(v7, v1);
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = v27;
    v29 = *(v27 + v16[32]);

    if (v29)
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v30 = swift_unknownObjectWeakLoadStrong();
      if (v30)
      {
        v31 = v30;
        if (v12)
        {
          v32 = v29 == v12;
        }

        else
        {
          v32 = 0;
        }

        v33 = v32;
        (*((*MEMORY[0x1E69E7D40] & *v30) + 0x1C8))(v29, v33, v8);
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38F4F74()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = sub_1E324FBDC();
      (*(v2 + 16))(v6, v11, v0);

      v12 = sub_1E41FFC94();
      v13 = sub_1E4206814();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = OUTLINED_FUNCTION_6_21();
        v21 = swift_slowAlloc();
        v22 = v21;
        *v14 = 136315138;
        sub_1E38F53C4();
        v15 = sub_1E4207944();
        v17 = sub_1E3270FC8(v15, v16, &v22);

        *(v14 + 4) = v17;
        _os_log_impl(&dword_1E323F000, v12, v13, "LibraryDetailsContainerViewController:: configure menu item %s when collection updated", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v2 + 8))(v6, v0);
      OUTLINED_FUNCTION_21_6();
      v19 = *(v18 + 216);

      LOBYTE(v19) = v19(v20);

      (*((*MEMORY[0x1E69E7D40] & *v8) + 0x1C8))(v10, 0, v19 & 1);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38F5214(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_21();
  (*(v2 + 208))(&v5);
  v3 = v6;
  *a1 = v5;
  OUTLINED_FUNCTION_43_1(v3);
  *(a1 + 48) = v4;
}

void (*sub_1E38F52F0(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 224))();
  return sub_1E37BCF0C;
}

unint64_t sub_1E38F53C4()
{
  result = qword_1EE285ED0;
  if (!qword_1EE285ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE285ED0);
  }

  return result;
}

unint64_t sub_1E38F5418()
{
  result = qword_1EE282A78;
  if (!qword_1EE282A78)
  {
    type metadata accessor for LibLocalSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE282A78);
  }

  return result;
}

BOOL sub_1E38F5470(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1E37DA464();
  v5 = sub_1E4205DA4();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    v8 = (1 << (v5 & v6)) & *(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      sub_1E38F57F0(a2, v7, isUniquelyReferenced_nonNull_native);
      *v2 = v12;
      goto LABEL_7;
    }

    sub_1E37DA4B8();
    if (sub_1E4205E84())
    {
      break;
    }

    v5 = v7 + 1;
  }

  LOBYTE(a2) = *(*(v4 + 48) + v7);
LABEL_7:
  result = v8 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_1E38F559C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D638);
  result = sub_1E4207444();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

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
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1E373CBF0(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
    sub_1E37DA464();
    result = sub_1E4205DA4();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1E38F57F0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1E38F559C();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1E38F5A94();
LABEL_10:
      v12 = *v3;
      sub_1E37DA464();
      result = sub_1E4205DA4();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_1E37DA4B8();
        if (sub_1E4205E84())
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1E38F5954();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_1E38F5954()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D638);
  v2 = *v0;
  v3 = sub_1E4207434();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1E38F5A94()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D638);
  result = sub_1E4207444();
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
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + (v11 | (v5 << 6)));
        sub_1E37DA464();
        result = sub_1E4205DA4();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
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
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E38F5D2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 280) = a1;
  v8 = a1;
  v9 = sub_1E3B76D04(63, a2, a3, a4, 0, 0, 0);

  if (v9)
  {
  }

  return v9;
}

uint64_t sub_1E38F5DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1E38F5EA8();
  sub_1E327F454(a1, v15);
  sub_1E38F5EEC(a5, v14);
  v11 = sub_1E3BFF560(v15, v14);
  if (v11)
  {
    v12 = (*(v5 + 984))(v11, a2, a3, a4);

    sub_1E38F5F5C(a5);
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (v12)
    {
    }
  }

  else
  {

    sub_1E38F5F5C(a5);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return 0;
  }

  return v12;
}