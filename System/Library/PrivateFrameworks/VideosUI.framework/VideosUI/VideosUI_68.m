void sub_1E3BA5650()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  if (!v1)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v24(v14);
    v25 = sub_1E41FFC94();
    v26 = sub_1E42067E4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v47 = v28;
      *v27 = 136315138;
      v29 = sub_1E3BA49D8(v7);
      v31 = sub_1E3270FC8(v29, v30, &v47);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1E323F000, v25, v26, "Metrics::no event recording for %s. Required page or dialog data is either missing or set as ignored", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v10 + 8))(v14, v8);
    goto LABEL_18;
  }

  if (v7 - 1 >= 3)
  {
    if (v7)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v32(v17);
      v33 = sub_1E41FFC94();
      v34 = sub_1E42067F4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v47 = v36;
        *v35 = 136315138;
        v37 = sub_1E3BA49D8(v7);
        v39 = sub_1E3270FC8(v37, v38, &v47);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_1E323F000, v33, v34, "No matching metrics recorder for event %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v10 + 8))(v17, v8);
    }

    else if (v5)
    {
      type metadata accessor for Metrics();
      sub_1E3BA5A94(v5, v1);
    }

    else
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v40(v20);
      v41 = sub_1E41FFC94();
      v42 = sub_1E42067E4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v47 = v44;
        *v43 = 136315138;
        v45 = sub_1E3270FC8(0x6973736572706D69, 0xEB00000000736E6FLL, &v47);

        *(v43 + 4) = v45;
        _os_log_impl(&dword_1E323F000, v41, v42, "No impressions data for event %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v10 + 8))(v20, v8);
    }

LABEL_18:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  type metadata accessor for Metrics();
  OUTLINED_FUNCTION_8();
  v22 = (*(v21 + 176))();
  sub_1E3BA5D04(v22, v5, v3, v1);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BA5A94(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *(inited + 32) = 0x6973736572706D69;
    *(inited + 40) = 0xEB00000000736E6FLL;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
    *(inited + 48) = a1;

    v6 = sub_1E4205CB4();
    if (a2)
    {
      sub_1E4205F14();
      OUTLINED_FUNCTION_9_9();

      sub_1E3277E60(inited, v2, a2, &v14);

      inited = v15;
      sub_1E325F748(&v14, &unk_1ECF296E0);
      if (inited)
      {
        v7 = sub_1E4205F14();
        sub_1E3277E60(v7, v8, a2, &v14);

        inited = v15;
        sub_1E325F748(&v14, &unk_1ECF296E0);
        if (inited)
        {
          swift_isUniquelyReferenced_nonNull_native();
          *&v14 = v6;
          OUTLINED_FUNCTION_0_165();
          inited = 0;
          sub_1E394C48C(a2, v9, 0, v10, &v14);
          a2 = 0;
        }
      }
    }

    v11 = [objc_opt_self() sharedInstance];
    v12 = OUTLINED_FUNCTION_11_5();
    sub_1E3744600(v12);
    OUTLINED_FUNCTION_112();

    v13 = sub_1E4205C44();

    if (a2)
    {
      sub_1E3744600(a2);

      a2 = sub_1E4205C44();
    }

    [inited recordImpressions:v13 pageData:a2];
  }
}

void sub_1E3BA5D04(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  if (!a1)
  {
    return;
  }

  v7 = a1;

  v8 = sub_1E3F6ABA4(2);
  sub_1E3277E60(v8, v9, v7, &v107);

  if (*(&v108 + 1))
  {
    if (!OUTLINED_FUNCTION_55_26())
    {
      goto LABEL_11;
    }

    if (v103)
    {

      return;
    }

    v10 = sub_1E3F6ABA4(2);
    v12 = sub_1E327D33C(v10, v11);
    if (v13)
    {
      v14 = v12;
      swift_isUniquelyReferenced_nonNull_native();
      *&v103 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
      OUTLINED_FUNCTION_52_26();
      OUTLINED_FUNCTION_54_23();
      sub_1E329504C((v7[7] + 32 * v14), &v107);
      sub_1E4207664();
    }

    else
    {
      v107 = 0u;
      v108 = 0u;
    }
  }

  sub_1E325F748(&v107, &unk_1ECF296E0);
LABEL_11:
  if (a2)
  {

    v15 = sub_1E3F6ABA4(3);
    sub_1E3277E60(v15, v16, v7, &v107);

    if (*(&v108 + 1))
    {
      if (OUTLINED_FUNCTION_55_26() && (v103 & 1) != 0)
      {
        v17 = sub_1E3F6ABA4(3);
        v19 = sub_1E327D33C(v17, v18);
        if (v20)
        {
          v21 = v19;
          swift_isUniquelyReferenced_nonNull_native();
          *&v103 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
          OUTLINED_FUNCTION_52_26();
          OUTLINED_FUNCTION_54_23();
          sub_1E329504C((v7[7] + 32 * v21), &v107);
          sub_1E4207664();
        }

        else
        {
          v107 = 0u;
          v108 = 0u;
        }

        sub_1E325F748(&v107, &unk_1ECF296E0);
        if (!*(a2 + 16))
        {

          goto LABEL_20;
        }

        v61 = *(a2 + 32);

        sub_1E3277E60(0x6973736572706D69, 0xEB00000000736E6FLL, v61, &v107);
        if (*(&v108 + 1))
        {
          OUTLINED_FUNCTION_58_23(v62, v63, v64, v65, v66, v67, v68, v69, v97, v102, v103, v104, *(&v104 + 1), v105, v106, v107);
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_48_29();
          v78 = OUTLINED_FUNCTION_26_56(v70, v71, v72, v73, v74, v75, v76, v77, v100, v102, v103);
          sub_1E32A87C0(v78, 0x6973736572706D69, 0xEB00000000736E6FLL);
          v7 = v102;
        }

        else
        {
          sub_1E325F748(&v107, &unk_1ECF296E0);
          sub_1E327D33C(0x6973736572706D69, 0xEB00000000736E6FLL);
          if (v79)
          {
            OUTLINED_FUNCTION_112();
            swift_isUniquelyReferenced_nonNull_native();
            v102 = v7;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
            v7 = &v102;
            sub_1E4207644();
            OUTLINED_FUNCTION_50_28();
            sub_1E329504C((v107 + 32 * a2), &v103);
            sub_1E4207664();
          }

          else
          {
            v103 = 0u;
            v104 = 0u;
          }

          sub_1E325F748(&v103, &unk_1ECF296E0);
        }

        a2 = 0xEE007365676E6168;
        sub_1E3277E60(0x4363696D616E7964, 0xEE007365676E6168, v61, &v107);

        if (!*(&v108 + 1))
        {
          sub_1E325F748(&v107, &unk_1ECF296E0);
          sub_1E327D33C(0x4363696D616E7964, 0xEE007365676E6168);
          if (v96)
          {
            OUTLINED_FUNCTION_112();
            swift_isUniquelyReferenced_nonNull_native();
            v102 = v7;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
            v7 = &v102;
            sub_1E4207644();
            OUTLINED_FUNCTION_50_28();
            sub_1E329504C((v107 - 0x3FF193531233D300), &v103);
            sub_1E4207664();
          }

          else
          {
            v103 = 0u;
            v104 = 0u;
          }

          sub_1E325F748(&v103, &unk_1ECF296E0);
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_58_23(v80, v81, v82, v83, v84, v85, v86, v87, v97, v102, v103, v104, *(&v104 + 1), v105, v106, v107);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_48_29();
        v35 = OUTLINED_FUNCTION_26_56(v88, v89, v90, v91, v92, v93, v94, v95, v101, v102, v103);
        v36 = 0x4363696D616E7964;
        v37 = 0xEE007365676E6168;
        goto LABEL_19;
      }
    }

    else
    {
      sub_1E325F748(&v107, &unk_1ECF296E0);
    }

    *(&v108 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
    *&v107 = a2;
    OUTLINED_FUNCTION_58_23(*(&v108 + 1), v22, v23, v24, v25, v26, v27, v28, v97, v102, v103, v104, *(&v104 + 1), v105, v106, v107);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_48_29();
    v35 = OUTLINED_FUNCTION_26_56(v29, 0x6973736572706D69, 0xEB00000000736E6FLL, v30, v31, v32, v33, v34, v98, v102, v103);
LABEL_19:
    sub_1E32A87C0(v35, v36, v37);
    v7 = v102;
  }

LABEL_20:
  if (a3)
  {
    *(&v108 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
    *&v107 = a3;
    OUTLINED_FUNCTION_58_23(*(&v108 + 1), v38, v39, v40, v41, v42, v43, v44, v97, v102, v103, v104, *(&v104 + 1), v105, v106, v107);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_48_29();
    v52 = OUTLINED_FUNCTION_26_56(v45, 0x6E6F697461636F6CLL, v46, v47, v48, v49, v50, v51, v99, v102, v103);
    sub_1E32A87C0(v52, v53, 0xE800000000000000);
    v7 = v102;
  }

  if (a4)
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_9_9();

    sub_1E3277E60(a3, a2, a4, &v107);

    a3 = *(&v108 + 1);
    sub_1E325F748(&v107, &unk_1ECF296E0);
    if (a3)
    {
      v54 = sub_1E4205F14();
      sub_1E3277E60(v54, v55, a4, &v107);

      a3 = *(&v108 + 1);
      sub_1E325F748(&v107, &unk_1ECF296E0);
      if (a3)
      {
        swift_isUniquelyReferenced_nonNull_native();
        *&v107 = v7;
        OUTLINED_FUNCTION_0_165();
        a3 = 0;
        sub_1E394C48C(a4, v56, 0, v57, &v107);
        a4 = 0;
      }
    }
  }

  v58 = [objc_opt_self() sharedInstance];
  v59 = OUTLINED_FUNCTION_11_5();
  sub_1E3744600(v59);
  v60 = sub_1E4205C44();

  if (a4)
  {
    sub_1E3744600(a4);

    a4 = sub_1E4205C44();
  }

  [a3 recordClick:v60 pageData:a4];
}

void sub_1E3BA6408()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 152))();
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() sharedInstance];
    sub_1E3744600(v2);
    OUTLINED_FUNCTION_11_5();

    v37 = sub_1E4205C44();

    [v3 recordDialog_];
  }

  else
  {
    OUTLINED_FUNCTION_111();
    v5 = (*(v4 + 128))();
    if (v5)
    {
      v6 = v5;
      v7 = sub_1E4205F14();
      OUTLINED_FUNCTION_9_94(v7, v8, v9, v10, v11, v12, v13, v14, v36, v39, v41, *(&v41 + 1), v42, v43, v44);

      if (v45)
      {
        if (OUTLINED_FUNCTION_40_6())
        {
          v15 = sub_1E3285D14();
          v16 = *((*MEMORY[0x1E69E7D40] & **v15) + 0x110);
          v17 = *v15;
          v18 = v16(v41, *(&v41 + 1));

          if (v18)
          {

            v19 = sub_1E4205F14();
            v21 = v20;
            v45 = MEMORY[0x1E69E6370];
            LOBYTE(v44) = 1;
            sub_1E329504C(&v44, &v41);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v29 = OUTLINED_FUNCTION_26_56(isUniquelyReferenced_nonNull_native, v23, v24, isUniquelyReferenced_nonNull_native, v25, v26, v27, v28, v38, v6, v41);
            sub_1E32A87C0(v29, v19, v21);

            v6 = v40;
          }
        }
      }

      else
      {
        sub_1E325F748(&v44, &unk_1ECF296E0);
      }

      v30 = objc_opt_self();

      sub_1E3744600(v31);
      v32 = sub_1E4205C44();

      v33 = [v30 createWithMetricsData_];

      v34 = [objc_opt_self() sharedInstance];
      [v34 recordPage_];

      OUTLINED_FUNCTION_111();
      (*(v35 + 136))(v6);
    }
  }
}

void sub_1E3BA6764(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  if ((*(v4 + 128))())
  {
    v5 = sub_1E4205F14();
    OUTLINED_FUNCTION_9_94(v5, v6, v7, v8, v9, v10, v11, v12, v100, v107, v114, v121, v128, v135, v142);

    v1 = MEMORY[0x1E69E7CA0];
    if (v143)
    {
      OUTLINED_FUNCTION_2_131();
      OUTLINED_FUNCTION_17_79();
      if (v13)
      {
        v16 = 0;
      }

      else
      {
        v16 = v14;
      }

      if (v13)
      {
        v17 = 0;
      }

      else
      {
        v17 = v15;
      }

      v115 = v17;
      v122 = v16;
    }

    else
    {
      sub_1E325F748(&v142, &unk_1ECF296E0);
      v115 = 0;
      v122 = 0;
    }

    v30 = sub_1E4205F14();
    OUTLINED_FUNCTION_9_94(v30, v31, v32, v33, v34, v35, v36, v37, v101, v108, v115, v122, v129, v136, v142);

    if (v143)
    {
      OUTLINED_FUNCTION_2_131();
      OUTLINED_FUNCTION_17_79();
      if (v38)
      {
        v39 = 0;
      }

      v110 = v39;
      if (v38)
      {
        v41 = 0;
      }

      else
      {
        v41 = v40;
      }
    }

    else
    {
      sub_1E325F748(&v142, &unk_1ECF296E0);
      v110 = 0;
      v41 = 0;
    }

    v42 = sub_1E4205F14();
    OUTLINED_FUNCTION_9_94(v42, v43, v44, v45, v46, v47, v48, v49, v103, v110, v117, v124, v131, v138, v142);

    if (v143)
    {
      OUTLINED_FUNCTION_2_131();
      OUTLINED_FUNCTION_17_79();
      if (v50)
      {
        v53 = 0;
      }

      else
      {
        v53 = v51;
      }

      if (v50)
      {
        v54 = 0;
      }

      else
      {
        v54 = v52;
      }
    }

    else
    {
      sub_1E325F748(&v142, &unk_1ECF296E0);
      v53 = 0;
      v54 = 0;
    }

    v55 = sub_1E4205F14();
    OUTLINED_FUNCTION_9_94(v55, v56, v57, v58, v59, v60, v61, v62, v104, v111, v118, v125, v132, v139, v142);

    if (v143)
    {
      OUTLINED_FUNCTION_2_131();
      OUTLINED_FUNCTION_17_79();
      if (v63)
      {
        v66 = 0;
      }

      else
      {
        v66 = v64;
      }

      if (v63)
      {
        v67 = 0;
      }

      else
      {
        v67 = v65;
      }
    }

    else
    {
      sub_1E325F748(&v142, &unk_1ECF296E0);
      v66 = 0;
      v67 = 0;
    }

    v68 = sub_1E4205F14();
    OUTLINED_FUNCTION_9_94(v68, v69, v70, v71, v72, v73, v74, v75, v105, v112, v119, v126, v133, v140, v142);

    if (v143)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if (OUTLINED_FUNCTION_2_131())
      {
        v76 = sub_1E4205F14();
        OUTLINED_FUNCTION_30_47(v76, v77, v78, v79, v80, v81, v82, v83, v106, v113, v120, v127, v134, v141, v142);

        if (v143)
        {
          OUTLINED_FUNCTION_2_131();
          OUTLINED_FUNCTION_17_79();
        }

        else
        {
          sub_1E325F748(&v142, &unk_1ECF296E0);
        }

        OUTLINED_FUNCTION_7_131();
        goto LABEL_62;
      }
    }

    else
    {
      sub_1E325F748(&v142, &unk_1ECF296E0);
    }

    OUTLINED_FUNCTION_7_131();
    v86 = 0;
    v87 = 0;
LABEL_62:
    v99 = v120;
    v98 = v127;
    v97 = v113;
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_8();
  if ((*(v18 + 152))())
  {
    v19 = sub_1E4205F14();
    OUTLINED_FUNCTION_30_47(v19, v20, v21, v22, v23, v24, v25, v26, v100, v107, v114, v121, v128, v135, v142);

    if (v143)
    {
      OUTLINED_FUNCTION_40_6();
      OUTLINED_FUNCTION_17_79();
      if (v27)
      {
        v1 = 0;
      }

      else
      {
        v1 = v28;
      }

      if (v27)
      {
        v2 = 0;
      }

      else
      {
        v2 = v29;
      }
    }

    else
    {
      sub_1E325F748(&v142, &unk_1ECF296E0);
      v1 = 0;
      v2 = 0;
    }

    v88 = sub_1E4205F14();
    OUTLINED_FUNCTION_30_47(v88, v89, v90, v91, v92, v93, v94, v95, v102, v109, v116, v123, v130, v137, v142);

    if (v143)
    {
      OUTLINED_FUNCTION_40_6();
      OUTLINED_FUNCTION_17_79();
      if (v96)
      {
        v84 = 0;
      }

      if (v96)
      {
        v85 = 0;
      }
    }

    else
    {
      sub_1E325F748(&v142, &unk_1ECF296E0);
      v84 = 0;
      v85 = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_131();
  }

  v66 = 0;
  v67 = 0;
  v53 = 0;
  v54 = 0;
  v86 = 0;
  v87 = 0;
  v97 = 0;
  v41 = 0;
  v98 = 0;
  v99 = 0;
LABEL_63:
  *a1 = v98;
  a1[1] = v99;
  a1[2] = v97;
  a1[3] = v41;
  a1[4] = v86;
  a1[5] = v87;
  a1[6] = v53;
  a1[7] = v54;
  a1[8] = v66;
  a1[9] = v67;
  a1[10] = v1;
  a1[11] = v2;
  a1[12] = v84;
  a1[13] = v85;
}

uint64_t sub_1E3BA6BA4()
{

  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI7Metrics_impressionsData, &qword_1ECF2B7B0);
  return v0;
}

uint64_t sub_1E3BA6BFC()
{
  sub_1E3BA6BA4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3BA6C54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v3;
  v4 = *v0;
  v5 = v0[1];
  v6 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v7;
  v8 = 0xE600000000000000;
  v9 = 0x6E6F74747562;
  switch(*(v1 + 16))
  {
    case 1:
      v8 = 0xE300000000000000;
      v9 = 6447476;
      break;
    case 2:
      v8 = 0xE400000000000000;
      v9 = 1919251317;
      break;
    case 3:
      v9 = 0x70756B636F6CLL;
      break;
    default:
      break;
  }

  *(inited + 120) = v6;
  *(inited + 96) = v9;
  *(inited + 104) = v8;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v10;
  v11 = 0xE300000000000000;
  v12 = 6579297;
  switch(*(v1 + 17))
  {
    case 1:
      v11 = 0xE800000000000000;
      v12 = 0x657461676976616ELL;
      break;
    case 2:
      v11 = 0xE600000000000000;
      v12 = 0x7463656C6573;
      break;
    case 3:
      v11 = 0xE600000000000000;
      v12 = 0x747265736E69;
      break;
    default:
      break;
  }

  *(inited + 168) = v6;
  *(inited + 144) = v12;
  *(inited + 152) = v11;

  v13 = sub_1E4205CB4();
  v14 = v1[8];
  if (!v14)
  {
    v64 = 0u;
    v65 = 0u;
    goto LABEL_14;
  }

  swift_isUniquelyReferenced_nonNull_native();
  *&v64 = v13;
  OUTLINED_FUNCTION_0_165();
  sub_1E394C48C(v14, v15, 0, v16, &v64);
  v13 = v64;
  v17 = sub_1E4205F14();
  sub_1E3277E60(v17, v18, v14, &v64);

  if (!*(&v65 + 1))
  {
LABEL_14:
    sub_1E325F748(&v64, &unk_1ECF296E0);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if (swift_dynamicCast())
  {
    v19 = v61;
    goto LABEL_16;
  }

LABEL_15:
  v19 = sub_1E4205CB4();
LABEL_16:
  v67 = *(v1 + 3);
  v20 = *(&v67 + 1);
  if (*(&v67 + 1))
  {
    v21 = v67;
    sub_1E4205F14();
    OUTLINED_FUNCTION_16_11();
    *(&v65 + 1) = v6;
    OUTLINED_FUNCTION_27_46(v22, v23, v24, v25, v26, v27, v28, v29, v57, v58, v59, v60, v61, v62, v63, __PAIR128__(v20, v21));
    sub_1E379539C(&v67, &v57, &qword_1ECF3D960);
    swift_isUniquelyReferenced_nonNull_native();
    v57 = v19;
    OUTLINED_FUNCTION_24_52(&v61);

    v19 = v57;
  }

  if (*(v19 + 16))
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_16_11();
    *(&v65 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    *&v64 = v19;
    OUTLINED_FUNCTION_27_46(*(&v65 + 1), v30, v31, v32, v33, v34, v35, v36, v57, v58, v59, v60, v61, v62, v63, v64);

    swift_isUniquelyReferenced_nonNull_native();
    v57 = v13;
    OUTLINED_FUNCTION_24_52(&v61);

    v13 = v57;
  }

  v37 = v1[5];
  v57 = v37;
  if (v37)
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_16_11();
    *(&v65 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
    *&v64 = v37;
    OUTLINED_FUNCTION_27_46(*(&v65 + 1), v38, v39, v40, v41, v42, v43, v44, v57, v58, v59, v60, v61, v62, v63, v64);
    sub_1E379539C(&v57, &v66, &qword_1ECF2B490);
    swift_isUniquelyReferenced_nonNull_native();
    v66 = v13;
    OUTLINED_FUNCTION_24_52(&v61);

    v13 = v66;
  }

  v45 = v1[6];
  v66 = v45;
  if (v45)
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_16_11();
    *(&v65 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
    *&v64 = v45;
    OUTLINED_FUNCTION_27_46(*(&v65 + 1), v46, v47, v48, v49, v50, v51, v52, v57, v58, v59, v60, v61, v62, v63, v64);
    sub_1E379539C(&v66, &v59, &qword_1ECF2B490);
    swift_isUniquelyReferenced_nonNull_native();
    v59 = v13;
    OUTLINED_FUNCTION_24_52(&v61);

    v13 = v59;
  }

  v53 = v1[7];
  if (v53)
  {

    swift_isUniquelyReferenced_nonNull_native();
    *&v64 = v13;
    OUTLINED_FUNCTION_0_165();
    sub_1E394C48C(v53, v54, 0, v55, &v64);

    v13 = v64;
  }

  else
  {
  }

  v56 = [objc_opt_self() sharedInstance];
  sub_1E3744600(v13);

  sub_1E4205C44();
  OUTLINED_FUNCTION_11_5();

  [v56 recordClick_];
}

uint64_t sub_1E3BA71B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  return result;
}

uint64_t ImpressionableMetricsItem.additionalFields.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t ImpressionableMetricsItem.parent.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t ImpressionableMetricsItem.init(impressionId:impressionType:impressionIndex:actionType:idType:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a8;
  *(a9 + 48) = a10;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 80) = 0;
  *(a9 + 88) = 0;
  *(a9 + 72) = 0;
  return result;
}

uint64_t ImpressionableMetricsItem.createJetImpressionMetricsObject()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v3;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v7;
  v8 = 0xE600000000000000;
  v9 = 0x6E6F74747562;
  switch(*(v1 + 16))
  {
    case 1:
      v8 = 0xE300000000000000;
      v9 = 6447476;
      break;
    case 2:
      v8 = 0xE400000000000000;
      v9 = 1919251317;
      break;
    case 3:
      v9 = 0x70756B636F6CLL;
      break;
    default:
      break;
  }

  *(inited + 120) = v6;
  *(inited + 96) = v9;
  *(inited + 104) = v8;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v10;
  v11 = v1[3];
  *(inited + 168) = MEMORY[0x1E69E6810];
  *(inited + 144) = v11;

  v12 = sub_1E4205CB4();
  v13 = v1[9];
  if (v13)
  {

    swift_isUniquelyReferenced_nonNull_native();
    *&v53 = v12;
    OUTLINED_FUNCTION_0_165();
    sub_1E394C48C(v13, v14, 0, v15, &v53);
    v12 = v53;
  }

  v16 = *(v1 + 32);
  if (v16 != 4)
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_16_11();
    v54 = &type metadata for MetricsActionType;
    LOBYTE(v53) = v16;
    OUTLINED_FUNCTION_27_46(v17, v18, v19, v20, v21, v22, v23, v24, v46, v47, v48, v49, v50, v51, v52, v53);
    swift_isUniquelyReferenced_nonNull_native();
    *&v56 = v12;
    OUTLINED_FUNCTION_24_52(&v50);

    v12 = v56;
  }

  v56 = *(v1 + 7);
  v25 = *(&v56 + 1);
  if (*(&v56 + 1))
  {
    v26 = v56;
    sub_1E4205F14();
    OUTLINED_FUNCTION_16_11();
    v54 = v6;
    OUTLINED_FUNCTION_27_46(v27, v28, v29, v30, v31, v32, v33, v34, v46, v47, v48, v49, v50, v51, v52, __PAIR128__(v25, v26));
    sub_1E379539C(&v56, &v55, &qword_1ECF3D960);
    swift_isUniquelyReferenced_nonNull_native();
    *&v55 = v12;
    OUTLINED_FUNCTION_24_52(&v50);

    v12 = v55;
  }

  v55 = *(v1 + 5);
  v35 = *(&v55 + 1);
  if (*(&v55 + 1))
  {
    v36 = v55;
    sub_1E4205F14();
    OUTLINED_FUNCTION_16_11();
    v54 = v6;
    OUTLINED_FUNCTION_27_46(v37, v38, v39, v40, v41, v42, v43, v44, v46, v47, v48, v49, v50, v51, v52, __PAIR128__(v35, v36));
    sub_1E379539C(&v55, &v48, &qword_1ECF3D960);
    swift_isUniquelyReferenced_nonNull_native();
    v48 = v12;
    OUTLINED_FUNCTION_24_52(&v50);
  }

  type metadata accessor for BaseImpressionManager();
  static BaseImpressionManager.makeImpressionsData(_:parent:)();
}

void sub_1E3BA769C(uint64_t a1)
{
  if (a1)
  {
    objc_opt_self();
    v2 = OUTLINED_FUNCTION_50();
    sub_1E3744600(v2);
    v3 = sub_1E4205C44();

    v4 = [v1 createWithMetricsData_];

    v5 = [objc_opt_self() sharedInstance];
    [v5 recordPage_];
  }
}

void sub_1E3BA7798(uint64_t a1)
{
  if (a1)
  {
    v2 = [objc_opt_self() sharedInstance];
    v3 = OUTLINED_FUNCTION_50();
    sub_1E3744600(v3);
    v4 = sub_1E4205C44();

    [v1 recordDialog_];
  }
}

void sub_1E3BA7858()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E4204984();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  type metadata accessor for Metrics();
  v18 = sub_1E3BA7AA8();
  if (v1)
  {
    (*(v13 + 104))(v17, *MEMORY[0x1E69AB3D8], v11);
    sub_1E41FE5C4();
    v19 = sub_1E4204934();
    (*(v6 + 8))(v10, v4);
    (*(v13 + 8))(v17, v11);
    sub_1E3BA7DD8(v19);
    OUTLINED_FUNCTION_112();
  }

  else
  {
    v4 = 0;
  }

  v20 = sub_1E3BA7F00(v3);
  OUTLINED_FUNCTION_111();
  if ((*(v21 + 576))())
  {
    OUTLINED_FUNCTION_26_0();
    v23 = (*(v22 + 176))();
  }

  else
  {
    v23 = 0;
  }

  sub_1E3BA5D04(v23, v4, v18, v20);

  OUTLINED_FUNCTION_25_2();
}

void *sub_1E3BA7AA8()
{
  OUTLINED_FUNCTION_26_0();
  if (!(*(v1 + 576))())
  {
    return 0;
  }

  OUTLINED_FUNCTION_26_0();
  (*(v2 + 200))();
  OUTLINED_FUNCTION_112();

  if (!v0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_111();
  v4 = (*(v3 + 624))();
  v5 = v4;
  if (v4)
  {
    LOWORD(v21[0]) = *(v4 + 98);
    v22 = 171;
    sub_1E3741534();
    if (sub_1E4205E84())
    {

      v6 = MEMORY[0x1E69E7CC0];
      goto LABEL_11;
    }
  }

  v6 = sub_1E39239C8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1E39239C8((v7 > 1), v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  v6[v8 + 4] = v0;
  while (v5)
  {
LABEL_11:
    OUTLINED_FUNCTION_111();
    isUniquelyReferenced_nonNull_native = (*(v10 + 576))();
    if (isUniquelyReferenced_nonNull_native)
    {
      OUTLINED_FUNCTION_26_0();
      v13 = (*(v12 + 200))();

      if (v13)
      {
        v14 = sub_1E4205F14();
        if (*(v13 + 16))
        {
          v16 = sub_1E327D33C(v14, v15);
          v18 = v17;

          if (v18)
          {
            sub_1E328438C(*(v13 + 56) + 32 * v16, v21);
            sub_1E325F748(v21, &unk_1ECF296E0);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_1E39239C8(0, v6[2] + 1, 1, v6);
              v6 = isUniquelyReferenced_nonNull_native;
            }

            v20 = v6[2];
            v19 = v6[3];
            if (v20 >= v19 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_1E39239C8((v19 > 1), v20 + 1, 1, v6);
              v6 = isUniquelyReferenced_nonNull_native;
            }

            v6[2] = v20 + 1;
            v6[v20 + 4] = v13;
            goto LABEL_22;
          }
        }

        else
        {
        }

        memset(v21, 0, sizeof(v21));
        isUniquelyReferenced_nonNull_native = sub_1E325F748(v21, &unk_1ECF296E0);
      }
    }

LABEL_22:
    v5 = (*(*v5 + 624))(isUniquelyReferenced_nonNull_native);
  }

  return v6;
}

uint64_t sub_1E3BA7DD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1E397A444(0, v2, 0);
  v3 = v10;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1E328438C(v4, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E397A444((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

unint64_t sub_1E3BA7F00(uint64_t a1)
{
  type metadata accessor for TemplateViewModel();
  swift_retain_n();
  while (!swift_dynamicCastClass())
  {

    LOWORD(v27) = *(a1 + 98);
    LOWORD(v26[0]) = 100;
    sub_1E3741534();
    if (OUTLINED_FUNCTION_8_97() & 1) != 0 || (LOWORD(v27) = *(a1 + 98), LOWORD(v26[0]) = 218, (OUTLINED_FUNCTION_8_97()) || (LOWORD(v27) = *(a1 + 98), LOWORD(v26[0]) = 213, (OUTLINED_FUNCTION_8_97()))
    {
      v10 = sub_1E3BA855C();
      goto LABEL_19;
    }

LABEL_13:
    OUTLINED_FUNCTION_111();
    a1 = (*(v8 + 624))(v9);

    if (!a1)
    {
      goto LABEL_20;
    }
  }

  v29 = 16;
  sub_1E39E42E0();
  sub_1E4206254();
  sub_1E4206254();
  if (v27 == *&v26[0] && *(&v27 + 1) == *(&v26[0] + 1))
  {

LABEL_18:
    v10 = sub_1E3BA855C();

LABEL_19:
    if (v10)
    {
LABEL_21:

      return v10;
    }

LABEL_20:
    v10 = sub_1E3BA855C();
    goto LABEL_21;
  }

  v3 = sub_1E42079A4();

  if (v3)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_12_6();
  v5 = *(v4 + 576);

  v7 = v5(v6);

  if (!v7)
  {

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_12_6();
  if (((*(v12 + 248))(v13) & 1) == 0)
  {
    OUTLINED_FUNCTION_12_6();
    v16 = (*(v14 + 152))(v15);
    if (v16 || (OUTLINED_FUNCTION_12_6(), (v16 = (*(v17 + 128))(v18)) != 0))
    {
      v10 = v16;
      v19 = sub_1E4205F14();
      v21 = v20;

      sub_1E3277E60(v19, v21, v10, &v27);

      if (v28)
      {
        if (swift_dynamicCast())
        {
          v22 = sub_1E3285D14();
          v23 = *((*MEMORY[0x1E69E7D40] & **v22) + 0x110);
          v24 = *v22;
          v25 = v23(*&v26[0], *(&v26[0] + 1));

          if (v25)
          {

            sub_1E4205F14();
            OUTLINED_FUNCTION_16_11();
            v28 = MEMORY[0x1E69E6370];
            LOBYTE(v27) = 1;
            sub_1E329504C(&v27, v26);
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_24_52(v26);

            return v10;
          }
        }

        else
        {
        }
      }

      else
      {

        sub_1E325F748(&v27, &unk_1ECF296E0);
      }

      goto LABEL_21;
    }

    goto LABEL_20;
  }

  return 0;
}

void sub_1E3BA83B8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4204984();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  (*(v11 + 104))(v14 - v13, *MEMORY[0x1E69AB3D8], v9);
  sub_1E41FE5C4();
  v16 = sub_1E4204944();
  (*(v4 + 8))(v8, v2);
  (*(v11 + 8))(v15, v9);
  v17 = sub_1E3BA7DD8(v16);

  if (v17)
  {
    type metadata accessor for Metrics();
    sub_1E3BA5A94(v17, v1);
  }

  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3BA855C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 lastRecordedPageEventData];

  v2 = [v1 generateMetricsDataDictionary];
  v3 = sub_1E4205C64();

  v4 = sub_1E374BD08(v3);

  return v4;
}

void sub_1E3BA8620()
{
  OUTLINED_FUNCTION_31_1();
  v64 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_4_6();
  v4 = v2 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v62 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v62 - v8;
  v10 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v63 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  OUTLINED_FUNCTION_99();
  (*(v19 + 224))();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1E325F748(v9, &qword_1ECF2B7B0);
  }

  else
  {
    (*(v12 + 32))(v18, v9, v10);
    sub_1E4205F14();
    OUTLINED_FUNCTION_9_9();
    v20 = sub_1E4204714();
    OUTLINED_FUNCTION_39_32(v20);

    v21 = v68;
    sub_1E325F748(&v67, &unk_1ECF296E0);
    if (!v21)
    {
      sub_1E4205F14();
      OUTLINED_FUNCTION_9_9();
      v22 = sub_1E41FE854();
      OUTLINED_FUNCTION_43_37(v22, MEMORY[0x1E69E6530]);
      v23 = sub_1E4204704();
      OUTLINED_FUNCTION_53_27();
      v23(v66, 0);
      v24 = OUTLINED_FUNCTION_20_64();
      v25(v24);
      OUTLINED_FUNCTION_51_26();
      OUTLINED_FUNCTION_99();
      (*(v26 + 232))(v18);
    }

    (*(v12 + 8))(v18, v10);
  }

  OUTLINED_FUNCTION_99();
  v28 = (*(v27 + 200))();
  if (v28)
  {
    v29 = v28;
    v30 = sub_1E4205F14();
    sub_1E3277E60(v30, v31, v29, &v67);

    v32 = v68;
    sub_1E325F748(&v67, &unk_1ECF296E0);
    if (v32)
    {
    }

    else
    {
      v33 = sub_1E4205F14();
      v35 = v34;
      v36 = sub_1E41FE854();
      OUTLINED_FUNCTION_43_37(v36, MEMORY[0x1E69E6530]);
      sub_1E329504C(&v67, v66);
      swift_isUniquelyReferenced_nonNull_native();
      v65 = v29;
      sub_1E32A87C0(v66, v33, v35);

      OUTLINED_FUNCTION_99();
      v38 = *(v37 + 208);

      v38(v39);
    }
  }

  OUTLINED_FUNCTION_111();
  (*(v40 + 224))();
  if (__swift_getEnumTagSinglePayload(v4, 1, v10) == 1)
  {
    sub_1E325F748(v4, &qword_1ECF2B7B0);
  }

  else
  {
    v41 = v63;
    (*(v12 + 32))(v63, v4, v10);
    sub_1E4205F14();
    OUTLINED_FUNCTION_9_9();
    v42 = sub_1E4204714();
    OUTLINED_FUNCTION_39_32(v42);

    v43 = v68;
    sub_1E325F748(&v67, &unk_1ECF296E0);
    if (!v43)
    {
      sub_1E4205F14();
      OUTLINED_FUNCTION_9_9();
      v44 = sub_1E41FE844();
      OUTLINED_FUNCTION_43_37(v44, MEMORY[0x1E69E6530]);
      v45 = sub_1E4204704();
      OUTLINED_FUNCTION_53_27();
      v45(v66, 0);
      v46 = OUTLINED_FUNCTION_20_64();
      v47(v46);
      OUTLINED_FUNCTION_51_26();
      OUTLINED_FUNCTION_111();
      (*(v48 + 232))(v41);
    }

    (*(v12 + 8))(v41, v10);
  }

  OUTLINED_FUNCTION_111();
  v50 = (*(v49 + 200))();
  if (v50)
  {
    v51 = v50;
    v52 = sub_1E4205F14();
    sub_1E3277E60(v52, v53, v51, &v67);

    v54 = v68;
    sub_1E325F748(&v67, &unk_1ECF296E0);
    if (v54)
    {
    }

    else
    {
      v55 = sub_1E4205F14();
      v57 = v56;
      v58 = sub_1E41FE844();
      OUTLINED_FUNCTION_43_37(v58, MEMORY[0x1E69E6530]);
      sub_1E329504C(&v67, v66);
      swift_isUniquelyReferenced_nonNull_native();
      v65 = v51;
      sub_1E32A87C0(v66, v55, v57);

      OUTLINED_FUNCTION_111();
      v60 = *(v59 + 208);

      v60(v61);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t type metadata accessor for Metrics()
{
  result = qword_1EE28FC20;
  if (!qword_1EE28FC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E3BA8CE4()
{
  result = qword_1ECF343B8;
  if (!qword_1ECF343B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF343B8);
  }

  return result;
}

unint64_t sub_1E3BA8D3C()
{
  result = qword_1ECF343C0;
  if (!qword_1ECF343C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF343C0);
  }

  return result;
}

unint64_t sub_1E3BA8D94()
{
  result = qword_1ECF343C8;
  if (!qword_1ECF343C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF343C8);
  }

  return result;
}

unint64_t sub_1E3BA8DEC()
{
  result = qword_1ECF343D0;
  if (!qword_1ECF343D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF343D0);
  }

  return result;
}

unint64_t sub_1E3BA8E44()
{
  result = qword_1ECF343D8;
  if (!qword_1ECF343D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF343D8);
  }

  return result;
}

unint64_t sub_1E3BA8E9C()
{
  result = qword_1ECF343E0;
  if (!qword_1ECF343E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF343E0);
  }

  return result;
}

unint64_t sub_1E3BA8EF4()
{
  result = qword_1ECF343E8;
  if (!qword_1ECF343E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF343E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewModelMetricsClickValue(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1E3BA9018(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3BA90E8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3BA91C8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3BA9294(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v4);
}

uint64_t sub_1E3BA92E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1E3BA936C()
{
  sub_1E3BA9414();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3BA9414()
{
  if (!qword_1EE23B6A8)
  {
    sub_1E4204724();
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE23B6A8);
    }
  }
}

uint64_t sub_1E3BA947C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1E3BA94BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

      return OUTLINED_FUNCTION_5_25(result, a2);
    }

    *(result + 96) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_5_25(result, a2);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_53_27()
{

  return sub_1E3946774(v2 - 112, v0, v1);
}

_OWORD *OUTLINED_FUNCTION_58_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16)
{

  return sub_1E329504C(&a16, &a11);
}

uint64_t sub_1E3BA9578@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_collectionImpressioner;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return sub_1E38B9460(v1 + v3, a1);
}

uint64_t sub_1E3BA95CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_collectionImpressioner;
  swift_beginAccess();
  sub_1E38B94D0(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E3BA9678()
{
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController))
  {
    return 0;
  }

  OUTLINED_FUNCTION_88_0();
  v2 = *(v1 + 440);
  v4 = v3;
  v5 = v2();

  return v5;
}

uint64_t sub_1E3BA9700()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1E3BA974C()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1();
  *(v1 + 8) = v0;
  OUTLINED_FUNCTION_57();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3BA979C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_57();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3900F50;
}

void *sub_1E3BA987C()
{
  v1 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController____lazy_storage___noContentView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController____lazy_storage___noContentView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController____lazy_storage___noContentView];
LABEL_5:
    v11 = v2;
    return v3;
  }

  v4 = v0;
  result = [v0 vuiView];
  if (result)
  {
    v6 = result;
    type metadata accessor for SearchNoContentView();
    [v6 bounds];
    OUTLINED_FUNCTION_3();

    OUTLINED_FUNCTION_6();
    v7 = sub_1E3890DAC();
    v8 = *((*MEMORY[0x1E69E7D40] & *v7) + 0xE0);
    v9 = swift_unknownObjectRetain();
    v8(v9, &off_1F5D74EC0);
    v10 = *&v4[v1];
    *&v4[v1] = v7;
    v3 = v7;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3BA9990()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_scrollHandler);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *v1;
  sub_1E34AF604(*v1);
  return v2;
}

uint64_t sub_1E3BA99E8()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1();
  v3 = *v1;
  *v1 = v2;
  v1[1] = v0;
  return sub_1E34AF594(v3);
}

uint64_t sub_1E3BA9BA8()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_searchDelayMessage);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E3BA9BFC()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1();
  *v1 = v2;
  v1[1] = v0;
}

char *sub_1E3BA9C90()
{
  OUTLINED_FUNCTION_156();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_38();
  return sub_1E3BA9CCC();
}

char *sub_1E3BA9CCC()
{
  OUTLINED_FUNCTION_156();
  v3 = v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_collectionImpressioner;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_document;
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_document) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_recentlySearchedTemplateViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsTemplateViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsCollectionViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_topResultsCollectionViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_resultCategoryIds) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_isShowingLoader) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController____lazy_storage___noContentView) = 0;
  v5 = (v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_scrollHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsPagePerformanceReporter;
  type metadata accessor for PagePerformanceReporter();
  *(v1 + v6) = sub_1E3C678AC();
  v7 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_searchResultsPagePerformanceReporter;
  *(v1 + v7) = sub_1E3C678AC();
  v8 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_topResultsPagePerformanceReporter;
  *(v1 + v8) = sub_1E3C678AC();
  v9 = &qword_1ECF34000;
  v10 = (v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_searchDelayMessage);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + v4) = v2;

  type metadata accessor for LoadingControllerManager();
  v11 = OUTLINED_FUNCTION_26_57();
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_loadingViewManager) = sub_1E3F68068(v11, v12);
  type metadata accessor for SearchResultsViewController();
  OUTLINED_FUNCTION_25();
  v15 = objc_msgSendSuper2(v13, v14);
  type metadata accessor for TemplateViewModel();
  sub_1E410D4C8();
  v17 = v16;
  v18 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsTemplateViewModel;
  *&v15[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsTemplateViewModel] = v16;

  if (v17)
  {
    OUTLINED_FUNCTION_8();
    (*(v19 + 472))(MEMORY[0x1E69E7CC0]);
  }

  v20 = sub_1E3BAD988(0xD000000000000010, 0x80000001E4274B20);
  if (v20)
  {
    *&v15[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsCollectionViewModel] = v20;

    v21 = *&v15[v18];
    if (v21)
    {
      v22 = *(*v21 + 480);

      v23 = v22(&v47);
      if (*v24)
      {

        MEMORY[0x1E6910BF0](v25);
        OUTLINED_FUNCTION_40_42();
      }

      v23(&v47, 0);

      v9 = &qword_1ECF34000;
    }
  }

  v26 = sub_1E3BAD988(0xD000000000000016, 0x80000001E4274B00);
  if (v26)
  {
    v27 = v26;
    v28 = *(*v26 + 392);

    if (v28())
    {
      OUTLINED_FUNCTION_30();
      (*(v29 + 992))(21, 0);
    }

    OUTLINED_FUNCTION_26();
    v31 = *(v30 + 656);

    v31(v32);
    *&v15[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_topResultsCollectionViewModel] = v27;

    v33 = *&v15[v18];
    if (v33)
    {
      v34 = *(*v33 + 480);

      v35 = v34(&v47);
      if (*v36)
      {
        MEMORY[0x1E6910BF0]();
        OUTLINED_FUNCTION_40_42();
      }

      else
      {
      }

      v35(&v47, 0);
    }
  }

  if (*sub_1E3C2AEE0() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1E4297BE0;
    v38 = sub_1E41FFF64();
    v39 = MEMORY[0x1E69DC130];
    *(v37 + 32) = v38;
    *(v37 + 40) = v39;
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0);
    sub_1E4206944();
    swift_unknownObjectRelease();
  }

  if (![objc_opt_self() isSearchEnabled])
  {

LABEL_34:

    return v15;
  }

  if (v0)
  {
    sub_1E3277E60(0xD000000000000012, 0x80000001E4274B40, v0, &v47);

    if (v48)
    {
      v40 = swift_dynamicCast();
      if (v40)
      {
        v41 = v45;
      }

      else
      {
        v41 = 0;
      }

      if (v40)
      {
        v42 = v46;
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      sub_1E325F748(&v47, &unk_1ECF296E0);
      v41 = 0;
      v42 = 0;
    }

    v43 = &v15[v9[134]];
    swift_beginAccess();
    *v43 = v41;
    *(v43 + 1) = v42;
    goto LABEL_34;
  }

  return v15;
}

void sub_1E3BAA314()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  sub_1E32ADE38();
  v16 = sub_1E4206A04();
  v19[4] = sub_1E3BAE3B8;
  v19[5] = v1;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v19[2] = v17;
  v19[3] = &block_descriptor_43;
  v18 = _Block_copy(v19);

  sub_1E4203FE4();
  v19[0] = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E378AD28();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v15, v8, v18);
  _Block_release(v18);

  (*(v4 + 8))(v8, v2);
  (*(v11 + 8))(v15, v9);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BAA548()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_collectionImpressioner;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_document) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_recentlySearchedTemplateViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsTemplateViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsCollectionViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_topResultsCollectionViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_resultCategoryIds) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_isShowingLoader) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController____lazy_storage___noContentView) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_scrollHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsPagePerformanceReporter;
  type metadata accessor for PagePerformanceReporter();
  *(v0 + v3) = sub_1E3C678AC();
  v4 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_searchResultsPagePerformanceReporter;
  *(v0 + v4) = sub_1E3C678AC();
  v5 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_topResultsPagePerformanceReporter;
  *(v0 + v5) = sub_1E3C678AC();
  v6 = (v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_searchDelayMessage);
  *v6 = 0;
  v6[1] = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3BAA6A8()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = type metadata accessor for SearchResultsViewController();
  objc_msgSendSuper2(&v23, sel_vui_viewDidLayoutSubviews);
  v2 = sub_1E3BA987C();
  v3 = OUTLINED_FUNCTION_43_38();
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 bounds];
  OUTLINED_FUNCTION_3();

  v5 = OUTLINED_FUNCTION_6();
  [v6 v7];

  v8 = OUTLINED_FUNCTION_43_38();
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  [v8 safeAreaInsets];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_8();
  v10 = OUTLINED_FUNCTION_6();
  v12 = v11(v10);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))(v22, v12);
  if (!v22[3])
  {
    sub_1E325F748(v22, &unk_1ECF296D0);
    goto LABEL_7;
  }

  sub_1E327F454(v22, v20);
  sub_1E325F748(v22, &unk_1ECF296D0);
  v13 = v21;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v14 = OUTLINED_FUNCTION_43_38();
  if (v14)
  {
    v15 = v14;
    [v14 bounds];
    OUTLINED_FUNCTION_3();

    v16 = OUTLINED_FUNCTION_6();
    v17(v13, v16);
    __swift_destroy_boxed_opaque_existential_1(v20);
LABEL_7:
    v18 = *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController);
    v19 = v18;
    sub_1E3BAA8D8(v18);

    return;
  }

LABEL_10:
  __break(1u);
}

void sub_1E3BAA8D8(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = a1;
  v8 = [v2 vuiView];
  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = [v1 vuiView];
  if (!v3)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = v3;
  [v3 bounds];
  OUTLINED_FUNCTION_3();

  v5 = OUTLINED_FUNCTION_6();
  [v6 v7];
}

void sub_1E3BAAA04()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for SearchResultsViewController();
  objc_msgSendSuper2(&v24, sel_vui_willMoveToParentViewController_, v2);
  if (v2)
  {
    goto LABEL_2;
  }

  v10 = sub_1E324FBDC();
  (*(v5 + 16))(v9, v10, v3);
  v11 = v0;
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = *&v11[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController];
    *(v14 + 4) = v16;
    *v15 = v16;
    v17 = v16;
    _os_log_impl(&dword_1E323F000, v12, v13, "SearchController::LandingPage:: removing stack vc %@", v14, 0xCu);
    sub_1E325F748(v15, &unk_1ECF28E30);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v9, v3);
  v18 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController;
  v19 = *&v11[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController];
  if (!v19)
  {
    goto LABEL_2;
  }

  [v19 vui:0 willMoveToParentViewController:?];
  v20 = *&v11[v18];
  if (!v20)
  {
    goto LABEL_2;
  }

  v21 = [v20 vuiView];
  if (v21)
  {
    v22 = v21;
    [v21 vui_removeFromSuperView];

    v23 = *&v11[v18];
    if (v23)
    {
      [v23 vui_removeFromParentViewController];
    }

LABEL_2:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

void sub_1E3BAAC94(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  if (a3)
  {
    OUTLINED_FUNCTION_7_0();
    (*(v6 + 736))();
  }

  if (a1)
  {
    v7 = *(*a1 + 464);

    v9 = v7(v8);
    if (v9)
    {
      v10 = v9;
      v11 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_resultCategoryIds;
      swift_beginAccess();
      v12 = MEMORY[0x1E69E7CD0];
      v113 = a1;
      if (*&v3[v11])
      {
        v14 = sub_1E3BA9830();
        if (*v13)
        {
          v15 = v13;

          *v15 = v12;
        }

        v14(v118, 0);
      }

      else
      {
        *&v3[v11] = MEMORY[0x1E69E7CD0];
      }

      v16 = sub_1E32AE9B0(v10);
      if (v16)
      {
        v17 = v16;
        if (v16 < 1)
        {
          goto LABEL_66;
        }

        for (i = 0; i != v17; ++i)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1E6911E60](i, v10);
          }

          else
          {
            v19 = *(v10 + 8 * i + 32);
          }

          v20 = *(v19 + 24);
          if (v20)
          {
            v21 = *(v19 + 16);

            v22 = sub_1E3BA9830();
            if (*v23)
            {
              sub_1E3277398(&v119, v21, v20);
            }

            v22(v118, 0);
          }
        }
      }

      a1 = v113;
    }
  }

  v24 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  if (*&v4[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController])
  {
    OUTLINED_FUNCTION_3_134();
    v26 = *(v25 + 1416);
    v28 = v27;
    v26(0);
  }

  OUTLINED_FUNCTION_7_0();
  (*(v29 + 792))(0, 0);
  sub_1E3BAB4FC(0, 0);
  v30 = a1;
  if (!a1)
  {
    if (!*&v4[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController])
    {
      goto LABEL_63;
    }

    OUTLINED_FUNCTION_3_134();
    v50 = *(v49 + 560);
    v52 = v51;
    v30 = v50();

    if (!v30)
    {
      goto LABEL_63;
    }
  }

  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    goto LABEL_57;
  }

  if (!*&v4[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController])
  {
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_3_134();
  v32 = *(v31 + 992);
  v34 = v33;
  v116 = v32();
  v36 = v35;

  if (v36 == 1)
  {
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_26();
  v38 = (*(v37 + 464))();
  if (!v38)
  {
    v92 = OUTLINED_FUNCTION_29_52(0, v39, v40, v41, v42, v43, v44, v45, v113, v116);
    sub_1E39DFB80(v92, v93);
    goto LABEL_57;
  }

  v46 = v38;
  v114 = a1;
  v118[0] = MEMORY[0x1E69E7CC0];
  v47 = sub_1E32AE9B0(v38);
  for (j = 0; ; ++j)
  {
    if (v47 == j)
    {

      v53 = sub_1E38FB1DC(v118[0]);

      if (!v53)
      {
        v94 = OUTLINED_FUNCTION_29_52(v54, v55, v56, v57, v58, v59, v60, v61, a1, v116);
        sub_1E39DFB80(v94, v95);
        a1 = v115;
LABEL_55:
        v24 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
        goto LABEL_57;
      }

      v62 = sub_1E32AE9B0(v53);
      v24 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
      if (v62)
      {
        v70 = v62;
        if (v62 < 1)
        {
          goto LABEL_67;
        }

        v71 = 0;
        do
        {
          if ((v53 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E6911E60](v71, v53);
          }

          else
          {
          }

          ++v71;
          OUTLINED_FUNCTION_8();
          v80 = OUTLINED_FUNCTION_29_52(v72, v73, v74, v75, v76, v77, v78, v79, v114, v116);
          v81(v80);
        }

        while (v70 != v71);
        v90 = OUTLINED_FUNCTION_29_52(v82, v83, v84, v85, v86, v87, v88, v89, v114, v116);
        sub_1E39DFB80(v90, v91);

        goto LABEL_55;
      }

      v96 = OUTLINED_FUNCTION_29_52(0, v63, v64, v65, v66, v67, v68, v69, a1, v116);
      sub_1E39DFB80(v96, v97);

LABEL_57:

      v98 = *&v4[v24[244]];
      if (v98)
      {
        v99 = a2[1];
        v100 = a1;
        if (v99)
        {
          v101 = *a2;
        }

        else
        {
          v101 = 0;
        }

        OUTLINED_FUNCTION_8_9();
        v103 = *(v102 + 1392);
        v104 = v98;
        v103(v101, v99);

        a1 = v100;
      }

      OUTLINED_FUNCTION_7_0();
      v105 += 80;
      v106 = *v105;
      (*v105)();
      OUTLINED_FUNCTION_30();
      v107 = OUTLINED_FUNCTION_24_53();
      v108(v107);

      sub_1E3BACAA4(v30);
      v106();
      OUTLINED_FUNCTION_30();
      (*(v109 + 208))(11, 0, 1);

LABEL_63:
      OUTLINED_FUNCTION_7_0();
      (*(v110 + 640))();
      sub_1E3C69720();

      v111 = [v4 vuiView];
      type metadata accessor for Accessibility();
      v112 = OUTLINED_FUNCTION_38();
      sub_1E40A91FC(v112, 5, a1);

      return;
    }

    if ((v46 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](j, v46);
    }

    else
    {
      if (j >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    type metadata accessor for CollectionViewModel();
    if (swift_dynamicCastClass())
    {
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
}

void sub_1E3BAB3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1E3BAB4FC(0, 0);
  v8 = sub_1E3BA987C();
  v9 = *&v4[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_document];
  if (v9)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v9 = *(v9 + 56);
  }

  OUTLINED_FUNCTION_21();
  (*(v10 + 528))(a1, a2, a3, v9);

  v11 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController____lazy_storage___noContentView;
  v12 = [*&v4[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController____lazy_storage___noContentView] superview];
  if (v12)
  {
    goto LABEL_6;
  }

  v13 = [v4 vuiView];
  if (v13)
  {
    v12 = v13;
    [v13 vui:*&v4[v11] addSubview:0 oldView:?];
LABEL_6:

    return;
  }

  __break(1u);
}

void sub_1E3BAB4FC(char a1, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_isShowingLoader) != (a1 & 1))
  {
    v4 = v2;
    *(v2 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_isShowingLoader) = a1 & 1;
    if (a1)
    {
      if (a2)
      {
        v6 = 1.0;
      }

      else
      {
        v6 = 0.0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4298880;
      v8 = MEMORY[0x1E69E7D40];
      *(inited + 32) = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x280))();
      if (a2)
      {

        inited = swift_allocObject();
        *(inited + 16) = xmmword_1E4298880;
        *(inited + 32) = (*((*v8 & *v2) + 0x268))();
      }

      v9 = sub_1E3BADB54(inited);

      v10 = sub_1E3F68814(v9);
      (*((*v8 & *v4) + 0x2B0))();
      OUTLINED_FUNCTION_12_6();
      (*(v11 + 120))();
      OUTLINED_FUNCTION_12_6();
      (*(v12 + 232))(v4, v10, 0.0);

      v13 = objc_opt_self();
      OUTLINED_FUNCTION_4_0();
      swift_allocObject();
      OUTLINED_FUNCTION_19_6();
      v23 = sub_1E3BAE300;
      v24 = v10;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      OUTLINED_FUNCTION_14_1();
      v21 = v14;
      v22 = &block_descriptor_40_0;
      v15 = _Block_copy(&aBlock);

      [v13 animateWithDuration:0x10000 delay:v15 options:0 animations:0.25 completion:v6];
    }

    else
    {
      v16 = objc_opt_self();
      OUTLINED_FUNCTION_4_0();
      swift_allocObject();
      OUTLINED_FUNCTION_19_6();
      v23 = sub_1E3BAE274;
      v24 = v3;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = sub_1E378AEA4;
      v22 = &block_descriptor_72;
      v15 = _Block_copy(&aBlock);

      OUTLINED_FUNCTION_4_0();
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = sub_1E3BAE27C;
      v24 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = sub_1E37EB82C;
      v22 = &block_descriptor_36_0;
      v18 = _Block_copy(&aBlock);

      [v16 animateWithDuration:131076 delay:v15 options:v18 animations:0.25 completion:0.0];
      _Block_release(v18);
    }

    _Block_release(v15);
  }
}

void sub_1E3BAB928()
{
  v0 = sub_1E3BA987C();
  [v0 vui_removeFromSuperView];
}

uint64_t sub_1E3BAB96C()
{
  OUTLINED_FUNCTION_19_74();
  OUTLINED_FUNCTION_8_9();
  (*(v3 + 792))(1, 0);
  sub_1E3BABB08();
  sub_1E3BABD34(v2);
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsCollectionViewModel);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_document);
    OUTLINED_FUNCTION_47_0();
    v7 = *(v6 + 656);

    v8 = v7(v5);
    if ((*(*v4 + 1208))(v8))
    {
      swift_getObjectType();
      v9 = OUTLINED_FUNCTION_22_58();
      v10(v9);
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_8_9();
  (*(v11 + 616))();
  sub_1E3C69720();
}

void sub_1E3BABB08()
{
  v1 = v0;
  OUTLINED_FUNCTION_8_9();
  (*(v2 + 736))();
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsTemplateViewModel);
  if (v3)
  {
    v4 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController;
    v5 = *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController);
    if (v5)
    {
      OUTLINED_FUNCTION_8_9();
      v7 = *(v6 + 560);

      v8 = v5;
      v9 = v7();

      if (v9)
      {

        if (v9 == v3)
        {
          goto LABEL_10;
        }
      }

      if (*(v1 + v4))
      {
        OUTLINED_FUNCTION_3_134();
        v11 = *(v10 + 1392);
        v13 = v12;
        v14 = OUTLINED_FUNCTION_26_57();
        v11(v14);

        if (*(v1 + v4))
        {
          OUTLINED_FUNCTION_3_134();
          v16 = *(v15 + 1416);
          v18 = v17;
          v16(1);
        }
      }
    }

    else
    {
    }

    sub_1E3BACAA4(v3);
LABEL_10:
  }

  if (sub_1E39DFFC8())
  {
    v19 = *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController);
    if (v19 && (v20 = [v19 vuiView]) != 0 && (v21 = v20, v25 = objc_msgSend(v20, sel_superview), v21, v25))
    {
      OUTLINED_FUNCTION_15_36();
    }

    else
    {
      OUTLINED_FUNCTION_15_36();

      sub_1E3BAD6F4();
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_36();
  }
}

uint64_t sub_1E3BABD34(uint64_t result)
{
  v2 = v1;
  v3 = *(result + 24);
  if (v3)
  {
    v4 = result;
    v5 = *(result + 16);
    v6 = v5 == 0xD000000000000010 && v3 == 0x80000001E4274B20;
    if (v6 || (sub_1E42079A4() & 1) != 0)
    {
      OUTLINED_FUNCTION_12_5();
      v7 += 77;
      v8 = *v7;
      (*v7)();
      OUTLINED_FUNCTION_30();
      v9 = OUTLINED_FUNCTION_24_53();
      v10(v9);

      v11 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsTemplateViewModel;
      if (*(v2 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsTemplateViewModel))
      {
        OUTLINED_FUNCTION_12_6();
        v13 = *(v12 + 480);

        OUTLINED_FUNCTION_25_60();
        v14 = v13();
        v22 = v14;
        if (*v15)
        {
          sub_1E3BADAB4();
        }

        v23 = OUTLINED_FUNCTION_34_43(v14, v15, v16, v17, v18, v19, v20, v21, v85[0]);
        v22(v23);

        if (*(v2 + v11))
        {
          OUTLINED_FUNCTION_12_6();
          v25 = *(v24 + 480);

          v26 = v25(v85);
          v28 = *v27;
          if (v28)
          {
            sub_1E37EFABC(0, v28);

            v29 = sub_1E3BAE054(0, 0, v4);
            v37 = OUTLINED_FUNCTION_34_43(v29, v30, v31, v32, v33, v34, v35, v36, v85[0]);
          }

          else
          {
            v37 = v85;
          }

          v26(v37);
        }
      }

      v74 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsCollectionViewModel;
      if (*(v2 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsCollectionViewModel))
      {
        OUTLINED_FUNCTION_26();
        v76 = *(v75 + 1208);

        v76(v77);
      }

      OUTLINED_FUNCTION_47_0();
      v78 = OUTLINED_FUNCTION_63_0();
      v79(v78);
      *(v2 + v74) = v4;

      (v8)(v80);
LABEL_32:
      OUTLINED_FUNCTION_30();
      (*(v81 + 208))(11, 0, 1);
    }

    v38 = v5 == 0xD000000000000016 && v3 == 0x80000001E4274B00;
    if (v38 || (result = sub_1E42079A4(), (result & 1) != 0))
    {
      OUTLINED_FUNCTION_12_5();
      v39 += 83;
      v40 = *v39;
      (*v39)();
      OUTLINED_FUNCTION_30();
      v41 = OUTLINED_FUNCTION_24_53();
      v42(v41);

      v43 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsTemplateViewModel;
      if (*(v2 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsTemplateViewModel))
      {
        OUTLINED_FUNCTION_12_6();
        v45 = *(v44 + 480);

        OUTLINED_FUNCTION_25_60();
        v46 = v45();
        v54 = v46;
        if (*v47)
        {
          sub_1E3A3CBC8();
        }

        v55 = OUTLINED_FUNCTION_34_43(v46, v47, v48, v49, v50, v51, v52, v53, v85[0]);
        v54(v55);

        if (*(v2 + v43))
        {
          OUTLINED_FUNCTION_12_6();
          v57 = *(v56 + 480);

          OUTLINED_FUNCTION_25_60();
          v58 = v57();
          v66 = v58;
          if (*v59)
          {
            v67 = v59;

            MEMORY[0x1E6910BF0](v68);
            sub_1E38C5A18(*((*v67 & 0xFFFFFFFFFFFFFF8) + 0x10));
            v58 = sub_1E4206324();
          }

          v69 = OUTLINED_FUNCTION_34_43(v58, v59, v60, v61, v62, v63, v64, v65, v85[0]);
          v66(v69);
        }
      }

      v70 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_topResultsCollectionViewModel;
      if (*(v2 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_topResultsCollectionViewModel))
      {
        OUTLINED_FUNCTION_26();
        v72 = *(v71 + 1208);

        v72(v73);
      }

      OUTLINED_FUNCTION_47_0();
      v82 = OUTLINED_FUNCTION_63_0();
      v83(v82);
      *(v2 + v70) = v4;

      (v40)(v84);
      goto LABEL_32;
    }
  }

  return result;
}

uint64_t sub_1E3BAC284()
{
  OUTLINED_FUNCTION_19_74();
  sub_1E3BABB08();
  sub_1E3BABD34(v2);
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_topResultsCollectionViewModel);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_document);
    OUTLINED_FUNCTION_47_0();
    v6 = *(v5 + 656);

    v7 = v6(v4);
    if ((*(*v3 + 1208))(v7))
    {
      swift_getObjectType();
      v8 = OUTLINED_FUNCTION_22_58();
      v9(v8);
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_12_5();
  (*(v10 + 664))();
  sub_1E3C69720();
}

uint64_t sub_1E3BAC3E0()
{
  OUTLINED_FUNCTION_19_74();
  v3 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController;
  if (*&v1[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController])
  {
    OUTLINED_FUNCTION_88_0();
    v5 = *(v4 + 1392);
    v7 = v6;
    v8 = OUTLINED_FUNCTION_26_57();
    v5(v8);
  }

  OUTLINED_FUNCTION_12_5();
  (*(v9 + 736))();
  if (*(v0 + v3))
  {
    OUTLINED_FUNCTION_88_0();
    v11 = *(v10 + 1416);
    v13 = v12;
    v11(0);
  }

  OUTLINED_FUNCTION_47_0();
  v15 = *(v14 + 656);

  v15(v16);
  v17 = objc_opt_self();
  if ([v17 isSearchEnabled] && objc_msgSend(objc_opt_self(), sel_userHasActiveAccount))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E429A240;
    *(inited + 32) = 25705;
    *(inited + 40) = 0xE200000000000000;
    v19 = sub_1E3B58270();
    v20 = v19[1];
    v21 = MEMORY[0x1E69E6158];
    *(inited + 48) = *v19;
    *(inited + 56) = v20;
    *(inited + 72) = v21;
    *(inited + 80) = 0x7475626972747461;
    *(inited + 88) = 0xEA00000000007365;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_1E4297BE0;

    v23 = sub_1E3B5827C();
    v25 = *v23;
    v24 = *(v23 + 1);
    *(v22 + 32) = v25;
    *(v22 + 40) = v24;

    v26 = sub_1E3B58264();
    v28 = *v26;
    v27 = v26[1];
    *(v22 + 48) = v28;
    *(v22 + 56) = v27;

    v29 = sub_1E4205CB4();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
    *(inited + 96) = v29;
    *(inited + 120) = v30;
    *(inited + 128) = 0x6E6572646C696863;
    *(inited + 136) = 0xE800000000000000;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF311C8);
    *(inited + 144) = MEMORY[0x1E69E7CC0];
    *(inited + 168) = v31;
    *(inited + 176) = 0x4B6E65646C696863;
    *(inited + 184) = 0xEA00000000007965;
    *(inited + 192) = 0x6E6572646C696863;
    *(inited + 200) = 0xE800000000000000;
    *(inited + 216) = v21;
    *(inited + 224) = 0xD000000000000015;
    *(inited + 232) = 0x80000001E4274B90;
    *(inited + 264) = MEMORY[0x1E69E6370];
    *(inited + 240) = 1;
    OUTLINED_FUNCTION_63_0();
    v32 = sub_1E4205CB4();
    v33 = *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_recentlySearchedTemplateViewModel);
    type metadata accessor for UnifiedMessagingBubbleTipViewModel();

    v34 = sub_1E375D8A0(137, v32, v33);
    if (v34)
    {
      OUTLINED_FUNCTION_12_6();
      v36 = *(v35 + 880);
      v37 = swift_unknownObjectRetain();
      v36(v37, &off_1F5D74EB0);
    }
  }

  else
  {
    v34 = 0;
  }

  v38 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_recentlySearchedTemplateViewModel;
  v39 = *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_recentlySearchedTemplateViewModel);
  if (v39)
  {

    v40 = [v17 isSearchEnabled];
    if (v34 && v40)
    {

      v41 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
      v42 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_recentlySearchedBubbleTipViewController;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      if (*(v41 + v42))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
        swift_allocObject();
        OUTLINED_FUNCTION_38_31();
        *(v43 + 16) = xmmword_1E429DCC0;
        *(v43 + 32) = v34;
        *(v43 + 40) = v2;
        v44 = *(*v39 + 472);

        v45 = OUTLINED_FUNCTION_4_126();
        v44(v45);

LABEL_23:

        sub_1E3BACAA4(v39);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    swift_allocObject();
    OUTLINED_FUNCTION_38_31();
    *(v55 + 16) = xmmword_1E4298880;
    *(v55 + 32) = v2;
    v56 = *(*v39 + 472);

    v57 = OUTLINED_FUNCTION_4_126();
    v56(v57);
    goto LABEL_23;
  }

  type metadata accessor for TemplateViewModel();
  sub_1E410D4C8();
  if (v46)
  {
    v47 = v46;
    v48 = [v17 isSearchEnabled];
    if (v34 && v48)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      swift_allocObject();
      OUTLINED_FUNCTION_38_31();
      *(v49 + 16) = xmmword_1E429DCC0;
      *(v49 + 32) = v34;
      *(v49 + 40) = v2;
      v50 = *(*v47 + 472);
      swift_retain_n();

      v51 = OUTLINED_FUNCTION_4_126();
      v50(v51);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      swift_allocObject();
      OUTLINED_FUNCTION_38_31();
      *(v52 + 16) = xmmword_1E4298880;
      *(v52 + 32) = v2;
      v53 = *(*v47 + 472);

      v54 = OUTLINED_FUNCTION_4_126();
      v53(v54);
    }

    sub_1E3BACAA4(v47);

    *(v0 + v38) = v47;
  }
}

void sub_1E3BACAA4(void *a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = (v9 - v8);
  v11 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v11, v4);
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1E323F000, v12, v13, "SearchController::SearchResults:: populateStackTemplate", v14, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v15 = OUTLINED_FUNCTION_63_0();
  v16(v15);
  v17 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController;
  v18 = *(v2 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController);
  v19 = MEMORY[0x1E69E7D40];
  if (v18)
  {
    v20 = v18;
    OUTLINED_FUNCTION_38();
    sub_1E404BB24();
  }

  else
  {
    type metadata accessor for SearchStackViewController();
    OUTLINED_FUNCTION_38();

    v21 = sub_1E3E67BE4();
    v22 = *(v2 + v17);
    *(v2 + v17) = v21;
    a1 = v21;

    v23 = *((*v19 & *a1) + 0x558);
    v24 = swift_unknownObjectRetain();
    v23(v24, &off_1F5D74E98);

    if (*(v2 + v17))
    {
      OUTLINED_FUNCTION_88_0();
      a1 = *(v25 + 416);
      v27 = v26;
      (a1)(v32);
    }

    else
    {
      v33 = 0;
      memset(v32, 0, sizeof(v32));
    }

    OUTLINED_FUNCTION_12_5();
    (*(v28 + 328))(v32);
  }

  v29 = *(v2 + v17);
  if (v29)
  {
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    OUTLINED_FUNCTION_19_6();
    v30 = *((*v19 & *v29) + 0x5B8);
    v31 = v29;
    OUTLINED_FUNCTION_38();

    v30(sub_1E3BADF9C, a1);
  }

  sub_1E3BAD6F4();
}

void sub_1E3BACDC4()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController))
  {
    OUTLINED_FUNCTION_88_0();
    v2 = *(v1 + 1528);
    v4 = v3;
    v2();
  }
}

void sub_1E3BACE78()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController))
  {
    OUTLINED_FUNCTION_88_0();
    v2 = *(v1 + 1512);
    v4 = v3;
    v2();
  }
}

void sub_1E3BACF20(char a1, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController))
  {
    OUTLINED_FUNCTION_88_0();
    v6 = *(v5 + 1520);
    v8 = v7;
    v6(a1 & 1, a2 & 1);
  }
}

uint64_t sub_1E3BAD040()
{
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_collectionImpressioner, &unk_1ECF296D0);
  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_delegate);

  sub_1E34AF594(*(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_scrollHandler));
}

id sub_1E3BAD168()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1E3BAD37C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 336))();
  return sub_1E37BCF0C;
}

void sub_1E3BAD41C()
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
  v11 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v11, v4);
  v12 = v3;
  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_1E323F000, v13, v14, "SearchController::SearchResults:: did host stack cv %@", v15, 0xCu);
    sub_1E325F748(v16, &unk_1ECF28E30);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v18 = OUTLINED_FUNCTION_57();
  v19(v18);
  v20 = sub_1E4206934();
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x160))(v20))
  {
    v22 = v21;
    ObjectType = swift_getObjectType();
    (*(v22 + 16))(v12, v1, ObjectType, v22);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3BAD634()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_21();
  result = (*(v2 + 352))();
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, v0, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E3BAD6F4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = *&v1[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController];
  if (!v9)
  {
    goto LABEL_10;
  }

  v26 = v9;
  v10 = [v26 vuiParentViewController];
  if (!v10)
  {
    v13 = sub_1E324FBDC();
    (*(v4 + 16))(v8, v13, v2);
    v14 = v26;
    v15 = sub_1E41FFC94();
    v16 = sub_1E4206814();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v9;
      v19 = v14;
      _os_log_impl(&dword_1E323F000, v15, v16, "SearchController::SearchResults:: adding stack vc %@", v17, 0xCu);
      sub_1E325F748(v18, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v20 = OUTLINED_FUNCTION_57();
    v21(v20);
    [v1 vui:v14 addChildViewController:?];
    v22 = v14;
    sub_1E3BAA8D8(v9);

    v23 = OUTLINED_FUNCTION_43_38();
    if (!v23)
    {
      __break(1u);
      return;
    }

    v24 = v23;
    v25 = [v22 vuiView];

    [v24 vui:v25 addSubview:0 oldView:?];
    [v22 vui:v1 didMoveToParentViewController:?];

LABEL_10:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3BAD988(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  ViewModelKeys.rawValue.getter(30);
  v5 = MEMORY[0x1E69E6158];
  *(inited + 32) = v6;
  *(inited + 40) = v7;
  *(inited + 72) = v5;
  *(inited + 48) = 0x6572656665726F6ELL;
  *(inited + 56) = 0xEB0000000065636ELL;
  ViewModelKeys.rawValue.getter(7);
  *(inited + 80) = v8;
  *(inited + 88) = v9;
  *(inited + 120) = v5;
  *(inited + 96) = a1;
  *(inited + 104) = a2;

  ViewModelKeys.rawValue.getter(8);
  *(inited + 128) = v10;
  *(inited + 136) = v11;
  v12 = *sub_1E3BA53F4();
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
  *(inited + 144) = v12;

  v13 = sub_1E4205CB4();
  type metadata accessor for CollectionViewModel();
  return sub_1E40B198C(119, v13, 0);
}

uint64_t sub_1E3BADAB4()
{
  v1 = *v0;
  if (!sub_1E32AE9B0(*v0))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1E32AE9B0(v1);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_10:
    v3 = MEMORY[0x1E6911E60](0, v1);
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(v1 + 32);

LABEL_6:
  result = sub_1E32AE9B0(v1);
  if (result)
  {
    sub_1E3882AB0(0, 1);
    return v3;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1E3BADB54(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    result = sub_1E4207574();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](v4, a1);
        }

        else
        {
        }

        ++v4;
        type metadata accessor for PagePerformanceReporter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34450);
        swift_dynamicCast();
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
      }

      while (v2 != v4);
      return v5;
    }
  }

  return result;
}

void sub_1E3BADC9C()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationBar];

    [v3 frame];
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_6();
}

double sub_1E3BADD34()
{
  v0 = sub_1E3941780();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *v0;
}

BOOL sub_1E3BADD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[3] = &unk_1F5D5DE28;
  v11[4] = &off_1F5D5CA58;
  LOBYTE(v11[0]) = 3;
  v5 = j__OUTLINED_FUNCTION_18();
  v6 = sub_1E39C29F0(v11, v5 & 1);
  __swift_destroy_boxed_opaque_existential_1(v11);
  result = 0;
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_8();
    if ((*(v7 + 464))())
    {

      v8 = sub_1E3F702D8();
      v9 = *v8 == a2 && *(v8 + 1) == a3;
      if (!v9 && (sub_1E42079A4() & 1) == 0)
      {
        return 1;
      }
    }
  }

  return result;
}

unint64_t sub_1E3BADE6C()
{
  result = qword_1ECF34440;
  if (!qword_1ECF34440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34440);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchResultsViewController.PageUpdateOperation(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1E3BADF9C(uint64_t a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x250))();

    if (v4)
    {
      v4(a1);
      sub_1E34AF594(v4);
    }
  }
}

uint64_t sub_1E3BAE054(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  v7 = *v3;
  result = sub_1E32AE9B0(*v3);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2 - v6;
  if (__OFSUB__(a2, v6))
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
  result = v10 + v9;
  if (v11)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1E3797CDC(result);

  return sub_1E3BAE104(v6, a2, 1, a3);
}

uint64_t sub_1E3BAE104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v4 = a4;
  v7 = a3;
  v8 = a2;
  v6 = a1;
  v13 = *v5;
  v10 = *v5 & 0xFFFFFFFFFFFFFF8;
  v11 = v10 + 32;
  v9 = v10 + 32 + 8 * a1;
  type metadata accessor for ViewModel();
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v7, v12);
  v12 = v7 - v12;
  if (v15)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = (v9 + 8 * v7);
  if (!v12)
  {
    goto LABEL_17;
  }

  v9 = v13 >> 62;
  if (!(v13 >> 62))
  {
    result = *(v10 + 16);
    goto LABEL_6;
  }

LABEL_26:
  result = sub_1E4207384();
LABEL_6:
  v16 = result - v8;
  if (__OFSUB__(result, v8))
  {
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v17 = (v11 + 8 * v8);
  if (v5 != v17 || &v17[8 * v16] <= v5)
  {
    memmove(v5, v17, 8 * v16);
  }

  if (v9)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = *(v10 + 16);
  }

  if (__OFADD__(result, v12))
  {
    goto LABEL_28;
  }

  *(v10 + 16) = result + v12;
LABEL_17:
  if (v7 < 1)
  {
  }

  else
  {
    v19 = v10 + 8 * v6;
    *(v19 + 32) = v4;
    if (v19 + 40 < v5)
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E3BAE27C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    OUTLINED_FUNCTION_8();
    (*(v2 + 240))();
  }

  return result;
}

void sub_1E3BAE308(double a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    OUTLINED_FUNCTION_8();
    v5 = (*(v4 + 224))();

    if (v5)
    {
      [v5 setVuiAlpha_];
    }
  }
}

void sub_1E3BAE3B8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x310))();
  }
}

uint64_t sub_1E3BAE454()
{
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

__objc2_class **sub_1E3BAE4A8()
{
  result = (*(**v0 + 392))();
  if (result)
  {
    if (*result != _TtC8VideosUI27SearchTopResultLockupLayout)
    {

      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for SearchTopResultLockup()
{
  result = qword_1EE29B3E0;
  if (!qword_1EE29B3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3BAE580@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  a3[29] = 0;
  a3[31] = 0;
  v11 = *(type metadata accessor for SearchTopResultLockup() + 60);
  *(a3 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  memcpy(a3 + 1, a2, 0xC3uLL);
  type metadata accessor for ContextMenuModel();
  swift_retain_n();
  sub_1E3E6CDBC();

  sub_1E4207414();
  (*(v9 + 104))(v3, *MEMORY[0x1E697E660], v7);
  a3[26] = sub_1E4188148(a1, v3);
  v12 = sub_1E39C1F18();
  if (sub_1E32AE9B0(v12))
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1E6911E60](0, v12);
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_50;
      }

      v13 = *(v12 + 32);
    }
  }

  else
  {

    v13 = 0;
  }

  if (TVAppFeature.isEnabled.getter(10))
  {
    v12 = sub_1E39C1F18();
    if (!sub_1E32AE9B0(v12))
    {
      goto LABEL_20;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
LABEL_50:
      v15 = MEMORY[0x1E6911E60](0, v12);
      goto LABEL_17;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:
      v15 = *(v12 + 32);

LABEL_17:

      a3[32] = v15;
      if ((*(*v15 + 392))(v16))
      {
        type metadata accessor for TextBadgeLayout();
        if (!swift_dynamicCastClass())
        {
        }
      }

LABEL_22:
      type metadata accessor for TextBadgePresenter();

      a3[33] = sub_1E3789F30(v17);
      type metadata accessor for ImageBadgePresenter(0);

      a3[34] = sub_1E375E078(v18);
      v19 = sub_1E39C408C(26);
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = sub_1E39C408C(16);
        if (!v20)
        {
          goto LABEL_27;
        }
      }

      if (*v20 != _TtC8VideosUI13TextViewModel)
      {

        v20 = 0;
      }

LABEL_27:
      a3[27] = v20;

      v21 = sub_1E39C408C(23);
      if (v21 && *v21 != _TtC8VideosUI13TextViewModel)
      {

        v21 = 0;
      }

      a3[28] = v21;
      if (sub_1E39C408C(15))
      {
        v22 = j__OUTLINED_FUNCTION_18();
        v23 = sub_1E39C26D0(1, v22 & 1);

        if (!v23 || *v23 == _TtC8VideosUI13TextViewModel)
        {
LABEL_35:
          a3[30] = v23;
          if (v20)
          {

            if (v23)
            {
              OUTLINED_FUNCTION_47_0();
              v25 = (*(v24 + 392))();
              if (v25)
              {
                v26 = v25;
                if (*v25 == _TtC8VideosUI27SearchTopResultLockupLayout)
                {
                  OUTLINED_FUNCTION_25();
                  swift_beginAccess();
                  v27 = v26[16];

                  (v27->isa[51].cache)(1, 0);
                }
              }
            }
          }

          v28 = sub_1E39C408C(79);

          if (v28)
          {
            v29 = sub_1E39C408C(9);

            if (!v29 || *v29 == _TtC8VideosUI13TextViewModel)
            {
              goto LABEL_47;
            }
          }

          else
          {
          }

          v29 = 0;
LABEL_47:
          a3[31] = v29;
          return result;
        }
      }

      v23 = 0;
      goto LABEL_35;
    }

    __break(1u);
  }

  if (!v13)
  {
LABEL_21:
    a3[32] = 0;
    goto LABEL_22;
  }

  v12 = sub_1E39C1F18();

  result = sub_1E32AE9B0(v12);
  if (!result)
  {
LABEL_20:

    goto LABEL_21;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    goto LABEL_50;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1E3BAEBBC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v32 = v3;
  v33 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v31 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v30 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34458);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34460);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_5();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34468);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  sub_1E3BAEEC0();
  v21 = *(v2 + 208);
  v22 = sub_1E3BB35F4();
  sub_1E4187EA8(v21, v8, v22);
  sub_1E325F69C(v11, &qword_1ECF34458);
  v23 = sub_1E3BAE4A8();
  v34 = v8;
  v35 = v22;
  OUTLINED_FUNCTION_3_8();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_8_6();
  LOBYTE(v11) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8_6();
  LOBYTE(v2) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8_6();
  v25 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v23, v11 & 1, v2 & 1, 1, v25 & 1, v12, OpaqueTypeConformance2);

  (*(v14 + 8))(v1, v12);
  v26 = v30;
  sub_1E4202474();
  v34 = v12;
  v35 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_5_15();
  swift_getOpaqueTypeConformance2();
  v27 = v29;
  sub_1E4203224();
  (*(v31 + 8))(v26, v33);
  (*(v17 + 8))(v20, v27);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BAEEC0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v30[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF344D8);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF344E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  v30[0] = type metadata accessor for StandardLockupListView();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1E3BAE4A8();
  if (v15 && (v16 = v15, OUTLINED_FUNCTION_25(), swift_beginAccess(), v17 = *(v16 + 176), , (v17 & 1) == 0))
  {
    memcpy(v33, (v2 + 8), 0xC3uLL);

    sub_1E375C1CC(v33, &v31);
    OUTLINED_FUNCTION_25();
    sub_1E3C6E960();
    sub_1E3BB3A6C(v14, v0);
    swift_storeEnumTagMultiPayload();
    sub_1E3BB37C8();
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34488);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34490);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34498);
    v27 = sub_1E3BB3820();
    v31 = v26;
    v32 = v27;
    OUTLINED_FUNCTION_8_3();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v31 = v25;
    v32 = OpaqueTypeConformance2;
    OUTLINED_FUNCTION_3_16();
    v29 = swift_getOpaqueTypeConformance2();
    v31 = v24;
    v32 = v29;
    OUTLINED_FUNCTION_25_61();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_62_16();
    sub_1E3BB3AD0(v14);
  }

  else
  {
    sub_1E3BAF1F4();
    (*(v6 + 16))(v0, v9, v4);
    swift_storeEnumTagMultiPayload();
    sub_1E3BB37C8();
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34488);
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34490);
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34498);
    v21 = sub_1E3BB3820();
    v33[0] = v20;
    v33[1] = v21;
    OUTLINED_FUNCTION_8_3();
    v22 = swift_getOpaqueTypeConformance2();
    v33[0] = v19;
    v33[1] = v22;
    OUTLINED_FUNCTION_3_16();
    v23 = swift_getOpaqueTypeConformance2();
    v33[0] = v18;
    v33[1] = v23;
    OUTLINED_FUNCTION_25_61();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_62_16();
    (*(v6 + 8))(v9, v4);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BAF1F4()
{
  OUTLINED_FUNCTION_9_4();
  v29 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34498);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_5();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34490);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34488);
  OUTLINED_FUNCTION_0_10();
  v27 = v12;
  v28 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_4();
  sub_1E3BAF540();
  if (sub_1E3BAE4A8())
  {
    OUTLINED_FUNCTION_30();
    v15 = (*(v14 + 792))();
  }

  else
  {
    v15 = 11;
  }

  memset(v34, 0, sizeof(v34));
  v35 = 1;
  v16 = sub_1E3BB3820();
  sub_1E3A6929C(v15, 0, 0, 1, v34, v3, v16);
  sub_1E325F69C(v1, &qword_1ECF34498);
  if (sub_1E3BAE4A8())
  {
    OUTLINED_FUNCTION_30();
    v18 = (*(v17 + 744))();
  }

  else
  {
    v18 = 0;
  }

  v32[0] = v3;
  v32[1] = v16;
  OUTLINED_FUNCTION_8_3();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_46_4();
  sub_1E39B87A4(v20);

  (*(v7 + 8))(v10, v5);
  if (sub_1E3BAE4A8())
  {
    OUTLINED_FUNCTION_30();
    (*(v21 + 552))(v32);

    if ((v33 & 1) == 0)
    {
      v22 = OUTLINED_FUNCTION_6();
      sub_1E3952BE8(v22, v23, v24, v25);
    }
  }

  v30 = v5;
  v31 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_3_16();
  swift_getOpaqueTypeConformance2();
  v26 = v28;
  sub_1E3E361E8();
  (*(v27 + 8))(v0, v26);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3BAF540()
{
  OUTLINED_FUNCTION_31_1();
  v35[1] = v1;
  v35[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29568);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v35 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF344E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF344B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_5();
  v7 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  type metadata accessor for SearchTopResultLockup();
  sub_1E3746E10(v13);
  v14 = sub_1E3B02A04();
  (*(v9 + 8))(v13, v7);
  if (v14)
  {
    sub_1E3BAF800(v0);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v15, v16, v17);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_27_47();
    OUTLINED_FUNCTION_21_1();
    sub_1E3BB39A8(v18, v19, v20, v21);
    OUTLINED_FUNCTION_26_58();
  }

  else
  {
    sub_1E3BAFA5C(v4);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v26, v27, v28);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_27_47();
    sub_1E3BB39A8(v29, v30, v31, v32);
    OUTLINED_FUNCTION_26_58();
    OUTLINED_FUNCTION_21_1();
  }

  sub_1E3BB39A8(v22, v23, v24, v25);
  OUTLINED_FUNCTION_31_6();
  sub_1E4201F44();
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v33, v34);
  OUTLINED_FUNCTION_25_2();
}

void *sub_1E3BAF800@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF344C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_2();
  if (sub_1E3BAE4A8())
  {
    OUTLINED_FUNCTION_30();
    (*(v7 + 1152))();
  }

  v8 = sub_1E3BAE4A8();
  if (!v8 || (v9 = v8, OUTLINED_FUNCTION_25(), swift_beginAccess(), v10 = *(v9 + 176), , (v10)) && sub_1E3BAE4A8() && (OUTLINED_FUNCTION_30(), (*(v11 + 176))(v25), v12 = v25[0], v13 = v25[1], v14 = v25[2], v15 = v25[3], , (v26 & 1) == 0))
  {
    v16.n128_u64[0] = v12;
    v17.n128_u64[0] = v13;
    v18.n128_u64[0] = v14;
    v19.n128_u64[0] = v15;
    j_nullsub_1(v16, v17, v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_9_10();
  *v2 = sub_1E4201D54();
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF344F0);
  sub_1E3BAFC38(v3, v2 + *(v20 + 44));
  v21 = sub_1E4202734();
  v22 = (v2 + *(v5 + 36));
  *v22 = v21;
  OUTLINED_FUNCTION_15_3(v22);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_23_3();
  sub_1E42015C4();
  sub_1E3741EA0(v2, a1, &qword_1ECF344C0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF344B0);
  return memcpy((a1 + *(v23 + 36)), __src, 0x70uLL);
}

void *sub_1E3BAFA5C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29578);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_2();
  v5 = sub_1E3BAE4A8();
  if (!v5 || (v6 = v5, OUTLINED_FUNCTION_25(), swift_beginAccess(), v7 = *(v6 + 176), , (v7)) && sub_1E3BAE4A8() && (OUTLINED_FUNCTION_30(), (*(v8 + 176))(&v17), , (v18 & 1) == 0))
  {
    v9.n128_f64[0] = OUTLINED_FUNCTION_6();
    j_nullsub_1(v9, v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  *v1 = sub_1E4201D44();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29598);
  sub_1E3BB1284();
  v13 = sub_1E4202734();
  v14 = (v1 + *(v3 + 36));
  *v14 = v13;
  OUTLINED_FUNCTION_11_4(v14);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_23_3();
  sub_1E42015C4();
  sub_1E3741EA0(v1, a1, &qword_1ECF29578);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29568);
  return memcpy((a1 + *(v15 + 36)), __src, 0x70uLL);
}

uint64_t sub_1E3BAFC38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v179 = a2;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v193 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v5);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8);
  OUTLINED_FUNCTION_0_10();
  v176 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v11);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B8);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v168 - v27;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295C0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295C8);
  v40 = v39 - 8;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v41);
  v43 = v168 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF344F8);
  v45 = OUTLINED_FUNCTION_17_2(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v168 - v47;
  *v48 = sub_1E4201B84();
  *(v48 + 1) = 0;
  v48[16] = 0;
  v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34500) + 44);
  v184 = v48;
  v50 = &v48[v49];
  v51 = sub_1E42036E4();
  v52 = *sub_1E418A524();
  v53 = sub_1E4203D44();
  v55 = v54;
  v56 = &v50[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34508) + 36)];
  sub_1E3BB0CB4();
  v57 = &v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34510) + 36)];
  *v57 = v53;
  v57[1] = v55;
  *v50 = v51;
  *(v50 + 4) = 256;
  *(v50 + 2) = v52;
  *(v50 + 12) = 0;
  sub_1E3BB0F34();
  v58 = *(v40 + 44);
  v185 = v43;
  *&v43[v58] = 256;
  v59 = v192;
  v60 = v193;
  v195 = a1;
  if (a1[27])
  {

    v61 = sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21();
    v62 = v168[0];
    v63 = v173;
    sub_1E3883AF4(v61);
    (*(v60 + 8))(v59, v63);
    sub_1E4202744();
    v64 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v65)
    {
      v64 = sub_1E4202774();
    }

    v66 = v176;
    if (v61)
    {
      v67 = v28;
      v68 = v63;
      v69 = v176;
      v70 = *(*v61 + 152);

      v70(&v199, v71);
      v66 = v69;
      v63 = v68;
      v28 = v67;

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    v74 = v169;
    v72 = v177;
    (*(v66 + 32))(v169, v62, v177);
    v73 = v175;
    v75 = (v74 + *(v175 + 36));
    *v75 = v64;
    OUTLINED_FUNCTION_15_3(v75);
    a1 = &unk_1E429B6F0;
    OUTLINED_FUNCTION_12_19();
    sub_1E3741EA0(v76, v77, v78);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v79, v80, v81);
  }

  else
  {
    v72 = v177;
    v66 = v176;
    v73 = v175;
    v63 = v173;
  }

  v82 = v191;
  OUTLINED_FUNCTION_37_6();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
  sub_1E4202744();
  OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  v87 = v73;
  v88 = v183;
  if (!v65)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_65_16();
  sub_1E3741EA0(v89, v90, v91);
  OUTLINED_FUNCTION_22_59();
  OUTLINED_FUNCTION_15_3(v92);
  sub_1E3741EA0(a1, v186, &qword_1ECF295C0);
  v93 = v193;
  if (v195[28])
  {

    v94 = sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_47_35();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_41_38();
    v95 = OUTLINED_FUNCTION_64_16();
    v96(v95);
    sub_1E4202744();
    v97 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v65)
    {
      v97 = sub_1E4202774();
    }

    if (v94)
    {
      OUTLINED_FUNCTION_47_0();
      v99 = *(v98 + 152);
      v28 = v63;

      v99(&v200, v100);
      v93 = v193;
      OUTLINED_FUNCTION_47_35();

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    v102 = v170;
    (*(v66 + 32))(v170, v180, v72);
    v103 = (v102 + *(v87 + 36));
    *v103 = v97;
    OUTLINED_FUNCTION_15_3(v103);
    a1 = &unk_1E429B6F0;
    OUTLINED_FUNCTION_12_19();
    sub_1E3741EA0(v104, v105, v106);
    v88 = v183;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v107, v108, v109);
    v101 = 0;
    v82 = v191;
  }

  else
  {
    OUTLINED_FUNCTION_47_35();
  }

  __swift_storeEnumTagSinglePayload(v88, v101, 1, v87);
  sub_1E4202744();
  OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v65)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_65_16();
  sub_1E3741EA0(v110, v111, v112);
  OUTLINED_FUNCTION_22_59();
  OUTLINED_FUNCTION_15_3(v113);
  sub_1E3741EA0(a1, v187, &qword_1ECF295C0);
  if (v195[30])
  {

    v114 = sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_42_42();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_41_38();
    v115 = OUTLINED_FUNCTION_64_16();
    v116(v115);
    sub_1E4202744();
    v117 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v65)
    {
      v117 = sub_1E4202774();
    }

    if (v114)
    {
      OUTLINED_FUNCTION_47_0();
      v119 = *(v118 + 152);
      v28 = v63;

      v119(&v201, v120);
      v93 = v193;
      OUTLINED_FUNCTION_47_35();

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    v82 = v171;
    (*(v66 + 32))(v171, v181, v72);
    v122 = (v82 + *(v87 + 36));
    *v122 = v117;
    OUTLINED_FUNCTION_15_3(v122);
    a1 = &unk_1E429B6F0;
    OUTLINED_FUNCTION_12_19();
    sub_1E3741EA0(v123, v124, v125);
    OUTLINED_FUNCTION_12_19();
    sub_1E3741EA0(v126, v127, v128);
    v121 = 0;
  }

  else
  {
    v121 = 1;
  }

  __swift_storeEnumTagSinglePayload(v82, v121, 1, v87);
  sub_1E4202744();
  OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v65)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_65_16();
  sub_1E3741EA0(v129, v130, v131);
  OUTLINED_FUNCTION_22_59();
  OUTLINED_FUNCTION_11_4(v132);
  sub_1E3741EA0(a1, v188, &qword_1ECF295C0);
  v133 = v195[31];
  if (v133)
  {

    v134 = sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_42_42();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_41_38();
    (*(v93 + 8))(v28, v63);
    sub_1E4202744();
    v135 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v65)
    {
      v135 = sub_1E4202774();
    }

    if (v134)
    {
      OUTLINED_FUNCTION_47_0();
      v137 = *(v136 + 152);

      v137(&v202, v138);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v141 = v172;
    (*(v66 + 32))(v172, v182, v72);
    v142 = (v141 + *(v87 + 36));
    *v142 = v135;
    OUTLINED_FUNCTION_11_4(v142);
    v133 = &qword_1ECF295B0;
    a1 = &unk_1E429B6F0;
    OUTLINED_FUNCTION_12_19();
    sub_1E3741EA0(v143, v144, v145);
    v140 = v174;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v146, v147, v148);
    v139 = 0;
  }

  else
  {
    v139 = 1;
    v140 = v174;
  }

  __swift_storeEnumTagSinglePayload(v140, v139, 1, v87);
  OUTLINED_FUNCTION_56_6();
  sub_1E3743538(v149, v150, v151);
  v198[0] = v133;
  OUTLINED_FUNCTION_56_6();
  sub_1E3743538(v152, v153, v154);
  v198[1] = v133;
  v155 = v186;
  OUTLINED_FUNCTION_56_6();
  sub_1E3743538(v156, v157, &qword_1ECF295C0);
  v198[2] = v133;
  v158 = v187;
  OUTLINED_FUNCTION_65_16();
  sub_1E3743538(v159, v160, &qword_1ECF295C0);
  v198[3] = a1;
  v161 = v188;
  OUTLINED_FUNCTION_56_6();
  sub_1E3743538(v162, v163, &qword_1ECF295C0);
  v198[4] = v133;
  v164 = v178;
  sub_1E3743538(v140, v178, &qword_1ECF295B8);
  v196 = 0;
  v197 = 0;
  v198[5] = v164;
  v198[6] = &v196;
  sub_1E3BB1168(v198, v179);
  sub_1E325F69C(v140, &qword_1ECF295B8);
  OUTLINED_FUNCTION_50_3(v161);
  OUTLINED_FUNCTION_50_3(v158);
  OUTLINED_FUNCTION_50_3(v155);
  sub_1E325F69C(v185, &qword_1ECF295C8);
  sub_1E325F69C(v184, &qword_1ECF344F8);
  sub_1E325F69C(v164, &qword_1ECF295B8);
  OUTLINED_FUNCTION_50_3(v133);
  OUTLINED_FUNCTION_50_3(a1);
  OUTLINED_FUNCTION_50_3(v190);
  sub_1E325F69C(v189, &qword_1ECF295C8);
  OUTLINED_FUNCTION_46_4();
  return sub_1E325F69C(v165, v166);
}

void sub_1E3BB0CB4()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_41();
  if (sub_1E3BAE454())
  {
    j__OUTLINED_FUNCTION_18();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_55_27();
    sub_1E3EB9C0C(v5, v6, v7, v8, v9, v10, 0, 2, v11, 0, 1, 0, 1, v40, v41, v42, v43);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_5();
    sub_1E37E8BE8(v12, v13, v14, v15, v16, v17, v18);
    v19 = sub_1E4203D64();
    v21 = v20;
    v22 = sub_1E3BAE4A8();
    if (v22 && (v23 = v22, OUTLINED_FUNCTION_25(), swift_beginAccess(), v24 = v23[13], , v25 = , (v24->isa[4].cache)(v44, v25), , (v45 & 1) == 0))
    {
      v31.n128_f64[0] = OUTLINED_FUNCTION_6();
      j_nullsub_1(v31, v32, v33, v34);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_3();
    v35 = v0 + *(v3 + 36);
    *v35 = sub_1E4201D54();
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295E8);
    sub_1E3BB2F50();
    v36 = sub_1E4202734();
    sub_1E375C31C(v39);

    v37 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295F0) + 36));
    *v37 = v36;
    OUTLINED_FUNCTION_11_4(v37);
    v38 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295F8) + 36));
    *v38 = v19;
    v38[1] = v21;
    sub_1E3741EA0(v0, v2, &qword_1ECF295E0);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  }
}

void sub_1E3BB0F34()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  type metadata accessor for Monogram();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  if (sub_1E39C408C(41))
  {
    v4 = sub_1E3BAE4A8();
    if (v4)
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v5 = v4[14];

      (v5->isa[7].vtable)(v6);
    }

    j__OUTLINED_FUNCTION_51_1();
    j__OUTLINED_FUNCTION_18();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_55_27();
    sub_1E3EB9C0C(v7, v8, v9, v10, v11, v12, v13, 2, v14, 0, 1, 0, 1, v31, v32[0], v32[1], v32[2]);
    OUTLINED_FUNCTION_30_5();
    sub_1E3BD63E4(v15, v16, v17, v18, v19, v20, 0, 0, v21);
    sub_1E3788908(v0, v2, type metadata accessor for Monogram);
    OUTLINED_FUNCTION_35_9();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_35_9();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  }
}

uint64_t sub_1E3BB1168@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3743538(*a1, a2, &qword_1ECF344F8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34518);
  sub_1E3743538(a1[1], a2 + v4[12], &qword_1ECF295C8);
  sub_1E3743538(a1[2], a2 + v4[16], &qword_1ECF295C0);
  sub_1E3743538(a1[3], a2 + v4[20], &qword_1ECF295C0);
  sub_1E3743538(a1[4], a2 + v4[24], &qword_1ECF295C0);
  result = sub_1E3743538(a1[5], a2 + v4[28], &qword_1ECF295B8);
  v6 = a2 + v4[32];
  v7 = a1[6];
  v8 = *v7;
  LOBYTE(v7) = *(v7 + 8);
  *v6 = v8;
  *(v6 + 8) = v7;
  return result;
}

void sub_1E3BB1284()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v75 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v68 = v6;
  v69 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8);
  OUTLINED_FUNCTION_0_10();
  v72 = v9;
  v73 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v76 = v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v71 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v70 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B8);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29628);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v68 - v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_34_1();
  if (sub_1E3BAE4A8())
  {
    OUTLINED_FUNCTION_30();
    v29 = (*(v28 + 1152))();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 1;
  }

  *v26 = sub_1E4201B84();
  *(v26 + 1) = v29;
  v26[16] = v31 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29630);
  sub_1E3BB179C();
  sub_1E3741EA0(v26, v0, &qword_1ECF29628);
  if (*(v3 + 248))
  {

    v32 = sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_42_42();
    OUTLINED_FUNCTION_0_21();
    v33 = v69;
    sub_1E3883AF4(v32);
    (*(v68 + 8))(v1, v33);
    sub_1E4202744();
    v34 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v35)
    {
      v34 = sub_1E4202774();
    }

    if (v32)
    {
      v36 = *(*v32 + 152);

      v36(&v77, v37);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v38 = v71;
    (*(v72 + 32))(v71, v76, v73);
    v39 = (v38 + *(v74 + 36));
    *v39 = v34;
    OUTLINED_FUNCTION_11_4(v39);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v40, v41, v42);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v43, v44, v45);
  }

  OUTLINED_FUNCTION_37_6();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v50, v51, v52);
  v53 = OUTLINED_FUNCTION_39_3();
  sub_1E3743538(v53, v54, &qword_1ECF295B8);
  v55 = v75;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v56, v57, v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29638);
  sub_1E3743538(v20, v55 + *(v59 + 48), &qword_1ECF295B8);
  OUTLINED_FUNCTION_46_4();
  sub_1E325F69C(v60, v61);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v62, v63);
  OUTLINED_FUNCTION_46_4();
  sub_1E325F69C(v64, v65);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v66, v67);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3BB179C()
{
  OUTLINED_FUNCTION_31_1();
  v31 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29640);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29648);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295D0);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23_8();
  sub_1E3BB1A9C();
  v28 = v17;
  sub_1E3BB0F34();
  *v9 = sub_1E4201D54();
  *(v9 + 1) = 0;
  v9[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29650);
  sub_1E3BB1EEC();
  v30 = v22;
  sub_1E3743538(v0, v22, &qword_1ECF295D0);
  v29 = v14;
  sub_1E3743538(v17, v14, &qword_1ECF29648);
  sub_1E3743538(v9, v6, &qword_1ECF29640);
  v24 = v22;
  v25 = v31;
  sub_1E3743538(v24, v31, &qword_1ECF295D0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29658);
  sub_1E3743538(v14, v25 + v26[12], &qword_1ECF29648);
  sub_1E3743538(v6, v25 + v26[16], &qword_1ECF29640);
  v27 = v25 + v26[20];
  *v27 = 0;
  *(v27 + 8) = 0;
  sub_1E325F69C(v9, &qword_1ECF29640);
  sub_1E325F69C(v28, &qword_1ECF29648);
  sub_1E325F69C(v0, &qword_1ECF295D0);
  sub_1E325F69C(v6, &qword_1ECF29640);
  sub_1E325F69C(v29, &qword_1ECF29648);
  sub_1E325F69C(v30, &qword_1ECF295D0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BB1A9C()
{
  OUTLINED_FUNCTION_9_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8_4();
  if (sub_1E3BAE454())
  {
    v3 = sub_1E3BAE4A8();
    if (v3 && (v4 = v3, OUTLINED_FUNCTION_25(), swift_beginAccess(), v5 = *(v4 + 176), , (v5 & 1) == 0))
    {
      sub_1E3EB9BB4(&v80);
      v78 = v80;
      v79 = v81;
      v22 = v82;
      OUTLINED_FUNCTION_56_23();
      v26 = v83;
      v27 = v84;
    }

    else
    {
      v6 = 0.0;
      v7 = 0.0;
      if (sub_1E3BAE4A8())
      {
        OUTLINED_FUNCTION_30();
        *&v9 = COERCE_DOUBLE((*(v8 + 304))());
        v11 = v10;

        if ((v11 & 1) == 0)
        {
          v7 = *&v9;
        }
      }

      if (sub_1E3BAE4A8())
      {
        OUTLINED_FUNCTION_30();
        (*(v12 + 176))(&v65);

        if (v68)
        {
          v6 = 0.0;
        }

        else
        {
          v6 = *&v65;
        }
      }

      if (sub_1E3BAE4A8())
      {
        OUTLINED_FUNCTION_30();
        (*(v13 + 176))(&v80);

        OUTLINED_FUNCTION_32_1();
        if (!v16)
        {
          v14 = v15;
        }
      }

      else
      {
        v14 = 0.0;
      }

      v22 = v7 - v6 - v14;
      j__OUTLINED_FUNCTION_51_1();
      j__OUTLINED_FUNCTION_18();
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_55_3();
      OUTLINED_FUNCTION_58_2();
      v26 = 1;
      LOBYTE(v67) = 1;
      v66 = 0;
      BYTE8(v65) = 1;
      *&v65 = 0;
      OUTLINED_FUNCTION_55_27();
      sub_1E3EB9C0C(v28, v29, v30, v31, v32, v33, v34, 2, v35, v65, SBYTE8(v65), v66, v67, v68, v69, v70, v71);
      v78 = v80;
      v79 = v81;
      OUTLINED_FUNCTION_56_23();
      v27 = v84;
      v25 = 1;
      v77 = 0;
    }

    v65 = v78;
    v71 = v75;
    v66 = v79;
    v67 = v23;
    v68 = *&v22;
    v69 = v24;
    v70 = v25;
    *v72 = v76[0];
    *&v72[14] = *(v76 + 14);
    v73 = v26;
    v74 = v27;
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_5();
    sub_1E37E8BE8(v36, v37, v38, v39, v40, v41, v42);
    v43 = sub_1E4203D64();
    v45 = v44;
    v46 = sub_1E3BAE4A8();
    if (v46 && (v47 = v46, OUTLINED_FUNCTION_25(), swift_beginAccess(), v48 = v47[13], , v49 = , (v48->isa[4].cache)(&v80, v49), , (LOBYTE(v82) & 1) == 0))
    {
      v50.n128_f64[0] = OUTLINED_FUNCTION_6();
      j_nullsub_1(v50, v51, v52, v53);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_3();
    v54 = v0 + *(v1 + 36);
    *v54 = sub_1E4201D54();
    *(v54 + 8) = 0;
    *(v54 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295E8);
    sub_1E3BB2F50();
    v55 = sub_1E4202734();
    sub_1E375C31C(&v65);

    v56 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295F0) + 36));
    *v56 = v55;
    OUTLINED_FUNCTION_11_4(v56);
    v57 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295F8) + 36));
    *v57 = v43;
    v57[1] = v45;
    v58 = OUTLINED_FUNCTION_39_3();
    sub_1E3741EA0(v58, v59, v60);
    OUTLINED_FUNCTION_37_6();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }
}

void sub_1E3BB1EEC()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29660);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v98 - v15;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8);
  OUTLINED_FUNCTION_0_10();
  *&v111 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_23_8();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v98 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B8);
  v28 = OUTLINED_FUNCTION_17_2(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v98 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v98 - v34;
  v114 = v3;
  v36 = *(v3 + 216);
  v113 = v32;
  v109 = v0;
  v108 = v5;
  v112 = &v98 - v34;
  v102 = v11;
  v101 = v13;
  if (v36)
  {

    v37 = sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21();
    v99 = v1;
    sub_1E3883AF4(v37);
    (*(v13 + 8))(v16, v11);
    sub_1E4202744();
    v38 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v39)
    {
      v38 = sub_1E4202774();
    }

    v40 = v104;
    if (v37)
    {
      v41 = *(*v37 + 152);
      v42 = v104;

      v41(&v115, v43);
      v32 = v113;
      v40 = v42;

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    (*(v111 + 32))(v24, v99, v40);
    OUTLINED_FUNCTION_47_35();
    v45 = &v24[*(v36 + 36)];
    *v45 = v38;
    OUTLINED_FUNCTION_11_4(v45);
    v46 = v100;
    sub_1E3741EA0(v24, v100, &qword_1ECF295B0);
    v35 = v112;
    sub_1E3741EA0(v46, v112, &qword_1ECF295B0);
    v44 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_47_35();
    v40 = v104;
  }

  v47 = 1;
  __swift_storeEnumTagSinglePayload(v35, v44, 1, v36);
  if (*(v114 + 224))
  {

    v48 = sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21();
    v49 = v102;
    sub_1E3883AF4(v48);
    (*(v101 + 8))(v16, v49);
    sub_1E4202744();
    v50 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v39)
    {
      v50 = sub_1E4202774();
    }

    if (v48)
    {
      v51 = *(*v48 + 152);

      v51(&v116, v52);
      v32 = v113;

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v53 = v103;
    (*(v111 + 32))(v103, v110, v40);
    v54 = (v53 + *(v36 + 36));
    *v54 = v50;
    OUTLINED_FUNCTION_11_4(v54);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v55, v56, v57);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v58, v59, v60);
    v47 = 0;
  }

  v61 = 1;
  v62 = __swift_storeEnumTagSinglePayload(v32, v47, 1, v36);
  v63 = *(v114 + 256);
  v64 = 0uLL;
  if (v63)
  {
    if ((*(*v63 + 392))(v62, 0))
    {
      OUTLINED_FUNCTION_30();
      (*(v65 + 152))(&v117);
      v111 = v117;
      v67 = v118;
      v66 = v119;
      v61 = v120;

      v64 = v111;
    }

    else
    {
      v67 = 0;
      v66 = 0;
      v64 = 0uLL;
    }
  }

  else
  {
    v67 = 0;
    v66 = 0;
  }

  v121 = v64;
  v122 = v67;
  v123 = v66;
  v68 = v61 & 1;
  v124 = v68;
  if (v68)
  {
    v69 = 0;
  }

  else
  {
    v69 = v66;
  }

  v70 = sub_1E4201B84();
  v71 = v106;
  *v106 = v70;
  v71[1] = v69;
  *(v71 + 16) = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29668);
  sub_1E3BB27E4();
  v72 = v71;
  v73 = v107;
  sub_1E3741EA0(v72, v107, &qword_1ECF29660);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v74, v75, v76);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v77, v78, v79);
  v80 = v109;
  sub_1E3743538(v73, v109, &qword_1ECF29660);
  OUTLINED_FUNCTION_12_19();
  sub_1E3743538(v81, v82, v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29670);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v85, v86, v87);
  sub_1E3743538(v80, &qword_1ECF29660 + *(v84 + 64), &qword_1ECF29660);
  sub_1E325F69C(v73, &qword_1ECF29660);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v88, v89);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v90, v91);
  v92 = OUTLINED_FUNCTION_8_6();
  sub_1E325F69C(v92, v93);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v94, v95);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v96, v97);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3BB27E4()
{
  OUTLINED_FUNCTION_9_4();
  *&v76 = v3;
  v5 = v4;
  v86 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v78 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v77 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8);
  OUTLINED_FUNCTION_0_10();
  v82 = v12;
  v83 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v81 = v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v80 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v79 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B8);
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  v85 = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v74 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29610);
  OUTLINED_FUNCTION_17_2(v25);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_41();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29678);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_34_1();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29680);
  v31 = OUTLINED_FUNCTION_17_2(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4_6();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v74 - v36;
  if (TVAppFeature.isEnabled.getter(10))
  {
    v75 = v7;
    v38 = v5;
    sub_1E3BB2E48(v0);
    v39 = sub_1E4202744();
    v40 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v39)
    {
      v40 = sub_1E4202774();
    }

    v41 = *(v76 + 32);
    v42 = 0uLL;
    v43 = 0uLL;
    if ((v41 & 1) == 0)
    {
      sub_1E4200A54();
      *(&v43 + 1) = v44;
      *(&v42 + 1) = v45;
    }

    v74 = v43;
    v76 = v42;
    sub_1E3741EA0(v0, v1, &qword_1ECF29610);
    v46 = v1 + *(v27 + 36);
    *v46 = v40;
    *(v46 + 24) = v74;
    *(v46 + 8) = v76;
    *(v46 + 40) = v41 & 1;
    sub_1E3741EA0(v1, v2, &qword_1ECF29678);
    OUTLINED_FUNCTION_21_1();
    sub_1E3741EA0(v47, v48, v49);
    v50 = 0;
    v7 = v75;
  }

  else
  {
    v38 = v5;
    v50 = 1;
  }

  __swift_storeEnumTagSinglePayload(v37, v50, 1, v27);
  if (*(v38 + 240))
  {

    v51 = sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    v52 = v77;
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21();
    v53 = v81;
    v54 = OUTLINED_FUNCTION_8_6();
    sub_1E3883AF4(v54);
    (*(v78 + 8))(v52, v7);
    sub_1E4202744();
    v55 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v56)
    {
      v55 = sub_1E4202774();
    }

    if (v51)
    {
      v57 = *(*v51 + 152);

      v57(&v87, v58);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v59 = v80;
    (*(v82 + 32))(v80, v53, v83);
    v60 = (v59 + *(v84 + 36));
    *v60 = v55;
    OUTLINED_FUNCTION_11_4(v60);
    v61 = v59;
    v62 = v79;
    sub_1E3741EA0(v61, v79, &qword_1ECF295B0);
    sub_1E3741EA0(v62, v24, &qword_1ECF295B0);
  }

  OUTLINED_FUNCTION_37_6();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
  sub_1E3743538(v37, v34, &qword_1ECF29680);
  v67 = v85;
  sub_1E3743538(v24, v85, &qword_1ECF295B8);
  v68 = v86;
  sub_1E3743538(v34, v86, &qword_1ECF29680);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29688);
  sub_1E3743538(v67, v68 + *(v69 + 48), &qword_1ECF295B8);
  v70 = OUTLINED_FUNCTION_39_3();
  sub_1E325F69C(v70, v71);
  v72 = OUTLINED_FUNCTION_32_0();
  sub_1E325F69C(v72, v73);
  sub_1E325F69C(v67, &qword_1ECF295B8);
  sub_1E325F69C(v34, &qword_1ECF29680);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3BB2E48@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TextBadge();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = *(v1 + 256);
  if (v7)
  {
    v8 = *(v1 + 264);

    OUTLINED_FUNCTION_18();
    sub_1E3FC96D0(v7, v8, v6);
    sub_1E3788908(v6, a1, type metadata accessor for TextBadge);
    OUTLINED_FUNCTION_35_9();
    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_35_9();

    return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  }
}

void sub_1E3BB2F50()
{
  OUTLINED_FUNCTION_31_1();
  v35 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29600);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  v6 = v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29608);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v13 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29610);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_19_2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29618);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_34_1();
  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    sub_1E3BB2E48(v0);
    sub_1E3741EA0(v0, v1, &qword_1ECF29610);
  }

  OUTLINED_FUNCTION_35_9();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  sub_1E3BB32A0();
  sub_1E3BB3518(v9);
  sub_1E3743538(v1, v22, &qword_1ECF29618);
  v28 = v13;
  sub_1E3743538(v16, v13, &qword_1ECF29608);
  sub_1E3743538(v9, v6, &qword_1ECF29600);
  v29 = v35;
  sub_1E3743538(v22, v35, &qword_1ECF29618);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29620);
  sub_1E3743538(v28, v29 + v30[12], &qword_1ECF29608);
  v31 = v29 + v30[16];
  *v31 = 0;
  *(v31 + 8) = 1;
  sub_1E3743538(v6, v29 + v30[20], &qword_1ECF29600);
  sub_1E325F69C(v9, &qword_1ECF29600);
  sub_1E325F69C(v16, &qword_1ECF29608);
  sub_1E325F69C(v1, &qword_1ECF29618);
  v32 = OUTLINED_FUNCTION_39_3();
  sub_1E325F69C(v32, v33);
  sub_1E325F69C(v28, &qword_1ECF29608);
  sub_1E325F69C(v22, &qword_1ECF29618);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BB32A0()
{
  OUTLINED_FUNCTION_9_4();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_8();
  if (*(v0 + 272) && sub_1E37605C4())
  {
    v13 = sub_1E37608FC();
    sub_1E3EB9BB4(v37);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_5();
    sub_1E37E8BE8(v14, v15, v16, v17, v18, v19, v20);
    sub_1E375C31C(v37);
    if (v13 && (v21 = *(*v13 + 152), v22 = , v21(&v38, v22), , (v39 & 1) == 0))
    {
      v28.n128_f64[0] = OUTLINED_FUNCTION_6();
      j_nullsub_1(v28, v29, v30, v31);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_3();
    v32 = sub_1E4202734();

    (*(v8 + 32))(v2, v1, v6);
    v33 = (v2 + *(v10 + 36));
    *v33 = v32;
    OUTLINED_FUNCTION_11_4(v33);
    sub_1E3741EA0(v2, v3, &qword_1ECF29240);
    OUTLINED_FUNCTION_21_1();
    sub_1E3741EA0(v34, v35, v36);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  }
}

uint64_t sub_1E3BB3518@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PlaybackStatus(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v4 = sub_1E39C408C(96);
  if (v4)
  {
    sub_1E413D6F4(v4, v1);
    sub_1E3788908(v1, a1, type metadata accessor for PlaybackStatus);
    OUTLINED_FUNCTION_35_9();
    return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_35_9();

    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

unint64_t sub_1E3BB35F4()
{
  result = qword_1ECF34470;
  if (!qword_1ECF34470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34458);
    sub_1E3BB3678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34470);
  }

  return result;
}

unint64_t sub_1E3BB3678()
{
  result = qword_1ECF34478;
  if (!qword_1ECF34478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34480);
    sub_1E3BB37C8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34488);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34498);
    sub_1E3BB3820();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34478);
  }

  return result;
}

unint64_t sub_1E3BB37C8()
{
  result = qword_1EE25EB50;
  if (!qword_1EE25EB50)
  {
    type metadata accessor for StandardLockupListView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE25EB50);
  }

  return result;
}

unint64_t sub_1E3BB3820()
{
  result = qword_1ECF344A0;
  if (!qword_1ECF344A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34498);
    sub_1E3BB39A8(&qword_1ECF344A8, &unk_1ECF344B0, &unk_1E42C0100, sub_1E3BB3904);
    sub_1E3BB39A8(&qword_1ECF29560, &unk_1ECF29568, &unk_1E429B638, sub_1E3788594);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF344A0);
  }

  return result;
}

unint64_t sub_1E3BB3904()
{
  result = qword_1ECF344B8;
  if (!qword_1ECF344B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF344C0);
    sub_1E3788638(&qword_1ECF344C8, &unk_1ECF344D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF344B8);
  }

  return result;
}

uint64_t sub_1E3BB39A8(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3BB3A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandardLockupListView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3BB3AD0(uint64_t a1)
{
  v2 = type metadata accessor for StandardLockupListView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 OUTLINED_FUNCTION_56_23()
{
  v2 = *(v1 + 154);
  *(v0 + 128) = *(v1 + 138);
  *(v0 + 144) = v2;
  result = *(v1 + 168);
  *(v1 + 30) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_62_16()
{

  return sub_1E4201F44();
}

__objc2_class **sub_1E3BB3BA4(__objc2_class **result)
{
  if (*result != _TtC8VideosUI34MediaShowcasingScoreboardViewModel)
  {

    return 0;
  }

  return result;
}

uint64_t sub_1E3BB3C04@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    v5 = 0;
    v10 = 0;
    a2 = 0;
    v7 = 0;
    goto LABEL_8;
  }

  v5 = sub_1E4201D54();

  v6 = sub_1E382EF1C();
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  if (*v6 != _TtC8VideosUI31MediaShowcasingScoreboardLayout)
  {

LABEL_5:
    type metadata accessor for MediaShowcasingScoreboardLayout();
    v7 = sub_1E3D318D0();
  }

  type metadata accessor for MediaShowcasingScoreboardViewModel();
  OUTLINED_FUNCTION_1_164();
  sub_1E3BBA714(v8, v9);
  OUTLINED_FUNCTION_24_4();
  result = sub_1E42010C4();
LABEL_8:
  *a3 = v5;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  a3[4] = v10;
  a3[5] = a2;
  a3[6] = v7;
  return result;
}

uint64_t type metadata accessor for MediaShowcasingScoreboardViewModel()
{
  result = qword_1EE2913F0;
  if (!qword_1EE2913F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3BB3D7C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34538);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_49_2();
  v13 = sub_1E39BDEC8();
  if (v13)
  {
    v14 = sub_1E373E010(239, v13);

    if (v14)
    {
      v16 = (*(*v14 + 464))(v15);

      if (v16)
      {
        if (sub_1E32AE9B0(v16))
        {
          if (_MergedGlobals_212 != -1)
          {
            OUTLINED_FUNCTION_2_132();
          }

          *v0 = qword_1EE28C138;
          *(v0 + 8) = 0;
          *(v0 + 16) = 0;
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34540);
          sub_1E3BB3F54(v8, v6, v4, v2, v16, v0 + *(v17 + 44));

          sub_1E3782004();
          __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }
    }
  }

  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
}

void sub_1E3BB3F54(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v78 = a3;
  v79 = a2;
  v77 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345F0);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v71 = (v67 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345F8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v69 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v70 = v67 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34600);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v67 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34608);
  v27 = OUTLINED_FUNCTION_17_2(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v67 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v35 = sub_1E4201D54();
  if (a4)
  {
    v36 = *(a4 + 152);
  }

  else
  {
    v36 = 0;
  }

  *v33 = v35;
  *(v33 + 1) = v36;
  v33[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34610);
  v37 = sub_1E32AE9B0(a5);
  if (v37 < 0)
  {
    __break(1u);
  }

  else
  {
    v72 = v30;
    v73 = v25;
    v74 = v12;
    v75 = v22;
    v76 = a6;
    v80 = 0;
    v81 = v37;
    swift_getKeyPath();
    v38 = swift_allocObject();
    v39 = v77;
    v40 = v78;
    v38[2] = a5;
    v38[3] = v39;
    v38[4] = v79;
    v38[5] = v40;
    v38[6] = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34640);
    v41 = sub_1E37432DC();
    v68 = a4;
    v42 = v41;
    sub_1E32752B0(&qword_1ECF34648, &qword_1ECF34640);
    v67[1] = v42;
    sub_1E4203B34();
    sub_1E3782004();
    if ((sub_1E38271C0() & 1) == 0)
    {
      v46 = 1;
      v47 = v75;
      v49 = v73;
      v48 = v74;
LABEL_16:
      __swift_storeEnumTagSinglePayload(v49, v46, 1, v48);
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_19_1();
      sub_1E378249C();
      OUTLINED_FUNCTION_96_2();
      sub_1E378249C();
      OUTLINED_FUNCTION_19_1();
      sub_1E378249C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34618);
      OUTLINED_FUNCTION_96_2();
      sub_1E378249C();
      sub_1E325F6F0(v49, &qword_1ECF34600);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F6F0(v63, v64);
      sub_1E325F6F0(v47, &qword_1ECF34600);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F6F0(v65, v66);
      OUTLINED_FUNCTION_10_3();
      return;
    }

    v43 = sub_1E4201D64();
    v44 = v68;
    if (v68)
    {
      v45 = *(v68 + 152);
    }

    else
    {
      v45 = 0;
    }

    v50 = v71;
    v51 = v79;
    *v71 = v43;
    v50[1] = v45;
    *(v50 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34620);
    v52 = sub_1E3BB50D8();
    v53 = sub_1E32AE9B0(v52);

    if ((v53 & 0x8000000000000000) == 0)
    {
      v80 = 0;
      v81 = v53;
      swift_getKeyPath();
      OUTLINED_FUNCTION_10_9();
      v54 = swift_allocObject();
      v55 = v78;
      v54[2] = v77;
      v54[3] = v51;
      v54[4] = v55;
      v54[5] = v44;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0);
      v56 = OUTLINED_FUNCTION_24_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(v56);
      sub_1E32752B0(&qword_1ECF34630, &qword_1ECF34628);
      sub_1E4203B34();
      if (v44 && (OUTLINED_FUNCTION_8(), (*(v57 + 176))(&v80), (v84 & 1) == 0))
      {
        v60.n128_u64[0] = v82;
        v61.n128_u64[0] = v83;
        v58.n128_u64[0] = v80;
        v59.n128_u64[0] = v81;
        j_nullsub_1(v58, v59, v60, v61);
      }

      else
      {
        OUTLINED_FUNCTION_5_8();
      }

      OUTLINED_FUNCTION_3();
      v47 = v75;
      v49 = v73;
      v48 = v74;
      v62 = v69;
      sub_1E4202734();
      sub_1E3782004();
      OUTLINED_FUNCTION_32_4(v62 + *(v48 + 36));
      OUTLINED_FUNCTION_19_1();
      sub_1E3782004();
      OUTLINED_FUNCTION_19_1();
      sub_1E3782004();
      v46 = 0;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1E3BB45C0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34658);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v35 - v14;
  v16 = (*(*v7 + 488))(v13);
  if (v16)
  {
    v35[1] = v10;
    v17 = sub_1E373E010(39, v16);

    if (v17)
    {
      type metadata accessor for ImageViewModel();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        v35[0] = v5;
        v19 = sub_1E3924DF8();
        if (v19)
        {
          v38[1] = v19;
          v36 = v1;
          v37 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34668);
          OUTLINED_FUNCTION_0_32();
          sub_1E32752B0(v20, &qword_1ECF34668);
          sub_1E38D2054(&v36, v38);

          v21 = v38[0];
        }

        else
        {
          v21 = 0;
        }

        v22 = (sub_1E3925108() & 1) == 0;
        v24 = v21;

LABEL_13:
        if (v3)
        {
          goto LABEL_14;
        }

        goto LABEL_7;
      }
    }

    else
    {
      v18 = 0;
    }

    v21 = 0;
    v22 = 0;
    goto LABEL_13;
  }

  v18 = 0;
  v21 = 0;
  v22 = 0;
  if (v3)
  {
LABEL_14:
    v23 = (*(*v3 + 248))();
    goto LABEL_15;
  }

LABEL_7:
  v23 = 0;
LABEL_15:
  *v15 = sub_1E3F2793C(v23);
  v15[8] = v25 & 1;
  *(v15 + 2) = v26;

  OUTLINED_FUNCTION_24_4();
  sub_1E3BB48C8();

  OUTLINED_FUNCTION_21_1();
  sub_1E378249C();
  *v9 = v18;
  *(v9 + 8) = v21;
  *(v9 + 16) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34660);
  sub_1E378249C();
  v27 = OUTLINED_FUNCTION_39_9();
  sub_1E3BBA428(v27, v28);
  v29 = OUTLINED_FUNCTION_39_9();
  sub_1E3BBA468(v29, v30);
  sub_1E325F6F0(v15, &qword_1ECF34658);
  v31 = OUTLINED_FUNCTION_32_0();
  sub_1E325F6F0(v31, v32);
  v33 = OUTLINED_FUNCTION_39_9();
  sub_1E3BBA468(v33, v34);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BB48C8()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_155();
  v80 = v3;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v76 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v6);
  v73 = v66 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A140);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v66 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C350);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v66 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v69 = v66 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34678);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v66 - v27;
  v72 = v11;
  if (v1)
  {
    OUTLINED_FUNCTION_8();
    v79 = (*(v29 + 200))();
    v78 = v30;
  }

  else
  {
    v79 = 0;
    v78 = 1;
  }

  v31 = (*v0 + 488);
  v32 = *v31;
  v33 = (*v31)();
  if (!v33)
  {
    goto LABEL_13;
  }

  v34 = sub_1E373E010(23, v33);

  if (!v34)
  {
    goto LABEL_13;
  }

  if (*v34 != _TtC8VideosUI13TextViewModel)
  {

LABEL_13:
    v43 = 1;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_24_54();
  if ((v37 & 1) == 0)
  {
    v68 = v35;
    v67 = v36;
    v66[1] = sub_1E4206804();
    v38 = sub_1E42026D4();
    sub_1E41FFB84();
  }

  OUTLINED_FUNCTION_53_28();
  v70 = v39;
  v71 = v40;
  OUTLINED_FUNCTION_38_32();
  OUTLINED_FUNCTION_5_129();
  (*(v76 + 32))(v14, v73, v77);
  memcpy(&v14[*(v74 + 36)], v82, 0x70uLL);
  if (_MergedGlobals_212 != -1)
  {
    OUTLINED_FUNCTION_2_132();
  }

  v41 = qword_1EE28C138;

  sub_1E3782004();
  v42 = &v19[*(v81 + 36)];
  *v42 = v41;
  v42[1] = sub_1E374AE08;
  v42[2] = 0;
  sub_1E3782004();
  sub_1E3782004();
  v43 = 0;
LABEL_14:
  v44 = 1;
  v45 = v81;
  v46 = __swift_storeEnumTagSinglePayload(v28, v43, 1, v81);
  v47 = (v32)(v46);
  if (v47)
  {
    v48 = sub_1E373E010(25, v47);

    if (v48)
    {
      if (*v48 == _TtC8VideosUI13TextViewModel)
      {
        OUTLINED_FUNCTION_18();
        sub_1E3F23370();
        v49 = sub_1E4203DA4();
        v51 = v50;
        OUTLINED_FUNCTION_24_54();
        if ((v52 & 1) == 0)
        {
          sub_1E4206804();
          v53 = sub_1E42026D4();
          v45 = v81;
          sub_1E41FFB84();
        }

        OUTLINED_FUNCTION_53_28();
        v70 = v49;
        v71 = v51;
        OUTLINED_FUNCTION_38_32();
        OUTLINED_FUNCTION_5_129();
        v54 = v72;
        (*(v76 + 32))(v72, v75, v77);
        memcpy((v54 + *(v74 + 36)), v83, 0x70uLL);
        if (_MergedGlobals_212 != -1)
        {
          OUTLINED_FUNCTION_2_132();
        }

        v55 = qword_1EE28C138;

        v56 = v71;
        sub_1E3782004();
        v57 = (v56 + *(v45 + 36));
        *v57 = v55;
        v57[1] = sub_1E374AE08;
        v57[2] = 0;
        OUTLINED_FUNCTION_19_1();
        sub_1E3782004();
        OUTLINED_FUNCTION_19_1();
        sub_1E3782004();
        v44 = 0;
      }

      else
      {
      }
    }
  }

  __swift_storeEnumTagSinglePayload(v2, v44, 1, v45);
  OUTLINED_FUNCTION_19_1();
  sub_1E378249C();
  OUTLINED_FUNCTION_19_1();
  sub_1E378249C();
  OUTLINED_FUNCTION_19_1();
  sub_1E378249C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34680);
  OUTLINED_FUNCTION_19_1();
  sub_1E378249C();
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v58, v59);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v60, v61);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v62, v63);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v64, v65);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3BB50D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  sub_1E4200674();

  return v1;
}

void sub_1E3BB5148()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v35 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v41 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A140);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C350);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v17 = *v3;
  v18 = sub_1E3BB50D8();
  sub_1E34AF4E4(v17, (v18 & 0xC000000000000001) == 0, v18);
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1E6911E60](v17, v18);
  }

  else
  {
    v19 = *(v18 + 8 * v17 + 32);
  }

  if ((TVAppFeature.isEnabled.getter(20) & 1) == 0)
  {
    v20 = 0;
    goto LABEL_12;
  }

  if ((*(*v19 + 392))())
  {
    type metadata accessor for TextLayout();
    v20 = swift_dynamicCastClass();
    if (!v20)
    {
    }
  }

  else
  {
    v20 = 0;
  }

  v43[3] = &unk_1F5D5D528;
  v43[4] = &off_1F5D5C858;
  LOBYTE(v43[0]) = 14;
  v21 = j__OUTLINED_FUNCTION_18();
  v22 = sub_1E39C29F0(v43, v21 & 1);
  __swift_destroy_boxed_opaque_existential_1(v43);
  if ((v22 & 1) == 0)
  {
LABEL_12:
    if (v1)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (v1)
  {
    v20 = *(v1 + 144);

LABEL_13:
    OUTLINED_FUNCTION_8();
    v42 = (*(v23 + 200))();
    goto LABEL_16;
  }

  v20 = 0;
LABEL_15:
  v42 = 0;
LABEL_16:
  OUTLINED_FUNCTION_18();
  v38 = v9;
  v36 = v20;
  sub_1E3F23370();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_5_129();
  (*(v41 + 32))(v12, v38, v5);
  memcpy(&v12[*(v37 + 36)], v43, 0x70uLL);
  if (_MergedGlobals_212 != -1)
  {
    OUTLINED_FUNCTION_2_132();
  }

  v24 = qword_1EE28C138;
  v25 = v39;
  sub_1E3782004();
  v26 = &v25[*(v40 + 36)];
  *v26 = v24;
  v26[1] = sub_1E374AE08;
  v26[2] = 0;
  OUTLINED_FUNCTION_19_1();
  sub_1E3782004();
  OUTLINED_FUNCTION_19_1();
  sub_1E378249C();
  v27 = v35;
  OUTLINED_FUNCTION_19_1();
  sub_1E378249C();
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34638) + 48);

  v29 = v27 + v28;

  *v29 = 0;
  *(v29 + 8) = 0;
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v30, v31);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v32, v33);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BB5638(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v63) = a3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34598);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345A0);
  OUTLINED_FUNCTION_0_10();
  v64 = v13;
  v65 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_49_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345A8);
  OUTLINED_FUNCTION_17_2(v15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_31_2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v57 - v24;
  v26 = (*(*a1 + 392))(v23);
  if (v26)
  {
    v27 = v26;
    v62 = v25;
    type metadata accessor for ImageLayout();
    v28 = swift_dynamicCastClass();
    if (v28)
    {
      v29 = v28;
      v57 = v27;
      v58 = v21;
      v59 = v4;
      v60 = v17;
      v61 = a4;
      (*(*v28 + 2288))(v28);
      sub_1E3BB5B78(a1, a2, v63 & 1, v29);
      sub_1E4203DB4();
      v30 = sub_1E4200D94();
      v31 = &v11[*(v66 + 36)];
      v32 = v68;
      *v31 = v67;
      *(v31 + 1) = v32;
      *(v31 + 2) = v69;
      v33 = *(*a1 + 904);
      v33(v30);
      v34 = sub_1E3BB9CA0();
      v63 = v5;
      sub_1E3E03528();

      v35 = sub_1E325F6F0(v11, &qword_1ECF34598);
      v33(v35);
      if (v36)
      {
      }

      v70 = v66;
      v71 = v34;
      swift_getOpaqueTypeConformance2();
      sub_1E4202ED4();
      v42 = OUTLINED_FUNCTION_16_0();
      v43(v42);
      v44 = *(*v29 + 152);

      v44(&v70, v45);
      v46 = v70;
      v47 = v71;
      v48 = v72;
      v49 = v73;

      v54 = v60;
      v55 = v58;
      if (v74)
      {
        OUTLINED_FUNCTION_5_8();
      }

      else
      {
        v50.n128_u64[0] = v46;
        v51.n128_u64[0] = v47;
        v52.n128_u64[0] = v48;
        v53.n128_u64[0] = v49;
        j_nullsub_1(v50, v51, v52, v53);
      }

      OUTLINED_FUNCTION_3();
      v56 = v61;
      sub_1E4202734();

      OUTLINED_FUNCTION_24_4();
      sub_1E3782004();
      OUTLINED_FUNCTION_32_4(v55 + *(v54 + 36));
      OUTLINED_FUNCTION_19_1();
      sub_1E3782004();
      OUTLINED_FUNCTION_19_1();
      sub_1E3782004();
      __swift_storeEnumTagSinglePayload(v56, 0, 1, v54);
      OUTLINED_FUNCTION_10_3();
      return;
    }
  }

  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
}

uint64_t sub_1E3BB5B78(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v9 = sub_1E42037D4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3A8);
  OUTLINED_FUNCTION_0_10();
  v43 = v17;
  v44 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_35_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_49_2();
  if (a3)
  {
    v24 = v23;
    j__OUTLINED_FUNCTION_51_1();
    v25 = j__OUTLINED_FUNCTION_18();
    v40 = j__OUTLINED_FUNCTION_18() & 1;
    v26 = OUTLINED_FUNCTION_32_0();
    sub_1E3EB9C0C(v26, v27, 0, 0, 0, 1, v28, 2, v29, 0, 1, 0, 1, 0, 2, v25 & 1, v40);
    v30 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(a1, v45, 0, v30 & 1, 0, 0, v6);
    sub_1E375C31C(v45);
    (*(v21 + 16))(v4, v6, v24);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_17_80();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_24_4();
    sub_1E4201F44();
    return (*(v21 + 8))(v6, v24);
  }

  else
  {
    if (a2)
    {
      v32 = a2;
    }

    else
    {
      v32 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    }

    v33 = a2;
    v34 = v32;
    sub_1E381AC64();
    (*(v11 + 104))(v15, *MEMORY[0x1E6981630], v9);
    OUTLINED_FUNCTION_159();
    v35 = sub_1E4203824();

    (*(v11 + 8))(v15, v9);
    v45[0] = v35;
    v36 = MEMORY[0x1E6981748];
    v37 = MEMORY[0x1E6981710];
    v38 = OUTLINED_FUNCTION_51_1();
    v39 = OUTLINED_FUNCTION_18();
    sub_1E3C8F60C(a4, v38 & 1, v39 & 1, v36, v37);

    (*(v43 + 16))(v4, v5, v44);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_19_0();
    v45[0] = v36;
    v45[1] = v37;
    OUTLINED_FUNCTION_17_80();
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();

    return (*(v43 + 8))(v5, v44);
  }
}

uint64_t sub_1E3BB6030()
{
  sub_1E3BBA4A8();
  result = sub_1E4201B94();
  qword_1EE28C138 = result;
  return result;
}

uint64_t sub_1E3BB6060@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3BB50D8();
  *a1 = result;
  return result;
}

uint64_t sub_1E3BB60B8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_96_2();
  return sub_1E4200684();
}

uint64_t sub_1E3BB6124()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_21_1();
  sub_1E32752B0(v1, v2);
  return sub_1E42006B4();
}

id sub_1E3BB61B0()
{
  v1 = OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel____lazy_storage___scorecardClockComponentsFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel____lazy_storage___scorecardClockComponentsFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel____lazy_storage___scorecardClockComponentsFormatter);
  }

  else
  {
    v4 = sub_1E3BB6210();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1E3BB6210()
{
  v0 = sub_1E4205914();
  v1 = OUTLINED_FUNCTION_17_2(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  SportsRunningClockLocalization.init()();
  sub_1E376DC98();
  v2 = objc_allocWithZone(sub_1E4205944());
  v3 = sub_1E4205934();
  sub_1E42058D4();
  sub_1E4205924();
  return v3;
}

void sub_1E3BB6308()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v53 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34548);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31_2();
  v12 = OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel__scoreTextModels;
  v52 = MEMORY[0x1E69E7CC0];
  v55[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E8);
  sub_1E4200634();
  (*(v10 + 32))(&v2[v12], v1, v8);
  v13 = OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel_contentMetadataUpdateSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  swift_allocObject();
  *&v2[v13] = sub_1E4200544();
  *&v2[OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel____lazy_storage___scorecardClockComponentsFormatter] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel____lazy_storage___liveUpdateProvider] = xmmword_1E42C0270;
  v56 = &type metadata for ViewModelKeys;
  v57 = &off_1F5D7BCA8;
  LOBYTE(v55[0]) = 20;
  v14 = OUTLINED_FUNCTION_8_98();
  sub_1E3F9F164(v14);
  if (!v58[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_1E325F6F0(v58, &unk_1ECF296E0);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v55);
  if (!v54)
  {
LABEL_10:
    OUTLINED_FUNCTION_200_0();
    v18 = 1;
    goto LABEL_11;
  }

  v56 = &type metadata for ViewModelKeys.Sports;
  v57 = &off_1F5D7BC68;
  LOBYTE(v55[0]) = 17;

  v15 = OUTLINED_FUNCTION_8_98();
  sub_1E3F9F164(v15);

  OUTLINED_FUNCTION_39_33();
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (OUTLINED_FUNCTION_11_96())
    {
      v17 = v55[0];
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_13;
  }

  v18 = 0;
LABEL_11:
  sub_1E325F6F0(v58, &unk_1ECF296E0);
  v17 = 0;
  if (v18)
  {
    OUTLINED_FUNCTION_200_0();
LABEL_18:
    v24 = v53;
    sub_1E325F6F0(v58, &unk_1ECF296E0);
    v21 = 0;
    v22 = 0;
    goto LABEL_19;
  }

LABEL_13:
  v56 = &type metadata for ViewModelKeys.Sports;
  v57 = &off_1F5D7BC68;
  LOBYTE(v55[0]) = 12;
  v19 = OUTLINED_FUNCTION_8_98();
  sub_1E3F9F164(v19);

  OUTLINED_FUNCTION_39_33();
  if (!v20)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_11_96();
  OUTLINED_FUNCTION_19_75();
  if (v23)
  {
    v22 = 0;
  }

  v24 = v53;
LABEL_19:
  *(v2 + 31) = v21;
  *(v2 + 32) = v22;
  if (v17)
  {
    v56 = &type metadata for ViewModelKeys.Sports;
    v57 = &off_1F5D7BC68;
    LOBYTE(v55[0]) = 18;

    v25 = OUTLINED_FUNCTION_8_98();
    sub_1E3F9F164(v25);

    OUTLINED_FUNCTION_39_33();
    if (v26)
    {
      OUTLINED_FUNCTION_11_96();
      OUTLINED_FUNCTION_19_75();
      if (v23)
      {
        v28 = 0;
      }

      *(v2 + 33) = v27;
      *(v2 + 34) = v28;
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_200_0();
  }

  sub_1E325F6F0(v58, &unk_1ECF296E0);
  *(v2 + 33) = 0;
  *(v2 + 34) = 0;
  if (!v17)
  {
    OUTLINED_FUNCTION_200_0();
    goto LABEL_33;
  }

LABEL_27:
  v56 = &type metadata for ViewModelKeys.Sports;
  v57 = &off_1F5D7BC68;
  LOBYTE(v55[0]) = 21;

  v29 = OUTLINED_FUNCTION_8_98();
  sub_1E3F9F164(v29);

  OUTLINED_FUNCTION_39_33();
  if (v30)
  {
    OUTLINED_FUNCTION_11_96();
    OUTLINED_FUNCTION_19_75();
    if (v23)
    {
      v32 = 0;
    }

    *(v2 + 35) = v31;
    *(v2 + 36) = v32;
    goto LABEL_34;
  }

LABEL_33:
  sub_1E325F6F0(v58, &unk_1ECF296E0);
  *(v2 + 35) = 0;
  *(v2 + 36) = 0;
  if (!v17)
  {
    OUTLINED_FUNCTION_200_0();
    goto LABEL_39;
  }

LABEL_34:
  v56 = &type metadata for ViewModelKeys.Sports;
  v57 = &off_1F5D7BC68;
  LOBYTE(v55[0]) = 20;

  v33 = OUTLINED_FUNCTION_8_98();
  sub_1E3F9F164(v33);

  OUTLINED_FUNCTION_39_33();
  if (v34)
  {
    OUTLINED_FUNCTION_11_96();
    OUTLINED_FUNCTION_19_75();
    if (v23)
    {
      v36 = 0;
    }

    goto LABEL_40;
  }

LABEL_39:
  sub_1E325F6F0(v58, &unk_1ECF296E0);
  v35 = 0;
  v36 = 0;
LABEL_40:
  *(v2 + 38) = v35;
  *(v2 + 39) = v36;
  *(v2 + 37) = v17;

  if (!sub_1E39BEDCC(v7, v5, v24))
  {
    goto LABEL_69;
  }

  v37 = sub_1E39BDEC8();
  if (!v37)
  {
    goto LABEL_68;
  }

  v38 = sub_1E373E010(239, v37);

  if (!v38)
  {
    goto LABEL_68;
  }

  v39 = *(*v38 + 464);

  v41 = v39(v40);

  if (!v41)
  {
    goto LABEL_67;
  }

  v55[0] = MEMORY[0x1E69E7CC0];
  v42 = sub_1E32AE9B0(v41);
  v43 = 0;
  while (v42 != v43)
  {
    if ((v41 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x1E6911E60](v43, v41);
      v44 = v45;
    }

    else
    {
      if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      v44 = *(v41 + 8 * v43 + 32);
    }

    if (__OFADD__(v43, 1))
    {
      __break(1u);
LABEL_72:
      __break(1u);
      return;
    }

    v46 = (*(*v44 + 488))(v45);
    if (!v46)
    {
      goto LABEL_56;
    }

    v47 = v46;
    if (!*(v46 + 16) || (v48 = sub_1E3740AE8(237), (v49 & 1) == 0))
    {

      goto LABEL_56;
    }

    v50 = *(*(v47 + 56) + 8 * v48);

    if (*v50 == _TtC8VideosUI13TextViewModel)
    {
      MEMORY[0x1E6910BF0](v51);
      if (*((v55[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v52 = v55[0];
      ++v43;
    }

    else
    {
LABEL_56:

      ++v43;
    }
  }

  if (sub_1E32AE9B0(v52) == 2)
  {
    sub_1E3BB60B8();
  }

  else
  {
  }

LABEL_67:

LABEL_68:

LABEL_69:

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BB69FC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v21 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v20 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E32ADE38();
  v16 = sub_1E4206A04();
  v17 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_10_9();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v6;
  v18[4] = v4;
  v18[5] = v2;
  v22[4] = sub_1E3BB95EC;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1E378AEA4;
  v22[3] = &block_descriptor_73;
  v19 = _Block_copy(v22);

  sub_1E4203FE4();
  v22[0] = MEMORY[0x1E69E7CC0];
  sub_1E3BBA714(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v0, v12, v19);
  _Block_release(v19);

  (*(v21 + 8))(v12, v7);
  (*(v14 + 8))(v0, v20);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3BB6D10()
{

  v1 = OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel__scoreTextModels;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34548);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);

  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel____lazy_storage___liveUpdateProvider);

  return sub_1E3BB95CC(v3);
}

uint64_t sub_1E3BB6DD8()
{
  v0 = ViewModel.deinit();

  v1 = OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel__scoreTextModels;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34548);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);

  sub_1E3BB95CC(*(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel____lazy_storage___liveUpdateProvider));
  return v0;
}

uint64_t sub_1E3BB6EA0()
{
  v0 = sub_1E3BB6DD8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3BB6EF4(uint64_t a1)
{
  result = sub_1E39BDEC8();
  if (result)
  {
    v3 = sub_1E373E010(239, result);

    if (v3)
    {
      OUTLINED_FUNCTION_8();
      v5 = (*(v4 + 464))();

      v31 = v5;
      if (v5)
      {
        v6 = 0;
        v30 = MEMORY[0x1E69E7CC0];
        v36 = MEMORY[0x1E69E7CC0];
        v7 = *(a1 + 16);
        v8 = a1 + 40;
        v29 = a1 + 40;
LABEL_5:
        for (i = (v8 + 16 * v6); ; i += 2)
        {
          if (v7 == v6)
          {

            if (sub_1E32AE9B0(v30) == 2)
            {
              return sub_1E3BB60B8();
            }
          }

          if (v6 >= v7)
          {
            break;
          }

          if (__OFADD__(v6, 1))
          {
            goto LABEL_28;
          }

          v10 = *(i - 1);
          v11 = *i;
          v35[1] = v31;
          v32 = v6;
          LOBYTE(v33) = 0;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
          OUTLINED_FUNCTION_0_32();
          OUTLINED_FUNCTION_21_1();
          sub_1E32752B0(v12, v13);
          sub_1E38D2054(&v32, v35);
          v14 = v35[0];
          if (!v35[0])
          {
          }

          v15 = 0xE000000000000000;
          v32 = 0;
          v33 = 0xE000000000000000;
          v16 = sub_1E376DA04();
          swift_beginAccess();
          if (*v16)
          {
            v17 = 46;
          }

          else
          {
            v17 = 0;
          }

          if (*v16)
          {
            v15 = 0xE100000000000000;
          }

          MEMORY[0x1E69109E0](v17, v15);

          MEMORY[0x1E69109E0](v10, v11);

          v19 = v32;
          v18 = v33;
          sub_1E384EE08(237);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4297BE0;
          ViewModelKeys.rawValue.getter(14);
          *(inited + 32) = v21;
          *(inited + 40) = v22;
          *(inited + 48) = v19;
          *(inited + 56) = v18;
          v23 = sub_1E4205CB4();
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
          v32 = v23;

          v24 = OUTLINED_FUNCTION_32_0();
          v27 = sub_1E3A7CD30(v24, v25, v26, v14);

          v28 = __swift_destroy_boxed_opaque_existential_1(&v32);
          if (v27)
          {
            if (*v27 == _TtC8VideosUI13TextViewModel)
            {
              MEMORY[0x1E6910BF0](v28);
              if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1E42062F4();
              }

              sub_1E4206324();
              v30 = v36;

              ++v6;
              v8 = v29;
              goto LABEL_5;
            }
          }

          ++v6;
        }

        __break(1u);
LABEL_28:
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1E3BB7288()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v71 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - v14;
  sub_1E377D244();
  v79 = v16;
  v18 = v17;
  v78 = v19;
  if (!v17)
  {
    goto LABEL_35;
  }

  v73.n128_u64[0] = v1;
  v80 = v4;
  v20 = sub_1E324FBDC();
  v21 = *(v7 + 16);
  v83 = v20;
  v84 = v7 + 16;
  v82 = v21;
  v21(v15);

  v22 = sub_1E41FFC94();
  v23 = sub_1E42067E4();

  v24 = os_log_type_enabled(v22, v23);
  v76 = v7;
  v81 = v18;
  v74 = v11;
  if (v24)
  {
    v72 = v5;
    v25 = OUTLINED_FUNCTION_6_21();
    v26 = OUTLINED_FUNCTION_100();
    v85[0] = v26;
    *v25 = 136315138;
    if (*(v2 + 256))
    {
      v27 = *(v2 + 248);
      v28 = *(v2 + 256);
    }

    else
    {
      v27 = 0;
      v28 = 0xE000000000000000;
    }

    v29 = v73.n128_u64[0];

    v30 = sub_1E3270FC8(v27, v28, v85);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_1E323F000, v22, v23, "MediaShowcasingScoreboard:: updating with scoreboardViewModel: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v5 = v72;
    v75 = *(v76 + 8);
    v75(v15, v72);
  }

  else
  {

    v75 = *(v7 + 8);
    v75(v15, v5);
    v29 = v73.n128_u64[0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
  inited = swift_initStackObject();
  v73 = xmmword_1E4299720;
  OUTLINED_FUNCTION_25_62(inited, xmmword_1E4299720);

  sub_1E3BB6EF4(inited);
  swift_setDeallocating();
  sub_1E38272B0();
  v32 = v80;
  if (sub_1E3BB9724(v80))
  {

    sub_1E3C7DE74(6);
    sub_1E3BB9724(v32);
    sub_1E3BB69FC();

    v32 = v80;
  }

  OUTLINED_FUNCTION_34_44();
  v33();

  v34 = sub_1E41FFC94();
  v35 = sub_1E42067E4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_6_21();
    v37 = OUTLINED_FUNCTION_100();
    v85[0] = v37;
    *v36 = 136315138;
    v38 = swift_allocObject();
    v39 = OUTLINED_FUNCTION_25_62(v38, v73);
    MEMORY[0x1E6910C30](v39, MEMORY[0x1E69E6158]);

    v40 = OUTLINED_FUNCTION_75();
    v43 = sub_1E3270FC8(v40, v41, v42);

    *(v36 + 4) = v43;
    _os_log_impl(&dword_1E323F000, v34, v35, "MediaShowcasingScoreboard:: [UTS] Updated scores: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_6_0();
    v32 = v80;
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  v44 = v75;
  v75(v29, v5);
  v45 = v74;
  OUTLINED_FUNCTION_34_44();
  v46();
  v47 = v32;
  v48 = sub_1E41FFC94();
  v49 = sub_1E42067E4();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = v5;
    v51 = OUTLINED_FUNCTION_6_21();
    v52 = OUTLINED_FUNCTION_100();
    v85[0] = v52;
    *v51 = 136315138;
    if (!sub_1E3BB9724(v47))
    {
      sub_1E4205CB4();
    }

    v53 = sub_1E4205C74();
    v55 = v54;

    v56 = sub_1E3270FC8(v53, v55, v85);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_1E323F000, v48, v49, "MediaShowcasingScoreboard:: [UTS] Updated contentMetadata: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v5 = v50;
    v57 = v50;
    v44 = v75;
    v75(v74, v57);
  }

  else
  {

    v44(v45, v5);
  }

  v58 = sub_1E3BB9724(v47);
  if (!v58)
  {
    v86 = 0u;
    v87 = 0u;
    goto LABEL_23;
  }

  v59 = v58;
  *&v86 = sub_1E4205F14();
  *(&v86 + 1) = v60;
  sub_1E4207414();
  sub_1E375D7E8(v85, v59, &v86);

  sub_1E375D84C(v85);
  if (!*(&v87 + 1))
  {
LABEL_23:
    sub_1E325F6F0(&v86, &unk_1ECF296E0);
    goto LABEL_24;
  }

  if (OUTLINED_FUNCTION_62_17())
  {
    v61 = LOBYTE(v85[0]);
    goto LABEL_25;
  }

LABEL_24:
  v61 = 0;
LABEL_25:
  v62 = sub_1E3BB9724(v47);
  if (!v62)
  {
    v86 = 0u;
    v87 = 0u;
    goto LABEL_30;
  }

  v63 = v62;
  *&v86 = sub_1E4205F14();
  *(&v86 + 1) = v64;
  sub_1E4207414();
  sub_1E375D7E8(v85, v63, &v86);

  sub_1E375D84C(v85);
  if (!*(&v87 + 1))
  {
LABEL_30:
    sub_1E325F6F0(&v86, &unk_1ECF296E0);
    goto LABEL_31;
  }

  if (!OUTLINED_FUNCTION_62_17())
  {
LABEL_31:
    v65 = 0;
    goto LABEL_32;
  }

  v65 = LOBYTE(v85[0]);
LABEL_32:
  v66 = v77;
  OUTLINED_FUNCTION_34_44();
  v67();
  v68 = sub_1E41FFC94();
  v69 = sub_1E4206814();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 67109376;
    *(v70 + 4) = v61;
    *(v70 + 8) = 1024;
    *(v70 + 10) = v65;
    _os_log_impl(&dword_1E323F000, v68, v69, "MediaShowcasingScoreboard:: [UTS] Updated hasEventStarted: %{BOOL}d hasEventEnded: %{BOOL}d", v70, 0xEu);
    OUTLINED_FUNCTION_6_0();
  }

  v44(v66, v5);
LABEL_35:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BB7AEC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v94 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v93 = &v83 - v5;
  sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v89 = v7;
  v90 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v92 = v9 - v8;
  v10 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v83 - v22;
  v24 = sub_1E324FBDC();
  v25 = *(v19 + 16);
  v86 = v24;
  v87 = v19 + 16;
  v85 = v25;
  (v25)(v23);

  v26 = sub_1E41FFC94();
  v27 = sub_1E42067E4();

  v28 = os_log_type_enabled(v26, v27);
  v95 = v1;
  v96 = v19;
  v91 = v17;
  if (v28)
  {
    v29 = OUTLINED_FUNCTION_6_21();
    v30 = OUTLINED_FUNCTION_100();
    *&v99 = v30;
    *v29 = 136315138;

    v31 = OUTLINED_FUNCTION_159();
    v34 = sub_1E3270FC8(v31, v32, v33);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_1E323F000, v26, v27, "MediaShowcasingScoreboard:: updating with sportingEvent: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v35 = *(v96 + 8);
    v36 = v23;
    v37 = v91;
  }

  else
  {

    v35 = *(v19 + 8);
    v36 = v23;
    v37 = v17;
  }

  v84 = v35;
  v35(v36, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E0);
  v38 = *(v12 + 72);
  v39 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1E4299720;
  v41 = v40 + v39;
  v42 = *(v12 + 104);
  v42(v41, *MEMORY[0x1E69D3B90], v10);
  v42(v41 + v38, *MEMORY[0x1E69D3B98], v10);
  v43 = sub_1E4205044();
  MEMORY[0x1EEE9AC00](v43);
  *(&v83 - 2) = v16;
  v44 = sub_1E38273FC(sub_1E38277DC, (&v83 - 4), v40);
  swift_setDeallocating();
  sub_1E38272F4();
  (*(v12 + 8))(v16, v10);
  if (!v44)
  {

    v45 = v92;
    OUTLINED_FUNCTION_32_0();
    sub_1E4205BD4();
    v46 = sub_1E4205024();
    MEMORY[0x1EEE9AC00](v46);
    *(&v83 - 2) = v45;
    sub_1E38263A8(sub_1E3BB9790, (&v83 - 4), v46);
    v48 = v47;

    v49 = sub_1E32AE9B0(v48);
    v50 = 0;
    v51 = MEMORY[0x1E69E7CC0];
    while (v49 != v50)
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v52 = MEMORY[0x1E6911E60](v50, v48);
      }

      else
      {
        if (v50 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v52 = *(v48 + 8 * v50 + 32);
      }

      v53 = v52;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
        return;
      }

      *&v99 = sub_1E4205AE4();
      v54 = sub_1E4207944();
      v56 = v55;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_1E3740F88(0, *(v51 + 2) + 1, 1, v51);
      }

      v58 = *(v51 + 2);
      v57 = *(v51 + 3);
      if (v58 >= v57 >> 1)
      {
        v51 = sub_1E3740F88((v57 > 1), v58 + 1, 1, v51);
      }

      *(v51 + 2) = v58 + 1;
      v59 = &v51[16 * v58];
      *(v59 + 4) = v54;
      *(v59 + 5) = v56;
      ++v50;
    }

    sub_1E3BB6EF4(v51);
    v60 = v88;
    v61 = v91;
    v85(v88, v86, v91);

    v62 = sub_1E41FFC94();
    v63 = sub_1E42067E4();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = OUTLINED_FUNCTION_6_21();
      v65 = OUTLINED_FUNCTION_100();
      *&v99 = v65;
      *v64 = 136315138;
      v66 = MEMORY[0x1E6910C30](v51, MEMORY[0x1E69E6158]);
      v68 = v67;

      v69 = sub_1E3270FC8(v66, v68, &v99);

      *(v64 + 4) = v69;
      _os_log_impl(&dword_1E323F000, v62, v63, "MediaShowcasingScoreboard:: [CloudChannels] Updated scores: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    v84(v60, v61);
    (*(v89 + 8))(v92, v90);
  }

  v70 = sub_1E39BE70C();
  if (!v70)
  {
    v99 = 0u;
    v100 = 0u;
    goto LABEL_28;
  }

  sub_1E3277E60(0x4D746E65746E6F63, 0xEF61746164617465, v70, &v99);

  if (!*(&v100 + 1))
  {
LABEL_28:
    sub_1E325F6F0(&v99, &unk_1ECF296E0);
LABEL_29:
    v102 = 0u;
    v103 = 0u;
    goto LABEL_30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_29;
  }

  v71 = v102;
  if (!v102)
  {
    goto LABEL_29;
  }

  strcpy(v97, "liveTextBadge");
  v98 = -4864;
  sub_1E4207414();
  sub_1E375D7E8(&v99, v71, &v102);

  sub_1E375D84C(&v99);
  if (*(&v103 + 1))
  {
    LODWORD(v96) = 1;
    goto LABEL_31;
  }

LABEL_30:
  LODWORD(v96) = 0;
LABEL_31:
  sub_1E325F6F0(&v102, &unk_1ECF296E0);
  if (!sub_1E39BE70C())
  {
    v102 = 0u;
    v103 = 0u;
    goto LABEL_36;
  }

  *(&v100 + 1) = &type metadata for ViewModelKeys.Sports;
  v101 = &off_1F5D7BC68;
  OUTLINED_FUNCTION_44_36(32);

  __swift_destroy_boxed_opaque_existential_1(&v99);
  if (!*(&v103 + 1))
  {
LABEL_36:
    sub_1E325F6F0(&v102, &unk_1ECF296E0);
    goto LABEL_37;
  }

  if (OUTLINED_FUNCTION_61_15())
  {
    v72 = *(&v99 + 1);
    v92 = v99;
    goto LABEL_38;
  }

LABEL_37:
  v92 = 0;
  v72 = 0xE000000000000000;
LABEL_38:
  if (!sub_1E39BE70C())
  {
    v102 = 0u;
    v103 = 0u;
    goto LABEL_43;
  }

  *(&v100 + 1) = &type metadata for ViewModelKeys.Sports;
  v101 = &off_1F5D7BC68;
  OUTLINED_FUNCTION_44_36(33);

  __swift_destroy_boxed_opaque_existential_1(&v99);
  if (!*(&v103 + 1))
  {
LABEL_43:
    sub_1E325F6F0(&v102, &unk_1ECF296E0);
    goto LABEL_44;
  }

  if ((OUTLINED_FUNCTION_61_15() & 1) == 0)
  {
LABEL_44:
    v73 = 0;
    v74 = 0xE000000000000000;
    goto LABEL_45;
  }

  v74 = *(&v99 + 1);
  v73 = v99;
LABEL_45:
  v75 = v95;
  if (*(v95 + 312))
  {
    v76 = *(v95 + 304);
    v77 = *(v95 + 312);
  }

  else
  {
    v76 = 0;
    v77 = 0xE000000000000000;
  }

  v78 = sub_1E4206474();
  v79 = v93;
  __swift_storeEnumTagSinglePayload(v93, 1, 1, v78);
  v80 = swift_allocObject();
  *(v80 + 16) = 0;
  *(v80 + 24) = 0;
  v81 = v94;
  *(v80 + 32) = v75;
  *(v80 + 40) = v81;
  *(v80 + 48) = v96;
  *(v80 + 56) = v92;
  *(v80 + 64) = v72;
  *(v80 + 72) = v73;
  *(v80 + 80) = v74;
  *(v80 + 88) = v76;
  *(v80 + 96) = v77;
  *(v80 + 104) = 0;
  *(v80 + 112) = 0;
  *(v80 + 120) = 0xE000000000000000;

  v82 = v81;
  sub_1E376FE58(0, 0, v79, &unk_1E42C0300, v80);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3BB853C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E4205BC4();
  v7 = sub_1E4205984();
  result = (*(v5 + 8))(v1, v3);
  *a1 = v7;
  return result;
}

uint64_t sub_1E3BB8610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a4;
  v5 = sub_1E41FFCB4();
  v4[25] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v4[26] = v6;
  v4[27] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[28] = v7;
  *v7 = v4;
  v7[1] = sub_1E3BB875C;

  return sub_1E3BB8B2C();
}

uint64_t sub_1E3BB875C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  *(v1 + 232) = v0;

  v2 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E3BB884C()
{
  v1 = *(v0 + 232);
  if (v1)
  {
    *(v0 + 176) = sub_1E4205F14();
    *(v0 + 184) = v2;

    sub_1E4207414();
    sub_1E375D7E8(v0 + 56, v1, (v0 + 96));

    sub_1E375D84C(v0 + 56);
    if (*(v0 + 120))
    {
      if (swift_dynamicCast())
      {
        v3 = *(v0 + 241);
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_10;
    }
  }

  else
  {
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
  }

  sub_1E325F6F0(v0 + 96, &unk_1ECF296E0);
  v3 = 0;
  if (!v1)
  {
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
LABEL_13:
    sub_1E325F6F0(v0 + 128, &unk_1ECF296E0);
    goto LABEL_14;
  }

  v1 = *(v0 + 232);
LABEL_10:
  *(v0 + 160) = sub_1E4205F14();
  *(v0 + 168) = v4;

  sub_1E4207414();
  sub_1E375D7E8(v0 + 16, v1, (v0 + 128));

  sub_1E375D84C(v0 + 16);
  if (!*(v0 + 152))
  {
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v5 = *(v0 + 240);
    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
LABEL_15:
  v7 = *(v0 + 208);
  v6 = *(v0 + 216);
  v8 = *(v0 + 200);
  v9 = sub_1E324FBDC();
  (*(v7 + 16))(v6, v9, v8);
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109376;
    *(v12 + 4) = v3;
    *(v12 + 8) = 1024;
    *(v12 + 10) = v5;
    _os_log_impl(&dword_1E323F000, v10, v11, "MediaShowcasingScoreboard::[CloudChannels] Updated hasEventStarted:%{BOOL}d hasEventEnded:%{BOOL}d", v12, 0xEu);
    OUTLINED_FUNCTION_6_0();
  }

  v14 = *(v0 + 208);
  v13 = *(v0 + 216);
  v15 = *(v0 + 200);

  (*(v14 + 8))(v13, v15);
  sub_1E3C7DE74(6);
  sub_1E3BB69FC();

  OUTLINED_FUNCTION_54();

  return v16();
}

uint64_t sub_1E3BB8B2C()
{
  OUTLINED_FUNCTION_24();
  *(v1 + 88) = v21;
  *(v1 + 96) = v0;
  *(v1 + 193) = v19;
  *(v1 + 72) = v2;
  *(v1 + 80) = v20;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  *(v1 + 192) = v7;
  *(v1 + 24) = v8;
  *(v1 + 32) = v9;
  v10 = sub_1E4205754();
  *(v1 + 104) = v10;
  OUTLINED_FUNCTION_8_0(v10);
  *(v1 + 112) = v11;
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  v12 = sub_1E4205834();
  *(v1 + 136) = v12;
  OUTLINED_FUNCTION_8_0(v12);
  *(v1 + 144) = v13;
  *(v1 + 152) = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1E3BB8C5C()
{
  type metadata accessor for TVAppLauncher();
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v2 = [v1 appController];

  if (v2 && (v3 = [v2 appContext], *(v0 + 160) = v3, v2, v3))
  {
    v4 = sub_1E3BB61B0();
    v39 = v3;
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);

    OUTLINED_FUNCTION_159();
    sub_1E4205854();

    sub_1E4205044();
    v34 = *(v9 + 104);
    v34(v8, *MEMORY[0x1E69D3B90], v10);
    sub_1E3BBA714(&qword_1EE23B680, MEMORY[0x1E69D3BB8]);
    v11 = sub_1E4205E84();
    v12 = *(v9 + 8);
    v12(v8, v10);
    v12(v7, v10);
    if (v11)
    {
      v38 = 0;
      v13 = 0xE000000000000000;
    }

    else
    {
      v38 = sub_1E376D170();
    }

    v36 = v13;
    *(v0 + 168) = v13;
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 104);
    sub_1E4205044();
    v34(v15, *MEMORY[0x1E69D3B68], v16);
    v33 = sub_1E3823168();
    v17 = OUTLINED_FUNCTION_39_9();
    (v12)(v17);
    v12(v14, v16);
    sub_1E4205044();
    v34(v15, *MEMORY[0x1E69D3B78], v16);
    v18 = sub_1E3823168();
    v19 = OUTLINED_FUNCTION_39_9();
    (v12)(v19);
    v12(v14, v16);
    if (v18)
    {
      v20 = 1;
    }

    else
    {
      v22 = *(v0 + 120);
      v21 = *(v0 + 128);
      v23 = *(v0 + 104);
      sub_1E4205044();
      v34(v22, *MEMORY[0x1E69D3B88], v23);
      OUTLINED_FUNCTION_39_9();
      v20 = sub_1E3823168();
      v12(v22, v23);
      v12(v21, v23);
    }

    v25 = *(v0 + 80);
    v24 = *(v0 + 88);
    v26 = *(v0 + 193);
    v37 = *(v0 + 64);
    v27 = *(v0 + 48);
    v28 = *(v0 + 56);
    v35 = *(v0 + 32);
    v29 = *(v0 + 192);
    v30 = swift_task_alloc();
    *(v0 + 176) = v30;
    *(v30 + 16) = v39;
    *(v30 + 24) = v29;
    *(v30 + 25) = v20 & 1;
    *(v30 + 26) = v33 & 1;
    *(v30 + 32) = v37;
    *(v30 + 48) = v35;
    *(v30 + 64) = v27;
    *(v30 + 72) = v28;
    *(v30 + 80) = v38;
    *(v30 + 88) = v36;
    *(v30 + 96) = 0;
    *(v30 + 104) = 0xE000000000000000;
    *(v30 + 112) = v26;
    *(v30 + 120) = v25;
    *(v30 + 128) = v24;
    v31 = swift_task_alloc();
    *(v0 + 184) = v31;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34558);
    *v31 = v0;
    v31[1] = sub_1E3BB9138;

    return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD00000000000007ALL, 0x80000001E4274DF0, sub_1E3BB98B8, v30, v32);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5(0);
  }
}

uint64_t sub_1E3BB9138()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3BB9254()
{
  v1 = OUTLINED_FUNCTION_16_0();
  v2(v1);
  v3 = *(v0 + 16);

  v4 = *(v0 + 8);

  return v4(v3);
}

void sub_1E3BB92F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_31_1();
  v52 = v32;
  v53 = v31;
  v34 = v33;
  v51 = v35;
  v50 = v36;
  v48 = v37;
  v49 = v38;
  v40 = v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345E8);
  OUTLINED_FUNCTION_0_10();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_35_3();
  (*(v43 + 16))(v30, v40, v41);
  v45 = (*(v43 + 80) + 128) & ~*(v43 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v48;
  *(v46 + 17) = v49;
  *(v46 + 18) = v50;
  *(v46 + 24) = v51;
  *(v46 + 32) = v34;
  *(v46 + 40) = v52;
  *(v46 + 48) = a21;
  *(v46 + 56) = a22;
  *(v46 + 64) = a23;
  *(v46 + 72) = a24;
  *(v46 + 80) = a25;
  *(v46 + 88) = a26;
  *(v46 + 96) = a27;
  *(v46 + 104) = a28;
  *(v46 + 112) = a29;
  *(v46 + 120) = a30;
  (*(v43 + 32))(v46 + v45, v30, v41);
  v54[4] = sub_1E3BB9E84;
  v54[5] = v46;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 1107296256;
  v54[2] = sub_1E377674C;
  v54[3] = &block_descriptor_32_3;
  v47 = _Block_copy(v54);

  [v53 evaluate_];
  _Block_release(v47);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3BB95CC(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E3BB95DC(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1E3BB95EC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v3)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
    }

    else
    {
      v5 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    v6[0] = v3;
    v6[3] = v5;

    sub_1E39C1050(v1, v2, v6);
    sub_1E325F6F0(v6, &unk_1ECF296E0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
    sub_1E32752B0(&qword_1EE28A140, &unk_1ECF326C0);
    sub_1E4200624();
  }

  return result;
}

uint64_t sub_1E3BB9724(void *a1)
{
  v1 = [a1 contentMetadata];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205C64();

  return v3;
}

uint64_t sub_1E3BB97BC()
{
  v7 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E3286A7C;

  return sub_1E3BB8610(v2, v3, v4, v7);
}

void sub_1E3BB9974()
{
  sub_1E3BB9A38();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3BB9A38()
{
  if (!qword_1EE289F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B6E8);
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289F98);
    }
  }
}

unint64_t sub_1E3BB9A9C()
{
  result = qword_1ECF34560;
  if (!qword_1ECF34560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34568);
    sub_1E32752B0(&qword_1ECF34570, &qword_1ECF34578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34560);
  }

  return result;
}

unint64_t sub_1E3BB9B4C()
{
  result = qword_1ECF34580;
  if (!qword_1ECF34580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34588);
    sub_1E32752B0(&qword_1ECF34590, &qword_1ECF34538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34580);
  }

  return result;
}

uint64_t sub_1E3BB9BFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 17))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E3BB9C38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3BB9CA0()
{
  result = qword_1ECF345B8;
  if (!qword_1ECF345B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34598);
    sub_1E3BB9D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF345B8);
  }

  return result;
}

unint64_t sub_1E3BB9D2C()
{
  result = qword_1ECF345C0;
  if (!qword_1ECF345C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF345C8);
    sub_1E3BB9DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF345C0);
  }

  return result;
}

unint64_t sub_1E3BB9DB0()
{
  result = qword_1ECF345D0;
  if (!qword_1ECF345D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF345D8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF345D0);
  }

  return result;
}

void sub_1E3BB9E84()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345E8);
  OUTLINED_FUNCTION_17_2(v3);
  v4 = *(v0 + 16);
  v5 = *(v0 + 17);
  v6 = *(v0 + 18);
  v7 = *(v0 + 32);
  v8 = *(v0 + 48);
  v25 = *(v0 + 24);
  v26 = *(v0 + 40);
  v27 = *(v0 + 56);
  v28 = *(v0 + 64);
  v29 = *(v0 + 72);
  v30 = *(v0 + 80);
  v31 = *(v0 + 88);
  v32 = *(v0 + 96);
  v33 = *(v0 + 104);
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = [v2 objectForKeyedSubscript_];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = v11;
  if (![v11 hasProperty_])
  {

LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345E8);
    sub_1E42063D4();
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E42C0280;
  v24 = v9;
  v14 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_10_90();
  v15 = MEMORY[0x1E69E6370];
  v16 = v4 & (v5 ^ 1);
  *(inited + 96) = MEMORY[0x1E69E6370];
  v17 = v15;
  *(inited + 72) = v16;
  sub_1E4205F14();
  OUTLINED_FUNCTION_10_90();
  *(inited + 168) = v17;
  *(inited + 144) = v6;
  sub_1E4205F14();
  OUTLINED_FUNCTION_10_90();
  *(inited + 240) = v17;
  *(inited + 216) = v5;
  OUTLINED_FUNCTION_10_90();
  *(inited + 312) = v14;
  *(inited + 288) = v25;
  *(inited + 296) = v7;

  OUTLINED_FUNCTION_10_90();
  *(inited + 384) = v14;
  *(inited + 360) = v26;
  *(inited + 368) = v8;

  OUTLINED_FUNCTION_10_90();
  *(inited + 456) = v14;
  *(inited + 432) = v27;
  *(inited + 440) = v28;

  OUTLINED_FUNCTION_10_90();
  *(inited + 528) = v14;
  *(inited + 504) = v29;
  *(inited + 512) = v30;

  OUTLINED_FUNCTION_10_90();
  *(inited + 600) = v14;
  *(inited + 576) = v31;
  *(inited + 584) = v32;

  OUTLINED_FUNCTION_10_90();
  *(inited + 672) = v17;
  *(inited + 648) = v33;
  OUTLINED_FUNCTION_10_90();
  *(inited + 744) = v14;
  *(inited + 720) = v10;
  *(inited + 728) = v24;

  v18 = sub_1E4205CB4();
  sub_1E4205F14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E4297BE0;
  *(v19 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  *(v19 + 32) = v18;

  v20 = OUTLINED_FUNCTION_75();
  v22 = sub_1E3780E30(v20, v21, v19, v12);
  if (v22)
  {
    v23 = v22;

    sub_1E3BBA2E4(v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345E8);
    sub_1E42063D4();

LABEL_7:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

uint64_t sub_1E3BBA2E4(void *a1)
{
  v2 = [a1 toDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205C64();

  return v3;
}

uint64_t sub_1E3BBA368@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_1E34AF4E4(*a1, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = OUTLINED_FUNCTION_75();
    MEMORY[0x1E6911E60](v6);
  }

  else
  {
  }

  *a2 = sub_1E4201B84();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34650);
  OUTLINED_FUNCTION_96_2();
  sub_1E3BB45C0();
}

uint64_t sub_1E3BBA428(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = a2;
  }

  return result;
}

void sub_1E3BBA468(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

unint64_t sub_1E3BBA4A8()
{
  result = qword_1ECF58EA8[0];
  if (!qword_1ECF58EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF58EA8);
  }

  return result;
}

unint64_t sub_1E3BBA50C()
{
  result = qword_1ECF34688;
  if (!qword_1ECF34688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34690);
    sub_1E3BBA590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34688);
  }

  return result;
}

unint64_t sub_1E3BBA590()
{
  result = qword_1ECF34698;
  if (!qword_1ECF34698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF345B0);
    sub_1E3BBA61C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34698);
  }

  return result;
}

unint64_t sub_1E3BBA61C()
{
  result = qword_1ECF346A0;
  if (!qword_1ECF346A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF345A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34598);
    sub_1E3BB9CA0();
    swift_getOpaqueTypeConformance2();
    sub_1E3BBA714(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF346A0);
  }

  return result;
}

uint64_t sub_1E3BBA714(unint64_t *a1, void (*a2)(uint64_t))
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