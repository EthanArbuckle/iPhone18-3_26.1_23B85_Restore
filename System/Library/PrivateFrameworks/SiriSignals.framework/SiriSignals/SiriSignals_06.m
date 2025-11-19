uint64_t *sub_231509E78(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2315868E4();
  OUTLINED_FUNCTION_17_6(v10, v11, v12, v13, v14, v15, v16, v17, v141, v150, v159, v161, v170, v172, v174, v183, v192, *(&v192 + 1), v193, *(&v193 + 1), v194, v195, *(&v195 + 1), v196, v197, 0x4449656C646E7562, 0xE800000000000000, v199, *(&v199 + 1), v200, v201, *(&v201 + 1), v202, v203, v204);
  sub_2314D5E98(v207);
  if (!v205)
  {
    sub_2314CC1C4(&v204, &qword_27DD5B218, &unk_23158A010);
LABEL_7:
    if (qword_280D70420 != -1)
    {
      goto LABEL_101;
    }

    goto LABEL_8;
  }

  if ((OUTLINED_FUNCTION_8_9() & 1) == 0)
  {
    goto LABEL_7;
  }

  v18 = v198;

  v19 = sub_2315868E4();
  OUTLINED_FUNCTION_17_6(v19, v20, v21, v22, v23, v24, v25, v26, v142, v151, v160, v162, v171, v173, v175, v184, v192, *(&v192 + 1), v193, *(&v193 + 1), v194, v195, *(&v195 + 1), v196, v197, a2, a3, v199, *(&v199 + 1), v200, v201, *(&v201 + 1), v202, v203, v204);
  sub_2314D5E98(v207);
  if (OUTLINED_FUNCTION_8_9())
  {

    v27 = sub_2315868E4();
    OUTLINED_FUNCTION_17_6(v27, v28, v29, v30, v31, v32, v33, v34, v143, v152, v160, v163, v171, v173, v176, v185, v192, *(&v192 + 1), v193, *(&v193 + 1), v194, v195, *(&v195 + 1), v196, v197, a4, a5, v199, *(&v199 + 1), v200, v201, *(&v201 + 1), v202, v203, v204);
    sub_2314D5E98(v207);
    if (OUTLINED_FUNCTION_8_9())
    {
      return v18;
    }

    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v108 = sub_231585FF4();
    __swift_project_value_buffer(v108, qword_280D72248);

    v109 = sub_231585FE4();
    v110 = sub_2315865E4();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v211 = v112;
      *v111 = 136315394;
      v113 = sub_2314A22E8();
      OUTLINED_FUNCTION_20_6(v113);
      v114 = MEMORY[0x277D84F90];
      if (v18)
      {
        v148 = v112;
        v157 = v111;
        HIDWORD(v160) = v110;
        v168 = v109;
        OUTLINED_FUNCTION_9_12();
        sub_23152D7D4();
        v114 = v210;
        v115 = sub_23156C5C8(a1);
        v117 = v116;
        v181 = v18;
        v190 = a1 + 64;
        OUTLINED_FUNCTION_4_8();
        while ((v115 & 0x8000000000000000) == 0)
        {
          OUTLINED_FUNCTION_13_6();
          if (v57 == v58)
          {
            break;
          }

          OUTLINED_FUNCTION_3_9(v118, v119, v120, v121, v122, v123, v124, v125, v148, v157, v160, v168, v171, v173, v181, v190);
          if (v59)
          {
            goto LABEL_103;
          }

          if (*(a1 + 36) != v117)
          {
            goto LABEL_104;
          }

          OUTLINED_FUNCTION_18_6();
          OUTLINED_FUNCTION_22_6();
          OUTLINED_FUNCTION_7_8();
          sub_2314D6070(v18 + 5, v206);
          sub_2314D89D4(&v204, &v198);
          v192 = v198;
          v193 = v199;
          v194 = v200;
          sub_2314D6070(&v201, &v195);
          sub_2314D6014(&v192, v209);
          v18 = &qword_27DD5B338;
          sub_2314CC1C4(&v192, &qword_27DD5B338, &qword_231589660);
          sub_2314CC1C4(&v204, &qword_27DD5B338, &qword_231589660);
          OUTLINED_FUNCTION_19_5();
          if (v94)
          {
            OUTLINED_FUNCTION_12_7(v126);
            sub_23152D7D4();
            v114 = v210;
          }

          *(v114 + 16) = &qword_27DD5B338;
          OUTLINED_FUNCTION_3_16(v114 + 40 * &qword_231589660);
          OUTLINED_FUNCTION_21_5();
          if (v57 == v58)
          {
            goto LABEL_105;
          }

          OUTLINED_FUNCTION_11_10(v127, v128, v129, v130, v131, v132, v133, v134, v149, v158, v160, v169, v171, v173, v182, v191);
          if (v59)
          {
            goto LABEL_106;
          }

          if (*(a1 + 36) != v117)
          {
            goto LABEL_107;
          }

          OUTLINED_FUNCTION_6_9();
          if (v59)
          {
            OUTLINED_FUNCTION_2_0();
            while (v138 < v137)
            {
              OUTLINED_FUNCTION_14_5();
              if (a1)
              {
                OUTLINED_FUNCTION_5_14();
                v18 = (__clz(__rbit64(a1)) + a4);
                goto LABEL_82;
              }
            }

            OUTLINED_FUNCTION_5_14();
          }

          else
          {
            OUTLINED_FUNCTION_10_9();
            v18 = (v135 | v136);
          }

LABEL_82:
          OUTLINED_FUNCTION_15_5();
          if (v59)
          {
            v109 = v168;
            LOBYTE(v110) = BYTE4(v160);
            v111 = v157;
            goto LABEL_85;
          }
        }

        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

LABEL_85:
      MEMORY[0x231930080](v114, MEMORY[0x277D84030]);

      v139 = sub_2314A22E8();

      *(v111 + 14) = v139;
      _os_log_impl(&dword_231496000, v109, v110, "ForegroundBundleIdInFocus: missing an expected column %s in: %s", v111, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    return 0;
  }

  if (qword_280D70420 != -1)
  {
LABEL_108:
    OUTLINED_FUNCTION_6_0();
  }

  v76 = sub_231585FF4();
  __swift_project_value_buffer(v76, qword_280D72248);

  v77 = sub_231585FE4();
  a4 = sub_2315865E4();

  if (os_log_type_enabled(v77, a4))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v211 = v79;
    *v78 = 136315394;
    v80 = sub_2314A22E8();
    OUTLINED_FUNCTION_20_6(v80);
    v81 = MEMORY[0x277D84F90];
    if (v18)
    {
      v146 = v79;
      v155 = v78;
      HIDWORD(v160) = a4;
      v166 = v77;
      OUTLINED_FUNCTION_9_12();
      sub_23152D7D4();
      v81 = v210;
      v82 = sub_23156C5C8(a1);
      v84 = v83;
      v179 = v18;
      v188 = a1 + 64;
      OUTLINED_FUNCTION_4_8();
      while ((v82 & 0x8000000000000000) == 0)
      {
        OUTLINED_FUNCTION_13_6();
        if (v57 == v58)
        {
          break;
        }

        OUTLINED_FUNCTION_3_9(v85, v86, v87, v88, v89, v90, v91, v92, v146, v155, v160, v166, v171, v173, v179, v188);
        if (v59)
        {
          goto LABEL_96;
        }

        if (*(a1 + 36) != v84)
        {
          goto LABEL_97;
        }

        OUTLINED_FUNCTION_18_6();
        OUTLINED_FUNCTION_22_6();
        OUTLINED_FUNCTION_7_8();
        sub_2314D6070(v18 + 5, v206);
        sub_2314D89D4(&v204, &v198);
        v192 = v198;
        v193 = v199;
        v194 = v200;
        sub_2314D6070(&v201, &v195);
        sub_2314D6014(&v192, v209);
        v18 = &qword_27DD5B338;
        sub_2314CC1C4(&v192, &qword_27DD5B338, &qword_231589660);
        sub_2314CC1C4(&v204, &qword_27DD5B338, &qword_231589660);
        OUTLINED_FUNCTION_19_5();
        if (v94)
        {
          OUTLINED_FUNCTION_12_7(v93);
          sub_23152D7D4();
          v81 = v210;
        }

        *(v81 + 16) = &qword_27DD5B338;
        OUTLINED_FUNCTION_3_16(v81 + 40 * &qword_231589660);
        OUTLINED_FUNCTION_21_5();
        if (v57 == v58)
        {
          goto LABEL_98;
        }

        OUTLINED_FUNCTION_11_10(v95, v96, v97, v98, v99, v100, v101, v102, v147, v156, v160, v167, v171, v173, v180, v189);
        if (v59)
        {
          goto LABEL_99;
        }

        if (*(a1 + 36) != v84)
        {
          goto LABEL_100;
        }

        OUTLINED_FUNCTION_6_9();
        if (v59)
        {
          OUTLINED_FUNCTION_2_0();
          while (v106 < v105)
          {
            OUTLINED_FUNCTION_14_5();
            if (a1)
            {
              OUTLINED_FUNCTION_5_14();
              v18 = (__clz(__rbit64(a1)) + a4);
              goto LABEL_54;
            }
          }

          OUTLINED_FUNCTION_5_14();
        }

        else
        {
          OUTLINED_FUNCTION_10_9();
          v18 = (v103 | v104);
        }

LABEL_54:
        OUTLINED_FUNCTION_15_5();
        if (v59)
        {
          v77 = v166;
          LOBYTE(a4) = BYTE4(v160);
          v78 = v155;
          goto LABEL_57;
        }
      }

      while (1)
      {
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        OUTLINED_FUNCTION_6_0();
LABEL_8:
        v35 = sub_231585FF4();
        __swift_project_value_buffer(v35, qword_280D72248);

        v36 = sub_231585FE4();
        v37 = sub_2315865E4();

        if (!os_log_type_enabled(v36, v37))
        {
          break;
        }

        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = v39;
        v211 = v39;
        *v38 = 136315138;
        v41 = *(a1 + 16);
        v42 = MEMORY[0x277D84F90];
        if (!v41)
        {
LABEL_30:
          MEMORY[0x231930080](v42, MEMORY[0x277D84030]);

          v75 = sub_2314A22E8();

          *(v38 + 4) = v75;
          _os_log_impl(&dword_231496000, v36, v37, "ForegroundBundleIdInFocus: missing an expected column bundleID in: %s", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v40);
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_10();
          break;
        }

        v144 = v39;
        v153 = v38;
        HIDWORD(v160) = v37;
        v164 = v36;
        OUTLINED_FUNCTION_9_12();
        sub_23152D7D4();
        v42 = v210;
        v43 = sub_23156C5C8(a1);
        v45 = v44;
        v47 = v46;
        v48 = 0;
        v177 = v41;
        v186 = a1 + 64;
        OUTLINED_FUNCTION_4_8();
        while ((v43 & 0x8000000000000000) == 0)
        {
          OUTLINED_FUNCTION_13_6();
          if (v57 == v58)
          {
            break;
          }

          OUTLINED_FUNCTION_3_9(v49, v50, v51, v52, v53, v54, v55, v56, v144, v153, v160, v164, v171, v173, v177, v186);
          if (v59)
          {
            goto LABEL_90;
          }

          if (*(a1 + 36) != v45)
          {
            goto LABEL_91;
          }

          OUTLINED_FUNCTION_18_6();
          sub_2314A24F0(*(a1 + 56) + 32 * v43, v208);
          OUTLINED_FUNCTION_7_8();
          sub_2314D6070(v208, v206);
          sub_2314D89D4(&v204, &v198);
          v192 = v198;
          v193 = v199;
          v194 = v200;
          sub_2314D6070(&v201, &v195);
          sub_2314D6014(&v192, v209);
          sub_2314CC1C4(&v192, &qword_27DD5B338, &qword_231589660);
          sub_2314CC1C4(&v204, &qword_27DD5B338, &qword_231589660);
          v210 = v42;
          v60 = a1;
          a1 = *(v42 + 16);
          v61 = *(v42 + 24);
          if (a1 >= v61 >> 1)
          {
            OUTLINED_FUNCTION_12_7(v61);
            sub_23152D7D4();
            v42 = v210;
          }

          *(v42 + 16) = a1 + 1;
          OUTLINED_FUNCTION_3_16(v42 + 40 * a1);
          v70 = 1 << *(v60 + 32);
          if (v43 >= v70)
          {
            goto LABEL_92;
          }

          OUTLINED_FUNCTION_11_10(v62, v63, v64, v65, v66, v67, v68, v69, v145, v154, v160, v165, v171, v173, v178, v187);
          if (v59)
          {
            goto LABEL_93;
          }

          a1 = v60;
          if (*(v60 + 36) != v45)
          {
            goto LABEL_94;
          }

          OUTLINED_FUNCTION_6_9();
          if (v59)
          {
            OUTLINED_FUNCTION_2_0();
            while (v74 < v73)
            {
              OUTLINED_FUNCTION_14_5();
              if (v60)
              {
                sub_2314ABA68(v43, v45, v47 & 1);
                v70 = __clz(__rbit64(v60)) + a4;
                goto LABEL_28;
              }
            }

            sub_2314ABA68(v43, v45, v47 & 1);
          }

          else
          {
            OUTLINED_FUNCTION_10_9();
            v70 = v71 | v72;
          }

LABEL_28:
          v47 = 0;
          ++v48;
          v43 = v70;
          v45 = v173;
          if (v48 == v177)
          {
            v36 = v164;
            LOBYTE(v37) = BYTE4(v160);
            v40 = v144;
            v38 = v153;
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
      }

      return 0;
    }

LABEL_57:
    MEMORY[0x231930080](v81, MEMORY[0x277D84030]);

    v107 = sub_2314A22E8();

    *(v78 + 14) = v107;
    _os_log_impl(&dword_231496000, v77, a4, "ForegroundBundleIdInFocus: missing an expected column %s in: %s", v78, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  return 0;
}

uint64_t sub_23150A9F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8)
{
  if (a1 == a4 && a2 == a5)
  {
    if (a7 != a8)
    {
      v14 = 0;
      return v14 & 1;
    }

    goto LABEL_9;
  }

  v13 = sub_231586C44();
  v14 = 0;
  if ((v13 & 1) != 0 && a7 == a8)
  {
LABEL_9:
    v14 = a3 ^ a6 ^ 1;
  }

  return v14 & 1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_23150AB24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_23150AB64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23150ABBC()
{
  result = qword_27DD5B8B0[0];
  if (!qword_27DD5B8B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD5B8B0);
  }

  return result;
}

uint64_t sub_23150AC30()
{
  result = sub_231586964();
  qword_280D6CE48 = result;
  unk_280D6CE50 = v1;
  return result;
}

uint64_t static ForegroundWarmAppSignal.signalName.getter()
{
  if (qword_280D6CE40 != -1)
  {
    OUTLINED_FUNCTION_0_49();
  }

  v0 = qword_280D6CE48;

  return v0;
}

uint64_t ForegroundWarmAppSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_23150ACEC@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  if (qword_280D6CE40 != -1)
  {
    OUTLINED_FUNCTION_0_49();
  }

  v6 = unk_280D6CE50;
  *a3 = qword_280D6CE48;
  a3[1] = v6;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = *(v8 + 8);

  a3[2] = v9(v7, v8);
  v10 = v9(v7, v8);
  type metadata accessor for BiomeQueriesAppInFocus();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  sub_2314D62B4(a2, v11 + 24);
  a3[3] = v11;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static ForegroundWarmAppSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23150B30C(v3, v1, v2);
}

uint64_t static ForegroundWarmAppSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611FC0);
  *a1 = result;
  return result;
}

uint64_t ForegroundWarmAppSignal.value(completion:)(void (*a1)(uint64_t *))
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_2314CCBB0();
  if (v5)
  {
    v6 = v5;
    v27 = a1;
    v7 = sub_2315860F4();
    v8 = 0;
    v29 = v4;
    v30 = *(v4 + 16);
    v9 = (v4 + 40);
    v28 = v6;
    while (1)
    {
      if (v30 == v8)
      {

        v31 = v7;
        v32 = 1;
        v27(&v31);
        return sub_2314A5EEC(v31, v32);
      }

      if (v8 >= *(v4 + 16))
      {
        break;
      }

      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = *(v6 + 16);

      v15 = v12 && (v13 = sub_23149C888(v11, v10), (v14 & 1) != 0) && *(*(v6 + 56) + 8 * v13) == 2;
      swift_isUniquelyReferenced_nonNull_native();
      v31 = v7;
      v16 = sub_23149C888(v11, v10);
      if (__OFADD__(v7[2], (v17 & 1) == 0))
      {
        goto LABEL_22;
      }

      v18 = v16;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
      if (sub_231586A64())
      {
        v20 = sub_23149C888(v11, v10);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_24;
        }

        v18 = v20;
      }

      v7 = v31;
      if (v19)
      {
        *(*(v31 + 56) + 8 * v18) = v15;
      }

      else
      {
        *(v31 + 8 * (v18 >> 6) + 64) |= 1 << v18;
        v22 = (v7[6] + 16 * v18);
        *v22 = v11;
        v22[1] = v10;
        *(v7[7] + 8 * v18) = v15;
        v23 = v7[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_23;
        }

        v7[2] = v25;
      }

      v9 += 2;
      ++v8;
      v6 = v28;
      v4 = v29;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result = sub_231586C84();
    __break(1u);
  }

  else
  {
    v31 = -1;
    v32 = 0;
    return (a1)(&v31);
  }

  return result;
}

uint64_t sub_23150B0C8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23150B30C(v3, v1, v2);
}

uint64_t _s11SiriSignals23ForegroundWarmAppSignalV9instancesSayAA0F9Providing_pGyFZ_0()
{
  v7[3] = &type metadata for NoParameters;
  v7[4] = &protocol witness table for NoParameters;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  sub_2314A2C74(v7, v6);
  v4 = &type metadata for BiomeSQLQueryResultProvider;
  v5 = &protocol witness table for BiomeSQLQueryResultProvider;
  *(v0 + 56) = &type metadata for ForegroundWarmAppSignal;
  *(v0 + 64) = &protocol witness table for ForegroundWarmAppSignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  sub_23150ACEC(v6, &v3, (v1 + 16));
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v0;
}

uint64_t sub_23150B1F8(_OWORD *a1)
{
  v12[3] = &type metadata for SignalComputationContext;
  v12[4] = &protocol witness table for SignalComputationContext;
  v2 = swift_allocObject();
  v12[0] = v2;
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_231588340;
  sub_2314A2C74(v12, v11);
  v9 = &type metadata for BiomeSQLQueryResultProvider;
  v10 = &protocol witness table for BiomeSQLQueryResultProvider;
  *(v4 + 56) = &type metadata for ForegroundWarmAppSignal;
  *(v4 + 64) = &protocol witness table for ForegroundWarmAppSignal;
  v5 = swift_allocObject();
  *(v4 + 32) = v5;
  sub_2314B5008(a1, v7);
  sub_23150ACEC(v11, &v8, (v5 + 16));
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v4;
}

uint64_t sub_23150B30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[3] = a2;
  v13[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_231588340;
  sub_2314A2C74(v13, v12);
  v10 = &type metadata for BiomeSQLQueryResultProvider;
  v11 = &protocol witness table for BiomeSQLQueryResultProvider;
  *(v6 + 56) = &type metadata for ForegroundWarmAppSignal;
  *(v6 + 64) = &protocol witness table for ForegroundWarmAppSignal;
  v7 = swift_allocObject();
  *(v6 + 32) = v7;
  sub_23150ACEC(v12, &v9, (v7 + 16));
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v6;
}

uint64_t sub_23150B41C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_3_17();
  v5 = *(v4 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_3_17();
  v7 = *(v6 + 80);
  v8 = type metadata accessor for GetOnce.RunState();
  OUTLINED_FUNCTION_8(v8);
  return (*(v9 + 16))(a1, &v1[v5]);
}

uint64_t sub_23150B4B8(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_3_17();
  v5 = *(v4 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_3_17();
  v7 = *(v6 + 80);
  v8 = type metadata accessor for GetOnce.RunState();
  OUTLINED_FUNCTION_8(v8);
  (*(v9 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t sub_23150B55C()
{
  OUTLINED_FUNCTION_0_50();
  v2 = *(v1 + 104);
  swift_beginAccess();
  v3 = *(v0 + v2);
}

uint64_t GetOnce.__allocating_init(queue:valueGetter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  GetOnce.init(queue:valueGetter:)(a1, a2, a3);
  return v9;
}

void *GetOnce.init(queue:valueGetter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(v3 + *(*v3 + 96), 1, 2, *(*v3 + 80));
  OUTLINED_FUNCTION_0_50();
  v8 = *(v7 + 104);
  swift_getFunctionTypeMetadata1();
  *(v3 + v8) = sub_2315860B4();
  v3[2] = a2;
  v3[3] = a3;
  OUTLINED_FUNCTION_0_50();
  *(v3 + *(v9 + 112)) = a1;
  return v3;
}

uint64_t sub_23150B6CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_231586024();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_231586064();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v3 + *(*v3 + 112));
  v23 = swift_allocObject();
  v23[2] = v3;
  v23[3] = a1;
  v23[4] = a2;
  aBlock[4] = sub_23150BCE4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23149B484;
  aBlock[3] = &block_descriptor_8;
  v24 = _Block_copy(aBlock);

  sub_231586054();
  v26[1] = MEMORY[0x277D84F90];
  sub_2314BCC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
  sub_2314BCC5C();
  sub_2315867C4();
  MEMORY[0x231930370](0, v21, v13, v24);
  _Block_release(v24);
  (*(v8 + 8))(v13, v6);
  (*(v16 + 8))(v21, v14);
}

uint64_t sub_23150B954(void *a1, void (*a2)(char *), uint64_t a3)
{
  v6 = *(*a1 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v28 - v9;
  v11 = type metadata accessor for GetOnce.RunState();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  sub_23150B41C(&v28 - v16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 2, v6);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      v19 = swift_allocObject();
      v19[2] = v6;
      v19[3] = a2;
      v19[4] = a3;
      v29 = sub_23150CA88;
      v30 = v19;
      v20 = *(*a1 + 104);
      swift_beginAccess();
      swift_getFunctionTypeMetadata1();
      sub_231586454();

      sub_231586414();
      swift_endAccess();
      __swift_storeEnumTagSinglePayload(v15, 2, 2, v6);
      sub_23150B4B8(v15);
      v22 = a1[2];
      v21 = a1[3];
      v23 = swift_allocObject();
      swift_weakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v6;
      *(v24 + 24) = v23;

      v22(sub_23150CA44, v24);
    }

    else
    {
      v26 = swift_allocObject();
      v26[2] = v6;
      v26[3] = a2;
      v26[4] = a3;
      v29 = sub_23150CA1C;
      v30 = v26;
      v27 = *(*a1 + 104);
      swift_beginAccess();
      swift_getFunctionTypeMetadata1();
      sub_231586454();

      sub_231586414();
      return swift_endAccess();
    }
  }

  else
  {
    (*(v7 + 32))(v10, v17, v6);
    a2(v10);
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_23150BCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_231586024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v27 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_231586064();
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v24 = *(result + *(*result + 112));
    (*(v14 + 16))(&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
    v18 = *(v14 + 80);
    v25 = v9;
    v19 = v5;
    v20 = (v18 + 32) & ~v18;
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    *(v21 + 24) = v17;
    (*(v14 + 32))(v21 + v20, &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
    aBlock[4] = sub_23150CA4C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23149B484;
    aBlock[3] = &block_descriptor_19_0;
    v22 = _Block_copy(aBlock);

    sub_231586054();
    v28 = MEMORY[0x277D84F90];
    sub_2314BCC04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
    sub_2314BCC5C();
    v23 = v27;
    sub_2315867C4();
    MEMORY[0x231930370](0, v13, v23, v22);
    _Block_release(v22);
    (*(v6 + 8))(v23, v19);
    (*(v26 + 8))(v13, v25);
  }

  return result;
}

uint64_t sub_23150C074(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 80);
  v5 = type metadata accessor for GetOnce.RunState();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  (*(*(v4 - 8) + 16))(&v18 - v7, a2, v4);
  __swift_storeEnumTagSinglePayload(v8, 0, 2, v4);
  sub_23150B4B8(v8);
  v9 = sub_23150B55C();
  swift_getFunctionTypeMetadata1();
  v10 = sub_231586394();
  v19 = v10;
  if (v10 == sub_231586424())
  {
LABEL_4:

    v16 = *(*a1 + 104);
    swift_beginAccess();
    sub_231586454();
    sub_231586444();
    return swift_endAccess();
  }

  else
  {
    while (1)
    {
      v11 = sub_2315863F4();
      sub_2315863B4();
      if ((v11 & 1) == 0)
      {
        break;
      }

      v12 = v9 + 32 + 16 * v10;
      v14 = *v12;
      v13 = *(v12 + 8);

      sub_231586434();
      v14(a2);

      v15 = sub_231586424();
      v10 = v19;
      if (v19 == v15)
      {
        goto LABEL_4;
      }
    }

    result = sub_231586974();
    __break(1u);
  }

  return result;
}

char *GetOnce.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  OUTLINED_FUNCTION_0_50();
  v4 = *(v3 + 96);
  v5 = *(v1 + 80);
  v6 = type metadata accessor for GetOnce.RunState();
  OUTLINED_FUNCTION_8(v6);
  (*(v7 + 8))(&v0[v4]);
  OUTLINED_FUNCTION_0_50();
  v9 = *&v0[*(v8 + 104)];

  OUTLINED_FUNCTION_0_50();

  return v0;
}

uint64_t GetOnce.__deallocating_deinit()
{
  GetOnce.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23150C3C0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for GetOnce.RunState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23150C4F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_23150C54C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 2;
  v7 = *(*(v4 - 8) + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 > v6)
  {
    v12 = 8 * v7;
    if (v7 <= 3)
    {
      v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v14))
      {
        v13 = *(a1 + v7);
        if (!v13)
        {
          goto LABEL_30;
        }

        goto LABEL_22;
      }

      if (v14 > 0xFF)
      {
        v13 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_30;
        }

        goto LABEL_22;
      }

      if (v14 < 2)
      {
LABEL_30:
        if (!v6)
        {
          return 0;
        }

        goto LABEL_31;
      }
    }

    v13 = *(a1 + v7);
    if (!*(a1 + v7))
    {
      goto LABEL_30;
    }

LABEL_22:
    v15 = (v13 - 1) << v12;
    if (v7 > 3)
    {
      v15 = 0;
    }

    if (v7)
    {
      if (v7 > 3)
      {
        LODWORD(v7) = 4;
      }

      switch(v7)
      {
        case 2:
          LODWORD(v7) = *a1;
          break;
        case 3:
          LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
          break;
        case 4:
          LODWORD(v7) = *a1;
          break;
        default:
          LODWORD(v7) = *a1;
          break;
      }
    }

    return v6 + (v7 | v15) + 1;
  }

LABEL_31:
  if (!v5)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  v17 = EnumTagSinglePayload >= 2;
  result = EnumTagSinglePayload - 2;
  if (result == 0 || !v17)
  {
    return 0;
  }

  return result;
}

void sub_23150C714(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = v8;
  if (v7 <= 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7 - 2;
  }

  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v13 = (~(-1 << v9) - v7 + 2) >> v9;
      if (v13 > 0xFFFE)
      {
        v12 = 4;
      }

      else
      {
        v14 = 1;
        if (v13 >= 0xFF)
        {
          v14 = 2;
        }

        if (v13)
        {
          v12 = v14;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }

    v10 = v12 + v8;
  }

  v15 = 8 * v10;
  v16 = a3 >= v11;
  v17 = a3 - v11;
  if (v17 != 0 && v16)
  {
    if (v10 <= 3)
    {
      v21 = ((v17 + ~(-1 << v15)) >> v15) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v11 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        break;
      case 3:
LABEL_64:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_37;
      default:
LABEL_37:
        if (a2)
        {
LABEL_38:
          if (a2 + 2 <= v7)
          {
            v28 = a2 + 2;

            __swift_storeEnumTagSinglePayload(a1, v28, v7, v6);
          }

          else
          {
            v24 = -1 << v9;
            if (v8 <= 3)
            {
              v25 = ~v24;
            }

            else
            {
              v25 = -1;
            }

            if (v8)
            {
              v26 = v25 & (a2 - v7 + 1);
              if (v8 <= 3)
              {
                v27 = v8;
              }

              else
              {
                v27 = 4;
              }

              bzero(a1, v8);
              switch(v27)
              {
                case 2:
                  *a1 = v26;
                  break;
                case 3:
                  *a1 = v26;
                  a1[2] = BYTE2(v26);
                  break;
                case 4:
                  *a1 = v26;
                  break;
                default:
                  *a1 = v26;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v11 + a2;
    if (v10 < 4)
    {
      v20 = (v19 >> v15) + 1;
      if (v10)
      {
        v23 = v19 & ~(-1 << v15);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v10 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v10] = v20;
        break;
      case 2:
        *&a1[v10] = v20;
        break;
      case 3:
        goto LABEL_64;
      case 4:
        *&a1[v10] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_23150CA1C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_23150CAA4()
{
  result = sub_231586964();
  qword_280D6D4F0 = result;
  unk_280D6D4F8 = v1;
  return result;
}

uint64_t static HashedLocationSignal.signalName.getter()
{
  if (qword_280D6D4E8 != -1)
  {
    OUTLINED_FUNCTION_0_51();
    swift_once();
  }

  v0 = qword_280D6D4F0;

  return v0;
}

uint64_t HashedLocationSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static HashedLocationSignal.id(using:)(char *a1)
{
  v1 = *a1;
  if (qword_280D6D4E8 != -1)
  {
    OUTLINED_FUNCTION_0_51();
    swift_once();
  }

  MEMORY[0x23192FF80](qword_280D6D4F0, unk_280D6D4F8);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  return 0;
}

void *sub_23150CC08@<X0>(void *result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (result)
  {
    sub_2314E4E9C([result *off_27890AE70[a2]]);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 5381;
      v7 = 32;
      do
      {
        v6 = 33 * v6 + *(v4 + v7);
        v7 += 4;
        --v5;
      }

      while (v5);

      v8 = v6;
    }

    else
    {

      v8 = 5381;
    }
  }

  else
  {
    v8 = -1;
  }

  *a3 = v8;
  *(a3 + 8) = 0;
  return result;
}

uint64_t static HashedLocationSignal.instances(with:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_23150D238();
}

void HashedLocationSignal.value(completion:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_2314E2A04();
}

SiriSignals::HashedLocationSignal::Granularity_optional __swiftcall HashedLocationSignal.Granularity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231586B04();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HashedLocationSignal.Granularity.rawValue.getter()
{
  v1 = 0x303035326DLL;
  if (*v0 != 1)
  {
    v1 = 0x3635316D6BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 808465261;
  }
}

uint64_t sub_23150CDDC@<X0>(uint64_t *a1@<X8>)
{
  result = HashedLocationSignal.Granularity.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23150CE34(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_23150D238();
}

uint64_t _s11SiriSignals20HashedLocationSignalV9instancesSayAA0E9Providing_pGyFZ_0()
{
  OUTLINED_FUNCTION_3_18();
  v1 = 0;
  v2 = v15;
  do
  {
    v3 = byte_284610660[v1 + 32];
    v4 = [BiomeLibrary() Location];
    swift_unknownObjectRelease();
    v5 = [v4 HashedCoordinates];
    swift_unknownObjectRelease();
    *&v11 = 0;
    *(&v11 + 1) = 0xE000000000000000;
    if (qword_280D6D4E8 != -1)
    {
      OUTLINED_FUNCTION_0_51();
      swift_once();
    }

    MEMORY[0x23192FF80](qword_280D6D4F0, unk_280D6D4F8);
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    v14 = v3;
    sub_231586A54();
    v6 = v11;
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_1_20(v7);
    if (v8)
    {
      OUTLINED_FUNCTION_2_19();
      v2 = v15;
    }

    ++v1;
    v12 = &type metadata for HashedLocationSignal;
    v13 = &protocol witness table for HashedLocationSignal;
    v9 = swift_allocObject();
    *&v11 = v9;
    *(v9 + 16) = v6;
    *(v9 + 32) = v5;
    *(v9 + 40) = sub_23150D608;
    *(v9 + 48) = v0;
    *(v2 + 16) = v4;
    sub_23149FD3C(&v11, v2 + 40 * v3 + 32);
  }

  while (v1 != 3);
  return v2;
}

uint64_t sub_23150D064()
{
  OUTLINED_FUNCTION_3_18();
  v1 = 0;
  v2 = v15;
  do
  {
    v3 = byte_284610048[v1 + 32];
    v4 = [BiomeLibrary() Location];
    swift_unknownObjectRelease();
    v5 = [v4 HashedCoordinates];
    swift_unknownObjectRelease();
    *&v11 = 0;
    *(&v11 + 1) = 0xE000000000000000;
    if (qword_280D6D4E8 != -1)
    {
      OUTLINED_FUNCTION_0_51();
      swift_once();
    }

    MEMORY[0x23192FF80](qword_280D6D4F0, unk_280D6D4F8);
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    v14 = v3;
    sub_231586A54();
    v6 = v11;
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_1_20(v7);
    if (v8)
    {
      OUTLINED_FUNCTION_2_19();
      v2 = v15;
    }

    ++v1;
    v12 = &type metadata for HashedLocationSignal;
    v13 = &protocol witness table for HashedLocationSignal;
    v9 = swift_allocObject();
    *&v11 = v9;
    *(v9 + 16) = v6;
    *(v9 + 32) = v5;
    *(v9 + 40) = sub_23150D600;
    *(v9 + 48) = v0;
    *(v2 + 16) = v4;
    sub_23149FD3C(&v11, v2 + 40 * v3 + 32);
  }

  while (v1 != 3);
  return v2;
}

uint64_t sub_23150D238()
{
  v14 = MEMORY[0x277D84F90];
  sub_23152D5B8();
  v0 = 0;
  v1 = v14;
  do
  {
    v2 = byte_284610248[v0 + 32];
    v3 = [BiomeLibrary() Location];
    swift_unknownObjectRelease();
    v4 = [v3 HashedCoordinates];
    swift_unknownObjectRelease();
    *&v10 = 0;
    *(&v10 + 1) = 0xE000000000000000;
    if (qword_280D6D4E8 != -1)
    {
      swift_once();
    }

    MEMORY[0x23192FF80](qword_280D6D4F0, unk_280D6D4F8);
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    v13 = v2;
    sub_231586A54();
    v5 = v10;
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    v14 = v1;
    v7 = *(v1 + 16);
    if (v7 >= *(v1 + 24) >> 1)
    {
      sub_23152D5B8();
      v1 = v14;
    }

    ++v0;
    v11 = &type metadata for HashedLocationSignal;
    v12 = &protocol witness table for HashedLocationSignal;
    v8 = swift_allocObject();
    *&v10 = v8;
    *(v8 + 16) = v5;
    *(v8 + 32) = v4;
    *(v8 + 40) = sub_23150D608;
    *(v8 + 48) = v6;
    *(v1 + 16) = v7 + 1;
    sub_23149FD3C(&v10, v1 + 40 * v7 + 32);
  }

  while (v0 != 3);
  return v1;
}

unint64_t sub_23150D458()
{
  result = qword_27DD5B9B8;
  if (!qword_27DD5B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B9B8);
  }

  return result;
}

unint64_t sub_23150D4B0()
{
  result = qword_27DD5B9C0;
  if (!qword_27DD5B9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B9C8, &qword_23158B730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B9C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HashedLocationSignal.Granularity(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23150D60C(uint64_t a1)
{
  if (qword_280D6C6A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280D72130;
  if (*(qword_280D72130 + 16) && (v3 = sub_231574DAC(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v6 = sub_231585FF4();
    __swift_project_value_buffer(v6, qword_280D72248);
    v7 = sub_231585FE4();
    v8 = sub_2315865D4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = a1;
      _os_log_impl(&dword_231496000, v7, v8, "Unable to map the requested media type: %ld to a supported media category", v9, 0xCu);
      MEMORY[0x231931280](v9, -1, -1);
    }

    return 5;
  }

  return v5;
}

uint64_t sub_23150D784()
{
  type metadata accessor for INMediaItemType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B9D0, &unk_23158B800);
  sub_23150D7E8();
  result = sub_2315860F4();
  qword_280D72130 = result;
  return result;
}

unint64_t sub_23150D7E8()
{
  result = qword_280D6C690;
  if (!qword_280D6C690)
  {
    type metadata accessor for INMediaItemType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6C690);
  }

  return result;
}

uint64_t sub_23150D840(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v4 = sub_231585FF4();
  __swift_project_value_buffer(v4, qword_280D72248);

  v5 = sub_231585FE4();
  v6 = sub_2315865D4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v7 = 134218242;
    *(v7 + 4) = sub_231566740(a1);

    *(v7 + 12) = 2080;
    v8 = type metadata accessor for AppMetadata();
    MEMORY[0x231930080](a1, v8);
    v9 = sub_2314A22E8();

    *(v7 + 14) = v9;
    _os_log_impl(&dword_231496000, v5, v6, "InstalledAppProvider#installedApps computed: %ld apps: %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x231931280](v11, -1, -1);
    MEMORY[0x231931280](v7, -1, -1);
  }

  else
  {
  }

  return a2(a1);
}

uint64_t sub_23150D9EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_23150DA2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23150DA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v40 = a1;
  v41 = sub_231586024();
  v34 = *(v41 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v41);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_231586064();
  v33 = *(v38 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v38);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = dispatch_group_create();
  v11 = *(a2 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = (a2 + 32);
    v36 = (v34 + 8);
    v37 = &v46;
    v35 = (v33 + 8);
    do
    {
      v42 = v11;
      v14 = swift_allocObject();
      v15 = *v13++;
      *(v14 + 16) = v15;

      v16 = v39;
      dispatch_group_enter(v39);
      v17 = swift_allocObject();
      v17[2] = sub_2315116C0;
      v17[3] = v14;
      v17[4] = v16;
      v48 = sub_2315116C8;
      v49 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_23149B484;
      v47 = &block_descriptor_9;
      v18 = _Block_copy(&aBlock);

      v19 = v16;
      sub_231586054();
      v43 = v12;
      sub_23151262C(&qword_280D6FEC0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
      sub_2314CBD60(&qword_280D6FEB0, &qword_27DD5B180, &unk_231589020);
      v20 = v7;
      v21 = v41;
      sub_2315867C4();
      MEMORY[0x231930370](0, v10, v20, v18);
      _Block_release(v18);

      v22 = v21;
      v7 = v20;
      v23 = v38;
      (*v36)(v20, v22);
      (*v35)(v10, v23);

      v11 = v42 - 1;
    }

    while (v42 != 1);
  }

  v24 = swift_allocObject();
  v25 = v32;
  *(v24 + 16) = v31;
  *(v24 + 24) = v25;
  v48 = sub_2315116D4;
  v49 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_23149B484;
  v47 = &block_descriptor_22;
  v26 = _Block_copy(&aBlock);

  sub_231586054();
  v43 = v12;
  sub_23151262C(&qword_280D6FEC0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
  sub_2314CBD60(&qword_280D6FEB0, &qword_27DD5B180, &unk_231589020);
  v27 = v10;
  v28 = v41;
  sub_2315867C4();
  v29 = v39;
  sub_231586634();
  _Block_release(v26);

  (*(v34 + 8))(v7, v28);
  (*(v33 + 8))(v27, v38);
}

uint64_t sub_23150DF80(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_2315116D4;
  v8[1] = v6;

  a3(v8);
}

uint64_t sub_23150E01C(void (*a1)(void (*)(), uint64_t), uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = a3;
  a1(sub_2315116FC, v5);
}

uint64_t sub_23150E0A0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_231586274();
}

uint64_t sub_23150E0A8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_231586C44();
  }
}

uint64_t sub_23150E0D8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_231586D14();
  sub_231586274();
  return sub_231586D44();
}

uint64_t sub_23150E124()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  return sub_23150E0D8();
}

uint64_t sub_23150E168()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  return sub_23150E0A0();
}

uint64_t sub_23150E1AC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_231586D14();
  sub_231586274();
  return sub_231586D44();
}

uint64_t sub_23150E1F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_23150E0A8(v5, v7) & 1;
}

uint64_t sub_23150E250()
{
  v10 = sub_231586674();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_231586654();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_231586064();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2314A207C(0, &qword_280D6FE88, 0x277D85C78);
  sub_231586054();
  v11 = MEMORY[0x277D84F90];
  sub_23151262C(&qword_280D6FE90, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B228, &qword_23158B8E0);
  sub_2314CBD60(&qword_280D6FEA8, &qword_27DD5B228, &qword_23158B8E0);
  sub_2315867C4();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_2315866A4();
  qword_280D6CCB0 = result;
  return result;
}

uint64_t sub_23150E4B0()
{
  result = sub_2314B890C(&unk_284612078);
  qword_280D72150 = result;
  return result;
}

uint64_t sub_23150E4D8()
{
  result = sub_2314B890C(&unk_2846120B8);
  qword_280D72148 = result;
  return result;
}

uint64_t sub_23150E500()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23158B830;
  sub_2314A207C(0, &qword_280D6C660, 0x277CD3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B9F0, &qword_23158B8C0);
  *(inited + 32) = sub_231586204();
  *(inited + 40) = v1;
  sub_2314A207C(0, &qword_280D6C618, 0x277CD4030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B9F8, &qword_23158B8C8);
  *(inited + 48) = sub_231586204();
  *(inited + 56) = v2;
  sub_2314A207C(0, &qword_280D6C610, 0x277CD42B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BA00, &qword_23158B8D0);
  *(inited + 64) = sub_231586204();
  *(inited + 72) = v3;
  sub_2314A207C(0, &qword_280D6C678, 0x277CD39F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BA08, &qword_23158B8D8);
  *(inited + 80) = sub_231586204();
  *(inited + 88) = v4;
  result = sub_2314B890C(inited);
  qword_280D72168 = result;
  return result;
}

uint64_t sub_23150E660()
{
  result = sub_2314B890C(&unk_2846120E8);
  qword_280D72160 = result;
  return result;
}

uint64_t sub_23150E688()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588FE0;
  sub_2314A207C(0, &qword_280D6C660, 0x277CD3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B9F0, &qword_23158B8C0);
  *(inited + 32) = sub_231586204();
  *(inited + 40) = v1;
  sub_2314A207C(0, &qword_280D6C678, 0x277CD39F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BA08, &qword_23158B8D8);
  *(inited + 48) = sub_231586204();
  *(inited + 56) = v2;
  result = sub_2314B890C(inited);
  qword_280D72158 = result;
  return result;
}

uint64_t sub_23150E768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v48 = a3;
  v49 = a4;
  v9 = sub_231585884();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v47 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v18 = sub_231585FF4();
  __swift_project_value_buffer(v18, qword_280D72248);

  v19 = sub_231585FE4();
  v20 = sub_2315865D4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v50[0] = v46;
    *v21 = 136315138;
    *&v52 = a1;
    *(&v52 + 1) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B120, &qword_23158ACE0);
    sub_231586204();
    v22 = v12;
    v23 = v14;
    v24 = v17;
    v25 = v4;
    v26 = v6;
    v27 = sub_2314A22E8();

    *(v21 + 4) = v27;
    v6 = v26;
    v4 = v25;
    v17 = v24;
    v14 = v23;
    v12 = v22;
    _os_log_impl(&dword_231496000, v19, v20, "InstalledAudioAppProvider#generalOSInstalledApps gathering apps for user: %s...", v21, 0xCu);
    v28 = v46;
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x231931280](v28, -1, -1);
    MEMORY[0x231931280](v21, -1, -1);
  }

  sub_231585874();
  OUTLINED_FUNCTION_0_52();
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D84F98];
  *(v29 + 16) = MEMORY[0x277D84F98];
  OUTLINED_FUNCTION_0_52();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  if (qword_280D6CCA8 != -1)
  {
    swift_once();
  }

  v46 = qword_280D6CCB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B9D8, &qword_23158B890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588FE0;
  sub_2314BF8FC(v6, &v52);
  v33 = swift_allocObject();
  v34 = v54;
  v35 = v53;
  *(v33 + 16) = v52;
  *(v33 + 32) = v35;
  *(v33 + 48) = v34;
  *(v33 + 56) = v29;
  *(inited + 32) = sub_231511580;
  *(inited + 40) = v33;
  sub_2314BF8FC(v6, v50);
  v36 = swift_allocObject();
  v37 = v50[1];
  *(v36 + 16) = v50[0];
  *(v36 + 32) = v37;
  *(v36 + 48) = v51;
  *(v36 + 56) = v31;
  *(inited + 48) = sub_2315115F4;
  *(inited + 56) = v36;
  sub_2314BF8FC(v6, &v52);
  v38 = v47;
  (*(v12 + 16))(v47, v17, v4);
  v39 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v29;
  *(v40 + 24) = v31;
  v41 = v53;
  *(v40 + 32) = v52;
  *(v40 + 48) = v41;
  *(v40 + 64) = v54;
  (*(v12 + 32))(v40 + v39, v38, v4);
  v42 = (v40 + ((v14 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
  v43 = v49;
  *v42 = v48;
  v42[1] = v43;
  swift_retain_n();
  swift_retain_n();

  sub_23150DA84(v46, inited, sub_231511628, v40);

  swift_setDeallocating();
  sub_231536DF0();
  (*(v12 + 8))(v17, v4);
}

uint64_t sub_23150EC10()
{
  v0 = sub_231585884();
  v1 = *(v0 - 8);
  v2 = *(v1 + 8);
  v3 = MEMORY[0x28223BE20](v0);
  v72 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v71 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v71 - v8;
  if (qword_280D70420 != -1)
  {
LABEL_58:
    swift_once();
  }

  v10 = sub_231585FF4();
  v83 = __swift_project_value_buffer(v10, qword_280D72248);
  v11 = sub_231585FE4();
  v12 = sub_2315865D4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_231496000, v11, v12, "InstalledAudioAppProvider#lsRecordApps...", v13, 2u);
    MEMORY[0x231931280](v13, -1, -1);
  }

  sub_231585874();
  v86 = [objc_opt_self() enumeratorWithOptions_];
  v84 = 0x8000000231591CC0;
  *&v14 = 136315650;
  v73 = v14;
  v82 = MEMORY[0x277D84F90];
  v77 = v1;
  v78 = v0;
  v80 = v9;
  v85 = v7;
  while (1)
  {
    v15 = [v86 nextObject];
    if (!v15)
    {
      break;
    }

    v16 = v15;
    v17 = sub_2314E0C98(v16);
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      if (v17 == 0x6C7070612E6D6F63 && v18 == 0xEF636973754D2E65)
      {
        v19 = 0x6C7070612E6D6F63;
LABEL_25:

        if (qword_280D6CCC0 != -1)
        {
          swift_once();
        }

        v26 = qword_280D72150;
        goto LABEL_32;
      }

      if (sub_231586C44())
      {
        goto LABEL_25;
      }

      if (v19 == 0xD000000000000012 && v84 == v20)
      {
        v19 = 0xD000000000000012;
LABEL_29:

        if (qword_280D6CCB8 != -1)
        {
          swift_once();
        }

        v26 = qword_280D72148;
LABEL_32:
        v31 = qword_280D6CCD0;

        if (v31 != -1)
        {
          swift_once();
        }

        v81 = qword_280D72158;

        goto LABEL_35;
      }

      if (sub_231586C44())
      {
        goto LABEL_29;
      }

      if (qword_280D6CCD8 != -1)
      {
        swift_once();
      }

      v23 = qword_280D72160;

      v24 = [v16 supportedIntentMediaCategories];
      v25 = sub_231586384();

      v26 = sub_231511E5C(v25, v23);

      if (!v26[2])
      {

        v27 = v16;
        v7 = v85;
        goto LABEL_23;
      }

      if (qword_280D6CCE0 != -1)
      {
        swift_once();
      }

      v55 = qword_280D72168;

      v56 = [v16 supportedIntents];

      v57 = sub_231586384();
      v81 = sub_231511E5C(v57, v55);

LABEL_35:

      v32 = sub_231585FE4();
      v33 = sub_2315865D4();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v87 = v79;
        *v34 = v73;
        *(v34 + 4) = sub_2314A22E8();
        *(v34 + 12) = 2080;

        sub_231586524();

        v35 = sub_2314A22E8();

        *(v34 + 14) = v35;
        *(v34 + 22) = 2080;

        sub_231586524();

        v36 = sub_2314A22E8();

        *(v34 + 24) = v36;
        _os_log_impl(&dword_231496000, v32, v33, "InstalledAudioAppProvider#lsRecordApps found bundle: %s, supportedCategories: %s, supportedIntents: %s", v34, 0x20u);
        v37 = v79;
        swift_arrayDestroy();
        MEMORY[0x231931280](v37, -1, -1);
        MEMORY[0x231931280](v34, -1, -1);
      }

      v38 = v26[2];
      if (v38)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
        v39 = swift_allocObject();
        v40 = _swift_stdlib_malloc_size(v39);
        v39[2] = v38;
        v39[3] = 2 * ((v40 - 32) / 16);
        v79 = v39;
        sub_231572A38();
        v75 = v41;
        v9 = v87;
        v7 = v88;
        v0 = v89;
        v1 = v90;

        sub_2314A4B70();
        if (v75 != v38)
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }
      }

      else
      {
        v79 = MEMORY[0x277D84F90];
      }

      v42 = v81[2];
      if (v42)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
        v43 = swift_allocObject();
        v44 = _swift_stdlib_malloc_size(v43);
        v43[2] = v42;
        v43[3] = 2 * ((v44 - 32) / 16);
        sub_231572A38();
        v75 = v45;
        v7 = v87;
        v0 = v88;
        v1 = v89;
        v9 = v90;
        v74 = v91;

        sub_2314A4B70();
        if (v75 != v42)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v43 = MEMORY[0x277D84F90];
      }

      v46 = v76[3];
      v47 = v76[4];
      __swift_project_boxed_opaque_existential_1(v76, v46);
      v48 = (*(v47 + 8))(v19, v20, v46, v47);
      v50 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1 = v77;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v58 = *(v82 + 16);
        sub_2314F17C4();
        v82 = v59;
      }

      v52 = *(v82 + 16);
      if (v52 >= *(v82 + 24) >> 1)
      {
        sub_2314F17C4();
        v82 = v60;
      }

      v53 = v82;
      *(v82 + 16) = v52 + 1;
      v54 = (v53 + 56 * v52);
      v54[4] = v19;
      v54[5] = v20;
      v54[6] = v79;
      v54[7] = v43;
      v54[8] = v48;
      v54[9] = v50;
      v54[10] = MEMORY[0x277D84F90];

      v0 = v78;
      v9 = v80;
      v7 = v85;
    }

    else
    {

      v27 = sub_231585FE4();
      v28 = sub_2315865E4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_231496000, v27, v28, "InstalledAudioAppProvider#lsRecordApps error missing bundle identifier for LSApplicationRecord", v29, 2u);
        v30 = v29;
        v9 = v80;
        MEMORY[0x231931280](v30, -1, -1);
      }

LABEL_23:
    }
  }

  (*(v1 + 2))(v7, v9, v0);
  v61 = sub_231585FE4();
  v62 = sub_2315865D4();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = v9;
    v64 = swift_slowAlloc();
    *v64 = 134217984;
    v65 = v72;
    sub_231585874();
    sub_2315857A4();
    v67 = v66;
    v68 = *(v1 + 1);
    v68(v65, v0);
    v68(v7, v0);
    *(v64 + 4) = v67;
    _os_log_impl(&dword_231496000, v61, v62, "InstalledAudioAppProvider#lsRecordApps complete in %fms", v64, 0xCu);
    MEMORY[0x231931280](v64, -1, -1);

    v68(v63, v0);
  }

  else
  {

    v69 = *(v1 + 1);
    v69(v7, v0);
    v69(v9, v0);
  }

  return v82;
}

uint64_t sub_23150F6C0(uint64_t result, void *a2)
{
  v2 = a2;
  v3 = *(result + 16);
  v4 = (result + 80);
  v30 = a2;
  if (v3)
  {
    while (1)
    {
      v31 = v3;
      v5 = *(v4 - 6);
      v6 = *(v4 - 5);
      v7 = *(v4 - 4);
      v8 = *(v4 - 3);
      v9 = *(v4 - 1);
      v33 = *(v4 - 2);
      v10 = *v4;
      swift_beginAccess();
      v34 = v9;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v11 = *v2;

      v35 = v7;

      swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v36 = *v2;
      v13 = sub_23149C888(v5, v6);
      if (__OFADD__(v12[2], (v14 & 1) == 0))
      {
        break;
      }

      v15 = v13;
      v16 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B9E8, &unk_23158B8A0);
      if (sub_231586A64())
      {
        v17 = sub_23149C888(v5, v6);
        if ((v16 & 1) != (v18 & 1))
        {
          goto LABEL_14;
        }

        v15 = v17;
      }

      if (v16)
      {
        v19 = (v36[7] + 56 * v15);
        v20 = v19[2];
        v21 = v19[3];
        v22 = v19[6];
        OUTLINED_FUNCTION_1_21(v19, v27, v19[1], v19[5], v30, v31, v33, v10, v34, v35);
      }

      else
      {
        v36[(v15 >> 6) + 8] |= 1 << v15;
        v23 = (v36[6] + 16 * v15);
        *v23 = v5;
        v23[1] = v6;
        OUTLINED_FUNCTION_1_21((v36[7] + 56 * v15), v27, v28, v29, v30, v31, v33, v10, v34, v35);
        v24 = v36[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_13;
        }

        v36[2] = v26;
      }

      v2 = v30;
      *v30 = v36;

      swift_endAccess();

      v3 = v32 - 1;
      v4 += 7;
      if (v32 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    result = sub_231586C84();
    __break(1u);
  }

  return result;
}

uint64_t sub_23150F940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = a4();
  sub_23150F6C0(v7, (a3 + 16));

  return v6(v8);
}

uint64_t sub_23150F9AC()
{
  v1 = sub_231585884();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v44 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v43 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = v43 - v9;
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v11 = sub_231585FF4();
  __swift_project_value_buffer(v11, qword_280D72248);
  v12 = sub_231585FE4();
  v13 = sub_2315865D4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_231496000, v12, v13, "InstalledAudioAppProvider#pluginKitExtensions...", v14, 2u);
    MEMORY[0x231931280](v14, -1, -1);
  }

  v45 = v8;

  sub_231585874();
  if (qword_280D6CCE0 != -1)
  {
    swift_once();
  }

  v16 = sub_2315715F4(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B430, &unk_23158B8B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588FE0;
  v18 = *MEMORY[0x277CCA0F8];
  *(inited + 32) = sub_2315861A4();
  *(inited + 40) = v19;
  v20 = *MEMORY[0x277CD3858];
  v21 = sub_2315861A4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v21;
  *(inited + 56) = v22;
  v23 = *MEMORY[0x277CD3828];
  *(inited + 80) = sub_2315861A4();
  *(inited + 88) = v24;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
  *(inited + 96) = v16;
  v25 = sub_2315860F4();
  v26 = swift_allocObject();
  *(v26 + 16) = MEMORY[0x277D84F90];
  v27 = [objc_opt_self() defaultWorkspace];
  if (v27)
  {
    v28 = v27;
    sub_2314BF8FC(v0, v47);
    v29 = swift_allocObject();
    *(v29 + 16) = v25;
    *(v29 + 24) = v26;
    v30 = v47[1];
    *(v29 + 32) = v47[0];
    *(v29 + 48) = v30;
    *(v29 + 64) = v48;
    aBlock[4] = sub_231512604;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2315114F4;
    aBlock[3] = &block_descriptor_37;
    v31 = _Block_copy(aBlock);

    sub_231512450(v25, v31, v28);

    _Block_release(v31);
  }

  else
  {
  }

  v32 = v45;
  (*(v2 + 16))(v45, v10, v1);
  v33 = sub_231585FE4();
  v34 = sub_2315865D4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    v36 = v44;
    sub_231585874();
    sub_2315857A4();
    v38 = v37;
    v43[1] = v26 + 16;
    v39 = *(v2 + 8);
    v39(v36, v1);
    v39(v32, v1);
    *(v35 + 4) = v38;
    _os_log_impl(&dword_231496000, v33, v34, "InstalledAudioAppProvider#pluginKitExtensions complete in %fms", v35, 0xCu);
    MEMORY[0x231931280](v35, -1, -1);

    v39(v10, v1);
  }

  else
  {

    v40 = *(v2 + 8);
    v40(v32, v1);
    v40(v10, v1);
  }

  swift_beginAccess();
  v41 = *(v26 + 16);

  return v41;
}

uint64_t sub_23150FF48(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, void (*a5)(uint64_t))
{
  v37 = a5;
  v9 = sub_231585884();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  swift_beginAccess();
  v17 = *(a2 + 16);
  v38 = a3;
  swift_beginAccess();

  sub_2315123BC(v18, sub_231512578, 0, sub_231511704);
  swift_endAccess();
  swift_beginAccess();
  v19 = *(a1 + 16);

  v21 = sub_231571668(v20);
  if (qword_280D70420 != -1)
  {
LABEL_13:
    swift_once();
  }

  v22 = sub_231585FF4();
  __swift_project_value_buffer(v22, qword_280D72248);
  (*(v10 + 16))(v16, a4, v9);

  a4 = sub_231585FE4();
  v23 = sub_2315865D4();
  if (os_log_type_enabled(a4, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134218240;
    *(v24 + 4) = *(v21 + 16);

    *(v24 + 12) = 2048;
    sub_231585874();
    sub_2315857A4();
    v26 = v25;
    v27 = *(v10 + 8);
    v27(v14, v9);
    v27(v16, v9);
    *(v24 + 14) = v26;
    _os_log_impl(&dword_231496000, a4, v23, "InstalledAudioAppProvider#generalOSInstalledApps found %ld bundles in %fms", v24, 0x16u);
    MEMORY[0x231931280](v24, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v16, v9);
  }

  sub_231510848(v21);
  v9 = v28;

  v10 = 0;
  v21 = MEMORY[0x277D84F90];
  v39 = MEMORY[0x277D84F90];
  v29 = *(v9 + 16);
  v30 = v9 + 40;
  while (v29 != v10)
  {
    if (v10 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_13;
    }

    v31 = *(v30 + 24);
    v32 = *(v30 + 32);
    a4 = *v30;
    v14 = *(v30 + 8);
    v33 = *(v30 - 8);
    type metadata accessor for AppMetadata();
    swift_allocObject();
    AppMetadata.init(bundleIdentifer:localizedAppName:supportedMediaCategories:)(v33, a4, v31, v32, v14);

    MEMORY[0x231930040](v34);
    v16 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2315863C4();
    }

    sub_231586404();
    v21 = v39;
    v30 += 56;
    ++v10;
  }

  v37(v21);
}

void sub_231510364(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[6];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v50 = a1[3];

  sub_23149B228(v9);
  sub_23149FF38();
  v47 = sub_2315715F4(v11);
  sub_23149B228(v8);
  sub_23149FF38();
  v49 = sub_2315715F4(v12);
  sub_23149B228(v10);
  sub_23149FF38();
  v14 = sub_2315715F4(v13);
  v15 = 0;
  v16 = *(v14 + 16);
  v17 = v14 + 40;
  v48 = MEMORY[0x277D84F90];
LABEL_2:
  v18 = (v17 + 16 * v15);
  while (v16 != v15)
  {
    if (v15 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(v18 - 1);
    v9 = *v18;
    if (v7 != v4 || v9 != v5)
    {
      v20 = *(v18 - 1);
      v21 = *v18;
      if ((sub_231586C44() & 1) == 0)
      {

        v22 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = *(v48 + 16);
          sub_23152D598();
          v22 = v48;
        }

        v24 = *(v22 + 16);
        v25 = v24 + 1;
        if (v24 >= *(v22 + 24) >> 1)
        {
          sub_23152D598();
          v25 = v24 + 1;
          v22 = v48;
        }

        ++v15;
        *(v22 + 16) = v25;
        v48 = v22;
        v26 = v22 + 16 * v24;
        *(v26 + 32) = v7;
        *(v26 + 40) = v9;
        v17 = v14 + 40;
        goto LABEL_2;
      }
    }

    v18 += 2;
    ++v15;
  }

  v27 = a3[3];
  v28 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v27);
  v29 = *(v28 + 8);

  v9 = v48;

  v14 = v29(v4, v5, v27, v28);
  v7 = v30;
  if (qword_280D70420 == -1)
  {
    goto LABEL_17;
  }

LABEL_22:
  swift_once();
LABEL_17:
  v31 = sub_231585FF4();
  __swift_project_value_buffer(v31, qword_280D72248);

  v32 = v49;

  v33 = sub_231585FE4();
  v34 = sub_2315865F4();

  if (os_log_type_enabled(v33, v34))
  {
    v45 = v14;
    v35 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v35 = 136446978;

    v36 = sub_2314A22E8();

    *(v35 + 4) = v36;
    *(v35 + 12) = 2082;

    v43 = v34;
    v37 = MEMORY[0x277D837D0];
    MEMORY[0x231930080](v49);

    v38 = sub_2314A22E8();

    *(v35 + 14) = v38;
    *(v35 + 22) = 2082;

    MEMORY[0x231930080](v39, v37);

    v40 = sub_2314A22E8();

    *(v35 + 24) = v40;
    *(v35 + 32) = 2082;
    MEMORY[0x231930080](v9, v37);

    v41 = sub_2314A22E8();

    *(v35 + 34) = v41;
    v32 = v49;
    _os_log_impl(&dword_231496000, v33, v43, "InstalledAudioAppProvider#generalOSInstalledApps merged bundle: %{public}s, supportedCategories: %{public}s, supportedIntents: %{public}s, counterpartBundleIdentifiers: %{public}s", v35, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x231931280](v51, -1, -1);
    v42 = v35;
    v14 = v45;
    MEMORY[0x231931280](v42, -1, -1);
  }

  else
  {
  }

  *a4 = v4;
  a4[1] = v5;
  a4[2] = v32;
  a4[3] = v47;
  a4[4] = v14;
  a4[5] = v7;
  a4[6] = v9;
}

void sub_231510848(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v23 = a1 + 80;
  v24 = MEMORY[0x277D84F90];
  v25 = v2;
LABEL_2:
  v3 = (v23 + 56 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_21;
    }

    v27 = v1 + 1;
    v28 = v1;
    v4 = *(v3 - 6);
    v5 = *(v3 - 5);
    v6 = *(v3 - 4);
    v7 = *(v3 - 3);
    v8 = *(v3 - 1);
    v26 = *(v3 - 2);
    v9 = *v3;
    v10 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    swift_bridgeObjectRetain_n();
    v11 = v6;

    v12 = sub_2314BA520(v4, v5, 0);
    v13 = v12;
    if (!v12)
    {
      goto LABEL_14;
    }

    if (([v12 appProtectionHidden] & 1) == 0)
    {

LABEL_14:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = *(v24 + 16);
        sub_23152D814();
        v19 = v24;
      }

      v21 = *(v19 + 16);
      if (v21 >= *(v19 + 24) >> 1)
      {
        sub_23152D814();
        v19 = v24;
      }

      *(v19 + 16) = v21 + 1;
      v24 = v19;
      v22 = (v19 + 56 * v21);
      v22[4] = v4;
      v22[5] = v5;
      v22[6] = v11;
      v22[7] = v7;
      v22[8] = v26;
      v22[9] = v8;
      v22[10] = v9;
      v1 = v27;
      v2 = v25;
      goto LABEL_2;
    }

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v14 = sub_231585FF4();
    __swift_project_value_buffer(v14, qword_280D72248);

    v15 = sub_231585FE4();
    v16 = sub_2315865D4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v17 = 136315138;
      *(v17 + 4) = sub_2314A22E8();
      _os_log_impl(&dword_231496000, v15, v16, "App %s is hidden, removing from installed apps", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x231931280](v29, -1, -1);
      MEMORY[0x231931280](v17, -1, -1);
    }

    v2 = v25;
    v1 = v28 + 1;
    v3 += 7;
  }
}

void sub_231510BD8(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a1 || a2)
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v6 = sub_231585FF4();
    __swift_project_value_buffer(v6, qword_280D72248);

    v7 = a2;
    oslog = sub_231585FE4();
    v8 = sub_2315865E4();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 136315394;
      sub_2315860E4();
      v11 = sub_2314A22E8();

      *(v9 + 4) = v11;
      *(v9 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v12 = sub_231586C94();
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *&v71[0] = v12;
      *(&v71[0] + 1) = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B120, &qword_23158ACE0);
      sub_231586204();
      v36 = sub_2314A22E8();

      *(v9 + 14) = v36;
      _os_log_impl(&dword_231496000, oslog, v8, "InstalledAudioAppProvider#pluginKitApps error enumerating plugins matching query: %s, %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231931280](v10, -1, -1);
      MEMORY[0x231931280](v9, -1, -1);

      return;
    }

    goto LABEL_24;
  }

  v17 = a1;
  v18 = [v17 containingBundle];
  if (!v18)
  {
LABEL_19:
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v37 = sub_231585FF4();
    __swift_project_value_buffer(v37, qword_280D72248);
    v38 = v17;
    oslog = sub_231585FE4();
    v39 = sub_2315865E4();

    if (os_log_type_enabled(oslog, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v38;
      *v41 = a1;
      v63 = v38;
      _os_log_impl(&dword_231496000, oslog, v39, "InstalledAudioAppProvider#pluginKitApps missing containing bundle of plugin: %@", v40, 0xCu);
      sub_2314CC1C4(v41, &unk_27DD5B410, &unk_2315890B0);
      MEMORY[0x231931280](v41, -1, -1);
      MEMORY[0x231931280](v40, -1, -1);

      v42 = v63;
LABEL_25:

      return;
    }

LABEL_24:
    v42 = oslog;
    goto LABEL_25;
  }

  v19 = v18;
  v20 = sub_2314D7D2C(v18);
  if (!v21)
  {

    goto LABEL_19;
  }

  v22 = v20;
  v23 = v21;
  if (qword_280D6CCD8 != -1)
  {
    swift_once();
  }

  v24 = qword_280D72160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B830, &qword_23158B470);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_231588FF0;
  *(v25 + 32) = v17;
  sub_2314A207C(0, &qword_280D6C668, 0x277CC1ED8);
  v26 = v17;

  v27 = sub_231586374();

  v28 = INSupportedMediaCategories();

  if (v28)
  {
    v29 = sub_231586514();

    v30 = sub_231512188(v29, v24);

    if (v30[2])
    {
      v31 = *MEMORY[0x277CD3830];
      v32 = sub_2315861A4();
      v34 = v33;
      sub_2314A207C(0, &qword_280D6C5F0, 0x277CBEA60);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      if (sub_2315124CC(v32, v34, ObjCClassFromMetadata, 0, v26))
      {
        sub_2315867A4();
        swift_unknownObjectRelease();
      }

      else
      {
        v69 = 0u;
        v70 = 0u;
      }

      v71[0] = v69;
      v71[1] = v70;
      if (*(&v70 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
        if (swift_dynamicCast())
        {
          if (qword_280D6CCE0 != -1)
          {
            swift_once();
          }

          v43 = qword_280D72168;

          v44 = sub_231511E5C(v68, v43);

          if (qword_280D70420 != -1)
          {
            swift_once();
          }

          v45 = sub_231585FF4();
          __swift_project_value_buffer(v45, qword_280D72248);

          v46 = sub_231585FE4();
          v47 = sub_2315865D4();

          v64 = v47;
          osloga = v22;
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            *&v71[0] = v62;
            *v48 = 136315650;
            *(v48 + 4) = sub_2314A22E8();
            *(v48 + 12) = 2080;
            sub_231586524();
            log = v46;
            v49 = v44;
            v50 = sub_2314A22E8();

            *(v48 + 14) = v50;
            *(v48 + 22) = 2080;
            sub_231586524();
            v51 = sub_2314A22E8();

            *(v48 + 24) = v51;
            v44 = v49;
            _os_log_impl(&dword_231496000, log, v64, "InstalledAudioAppProvider#pluginKitExtensions found bundle: %s, supportedCategories: %s, supportedIntents: %s", v48, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x231931280](v62, -1, -1);
            MEMORY[0x231931280](v48, -1, -1);
          }

          else
          {
          }

          v65 = sub_2315715F4(v30);
          v52 = sub_2315715F4(v44);
          v53 = a5[3];
          v54 = a5[4];
          __swift_project_boxed_opaque_existential_1(a5, v53);
          v55 = (*(v54 + 8))(osloga, v23, v53, v54);
          v57 = v56;
          swift_beginAccess();
          sub_2314D4620();
          v58 = *(*(a4 + 16) + 16);
          sub_2314D46AC(v58);
          v59 = *(a4 + 16);
          *(v59 + 16) = v58 + 1;
          v60 = (v59 + 56 * v58);
          v60[4] = osloga;
          v60[5] = v23;
          v60[6] = v65;
          v60[7] = v52;
          v60[8] = v55;
          v60[9] = v57;
          v60[10] = MEMORY[0x277D84F90];
          *(a4 + 16) = v59;
          swift_endAccess();
        }

        else
        {
        }
      }

      else
      {

        sub_2314CC1C4(v71, &qword_27DD5B218, &unk_23158A010);
      }
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

void sub_2315114F4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t objectdestroy_3Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_231511628()
{
  v1 = *(sub_231585884() - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_23150FF48(v3, v4, v0 + 32, (v0 + v2), v6);
}

uint64_t sub_2315116D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_231511720(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(_BYTE *__return_ptr, id *, void *))
{
  sub_2314D7DC8(v87);
  v6 = v87[1];
  v7 = v87[3];
  v8 = v87[4];
  v66 = v87[5];
  v72 = v87[0];
  v9 = (v87[2] + 64) >> 6;

  v64 = v9;
  v65 = v6;
  if (!v8)
  {
LABEL_3:
    v12 = v7;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        goto LABEL_23;
      }

      v10 = *(v6 + 8 * v11);
      ++v12;
      if (v10)
      {
        v73 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    sub_231586C84();
    __break(1u);
    goto LABEL_30;
  }

  while (1)
  {
    v73 = a4;
    v10 = v8;
    v11 = v7;
LABEL_8:
    v13 = __clz(__rbit64(v10)) | (v11 << 6);
    v14 = (*(v72 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(v72 + 56) + 56 * v13);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v23 = v17[4];
    v22 = v17[5];
    v24 = v17[6];
    *__src = v15;
    *&__src[8] = v16;
    *&__src[16] = v18;
    *&__src[24] = v19;
    *&__src[32] = v20;
    *&__src[40] = v21;
    *&__src[48] = v23;
    *&__src[56] = v22;
    *&__src[64] = v24;

    v66(&v78, __src);
    memcpy(__dst, __src, sizeof(__dst));
    sub_2314CC1C4(__dst, &qword_27DD5B9E0, &qword_23158B898);
    if (!v79)
    {
LABEL_23:
      sub_2314A4B70();

      return;
    }

    v25 = v78;
    v26 = v81;
    v75[7] = v78;
    v75[8] = v79;
    v27 = v82;
    v28 = v83;
    v69 = v84;
    v70 = v80;
    __dst[0] = v80;
    __dst[1] = v81;
    __dst[2] = v82;
    __dst[3] = v83;
    __dst[4] = v84;
    __dst[5] = v85;
    v67 = v86;
    v68 = v85;
    __dst[6] = v86;
    v29 = *v88;
    v74 = v79;
    v31 = sub_23149C888(v78, v79);
    v32 = *(v29 + 16);
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_27;
    }

    v35 = v30;
    if (*(v29 + 24) >= v34)
    {
      if (v73)
      {
        if ((v30 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B9E8, &unk_23158B8A0);
        sub_231586A74();
        if ((v35 & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v36 = v88;
      sub_2315089F8(v34, v73 & 1);
      v37 = *v36;
      v38 = sub_23149C888(v25, v74);
      if ((v35 & 1) != (v39 & 1))
      {
        goto LABEL_29;
      }

      v31 = v38;
      if ((v35 & 1) == 0)
      {
LABEL_19:
        v56 = *v88;
        v56[(v31 >> 6) + 8] |= 1 << v31;
        v57 = (v56[6] + 16 * v31);
        *v57 = v25;
        v57[1] = v74;
        v58 = (v56[7] + 56 * v31);
        *v58 = v70;
        v58[1] = v26;
        v58[2] = v27;
        v58[3] = v28;
        v58[4] = v69;
        v58[5] = v68;
        v58[6] = v67;
        v59 = v56[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_28;
        }

        v56[2] = v61;
        goto LABEL_21;
      }
    }

    v40 = *v88;
    v41 = *(*v88 + 56) + 56 * v31;
    v42 = *(v41 + 8);
    v43 = *(v41 + 16);
    v44 = *(v41 + 24);
    v46 = *(v41 + 32);
    v45 = *(v41 + 40);
    v47 = *(v41 + 48);
    v75[0] = *v41;
    v75[1] = v42;
    v75[2] = v43;
    v75[3] = v44;
    v75[4] = v46;
    v75[5] = v45;
    v75[6] = v47;

    a5(__src, v75, __dst);
    if (v71)
    {
      break;
    }

    v48 = *(v40 + 56) + 56 * v31;
    v49 = *&__src[24];
    v50 = *&__src[48];
    v51 = *(v48 + 8);
    v52 = *(v48 + 16);
    v53 = *(v48 + 24);
    v55 = *(v48 + 40);
    v54 = *(v48 + 48);
    *v48 = *__src;
    *(v48 + 8) = *&__src[8];
    *(v48 + 24) = v49;
    *(v48 + 32) = *&__src[32];
    *(v48 + 48) = v50;

LABEL_21:
    v8 = (v10 - 1) & v10;
    a4 = 1;
    v7 = v11;
    v9 = v64;
    v6 = v65;
    if (!v8)
    {
      goto LABEL_3;
    }
  }

  v75[0] = v71;
  v62 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_2314A4B70();

    return;
  }

LABEL_30:
  *__src = 0;
  *&__src[8] = 0xE000000000000000;
  sub_231586954();
  MEMORY[0x23192FF80](0xD00000000000001BLL, 0x80000002315913A0);
  sub_231586A54();
  MEMORY[0x23192FF80](39, 0xE100000000000000);
  sub_231586AA4();
  __break(1u);
}

unint64_t *sub_231511D50(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_23156259C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_231511DE0(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

void *sub_231511E5C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v13[6] = *MEMORY[0x277D85DE8];
  v13[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v13[3] = v13;
  v13[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v6 = (&v13[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_23149BEE0(0, v5, v6);
    sub_231511FFC(v6, v5, v3, a2);
    v8 = v7;
  }

  else
  {
    v11 = swift_slowAlloc();
    v8 = sub_231511DE0(v11, v5, sub_231512610);

    MEMORY[0x231931280](v11, -1, -1);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_231511FFC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v25 = *(a3 + 16);
  v24 = a3 + 32;
  v7 = a4 + 56;
  while (1)
  {
    v22 = v5;
LABEL_3:
    if (v6 == v25)
    {
      goto LABEL_19;
    }

    if (v6 >= v25)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_21;
    }

    v8 = (v24 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    v26 = v6 + 1;
    v11 = *(a4 + 40);
    sub_231586D14();

    sub_231586274();
    v12 = sub_231586D44();
    v13 = ~(-1 << *(a4 + 32));
    do
    {
      v14 = v12 & v13;
      v15 = (v12 & v13) >> 6;
      v16 = 1 << (v12 & v13);
      if ((v16 & *(v7 + 8 * v15)) == 0)
      {

        v6 = v26;
        goto LABEL_3;
      }

      v17 = (*(a4 + 48) + 16 * v14);
      if (*v17 == v10 && v17[1] == v9)
      {
        break;
      }

      v19 = sub_231586C44();
      v12 = v14 + 1;
    }

    while ((v19 & 1) == 0);

    v20 = a1[v15];
    a1[v15] = v20 | v16;
    v6 = v26;
    if ((v20 & v16) != 0)
    {
      goto LABEL_3;
    }

    v5 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_19:

      sub_23152B004(a1, a2, v22, a4);
      return;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t *sub_231512188(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = (v14 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_23149BEE0(0, v6, v8);
    sub_23156259C(v8, v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v13 = swift_slowAlloc();

    v10 = sub_231511D50(v13, v6, a2, a1);

    MEMORY[0x231931280](v13, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_231512350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  *a1 = *a4;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a4 + 32);
  *(a1 + 48) = *(a4 + 48);

  sub_2315125CC(a4, v8);
  return a2;
}

void sub_2315123BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *__return_ptr, id *, void *))
{
  v9 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v4;
  sub_231511720(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4);
  *v4 = v11;
}

void sub_231512450(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2315860C4();
  [a3 enumeratePluginsMatchingQuery:v5 withBlock:a2];
}

id sub_2315124CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_231586174();

  v9 = [a5 objectForInfoDictionaryKey:v8 ofClass:a3 inScope:a4];

  return v9;
}

void sub_231512548(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_231511FFC(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

uint64_t sub_231512578@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  v8[0] = *(a1 + 16);
  v8[1] = v5;
  v8[2] = *(a1 + 48);
  v9 = *(a1 + 64);
  result = sub_231512350((a2 + 2), v3, v4, v8);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_23151262C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_231512690(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2315126D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_231512730()
{
  result = qword_27DD5BA10;
  if (!qword_27DD5BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BA10);
  }

  return result;
}

uint64_t sub_231512794()
{
  v0 = sub_2315861A4();
  v2 = v1;
  if (v0 == sub_2315861A4() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_0_53();
  }

  return v5 & 1;
}

uint64_t sub_23151280C(unsigned __int8 a1, char a2)
{
  v2 = 0x656E6F685069;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x656E6F685069;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1684099177;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x646F50656D6F68;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x5654656C707061;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 6513005;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x6863746177;
      break;
    case 6:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1684099177;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x646F50656D6F68;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x5654656C707061;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 6513005;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v2 = 0x6863746177;
      break;
    case 6:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_53();
  }

  return v8 & 1;
}

uint64_t sub_2315129B0(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000014;
  v3 = "kout";
  v4 = "kout";
  v5 = a1;
  v6 = 0xD000000000000014;
  switch(v5)
  {
    case 1:
      v4 = "INMediaCategoryGeneral";
      break;
    case 2:
      v4 = "INMediaCategoryRadio";
      v6 = 0xD000000000000017;
      break;
    case 3:
      v4 = "INMediaCategoryMusic";
      break;
    case 4:
      v4 = "INMediaCategoryPodcasts";
      v6 = 0xD000000000000019;
      break;
    case 5:
      v4 = "INMediaCategoryAudiobooks";
      v6 = 0xD000000000000016;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "INMediaCategoryGeneral";
      break;
    case 2:
      v3 = "INMediaCategoryRadio";
      v2 = 0xD000000000000017;
      break;
    case 3:
      v3 = "INMediaCategoryMusic";
      break;
    case 4:
      v3 = "INMediaCategoryPodcasts";
      v2 = 0xD000000000000019;
      break;
    case 5:
      v3 = "INMediaCategoryAudiobooks";
      v2 = 0xD000000000000016;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_53();
  }

  return v8 & 1;
}

uint64_t sub_231512AFC(char a1, char a2)
{
  v3 = 0xD000000000000019;
  v4 = "tionDisambiguationFrequency";
  v5 = "tionDisambiguationFrequency";
  switch(a1)
  {
    case 1:
      v5 = "";
      goto LABEL_4;
    case 2:
      v5 = "candidate_bundles";
LABEL_4:
      v3 = 0xD000000000000011;
      break;
    case 3:
      v5 = "candidate_actions";
      v3 = 0xD000000000000018;
      break;
    default:
      break;
  }

  v6 = 0xD000000000000019;
  switch(a2)
  {
    case 1:
      v4 = "";
      goto LABEL_9;
    case 2:
      v4 = "candidate_bundles";
LABEL_9:
      v6 = 0xD000000000000011;
      break;
    case 3:
      v4 = "candidate_actions";
      v6 = 0xD000000000000018;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_53();
  }

  return v8 & 1;
}

uint64_t sub_231512C1C(unsigned __int8 a1, char a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 2036625250;
    }

    else
    {
      v4 = 0x70756F7267;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x656C746974;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 2036625250;
    }

    else
    {
      v2 = 0x70756F7267;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_53();
  }

  return v8 & 1;
}

uint64_t sub_231512CF0(unsigned __int8 a1, char a2)
{
  v2 = 0x636973754DLL;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x636973754DLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x7374736163646F50;
      break;
    case 2:
      v5 = 0x736B6F6F42;
      break;
    case 3:
      v5 = 0x6F69646152;
      break;
    case 4:
      v5 = 0xD000000000000011;
      v3 = 0x80000002315904C0;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x7374736163646F50;
      break;
    case 2:
      v2 = 0x736B6F6F42;
      break;
    case 3:
      v2 = 0x6F69646152;
      break;
    case 4:
      v2 = 0xD000000000000011;
      v6 = 0x80000002315904C0;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_53();
  }

  return v8 & 1;
}

uint64_t sub_231512E3C(unsigned __int8 a1, char a2)
{
  v2 = 0x6449656C646E7562;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6449656C646E7562;
  switch(v4)
  {
    case 1:
      v5 = 0x6449797469746E65;
      break;
    case 2:
      v5 = 0x73556E69616D6F64;
      v3 = 0xED00006573614365;
      break;
    case 3:
      v5 = 0x7355646572616873;
      v3 = 0xEC00000064497265;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x746E65746E69;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6449797469746E65;
      break;
    case 2:
      v2 = 0x73556E69616D6F64;
      v6 = 0xED00006573614365;
      break;
    case 3:
      v2 = 0x7355646572616873;
      v6 = 0xEC00000064497265;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x746E65746E69;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_53();
  }

  return v8 & 1;
}

uint64_t sub_231512FC4(char a1, char a2)
{
  v2 = 808465261;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x303035326DLL;
    }

    else
    {
      v3 = 0x3635316D6BLL;
    }

    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 808465261;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x303035326DLL;
    }

    else
    {
      v2 = 0x3635316D6BLL;
    }

    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_53();
  }

  return v7 & 1;
}

uint64_t sub_2315130A0(unsigned __int8 a1, char a2)
{
  v2 = 0xE90000000000006BLL;
  v3 = 0x656557664F796164;
  v4 = 0xE90000000000006BLL;
  v5 = a1;
  v6 = 0x656557664F796164;
  switch(v5)
  {
    case 1:
      v6 = 0x6144664F72756F68;
      v4 = 0xE900000000000079;
      break;
    case 2:
      v6 = 0x59664F68746E6F6DLL;
      v7 = 7496037;
      goto LABEL_5;
    case 3:
      v6 = 0x6F4D664F6B656577;
      v7 = 6845550;
LABEL_5:
      v4 = v7 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6144664F72756F68;
      v2 = 0xE900000000000079;
      break;
    case 2:
      v3 = 0x59664F68746E6F6DLL;
      v8 = 7496037;
      goto LABEL_10;
    case 3:
      v3 = 0x6F4D664F6B656577;
      v8 = 6845550;
LABEL_10:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    default:
      break;
  }

  if (v6 == v3 && v4 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_231586C44();
  }

  return v10 & 1;
}

uint64_t sub_23151320C()
{
  v0 = DomainUseCase.rawValue.getter();
  v2 = v1;
  if (v0 == DomainUseCase.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_0_53();
  }

  return v5 & 1;
}

uint64_t sub_231513294(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 27954;
  switch(a1)
  {
    case 1:
      v3 = 0xE300000000000000;
      v4 = 7155761;
      break;
    case 2:
      v4 = 26673;
      break;
    case 3:
      v4 = 26678;
      break;
    case 4:
      v4 = 25649;
      break;
    case 5:
      v4 = 25655;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v4 = 6567986;
      break;
    case 7:
      v3 = 0xE300000000000000;
      v4 = 6712937;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 27954;
  switch(a2)
  {
    case 1:
      v5 = 0xE300000000000000;
      v6 = 7155761;
      break;
    case 2:
      v6 = 26673;
      break;
    case 3:
      v6 = 26678;
      break;
    case 4:
      v6 = 25649;
      break;
    case 5:
      v6 = 25655;
      break;
    case 6:
      v5 = 0xE300000000000000;
      v6 = 6567986;
      break;
    case 7:
      v5 = 0xE300000000000000;
      v6 = 6712937;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_53();
  }

  return v8 & 1;
}

uint64_t sub_2315133DC()
{
  sub_231585F64();
  sub_231513F60();
  sub_231586354();
  sub_231586354();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_231586C44();
  }

  return v1 & 1;
}

Swift::Bool __swiftcall INIntent.isRequestByHandleType()()
{
  v3 = v0;
  objc_opt_self();
  v4 = OUTLINED_FUNCTION_4_16();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = sub_231513F08(v5, &selRef_recipients);
    if (v7)
    {
      v1 = v7;
      if (sub_2314AA920(v7))
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_8_14();
        }

        else
        {
          OUTLINED_FUNCTION_6_15();
          if (!v8)
          {
            __break(1u);
            goto LABEL_71;
          }

          v9 = *(v1 + 32);
        }

        OUTLINED_FUNCTION_7_18();
        v1 = [v2 personHandle];

        if (v1)
        {
          v2 = [v1 type];

          if (v2 == 2)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
      }
    }

    v15 = sub_231513F08(v5, &selRef_recipients);
    if (!v15)
    {
      goto LABEL_65;
    }

    v11 = v15;
    if (!sub_2314AA920(v15))
    {
      goto LABEL_66;
    }

    if ((v11 & 0xC000000000000001) == 0)
    {
      OUTLINED_FUNCTION_1_22();
      if (v16)
      {
        v17 = *(v11 + 32);
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_73;
    }

LABEL_71:
    OUTLINED_FUNCTION_2_20();
LABEL_25:
    OUTLINED_FUNCTION_3_19();
    v18 = [v1 personHandle];

    if (v18)
    {
      goto LABEL_64;
    }

    goto LABEL_65;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_15();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v6 = v3;
    v12 = sub_231513F08(v11, &selRef_contacts);
    if (v12)
    {
      v1 = v12;
      if (sub_2314AA920(v12))
      {
        if ((v1 & 0xC000000000000001) == 0)
        {
          OUTLINED_FUNCTION_6_15();
          if (!v13)
          {
            __break(1u);
            goto LABEL_83;
          }

          v14 = *(v1 + 32);
          goto LABEL_16;
        }

LABEL_73:
        OUTLINED_FUNCTION_8_14();
LABEL_16:
        OUTLINED_FUNCTION_7_18();
        v1 = [v2 personHandle];

        if (v1)
        {
          v2 = [v1 type];

          if (v2 == 2)
          {
            goto LABEL_50;
          }
        }

        goto LABEL_37;
      }
    }

LABEL_37:
    v24 = sub_231513F08(v11, &selRef_contacts);
    if (!v24)
    {
      goto LABEL_65;
    }

    v20 = v24;
    if (!sub_2314AA920(v24))
    {
      goto LABEL_66;
    }

    if ((v20 & 0xC000000000000001) != 0)
    {
      goto LABEL_83;
    }

    OUTLINED_FUNCTION_1_22();
    if (v25)
    {
LABEL_62:
      v35 = *(v20 + 32);
      goto LABEL_63;
    }

    __break(1u);
    goto LABEL_77;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_15();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v19;
    v6 = v3;
    v21 = sub_231513F08(v20, &selRef_contacts);
    if (v21)
    {
      v1 = v21;
      if (sub_2314AA920(v21))
      {
        if ((v1 & 0xC000000000000001) == 0)
        {
          OUTLINED_FUNCTION_6_15();
          if (!v22)
          {
            __break(1u);
            goto LABEL_83;
          }

          v23 = *(v1 + 32);
          goto LABEL_33;
        }

LABEL_77:
        OUTLINED_FUNCTION_8_14();
LABEL_33:
        OUTLINED_FUNCTION_7_18();
        v1 = [v2 personHandle];

        if (v1)
        {
          v2 = [v1 type];

          if (v2 == 2)
          {
            goto LABEL_50;
          }
        }

        goto LABEL_52;
      }
    }

LABEL_52:
    v31 = sub_231513F08(v20, &selRef_contacts);
    if (!v31)
    {
      goto LABEL_65;
    }

    v20 = v31;
    if (!sub_2314AA920(v31))
    {
      goto LABEL_66;
    }

    if ((v20 & 0xC000000000000001) != 0)
    {
      goto LABEL_83;
    }

    OUTLINED_FUNCTION_1_22();
    if (v32)
    {
      goto LABEL_62;
    }

    __break(1u);
LABEL_81:
    OUTLINED_FUNCTION_8_14();
    goto LABEL_48;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_15();
  v26 = swift_dynamicCastObjCClass();
  if (!v26)
  {
    return v26;
  }

  v20 = v26;
  v6 = v3;
  v27 = sub_231513F08(v20, &selRef_contacts);
  if (!v27)
  {
LABEL_58:
    v33 = sub_231513F08(v20, &selRef_contacts);
    if (v33)
    {
      v20 = v33;
      if (sub_2314AA920(v33))
      {
        if ((v20 & 0xC000000000000001) == 0)
        {
          OUTLINED_FUNCTION_1_22();
          if (!v34)
          {
            __break(1u);
            return v26;
          }

          goto LABEL_62;
        }

LABEL_83:
        OUTLINED_FUNCTION_2_20();
LABEL_63:
        OUTLINED_FUNCTION_3_19();
        v18 = [v1 personHandle];

        if (v18)
        {
LABEL_64:
          v36 = [v18 type];

          LOBYTE(v26) = v36 == 1;
          return v26;
        }

        goto LABEL_65;
      }

LABEL_66:

      goto LABEL_67;
    }

LABEL_65:

LABEL_67:
    LOBYTE(v26) = 0;
    return v26;
  }

  v1 = v27;
  if (!sub_2314AA920(v27))
  {

    goto LABEL_58;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_81;
  }

  OUTLINED_FUNCTION_6_15();
  if (!v28)
  {
    __break(1u);
    goto LABEL_83;
  }

  v29 = *(v1 + 32);
LABEL_48:
  OUTLINED_FUNCTION_7_18();
  v1 = [v2 personHandle];

  if (!v1)
  {
    goto LABEL_58;
  }

  v30 = [v1 type];

  if (v30 != 2)
  {
    goto LABEL_58;
  }

LABEL_50:

  LOBYTE(v26) = 1;
  return v26;
}

Swift::Bool __swiftcall INIntent.isRequestByContactLabel()()
{
  objc_opt_self();
  v1 = OUTLINED_FUNCTION_4_16();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    v4 = sub_231513F08(v2, &selRef_recipients);
    if (!v4)
    {
      goto LABEL_34;
    }

    v5 = v4;
    if (sub_2314AA920(v4))
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_2_20();
LABEL_7:
        OUTLINED_FUNCTION_3_19();
        v8 = [v2 personHandle];

        if (v8)
        {
          goto LABEL_32;
        }

LABEL_34:

        goto LABEL_36;
      }

      OUTLINED_FUNCTION_1_22();
      if (v6)
      {
        v7 = *(v5 + 32);
        goto LABEL_7;
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_35:

    goto LABEL_36;
  }

  objc_opt_self();
  v9 = OUTLINED_FUNCTION_4_16();
  if (!v9)
  {
    objc_opt_self();
    v14 = OUTLINED_FUNCTION_4_16();
    if (v14)
    {
      v2 = v14;
      v3 = v0;
      v15 = sub_231513F08(v2, &selRef_contacts);
      if (!v15)
      {
        goto LABEL_34;
      }

      v16 = v15;
      if (!sub_2314AA920(v15))
      {
        goto LABEL_35;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_1_22();
      if (v17)
      {
        v18 = *(v16 + 32);
        goto LABEL_23;
      }

      __break(1u);
    }

    else
    {
      objc_opt_self();
      v19 = OUTLINED_FUNCTION_4_16();
      if (!v19)
      {
        return v19;
      }

      v2 = v19;
      v3 = v0;
      v20 = sub_231513F08(v2, &selRef_contacts);
      if (!v20)
      {
        goto LABEL_34;
      }

      v21 = v20;
      if (!sub_2314AA920(v20))
      {
        goto LABEL_35;
      }

      if ((v21 & 0xC000000000000001) == 0)
      {
        OUTLINED_FUNCTION_1_22();
        if (!v22)
        {
          __break(1u);
          return v19;
        }

        v23 = *(v21 + 32);
LABEL_31:
        OUTLINED_FUNCTION_3_19();
        v8 = [v2 personHandle];

        if (v8)
        {
          goto LABEL_32;
        }

        goto LABEL_34;
      }
    }

    OUTLINED_FUNCTION_2_20();
    goto LABEL_31;
  }

  v2 = v9;
  v3 = v0;
  v10 = sub_231513F08(v2, &selRef_contacts);
  if (!v10)
  {
    goto LABEL_34;
  }

  v11 = v10;
  if (!sub_2314AA920(v10))
  {
    goto LABEL_35;
  }

  if ((v11 & 0xC000000000000001) == 0)
  {
    OUTLINED_FUNCTION_1_22();
    if (v12)
    {
      v13 = *(v11 + 32);
      goto LABEL_15;
    }

    __break(1u);
LABEL_42:
    OUTLINED_FUNCTION_2_20();
LABEL_23:
    OUTLINED_FUNCTION_3_19();
    v8 = [v2 personHandle];

    if (!v8)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

LABEL_40:
  OUTLINED_FUNCTION_2_20();
LABEL_15:
  OUTLINED_FUNCTION_3_19();
  v8 = [v2 personHandle];

  if (!v8)
  {
    goto LABEL_34;
  }

LABEL_32:
  v24 = [v8 label];

  if (!v24)
  {
LABEL_36:
    LOBYTE(v19) = 0;
    return v19;
  }

  LOBYTE(v19) = 1;
  return v19;
}

Swift::Bool __swiftcall INIntent.isRequestByPhoneNumber()()
{
  objc_opt_self();
  v1 = OUTLINED_FUNCTION_4_16();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    v4 = sub_231513F08(v2, &selRef_recipients);
    if (v4)
    {
      v5 = v4;
      if (sub_2314AA920(v4))
      {
        if ((v5 & 0xC000000000000001) == 0)
        {
          OUTLINED_FUNCTION_1_22();
          if (v6)
          {
LABEL_24:
            v16 = *(v5 + 32);
            goto LABEL_25;
          }

          __break(1u);
        }

        goto LABEL_37;
      }

LABEL_28:

      goto LABEL_29;
    }

    goto LABEL_27;
  }

  objc_opt_self();
  v7 = OUTLINED_FUNCTION_4_16();
  if (!v7)
  {
    objc_opt_self();
    v10 = OUTLINED_FUNCTION_4_16();
    if (!v10)
    {
      objc_opt_self();
      v13 = OUTLINED_FUNCTION_4_16();
      if (!v13)
      {
        return v13;
      }

      v2 = v13;
      v3 = v0;
      v14 = sub_231513F08(v2, &selRef_contacts);
      if (!v14)
      {
        goto LABEL_27;
      }

      v5 = v14;
      if (sub_2314AA920(v14))
      {
        if ((v5 & 0xC000000000000001) == 0)
        {
          OUTLINED_FUNCTION_1_22();
          if (!v15)
          {
            __break(1u);
            return v13;
          }

          goto LABEL_24;
        }

        goto LABEL_37;
      }

      goto LABEL_28;
    }

    v2 = v10;
    v3 = v0;
    v11 = sub_231513F08(v2, &selRef_contacts);
    if (v11)
    {
      v5 = v11;
      if (sub_2314AA920(v11))
      {
        if ((v5 & 0xC000000000000001) == 0)
        {
          OUTLINED_FUNCTION_1_22();
          if (v12)
          {
            goto LABEL_24;
          }

          __break(1u);
        }

        goto LABEL_37;
      }

      goto LABEL_28;
    }

LABEL_27:

LABEL_29:
    LOBYTE(v13) = 0;
    return v13;
  }

  v2 = v7;
  v3 = v0;
  v8 = sub_231513F08(v2, &selRef_contacts);
  if (!v8)
  {
    goto LABEL_27;
  }

  v5 = v8;
  if (!sub_2314AA920(v8))
  {
    goto LABEL_28;
  }

  if ((v5 & 0xC000000000000001) == 0)
  {
    OUTLINED_FUNCTION_1_22();
    if (v9)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

LABEL_37:
  OUTLINED_FUNCTION_2_20();
LABEL_25:
  OUTLINED_FUNCTION_3_19();
  v17 = [v2 personHandle];

  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = [v17 type];

  LOBYTE(v13) = v18 == 2;
  return v13;
}

unint64_t sub_231513EE4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_231513F08(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_231513FB8();
  OUTLINED_FUNCTION_5_15();
  v4 = sub_231586384();

  return v4;
}

unint64_t sub_231513F60()
{
  result = qword_27DD5BA18;
  if (!qword_27DD5BA18)
  {
    sub_231585F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BA18);
  }

  return result;
}

unint64_t sub_231513FB8()
{
  result = qword_27DD5BA20;
  if (!qword_27DD5BA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD5BA20);
  }

  return result;
}

uint64_t sub_231514004(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_231515024;
  *(v8 + 24) = v7;
  v11[4] = sub_2315116D4;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_231514320;
  v11[3] = &block_descriptor_10;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231514164(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  OUTLINED_FUNCTION_4_17();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_231515050;
  *(v8 + 24) = v7;
  v11[4] = sub_231515048;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_231514320;
  v11[3] = &block_descriptor_17;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2315142C0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  a1(a3 + 24);
  return swift_endAccess();
}

void *sub_231514348()
{
  type metadata accessor for InteractionStoreFactory();
  OUTLINED_FUNCTION_4_17();
  v0 = swift_allocObject();
  result = sub_2315143F8();
  qword_280D72208 = v0;
  return result;
}

uint64_t sub_231514380@<X0>(uint64_t a1@<X8>)
{
  sub_231585D24();
  v2 = sub_231585D34();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

void *sub_2315143F8()
{
  v1 = v0;
  sub_231585D34();
  v2 = sub_2315860F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BA28, &qword_23158B9D0);
  swift_allocObject();
  v1[2] = sub_23151FC94(v2, 0xD000000000000012, 0x8000000231591330);
  v1[3] = sub_231514380;
  v1[4] = 0;
  return v1;
}

uint64_t sub_2315144B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - v8;
  v10 = sub_231585B34();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  sub_231514674(a1, v17 - v16);
  v19 = *(v3 + 16);
  v20 = sub_2314CD8A4();
  v21 = sub_2315147E0();
  sub_231566760(v21, v22, v20, v9);

  v23 = sub_231585D34();
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v9, 1, v23);
  sub_2314B5064(v9);
  if (a1 == 1)
  {
    sub_231514930(v18);
  }

  v24 = sub_2314CD8A4();
  v25 = sub_2315147E0();
  sub_231566760(v25, v26, v24, a2);

  return (*(v13 + 8))(v18, v10);
}

uint64_t sub_231514674@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_231585B34();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v19 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v11 = (v10 - v9);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = (*(v13 + 16))(v12, v13);
  if (v15)
  {
    *v11 = v14;
    v11[1] = v15;
    (*(v19 + 104))(v11, *MEMORY[0x277D5FF38], v4);
    return (*(v19 + 32))(a2, v11, v4);
  }

  else
  {
    v17 = *MEMORY[0x277D5FF40];
    v18 = *(v19 + 104);

    return v18(a2, v17, v4);
  }
}

uint64_t sub_2315147E0()
{
  v1 = v0;
  v2 = sub_231585B34();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v10 = (v9 - v8);
  (*(v5 + 16))(v9 - v8, v1, v2);
  v11 = (*(v5 + 88))(v10, v2);
  if (v11 == *MEMORY[0x277D5FF38])
  {
    (*(v5 + 96))(v10, v2);
    result = *v10;
    v13 = v10[1];
  }

  else if (v11 == *MEMORY[0x277D5FF40])
  {
    return 0;
  }

  else
  {
    (*(v5 + 8))(v10, v2);
    return 0x454E494645444E55;
  }

  return result;
}

uint64_t sub_231514930(uint64_t a1)
{
  v2 = v1;
  v64 = a1;
  v60 = sub_231585B34();
  v3 = OUTLINED_FUNCTION_4_1(v60);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v56 - v13;
  v15 = sub_231585D34();
  v16 = OUTLINED_FUNCTION_4_1(v15);
  v63 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v62 = v21 - v20;
  v22 = sub_231585FD4();
  v23 = OUTLINED_FUNCTION_4_1(v22);
  v61 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5();
  if (qword_280D70418 != -1)
  {
    swift_once();
  }

  v27 = qword_280D72240;
  sub_231585FC4();
  sub_2315866D4();
  v54 = MEMORY[0x277D84F90];
  v53 = 2;
  v52 = 19;
  OUTLINED_FUNCTION_3_20();
  sub_231585FA4();
  v29 = *(v1 + 24);
  v28 = *(v1 + 32);
  v30 = *(v2 + 32);

  v29(v64);

  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_2314B5064(v14);
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v31 = sub_231585FF4();
    __swift_project_value_buffer(v31, qword_280D72248);
    v32 = sub_231585FE4();
    v33 = sub_2315865E4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_231496000, v32, v33, "InteractionStoreFactory: Error initializing interactionStore", v34, 2u);
      MEMORY[0x231931280](v34, -1, -1);
    }

    v35 = OUTLINED_FUNCTION_5_16();
  }

  else
  {
    (*(v63 + 32))(v62, v14, v15);
    sub_2315866C4();
    OUTLINED_FUNCTION_3_20();
    sub_231585FB4();
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v38 = sub_231585FF4();
    __swift_project_value_buffer(v38, qword_280D72248);
    v39 = v60;
    (*(v5 + 16))(v10, v64, v60);
    v40 = sub_231585FE4();
    v41 = sub_2315865D4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v59 = v22;
      v44 = v43;
      v65 = v43;
      *v42 = 136315138;
      sub_2315147E0();
      v57 = v2;
      v58 = v15;
      (*(v5 + 8))(v10, v60);
      v45 = sub_2314A22E8();
      v2 = v57;
      v15 = v58;

      *(v42 + 4) = v45;
      _os_log_impl(&dword_231496000, v40, v41, "InteractionStoreFactory: created InteractionStore for [%s]", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x231931280](v44, -1, -1);
      MEMORY[0x231931280](v42, -1, -1);
    }

    else
    {

      v46 = (*(v5 + 8))(v10, v39);
    }

    v47 = *(v2 + 16);
    MEMORY[0x28223BE20](v46);
    v48 = v62;
    v54 = v64;
    v55 = v62;
    sub_231514004(sub_23151501C, &v52);
    v49 = OUTLINED_FUNCTION_5_16();
    v50(v49);
    v37 = *(v63 + 8);
    v35 = v48;
    v36 = v15;
  }

  return v37(v35, v36);
}

uint64_t sub_231514EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_2315147E0();
  v8 = sub_231585D34();
  (*(*(v8 - 8) + 16))(v7, a3, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  return sub_23155C5E8();
}

uint64_t sub_231514FA0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_231514FC8()
{
  sub_231514FA0();
  OUTLINED_FUNCTION_4_17();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_231515068()
{
  result = sub_231586964();
  qword_280D6F178 = result;
  qword_280D6F180 = v1;
  return result;
}

uint64_t *sub_23151509C()
{
  if (qword_280D6F170 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  return &qword_280D6F178;
}

uint64_t static IsCarPlayConnectedSignal.signalName.getter()
{
  if (qword_280D6F170 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  swift_beginAccess();
  v0 = qword_280D6F178;

  return v0;
}

uint64_t static IsCarPlayConnectedSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6F170 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  swift_beginAccess();
  qword_280D6F178 = a1;
  qword_280D6F180 = a2;
}

uint64_t (*static IsCarPlayConnectedSignal.signalName.modify())()
{
  if (qword_280D6F170 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_231515244@<X0>(void *a1@<X8>)
{
  sub_23151509C();
  swift_beginAccess();
  v2 = qword_280D6F180;
  *a1 = qword_280D6F178;
  a1[1] = v2;
}

uint64_t sub_231515298(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_23151509C();
  swift_beginAccess();
  qword_280D6F178 = v2;
  qword_280D6F180 = v1;
}

uint64_t IsCarPlayConnectedSignal.id.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

id sub_23151532C@<X0>(id result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = [result starting];
    v3 = result;
  }

  else
  {
    v3 = -1;
  }

  *a2 = v3;
  *(a2 + 8) = 0;
  return result;
}

uint64_t static IsCarPlayConnectedSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() CarPlay];
  swift_unknownObjectRelease();
  v2 = [v1 Connected];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for IsCarPlayConnectedSignal;
  *(v0 + 64) = &protocol witness table for IsCarPlayConnectedSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F170 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  swift_beginAccess();
  v4 = qword_280D6F180;
  v3[5] = qword_280D6F178;
  v3[6] = v4;
  v3[2] = v2;
  v3[3] = sub_23151532C;
  v3[4] = 0;

  return v0;
}

uint64_t static IsCarPlayConnectedSignal.instances(with:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_231515564();
}

void IsCarPlayConnectedSignal.value(completion:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2314E2F2C();
}

uint64_t sub_231515508(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_231515564();
}

uint64_t sub_231515564()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() CarPlay];
  swift_unknownObjectRelease();
  v2 = [v1 Connected];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for IsCarPlayConnectedSignal;
  *(v0 + 64) = &protocol witness table for IsCarPlayConnectedSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F170 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6F180;
  v3[5] = qword_280D6F178;
  v3[6] = v4;
  v3[2] = v2;
  v3[3] = sub_23151532C;
  v3[4] = 0;

  return v0;
}

uint64_t sub_2315156B8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2315156F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t IsFirstPartyAppSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2315157A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v5 = sub_2315860F4();
  v6 = 0;
  v24 = *(v4 + 16);
  v7 = (v4 + 40);
  while (v24 != v6)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      result = sub_231586C84();
      __break(1u);
      return result;
    }

    v9 = *(v7 - 1);
    v8 = *v7;

    if (sub_231586304())
    {
      v10 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_0_55();
      v10 = sub_231586304() & 1;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_23149C888(v9, v8);
    if (__OFADD__(v5[2], (v12 & 1) == 0))
    {
      goto LABEL_20;
    }

    v13 = v11;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
    if (sub_231586A64())
    {
      v15 = sub_23149C888(v9, v8);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_22;
      }

      v13 = v15;
    }

    if (v14)
    {
      *(v5[7] + 8 * v13) = v10;
    }

    else
    {
      v5[(v13 >> 6) + 8] |= 1 << v13;
      v17 = (v5[6] + 16 * v13);
      *v17 = v9;
      v17[1] = v8;
      *(v5[7] + 8 * v13) = v10;
      v18 = v5[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_21;
      }

      v5[2] = v20;
    }

    v7 += 2;
    ++v6;
  }

  *a2 = 0xD000000000000016;
  a2[1] = 0x80000002315917D0;
  a2[2] = &unk_2846102C8;
  a2[3] = v5;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static IsFirstPartyAppSignal.isFirstParty(bundleId:)()
{
  if (sub_231586304())
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_55();

  return sub_231586304();
}

uint64_t static IsFirstPartyAppSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_231515CD4(v3);
}

uint64_t static IsFirstPartyAppSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231515DD0(v3, v1, v2);
}

uint64_t static IsFirstPartyAppSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284612168);
  *a1 = result;
  return result;
}

uint64_t IsFirstPartyAppSignal.value(completion:)(void (*a1)(uint64_t *))
{
  v6 = *(v1 + 24);
  v7 = 1;

  a1(&v6);
  v3 = v6;
  v4 = v7;

  return sub_2314A5EEC(v3, v4);
}

uint64_t sub_231515BB4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231515DD0(v3, v1, v2);
}

uint64_t sub_231515C1C()
{
  v4[3] = &type metadata for NoParameters;
  v4[4] = &protocol witness table for NoParameters;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  sub_2314A2C74(v4, v3);
  *(v0 + 56) = &type metadata for IsFirstPartyAppSignal;
  *(v0 + 64) = &protocol witness table for IsFirstPartyAppSignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  sub_2315157A4(v3, (v1 + 16));
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v0;
}

uint64_t sub_231515CD4(_OWORD *a1)
{
  v9[3] = &type metadata for SignalComputationContext;
  v9[4] = &protocol witness table for SignalComputationContext;
  v2 = swift_allocObject();
  v9[0] = v2;
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_231588340;
  sub_2314A2C74(v9, v8);
  *(v4 + 56) = &type metadata for IsFirstPartyAppSignal;
  *(v4 + 64) = &protocol witness table for IsFirstPartyAppSignal;
  v5 = swift_allocObject();
  *(v4 + 32) = v5;
  sub_2314B5008(a1, &v7);
  sub_2315157A4(v8, (v5 + 16));
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v4;
}

uint64_t sub_231515DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[3] = a2;
  v10[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_231588340;
  sub_2314A2C74(v10, v9);
  *(v6 + 56) = &type metadata for IsFirstPartyAppSignal;
  *(v6 + 64) = &protocol witness table for IsFirstPartyAppSignal;
  v7 = swift_allocObject();
  *(v6 + 32) = v7;
  sub_2315157A4(v9, (v7 + 16));
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v6;
}

uint64_t sub_231515EDC()
{
  result = sub_231586964();
  qword_280D6F7A0 = result;
  qword_280D6F7A8 = v1;
  return result;
}

uint64_t *sub_231515F10()
{
  if (qword_280D6F798 != -1)
  {
    OUTLINED_FUNCTION_0_56();
  }

  return &qword_280D6F7A0;
}

uint64_t static IsScreenLockedSignal.signalName.getter()
{
  if (qword_280D6F798 != -1)
  {
    OUTLINED_FUNCTION_0_56();
  }

  swift_beginAccess();
  v0 = qword_280D6F7A0;

  return v0;
}

uint64_t static IsScreenLockedSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6F798 != -1)
  {
    OUTLINED_FUNCTION_0_56();
  }

  swift_beginAccess();
  qword_280D6F7A0 = a1;
  qword_280D6F7A8 = a2;
}

uint64_t (*static IsScreenLockedSignal.signalName.modify())()
{
  if (qword_280D6F798 != -1)
  {
    OUTLINED_FUNCTION_0_56();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2315160B8@<X0>(void *a1@<X8>)
{
  sub_231515F10();
  swift_beginAccess();
  v2 = qword_280D6F7A8;
  *a1 = qword_280D6F7A0;
  a1[1] = v2;
}

uint64_t sub_23151610C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_231515F10();
  swift_beginAccess();
  qword_280D6F7A0 = v2;
  qword_280D6F7A8 = v1;
}

uint64_t IsScreenLockedSignal.id.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

id sub_2315161B4@<X0>(id result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = sub_2314D6B64(&v5);
    v3 = v5;
    v4 = v6;
  }

  else
  {
    v4 = 0;
    v3 = -1;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  return result;
}

uint64_t static IsScreenLockedSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v2 = [v1 ScreenLocked];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for IsScreenLockedSignal;
  *(v0 + 64) = &protocol witness table for IsScreenLockedSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F798 != -1)
  {
    OUTLINED_FUNCTION_0_56();
  }

  swift_beginAccess();
  v4 = qword_280D6F7A8;
  v3[5] = qword_280D6F7A0;
  v3[6] = v4;
  v3[7] = &unk_284610848;
  v3[2] = v2;
  v3[3] = sub_2315161B4;
  v3[4] = 0;

  return v0;
}

uint64_t static IsScreenLockedSignal.instances(with:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_231516590();
}

void IsScreenLockedSignal.value(completion:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2314E2BBC();
}

void sub_2315163A4(uint64_t a1@<X8>)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2 && (v3 = [v2 eventBody]) != 0)
  {
    v4 = v3;
    sub_2314D6B64(&v10);

    swift_unknownObjectRelease();
    v5 = v11;
    *a1 = v10;
    *(a1 + 8) = v5;
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v6 = sub_231585FF4();
    __swift_project_value_buffer(v6, qword_280D72248);
    v7 = sub_231585FE4();
    v8 = sub_2315865E4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_231496000, v7, v8, "IsScreenLockedSignal: ignoring event of wrong type", v9, 2u);
      MEMORY[0x231931280](v9, -1, -1);
    }

    *a1 = 0;
    *(a1 + 8) = -1;
  }
}

uint64_t sub_23151651C(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_231516590();
}

uint64_t sub_231516590()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v2 = [v1 ScreenLocked];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for IsScreenLockedSignal;
  *(v0 + 64) = &protocol witness table for IsScreenLockedSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F798 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6F7A8;
  v3[5] = qword_280D6F7A0;
  v3[6] = v4;
  v3[7] = &unk_284610270;
  v3[2] = v2;
  v3[3] = sub_2315161B4;
  v3[4] = 0;

  return v0;
}

uint64_t static LastActionDisambiguationRecencySignal.signpostName.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_27DD5BA40 = a1;
  *(&xmmword_27DD5BA40 + 1) = a2;
  byte_27DD5BA50 = a3;
  return result;
}

double sub_2315167DC@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_27DD5BA50;
  result = *&xmmword_27DD5BA40;
  *a1 = xmmword_27DD5BA40;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_231516830(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_27DD5BA40 = v1;
  *(&xmmword_27DD5BA40 + 1) = v2;
  byte_27DD5BA50 = v3;
  return result;
}

uint64_t sub_231516888()
{
  swift_beginAccess();
  result = sub_231586964();
  qword_280D6EC78 = result;
  qword_280D6EC80 = v1;
  return result;
}

uint64_t *sub_2315168E0()
{
  if (qword_280D6EC70 != -1)
  {
    OUTLINED_FUNCTION_0_57();
  }

  return &qword_280D6EC78;
}

uint64_t static LastActionDisambiguationRecencySignal.signalName.getter()
{
  if (qword_280D6EC70 != -1)
  {
    OUTLINED_FUNCTION_0_57();
  }

  OUTLINED_FUNCTION_8_1();
  v0 = qword_280D6EC78;

  return v0;
}

uint64_t static LastActionDisambiguationRecencySignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6EC70 != -1)
  {
    OUTLINED_FUNCTION_0_57();
  }

  swift_beginAccess();
  qword_280D6EC78 = a1;
  qword_280D6EC80 = a2;
}

uint64_t (*static LastActionDisambiguationRecencySignal.signalName.modify())()
{
  if (qword_280D6EC70 != -1)
  {
    OUTLINED_FUNCTION_0_57();
  }

  OUTLINED_FUNCTION_8_0();
  return j__swift_endAccess;
}

uint64_t sub_231516A68@<X0>(void *a1@<X8>)
{
  sub_2315168E0();
  swift_beginAccess();
  v2 = qword_280D6EC80;
  *a1 = qword_280D6EC78;
  a1[1] = v2;
}

uint64_t sub_231516ABC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_2315168E0();
  swift_beginAccess();
  qword_280D6EC78 = v2;
  qword_280D6EC80 = v1;
}

uint64_t LastActionDisambiguationRecencySignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static LastActionDisambiguationRecencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231517404(v3, v1, v2);
}

void LastActionDisambiguationRecencySignal.derive(from:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v2 + *(type metadata accessor for LastActionDisambiguationRecencySignal() + 28);
  v7 = *v6;
  v8 = *(v6 + 8);
  switch(v5)
  {
    case 1:
      v41 = *(v6 + 8);
      swift_retain_n();
      v42 = sub_2314EA928(v4, v7);

      *a2 = v42;
      goto LABEL_38;
    case 2:
      v12 = OUTLINED_FUNCTION_6_1(*&v4);
      if (!(v14 ^ v15 | v13))
      {
        goto LABEL_44;
      }

      if (v12 <= -9.22337204e18)
      {
        goto LABEL_45;
      }

      if (v12 >= 9.22337204e18)
      {
        goto LABEL_46;
      }

      v16 = v12;
      if ((v12 & 0x8000000000000000) == 0)
      {

        v18 = v7(v17);

        if (v18 < v16)
        {
          v16 = -1;
        }

        else
        {
          v16 = v18 - v16;
        }
      }

      *a2 = v16;
      goto LABEL_38;
    case 3:
      v44 = a2;
      v45 = *v6;
      v43 = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
      v19 = sub_231586AC4();
      v20 = v19;
      v21 = v4 + 64;
      v22 = 1 << *(v4 + 32);
      v23 = -1;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      i = v23 & *(v4 + 64);
      v25 = (v22 + 63) >> 6;
      v47 = v19 + 64;
      swift_retain_n();
      v26 = 0;
      v46 = v4;
      if (i)
      {
        goto LABEL_19;
      }

      break;
    default:
      if ((v4 & 0x8000000000000000) == 0)
      {
        v9 = *(v6 + 8);

        v11 = v7(v10);

        if (v11 < v4)
        {
          v4 = -1;
        }

        else
        {
          v4 = v11 - v4;
        }
      }

      *a2 = v4;
      goto LABEL_38;
  }

LABEL_20:
  v28 = v26;
  do
  {
    v26 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v26 >= v25)
    {

      LOBYTE(v5) = v43;
      a2 = v44;
      *v44 = v20;
LABEL_38:
      *(a2 + 8) = v5;
      return;
    }

    v29 = *(v21 + 8 * v26);
    ++v28;
  }

  while (!v29);
  v27 = __clz(__rbit64(v29));
  for (i = (v29 - 1) & v29; ; i &= i - 1)
  {
    v30 = v27 | (v26 << 6);
    v31 = OUTLINED_FUNCTION_6_1(*(*(v4 + 56) + 8 * v30));
    if (!(v14 ^ v15 | v13))
    {
      break;
    }

    if (v31 <= -9.22337204e18)
    {
      goto LABEL_41;
    }

    if (v31 >= 9.22337204e18)
    {
      goto LABEL_42;
    }

    v32 = (*(v4 + 48) + 16 * v30);
    v33 = *v32;
    v34 = v32[1];
    v35 = v31;

    if ((v35 & 0x8000000000000000) == 0)
    {
      v37 = v45(v36);
      if (v37 < v35)
      {
        v35 = -1;
      }

      else
      {
        v35 = v37 - v35;
      }
    }

    *(v47 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v38 = (v20[6] + 16 * v30);
    *v38 = v33;
    v38[1] = v34;
    *(v20[7] + 8 * v30) = v35;
    v39 = v20[2];
    v15 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v15)
    {
      goto LABEL_43;
    }

    v20[2] = v40;
    v4 = v46;
    if (!i)
    {
      goto LABEL_20;
    }

LABEL_19:
    v27 = __clz(__rbit64(i));
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_231516EBC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231517404(v3, v1, v2);
}

__n128 *_s11SiriSignals37LastActionDisambiguationRecencySignalV9instancesSayAA0G9Providing_pGyFZ_0()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = OUTLINED_FUNCTION_10_10();
  v6 = OUTLINED_FUNCTION_5_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_18();
  MEMORY[0x28223BE20](v11);
  v13 = &v24[-v12];
  v25[3] = &type metadata for NoParameters;
  v25[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  sub_2315144B0(v25, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_2314B5064(v1);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = OUTLINED_FUNCTION_7_19();
    v2(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v14 = swift_allocObject();
    v16 = OUTLINED_FUNCTION_3_21(v14, xmmword_231588340);
    v17(v16);
    ActionDisambiguationRecencySignal = type metadata accessor for LastActionDisambiguationRecencySignal();
    v14[3].n128_u64[1] = ActionDisambiguationRecencySignal;
    v14[4].n128_u64[0] = &protocol witness table for LastActionDisambiguationRecencySignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14[2]);
    if (qword_280D6EC70 != -1)
    {
      OUTLINED_FUNCTION_0_57();
    }

    swift_beginAccess();
    v20 = qword_280D6EC80;
    *boxed_opaque_existential_1 = qword_280D6EC78;
    boxed_opaque_existential_1[1] = v20;
    v21 = OUTLINED_FUNCTION_1_23(*(ActionDisambiguationRecencySignal + 24));
    v2(v21);
    v22 = *(v8 + 8);

    v22(v13, v0);
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v14;
}

__n128 *sub_231517168(_OWORD *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = OUTLINED_FUNCTION_10_10();
  v8 = OUTLINED_FUNCTION_5_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_18();
  MEMORY[0x28223BE20](v13);
  v15 = &v29[-v14 - 8];
  v30[3] = &type metadata for SignalComputationContext;
  v30[4] = &protocol witness table for SignalComputationContext;
  v16 = swift_allocObject();
  v30[0] = v16;
  v17 = a1[1];
  v16[1] = *a1;
  v16[2] = v17;
  v16[3] = a1[2];
  sub_2314B5008(a1, v29);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  sub_2315144B0(v30, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_2314B5064(v2);
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v19 = OUTLINED_FUNCTION_7_19();
    v3(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v18 = swift_allocObject();
    v20 = OUTLINED_FUNCTION_3_21(v18, xmmword_231588340);
    v21(v20);
    ActionDisambiguationRecencySignal = type metadata accessor for LastActionDisambiguationRecencySignal();
    v18[3].n128_u64[1] = ActionDisambiguationRecencySignal;
    v18[4].n128_u64[0] = &protocol witness table for LastActionDisambiguationRecencySignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18[2]);
    if (qword_280D6EC70 != -1)
    {
      OUTLINED_FUNCTION_0_57();
    }

    swift_beginAccess();
    v24 = qword_280D6EC80;
    *boxed_opaque_existential_1 = qword_280D6EC78;
    boxed_opaque_existential_1[1] = v24;
    v25 = OUTLINED_FUNCTION_1_23(*(ActionDisambiguationRecencySignal + 24));
    v3(v25);
    v26 = *(v10 + 8);

    v26(v15, v1);
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
  return v18;
}

uint64_t sub_231517404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27[-v8];
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v27[-v16];
  v28[3] = a2;
  v28[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v28, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314B5064(v9);
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    v20 = *(v11 + 32);
    v20(v17, v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_231588340;
    (*(v11 + 16))(v15, v17, v10);
    ActionDisambiguationRecencySignal = type metadata accessor for LastActionDisambiguationRecencySignal();
    *(v19 + 56) = ActionDisambiguationRecencySignal;
    *(v19 + 64) = &protocol witness table for LastActionDisambiguationRecencySignal;
    v22 = __swift_allocate_boxed_opaque_existential_1((v19 + 32));
    if (qword_280D6EC70 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v23 = qword_280D6EC80;
    *v22 = qword_280D6EC78;
    v22[1] = v23;
    *(v22 + ActionDisambiguationRecencySignal[6]) = &unk_2846105B8;
    v24 = (v22 + ActionDisambiguationRecencySignal[7]);
    *v24 = sub_2314E03E4;
    v24[1] = 0;
    v20(v22 + ActionDisambiguationRecencySignal[5], v15, v10);
    v25 = *(v11 + 8);

    v25(v17, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v19;
}

uint64_t type metadata accessor for LastActionDisambiguationRecencySignal()
{
  result = qword_280D6EC58;
  if (!qword_280D6EC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2315177B4()
{
  sub_231585D34();
  if (v0 <= 0x3F)
  {
    sub_2314B73AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_231517868()
{
  result = sub_231586964();
  qword_27DD5BA58 = result;
  qword_27DD5BA60 = v1;
  return result;
}

uint64_t *sub_23151789C()
{
  if (qword_27DD5AE18 != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  return &qword_27DD5BA58;
}

uint64_t static ClientWorkoutSignal.signalName.getter()
{
  if (qword_27DD5AE18 != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  swift_beginAccess();
  v0 = qword_27DD5BA58;

  return v0;
}

uint64_t static ClientWorkoutSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_27DD5AE18 != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  swift_beginAccess();
  qword_27DD5BA58 = a1;
  qword_27DD5BA60 = a2;
}

uint64_t (*static ClientWorkoutSignal.signalName.modify())()
{
  if (qword_27DD5AE18 != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_231517A44@<X0>(void *a1@<X8>)
{
  sub_23151789C();
  swift_beginAccess();
  v2 = qword_27DD5BA60;
  *a1 = qword_27DD5BA58;
  a1[1] = v2;
}

uint64_t sub_231517A98(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_23151789C();
  swift_beginAccess();
  qword_27DD5BA58 = v2;
  qword_27DD5BA60 = v1;
}

uint64_t ClientWorkoutSignal.id.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void sub_231517B34(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    if ([v3 eventType] != 1)
    {
      v5 = [v3 eventType];

      v4 = v5 == 3;
      goto LABEL_6;
    }
  }

  v4 = 1;
LABEL_6:
  *a2 = v4;
  *(a2 + 8) = 0;
}

uint64_t static ClientWorkoutSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Health];
  swift_unknownObjectRelease();
  v2 = [v1 Workout];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for ClientWorkoutSignal;
  *(v0 + 64) = &protocol witness table for ClientWorkoutSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_27DD5AE18 != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  swift_beginAccess();
  v4 = qword_27DD5BA60;
  v3[5] = qword_27DD5BA58;
  v3[6] = v4;
  v3[7] = &unk_284610818;
  v3[2] = v2;
  v3[3] = sub_231517B34;
  v3[4] = 0;

  return v0;
}

uint64_t static ClientWorkoutSignal.instances(with:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_231517DB0();
}

void ClientWorkoutSignal.value(completion:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2314E284C();
}

uint64_t sub_231517D54(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_231517DB0();
}

uint64_t sub_231517DB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Health];
  swift_unknownObjectRelease();
  v2 = [v1 Workout];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for ClientWorkoutSignal;
  *(v0 + 64) = &protocol witness table for ClientWorkoutSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_27DD5AE18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_27DD5BA60;
  v3[5] = qword_27DD5BA58;
  v3[6] = v4;
  v3[7] = &unk_2846101C8;
  v3[2] = v2;
  v3[3] = sub_231517B34;
  v3[4] = 0;

  return v0;
}

uint64_t static LastActionDisambiguationResultSignal.signpostName.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_27DD5BA68 = a1;
  *(&xmmword_27DD5BA68 + 1) = a2;
  byte_27DD5BA78 = a3;
  return result;
}

double sub_231517FFC@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_27DD5BA78;
  result = *&xmmword_27DD5BA68;
  *a1 = xmmword_27DD5BA68;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_231518050(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_27DD5BA68 = v1;
  *(&xmmword_27DD5BA68 + 1) = v2;
  byte_27DD5BA78 = v3;
  return result;
}

uint64_t sub_2315180A8()
{
  swift_beginAccess();
  result = sub_231586964();
  qword_280D6ED28 = result;
  qword_280D6ED30 = v1;
  return result;
}

uint64_t *sub_231518100()
{
  if (qword_280D6ED20 != -1)
  {
    OUTLINED_FUNCTION_0_59();
  }

  return &qword_280D6ED28;
}

uint64_t static LastActionDisambiguationResultSignal.signalName.getter()
{
  if (qword_280D6ED20 != -1)
  {
    OUTLINED_FUNCTION_0_59();
  }

  OUTLINED_FUNCTION_8_1();
  v0 = qword_280D6ED28;

  return v0;
}

uint64_t static LastActionDisambiguationResultSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6ED20 != -1)
  {
    OUTLINED_FUNCTION_0_59();
  }

  swift_beginAccess();
  qword_280D6ED28 = a1;
  qword_280D6ED30 = a2;
}

uint64_t (*static LastActionDisambiguationResultSignal.signalName.modify())()
{
  if (qword_280D6ED20 != -1)
  {
    OUTLINED_FUNCTION_0_59();
  }

  OUTLINED_FUNCTION_8_0();
  return j__swift_endAccess;
}

uint64_t sub_231518288@<X0>(void *a1@<X8>)
{
  sub_231518100();
  swift_beginAccess();
  v2 = qword_280D6ED30;
  *a1 = qword_280D6ED28;
  a1[1] = v2;
}

uint64_t sub_2315182DC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_231518100();
  swift_beginAccess();
  qword_280D6ED28 = v2;
  qword_280D6ED30 = v1;
}

uint64_t LastActionDisambiguationResultSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static LastActionDisambiguationResultSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23151889C(v3, v1, v2);
}

uint64_t sub_2315183BC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23151889C(v3, v1, v2);
}

uint64_t _s11SiriSignals36LastActionDisambiguationResultSignalV9instancesSayAA0G9Providing_pGyFZ_0()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = OUTLINED_FUNCTION_8_15();
  v6 = OUTLINED_FUNCTION_5_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_19();
  v20[3] = &type metadata for NoParameters;
  v20[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  sub_2315144B0(v20, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v0) == 1)
  {
    sub_2314B5064(v2);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = OUTLINED_FUNCTION_5_17();
    v13(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_231588340;
    ActionDisambiguationResultSignal = type metadata accessor for LastActionDisambiguationResultSignal();
    *(v11 + 56) = ActionDisambiguationResultSignal;
    *(v11 + 64) = &protocol witness table for LastActionDisambiguationResultSignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v11 + 32));
    if (qword_280D6ED20 != -1)
    {
      OUTLINED_FUNCTION_0_59();
    }

    swift_beginAccess();
    v16 = OUTLINED_FUNCTION_2_21();
    v17(v16);
    *(boxed_opaque_existential_1 + *(ActionDisambiguationResultSignal + 24)) = &unk_284610710;
    v18 = *(v8 + 8);

    v18(v1, v0);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v11;
}

uint64_t sub_231518634(_OWORD *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = OUTLINED_FUNCTION_8_15();
  v8 = OUTLINED_FUNCTION_5_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_19();
  v25[3] = &type metadata for SignalComputationContext;
  v25[4] = &protocol witness table for SignalComputationContext;
  v13 = swift_allocObject();
  v25[0] = v13;
  v14 = a1[1];
  v13[1] = *a1;
  v13[2] = v14;
  v13[3] = a1[2];
  sub_2314B5008(a1, v24);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  sub_2315144B0(v25, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v1) == 1)
  {
    sub_2314B5064(v3);
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    v16 = OUTLINED_FUNCTION_5_17();
    v17(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_231588340;
    ActionDisambiguationResultSignal = type metadata accessor for LastActionDisambiguationResultSignal();
    *(v15 + 56) = ActionDisambiguationResultSignal;
    *(v15 + 64) = &protocol witness table for LastActionDisambiguationResultSignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v15 + 32));
    if (qword_280D6ED20 != -1)
    {
      OUTLINED_FUNCTION_0_59();
    }

    swift_beginAccess();
    v20 = OUTLINED_FUNCTION_2_21();
    v21(v20);
    *(boxed_opaque_existential_1 + *(ActionDisambiguationResultSignal + 24)) = &unk_2846100F8;
    v22 = *(v10 + 8);

    v22(v2, v1);
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v15;
}

uint64_t sub_23151889C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22[-v8];
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23[3] = a2;
  v23[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v23, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314B5064(v9);
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_231588340;
    ActionDisambiguationResultSignal = type metadata accessor for LastActionDisambiguationResultSignal();
    *(v16 + 56) = ActionDisambiguationResultSignal;
    *(v16 + 64) = &protocol witness table for LastActionDisambiguationResultSignal;
    v18 = __swift_allocate_boxed_opaque_existential_1((v16 + 32));
    if (qword_280D6ED20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v19 = qword_280D6ED30;
    *v18 = qword_280D6ED28;
    v18[1] = v19;
    (*(v11 + 16))(v18 + *(ActionDisambiguationResultSignal + 20), v14, v10);
    *(v18 + *(ActionDisambiguationResultSignal + 24)) = &unk_284610590;
    v20 = *(v11 + 8);

    v20(v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v16;
}

uint64_t type metadata accessor for LastActionDisambiguationResultSignal()
{
  result = qword_280D6ED10;
  if (!qword_280D6ED10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_231518BF0()
{
  sub_231585D34();
  if (v0 <= 0x3F)
  {
    sub_2314B73AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t static LastAppDisambiguationRecencySignal.signpostName.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_27DD5BA80 = a1;
  *(&xmmword_27DD5BA80 + 1) = a2;
  byte_27DD5BA90 = a3;
  return result;
}

double sub_231518D60@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_27DD5BA90;
  result = *&xmmword_27DD5BA80;
  *a1 = xmmword_27DD5BA80;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_231518DB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_27DD5BA80 = v1;
  *(&xmmword_27DD5BA80 + 1) = v2;
  byte_27DD5BA90 = v3;
  return result;
}

uint64_t sub_231518E0C()
{
  swift_beginAccess();
  result = sub_231586964();
  qword_280D6EEA0 = result;
  qword_280D6EEA8 = v1;
  return result;
}

uint64_t *sub_231518E64()
{
  if (qword_280D6EE98 != -1)
  {
    OUTLINED_FUNCTION_0_60();
  }

  return &qword_280D6EEA0;
}

uint64_t static LastAppDisambiguationRecencySignal.signalName.getter()
{
  if (qword_280D6EE98 != -1)
  {
    OUTLINED_FUNCTION_0_60();
  }

  OUTLINED_FUNCTION_8_1();
  v0 = qword_280D6EEA0;

  return v0;
}

uint64_t static LastAppDisambiguationRecencySignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6EE98 != -1)
  {
    OUTLINED_FUNCTION_0_60();
  }

  swift_beginAccess();
  qword_280D6EEA0 = a1;
  qword_280D6EEA8 = a2;
}

uint64_t (*static LastAppDisambiguationRecencySignal.signalName.modify())()
{
  if (qword_280D6EE98 != -1)
  {
    OUTLINED_FUNCTION_0_60();
  }

  OUTLINED_FUNCTION_8_0();
  return j__swift_endAccess;
}

uint64_t sub_231518FEC@<X0>(void *a1@<X8>)
{
  sub_231518E64();
  swift_beginAccess();
  v2 = qword_280D6EEA8;
  *a1 = qword_280D6EEA0;
  a1[1] = v2;
}

uint64_t sub_231519040(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_231518E64();
  swift_beginAccess();
  qword_280D6EEA0 = v2;
  qword_280D6EEA8 = v1;
}

uint64_t LastAppDisambiguationRecencySignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static LastAppDisambiguationRecencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231519988(v3, v1, v2);
}

void LastAppDisambiguationRecencySignal.derive(from:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v2 + *(type metadata accessor for LastAppDisambiguationRecencySignal() + 28);
  v7 = *v6;
  v8 = *(v6 + 8);
  switch(v5)
  {
    case 1:
      v41 = *(v6 + 8);
      swift_retain_n();
      v42 = sub_2314EA928(v4, v7);

      *a2 = v42;
      goto LABEL_38;
    case 2:
      v12 = OUTLINED_FUNCTION_6_1(*&v4);
      if (!(v14 ^ v15 | v13))
      {
        goto LABEL_44;
      }

      if (v12 <= -9.22337204e18)
      {
        goto LABEL_45;
      }

      if (v12 >= 9.22337204e18)
      {
        goto LABEL_46;
      }

      v16 = v12;
      if ((v12 & 0x8000000000000000) == 0)
      {

        v18 = v7(v17);

        if (v18 < v16)
        {
          v16 = -1;
        }

        else
        {
          v16 = v18 - v16;
        }
      }

      *a2 = v16;
      goto LABEL_38;
    case 3:
      v44 = a2;
      v45 = *v6;
      v43 = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
      v19 = sub_231586AC4();
      v20 = v19;
      v21 = v4 + 64;
      v22 = 1 << *(v4 + 32);
      v23 = -1;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      i = v23 & *(v4 + 64);
      v25 = (v22 + 63) >> 6;
      v47 = v19 + 64;
      swift_retain_n();
      v26 = 0;
      v46 = v4;
      if (i)
      {
        goto LABEL_19;
      }

      break;
    default:
      if ((v4 & 0x8000000000000000) == 0)
      {
        v9 = *(v6 + 8);

        v11 = v7(v10);

        if (v11 < v4)
        {
          v4 = -1;
        }

        else
        {
          v4 = v11 - v4;
        }
      }

      *a2 = v4;
      goto LABEL_38;
  }

LABEL_20:
  v28 = v26;
  do
  {
    v26 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v26 >= v25)
    {

      LOBYTE(v5) = v43;
      a2 = v44;
      *v44 = v20;
LABEL_38:
      *(a2 + 8) = v5;
      return;
    }

    v29 = *(v21 + 8 * v26);
    ++v28;
  }

  while (!v29);
  v27 = __clz(__rbit64(v29));
  for (i = (v29 - 1) & v29; ; i &= i - 1)
  {
    v30 = v27 | (v26 << 6);
    v31 = OUTLINED_FUNCTION_6_1(*(*(v4 + 56) + 8 * v30));
    if (!(v14 ^ v15 | v13))
    {
      break;
    }

    if (v31 <= -9.22337204e18)
    {
      goto LABEL_41;
    }

    if (v31 >= 9.22337204e18)
    {
      goto LABEL_42;
    }

    v32 = (*(v4 + 48) + 16 * v30);
    v33 = *v32;
    v34 = v32[1];
    v35 = v31;

    if ((v35 & 0x8000000000000000) == 0)
    {
      v37 = v45(v36);
      if (v37 < v35)
      {
        v35 = -1;
      }

      else
      {
        v35 = v37 - v35;
      }
    }

    *(v47 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v38 = (v20[6] + 16 * v30);
    *v38 = v33;
    v38[1] = v34;
    *(v20[7] + 8 * v30) = v35;
    v39 = v20[2];
    v15 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v15)
    {
      goto LABEL_43;
    }

    v20[2] = v40;
    v4 = v46;
    if (!i)
    {
      goto LABEL_20;
    }

LABEL_19:
    v27 = __clz(__rbit64(i));
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_231519440(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231519988(v3, v1, v2);
}

__n128 *_s11SiriSignals34LastAppDisambiguationRecencySignalV9instancesSayAA0G9Providing_pGyFZ_0()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = OUTLINED_FUNCTION_10_10();
  v6 = OUTLINED_FUNCTION_5_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_18();
  MEMORY[0x28223BE20](v11);
  v13 = &v24[-v12];
  v25[3] = &type metadata for NoParameters;
  v25[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  sub_2315144B0(v25, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_2314B5064(v1);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = OUTLINED_FUNCTION_7_19();
    v2(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v14 = swift_allocObject();
    v16 = OUTLINED_FUNCTION_3_21(v14, xmmword_231588340);
    v17(v16);
    AppDisambiguationRecencySignal = type metadata accessor for LastAppDisambiguationRecencySignal();
    v14[3].n128_u64[1] = AppDisambiguationRecencySignal;
    v14[4].n128_u64[0] = &protocol witness table for LastAppDisambiguationRecencySignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14[2]);
    if (qword_280D6EE98 != -1)
    {
      OUTLINED_FUNCTION_0_60();
    }

    swift_beginAccess();
    v20 = qword_280D6EEA8;
    *boxed_opaque_existential_1 = qword_280D6EEA0;
    boxed_opaque_existential_1[1] = v20;
    v21 = OUTLINED_FUNCTION_1_23(*(AppDisambiguationRecencySignal + 24));
    v2(v21);
    v22 = *(v8 + 8);

    v22(v13, v0);
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v14;
}

__n128 *sub_2315196EC(_OWORD *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = OUTLINED_FUNCTION_10_10();
  v8 = OUTLINED_FUNCTION_5_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_18();
  MEMORY[0x28223BE20](v13);
  v15 = &v29[-v14 - 8];
  v30[3] = &type metadata for SignalComputationContext;
  v30[4] = &protocol witness table for SignalComputationContext;
  v16 = swift_allocObject();
  v30[0] = v16;
  v17 = a1[1];
  v16[1] = *a1;
  v16[2] = v17;
  v16[3] = a1[2];
  sub_2314B5008(a1, v29);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  sub_2315144B0(v30, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_2314B5064(v2);
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v19 = OUTLINED_FUNCTION_7_19();
    v3(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v18 = swift_allocObject();
    v20 = OUTLINED_FUNCTION_3_21(v18, xmmword_231588340);
    v21(v20);
    AppDisambiguationRecencySignal = type metadata accessor for LastAppDisambiguationRecencySignal();
    v18[3].n128_u64[1] = AppDisambiguationRecencySignal;
    v18[4].n128_u64[0] = &protocol witness table for LastAppDisambiguationRecencySignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18[2]);
    if (qword_280D6EE98 != -1)
    {
      OUTLINED_FUNCTION_0_60();
    }

    swift_beginAccess();
    v24 = qword_280D6EEA8;
    *boxed_opaque_existential_1 = qword_280D6EEA0;
    boxed_opaque_existential_1[1] = v24;
    v25 = OUTLINED_FUNCTION_1_23(*(AppDisambiguationRecencySignal + 24));
    v3(v25);
    v26 = *(v10 + 8);

    v26(v15, v1);
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
  return v18;
}

uint64_t sub_231519988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27[-v8];
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v27[-v16];
  v28[3] = a2;
  v28[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v28, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314B5064(v9);
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    v20 = *(v11 + 32);
    v20(v17, v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_231588340;
    (*(v11 + 16))(v15, v17, v10);
    AppDisambiguationRecencySignal = type metadata accessor for LastAppDisambiguationRecencySignal();
    *(v19 + 56) = AppDisambiguationRecencySignal;
    *(v19 + 64) = &protocol witness table for LastAppDisambiguationRecencySignal;
    v22 = __swift_allocate_boxed_opaque_existential_1((v19 + 32));
    if (qword_280D6EE98 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v23 = qword_280D6EEA8;
    *v22 = qword_280D6EEA0;
    v22[1] = v23;
    *(v22 + AppDisambiguationRecencySignal[6]) = &unk_284610568;
    v24 = (v22 + AppDisambiguationRecencySignal[7]);
    *v24 = sub_2314E03E4;
    v24[1] = 0;
    v20(v22 + AppDisambiguationRecencySignal[5], v15, v10);
    v25 = *(v11 + 8);

    v25(v17, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v19;
}

uint64_t type metadata accessor for LastAppDisambiguationRecencySignal()
{
  result = qword_280D6EE88;
  if (!qword_280D6EE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static LastAppDisambiguationResultSignal.signpostName.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_27DD5BA98 = a1;
  *(&xmmword_27DD5BA98 + 1) = a2;
  byte_27DD5BAA8 = a3;
  return result;
}

double sub_231519E14@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_27DD5BAA8;
  result = *&xmmword_27DD5BA98;
  *a1 = xmmword_27DD5BA98;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_231519E68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_27DD5BA98 = v1;
  *(&xmmword_27DD5BA98 + 1) = v2;
  byte_27DD5BAA8 = v3;
  return result;
}

uint64_t sub_231519EC0()
{
  swift_beginAccess();
  result = sub_231586964();
  qword_280D6EF58 = result;
  qword_280D6EF60 = v1;
  return result;
}

uint64_t *sub_231519F18()
{
  if (qword_280D6EF50 != -1)
  {
    OUTLINED_FUNCTION_0_61();
  }

  return &qword_280D6EF58;
}

uint64_t static LastAppDisambiguationResultSignal.signalName.getter()
{
  if (qword_280D6EF50 != -1)
  {
    OUTLINED_FUNCTION_0_61();
  }

  OUTLINED_FUNCTION_8_1();
  v0 = qword_280D6EF58;

  return v0;
}

uint64_t static LastAppDisambiguationResultSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6EF50 != -1)
  {
    OUTLINED_FUNCTION_0_61();
  }

  swift_beginAccess();
  qword_280D6EF58 = a1;
  qword_280D6EF60 = a2;
}

uint64_t (*static LastAppDisambiguationResultSignal.signalName.modify())()
{
  if (qword_280D6EF50 != -1)
  {
    OUTLINED_FUNCTION_0_61();
  }

  OUTLINED_FUNCTION_8_0();
  return j__swift_endAccess;
}

uint64_t sub_23151A0A0@<X0>(void *a1@<X8>)
{
  sub_231519F18();
  swift_beginAccess();
  v2 = qword_280D6EF60;
  *a1 = qword_280D6EF58;
  a1[1] = v2;
}

uint64_t sub_23151A0F4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_231519F18();
  swift_beginAccess();
  qword_280D6EF58 = v2;
  qword_280D6EF60 = v1;
}

uint64_t LastAppDisambiguationResultSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static LastAppDisambiguationResultSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23151A6B4(v3, v1, v2);
}

uint64_t sub_23151A1D4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23151A6B4(v3, v1, v2);
}

uint64_t _s11SiriSignals33LastAppDisambiguationResultSignalV9instancesSayAA0G9Providing_pGyFZ_0()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = OUTLINED_FUNCTION_8_15();
  v6 = OUTLINED_FUNCTION_5_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_19();
  v20[3] = &type metadata for NoParameters;
  v20[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  sub_2315144B0(v20, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v0) == 1)
  {
    sub_2314B5064(v2);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = OUTLINED_FUNCTION_5_17();
    v13(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_231588340;
    AppDisambiguationResultSignal = type metadata accessor for LastAppDisambiguationResultSignal();
    *(v11 + 56) = AppDisambiguationResultSignal;
    *(v11 + 64) = &protocol witness table for LastAppDisambiguationResultSignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v11 + 32));
    if (qword_280D6EF50 != -1)
    {
      OUTLINED_FUNCTION_0_61();
    }

    swift_beginAccess();
    v16 = OUTLINED_FUNCTION_2_21();
    v17(v16);
    *(boxed_opaque_existential_1 + *(AppDisambiguationResultSignal + 24)) = &unk_284610760;
    v18 = *(v8 + 8);

    v18(v1, v0);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v11;
}

uint64_t sub_23151A44C(_OWORD *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = OUTLINED_FUNCTION_8_15();
  v8 = OUTLINED_FUNCTION_5_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_19();
  v25[3] = &type metadata for SignalComputationContext;
  v25[4] = &protocol witness table for SignalComputationContext;
  v13 = swift_allocObject();
  v25[0] = v13;
  v14 = a1[1];
  v13[1] = *a1;
  v13[2] = v14;
  v13[3] = a1[2];
  sub_2314B5008(a1, v24);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  sub_2315144B0(v25, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v1) == 1)
  {
    sub_2314B5064(v3);
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    v16 = OUTLINED_FUNCTION_5_17();
    v17(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_231588340;
    AppDisambiguationResultSignal = type metadata accessor for LastAppDisambiguationResultSignal();
    *(v15 + 56) = AppDisambiguationResultSignal;
    *(v15 + 64) = &protocol witness table for LastAppDisambiguationResultSignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v15 + 32));
    if (qword_280D6EF50 != -1)
    {
      OUTLINED_FUNCTION_0_61();
    }

    swift_beginAccess();
    v20 = OUTLINED_FUNCTION_2_21();
    v21(v20);
    *(boxed_opaque_existential_1 + *(AppDisambiguationResultSignal + 24)) = &unk_284610148;
    v22 = *(v10 + 8);

    v22(v2, v1);
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v15;
}

uint64_t sub_23151A6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22[-v8];
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23[3] = a2;
  v23[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v23, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314B5064(v9);
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_231588340;
    AppDisambiguationResultSignal = type metadata accessor for LastAppDisambiguationResultSignal();
    *(v16 + 56) = AppDisambiguationResultSignal;
    *(v16 + 64) = &protocol witness table for LastAppDisambiguationResultSignal;
    v18 = __swift_allocate_boxed_opaque_existential_1((v16 + 32));
    if (qword_280D6EF50 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v19 = qword_280D6EF60;
    *v18 = qword_280D6EF58;
    v18[1] = v19;
    (*(v11 + 16))(v18 + *(AppDisambiguationResultSignal + 20), v14, v10);
    *(v18 + *(AppDisambiguationResultSignal + 24)) = &unk_284610518;
    v20 = *(v11 + 8);

    v20(v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v16;
}

uint64_t type metadata accessor for LastAppDisambiguationResultSignal()
{
  result = qword_280D6EF38;
  if (!qword_280D6EF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23151AA6C()
{
  result = sub_231586964();
  qword_280D6D120 = result;
  unk_280D6D128 = v1;
  return result;
}

uint64_t static LastNowPlayingAtSignal.signalName.getter()
{
  if (qword_280D6D118 != -1)
  {
    swift_once();
  }

  v0 = qword_280D6D120;

  return v0;
}

uint64_t LastNowPlayingAtSignal.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_23151AB38()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v0[10];
    v6 = v0[2];
    v7 = v0[3];

    MEMORY[0x23192FF80](1029990703, 0xE400000000000000);
    MEMORY[0x23192FF80](v2, v1);

    return v6;
  }

  else
  {
    v3 = v0[2];
    v4 = v0[3];
  }

  return v3;
}

double sub_23151ABD0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2314A1DFC(1, 2);

  result = v2;
  *a1 = v2;
  *(a1 + 8) = 0;
  return result;
}

uint64_t static LastNowPlayingAtSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  NowPlayingAtSignal = type metadata accessor for LastNowPlayingAtSignal();
  v2 = swift_allocObject();
  v3 = sub_23151B688(v2);
  *(v0 + 56) = NowPlayingAtSignal;
  *(v0 + 64) = &protocol witness table for LastNowPlayingAtSignal;
  *(v0 + 32) = v3;
  return v0;
}

uint64_t static LastNowPlayingAtSignal.instances(with:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_23151B4F8(v4, v1, v2, v3);
}

uint64_t static LastNowPlayingAtSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v8[0] = *a1;
  v8[1] = v1;
  v8[2] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_231588340;
  NowPlayingAtSignal = type metadata accessor for LastNowPlayingAtSignal();
  v4 = swift_allocObject();
  sub_2314B5008(v8, &v7);
  v5 = sub_23151B76C(v8, v4);
  *(v2 + 56) = NowPlayingAtSignal;
  *(v2 + 64) = &protocol witness table for LastNowPlayingAtSignal;
  *(v2 + 32) = v5;
  return v2;
}

uint64_t static LastNowPlayingAtSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284612258);
  *a1 = result;
  return result;
}

uint64_t sub_23151ADB8(void (*a1)(uint64_t *))
{
  v3 = v1[4];
  v4 = v1[10];
  v5 = v1[11];

  v6 = sub_2314CE684();

  if (v6)
  {
    v8 = v6;
    v9 = 1;
    a1(&v8);
    return sub_2314A5EEC(v8, v9);
  }

  else
  {
    v8 = -1;
    v9 = 0;
    return (a1)(&v8);
  }
}

void sub_23151AE6C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 56);
  v8 = *(v2 + 40);
  v9 = v5;
  v10 = *(v2 + 72);
  v6 = v3;
  v7 = v4;
  sub_231566F38(&v6, a2);
}

void sub_23151AEC0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v27 = *a1;
  LOBYTE(v28) = v3;
  swift_unknownObjectRetain();
  sub_2315074D0(v27, v3);
  sub_2314D6BA0(&v27, v26);
  v4 = v26[0];
  if (!v26[0])
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v16 = sub_231585FF4();
    __swift_project_value_buffer(v16, qword_280D72248);
    v17 = sub_231585FE4();
    v18 = sub_2315865E4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_231496000, v17, v18, "LastNowPlayingAtSignal: Invalid input", v19, 2u);
      OUTLINED_FUNCTION_10();
    }

    goto LABEL_17;
  }

  v6 = v26[1];
  v5 = v26[2];
  v7 = v26[4];
  if ([v26[0] playbackState] != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v20 = sub_231585FF4();
    __swift_project_value_buffer(v20, qword_280D72248);
    v21 = sub_231585FE4();
    v22 = sub_2315865D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_231496000, v21, v22, "LastNowPlayingAtSignal: Ignore non-start events", v23, 2u);
      OUTLINED_FUNCTION_10();
    }

    v27 = v6;
    v28 = v5;
    sub_2315074E4(&v27);
    v29 = v7;
    sub_231507538(&v29);
LABEL_17:
    v8 = 0;
    v24 = -1;
    goto LABEL_20;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v27 = v7;
  sub_23157562C();
  v8 = v27;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v9 = sub_231585FF4();
  __swift_project_value_buffer(v9, qword_280D72248);

  v10 = v4;

  v11 = sub_231585FE4();
  v12 = sub_2315865D4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136315394;

    sub_2315860E4();
    v25 = v10;

    v14 = sub_2314A22E8();

    *(v13 + 4) = v14;
    *(v13 + 12) = 2080;

    sub_2315860E4();

    v15 = sub_2314A22E8();

    *(v13 + 14) = v15;
    _os_log_impl(&dword_231496000, v11, v12, "LastNowPlayingAtSignal: updated %s to %s", v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  v24 = 1;
LABEL_20:
  *a2 = v8;
  *(a2 + 8) = v24;
}

void *LastNowPlayingAtSignal.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[11];

  return v0;
}

uint64_t LastNowPlayingAtSignal.__deallocating_deinit()
{
  LastNowPlayingAtSignal.deinit();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_23151B408(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_23151B4F8(v4, v1, v2, v3);
}

uint64_t sub_23151B4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = *(v6 + 16);
  v13(&v19 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_231588340;
  NowPlayingAtSignal = type metadata accessor for LastNowPlayingAtSignal();
  v16 = swift_allocObject();
  (v13)(v10, v12, a3);
  v17 = sub_23151B99C(v10, v16, a3, a4);
  *(v14 + 56) = NowPlayingAtSignal;
  *(v14 + 64) = &protocol witness table for LastNowPlayingAtSignal;
  *(v14 + 32) = v17;
  (*(v6 + 8))(v12, a3);
  return v14;
}

uint64_t sub_23151B688(uint64_t a1)
{
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v2 = (a1 + 80);
  if (qword_280D6D118 != -1)
  {
    swift_once();
    v10 = *(a1 + 88);
  }

  v3 = unk_280D6D128;
  *(a1 + 16) = qword_280D6D120;
  *(a1 + 24) = v3;
  *v2 = 0;
  v2[1] = 0;

  v4 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84F90];
  *(a1 + 32) = sub_231528564(MEMORY[0x277D84F90], sub_23149A718, 0, v7);
  *(a1 + 40) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  return a1;
}

uint64_t sub_23151B76C(uint64_t a1, uint64_t a2)
{
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v4 = (a2 + 80);
  if (qword_280D6D118 != -1)
  {
    swift_once();
    v13 = *(a2 + 88);
  }

  v5 = unk_280D6D128;
  *(a2 + 16) = qword_280D6D120;
  *(a2 + 24) = v5;
  v15 = *(a1 + 24);
  *v4 = v15;

  sub_23151B92C(&v15, &v14);

  v6 = *a1;
  v7 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();

  *(a2 + 32) = sub_231528564(v11, sub_23149A718, 0, v10);

  sub_2314C1D18(a1);
  *(a2 + 40) = v6;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  return a2;
}

uint64_t sub_23151B92C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B120, &qword_23158ACE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23151B99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 32))(v10);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  if (qword_280D6D118 != -1)
  {
    swift_once();
  }

  v11 = unk_280D6D128;
  *(a2 + 16) = qword_280D6D120;
  *(a2 + 24) = v11;
  v12 = *(a4 + 16);

  v13 = v12(a3, a4);
  v14 = *(a2 + 88);
  *(a2 + 80) = v13;
  *(a2 + 88) = v15;

  v16 = *(a4 + 8);
  v17 = v16(a3, a4);
  v18 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  *(a2 + 32) = sub_231528564(v17, sub_23149A718, 0, v21);
  *(a2 + 40) = v16(a3, a4);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  (*(v7 + 8))(v10, a3);
  return a2;
}

uint64_t sub_23151BB90()
{
  result = sub_231586964();
  qword_280D6F148 = result;
  unk_280D6F150 = v1;
  return result;
}

uint64_t static LastNowPlayingRecencySignal.signalName.getter()
{
  if (qword_280D6F140 != -1)
  {
    swift_once();
  }

  v0 = qword_280D6F148;

  return v0;
}

uint64_t LastNowPlayingRecencySignal.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_23151BC5C()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v0[12];
    v6 = v0[2];
    v7 = v0[3];

    MEMORY[0x23192FF80](1029990703, 0xE400000000000000);
    MEMORY[0x23192FF80](v2, v1);

    return v6;
  }

  else
  {
    v3 = v0[2];
    v4 = v0[3];
  }

  return v3;
}

uint64_t static LastNowPlayingRecencySignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  NowPlayingRecencySignal = type metadata accessor for LastNowPlayingRecencySignal();
  v2 = swift_allocObject();
  v3 = sub_23151CA4C(sub_2314E03E4, 0, v2);
  *(v0 + 56) = NowPlayingRecencySignal;
  *(v0 + 64) = &protocol witness table for LastNowPlayingRecencySignal;
  *(v0 + 32) = v3;
  return v0;
}

uint64_t static LastNowPlayingRecencySignal.instances(with:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_23151C8A4(v4, v1, v2, v3);
}

uint64_t static LastNowPlayingRecencySignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v8[0] = *a1;
  v8[1] = v1;
  v8[2] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_231588340;
  NowPlayingRecencySignal = type metadata accessor for LastNowPlayingRecencySignal();
  v4 = swift_allocObject();
  sub_2314B5008(v8, &v7);
  v5 = sub_23151CB44(v8, sub_2314E03E4, 0, v4);
  *(v2 + 56) = NowPlayingRecencySignal;
  *(v2 + 64) = &protocol witness table for LastNowPlayingRecencySignal;
  *(v2 + 32) = v5;
  return v2;
}

uint64_t static LastNowPlayingRecencySignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284612280);
  *a1 = result;
  return result;
}

uint64_t sub_23151BECC(void (*a1)(uint64_t *))
{
  v3 = v1[4];
  v4 = v1[12];
  v5 = v1[13];

  sub_2314CE684();
  OUTLINED_FUNCTION_6_3();

  if (v3)
  {
    v7 = v3;
    v8 = 1;
    a1(&v7);
    return sub_2314A5EEC(v7, v8);
  }

  else
  {
    v7 = -1;
    v8 = 0;
    return (a1)(&v7);
  }
}

void sub_23151BF7C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v7 = a2;
  switch(v4)
  {
    case 1:
      v38 = *(v2 + 88);
      swift_retain_n();
      sub_2314EA928(*&v3, v5);
      OUTLINED_FUNCTION_6_3();

      *v7 = v2;
      goto LABEL_38;
    case 2:
      v10 = OUTLINED_FUNCTION_6_1(*a1);
      if (!(v12 ^ v13 | v11))
      {
        goto LABEL_44;
      }

      if (v10 <= -9.22337204e18)
      {
        goto LABEL_45;
      }

      if (v10 >= 9.22337204e18)
      {
        goto LABEL_46;
      }

      v14 = v10;
      if ((v10 & 0x8000000000000000) == 0)
      {

        v5(v15);
        OUTLINED_FUNCTION_6_3();

        if (v6 < v14)
        {
          v14 = -1;
        }

        else
        {
          v14 = v6 - v14;
        }
      }

      *v7 = v14;
      goto LABEL_38;
    case 3:
      v41 = *(v2 + 80);
      v39 = *(a1 + 8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
      v16 = sub_231586AC4();
      v17 = v16;
      v18 = *&v3 + 64;
      v19 = 1 << *(*&v3 + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      i = v20 & *(*&v3 + 64);
      v22 = (v19 + 63) >> 6;
      v43 = v16 + 64;
      swift_retain_n();
      v23 = 0;
      v42 = v3;
      if (i)
      {
        goto LABEL_19;
      }

      break;
    default:
      if ((*&v3 & 0x8000000000000000) == 0)
      {
        v8 = *(v2 + 88);

        v5(v9);
        OUTLINED_FUNCTION_6_3();

        if (v6 < *&v3)
        {
          v3 = NAN;
        }

        else
        {
          *&v3 = v6 - *&v3;
        }
      }

      *v7 = v3;
      goto LABEL_38;
  }

LABEL_20:
  v25 = v23;
  do
  {
    v23 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v23 >= v22)
    {

      v4 = v39;
      v7 = a2;
      *a2 = v17;
LABEL_38:
      *(v7 + 8) = v4;
      return;
    }

    v26 = *(v18 + 8 * v23);
    ++v25;
  }

  while (!v26);
  v24 = __clz(__rbit64(v26));
  for (i = (v26 - 1) & v26; ; i &= i - 1)
  {
    v27 = v24 | (v23 << 6);
    v28 = OUTLINED_FUNCTION_6_1(*(*(*&v3 + 56) + 8 * v27));
    if (!(v12 ^ v13 | v11))
    {
      break;
    }

    if (v28 <= -9.22337204e18)
    {
      goto LABEL_41;
    }

    if (v28 >= 9.22337204e18)
    {
      goto LABEL_42;
    }

    v29 = (*(*&v3 + 48) + 16 * v27);
    v30 = *v29;
    v31 = v29[1];
    v32 = v28;

    if ((v32 & 0x8000000000000000) == 0)
    {
      v34 = v41(v33);
      if (v34 < v32)
      {
        v32 = -1;
      }

      else
      {
        v32 = v34 - v32;
      }
    }

    *(v43 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v35 = (v17[6] + 16 * v27);
    *v35 = v30;
    v35[1] = v31;
    *(v17[7] + 8 * v27) = v32;
    v36 = v17[2];
    v13 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v13)
    {
      goto LABEL_43;
    }

    v17[2] = v37;
    v3 = v42;
    if (!i)
    {
      goto LABEL_20;
    }

LABEL_19:
    v24 = __clz(__rbit64(i));
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_23151C27C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v27 = *a1;
  LOBYTE(v28) = v3;
  swift_unknownObjectRetain();
  sub_2315074D0(v27, v3);
  sub_2314D6BA0(&v27, v26);
  v4 = v26[0];
  if (!v26[0])
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v16 = sub_231585FF4();
    __swift_project_value_buffer(v16, qword_280D72248);
    v17 = sub_231585FE4();
    v18 = sub_2315865E4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_231496000, v17, v18, "LastNowPlayingRecencySignal: Invalid input", v19, 2u);
      OUTLINED_FUNCTION_10();
    }

    goto LABEL_17;
  }

  v6 = v26[1];
  v5 = v26[2];
  v7 = v26[4];
  if ([v26[0] playbackState] != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v20 = sub_231585FF4();
    __swift_project_value_buffer(v20, qword_280D72248);
    v21 = sub_231585FE4();
    v22 = sub_2315865D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_231496000, v21, v22, "LastNowPlayingRecencySignal: Ignore non-start events", v23, 2u);
      OUTLINED_FUNCTION_10();
    }

    v27 = v6;
    v28 = v5;
    sub_2315074E4(&v27);
    v29 = v7;
    sub_231507538(&v29);
LABEL_17:
    v8 = 0;
    v24 = -1;
    goto LABEL_20;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v27 = v7;
  sub_23157562C();
  v8 = v27;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v9 = sub_231585FF4();
  __swift_project_value_buffer(v9, qword_280D72248);

  v10 = v4;

  v11 = sub_231585FE4();
  v12 = sub_2315865D4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136315394;

    sub_2315860E4();
    v25 = v10;

    v14 = sub_2314A22E8();

    *(v13 + 4) = v14;
    *(v13 + 12) = 2080;

    sub_2315860E4();

    v15 = sub_2314A22E8();

    *(v13 + 14) = v15;
    _os_log_impl(&dword_231496000, v11, v12, "LastNowPlayingRecencySignal: updated %s to %s", v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  v24 = 1;
LABEL_20:
  *a2 = v8;
  *(a2 + 8) = v24;
}

void *LastNowPlayingRecencySignal.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[11];

  v5 = v0[13];

  return v0;
}

uint64_t LastNowPlayingRecencySignal.__deallocating_deinit()
{
  LastNowPlayingRecencySignal.deinit();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_23151C7B4(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_23151C8A4(v4, v1, v2, v3);
}

uint64_t sub_23151C8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = *(v6 + 16);
  v13(&v19 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_231588340;
  NowPlayingRecencySignal = type metadata accessor for LastNowPlayingRecencySignal();
  v16 = swift_allocObject();
  (v13)(v10, v12, a3);
  v17 = sub_23151CD3C(v10, sub_2314E03E4, 0, v16, a3, a4);
  *(v14 + 56) = NowPlayingRecencySignal;
  *(v14 + 64) = &protocol witness table for LastNowPlayingRecencySignal;
  *(v14 + 32) = v17;
  (*(v6 + 8))(v12, a3);
  return v14;
}

uint64_t sub_23151CA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  v6 = (a3 + 96);
  if (qword_280D6F140 != -1)
  {
    swift_once();
    v14 = *(a3 + 104);
  }

  v7 = unk_280D6F150;
  *(a3 + 16) = qword_280D6F148;
  *(a3 + 24) = v7;
  *v6 = 0;
  v6[1] = 0;

  v8 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D84F90];
  *(a3 + 32) = sub_231528564(MEMORY[0x277D84F90], sub_23149A718, 0, v11);
  *(a3 + 40) = v12;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 1;
  *(a3 + 80) = a1;
  *(a3 + 88) = a2;
  return a3;
}

uint64_t sub_23151CB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 96) = 0;
  *(a4 + 104) = 0;
  v8 = (a4 + 96);
  if (qword_280D6F140 != -1)
  {
    swift_once();
    v17 = *(a4 + 104);
  }

  v9 = unk_280D6F150;
  *(a4 + 16) = qword_280D6F148;
  *(a4 + 24) = v9;
  v19 = *(a1 + 24);
  *v8 = v19;

  sub_23151B92C(&v19, &v18);

  v10 = *a1;
  v11 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();

  *(a4 + 32) = sub_231528564(v15, sub_23149A718, 0, v14);

  sub_2314C1D18(a1);
  *(a4 + 40) = v10;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 1;
  *(a4 + 80) = a2;
  *(a4 + 88) = a3;
  return a4;
}

uint64_t sub_23151CD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 32))(v14);
  *(a4 + 96) = 0;
  *(a4 + 104) = 0;
  if (qword_280D6F140 != -1)
  {
    swift_once();
  }

  v15 = unk_280D6F150;
  *(a4 + 16) = qword_280D6F148;
  *(a4 + 24) = v15;
  v16 = *(a6 + 16);

  v17 = v16(a5, a6);
  v18 = *(a4 + 104);
  *(a4 + 96) = v17;
  *(a4 + 104) = v19;

  v20 = *(a6 + 8);
  v21 = v20(a5, a6);
  v22 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  *(a4 + 32) = sub_231528564(v21, sub_23149A718, 0, v25);
  *(a4 + 40) = v20(a5, a6);
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 1;
  *(a4 + 80) = a2;
  *(a4 + 88) = a3;
  (*(v11 + 8))(v14, a5);
  return a4;
}