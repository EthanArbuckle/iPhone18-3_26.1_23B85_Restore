uint64_t b_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v149, v152, v154, v156, v158, v160, v162);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v150, v153, *v155, v155[4], *v157, *&v157[4], v157[6], v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v161, v163))
  {
    v29 = OUTLINED_FUNCTION_8_34();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144);
    OUTLINED_FUNCTION_54_11(v40, v41, &null_str_12);
    v42 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v45, v46, v47, v48, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t c_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v192, v196, v199);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v193, v197, v200, v202, v204, v206, v208, v210);
  v19 = setjmp(v1);
  if (v19 || OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189, v194, v198, v201, *v203, v203[4], *v205, *&v205[4], v205[6], v207, SWORD2(v207), SBYTE6(v207), SHIBYTE(v207), v209, v211))
  {
    goto LABEL_3;
  }

  v29 = OUTLINED_FUNCTION_12_33();
  get_parm(v29, v30, v31, -6);
  OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190);
  v40 = fence_35(v0, 0, &null_str_12);
  OUTLINED_FUNCTION_38_15(v40, v41, &unk_2806BC372);
  OUTLINED_FUNCTION_55_11();
  v42 = OUTLINED_FUNCTION_26_24();
  if (!lpta_loadp_setscan_r(v42, v43))
  {
    OUTLINED_FUNCTION_3_36();
    inserted = test_string_s();
    if (!inserted)
    {
LABEL_6:
      OUTLINED_FUNCTION_27_22(inserted, v45, v46, v47, v48, v49, v50, v51, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186, v191);
      v52 = OUTLINED_FUNCTION_12_33();
      lpta_rpta_loadp(v52, v53, v54);
      goto LABEL_11;
    }
  }

  while (2)
  {
    v55 = OUTLINED_FUNCTION_19_27();
    starttest(v55, v56);
    v57 = OUTLINED_FUNCTION_24_25();
    if (lpta_loadp_setscan_r(v57, v58))
    {
      goto LABEL_10;
    }

    v59 = OUTLINED_FUNCTION_20_26();
    bspush_ca_scan(v59, v60);
LABEL_9:
    OUTLINED_FUNCTION_3_36();
    if (!test_string_s())
    {
LABEL_10:
      v61 = OUTLINED_FUNCTION_10_34();
      lpta_rpta_loadp(v61, v62, v63);
LABEL_11:
      v64 = OUTLINED_FUNCTION_0_39();
      inserted = insert_2pt_s(v64, v65, v66, v67, v68);
      if (!inserted)
      {
LABEL_17:
        OUTLINED_FUNCTION_16_30(inserted, v45, v46, v47, v48, v49, v50, v51, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186, v191, v195);
        break;
      }
    }

    v69 = *(v0 + 104);
    if (v69)
    {
      inserted = OUTLINED_FUNCTION_36_16(v69);
    }

    else
    {
      inserted = OUTLINED_FUNCTION_53_11();
    }

    switch(inserted)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_6;
      case 3:
        goto LABEL_17;
      case 4:
      case 6:
        goto LABEL_10;
      case 5:
      case 7:
      case 8:
        v70 = OUTLINED_FUNCTION_22_25();
        bspush_ca_scan(v70, v71);
        goto LABEL_9;
      case 9:
        goto LABEL_9;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t c_cedille_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v149, v152, v154, v156, v158, v160, v162);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v150, v153, *v155, v155[4], *v157, *&v157[4], v157[6], v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v161, v163))
  {
    v29 = OUTLINED_FUNCTION_8_34();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144);
    OUTLINED_FUNCTION_54_11(v40, v41, &null_str_12);
    v42 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v45, v46, v47, v48, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t d_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v188, v191);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v189, v192, v194, v196, v198, v200, v202);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186, v190, v193, *v195, v195[4], *v197, *&v197[4], v197[6], v199, SWORD2(v199), SBYTE6(v199), SHIBYTE(v199), v201, v203))
  {
    v29 = OUTLINED_FUNCTION_12_33();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182);
    v40 = fence_35(v0, 0, &null_str_12);
    OUTLINED_FUNCTION_38_15(v40, v41, &unk_2806BC372);
    OUTLINED_FUNCTION_55_11();
    v42 = OUTLINED_FUNCTION_26_24();
    if (lpta_loadp_setscan_r(v42, v43))
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_3_36();
    inserted = test_string_s();
    if (inserted)
    {
      goto LABEL_7;
    }

    while (2)
    {
      OUTLINED_FUNCTION_27_22(inserted, v45, v46, v47, v48, v49, v50, v51, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183);
      v52 = OUTLINED_FUNCTION_12_33();
      lpta_rpta_loadp(v52, v53, v54);
      while (1)
      {
        v58 = OUTLINED_FUNCTION_0_39();
        inserted = insert_2pt_s(v58, v59, v60, v61, v62);
        if (!inserted)
        {
          goto LABEL_15;
        }

        v63 = *(v0 + 104);
        inserted = v63 ? OUTLINED_FUNCTION_36_16(v63) : OUTLINED_FUNCTION_53_11();
        if (inserted != 1)
        {
          break;
        }

LABEL_7:
        v55 = OUTLINED_FUNCTION_10_34();
        lpta_rpta_loadp(v55, v56, v57);
      }

      if (inserted == 2)
      {
        continue;
      }

      break;
    }

    if (inserted == 3)
    {
LABEL_15:
      OUTLINED_FUNCTION_16_30(inserted, v45, v46, v47, v48, v49, v50, v51, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v187);
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t f_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v149, v152, v154, v156, v158, v160, v162);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v150, v153, *v155, v155[4], *v157, *&v157[4], v157[6], v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v161, v163))
  {
    v29 = OUTLINED_FUNCTION_8_34();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144);
    OUTLINED_FUNCTION_54_11(v40, v41, &null_str_12);
    v42 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v45, v46, v47, v48, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t g_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186, v191, v196, v201, v206, v210, v213);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v192, v197, v202, v207, v211, v214, v216, v218, v220, v222, v224);
  v19 = setjmp(v1);
  if (v19 || OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v193, v198, v203, v208, v212, v215, *v217, v217[4], *v219, *&v219[4], v219[6], v221, SWORD2(v221), SBYTE6(v221), SHIBYTE(v221), v223, v225))
  {
    goto LABEL_3;
  }

  v29 = OUTLINED_FUNCTION_12_33();
  get_parm(v29, v30, v31, -6);
  OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189, v194, v199, v204);
  v40 = fence_35(v0, 0, &null_str_12);
  OUTLINED_FUNCTION_38_15(v40, v41, &unk_2806BC372);
  OUTLINED_FUNCTION_55_11();
  v42 = OUTLINED_FUNCTION_26_24();
  if (lpta_loadp_setscan_r(v42, v43))
  {
LABEL_5:
    v44 = OUTLINED_FUNCTION_22_25();
    starttest(v44, v45);
    v46 = OUTLINED_FUNCTION_24_25();
    if (lpta_loadp_setscan_r(v46, v47))
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_3_36();
    if (test_string_s())
    {
      goto LABEL_7;
    }

LABEL_13:
    v66 = OUTLINED_FUNCTION_30_20();
    savescptr(v66, v67, v68);
    v69 = OUTLINED_FUNCTION_17_29();
    if (!testFldeq(v69, v70, v71, 1) && !advance_tok(v0))
    {
      v72 = OUTLINED_FUNCTION_22_25();
      starttest(v72, v73);
      v74 = OUTLINED_FUNCTION_24_25();
      if (lpta_loadp_setscan_r(v74, v75))
      {
LABEL_24:
        v83 = OUTLINED_FUNCTION_10_34();
        lpta_rpta_loadp(v83, v84, v85);
        v51 = OUTLINED_FUNCTION_9_34();
        v53 = 2;
LABEL_8:
        inserted = insert_2pt_s(v51, v52, v53, v54, v55);
        if (!inserted)
        {
LABEL_9:
          OUTLINED_FUNCTION_16_30(inserted, v57, v58, v59, v60, v61, v62, v63, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190, v195, v200, v205, v209);
          goto LABEL_3;
        }

        goto LABEL_18;
      }

LABEL_16:
      v76 = OUTLINED_FUNCTION_22_25();
      bspush_ca_scan(v76, v77);
LABEL_17:
      OUTLINED_FUNCTION_3_36();
      if (!test_string_s())
      {
LABEL_7:
        v48 = OUTLINED_FUNCTION_10_34();
        lpta_rpta_loadp(v48, v49, v50);
        v51 = OUTLINED_FUNCTION_0_39();
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_10:
    v64 = OUTLINED_FUNCTION_22_25();
    bspush_ca_scan(v64, v65);
LABEL_11:
    OUTLINED_FUNCTION_3_36();
    if (!test_string_s())
    {
      goto LABEL_7;
    }
  }

LABEL_18:
  v78 = *(v0 + 104);
  if (v78)
  {
    inserted = OUTLINED_FUNCTION_36_16(v78);
  }

  else
  {
    inserted = OUTLINED_FUNCTION_53_11();
  }

  switch(inserted)
  {
    case 1:
      goto LABEL_5;
    case 2:
      v79 = OUTLINED_FUNCTION_19_27();
      bspush_ca_scan(v79, v80);
      goto LABEL_11;
    case 3:
    case 8:
    case 12:
      goto LABEL_7;
    case 4:
      v81 = OUTLINED_FUNCTION_20_26();
      bspush_ca_scan(v81, v82);
      goto LABEL_11;
    case 5:
      goto LABEL_10;
    case 6:
      goto LABEL_11;
    case 7:
    case 16:
      goto LABEL_9;
    case 9:
      goto LABEL_13;
    case 10:
      goto LABEL_24;
    case 11:
    case 13:
    case 14:
      goto LABEL_16;
    case 15:
      goto LABEL_17;
    default:
      break;
  }

LABEL_3:
  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t h_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v117, v120);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v118, v121, v124, v126, v128, v130, v132);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v119, v122, *v125, v125[4], *v127, *&v127[4], v127[6], v129, SWORD2(v129), SBYTE6(v129), SHIBYTE(v129), v131, v133))
  {
    v29 = OUTLINED_FUNCTION_8_34();
    get_parm(v29, v30, v31, -6);
    v32 = OUTLINED_FUNCTION_37_16();
    OUTLINED_FUNCTION_52_11(v32, v33);
    OUTLINED_FUNCTION_54_11(v34, v35, &null_str_12);
    v36 = OUTLINED_FUNCTION_21_26();
    fence_35(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_25_24();
    lpta_loadpn(v39, v40);
    rpta_loadpn(v0, v0 + 1640);
    if (!compare_ptas(v0) && !testneq(v0))
    {
      *(v0 + 136) = 1;
      *(v0 + 112) = v116;
      *(v0 + 128) = 0;
      OUTLINED_FUNCTION_23_25();
      proj_def();
      *(v0 + 136) = 1;
      *(v0 + 112) = v123;
      *(v0 + 128) = 0;
      OUTLINED_FUNCTION_23_25();
      delete_1pt();
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t j_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v149, v152, v154, v156, v158, v160, v162);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v150, v153, *v155, v155[4], *v157, *&v157[4], v157[6], v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v161, v163))
  {
    v29 = OUTLINED_FUNCTION_8_34();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144);
    OUTLINED_FUNCTION_54_11(v40, v41, &null_str_12);
    v42 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v45, v46, v47, v48, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t k_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v149, v152, v154, v156, v158, v160, v162);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v150, v153, *v155, v155[4], *v157, *&v157[4], v157[6], v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v161, v163))
  {
    v29 = OUTLINED_FUNCTION_8_34();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144);
    OUTLINED_FUNCTION_54_11(v40, v41, &null_str_12);
    v42 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v45, v46, v47, v48, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t l_rules()
{
  OUTLINED_FUNCTION_7_34();
  v218 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_35(v2, v3, v4, v5, v6, v7, v8, v9, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189, v194, v199, v204, v209, v210, v211, v212);
  OUTLINED_FUNCTION_15_31(v10, v11, v12, v13, v14, v15, v16, v17, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190, v195, v200, v205, v209, v210, v211, v212, v213, v214, v215, v216, v217);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_1_37(v18, v19, v20, v21, v22, v23, v24, v25, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186, v191, v196, v201, v206, v209, v210, v211, v212, v213, SBYTE4(v213), v214, SWORD2(v214), SBYTE6(v214), v215, SWORD2(v215), SBYTE6(v215), SHIBYTE(v215), v216, v217))
  {
    goto LABEL_3;
  }

  v28 = OUTLINED_FUNCTION_12_33();
  get_parm(v28, v29, v30, -6);
  OUTLINED_FUNCTION_6_34(v31, v32, v33, v34, v35, v36, v37, v38, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v192, v197, v202, v207, v209);
  v39 = 0;
  OUTLINED_FUNCTION_54_11(v40, v41, &null_str_12);
  fence_35(v0, 1, &unk_2806BC372);
  starttest(v0, 1);
  v42 = OUTLINED_FUNCTION_26_24();
  if (lpta_loadp_setscan_r(v42, v43) || (OUTLINED_FUNCTION_3_36(), inserted = test_string_s(), v39 = 0, v52 = 0, inserted))
  {
LABEL_10:
    v61 = v39;
    v62 = OUTLINED_FUNCTION_19_27();
    starttest(v62, v63);
    v64 = OUTLINED_FUNCTION_24_25();
    if (lpta_loadp_setscan_r(v64, v65) || (OUTLINED_FUNCTION_3_36(), v52 = v39, test_string_s()))
    {
LABEL_14:
      v72 = OUTLINED_FUNCTION_22_25();
      starttest(v72, v73);
      v74 = OUTLINED_FUNCTION_24_25();
      if (lpta_loadp_setscan_r(v74, v75))
      {
LABEL_15:
        v76 = OUTLINED_FUNCTION_10_34();
        lpta_rpta_loadp(v76, v77, v78);
        v79 = OUTLINED_FUNCTION_0_39();
        inserted = insert_2pt_s(v79, v80, v81, v82, v83);
        if (!inserted)
        {
          goto LABEL_26;
        }
      }

      else
      {
        OUTLINED_FUNCTION_22_25();
        bspush_ca_scan_boa();
        v84 = OUTLINED_FUNCTION_17_29();
        if (!testFldeq(v84, v85, v86, 1) && !advance_tok(v0))
        {
          v61 = 1;
        }
      }

      goto LABEL_20;
    }

LABEL_12:
    v66 = OUTLINED_FUNCTION_32_19();
    savescptr(v66, v67, v68);
    v69 = OUTLINED_FUNCTION_12_33();
    lpta_rpta_loadp(v69, v70, v71);
  }

  else
  {
LABEL_6:
    OUTLINED_FUNCTION_27_22(inserted, v45, v46, v47, v48, v49, v50, v51, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v193, v198, v203, v208, v209);
    v53 = OUTLINED_FUNCTION_12_33();
    lpta_rpta_loadp(v53, v54, v55);
  }

  v56 = OUTLINED_FUNCTION_0_39();
  inserted = insert_2pt_s(v56, v57, v58, v59, v60);
  v61 = v52;
  if (!inserted)
  {
LABEL_26:
    OUTLINED_FUNCTION_16_30(inserted, v45, v46, v47, v48, v49, v50, v51, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v193, v198, v203, v208, v209, v210);
    goto LABEL_3;
  }

LABEL_20:
  v52 = v61;
  while (2)
  {
    v87 = v0[13];
    if (v87)
    {
      inserted = OUTLINED_FUNCTION_36_16(v87);
      v52 = v45;
    }

    else
    {
      inserted = vback(v0, v52);
      v52 = 0;
    }

    switch(inserted)
    {
      case 1:
        v39 = v52;
        goto LABEL_10;
      case 2:
        goto LABEL_6;
      case 3:
        goto LABEL_26;
      case 4:
        v61 = v52;
        goto LABEL_14;
      case 5:
        goto LABEL_12;
      case 6:
        v61 = v52;
        goto LABEL_15;
      case 7:
        bspop_boa(v0);
        v88 = OUTLINED_FUNCTION_26_24();
        lpta_rpta_loadp(v88, v89, &v209);
        v90 = OUTLINED_FUNCTION_0_39();
        inserted = insert_2pt_s(v90, v91, v92, &unk_2806BC360, v93);
        if (!inserted)
        {
          goto LABEL_26;
        }

        continue;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v26 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t m_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v149, v152, v154, v156, v158, v160, v162);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v150, v153, *v155, v155[4], *v157, *&v157[4], v157[6], v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v161, v163))
  {
    v29 = OUTLINED_FUNCTION_8_34();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144);
    OUTLINED_FUNCTION_54_11(v40, v41, &null_str_12);
    v42 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v45, v46, v47, v48, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t n_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v188, v191);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v189, v192, v194, v196, v198, v200, v202);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186, v190, v193, *v195, v195[4], *v197, *&v197[4], v197[6], v199, SWORD2(v199), SBYTE6(v199), SHIBYTE(v199), v201, v203))
  {
    v29 = OUTLINED_FUNCTION_12_33();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182);
    v40 = fence_35(v0, 0, &null_str_12);
    OUTLINED_FUNCTION_38_15(v40, v41, &unk_2806BC372);
    OUTLINED_FUNCTION_55_11();
    v42 = OUTLINED_FUNCTION_26_24();
    if (lpta_loadp_setscan_r(v42, v43))
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_3_36();
    inserted = test_string_s();
    if (inserted)
    {
      goto LABEL_7;
    }

    while (2)
    {
      OUTLINED_FUNCTION_27_22(inserted, v45, v46, v47, v48, v49, v50, v51, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183);
      v52 = OUTLINED_FUNCTION_12_33();
      lpta_rpta_loadp(v52, v53, v54);
      while (1)
      {
        v58 = OUTLINED_FUNCTION_0_39();
        inserted = insert_2pt_s(v58, v59, v60, v61, v62);
        if (!inserted)
        {
          goto LABEL_15;
        }

        v63 = *(v0 + 104);
        inserted = v63 ? OUTLINED_FUNCTION_36_16(v63) : OUTLINED_FUNCTION_53_11();
        if (inserted != 1)
        {
          break;
        }

LABEL_7:
        v55 = OUTLINED_FUNCTION_10_34();
        lpta_rpta_loadp(v55, v56, v57);
      }

      if (inserted == 2)
      {
        continue;
      }

      break;
    }

    if (inserted == 3)
    {
LABEL_15:
      OUTLINED_FUNCTION_16_30(inserted, v45, v46, v47, v48, v49, v50, v51, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v187);
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t p_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v149, v152, v154, v156, v158, v160, v162);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v150, v153, *v155, v155[4], *v157, *&v157[4], v157[6], v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v161, v163))
  {
    v29 = OUTLINED_FUNCTION_8_34();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144);
    OUTLINED_FUNCTION_54_11(v40, v41, &null_str_12);
    v42 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v45, v46, v47, v48, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t q_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v193, v198, v202, v205);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189, v194, v199, v203, v206, v208, v210, v212, v214, v216);
  v19 = setjmp(v1);
  if (v19 || OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190, v195, v200, v204, v207, *v209, v209[4], *v211, *&v211[4], v211[6], v213, SWORD2(v213), SBYTE6(v213), SHIBYTE(v213), v215, v217))
  {
    goto LABEL_3;
  }

  v29 = OUTLINED_FUNCTION_12_33();
  get_parm(v29, v30, v31, -6);
  OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186, v191, v196);
  v40 = fence_35(v0, 0, &null_str_12);
  OUTLINED_FUNCTION_38_15(v40, v41, &unk_2806BC372);
  OUTLINED_FUNCTION_55_11();
  v42 = OUTLINED_FUNCTION_26_24();
  if (lpta_loadp_setscan_r(v42, v43))
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_36();
  if (test_string_s())
  {
    goto LABEL_12;
  }

  while (2)
  {
    OUTLINED_FUNCTION_45_12();
    v44 = OUTLINED_FUNCTION_30_20();
    savescptr(v44, v45, v46);
    v47 = OUTLINED_FUNCTION_17_29();
    if (!testFldeq(v47, v48, v49, 1) && !advance_tok(v0))
    {
      v50 = OUTLINED_FUNCTION_22_25();
      starttest(v50, v51);
      v52 = OUTLINED_FUNCTION_24_25();
      if (lpta_loadp_setscan_r(v52, v53))
      {
LABEL_9:
        v54 = OUTLINED_FUNCTION_10_34();
        lpta_rpta_loadp(v54, v55, v56);
        v57 = OUTLINED_FUNCTION_9_34();
        v61 = 2;
        goto LABEL_13;
      }

      v62 = OUTLINED_FUNCTION_19_27();
      bspush_ca_scan(v62, v63);
LABEL_11:
      OUTLINED_FUNCTION_3_36();
      if (!test_string_s())
      {
LABEL_12:
        v64 = OUTLINED_FUNCTION_10_34();
        lpta_rpta_loadp(v64, v65, v66);
        v57 = OUTLINED_FUNCTION_0_39();
LABEL_13:
        inserted = insert_2pt_s(v57, v58, v61, v59, v60);
        if (!inserted)
        {
LABEL_19:
          OUTLINED_FUNCTION_16_30(inserted, v68, v69, v70, v71, v72, v73, v74, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v192, v197, v201);
          break;
        }
      }
    }

    v75 = *(v0 + 104);
    if (v75)
    {
      inserted = OUTLINED_FUNCTION_36_16(v75);
    }

    else
    {
      inserted = OUTLINED_FUNCTION_53_11();
    }

    switch(inserted)
    {
      case 1:
      case 5:
        goto LABEL_12;
      case 2:
        continue;
      case 3:
        goto LABEL_9;
      case 4:
      case 6:
      case 7:
        v76 = OUTLINED_FUNCTION_22_25();
        bspush_ca_scan(v76, v77);
        goto LABEL_11;
      case 8:
        goto LABEL_11;
      case 9:
      case 10:
        goto LABEL_19;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t r_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190, v195, v199, v202);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186, v191, v196, v200, v203, v205, v207, v209, v211, v213);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v192, v197, v201, v204, *v206, v206[4], *v208, *&v208[4], v208[6], v210, SWORD2(v210), SBYTE6(v210), SHIBYTE(v210), v212, v214))
  {
    v29 = OUTLINED_FUNCTION_12_33();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v193);
    v40 = fence_35(v0, 0, &null_str_12);
    OUTLINED_FUNCTION_38_15(v40, v41, &unk_2806BC372);
    OUTLINED_FUNCTION_55_11();
    v42 = OUTLINED_FUNCTION_26_24();
    if (lpta_loadp_setscan_r(v42, v43) || (OUTLINED_FUNCTION_3_36(), inserted = test_string_s(), inserted))
    {
LABEL_6:
      v52 = OUTLINED_FUNCTION_19_27();
      starttest(v52, v53);
      v54 = OUTLINED_FUNCTION_24_25();
      if (lpta_loadp_setscan_l(v54, v55))
      {
LABEL_7:
        v56 = OUTLINED_FUNCTION_10_34();
        lpta_rpta_loadp(v56, v57, v58);
        goto LABEL_14;
      }

      v59 = OUTLINED_FUNCTION_20_26();
      bspush_ca_scan(v59, v60);
LABEL_9:
      v61 = OUTLINED_FUNCTION_22_25();
      if (test_synch(v61, v62, 1u, v63))
      {
        goto LABEL_15;
      }

LABEL_12:
      v64 = OUTLINED_FUNCTION_10_34();
    }

    else
    {
LABEL_11:
      OUTLINED_FUNCTION_27_22(inserted, v45, v46, v47, v48, v49, v50, v51, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189, v194);
      v64 = OUTLINED_FUNCTION_12_33();
    }

    lpta_rpta_loadp(v64, v65, v66);
LABEL_14:
    v67 = OUTLINED_FUNCTION_0_39();
    inserted = insert_2pt_s(v67, v68, v69, v70, v71);
    if (!inserted)
    {
LABEL_22:
      OUTLINED_FUNCTION_16_30(inserted, v45, v46, v47, v48, v49, v50, v51, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189, v194, v198);
      goto LABEL_3;
    }

LABEL_15:
    while (2)
    {
      v72 = *(v0 + 104);
      if (v72)
      {
        inserted = OUTLINED_FUNCTION_36_16(v72);
      }

      else
      {
        inserted = OUTLINED_FUNCTION_53_11();
      }

      switch(inserted)
      {
        case 1:
          goto LABEL_6;
        case 2:
          goto LABEL_11;
        case 3:
          goto LABEL_22;
        case 4:
          goto LABEL_7;
        case 5:
        case 8:
          v73 = OUTLINED_FUNCTION_22_25();
          bspush_ca_scan(v73, v74);
          goto LABEL_20;
        case 6:
          goto LABEL_9;
        case 7:
          goto LABEL_12;
        case 9:
LABEL_20:
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            goto LABEL_12;
          }

          continue;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t s_rules()
{
  OUTLINED_FUNCTION_7_34();
  v141 = *MEMORY[0x277D85DE8];
  v139 = 0;
  OUTLINED_FUNCTION_5_35(v2, v3, v4, v5, v6, v7, v8, v9, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137);
  OUTLINED_FUNCTION_28_21();
  bzero(v140, v10);
  if (setjmp(v140) || (OUTLINED_FUNCTION_49_11(), ventproc(v0, v11, v12, v13, v14, v140)))
  {
LABEL_3:
    v1 = 94;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_32_19();
    get_parm(v17, v18, v19, -6);
    OUTLINED_FUNCTION_14_31();
    v20 = OUTLINED_FUNCTION_37_16();
    push_ptr_init(v20, v21);
    v22 = fence_35(v0, 0, &null_str_12);
    OUTLINED_FUNCTION_38_15(v22, v23, &unk_2806BC372);
    OUTLINED_FUNCTION_55_11();
    v24 = OUTLINED_FUNCTION_26_24();
    if (lpta_loadp_setscan_r(v24, v25))
    {
LABEL_6:
      v26 = OUTLINED_FUNCTION_22_25();
      starttest(v26, v27);
      v28 = OUTLINED_FUNCTION_24_25();
      if (!lpta_loadp_setscan_r(v28, v29))
      {
LABEL_35:
        v77 = OUTLINED_FUNCTION_22_25();
        bspush_ca_scan(v77, v78);
LABEL_36:
        OUTLINED_FUNCTION_3_36();
        goto LABEL_37;
      }

LABEL_7:
      v30 = OUTLINED_FUNCTION_22_25();
      starttest(v30, v31);
      v32 = OUTLINED_FUNCTION_24_25();
      v34 = lpta_loadp_setscan_r(v32, v33);
      if (!v34)
      {
        OUTLINED_FUNCTION_21_26();
        v34 = test_string_s();
        if (!v34)
        {
LABEL_39:
          v79 = OUTLINED_FUNCTION_32_19();
          savescptr(v79, v80, v81);
          v82 = OUTLINED_FUNCTION_32_19();
          lpta_rpta_loadp(v82, v83, v84);
          goto LABEL_22;
        }
      }
    }

    else
    {
      v42 = OUTLINED_FUNCTION_17_29();
      if (testFldeq(v42, v43, v44, 1) || advance_tok(v0))
      {
        goto LABEL_24;
      }

      v45 = OUTLINED_FUNCTION_22_25();
      starttest(v45, v46);
      v47 = OUTLINED_FUNCTION_18_28();
      if (lpta_loadp_setscan_l(v47, v48))
      {
LABEL_14:
        v49 = OUTLINED_FUNCTION_19_27();
        starttest(v49, v50);
        v51 = OUTLINED_FUNCTION_20_26();
        bspush_ca(v51);
        v52 = OUTLINED_FUNCTION_18_28();
        if (lpta_loadp_setscan_l(v52, v53))
        {
          goto LABEL_24;
        }

LABEL_15:
        v54 = OUTLINED_FUNCTION_30_20();
        savescptr(v54, v55, v56);
        OUTLINED_FUNCTION_17_29();
        if (test_string_s())
        {
          goto LABEL_24;
        }

        v57 = OUTLINED_FUNCTION_24_25();
        if (lpta_loadp_setscan_r(v57, v58))
        {
          goto LABEL_24;
        }
      }

      else
      {
        v59 = OUTLINED_FUNCTION_17_29();
        if (testFldeq(v59, v60, v61, 1))
        {
          goto LABEL_24;
        }
      }

      v34 = advance_tok(v0);
      if (v34)
      {
        goto LABEL_24;
      }
    }

LABEL_21:
    while (1)
    {
      OUTLINED_FUNCTION_44_12(v34, v35, v36, v37, v38, v39, v40, v41, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v139);
LABEL_22:
      v62 = OUTLINED_FUNCTION_0_39();
      if (!insert_2pt_s(v62, v63, v64, v65, v66))
      {
        break;
      }

      do
      {
LABEL_24:
        while (2)
        {
          v67 = *(v0 + 104);
          if (v67)
          {
            v34 = OUTLINED_FUNCTION_36_16(v67);
          }

          else
          {
            v34 = OUTLINED_FUNCTION_53_11();
          }

          switch(v34)
          {
            case 1:
              goto LABEL_6;
            case 2:
              goto LABEL_14;
            case 3:
            case 11:
              goto LABEL_23;
            case 4:
            case 7:
            case 14:
            case 21:
              goto LABEL_21;
            case 5:
              v68 = OUTLINED_FUNCTION_18_28();
              if (lpta_loadp_setscan_l(v68, v69))
              {
                continue;
              }

              goto LABEL_29;
            case 6:
              goto LABEL_15;
            case 8:
LABEL_29:
              v70 = OUTLINED_FUNCTION_30_20();
              savescptr(v70, v71, v72);
              OUTLINED_FUNCTION_21_26();
              if (test_string_s())
              {
                continue;
              }

              v73 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v73, v74) || advance_tok(v0))
              {
                continue;
              }

              v75 = OUTLINED_FUNCTION_22_25();
              bspush_ca_scan(v75, v76);
LABEL_33:
              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                continue;
              }

LABEL_34:
              OUTLINED_FUNCTION_21_26();
              break;
            case 9:
              goto LABEL_33;
            case 10:
              goto LABEL_34;
            case 12:
              goto LABEL_7;
            case 13:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
              goto LABEL_35;
            case 20:
              goto LABEL_36;
            case 22:
              goto LABEL_39;
            default:
              goto LABEL_3;
          }

          break;
        }

LABEL_37:
        v34 = test_string_s();
      }

      while (v34);
    }

LABEL_23:
    OUTLINED_FUNCTION_39_14(v138);
  }

  vretproc(v0);
  v15 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t t_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v149, v152, v154, v156, v158, v160, v162);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v150, v153, *v155, v155[4], *v157, *&v157[4], v157[6], v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v161, v163))
  {
    v29 = OUTLINED_FUNCTION_8_34();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144);
    OUTLINED_FUNCTION_54_11(v40, v41, &null_str_12);
    v42 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v45, v46, v47, v48, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t accented_u_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v149, v152, v154, v156, v158, v160, v162);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v150, v153, *v155, v155[4], *v157, *&v157[4], v157[6], v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v161, v163))
  {
    v29 = OUTLINED_FUNCTION_8_34();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144);
    OUTLINED_FUNCTION_54_11(v40, v41, &null_str_12);
    v42 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v45, v46, v47, v48, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t v_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v149, v152, v154, v156, v158, v160, v162);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v150, v153, *v155, v155[4], *v157, *&v157[4], v157[6], v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v161, v163))
  {
    v29 = OUTLINED_FUNCTION_8_34();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144);
    OUTLINED_FUNCTION_54_11(v40, v41, &null_str_12);
    v42 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v45, v46, v47, v48, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t w_rules()
{
  OUTLINED_FUNCTION_7_34();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v4, v5, v6, v7, v8, v9, v10, v11, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v122, v123, v124);
  OUTLINED_FUNCTION_15_31(v12, v13, v14, v15, v16, v17, v18, v19, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v121, v122, v123, v124, v125, v126, v127, v128, v129);
  v20 = setjmp(v2);
  if (!v20 && !OUTLINED_FUNCTION_1_37(v20, v21, v22, v23, v24, v25, v26, v27, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v121, v122, v123, v124, v125, SBYTE4(v125), v126, SWORD2(v126), SBYTE6(v126), v127, SWORD2(v127), SBYTE6(v127), SHIBYTE(v127), v128, v129))
  {
    v30 = OUTLINED_FUNCTION_12_33();
    get_parm(v30, v31, v32, -6);
    v33 = OUTLINED_FUNCTION_37_16();
    OUTLINED_FUNCTION_52_11(v33, v34);
    fence_35(v0, 0, &null_str_12);
    v35 = OUTLINED_FUNCTION_50_11();
    fence_35(v35, v36, v37);
    starttest(v0, v1);
    lpta_rpta_loadp(v0, (v0 + 205), (v0 + 207));
    if (setd_lookup(v0, v1, 61) || (v38 = OUTLINED_FUNCTION_10_34(), lpta_rpta_loadp(v38, v39, v40), v41 = OUTLINED_FUNCTION_4_35(), insert_2pt_s(v41, v42, v43, v44, 0)))
    {
      do
      {
        v45 = OUTLINED_FUNCTION_57_10();
        lpta_rpta_loadp(v45, v46, &v121);
        v47 = OUTLINED_FUNCTION_4_35();
        if (!insert_2pt_s(v47, v48, v49, &unk_2806BC363, 0))
        {
          break;
        }

        v50 = v0[13];
        v51 = v50 ? OUTLINED_FUNCTION_36_16(v50) : OUTLINED_FUNCTION_53_11();
      }

      while (v51 == 1);
    }
  }

  vretproc(v0);
  v28 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t x_rules()
{
  OUTLINED_FUNCTION_7_34();
  v223 = *MEMORY[0x277D85DE8];
  v217 = 0;
  v218 = 0;
  v215 = 0;
  v216 = 0;
  OUTLINED_FUNCTION_5_35(v1, v2, v3, v4, v5, v6, v7, v8, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214);
  OUTLINED_FUNCTION_28_21();
  bzero(v222, v9);
  if (setjmp(v222) || ventproc(v0, &v188, v221, v220, v219, v222))
  {
LABEL_3:
    v10 = 94;
    goto LABEL_4;
  }

  v13 = OUTLINED_FUNCTION_32_19();
  get_parm(v13, v14, v15, -6);
  OUTLINED_FUNCTION_14_31();
  v16 = OUTLINED_FUNCTION_34_18();
  push_ptr_init(v16, v17);
  v18 = OUTLINED_FUNCTION_37_16();
  v20 = push_ptr_init(v18, v19);
  v10 = 0;
  v22 = OUTLINED_FUNCTION_54_11(v20, v21, &null_str_12);
  OUTLINED_FUNCTION_38_15(v22, v23, &unk_2806BC372);
  OUTLINED_FUNCTION_55_11();
  v24 = OUTLINED_FUNCTION_26_24();
  if (!lpta_loadp_setscan_r(v24, v25))
  {
    v89 = OUTLINED_FUNCTION_17_29();
    if (testFldeq(v89, v90, v91, 2) || (v92 = advance_tok(v0)))
    {
      LODWORD(v30) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_43_12(v92, v93, v94, v95, v96, v97, v98, v99, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217);
      v103 = OUTLINED_FUNCTION_4_35();
      LODWORD(v30) = 0;
      v10 = 0;
      if (!insert_2pt_s(v103, v104, v105, v106, 0))
      {
        goto LABEL_4;
      }
    }

    goto LABEL_42;
  }

  while (2)
  {
    v26 = OUTLINED_FUNCTION_22_25();
    starttest(v26, v27);
    v28 = OUTLINED_FUNCTION_18_28();
    if (!lpta_loadp_setscan_r(v28, v29))
    {
      v51 = OUTLINED_FUNCTION_17_29();
      if (!testFldeq(v51, v52, v53, 1) && !advance_tok(v0))
      {
        v54 = OUTLINED_FUNCTION_19_27();
        starttest(v54, v55);
        v56 = OUTLINED_FUNCTION_24_25();
        if (lpta_loadp_setscan_l(v56, v57))
        {
          v30 = v10;
LABEL_16:
          v58 = OUTLINED_FUNCTION_18_28();
          if (!lpta_loadp_setscan_r(v58, v59))
          {
            OUTLINED_FUNCTION_50_11();
            if (!test_string_s())
            {
              *(v0 + 136) = v10;
              v60 = *(v0 + 1664);
              v61 = OUTLINED_FUNCTION_35_17();
              v62 = test_ptr(v61);
              if (!v62)
              {
                OUTLINED_FUNCTION_43_12(v62, v63, v64, v65, v66, v67, v68, v69, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217);
                v10 = 0;
                v70 = OUTLINED_FUNCTION_4_35();
                if (!insert_2pt_s(v70, v71, v72, v73, 0))
                {
                  goto LABEL_4;
                }
              }
            }
          }

LABEL_20:
          v10 = v30;
          v74 = OUTLINED_FUNCTION_22_25();
          starttest(v74, v75);
          v76 = OUTLINED_FUNCTION_24_25();
          if (lpta_loadp_setscan_l(v76, v77) || advance_tok(v0))
          {
LABEL_57:
            v124 = OUTLINED_FUNCTION_22_25();
            starttest(v124, v125);
            v126 = OUTLINED_FUNCTION_18_28();
            v128 = lpta_loadp_setscan_r(v126, v127);
            LODWORD(v37) = v10;
            if (v128)
            {
LABEL_58:
              v129 = OUTLINED_FUNCTION_22_25();
              starttest(v129, v130);
              v131 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_l(v131, v132) || (OUTLINED_FUNCTION_3_36(), test_string_s()))
              {
                v30 = v10;
LABEL_61:
                v133 = OUTLINED_FUNCTION_24_25();
                if (!lpta_loadp_setscan_l(v133, v134))
                {
                  OUTLINED_FUNCTION_50_11();
                  if (!test_string_s())
                  {
                    *(v0 + 136) = v10;
                    v135 = *(v0 + 1648);
                    v136 = OUTLINED_FUNCTION_35_17();
                    v137 = test_ptr(v136);
                    if (!v137)
                    {
                      OUTLINED_FUNCTION_43_12(v137, v138, v139, v140, v141, v142, v143, v144, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217);
                      v10 = 0;
                      v145 = OUTLINED_FUNCTION_4_35();
                      if (!insert_2pt_s(v145, v146, v147, v148, 0))
                      {
                        goto LABEL_4;
                      }
                    }
                  }
                }

LABEL_65:
                v149 = OUTLINED_FUNCTION_22_25();
                starttest(v149, v150);
                v151 = OUTLINED_FUNCTION_18_28();
                v153 = lpta_loadp_setscan_r(v151, v152);
                v123 = v30;
                if (v153)
                {
LABEL_66:
                  v30 = v123;
                  v154 = OUTLINED_FUNCTION_22_25();
                  starttest(v154, v155);
                  v156 = OUTLINED_FUNCTION_18_28();
                  inserted = lpta_loadp_setscan_r(v156, v157);
                  v38 = v30;
                  if (!inserted)
                  {
LABEL_67:
                    LODWORD(v30) = v38;
                    v158 = OUTLINED_FUNCTION_22_25();
                    bspush_ca_scan(v158, v159);
LABEL_68:
                    v160 = OUTLINED_FUNCTION_42_12();
                    savescptr(v160, v161, v162);
                    v163 = OUTLINED_FUNCTION_42_12();
                    lpta_rpta_loadp(v163, v164, v165);
                    v166 = OUTLINED_FUNCTION_21_26();
                    inserted = setd_lookup(v166, v167, 65);
                    if (inserted)
                    {
                      goto LABEL_42;
                    }
                  }
                }

                else
                {
LABEL_72:
                  if (advance_tok(v0))
                  {
                    goto LABEL_42;
                  }

                  v176 = OUTLINED_FUNCTION_22_25();
                  bspush_ca_scan(v176, v177);
LABEL_74:
                  v178 = OUTLINED_FUNCTION_42_12();
                  savescptr(v178, v179, v180);
                  v181 = OUTLINED_FUNCTION_42_12();
                  lpta_rpta_loadp(v181, v182, v183);
                  v184 = OUTLINED_FUNCTION_21_26();
                  inserted = setd_lookup(v184, v185, 64);
                  if (inserted)
                  {
                    goto LABEL_42;
                  }
                }
              }

              else
              {
                v186 = OUTLINED_FUNCTION_22_25();
                bspush_ca_scan(v186, v187);
                LODWORD(v36) = v10;
LABEL_52:
                LODWORD(v30) = v36;
                *(v0 + 136) = 1;
                v121 = *(v0 + 1648);
                v122 = OUTLINED_FUNCTION_35_17();
                inserted = test_ptr(v122);
                if (inserted)
                {
                  goto LABEL_42;
                }
              }

LABEL_40:
              OUTLINED_FUNCTION_43_12(inserted, v36, v37, v38, v39, v40, v41, v42, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217);
              v10 = 0;
              v47 = OUTLINED_FUNCTION_4_35();
LABEL_41:
              if (!insert_2pt_s(v47, v48, v50, v49, 0))
              {
                goto LABEL_4;
              }

LABEL_42:
              v114 = *(v0 + 104);
              if (v114)
              {
                inserted = OUTLINED_FUNCTION_36_16(v114);
                v30 = v115;
              }

              else
              {
                inserted = vback(v0, v30);
                v30 = 0;
              }

              v10 = 0;
              v37 = v30;
              v36 = v30;
              v38 = v30;
              switch(inserted)
              {
                case 1:
                  v10 = v30;
                  continue;
                case 2:
                case 7:
                case 8:
                  goto LABEL_4;
                case 3:
                  goto LABEL_8;
                case 4:
                  goto LABEL_16;
                case 5:
                  bspop_boa(v0);
                  v107 = OUTLINED_FUNCTION_22_25();
                  starttest(v107, v108);
                  v109 = OUTLINED_FUNCTION_24_25();
                  inserted = lpta_loadp_setscan_l(v109, v110);
                  if (inserted)
                  {
                    goto LABEL_40;
                  }

                  OUTLINED_FUNCTION_3_36();
                  inserted = test_string_s();
                  if (inserted)
                  {
                    goto LABEL_40;
                  }

                  OUTLINED_FUNCTION_43_12(inserted, v36, v37, v38, v39, v40, v41, v42, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217);
                  v10 = 0;
                  v111 = OUTLINED_FUNCTION_23_25();
                  inserted = insert_2pt_s(v111, v112, 2, v113, 0);
                  if (inserted)
                  {
                    goto LABEL_40;
                  }

                  goto LABEL_4;
                case 6:
                case 25:
                  goto LABEL_40;
                case 9:
                  goto LABEL_20;
                case 10:
                  v10 = v30;
                  goto LABEL_57;
                case 11:
                  goto LABEL_22;
                case 12:
                  goto LABEL_24;
                case 13:
                  v10 = v30;
                  goto LABEL_58;
                case 14:
                  break;
                case 15:
                  v116 = advance_tok(v0);
                  LODWORD(v37) = v30;
                  if (!v116)
                  {
                    break;
                  }

                  goto LABEL_42;
                case 16:
                  goto LABEL_71;
                case 17:
                  goto LABEL_61;
                case 18:
                  v118 = OUTLINED_FUNCTION_22_25();
                  bspush_ca_scan(v118, v119);
                  goto LABEL_51;
                case 19:
                  goto LABEL_52;
                case 20:
LABEL_51:
                  OUTLINED_FUNCTION_21_26();
                  v120 = test_string_s();
                  LODWORD(v36) = v30;
                  if (!v120)
                  {
                    goto LABEL_52;
                  }

                  goto LABEL_42;
                case 21:
                  goto LABEL_65;
                case 22:
                  v123 = v30;
                  goto LABEL_66;
                case 23:
                  goto LABEL_72;
                case 24:
                  goto LABEL_74;
                case 26:
                  goto LABEL_67;
                case 27:
                  v117 = advance_tok(v0);
                  LODWORD(v38) = v30;
                  if (!v117)
                  {
                    goto LABEL_67;
                  }

                  goto LABEL_42;
                case 28:
                  goto LABEL_68;
                case 29:
                  goto LABEL_10;
                default:
                  goto LABEL_3;
              }
            }

            LODWORD(v30) = v37;
            v168 = OUTLINED_FUNCTION_22_25();
            bspush_ca_scan(v168, v169);
LABEL_71:
            v170 = OUTLINED_FUNCTION_42_12();
            savescptr(v170, v171, v172);
            v173 = OUTLINED_FUNCTION_42_12();
            lpta_rpta_loadp(v173, v174, v175);
            v86 = OUTLINED_FUNCTION_21_26();
            v88 = 63;
          }

          else
          {
LABEL_22:
            if (advance_tok(v0))
            {
              goto LABEL_42;
            }

            v78 = OUTLINED_FUNCTION_22_25();
            bspush_ca_scan(v78, v79);
LABEL_24:
            v80 = OUTLINED_FUNCTION_42_12();
            savescptr(v80, v81, v82);
            v83 = OUTLINED_FUNCTION_57_10();
            lpta_rpta_loadp(v83, v84, v85);
            v86 = OUTLINED_FUNCTION_21_26();
            v88 = 62;
          }

          inserted = setd_lookup(v86, v87, v88);
          if (inserted)
          {
            goto LABEL_42;
          }

          goto LABEL_10;
        }

        OUTLINED_FUNCTION_20_26();
        bspush_ca_scan_boa();
        v100 = OUTLINED_FUNCTION_17_29();
        if (!testFldeq(v100, v101, v102, 1))
        {
          if (advance_tok(v0))
          {
            LODWORD(v30) = v10;
          }

          else
          {
            LODWORD(v30) = 1;
          }

          goto LABEL_42;
        }
      }

      LODWORD(v30) = v10;
      goto LABEL_42;
    }

    break;
  }

  LODWORD(v30) = v10;
LABEL_8:
  v31 = OUTLINED_FUNCTION_22_25();
  starttest(v31, v32);
  lpta_rpta_loadp(v0, v0 + 1640, v0 + 1656);
  v33 = OUTLINED_FUNCTION_21_26();
  inserted = setd_lookup(v33, v34, 66);
  if (inserted || (OUTLINED_FUNCTION_43_12(inserted, v36, v37, v38, v39, v40, v41, v42, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217), v10 = 0, v43 = OUTLINED_FUNCTION_4_35(), inserted = insert_2pt_s(v43, v44, v45, v46, 0), inserted))
  {
LABEL_10:
    OUTLINED_FUNCTION_43_12(inserted, v36, v37, v38, v39, v40, v41, v42, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217);
    v10 = 0;
    v47 = OUTLINED_FUNCTION_23_25();
    v50 = 2;
    goto LABEL_41;
  }

LABEL_4:
  vretproc(v0);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void y_rules()
{
  OUTLINED_FUNCTION_61_10();
  OUTLINED_FUNCTION_7_34();
  v123 = *MEMORY[0x277D85DE8];
  v120 = 0;
  v121 = 0;
  OUTLINED_FUNCTION_5_35(v1, v2, v3, v4, v5, v6, v7, v8, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v119);
  OUTLINED_FUNCTION_28_21();
  bzero(v122, v9);
  if (!setjmp(v122))
  {
    OUTLINED_FUNCTION_49_11();
    if (!ventproc(v0, v10, v11, v12, v13, v122))
    {
      v15 = OUTLINED_FUNCTION_8_34();
      get_parm(v15, v16, v17, -6);
      v18 = OUTLINED_FUNCTION_34_18();
      OUTLINED_FUNCTION_52_11(v18, v19);
      v20 = OUTLINED_FUNCTION_37_16();
      v22 = push_ptr_init(v20, v21);
      v23 = 0;
      OUTLINED_FUNCTION_54_11(v22, v24, &null_str_12);
      v25 = OUTLINED_FUNCTION_40_13();
      fence_35(v25, v26, v27);
      v28 = OUTLINED_FUNCTION_58_10();
      starttest(v28, v29);
      v30 = OUTLINED_FUNCTION_25_24();
      v32 = lpta_loadp_setscan_l(v30, v31);
      v40 = 0;
      if (v32)
      {
LABEL_5:
        OUTLINED_FUNCTION_44_12(v32, v33, v34, v35, v36, v37, v38, v39, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v118, v119, v120);
        v41 = OUTLINED_FUNCTION_4_35();
        inserted = insert_2pt_s(v41, v42, v43, v44, 0);
        v46 = v40;
        if (!inserted)
        {
          goto LABEL_3;
        }
      }

      else
      {
LABEL_8:
        OUTLINED_FUNCTION_45_12();
        v47 = OUTLINED_FUNCTION_30_20();
        savescptr(v47, v48, v49);
        OUTLINED_FUNCTION_22_25();
        bspush_ca_scan_boa();
        v50 = OUTLINED_FUNCTION_17_29();
        if (testFldeq(v50, v51, v52, 1))
        {
          v46 = v23;
        }

        else if (advance_tok(v0))
        {
          v46 = v23;
        }

        else
        {
          v46 = 1;
        }
      }

      while (2)
      {
        v53 = v0[13];
        if (v53)
        {
          v54 = OUTLINED_FUNCTION_36_16(v53);
          v40 = v33;
        }

        else
        {
          v54 = vback(v0, v46);
          v40 = 0;
        }

        v55 = v54 - 1;
        v32 = 0;
        switch(v55)
        {
          case 0:
            goto LABEL_5;
          case 1:
            v23 = v40;
            goto LABEL_8;
          case 2:
            bspop_boa(v0);
            v56 = OUTLINED_FUNCTION_57_10();
            v58 = lpta_loadp_setscan_r(v56, v57);
            v46 = v40;
            if (!v58)
            {
              v59 = advance_tok(v0);
              v46 = v40;
              if (!v59)
              {
                OUTLINED_FUNCTION_58_10();
                bspush_ca_scan_boa();
                v60 = OUTLINED_FUNCTION_21_26();
                v62 = testFldeq(v60, v61, 4, 1);
                v46 = v40;
                if (!v62)
                {
                  if (advance_tok(v0))
                  {
                    v46 = v40;
                  }

                  else
                  {
                    v46 = 1;
                  }
                }
              }
            }

            continue;
          case 3:
            bspop_boa(v0);
            v63 = OUTLINED_FUNCTION_25_24();
            lpta_rpta_loadp(v63, v64, &v118);
            v65 = OUTLINED_FUNCTION_46_12();
            v67 = insert_2pt_s(v65, v66, 1, &unk_2806BC368, 0);
            v46 = v40;
            if (v67)
            {
              continue;
            }

            break;
          default:
            goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_10();
}

uint64_t z_rules()
{
  OUTLINED_FUNCTION_7_34();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v4, v5, v6, v7, v8, v9, v10, v11, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v153, v154, v155);
  OUTLINED_FUNCTION_15_31(v12, v13, v14, v15, v16, v17, v18, v19, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v152, v153, v154, v155, v156, v157, v158, v159, v160);
  v20 = setjmp(v2);
  if (!v20 && !OUTLINED_FUNCTION_1_37(v20, v21, v22, v23, v24, v25, v26, v27, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v152, v153, v154, v155, v156, SBYTE4(v156), v157, SWORD2(v157), SBYTE6(v157), v158, SWORD2(v158), SBYTE6(v158), SHIBYTE(v158), v159, v160))
  {
    v30 = OUTLINED_FUNCTION_12_33();
    get_parm(v30, v31, v32, -6);
    OUTLINED_FUNCTION_6_34(v33, v34, v35, v36, v37, v38, v39, v40, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v152);
    fence_35(v0, 0, &null_str_12);
    v41 = OUTLINED_FUNCTION_50_11();
    fence_35(v41, v42, v43);
    starttest(v0, v1);
    v44 = OUTLINED_FUNCTION_26_24();
    if (lpta_loadp_setscan_l(v44, v45) || (v46 = OUTLINED_FUNCTION_10_34(), lpta_rpta_loadp(v46, v47, v48), v49 = OUTLINED_FUNCTION_4_35(), insert_2pt_s(v49, v50, v51, v52, 0)))
    {
      do
      {
        v53 = OUTLINED_FUNCTION_57_10();
        lpta_rpta_loadp(v53, v54, &v152);
        v55 = OUTLINED_FUNCTION_4_35();
        if (!insert_2pt_s(v55, v56, v57, &unk_2806BC37B, 0))
        {
          break;
        }

        v58 = *(v0 + 104);
        v59 = v58 ? OUTLINED_FUNCTION_36_16(v58) : OUTLINED_FUNCTION_53_11();
      }

      while (v59 == 1);
    }
  }

  vretproc(v0);
  v28 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t a_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v192, v197, v202, v206, v209);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v193, v198, v203, v207, v210, v212, v214, v216, v218, v220);
  v19 = setjmp(v1);
  if (v19 || OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189, v194, v199, v204, v208, v211, *v213, v213[4], *v215, *&v215[4], v215[6], v217, SWORD2(v217), SBYTE6(v217), SHIBYTE(v217), v219, v221))
  {
    goto LABEL_3;
  }

  v29 = OUTLINED_FUNCTION_12_33();
  get_parm(v29, v30, v31, -6);
  OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190, v195, v200);
  v40 = fence_35(v0, 0, &null_str_12);
  OUTLINED_FUNCTION_38_15(v40, v41, &unk_2806BC372);
  OUTLINED_FUNCTION_55_11();
  v42 = OUTLINED_FUNCTION_26_24();
  if (lpta_loadp_setscan_r(v42, v43) || (OUTLINED_FUNCTION_3_36(), test_string_s()))
  {
LABEL_9:
    v58 = OUTLINED_FUNCTION_20_26();
    starttest(v58, v59);
    v60 = OUTLINED_FUNCTION_37_16();
    if (!is_nasalized_vowel(v60, v61))
    {
      v62 = OUTLINED_FUNCTION_10_34();
      lpta_rpta_loadp(v62, v63, v64);
      v65 = OUTLINED_FUNCTION_0_39();
      inserted = insert_2pt_s(v65, v66, v67, v68, v69);
      if (!inserted)
      {
        goto LABEL_17;
      }
    }

LABEL_11:
    v78 = OUTLINED_FUNCTION_10_34();
    lpta_rpta_loadp(v78, v79, v80);
    v53 = OUTLINED_FUNCTION_0_39();
LABEL_12:
    inserted = insert_2pt_s(v53, v54, v57, v55, v56);
    if (inserted)
    {
      goto LABEL_13;
    }

LABEL_17:
    OUTLINED_FUNCTION_16_30(inserted, v71, v72, v73, v74, v75, v76, v77, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186, v191, v196, v201, v205);
    goto LABEL_3;
  }

  while (2)
  {
    OUTLINED_FUNCTION_45_12();
    v44 = OUTLINED_FUNCTION_30_20();
    savescptr(v44, v45, v46);
LABEL_7:
    v47 = OUTLINED_FUNCTION_22_25();
    if (!test_synch(v47, v48, 1u, v49))
    {
      v50 = OUTLINED_FUNCTION_10_34();
      lpta_rpta_loadp(v50, v51, v52);
      v53 = OUTLINED_FUNCTION_9_34();
      v57 = 2;
      goto LABEL_12;
    }

LABEL_13:
    v81 = *(v0 + 104);
    if (v81)
    {
      inserted = OUTLINED_FUNCTION_36_16(v81);
    }

    else
    {
      inserted = OUTLINED_FUNCTION_53_11();
    }

    switch(inserted)
    {
      case 1:
        goto LABEL_9;
      case 2:
        continue;
      case 3:
        goto LABEL_7;
      case 4:
        goto LABEL_17;
      case 5:
        goto LABEL_11;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t accented_a_rules()
{
  OUTLINED_FUNCTION_7_34();
  v208 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_35(v3, v4, v5, v6, v7, v8, v9, v10, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v192, v195);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189, v193, v196, v198, v200, v202, v204, v206);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190, v194, v197, *v199, v199[4], *v201, *&v201[4], v201[6], v203, SWORD2(v203), SBYTE6(v203), SHIBYTE(v203), v205, v207))
  {
    v29 = OUTLINED_FUNCTION_12_33();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186);
    v40 = fence_35(v0, 0, &null_str_12);
    OUTLINED_FUNCTION_38_15(v40, v41, &unk_2806BC372);
    OUTLINED_FUNCTION_55_11();
    v42 = OUTLINED_FUNCTION_26_24();
    if (is_nasalized_vowel(v42, v43) || (v44 = OUTLINED_FUNCTION_10_34(), lpta_rpta_loadp(v44, v45, v46), v47 = OUTLINED_FUNCTION_0_39(), inserted = insert_2pt_s(v47, v48, v49, v50, v51), inserted))
    {
      OUTLINED_FUNCTION_48_12();
      while (1)
      {
        v60 = OUTLINED_FUNCTION_25_24();
        lpta_rpta_loadp(v60, v61, v2);
        v62 = OUTLINED_FUNCTION_4_35();
        inserted = OUTLINED_FUNCTION_62_9(v62, v63, v64);
        if (!inserted)
        {
          break;
        }

        v65 = *(v0 + 104);
        if (v65)
        {
          inserted = OUTLINED_FUNCTION_36_16(v65);
        }

        else
        {
          v66 = OUTLINED_FUNCTION_46_12();
          inserted = vback(v66, v67);
        }

        if (inserted != 1)
        {
          if (inserted != 2)
          {
            goto LABEL_3;
          }

          break;
        }
      }
    }

    OUTLINED_FUNCTION_16_30(inserted, v53, v54, v55, v56, v57, v58, v59, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v191);
  }

LABEL_3:
  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t a_tilda_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v149, v152, v154, v156, v158, v160, v162);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v150, v153, *v155, v155[4], *v157, *&v157[4], v157[6], v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v161, v163))
  {
    v29 = OUTLINED_FUNCTION_8_34();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144);
    OUTLINED_FUNCTION_54_11(v40, v41, &null_str_12);
    v42 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v45, v46, v47, v48, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t e_rules()
{
  OUTLINED_FUNCTION_7_34();
  v159 = *MEMORY[0x277D85DE8];
  v157 = 0;
  OUTLINED_FUNCTION_5_35(v3, v4, v5, v6, v7, v8, v9, v10, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155);
  OUTLINED_FUNCTION_28_21();
  bzero(v158, v11);
  if (!setjmp(v158))
  {
    OUTLINED_FUNCTION_49_11();
    if (!ventproc(v0, v12, v13, v14, v15, v158))
    {
      v18 = OUTLINED_FUNCTION_8_34();
      get_parm(v18, v19, v20, -6);
      v21 = OUTLINED_FUNCTION_34_18();
      OUTLINED_FUNCTION_52_11(v21, v22);
      v23 = OUTLINED_FUNCTION_37_16();
      push_ptr_init(v23, v24);
      fence_35(v0, 0, &null_str_12);
      v25 = OUTLINED_FUNCTION_40_13();
      fence_35(v25, v26, v27);
      v28 = OUTLINED_FUNCTION_58_10();
      starttest(v28, v29);
      v30 = OUTLINED_FUNCTION_25_24();
      if (lpta_loadp_setscan_r(v30, v31))
      {
LABEL_9:
        v42 = OUTLINED_FUNCTION_22_25();
        starttest(v42, v43);
        v44 = OUTLINED_FUNCTION_18_28();
        if (lpta_loadp_setscan_r(v44, v45))
        {
LABEL_14:
          v53 = OUTLINED_FUNCTION_19_27();
          starttest(v53, v54);
          v55 = OUTLINED_FUNCTION_18_28();
          if (lpta_loadp_setscan_l(v55, v56))
          {
LABEL_15:
            v57 = OUTLINED_FUNCTION_34_18();
            lpta_loadpn(v57, v58);
            v59 = OUTLINED_FUNCTION_59_10();
            rpta_loadpn(v59, v60);
            if (!compare_ptas(v0))
            {
              v61 = testeq(v0);
              if (!v61)
              {
                OUTLINED_FUNCTION_44_12(v61, v62, v63, v64, v65, v66, v67, v68, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v157);
                v69 = OUTLINED_FUNCTION_0_39();
                if (!insert_2pt_s(v69, v70, v71, v72, v73))
                {
                  goto LABEL_13;
                }
              }
            }

LABEL_25:
            v77 = OUTLINED_FUNCTION_34_18();
            v79 = is_nasalized_vowel(v77, v78);
            if (!v79)
            {
              OUTLINED_FUNCTION_44_12(v79, v80, v81, v82, v83, v84, v85, v86, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v157);
              v87 = OUTLINED_FUNCTION_0_39();
              if (!insert_2pt_s(v87, v88, v89, v90, v91))
              {
LABEL_13:
                OUTLINED_FUNCTION_39_14(v156);
                goto LABEL_4;
              }
            }

LABEL_27:
            v92 = OUTLINED_FUNCTION_22_25();
            starttest(v92, v93);
            v94 = OUTLINED_FUNCTION_18_28();
            v34 = lpta_loadp_setscan_l(v94, v95);
            if (!v34)
            {
LABEL_28:
              v96 = OUTLINED_FUNCTION_30_20();
              savescptr(v96, v97, v98);
              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_21;
              }

              v99 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v99, v100))
              {
                goto LABEL_21;
              }

              if (advance_tok(v0))
              {
                goto LABEL_21;
              }

              OUTLINED_FUNCTION_40_13();
              if (test_string_s())
              {
                goto LABEL_21;
              }

              *(v0 + 136) = v2;
              v101 = *(v0 + 1664);
              v102 = OUTLINED_FUNCTION_35_17();
              v34 = test_ptr(v102);
              if (v34)
              {
                goto LABEL_21;
              }
            }
          }

          else
          {
            v74 = OUTLINED_FUNCTION_20_26();
            bspush_ca_scan(v74, v75);
LABEL_20:
            OUTLINED_FUNCTION_3_36();
            v34 = test_string_s();
            if (v34)
            {
              goto LABEL_21;
            }
          }
        }

        else
        {
          v46 = OUTLINED_FUNCTION_21_26();
          if (testFldeq(v46, v47, 5, 2))
          {
            goto LABEL_21;
          }

          v34 = advance_tok(v0);
          if (v34)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        v32 = OUTLINED_FUNCTION_21_26();
        if (testFldeq(v32, v33, 5, 1))
        {
          goto LABEL_21;
        }

        v34 = advance_tok(v0);
        if (v34)
        {
          goto LABEL_21;
        }
      }

      while (2)
      {
        OUTLINED_FUNCTION_44_12(v34, v35, v36, v37, v38, v39, v40, v41, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v157);
        v48 = OUTLINED_FUNCTION_0_39();
        if (!insert_2pt_s(v48, v49, v50, v51, v52))
        {
          goto LABEL_13;
        }

LABEL_21:
        v76 = *(v0 + 104);
        if (v76)
        {
          v34 = OUTLINED_FUNCTION_36_16(v76);
        }

        else
        {
          v34 = OUTLINED_FUNCTION_53_11();
        }

        switch(v34)
        {
          case 1:
            goto LABEL_9;
          case 2:
            goto LABEL_13;
          case 3:
            goto LABEL_14;
          case 4:
            goto LABEL_15;
          case 5:
            goto LABEL_20;
          case 6:
          case 9:
            continue;
          case 7:
            goto LABEL_25;
          case 8:
            goto LABEL_27;
          case 10:
            goto LABEL_28;
          default:
            goto LABEL_3;
        }
      }
    }
  }

LABEL_3:
  v1 = 94;
LABEL_4:
  vretproc(v0);
  v16 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t e_acute_rules()
{
  OUTLINED_FUNCTION_7_34();
  v208 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_35(v3, v4, v5, v6, v7, v8, v9, v10, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v192, v195);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189, v193, v196, v198, v200, v202, v204, v206);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190, v194, v197, *v199, v199[4], *v201, *&v201[4], v201[6], v203, SWORD2(v203), SBYTE6(v203), SHIBYTE(v203), v205, v207))
  {
    v29 = OUTLINED_FUNCTION_12_33();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186);
    v40 = fence_35(v0, 0, &null_str_12);
    OUTLINED_FUNCTION_38_15(v40, v41, &unk_2806BC372);
    OUTLINED_FUNCTION_55_11();
    v42 = OUTLINED_FUNCTION_26_24();
    if (is_nasalized_vowel(v42, v43) || (v44 = OUTLINED_FUNCTION_10_34(), lpta_rpta_loadp(v44, v45, v46), v47 = OUTLINED_FUNCTION_0_39(), inserted = insert_2pt_s(v47, v48, v49, v50, v51), inserted))
    {
      OUTLINED_FUNCTION_48_12();
      while (1)
      {
        v60 = OUTLINED_FUNCTION_25_24();
        lpta_rpta_loadp(v60, v61, v2);
        v62 = OUTLINED_FUNCTION_4_35();
        inserted = OUTLINED_FUNCTION_62_9(v62, v63, v64);
        if (!inserted)
        {
          break;
        }

        v65 = *(v0 + 104);
        if (v65)
        {
          inserted = OUTLINED_FUNCTION_36_16(v65);
        }

        else
        {
          v66 = OUTLINED_FUNCTION_46_12();
          inserted = vback(v66, v67);
        }

        if (inserted != 1)
        {
          if (inserted != 2)
          {
            goto LABEL_3;
          }

          break;
        }
      }
    }

    OUTLINED_FUNCTION_16_30(inserted, v53, v54, v55, v56, v57, v58, v59, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v191);
  }

LABEL_3:
  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t e_circon_rules()
{
  OUTLINED_FUNCTION_7_34();
  v208 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_35(v3, v4, v5, v6, v7, v8, v9, v10, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v192, v195);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189, v193, v196, v198, v200, v202, v204, v206);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190, v194, v197, *v199, v199[4], *v201, *&v201[4], v201[6], v203, SWORD2(v203), SBYTE6(v203), SHIBYTE(v203), v205, v207))
  {
    v29 = OUTLINED_FUNCTION_12_33();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186);
    v40 = fence_35(v0, 0, &null_str_12);
    OUTLINED_FUNCTION_38_15(v40, v41, &unk_2806BC372);
    OUTLINED_FUNCTION_55_11();
    v42 = OUTLINED_FUNCTION_26_24();
    if (is_nasalized_vowel(v42, v43) || (v44 = OUTLINED_FUNCTION_10_34(), lpta_rpta_loadp(v44, v45, v46), v47 = OUTLINED_FUNCTION_0_39(), inserted = insert_2pt_s(v47, v48, v49, v50, v51), inserted))
    {
      OUTLINED_FUNCTION_48_12();
      while (1)
      {
        v60 = OUTLINED_FUNCTION_25_24();
        lpta_rpta_loadp(v60, v61, v2);
        v62 = OUTLINED_FUNCTION_4_35();
        inserted = OUTLINED_FUNCTION_62_9(v62, v63, v64);
        if (!inserted)
        {
          break;
        }

        v65 = *(v0 + 104);
        if (v65)
        {
          inserted = OUTLINED_FUNCTION_36_16(v65);
        }

        else
        {
          v66 = OUTLINED_FUNCTION_46_12();
          inserted = vback(v66, v67);
        }

        if (inserted != 1)
        {
          if (inserted != 2)
          {
            goto LABEL_3;
          }

          break;
        }
      }
    }

    OUTLINED_FUNCTION_16_30(inserted, v53, v54, v55, v56, v57, v58, v59, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v191);
  }

LABEL_3:
  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

void i_rules()
{
  OUTLINED_FUNCTION_61_10();
  OUTLINED_FUNCTION_7_34();
  v76 = *MEMORY[0x277D85DE8];
  v71[0] = 0;
  v71[1] = 0;
  v69 = 0;
  v70 = 0;
  OUTLINED_FUNCTION_29_21();
  bzero(v68, v1);
  OUTLINED_FUNCTION_28_21();
  bzero(v75, v2);
  if (setjmp(v75) || ventproc(v0, v68, v74, v73, v72, v75))
  {
    goto LABEL_3;
  }

  v4 = OUTLINED_FUNCTION_8_34();
  get_parm(v4, v5, v6, -6);
  v7 = OUTLINED_FUNCTION_42_12();
  get_parm(v7, v8, v9, -6);
  fence_35(v0, 0, &null_str_12);
  v10 = OUTLINED_FUNCTION_21_26();
  fence_35(v10, v11, v12);
  v13 = OUTLINED_FUNCTION_25_24();
  if (!lpta_loadp_setscan_l(v13, v14))
  {
    OUTLINED_FUNCTION_3_36();
    if (!test_string_s())
    {
      lpta_rpta_loadp(v0, v71, &v69);
      v15 = OUTLINED_FUNCTION_0_39();
      if (!insert_2pt_s(v15, v16, v17, v18, v19))
      {
        goto LABEL_40;
      }
    }
  }

  v20 = 0;
  while (2)
  {
    v21 = OUTLINED_FUNCTION_25_24();
    if (!is_nasalized_vowel(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_51_11();
      lpta_rpta_loadp(v23, v24, &v69);
      v25 = OUTLINED_FUNCTION_41_12();
      if (!insert_2pt_s(v25, v26, v27, &unk_2806BC381, 0))
      {
        goto LABEL_40;
      }
    }

LABEL_10:
    starttest(v0, 4);
    v28 = OUTLINED_FUNCTION_51_11();
    if (lpta_loadp_setscan_l(v28, v29))
    {
      goto LABEL_16;
    }

    v30 = OUTLINED_FUNCTION_21_26();
    if (!testFldeq(v30, v31, 4, 1) && !advance_tok(v0))
    {
      starttest(v0, 5);
      v32 = OUTLINED_FUNCTION_25_24();
      if (lpta_loadp_setscan_r(v32, v33) || (OUTLINED_FUNCTION_3_36(), v34 = test_string_s(), v35 = v20, v34))
      {
LABEL_25:
        v46 = OUTLINED_FUNCTION_25_24();
        if (!lpta_loadp_setscan_r(v46, v47))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            v48 = OUTLINED_FUNCTION_51_11();
            lpta_rpta_loadp(v48, v49, &v69);
            v50 = OUTLINED_FUNCTION_41_12();
            if (!insert_2pt_s(v50, v51, v52, &unk_2806BC368, 0))
            {
              goto LABEL_40;
            }
          }
        }

LABEL_28:
        v53 = OUTLINED_FUNCTION_56_10();
        starttest(v53, v54);
        v55 = OUTLINED_FUNCTION_25_24();
        if (!lpta_loadp_setscan_r(v55, v56))
        {
          v66 = OUTLINED_FUNCTION_21_26();
          if (testFldeq(v66, v67, 4, 1) || advance_tok(v0))
          {
            goto LABEL_18;
          }

LABEL_23:
          v44 = OUTLINED_FUNCTION_51_11();
          lpta_rpta_loadp(v44, v45, &v69);
          v38 = OUTLINED_FUNCTION_41_12();
          v41 = &unk_2806BC361;
LABEL_17:
          if (insert_2pt_s(v38, v39, v40, v41, 0))
          {
            goto LABEL_18;
          }

LABEL_40:
          OUTLINED_FUNCTION_39_14(v70);
          break;
        }

LABEL_29:
        v57 = OUTLINED_FUNCTION_25_24();
        if (!lpta_loadp_setscan_r(v57, v58))
        {
          OUTLINED_FUNCTION_21_26();
          if (!test_string_s())
          {
            v59 = OUTLINED_FUNCTION_51_11();
            lpta_rpta_loadp(v59, v60, &v69);
            v61 = OUTLINED_FUNCTION_41_12();
            if (!insert_2pt_s(v61, v62, v63, &unk_2806BC368, 0))
            {
              goto LABEL_40;
            }
          }
        }

LABEL_32:
        starttest(v0, 11);
        v64 = OUTLINED_FUNCTION_51_11();
        if (!lpta_loadp_setscan_l(v64, v65))
        {
          bspush_ca_scan_boa();
          bspush_ca_scan(v0, 13);
          OUTLINED_FUNCTION_3_36();
LABEL_34:
          if (!test_string_s())
          {
LABEL_35:
            v20 = 1;
          }

          goto LABEL_18;
        }

LABEL_16:
        v36 = OUTLINED_FUNCTION_51_11();
        lpta_rpta_loadp(v36, v37, &v69);
        v38 = OUTLINED_FUNCTION_41_12();
        v41 = &unk_2806BC368;
        goto LABEL_17;
      }

LABEL_15:
      v20 = v35;
      if (!test_synch(v0, 6, 1u, &_MergedGlobals_32))
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    v42 = v0[13];
    if (v42)
    {
      v43 = OUTLINED_FUNCTION_36_16(v42);
    }

    else
    {
      v43 = vback(v0, v20);
      v20 = 0;
    }

    switch(v43)
    {
      case 1:
        continue;
      case 2:
      case 7:
        goto LABEL_40;
      case 3:
        goto LABEL_10;
      case 4:
      case 11:
        goto LABEL_16;
      case 5:
        goto LABEL_25;
      case 6:
        v35 = v20;
        goto LABEL_15;
      case 8:
        goto LABEL_28;
      case 9:
        goto LABEL_29;
      case 10:
        goto LABEL_32;
      case 12:
        bspop_boa(v0);
        goto LABEL_23;
      case 13:
        OUTLINED_FUNCTION_3_36();
        goto LABEL_34;
      case 14:
        goto LABEL_35;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_10();
}

uint64_t i_acute_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v149, v152, v154, v156, v158, v160, v162);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v150, v153, *v155, v155[4], *v157, *&v157[4], v157[6], v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v161, v163))
  {
    v29 = OUTLINED_FUNCTION_8_34();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144);
    OUTLINED_FUNCTION_54_11(v40, v41, &null_str_12);
    v42 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v45, v46, v47, v48, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t o_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v184, v188, v192, v196, v200, v203);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v181, v185, v189, v193, v197, v201, v204, v206, v208, v210, v212, v214);
  v19 = setjmp(v1);
  if (v19 || OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v186, v190, v194, v198, v202, v205, *v207, v207[4], *v209, *&v209[4], v209[6], v211, SWORD2(v211), SBYTE6(v211), SHIBYTE(v211), v213, v215))
  {
    goto LABEL_3;
  }

  v29 = OUTLINED_FUNCTION_8_34();
  get_parm(v29, v30, v31, -6);
  v32 = OUTLINED_FUNCTION_37_16();
  OUTLINED_FUNCTION_52_11(v32, v33);
  fence_35(v0, 0, &null_str_12);
  v34 = OUTLINED_FUNCTION_40_13();
  fence_35(v34, v35, v36);
  v37 = OUTLINED_FUNCTION_58_10();
  starttest(v37, v38);
  v39 = OUTLINED_FUNCTION_25_24();
  if (lpta_loadp_setscan_r(v39, v40))
  {
LABEL_8:
    v43 = OUTLINED_FUNCTION_22_25();
    starttest(v43, v44);
    v45 = OUTLINED_FUNCTION_24_25();
    if (lpta_loadp_setscan_r(v45, v46))
    {
LABEL_15:
      v58 = OUTLINED_FUNCTION_24_25();
      if (!lpta_loadp_setscan_l(v58, v59))
      {
        OUTLINED_FUNCTION_3_36();
        if (!test_string_s())
        {
          v60 = OUTLINED_FUNCTION_10_34();
          lpta_rpta_loadp(v60, v61, v62);
          v63 = OUTLINED_FUNCTION_0_39();
          inserted = insert_2pt_s(v63, v64, v65, v66, v67);
          if (!inserted)
          {
            goto LABEL_24;
          }
        }
      }

LABEL_18:
      v68 = OUTLINED_FUNCTION_37_16();
      lpta_loadpn(v68, v69);
      v70 = OUTLINED_FUNCTION_59_10();
      rpta_loadpn(v70, v71);
      if (!compare_ptas(v0) && !testeq(v0))
      {
        v72 = OUTLINED_FUNCTION_10_34();
        lpta_rpta_loadp(v72, v73, v74);
        v75 = OUTLINED_FUNCTION_0_39();
        inserted = insert_2pt_s(v75, v76, v77, v78, v79);
        if (!inserted)
        {
LABEL_24:
          OUTLINED_FUNCTION_16_30(inserted, v51, v52, v53, v54, v55, v56, v57, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v187, v191, v195, v199);
          goto LABEL_3;
        }
      }

LABEL_21:
      v80 = OUTLINED_FUNCTION_22_25();
      starttest(v80, v81);
      v82 = OUTLINED_FUNCTION_37_16();
      if (!is_nasalized_vowel(v82, v83))
      {
        v84 = OUTLINED_FUNCTION_10_34();
        lpta_rpta_loadp(v84, v85, v86);
        v87 = OUTLINED_FUNCTION_0_39();
        inserted = insert_2pt_s(v87, v88, v89, v90, v91);
        if (!inserted)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v47 = OUTLINED_FUNCTION_21_26();
      if (testFldeq(v47, v48, 5, 2) || advance_tok(v0))
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v41 = OUTLINED_FUNCTION_21_26();
    if (testFldeq(v41, v42, 5, 1) || advance_tok(v0))
    {
      goto LABEL_11;
    }
  }

  while (2)
  {
    v92 = OUTLINED_FUNCTION_10_34();
    lpta_rpta_loadp(v92, v93, v94);
    v95 = OUTLINED_FUNCTION_0_39();
    inserted = insert_2pt_s(v95, v96, v97, v98, v99);
    if (!inserted)
    {
      goto LABEL_24;
    }

LABEL_11:
    v49 = *(v0 + 104);
    if (v49)
    {
      inserted = OUTLINED_FUNCTION_36_16(v49);
    }

    else
    {
      inserted = OUTLINED_FUNCTION_53_11();
    }

    switch(inserted)
    {
      case 1:
        goto LABEL_8;
      case 2:
        goto LABEL_24;
      case 3:
        goto LABEL_15;
      case 4:
        goto LABEL_18;
      case 5:
        goto LABEL_21;
      case 6:
        continue;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t o_acute_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v149, v152, v154, v156, v158, v160, v162);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v150, v153, *v155, v155[4], *v157, *&v157[4], v157[6], v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v161, v163))
  {
    v29 = OUTLINED_FUNCTION_8_34();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144);
    OUTLINED_FUNCTION_54_11(v40, v41, &null_str_12);
    v42 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v45, v46, v47, v48, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t o_circon_rules()
{
  OUTLINED_FUNCTION_7_34();
  v208 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_35(v3, v4, v5, v6, v7, v8, v9, v10, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v192, v195);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189, v193, v196, v198, v200, v202, v204, v206);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190, v194, v197, *v199, v199[4], *v201, *&v201[4], v201[6], v203, SWORD2(v203), SBYTE6(v203), SHIBYTE(v203), v205, v207))
  {
    v29 = OUTLINED_FUNCTION_12_33();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186);
    v40 = fence_35(v0, 0, &null_str_12);
    OUTLINED_FUNCTION_38_15(v40, v41, &unk_2806BC372);
    OUTLINED_FUNCTION_55_11();
    v42 = OUTLINED_FUNCTION_26_24();
    if (is_nasalized_vowel(v42, v43) || (v44 = OUTLINED_FUNCTION_10_34(), lpta_rpta_loadp(v44, v45, v46), v47 = OUTLINED_FUNCTION_0_39(), inserted = insert_2pt_s(v47, v48, v49, v50, v51), inserted))
    {
      OUTLINED_FUNCTION_48_12();
      while (1)
      {
        v60 = OUTLINED_FUNCTION_25_24();
        lpta_rpta_loadp(v60, v61, v2);
        v62 = OUTLINED_FUNCTION_4_35();
        inserted = OUTLINED_FUNCTION_62_9(v62, v63, v64);
        if (!inserted)
        {
          break;
        }

        v65 = *(v0 + 104);
        if (v65)
        {
          inserted = OUTLINED_FUNCTION_36_16(v65);
        }

        else
        {
          v66 = OUTLINED_FUNCTION_46_12();
          inserted = vback(v66, v67);
        }

        if (inserted != 1)
        {
          if (inserted != 2)
          {
            goto LABEL_3;
          }

          break;
        }
      }
    }

    OUTLINED_FUNCTION_16_30(inserted, v53, v54, v55, v56, v57, v58, v59, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v191);
  }

LABEL_3:
  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t o_tilda_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v149, v152, v154, v156, v158, v160, v162);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v150, v153, *v155, v155[4], *v157, *&v157[4], v157[6], v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v161, v163))
  {
    v29 = OUTLINED_FUNCTION_8_34();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144);
    OUTLINED_FUNCTION_54_11(v40, v41, &null_str_12);
    v42 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v45, v46, v47, v48, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

void u_rules()
{
  OUTLINED_FUNCTION_61_10();
  OUTLINED_FUNCTION_7_34();
  v59 = *MEMORY[0x277D85DE8];
  v54[0] = 0;
  v54[1] = 0;
  v52 = 0;
  v53 = 0;
  OUTLINED_FUNCTION_29_21();
  bzero(v51, v2);
  OUTLINED_FUNCTION_28_21();
  bzero(v58, v3);
  if (setjmp(v58) || ventproc(v0, v51, v57, v56, v55, v58))
  {
    goto LABEL_3;
  }

  v5 = OUTLINED_FUNCTION_32_19();
  get_parm(v5, v6, v7, -6);
  v8 = OUTLINED_FUNCTION_25_24();
  OUTLINED_FUNCTION_52_11(v8, v9);
  fence_35(v0, 0, &null_str_12);
  v10 = OUTLINED_FUNCTION_40_13();
  fence_35(v10, v11, v12);
  v13 = OUTLINED_FUNCTION_25_24();
  if (!is_nasalized_vowel(v13, v14))
  {
    lpta_rpta_loadp(v0, v54, &v52);
    v15 = OUTLINED_FUNCTION_0_39();
    if (!insert_2pt_s(v15, v16, v17, v18, v19))
    {
      goto LABEL_26;
    }
  }

  v20 = 0;
  while (2)
  {
    v21 = OUTLINED_FUNCTION_51_11();
    starttest(v21, v22);
    v23 = OUTLINED_FUNCTION_56_10();
    if (!lpta_loadp_setscan_l(v23, v24))
    {
      v43 = OUTLINED_FUNCTION_47_12();
      if (!testFldeq(v43, v44, v1, 2))
      {
        bspush_ca_scan_boa();
        v45 = OUTLINED_FUNCTION_47_12();
        if (!testFldeq(v45, v46, 0, 30))
        {
          v20 = 1;
        }
      }

      goto LABEL_12;
    }

LABEL_8:
    starttest(v0, 5);
    if (lpta_loadp_setscan_r(v0, &v52) || (OUTLINED_FUNCTION_46_12(), v25 = test_string_s(), v26 = v20, v25))
    {
LABEL_10:
      v27 = OUTLINED_FUNCTION_56_10();
      lpta_rpta_loadp(v27, v28, &v52);
      v29 = OUTLINED_FUNCTION_47_12();
      v31 = v1;
      v32 = &unk_2806BC36A;
    }

    else
    {
LABEL_24:
      v20 = v26;
      savescptr(v0, 6, &v52);
      *(v0 + 136) = v1;
      v47 = *(v0 + 1664);
      v48 = OUTLINED_FUNCTION_35_17();
      if (test_ptr(v48))
      {
        goto LABEL_12;
      }

      v49 = OUTLINED_FUNCTION_56_10();
      lpta_rpta_loadp(v49, v50, &v52);
      v29 = OUTLINED_FUNCTION_47_12();
      v31 = 2;
      v32 = &unk_2806BC399;
    }

    if (!insert_2pt_s(v29, v30, v31, v32, 0))
    {
LABEL_26:
      OUTLINED_FUNCTION_39_14(v53);
      break;
    }

LABEL_12:
    v33 = v20;
LABEL_13:
    v34 = *(v0 + 104);
    if (v34)
    {
      v35 = OUTLINED_FUNCTION_36_16(v34);
      v20 = v36;
    }

    else
    {
      v35 = vback(v0, v33);
      v20 = 0;
    }

    switch(v35)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_26;
      case 3:
        goto LABEL_8;
      case 4:
        bspop_boa(v0);
        v37 = advance_tok(v0);
        v33 = v20;
        if (!v37)
        {
          v38 = OUTLINED_FUNCTION_56_10();
          lpta_rpta_loadp(v38, v39, &v52);
          v40 = OUTLINED_FUNCTION_47_12();
          inserted = insert_2pt_s(v40, v41, v1, &unk_2806BC363, 0);
          v33 = v20;
          if (!inserted)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_13;
      case 5:
        goto LABEL_10;
      case 6:
        v26 = v20;
        goto LABEL_24;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_10();
}

uint64_t u_acute_rules()
{
  OUTLINED_FUNCTION_7_34();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v149, v152, v154, v156, v158, v160, v162);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v150, v153, *v155, v155[4], *v157, *&v157[4], v157[6], v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v161, v163))
  {
    v29 = OUTLINED_FUNCTION_8_34();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144);
    OUTLINED_FUNCTION_54_11(v40, v41, &null_str_12);
    v42 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v45, v46, v47, v48, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  v27 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_33_19();
}

uint64_t is_nasalized_vowel(void *a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v51 = 0;
  v52 = 0;
  OUTLINED_FUNCTION_29_21();
  bzero(v50, v4);
  OUTLINED_FUNCTION_28_21();
  bzero(v56, v5);
  if (setjmp(v56))
  {
    goto LABEL_3;
  }

  v6 = ventproc(a1, v50, v55, v54, v53, v56);
  if (v6)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_6_34(v6, v7, v8, v9, v10, v11, v12, v13, v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8], v50[9], v50[10], v50[11], v50[12], v50[13], v50[14], v50[15], v50[16], v50[17], v50[18], v50[19], v50[20], v50[21], v50[22], v51);
  v16 = 0;
  OUTLINED_FUNCTION_54_11(v17, v18, &null_str_12);
  fence_35(a1, 1, &unk_2806BC372);
  starttest(a1, 1);
  v19 = OUTLINED_FUNCTION_26_24();
  if (lpta_loadp_setscan_r(v19, v20) || (OUTLINED_FUNCTION_3_36(), v21 = test_string_s(), v22 = 0, v16 = 0, v21))
  {
LABEL_11:
    v23 = v16;
    v27 = OUTLINED_FUNCTION_20_26();
    starttest(v27, v28);
    v29 = OUTLINED_FUNCTION_24_25();
    if (lpta_loadp_setscan_r(v29, v30) || (OUTLINED_FUNCTION_3_36(), test_string_s()))
    {
LABEL_3:
      vretproc(a1);
      result = 94;
      goto LABEL_4;
    }

LABEL_13:
    v31 = OUTLINED_FUNCTION_30_20();
    savescptr(v31, v32, v33);
    OUTLINED_FUNCTION_22_25();
    bspush_ca_scan_boa();
    v34 = OUTLINED_FUNCTION_22_25();
    bspush_ca_scan(v34, v35);
  }

  else
  {
LABEL_9:
    v23 = v22;
    OUTLINED_FUNCTION_45_12();
    v24 = OUTLINED_FUNCTION_30_20();
    savescptr(v24, v25, v26);
    OUTLINED_FUNCTION_22_25();
    bspush_ca_scan_boa();
  }

  v36 = OUTLINED_FUNCTION_17_29();
  v39 = testFldeq(v36, v37, v38, 1);
  v40 = v23;
  v41 = v23;
  if (!v39)
  {
LABEL_15:
    v42 = v40;
    if (advance_tok(a1))
    {
      v41 = v42;
    }

    else
    {
      v41 = 1;
    }
  }

  v23 = v41;
  while (2)
  {
    v43 = a1[13];
    if (v43)
    {
      v44 = OUTLINED_FUNCTION_36_16(v43);
      v23 = v45;
    }

    else
    {
      v44 = vback(a1, v23);
      v23 = 0;
    }

    v40 = v23;
    switch(v44)
    {
      case 1:
        v16 = v23;
        goto LABEL_11;
      case 2:
        v22 = v23;
        goto LABEL_9;
      case 3:
      case 7:
        bspop_boa(a1);
        break;
      case 4:
        break;
      case 6:
        goto LABEL_13;
      case 8:
        v46 = OUTLINED_FUNCTION_21_26();
        v49 = testFldeq(v46, v47, v48, 16);
        v40 = v23;
        if (!v49)
        {
          goto LABEL_15;
        }

        continue;
      case 9:
        goto LABEL_15;
      default:
        goto LABEL_3;
    }

    break;
  }

  *(a2 + 8) = v52;
  vretproc(a1);
  result = 0;
LABEL_4:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, char a37, int a38, __int16 a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a9, &a44, &a40, &a37, &a46);
}

void OUTLINED_FUNCTION_2_37(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v36 - 56) = v35;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_5_35(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_6_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  get_parm(v32, &a32, v33, -6);
}

void OUTLINED_FUNCTION_14_31()
{

  get_parm(v0, v2, v1, -6);
}

void OUTLINED_FUNCTION_15_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  bzero(&a40, 0xC0uLL);
}

double OUTLINED_FUNCTION_27_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  *&result = savescptr(v32, 2, &a32).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_35_17()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void *OUTLINED_FUNCTION_38_15(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_35(v3, 1, a3);
}

uint64_t OUTLINED_FUNCTION_43_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, char a38)
{

  return lpta_rpta_loadp(v38, &a38, &a36);
}

uint64_t OUTLINED_FUNCTION_44_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, char a36)
{

  return lpta_rpta_loadp(v36, &a36, &a34);
}

void OUTLINED_FUNCTION_52_11(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_53_11()
{

  return vback(v0, 0);
}

void *OUTLINED_FUNCTION_54_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_35(v3, 0, a3);
}

void OUTLINED_FUNCTION_55_11()
{

  starttest(v0, v1);
}

uint64_t OUTLINED_FUNCTION_62_9(uint64_t *a1, unsigned __int8 a2, uint64_t a3)
{

  return insert_2pt_s(a1, a2, a3, v4, v3);
}

void *fence_36(uint64_t a1, int a2, uint64_t a3)
{
  *(*(a1 + 192) + 8121) = a2;
  result = memset(*(a1 + 264), *(a1 + 288), *(a1 + 288));
  for (i = 0; a2 != i; ++i)
  {
    v8 = *(a3 + i);
    *(*(a1 + 248) + i) = v8;
    *(*(a1 + 264) + v8) = i;
  }

  return result;
}

void por_non_phrasal_comma()
{
  OUTLINED_FUNCTION_44_13();
  v1 = v0;
  v50 = *MEMORY[0x277D85DE8];
  v44 = 0;
  v45 = 0;
  OUTLINED_FUNCTION_20_27();
  bzero(v43, v2);
  OUTLINED_FUNCTION_19_28();
  bzero(v49, v3);
  if (!setjmp(v49) && !ventproc(v1, v43, v48, v47, v46, v49))
  {
    v4 = OUTLINED_FUNCTION_29_22();
    OUTLINED_FUNCTION_46_13(v4, v5);
    fence_36(v1, 0, &null_str_13);
    v6 = OUTLINED_FUNCTION_13_34();
    starttest(v6, v7);
    v8 = OUTLINED_FUNCTION_29_22();
    if (!lpta_loadp_setscan_r(v8, v9))
    {
      v11 = OUTLINED_FUNCTION_65_9();
      bspush_ca_scan(v11, v12);
      v13 = OUTLINED_FUNCTION_58_11();
      if (testFldeq(v13, v14, 1, 1))
      {
        v15 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_65_9();
        bspush_ca_scan_boa();
        v16 = OUTLINED_FUNCTION_12_34();
        v15 = !testFldeq(v16, v17, 3, 23);
      }

      v18 = v15;
      while (2)
      {
        v19 = v1[13];
        if (v19)
        {
          v20 = OUTLINED_FUNCTION_21_27(v19);
          v22 = v21;
        }

        else
        {
          v20 = vback(v1, v18);
          v22 = 0;
        }

        switch(v20)
        {
          case 2:
            v23 = OUTLINED_FUNCTION_29_22();
            bspush_ca_scan(v23, v24);
            v25 = OUTLINED_FUNCTION_4_36();
            v28 = 4;
            goto LABEL_17;
          case 3:
            bspop_boa(v1);
            bspush_ca_scan_boa();
            v40 = OUTLINED_FUNCTION_4_36();
            if (testFldeq(v40, v41, v42, 28))
            {
              v18 = v22;
            }

            else
            {
              v18 = 1;
            }

            continue;
          case 4:
            bspop_boa(v1);
            goto LABEL_18;
          case 5:
            goto LABEL_18;
          case 6:
            v29 = OUTLINED_FUNCTION_25_25();
            bspush_ca_scan(v29, v30);
            v25 = OUTLINED_FUNCTION_4_36();
            v28 = 5;
            goto LABEL_17;
          case 7:
            v25 = OUTLINED_FUNCTION_4_36();
            v28 = 6;
LABEL_17:
            v31 = testFldeq(v25, v26, v27, v28);
            v18 = v22;
            if (v31)
            {
              continue;
            }

LABEL_18:
            v32 = advance_tok(v1);
            v18 = v22;
            if (v32)
            {
              continue;
            }

LABEL_19:
            v33 = OUTLINED_FUNCTION_24_26();
            v35 = test_synch(v33, v34, 1u, &_MergedGlobals_33);
            v18 = v22;
            if (v35)
            {
              continue;
            }

LABEL_20:
            v36 = OUTLINED_FUNCTION_28_22();
            v38 = chstream(v36, v37, 1u);
            v18 = v22;
            if (v38)
            {
              continue;
            }

            OUTLINED_FUNCTION_36_17();
            v39 = test_string_s();
            v18 = v22;
            if (v39)
            {
              continue;
            }

LABEL_26:
            OUTLINED_FUNCTION_34_19();
            OUTLINED_FUNCTION_6_35();
            delete_1pt();
            break;
          case 8:
            goto LABEL_19;
          case 9:
            goto LABEL_20;
          case 10:
            goto LABEL_26;
          default:
            goto LABEL_4;
        }

        break;
      }
    }
  }

LABEL_4:
  vretproc(v1);
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_43_13();
}

uint64_t por_post_comma_phrase()
{
  OUTLINED_FUNCTION_15_32();
  v91 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_34(v1, v2, v3, v4, v5, v6, v7, v8, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84);
  OUTLINED_FUNCTION_19_28();
  bzero(v90, v9);
  v10 = setjmp(v90);
  if (!v10 && !OUTLINED_FUNCTION_54_12(v10, v11, v12, v13, v14, v15, v16, v17, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, *v86, v86[4], *v87, *&v87[4], v87[6], v88, SWORD2(v88), SBYTE6(v88), SHIBYTE(v88), v89, v90[0]))
  {
    v21 = OUTLINED_FUNCTION_10_35();
    get_parm(v21, v22, v23, -6);
    v24 = OUTLINED_FUNCTION_29_22();
    OUTLINED_FUNCTION_46_13(v24, v25);
    v18 = 0;
    v26 = OUTLINED_FUNCTION_26_25();
    fence_36(v26, v27, v28);
    OUTLINED_FUNCTION_10_35();
    tag_phrase();
    if (!v29)
    {
      goto LABEL_4;
    }

    OUTLINED_FUNCTION_49_12();
    vocative_phrase();
    if (!v30 || (said_phrase(), !v31))
    {
      v18 = 0;
      goto LABEL_4;
    }
  }

  v18 = 94;
LABEL_4:
  vretproc(v0);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void tag_phrase()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_15_32();
  v93 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_56_11();
  OUTLINED_FUNCTION_11_34(v1, v2, v3, v4, v5, v6, v7, v8, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90[0], v90[1], v91[0], v91[1]);
  OUTLINED_FUNCTION_19_28();
  bzero(v92, v9);
  if (!setjmp(v92))
  {
    OUTLINED_FUNCTION_52_12();
    if (!ventproc(v0, v10, v11, v12, v13, v92))
    {
      v15 = OUTLINED_FUNCTION_10_35();
      get_parm(v15, v16, v17, -6);
      v18 = OUTLINED_FUNCTION_23_26();
      get_parm(v18, v19, v20, -6);
      v21 = OUTLINED_FUNCTION_30_21();
      push_ptr_init(v21, v22);
      push_ptr_init(v0, v90);
      v23 = 0;
      v24 = OUTLINED_FUNCTION_26_25();
      fence_36(v24, v25, v26);
      v27 = OUTLINED_FUNCTION_5_36();
      if (!lpta_loadp_setscan_r(v27, v28))
      {
        if (!advance_tok(v0))
        {
          OUTLINED_FUNCTION_34_19();
          v29 = OUTLINED_FUNCTION_6_35();
          if (!test_ptr(v29))
          {
            v60 = OUTLINED_FUNCTION_13_34();
            starttest_l(v60, v61);
            OUTLINED_FUNCTION_8_35();
            bspush_ca_boa();
            v62 = OUTLINED_FUNCTION_45_13();
            lpta_rpta_loadp(v62, v63, v64);
            v65 = OUTLINED_FUNCTION_36_17();
            v40 = !setd_lookup(v65, v66, 45);
            goto LABEL_15;
          }
        }

        v23 = 0;
      }

      while (2)
      {
        v30 = OUTLINED_FUNCTION_16_31();
        if (lpta_loadp_setscan_r(v30, v31))
        {
          break;
        }

        if (advance_tok(v0))
        {
          break;
        }

        if (advance_tok(v0))
        {
          break;
        }

        OUTLINED_FUNCTION_34_19();
        v32 = OUTLINED_FUNCTION_6_35();
        if (test_ptr(v32))
        {
          break;
        }

        v33 = OUTLINED_FUNCTION_13_34();
        starttest_l(v33, v34);
        OUTLINED_FUNCTION_13_34();
        bspush_ca_boa();
        v35 = OUTLINED_FUNCTION_45_13();
        lpta_rpta_loadp(v35, v36, v37);
        v38 = OUTLINED_FUNCTION_36_17();
        v40 = !setd_lookup(v38, v39, 46) || v23;
LABEL_15:
        v41 = v40;
LABEL_16:
        v42 = *(v0 + 104);
        if (v42)
        {
          v43 = OUTLINED_FUNCTION_21_27(v42);
          v45 = v44;
        }

        else
        {
          v43 = vback(v0, v41);
          v45 = 0;
        }

        switch(v43)
        {
          case 1:
            v23 = v45;
            continue;
          case 2:
          case 4:
          case 6:
            *(v0 + 3190) = *(v0 + 3198);
            OUTLINED_FUNCTION_37_17();
            adjust_prev_phr_pause();
            goto LABEL_21;
          case 3:
          case 7:
            bspop_boa(v0);
            goto LABEL_3;
          case 8:
LABEL_21:
            v46 = OUTLINED_FUNCTION_29_22();
            starttest(v46, v47);
            v48 = OUTLINED_FUNCTION_37_17();
            if (!lpta_loadp_setscan_l(v48, v49) && !advanc(v0))
            {
              goto LABEL_23;
            }

            goto LABEL_3;
          case 10:
LABEL_23:
            v50 = OUTLINED_FUNCTION_18_29();
            savescptr(v50, v51, v90);
            v52 = advance_tok(v0);
            v41 = v45;
            if (!v52)
            {
              goto LABEL_24;
            }

            goto LABEL_16;
          case 11:
LABEL_24:
            v53 = OUTLINED_FUNCTION_24_26();
            savescptr(v53, v54, v91);
            v55 = OUTLINED_FUNCTION_28_22();
            lpta_rpta_loadp(v55, v56, v90);
            OUTLINED_FUNCTION_47_13();
            v57 = mark_s();
            v41 = v45;
            if (!v57)
            {
              OUTLINED_FUNCTION_47_13();
              v58 = mark_s();
              v41 = v45;
              if (!v58)
              {
                OUTLINED_FUNCTION_47_13();
                v59 = mark_s();
                v41 = v45;
                if (!v59)
                {
                  goto LABEL_3;
                }
              }
            }

            goto LABEL_16;
          default:
            goto LABEL_3;
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_43_13();
}

void vocative_phrase()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_15_32();
  v86 = *MEMORY[0x277D85DE8];
  v80 = 0;
  v81 = 0;
  OUTLINED_FUNCTION_35_18();
  OUTLINED_FUNCTION_20_27();
  bzero(v76, v1);
  OUTLINED_FUNCTION_19_28();
  bzero(v85, v2);
  if (!setjmp(v85) && !ventproc(v0, v76, v84, v83, v82, v85))
  {
    v4 = OUTLINED_FUNCTION_10_35();
    get_parm(v4, v5, v6, -6);
    v7 = OUTLINED_FUNCTION_23_26();
    get_parm(v7, v8, v9, -6);
    v10 = OUTLINED_FUNCTION_42_13();
    push_ptr_init(v10, v11);
    push_ptr_init(v0, v78);
    push_ptr_init(v0, v77);
    v12 = 0;
    v13 = OUTLINED_FUNCTION_26_25();
    fence_36(v13, v14, v15);
    v16 = OUTLINED_FUNCTION_13_34();
    starttest(v16, v17);
    v18 = OUTLINED_FUNCTION_5_36();
    v20 = 0;
    if (lpta_loadp_setscan_l(v18, v19))
    {
LABEL_5:
      v21 = OUTLINED_FUNCTION_16_31();
      if (lpta_loadp_setscan_r(v21, v22) || advance_tok(v0) || (OUTLINED_FUNCTION_34_19(), v23 = OUTLINED_FUNCTION_6_35(), test_ptr(v23)))
      {
LABEL_38:
        v68 = OUTLINED_FUNCTION_16_31();
        if (lpta_loadp_setscan_r(v68, v69))
        {
          goto LABEL_3;
        }

        if (advance_tok(v0))
        {
          goto LABEL_3;
        }

        if (advance_tok(v0))
        {
          goto LABEL_3;
        }

        OUTLINED_FUNCTION_34_19();
        v70 = OUTLINED_FUNCTION_6_35();
        if (test_ptr(v70))
        {
          goto LABEL_3;
        }

        v71 = OUTLINED_FUNCTION_13_34();
        starttest_l(v71, v72);
        OUTLINED_FUNCTION_13_34();
        bspush_ca_boa();
        v73 = OUTLINED_FUNCTION_70_9();
        lpta_rpta_loadp(v73, v74, v75);
        v29 = OUTLINED_FUNCTION_36_17();
        v31 = 48;
      }

      else
      {
        v24 = OUTLINED_FUNCTION_13_34();
        starttest_l(v24, v25);
        OUTLINED_FUNCTION_13_34();
        bspush_ca_boa();
        v26 = OUTLINED_FUNCTION_70_9();
        lpta_rpta_loadp(v26, v27, v28);
        v29 = OUTLINED_FUNCTION_36_17();
        v31 = 47;
      }

      v34 = setd_lookup(v29, v30, v31);
    }

    else
    {
LABEL_9:
      savescptr(v0, 2, v79);
      OUTLINED_FUNCTION_50_12();
      bspush_ca_scan_boa();
      v32 = OUTLINED_FUNCTION_58_11();
      v34 = testFldeq(v32, v33, 3, 37);
      v20 = v12;
    }

    if (v34)
    {
      v45 = v20;
    }

    else
    {
      v45 = 1;
    }

    while (2)
    {
      v35 = *(v0 + 104);
      if (v35)
      {
        v36 = OUTLINED_FUNCTION_21_27(v35);
        v12 = v37;
      }

      else
      {
        v36 = vback(v0, v45);
        v12 = 0;
      }

      switch(v36)
      {
        case 1:
          v20 = v12;
          goto LABEL_5;
        case 2:
          goto LABEL_9;
        case 3:
          bspop_boa(v0);
          OUTLINED_FUNCTION_57_11();
          bspush_ca_scan_boa();
          v53 = OUTLINED_FUNCTION_4_36();
          v56 = testFldeq(v53, v54, v55, 12);
          goto LABEL_26;
        case 4:
          bspop_boa(v0);
          v57 = advance_tok(v0);
          v45 = v12;
          if (v57)
          {
            continue;
          }

          OUTLINED_FUNCTION_41_13();
          bspush_ca_scan_boa();
          goto LABEL_25;
        case 5:
          bspop_boa(v0);
          v60 = lpta_loadp_setscan_r(v0, v79);
          v45 = v12;
          if (v60)
          {
            continue;
          }

          v61 = OUTLINED_FUNCTION_4_36();
          v64 = testFldeq(v61, v62, v63, 12);
          v45 = v12;
          if (v64)
          {
            continue;
          }

          v65 = advance_tok(v0);
          v45 = v12;
          if (v65)
          {
            continue;
          }

          OUTLINED_FUNCTION_34_19();
          v66 = OUTLINED_FUNCTION_6_35();
          v67 = test_ptr(v66);
          v45 = v12;
          if (v67)
          {
            continue;
          }

          goto LABEL_14;
        case 6:
LABEL_25:
          v58 = OUTLINED_FUNCTION_28_22();
          v56 = test_synch(v58, v59, 1u, &_MergedGlobals_33);
LABEL_26:
          if (v56)
          {
            v45 = v12;
          }

          else
          {
            v45 = 1;
          }

          continue;
        case 7:
        case 9:
        case 12:
LABEL_14:
          *(v0 + 3190) = *(v0 + 3202);
          OUTLINED_FUNCTION_68_9();
          adjust_prev_phr_pause();
          goto LABEL_15;
        case 8:
          v20 = v12;
          goto LABEL_38;
        case 10:
        case 13:
          bspop_boa(v0);
          goto LABEL_3;
        case 14:
LABEL_15:
          v38 = OUTLINED_FUNCTION_40_14();
          starttest(v38, v39);
          v40 = OUTLINED_FUNCTION_68_9();
          if (!lpta_loadp_setscan_l(v40, v41) && !advanc(v0))
          {
            goto LABEL_17;
          }

          goto LABEL_3;
        case 16:
LABEL_17:
          v42 = OUTLINED_FUNCTION_24_26();
          savescptr(v42, v43, v77);
          v44 = advance_tok(v0);
          v45 = v12;
          if (!v44)
          {
            goto LABEL_18;
          }

          continue;
        case 17:
LABEL_18:
          v46 = OUTLINED_FUNCTION_37_17();
          savescptr(v46, v47, v78);
          v48 = OUTLINED_FUNCTION_27_23();
          lpta_rpta_loadp(v48, v49, v77);
          OUTLINED_FUNCTION_67_9();
          v50 = mark_s();
          v45 = v12;
          if (!v50)
          {
            OUTLINED_FUNCTION_67_9();
            v51 = mark_s();
            v45 = v12;
            if (!v51)
            {
              OUTLINED_FUNCTION_67_9();
              v52 = mark_s();
              v45 = v12;
              if (!v52)
              {
                goto LABEL_3;
              }
            }
          }

          continue;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_43_13();
}

void por_said_phrase()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_9_35();
  v83 = *MEMORY[0x277D85DE8];
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
  HIDWORD(v67) = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  OUTLINED_FUNCTION_56_11();
  OUTLINED_FUNCTION_20_27();
  bzero(v60, v1);
  OUTLINED_FUNCTION_19_28();
  bzero(v82, v2);
  v3 = setjmp(v82);
  if (!v3)
  {
    v10 = OUTLINED_FUNCTION_61_11(v3, v60, v4, v5, v6, v7, v8, v9, v56, v57, v58, v59, v60[0], v60[1], v60[2], v60[3], v60[4], v60[5], v60[6], v60[7], v60[8], v60[9], v60[10], v60[11], v60[12], v60[13], v60[14], v60[15], v60[16], v60[17], v60[18], v60[19], v60[20], v60[21], v60[22], v61[0], v61[1], v62[0], v62[1], v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82[0]);
    if (!v10)
    {
      OUTLINED_FUNCTION_39_15(v10, &v70);
      OUTLINED_FUNCTION_22_26(v12, &v68);
      v13 = OUTLINED_FUNCTION_23_26();
      get_parm(v13, v14, v15, -4);
      push_ptr_init(v0, &v65);
      push_ptr_init(v0, &v63);
      push_ptr_init(v0, v62);
      push_ptr_init(v0, v61);
      fence_36(v0, 0, &null_str_13);
      v16 = OUTLINED_FUNCTION_58_11();
      fence_36(v16, v17, v18);
      if (*(v0 + 2546) != HIWORD(v67) || (lpta_loadpn(v0, &v68), rpta_loadpn(v0, v0 + 1432), compare_ptas(v0)) || testneq(v0))
      {
        while (2)
        {
          v19 = OUTLINED_FUNCTION_18_29();
          starttest(v19, v20);
          if (lpta_loadp_setscan_r(v0, &v70))
          {
            break;
          }

          v21 = OUTLINED_FUNCTION_3_37();
          if (!testFldeq(v21, v22, v23, 2))
          {
            bspush_ca_scan(v0, 4);
            v24 = OUTLINED_FUNCTION_12_34();
            v26 = 11;
LABEL_10:
            if (!testFldeq(v24, v25, 3, v26))
            {
LABEL_11:
              if (!advance_tok(v0) && !advanc(v0))
              {
LABEL_13:
                v27 = OUTLINED_FUNCTION_57_11();
                savescptr(v27, v28, &v65);
                v29 = OUTLINED_FUNCTION_40_14();
                bspush_ca_scan(v29, v30);
                v31 = OUTLINED_FUNCTION_3_37();
                v34 = 5;
LABEL_14:
                if (!testFldeq(v31, v32, v33, v34))
                {
LABEL_15:
                  if (!advance_tok(v0))
                  {
LABEL_16:
                    v35 = OUTLINED_FUNCTION_41_13();
                    savescptr(v35, v36, &v63);
                    *(v0 + 136) = 1;
                    v37 = OUTLINED_FUNCTION_6_35();
                    if (!test_ptr(v37))
                    {
LABEL_17:
                      if (is_quotative_verb())
                      {
LABEL_18:
                        if (*(v0 + 2590) != HIWORD(v67) || is_exclam_verb())
                        {
                          break;
                        }
                      }

LABEL_20:
                      v38 = OUTLINED_FUNCTION_31_21();
                      fence_36(v38, v39, &null_str_13);
                      v40 = OUTLINED_FUNCTION_25_25();
                      starttest(v40, v41);
                      if (lpta_loadp_setscan_l(v0, &v70))
                      {
                        break;
                      }

LABEL_21:
                      v42 = OUTLINED_FUNCTION_24_26();
                      savescptr(v42, v43, v61);
                      if (!advanc(v0))
                      {
                        v44 = OUTLINED_FUNCTION_47_13();
                        if (!testFldeq(v44, v45, 1, 1) && !advance_tok(v0))
                        {
LABEL_24:
                          v46 = OUTLINED_FUNCTION_69_9();
                          savescptr(v46, v47, v62);
                          v48 = OUTLINED_FUNCTION_27_23();
                          lpta_rpta_loadp(v48, v49, v61);
                          OUTLINED_FUNCTION_47_13();
                          if (!mark_s())
                          {
                            break;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v50 = *(v0 + 104);
          if (v50)
          {
            v51 = OUTLINED_FUNCTION_21_27(v50);
          }

          else
          {
            v52 = OUTLINED_FUNCTION_31_21();
            v51 = vback(v52, v53);
          }

          switch(v51)
          {
            case 1:
              continue;
            case 2:
              goto LABEL_17;
            case 4:
              v54 = OUTLINED_FUNCTION_28_22();
              bspush_ca_scan(v54, v55);
              v24 = OUTLINED_FUNCTION_12_34();
              v26 = 10;
              goto LABEL_10;
            case 5:
              goto LABEL_11;
            case 6:
              v24 = OUTLINED_FUNCTION_12_34();
              v26 = 12;
              goto LABEL_10;
            case 7:
              goto LABEL_13;
            case 8:
              v31 = OUTLINED_FUNCTION_12_34();
              v33 = 1;
              v34 = 11;
              goto LABEL_14;
            case 9:
              goto LABEL_15;
            case 10:
              goto LABEL_16;
            case 11:
              goto LABEL_18;
            case 12:
              goto LABEL_20;
            case 15:
              goto LABEL_21;
            case 16:
              goto LABEL_24;
            default:
              goto LABEL_3;
          }
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_43_13();
}

uint64_t is_quotative_verb()
{
  OUTLINED_FUNCTION_15_32();
  v77 = *MEMORY[0x277D85DE8];
  v75[4] = 0;
  v75[5] = 0;
  OUTLINED_FUNCTION_11_34(v1, v2, v3, v4, v5, v6, v7, v8, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75[0], v75[1], v75[2], v75[3]);
  OUTLINED_FUNCTION_19_28();
  bzero(v76, v9);
  if (setjmp(v76))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_53_12();
  if (OUTLINED_FUNCTION_73_9(v10, v11, v12, v13, v14))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_10_35();
  get_parm(v18, v19, v20, -6);
  v21 = OUTLINED_FUNCTION_23_26();
  get_parm(v21, v22, v23, -6);
  push_ptr_init(v0, v75);
  fence_36(v0, 0, &null_str_13);
  v24 = OUTLINED_FUNCTION_58_11();
  fence_36(v24, v25, v26);
  v27 = OUTLINED_FUNCTION_65_9();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_5_36();
  if (lpta_loadp_setscan_r(v29, v30))
  {
LABEL_9:
    v34 = OUTLINED_FUNCTION_8_35();
    starttest(v34, v35);
    v36 = OUTLINED_FUNCTION_30_21();
    if (lpta_loadp_setscan_l(v36, v37))
    {
LABEL_3:
      v15 = 94;
      goto LABEL_4;
    }

LABEL_10:
    if (!advance_tok(v0))
    {
      v38 = OUTLINED_FUNCTION_13_34();
      bspush_ca_scan(v38, v39);
LABEL_12:
      v40 = OUTLINED_FUNCTION_49_12();
      savescptr(v40, v41, v42);
      if (!advance_tok(v0) && !advance_tok(v0) && !advance_tok(v0))
      {
        v43 = OUTLINED_FUNCTION_49_12();
        lpta_rpta_loadp(v43, v44, v45);
        v46 = OUTLINED_FUNCTION_36_17();
        if (!setd_lookup(v46, v47, 43))
        {
LABEL_8:
          v15 = 0;
          goto LABEL_4;
        }
      }
    }
  }

  else
  {
    v31 = OUTLINED_FUNCTION_4_36();
    if (!testFldeq(v31, v32, v33, 21) && !advance_tok(v0))
    {
      goto LABEL_8;
    }
  }

  v48 = *(v0 + 104);
  if (v48)
  {
    v49 = OUTLINED_FUNCTION_21_27(v48);
  }

  else
  {
    v50 = OUTLINED_FUNCTION_31_21();
    v49 = vback(v50, v51);
  }

  v15 = 0;
  switch(v49)
  {
    case 1:
      goto LABEL_9;
    case 2:
      break;
    case 4:
      goto LABEL_10;
    case 5:
      goto LABEL_12;
    default:
      goto LABEL_3;
  }

LABEL_4:
  vretproc(v0);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t is_exclam_verb()
{
  OUTLINED_FUNCTION_15_32();
  v77 = *MEMORY[0x277D85DE8];
  v75[4] = 0;
  v75[5] = 0;
  OUTLINED_FUNCTION_11_34(v1, v2, v3, v4, v5, v6, v7, v8, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75[0], v75[1], v75[2], v75[3]);
  OUTLINED_FUNCTION_19_28();
  bzero(v76, v9);
  if (setjmp(v76))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_53_12();
  if (OUTLINED_FUNCTION_73_9(v10, v11, v12, v13, v14))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_10_35();
  get_parm(v18, v19, v20, -6);
  v21 = OUTLINED_FUNCTION_23_26();
  get_parm(v21, v22, v23, -6);
  push_ptr_init(v0, v75);
  fence_36(v0, 0, &null_str_13);
  v24 = OUTLINED_FUNCTION_58_11();
  fence_36(v24, v25, v26);
  v27 = OUTLINED_FUNCTION_65_9();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_5_36();
  if (lpta_loadp_setscan_r(v29, v30))
  {
LABEL_9:
    v34 = OUTLINED_FUNCTION_8_35();
    starttest(v34, v35);
    v36 = OUTLINED_FUNCTION_30_21();
    if (lpta_loadp_setscan_l(v36, v37))
    {
LABEL_3:
      v15 = 94;
      goto LABEL_4;
    }

LABEL_10:
    if (!advance_tok(v0))
    {
      v38 = OUTLINED_FUNCTION_13_34();
      bspush_ca_scan(v38, v39);
LABEL_12:
      v40 = OUTLINED_FUNCTION_49_12();
      savescptr(v40, v41, v42);
      if (!advance_tok(v0) && !advance_tok(v0) && !advance_tok(v0))
      {
        v43 = OUTLINED_FUNCTION_49_12();
        lpta_rpta_loadp(v43, v44, v45);
        v46 = OUTLINED_FUNCTION_36_17();
        if (!setd_lookup(v46, v47, 44))
        {
LABEL_8:
          v15 = 0;
          goto LABEL_4;
        }
      }
    }
  }

  else
  {
    v31 = OUTLINED_FUNCTION_4_36();
    if (!testFldeq(v31, v32, v33, 22) && !advance_tok(v0))
    {
      goto LABEL_8;
    }
  }

  v48 = *(v0 + 104);
  if (v48)
  {
    v49 = OUTLINED_FUNCTION_21_27(v48);
  }

  else
  {
    v50 = OUTLINED_FUNCTION_31_21();
    v49 = vback(v50, v51);
  }

  v15 = 0;
  switch(v49)
  {
    case 1:
      goto LABEL_9;
    case 2:
      break;
    case 4:
      goto LABEL_10;
    case 5:
      goto LABEL_12;
    default:
      goto LABEL_3;
  }

LABEL_4:
  vretproc(v0);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t find_por_obligatory_phrase()
{
  OUTLINED_FUNCTION_9_35();
  v189 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_56_11();
  v186 = 0;
  v185[0] = 0;
  v185[1] = 0;
  OUTLINED_FUNCTION_20_27();
  bzero(&v162, v2);
  OUTLINED_FUNCTION_19_28();
  bzero(v188, v3);
  if (setjmp(v188))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_52_12();
  if (OUTLINED_FUNCTION_73_9(v4, v5, v6, v7, v8))
  {
    goto LABEL_3;
  }

  v11 = OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_51_12(v11, v12);
  OUTLINED_FUNCTION_22_26(v13, v187);
  v14 = OUTLINED_FUNCTION_23_26();
  get_parm(v14, v15, v16, -4);
  push_ptr_init(v0, v185);
  v17 = 0;
  v18 = OUTLINED_FUNCTION_26_25();
  fence_36(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_13_34();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_27_23();
  if (!lpta_loadp_setscan_r(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_2_38();
    if (testFldeq(v25, v26, v27, 5) || advance_tok(v0))
    {
      v17 = 0;
    }

    else
    {
      v28 = OUTLINED_FUNCTION_13_34();
      bspush_ca_scan(v28, v29);
      v30 = 0;
LABEL_10:
      v17 = v30;
      v31 = OUTLINED_FUNCTION_8_35();
      if (!test_synch(v31, v32, 1u, v33))
      {
LABEL_82:
        HIWORD(v186) = 1;
        OUTLINED_FUNCTION_66_9(1);
        goto LABEL_4;
      }
    }

LABEL_80:
    v43 = v17;
    while (2)
    {
      v34 = v0[13];
      if (v34)
      {
        v35 = OUTLINED_FUNCTION_21_27(v34);
        v37 = v36;
      }

      else
      {
        v35 = vback(v0, v43);
        v37 = 0;
      }

      v30 = v37;
      v17 = v37;
      v38 = v37;
      switch(v35)
      {
        case 1:
          v17 = v37;
          break;
        case 2:
          v39 = OUTLINED_FUNCTION_2_38();
          v42 = testFldeq(v39, v40, v41, 10);
          v43 = v37;
          if (!v42)
          {
            v44 = advance_tok(v0);
            v30 = v37;
            v43 = v37;
            if (!v44)
            {
              goto LABEL_10;
            }
          }

          continue;
        case 3:
          goto LABEL_10;
        case 4:
          goto LABEL_82;
        case 5:
          goto LABEL_57;
        case 6:
          v17 = v37;
          goto LABEL_66;
        case 7:
          v100 = OUTLINED_FUNCTION_50_12();
          bspush_ca_scan(v100, v101);
          OUTLINED_FUNCTION_13_34();
          bspush_ca_scan_boa();
          v45 = OUTLINED_FUNCTION_2_38();
          v48 = 9;
          goto LABEL_45;
        case 8:
          goto LABEL_69;
        case 9:
          v88 = OUTLINED_FUNCTION_13_34();
          bspush_ca_scan(v88, v89);
          v90 = OUTLINED_FUNCTION_4_36();
          v93 = 3;
          goto LABEL_50;
        case 10:
          bspop_boa(v0);
          v90 = OUTLINED_FUNCTION_1_38();
          goto LABEL_50;
        case 11:
          goto LABEL_51;
        case 12:
          v94 = OUTLINED_FUNCTION_13_34();
          bspush_ca_scan(v94, v95);
          v90 = OUTLINED_FUNCTION_3_37();
          v93 = 2;
          goto LABEL_50;
        case 13:
          v90 = OUTLINED_FUNCTION_4_36();
          v93 = 37;
LABEL_50:
          v102 = testFldeq(v90, v91, v92, v93);
          v43 = v37;
          if (v102)
          {
            continue;
          }

LABEL_51:
          v103 = advance_tok(v0);
          v17 = v37;
          v43 = v37;
          if (!v103)
          {
            goto LABEL_69;
          }

          continue;
        case 14:
          bspop_boa(v0);
          goto LABEL_82;
        case 15:
          v96 = OUTLINED_FUNCTION_2_38();
          v99 = testFldeq(v96, v97, v98, 9);
          v38 = v37;
          v43 = v37;
          if (!v99)
          {
            goto LABEL_74;
          }

          continue;
        case 16:
          goto LABEL_74;
        case 17:
          goto LABEL_58;
        case 18:
          v17 = v37;
          goto LABEL_75;
        case 19:
          v62 = OUTLINED_FUNCTION_2_38();
          v65 = testFldeq(v62, v63, v64, 3);
          v43 = v37;
          if (v65)
          {
            continue;
          }

          v66 = OUTLINED_FUNCTION_3_37();
          v69 = testFldeq(v66, v67, v68, 5);
          v43 = v37;
          if (v69)
          {
            continue;
          }

          goto LABEL_29;
        case 20:
          bspop_boa(v0);
LABEL_29:
          v70 = advance_tok(v0);
          v43 = v37;
          if (!v70)
          {
            goto LABEL_30;
          }

          continue;
        case 21:
LABEL_30:
          v71 = OUTLINED_FUNCTION_16_31();
          v73 = lpta_loadp_setscan_l(v71, v72);
          v43 = v37;
          if (v73)
          {
            continue;
          }

          v74 = OUTLINED_FUNCTION_0_40();
          v78 = testFldeq(v74, v75, v76, v77);
          v43 = v37;
          if (v78)
          {
            continue;
          }

          OUTLINED_FUNCTION_13_34();
          bspush_ca_scan_boa();
          v45 = OUTLINED_FUNCTION_4_36();
          v48 = 5;
          goto LABEL_45;
        case 22:
          bspop_boa(v0);
          v79 = advance_tok(v0);
          v43 = v37;
          if (v79)
          {
            continue;
          }

          v80 = OUTLINED_FUNCTION_13_34();
          bspush_ca_scan(v80, v81);
          v82 = OUTLINED_FUNCTION_1_38();
          v86 = testFldeq(v82, v83, v84, v85);
          v43 = v37;
          if (v86)
          {
            continue;
          }

          v87 = advance_tok(v0);
          v43 = v37;
          if (v87)
          {
            continue;
          }

          v53 = OUTLINED_FUNCTION_2_38();
          v56 = 9;
          goto LABEL_22;
        case 23:
          v49 = OUTLINED_FUNCTION_2_38();
          v52 = testFldeq(v49, v50, v51, 9);
          v43 = v37;
          if (v52)
          {
            continue;
          }

          v53 = OUTLINED_FUNCTION_1_38();
LABEL_22:
          v57 = testFldeq(v53, v54, v55, v56);
          v43 = v37;
          if (!v57)
          {
            v58 = advance_tok(v0);
            v43 = v37;
            if (!v58)
            {
              goto LABEL_24;
            }
          }

          continue;
        case 24:
LABEL_24:
          OUTLINED_FUNCTION_34_19();
          v59 = v0[154];
          v60 = OUTLINED_FUNCTION_6_35();
          v61 = test_ptr(v60);
          goto LABEL_34;
        case 26:
          v17 = v37;
          goto LABEL_59;
        case 27:
          bspop_boa(v0);
          OUTLINED_FUNCTION_13_34();
          bspush_ca_scan_boa();
          v45 = OUTLINED_FUNCTION_4_36();
          v48 = 16;
LABEL_45:
          if (testFldeq(v45, v46, v47, v48))
          {
            v43 = v37;
          }

          else
          {
            v43 = 1;
          }

          continue;
        case 28:
          bspop_boa(v0);
          v61 = advance_tok(v0);
LABEL_34:
          v43 = v37;
          if (!v61)
          {
            goto LABEL_82;
          }

          continue;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  v37 = v17;
  v104 = OUTLINED_FUNCTION_13_34();
  starttest(v104, v105);
  v106 = OUTLINED_FUNCTION_16_31();
  if (!lpta_loadp_setscan_l(v106, v107))
  {
LABEL_66:
    OUTLINED_FUNCTION_62_10(6, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185[0]);
    v134 = OUTLINED_FUNCTION_0_40();
    if (testFldeq(v134, v135, v136, v137) || advance_tok(v0))
    {
      goto LABEL_80;
    }

    v138 = OUTLINED_FUNCTION_13_34();
    bspush_ca_scan(v138, v139);
LABEL_69:
    v140 = OUTLINED_FUNCTION_4_36();
    if (testFldeq(v140, v141, v142, 28))
    {
      goto LABEL_80;
    }

    if (advance_tok(v0))
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_34_19();
    v143 = v0[154];
    v144 = OUTLINED_FUNCTION_6_35();
    if (test_ptr(v144))
    {
      goto LABEL_80;
    }

    v145 = OUTLINED_FUNCTION_16_31();
    if (lpta_loadp_setscan_r(v145, v146))
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_13_34();
    bspush_ca_scan_boa();
    v147 = OUTLINED_FUNCTION_13_34();
    bspush_ca_scan(v147, v148);
    v149 = OUTLINED_FUNCTION_0_40();
    v153 = testFldeq(v149, v150, v151, v152);
    v38 = v17;
    if (v153)
    {
      goto LABEL_80;
    }

LABEL_74:
    v17 = v38;
    v154 = advance_tok(v0);
LABEL_78:
    if (!v154)
    {
      v17 = 1;
    }

    goto LABEL_80;
  }

LABEL_57:
  v108 = OUTLINED_FUNCTION_13_34();
  starttest(v108, v109);
  v110 = OUTLINED_FUNCTION_16_31();
  v17 = v37;
  if (!lpta_loadp_setscan_r(v110, v111))
  {
LABEL_75:
    OUTLINED_FUNCTION_62_10(18, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185[0]);
    v155 = OUTLINED_FUNCTION_13_34();
    bspush_ca_scan(v155, v156);
    v157 = OUTLINED_FUNCTION_1_38();
    if (testFldeq(v157, v158, v159, v160))
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_13_34();
    bspush_ca_scan_boa();
    v130 = OUTLINED_FUNCTION_2_38();
    v133 = 9;
LABEL_77:
    v154 = testFldeq(v130, v131, v132, v133);
    goto LABEL_78;
  }

LABEL_58:
  v112 = OUTLINED_FUNCTION_13_34();
  starttest(v112, v113);
  v114 = OUTLINED_FUNCTION_16_31();
  v17 = v37;
  if (!lpta_loadp_setscan_l(v114, v115))
  {
LABEL_59:
    OUTLINED_FUNCTION_62_10(26, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185[0]);
    v116 = OUTLINED_FUNCTION_2_38();
    if (testFldeq(v116, v117, v118, 3))
    {
      goto LABEL_80;
    }

    v119 = OUTLINED_FUNCTION_3_37();
    if (testFldeq(v119, v120, v121, 5))
    {
      goto LABEL_80;
    }

    if (advance_tok(v0))
    {
      goto LABEL_80;
    }

    v122 = OUTLINED_FUNCTION_16_31();
    if (lpta_loadp_setscan_r(v122, v123))
    {
      goto LABEL_80;
    }

    v124 = OUTLINED_FUNCTION_2_38();
    if (testFldeq(v124, v125, v126, 3))
    {
      goto LABEL_80;
    }

    v127 = OUTLINED_FUNCTION_3_37();
    if (testFldeq(v127, v128, v129, 5))
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_13_34();
    bspush_ca_scan_boa();
    v130 = OUTLINED_FUNCTION_4_36();
    v133 = 19;
    goto LABEL_77;
  }

LABEL_3:
  v1 = 94;
LABEL_4:
  vretproc(v0);
  v9 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t find_por_potential_phrase()
{
  OUTLINED_FUNCTION_9_35();
  v69 = *MEMORY[0x277D85DE8];
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v59[0] = 0;
  v59[1] = 0;
  OUTLINED_FUNCTION_17_30();
  v54[0] = 0;
  v54[1] = 0;
  v53[0] = 0;
  v53[1] = 0;
  v52[0] = 0;
  v52[1] = 0;
  OUTLINED_FUNCTION_20_27();
  bzero(v51, v4);
  OUTLINED_FUNCTION_19_28();
  bzero(v68, v5);
  if (setjmp(v68) || ventproc(v0, v51, v67, v66, v65, v68))
  {
    goto LABEL_3;
  }

  v8 = OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_51_12(v8, v9);
  OUTLINED_FUNCTION_22_26(v10, &v61);
  v11 = OUTLINED_FUNCTION_23_26();
  get_parm(v11, v12, v13, -4);
  push_ptr_init(v0, v59);
  push_ptr_init(v0, v58);
  push_ptr_init(v0, v57);
  v14 = OUTLINED_FUNCTION_33_20();
  push_ptr_init(v14, v15);
  v16 = OUTLINED_FUNCTION_59_11();
  push_ptr_init(v16, v17);
  v18 = OUTLINED_FUNCTION_42_13();
  push_ptr_init(v18, v19);
  push_ptr_init(v0, v53);
  push_ptr_init(v0, v52);
  v20 = fence_36(v0, 0, &null_str_13);
  OUTLINED_FUNCTION_60_11(v20, v21, &_MergedGlobals_33);
  v22 = OUTLINED_FUNCTION_55_12();
  starttest(v22, v23);
  v24 = OUTLINED_FUNCTION_27_23();
  if (lpta_loadp_setscan_r(v24, v25))
  {
    while (2)
    {
      starttest(v0, 2);
      if (!lpta_loadp_setscan_l(v0, &v63) && !advanc(v0))
      {
LABEL_14:
        savescptr(v0, 3, v56);
        if (advance_tok(v0))
        {
          goto LABEL_8;
        }

LABEL_15:
        savescptr(v0, 4, v57);
        v34 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v34, v35);
        if (advanc(v0))
        {
LABEL_8:
          v30 = v0[13];
          if (v30)
          {
            v31 = OUTLINED_FUNCTION_21_27(v30);
          }

          else
          {
            v32 = OUTLINED_FUNCTION_31_21();
            v31 = vback(v32, v33);
          }

          switch(v31)
          {
            case 1:
              continue;
            case 2:
              goto LABEL_18;
            case 3:
              goto LABEL_14;
            case 4:
              goto LABEL_15;
            case 5:
              break;
            case 6:
              goto LABEL_17;
            case 7:
              goto LABEL_24;
            case 8:
              goto LABEL_20;
            case 9:
              goto LABEL_21;
            case 10:
              goto LABEL_22;
            case 11:
              goto LABEL_23;
            case 12:
              goto LABEL_25;
            case 13:
              goto LABEL_30;
            case 14:
              goto LABEL_26;
            case 15:
              goto LABEL_27;
            case 16:
              goto LABEL_28;
            case 17:
              goto LABEL_29;
            default:
              goto LABEL_3;
          }
        }

        savescptr(v0, 5, v58);
        if (advance_tok(v0))
        {
          goto LABEL_8;
        }

LABEL_17:
        savescptr(v0, 6, v59);
      }

      break;
    }

LABEL_18:
    v36 = OUTLINED_FUNCTION_13_34();
    starttest(v36, v37);
    v38 = OUTLINED_FUNCTION_16_31();
    if (lpta_loadp_setscan_r(v38, v39) || advanc(v0))
    {
LABEL_24:
      OUTLINED_FUNCTION_32_20();
      OUTLINED_FUNCTION_71_9();
      coord_conj();
      if (v45)
      {
LABEL_25:
        subord_conj(v0, &v63, &v61, v59, v58, v57, v56, v55, v54, &v60, v50, v51[0], v51[1], v51[2], v51[3], v51[4], v51[5], v51[6], v51[7], v51[8], v51[9], v51[10]);
        if (v46)
        {
LABEL_26:
          OUTLINED_FUNCTION_32_20();
          OUTLINED_FUNCTION_71_9();
          prep_phrase();
          if (v47)
          {
LABEL_27:
            OUTLINED_FUNCTION_32_20();
            relpro();
            if (v48)
            {
LABEL_28:
              OUTLINED_FUNCTION_63_9();
              if (verb_phrase())
              {
LABEL_29:
                OUTLINED_FUNCTION_63_9();
                noun_phrase();
                if (v49)
                {
                  goto LABEL_3;
                }
              }
            }
          }
        }
      }

LABEL_30:
      *(v3 + 8) = v64;
      *(v2 + 8) = v62;
      OUTLINED_FUNCTION_66_9(SHIWORD(v60));
      goto LABEL_4;
    }

LABEL_20:
    v40 = OUTLINED_FUNCTION_70_9();
    savescptr(v40, v41, v42);
    if (!advance_tok(v0))
    {
LABEL_21:
      savescptr(v0, 9, v54);
      v43 = OUTLINED_FUNCTION_13_34();
      bspush_ca_scan(v43, v44);
      if (!advanc(v0))
      {
LABEL_22:
        savescptr(v0, 10, v53);
        if (!advance_tok(v0))
        {
LABEL_23:
          savescptr(v0, 11, v52);
          goto LABEL_24;
        }
      }
    }

    goto LABEL_8;
  }

  v26 = OUTLINED_FUNCTION_0_40();
  if (testFldeq(v26, v27, v28, v29) || advance_tok(v0))
  {
    goto LABEL_8;
  }

LABEL_3:
  v1 = 94;
LABEL_4:
  vretproc(v0);
  v6 = *MEMORY[0x277D85DE8];
  return v1;
}

void coord_conj()
{
  OUTLINED_FUNCTION_44_13();
  v158 = v0;
  v159 = v1;
  v3 = v2;
  v180 = *MEMORY[0x277D85DE8];
  v174 = 0;
  v175 = 0;
  v172 = 0;
  v173 = 0;
  v171[0] = 0;
  v171[1] = 0;
  v170[0] = 0;
  v170[1] = 0;
  v169[0] = 0;
  v169[1] = 0;
  v167 = 0;
  v168 = 0;
  v166 = 0;
  v165[0] = 0;
  v165[1] = 0;
  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  OUTLINED_FUNCTION_20_27();
  bzero(v160, v4);
  OUTLINED_FUNCTION_19_28();
  bzero(v179, v5);
  if (!setjmp(v179) && !ventproc(v3, v160, v178, v177, v176, v179))
  {
    v7 = OUTLINED_FUNCTION_24_26();
    OUTLINED_FUNCTION_72_9(v7, v8);
    get_parm(v3, &v172, v158, -6);
    OUTLINED_FUNCTION_48_13(v9, v171);
    OUTLINED_FUNCTION_39_15(v10, v170);
    OUTLINED_FUNCTION_22_26(v11, v169);
    v12 = OUTLINED_FUNCTION_23_26();
    get_parm(v12, v13, v14, -6);
    get_parm(v3, &v166, v159, -4);
    push_ptr_init(v3, v165);
    v164 = 0uLL;
    LODWORD(v163) = -65534;
    v162 = 0uLL;
    LODWORD(v161) = -65534;
    v15 = OUTLINED_FUNCTION_26_25();
    fence_36(v15, v16, v17);
    fence_36(v3, 1, &_MergedGlobals_33);
    v18 = OUTLINED_FUNCTION_50_12();
    starttest(v18, v19);
    OUTLINED_FUNCTION_50_12();
    bspush_ca_boa();
    v20 = OUTLINED_FUNCTION_24_26();
    if (lpta_loadp_setscan_r(v20, v21))
    {
      v22 = 0;
    }

    else
    {
      v23 = OUTLINED_FUNCTION_2_38();
      v22 = !testFldeq(v23, v24, v25, 5) && !advance_tok(v3);
    }

    v26 = v22;
    while (2)
    {
      v27 = v3[13];
      if (v27)
      {
        v28 = OUTLINED_FUNCTION_21_27(v27);
        v30 = v29;
      }

      else
      {
        v28 = vback(v3, v26);
        v30 = 0;
      }

      switch(v28)
      {
        case 1:
          lpta_loadpn(v3, v171);
          rpta_loadpn(v3, v3 + 418);
          if (compare_ptas(v3) || testeq(v3))
          {
            goto LABEL_17;
          }

          goto LABEL_58;
        case 2:
          bspop_boa(v3);
          break;
        case 3:
LABEL_17:
          lpta_loadpn(v3, v169);
          rpta_loadpn(v3, v3 + 418);
          if (compare_ptas(v3) || testeq(v3))
          {
            goto LABEL_19;
          }

          goto LABEL_58;
        case 4:
        case 22:
          v134 = HIWORD(v166);
          goto LABEL_64;
        case 5:
LABEL_19:
          v31 = OUTLINED_FUNCTION_28_22();
          starttest(v31, v32);
          v33 = OUTLINED_FUNCTION_14_32();
          if (lpta_loadp_setscan_l(v33, v34))
          {
            goto LABEL_20;
          }

          goto LABEL_30;
        case 6:
LABEL_20:
          starttest(v3, 12);
          v35 = OUTLINED_FUNCTION_14_32();
          if (lpta_loadp_setscan_l(v35, v36))
          {
            goto LABEL_21;
          }

          goto LABEL_31;
        case 7:
LABEL_30:
          savescptr(v3, 7, v165);
          v53 = OUTLINED_FUNCTION_24_26();
          bspush_ca_scan(v53, v54);
          v55 = OUTLINED_FUNCTION_2_38();
          v58 = 3;
          goto LABEL_48;
        case 8:
          v80 = OUTLINED_FUNCTION_41_13();
          bspush_ca_scan(v80, v81);
          v55 = OUTLINED_FUNCTION_3_37();
          v58 = 6;
          goto LABEL_48;
        case 9:
          goto LABEL_49;
        case 10:
          v86 = OUTLINED_FUNCTION_69_9();
          bspush_ca_scan(v86, v87);
          v55 = OUTLINED_FUNCTION_3_37();
          v58 = 7;
          goto LABEL_48;
        case 11:
          v55 = OUTLINED_FUNCTION_2_38();
          v58 = 9;
LABEL_48:
          v88 = testFldeq(v55, v56, v57, v58);
          v26 = v30;
          if (v88)
          {
            continue;
          }

LABEL_49:
          v89 = advance_tok(v3);
          v26 = v30;
          if (v89)
          {
            continue;
          }

          v90 = OUTLINED_FUNCTION_5_36();
          v92 = lpta_loadp_setscan_r(v90, v91);
          v26 = v30;
          if (v92)
          {
            continue;
          }

          v67 = OUTLINED_FUNCTION_3_37();
          v70 = 12;
LABEL_52:
          v93 = testFldeq(v67, v68, v69, v70);
          v26 = v30;
          if (v93)
          {
            continue;
          }

          v85 = advance_tok(v3);
          goto LABEL_44;
        case 12:
LABEL_21:
          v37 = OUTLINED_FUNCTION_37_17();
          starttest(v37, v38);
          v39 = OUTLINED_FUNCTION_14_32();
          if (lpta_loadp_setscan_r(v39, v40))
          {
            goto LABEL_22;
          }

          v71 = OUTLINED_FUNCTION_3_37();
          v74 = testFldeq(v71, v72, v73, 12);
          v26 = v30;
          if (!v74)
          {
            v75 = advance_tok(v3);
            v26 = v30;
            if (!v75)
            {
              v76 = advance_tok(v3);
              v26 = v30;
              if (!v76)
              {
                goto LABEL_40;
              }
            }
          }

          continue;
        case 13:
LABEL_31:
          savescptr(v3, 13, v165);
          v59 = OUTLINED_FUNCTION_3_37();
          v62 = testFldeq(v59, v60, v61, 12);
          v26 = v30;
          if (v62)
          {
            continue;
          }

          v63 = advance_tok(v3);
          v26 = v30;
          if (v63)
          {
            continue;
          }

          v64 = OUTLINED_FUNCTION_5_36();
          v66 = lpta_loadp_setscan_r(v64, v65);
          v26 = v30;
          if (v66)
          {
            continue;
          }

          v67 = OUTLINED_FUNCTION_4_36();
          v70 = 36;
          goto LABEL_52;
        case 14:
LABEL_22:
          v41 = OUTLINED_FUNCTION_29_22();
          starttest(v41, v42);
          if (!lpta_loadp_setscan_l(v3, v170))
          {
            goto LABEL_23;
          }

          goto LABEL_54;
        case 15:
          v77 = advance_tok(v3);
          v26 = v30;
          if (v77)
          {
            continue;
          }

LABEL_40:
          v78 = OUTLINED_FUNCTION_13_34();
          bspush_ca_scan(v78, v79);
          goto LABEL_43;
        case 16:
          goto LABEL_43;
        case 17:
          v82 = advance_tok(v3);
          v26 = v30;
          if (v82)
          {
            continue;
          }

LABEL_43:
          v83 = OUTLINED_FUNCTION_57_11();
          v85 = test_synch(v83, v84, 1u, &_MergedGlobals_33);
LABEL_44:
          v26 = v30;
          if (!v85)
          {
            goto LABEL_59;
          }

          continue;
        case 18:
          goto LABEL_54;
        case 19:
LABEL_23:
          v43 = OUTLINED_FUNCTION_27_23();
          savescptr(v43, v44, v165);
          v45 = savetok(v3, &v163);
          v26 = v30;
          if (v45)
          {
            continue;
          }

          v46 = advance_tok(v3);
          v26 = v30;
          if (v46)
          {
            continue;
          }

          v47 = OUTLINED_FUNCTION_5_36();
          v49 = lpta_loadp_setscan_r(v47, v48);
          v26 = v30;
          if (v49)
          {
            continue;
          }

          v50 = advance_tok(v3);
          v26 = v30;
          if (v50)
          {
            continue;
          }

          v51 = advance_tok(v3);
          v26 = v30;
          if (v51)
          {
            continue;
          }

          v52 = savetok(v3, &v161);
          v26 = v30;
          if (v52)
          {
            continue;
          }

LABEL_54:
          WORD1(v163) = 1;
          v94 = OUTLINED_FUNCTION_33_20();
          npush_v(v94, v95, v96, v97, v98, v99, v100, v101);
          ncompare_s(v3, 0xCu);
          if (testeq(v3) || (WORD1(v161) = 1, v102 = OUTLINED_FUNCTION_42_13(), npush_v(v102, v103, v104, v105, v106, v107, v108, v109), ncompare_s(v3, 0xCu), testeq(v3)))
          {
LABEL_56:
            WORD1(v163) = 1;
            v110 = OUTLINED_FUNCTION_33_20();
            npush_v(v110, v111, v112, v113, v114, v115, v116, v117);
            WORD1(v161) = 1;
            v118 = OUTLINED_FUNCTION_42_13();
            npush_v(v118, v119, v120, v121, v122, v123, v124, v125);
            if (if_testeq(v3, v126, v127, v128, v129, v130, v131, v132))
            {
LABEL_57:
              conjoined_NPs();
              if (v133)
              {
LABEL_58:
                v134 = 2;
                HIWORD(v166) = 2;
                goto LABEL_64;
              }

LABEL_59:
              v134 = 0;
              HIWORD(v166) = 0;
LABEL_64:
              *(v158 + 8) = v173;
              v159[1] = v134;
              vretproc(v3);
              goto LABEL_4;
            }
          }

          else
          {
            WORD1(v163) = 2;
            v135 = OUTLINED_FUNCTION_33_20();
            npush_v(v135, v136, v137, v138, v139, v140, v141, v142);
            WORD1(v161) = 2;
            v143 = OUTLINED_FUNCTION_42_13();
            npush_v(v143, v144, v145, v146, v147, v148, v149, v150);
            if (if_testeq(v3, v151, v152, v153, v154, v155, v156, v157))
            {
              goto LABEL_58;
            }
          }

          v134 = 0;
          HIWORD(v166) = 0;
          v173 = v168;
          goto LABEL_64;
        case 20:
          goto LABEL_56;
        case 21:
        case 24:
          goto LABEL_58;
        case 23:
          goto LABEL_57;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(v3);
LABEL_4:
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_43_13();
}

void subord_conj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int16 *a21, __int16 *a22)
{
  OUTLINED_FUNCTION_44_13();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v141 = *MEMORY[0x277D85DE8];
  v135 = 0;
  v136 = 0;
  v133 = 0;
  v134 = 0;
  v132[0] = 0;
  v132[1] = 0;
  v131[0] = 0;
  v131[1] = 0;
  OUTLINED_FUNCTION_17_30();
  v128 = 0;
  v127[0] = 0;
  v127[1] = 0;
  OUTLINED_FUNCTION_20_27();
  bzero(v126, v28);
  OUTLINED_FUNCTION_19_28();
  bzero(v140, v29);
  if (!setjmp(v140) && !ventproc(v27, v126, v139, v138, v137, v140))
  {
    get_parm(v27, &v135, v25, -6);
    get_parm(v27, &v133, v23, -6);
    OUTLINED_FUNCTION_72_9(v27, v132);
    OUTLINED_FUNCTION_38_16(v31, v131);
    OUTLINED_FUNCTION_39_15(v32, v130);
    OUTLINED_FUNCTION_22_26(v33, v129);
    v34 = OUTLINED_FUNCTION_23_26();
    get_parm(v34, v35, v36, -6);
    v37 = OUTLINED_FUNCTION_59_11();
    get_parm(v37, v38, a21, -6);
    get_parm(v27, &v128, a22, -4);
    push_ptr_init(v27, v127);
    v39 = OUTLINED_FUNCTION_26_25();
    fence_36(v39, v40, v41);
    fence_36(v27, 1, &_MergedGlobals_33);
    v42 = OUTLINED_FUNCTION_50_12();
    starttest(v42, v43);
    OUTLINED_FUNCTION_50_12();
    bspush_ca_boa();
    if (lpta_loadp_setscan_r(v27, &v135))
    {
      v44 = 0;
    }

    else
    {
      v45 = OUTLINED_FUNCTION_2_38();
      v44 = !testFldeq(v45, v46, v47, 6) && !advance_tok(v27);
    }

    v48 = v44;
    while (2)
    {
      v49 = v27[13];
      if (v49)
      {
        v50 = OUTLINED_FUNCTION_21_27(v49);
        v52 = v51;
      }

      else
      {
        v50 = vback(v27, v48);
        v52 = 0;
      }

      switch(v50)
      {
        case 1:
          v53 = OUTLINED_FUNCTION_57_11();
          starttest(v53, v54);
          v55 = OUTLINED_FUNCTION_28_22();
          if (!lpta_loadp_setscan_l(v55, v56))
          {
            goto LABEL_20;
          }

          goto LABEL_15;
        case 2:
          bspop_boa(v27);
          break;
        case 3:
LABEL_15:
          v57 = OUTLINED_FUNCTION_18_29();
          starttest(v57, v58);
          v59 = OUTLINED_FUNCTION_28_22();
          if (!lpta_loadp_setscan_l(v59, v60))
          {
            goto LABEL_16;
          }

          goto LABEL_43;
        case 4:
LABEL_20:
          v79 = OUTLINED_FUNCTION_25_25();
          savescptr(v79, v80, v127);
          v81 = OUTLINED_FUNCTION_68_9();
          bspush_ca_scan(v81, v82);
          v83 = OUTLINED_FUNCTION_2_38();
          v86 = 3;
          goto LABEL_24;
        case 5:
          v89 = OUTLINED_FUNCTION_69_9();
          bspush_ca_scan(v89, v90);
          v83 = OUTLINED_FUNCTION_3_37();
          v86 = 6;
          goto LABEL_24;
        case 6:
          goto LABEL_25;
        case 7:
          v87 = OUTLINED_FUNCTION_24_26();
          bspush_ca_scan(v87, v88);
          v83 = OUTLINED_FUNCTION_3_37();
          v86 = 7;
          goto LABEL_24;
        case 8:
          v83 = OUTLINED_FUNCTION_2_38();
          v86 = 9;
LABEL_24:
          v91 = testFldeq(v83, v84, v85, v86);
          v48 = v52;
          if (v91)
          {
            continue;
          }

LABEL_25:
          v92 = advance_tok(v27);
          v48 = v52;
          if (v92)
          {
            continue;
          }

          v93 = OUTLINED_FUNCTION_40_14();
          v95 = lpta_loadp_setscan_r(v93, v94);
          v48 = v52;
          if (v95)
          {
            continue;
          }

          v96 = OUTLINED_FUNCTION_3_37();
          v99 = testFldeq(v96, v97, v98, 12);
          v48 = v52;
          if (v99)
          {
            continue;
          }

          v100 = advance_tok(v27);
          v48 = v52;
          if (v100)
          {
            continue;
          }

LABEL_46:
          v125 = 0;
          HIWORD(v128) = 0;
LABEL_48:
          *(v25 + 8) = v136;
          *(v23 + 8) = v134;
          a22[1] = v125;
          break;
        case 9:
          v125 = HIWORD(v128);
          goto LABEL_48;
        case 10:
LABEL_43:
          v125 = 2;
          HIWORD(v128) = 2;
          goto LABEL_48;
        case 11:
LABEL_16:
          v61 = OUTLINED_FUNCTION_37_17();
          savescptr(v61, v62, v127);
          v63 = OUTLINED_FUNCTION_0_40();
          v67 = testFldeq(v63, v64, v65, v66);
          v48 = v52;
          if (v67)
          {
            continue;
          }

          v68 = advance_tok(v27);
          v48 = v52;
          if (v68)
          {
            continue;
          }

          v69 = OUTLINED_FUNCTION_1_38();
          v73 = testFldeq(v69, v70, v71, v72);
          v48 = v52;
          if (v73)
          {
            continue;
          }

          v74 = OUTLINED_FUNCTION_13_34();
          bspush_ca_scan(v74, v75);
          v76 = OUTLINED_FUNCTION_12_34();
          v78 = 2;
LABEL_31:
          v101 = testFldeq(v76, v77, 3, v78);
          v48 = v52;
          if (!v101)
          {
LABEL_32:
            v102 = advance_tok(v27);
            v48 = v52;
            if (!v102)
            {
              v103 = OUTLINED_FUNCTION_40_14();
              v105 = lpta_loadp_setscan_r(v103, v104);
              v48 = v52;
              if (!v105)
              {
                v106 = OUTLINED_FUNCTION_3_37();
                v109 = testFldeq(v106, v107, v108, 12);
                v48 = v52;
                if (!v109)
                {
                  v110 = advance_tok(v27);
                  v48 = v52;
                  if (!v110)
                  {
                    v111 = OUTLINED_FUNCTION_2_38();
                    v114 = testFldeq(v111, v112, v113, 3);
                    v48 = v52;
                    if (!v114)
                    {
                      v115 = OUTLINED_FUNCTION_3_37();
                      v118 = testFldeq(v115, v116, v117, 5);
                      v48 = v52;
                      if (!v118)
                      {
                        v119 = advance_tok(v27);
                        v48 = v52;
                        if (!v119)
                        {
                          OUTLINED_FUNCTION_41_13();
                          bspush_ca_scan_boa();
                          v120 = OUTLINED_FUNCTION_0_40();
                          v124 = testFldeq(v120, v121, v122, v123);
                          v48 = v52;
                          if (!v124)
                          {
                            if (advance_tok(v27))
                            {
                              v48 = v52;
                            }

                            else
                            {
                              v48 = 1;
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

          continue;
        case 12:
          v76 = OUTLINED_FUNCTION_12_34();
          v78 = 29;
          goto LABEL_31;
        case 13:
          goto LABEL_32;
        case 14:
          bspop_boa(v27);
          goto LABEL_46;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(v27);
  v30 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_43_13();
}

void prep_phrase()
{
  OUTLINED_FUNCTION_44_13();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v107 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17_30();
  v86 = 0;
  v87 = 0;
  v84 = 0;
  v85 = 0;
  HIDWORD(v83) = 0;
  v81 = 0;
  v82 = 0;
  OUTLINED_FUNCTION_20_27();
  bzero(v80, v10);
  OUTLINED_FUNCTION_19_28();
  bzero(v106, v11);
  v12 = setjmp(v106);
  if (v12 || OUTLINED_FUNCTION_61_11(v12, v80, v13, v14, v15, v16, v17, v18, v78, v79, v80[0], v80[1], v80[2], v80[3], v80[4], v80[5], v80[6], v80[7], v80[8], v80[9], v80[10], v80[11], v80[12], v80[13], v80[14], v80[15], v80[16], v80[17], v80[18], v80[19], v80[20], v80[21], v80[22], v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106[0]))
  {
LABEL_3:
    vretproc(v9);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_25_25();
    OUTLINED_FUNCTION_51_12(v20, v21);
    OUTLINED_FUNCTION_22_26(v22, &v92);
    v23 = OUTLINED_FUNCTION_33_20();
    get_parm(v23, v24, v3, -6);
    v25 = OUTLINED_FUNCTION_59_11();
    OUTLINED_FUNCTION_72_9(v25, v26);
    OUTLINED_FUNCTION_38_16(v27, &v86);
    OUTLINED_FUNCTION_48_13(v28, &v84);
    v29 = OUTLINED_FUNCTION_23_26();
    get_parm(v29, v30, v31, -4);
    v32 = OUTLINED_FUNCTION_30_21();
    push_ptr_init(v32, v33);
    v34 = OUTLINED_FUNCTION_26_25();
    v37 = fence_36(v34, v35, v36);
    OUTLINED_FUNCTION_60_11(v37, v38, &_MergedGlobals_33);
    v39 = OUTLINED_FUNCTION_55_12();
    starttest(v39, v40);
    OUTLINED_FUNCTION_55_12();
    bspush_ca_boa();
    v41 = OUTLINED_FUNCTION_25_25();
    if (lpta_loadp_setscan_r(v41, v42))
    {
      v43 = 0;
    }

    else
    {
      v44 = OUTLINED_FUNCTION_2_38();
      v43 = !testFldeq(v44, v45, v46, 9) && !advance_tok(v9);
    }

    v47 = v43;
    while (2)
    {
      v48 = v9[13];
      if (v48)
      {
        v49 = OUTLINED_FUNCTION_21_27(v48);
        v51 = v50;
      }

      else
      {
        v49 = vback(v9, v47);
        v51 = 0;
      }

      switch(v49)
      {
        case 1:
          v52 = OUTLINED_FUNCTION_24_26();
          starttest(v52, v53);
          v54 = OUTLINED_FUNCTION_28_22();
          if (!lpta_loadp_setscan_l(v54, v55))
          {
            goto LABEL_16;
          }

          goto LABEL_25;
        case 2:
          bspop_boa(v9);
          goto LABEL_3;
        case 3:
LABEL_25:
          v77 = 0;
          HIWORD(v83) = 0;
          goto LABEL_27;
        case 4:
LABEL_16:
          v56 = OUTLINED_FUNCTION_25_25();
          savescptr(v56, v57, &v81);
          v58 = OUTLINED_FUNCTION_12_34();
          v60 = testFldeq(v58, v59, 3, 30);
          v47 = v51;
          if (v60)
          {
            continue;
          }

          v61 = advance_tok(v9);
          v47 = v51;
          if (v61)
          {
            continue;
          }

          v62 = OUTLINED_FUNCTION_40_14();
          v64 = lpta_loadp_setscan_r(v62, v63);
          v47 = v51;
          if (v64)
          {
            continue;
          }

          v65 = OUTLINED_FUNCTION_41_13();
          bspush_ca_scan(v65, v66);
LABEL_22:
          v72 = OUTLINED_FUNCTION_3_37();
          v75 = testFldeq(v72, v73, v74, 6);
          v47 = v51;
          if (v75)
          {
            continue;
          }

          v76 = advance_tok(v9);
          v47 = v51;
          if (v76)
          {
            continue;
          }

LABEL_24:
          savescptr(v9, 7, &v92);
          v77 = 3;
          HIWORD(v83) = 3;
LABEL_27:
          *(v7 + 8) = v95;
          *(v5 + 8) = v93;
          *(v1 + 2) = v77;
          vretproc(v9);
          break;
        case 5:
          v67 = OUTLINED_FUNCTION_3_37();
          v70 = testFldeq(v67, v68, v69, 2);
          v47 = v51;
          if (v70)
          {
            continue;
          }

          v71 = advance_tok(v9);
          v47 = v51;
          if (v71)
          {
            continue;
          }

          goto LABEL_22;
        case 6:
          goto LABEL_22;
        case 7:
          goto LABEL_24;
        case 8:
          v77 = HIWORD(v83);
          goto LABEL_27;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_43_13();
}

void relpro()
{
  OUTLINED_FUNCTION_44_13();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v125 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_35_18();
  v115 = 0;
  OUTLINED_FUNCTION_20_27();
  bzero(v114, v6);
  OUTLINED_FUNCTION_19_28();
  bzero(v124, v7);
  if (!setjmp(v124) && !ventproc(v5, v114, v123, v122, v121, v124))
  {
    v9 = OUTLINED_FUNCTION_28_22();
    OUTLINED_FUNCTION_51_12(v9, v10);
    OUTLINED_FUNCTION_22_26(v11, v118);
    OUTLINED_FUNCTION_38_16(v12, v117);
    OUTLINED_FUNCTION_48_13(v13, v116);
    v14 = OUTLINED_FUNCTION_23_26();
    get_parm(v14, v15, v16, -4);
    v17 = OUTLINED_FUNCTION_26_25();
    v20 = fence_36(v17, v18, v19);
    OUTLINED_FUNCTION_60_11(v20, v21, &_MergedGlobals_33);
    v22 = OUTLINED_FUNCTION_55_12();
    starttest(v22, v23);
    OUTLINED_FUNCTION_55_12();
    bspush_ca_boa();
    v24 = OUTLINED_FUNCTION_28_22();
    if (lpta_loadp_setscan_r(v24, v25))
    {
      v26 = 0;
    }

    else
    {
      v27 = OUTLINED_FUNCTION_2_38();
      v26 = !testFldeq(v27, v28, v29, 10) && !advance_tok(v5);
    }

    v30 = v26;
    while (2)
    {
      v31 = *(v5 + 104);
      if (v31)
      {
        v32 = OUTLINED_FUNCTION_21_27(v31);
        v34 = v33;
      }

      else
      {
        v32 = vback(v5, v30);
        v34 = 0;
      }

      switch(v32)
      {
        case 1:
          v35 = OUTLINED_FUNCTION_69_9();
          starttest(v35, v36);
          v37 = OUTLINED_FUNCTION_14_32();
          if (lpta_loadp_setscan_l(v37, v38))
          {
            goto LABEL_15;
          }

          v101 = OUTLINED_FUNCTION_0_40();
          v105 = testFldeq(v101, v102, v103, v104);
          v30 = v34;
          if (!v105)
          {
            v106 = advance_tok(v5);
            v30 = v34;
            if (!v106)
            {
              OUTLINED_FUNCTION_41_13();
              bspush_ca_scan_boa();
              v107 = OUTLINED_FUNCTION_2_38();
              if (testFldeq(v107, v108, v109, 9))
              {
                v30 = v34;
              }

              else
              {
                v30 = 1;
              }
            }
          }

          continue;
        case 2:
          bspop_boa(v5);
          goto LABEL_3;
        case 3:
LABEL_15:
          v39 = OUTLINED_FUNCTION_40_14();
          starttest(v39, v40);
          v41 = OUTLINED_FUNCTION_14_32();
          if (lpta_loadp_setscan_l(v41, v42))
          {
            goto LABEL_16;
          }

          v91 = OUTLINED_FUNCTION_4_36();
          v94 = testFldeq(v91, v92, v93, 6);
          v30 = v34;
          if (!v94)
          {
            v95 = advance_tok(v5);
            v30 = v34;
            if (!v95)
            {
              bspush_ca_scan(v5, 6);
              v96 = OUTLINED_FUNCTION_2_38();
              v99 = testFldeq(v96, v97, v98, 8);
              v30 = v34;
              if (!v99)
              {
                v100 = advance_tok(v5);
                v30 = v34;
                if (!v100)
                {
                  goto LABEL_41;
                }
              }
            }
          }

          continue;
        case 4:
          bspop_boa(v5);
          v56 = OUTLINED_FUNCTION_1_38();
          v60 = testFldeq(v56, v57, v58, v59);
          v30 = v34;
          if (v60)
          {
            continue;
          }

          v61 = advance_tok(v5);
          v30 = v34;
          if (v61)
          {
            continue;
          }

          v113 = HIWORD(v115);
          goto LABEL_43;
        case 5:
LABEL_16:
          v43 = OUTLINED_FUNCTION_13_34();
          starttest(v43, v44);
          v45 = OUTLINED_FUNCTION_14_32();
          if (lpta_loadp_setscan_l(v45, v46))
          {
            goto LABEL_17;
          }

          v62 = OUTLINED_FUNCTION_3_37();
          v65 = testFldeq(v62, v63, v64, 2);
          v30 = v34;
          if (!v65)
          {
            v66 = OUTLINED_FUNCTION_12_34();
            v68 = npush_fld(v66, v67, 5);
            v30 = v34;
            if (!v68)
            {
              npush_v(v5, (v5 + 3052), v69, v70, v71, v72, v73, v74);
              v82 = if_testeq(v5, v75, v76, v77, v78, v79, v80, v81);
              v30 = v34;
              if (!v82)
              {
                v83 = advance_tok(v5);
                v30 = v34;
                if (!v83)
                {
                  v84 = OUTLINED_FUNCTION_13_34();
                  bspush_ca_scan(v84, v85);
                  v86 = OUTLINED_FUNCTION_2_38();
                  v89 = testFldeq(v86, v87, v88, 9);
                  v30 = v34;
                  if (!v89)
                  {
                    v90 = advance_tok(v5);
                    v30 = v34;
                    if (!v90)
                    {
                      goto LABEL_41;
                    }
                  }
                }
              }
            }
          }

          continue;
        case 6:
        case 9:
        case 10:
          goto LABEL_41;
        case 7:
          goto LABEL_42;
        case 8:
LABEL_17:
          v47 = OUTLINED_FUNCTION_24_26();
          starttest(v47, v48);
          v49 = OUTLINED_FUNCTION_14_32();
          if (lpta_loadp_setscan_l(v49, v50))
          {
            goto LABEL_42;
          }

          v51 = OUTLINED_FUNCTION_2_38();
          v54 = testFldeq(v51, v52, v53, 9);
          v30 = v34;
          if (v54)
          {
            continue;
          }

          v55 = advance_tok(v5);
          v30 = v34;
          if (v55)
          {
            continue;
          }

LABEL_41:
          v110 = OUTLINED_FUNCTION_70_9();
          savescptr(v110, v111, v112);
LABEL_42:
          v113 = 3;
          HIWORD(v115) = 3;
LABEL_43:
          *(v3 + 8) = v120;
          *(v1 + 8) = v119;
          OUTLINED_FUNCTION_66_9(v113);
          break;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(v5);
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_43_13();
}

uint64_t verb_phrase()
{
  OUTLINED_FUNCTION_9_35();
  v232 = *MEMORY[0x277D85DE8];
  v229 = 0;
  v230 = 0;
  v227 = 0;
  v228 = 0;
  v226 = 0;
  OUTLINED_FUNCTION_20_27();
  bzero(v225, v4);
  OUTLINED_FUNCTION_19_28();
  bzero(v231, v5);
  if (setjmp(v231) || (OUTLINED_FUNCTION_53_12(), ventproc(v0, v6, v7, v8, v9, v231)))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
    goto LABEL_4;
  }

  v12 = OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_51_12(v12, v13);
  OUTLINED_FUNCTION_22_26(v14, &v227);
  v15 = OUTLINED_FUNCTION_23_26();
  get_parm(v15, v16, v17, -4);
  v18 = OUTLINED_FUNCTION_26_25();
  fence_36(v18, v19, v20);
  fence_36(v0, 1, &_MergedGlobals_33);
  v21 = OUTLINED_FUNCTION_64_9();
  starttest(v21, v22);
  OUTLINED_FUNCTION_64_9();
  bspush_ca_boa();
  v23 = OUTLINED_FUNCTION_27_23();
  v25 = 0;
  if (!lpta_loadp_setscan_r(v23, v24))
  {
    v26 = OUTLINED_FUNCTION_8_35();
    bspush_ca_scan(v26, v27);
    v28 = OUTLINED_FUNCTION_2_38();
    v31 = testFldeq(v28, v29, v30, 4);
    v25 = 0;
    v32 = 0;
    if (!v31)
    {
LABEL_7:
      v25 = v32;
      v33 = OUTLINED_FUNCTION_3_37();
      if (!testFldeq(v33, v34, v35, 5) && !advance_tok(v0))
      {
        v25 = 1;
      }
    }
  }

  v36 = v25;
  while (2)
  {
    v37 = v0[13];
    if (v37)
    {
      v38 = OUTLINED_FUNCTION_21_27(v37);
      v40 = v39;
    }

    else
    {
      v38 = vback(v0, v36);
      v40 = 0;
    }

    v32 = v40;
    switch(v38)
    {
      case 1:
        v41 = OUTLINED_FUNCTION_13_34();
        starttest(v41, v42);
        v43 = OUTLINED_FUNCTION_16_31();
        if (lpta_loadp_setscan_r(v43, v44))
        {
          goto LABEL_27;
        }

        v45 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v45, v46);
        goto LABEL_89;
      case 2:
        bspop_boa(v0);
        goto LABEL_3;
      case 3:
        v187 = OUTLINED_FUNCTION_2_38();
        v190 = testFldeq(v187, v188, v189, 3);
        v32 = v40;
        v36 = v40;
        if (!v190)
        {
          goto LABEL_7;
        }

        continue;
      case 4:
        goto LABEL_7;
      case 5:
        goto LABEL_27;
      case 6:
        v199 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v199, v200);
        goto LABEL_85;
      case 7:
        goto LABEL_89;
      case 8:
        v163 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v163, v164);
        goto LABEL_61;
      case 9:
        goto LABEL_85;
      case 10:
        v157 = OUTLINED_FUNCTION_2_38();
        v160 = testFldeq(v157, v158, v159, 3);
        v36 = v40;
        if (v160)
        {
          continue;
        }

        v161 = advance_tok(v0);
        v36 = v40;
        if (v161)
        {
          continue;
        }

        goto LABEL_61;
      case 11:
LABEL_61:
        v165 = OUTLINED_FUNCTION_2_38();
        v168 = testFldeq(v165, v166, v167, 3);
        v36 = v40;
        if (v168)
        {
          continue;
        }

        v169 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v169, v170);
        v171 = OUTLINED_FUNCTION_3_37();
        v174 = 6;
LABEL_69:
        v177 = testFldeq(v171, v172, v173, v174);
        v36 = v40;
        if (v177)
        {
          continue;
        }

LABEL_70:
        v178 = advance_tok(v0);
        v36 = v40;
        if (v178)
        {
          continue;
        }

LABEL_85:
        v201 = OUTLINED_FUNCTION_2_38();
        v204 = testFldeq(v201, v202, v203, 3);
        v36 = v40;
        if (v204)
        {
          continue;
        }

        v205 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v205, v206);
        v179 = OUTLINED_FUNCTION_3_37();
        v182 = 6;
LABEL_87:
        v207 = testFldeq(v179, v180, v181, v182);
        v36 = v40;
        if (v207)
        {
          continue;
        }

LABEL_88:
        v208 = advance_tok(v0);
        v36 = v40;
        if (v208)
        {
          continue;
        }

LABEL_89:
        v209 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v209, v210);
        v211 = OUTLINED_FUNCTION_4_36();
        v214 = testFldeq(v211, v212, v213, 10);
        v36 = v40;
        if (v214)
        {
          continue;
        }

        v215 = advance_tok(v0);
        v36 = v40;
        if (v215)
        {
          continue;
        }

LABEL_91:
        v216 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v216, v217);
        v218 = OUTLINED_FUNCTION_2_38();
        v221 = testFldeq(v218, v219, v220, 1);
        v36 = v40;
        if (!v221)
        {
          goto LABEL_92;
        }

        continue;
      case 12:
        v171 = OUTLINED_FUNCTION_3_37();
        v174 = 7;
        goto LABEL_69;
      case 13:
        goto LABEL_70;
      case 14:
        v179 = OUTLINED_FUNCTION_3_37();
        v182 = 7;
        goto LABEL_87;
      case 15:
        goto LABEL_88;
      case 16:
        goto LABEL_91;
      case 17:
        goto LABEL_26;
      case 18:
        bspop_boa(v0);
        v67 = advance_tok(v0);
        v36 = v40;
        if (v67)
        {
          continue;
        }

LABEL_26:
        savescptr(v0, 17, &v227);
LABEL_27:
        v68 = OUTLINED_FUNCTION_13_34();
        starttest(v68, v69);
        v70 = OUTLINED_FUNCTION_7_35();
        if (lpta_loadp_setscan_l(v70, v71))
        {
          goto LABEL_31;
        }

        v72 = OUTLINED_FUNCTION_4_36();
        v75 = testFldeq(v72, v73, v74, 10);
        v36 = v40;
        if (v75)
        {
          continue;
        }

        v76 = advance_tok(v0);
        v36 = v40;
        if (v76)
        {
          continue;
        }

LABEL_30:
        v77 = OUTLINED_FUNCTION_45_13();
        savescptr(v77, v78, v79);
LABEL_31:
        v80 = OUTLINED_FUNCTION_13_34();
        starttest(v80, v81);
        v82 = OUTLINED_FUNCTION_7_35();
        if (lpta_loadp_setscan_l(v82, v83))
        {
          goto LABEL_35;
        }

        v84 = OUTLINED_FUNCTION_2_38();
        v87 = testFldeq(v84, v85, v86, 8);
        v36 = v40;
        if (v87)
        {
          continue;
        }

        v88 = advance_tok(v0);
        v36 = v40;
        if (v88)
        {
          continue;
        }

LABEL_34:
        v89 = OUTLINED_FUNCTION_45_13();
        savescptr(v89, v90, v91);
LABEL_35:
        v92 = OUTLINED_FUNCTION_13_34();
        starttest(v92, v93);
        v94 = OUTLINED_FUNCTION_7_35();
        if (!lpta_loadp_setscan_l(v94, v95))
        {
          v132 = OUTLINED_FUNCTION_2_38();
          v135 = testFldeq(v132, v133, v134, 1);
          v36 = v40;
          if (!v135)
          {
LABEL_92:
            OUTLINED_FUNCTION_13_34();
            bspush_ca_scan_boa();
            v140 = OUTLINED_FUNCTION_4_36();
            v143 = 23;
            goto LABEL_93;
          }

          continue;
        }

LABEL_36:
        v96 = OUTLINED_FUNCTION_13_34();
        starttest(v96, v97);
        v98 = OUTLINED_FUNCTION_7_35();
        if (!lpta_loadp_setscan_l(v98, v99))
        {
          v136 = OUTLINED_FUNCTION_2_38();
          v139 = testFldeq(v136, v137, v138, 5);
          v36 = v40;
          if (!v139)
          {
            OUTLINED_FUNCTION_13_34();
            bspush_ca_scan_boa();
            v140 = OUTLINED_FUNCTION_3_37();
            v143 = 12;
LABEL_93:
            if (testFldeq(v140, v141, v142, v143))
            {
              v36 = v40;
            }

            else
            {
              v36 = 1;
            }
          }

          continue;
        }

LABEL_37:
        v100 = OUTLINED_FUNCTION_13_34();
        starttest(v100, v101);
        v102 = OUTLINED_FUNCTION_7_35();
        if (lpta_loadp_setscan_l(v102, v103))
        {
LABEL_38:
          v104 = OUTLINED_FUNCTION_13_34();
          starttest(v104, v105);
          v106 = OUTLINED_FUNCTION_7_35();
          if (lpta_loadp_setscan_l(v106, v107))
          {
LABEL_39:
            v108 = OUTLINED_FUNCTION_13_34();
            starttest(v108, v109);
            v110 = OUTLINED_FUNCTION_7_35();
            if (!lpta_loadp_setscan_r(v110, v111))
            {
              v144 = OUTLINED_FUNCTION_4_36();
              v147 = 10;
              goto LABEL_50;
            }

LABEL_40:
            v112 = OUTLINED_FUNCTION_13_34();
            starttest(v112, v113);
            v114 = OUTLINED_FUNCTION_7_35();
            if (lpta_loadp_setscan_l(v114, v115))
            {
LABEL_41:
              v116 = OUTLINED_FUNCTION_13_34();
              starttest(v116, v117);
              v118 = OUTLINED_FUNCTION_7_35();
              if (lpta_loadp_setscan_r(v118, v119))
              {
LABEL_100:
                v224 = 3;
                HIWORD(v226) = 3;
                goto LABEL_102;
              }

              v120 = OUTLINED_FUNCTION_13_34();
              bspush_ca_scan(v120, v121);
              v122 = OUTLINED_FUNCTION_4_36();
              v125 = 19;
LABEL_97:
              v222 = testFldeq(v122, v123, v124, v125);
              v36 = v40;
              if (!v222)
              {
LABEL_98:
                v223 = advance_tok(v0);
                v36 = v40;
                if (!v223)
                {
                  v224 = 0;
                  HIWORD(v226) = 0;
                  goto LABEL_102;
                }
              }
            }

            else
            {
              v149 = OUTLINED_FUNCTION_0_40();
              v153 = testFldeq(v149, v150, v151, v152);
              v36 = v40;
              if (!v153)
              {
                v154 = advance_tok(v0);
                v36 = v40;
                if (!v154)
                {
                  v155 = OUTLINED_FUNCTION_13_34();
                  bspush_ca_scan(v155, v156);
LABEL_80:
                  v193 = OUTLINED_FUNCTION_13_34();
                  bspush_ca_scan(v193, v194);
LABEL_81:
                  v195 = OUTLINED_FUNCTION_2_38();
                  v198 = testFldeq(v195, v196, v197, 10);
                  v36 = v40;
                  if (!v198)
                  {
                    v122 = OUTLINED_FUNCTION_4_36();
                    v125 = 33;
                    goto LABEL_97;
                  }
                }
              }
            }
          }

          else
          {
            v144 = OUTLINED_FUNCTION_4_36();
            v147 = 11;
LABEL_50:
            v148 = testFldeq(v144, v145, v146, v147);
            v36 = v40;
            if (!v148)
            {
              v122 = OUTLINED_FUNCTION_3_37();
              v125 = 2;
              goto LABEL_97;
            }
          }

          continue;
        }

        v126 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v126, v127);
        v128 = OUTLINED_FUNCTION_2_38();
        v131 = 10;
LABEL_65:
        v175 = testFldeq(v128, v129, v130, v131);
        v36 = v40;
        if (v175)
        {
          continue;
        }

LABEL_66:
        v176 = advance_tok(v0);
        v36 = v40;
        if (v176)
        {
          continue;
        }

LABEL_101:
        v224 = HIWORD(v226);
LABEL_102:
        *(v3 + 8) = v230;
        *(v2 + 8) = v228;
        *(v1 + 2) = v224;
        vretproc(v0);
        result = 0;
LABEL_4:
        v11 = *MEMORY[0x277D85DE8];
        return result;
      case 19:
        goto LABEL_31;
      case 20:
        goto LABEL_30;
      case 21:
        goto LABEL_35;
      case 22:
        goto LABEL_34;
      case 23:
        goto LABEL_36;
      case 24:
        bspop_boa(v0);
        OUTLINED_FUNCTION_13_34();
        bspush_ca_scan_boa();
        v140 = OUTLINED_FUNCTION_4_36();
        v143 = 24;
        goto LABEL_93;
      case 25:
        bspop_boa(v0);
        OUTLINED_FUNCTION_13_34();
        bspush_ca_scan_boa();
        v140 = OUTLINED_FUNCTION_4_36();
        v143 = 25;
        goto LABEL_93;
      case 26:
        bspop_boa(v0);
        v183 = advance_tok(v0);
        v36 = v40;
        if (v183)
        {
          continue;
        }

        goto LABEL_74;
      case 27:
LABEL_74:
        v184 = OUTLINED_FUNCTION_45_13();
        savescptr(v184, v185, v186);
        OUTLINED_FUNCTION_13_34();
        bspush_ca_scan_boa();
        v140 = OUTLINED_FUNCTION_2_38();
        v143 = 9;
        goto LABEL_93;
      case 28:
        bspop_boa(v0);
        v162 = advance_tok(v0);
        v36 = v40;
        if (v162)
        {
          continue;
        }

        goto LABEL_36;
      case 29:
        goto LABEL_37;
      case 30:
        bspop_boa(v0);
        v63 = advance_tok(v0);
        v36 = v40;
        if (v63)
        {
          continue;
        }

        goto LABEL_24;
      case 31:
LABEL_24:
        v64 = OUTLINED_FUNCTION_45_13();
        savescptr(v64, v65, v66);
        goto LABEL_37;
      case 32:
        goto LABEL_38;
      case 33:
        v128 = OUTLINED_FUNCTION_3_37();
        v131 = 12;
        goto LABEL_65;
      case 34:
        goto LABEL_66;
      case 35:
        goto LABEL_39;
      case 36:
        goto LABEL_101;
      case 37:
        goto LABEL_40;
      case 38:
        goto LABEL_41;
      case 39:
        v59 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v59, v60);
        v49 = OUTLINED_FUNCTION_4_36();
        v52 = 3;
        goto LABEL_78;
      case 40:
        goto LABEL_80;
      case 41:
        v61 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v61, v62);
        v49 = OUTLINED_FUNCTION_4_36();
        v52 = 37;
        goto LABEL_78;
      case 42:
        goto LABEL_79;
      case 43:
        v47 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v47, v48);
        v49 = OUTLINED_FUNCTION_4_36();
        v52 = 4;
        goto LABEL_78;
      case 44:
        v49 = OUTLINED_FUNCTION_0_40();
LABEL_78:
        v191 = testFldeq(v49, v50, v51, v52);
        v36 = v40;
        if (v191)
        {
          continue;
        }

LABEL_79:
        v192 = advance_tok(v0);
        v36 = v40;
        if (!v192)
        {
          goto LABEL_80;
        }

        continue;
      case 45:
        v53 = OUTLINED_FUNCTION_1_38();
        v57 = testFldeq(v53, v54, v55, v56);
        v36 = v40;
        if (v57)
        {
          continue;
        }

        v58 = advance_tok(v0);
        v36 = v40;
        if (v58)
        {
          continue;
        }

        goto LABEL_81;
      case 46:
        goto LABEL_81;
      case 47:
        goto LABEL_100;
      case 48:
        v122 = OUTLINED_FUNCTION_4_36();
        v125 = 16;
        goto LABEL_97;
      case 49:
        goto LABEL_98;
      default:
        goto LABEL_3;
    }
  }
}

void noun_phrase()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_9_35();
  v54 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  OUTLINED_FUNCTION_20_27();
  bzero(v44, v3);
  OUTLINED_FUNCTION_19_28();
  bzero(v53, v4);
  if (!setjmp(v53) && !ventproc(v0, v44, v52, v51, v50, v53))
  {
    v6 = OUTLINED_FUNCTION_24_26();
    OUTLINED_FUNCTION_51_12(v6, v7);
    OUTLINED_FUNCTION_22_26(v8, &v46);
    v9 = OUTLINED_FUNCTION_23_26();
    get_parm(v9, v10, v11, -4);
    v12 = OUTLINED_FUNCTION_26_25();
    fence_36(v12, v13, v14);
    fence_36(v0, 1, &_MergedGlobals_33);
    v15 = OUTLINED_FUNCTION_64_9();
    starttest(v15, v16);
    OUTLINED_FUNCTION_64_9();
    bspush_ca_boa();
    v17 = OUTLINED_FUNCTION_24_26();
    if (lpta_loadp_setscan_r(v17, v18))
    {
      v19 = 0;
    }

    else
    {
      v20 = OUTLINED_FUNCTION_1_38();
      v19 = !testFldeq(v20, v21, v22, v23) && !advance_tok(v0);
    }

    v24 = v19;
    while (2)
    {
      v25 = v0[13];
      if (v25)
      {
        v26 = OUTLINED_FUNCTION_21_27(v25);
        v28 = v27;
      }

      else
      {
        v26 = vback(v0, v24);
        v28 = 0;
      }

      switch(v26)
      {
        case 1:
          v29 = OUTLINED_FUNCTION_24_26();
          starttest(v29, v30);
          v31 = OUTLINED_FUNCTION_28_22();
          if (lpta_loadp_setscan_l(v31, v32))
          {
            goto LABEL_23;
          }

          v33 = OUTLINED_FUNCTION_0_40();
          v37 = testFldeq(v33, v34, v35, v36);
          v24 = v28;
          if (v37)
          {
            continue;
          }

          OUTLINED_FUNCTION_25_25();
          bspush_ca_scan_boa();
          v38 = OUTLINED_FUNCTION_12_34();
          v40 = 3;
          v41 = 5;
          goto LABEL_20;
        case 2:
          bspop_boa(v0);
          goto LABEL_3;
        case 3:
LABEL_23:
          v43 = 0;
          HIWORD(v45) = 0;
          goto LABEL_26;
        case 4:
          bspop_boa(v0);
          bspush_ca_scan_boa();
          v38 = OUTLINED_FUNCTION_3_37();
          v41 = 6;
LABEL_20:
          if (testFldeq(v38, v39, v40, v41))
          {
            v24 = v28;
          }

          else
          {
            v24 = 1;
          }

          continue;
        case 5:
          bspop_boa(v0);
          v42 = advance_tok(v0);
          v24 = v28;
          if (v42)
          {
            continue;
          }

          v43 = 3;
          HIWORD(v45) = 3;
          goto LABEL_26;
        case 6:
          v43 = HIWORD(v45);
LABEL_26:
          *(v2 + 8) = v49;
          *(v1 + 8) = v47;
          OUTLINED_FUNCTION_66_9(v43);
          break;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(v0);
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_43_13();
}

void conjoined_NPs()
{
  OUTLINED_FUNCTION_44_13();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v138 = *MEMORY[0x277D85DE8];
  v133[0] = 0;
  v133[1] = 0;
  v132[0] = 0;
  v132[1] = 0;
  v130 = 0;
  v131 = 0;
  OUTLINED_FUNCTION_17_30();
  OUTLINED_FUNCTION_20_27();
  bzero(v124, v6);
  OUTLINED_FUNCTION_19_28();
  bzero(v137, v7);
  if (!setjmp(v137) && !ventproc(v5, v124, v136, v135, v134, v137))
  {
    OUTLINED_FUNCTION_72_9(v5, v133);
    OUTLINED_FUNCTION_38_16(v9, v132);
    v10 = OUTLINED_FUNCTION_24_26();
    get_parm(v10, v11, v3, -6);
    v12 = OUTLINED_FUNCTION_23_26();
    get_parm(v12, v13, v14, -6);
    OUTLINED_FUNCTION_39_15(v15, v127);
    OUTLINED_FUNCTION_22_26(v16, v126);
    v17 = OUTLINED_FUNCTION_59_11();
    push_ptr_init(v17, v18);
    v19 = 0;
    v20 = OUTLINED_FUNCTION_26_25();
    fence_36(v20, v21, v22);
    v23 = OUTLINED_FUNCTION_67_9();
    fence_36(v23, v24, v25);
    starttest(v5, 1);
    v26 = OUTLINED_FUNCTION_24_26();
    if (lpta_loadp_setscan_l(v26, v27))
    {
LABEL_5:
      v28 = OUTLINED_FUNCTION_8_35();
      starttest(v28, v29);
      OUTLINED_FUNCTION_13_34();
      bspush_ca_boa();
      v30 = OUTLINED_FUNCTION_16_31();
      if (!lpta_loadp_setscan_l(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_0_40();
        if (!testFldeq(v32, v33, v34, v35) && !advance_tok(v5))
        {
          v19 = 1;
        }
      }
    }

    else
    {
      v36 = OUTLINED_FUNCTION_2_38();
      if (!testFldeq(v36, v37, v38, 11) && !advance_tok(v5))
      {
LABEL_47:
        *(v1 + 8) = v129;
        goto LABEL_3;
      }

      v19 = 0;
    }

    v39 = v19;
    while (2)
    {
      v40 = v5[13];
      if (v40)
      {
        v41 = OUTLINED_FUNCTION_21_27(v40);
        v43 = v42;
      }

      else
      {
        v41 = vback(v5, v39);
        v43 = 0;
      }

      switch(v41)
      {
        case 1:
          v19 = v43;
          goto LABEL_5;
        case 2:
        case 9:
        case 16:
          goto LABEL_47;
        case 3:
          starttest(v5, 5);
          v72 = OUTLINED_FUNCTION_5_36();
          if (lpta_loadp_setscan_r(v72, v73))
          {
            goto LABEL_28;
          }

          v119 = OUTLINED_FUNCTION_2_38();
          v122 = testFldeq(v119, v120, v121, 11);
          v39 = v43;
          if (!v122)
          {
            v123 = advance_tok(v5);
            v39 = v43;
            if (!v123)
            {
              goto LABEL_47;
            }
          }

          continue;
        case 4:
        case 10:
        case 17:
          bspop_boa(v5);
          goto LABEL_3;
        case 5:
LABEL_28:
          v74 = OUTLINED_FUNCTION_24_26();
          starttest(v74, v75);
          v76 = OUTLINED_FUNCTION_5_36();
          if (lpta_loadp_setscan_r(v76, v77))
          {
            goto LABEL_29;
          }

          v107 = OUTLINED_FUNCTION_1_38();
          v111 = testFldeq(v107, v108, v109, v110);
          v39 = v43;
          if (!v111)
          {
            v112 = OUTLINED_FUNCTION_4_36();
            v115 = testFldeq(v112, v113, v114, 2);
            v39 = v43;
            if (!v115)
            {
              goto LABEL_41;
            }
          }

          continue;
        case 6:
LABEL_29:
          v78 = OUTLINED_FUNCTION_40_14();
          starttest(v78, v79);
          v80 = OUTLINED_FUNCTION_5_36();
          if (lpta_loadp_setscan_r(v80, v81))
          {
            goto LABEL_3;
          }

          v82 = OUTLINED_FUNCTION_1_38();
          v86 = testFldeq(v82, v83, v84, v85);
          v39 = v43;
          if (!v86)
          {
            v87 = OUTLINED_FUNCTION_4_36();
            v90 = testFldeq(v87, v88, v89, 1);
            v39 = v43;
            if (!v90)
            {
              goto LABEL_41;
            }
          }

          continue;
        case 7:
          bspop_boa(v5);
          v91 = advance_tok(v5);
          v39 = v43;
          if (v91)
          {
            continue;
          }

          v92 = advance_tok(v5);
          v39 = v43;
          if (v92)
          {
            continue;
          }

          goto LABEL_35;
        case 8:
LABEL_35:
          savescptr(v5, 8, v128);
          v93 = OUTLINED_FUNCTION_13_34();
          starttest_l(v93, v94);
          bspush_ca_boa();
          v95 = lpta_loadp_setscan_l(v5, v133);
          v39 = v43;
          if (!v95)
          {
            goto LABEL_36;
          }

          continue;
        case 11:
LABEL_36:
          v96 = OUTLINED_FUNCTION_13_34();
          savescptr(v96, v97, v125);
          v98 = OUTLINED_FUNCTION_1_38();
          v102 = testFldeq(v98, v99, v100, v101);
          v39 = v43;
          if (!v102)
          {
            v103 = OUTLINED_FUNCTION_4_36();
            v106 = testFldeq(v103, v104, v105, 2);
            v39 = v43;
            if (!v106)
            {
              goto LABEL_41;
            }
          }

          continue;
        case 12:
        case 19:
          bspop_boa(v5);
          v44 = advance_tok(v5);
          v39 = v43;
          if (v44)
          {
            continue;
          }

          v45 = OUTLINED_FUNCTION_68_9();
          v47 = lpta_loadp_setscan_r(v45, v46);
          v39 = v43;
          if (v47)
          {
            continue;
          }

          v48 = OUTLINED_FUNCTION_0_40();
          v52 = testFldeq(v48, v49, v50, v51);
          v39 = v43;
          if (v52)
          {
            continue;
          }

          v53 = advance_tok(v5);
          goto LABEL_42;
        case 14:
          bspop_boa(v5);
          v54 = advance_tok(v5);
          v39 = v43;
          if (v54)
          {
            continue;
          }

          v55 = advance_tok(v5);
          v39 = v43;
          if (v55)
          {
            continue;
          }

          goto LABEL_23;
        case 15:
LABEL_23:
          v56 = OUTLINED_FUNCTION_57_11();
          savescptr(v56, v57, v128);
          v58 = OUTLINED_FUNCTION_29_22();
          starttest_l(v58, v59);
          OUTLINED_FUNCTION_28_22();
          bspush_ca_boa();
          v60 = lpta_loadp_setscan_l(v5, v133);
          v39 = v43;
          if (!v60)
          {
            goto LABEL_24;
          }

          continue;
        case 18:
LABEL_24:
          v61 = OUTLINED_FUNCTION_27_23();
          savescptr(v61, v62, v125);
          v63 = OUTLINED_FUNCTION_1_38();
          v67 = testFldeq(v63, v64, v65, v66);
          v39 = v43;
          if (!v67)
          {
            v68 = OUTLINED_FUNCTION_4_36();
            v71 = testFldeq(v68, v69, v70, 1);
            v39 = v43;
            if (!v71)
            {
              OUTLINED_FUNCTION_41_13();
LABEL_41:
              bspush_ca_scan_boa();
              v116 = OUTLINED_FUNCTION_2_38();
              v53 = testFldeq(v116, v117, v118, 9);
LABEL_42:
              if (v53)
              {
                v39 = v43;
              }

              else
              {
                v39 = 1;
              }
            }
          }

          continue;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v5);
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_43_13();
}

uint64_t misc_phrase(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v18[0] = 0;
  v18[1] = 0;
  OUTLINED_FUNCTION_56_11();
  v15[0] = 0;
  v15[1] = 0;
  v14 = 0;
  OUTLINED_FUNCTION_20_27();
  bzero(v13, v2);
  OUTLINED_FUNCTION_19_28();
  bzero(v22, v3);
  if (!setjmp(v22))
  {
    v4 = ventproc(a1, v13, v21, v20, v19, v22);
    if (!v4)
    {
      OUTLINED_FUNCTION_38_16(v4, v18);
      OUTLINED_FUNCTION_48_13(v5, v17);
      OUTLINED_FUNCTION_39_15(v6, v16);
      OUTLINED_FUNCTION_22_26(v7, v15);
      v8 = OUTLINED_FUNCTION_23_26();
      get_parm(v8, v9, v10, -4);
      fence_36(a1, 0, &null_str_13);
    }
  }

  vretproc(a1);
  v11 = *MEMORY[0x277D85DE8];
  return 94;
}

uint64_t apply_por_comma_rules()
{
  OUTLINED_FUNCTION_15_32();
  v115 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_34(v2, v3, v4, v5, v6, v7, v8, v9, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v106, v108);
  OUTLINED_FUNCTION_19_28();
  bzero(v114, v10);
  v11 = setjmp(v114);
  if (v11 || OUTLINED_FUNCTION_54_12(v11, v12, v13, v14, v15, v16, v17, v18, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v107, v109, *v110, v110[4], *v111, *&v111[4], v111[6], v112, SWORD2(v112), SBYTE6(v112), SHIBYTE(v112), v113, v114[0]))
  {
LABEL_3:
    vretproc(v0);
    result = 94;
    goto LABEL_4;
  }

  v21 = OUTLINED_FUNCTION_10_35();
  get_parm(v21, v22, v23, -6);
  v24 = OUTLINED_FUNCTION_23_26();
  get_parm(v24, v25, v26, -6);
  fence_36(v0, 0, &null_str_13);
  v27 = OUTLINED_FUNCTION_13_34();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_5_36();
  if (!lpta_loadp_setscan_r(v29, v30) && !advance_tok(v0))
  {
    v38 = OUTLINED_FUNCTION_13_34();
    bspush_ca_scan(v38, v39);
LABEL_10:
    OUTLINED_FUNCTION_34_19();
    v40 = OUTLINED_FUNCTION_6_35();
    if (!test_ptr(v40))
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  while (2)
  {
    v31 = OUTLINED_FUNCTION_13_34();
    starttest(v31, v32);
    v33 = OUTLINED_FUNCTION_13_34();
    bspush_ca(v33);
    v34 = OUTLINED_FUNCTION_16_31();
    if (lpta_loadp_setscan_r(v34, v35))
    {
      goto LABEL_11;
    }

    v36 = OUTLINED_FUNCTION_13_34();
    bspush_ca_scan(v36, v37);
LABEL_19:
    v47 = OUTLINED_FUNCTION_2_38();
    v50 = 10;
LABEL_22:
    if (testFldeq(v47, v48, v49, v50))
    {
      goto LABEL_11;
    }

LABEL_23:
    if (advance_tok(v0))
    {
LABEL_11:
      v41 = *(v0 + 104);
      if (v41)
      {
        v42 = OUTLINED_FUNCTION_21_27(v41);
      }

      else
      {
        v43 = OUTLINED_FUNCTION_31_21();
        v42 = vback(v43, v44);
      }

      switch(v42)
      {
        case 1:
          continue;
        case 2:
          if (!advance_tok(v0))
          {
            goto LABEL_10;
          }

          goto LABEL_11;
        case 3:
          goto LABEL_10;
        case 4:
          goto LABEL_25;
        case 6:
          v45 = OUTLINED_FUNCTION_16_31();
          if (!lpta_loadp_setscan_r(v45, v46) && !advance_tok(v0))
          {
            goto LABEL_19;
          }

          goto LABEL_11;
        case 7:
          v51 = OUTLINED_FUNCTION_13_34();
          bspush_ca_scan(v51, v52);
          v47 = OUTLINED_FUNCTION_2_38();
          v50 = 6;
          goto LABEL_22;
        case 8:
          goto LABEL_23;
        case 9:
          v47 = OUTLINED_FUNCTION_2_38();
          v50 = 1;
          goto LABEL_22;
        case 10:
          goto LABEL_24;
        case 11:
          goto LABEL_26;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_24:
  npush_s(v0);
  *(v0 + 3090) = 2;
  npop(v0, (v0 + 3088));
  v53 = OUTLINED_FUNCTION_26_25();
  npush_s(v53);
  *(v0 + 3090) = 3;
  npop(v0, (v0 + 3088));
  v54 = OUTLINED_FUNCTION_26_25();
  npush_s(v54);
  *(v0 + 3090) = 4;
  npop(v0, (v0 + 3088));
LABEL_25:
  OUTLINED_FUNCTION_49_12();
  insert_comma_phrase();
LABEL_26:
  *(v1 + 8) = v105;
  vretproc(v0);
  result = 0;
LABEL_4:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t isit_por_WH(void *a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v75[23] = 0;
  v75[24] = 0;
  OUTLINED_FUNCTION_20_27();
  bzero(v75, v2);
  OUTLINED_FUNCTION_19_28();
  bzero(v79, v3);
  if (!setjmp(v79) && !ventproc(a1, v75, v78, v77, v76, v79))
  {
    v7 = OUTLINED_FUNCTION_29_22();
    OUTLINED_FUNCTION_46_13(v7, v8);
    fence_36(a1, 0, &null_str_13);
    v9 = OUTLINED_FUNCTION_13_34();
    starttest(v9, v10);
    v11 = OUTLINED_FUNCTION_29_22();
    if (!lpta_loadp_setscan_r(v11, v12))
    {
      goto LABEL_9;
    }

LABEL_6:
    v13 = OUTLINED_FUNCTION_8_35();
    starttest(v13, v14);
    v15 = OUTLINED_FUNCTION_16_31();
    if (!lpta_loadp_setscan_r(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_13_34();
      bspush_ca_scan(v17, v18);
      while (1)
      {
LABEL_8:
        v19 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v19, v20);
        v21 = OUTLINED_FUNCTION_2_38();
        v24 = 1;
LABEL_32:
        if (!testFldeq(v21, v22, v23, v24))
        {
LABEL_33:
          if (!advance_tok(a1) && !advanc(a1))
          {
LABEL_9:
            v25 = OUTLINED_FUNCTION_4_36();
            if (!testFldeq(v25, v26, v27, 33) && !advance_tok(a1))
            {
LABEL_11:
              v4 = 0;
              goto LABEL_4;
            }
          }
        }

        do
        {
          while (2)
          {
            v28 = a1[13];
            if (v28)
            {
              v29 = OUTLINED_FUNCTION_21_27(v28);
            }

            else
            {
              v30 = OUTLINED_FUNCTION_31_21();
              v29 = vback(v30, v31);
            }

            switch(v29)
            {
              case 1:
                goto LABEL_6;
              case 2:
                goto LABEL_11;
              case 4:
                v32 = OUTLINED_FUNCTION_13_34();
                bspush_ca_scan(v32, v33);
                v34 = OUTLINED_FUNCTION_2_38();
                if (testFldeq(v34, v35, v36, 5))
                {
                  continue;
                }

                break;
              case 5:
                goto LABEL_8;
              case 6:
                v37 = OUTLINED_FUNCTION_2_38();
                if (testFldeq(v37, v38, v39, 9))
                {
                  continue;
                }

                v40 = OUTLINED_FUNCTION_3_37();
                if (testFldeq(v40, v41, v42, v43))
                {
                  continue;
                }

                v44 = OUTLINED_FUNCTION_12_34();
                if (npush_fld(v44, v45, 5))
                {
                  continue;
                }

                v46 = OUTLINED_FUNCTION_31_21();
                npush_i(v46);
                if (if_testgt(a1, v47, v48, v49, v50, v51, v52, v53))
                {
                  continue;
                }

                break;
              case 7:
                goto LABEL_17;
              case 8:
                v73 = OUTLINED_FUNCTION_13_34();
                bspush_ca_scan(v73, v74);
                v21 = OUTLINED_FUNCTION_4_36();
                v24 = 2;
                goto LABEL_32;
              case 9:
                goto LABEL_33;
              case 10:
                v71 = OUTLINED_FUNCTION_13_34();
                bspush_ca_scan(v71, v72);
                v21 = OUTLINED_FUNCTION_2_38();
                v24 = 5;
                goto LABEL_32;
              case 11:
                v54 = OUTLINED_FUNCTION_2_38();
                if (!testFldeq(v54, v55, v56, 9))
                {
                  v57 = OUTLINED_FUNCTION_3_37();
                  if (!testFldeq(v57, v58, v59, v60))
                  {
                    v61 = OUTLINED_FUNCTION_12_34();
                    if (!npush_fld(v61, v62, 5))
                    {
                      v63 = OUTLINED_FUNCTION_31_21();
                      npush_i(v63);
                      if (!if_testgt(a1, v64, v65, v66, v67, v68, v69, v70))
                      {
                        goto LABEL_33;
                      }
                    }
                  }
                }

                continue;
              default:
                goto LABEL_3;
            }

            break;
          }

LABEL_17:
          ;
        }

        while (advance_tok(a1) || advanc(a1));
      }
    }
  }

LABEL_3:
  v4 = 94;
LABEL_4:
  vretproc(a1);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t isit_por_Alt()
{
  OUTLINED_FUNCTION_15_32();
  v82 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_56_11();
  OUTLINED_FUNCTION_11_34(v1, v2, v3, v4, v5, v6, v7, v8, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79[0], v79[1], v80[0], v80[1]);
  OUTLINED_FUNCTION_19_28();
  bzero(v81, v9);
  if (!setjmp(v81))
  {
    OUTLINED_FUNCTION_52_12();
    if (!OUTLINED_FUNCTION_73_9(v10, v11, v12, v13, v14))
    {
      v15 = OUTLINED_FUNCTION_10_35();
      get_parm(v15, v16, v17, -6);
      v18 = OUTLINED_FUNCTION_29_22();
      OUTLINED_FUNCTION_46_13(v18, v19);
      v20 = OUTLINED_FUNCTION_37_17();
      push_ptr_init(v20, v21);
      v22 = OUTLINED_FUNCTION_27_23();
      push_ptr_init(v22, v23);
      fence_36(v0, 0, &null_str_13);
      v24 = OUTLINED_FUNCTION_13_34();
      startloop(v24, v25);
      v26 = OUTLINED_FUNCTION_18_29();
      lpta_loadpn(v26, v27);
      OUTLINED_FUNCTION_12_34();
      lpta_mover();
      v28 = OUTLINED_FUNCTION_37_17();
      lpta_storep(v28, v29);
      v30 = OUTLINED_FUNCTION_29_22();
      lpta_loadpn(v30, v31);
      OUTLINED_FUNCTION_12_34();
      lpta_mover();
      v32 = OUTLINED_FUNCTION_27_23();
      lpta_storep(v32, v33);
      v34 = OUTLINED_FUNCTION_37_17();
      if (forall_to_test(v34, v35, v79))
      {
        goto LABEL_15;
      }

LABEL_7:
      v39 = OUTLINED_FUNCTION_8_35();
      bspush_ca(v39);
      v40 = OUTLINED_FUNCTION_16_31();
      if (lpta_loadp_setscan_r(v40, v41))
      {
        goto LABEL_15;
      }

      v42 = OUTLINED_FUNCTION_2_38();
      if (testFldeq(v42, v43, v44, 5) || advance_tok(v0))
      {
        goto LABEL_15;
      }

      while (2)
      {
        v45 = OUTLINED_FUNCTION_8_35();
        starttest(v45, v46);
        v47 = OUTLINED_FUNCTION_30_21();
        if (!lpta_loadp_setscan_r(v47, v48))
        {
          OUTLINED_FUNCTION_36_17();
          if (!test_string_s())
          {
LABEL_12:
            v49 = OUTLINED_FUNCTION_13_34();
            if (!test_synch(v49, v50, 1u, v51))
            {
              v36 = 0;
              goto LABEL_6;
            }

LABEL_15:
            v52 = *(v0 + 104);
            if (v52)
            {
              v53 = OUTLINED_FUNCTION_21_27(v52);
            }

            else
            {
              v54 = OUTLINED_FUNCTION_31_21();
              v53 = vback(v54, v55);
            }

            switch(v53)
            {
              case 2:
                continue;
              case 3:
                goto LABEL_14;
              case 4:
                goto LABEL_12;
              case 5:
                goto LABEL_7;
              default:
                goto LABEL_5;
            }
          }
        }

        break;
      }

LABEL_14:
      if (forto_adv_upto_r(v0, 1, 2, 5, 2, v80))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_5:
  v36 = 94;
LABEL_6:
  vretproc(v0);
  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

uint64_t OUTLINED_FUNCTION_6_35()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_11_34(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_22_26(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void OUTLINED_FUNCTION_38_16(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void OUTLINED_FUNCTION_39_15(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void OUTLINED_FUNCTION_46_13(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_48_13(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void OUTLINED_FUNCTION_51_12(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_54_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, char a37, int a38, __int16 a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a9, &a44, &a40, &a37, &a46);
}

void *OUTLINED_FUNCTION_60_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_36(v3, 1, a3);
}

uint64_t OUTLINED_FUNCTION_61_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, char a50, int a51, __int16 a52, char a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, char a59)
{

  return ventproc(v59, a2, &a57, &a53, &a50, &a59);
}

double OUTLINED_FUNCTION_62_10@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  *&result = savescptr(v26, a1, &a26).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_72_9(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_73_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 248);
}

void *fence_37(uint64_t a1)
{
  *(*(a1 + 192) + 8121) = 1;
  result = memset(*(a1 + 264), *(a1 + 288), *(a1 + 288));
  **(a1 + 248) = 2;
  *(*(a1 + 264) + 2) = 0;
  return result;
}

uint64_t strip_nonlex_prefix()
{
  OUTLINED_FUNCTION_1_39();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_41(v3, v4, v5, v6, v7, v8, v9, v10, v61, v68, v75, v82, v89, v96, v103, v110, v117, v124, v131, v138, v145, v152, v159, v166, v173, v180, v187, v194, v201, v208, v215, v222, v229, v235, v241, v246, v251, v255, v259);
  OUTLINED_FUNCTION_5_37(v11, v12, v13, v14, v15, v16, v17, v18, v62, v69, v76, v83, v90, v97, v104, v111, v118, v125, v132, v139, v146, v153, v160, v167, v174, v181, v188, v195, v202, v209, v216, v223, v230, v236, v242, v247, v252, v256, v260, v262, v264, v266, v268, v270);
  v19 = setjmp(v1);
  if (!v19)
  {
    v27 = OUTLINED_FUNCTION_2_39(v19, v20, v21, v22, v23, v24, v25, v26, v63, v70, v77, v84, v91, v98, v105, v112, v119, v126, v133, v140, v147, v154, v161, v168, v175, v182, v189, v196, v203, v210, v217, v224, v231, v237, v243, v248, v253, v257, v261, *v263, v263[4], *v265, *&v265[4], v265[6], v267, SWORD2(v267), SBYTE6(v267), SHIBYTE(v267), v269, v271);
    if (!v27)
    {
      OUTLINED_FUNCTION_6_36(v27, v28, v29, v30, v31, v32, v33, v34, v64, v71, v78, v85, v92, v99, v106, v113, v120, v127, v134, v141, v148, v155, v162, v169, v176, v183, v190, v197, v204, v211, v218, v225, v232, v238, v244, v249, v254, v258);
      OUTLINED_FUNCTION_4_37(v35, v36, v37, v38, v39, v40, v41, v42, v65, v72, v79, v86, v93, v100, v107, v114, v121, v128, v135, v142, v149, v156, v163, v170, v177, v184, v191, v198, v205, v212, v219, v226, v233, v239, v245, v250);
      OUTLINED_FUNCTION_7_36(v43, v44, v45, v46, v47, v48, v49, v50, v66, v73, v80, v87, v94, v101, v108, v115, v122, v129, v136, v143, v150, v157, v164, v171, v178, v185, v192, v199, v206, v213, v220, v227, v234, v240);
      OUTLINED_FUNCTION_3_38(v51, v52, v53, v54, v55, v56, v57, v58, v67, v74, v81, v88, v95, v102, v109, v116, v123, v130, v137, v144, v151, v158, v165, v172, v179, v186, v193, v200, v207, v214, v221, v228);
      fence_37(v0);
    }
  }

  vretproc(v0);
  v59 = *MEMORY[0x277D85DE8];
  return 94;
}

uint64_t strip_prod_prefix()
{
  OUTLINED_FUNCTION_1_39();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_41(v3, v4, v5, v6, v7, v8, v9, v10, v61, v68, v75, v82, v89, v96, v103, v110, v117, v124, v131, v138, v145, v152, v159, v166, v173, v180, v187, v194, v201, v208, v215, v222, v229, v235, v241, v246, v251, v255, v259);
  OUTLINED_FUNCTION_5_37(v11, v12, v13, v14, v15, v16, v17, v18, v62, v69, v76, v83, v90, v97, v104, v111, v118, v125, v132, v139, v146, v153, v160, v167, v174, v181, v188, v195, v202, v209, v216, v223, v230, v236, v242, v247, v252, v256, v260, v262, v264, v266, v268, v270);
  v19 = setjmp(v1);
  if (!v19)
  {
    v27 = OUTLINED_FUNCTION_2_39(v19, v20, v21, v22, v23, v24, v25, v26, v63, v70, v77, v84, v91, v98, v105, v112, v119, v126, v133, v140, v147, v154, v161, v168, v175, v182, v189, v196, v203, v210, v217, v224, v231, v237, v243, v248, v253, v257, v261, *v263, v263[4], *v265, *&v265[4], v265[6], v267, SWORD2(v267), SBYTE6(v267), SHIBYTE(v267), v269, v271);
    if (!v27)
    {
      OUTLINED_FUNCTION_6_36(v27, v28, v29, v30, v31, v32, v33, v34, v64, v71, v78, v85, v92, v99, v106, v113, v120, v127, v134, v141, v148, v155, v162, v169, v176, v183, v190, v197, v204, v211, v218, v225, v232, v238, v244, v249, v254, v258);
      OUTLINED_FUNCTION_4_37(v35, v36, v37, v38, v39, v40, v41, v42, v65, v72, v79, v86, v93, v100, v107, v114, v121, v128, v135, v142, v149, v156, v163, v170, v177, v184, v191, v198, v205, v212, v219, v226, v233, v239, v245, v250);
      OUTLINED_FUNCTION_7_36(v43, v44, v45, v46, v47, v48, v49, v50, v66, v73, v80, v87, v94, v101, v108, v115, v122, v129, v136, v143, v150, v157, v164, v171, v178, v185, v192, v199, v206, v213, v220, v227, v234, v240);
      OUTLINED_FUNCTION_3_38(v51, v52, v53, v54, v55, v56, v57, v58, v67, v74, v81, v88, v95, v102, v109, v116, v123, v130, v137, v144, v151, v158, v165, v172, v179, v186, v193, v200, v207, v214, v221, v228);
      fence_37(v0);
    }
  }

  vretproc(v0);
  v59 = *MEMORY[0x277D85DE8];
  return 94;
}

uint64_t legal_initial_consonants(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 0;
  bzero(v13, 0xB8uLL);
  bzero(v19, 0xC0uLL);
  if (setjmp(v19) || (v2 = ventproc(a1, v13, v18, v17, v16, v19), v2))
  {
    v10 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_3_38(v2, v3, v4, v5, v6, v7, v8, v9, v13[0], v13[1], v13[2], v13[3], v13[4], v13[5], v13[6], v13[7], v13[8], v13[9], v13[10], v13[11], v13[12], v13[13], v13[14], v13[15], v13[16], v13[17], v13[18], v13[19], v13[20], v13[21], v13[22], v14);
    fence_37(a1);
    v10 = 0;
  }

  vretproc(a1);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t strip_other_prefix()
{
  OUTLINED_FUNCTION_1_39();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_41(v3, v4, v5, v6, v7, v8, v9, v10, v61, v68, v75, v82, v89, v96, v103, v110, v117, v124, v131, v138, v145, v152, v159, v166, v173, v180, v187, v194, v201, v208, v215, v222, v229, v235, v241, v246, v251, v255, v259);
  OUTLINED_FUNCTION_5_37(v11, v12, v13, v14, v15, v16, v17, v18, v62, v69, v76, v83, v90, v97, v104, v111, v118, v125, v132, v139, v146, v153, v160, v167, v174, v181, v188, v195, v202, v209, v216, v223, v230, v236, v242, v247, v252, v256, v260, v262, v264, v266, v268, v270);
  v19 = setjmp(v1);
  if (!v19)
  {
    v27 = OUTLINED_FUNCTION_2_39(v19, v20, v21, v22, v23, v24, v25, v26, v63, v70, v77, v84, v91, v98, v105, v112, v119, v126, v133, v140, v147, v154, v161, v168, v175, v182, v189, v196, v203, v210, v217, v224, v231, v237, v243, v248, v253, v257, v261, *v263, v263[4], *v265, *&v265[4], v265[6], v267, SWORD2(v267), SBYTE6(v267), SHIBYTE(v267), v269, v271);
    if (!v27)
    {
      OUTLINED_FUNCTION_6_36(v27, v28, v29, v30, v31, v32, v33, v34, v64, v71, v78, v85, v92, v99, v106, v113, v120, v127, v134, v141, v148, v155, v162, v169, v176, v183, v190, v197, v204, v211, v218, v225, v232, v238, v244, v249, v254, v258);
      OUTLINED_FUNCTION_4_37(v35, v36, v37, v38, v39, v40, v41, v42, v65, v72, v79, v86, v93, v100, v107, v114, v121, v128, v135, v142, v149, v156, v163, v170, v177, v184, v191, v198, v205, v212, v219, v226, v233, v239, v245, v250);
      OUTLINED_FUNCTION_7_36(v43, v44, v45, v46, v47, v48, v49, v50, v66, v73, v80, v87, v94, v101, v108, v115, v122, v129, v136, v143, v150, v157, v164, v171, v178, v185, v192, v199, v206, v213, v220, v227, v234, v240);
      OUTLINED_FUNCTION_3_38(v51, v52, v53, v54, v55, v56, v57, v58, v67, v74, v81, v88, v95, v102, v109, v116, v123, v130, v137, v144, v151, v158, v165, v172, v179, v186, v193, v200, v207, v214, v221, v228);
      fence_37(v0);
    }
  }

  vretproc(v0);
  v59 = *MEMORY[0x277D85DE8];
  return 94;
}

void OUTLINED_FUNCTION_0_41(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  *(v40 - 72) = v39;
  a38 = 0;
  a39 = 0;
  a36 = 0;
  a37 = 0;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_2_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, char a41, int a42, __int16 a43, char a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{

  return ventproc(v50, &a9, &a48, &a44, &a41, &a50);
}

void OUTLINED_FUNCTION_3_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  get_parm(v32, &a32, v33, -6);
}

void OUTLINED_FUNCTION_4_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  get_parm(v36, &a36, v37, -6);
}

void OUTLINED_FUNCTION_5_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{

  bzero(&a44, 0xC0uLL);
}

void OUTLINED_FUNCTION_6_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{

  get_parm(v38, &a38, v39, -6);
}

void OUTLINED_FUNCTION_7_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  get_parm(v34, &a34, v35, -6);
}

void *fence_38(uint64_t a1, int a2, uint64_t a3)
{
  *(*(a1 + 192) + 8121) = a2;
  result = memset(*(a1 + 264), *(a1 + 288), *(a1 + 288));
  for (i = 0; a2 != i; ++i)
  {
    v8 = *(a3 + i);
    *(*(a1 + 248) + i) = v8;
    *(*(a1 + 264) + v8) = i;
  }

  return result;
}

uint64_t strip_suffix()
{
  OUTLINED_FUNCTION_17_31();
  v91 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_40(v5, v6, v7, v8, v9, v10, v11, v12, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v81, v82, v83, v84, v85);
  OUTLINED_FUNCTION_19_29(v13, v14, v15, v16, v17, v18, v19, v20, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90[0]);
  if (setjmp(v4) || (OUTLINED_FUNCTION_3_39(), ventproc(v0, v21, v22, v23, v24, v90)))
  {
    v25 = 94;
  }

  else
  {
    v28 = OUTLINED_FUNCTION_7_37();
    get_parm(v28, v29, v3, -6);
    v30 = OUTLINED_FUNCTION_8_36();
    OUTLINED_FUNCTION_15_33(v30, v31);
    get_parm(v0, &v80, v2, -6);
    fence_38(v0, 0, &null_str_14);
    OUTLINED_FUNCTION_7_37();
    if (strip_mente())
    {
      v32 = OUTLINED_FUNCTION_6_37();
      strip_plural_suffix(v32, v33);
      OUTLINED_FUNCTION_10_36();
      strip_diminutive();
    }

    *(v1 + 8) = v83;
    v25 = 0;
  }

  vretproc(v0);
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t strip_mente()
{
  OUTLINED_FUNCTION_17_31();
  v103 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_40(v5, v6, v7, v8, v9, v10, v11, v12, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v93, v94, v95, v96, v97);
  OUTLINED_FUNCTION_19_29(v13, v14, v15, v16, v17, v18, v19, v20, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102[0]);
  if (setjmp(v4))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_3_39();
  if (ventproc(v0, v21, v22, v23, v24, v102))
  {
    goto LABEL_5;
  }

  get_parm(v0, &v96, v3, -6);
  OUTLINED_FUNCTION_15_33(v0, &v94);
  v25 = OUTLINED_FUNCTION_8_36();
  get_parm(v25, v26, v2, -6);
  fence_38(v0, 0, &null_str_14);
  fence_38(v0, 1, &_MergedGlobals_34);
  starttest(v0, 1);
  v27 = OUTLINED_FUNCTION_8_36();
  if (lpta_loadp_setscan_l(v27, v28) || (OUTLINED_FUNCTION_2_40(), test_string_s()))
  {
LABEL_5:
    vretproc(v0);
    result = 94;
  }

  else
  {
    v31 = 0;
    while (2)
    {
      v32 = OUTLINED_FUNCTION_6_37();
      savescptr(v32, v33, &v94);
      if (!advance_tok(v0) && !advance_tok(v0))
      {
        v34 = OUTLINED_FUNCTION_7_37();
        starttest(v34, v35);
        bspush_ca_boa();
        v36 = OUTLINED_FUNCTION_8_36();
        v38 = lpta_loadp_setscan_l(v36, v37);
LABEL_11:
        v39 = v31;
        if (!v38)
        {
LABEL_12:
          v31 = v39;
          bspush_ca_scan(v0, 6);
          v40 = OUTLINED_FUNCTION_2_40();
          if (!testFldeq(v40, v41, 4, 1) && !advance_tok(v0))
          {
            v31 = 1;
          }
        }
      }

      v42 = v0[13];
      if (v42)
      {
        v43 = OUTLINED_FUNCTION_12_35(v42);
        v31 = v44;
      }

      else
      {
        v43 = vback(v0, v31);
        v31 = 0;
      }

      v39 = v31;
      switch(v43)
      {
        case 2:
          continue;
        case 3:
          v45 = OUTLINED_FUNCTION_5_38();
          if (!one_syllable(v45))
          {
            goto LABEL_5;
          }

          goto LABEL_21;
        case 4:
          bspop_boa(v0);
          goto LABEL_5;
        case 5:
          goto LABEL_12;
        case 6:
          v38 = advance_tok(v0);
          goto LABEL_11;
        case 7:
LABEL_21:
          suffixes(v0, &v94, &v92, &v96);
          goto LABEL_22;
        case 8:
LABEL_22:
          OUTLINED_FUNCTION_5_38();
          restore_antepenult_accent();
          break;
        case 9:
        case 10:
          goto LABEL_23;
        default:
          goto LABEL_5;
      }

      break;
    }

LABEL_23:
    *(v1 + 8) = v95;
    vretproc(v0);
    result = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t strip_plural_suffix(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v40 = 0;
  v41 = 0;
  v39[0] = 0;
  v39[1] = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  bzero(v35, 0xB8uLL);
  bzero(v45, 0xC0uLL);
  if (!setjmp(v45) && !ventproc(a1, v35, v44, v43, v42, v45))
  {
    v4 = OUTLINED_FUNCTION_8_36();
    OUTLINED_FUNCTION_15_33(v4, v5);
    v6 = OUTLINED_FUNCTION_10_36();
    get_parm(v6, v7, v8, -6);
    LOBYTE(v38) = 0;
    LODWORD(v36) = -65533;
    fence_38(a1, 0, &null_str_14);
    v9 = OUTLINED_FUNCTION_2_40();
    fence_38(v9, v10, v11);
    v12 = OUTLINED_FUNCTION_8_36();
    if (!lpta_loadp_setscan_l(v12, v13))
    {
      OUTLINED_FUNCTION_0_42();
      if (!test_string_s())
      {
        while (2)
        {
          v17 = OUTLINED_FUNCTION_8_36();
          savescptr(v17, v18, &v40);
          starttest(a1, 3);
          v19 = OUTLINED_FUNCTION_7_37();
          if (lpta_loadp_setscan_l(v19, v20) || (OUTLINED_FUNCTION_0_42(), test_string_s()))
          {
LABEL_19:
            v30 = OUTLINED_FUNCTION_7_37();
            lpta_rpta_loadp(v30, v31, v39);
            v27 = a1;
            v28 = 1;
            v29 = &unk_2806BC3AD;
          }

          else
          {
LABEL_9:
            savescptr(a1, 4, &v40);
            bspush_ca_scan(a1, 5);
            OUTLINED_FUNCTION_0_42();
LABEL_10:
            if (test_string_s())
            {
              goto LABEL_11;
            }

LABEL_16:
            v23 = OUTLINED_FUNCTION_2_40();
            if (testFldeq(v23, v24, 4, 1) || advance_tok(a1))
            {
LABEL_11:
              v21 = *(a1 + 104);
              if (v21)
              {
                v22 = OUTLINED_FUNCTION_12_35(v21);
              }

              else
              {
                v22 = vback(a1, 0);
              }

              switch(v22)
              {
                case 2:
                  continue;
                case 3:
                  goto LABEL_19;
                case 4:
                  goto LABEL_9;
                case 5:
                  OUTLINED_FUNCTION_0_42();
                  goto LABEL_10;
                case 6:
                  goto LABEL_16;
                case 7:
                  goto LABEL_21;
                default:
                  goto LABEL_5;
              }
            }

            v25 = OUTLINED_FUNCTION_7_37();
            lpta_rpta_loadp(v25, v26, v39);
            v27 = a1;
            v28 = 2;
            v29 = &unk_2806BC3AF;
          }

          break;
        }

        if (!insert_2pt_s(v27, 4u, v28, v29, 0))
        {
LABEL_21:
          v32 = OUTLINED_FUNCTION_7_37();
          lpta_rpta_loadp(v32, v33, v39);
          settvar_s();
          insert_2ptv();
          if (!v34)
          {
            ++*(a1 + 5946);
            *(a2 + 8) = v41;
            v14 = 0;
            goto LABEL_6;
          }
        }

        goto LABEL_11;
      }
    }
  }

LABEL_5:
  v14 = 94;
LABEL_6:
  vretproc(a1);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t strip_diminutive()
{
  OUTLINED_FUNCTION_11_35();
  v77 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_40(v3, v4, v5, v6, v7, v8, v9, v10, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75[0], v75[1]);
  OUTLINED_FUNCTION_9_36();
  if (setjmp(v2))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_3_39();
  if (ventproc(v0, v11, v12, v13, v14, v76))
  {
    goto LABEL_4;
  }

  v15 = OUTLINED_FUNCTION_10_36();
  get_parm(v15, v16, v17, -6);
  v18 = OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_15_33(v18, v19);
  push_ptr_init(v0, &v71);
  fence_38(v0, 0, &null_str_14);
  fence_38(v0, 1, &_MergedGlobals_34);
  starttest(v0, 1);
  v20 = OUTLINED_FUNCTION_6_37();
  if (lpta_loadp_setscan_l(v20, v21))
  {
LABEL_4:
    vretproc(v0);
    result = 94;
  }

  else
  {
    v24 = OUTLINED_FUNCTION_4_38();
    bspush_ca_scan(v24, v25);
    OUTLINED_FUNCTION_0_42();
    v26 = test_string_s();
    v27 = 0;
    v28 = 0;
    if (!v26)
    {
LABEL_7:
      v28 = v27;
      OUTLINED_FUNCTION_2_40();
      v29 = v28;
      if (!test_string_s())
      {
LABEL_8:
        v28 = v29;
        v30 = OUTLINED_FUNCTION_14_33();
        savescptr(v30, v31, v32);
        if (!advance_tok(v0) && !advance_tok(v0))
        {
          v33 = OUTLINED_FUNCTION_4_38();
          starttest(v33, v34);
          OUTLINED_FUNCTION_4_38();
          bspush_ca_boa();
          v35 = OUTLINED_FUNCTION_13_35();
          v37 = lpta_loadp_setscan_l(v35, v36);
          v38 = v29;
          if (!v37)
          {
LABEL_11:
            v28 = v38;
            v39 = OUTLINED_FUNCTION_4_38();
            bspush_ca_scan(v39, v40);
            v41 = OUTLINED_FUNCTION_2_40();
            if (!OUTLINED_FUNCTION_16_32(v41, v42) && !advance_tok(v0))
            {
              v28 = 1;
            }
          }
        }
      }
    }

    v29 = v28;
    while (2)
    {
      v43 = v0[13];
      if (v43)
      {
        v44 = OUTLINED_FUNCTION_12_35(v43);
        v29 = v45;
      }

      else
      {
        v44 = vback(v0, v29);
        v29 = 0;
      }

      v27 = v29;
      v38 = v29;
      switch(v44)
      {
        case 2:
          OUTLINED_FUNCTION_0_42();
          v46 = test_string_s();
          v27 = v29;
          if (!v46)
          {
            goto LABEL_7;
          }

          continue;
        case 3:
          goto LABEL_7;
        case 4:
          goto LABEL_8;
        case 5:
          suffixes(v0, &v71, &v73, v75);
          goto LABEL_25;
        case 6:
          bspop_boa(v0);
          goto LABEL_4;
        case 7:
          goto LABEL_11;
        case 8:
          v47 = advance_tok(v0);
          v38 = v29;
          if (!v47)
          {
            goto LABEL_11;
          }

          continue;
        case 9:
LABEL_25:
          v74 = v72;
          OUTLINED_FUNCTION_5_38();
          if (restore_final_accent())
          {
            goto LABEL_26;
          }

          goto LABEL_27;
        case 10:
LABEL_26:
          OUTLINED_FUNCTION_5_38();
          restore_antepenult_accent();
          break;
        case 11:
        case 12:
          goto LABEL_27;
        default:
          goto LABEL_4;
      }

      break;
    }

LABEL_27:
    *(v1 + 8) = v74;
    vretproc(v0);
    result = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t restore_antepenult_accent()
{
  OUTLINED_FUNCTION_11_35();
  v109 = *MEMORY[0x277D85DE8];
  v104[0] = 0;
  v104[1] = 0;
  v103[2] = 0;
  v103[3] = 0;
  OUTLINED_FUNCTION_1_40(v2, v3, v4, v5, v6, v7, v8, v9, v100[0], v100[1], v100[2], v100[3], v100[4], v100[5], v100[6], v100[7], v100[8], v100[9], v100[10], v100[11], v100[12], v100[13], v100[14], v100[15], v100[16], v100[17], v100[18], v100[19], v100[20], v100[21], v100[22], v101[0], v101[1], v102[0], v102[1], v103[0], v103[1]);
  OUTLINED_FUNCTION_9_36();
  if (setjmp(v1) || ventproc(v0, v100, v107, v106, v105, v108))
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_10_36();
  get_parm(v12, v13, v14, -6);
  v15 = OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_15_33(v15, v16);
  push_ptr_init(v0, v103);
  push_ptr_init(v0, v102);
  push_ptr_init(v0, v101);
  fence_38(v0, 0, &null_str_14);
  v17 = OUTLINED_FUNCTION_18_30();
  fence_38(v17, v18, v19);
  v20 = *(v0 + 5958);
  starttest(v0, 1);
  v21 = OUTLINED_FUNCTION_6_37();
  if (!lpta_loadp_setscan_l(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_4_38();
    bspush_ca_scan(v23, v24);
    v25 = OUTLINED_FUNCTION_4_38();
    bspush_ca_scan(v25, v26);
    OUTLINED_FUNCTION_0_42();
    v27 = test_string_s();
    v28 = v20;
    v29 = v20;
    if (v27)
    {
      goto LABEL_17;
    }

LABEL_7:
    v20 = v28;
    savescptr(v0, 2, v103);
  }

  while (2)
  {
    v30 = OUTLINED_FUNCTION_4_38();
    starttest(v30, v31);
    v32 = OUTLINED_FUNCTION_13_35();
    v34 = lpta_loadp_setscan_l(v32, v33);
    v35 = v20;
    if (!v34)
    {
LABEL_10:
      v29 = v35;
      v36 = OUTLINED_FUNCTION_4_38();
      bspush_ca_scan(v36, v37);
      v38 = OUTLINED_FUNCTION_2_40();
      if (OUTLINED_FUNCTION_16_32(v38, v39))
      {
        goto LABEL_17;
      }

      v40 = advance_tok(v0);
      v41 = v29;
      if (v40)
      {
        goto LABEL_17;
      }

LABEL_12:
      v29 = v41;
      v42 = OUTLINED_FUNCTION_4_38();
      bspush_ca_scan(v42, v43);
      v44 = OUTLINED_FUNCTION_2_40();
      if (!OUTLINED_FUNCTION_16_32(v44, v45))
      {
        v46 = advance_tok(v0);
        v47 = v29;
        if (!v46)
        {
LABEL_14:
          v29 = v47;
          v48 = OUTLINED_FUNCTION_4_38();
          bspush_ca_scan(v48, v49);
LABEL_15:
          v50 = OUTLINED_FUNCTION_14_33();
          savescptr(v50, v51, v52);
          v53 = OUTLINED_FUNCTION_2_40();
          if (OUTLINED_FUNCTION_16_32(v53, v54))
          {
            goto LABEL_17;
          }

          v55 = advance_tok(v0);
          v56 = v29;
          if (v55)
          {
            goto LABEL_17;
          }

LABEL_38:
          v29 = v56;
          savescptr(v0, 12, v102);
          v63 = OUTLINED_FUNCTION_4_38();
          starttest(v63, v64);
          v65 = OUTLINED_FUNCTION_13_35();
          if (!lpta_loadp_setscan_l(v65, v66))
          {
            v78 = OUTLINED_FUNCTION_4_38();
            bspush_ca_scan(v78, v79);
            OUTLINED_FUNCTION_0_42();
            v80 = test_string_s();
            v59 = v29;
            if (v80)
            {
              goto LABEL_17;
            }

LABEL_44:
            v29 = v59;
            v81 = OUTLINED_FUNCTION_4_38();
            bspush_ca_scan(v81, v82);
            OUTLINED_FUNCTION_0_42();
            goto LABEL_49;
          }

LABEL_39:
          v67 = OUTLINED_FUNCTION_4_38();
          starttest(v67, v68);
          v69 = OUTLINED_FUNCTION_13_35();
          if (lpta_loadp_setscan_r(v69, v70))
          {
LABEL_40:
            v71 = OUTLINED_FUNCTION_4_38();
            starttest(v71, v72);
            v73 = OUTLINED_FUNCTION_13_35();
            if (lpta_loadp_setscan_l(v73, v74))
            {
LABEL_41:
              lpta_rpta_loadp(v0, v104, v103);
              v75 = OUTLINED_FUNCTION_2_40();
              v77 = setd_lookup(v75, v76, 58);
              v62 = v29;
              if (v77)
              {
                break;
              }

              goto LABEL_50;
            }

            v86 = OUTLINED_FUNCTION_4_38();
            bspush_ca_scan(v86, v87);
            OUTLINED_FUNCTION_0_42();
            v88 = test_string_s();
            v61 = v29;
            if (v88)
            {
              goto LABEL_17;
            }

LABEL_48:
            v29 = v61;
            OUTLINED_FUNCTION_2_40();
LABEL_49:
            v89 = test_string_s();
            v62 = v29;
            if (v89)
            {
              goto LABEL_17;
            }

            goto LABEL_50;
          }

          v83 = OUTLINED_FUNCTION_4_38();
          bspush_ca_scan(v83, v84);
          OUTLINED_FUNCTION_0_42();
          v85 = test_string_s();
          v60 = v29;
          if (v85)
          {
            goto LABEL_17;
          }

LABEL_54:
          v29 = v60;
          lpta_rpta_loadp(v0, v104, v103);
          v98 = OUTLINED_FUNCTION_2_40();
          if (!setd_lookup(v98, v99, 59))
          {
            v62 = *(v0 + 5962);
LABEL_50:
            v29 = v62;
            v90 = OUTLINED_FUNCTION_4_38();
            starttest(v90, v91);
            if (*(v0 + 5958) == v29)
            {
              v92 = OUTLINED_FUNCTION_14_33();
              lpta_rpta_loadp(v92, v93, v94);
              OUTLINED_FUNCTION_2_40();
              if (!mark_s())
              {
                goto LABEL_53;
              }
            }

LABEL_52:
            v95 = OUTLINED_FUNCTION_14_33();
            lpta_rpta_loadp(v95, v96, v97);
            OUTLINED_FUNCTION_2_40();
            if (!mark_s())
            {
LABEL_53:
              *(v0 + 5954) = *(v0 + 1010);
              vretproc(v0);
              result = 0;
              goto LABEL_4;
            }
          }
        }
      }

LABEL_17:
      v57 = *(v0 + 104);
      if (v57)
      {
        v58 = OUTLINED_FUNCTION_12_35(v57);
      }

      else
      {
        v58 = vback(v0, 0);
      }

      v28 = v29;
      v35 = v29;
      v41 = v29;
      v47 = v29;
      v59 = v29;
      v60 = v29;
      v61 = v29;
      v62 = v29;
      switch(v58)
      {
        case 1:
          v20 = v29;
          continue;
        case 2:
          goto LABEL_7;
        case 3:
          OUTLINED_FUNCTION_0_42();
          if (test_string_s())
          {
            goto LABEL_17;
          }

          v28 = v29;
          goto LABEL_7;
        case 5:
          goto LABEL_10;
        case 6:
          if (advance_tok(v0))
          {
            goto LABEL_17;
          }

          v35 = v29;
          goto LABEL_10;
        case 7:
          goto LABEL_12;
        case 8:
          if (advance_tok(v0))
          {
            goto LABEL_17;
          }

          v41 = v29;
          goto LABEL_12;
        case 9:
          goto LABEL_14;
        case 10:
          if (advance_tok(v0))
          {
            goto LABEL_17;
          }

          v47 = v29;
          goto LABEL_14;
        case 11:
          goto LABEL_15;
        case 12:
          v56 = v29;
          goto LABEL_38;
        case 13:
          goto LABEL_39;
        case 14:
          OUTLINED_FUNCTION_0_42();
          if (test_string_s())
          {
            goto LABEL_17;
          }

          v59 = v29;
          goto LABEL_44;
        case 15:
          goto LABEL_44;
        case 16:
          OUTLINED_FUNCTION_0_42();
          if (test_string_s())
          {
            goto LABEL_17;
          }

          v62 = v29;
          goto LABEL_50;
        case 17:
        case 18:
        case 26:
          goto LABEL_50;
        case 19:
          goto LABEL_40;
        case 20:
          OUTLINED_FUNCTION_0_42();
          if (test_string_s())
          {
            goto LABEL_17;
          }

          v60 = v29;
          goto LABEL_54;
        case 21:
          goto LABEL_54;
        case 22:
          goto LABEL_41;
        case 23:
          OUTLINED_FUNCTION_0_42();
          if (test_string_s())
          {
            goto LABEL_17;
          }

          v61 = v29;
          goto LABEL_48;
        case 24:
          goto LABEL_48;
        case 27:
          goto LABEL_52;
        case 28:
          goto LABEL_53;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_3:
  vretproc(v0);
  result = 94;
LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t restore_final_accent()
{
  OUTLINED_FUNCTION_11_35();
  v90 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_40(v2, v3, v4, v5, v6, v7, v8, v9, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86[0], v86[1], v87[0], v87[1], v87[2], v88);
  OUTLINED_FUNCTION_9_36();
  if (setjmp(v1))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_3_39();
  if (ventproc(v0, v10, v11, v12, v13, v89))
  {
    goto LABEL_4;
  }

  v14 = OUTLINED_FUNCTION_10_36();
  get_parm(v14, v15, v16, -6);
  v17 = OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_15_33(v17, v18);
  push_ptr_init(v0, v86);
  fence_38(v0, 0, &null_str_14);
  v19 = OUTLINED_FUNCTION_18_30();
  fence_38(v19, v20, v21);
  starttest(v0, 1);
  v22 = OUTLINED_FUNCTION_6_37();
  if (lpta_loadp_setscan_l(v22, v23))
  {
    goto LABEL_4;
  }

  v27 = OUTLINED_FUNCTION_4_38();
  bspush_ca_scan(v27, v28);
  OUTLINED_FUNCTION_18_30();
  v29 = test_string_s();
  v30 = 0;
  v31 = 0;
  if (v29)
  {
LABEL_15:
    v32 = v31;
    while (2)
    {
      v57 = *(v0 + 104);
      if (v57)
      {
        v58 = OUTLINED_FUNCTION_12_35(v57);
        v32 = v59;
      }

      else
      {
        v58 = vback(v0, v32);
        v32 = 0;
      }

      v30 = v32;
      v51 = v32;
      v48 = v32;
      switch(v58)
      {
        case 2:
          OUTLINED_FUNCTION_18_30();
          v60 = test_string_s();
          v30 = v32;
          if (!v60)
          {
            break;
          }

          continue;
        case 3:
          goto LABEL_7;
        case 4:
          goto LABEL_8;
        case 5:
          bspush_nboa(v0);
          *(v0 + 136) = 1;
          *(v0 + 112) = v88;
          *(v0 + 128) = 0;
          v62 = test_ptr(v0);
          v48 = v32;
          if (!v62)
          {
            goto LABEL_9;
          }

          continue;
        case 6:
          bspop_boa(v0);
          v61 = advance_tok(v0);
          v51 = v32;
          if (!v61)
          {
            goto LABEL_12;
          }

          continue;
        case 7:
          goto LABEL_12;
        case 8:
        case 10:
          goto LABEL_9;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

LABEL_7:
  v32 = v30;
  v33 = OUTLINED_FUNCTION_10_36();
  savescptr(v33, v34, v35);
  v36 = OUTLINED_FUNCTION_4_38();
  starttest(v36, v37);
  v38 = OUTLINED_FUNCTION_6_37();
  if (!lpta_loadp_setscan_l(v38, v39))
  {
    bspush_boa(v0);
    v51 = v32;
LABEL_12:
    v52 = v51;
    v53 = OUTLINED_FUNCTION_4_38();
    bspush_ca_scan(v53, v54);
    OUTLINED_FUNCTION_4_38();
    bspush_ca_scan_boa();
    v55 = OUTLINED_FUNCTION_2_40();
    if (OUTLINED_FUNCTION_16_32(v55, v56))
    {
      v31 = v52;
    }

    else
    {
      v31 = 1;
    }

    goto LABEL_15;
  }

LABEL_8:
  v40 = OUTLINED_FUNCTION_4_38();
  starttest(v40, v41);
  v42 = OUTLINED_FUNCTION_5_38();
  lpta_rpta_loadp(v42, v43, v44);
  v45 = OUTLINED_FUNCTION_2_40();
  v47 = setd_lookup(v45, v46, 60);
  v48 = v32;
  if (!v47)
  {
LABEL_9:
    v49 = v48;
    lpta_rpta_loadp(v0, v86, v87);
    OUTLINED_FUNCTION_2_40();
    v50 = mark_s();
    v31 = v49;
    if (!v50)
    {
      v24 = 0;
      *(v0 + 5954) = *(v0 + 1018);
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_4:
  v24 = 94;
LABEL_5:
  vretproc(v0);
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

void OUTLINED_FUNCTION_1_40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  a36 = 0;
  a37 = 0;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_9_36()
{

  bzero((v0 - 248), 0xC0uLL);
}

void OUTLINED_FUNCTION_15_33(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

BOOL OUTLINED_FUNCTION_16_32(uint64_t a1, unsigned int a2)
{

  return testFldeq(a1, a2, 4, 1);
}

void OUTLINED_FUNCTION_19_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{

  bzero(&a42, 0xC0uLL);
}

uint64_t print_por_SPR(void *a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_38(a1, a2, a3, a4, a5, a6, a7, a8, v73, v79, v85, v91, v97, v103, v109, v115, v121, v127, v133, v139, v145, v151, v157, v163, v169, v175, v181, v187, v193, v199, v205, v211, v212, v213, v214);
  OUTLINED_FUNCTION_9_37(v12, v13, v14, v15, v16, v17, v18, v19, v74, v80, v86, v92, v98, v104, v110, v116, v122, v128, v134, v140, v146, v152, v158, v164, v170, v176, v182, v188, v194, v200, v206, v211, v212, v213, v214, v215, v216, v217, v218, v219);
  v20 = setjmp(v8);
  if (!v20)
  {
    v28 = OUTLINED_FUNCTION_7_38(v20, v21, v22, v23, v24, v25, v26, v27, v75, v81, v87, v93, v99, v105, v111, v117, v123, v129, v135, v141, v147, v153, v159, v165, v171, v177, v183, v189, v195, v201, v207, v211, v212, v213, v214, v215, SBYTE4(v215), v216, SWORD2(v216), SBYTE6(v216), v217, SWORD2(v217), SBYTE6(v217), SHIBYTE(v217), v218, v219);
    if (!v28)
    {
      OUTLINED_FUNCTION_8_37(v28, v29, v30, v31, v32, v33, v34, v35, v76, v82, v88, v94, v100, v106, v112, v118, v124, v130, v136, v142, v148, v154, v160, v166, v172, v178, v184, v190, v196, v202, v208, v211, v212, v213);
      OUTLINED_FUNCTION_10_37(v39, v40, v41, v42, v43, v44, v45, v46, v77, v83, v89, v95, v101, v107, v113, v119, v125, v131, v137, v143, v149, v155, v161, v167, v173, v179, v185, v191, v197, v203, v209, v211);
      fence_39(a1);
      if (lpta_loadp_setscan_r(a1, v8) || (OUTLINED_FUNCTION_1_41(), test_string_s()))
      {
        while (2)
        {
          v47 = OUTLINED_FUNCTION_5_39();
          if (lpta_loadp_setscan_r(v47, v48) || (OUTLINED_FUNCTION_1_41(), test_string_s()))
          {
LABEL_9:
            v49 = OUTLINED_FUNCTION_5_39();
            if (lpta_loadp_setscan_r(v49, v50) || (OUTLINED_FUNCTION_1_41(), test_string_s()))
            {
LABEL_11:
              v51 = OUTLINED_FUNCTION_5_39();
              if (lpta_loadp_setscan_r(v51, v52) || (OUTLINED_FUNCTION_1_41(), test_string_s()))
              {
LABEL_13:
                v53 = OUTLINED_FUNCTION_5_39();
                if (lpta_loadp_setscan_r(v53, v54) || (OUTLINED_FUNCTION_1_41(), test_string_s()))
                {
LABEL_15:
                  v55 = OUTLINED_FUNCTION_5_39();
                  if (lpta_loadp_setscan_r(v55, v56) || (OUTLINED_FUNCTION_1_41(), test_string_s()))
                  {
LABEL_17:
                    starttest(a1, 8);
                    v57 = OUTLINED_FUNCTION_5_39();
                    if (lpta_loadp_setscan_r(v57, v58))
                    {
LABEL_25:
                      starttest(a1, 10);
                      v68 = OUTLINED_FUNCTION_5_39();
                      if (lpta_loadp_setscan_r(v68, v69))
                      {
LABEL_30:
                        v71 = OUTLINED_FUNCTION_5_39();
                        v67 = lpta_loadp_setscan_r(v71, v72);
                        if (v67 || (OUTLINED_FUNCTION_1_41(), v67 = test_string_s(), v67))
                        {
LABEL_32:
                          OUTLINED_FUNCTION_3_40(v67, v59, v60, v61, v62, v63, v64, v65, v78, v84, v90, v96, v102, v108, v114, v120, v126, v132, v138, v144, v150, v156, v162, v168, v174, v180, v186, v192, v198, v204, v210, v211, v212, v213);
                          print_stream(a1, 8, 4, 0, &unk_26E7817DA);
                        }

                        goto LABEL_36;
                      }

                      if (testFldeq(a1, 4u, 10, 2) || advance_tok(a1) || advance_tok(a1))
                      {
LABEL_21:
                        v66 = a1[13];
                        if (v66)
                        {
                          a1[13] = 0;
                          v67 = v66;
                        }

                        else
                        {
                          v67 = vback(a1, 0);
                        }

                        switch(v67)
                        {
                          case 1:
                            continue;
                          case 2:
                            goto LABEL_36;
                          case 3:
                            goto LABEL_9;
                          case 4:
                            goto LABEL_11;
                          case 5:
                            goto LABEL_13;
                          case 6:
                            goto LABEL_15;
                          case 7:
                            goto LABEL_17;
                          case 8:
                            goto LABEL_25;
                          case 9:
                            goto LABEL_34;
                          case 10:
                            goto LABEL_30;
                          case 11:
                            break;
                          case 12:
                            goto LABEL_32;
                          default:
                            goto LABEL_3;
                        }
                      }

                      savescptr(a1, 11, &v211);
                      v70 = "J";
                    }

                    else
                    {
                      if (testFldeq(a1, 4u, 10, 1) || advance_tok(a1) || advance_tok(a1))
                      {
                        goto LABEL_21;
                      }

LABEL_34:
                      savescptr(a1, 9, &v211);
                      v70 = "C";
                    }
                  }

                  else
                  {
                    v70 = "'ly'";
                  }
                }

                else
                {
                  v70 = "'u~'";
                }
              }

              else
              {
                v70 = "'o~'";
              }
            }

            else
            {
              v70 = "'i~'";
            }
          }

          else
          {
            v70 = "'e~'";
          }

          break;
        }
      }

      else
      {
        v70 = "'a~'";
      }

      print_lit(a1, 8, v70);
LABEL_36:
      *(a3 + 8) = v212;
      v36 = 0;
      goto LABEL_4;
    }
  }

LABEL_3:
  v36 = 94;
LABEL_4:
  vretproc(a1);
  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

uint64_t insert_por_spr_phone(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_38(a1, a2, a3, a4, a5, a6, a7, a8, v547, v591, v635, v679, v723, v767, v811, v855, v899, v943, v987, v1031, v1075, v1119, v1163, v1207, v1251, v1295, v1339, v1383, v1427, v1471, v1515, v1559, v1603, v1646, v1688);
  OUTLINED_FUNCTION_9_37(v11, v12, v13, v14, v15, v16, v17, v18, v548, v592, v636, v680, v724, v768, v812, v856, v900, v944, v988, v1032, v1076, v1120, v1164, v1208, v1252, v1296, v1340, v1384, v1428, v1472, v1516, v1560, v1604, v1647, v1689, v1691, v1693, v1695, v1697, v1699);
  v19 = setjmp(v8);
  if (v19)
  {
    goto LABEL_3;
  }

  v27 = OUTLINED_FUNCTION_7_38(v19, v20, v21, v22, v23, v24, v25, v26, v549, v593, v637, v681, v725, v769, v813, v857, v901, v945, v989, v1033, v1077, v1121, v1165, v1209, v1253, v1297, v1341, v1385, v1429, v1473, v1517, v1561, v1605, v1648, v1690, *v1692, v1692[4], *v1694, *&v1694[4], v1694[6], v1696, SWORD2(v1696), SBYTE6(v1696), SHIBYTE(v1696), v1698, v1700);
  if (v27)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_8_37(v27, v28, v29, v30, v31, v32, v33, v34, v550, v594, v638, v682, v726, v770, v814, v858, v902, v946, v990, v1034, v1078, v1122, v1166, v1210, v1254, v1298, v1342, v1386, v1430, v1474, v1518, v1562, v1606, v1649);
  OUTLINED_FUNCTION_10_37(v37, v38, v39, v40, v41, v42, v43, v44, v551, v595, v639, v683, v727, v771, v815, v859, v903, v947, v991, v1035, v1079, v1123, v1167, v1211, v1255, v1299, v1343, v1387, v1431, v1475, v1519, v1563);
  fence_39(a1);
  inserted = lpta_loadp_setscan_r(a1, v8);
  if (!inserted)
  {
    OUTLINED_FUNCTION_2_41();
    inserted = test_string_s();
    if (!inserted)
    {
      inserted = OUTLINED_FUNCTION_0_43(inserted, v46, v47, v48, v49, v50, v51, v52, v552, v596, v640, v684, v728, v772, v816, v860, v904, v948, v992, v1036, v1080, v1124, v1168, v1212, v1256, v1300, v1344, v1388, v1432, v1476, v1520, v1564, v1607);
      if (!inserted)
      {
        OUTLINED_FUNCTION_3_40(inserted, v46, v47, v48, v49, v50, v51, v52, v552, v596, v640, v684, v728, v772, v816, v860, v904, v948, v992, v1036, v1080, v1124, v1168, v1212, v1256, v1300, v1344, v1388, v1432, v1476, v1520, v1564, v1607, v1650);
        v53 = OUTLINED_FUNCTION_1_41();
        inserted = insert_2pt_s(v53, v54, v55, v56, v57);
        if (!inserted)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v58 = OUTLINED_FUNCTION_4_39(inserted, v46, v47, v48, v49, v50, v51, v52, v552, v596, v640, v684, v728, v772, v816, v860, v904, v948, v992, v1036, v1080, v1124, v1168, v1212, v1256, v1300, v1344, v1388, v1432, v1476, v1520, v1564, v1607, v1650);
  if (!v58)
  {
    OUTLINED_FUNCTION_2_41();
    v58 = test_string_s();
    if (!v58)
    {
      v58 = OUTLINED_FUNCTION_0_43(v58, v59, v60, v61, v62, v63, v64, v65, v553, v597, v641, v685, v729, v773, v817, v861, v905, v949, v993, v1037, v1081, v1125, v1169, v1213, v1257, v1301, v1345, v1389, v1433, v1477, v1521, v1565, v1608);
      if (!v58)
      {
        OUTLINED_FUNCTION_3_40(v58, v59, v60, v61, v62, v63, v64, v65, v553, v597, v641, v685, v729, v773, v817, v861, v905, v949, v993, v1037, v1081, v1125, v1169, v1213, v1257, v1301, v1345, v1389, v1433, v1477, v1521, v1565, v1608, v1651);
        v66 = OUTLINED_FUNCTION_1_41();
        v58 = insert_2pt_s(v66, v67, v68, v69, v70);
        if (!v58)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v71 = OUTLINED_FUNCTION_4_39(v58, v59, v60, v61, v62, v63, v64, v65, v553, v597, v641, v685, v729, v773, v817, v861, v905, v949, v993, v1037, v1081, v1125, v1169, v1213, v1257, v1301, v1345, v1389, v1433, v1477, v1521, v1565, v1608, v1651);
  if (!v71)
  {
    OUTLINED_FUNCTION_2_41();
    v71 = test_string_s();
    if (!v71)
    {
      v71 = OUTLINED_FUNCTION_0_43(v71, v72, v73, v74, v75, v76, v77, v78, v554, v598, v642, v686, v730, v774, v818, v862, v906, v950, v994, v1038, v1082, v1126, v1170, v1214, v1258, v1302, v1346, v1390, v1434, v1478, v1522, v1566, v1609);
      if (!v71)
      {
        OUTLINED_FUNCTION_3_40(v71, v72, v73, v74, v75, v76, v77, v78, v554, v598, v642, v686, v730, v774, v818, v862, v906, v950, v994, v1038, v1082, v1126, v1170, v1214, v1258, v1302, v1346, v1390, v1434, v1478, v1522, v1566, v1609, v1652);
        v79 = OUTLINED_FUNCTION_1_41();
        v71 = insert_2pt_s(v79, v80, v81, v82, v83);
        if (!v71)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v84 = OUTLINED_FUNCTION_4_39(v71, v72, v73, v74, v75, v76, v77, v78, v554, v598, v642, v686, v730, v774, v818, v862, v906, v950, v994, v1038, v1082, v1126, v1170, v1214, v1258, v1302, v1346, v1390, v1434, v1478, v1522, v1566, v1609, v1652);
  if (!v84)
  {
    OUTLINED_FUNCTION_2_41();
    v84 = test_string_s();
    if (!v84)
    {
      v84 = OUTLINED_FUNCTION_0_43(v84, v85, v86, v87, v88, v89, v90, v91, v555, v599, v643, v687, v731, v775, v819, v863, v907, v951, v995, v1039, v1083, v1127, v1171, v1215, v1259, v1303, v1347, v1391, v1435, v1479, v1523, v1567, v1610);
      if (!v84)
      {
        OUTLINED_FUNCTION_3_40(v84, v85, v86, v87, v88, v89, v90, v91, v555, v599, v643, v687, v731, v775, v819, v863, v907, v951, v995, v1039, v1083, v1127, v1171, v1215, v1259, v1303, v1347, v1391, v1435, v1479, v1523, v1567, v1610, v1653);
        v92 = OUTLINED_FUNCTION_1_41();
        v84 = insert_2pt_s(v92, v93, v94, v95, v96);
        if (!v84)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v97 = OUTLINED_FUNCTION_4_39(v84, v85, v86, v87, v88, v89, v90, v91, v555, v599, v643, v687, v731, v775, v819, v863, v907, v951, v995, v1039, v1083, v1127, v1171, v1215, v1259, v1303, v1347, v1391, v1435, v1479, v1523, v1567, v1610, v1653);
  if (!v97)
  {
    OUTLINED_FUNCTION_2_41();
    v97 = test_string_s();
    if (!v97)
    {
      v97 = OUTLINED_FUNCTION_0_43(v97, v98, v99, v100, v101, v102, v103, v104, v556, v600, v644, v688, v732, v776, v820, v864, v908, v952, v996, v1040, v1084, v1128, v1172, v1216, v1260, v1304, v1348, v1392, v1436, v1480, v1524, v1568, v1611);
      if (!v97)
      {
        OUTLINED_FUNCTION_3_40(v97, v98, v99, v100, v101, v102, v103, v104, v556, v600, v644, v688, v732, v776, v820, v864, v908, v952, v996, v1040, v1084, v1128, v1172, v1216, v1260, v1304, v1348, v1392, v1436, v1480, v1524, v1568, v1611, v1654);
        v105 = OUTLINED_FUNCTION_1_41();
        v97 = insert_2pt_s(v105, v106, v107, v108, v109);
        if (!v97)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v110 = OUTLINED_FUNCTION_4_39(v97, v98, v99, v100, v101, v102, v103, v104, v556, v600, v644, v688, v732, v776, v820, v864, v908, v952, v996, v1040, v1084, v1128, v1172, v1216, v1260, v1304, v1348, v1392, v1436, v1480, v1524, v1568, v1611, v1654);
  if (!v110)
  {
    OUTLINED_FUNCTION_2_41();
    v110 = test_string_s();
    if (!v110)
    {
      v110 = OUTLINED_FUNCTION_0_43(v110, v111, v112, v113, v114, v115, v116, v117, v557, v601, v645, v689, v733, v777, v821, v865, v909, v953, v997, v1041, v1085, v1129, v1173, v1217, v1261, v1305, v1349, v1393, v1437, v1481, v1525, v1569, v1612);
      if (!v110)
      {
        OUTLINED_FUNCTION_3_40(v110, v111, v112, v113, v114, v115, v116, v117, v557, v601, v645, v689, v733, v777, v821, v865, v909, v953, v997, v1041, v1085, v1129, v1173, v1217, v1261, v1305, v1349, v1393, v1437, v1481, v1525, v1569, v1612, v1655);
        v118 = OUTLINED_FUNCTION_1_41();
        v110 = insert_2pt_s(v118, v119, v120, v121, v122);
        if (!v110)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v123 = OUTLINED_FUNCTION_4_39(v110, v111, v112, v113, v114, v115, v116, v117, v557, v601, v645, v689, v733, v777, v821, v865, v909, v953, v997, v1041, v1085, v1129, v1173, v1217, v1261, v1305, v1349, v1393, v1437, v1481, v1525, v1569, v1612, v1655);
  if (!v123)
  {
    OUTLINED_FUNCTION_2_41();
    v123 = test_string_s();
    if (!v123)
    {
      v123 = OUTLINED_FUNCTION_0_43(v123, v124, v125, v126, v127, v128, v129, v130, v558, v602, v646, v690, v734, v778, v822, v866, v910, v954, v998, v1042, v1086, v1130, v1174, v1218, v1262, v1306, v1350, v1394, v1438, v1482, v1526, v1570, v1613);
      if (!v123)
      {
        OUTLINED_FUNCTION_3_40(v123, v124, v125, v126, v127, v128, v129, v130, v558, v602, v646, v690, v734, v778, v822, v866, v910, v954, v998, v1042, v1086, v1130, v1174, v1218, v1262, v1306, v1350, v1394, v1438, v1482, v1526, v1570, v1613, v1656);
        v131 = OUTLINED_FUNCTION_1_41();
        v123 = insert_2pt_s(v131, v132, v133, v134, v135);
        if (!v123)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v136 = OUTLINED_FUNCTION_4_39(v123, v124, v125, v126, v127, v128, v129, v130, v558, v602, v646, v690, v734, v778, v822, v866, v910, v954, v998, v1042, v1086, v1130, v1174, v1218, v1262, v1306, v1350, v1394, v1438, v1482, v1526, v1570, v1613, v1656);
  if (!v136)
  {
    OUTLINED_FUNCTION_2_41();
    v136 = test_string_s();
    if (!v136)
    {
      v136 = OUTLINED_FUNCTION_0_43(v136, v137, v138, v139, v140, v141, v142, v143, v559, v603, v647, v691, v735, v779, v823, v867, v911, v955, v999, v1043, v1087, v1131, v1175, v1219, v1263, v1307, v1351, v1395, v1439, v1483, v1527, v1571, v1614);
      if (!v136)
      {
        OUTLINED_FUNCTION_3_40(v136, v137, v138, v139, v140, v141, v142, v143, v559, v603, v647, v691, v735, v779, v823, v867, v911, v955, v999, v1043, v1087, v1131, v1175, v1219, v1263, v1307, v1351, v1395, v1439, v1483, v1527, v1571, v1614, v1657);
        v144 = OUTLINED_FUNCTION_1_41();
        v136 = insert_2pt_s(v144, v145, v146, v147, v148);
        if (!v136)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v149 = OUTLINED_FUNCTION_4_39(v136, v137, v138, v139, v140, v141, v142, v143, v559, v603, v647, v691, v735, v779, v823, v867, v911, v955, v999, v1043, v1087, v1131, v1175, v1219, v1263, v1307, v1351, v1395, v1439, v1483, v1527, v1571, v1614, v1657);
  if (!v149)
  {
    OUTLINED_FUNCTION_2_41();
    v149 = test_string_s();
    if (!v149)
    {
      v149 = OUTLINED_FUNCTION_0_43(v149, v150, v151, v152, v153, v154, v155, v156, v560, v604, v648, v692, v736, v780, v824, v868, v912, v956, v1000, v1044, v1088, v1132, v1176, v1220, v1264, v1308, v1352, v1396, v1440, v1484, v1528, v1572, v1615);
      if (!v149)
      {
        OUTLINED_FUNCTION_3_40(v149, v150, v151, v152, v153, v154, v155, v156, v560, v604, v648, v692, v736, v780, v824, v868, v912, v956, v1000, v1044, v1088, v1132, v1176, v1220, v1264, v1308, v1352, v1396, v1440, v1484, v1528, v1572, v1615, v1658);
        v157 = OUTLINED_FUNCTION_1_41();
        v149 = insert_2pt_s(v157, v158, v159, v160, v161);
        if (!v149)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v162 = OUTLINED_FUNCTION_4_39(v149, v150, v151, v152, v153, v154, v155, v156, v560, v604, v648, v692, v736, v780, v824, v868, v912, v956, v1000, v1044, v1088, v1132, v1176, v1220, v1264, v1308, v1352, v1396, v1440, v1484, v1528, v1572, v1615, v1658);
  if (!v162)
  {
    OUTLINED_FUNCTION_2_41();
    v162 = test_string_s();
    if (!v162)
    {
      v162 = OUTLINED_FUNCTION_0_43(v162, v163, v164, v165, v166, v167, v168, v169, v561, v605, v649, v693, v737, v781, v825, v869, v913, v957, v1001, v1045, v1089, v1133, v1177, v1221, v1265, v1309, v1353, v1397, v1441, v1485, v1529, v1573, v1616);
      if (!v162)
      {
        OUTLINED_FUNCTION_3_40(v162, v163, v164, v165, v166, v167, v168, v169, v561, v605, v649, v693, v737, v781, v825, v869, v913, v957, v1001, v1045, v1089, v1133, v1177, v1221, v1265, v1309, v1353, v1397, v1441, v1485, v1529, v1573, v1616, v1659);
        v170 = OUTLINED_FUNCTION_1_41();
        v162 = insert_2pt_s(v170, v171, v172, v173, v174);
        if (!v162)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v175 = OUTLINED_FUNCTION_4_39(v162, v163, v164, v165, v166, v167, v168, v169, v561, v605, v649, v693, v737, v781, v825, v869, v913, v957, v1001, v1045, v1089, v1133, v1177, v1221, v1265, v1309, v1353, v1397, v1441, v1485, v1529, v1573, v1616, v1659);
  if (!v175)
  {
    OUTLINED_FUNCTION_2_41();
    v175 = test_string_s();
    if (!v175)
    {
      v175 = OUTLINED_FUNCTION_0_43(v175, v176, v177, v178, v179, v180, v181, v182, v562, v606, v650, v694, v738, v782, v826, v870, v914, v958, v1002, v1046, v1090, v1134, v1178, v1222, v1266, v1310, v1354, v1398, v1442, v1486, v1530, v1574, v1617);
      if (!v175)
      {
        OUTLINED_FUNCTION_3_40(v175, v176, v177, v178, v179, v180, v181, v182, v562, v606, v650, v694, v738, v782, v826, v870, v914, v958, v1002, v1046, v1090, v1134, v1178, v1222, v1266, v1310, v1354, v1398, v1442, v1486, v1530, v1574, v1617, v1660);
        v183 = OUTLINED_FUNCTION_1_41();
        v175 = insert_2pt_s(v183, v184, v185, v186, v187);
        if (!v175)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v188 = OUTLINED_FUNCTION_4_39(v175, v176, v177, v178, v179, v180, v181, v182, v562, v606, v650, v694, v738, v782, v826, v870, v914, v958, v1002, v1046, v1090, v1134, v1178, v1222, v1266, v1310, v1354, v1398, v1442, v1486, v1530, v1574, v1617, v1660);
  if (!v188)
  {
    OUTLINED_FUNCTION_2_41();
    v188 = test_string_s();
    if (!v188)
    {
      v188 = OUTLINED_FUNCTION_0_43(v188, v189, v190, v191, v192, v193, v194, v195, v563, v607, v651, v695, v739, v783, v827, v871, v915, v959, v1003, v1047, v1091, v1135, v1179, v1223, v1267, v1311, v1355, v1399, v1443, v1487, v1531, v1575, v1618);
      if (!v188)
      {
        OUTLINED_FUNCTION_3_40(v188, v189, v190, v191, v192, v193, v194, v195, v563, v607, v651, v695, v739, v783, v827, v871, v915, v959, v1003, v1047, v1091, v1135, v1179, v1223, v1267, v1311, v1355, v1399, v1443, v1487, v1531, v1575, v1618, v1661);
        v196 = OUTLINED_FUNCTION_1_41();
        v188 = insert_2pt_s(v196, v197, v198, v199, v200);
        if (!v188)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v201 = OUTLINED_FUNCTION_4_39(v188, v189, v190, v191, v192, v193, v194, v195, v563, v607, v651, v695, v739, v783, v827, v871, v915, v959, v1003, v1047, v1091, v1135, v1179, v1223, v1267, v1311, v1355, v1399, v1443, v1487, v1531, v1575, v1618, v1661);
  if (!v201)
  {
    OUTLINED_FUNCTION_2_41();
    v201 = test_string_s();
    if (!v201)
    {
      v201 = OUTLINED_FUNCTION_0_43(v201, v202, v203, v204, v205, v206, v207, v208, v564, v608, v652, v696, v740, v784, v828, v872, v916, v960, v1004, v1048, v1092, v1136, v1180, v1224, v1268, v1312, v1356, v1400, v1444, v1488, v1532, v1576, v1619);
      if (!v201)
      {
        OUTLINED_FUNCTION_3_40(v201, v202, v203, v204, v205, v206, v207, v208, v564, v608, v652, v696, v740, v784, v828, v872, v916, v960, v1004, v1048, v1092, v1136, v1180, v1224, v1268, v1312, v1356, v1400, v1444, v1488, v1532, v1576, v1619, v1662);
        v209 = OUTLINED_FUNCTION_1_41();
        v201 = insert_2pt_s(v209, v210, v211, v212, v213);
        if (!v201)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v214 = OUTLINED_FUNCTION_4_39(v201, v202, v203, v204, v205, v206, v207, v208, v564, v608, v652, v696, v740, v784, v828, v872, v916, v960, v1004, v1048, v1092, v1136, v1180, v1224, v1268, v1312, v1356, v1400, v1444, v1488, v1532, v1576, v1619, v1662);
  if (!v214)
  {
    OUTLINED_FUNCTION_2_41();
    v214 = test_string_s();
    if (!v214)
    {
      v214 = OUTLINED_FUNCTION_0_43(v214, v215, v216, v217, v218, v219, v220, v221, v565, v609, v653, v697, v741, v785, v829, v873, v917, v961, v1005, v1049, v1093, v1137, v1181, v1225, v1269, v1313, v1357, v1401, v1445, v1489, v1533, v1577, v1620);
      if (!v214)
      {
        OUTLINED_FUNCTION_3_40(v214, v215, v216, v217, v218, v219, v220, v221, v565, v609, v653, v697, v741, v785, v829, v873, v917, v961, v1005, v1049, v1093, v1137, v1181, v1225, v1269, v1313, v1357, v1401, v1445, v1489, v1533, v1577, v1620, v1663);
        v222 = OUTLINED_FUNCTION_1_41();
        v214 = insert_2pt_s(v222, v223, v224, v225, v226);
        if (!v214)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v227 = OUTLINED_FUNCTION_4_39(v214, v215, v216, v217, v218, v219, v220, v221, v565, v609, v653, v697, v741, v785, v829, v873, v917, v961, v1005, v1049, v1093, v1137, v1181, v1225, v1269, v1313, v1357, v1401, v1445, v1489, v1533, v1577, v1620, v1663);
  if (!v227)
  {
    OUTLINED_FUNCTION_2_41();
    v227 = test_string_s();
    if (!v227)
    {
      v227 = OUTLINED_FUNCTION_0_43(v227, v228, v229, v230, v231, v232, v233, v234, v566, v610, v654, v698, v742, v786, v830, v874, v918, v962, v1006, v1050, v1094, v1138, v1182, v1226, v1270, v1314, v1358, v1402, v1446, v1490, v1534, v1578, v1621);
      if (!v227)
      {
        OUTLINED_FUNCTION_3_40(v227, v228, v229, v230, v231, v232, v233, v234, v566, v610, v654, v698, v742, v786, v830, v874, v918, v962, v1006, v1050, v1094, v1138, v1182, v1226, v1270, v1314, v1358, v1402, v1446, v1490, v1534, v1578, v1621, v1664);
        v235 = OUTLINED_FUNCTION_1_41();
        v227 = insert_2pt_s(v235, v236, v237, v238, v239);
        if (!v227)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v240 = OUTLINED_FUNCTION_4_39(v227, v228, v229, v230, v231, v232, v233, v234, v566, v610, v654, v698, v742, v786, v830, v874, v918, v962, v1006, v1050, v1094, v1138, v1182, v1226, v1270, v1314, v1358, v1402, v1446, v1490, v1534, v1578, v1621, v1664);
  if (!v240)
  {
    OUTLINED_FUNCTION_2_41();
    v240 = test_string_s();
    if (!v240)
    {
      v240 = OUTLINED_FUNCTION_0_43(v240, v241, v242, v243, v244, v245, v246, v247, v567, v611, v655, v699, v743, v787, v831, v875, v919, v963, v1007, v1051, v1095, v1139, v1183, v1227, v1271, v1315, v1359, v1403, v1447, v1491, v1535, v1579, v1622);
      if (!v240)
      {
        OUTLINED_FUNCTION_3_40(v240, v241, v242, v243, v244, v245, v246, v247, v567, v611, v655, v699, v743, v787, v831, v875, v919, v963, v1007, v1051, v1095, v1139, v1183, v1227, v1271, v1315, v1359, v1403, v1447, v1491, v1535, v1579, v1622, v1665);
        v248 = OUTLINED_FUNCTION_1_41();
        v240 = insert_2pt_s(v248, v249, v250, v251, v252);
        if (!v240)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v253 = OUTLINED_FUNCTION_4_39(v240, v241, v242, v243, v244, v245, v246, v247, v567, v611, v655, v699, v743, v787, v831, v875, v919, v963, v1007, v1051, v1095, v1139, v1183, v1227, v1271, v1315, v1359, v1403, v1447, v1491, v1535, v1579, v1622, v1665);
  if (!v253)
  {
    OUTLINED_FUNCTION_2_41();
    v253 = test_string_s();
    if (!v253)
    {
      v253 = OUTLINED_FUNCTION_0_43(v253, v254, v255, v256, v257, v258, v259, v260, v568, v612, v656, v700, v744, v788, v832, v876, v920, v964, v1008, v1052, v1096, v1140, v1184, v1228, v1272, v1316, v1360, v1404, v1448, v1492, v1536, v1580, v1623);
      if (!v253)
      {
        OUTLINED_FUNCTION_3_40(v253, v254, v255, v256, v257, v258, v259, v260, v568, v612, v656, v700, v744, v788, v832, v876, v920, v964, v1008, v1052, v1096, v1140, v1184, v1228, v1272, v1316, v1360, v1404, v1448, v1492, v1536, v1580, v1623, v1666);
        v261 = OUTLINED_FUNCTION_1_41();
        v253 = insert_2pt_s(v261, v262, v263, v264, v265);
        if (!v253)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v266 = OUTLINED_FUNCTION_4_39(v253, v254, v255, v256, v257, v258, v259, v260, v568, v612, v656, v700, v744, v788, v832, v876, v920, v964, v1008, v1052, v1096, v1140, v1184, v1228, v1272, v1316, v1360, v1404, v1448, v1492, v1536, v1580, v1623, v1666);
  if (!v266)
  {
    OUTLINED_FUNCTION_2_41();
    v266 = test_string_s();
    if (!v266)
    {
      v266 = OUTLINED_FUNCTION_0_43(v266, v267, v268, v269, v270, v271, v272, v273, v569, v613, v657, v701, v745, v789, v833, v877, v921, v965, v1009, v1053, v1097, v1141, v1185, v1229, v1273, v1317, v1361, v1405, v1449, v1493, v1537, v1581, v1624);
      if (!v266)
      {
        OUTLINED_FUNCTION_3_40(v266, v267, v268, v269, v270, v271, v272, v273, v569, v613, v657, v701, v745, v789, v833, v877, v921, v965, v1009, v1053, v1097, v1141, v1185, v1229, v1273, v1317, v1361, v1405, v1449, v1493, v1537, v1581, v1624, v1667);
        v274 = OUTLINED_FUNCTION_1_41();
        v266 = insert_2pt_s(v274, v275, v276, v277, v278);
        if (!v266)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v279 = OUTLINED_FUNCTION_4_39(v266, v267, v268, v269, v270, v271, v272, v273, v569, v613, v657, v701, v745, v789, v833, v877, v921, v965, v1009, v1053, v1097, v1141, v1185, v1229, v1273, v1317, v1361, v1405, v1449, v1493, v1537, v1581, v1624, v1667);
  if (!v279)
  {
    OUTLINED_FUNCTION_2_41();
    v279 = test_string_s();
    if (!v279)
    {
      v279 = OUTLINED_FUNCTION_0_43(v279, v280, v281, v282, v283, v284, v285, v286, v570, v614, v658, v702, v746, v790, v834, v878, v922, v966, v1010, v1054, v1098, v1142, v1186, v1230, v1274, v1318, v1362, v1406, v1450, v1494, v1538, v1582, v1625);
      if (!v279)
      {
        OUTLINED_FUNCTION_3_40(v279, v280, v281, v282, v283, v284, v285, v286, v570, v614, v658, v702, v746, v790, v834, v878, v922, v966, v1010, v1054, v1098, v1142, v1186, v1230, v1274, v1318, v1362, v1406, v1450, v1494, v1538, v1582, v1625, v1668);
        v287 = OUTLINED_FUNCTION_1_41();
        v279 = insert_2pt_s(v287, v288, v289, v290, v291);
        if (!v279)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v292 = OUTLINED_FUNCTION_4_39(v279, v280, v281, v282, v283, v284, v285, v286, v570, v614, v658, v702, v746, v790, v834, v878, v922, v966, v1010, v1054, v1098, v1142, v1186, v1230, v1274, v1318, v1362, v1406, v1450, v1494, v1538, v1582, v1625, v1668);
  if (!v292)
  {
    OUTLINED_FUNCTION_2_41();
    v292 = test_string_s();
    if (!v292)
    {
      v292 = OUTLINED_FUNCTION_0_43(v292, v293, v294, v295, v296, v297, v298, v299, v571, v615, v659, v703, v747, v791, v835, v879, v923, v967, v1011, v1055, v1099, v1143, v1187, v1231, v1275, v1319, v1363, v1407, v1451, v1495, v1539, v1583, v1626);
      if (!v292)
      {
        OUTLINED_FUNCTION_3_40(v292, v293, v294, v295, v296, v297, v298, v299, v571, v615, v659, v703, v747, v791, v835, v879, v923, v967, v1011, v1055, v1099, v1143, v1187, v1231, v1275, v1319, v1363, v1407, v1451, v1495, v1539, v1583, v1626, v1669);
        v300 = OUTLINED_FUNCTION_1_41();
        v292 = insert_2pt_s(v300, v301, v302, v303, v304);
        if (!v292)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v305 = OUTLINED_FUNCTION_4_39(v292, v293, v294, v295, v296, v297, v298, v299, v571, v615, v659, v703, v747, v791, v835, v879, v923, v967, v1011, v1055, v1099, v1143, v1187, v1231, v1275, v1319, v1363, v1407, v1451, v1495, v1539, v1583, v1626, v1669);
  if (!v305)
  {
    OUTLINED_FUNCTION_2_41();
    v305 = test_string_s();
    if (!v305)
    {
      v305 = OUTLINED_FUNCTION_0_43(v305, v306, v307, v308, v309, v310, v311, v312, v572, v616, v660, v704, v748, v792, v836, v880, v924, v968, v1012, v1056, v1100, v1144, v1188, v1232, v1276, v1320, v1364, v1408, v1452, v1496, v1540, v1584, v1627);
      if (!v305)
      {
        OUTLINED_FUNCTION_3_40(v305, v306, v307, v308, v309, v310, v311, v312, v572, v616, v660, v704, v748, v792, v836, v880, v924, v968, v1012, v1056, v1100, v1144, v1188, v1232, v1276, v1320, v1364, v1408, v1452, v1496, v1540, v1584, v1627, v1670);
        v313 = OUTLINED_FUNCTION_1_41();
        v305 = insert_2pt_s(v313, v314, v315, v316, v317);
        if (!v305)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v318 = OUTLINED_FUNCTION_4_39(v305, v306, v307, v308, v309, v310, v311, v312, v572, v616, v660, v704, v748, v792, v836, v880, v924, v968, v1012, v1056, v1100, v1144, v1188, v1232, v1276, v1320, v1364, v1408, v1452, v1496, v1540, v1584, v1627, v1670);
  if (!v318)
  {
    OUTLINED_FUNCTION_2_41();
    v318 = test_string_s();
    if (!v318)
    {
      v318 = OUTLINED_FUNCTION_0_43(v318, v319, v320, v321, v322, v323, v324, v325, v573, v617, v661, v705, v749, v793, v837, v881, v925, v969, v1013, v1057, v1101, v1145, v1189, v1233, v1277, v1321, v1365, v1409, v1453, v1497, v1541, v1585, v1628);
      if (!v318)
      {
        OUTLINED_FUNCTION_3_40(v318, v319, v320, v321, v322, v323, v324, v325, v573, v617, v661, v705, v749, v793, v837, v881, v925, v969, v1013, v1057, v1101, v1145, v1189, v1233, v1277, v1321, v1365, v1409, v1453, v1497, v1541, v1585, v1628, v1671);
        v326 = OUTLINED_FUNCTION_1_41();
        v318 = insert_2pt_s(v326, v327, v328, v329, v330);
        if (!v318)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v331 = OUTLINED_FUNCTION_4_39(v318, v319, v320, v321, v322, v323, v324, v325, v573, v617, v661, v705, v749, v793, v837, v881, v925, v969, v1013, v1057, v1101, v1145, v1189, v1233, v1277, v1321, v1365, v1409, v1453, v1497, v1541, v1585, v1628, v1671);
  if (!v331)
  {
    OUTLINED_FUNCTION_2_41();
    v331 = test_string_s();
    if (!v331)
    {
      v331 = OUTLINED_FUNCTION_0_43(v331, v332, v333, v334, v335, v336, v337, v338, v574, v618, v662, v706, v750, v794, v838, v882, v926, v970, v1014, v1058, v1102, v1146, v1190, v1234, v1278, v1322, v1366, v1410, v1454, v1498, v1542, v1586, v1629);
      if (!v331)
      {
        OUTLINED_FUNCTION_3_40(v331, v332, v333, v334, v335, v336, v337, v338, v574, v618, v662, v706, v750, v794, v838, v882, v926, v970, v1014, v1058, v1102, v1146, v1190, v1234, v1278, v1322, v1366, v1410, v1454, v1498, v1542, v1586, v1629, v1672);
        v339 = OUTLINED_FUNCTION_1_41();
        v331 = insert_2pt_s(v339, v340, v341, v342, v343);
        if (!v331)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v344 = OUTLINED_FUNCTION_4_39(v331, v332, v333, v334, v335, v336, v337, v338, v574, v618, v662, v706, v750, v794, v838, v882, v926, v970, v1014, v1058, v1102, v1146, v1190, v1234, v1278, v1322, v1366, v1410, v1454, v1498, v1542, v1586, v1629, v1672);
  if (!v344)
  {
    OUTLINED_FUNCTION_2_41();
    v344 = test_string_s();
    if (!v344)
    {
      v344 = OUTLINED_FUNCTION_0_43(v344, v345, v346, v347, v348, v349, v350, v351, v575, v619, v663, v707, v751, v795, v839, v883, v927, v971, v1015, v1059, v1103, v1147, v1191, v1235, v1279, v1323, v1367, v1411, v1455, v1499, v1543, v1587, v1630);
      if (!v344)
      {
        OUTLINED_FUNCTION_3_40(v344, v345, v346, v347, v348, v349, v350, v351, v575, v619, v663, v707, v751, v795, v839, v883, v927, v971, v1015, v1059, v1103, v1147, v1191, v1235, v1279, v1323, v1367, v1411, v1455, v1499, v1543, v1587, v1630, v1673);
        v352 = OUTLINED_FUNCTION_1_41();
        v344 = insert_2pt_s(v352, v353, v354, v355, v356);
        if (!v344)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v357 = OUTLINED_FUNCTION_4_39(v344, v345, v346, v347, v348, v349, v350, v351, v575, v619, v663, v707, v751, v795, v839, v883, v927, v971, v1015, v1059, v1103, v1147, v1191, v1235, v1279, v1323, v1367, v1411, v1455, v1499, v1543, v1587, v1630, v1673);
  if (!v357)
  {
    OUTLINED_FUNCTION_2_41();
    v357 = test_string_s();
    if (!v357)
    {
      v357 = OUTLINED_FUNCTION_0_43(v357, v358, v359, v360, v361, v362, v363, v364, v576, v620, v664, v708, v752, v796, v840, v884, v928, v972, v1016, v1060, v1104, v1148, v1192, v1236, v1280, v1324, v1368, v1412, v1456, v1500, v1544, v1588, v1631);
      if (!v357)
      {
        OUTLINED_FUNCTION_3_40(v357, v358, v359, v360, v361, v362, v363, v364, v576, v620, v664, v708, v752, v796, v840, v884, v928, v972, v1016, v1060, v1104, v1148, v1192, v1236, v1280, v1324, v1368, v1412, v1456, v1500, v1544, v1588, v1631, v1674);
        v365 = OUTLINED_FUNCTION_1_41();
        v357 = insert_2pt_s(v365, v366, v367, v368, v369);
        if (!v357)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v370 = OUTLINED_FUNCTION_4_39(v357, v358, v359, v360, v361, v362, v363, v364, v576, v620, v664, v708, v752, v796, v840, v884, v928, v972, v1016, v1060, v1104, v1148, v1192, v1236, v1280, v1324, v1368, v1412, v1456, v1500, v1544, v1588, v1631, v1674);
  if (!v370)
  {
    OUTLINED_FUNCTION_2_41();
    v370 = test_string_s();
    if (!v370)
    {
      v370 = OUTLINED_FUNCTION_0_43(v370, v371, v372, v373, v374, v375, v376, v377, v577, v621, v665, v709, v753, v797, v841, v885, v929, v973, v1017, v1061, v1105, v1149, v1193, v1237, v1281, v1325, v1369, v1413, v1457, v1501, v1545, v1589, v1632);
      if (!v370)
      {
        OUTLINED_FUNCTION_3_40(v370, v371, v372, v373, v374, v375, v376, v377, v577, v621, v665, v709, v753, v797, v841, v885, v929, v973, v1017, v1061, v1105, v1149, v1193, v1237, v1281, v1325, v1369, v1413, v1457, v1501, v1545, v1589, v1632, v1675);
        v378 = OUTLINED_FUNCTION_1_41();
        v370 = insert_2pt_s(v378, v379, v380, v381, v382);
        if (!v370)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v383 = OUTLINED_FUNCTION_4_39(v370, v371, v372, v373, v374, v375, v376, v377, v577, v621, v665, v709, v753, v797, v841, v885, v929, v973, v1017, v1061, v1105, v1149, v1193, v1237, v1281, v1325, v1369, v1413, v1457, v1501, v1545, v1589, v1632, v1675);
  if (!v383)
  {
    OUTLINED_FUNCTION_2_41();
    v383 = test_string_s();
    if (!v383)
    {
      v383 = OUTLINED_FUNCTION_0_43(v383, v384, v385, v386, v387, v388, v389, v390, v578, v622, v666, v710, v754, v798, v842, v886, v930, v974, v1018, v1062, v1106, v1150, v1194, v1238, v1282, v1326, v1370, v1414, v1458, v1502, v1546, v1590, v1633);
      if (!v383)
      {
        OUTLINED_FUNCTION_3_40(v383, v384, v385, v386, v387, v388, v389, v390, v578, v622, v666, v710, v754, v798, v842, v886, v930, v974, v1018, v1062, v1106, v1150, v1194, v1238, v1282, v1326, v1370, v1414, v1458, v1502, v1546, v1590, v1633, v1676);
        v391 = OUTLINED_FUNCTION_1_41();
        v383 = insert_2pt_s(v391, v392, v393, v394, v395);
        if (!v383)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v396 = OUTLINED_FUNCTION_4_39(v383, v384, v385, v386, v387, v388, v389, v390, v578, v622, v666, v710, v754, v798, v842, v886, v930, v974, v1018, v1062, v1106, v1150, v1194, v1238, v1282, v1326, v1370, v1414, v1458, v1502, v1546, v1590, v1633, v1676);
  if (!v396)
  {
    OUTLINED_FUNCTION_2_41();
    v396 = test_string_s();
    if (!v396)
    {
      v396 = OUTLINED_FUNCTION_0_43(v396, v397, v398, v399, v400, v401, v402, v403, v579, v623, v667, v711, v755, v799, v843, v887, v931, v975, v1019, v1063, v1107, v1151, v1195, v1239, v1283, v1327, v1371, v1415, v1459, v1503, v1547, v1591, v1634);
      if (!v396)
      {
        OUTLINED_FUNCTION_3_40(v396, v397, v398, v399, v400, v401, v402, v403, v579, v623, v667, v711, v755, v799, v843, v887, v931, v975, v1019, v1063, v1107, v1151, v1195, v1239, v1283, v1327, v1371, v1415, v1459, v1503, v1547, v1591, v1634, v1677);
        v404 = OUTLINED_FUNCTION_1_41();
        v396 = insert_2pt_s(v404, v405, v406, v407, v408);
        if (!v396)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v409 = OUTLINED_FUNCTION_4_39(v396, v397, v398, v399, v400, v401, v402, v403, v579, v623, v667, v711, v755, v799, v843, v887, v931, v975, v1019, v1063, v1107, v1151, v1195, v1239, v1283, v1327, v1371, v1415, v1459, v1503, v1547, v1591, v1634, v1677);
  if (!v409)
  {
    OUTLINED_FUNCTION_2_41();
    v409 = test_string_s();
    if (!v409)
    {
      v409 = OUTLINED_FUNCTION_0_43(v409, v410, v411, v412, v413, v414, v415, v416, v580, v624, v668, v712, v756, v800, v844, v888, v932, v976, v1020, v1064, v1108, v1152, v1196, v1240, v1284, v1328, v1372, v1416, v1460, v1504, v1548, v1592, v1635);
      if (!v409)
      {
        OUTLINED_FUNCTION_3_40(v409, v410, v411, v412, v413, v414, v415, v416, v580, v624, v668, v712, v756, v800, v844, v888, v932, v976, v1020, v1064, v1108, v1152, v1196, v1240, v1284, v1328, v1372, v1416, v1460, v1504, v1548, v1592, v1635, v1678);
        v417 = OUTLINED_FUNCTION_1_41();
        v409 = insert_2pt_s(v417, v418, v419, v420, v421);
        if (!v409)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v422 = OUTLINED_FUNCTION_4_39(v409, v410, v411, v412, v413, v414, v415, v416, v580, v624, v668, v712, v756, v800, v844, v888, v932, v976, v1020, v1064, v1108, v1152, v1196, v1240, v1284, v1328, v1372, v1416, v1460, v1504, v1548, v1592, v1635, v1678);
  if (!v422)
  {
    OUTLINED_FUNCTION_2_41();
    v422 = test_string_s();
    if (!v422)
    {
      v422 = OUTLINED_FUNCTION_0_43(v422, v423, v424, v425, v426, v427, v428, v429, v581, v625, v669, v713, v757, v801, v845, v889, v933, v977, v1021, v1065, v1109, v1153, v1197, v1241, v1285, v1329, v1373, v1417, v1461, v1505, v1549, v1593, v1636);
      if (!v422)
      {
        OUTLINED_FUNCTION_3_40(v422, v423, v424, v425, v426, v427, v428, v429, v581, v625, v669, v713, v757, v801, v845, v889, v933, v977, v1021, v1065, v1109, v1153, v1197, v1241, v1285, v1329, v1373, v1417, v1461, v1505, v1549, v1593, v1636, v1679);
        v430 = OUTLINED_FUNCTION_1_41();
        v422 = insert_2pt_s(v430, v431, v432, v433, v434);
        if (!v422)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v435 = OUTLINED_FUNCTION_4_39(v422, v423, v424, v425, v426, v427, v428, v429, v581, v625, v669, v713, v757, v801, v845, v889, v933, v977, v1021, v1065, v1109, v1153, v1197, v1241, v1285, v1329, v1373, v1417, v1461, v1505, v1549, v1593, v1636, v1679);
  if (!v435)
  {
    OUTLINED_FUNCTION_2_41();
    v435 = test_string_s();
    if (!v435)
    {
      v435 = OUTLINED_FUNCTION_0_43(v435, v436, v437, v438, v439, v440, v441, v442, v582, v626, v670, v714, v758, v802, v846, v890, v934, v978, v1022, v1066, v1110, v1154, v1198, v1242, v1286, v1330, v1374, v1418, v1462, v1506, v1550, v1594, v1637);
      if (!v435)
      {
        OUTLINED_FUNCTION_3_40(v435, v436, v437, v438, v439, v440, v441, v442, v582, v626, v670, v714, v758, v802, v846, v890, v934, v978, v1022, v1066, v1110, v1154, v1198, v1242, v1286, v1330, v1374, v1418, v1462, v1506, v1550, v1594, v1637, v1680);
        v443 = OUTLINED_FUNCTION_1_41();
        v435 = insert_2pt_s(v443, v444, v445, v446, v447);
        if (!v435)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v448 = OUTLINED_FUNCTION_4_39(v435, v436, v437, v438, v439, v440, v441, v442, v582, v626, v670, v714, v758, v802, v846, v890, v934, v978, v1022, v1066, v1110, v1154, v1198, v1242, v1286, v1330, v1374, v1418, v1462, v1506, v1550, v1594, v1637, v1680);
  if (!v448)
  {
    OUTLINED_FUNCTION_2_41();
    v448 = test_string_s();
    if (!v448)
    {
      v448 = OUTLINED_FUNCTION_0_43(v448, v449, v450, v451, v452, v453, v454, v455, v583, v627, v671, v715, v759, v803, v847, v891, v935, v979, v1023, v1067, v1111, v1155, v1199, v1243, v1287, v1331, v1375, v1419, v1463, v1507, v1551, v1595, v1638);
      if (!v448)
      {
        OUTLINED_FUNCTION_3_40(v448, v449, v450, v451, v452, v453, v454, v455, v583, v627, v671, v715, v759, v803, v847, v891, v935, v979, v1023, v1067, v1111, v1155, v1199, v1243, v1287, v1331, v1375, v1419, v1463, v1507, v1551, v1595, v1638, v1681);
        v456 = OUTLINED_FUNCTION_1_41();
        v448 = insert_2pt_s(v456, v457, v458, v459, v460);
        if (!v448)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v461 = OUTLINED_FUNCTION_4_39(v448, v449, v450, v451, v452, v453, v454, v455, v583, v627, v671, v715, v759, v803, v847, v891, v935, v979, v1023, v1067, v1111, v1155, v1199, v1243, v1287, v1331, v1375, v1419, v1463, v1507, v1551, v1595, v1638, v1681);
  if (!v461)
  {
    OUTLINED_FUNCTION_2_41();
    v461 = test_string_s();
    if (!v461)
    {
      v461 = OUTLINED_FUNCTION_0_43(v461, v462, v463, v464, v465, v466, v467, v468, v584, v628, v672, v716, v760, v804, v848, v892, v936, v980, v1024, v1068, v1112, v1156, v1200, v1244, v1288, v1332, v1376, v1420, v1464, v1508, v1552, v1596, v1639);
      if (!v461)
      {
        OUTLINED_FUNCTION_3_40(v461, v462, v463, v464, v465, v466, v467, v468, v584, v628, v672, v716, v760, v804, v848, v892, v936, v980, v1024, v1068, v1112, v1156, v1200, v1244, v1288, v1332, v1376, v1420, v1464, v1508, v1552, v1596, v1639, v1682);
        v469 = OUTLINED_FUNCTION_1_41();
        v461 = insert_2pt_s(v469, v470, v471, v472, v473);
        if (!v461)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v474 = OUTLINED_FUNCTION_4_39(v461, v462, v463, v464, v465, v466, v467, v468, v584, v628, v672, v716, v760, v804, v848, v892, v936, v980, v1024, v1068, v1112, v1156, v1200, v1244, v1288, v1332, v1376, v1420, v1464, v1508, v1552, v1596, v1639, v1682);
  if (!v474)
  {
    OUTLINED_FUNCTION_2_41();
    v474 = test_string_s();
    if (!v474)
    {
      v474 = OUTLINED_FUNCTION_0_43(v474, v475, v476, v477, v478, v479, v480, v481, v585, v629, v673, v717, v761, v805, v849, v893, v937, v981, v1025, v1069, v1113, v1157, v1201, v1245, v1289, v1333, v1377, v1421, v1465, v1509, v1553, v1597, v1640);
      if (!v474)
      {
        OUTLINED_FUNCTION_3_40(v474, v475, v476, v477, v478, v479, v480, v481, v585, v629, v673, v717, v761, v805, v849, v893, v937, v981, v1025, v1069, v1113, v1157, v1201, v1245, v1289, v1333, v1377, v1421, v1465, v1509, v1553, v1597, v1640, v1683);
        v482 = OUTLINED_FUNCTION_1_41();
        v474 = insert_2pt_s(v482, v483, v484, v485, v486);
        if (!v474)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v487 = OUTLINED_FUNCTION_4_39(v474, v475, v476, v477, v478, v479, v480, v481, v585, v629, v673, v717, v761, v805, v849, v893, v937, v981, v1025, v1069, v1113, v1157, v1201, v1245, v1289, v1333, v1377, v1421, v1465, v1509, v1553, v1597, v1640, v1683);
  if (!v487)
  {
    OUTLINED_FUNCTION_2_41();
    v487 = test_string_s();
    if (!v487)
    {
      v487 = OUTLINED_FUNCTION_0_43(v487, v488, v489, v490, v491, v492, v493, v494, v586, v630, v674, v718, v762, v806, v850, v894, v938, v982, v1026, v1070, v1114, v1158, v1202, v1246, v1290, v1334, v1378, v1422, v1466, v1510, v1554, v1598, v1641);
      if (!v487)
      {
        OUTLINED_FUNCTION_3_40(v487, v488, v489, v490, v491, v492, v493, v494, v586, v630, v674, v718, v762, v806, v850, v894, v938, v982, v1026, v1070, v1114, v1158, v1202, v1246, v1290, v1334, v1378, v1422, v1466, v1510, v1554, v1598, v1641, v1684);
        v495 = OUTLINED_FUNCTION_1_41();
        v487 = insert_2pt_s(v495, v496, v497, v498, v499);
        if (!v487)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v500 = OUTLINED_FUNCTION_4_39(v487, v488, v489, v490, v491, v492, v493, v494, v586, v630, v674, v718, v762, v806, v850, v894, v938, v982, v1026, v1070, v1114, v1158, v1202, v1246, v1290, v1334, v1378, v1422, v1466, v1510, v1554, v1598, v1641, v1684);
  if (!v500)
  {
    OUTLINED_FUNCTION_2_41();
    v500 = test_string_s();
    if (!v500)
    {
      v500 = OUTLINED_FUNCTION_0_43(v500, v501, v502, v503, v504, v505, v506, v507, v587, v631, v675, v719, v763, v807, v851, v895, v939, v983, v1027, v1071, v1115, v1159, v1203, v1247, v1291, v1335, v1379, v1423, v1467, v1511, v1555, v1599, v1642);
      if (!v500)
      {
        OUTLINED_FUNCTION_3_40(v500, v501, v502, v503, v504, v505, v506, v507, v587, v631, v675, v719, v763, v807, v851, v895, v939, v983, v1027, v1071, v1115, v1159, v1203, v1247, v1291, v1335, v1379, v1423, v1467, v1511, v1555, v1599, v1642, v1685);
        v508 = OUTLINED_FUNCTION_1_41();
        v500 = insert_2pt_s(v508, v509, v510, v511, v512);
        if (!v500)
        {
          goto LABEL_157;
        }
      }
    }
  }

  v513 = OUTLINED_FUNCTION_4_39(v500, v501, v502, v503, v504, v505, v506, v507, v587, v631, v675, v719, v763, v807, v851, v895, v939, v983, v1027, v1071, v1115, v1159, v1203, v1247, v1291, v1335, v1379, v1423, v1467, v1511, v1555, v1599, v1642, v1685);
  if (!v513)
  {
    OUTLINED_FUNCTION_2_41();
    v513 = test_string_s();
    if (!v513)
    {
      v513 = OUTLINED_FUNCTION_0_43(v513, v514, v515, v516, v517, v518, v519, v520, v588, v632, v676, v720, v764, v808, v852, v896, v940, v984, v1028, v1072, v1116, v1160, v1204, v1248, v1292, v1336, v1380, v1424, v1468, v1512, v1556, v1600, v1643);
      if (!v513)
      {
        OUTLINED_FUNCTION_3_40(v513, v514, v515, v516, v517, v518, v519, v520, v588, v632, v676, v720, v764, v808, v852, v896, v940, v984, v1028, v1072, v1116, v1160, v1204, v1248, v1292, v1336, v1380, v1424, v1468, v1512, v1556, v1600, v1643, v1686);
        v521 = OUTLINED_FUNCTION_1_41();
        v513 = insert_2pt_s(v521, v522, v523, v524, v525);
        if (!v513)
        {
          goto LABEL_157;
        }
      }
    }
  }

  if (OUTLINED_FUNCTION_4_39(v513, v514, v515, v516, v517, v518, v519, v520, v588, v632, v676, v720, v764, v808, v852, v896, v940, v984, v1028, v1072, v1116, v1160, v1204, v1248, v1292, v1336, v1380, v1424, v1468, v1512, v1556, v1600, v1643, v1686) || (OUTLINED_FUNCTION_2_41(), v526 = test_string_s(), v526) || (v534 = OUTLINED_FUNCTION_0_43(v526, v527, v528, v529, v530, v531, v532, v533, v589, v633, v677, v721, v765, v809, v853, v897, v941, v985, v1029, v1073, v1117, v1161, v1205, v1249, v1293, v1337, v1381, v1425, v1469, v1513, v1557, v1601, v1644), v534) || (OUTLINED_FUNCTION_3_40(v534, v535, v536, v537, v538, v539, v540, v541, v590, v634, v678, v722, v766, v810, v854, v898, v942, v986, v1030, v1074, v1118, v1162, v1206, v1250, v1294, v1338, v1382, v1426, v1470, v1514, v1558, v1602, v1645, v1687), v542 = OUTLINED_FUNCTION_1_41(), insert_2pt_s(v542, v543, v544, v545, v546)))
  {
LABEL_3:
    vretproc(a1);
    result = 94;
  }

  else
  {
LABEL_157:
    vretproc(a1);
    result = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return result;
}