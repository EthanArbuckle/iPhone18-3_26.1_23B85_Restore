void sub_1E40B7BC0()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v4 = v3 - v2;
  if (*(v0 + 360))
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v5(v4);

    v6 = sub_1E41FFC94();
    v7 = sub_1E42067F4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_6_21();
      v16 = OUTLINED_FUNCTION_100();
      *v8 = 136446210;
      v9 = sub_1E40B5D58();
      OUTLINED_FUNCTION_58_0(v9, v10);
      OUTLINED_FUNCTION_122();

      *(v8 + 4) = v0;
      OUTLINED_FUNCTION_54_1(&dword_1E323F000, v11, v12, "%{public}s suspended.");
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_7_7();
    }

    v13 = OUTLINED_FUNCTION_11_6();
    v14(v13);
    OUTLINED_FUNCTION_47_0();
    (*(v15 + 360))();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40B7D64()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v4 = v3 - v2;
  if (*(v0 + 360))
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v5(v4);

    v6 = sub_1E41FFC94();
    v7 = sub_1E42067F4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_6_21();
      v16 = OUTLINED_FUNCTION_100();
      *v8 = 136446210;
      v9 = sub_1E40B5D58();
      OUTLINED_FUNCTION_58_0(v9, v10);
      OUTLINED_FUNCTION_122();

      *(v8 + 4) = v0;
      OUTLINED_FUNCTION_54_1(&dword_1E323F000, v11, v12, "%{public}s resumed.");
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_7_7();
    }

    v13 = OUTLINED_FUNCTION_11_6();
    v14(v13);
    OUTLINED_FUNCTION_47_0();
    (*(v15 + 368))();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40B7F08()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  if (*(v0 + 360))
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_12_7();
    v8(v7);

    v9 = sub_1E41FFC94();
    v10 = sub_1E42067F4();

    if (os_log_type_enabled(v9, v10))
    {
      v18 = v1;
      v11 = OUTLINED_FUNCTION_6_21();
      v19 = OUTLINED_FUNCTION_100();
      *v11 = 136446210;
      v12 = sub_1E40B5D58();
      v14 = OUTLINED_FUNCTION_58_0(v12, v13);

      *(v11 + 4) = v14;
      OUTLINED_FUNCTION_54_1(&dword_1E323F000, v15, v16, "%{public}s cancelled.");
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_7_7();

      (*(v3 + 8))(v7, v18);
    }

    else
    {

      (*(v3 + 8))(v7, v1);
    }

    OUTLINED_FUNCTION_12_6();
    (*(v17 + 376))();

    *(v0 + 360) = 0;
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40B80D8()
{
  LOBYTE(v2) = 18;
  OUTLINED_FUNCTION_8();
  (*(v0 + 776))(v3, &v2, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v3[3])
  {
    if (OUTLINED_FUNCTION_53_37())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E325F6F0(v3, &unk_1ECF296E0);
    return 0;
  }
}

uint64_t sub_1E40B8190()
{

  sub_1E32AF6F8(v0 + 328);
  sub_1E32AF6F8(v0 + 344);
}

uint64_t CollectionViewModel.deinit()
{
  v0 = ViewModel.deinit();

  sub_1E32AF6F8(v0 + 328);
  sub_1E32AF6F8(v0 + 344);

  return v0;
}

uint64_t CollectionViewModel.__deallocating_deinit()
{
  CollectionViewModel.deinit();
  OUTLINED_FUNCTION_81_28();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E40B8580()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  OUTLINED_FUNCTION_5_0();
  if (*(v4 + 32))
  {

    v16 = sub_1E408A950(v15);

    if (v16)
    {
      OUTLINED_FUNCTION_111();
      v18 = (*(v17 + 1040))();
      if (!v18 || (sub_1E37D027C(v18), OUTLINED_FUNCTION_6_19(), , !v1))
      {
LABEL_28:

        goto LABEL_29;
      }

      if (sub_1E32AE9B0(v16))
      {
        v63 = v16;
        if (sub_1E32AE9B0(v16))
        {
          if (sub_1E32AE9B0(v16))
          {
            if ((v16 & 0xC000000000000001) == 0)
            {
              if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_46;
              }

              v19 = *(v16 + 32);

LABEL_11:
              if (!sub_1E32AE9B0(v16))
              {
LABEL_48:
                __break(1u);
                goto LABEL_49;
              }

              if (sub_1E32AE9B0(v16) >= 1)
              {
                v20 = sub_1E32AE9B0(v16);
                v21 = __OFSUB__(v20, 1);
                v22 = v20 - 1;
                if (!v21)
                {
                  sub_1E3797CDC(v22);
                  sub_1E40BAB08(0, 1, 0);
                  v23 = v63;
                  v24 = *(v1 + 24);
                  v25 = v19[3];
                  if (v24)
                  {
                    if (v25)
                    {
                      v26 = *(v1 + 16) == v19[2] && v24 == v25;
                      if (v26 || (sub_1E42079A4() & 1) != 0)
                      {
LABEL_21:
                        v59 = v23;
                        v61 = v1;
                        v27 = *(*v19 + 872);
                        v60 = v19;
                        if (v27())
                        {
                          OUTLINED_FUNCTION_8();
                          v29 = (*(v28 + 1016))();

                          sub_1E32AE9B0(v29);
                          OUTLINED_FUNCTION_6_19();

                          sub_1E324FBDC();
                          OUTLINED_FUNCTION_12_7();
                          v30(v14);

                          v31 = sub_1E41FFC94();
                          v32 = sub_1E4206814();

                          if (os_log_type_enabled(v31, v32))
                          {
                            v33 = OUTLINED_FUNCTION_6_21();
                            v58 = OUTLINED_FUNCTION_100();
                            v62[0] = v58;
                            *v33 = 136315138;
                            v57 = v31;
                            v34 = sub_1E40B5D58();
                            v31 = v35;
                            sub_1E3270FC8(v34, v35, v62);
                            HIDWORD(v56) = v32;
                            OUTLINED_FUNCTION_6_19();

                            *(v33 + 4) = v32;
                            OUTLINED_FUNCTION_70_32();
                            _os_log_impl(v36, v37, v38, v39, v33, 0xCu);
                            __swift_destroy_boxed_opaque_existential_1Tm(v58);
                            OUTLINED_FUNCTION_21_0();
                            OUTLINED_FUNCTION_6_0();
                          }

                          (*(v7 + 8))(v14, v5);
                        }

                        else
                        {
                          sub_1E324FBDC();
                          OUTLINED_FUNCTION_12_7();
                          v40(v11);

                          v41 = sub_1E41FFC94();
                          v42 = sub_1E4206814();

                          if (os_log_type_enabled(v41, v42))
                          {
                            v43 = OUTLINED_FUNCTION_6_21();
                            v58 = OUTLINED_FUNCTION_100();
                            v62[0] = v58;
                            *v43 = 136315138;
                            v57 = v41;
                            v44 = sub_1E40B5D58();
                            v41 = v45;
                            sub_1E3270FC8(v44, v45, v62);
                            HIDWORD(v56) = v42;
                            OUTLINED_FUNCTION_6_19();

                            *(v43 + 4) = v42;
                            OUTLINED_FUNCTION_70_32();
                            _os_log_impl(v46, v47, v48, v49, v43, 0xCu);
                            __swift_destroy_boxed_opaque_existential_1Tm(v58);
                            OUTLINED_FUNCTION_21_0();
                            OUTLINED_FUNCTION_79();
                          }

                          (*(v7 + 8))(v11, v5);
                        }

                        v50 = sub_1E40B125C();
                        if (*v51)
                        {
                          sub_1E40B40C8(v59);
                        }

                        else
                        {
                        }

                        (v50)(v62, 0);
                        sub_1E40B8BC0(v4);

                        sub_1E41D7FB4(v52);

                        if (!(*(*v2 + 1208))(v53))
                        {

                          goto LABEL_41;
                        }

                        if (!(v16 >> 62))
                        {

                          sub_1E42079D4();
                          type metadata accessor for ViewModel();
                          v54 = v16;
LABEL_39:

                          swift_getObjectType();
                          OUTLINED_FUNCTION_131_0();
                          v55(v2, v54);

                          swift_unknownObjectRelease();
LABEL_41:

                          goto LABEL_29;
                        }

LABEL_49:
                        type metadata accessor for ViewModel();

                        v54 = sub_1E42076C4();

                        goto LABEL_39;
                      }
                    }
                  }

                  else if (!v25)
                  {
                    goto LABEL_21;
                  }

                  goto LABEL_28;
                }

                goto LABEL_47;
              }

LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

LABEL_44:

            v19 = MEMORY[0x1E6911E60](0, v16);
            goto LABEL_11;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_44;
      }
    }
  }

LABEL_29:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40B8BC0(uint64_t a1)
{
  v2 = v1;
  ViewModelKeys.rawValue.getter(3);
  *&v167 = v4;
  *(&v167 + 1) = v5;
  v6 = OUTLINED_FUNCTION_42_71();
  MEMORY[0x1E69109E0](v6);
  ViewModelKeys.rawValue.getter(13);
  MEMORY[0x1E69109E0]();

  ViewModelKeys.rawValue.getter(27);
  v8 = v7;
  v10 = v9;
  v11 = (*(*v1 + 672))();
  sub_1E3277E60(v8, v10, v11, &v167);

  if (!*(&v168 + 1))
  {

    return sub_1E325F6F0(&v167, &unk_1ECF296E0);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  v13 = MEMORY[0x1E69E7CA0];
  OUTLINED_FUNCTION_2_259(v12, v14, v15, v16, v17, v18, v19, v20, v123, v131, v141, v148, v156, v164);
  if ((OUTLINED_FUNCTION_45_17() & 1) == 0)
  {
  }

  v21 = v164;
  v22 = sub_1E3FE381C(v164);
  if (!v22)
  {
    goto LABEL_23;
  }

  v23 = v22;
  v166 = v22;
  sub_1E384EE08(140);
  sub_1E3277E60(v24, v25, v23, &v167);

  if (!*(&v168 + 1))
  {
    goto LABEL_26;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  OUTLINED_FUNCTION_2_259(v26, v27, v28, v29, v30, v31, v32, v33, v124, v132, v142, v149, v157, v164);
  if ((OUTLINED_FUNCTION_86_6() & 1) == 0)
  {

LABEL_23:
  }

  v158 = v26;
  v34 = v164;
  ViewModelKeys.rawValue.getter(13);
  sub_1E3277E60(v35, v36, v164, &v167);

  if (!*(&v168 + 1))
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_2_259(v37, v38, v39, v40, v41, v42, v43, v44, v125, v133, v143, v150, v158, v164);
  if ((OUTLINED_FUNCTION_45_17() & 1) == 0)
  {
LABEL_28:

    goto LABEL_23;
  }

  v165 = v164;
  OUTLINED_FUNCTION_5_0();
  v45 = *(a1 + 40);
  if (!v45)
  {

    v167 = 0u;
    v168 = 0u;
    goto LABEL_27;
  }

  sub_1E3F9F204(v45, v13 + 8, &v167);

  if (!*(&v168 + 1))
  {
LABEL_25:

LABEL_26:

LABEL_27:
    sub_1E325F6F0(&v167, &unk_1ECF296E0);
  }

  OUTLINED_FUNCTION_2_259(v46, v47, v48, v49, v50, v51, v52, v53, v126, v134, v144, v151, v159, v164);
  if ((OUTLINED_FUNCTION_45_17() & 1) == 0)
  {
    goto LABEL_28;
  }

  v54 = v164;
  if (!v164[2])
  {
    goto LABEL_32;
  }

  v152 = v164[2];
  v55 = v164[4];

  sub_1E384EE08(140);
  sub_1E3277E60(v56, v57, v55, &v167);

  if (!*(&v168 + 1))
  {

    sub_1E325F6F0(&v167, &unk_1ECF296E0);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_2_259(v58, v59, v60, v61, v62, v63, v64, v65, v127, v135, (v164 + 4), v152, v160, v164);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:

LABEL_34:
    sub_1E3EA0974(v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_1E4298AD0;
    ViewModelKeys.rawValue.getter(27);
    *(v86 + 32) = v87;
    *(v86 + 40) = v88;
    v89 = v21[2];

    *&v167 = v89 - 1;
    *(v86 + 48) = sub_1E4207944();
    *(v86 + 56) = v90;
    ViewModelKeys.rawValue.getter(28);
    *(v86 + 64) = v91;
    *(v86 + 72) = v92;
    ViewModelKeys.rawValue.getter(13);
    *(v86 + 80) = v93;
    *(v86 + 88) = v94;
    *&v167 = v86;
    v95 = OUTLINED_FUNCTION_63_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v95);
    OUTLINED_FUNCTION_1_34();
    sub_1E32752B0(v96, &qword_1ECF2C420);
    OUTLINED_FUNCTION_42_71();
    v97 = sub_1E4205DF4();
    v99 = v98;

    *(&v168 + 1) = v12;
    *&v167 = v165;
    (*(*v2 + 688))(&v164);
    OUTLINED_FUNCTION_152();
    sub_1E3FA012C(&v167, v97, v99, v160);
    v2(&v164, 0);
  }

  v66 = v164;
  ViewModelKeys.rawValue.getter(7);
  sub_1E3277E60(v67, v68, v34, &v167);

  if (!*(&v168 + 1))
  {
LABEL_36:

    goto LABEL_25;
  }

  OUTLINED_FUNCTION_2_259(v69, v70, v71, MEMORY[0x1E69E6158], v72, v73, v74, v75, v128, v136, v145, v153, v160, v164);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:

    goto LABEL_28;
  }

  ViewModelKeys.rawValue.getter(7);
  sub_1E3277E60(v76, v77, v66, &v167);

  if (!*(&v168 + 1))
  {

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_2_259(v78, v79, v80, MEMORY[0x1E69E6158], v81, v82, v83, v84, v129, v164, v146, v154, v161, v164);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_28;
  }

  if (v137 == v164)
  {
  }

  else
  {
    v138 = sub_1E42079A4();

    if ((v138 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  sub_1E384EE08(140);
  *&v167 = v100;
  *(&v167 + 1) = v101;
  v102 = OUTLINED_FUNCTION_42_71();
  MEMORY[0x1E69109E0](v102);
  ViewModelKeys.rawValue.getter(13);
  MEMORY[0x1E69109E0]();

  v103 = *(&v167 + 1);
  v139 = v167;
  ViewModelKeys.rawValue.getter(13);
  v105 = v104;
  sub_1E3277E60(v106, v104, v66, &v167);

  if (!*(&v168 + 1))
  {

    sub_1E325F6F0(&v167, &unk_1ECF296E0);
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_2_259(v107, v108, v109, v110, v111, v112, v113, v114, v130, v139, v147, v155, v162, v164);
  if ((OUTLINED_FUNCTION_45_17() & 1) == 0)
  {

    goto LABEL_47;
  }

  sub_1E3EA0974(v164);
  *(&v168 + 1) = v12;
  *&v167 = v165;
  sub_1E3FA012C(&v167, v140, v103, v163);
  v105 = v21[2];
  v23 = v166;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_59;
  }

  if (v105)
  {
    while (v105 <= v21[2])
    {
      v21[v105 + 3] = v23;
LABEL_47:

LABEL_48:
      v115 = 0;
      while (1)
      {
        if (v115 == v155)
        {

          ViewModelKeys.rawValue.getter(27);
          v120 = v119;
          v122 = v121;
          *(&v168 + 1) = v12;
          *&v167 = v21;
          (*(*v2 + 688))(&v164);
          OUTLINED_FUNCTION_152();
          sub_1E3946774(&v167, v120, v122);
          v2(&v164, 0);
        }

        v116 = v115;
        if (v115 >= *(v54 + 16))
        {
          break;
        }

        v115 = 1;
        if (v116)
        {
          v105 = *(v147 + 8 * v116);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_1E39239C8(0, v21[2] + 1, 1, v21);
          }

          v118 = v21[2];
          v117 = v21[3];
          if (v118 >= v117 >> 1)
          {
            v21 = sub_1E39239C8((v117 > 1), v118 + 1, 1, v21);
          }

          v115 = v116 + 1;
          v21[2] = v118 + 1;
          v21[v118 + 4] = v105;
        }
      }

      __break(1u);
LABEL_59:
      result = sub_1E3FA2A70(v21);
      v21 = result;
      if (!v105)
      {
        goto LABEL_60;
      }
    }
  }

  else
  {
LABEL_60:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E40B947C(uint64_t a1, uint64_t a2)
{
  ViewModelKeys.rawValue.getter(3);
  sub_1E3277E60(v4, v5, a1, &v26);

  if (!*(&v27 + 1))
  {
    v20 = &v26;
LABEL_21:
    sub_1E325F6F0(v20, &unk_1ECF296E0);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((OUTLINED_FUNCTION_86_6() & 1) == 0)
  {
    return;
  }

  *(&v27 + 1) = &type metadata for ViewModelKeys;
  *&v28 = &off_1F5D7BCA8;
  LOBYTE(v26) = 13;
  sub_1E3F9F164(&v26);

  if (!*(&v24 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v26);
    v20 = &v23;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v26);
    if (*(*&v22[0] + 16))
    {
      v6 = *(*&v22[0] + 32);

      v7 = 0;
      OUTLINED_FUNCTION_4_4();
      v10 = v9 & v8;
      v12 = (v11 + 63) >> 6;
      if ((v9 & v8) == 0)
      {
        goto LABEL_8;
      }

      do
      {
LABEL_12:
        OUTLINED_FUNCTION_50_56();
        v15 = (*(v6 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        sub_1E328438C(*(v6 + 56) + 32 * v14, v22);
        *&v23 = v17;
        *(&v23 + 1) = v16;
        sub_1E329504C(v22, &v24);

LABEL_13:
        v26 = v23;
        v27 = v24;
        v28 = v25;
        if (!*(&v23 + 1))
        {

          return;
        }

        sub_1E329504C(&v27, &v23);
        OUTLINED_FUNCTION_53();
        v18 = sub_1E38506C8();
        if (v18 != 263)
        {
          v19 = v18;
          sub_1E328438C(&v23, v22);
          if (OUTLINED_FUNCTION_86_6())
          {
            type metadata accessor for CollectionViewModel();
            OUTLINED_FUNCTION_81_28();
            swift_allocObject();

            sub_1E40B19D4(v19, v21, a2);

            __swift_destroy_boxed_opaque_existential_1Tm(&v23);
            return;
          }
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v23);
      }

      while (v10);
LABEL_8:
      while (1)
      {
        v13 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v13 >= v12)
        {
          v10 = 0;
          v24 = 0u;
          v25 = 0u;
          v23 = 0u;
          goto LABEL_13;
        }

        v10 = *(v6 + 64 + 8 * v13);
        ++v7;
        if (v10)
        {
          v7 = v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v26);
  }
}

uint64_t sub_1E40B977C(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v4 = (*(v3 + 1040))();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E32AE9B0(v5);
  if (!v6)
  {
LABEL_30:

    return 0;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v8, v5);
    }

    else
    {
      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }
    }

    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_8();
    v12 = (*(v11 + 872))();
    if (!v12)
    {
      goto LABEL_28;
    }

    v1 = v12;
    v13 = v12 >> 62;
    if (v12 >> 62)
    {
      if (!sub_1E4207384())
      {
LABEL_27:

LABEL_28:

        goto LABEL_29;
      }
    }

    else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    v2 = a1 - v9;
    if (__OFSUB__(a1, v9))
    {
      goto LABEL_36;
    }

    if ((v2 & 0x8000000000000000) == 0)
    {
      v14 = v13 ? sub_1E4207384() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2 < v14)
      {
        break;
      }
    }

    if (v13)
    {
      v2 = sub_1E4207384();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = __OFADD__(v9, v2);
    v9 += v2;
    if (v15)
    {
      goto LABEL_37;
    }

LABEL_29:
    ++v8;
    if (v10 == v7)
    {
      goto LABEL_30;
    }
  }

  sub_1E34AF4E4(v2, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) == 0)
  {
    v16 = *(v1 + 8 * v2 + 32);

    goto LABEL_34;
  }

LABEL_39:
  v16 = MEMORY[0x1E6911E60](v2, v1);
LABEL_34:

  return v16;
}

void sub_1E40B99B8()
{
  OUTLINED_FUNCTION_60_39();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_8();
  v8 = (*(v7 + 1040))();
  if (v8)
  {
    v16 = OUTLINED_FUNCTION_16_156(v8, v9, v10, v11, v12, v13, v14, v15, v20[6]);
    MEMORY[0x1EEE9AC00](v16);
    v20[2] = v2;
    v20[3] = v6;
    v20[4] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4C0);
    v17 = sub_1E4206374();
    sub_1E32752B0(&qword_1ECF3F890, &unk_1ECF3F4C0);
    swift_getWitnessTable();
    sub_1E4206224();
    v18 = OUTLINED_FUNCTION_91_22();
    if (!v0)
    {
      MEMORY[0x1EEE9AC00](v18);
      v20[-2] = v2;
      sub_1E42061B4();

      OUTLINED_FUNCTION_0_286();
      WitnessTable = swift_getWitnessTable();
      sub_1E38D2480(&v21, v17, WitnessTable);
    }
  }

  OUTLINED_FUNCTION_83_24();
  OUTLINED_FUNCTION_59_39();
}

void sub_1E40B9BA4()
{
  OUTLINED_FUNCTION_60_39();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_8();
  v10 = (*(v9 + 872))();
  if (v10)
  {
    v18 = OUTLINED_FUNCTION_16_156(v10, v11, v12, v13, v14, v15, v16, v17, v24[6]);
    MEMORY[0x1EEE9AC00](v18);
    v24[2] = v2;
    v24[3] = v6;
    v24[4] = v4;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    OUTLINED_FUNCTION_0_32();
    v22 = sub_1E32752B0(v21, &unk_1ECF2C790);
    v23 = sub_1E3CA543C(sub_1E40BA944, v24, v19, v2, v20, v22, MEMORY[0x1E69E7288], &v25);
    OUTLINED_FUNCTION_91_22();
    if (!v0)
    {
      *v8 = v23;
    }
  }

  else
  {
    *v8 = sub_1E4206304();
  }

  OUTLINED_FUNCTION_83_24();
  OUTLINED_FUNCTION_59_39();
}

unint64_t sub_1E40B9D0C(uint64_t (*a1)(unint64_t))
{
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 1040))();
  if (!v3)
  {
    v7 = 0;
    return v7 & 1;
  }

  v4 = v3;
  result = sub_1E32AE9B0(v3);
  v20 = result;
  v6 = 0;
  v7 = 0;
  v18 = v4 & 0xFFFFFFFFFFFFFF8;
  v19 = v4 & 0xC000000000000001;
LABEL_3:
  for (i = v6; ; ++i)
  {
    if (v20 == i)
    {

      return v7 & 1;
    }

    if (v19)
    {
      result = MEMORY[0x1E6911E60](i, v4);
    }

    else
    {
      if (i >= *(v18 + 16))
      {
        goto LABEL_33;
      }
    }

    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_11_13();
    result = (*(v9 + 872))();
    if (result)
    {
      break;
    }
  }

  v10 = result;
  v11 = result & 0xFFFFFFFFFFFFFF8;
  v16 = v4;
  if (result >> 62)
  {
    result = sub_1E4207384();
    v12 = result;
  }

  else
  {
    v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (j = 0; ; ++j)
  {
    if (v12 == j)
    {

      v4 = v16;
      goto LABEL_3;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](j, v10);
      v14 = result;
    }

    else
    {
      if (j >= *(v11 + 16))
      {
        goto LABEL_35;
      }

      v14 = *(v10 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_34;
    }

    if (v7)
    {
      v7 = 1;
      goto LABEL_24;
    }

    v7 = v10 & 1;
    v15 = a1(v14);
    if (v1)
    {
      break;
    }

    v7 = v15;
LABEL_24:
  }

  return v7 & 1;
}

void sub_1E40B9F70()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1040))();
  if (v1)
  {
    v2 = v1;
    v3 = sub_1E32AE9B0(v1);
    v4 = 0;
    v5 = 0;
    while (1)
    {
      if (v3 == v4)
      {

        goto LABEL_19;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }
      }

      if (__OFADD__(v4, 1))
      {
        break;
      }

      OUTLINED_FUNCTION_8();
      v7 = (*(v6 + 872))();
      if (v7)
      {
        if (v7 >> 62)
        {
          v8 = sub_1E4207384();
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

      ++v4;
      v9 = __OFADD__(v5, v8);
      v5 += v8;
      if (v9)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E40BA0C4(void **a1, uint64_t a2)
{
  v6 = *a1;

  result = sub_1E40BA308(v6, a2);
  if (v2)
  {

    return v3;
  }

  if (v8)
  {
    v3 = v6[2];

    return v3;
  }

  v3 = result;
  v29 = 0;
  if (!__OFADD__(result, 1))
  {
    for (i = result + 5; ; ++i)
    {
      v10 = i - 4;
      v11 = v6[2];
      if (i - 4 == v11)
      {

        return v3;
      }

      if (i - 4 >= v11)
      {
        break;
      }

      v12 = v6[i];

      ViewModelKeys.rawValue.getter(7);
      if (*(v12 + 16) && (v15 = sub_1E327D33C(v13, v14), (v16 & 1) != 0))
      {
        sub_1E328438C(*(v12 + 56) + 32 * v15, &v27);
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
      }

      if (*(&v28 + 1))
      {
        v17 = swift_dynamicCast();
        v18 = v17 == 0;
        if (v17)
        {
          v19 = v25;
        }

        else
        {
          v19 = 0;
        }

        if (v18)
        {
          v20 = 0;
        }

        else
        {
          v20 = v26;
        }
      }

      else
      {
        sub_1E325F6F0(&v27, &unk_1ECF296E0);
        v19 = 0;
        v20 = 0;
      }

      v21 = sub_1E3AB391C(v19, v20, a2);

      if ((v21 & 1) == 0)
      {
        if (v10 != v3)
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_35;
          }

          v22 = v6[2];
          if (v3 >= v22)
          {
            goto LABEL_36;
          }

          if (v10 >= v22)
          {
            goto LABEL_37;
          }

          v23 = v6[v3 + 4];
          v24 = v6[i];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1E3FA2A70(v6);
          }

          v6[v3 + 4] = v24;

          if (v10 >= v6[2])
          {
            goto LABEL_38;
          }

          v6[i] = v23;

          *a1 = v6;
        }

        ++v3;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E40BA308(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  while (1)
  {
    if (v4 == v3)
    {
      v16 = 0;
      goto LABEL_19;
    }

    v6 = *(v5 + 8 * v3);

    ViewModelKeys.rawValue.getter(7);
    if (*(v6 + 16) && (v9 = sub_1E327D33C(v7, v8), (v10 & 1) != 0))
    {
      sub_1E328438C(*(v6 + 56) + 32 * v9, &v20);
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    if (*(&v21 + 1))
    {
      v11 = swift_dynamicCast();
      v12 = v11 == 0;
      v13 = v11 ? v18 : 0;
      v14 = v12 ? 0 : v19;
    }

    else
    {
      sub_1E325F6F0(&v20, &unk_1ECF296E0);
      v13 = 0;
      v14 = 0;
    }

    v15 = sub_1E3AB391C(v13, v14, a2);

    if (v15)
    {
      break;
    }

    ++v3;
  }

  v16 = v3;
LABEL_19:

  return v16;
}

uint64_t sub_1E40BA468(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    return sub_1E3AB391C(*(a1 + 16), v2, *(v1 + 16));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E40BA484@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = a1[1];
  OUTLINED_FUNCTION_8();
  result = (*(v6 + 40))(v7, v6);
  if (result)
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    v12 = (*(v10 + 8))(v5, v6, v4, ObjectType, v10);
    result = swift_unknownObjectRelease();
  }

  else
  {
    v12 = 3;
  }

  *a2 = v12;
  return result;
}

uint64_t sub_1E40BA55C(char a1)
{
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    OUTLINED_FUNCTION_5_0();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = sub_1E40B193C();
      if (*v9)
      {
        sub_1E37CC6E0();
      }

      (v8)(&v14, 0);
      if (a1)
      {
        OUTLINED_FUNCTION_12_6();
        if ((*(v10 + 1208))())
        {
          v12 = v11;
          ObjectType = swift_getObjectType();
          (*(v12 + 56))(v5, v7, ObjectType, v12);
          swift_unknownObjectRelease();
        }
      }

      if (v3)
      {
        v3(a1 & 1);
      }
    }
  }

  return result;
}

uint64_t sub_1E40BA6B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  ViewModelKeys.rawValue.getter(34);
  v6 = v5;
  v8 = v7;
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  v13[0] = v4;
  v9 = *(*v2 + 688);

  v10 = v9(v12);
  sub_1E3946774(v13, v6, v8);
  result = v10(v12, 0);
  *a2 = 0;
  return result;
}

uint64_t sub_1E40BA7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

_BYTE *storeEnumTagSinglePayload for CollectionAppearanceType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E40BA944(void *a1, void *a2)
{
  result = (*(v2 + 24))(*a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_1E40BA980(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for CollectionGroupViewModel();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E32752B0(&qword_1EE23B578, &unk_1ECF3F4C0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4C0);
          v9 = sub_1E38CF91C(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E40BAB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for CollectionGroupViewModel();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1E4207384();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E40BAC18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E40BAC60(uint64_t a1)
{
  OUTLINED_FUNCTION_15_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = [objc_opt_self() sharedMonitor];
    sub_1E3280A90(0, &qword_1EE23AEF0);
    sub_1E3A60E60();
    v4 = sub_1E4206614();
    [v3 addObserver:a1 forEventDescriptors:v4 viewController:0];
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_58_40()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_88_21(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_91_22()
{
}

uint64_t sub_1E40BADF8()
{
  v0 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D3D88], v0);
  v6 = sub_1E4205BE4();
  (*(v2 + 8))(v5, v0);
  return v6;
}

uint64_t sub_1E40BAEE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E40BAF5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 2432))();
  *a2 = result;
  return result;
}

uint64_t sub_1E40BAFDC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E40BB04C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F8A8);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E40BB0C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F8B0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F8A8);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_1E40BB1E8()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 2120))())
  {
    OUTLINED_FUNCTION_8();
    v2 = (*(v1 + 1216))() ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1E40BB260()
{
  sub_1E3F94408();
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 2480))())
  {
    OUTLINED_FUNCTION_8();
    (*(v1 + 1192))();
  }

  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 1520))();
  switch(v5)
  {
    case 1:

      break;
    case 2:
      sub_1E3827608(v3, v4, 2);
      break;
    case 3:
      break;
    default:
      sub_1E3827608(v3, v4, 0);
      break;
  }

  OUTLINED_FUNCTION_8();
  (*(v6 + 2432))();
  sub_1E3DF7884();
}

uint64_t sub_1E40BB3B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA80);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v35 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA90);
  OUTLINED_FUNCTION_0_10();
  v40 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v35 - v13;
  v15 = sub_1E3F942F0();
  result = (*(*v0 + 1096))(v15);
  if (v17)
  {
    v18 = result;
    v19 = v17;
    v35[1] = sub_1E4205004();
    v20 = sub_1E4204FF4();
    v21 = sub_1E4204FB4();
    v35[6] = v18;
    v22 = v21;

    v41 = v22;
    sub_1E32ADE38();
    v35[4] = v19;
    v23 = sub_1E4206A04();
    v39 = v1;
    v24 = v23;
    v42 = v23;
    v36 = sub_1E42069A4();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v36);
    v37 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C08);
    v38 = v3;
    v35[5] = MEMORY[0x1E695BED8];
    sub_1E32752B0(&qword_1EE28A210, &qword_1ECF28C08);
    v35[3] = sub_1E32ADF08(&qword_1EE23B1E0, sub_1E32ADE38);
    sub_1E42007D4();
    sub_1E32ADF50(v9);

    swift_allocObject();
    swift_weakInit();
    v35[2] = MEMORY[0x1E695BE98];
    sub_1E32752B0(&qword_1EE28A2A0, &unk_1ECF3DA90);
    sub_1E4200844();

    (*(v40 + 8))(v14, v10);
    OUTLINED_FUNCTION_4_264();
    sub_1E42004C4();
    swift_endAccess();

    v25 = sub_1E4204FF4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B550);
    v26 = sub_1E4205484();
    OUTLINED_FUNCTION_0_10();
    v28 = v27;
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1E4297BE0;
    (*(v28 + 104))(v30 + v29, *MEMORY[0x1E69D3B20], v26);
    v31 = sub_1E4204FE4();

    v41 = v31;
    v32 = sub_1E4206A04();
    v42 = v32;
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAA0);
    sub_1E32752B0(&qword_1EE28A1E0, &qword_1ECF3DAA0);
    v33 = v37;
    sub_1E42007D4();
    sub_1E32ADF50(v9);

    swift_allocObject();
    swift_weakInit();
    sub_1E32752B0(&qword_1EE28A290, &unk_1ECF3DA80);
    v34 = v39;
    sub_1E4200844();

    (*(v38 + 8))(v33, v34);
    OUTLINED_FUNCTION_4_264();
    sub_1E42004C4();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E40BB9B4()
{
  v0 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_1E42056A4();
    sub_1E4205044();

    (*(v2 + 104))(v5, *MEMORY[0x1E69D3B98], v0);
    sub_1E32ADF08(&qword_1EE23B680, MEMORY[0x1E69D3BB8]);
    LOBYTE(v11) = sub_1E4205E84();
    v12 = *(v2 + 8);
    v12(v5, v0);
    v13 = (v12)(v8, v0);
    if ((v11 & 1) == 0)
    {
      (*(*v10 + 2432))(v13);
      sub_1E3DF7DE8();

      sub_1E3FE3B24();
    }
  }

  return result;
}

uint64_t sub_1E40BBBE4(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1E3FE48F4(v1);
  }

  return result;
}

uint64_t sub_1E40BBC5C(char a1)
{
  sub_1E3F94378(a1);
  v2 = OBJC_IVAR____TtC8VideosUI33SportsBaseballScoreboardViewModel_cancellables;
  swift_beginAccess();
  *(v1 + v2) = MEMORY[0x1E69E7CD0];
}

void sub_1E40BBD08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F8A8);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v8 - v5;
  *(v0 + OBJC_IVAR____TtC8VideosUI33SportsBaseballScoreboardViewModel_cancellables) = MEMORY[0x1E69E7CD0];
  v7 = OBJC_IVAR____TtC8VideosUI33SportsBaseballScoreboardViewModel__baseballClockViewModel;
  type metadata accessor for BaseballClockViewModel(0);
  v8[1] = sub_1E3DF8228();
  sub_1E4200634();
  (*(v3 + 32))(v0 + v7, v6, v1);
  sub_1E3F90D94();
}

uint64_t sub_1E40BBE3C()
{

  v1 = OBJC_IVAR____TtC8VideosUI33SportsBaseballScoreboardViewModel__baseballClockViewModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F8A8);
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1E40BBEB4()
{
  sub_1E3F92F20();
  v1 = v0;

  v2 = OBJC_IVAR____TtC8VideosUI33SportsBaseballScoreboardViewModel__baseballClockViewModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F8A8);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(v1 + v2);
  return v1;
}

uint64_t sub_1E40BBF2C()
{
  v0 = sub_1E40BBEB4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for SportsBaseballScoreboardViewModel()
{
  result = qword_1EE2918C8;
  if (!qword_1EE2918C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E40BBFD4()
{
  sub_1E40BC074();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E40BC074()
{
  if (!qword_1EE28A010)
  {
    type metadata accessor for BaseballClockViewModel(255);
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE28A010);
    }
  }
}

uint64_t sub_1E40BC114(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_featuredLockupCellLayout;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1E40BC1CC(void *a1)
{
  v4 = *&v1[OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_contentLogoView];
  *&v1[OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_contentLogoView] = a1;
  v2 = *&v1[OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_contentLogoView];
  v3 = a1;
  [v1 vui:v2 addSubview:v4 oldView:?];
  [v1 vui_setNeedsLayout];
}

void sub_1E40BC260(char a1, double a2, double a3)
{
  v4 = v3;
  v98.receiver = v4;
  v98.super_class = type metadata accessor for FeaturedLockupCell();
  objc_msgSendSuper2(&v98, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  if ((a1 & 1) == 0)
  {
    v8 = (v4 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_previousSize);
    v9 = MEMORY[0x1E69E7D40];
    if ((*(v4 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_previousSize + 16) & 1) == 0 && *v8 == a2 && v8[1] == a3)
    {
      goto LABEL_25;
    }

    type metadata accessor for LayoutGrid();
    v10 = sub_1E3A256EC();
    v11 = OUTLINED_FUNCTION_5_245();
    if (!v11)
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v12 = v11;
    v13 = [v11 overlayView];

    if (!v13)
    {
LABEL_25:
      if (![objc_opt_self() isPad] || (v30 = *(v4 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_previousSize), v31 = *(v4 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_previousSize + 8), v32 = *(v4 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_previousSize + 16), OUTLINED_FUNCTION_4_265(), (v32 & 1) == 0) && (v30 == v33 ? (v35 = v31 == v34) : (v35 = 0), v35))
      {
LABEL_47:
        OUTLINED_FUNCTION_4_265();
        *v8 = v60;
        *(v8 + 1) = v61;
        *(v8 + 16) = 0;
        v62 = *(v4 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_contentLogoView);
        if (!v62)
        {
          return;
        }

        v97 = a3;
        v63 = *((*v9 & *v4) + 0x80);
        v64 = v62;
        if (!v63() || (, , OUTLINED_FUNCTION_12_6(), (*(v65 + 152))(&v100), v67 = *(&v100 + 1), v66 = *&v100, v69 = *(&v101 + 1), v68 = *&v101, , (v102 & 1) != 0))
        {
          v66 = *MEMORY[0x1E69DDCE0];
          v67 = *(MEMORY[0x1E69DDCE0] + 8);
          v68 = *(MEMORY[0x1E69DDCE0] + 16);
          v69 = *(MEMORY[0x1E69DDCE0] + 24);
        }

        v90 = v69;
        [v64 vui:a2 - sub_1E3952BE0(v66 sizeThatFits:{v67, v68, v69), 0.0}];
        OUTLINED_FUNCTION_4_265();
        [v4 vuiIsRTL];
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        v93 = v71;
        v94 = v70;
        v91 = v73;
        v92 = v72;
        sub_1E3952BE0(v66, v67, v68, v69);
        OUTLINED_FUNCTION_4_265();
        [v4 vuiIsRTL];
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        v75 = v74;
        v77 = v76;
        v79 = v78;
        v81 = v80;
        type metadata accessor for LayoutGrid();
        v82 = sub_1E3A256EC();
        v83 = sub_1E3A24FDC(v82);
        v85 = v93;
        v84 = v94;
        if ((v83 & 1) == 0)
        {
          v84 = v75;
          v85 = v77;
        }

        v87 = v91;
        v86 = v92;
        if ((v83 & 1) == 0)
        {
          v86 = v79;
          v87 = v81;
        }

        [v64 setFrame_];
        if (sub_1E3A24FDC(v82))
        {
          v97 = *sub_1E3AE14D0();
        }

        v88 = OUTLINED_FUNCTION_5_245();
        if (v88)
        {
          v89 = v88;
          [v88 setPreferredGradientHeight_];

          return;
        }

        goto LABEL_61;
      }

      v36 = OUTLINED_FUNCTION_5_245();
      if (!v36)
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v37 = v36;
      v38 = [v36 imageView];

      v39 = *(v4 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_imageViewModel);

      if (!v39)
      {
LABEL_46:

        goto LABEL_47;
      }

      OUTLINED_FUNCTION_12_6();
      v41 = *(v40 + 392);

      v43 = 0.0;
      if (v41(v42))
      {
        type metadata accessor for ImageLayout();
        v44 = swift_dynamicCastClass();
        if (v44)
        {

          OUTLINED_FUNCTION_4_265();
          Width = CGRectGetWidth(v103);
          (*(*v44 + 208))(*&Width, 0);

          OUTLINED_FUNCTION_4_265();
          Height = CGRectGetHeight(v104);
          (*(*v44 + 312))(COERCE_CGFLOAT(*&Height), 0);

          v47 = v9;
          v48 = *(*v44 + 2288);

          v50 = v48(v49);
          v9 = v47;
          v43 = v50;
          v52 = v51;

          if (!v38)
          {
            goto LABEL_45;
          }

          goto LABEL_40;
        }
      }

      v52 = 0.0;
      if (!v38)
      {
LABEL_45:

        goto LABEL_46;
      }

LABEL_40:
      objc_opt_self();
      v53 = swift_dynamicCastObjCClass();
      if (v53)
      {
        v54 = v53;
        v96 = v38;
        v55 = sub_1E3C3E520(v43, v52);
        v56 = v55;
        if (!v55 || (v57 = v55, v58 = [v54 imageProxy], v59 = objc_msgSend(v57, sel_isEqual_, v58), v57, v58, (v59 & 1) == 0))
        {
          [v54 setImageProxy_];
          v57 = v56;
        }

        v9 = MEMORY[0x1E69E7D40];
      }

      goto LABEL_45;
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {
LABEL_24:

      goto LABEL_25;
    }

    if (!*(v4 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_overlayViewModel))
    {
LABEL_19:
      v24 = OUTLINED_FUNCTION_5_245();
      if (!v24)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v25 = v24;
      v26 = [v24 gradientView];

      if (v26)
      {
        type metadata accessor for GradientView();
        v27 = swift_dynamicCastClass();
        if (v27)
        {
          v28 = v27;
          v29 = (*((*v9 & *v4) + 0x80))();
          sub_1E40BDC24(v28, v29);

          goto LABEL_25;
        }
      }

      goto LABEL_24;
    }

    v15 = v14;
    v95 = OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_configuredSizeClass;
    v16 = *(v4 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_configuredSizeClass);
    LOBYTE(v100) = v10;
    if (v16 == 7)
    {
    }

    else
    {
      v99 = v16;
      sub_1E37F99D4();

      v9 = MEMORY[0x1E69E7D40];
      if (sub_1E4205E84())
      {
        goto LABEL_18;
      }
    }

    if (sub_1E373F6E0())
    {
      v17 = OUTLINED_FUNCTION_5_245();
      if (!v17)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v18 = v17;
      type metadata accessor for UIFactory();
      v102 = 0;
      v100 = 0u;
      v101 = 0u;
      sub_1E373C4DC();

      v20 = sub_1E393D92C(v19, v15, &v100, 0);

      sub_1E325F748(&v100, &qword_1ECF296C0);
      [v18 setOverlayView_];

      v21 = [v4 featuredView];
      if (!v21)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v22 = v21;
      v23 = [v21 overlayView];

      v9 = MEMORY[0x1E69E7D40];
      if (!v23)
      {
LABEL_66:
        __break(1u);
        return;
      }

      [v23 vui_setNeedsLayout];

      *(v4 + v95) = v10;
      goto LABEL_19;
    }

LABEL_18:

    goto LABEL_19;
  }
}

uint64_t sub_1E40BCBE0(__int16 *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E41FFCB4();
  v6 = *(v5 - 1);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v117[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v117[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v117[-v13];
  if (v15)
  {
    OUTLINED_FUNCTION_12_6();
    v17 = *(v16 + 488);
    v128 = v18;
    v127 = v18;
    v19 = v17();
    if (v19)
    {
      v20 = v19;
      if (*(v19 + 16))
      {
        OUTLINED_FUNCTION_12_6();
        v22 = (*(v21 + 392))();
        if (v22)
        {
          v23 = v22;
          type metadata accessor for FeaturedLockupCellLayout();
          v24 = swift_dynamicCastClass();
          if (v24)
          {
            v25 = v24;
            v26 = *((*MEMORY[0x1E69E7D40] & *v127) + 0x88);
            swift_retain_n();
            v26(v25);
            v27 = (*v25 + 1560);
            v28 = *v27;

            v124 = v27;
            v125 = v25;
            v123 = v28;
            v9 = (v28)(v29);
            v30 = sub_1E373E010(39, v20);
            v6 = &selRef_alwaysPrefetchAppConfiguration;
            v126 = v23;
            if (v30)
            {
              v31 = v30;
              type metadata accessor for ImageViewModel();
              v32 = swift_dynamicCastClass();
              if (v32)
              {
                v33 = v32;
                v119 = v125[13];
                v120 = v31;

                if (sub_1E373F630())
                {
                  v34 = 25204;
                }

                else if (sub_1E373F630())
                {
                  v34 = 25204;
                }

                else
                {
                  v34 = 29299;
                }

                v5 = v127;
                (*(*v33 + 1024))(v34, 0xE200000000000000, v9);
                v55 = *a3;
                v122 = *(a3 + 8);
                v121 = *(a3 + 16);
                v56 = *(a3 + 33);
                v139 = *(a3 + 17);
                v140 = v56;
                v141[0] = *(a3 + 49);
                v6 = *(a3 + 72);
                *(v141 + 15) = *(a3 + 64);
                v57 = *(a3 + 80);
                sub_1E38F1B60(a3, v137);
                v9 = &selRef_alwaysPrefetchAppConfiguration;
                v58 = [v5 featuredView];
                if (!v58)
                {
                  goto LABEL_78;
                }

                v59 = v58;
                v60 = [v5 featuredView];
                if (!v60)
                {
LABEL_79:
                  __break(1u);
LABEL_80:
                  __break(1u);
                  goto LABEL_81;
                }

                v61 = v60;
                v62 = [v60 imageView];

                v137[0] = v55;
                v137[1] = v122;
                LOBYTE(v137[2]) = v121;
                *(&v137[2] + 1) = v139;
                *(&v137[4] + 1) = v140;
                *(&v137[6] + 1) = v141[0];
                v137[8] = *(v141 + 15);
                v137[9] = v6;
                v138 = v57;
                if (v6 == 1)
                {
                  v63 = 0;
                  v64 = 0;
                  v65 = 0;
                  v136[1] = 0;
                  v136[2] = 0;
                }

                else
                {
                  v63 = swift_allocObject();
                  memcpy((v63 + 16), v137, 0x48uLL);
                  *(v63 + 88) = v6;
                  *(v63 + 96) = v57;
                  v65 = &off_1F5D868A0;
                  v64 = &unk_1F5D869A0;
                }

                v118 = v57;
                v136[0] = v63;
                v136[3] = v64;
                v136[4] = v65;
                type metadata accessor for UIFactory();
                sub_1E38F1B60(v137, v129);
                sub_1E373C4DC();
                v9 = sub_1E393D92C(v33, v62, v136, 0);

                sub_1E325F748(v136, &qword_1ECF296C0);
                [v59 setImageView_];

                v5 = v127;
                v66 = [v127 featuredView];
                if (!v66)
                {
                  goto LABEL_80;
                }

                v67 = v66;
                v68 = [v66 imageView];

                if (v68)
                {
                  [v68 setVuiUserInteractionEnabled_];
                }

                v69 = v121;
                v70 = (v6 == 1) | v121;
                v71 = v122;
                if (v6 == 1)
                {
                  v72 = 0;
                }

                else
                {
                  v72 = v122;
                }

                if (v6 == 1)
                {
                  v73 = 0;
                }

                else
                {
                  v73 = v55;
                }

                v74 = v5 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_previousSize;
                *v74 = v73;
                *(v74 + 1) = v72;
                v74[16] = v70 & 1;
                v9 = *(v5 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_imageViewModel);
                *(v5 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_imageViewModel) = v33;

                v129[0] = v55;
                v129[1] = v71;
                v130 = v69;
                v131 = v139;
                v132 = v140;
                *v133 = v141[0];
                *&v133[15] = *(v141 + 15);
                v134 = v6;
                v135 = v118;
                sub_1E325F748(v129, &unk_1ECF31AB0);

                v6 = &selRef_alwaysPrefetchAppConfiguration;
                goto LABEL_41;
              }
            }

            v5 = v127;
            v54 = [v127 featuredView];
            if (!v54)
            {
LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
              goto LABEL_79;
            }

            v9 = v54;
            [v54 setImageView_];

LABEL_41:
            v75 = sub_1E373E010(161, v20);
            if (v75)
            {
              v76 = v75;
              v5 = v5;
              v77 = [v5 featuredView];
              if (!v77)
              {
LABEL_73:
                __break(1u);
                goto LABEL_74;
              }

              v78 = v77;
              v9 = OUTLINED_FUNCTION_10_176();

              if (!v9)
              {
LABEL_74:
                __break(1u);
                goto LABEL_75;
              }
            }

            else
            {
              v79 = sub_1E373E010(159, v20);
              if (!v79)
              {
                v104 = OUTLINED_FUNCTION_10_176();
                if (!v104)
                {
LABEL_86:
                  __break(1u);
                  goto LABEL_87;
                }

                v105 = v104;
                [v104 setOverlayView_];

                goto LABEL_49;
              }

              v76 = v79;
              v5 = v5;
              v80 = [v5 featuredView];
              if (!v80)
              {
LABEL_82:
                __break(1u);
                goto LABEL_83;
              }

              v78 = v80;
              v9 = OUTLINED_FUNCTION_10_176();

              if (!v9)
              {
LABEL_83:
                __break(1u);
                goto LABEL_84;
              }
            }

            type metadata accessor for UIFactory();
            v81 = [v9 overlayView];

            sub_1E373C4DC();
            memset(v137, 0, 40);
            v82 = sub_1E393D92C(v76, v81, v137, 0);

            sub_1E325F748(v137, &qword_1ECF296C0);
            [v78 setOverlayView_];

            *(v5 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_overlayViewModel) = v76;

            v5 = v127;
LABEL_49:
            v9 = a1;
            v83 = sub_1E39C408C(40);
            if (v83)
            {
              v122 = v83;
              v84 = v5;
              v85 = [v84 featuredView];
              if (!v85)
              {
LABEL_75:
                __break(1u);
                goto LABEL_76;
              }

              v86 = v85;
              v9 = [v84 featuredView];

              if (!v9)
              {
LABEL_76:
                __break(1u);
                goto LABEL_77;
              }

              v87 = [v9 gradientView];

              if (v87)
              {
                type metadata accessor for GradientView();
                v88 = swift_dynamicCastClass();
                if (!v88)
                {
                }
              }

              else
              {
                v88 = 0;
              }

              v129[0] = v88;
              v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F8C0);
              sub_1E4148C68(sub_1E40BDBE4, v92, v137);
              v93 = v137[0];
              sub_1E40BDC24(v137[0], v125);

              [v86 setGradientView_];
              type metadata accessor for UIFactory();
              v94 = *&v84[OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_contentLogoView];
              memset(v137, 0, 40);
              sub_1E373C4DC();
              v95 = v94;
              v91 = sub_1E393D92C(v122, v94, v137, 0);

              sub_1E325F748(v137, &qword_1ECF296C0);
              v5 = v127;
            }

            else
            {

              v89 = OUTLINED_FUNCTION_10_176();
              if (!v89)
              {
LABEL_81:
                __break(1u);
                goto LABEL_82;
              }

              v90 = v89;
              [v89 setGradientView_];

              v91 = 0;
            }

            v96 = v91;
            v9 = v5;
            sub_1E40BC1CC(v96);
            v97 = v5;
            v98 = [v97 featuredView];
            if (v98)
            {
              v99 = v98;
              v100 = [v98 overlayView];

              v6 = v126;
              if (!v100)
              {

                goto LABEL_65;
              }

              v123();

              v101 = sub_1E3C5F26C(a1);
              if ((v102 & 1) != 0 || (v9 = v101, [v97 vuiOverrideUserInterfaceStyle] == v101))
              {

LABEL_65:

LABEL_66:

                return v128;
              }

              a1 = [v97 featuredView];

              if (a1)
              {
                v103 = [a1 overlayView];

                if (v103)
                {

                  [v103 vui:v9 setOverrideUserInterfaceStyle:?];

                  goto LABEL_66;
                }

                goto LABEL_85;
              }

LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

            __break(1u);
            goto LABEL_73;
          }
        }

        else
        {
        }

        sub_1E324FBDC();
        OUTLINED_FUNCTION_12_7();
        v43(v14);

        v44 = sub_1E41FFC94();
        v45 = sub_1E4206814();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v137[0] = v47;
          *v46 = 136315138;
          sub_1E384EE08(a1[49]);
          v50 = sub_1E3270FC8(v48, v49, v137);

          *(v46 + 4) = v50;
          OUTLINED_FUNCTION_9_192(&dword_1E323F000, v51, v52, "Featured Cell layout missing for view model type %s");
          __swift_destroy_boxed_opaque_existential_1(v47);
          OUTLINED_FUNCTION_55();
          MEMORY[0x1E69143B0](v46, -1, -1);
        }

        (v6[1])(v14, v5);
        return v128;
      }
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_12_7();
    v35(v12);

    v36 = sub_1E41FFC94();
    v37 = sub_1E4206814();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v137[0] = v39;
      *v38 = 136315138;
      sub_1E384EE08(a1[49]);
      v42 = sub_1E3270FC8(v40, v41, v137);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_1E323F000, v36, v37, "View model of type [%s] does not have any children, this is an error.", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1E69143B0](v39, -1, -1);
      OUTLINED_FUNCTION_55();
    }

    (v6[1])(v12, v5);
    return v128;
  }

LABEL_87:
  sub_1E324FBDC();
  OUTLINED_FUNCTION_12_7();
  v128 = v5;
  v106(v9);

  v107 = v9;
  v108 = sub_1E41FFC94();
  v109 = sub_1E4206814();

  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v137[0] = v111;
    *v110 = 136315138;
    sub_1E384EE08(a1[49]);
    v114 = sub_1E3270FC8(v112, v113, v137);

    *(v110 + 4) = v114;
    OUTLINED_FUNCTION_9_192(&dword_1E323F000, v115, v116, "FeaturedLockupCell: Failed to get correct cell for %s");
    __swift_destroy_boxed_opaque_existential_1(v111);
    OUTLINED_FUNCTION_55();
    MEMORY[0x1E69143B0](v110, -1, -1);
  }

  (v6[1])(v107, v128);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

id sub_1E40BDA20()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_featuredLockupCellLayout) = 0;
  v5 = OUTLINED_FUNCTION_0_339(&OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_previousSize);
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E40BDAA4(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_featuredLockupCellLayout] = 0;
  v5.receiver = v1;
  v5.super_class = OUTLINED_FUNCTION_0_339(&OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_previousSize);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E40BDB48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeaturedLockupCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E40BDBE4@<X0>(void *a1@<X8>)
{
  type metadata accessor for GradientView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t sub_1E40BDC24(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[16];
    v4 = (*(*a2 + 1560))();
    v5 = sub_1E3A24FDC(v4);
    (*(*a2 + 1752))(v5 & 1);
    v6 = sub_1E396030C(v3);
    v7 = (*(*a2 + 552))(v9, v6);
    MEMORY[0x1EEE9AC00](v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0);
    return sub_1E4148DE0(sub_1E40BDD84);
  }

  return result;
}

void sub_1E40BDD84(double *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = [*(v1 + 16) vuiLayer];
  if (v6)
  {
    v7 = v6;
    [v6 setCornerRadius_];
  }
}

uint64_t sub_1E40BDE28()
{
  v0 = sub_1E4207784();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E40BDE74(char a1)
{
  result = 0x676E69646E616CLL;
  switch(a1)
  {
    case 1:
      result = 0x73746C75736572;
      break;
    case 2:
      result = 0x6C75736552706F74;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0x73746E6968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E40BDF1C(unsigned __int8 a1, char a2)
{
  v2 = 0x676E69646E616CLL;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x676E69646E616CLL;
  switch(v4)
  {
    case 1:
      v5 = 0x73746C75736572;
      break;
    case 2:
      v5 = 0x6C75736552706F74;
      v3 = 0xEA00000000007374;
      break;
    case 3:
      v5 = 0xD000000000000018;
      v3 = 0x80000001E4290C50;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x73746E6968;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x73746C75736572;
      break;
    case 2:
      v2 = 0x6C75736552706F74;
      v6 = 0xEA00000000007374;
      break;
    case 3:
      v2 = 0xD000000000000018;
      v6 = 0x80000001E4290C50;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x73746E6968;
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
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E40BE098(char a1)
{
  sub_1E4207B44();
  sub_1E40BDE74(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E40BE104()
{
  sub_1E4206014();
}

uint64_t sub_1E40BE1DC(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E40BDE74(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E40BE23C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E40BDE28();
  *a1 = result;
  return result;
}

unint64_t sub_1E40BE26C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E40BDE74(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E40BE2C8()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_8_203();
  v2 = swift_allocObject();
  sub_1E40BE30C(v1, v0);
  return v2;
}

uint64_t sub_1E40BE30C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 16) = 0u;
  v6 = v2 + 16;
  *(v2 + 32) = 0u;
  v7 = (v2 + 32);
  *(v2 + 48) = 0;
  *(v2 + 56) = 0u;
  *(v2 + 104) = 0;
  v8 = (v2 + 104);
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  sub_1E327F454(a2, &v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0);
  type metadata accessor for SearchFragmentRequestContext();
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
LABEL_13:

    return v3;
  }

  v9 = sub_1E3C7E1CC(0);
  sub_1E3277E60(v9, v10, a1, &v120);

  if (!*(&v121 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(a2);

    sub_1E329505C(&v120);
    return v3;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(a2);

    goto LABEL_13;
  }

  v108 = v8;
  if (!v119[2])
  {
    __swift_destroy_boxed_opaque_existential_1(a2);

    goto LABEL_13;
  }

  v109 = a1;
  v106 = a2;
  v107 = v119;
  v13 = *(v119 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_query);
  v12 = *(v119 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_query + 8);
  OUTLINED_FUNCTION_3_0();
  *(v3 + 16) = v13;
  *(v3 + 24) = v12;

  *(&v121 + 1) = v11;
  *&v120 = v119;
  v105 = v119;

  v14 = sub_1E3A7C9B4(15, &v120);
  __swift_destroy_boxed_opaque_existential_1(&v120);
  if (v14)
  {
    v15 = *(*v119 + 232);

    v17 = v15(v16);
    (*(*v14 + 656))(v17);
  }

  OUTLINED_FUNCTION_3_0();
  *v7 = v14;

  if ([objc_opt_self() isSearchEnabled])
  {
    v18 = *(v3 + 32);
    *(&v121 + 1) = &unk_1F5D5DE28;
    v122 = &off_1F5D5CA58;
    LOBYTE(v120) = 2;
    type metadata accessor for TemplateViewModel();

    v19 = j__OUTLINED_FUNCTION_18();
    v20 = sub_1E39C3418(&v120, v19 & 1, v18);

    __swift_destroy_boxed_opaque_existential_1(&v120);
    OUTLINED_FUNCTION_3_0();
    *(v3 + 48) = v20 & 1;
    v21 = v109;
    sub_1E39BD118(0xD000000000000019, 0x80000001E4287480, v109);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10);
    sub_1E4148F70(sub_1E40BECC0, 0, v22, &type metadata for NaturalLanguageSearchData, &v120);

    v23 = v122;
    v103 = v120;
    v104 = v121;
    OUTLINED_FUNCTION_3_0();
    v24 = *(v3 + 56);
    v25 = *(v3 + 64);
    v26 = *(v3 + 72);
    v27 = *(v3 + 80);
    *(v3 + 56) = v103;
    *(v3 + 72) = v104;
    *(v3 + 88) = v23;
    sub_1E3DBFA40(v24, v25, v26, v27);
  }

  else
  {
    v21 = v109;
  }

  type metadata accessor for PagePerformanceReporter();
  v29 = sub_1E3C69AA0(v21);
  OUTLINED_FUNCTION_3_0();
  *(v6 + 24) = v29;

  if (!*(v21 + 16) || (v30 = v21, v31 = sub_1E327D33C(0x69726F6765746163, 0xEA00000000007365), (v32 & 1) == 0) || (sub_1E328438C(*(v21 + 56) + 32 * v31, &v120), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0), (swift_dynamicCast() & 1) == 0))
  {
    v82 = MEMORY[0x1E69E7CC0];
LABEL_48:

    OUTLINED_FUNCTION_3_0();
    *v108 = v82;

    v83 = sub_1E40BDE74(*(v119 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_requestType));
    v85 = v84;
    if (v83 == 0x6C75736552706F74 && v84 == 0xEA00000000007374)
    {

      v33 = v106;
    }

    else
    {
      v87 = v83;
      v88 = sub_1E42079A4();

      v33 = v106;
      if ((v88 & 1) == 0)
      {
        if (v87 == 0xD000000000000018 && 0x80000001E4290C50 == v85)
        {
        }

        else
        {
          v90 = sub_1E42079A4();

          if ((v90 & 1) == 0)
          {
            __swift_destroy_boxed_opaque_existential_1(v106);

            goto LABEL_69;
          }
        }
      }
    }

    v91 = type metadata accessor for CollectionViewModel();
    v30 = sub_1E3DD5014(13, v105, 0, v91);

    if (v30)
    {
      result = sub_1E32AE9B0(v30);
      if (result)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          goto LABEL_73;
        }

        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v92 = *(v30 + 32);

          goto LABEL_65;
        }

        __break(1u);
        return result;
      }

      __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v33);
    }

    goto LABEL_69;
  }

  v99 = 0;
  v33 = 0;
  v34 = v117;
  v101 = "eId";
  v102 = MEMORY[0x1E69E7CC0];
  v35 = *(v117 + 16);
  v100 = 0xD000000000000017;
  while (1)
  {
    if (v35 == v33)
    {

      v82 = v102;
      goto LABEL_48;
    }

    if (v33 >= *(v34 + 16))
    {
      break;
    }

    v36 = *(v34 + 8 * v33 + 32);
    if (!*(v36 + 16))
    {
      goto LABEL_30;
    }

    v30 = v36;
    v37 = sub_1E327D33C(25705, 0xE200000000000000);
    if (v38 & 1) != 0 && (v39 = OUTLINED_FUNCTION_7_238(v37), OUTLINED_FUNCTION_2_260(v39, v40, v41, v42, v43, v44, v45, v46, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, *(&v103 + 1), v104, *(&v104 + 1), v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117), (swift_dynamicCast()))
    {
      v30 = v118;
      if (!*(v36 + 16) || (*&v103 = v117, *&v104 = v118, v47 = sub_1E327D33C(0x656C746974, 0xE500000000000000), v30 = v118, (v48 & 1) == 0) || (v49 = OUTLINED_FUNCTION_7_238(v47), OUTLINED_FUNCTION_2_260(v49, v50, v51, v52, v53, v54, v55, v56, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v117, *(&v103 + 1), v118, *(&v104 + 1), v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117), (swift_dynamicCast() & 1) == 0))
      {

        goto LABEL_29;
      }

      v96 = v118;
      v97 = v117;
      if (*(v36 + 16) && (v57 = sub_1E327D33C(0x7363697274656DLL, 0xE700000000000000), (v58 & 1) != 0))
      {
        OUTLINED_FUNCTION_7_238(v57);
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
        OUTLINED_FUNCTION_2_260(v59, v60, v61, v59, v62, v63, v64, v65, v93, v94, v95, v118, v117, v98, v99, v100, v101, v102, v103, *(&v103 + 1), v104, *(&v104 + 1), v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
        v66 = swift_dynamicCast();
        v67 = v117;
        if (!v66)
        {
          v67 = 0;
        }

        v95 = v67;
      }

      else
      {
        v95 = 0;
      }

      if (*(v36 + 16) && (v68 = sub_1E327D33C(v100, v101 | 0x8000000000000000), (v69 & 1) != 0) && (v70 = OUTLINED_FUNCTION_7_238(v68), OUTLINED_FUNCTION_2_260(v70, v71, v72, v73, v74, v75, v76, v77, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, *(&v103 + 1), v104, *(&v104 + 1), v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117), (swift_dynamicCast() & 1) != 0))
      {
        v93 = v118;
        type metadata accessor for Accessibility();
        sub_1E40A7DC8();
        v98 = v78;
        v94 = v79;
      }

      else
      {

        v98 = 0;
        v94 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_1E40BEDF4(0, *(v102 + 2) + 1, 1, v102);
      }

      v30 = *(v102 + 2);
      v80 = *(v102 + 3);
      if (v30 >= v80 >> 1)
      {
        v102 = sub_1E40BEDF4((v80 > 1), v30 + 1, 1, v102);
      }

      ++v33;
      *(v102 + 2) = v30 + 1;
      v81 = &v102[56 * v30];
      *(v81 + 4) = v103;
      *(v81 + 5) = v104;
      *(v81 + 6) = v97;
      *(v81 + 7) = v96;
      *(v81 + 8) = v98;
      *(v81 + 9) = v94;
      *(v81 + 10) = v95;
    }

    else
    {
LABEL_29:

LABEL_30:
      ++v33;
    }
  }

  __break(1u);
LABEL_73:
  v92 = MEMORY[0x1E6911E60](0, v30);
LABEL_65:

  __swift_destroy_boxed_opaque_existential_1(v33);
  OUTLINED_FUNCTION_3_0();
  *(v6 + 80) = v92;
LABEL_69:

  return v3;
}

double sub_1E40BEC78@<D0>(uint64_t a1@<X8>)
{

  sub_1E3EA3AA4(v2, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

__n128 sub_1E40BECC0@<Q0>(__n128 *a1@<X8>)
{
  sub_1E40BEC78(&v5);
  v2 = v6;
  result = v7;
  v4 = v8;
  a1->n128_u64[0] = v5;
  a1->n128_u64[1] = v2;
  a1[1] = result;
  a1[2].n128_u64[0] = v4;
  return result;
}

double sub_1E40BED18()
{
  OUTLINED_FUNCTION_8_203();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0;
  return result;
}

uint64_t *sub_1E40BED50()
{

  sub_1E3DBFA40(v0[7], v0[8], v0[9], v0[10]);

  return v0;
}

uint64_t sub_1E40BEDA0()
{
  sub_1E40BED50();
  v0 = OUTLINED_FUNCTION_8_203();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E40BEDCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E40BE2C8();
  *a1 = result;
  return result;
}

char *sub_1E40BEDF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F8D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1E40BEF10(uint64_t a1)
{
  result = sub_1E40BEF38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E40BEF38()
{
  result = qword_1ECF3F8C8;
  if (!qword_1ECF3F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F8C8);
  }

  return result;
}

_BYTE *sub_1E40BEF8C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

double sub_1E40BF0B0(char a1, double a2, double a3, double a4, double a5, double a6)
{
  result = (a2 - a6) * 0.5;
  if ((a1 & 2) == 0)
  {
    return a4;
  }

  return result;
}

int8x16_t sub_1E40BF0E0(unint64_t a1, double a2, double a3, float64x2_t a4, float64_t a5)
{
  a4.f64[1] = a5;
  __asm { FMOV            V3.2D, #0.5 }

  result = vbslq_s8(vceqzq_s64(vandq_s8(vdupq_n_s64(a1), xmmword_1E42EAC70)), *v5, vmulq_f64(vsubq_f64(a4, *(v5 + 16)), _Q3));
  *v5 = result;
  return result;
}

unint64_t sub_1E40BF130()
{
  result = qword_1ECF3F8D8;
  if (!qword_1ECF3F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F8D8);
  }

  return result;
}

unint64_t sub_1E40BF188()
{
  result = qword_1ECF3F8E0;
  if (!qword_1ECF3F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F8E0);
  }

  return result;
}

unint64_t sub_1E40BF1E0()
{
  result = qword_1ECF3F8E8;
  if (!qword_1ECF3F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F8E8);
  }

  return result;
}

unint64_t sub_1E40BF238()
{
  result = qword_1ECF3F8F0;
  if (!qword_1ECF3F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F8F0);
  }

  return result;
}

unint64_t sub_1E40BF29C()
{
  result = qword_1ECF3F8F8;
  if (!qword_1ECF3F8F8)
  {
    type metadata accessor for SportsPeriodSelectionViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F8F8);
  }

  return result;
}

double sub_1E40BF314(uint64_t a1, char a2)
{
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  v9 = sub_1E4206804();
  v10 = sub_1E42026D4();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = *&v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1E3270FC8(0x74616F6C464743, 0xE700000000000000, &v14);
    _os_log_impl(&dword_1E323F000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E69143B0](v12, -1, -1);
    MEMORY[0x1E69143B0](v11, -1, -1);
  }

  sub_1E4201AA4();
  swift_getAtKeyPath();
  sub_1E38D5FEC(a1, 0);
  (*(v5 + 8))(v7, v4);
  return v14;
}

uint64_t sub_1E40BF4E0@<X0>(void *a1@<X8>)
{
  result = sub_1E4201954();
  *a1 = v3;
  return result;
}

uint64_t sub_1E40BF554@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  v2 = *(type metadata accessor for SportsPeriodSelectionView(0) + 24);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SportsPeriodSelectionViewModel(0);
  sub_1E40BF29C();
  OUTLINED_FUNCTION_27_0();
  result = sub_1E42010C4();
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

double sub_1E40BF5F4()
{
  v1 = v0;
  v2 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  type metadata accessor for SportsPeriodSelectionView(0);
  sub_1E3746E10(v8);
  v9 = sub_1E3B02A04();
  v10 = *(v4 + 8);
  v10(v8, v2);
  if (v9)
  {
    v11 = sub_1E40BF314(*(v1 + 16), *(v1 + 24));
    return v11 + v11;
  }

  else
  {
    sub_1E3746E10(v8);
    v13 = sub_1E3B028AC();
    v10(v8, v2);
    result = sub_1E40BF314(*(v1 + 16), *(v1 + 24));
    if (v13)
    {
      return result * 1.5;
    }
  }

  return result;
}

uint64_t sub_1E40BF730@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  sub_1E4201FA4();
  OUTLINED_FUNCTION_0_10();
  v71 = v3;
  v72 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v69 = v5 - v4;
  sub_1E4203654();
  OUTLINED_FUNCTION_0_10();
  v67 = v7;
  v68 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v66 = v9 - v8;
  v62 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v60 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v59 = v13 - v12;
  v14 = OUTLINED_FUNCTION_27_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v14);
  OUTLINED_FUNCTION_0_10();
  v56 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F908);
  OUTLINED_FUNCTION_0_10();
  v58 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F910) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v55 - v26;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F918);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v63 = &v55 - v29;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F920);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  v65 = &v55 - v31;
  v73 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F928);
  sub_1E40C0030();
  sub_1E4202AE4();
  *&v74 = sub_1E42036E4();
  v32 = sub_1E32752B0(&qword_1ECF3F938, &qword_1ECF3F900);
  v33 = MEMORY[0x1E69815C0];
  v34 = MEMORY[0x1E6981568];
  sub_1E4203324();

  v35 = v19;
  v36 = v27;
  (*(v56 + 8))(v35, v15);
  *&v74 = v15;
  *(&v74 + 1) = v33;
  v37 = v59;
  *&v75 = v32;
  *(&v75 + 1) = v34;
  v38 = v60;
  swift_getOpaqueTypeConformance2();
  v39 = v57;
  sub_1E4202E14();
  (*(v58 + 8))(v23, v39);
  KeyPath = swift_getKeyPath();
  v41 = &v36[*(v24 + 44)];
  *v41 = KeyPath;
  *(v41 + 1) = 0;
  v41[16] = 0;
  type metadata accessor for SportsPeriodSelectionView(0);
  sub_1E3746E10(v37);
  v42 = v62;
  v43 = (*(v38 + 88))(v37, v62);
  if (v43 != *MEMORY[0x1E697E6C8] && v43 != *MEMORY[0x1E697E6D0] && v43 != *MEMORY[0x1E697E6D8] && v43 != *MEMORY[0x1E697E6E0])
  {
    (*(v38 + 8))(v37, v42);
  }

  sub_1E40BF5F4();
  sub_1E40C0350();
  sub_1E4203DA4();
  sub_1E4200D94();
  v47 = v63;
  sub_1E3782004();
  v48 = &v47[*(v61 + 36)];
  v49 = v75;
  *v48 = v74;
  *(v48 + 1) = v49;
  *(v48 + 2) = v76;
  (*(v67 + 104))(v66, *MEMORY[0x1E69814C8], v68);
  v50 = sub_1E4203774();
  v51 = v65;
  sub_1E3782004();
  v52 = (v51 + *(v64 + 36));
  *v52 = v50;
  v52[1] = 0x4024000000000000;
  v52[2] = 0;
  v52[3] = 0;
  v53 = v69;
  sub_1E4201F94();
  LOBYTE(v47) = sub_1E4202704();
  sub_1E42026F4();
  sub_1E42026F4();
  if (sub_1E42026F4() != v47)
  {
    sub_1E42026F4();
  }

  sub_1E40C04E4();
  sub_1E4203244();
  (*(v71 + 8))(v53, v72);
  return sub_1E32E3694(v51);
}

void sub_1E40BFE4C()
{
  OUTLINED_FUNCTION_31_1();
  v0 = OUTLINED_FUNCTION_173();
  v1 = type metadata accessor for SportsPeriodSelectionView(v0);
  v2 = OUTLINED_FUNCTION_8_0(v1);
  MEMORY[0x1EEE9AC00](v2);
  sub_1E40C00E0();
  swift_getKeyPath();
  sub_1E40C09D0();
  swift_allocObject();
  sub_1E40C0A28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F958);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428);
  sub_1E32752B0(&qword_1ECF3F9A0, &qword_1ECF3F958);
  OUTLINED_FUNCTION_3_120();
  sub_1E32752B0(v3, &qword_1ECF2F428);
  sub_1E4203B34();
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E40C0030()
{
  result = qword_1ECF3F930;
  if (!qword_1ECF3F930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F928);
    sub_1E32752B0(&qword_1EE288638, &qword_1ECF2F428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F930);
  }

  return result;
}

uint64_t sub_1E40C00E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

void sub_1E40C0154()
{
  OUTLINED_FUNCTION_31_1();
  v0 = OUTLINED_FUNCTION_173();
  v1 = type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(v0);
  v2 = OUTLINED_FUNCTION_8_0(v1);
  MEMORY[0x1EEE9AC00](v2);
  v3 = type metadata accessor for SportsPeriodSelectionView(0);
  v4 = OUTLINED_FUNCTION_8_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_239();
  sub_1E40C09D0();
  OUTLINED_FUNCTION_9_193();
  sub_1E40C09D0();
  OUTLINED_FUNCTION_12_170();
  swift_allocObject();
  OUTLINED_FUNCTION_21_120();
  sub_1E40C0A28();
  sub_1E4203964();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40C02EC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E4201994();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_1E40C0350()
{
  OUTLINED_FUNCTION_31_1();
  type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(0);
  OUTLINED_FUNCTION_0_10();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v6 = sub_1E40C00E0();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v10 = *(v1 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_0_340();
      sub_1E40C09D0();
      sub_1E32822E0();
      v11 = *(sub_1E4207194() + 16);

      if (v11 <= 2)
      {
        v12 = sub_1E4206024() <= 12 ? 1 : 2;
      }

      else
      {
        v12 = 2;
      }

      sub_1E40C0A8C(v5, type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod);
      v13 = __OFADD__(v8, v12);
      v8 += v12;
      if (v13)
      {
        break;
      }

      v9 += v10;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    OUTLINED_FUNCTION_25_2();
  }
}

unint64_t sub_1E40C04E4()
{
  result = qword_1ECF3F940;
  if (!qword_1ECF3F940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F920);
    sub_1E40C0570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F940);
  }

  return result;
}

unint64_t sub_1E40C0570()
{
  result = qword_1ECF3F948;
  if (!qword_1ECF3F948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F918);
    sub_1E40C05FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F948);
  }

  return result;
}

unint64_t sub_1E40C05FC()
{
  result = qword_1ECF3F950;
  if (!qword_1ECF3F950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F910);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F908);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F900);
    sub_1E32752B0(&qword_1ECF3F938, &qword_1ECF3F900);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1ECF3AF50, &qword_1ECF3AF58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F950);
  }

  return result;
}

uint64_t sub_1E40C07F0()
{
  v1 = OUTLINED_FUNCTION_173();
  type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(v1);
  sub_1E32822E0();

  v2 = sub_1E4202C44();
  v4 = v3;
  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 blackColor];
  v9 = [v7 whiteColor];
  v10 = [v7 vui:v8 dynamicColorWithLightColor:v9 darkColor:?];

  sub_1E4203644();
  v11 = sub_1E4202B94();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_1E37434B8(v2, v4, v6 & 1);

  *v0 = v11;
  *(v0 + 8) = v13;
  *(v0 + 16) = v15 & 1;
  *(v0 + 24) = v17;
  return result;
}

uint64_t sub_1E40C0958@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E40C00E0();
  *a1 = result;
  return result;
}

uint64_t sub_1E40C09D0()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

uint64_t sub_1E40C0A28()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

uint64_t sub_1E40C0A8C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E40C0AE0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

void sub_1E40C0B50()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F968);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v42 = v34 - v3;
  v41 = type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(0);
  OUTLINED_FUNCTION_0_10();
  v34[1] = v4;
  MEMORY[0x1EEE9AC00](v5);
  v35 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAF8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v39 = v34 - v15;
  v16 = *(v1 + 16);
  if (v16)
  {
    v38 = *(v13 + 48);
    v17 = v1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v18 = MEMORY[0x1E69E7CC0];
    v36 = *(v14 + 72);
    v37 = v11;
    do
    {
      v19 = v39;
      sub_1E378249C();
      sub_1E378249C();
      v20 = *(v19 + v38);
      sub_1E385CD18();
      v22 = v21;
      v24 = v23;
      sub_1E325F7A8(v19, &qword_1ECF3EAF8);
      if (v24)
      {
        OUTLINED_FUNCTION_4_266();
        v25 = v18;
        v26 = v41;
        v27 = v35;
        sub_1E40C0A28();
        *&v27[*(v26 + 24)] = v20;
        v28 = &v27[*(v26 + 20)];
        *v28 = v22;
        *(v28 + 1) = v24;
        OUTLINED_FUNCTION_0_340();
        v18 = v25;
        sub_1E40C0A28();
        v29 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_10_177();
        v29 = 1;
      }

      v30 = v41;
      v31 = v42;
      __swift_storeEnumTagSinglePayload(v42, v29, 1, v41);
      if (__swift_getEnumTagSinglePayload(v31, 1, v30) == 1)
      {
        sub_1E325F7A8(v42, &qword_1ECF3F968);
      }

      else
      {
        OUTLINED_FUNCTION_0_340();
        sub_1E40C0A28();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1E40C13A4(0, *(v18 + 16) + 1, 1, v18);
        }

        v33 = *(v18 + 16);
        v32 = *(v18 + 24);
        if (v33 >= v32 >> 1)
        {
          v18 = sub_1E40C13A4(v32 > 1, v33 + 1, 1, v18);
        }

        *(v18 + 16) = v33 + 1;
        OUTLINED_FUNCTION_0_340();
        sub_1E40C0A28();
      }

      v17 += v36;
      --v16;
    }

    while (v16);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  sub_1E40C0F0C(v18);
  sub_1E40C0AE0();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40C0F0C(size_t a1)
{
  v2 = type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(0);
  v14 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v15 = &v14 - v6;
  v7 = *(a1 + 16);
  if (v7 < 2)
  {
    return;
  }

  v8 = 0;
  v9 = v7 >> 1;
  for (i = v7 - 1; ; --i)
  {
    if (v8 == i)
    {
      goto LABEL_10;
    }

    v11 = *(a1 + 16);
    if (v8 >= v11)
    {
      break;
    }

    v12 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v13 = *(v14 + 72);
    sub_1E40C09D0();
    if (i >= v11)
    {
      goto LABEL_13;
    }

    sub_1E40C09D0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1E40C1390(a1);
    }

    sub_1E40C1978(v4, a1 + v12 + v13 * v8);
    if (i >= *(a1 + 16))
    {
      goto LABEL_14;
    }

    sub_1E40C1978(v15, a1 + v12 + v13 * i);
LABEL_10:
    if (v9 == ++v8)
    {
      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_1E40C10E0()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  sub_1E32752B0(&qword_1ECF3F978, &qword_1ECF3F970);
  return sub_1E42006B4();
}

uint64_t sub_1E40C1170()
{
  v1 = OBJC_IVAR____TtC8VideosUI30SportsPeriodSelectionViewModel__periods;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F960);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E40C1224()
{
  v0 = swift_allocObject();
  sub_1E40C125C();
  return v0;
}

uint64_t sub_1E40C125C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F960);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v11 - v6;
  v8 = OBJC_IVAR____TtC8VideosUI30SportsPeriodSelectionViewModel__periods;
  v11[1] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F958);
  sub_1E4200634();
  (*(v4 + 32))(v1 + v8, v7, v2);
  v9 = OBJC_IVAR____TtC8VideosUI30SportsPeriodSelectionViewModel_jumpToPeriodSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F970);
  swift_allocObject();
  *(v1 + v9) = sub_1E4200544();
  return v1;
}

size_t sub_1E40C13A4(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_1E40C17A8(v8, v7);
  v10 = *(type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E40C18A4(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void sub_1E40C14D4()
{
  sub_1E40C1558();
  if (v0 <= 0x3F)
  {
    sub_1E40C15BC();
    if (v1 <= 0x3F)
    {
      sub_1E38D5D68();
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_14_181();
      }
    }
  }
}

void sub_1E40C1558()
{
  if (!qword_1ECF3F980)
  {
    type metadata accessor for SportsPeriodSelectionViewModel(255);
    sub_1E40BF29C();
    v0 = sub_1E42010F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF3F980);
    }
  }
}

void sub_1E40C15BC()
{
  if (!qword_1ECF3F988)
  {
    v0 = sub_1E4200B94();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF3F988);
    }
  }
}

void sub_1E40C1614()
{
  sub_1E40C16B0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E40C16B0()
{
  if (!qword_1ECF3F990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F958);
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF3F990);
    }
  }
}

uint64_t sub_1E40C173C()
{
  result = type metadata accessor for SportsPlayPeriod();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_14_181();
    return 0;
  }

  return result;
}

size_t sub_1E40C17A8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F998);
  v4 = *(type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E40C18A4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E40C1978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1E40C19DC()
{
  type metadata accessor for SportsPeriodSelectionView(0);

  sub_1E40C0154();
}

uint64_t objectdestroyTm_63()
{
  OUTLINED_FUNCTION_31_1();
  v1 = (type metadata accessor for SportsPeriodSelectionView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(*(type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(0) - 8) + 80);
  v5 = (v2 + v3 + v4) & ~v4;
  v6 = v0 + v2;

  sub_1E38D5FEC(*(v6 + 16), *(v6 + 24));
  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_10();
    (*(v8 + 8))(v6 + v7);
  }

  else
  {
  }

  v9 = v0 + v5;
  v10 = type metadata accessor for SportsPlayPeriod();
  v11 = v10[5];
  sub_1E4205784();
  OUTLINED_FUNCTION_10();
  (*(v12 + 8))(v0 + v5 + v11);
  v13 = v10[6];
  v14 = sub_1E4205B24();
  if (!__swift_getEnumTagSinglePayload(v0 + v5 + v13, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
  }

  v15 = v10[7];
  sub_1E4205BF4();
  OUTLINED_FUNCTION_10();
  (*(v16 + 8))(v9 + v15);

  OUTLINED_FUNCTION_25_2();

  return swift_deallocObject();
}

uint64_t sub_1E40C1CB0()
{
  v0 = type metadata accessor for SportsPeriodSelectionView(0);
  OUTLINED_FUNCTION_8_0(v0);
  type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(0);

  return sub_1E40C077C();
}

uint64_t sub_1E40C1D7C()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI18FixedSizeBadgeView_badgeSize;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1E40C1DC8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC8VideosUI18FixedSizeBadgeView_badgeSize;
  result = swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

id sub_1E40C1EC0(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC8VideosUI18FixedSizeBadgeView_badgeSize];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  *&v1[OBJC_IVAR____TtC8VideosUI18FixedSizeBadgeView_wrappedView] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for FixedSizeBadgeView();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v5 vui:v4 addSubview:0 oldView:{v7.receiver, v7.super_class}];

  return v5;
}

void sub_1E40C1F8C()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI18FixedSizeBadgeView_badgeSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E40C2018(char a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = type metadata accessor for FixedSizeBadgeView();
  objc_msgSendSuper2(&v11, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  v8 = v7;
  v9 = *&v3[OBJC_IVAR____TtC8VideosUI18FixedSizeBadgeView_wrappedView];
  [v3 bounds];
  [v9 setFrame_];
  return v8;
}

id sub_1E40C214C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FixedSizeBadgeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E40C2190(char a1)
{
  v1 = MEMORY[0x1E6979DB0];
  v2 = MEMORY[0x1E6979DA8];
  if (a1 != 3)
  {
    v2 = MEMORY[0x1E6979DA0];
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  return *v1;
}

uint64_t sub_1E40C21C4()
{
  v0 = sub_1E4207784();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E40C2210(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0x7261656E696CLL;
      break;
    case 2:
      result = 0x6C6169646172;
      break;
    case 3:
      result = 0x63696E6F63;
      break;
    case 4:
      result = 0x6163697470696C65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E40C22C0(char a1)
{
  sub_1E4207B44();
  sub_1E40C2210(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E40C232C()
{
  sub_1E4206014();
}

uint64_t sub_1E40C2404(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E40C2210(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E40C2464@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E40C21C4();
  *a1 = result;
  return result;
}

uint64_t sub_1E40C2494@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E40C2210(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E40C24D0()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 48) = v0;
  type metadata accessor for CGPoint(0);
  *(v1 + 56) = v3;
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_5_246();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E40C2554()
{
  type metadata accessor for CGPoint(0);
  sub_1E3C2C6A0();
  return v1;
}

uint64_t sub_1E40C25F0()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 48) = v0;
  type metadata accessor for CGPoint(0);
  *(v1 + 56) = v3;
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_5_246();
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E40C266C(_OWORD **a1)
{
  v2 = *(*a1 + 16);
  v1 = *a1;
  *(v1 + 24) = **a1;
  v1[40] = v2;
  sub_1E3C2CA00();

  free(v1);
}

uint64_t sub_1E40C2728(void *a1)
{
  *a1 = v1;
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t (*sub_1E40C27EC(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3B0);
  sub_1E3C2C6A0();
  return sub_1E40C2850;
}

uint64_t sub_1E40C2880(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  sub_1E3C2C6A0();
  return v2;
}

uint64_t sub_1E40C28D8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_1E3C2CA00();
}

uint64_t (*sub_1E40C2934(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC90);
  sub_1E3C2C6A0();
  return sub_1E40C2998;
}

uint64_t sub_1E40C29B0(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

uint64_t sub_1E40C2A64()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_18_4(v1) + 32) = v0;
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_3_138();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E40C2B1C()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_18_4(v1) + 32) = v0;
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_3_138();
  return OUTLINED_FUNCTION_40_1();
}

void *sub_1E40C2B90()
{
  v1 = OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_blurEffect;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E40C2BCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_blurEffect;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E40C2C64()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_blurMaskName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E40C2CBC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_blurMaskName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void *sub_1E40C2D6C()
{
  v1 = OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_compositingFilter;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E40C2DA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_compositingFilter;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E40C2E40()
{
  OUTLINED_FUNCTION_1_300();
  swift_allocObject();
  return sub_1E40C2EAC();
}

uint64_t sub_1E40C2EAC()
{
  OUTLINED_FUNCTION_1_300();
  sub_1E41FE614();
  *(v1 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_blurEffect) = 0;
  v8 = (v1 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_blurMaskName);
  *v8 = 0;
  v8[1] = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_compositingFilter) = 0;
  v9 = sub_1E3C2F9A0();
  v10 = *(*v9 + 1728);

  v10(v7, v6, 0);
  (*(*v9 + 1752))(v5, v4, 0);
  (*(*v9 + 1776))(v3);
  (*(*v9 + 1800))(v2);
  (*(*v9 + 1824))(v0);

  return v9;
}

uint64_t sub_1E40C30BC()
{
  sub_1E41FE614();
  *(v0 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_blurEffect) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_blurMaskName);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_compositingFilter) = 0;

  return sub_1E3C2F9A0();
}

void sub_1E40C3118()
{
  v1 = OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);

  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_compositingFilter);
}

uint64_t sub_1E40C31AC()
{
  v0 = sub_1E3C36C6C();
  v1 = OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1E40C3240()
{
  v0 = sub_1E40C31AC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1E40C3298()
{
  result = qword_1ECF3F9B8;
  if (!qword_1ECF3F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F9B8);
  }

  return result;
}

unint64_t sub_1E40C32F0()
{
  result = qword_1EE28A440;
  if (!qword_1EE28A440)
  {
    sub_1E41FE624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A440);
  }

  return result;
}

uint64_t sub_1E40C3348@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 16);

  return v7(a1, v3 + v4, v5);
}

uint64_t type metadata accessor for ViewGradientLayout()
{
  result = qword_1EE29FC00;
  if (!qword_1EE29FC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E40C3410()
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

_BYTE *storeEnumTagSinglePayload for ViewGradientLayout.GradientType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

id sub_1E40C3590()
{
  OUTLINED_FUNCTION_0_8();
  v7 = type metadata accessor for ColorBackgroundDecorationView();
  v1 = OUTLINED_FUNCTION_2_0();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, v7);
  if (*sub_1E41C83E4() == 1)
  {
    v5 = [objc_opt_self() randomColor];
    [v4 setVuiBackgroundColor_];
  }

  else
  {
    [v4 setVuiBackgroundColor_];
  }

  return v4;
}

char *sub_1E40C36F8()
{
  OUTLINED_FUNCTION_0_8();
  v1 = OBJC_IVAR____TtC8VideosUI38ColorBackgroundSeparatorDecorationView_lineView;
  *(v0 + v1) = [objc_allocWithZone(VUIBaseView) init];
  v2 = OBJC_IVAR____TtC8VideosUI38ColorBackgroundSeparatorDecorationView_lineHeight;
  *(v0 + v2) = *sub_1E418BA90();
  v13 = type metadata accessor for ColorBackgroundSeparatorDecorationView();
  v3 = OUTLINED_FUNCTION_2_0();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, v13);
  v7 = OBJC_IVAR____TtC8VideosUI38ColorBackgroundSeparatorDecorationView_lineView;
  v8 = *&v6[OBJC_IVAR____TtC8VideosUI38ColorBackgroundSeparatorDecorationView_lineView];
  [v8 setVuiBackgroundColor_];

  v9 = *&v6[v7];
  v10 = v6;
  [v10 vui:v9 addSubview:0 oldView:?];
  if (*sub_1E41C83E4() == 1)
  {
    v11 = [objc_opt_self() randomColor];
    [v10 setVuiBackgroundColor_];
  }

  else
  {
    [v10 setVuiBackgroundColor_];
    v11 = v10;
  }

  return v10;
}

void sub_1E40C3890()
{
  v1 = OBJC_IVAR____TtC8VideosUI38ColorBackgroundSeparatorDecorationView_lineView;
  *(v0 + v1) = [objc_allocWithZone(VUIBaseView) init];
  v2 = OBJC_IVAR____TtC8VideosUI38ColorBackgroundSeparatorDecorationView_lineHeight;
  *(v0 + v2) = *sub_1E418BA90();
  OUTLINED_FUNCTION_0_341();
  __break(1u);
}

double sub_1E40C3920(char a1, double a2, double a3)
{
  v18.receiver = v3;
  v18.super_class = type metadata accessor for ColorBackgroundSeparatorDecorationView();
  objc_msgSendSuper2(&v18, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  v8 = v7;
  type metadata accessor for LayoutGrid();
  [v3 bounds];
  Width = CGRectGetWidth(v19);
  sub_1E3A258E4(Width);
  v11 = v10;
  v13 = v12;
  [v3 bounds];
  Height = CGRectGetHeight(v20);
  v15 = *&v3[OBJC_IVAR____TtC8VideosUI38ColorBackgroundSeparatorDecorationView_lineHeight];
  [v3 bounds];
  v16 = CGRectGetWidth(v21);
  if ((a1 & 1) == 0)
  {
    [*&v3[OBJC_IVAR____TtC8VideosUI38ColorBackgroundSeparatorDecorationView_lineView] setFrame_];
  }

  return v8;
}

id sub_1E40C3AB8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 sub_1E40C3B00@<Q0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for RoutingTransaction();
  OUTLINED_FUNCTION_58_41();
  v3 = swift_allocObject();
  sub_1E40C42B0();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;
  *(v3 + 40) = v7;
  *(v3 + 48) = v8;
  *(v3 + 56) = v9;
  v10 = *(v1 + 64);
  v11 = *(v3 + 64);
  *(v3 + 64) = v10;
  sub_1E40D6474(v4, v5, v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_42_72();
  sub_1E40D60A0(v12, v13, v14, v15, v16, v17, v11);
  if (sub_1E40C40A4())
  {
    sub_1E40C40D8();
  }

  *(v3 + 65) = *(v1 + 65);
  *(v3 + 66) = *(v1 + 66);
  v18 = *(v1 + 72);
  v19 = *(v1 + 80);
  *(v3 + 72) = v18;
  *(v3 + 80) = v19;
  sub_1E34AF604(v18);
  v20 = OUTLINED_FUNCTION_32_0();
  sub_1E34AF594(v20);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  *(v3 + 96) = *(v1 + 96);
  v22 = *(v1 + 136);
  *(v3 + 104) = *(v1 + 104);
  result = *(v1 + 120);
  *(v3 + 120) = result;
  *(v3 + 136) = v22;
  a1[3] = v2;
  *a1 = v3;
  return result;
}

uint64_t sub_1E40C3CA0()
{
  v5 = 0;
  v6 = 0xE000000000000000;
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v7[2] = *(v0 + 48);
  v8 = *(v0 + 64);
  sub_1E40C3D78();
  sub_1E40D6B84(v7, v4);
  v2 = OUTLINED_FUNCTION_34();
  MEMORY[0x1E69109E0](v2);

  sub_1E40D6BBC(v7);
  MEMORY[0x1E69109E0](10272, 0xE200000000000000);
  v4[0] = *(v0 + 65);
  sub_1E4207614();
  MEMORY[0x1E69109E0](41, 0xE100000000000000);
  return v5;
}

unint64_t sub_1E40C3D78()
{
  result = 0x7765695668737570;
  switch(*(v0 + 48))
  {
    case 0:
      result = 0x49556E6F6ELL;
      break;
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0x56746E6573657270;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x50746E6573657270;
      break;
    case 6:
      result = 0x41746E6573657270;
      break;
    default:
      result = 1701736302;
      break;
  }

  return result;
}

uint64_t sub_1E40C3E7C(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 8);
  switch(*(a1 + 48))
  {
    case 1:
      if (a2[3].i8[0] != 1)
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    case 2:
      if (a2[3].i8[0] != 2)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    case 3:
      if (a2[3].i8[0] != 3)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    case 4:
      if (a2[3].i8[0] != 4)
      {
        goto LABEL_18;
      }

LABEL_13:
      v3 = a2->i64[1];
      type metadata accessor for Route(0);
      v4 = OUTLINED_FUNCTION_32_0();
      result = sub_1E34AF5A4(v4, v5) & (v2 == v3);
      break;
    case 5:
      if (a2[3].i8[0] == 5)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    case 6:
      if (a2[3].i8[0] != 6)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    case 7:
      goto LABEL_18;
    case 8:
      if (a2[3].i8[0] != 8)
      {
        goto LABEL_18;
      }

      v9 = vorrq_s8(a2[1], a2[2]);
      if (*&vorr_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL)) | a2->i64[1] | a2->i64[0])
      {
        goto LABEL_18;
      }

LABEL_19:
      result = 1;
      break;
    default:
      if (a2[3].i8[0])
      {
LABEL_18:
        result = 0;
      }

      else
      {
LABEL_15:
        type metadata accessor for Route(0);
        v7 = OUTLINED_FUNCTION_32_0();
        result = sub_1E34AF5A4(v7, v8);
      }

      break;
  }

  return result;
}

uint64_t sub_1E40C3FB8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_27_0();
  sub_1E4206254();
  OUTLINED_FUNCTION_27_0();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

unint64_t sub_1E40C4068(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1E40C4078@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E40C4068(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1E40C40A4()
{
  v1 = *(v0 + 64);
  if (v1 > 6 || v1 == 1)
  {
    return 0;
  }

  else
  {
  }
}

void sub_1E40C40D8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = (v0 + 16);
  v3 = (v0 + 32);
  v4 = *(v0 + 32);
  v5 = *(v0 + 56);
  switch(*(v0 + 64))
  {
    case 0:
      *v2 = v1;
      *(v0 + 24) = 0u;
      *(v0 + 40) = 0u;
      *(v0 + 49) = 0u;

      break;
    case 2:
      *(v0 + 16) = v1;
      *v3 = 0u;
      *(v0 + 48) = 0u;
      *(v0 + 64) = 2;

      goto LABEL_9;
    case 3:
      *(v0 + 16) = v1;
      *v3 = 0u;
      *(v0 + 48) = 0u;
      *(v0 + 64) = 3;
      goto LABEL_9;
    case 4:
      *(v0 + 16) = v1;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 40) = 0;
      *(v0 + 64) = 4;

      v6 = v4;
      break;
    case 5:
      *(v0 + 16) = v1;
      *(v0 + 64) = 5;
      v7 = v5;
LABEL_9:

      break;
    case 6:
      *(v0 + 16) = v1;
      *(v0 + 64) = 6;

      break;
    default:
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0u;
      *v2 = 0u;
      *(v0 + 64) = 8;
      break;
  }

  OUTLINED_FUNCTION_96_2();
  OUTLINED_FUNCTION_25_2();

  sub_1E40D60A0(v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1E40C4260()
{
  sub_1E40D60A0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_1E34AF594(*(v0 + 72));
  MEMORY[0x1E69144A0](v0 + 88);
  OUTLINED_FUNCTION_58_41();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1E40C42B0()
{
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 64) = 8;
  *(v0 + 66) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 96) = 0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 1;
  return v0;
}

uint64_t sub_1E40C434C()
{
  type metadata accessor for Router();
  result = sub_1E40C43F8();
  if (result)
  {
    OUTLINED_FUNCTION_30();
    (*(v2 + 392))();
    OUTLINED_FUNCTION_12_1();

    return v0;
  }

  return result;
}

uint64_t type metadata accessor for Router()
{
  result = qword_1EE28FE70;
  if (!qword_1EE28FE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E40C43F8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v0 = qword_1EE2AA808;
  if (qword_1EE2AA808)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();

    sub_1E37D027C(v1);
    OUTLINED_FUNCTION_12_1();
  }

  return v0;
}

uint64_t sub_1E40C4470()
{
  v1 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v11 = v2;
  v3 = sub_1E32AE9B0(v2);

  while (1)
  {
    v5 = v3;
    if (!v3)
    {
LABEL_11:
      MEMORY[0x1EEE9AC00](result);
      v10[2] = &v11;
      sub_1E40D54D8(sub_1E40D5A54, v10, v3, v9);
      OUTLINED_FUNCTION_50();

      return v0;
    }

    --v3;
    if (__OFSUB__(v5, 1))
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = OUTLINED_FUNCTION_13_8();
      v0 = MEMORY[0x1E6911E60](v8);
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        goto LABEL_13;
      }

      if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v0 = *(v2 + 32 + 8 * v3);
    }

    OUTLINED_FUNCTION_8();
    v7 = (*(v6 + 416))();

    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1E40C45D8()
{
  type metadata accessor for Router();
  result = sub_1E4205CB4();
  qword_1EE28CC88 = result;
  return result;
}

uint64_t sub_1E40C461C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E40C468C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1E40C4728()
{
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_156();
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_1E4200684();
  OUTLINED_FUNCTION_200();
}

uint64_t sub_1E40C4794()
{
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E40C4800()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB20);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v1 = OUTLINED_FUNCTION_11_6();
  v2(v1);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0);
  sub_1E4200654();
  swift_endAccess();
  v3 = OUTLINED_FUNCTION_27_0();
  return v4(v3);
}

uint64_t sub_1E40C4918()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  sub_1E32752B0(&unk_1EE28A130, &unk_1ECF326C0);
  return sub_1E42006B4();
}

void sub_1E40C49A8()
{
  OUTLINED_FUNCTION_156();
  if (_MergedGlobals_277 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(qword_1EE28CC88 + 16) && (v1 = OUTLINED_FUNCTION_13_8(), sub_1E327D33C(v1, v2), (v3 & 1) != 0))
  {
    swift_endAccess();
    OUTLINED_FUNCTION_2_75();

    v6 = v4;
  }

  else
  {
    swift_endAccess();
    v7 = type metadata accessor for Router();
    v8 = objc_allocWithZone(v7);

    *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v8) = 0;
    *&v8[OBJC_IVAR____TtC8VideosUI6Router_presentingRoute] = 0;
    *&v8[OBJC_IVAR____TtC8VideosUI6Router_managedRoutes] = MEMORY[0x1E69E7CC0];
    *&v8[OBJC_IVAR____TtC8VideosUI6Router_multipleDocumentRoute] = 0;
    v9 = OBJC_IVAR____TtC8VideosUI6Router_tabSwitchSubject;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
    swift_allocObject();
    *&v8[v9] = sub_1E4200544();
    v10 = &v8[OBJC_IVAR____TtC8VideosUI6Router____lazy_storage___logPrefix];
    *v10 = 0;
    *(v10 + 1) = 0;
    OUTLINED_FUNCTION_11_3();
    sub_1E4200634();
    swift_endAccess();
    v22.receiver = v8;
    v22.super_class = v7;
    v11 = objc_msgSendSuper2(&v22, sel_init);
    if (TVAppFeature.isEnabled.getter(12))
    {
      v12 = sub_1E4206AC4();
    }

    else
    {
      v12 = *MEMORY[0x1E69DF878];
    }

    v13 = v12;
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 defaultCenter];
    v17 = v11;
    [v16 addObserver:v17 selector:sel_handleNetworkChanges name:v15 object:0];

    OUTLINED_FUNCTION_11_3();
    v18 = v17;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = qword_1EE28CC88;
    v19 = OUTLINED_FUNCTION_39_3();
    sub_1E40D5530(v19, v20, v0);
    qword_1EE28CC88 = v21;
    swift_endAccess();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (!qword_1EE2AA808)
    {
      OUTLINED_FUNCTION_13_8();
      sub_1E40C4C78();
    }

    OUTLINED_FUNCTION_2_75();
  }
}

void sub_1E40C4C78()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = HIBYTE(v0) & 0xF;
  if ((v0 & 0x2000000000000000) == 0)
  {
    v8 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v9(v7);

    v10 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_34_9())
    {
      OUTLINED_FUNCTION_6_21();
      v11 = OUTLINED_FUNCTION_10_11();
      OUTLINED_FUNCTION_153_7(v11);
      *v2 = 136315138;
      v12 = OUTLINED_FUNCTION_13_8();
      *(v2 + 4) = sub_1E3270FC8(v12, v13, v14);
      OUTLINED_FUNCTION_60_3();
      _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v3);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_55();
    }

    v20 = OUTLINED_FUNCTION_63_0();
    v21(v20);
    OUTLINED_FUNCTION_3_0();
    if (!qword_1EE2AA808)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_88_0();
    v23 = *(v22 + 176);
    v25 = v24;
    v26 = v23();
    v28 = v27;

    if (v26 == v1 && v28 == v0)
    {

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_13_8();
    v30 = sub_1E42079A4();

    if ((v30 & 1) == 0)
    {
LABEL_12:
      type metadata accessor for Router();
      v31 = OUTLINED_FUNCTION_13_8();
      v32 = sub_1E40C49A8(v31);
      v33 = qword_1EE2AA808;
      qword_1EE2AA808 = v32;

      if (qword_1EE2AA808)
      {

        v34 = OUTLINED_FUNCTION_27_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v34);
        sub_1E32752B0(&qword_1EE28A140, &unk_1ECF326C0);
        sub_1E4200624();
      }
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40C4F10()
{
  sub_1E40C49A8();
  v2 = v1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  sub_1E37D027C(v3);
  OUTLINED_FUNCTION_11_5();

  return v0;
}

id sub_1E40C4F7C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for Router();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E40C50E8()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI6Router____lazy_storage___logPrefix);
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI6Router____lazy_storage___logPrefix + 8))
  {
    OUTLINED_FUNCTION_21();
    v3 = (*(v2 + 176))();
    MEMORY[0x1E69109E0](v3);

    MEMORY[0x1E69109E0](540686941, 0xE400000000000000);
    *v1 = 0x3A3A726574756F52;
    v1[1] = 0xE90000000000005BLL;
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E40C51D0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI6Router_multipleDocumentRoute) = a1;
}

uint64_t sub_1E40C5214(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v8[1] = *(v1 + v3);
  v6 = a1;
  v7 = 0;
  v4 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  sub_1E32752B0(&qword_1ECF3F9D8, &qword_1ECF3F9D0);
  sub_1E38D2054(&v6, v8);
  return v8[0];
}

uint64_t sub_1E40C52CC(uint64_t a1)
{
  if (a1 < 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = v4 >> 62 ? OUTLINED_FUNCTION_119_1() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E32AE9B0(*(v1 + v3));
  if (v6 < v2)
  {
    __break(1u);
LABEL_21:
    sub_1E4207704();
    v2 = v19;
    v7 = v20;

    if ((v7 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v7 = v6;
  v8 = *(v1 + v3);
  v9 = OUTLINED_FUNCTION_32_0();
  sub_1E37EFABC(v9, v10);
  v11 = OUTLINED_FUNCTION_78_0();
  sub_1E37EFABC(v11, v12);
  if ((v8 & 0xC000000000000001) == 0 || v7 == v2)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    if (v7 <= v2)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    type metadata accessor for Route(0);
    OUTLINED_FUNCTION_11_5();
    swift_bridgeObjectRetain_n();
    v14 = v2;
    do
    {
      v15 = v14 + 1;
      sub_1E42074F4();
      v14 = v15;
    }

    while (v7 != v15);
  }

  if (v8 >> 62)
  {
    goto LABEL_21;
  }

  v7 = (2 * v7) | 1;
  if ((v7 & 1) == 0)
  {
LABEL_18:
    v16 = OUTLINED_FUNCTION_57();
    sub_1E40D5A74(v16, v17, v2, v7);
    v2 = v18;
LABEL_28:
    swift_unknownObjectRelease();
    return v2;
  }

LABEL_22:
  sub_1E42079E4();
  OUTLINED_FUNCTION_122();
  swift_unknownObjectRetain_n();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v21 + 16);

  if (__OFSUB__(v7 >> 1, v2))
  {
    goto LABEL_31;
  }

  if (v22 != (v7 >> 1) - v2)
  {
LABEL_32:
    swift_unknownObjectRelease_n();
    goto LABEL_18;
  }

  swift_dynamicCastClass();
  OUTLINED_FUNCTION_12_1();
  swift_unknownObjectRelease_n();
  if (!v2)
  {
    v2 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  return v2;
}

void sub_1E40C54DC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E32AE9B0(v1);
  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  while (1)
  {
    if (v3 == v4)
    {
      if (v3)
      {
        if (v3 < 1)
        {
          goto LABEL_19;
        }

        v8 = 0;
        v9 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x190);
        do
        {
          if (v5)
          {
            v10 = OUTLINED_FUNCTION_39_3();
            v11 = MEMORY[0x1E6911E60](v10);
          }

          else
          {
            v11 = *(v2 + 8 * v8 + 32);
          }

          ++v8;
          v9(v11);
          sub_1E40C5640(v11);
          sub_1E40C5740(v11);
        }

        while (v3 != v8);
      }

      OUTLINED_FUNCTION_25_2();
      return;
    }

    if (v5)
    {
      v7 = OUTLINED_FUNCTION_39_3();
      MEMORY[0x1E6911E60](v7);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_60_38();
    }

    if (__OFADD__(v4, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_8();
    (*(v6 + 424))(1);

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_1E40C5640(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_45_38(v5);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_4_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_101_15(v6);
  swift_weakInit();
  OUTLINED_FUNCTION_2_4();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  v8 = *(*a1 + 304);

  v8(sub_1E40D6FC4, v7);
}

uint64_t sub_1E40C5740(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_45_38(v5);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_4_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_101_15(v6);
  swift_weakInit();
  OUTLINED_FUNCTION_2_4();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  v8 = *(*a1 + 328);

  v8(sub_1E40D6FBC, v7);
}

void sub_1E40C5840()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  if (v4 < 0)
  {
    goto LABEL_30;
  }

  v9 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v10 = *&v0[v9];
  if (v10 >> 62)
  {
    goto LABEL_33;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  if (v11 <= v4)
  {
    goto LABEL_30;
  }

  v12 = sub_1E32AE9B0(*&v0[v9]);
  if (v12 < v4)
  {
    __break(1u);
  }

  else
  {
    if (v12 != v4)
    {
      v46 = v12;
      if (v12 > v4)
      {
        v47 = v4;
        while (1)
        {
          v48 = *&v0[v9];
          if ((v48 & 0xC000000000000001) != 0)
          {

            MEMORY[0x1E6911E60](v47, v48);
            OUTLINED_FUNCTION_50();
          }

          else
          {
            if ((v47 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_32:
              __break(1u);
LABEL_33:
              v11 = OUTLINED_FUNCTION_119_1();
              goto LABEL_4;
            }

            if (v47 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            OUTLINED_FUNCTION_60_38();
          }

          ++v47;
          OUTLINED_FUNCTION_8();
          v49 = OUTLINED_FUNCTION_165();
          v50(v49);
          OUTLINED_FUNCTION_36();
          v51 = OUTLINED_FUNCTION_165();
          v52(v51);
          OUTLINED_FUNCTION_36();
          (*(v53 + 424))(0);

          if (v46 == v47)
          {
            goto LABEL_7;
          }
        }
      }

      goto LABEL_37;
    }

LABEL_7:
    v13 = sub_1E32AE9B0(*&v0[v9]);
    if (v13 >= v4)
    {
      v14 = v13;
      v59 = v1;
      OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_54_53();
      v15 = &v0[v9];
      sub_1E40D5768(v4, v14, v16, v17, v18, v19, v20, v21, v56);
      swift_endAccess();
      v57 = v2;
      v22 = *&v2[v9];
      v23 = sub_1E32AE9B0(v22);
      v24 = MEMORY[0x1E69E7CC0];
      v58 = v7;
      if (!v23)
      {
LABEL_18:
        sub_1E324FBDC();
        OUTLINED_FUNCTION_146_2();
        v33(v59);
        v34 = v57;

        v35 = sub_1E41FFC94();
        v36 = sub_1E4206814();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = OUTLINED_FUNCTION_100();
          v60 = OUTLINED_FUNCTION_164_1();
          *v37 = 136446722;
          v38 = sub_1E40C50E8();
          OUTLINED_FUNCTION_179_4(v38, v39);
          OUTLINED_FUNCTION_50();

          *(v37 + 4) = v34;
          *(v37 + 12) = 2080;
          v40 = sub_1E40D5B50();
          OUTLINED_FUNCTION_179_4(v40, v41);
          OUTLINED_FUNCTION_50();

          *(v37 + 14) = v34;
          *(v37 + 22) = 2080;
          v42 = MEMORY[0x1E6910C30](v24, MEMORY[0x1E69E6158]);

          v43 = OUTLINED_FUNCTION_32_0();
          sub_1E3270FC8(v43, v44, v45);
          OUTLINED_FUNCTION_12_1();

          *(v37 + 24) = v42;
          _os_log_impl(&dword_1E323F000, v35, v36, "%{public}s after remove in range %s, new managed routes:[%s]", v37, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_43_71();
          OUTLINED_FUNCTION_79();

          (*(v58 + 8))(v59, v5);
        }

        else
        {

          v54 = OUTLINED_FUNCTION_63_0();
          v55(v54);
        }

LABEL_30:
        OUTLINED_FUNCTION_25_2();
        return;
      }

      v25 = v23;
      v60 = MEMORY[0x1E69E7CC0];

      OUTLINED_FUNCTION_176_7();
      if ((v25 & 0x8000000000000000) == 0)
      {
        v26 = 0;
        v24 = v60;
        do
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1E6911E60](v26, v22);
          }

          else
          {
            OUTLINED_FUNCTION_60_38();
          }

          v27 = sub_1E41E1364(v15);
          v29 = v28;

          v60 = v24;
          v31 = *(v24 + 16);
          v30 = *(v24 + 24);
          if (v31 >= v30 >> 1)
          {
            v15 = &v60;
            sub_1E377FD30((v30 > 1), v31 + 1, 1);
            v24 = v60;
          }

          ++v26;
          *(v24 + 16) = v31 + 1;
          v32 = v24 + 16 * v31;
          *(v32 + 32) = v27;
          *(v32 + 40) = v29;
        }

        while (v25 != v26);

        goto LABEL_18;
      }

      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1E40C5CF8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v80 - v10;
  v12 = [objc_opt_self() sharedInstance];
  v85 = [v12 appWindow];

  if (v85)
  {
    OUTLINED_FUNCTION_66_3();
    v14 = *(v13 + 416);
    v84 = v4;
    if (v14())
    {
      v80 = v1;
      v82 = v7;
      v83 = v5;
      v15 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v81 = v0;
      v16 = *&v0[v15];
      v17 = sub_1E32AE9B0(*&v2[v15]);

      v18 = 0;
      v19 = v84;
      while (v18 != v17)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v21 = OUTLINED_FUNCTION_135();
          v22 = MEMORY[0x1E6911E60](v21);
          if (__OFADD__(v18++, 1))
          {
            goto LABEL_39;
          }

          v24 = v22;
          swift_unknownObjectRelease();
          v19 = v84;
          if (v24 == v84)
          {
LABEL_12:

            goto LABEL_35;
          }
        }

        else
        {
          if ((v18 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v20 = *(v16 + 32 + 8 * v18++);
          if (v20 == v19)
          {
            goto LABEL_12;
          }
        }
      }

      v41 = v81;
      OUTLINED_FUNCTION_11_3();

      MEMORY[0x1E6910BF0](v42);
      sub_1E38C5A18(*((*(v41 + v15) & 0xFFFFFFFFFFFFFF8) + 0x10));
      v43 = (v41 + v15);
      OUTLINED_FUNCTION_27_0();
      sub_1E4206324();
      v44 = *(v41 + v15);
      swift_endAccess();
      v45 = sub_1E32AE9B0(v44);
      v46 = MEMORY[0x1E69E7CC0];
      if (!v45)
      {
LABEL_29:
        v55 = sub_1E324FBDC();
        v56 = v82;
        (*(v82 + 16))(v80, v55, v83);
        v57 = v84;

        v58 = v41;

        v59 = sub_1E41FFC94();
        sub_1E4206814();

        if (OUTLINED_FUNCTION_165_5())
        {
          v60 = OUTLINED_FUNCTION_131_15();
          v81 = swift_slowAlloc();
          v86[0] = v81;
          *v60 = 136446978;
          v61 = sub_1E40C50E8();
          OUTLINED_FUNCTION_179_4(v61, v62);
          OUTLINED_FUNCTION_50();

          *(v60 + 4) = v58;
          *(v60 + 12) = 2080;
          v63 = sub_1E41E1364(v57);
          OUTLINED_FUNCTION_179_4(v63, v64);
          OUTLINED_FUNCTION_50();

          *(v60 + 14) = v58;
          *(v60 + 22) = 2080;
          *(v60 + 24) = sub_1E3270FC8(*(v57 + 16), *(v57 + 24), v86);
          *(v60 + 32) = 2080;
          v65 = MEMORY[0x1E6910C30](v46, MEMORY[0x1E69E6158]);

          v66 = OUTLINED_FUNCTION_32_0();
          sub_1E3270FC8(v66, v67, v68);
          OUTLINED_FUNCTION_12_1();

          *(v60 + 34) = v65;
          OUTLINED_FUNCTION_62_2();
          _os_log_impl(v69, v70, v71, v72, v73, 0x2Au);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_79();

          (*(v56 + 8))(v80, v83);
        }

        else
        {

          v74 = OUTLINED_FUNCTION_16_0();
          v76(v74, v75);
        }

        if (*&v58[OBJC_IVAR____TtC8VideosUI6Router_presentingRoute])
        {
          OUTLINED_FUNCTION_8();
          v78 = *(v77 + 856);
          v79 = v84;

          v78(v79);
        }

        goto LABEL_35;
      }

      v47 = v45;
      v86[0] = MEMORY[0x1E69E7CC0];

      OUTLINED_FUNCTION_176_7();
      if ((v47 & 0x8000000000000000) == 0)
      {
        v48 = 0;
        v46 = v86[0];
        do
        {
          if ((v44 & 0xC000000000000001) != 0)
          {
            v43 = MEMORY[0x1E6911E60](v48, v44);
          }

          else
          {
            OUTLINED_FUNCTION_60_38();
          }

          v49 = sub_1E41E1364(v43);
          v51 = v50;

          v86[0] = v46;
          v53 = *(v46 + 16);
          v52 = *(v46 + 24);
          if (v53 >= v52 >> 1)
          {
            v43 = v86;
            sub_1E377FD30((v52 > 1), v53 + 1, 1);
            v46 = v86[0];
          }

          ++v48;
          *(v46 + 16) = v53 + 1;
          v54 = v46 + 16 * v53;
          *(v54 + 32) = v49;
          *(v54 + 40) = v51;
        }

        while (v47 != v48);

        v41 = v81;
        goto LABEL_29;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_25_2();
    }
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_131_0();
    v25 = OUTLINED_FUNCTION_167_6();
    v26(v25);

    v27 = v0;
    v28 = sub_1E41FFC94();
    v29 = sub_1E4206814();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_100();
      v82 = v7;
      v83 = v5;
      v31 = v30;
      v32 = OUTLINED_FUNCTION_164_1();
      OUTLINED_FUNCTION_153_7(v32);
      *v31 = 136446722;
      v33 = sub_1E40C50E8();
      OUTLINED_FUNCTION_141_12(v33, v34);
      OUTLINED_FUNCTION_50();

      *(v31 + 4) = v27;
      *(v31 + 12) = 2080;
      v35 = sub_1E41E1364(v4);
      OUTLINED_FUNCTION_141_12(v35, v36);
      OUTLINED_FUNCTION_50();

      *(v31 + 14) = v27;
      *(v31 + 22) = 2080;
      *(v31 + 24) = sub_1E3270FC8(*(v4 + 16), *(v4 + 24), &v87);
      _os_log_impl(&dword_1E323F000, v28, v29, "%{public}s try to add route:[%s-%s]\nbut no valid window, ignore.", v31, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_55();

      (*(v82 + 8))(v11, v83);
    }

    else
    {

      v39 = OUTLINED_FUNCTION_8_6();
      v40(v39);
    }

LABEL_35:
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E40C6388(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  result = sub_1E32AE9B0(a3);
  v6 = result;
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      return v6 != v8;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](v7, a3);
      v9 = result;
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v12 = v9;
    v10 = a1(&v12);

    if (!v3)
    {
      v7 = v8 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return v6 != v8;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1E40C6484(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *(v1 + v4);
  v16[2] = &v17;
  v17 = a1;

  v6 = sub_1E40C6388(sub_1E40D5C0C, v16, v5);

  if (v6)
  {

    v8 = OUTLINED_FUNCTION_32_0();
    v10 = sub_1E40C6600(v8, v9);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      OUTLINED_FUNCTION_111();
      result = (*(v13 + 416))();
      if (result)
      {
        OUTLINED_FUNCTION_111();
        result = (*(v14 + 488))();
        if ((result & 1) == 0)
        {
          OUTLINED_FUNCTION_11_3();
          sub_1E37EF010(v10);

          MEMORY[0x1E6910BF0](v15);
          sub_1E38C5A18(*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10));
          OUTLINED_FUNCTION_13_8();
          sub_1E4206324();
          return swift_endAccess();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E40C6600(uint64_t a1, unint64_t a2)
{
  result = sub_1E32AE9B0(a2);
  v4 = result;
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v5, a2);
      goto LABEL_6;
    }

    if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

LABEL_6:
    type metadata accessor for Route(0);
    sub_1E3274C5C(&qword_1ECF3D190, type metadata accessor for Route);
    v6 = sub_1E4205E84();

    if (v6)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1E40C6730()
{
  v1 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v0);
  if (v1 && *(v1 + 64) == 4)
  {
    v2 = *(v1 + 32);
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_1E40C6798()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_139();
  v4 = type metadata accessor for DestinationContext(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  if (*(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v0) && sub_1E40C40A4())
  {
    OUTLINED_FUNCTION_8();
    (*(v9 + 800))();
    if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
    {

      sub_1E325F6F0(v1, &unk_1ECF3F9E0);
      return OUTLINED_FUNCTION_57();
    }

    v11 = OUTLINED_FUNCTION_13_8();
    sub_1E40D5C2C(v11, v12);
    if (*v8)
    {
      v13 = *v8;
      v14 = [v13 uiConfiguration];
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        [v15 preferredSize];

LABEL_13:
        sub_1E3F4ED68(v8);
        return OUTLINED_FUNCTION_57();
      }
    }

    v16 = *(v8 + 8);
    if (v16)
    {
      [v16 preferredContentSize];
    }

    goto LABEL_13;
  }

  return OUTLINED_FUNCTION_57();
}

void sub_1E40C6994()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  v67 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_35_3();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v75 = v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v68 = v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FA00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v71 = v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FA08);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_128();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FA10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v74 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  v23 = type metadata accessor for DestinationContext(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_36();
  (*(v25 + 800))();
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) != 1)
  {
    v66 = v5;
    sub_1E40D5C2C(v22, v1);
    v29 = *v1;
    if (*v1)
    {

      v30 = v29;
      sub_1E40C7264();

      OUTLINED_FUNCTION_146_2();
      v67 = v1;
      v31 = v70;
      v32(v68, v2, v70);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3FA18);
      OUTLINED_FUNCTION_59_40();
      sub_1E40D5D34();
      v33 = v71;
      OUTLINED_FUNCTION_74();
      sub_1E4201F44();
      sub_1E32E3C30(v33, v75);
      swift_storeEnumTagMultiPayload();
      sub_1E40D5C90();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_117_13();
      sub_1E4201F44();

      sub_1E32E3C94(v33);
      (*(v15 + 8))(v2, v31);
      v34 = v67;
LABEL_19:
      sub_1E3F4ED68(v34);
      v5 = v66;
      sub_1E32E3BCC(v3, v66);
      v26 = 0;
      goto LABEL_20;
    }

    v35 = *(v1 + 8);
    if (!v35)
    {
      nullsub_1(v27, v28);
      OUTLINED_FUNCTION_131_0();
      OUTLINED_FUNCTION_8_154();
      v43();
      swift_storeEnumTagMultiPayload();
      sub_1E40D5C90();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_117_13();
      sub_1E4201F44();
      v44 = OUTLINED_FUNCTION_53();
      v45(v44);
LABEL_18:
      v34 = v1;
      goto LABEL_19;
    }

    LODWORD(v67) = *(v1 + 49);
    v64 = v3;
    v36 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v3);

    v37 = v35;
    v65 = v37;
    if (v36)
    {
      v38 = sub_1E40C40A4();
      if (v38)
      {
        OUTLINED_FUNCTION_26();
        v40 = *(v39 + 848);

        v42 = v40(v41);

        if (v42)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v38 = 0;
    }

    type metadata accessor for Route(0);
    v46 = v37;
    v47 = [v46 description];
    sub_1E4205F14();

    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_21_42();
    v42 = sub_1E3F4C85C();
LABEL_13:
    (*(*v42 + 424))(0);
    if (v38)
    {
      OUTLINED_FUNCTION_26();
      v49 = *(v48 + 856);

      v49(v50);

      v51 = *(*v38 + 776);

      v51(v52);
      OUTLINED_FUNCTION_16_5();

      OUTLINED_FUNCTION_56_41();
      v54 = sub_1E40C3FB8(v38, 0, v53);
      if (v36)
      {
        if (v54)
        {
          *(v36 + 65) = 2;
        }
      }
    }

    v65 = v65;
    sub_1E3E0E8DC();
    v67 = v55;
    v57 = v56;
    OUTLINED_FUNCTION_4_0();
    v3 = swift_allocObject();
    v58 = v64;
    *(v3 + 16) = v64;
    OUTLINED_FUNCTION_4_0();
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    type metadata accessor for NavigationBarObservableModel(0);
    v60 = v58;
    v61 = sub_1E39EE6D8();
    sub_1E406C2A0(v60, v42, v61, v78);

    *&v80[0] = v67;
    BYTE8(v80[0]) = v57 & 1;
    *(v80 + 9) = *v79;
    HIDWORD(v80[0]) = *&v79[3];
    *&v80[1] = sub_1E40D6F0C;
    *(&v80[1] + 1) = v3;
    memset(&v80[2], 0, 32);
    v80[5] = v78[0];
    *&v80[4] = sub_1E40D6F64;
    *(&v80[4] + 1) = v59;
    v80[6] = v78[1];
    v80[7] = v78[2];
    memcpy(v68, v80, 0x80uLL);
    swift_storeEnumTagMultiPayload();
    sub_1E379D7E4(v80, v78, &unk_1ECF3FA18);
    v62 = OUTLINED_FUNCTION_32_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(v62);
    OUTLINED_FUNCTION_59_40();
    sub_1E40D5D34();
    v63 = v71;
    sub_1E4201F44();
    sub_1E32E3C30(v63, v75);
    swift_storeEnumTagMultiPayload();
    sub_1E40D5C90();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_117_13();
    sub_1E4201F44();

    sub_1E325F6F0(v80, &unk_1ECF3FA18);
    sub_1E32E3C94(v63);
    goto LABEL_18;
  }

  sub_1E325F6F0(v22, &unk_1ECF3F9E0);
  v26 = 1;
LABEL_20:
  __swift_storeEnumTagSinglePayload(v5, v26, 1, v77);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40C7264()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v55 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  if (!v8 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    v13 = [objc_opt_self() sharedInstance];
    v14 = [v13 appController];

    if (v14)
    {
      Strong = [v14 appContext];
    }

    else
    {
      Strong = 0;
    }
  }

  v52 = *(*v6 + 824);
  v15 = v52();
  v53 = v4;
  v54 = Strong;
  if (!v15)
  {
    type metadata accessor for Route(0);
    OUTLINED_FUNCTION_9_5();
    type metadata accessor for DocumentContext();
    sub_1E3D989C8(v4);
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_63_0();
    v15 = sub_1E3F4C85C();
  }

  v16 = v15;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_4_32();
  v17 = v55;
  v18(v1);
  OUTLINED_FUNCTION_98_16();
  swift_retain_n();
  swift_retain_n();
  v19 = v2;
  v20 = sub_1E41FFC94();
  v21 = sub_1E4206814();

  if (os_log_type_enabled(v20, v21))
  {
    v17 = OUTLINED_FUNCTION_72_0();
    v56 = swift_slowAlloc();
    *v17 = 136447746;
    v22 = sub_1E40C50E8();
    OUTLINED_FUNCTION_141_12(v22, v23);
    OUTLINED_FUNCTION_50();

    *(v17 + 4) = v19;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1E3270FC8(*(v6 + 16), *(v6 + 24), &v56);
    *(v17 + 22) = 2080;
    v24 = sub_1E41E1364(v6);
    OUTLINED_FUNCTION_141_12(v24, v25);
    OUTLINED_FUNCTION_50();

    *(v17 + 24) = v19;
    *(v17 + 32) = 2080;
    v26 = v16[2];
    v27 = v16[3];

    v28 = OUTLINED_FUNCTION_32_0();
    sub_1E3270FC8(v28, v29, v30);
    OUTLINED_FUNCTION_12_1();

    *(v17 + 34) = v26;
    *(v17 + 42) = 2080;
    v31 = sub_1E41E1364(v16);
    OUTLINED_FUNCTION_141_12(v31, v32);
    OUTLINED_FUNCTION_50();

    *(v17 + 44) = v27;
    *(v17 + 52) = 1024;
    LOBYTE(v26) = (*(*v16 + 488))(v33);

    *(v17 + 54) = v26 & 1;

    *(v17 + 58) = 1024;
    v35 = (v52)(v34);

    if (v35)
    {

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    *(v17 + 60) = v36;

    _os_log_impl(&dword_1E323F000, v20, v21, "    %{public}s currentRoute %s-%s     build destiation with route %s-%s-%{BOOL}d\n    is new route %{BOOL}d", v17, 0x40u);
    OUTLINED_FUNCTION_62_37();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_7_9();

    (*(v10 + 8))(v1, v55);
  }

  else
  {

    OUTLINED_FUNCTION_98_16();

    (*(v10 + 8))(v1, v55);
  }

  v37 = *(*v6 + 832);

  v37(v38);
  type metadata accessor for DocumentContext();
  OUTLINED_FUNCTION_60_1();

  v39 = v53;
  v40 = j__OUTLINED_FUNCTION_18();
  v41 = sub_1E3D98A84(v39, v16, v40 & 1);
  OUTLINED_FUNCTION_3_0();
  v42 = swift_unknownObjectWeakAssign();
  v43 = (*(*v16 + 392))(v42);
  OUTLINED_FUNCTION_3_0();
  *(v41 + 48) = v43;

  if ((*(*v6 + 728))(v44))
  {
    OUTLINED_FUNCTION_30();
    (*(v45 + 552))();
    OUTLINED_FUNCTION_112();

    if (v17)
    {
      sub_1E3744600(v17);
    }
  }

  v46 = j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  v47 = OUTLINED_FUNCTION_13_8();
  sub_1E3D98BF4(v47, v48, v49, v50);

  if (!v8)
  {

    goto LABEL_25;
  }

  if (*(v8 + 64) != 2 || (v51 = *(v8 + 24), , !v51))
  {

LABEL_23:
    *(v8 + 65) = 2;
    goto LABEL_25;
  }

  sub_1E32AE9B0(v51);
  OUTLINED_FUNCTION_60_1();

  if (!v46)
  {
    goto LABEL_23;
  }

LABEL_25:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40C7894()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_9_5();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + Strong);
    if (v13)
    {
      v14 = *(v13 + 24);
      v15 = *(v13 + 64);
      if (v15 == 2)
      {
        v71 = v8;
        v73 = v4;
        v74 = v2;
        v17 = *(v13 + 48);
        v16 = *(v13 + 56);
        v18 = *(v13 + 32);
        v19 = *(v13 + 40);
        v20 = *(v13 + 16);

        sub_1E40D6474(v20, v14, v18, v19, v17, v16, 2);

        if (v14)
        {
          if (sub_1E32AE9B0(v14))
          {
            sub_1E324FBDC();
            OUTLINED_FUNCTION_12_7();
            v21(v1);
            v12 = v12;

            v22 = sub_1E41FFC94();
            v23 = sub_1E4206814();

            if (os_log_type_enabled(v22, v23))
            {
              v24 = v14;
              v25 = OUTLINED_FUNCTION_49_0();
              v76 = OUTLINED_FUNCTION_100();
              v26 = OUTLINED_FUNCTION_182_5(4.8752e-34);
              sub_1E3270FC8(v26, v27, &v76);
              OUTLINED_FUNCTION_11_5();

              *(v25 + 4) = v73;
              *(v25 + 12) = 2048;
              v28 = sub_1E32AE9B0(v24);

              *(v25 + 14) = v28;

              _os_log_impl(&dword_1E323F000, v22, v23, "%{public}swill process next deep link data source, remaining: %ld", v25, 0x16u);
              OUTLINED_FUNCTION_41_70();
              OUTLINED_FUNCTION_79();

              (*(v73 + 8))(v1, v74);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              (*(v73 + 8))(v1, v74);
            }

            sub_1E40C7FE4();
          }

          else
          {

            if (*(v13 + 65) == 2)
            {
              v53 = *(v13 + 72);
              *(v13 + 72) = 0;
              *(v13 + 80) = 0;
              sub_1E40C8384();
              if (v53)
              {

                v53(v54);
                sub_1E34AF594(v53);
                sub_1E34AF594(v53);
              }
            }
          }

          goto LABEL_29;
        }

        v15 = *(v13 + 64);
        v2 = v74;
        v8 = v71;
        v4 = v73;
      }

      else
      {
      }

      if (v15 != 1)
      {
        if (sub_1E40C40A4())
        {
          v36 = v8;
          OUTLINED_FUNCTION_26_0();
          v37 += 97;
          v38 = *v37;
          LOBYTE(v76) = (*v37)();
          v77 = 0;
          sub_1E3F4EEA0();
          if ((sub_1E4205E84() & 1) == 0)
          {
            OUTLINED_FUNCTION_26();
            v40 = (*(v39 + 752))();
            if (v40)
            {
              v41 = v40;
              v38();
              OUTLINED_FUNCTION_16_5();

              sub_1E40C8850();

LABEL_29:

              goto LABEL_37;
            }
          }

          v8 = v36;
        }

        if (sub_1E40C40A4())
        {
          OUTLINED_FUNCTION_26_0();
          LOBYTE(v76) = (*(v42 + 776))();
          v77 = 0;
          sub_1E3F4EEA0();
          sub_1E4205E84();
          if (*(v13 + 65) == 2)
          {
            sub_1E324FBDC();
            OUTLINED_FUNCTION_22_6();
            v43(v8);
            v12 = v12;
            v44 = sub_1E41FFC94();
            sub_1E4206814();

            if (OUTLINED_FUNCTION_165_5())
            {
              v45 = OUTLINED_FUNCTION_6_21();
              v76 = OUTLINED_FUNCTION_100();
              v46 = OUTLINED_FUNCTION_182_5(4.8751e-34);
              sub_1E3270FC8(v46, v47, &v76);
              OUTLINED_FUNCTION_40_18();
              *(v45 + 4) = v2;
              OUTLINED_FUNCTION_62_2();
              _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
              OUTLINED_FUNCTION_40_75();
              OUTLINED_FUNCTION_79();

              (*(v4 + 8))(v8, v2);
            }

            else
            {

              (*(v4 + 8))(v8, v2);
            }

            sub_1E40C8384();
          }

          goto LABEL_37;
        }

        goto LABEL_29;
      }

      v29 = *(v13 + 16);
      v68 = *(v13 + 32);
      v69 = *(v13 + 40);
      v70 = *(v13 + 48);
      v72 = *(v13 + 56);
      v30 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x90);
      v31 = (*MEMORY[0x1E69E7D40] & *v12) + 144;
      v32 = sub_1E34AF604(v29);
      v33 = v30(v32);
      if (v33)
      {
        if (v29)
        {
          v29(v33);

          v34 = OUTLINED_FUNCTION_21_42();
          sub_1E40D60A0(v34, v35, v68, v69, v70, v72, 1);
LABEL_37:

          goto LABEL_38;
        }
      }

      sub_1E324FBDC();
      OUTLINED_FUNCTION_22_6();
      v55(v0);
      v56 = v12;
      v57 = sub_1E41FFC94();
      v58 = v4;
      v59 = sub_1E42067F4();

      if (os_log_type_enabled(v57, v59))
      {
        v75 = v2;
        v60 = OUTLINED_FUNCTION_6_21();
        v76 = OUTLINED_FUNCTION_100();
        *v60 = 136446210;
        v61 = sub_1E40C50E8();
        sub_1E3270FC8(v61, v62, &v76);
        OUTLINED_FUNCTION_122();

        *(v60 + 4) = v31;
        OUTLINED_FUNCTION_124_9();
        _os_log_impl(v63, v64, v65, v66, v67, 0xCu);
        OUTLINED_FUNCTION_40_75();
        OUTLINED_FUNCTION_43_71();

        OUTLINED_FUNCTION_132_12();
        (*(v58 + 8))(v0, v75);
      }

      else
      {

        OUTLINED_FUNCTION_132_12();

        (*(v58 + 8))(v0, v2);
      }
    }

    else
    {
    }
  }

LABEL_38:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40C7FE4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v1;
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  if (*(v0 + 65) == 3)
  {
    goto LABEL_23;
  }

  if (*(v0 + 64) != 2)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_146_2();
    v16(v2);
    v17 = v1;

    v18 = sub_1E41FFC94();
    v19 = sub_1E42067F4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_49_0();
      v41 = OUTLINED_FUNCTION_72_0();
      *v20 = 136446466;
      v21 = sub_1E40C50E8();
      OUTLINED_FUNCTION_38_8(v21, v22);
      OUTLINED_FUNCTION_34_3();
      *(v20 + 4) = v17;
      *(v20 + 12) = 2080;
      v23 = sub_1E40C3D78();
      sub_1E3270FC8(v23, v24, &v41);
      OUTLINED_FUNCTION_50();

      *(v20 + 14) = v0 + 16;
      OUTLINED_FUNCTION_347(&dword_1E323F000, v18, v19, "%{public}sprocessing next deep link data source, context: [%s]");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_55();
    }

    v25 = OUTLINED_FUNCTION_53();
    v26(v25);
    goto LABEL_23;
  }

  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v10 = *(v0 + 16);
  v9 = *(v0 + 24);
  v42 = v9;
  v11 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v12 = *&v3[v11];

  v13 = OUTLINED_FUNCTION_78_0();
  sub_1E40D6474(v13, v14, v8, v7, v6, v5, 2);
  v15 = sub_1E37D027C(v12);

  if (!v15)
  {

    goto LABEL_10;
  }

  if (v15 == v10)
  {

LABEL_10:

LABEL_23:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  if (!v9)
  {
    v32 = 0;
    v38 = 0;
    goto LABEL_22;
  }

  if (!sub_1E32AE9B0(v9))
  {
    __break(1u);
    goto LABEL_25;
  }

  if (!sub_1E32AE9B0(v9))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_26:
    MEMORY[0x1E6911E60](0, v9);
    goto LABEL_17;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_28;
  }

  v27 = *(v9 + 32);
LABEL_17:
  v28 = OUTLINED_FUNCTION_6_19();
  if (sub_1E32AE9B0(v28))
  {
    if (sub_1E32AE9B0(v9) >= 1)
    {
      v29 = sub_1E32AE9B0(v9);
      v30 = __OFSUB__(v29, 1);
      v31 = v29 - 1;
      if (!v30)
      {
        sub_1E3879104(v31);
        sub_1E40D590C(0, 1, 0);
        v32 = v42;
        v38 = v6;
LABEL_22:
        v33 = *(v0 + 24);
        v34 = *(v0 + 32);
        v35 = *(v0 + 40);
        v36 = *(v0 + 48);
        v39 = *(v0 + 56);
        v40 = *(v0 + 16);
        *(v0 + 16) = v15;
        *(v0 + 24) = v32;
        *(v0 + 32) = 0u;
        *(v0 + 48) = 0u;
        v37 = *(v0 + 64);
        *(v0 + 64) = 2;

        sub_1E40D60A0(v40, v33, v34, v35, v36, v39, v37);
        sub_1E40CBE10();

        goto LABEL_23;
      }

      goto LABEL_29;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
}

void sub_1E40C8384()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v57 - v8;
  v10 = OBJC_IVAR____TtC8VideosUI6Router_currentTransaction;
  v11 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v0);
  if (v11 && *(v11 + 65) != 3)
  {
    v12 = sub_1E40C40A4();
    if (v12)
    {
      v13 = v12;

      sub_1E324FBDC();
      OUTLINED_FUNCTION_4_32();
      v14 = OUTLINED_FUNCTION_167_6();
      v15(v14);

      v16 = v0;

      v17 = sub_1E41FFC94();
      sub_1E4206814();
      OUTLINED_FUNCTION_16_5();

      if (OUTLINED_FUNCTION_181_4())
      {
        v18 = OUTLINED_FUNCTION_100();
        v59 = v5;
        v19 = v18;
        v58 = OUTLINED_FUNCTION_164_1();
        v61 = v58;
        *v19 = 136446722;
        v57[3] = v9;
        v20 = sub_1E40C50E8();
        OUTLINED_FUNCTION_58_0(v20, v21);
        OUTLINED_FUNCTION_40_18();
        OUTLINED_FUNCTION_114_12();

        v22 = sub_1E40C3CA0();
        v24 = v23;

        v25 = sub_1E3270FC8(v22, v24, &v61);

        *(v19 + 14) = v25;
        *(v19 + 22) = 2080;
        v60 = v13;
        v26 = type metadata accessor for Route(0);
        OUTLINED_FUNCTION_0_342();
        sub_1E3274C5C(v27, v28);
        v29 = sub_1E4207944();
        OUTLINED_FUNCTION_58_0(v29, v30);
        OUTLINED_FUNCTION_40_18();
        *(v19 + 24) = v26;
        OUTLINED_FUNCTION_112_18();
        _os_log_impl(v31, v32, v33, v34, v35, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_46_1();
        OUTLINED_FUNCTION_79();
      }

      v36 = OUTLINED_FUNCTION_8_6();
      v37(v36);
      OUTLINED_FUNCTION_26();
      (*(v49 + 736))(0);
      OUTLINED_FUNCTION_26();
      (*(v50 + 760))(0);
      (*(*v13 + 784))(0);
      v51.n128_f64[0] = OUTLINED_FUNCTION_5_11();
      (*(*v13 + 968))(v51);
      v52 = *(v11 + 72);
      *(v11 + 65) = 3;
      if (v52)
      {

        v52(v53);

        sub_1E34AF594(v52);
      }

      else
      {
      }

      v54 = *(v11 + 72);
      *(v11 + 72) = 0;
      *(v11 + 80) = 0;
      sub_1E34AF594(v54);

      *&v10[v2] = 0;
    }

    else
    {

      sub_1E324FBDC();
      OUTLINED_FUNCTION_4_32();
      v38(v1);
      v39 = v0;
      v40 = sub_1E41FFC94();
      v41 = sub_1E4206814();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = OUTLINED_FUNCTION_6_21();
        v43 = v5;
        v44 = OUTLINED_FUNCTION_100();
        v61 = v44;
        *v42 = 136446210;
        v45 = sub_1E40C50E8();
        OUTLINED_FUNCTION_58_0(v45, v46);
        OUTLINED_FUNCTION_40_18();
        *(v42 + 4) = v39;
        OUTLINED_FUNCTION_62_19(&dword_1E323F000, v47, v48, "%{public}sno valid current route for cleanup]");
        __swift_destroy_boxed_opaque_existential_1(v44);
        OUTLINED_FUNCTION_79();
        OUTLINED_FUNCTION_21_0();

        (*(v43 + 8))(v1, v3);
      }

      else
      {

        v55 = OUTLINED_FUNCTION_161_6();
        v56(v55, v3);
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40C8850()
{
  OUTLINED_FUNCTION_31_1();
  v155 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v151 = &v136 - v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_88_2();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v136 - v21;
  LOBYTE(v157[0]) = v9;
  LOBYTE(v160[0]) = 0;
  sub_1E3F4EEA0();
  if ((sub_1E4205E84() & 1) != 0 || !v3)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v29(v16);

    v30 = v155;
    v31 = sub_1E41FFC94();
    v32 = sub_1E42067F4();

    if (os_log_type_enabled(v31, v32))
    {
      v153 = v12;
      v154 = v10;
      v33 = OUTLINED_FUNCTION_100();
      v155 = OUTLINED_FUNCTION_164_1();
      v157[0] = v155;
      *v33 = 136446722;
      v34 = sub_1E40C50E8();
      OUTLINED_FUNCTION_32_89(v34, v35);
      OUTLINED_FUNCTION_34_3();
      *(v33 + 4) = v1;
      *(v33 + 12) = 2080;
      LOBYTE(v160[0]) = v9;
      sub_1E40D6EB8();
      v36 = v160;
      v37 = sub_1E4207944();
      OUTLINED_FUNCTION_32_89(v37, v38);
      OUTLINED_FUNCTION_34_3();
      *(v33 + 14) = v1;
      *(v33 + 22) = 2080;
      if (v3)
      {
        OUTLINED_FUNCTION_66_3();
        v36 = v3;
        v40 = (*(v39 + 872))();
        v42 = v41;
      }

      else
      {
        v40 = 0;
        v42 = 0xE000000000000000;
      }

      v116 = v153;
      sub_1E3270FC8(v40, v42, v157);
      OUTLINED_FUNCTION_50();

      *(v33 + 24) = v36;
      _os_log_impl(&dword_1E323F000, v31, v32, "%{public}sunable to perform [%s], route: [%s]", v33, 0x20u);
      OUTLINED_FUNCTION_62_37();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_21_0();

      (*(v116 + 8))(v16, v154);
    }

    else
    {

      (*(v12 + 8))(v16, v10);
    }

    sub_1E40C8384();
  }

  else
  {
    v140 = v22;
    OUTLINED_FUNCTION_66_3();
    v24 = *(v23 + 760);
    v141 = v7;

    v24(v7);
    v25 = v9;
    v26 = &selRef_preAction;
    v27 = &selRef_preActionDocumentDataSource;
    v137 = v1;
    v138 = v9;
    v153 = v12;
    v154 = v10;
    v28 = v9;
    switch(v9)
    {
      case 1:
        goto LABEL_10;
      case 2:
        v26 = &selRef_action;
        v27 = &selRef_documentDataSource;
        goto LABEL_10;
      case 3:
        v26 = &selRef_postAction;
        v27 = &selRef_postActionDocumentDataSource;
LABEL_10:
        OUTLINED_FUNCTION_66_3();
        (*(v43 + 784))();
        v44 = v141;
        v28 = [v141 *v27];
        v25 = [v44 *v26];
        break;
      default:
        break;
    }

    v152 = v28;
    v142 = v25;
    v45 = *(v5 + 120);
    v160[0] = *(v5 + 104);
    v160[1] = v45;
    v161 = *(v5 + 136);
    v139 = v28;
    OUTLINED_FUNCTION_135();
    sub_1E40D0144();
    v46 = v157[0];
    v47 = v157[1];
    v48 = v157[2];
    v49 = v157[3];
    v50 = v157[4];
    v51 = v157[5];
    v52 = v158;
    v53 = v159;
    v136 = v7;
    v54 = *(v5 + 16);
    v55 = *(v5 + 24);
    v57 = *(v5 + 32);
    v56 = *(v5 + 40);
    v58 = v3;
    v60 = *(v5 + 48);
    v59 = *(v5 + 56);
    *(v5 + 16) = v157[0];
    *(v5 + 24) = v47;
    *(v5 + 32) = v48;
    *(v5 + 40) = v49;
    *(v5 + 48) = v50;
    *(v5 + 56) = v51;
    v61 = *(v5 + 64);
    *(v5 + 64) = v52;
    v143 = v46;
    v144 = v47;
    v145 = v48;
    v146 = v49;
    v147 = v50;
    v148 = v51;
    v149 = v52;
    sub_1E40D6474(v46, v47, v48, v49, v50, v51, v52);
    v62 = v57;
    v63 = v152;
    sub_1E40D60A0(v54, v55, v62, v56, v60, v59, v61);
    v150 = v5;
    *(v5 + 96) = v53;
    if (v63)
    {
      v64 = v139;

      v65 = sub_1E324FBDC();
      v66 = v153;
      v67 = v154;
      v68 = v140;
      (*(v153 + 16))(v140, v65, v154);

      v69 = v64;
      v70 = v155;
      v71 = sub_1E41FFC94();
      v72 = sub_1E4206814();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = OUTLINED_FUNCTION_131_15();
        v74 = OUTLINED_FUNCTION_160();
        v141 = OUTLINED_FUNCTION_164_1();
        v157[0] = v141;
        *v73 = 136446978;
        v155 = v58;
        v151 = v70;
        v75 = sub_1E40C50E8();
        OUTLINED_FUNCTION_32_89(v75, v76);
        OUTLINED_FUNCTION_11_5();

        *(v73 + 4) = v58;
        *(v73 + 12) = 2080;
        OUTLINED_FUNCTION_139_12();
        v77 = sub_1E4207944();
        OUTLINED_FUNCTION_32_89(v77, v78);
        OUTLINED_FUNCTION_11_5();

        *(v73 + 14) = v58;
        *(v73 + 22) = 2112;
        *(v73 + 24) = v69;
        *v74 = v152;
        *(v73 + 32) = 2080;
        v156 = v155;
        v79 = type metadata accessor for Route(0);
        OUTLINED_FUNCTION_0_342();
        sub_1E3274C5C(v80, v81);
        v82 = v69;
        v83 = sub_1E4207944();
        OUTLINED_FUNCTION_32_89(v83, v84);
        OUTLINED_FUNCTION_11_5();

        *(v73 + 34) = v79;
        _os_log_impl(&dword_1E323F000, v71, v72, "%{public}sperforming event [%s, %@] route: [%s]", v73, 0x2Au);
        sub_1E325F6F0(v74, &unk_1ECF28E30);
        OUTLINED_FUNCTION_13_4();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_51_2();
        v63 = v152;
        OUTLINED_FUNCTION_6_0();

        (*(v153 + 8))(v68, v154);
      }

      else
      {

        (*(v66 + 8))(v68, v67);
      }

      v114 = v150;
      v115 = v69;
      sub_1E40CBE10(v114, v63, 0);

      OUTLINED_FUNCTION_13_187();
    }

    else
    {
      v85 = v58;
      v87 = v153;
      v86 = v154;
      v88 = v142;
      if (v142)
      {
        sub_1E324FBDC();
        OUTLINED_FUNCTION_4_32();
        v89 = v137;
        v90(v137);

        v91 = v155;
        v92 = v88;
        v93 = v86;
        v94 = sub_1E41FFC94();
        v95 = sub_1E4206814();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = OUTLINED_FUNCTION_131_15();
          LODWORD(v152) = v95;
          v97 = v96;
          v98 = OUTLINED_FUNCTION_160();
          v155 = OUTLINED_FUNCTION_164_1();
          v157[0] = v155;
          *v97 = 136446978;
          v99 = sub_1E40C50E8();
          OUTLINED_FUNCTION_32_89(v99, v100);
          OUTLINED_FUNCTION_11_5();

          OUTLINED_FUNCTION_118_12();
          OUTLINED_FUNCTION_139_12();
          v101 = sub_1E4207944();
          OUTLINED_FUNCTION_32_89(v101, v102);
          OUTLINED_FUNCTION_11_5();

          *(v97 + 14) = v89;
          *(v97 + 22) = 2112;
          *(v97 + 24) = v92;
          *v98 = v88;
          *(v97 + 32) = 2080;
          v156 = v85;
          v103 = type metadata accessor for Route(0);
          OUTLINED_FUNCTION_0_342();
          sub_1E3274C5C(v104, v105);
          v106 = v92;
          v107 = sub_1E4207944();
          OUTLINED_FUNCTION_32_89(v107, v108);
          OUTLINED_FUNCTION_11_5();

          *(v97 + 34) = v103;
          OUTLINED_FUNCTION_124_9();
          _os_log_impl(v109, v110, v111, v112, v113, 0x2Au);
          sub_1E325F6F0(v98, &unk_1ECF28E30);
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_62_37();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_6_0();

          (*(v87 + 8))(v137, v154);
        }

        else
        {

          (*(v87 + 8))(v89, v93);
        }

        *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v91) = v150;

        OUTLINED_FUNCTION_53();
        sub_1E40D0360();
        OUTLINED_FUNCTION_13_187();
      }

      else
      {
        sub_1E324FBDC();
        OUTLINED_FUNCTION_4_32();
        v117 = v151;
        v118(v151);
        v119 = v58;

        v120 = v155;
        v121 = sub_1E41FFC94();
        v122 = sub_1E4206814();

        if (os_log_type_enabled(v121, v122))
        {
          v123 = OUTLINED_FUNCTION_100();
          v157[0] = OUTLINED_FUNCTION_164_1();
          *v123 = 136446722;
          v124 = sub_1E40C50E8();
          OUTLINED_FUNCTION_32_89(v124, v125);
          OUTLINED_FUNCTION_122();

          *(v123 + 4) = v56;
          *(v123 + 12) = 2080;
          OUTLINED_FUNCTION_139_12();
          v126 = sub_1E4207944();
          OUTLINED_FUNCTION_32_89(v126, v127);
          OUTLINED_FUNCTION_122();

          *(v123 + 14) = v56;
          *(v123 + 22) = 2080;
          v156 = v119;
          v128 = type metadata accessor for Route(0);
          OUTLINED_FUNCTION_0_342();
          sub_1E3274C5C(v129, v130);
          v131 = sub_1E4207944();
          OUTLINED_FUNCTION_32_89(v131, v132);
          OUTLINED_FUNCTION_122();

          *(v123 + 24) = v128;
          _os_log_impl(&dword_1E323F000, v121, v122, "%{public}sskipping empty event [%s] route: [%s]", v123, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_79();
          OUTLINED_FUNCTION_7_7();

          (*(v87 + 8))(v151, v154);
        }

        else
        {

          (*(v87 + 8))(v117, v86);
        }

        v133 = v150;
        OUTLINED_FUNCTION_66_3();
        v135 = (*(v134 + 776))();

        sub_1E40C8850(v135, v141, v133, v119);
        OUTLINED_FUNCTION_13_187();
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40C9454()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  sub_1E37D027C(v1);
  OUTLINED_FUNCTION_50();

  if (sub_1E40C9518(v0))
  {
    if (v0)
    {
      OUTLINED_FUNCTION_8();
      v3 = *(v2 + 952);

      LOBYTE(v3) = v3(v4);

      if (v3)
      {
        return 1;
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1E40C9518(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_139();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D170);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  if (a1)
  {
    OUTLINED_FUNCTION_8();
    v10 = *(v9 + 488);

    if (v10(v11) & 1) != 0 || (OUTLINED_FUNCTION_8(), ((*(v12 + 536))()))
    {
      OUTLINED_FUNCTION_8();
      if ((*(v13 + 440))())
      {
        OUTLINED_FUNCTION_8();
        if ((*(v14 + 584))())
        {
          OUTLINED_FUNCTION_8();
          (*(v15 + 800))();

          type metadata accessor for DestinationContext(0);
          v16 = OUTLINED_FUNCTION_38();
          if (__swift_getEnumTagSinglePayload(v16, 1, a1) == 1)
          {
            sub_1E325F6F0(v1, &unk_1ECF3F9E0);
            v17 = type metadata accessor for AlertContext(0);
            __swift_storeEnumTagSinglePayload(v8, 1, 1, v17);
          }

          else
          {
            sub_1E379D7E4(v1 + *(a1 + 32), v8, &qword_1ECF3D170);
            sub_1E3F4ED68(v1);
            v19 = type metadata accessor for AlertContext(0);
            if (__swift_getEnumTagSinglePayload(v8, 1, v19) != 1)
            {
              a1 = 0;
              goto LABEL_13;
            }
          }

          a1 = 1;
LABEL_13:
          sub_1E325F6F0(v8, &qword_1ECF3D170);
          return a1;
        }
      }
    }

    return 1;
  }

  return a1;
}

void sub_1E40C9798()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v97 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v14);
  v98 = &v90 - v15;
  sub_1E40CA1E8();
  v17 = v16;
  v101[3] = &unk_1F5D5E7B8;
  v101[4] = &off_1F5D5CC78;
  LOBYTE(v101[0]) = 0;
  v18 = j__OUTLINED_FUNCTION_18();
  v19 = sub_1E39C29F0(v101, v18 & 1);
  __swift_destroy_boxed_opaque_existential_1(v101);
  if (v17 & 1) != 0 || (v19)
  {
    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_25();
    v36();
    goto LABEL_37;
  }

  if (((*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8))(v9, v7) & 1) == 0)
  {
    goto LABEL_37;
  }

  v96 = v12;
  v20 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  sub_1E37D027C(v21);
  OUTLINED_FUNCTION_12_1();

  if (v20)
  {
    OUTLINED_FUNCTION_111();
    v23 = *(v22 + 960);

    v23(v24);
  }

  OUTLINED_FUNCTION_47_0();
  v26 = (*(v25 + 576))();
  if (!v26)
  {
    goto LABEL_16;
  }

  v27 = v26;
  OUTLINED_FUNCTION_6_230();
  if ((sub_1E40C3FB8(v9, 2, v28) & 1) == 0)
  {
    OUTLINED_FUNCTION_6_230();
    if ((sub_1E40C3FB8(v9, 1, v29) & 1) == 0)
    {

LABEL_16:
      if (!v20)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    }
  }

  type metadata accessor for Metrics();
  OUTLINED_FUNCTION_38();
  v30 = sub_1E3BA7AA8();
  if (!v20)
  {

    goto LABEL_37;
  }

  v94 = v30;
  v95 = v10;
  OUTLINED_FUNCTION_111();
  v32 = *(v31 + 368);

  v34 = v32(v33);

  if (v34)
  {
    OUTLINED_FUNCTION_8();
    v93 = *(v35 + 208);

    v93(v27, v94);
  }

  else
  {
  }

  v10 = v95;
LABEL_20:

  if ((sub_1E40C9518(v37) & 1) == 0)
  {
    OUTLINED_FUNCTION_44_2();

    goto LABEL_37;
  }

  v38 = v20;
  v39 = *(*v20 + 736);

  v39(v40);
  v41 = v5;
  if (v5 || (OUTLINED_FUNCTION_47_0(), (v41 = (*(v42 + 544))()) != 0))
  {
    v43 = v5;
    v44 = sub_1E40CA11C(v9, v41);
    if (v44)
    {
      v93 = v44;
      v94 = v41;
      v45 = sub_1E324FBDC();
      v46 = v96;
      v47 = v98;
      (*(v96 + 16))(v98, v45, v10);

      v48 = v2;
      v49 = sub_1E41FFC94();
      v50 = sub_1E4206814();

      v51 = os_log_type_enabled(v49, v50);
      v92 = v48;
      if (v51)
      {
        v52 = OUTLINED_FUNCTION_131_15();
        v95 = v10;
        v53 = v52;
        v91 = swift_slowAlloc();
        v100 = v91;
        *v53 = 136446978;
        v54 = sub_1E40C50E8();
        OUTLINED_FUNCTION_110_15(v54, v55);
        OUTLINED_FUNCTION_112();

        *(v53 + 4) = v47;
        *(v53 + 12) = 2080;
        LOBYTE(v99) = v9;
        sub_1E3790838();
        v56 = sub_1E4207944();
        OUTLINED_FUNCTION_110_15(v56, v57);
        OUTLINED_FUNCTION_112();

        *(v53 + 14) = v47;
        *(v53 + 22) = 2080;
        v59 = (*(*v7 + 376))(v58);
        OUTLINED_FUNCTION_110_15(v59, v60);
        OUTLINED_FUNCTION_112();

        *(v53 + 24) = v47;
        *(v53 + 32) = 2080;
        v99 = v38;
        v61 = type metadata accessor for Route(0);
        OUTLINED_FUNCTION_0_342();
        sub_1E3274C5C(v62, v63);
        v64 = sub_1E4207944();
        OUTLINED_FUNCTION_110_15(v64, v65);
        OUTLINED_FUNCTION_112();

        *(v53 + 34) = v61;
        _os_log_impl(&dword_1E323F000, v49, v50, "%{public}shandling .%s for %s with route: [%s]", v53, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_46_1();
        OUTLINED_FUNCTION_7_7();

        (*(v46 + 8))(v98, v95);
      }

      else
      {

        (*(v46 + 8))(v47, v10);
      }

      type metadata accessor for RoutingTransaction();
      OUTLINED_FUNCTION_58_41();
      v80 = swift_allocObject();
      v81 = sub_1E40C42B0();
      v82 = v7;
      v83 = (*(*v7 + 648))(v81);
      v84 = v94;
      if (!v83 || (OUTLINED_FUNCTION_25(), swift_beginAccess(), swift_unknownObjectWeakLoadStrong(), OUTLINED_FUNCTION_16_5(), , !v7))
      {
        type metadata accessor for LibViewModel();
        if (swift_dynamicCastClass())
        {
          OUTLINED_FUNCTION_26_0();
          v82 = (*(v85 + 968))();
        }

        else
        {
          v82 = 0;
        }
      }

      swift_unknownObjectWeakAssign();

      v87 = v97;
      v88 = v97[1];
      *(v80 + 104) = *v97;
      *(v80 + 120) = v88;
      *(v80 + 136) = *(v87 + 32);
      v89 = v93;
      OUTLINED_FUNCTION_8_154();
      sub_1E40C8850();

      goto LABEL_37;
    }
  }

  v66 = sub_1E324FBDC();
  v67 = v96;
  v68 = *(v96 + 16);
  v95 = v10;
  v68(v1, v66, v10);

  v69 = v2;
  v70 = sub_1E41FFC94();
  v71 = sub_1E4206814();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = OUTLINED_FUNCTION_100();
    v98 = OUTLINED_FUNCTION_164_1();
    v100 = v98;
    v73 = OUTLINED_FUNCTION_182_5(4.8754e-34);
    OUTLINED_FUNCTION_110_15(v73, v74);
    OUTLINED_FUNCTION_112();

    *(v72 + 4) = v69;
    *(v72 + 12) = 2080;
    LOBYTE(v99) = v9;
    sub_1E3790838();
    v75 = sub_1E4207944();
    OUTLINED_FUNCTION_110_15(v75, v76);
    OUTLINED_FUNCTION_112();

    *(v72 + 14) = v69;
    *(v72 + 22) = 2080;
    v78 = (*(*v7 + 376))(v77);
    OUTLINED_FUNCTION_110_15(v78, v79);
    OUTLINED_FUNCTION_11_5();

    *(v72 + 24) = v7;
    _os_log_impl(&dword_1E323F000, v70, v71, "%{public}shandling .%s for %s, no valid routerDataSource", v72, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_79();

    (*(v96 + 8))(v1, v95);
  }

  else
  {

    (*(v67 + 8))(v1, v95);
  }

  OUTLINED_FUNCTION_5_11();
  OUTLINED_FUNCTION_111();
  (*(v86 + 968))();

LABEL_37:
  OUTLINED_FUNCTION_25_2();
}

id sub_1E40CA11C(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_6_230();
  if (sub_1E40C3FB8(v4, 1, v5) & 1) != 0 || (OUTLINED_FUNCTION_6_230(), (sub_1E40C3FB8(a1, 0, v6)))
  {
    v7 = &selRef_playEventDataSource;
    return [a2 *v7];
  }

  OUTLINED_FUNCTION_6_230();
  if (sub_1E40C3FB8(a1, 2, v9))
  {
    v7 = &selRef_selectEventDataSource;
    return [a2 *v7];
  }

  OUTLINED_FUNCTION_6_230();
  if (sub_1E40C3FB8(a1, 4, v10))
  {
    v7 = &selRef_contextMenuEventDataSource;
    return [a2 *v7];
  }

  return 0;
}

void sub_1E40CA1E8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  if (TVAppFeature.isEnabled.getter(18))
  {
    v6 = v2;
    if (v2 || (OUTLINED_FUNCTION_8(), (v6 = (*(v7 + 544))()) != 0))
    {
      v8 = v2;
      v9 = sub_1E40CA11C(v4, v6);
      if (v9)
      {
        v10 = v9;
        v11 = [v9 action];
        if (v11)
        {
          v12 = v11;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            sub_1E324FBDC();
            OUTLINED_FUNCTION_4_32();
            v13 = OUTLINED_FUNCTION_33_14();
            v14(v13);
            v15 = v0;
            v16 = sub_1E41FFC94();
            v17 = sub_1E4206814();

            if (os_log_type_enabled(v16, v17))
            {
              v25 = v17;
              v18 = OUTLINED_FUNCTION_49_0();
              OUTLINED_FUNCTION_72_0();
              *v18 = 136315394;
              v19 = (*((*MEMORY[0x1E69E7D40] & *v15) + 0xB0))();
              OUTLINED_FUNCTION_58_0(v19, v20);
              OUTLINED_FUNCTION_40_18();
              *(v18 + 4) = v15;
              *(v18 + 12) = 2080;
              sub_1E3790838();
              v21 = sub_1E4207944();
              OUTLINED_FUNCTION_58_0(v21, v22);
              OUTLINED_FUNCTION_176_0();
              *(v18 + 14) = v4;
              _os_log_impl(&dword_1E323F000, v16, v25, "Router[%s]::event: %s playlist action use view model dispatch", v18, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_55();
              OUTLINED_FUNCTION_7_7();
            }

            else
            {
            }

            v23 = OUTLINED_FUNCTION_13_8();
            v24(v23);
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CA4B0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = OUTLINED_FUNCTION_187_4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  v12 = sub_1E37D027C(v11);

  if (v12)
  {
    OUTLINED_FUNCTION_44_2();
    v13 = swift_retain_n();
    if ((sub_1E40C9518(v13) & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    v14 = sub_1E324FBDC();
    v38 = *(v5 + 16);
    v38(v2, v14, v3);

    v15 = v0;
    v16 = sub_1E41FFC94();
    v17 = sub_1E4206814();

    v39 = v17;
    v40 = v5;
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_72_0();
      *v18 = 136315394;
      OUTLINED_FUNCTION_21();
      v20 = (*(v19 + 176))();
      OUTLINED_FUNCTION_38_8(v20, v21);
      OUTLINED_FUNCTION_176_0();
      *(v18 + 4) = v5;
      *(v18 + 12) = 2080;
      v22 = type metadata accessor for Route(0);
      OUTLINED_FUNCTION_0_342();
      sub_1E3274C5C(v23, v24);
      v25 = sub_1E4207944();
      OUTLINED_FUNCTION_38_8(v25, v26);
      OUTLINED_FUNCTION_176_0();
      *(v18 + 14) = v22;
      _os_log_impl(&dword_1E323F000, v16, v39, "Router[%s]::handling [select] event with route: [%s]", v18, 0x16u);
      OUTLINED_FUNCTION_120_10();
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_7_9();

      v27 = *(v40 + 8);
    }

    else
    {

      v27 = *(v5 + 8);
    }

    v27(v2, v3);
    v28 = sub_1E40CA11C(2, v1);

    if (v28)
    {
      type metadata accessor for RoutingTransaction();
      OUTLINED_FUNCTION_58_41();
      swift_allocObject();
      sub_1E40C42B0();
      type metadata accessor for TVAppLauncher();
      v29 = [swift_getObjCClassFromMetadata() sharedInstance];
      v30 = [v29 appController];

      if (v30)
      {
        v31 = [v30 appContext];
      }

      else
      {
        v31 = 0;
      }

      swift_unknownObjectWeakAssign();

      sub_1E40C8850();

      OUTLINED_FUNCTION_44_2();
      goto LABEL_14;
    }

    v38(v9, v14, v3);
    v32 = v15;
    v33 = sub_1E41FFC94();
    v34 = sub_1E4206814();

    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_6_21();
      v41 = OUTLINED_FUNCTION_10_11();
      MEMORY[0] = 136315138;
      v35 = (*((*MEMORY[0x1E69E7D40] & *v32) + 0xB0))();
      OUTLINED_FUNCTION_38_8(v35, v36);
      OUTLINED_FUNCTION_14_52();
      MEMORY[4] = v32;
      OUTLINED_FUNCTION_137_10(&dword_1E323F000, v33, v34, "Router[%s]::handling [select] event without valid routerDataSource]");
      __swift_destroy_boxed_opaque_existential_1(v41);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_44_2();
    }

    else
    {

      OUTLINED_FUNCTION_44_2();
    }

    v37 = OUTLINED_FUNCTION_39_3();
    (v27)(v37);
  }

LABEL_15:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40CA9C0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  sub_1E37D027C(v3);
  OUTLINED_FUNCTION_38();

  if (v2)
  {

    if ((sub_1E40C9518(v4) & 1) == 0 || *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v1))
    {

LABEL_5:

      return 0;
    }

    OUTLINED_FUNCTION_8();
    (*(v6 + 776))();
    OUTLINED_FUNCTION_56_41();
    v9 = sub_1E40C3FB8(v7, 0, v8);

    if ((v9 & 1) == 0 || *(v1 + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute))
    {
      goto LABEL_5;
    }
  }

  return v2;
}

void sub_1E40CAABC()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_8();
  v14 = *&v0[OBJC_IVAR____TtC8VideosUI6Router_multipleDocumentRoute];
  if (v14)
  {
    goto LABEL_7;
  }

  v54 = v8;
  v15 = v11;
  v16 = v9;
  v17 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v18 = *&v0[v17];
  if (!sub_1E32AE9B0(v18))
  {
    v42 = sub_1E324FBDC();
    v43 = v16;
    (*(v15 + 16))(v2, v42, v16);
    v44 = v0;
    v45 = sub_1E41FFC94();
    v46 = sub_1E4206814();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_6_21();
      v56[0] = OUTLINED_FUNCTION_100();
      *v47 = 136315138;
      v48 = (*((*MEMORY[0x1E69E7D40] & *v44) + 0xB0))();
      sub_1E3270FC8(v48, v49, v56);
      OUTLINED_FUNCTION_112();

      *(v47 + 4) = v15;
      _os_log_impl(&dword_1E323F000, v45, v46, "Router:[%s]::there are no routes in the router.", v47, 0xCu);
      OUTLINED_FUNCTION_40_75();
      OUTLINED_FUNCTION_21_0();

      v50 = (*(v15 + 8))(v2, v43);
    }

    else
    {

      v50 = (*(v15 + 8))(v2, v16);
    }

    if (v6)
    {
      v6(v50);
    }

    goto LABEL_14;
  }

  v9 = v16;
  if ((v18 & 0xC000000000000001) != 0)
  {

    v14 = MEMORY[0x1E6911E60](0, v18);

    goto LABEL_6;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v18 + 32);

LABEL_6:
    v11 = v15;
    v8 = v54;
LABEL_7:
    v55 = v6;

    sub_1E324FBDC();
    OUTLINED_FUNCTION_6_30();
    v19(v1);
    v20 = v0;
    v21 = sub_1E41FFC94();
    v22 = v11;
    v23 = sub_1E4206814();

    if (os_log_type_enabled(v21, v23))
    {
      v51 = v22;
      v52 = v4;
      v53 = v9;
      v24 = OUTLINED_FUNCTION_100();
      v25 = OUTLINED_FUNCTION_164_1();
      v56[7] = v25;
      *v24 = 136315650;
      v26 = sub_1E40C50E8();
      OUTLINED_FUNCTION_38_8(v26, v27);
      OUTLINED_FUNCTION_11_5();

      OUTLINED_FUNCTION_118_12();
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      type metadata accessor for Route(0);
      OUTLINED_FUNCTION_11_5();

      v29 = MEMORY[0x1E6910C30](v28, v9);

      v30 = OUTLINED_FUNCTION_34();
      v33 = sub_1E3270FC8(v30, v31, v32);

      *(v24 + 14) = v33;
      *(v24 + 22) = 2080;
      v34 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v20);
      if (v34)
      {
        v35 = type metadata accessor for RoutingTransaction();
      }

      else
      {
        v35 = 0;
        v56[1] = 0;
        v56[2] = 0;
      }

      v56[0] = v34;
      v56[3] = v35;

      v37 = sub_1E3294FA4(v56);
      OUTLINED_FUNCTION_38_8(v37, v38);
      OUTLINED_FUNCTION_11_5();

      *(v24 + 24) = v29;
      _os_log_impl(&dword_1E323F000, v21, v23, "%spopToRootView: routes %s, transaction [%s]", v24, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_43_71();

      (*(v51 + 8))(v1, v53);
      v4 = v52;
    }

    else
    {

      v36 = *(v22 + 8);
      v25 = v22 + 8;
      v36(v1, v9);
    }

    OUTLINED_FUNCTION_4_0();
    v39 = swift_allocObject();
    OUTLINED_FUNCTION_101_15(v39);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_89();
    v40 = swift_allocObject();
    *(v40 + 16) = v25;
    *(v40 + 24) = v14;
    *(v40 + 32) = v8 & 1;
    *(v40 + 40) = v55;
    *(v40 + 48) = v4;
    v41 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x208);

    sub_1E34AF604(v55);
    v41(0, sub_1E40D6084, v40);

LABEL_14:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

void sub_1E40CB010()
{
  OUTLINED_FUNCTION_31_1();
  v27 = v1;
  v28 = v2;
  v29 = v3;
  v4 = OUTLINED_FUNCTION_187_4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  sub_1E324FBDC();
  OUTLINED_FUNCTION_48_4();
  v9(v8);

  v10 = v8;
  v11 = sub_1E41FFC94();
  v12 = sub_1E4206814();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_6_21();
    v26 = OUTLINED_FUNCTION_100();
    v30 = v26;
    *v13 = 136315138;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v15 = sub_1E40C50E8();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0xE000000000000000;
    }

    sub_1E3270FC8(v15, v17, &v30);
    OUTLINED_FUNCTION_50();

    *(v13 + 4) = v10;
    _os_log_impl(&dword_1E323F000, v11, v12, "%spopToRootView: popping", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_51_2();

    v20 = OUTLINED_FUNCTION_147_7();
    v21(v20, v4);
  }

  else
  {

    v18 = OUTLINED_FUNCTION_147_7();
    v19(v18, v4);
  }

  OUTLINED_FUNCTION_5_10();
  v22 = swift_allocObject();
  v22[2] = v0;
  v22[3] = v27;
  v22[4] = v28;
  OUTLINED_FUNCTION_26();
  v24 = *(v23 + 984);

  v25 = OUTLINED_FUNCTION_135();
  sub_1E34AF604(v25);
  v24(v29 & 1, sub_1E40D6DFC, v22);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CB270()
{
  OUTLINED_FUNCTION_31_1();
  v23 = v3;
  v5 = v4;
  v7 = v6;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_9();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v26 = v10;
  v27 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v25 = sub_1E4204014();
  v11 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_8();
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v24 = sub_1E4206A04();
  sub_1E4204004();
  sub_1E4204074();
  v13 = *(v11 + 8);
  v13(v2, v25);
  OUTLINED_FUNCTION_5_10();
  v14 = swift_allocObject();
  v14[2] = v7;
  v14[3] = v5;
  v14[4] = v23;
  v28[4] = sub_1E40D6E4C;
  v28[5] = v14;
  OUTLINED_FUNCTION_12_0();
  v28[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v28[2] = v15;
  v28[3] = &block_descriptor_211_0;
  v16 = _Block_copy(v28);

  sub_1E34AF604(v5);

  sub_1E4203FE4();
  v28[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_267();
  sub_1E3274C5C(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v19, v20);
  sub_1E42072E4();
  OUTLINED_FUNCTION_8_154();
  MEMORY[0x1E69112E0]();
  _Block_release(v16);

  v21 = OUTLINED_FUNCTION_16_80();
  v22(v21);
  (*(v26 + 8))(v0, v27);
  v13(v1, v25);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CB5B4()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v7 = v6;
  v81 = v8;
  v82 = v9;
  OUTLINED_FUNCTION_123_2();
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_68_1();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v71 - v17;
  v19 = OBJC_IVAR____TtC8VideosUI6Router_currentTransaction;
  if (!*(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v0) && sub_1E32AE9B0(v2))
  {
    v79 = v7;
    v76 = v3;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_12_7();
    v74 = v26;
    v75 = v27;
    v73 = v28;
    (v28)(v18);
    OUTLINED_FUNCTION_98_16();
    swift_bridgeObjectRetain_n();
    v78 = v0;
    v29 = v0;
    v30 = v10;
    v31 = sub_1E41FFC94();
    v32 = sub_1E4206814();

    v33 = os_log_type_enabled(v31, v32);
    v77 = v19;
    v80 = v30;
    if (v33)
    {
      v34 = OUTLINED_FUNCTION_49_0();
      v72 = OUTLINED_FUNCTION_100();
      v84 = v72;
      *v34 = 136446466;
      v35 = sub_1E40C50E8();
      OUTLINED_FUNCTION_49_1(v35, v36);
      OUTLINED_FUNCTION_11_5();

      *(v34 + 4) = v12;
      *(v34 + 12) = 2048;
      sub_1E32AE9B0(v2);
      OUTLINED_FUNCTION_60_1();

      *(v34 + 14) = v29;

      _os_log_impl(&dword_1E323F000, v31, v32, "%{public}sstarting to process push document data sources with initial count: %ld", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v72);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_13_4();

      v37 = *(v12 + 8);
      v38 = v18;
      v39 = v80;
    }

    else
    {

      OUTLINED_FUNCTION_98_16();
      swift_bridgeObjectRelease_n();
      v38 = OUTLINED_FUNCTION_21_42();
    }

    v72 = v37;
    v37(v38, v39);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();

    v41 = sub_1E37D027C(v40);

    OUTLINED_FUNCTION_4_0();
    v42 = swift_allocObject();
    *(v42 + 16) = v2;
    type metadata accessor for RoutingTransaction();
    OUTLINED_FUNCTION_58_41();
    v43 = swift_allocObject();
    sub_1E40C42B0();
    *(v43 + 66) = v81 & 1;
    swift_unknownObjectWeakAssign();
    *(v43 + 72) = v79;
    *(v43 + 80) = v5;

    v44 = OUTLINED_FUNCTION_24_4();
    sub_1E34AF604(v44);
    v45 = OUTLINED_FUNCTION_32_0();
    sub_1E34AF594(v45);
    if (v41)
    {
      v46 = OUTLINED_FUNCTION_99_0();
      sub_1E40CBBD4(v46, v47, v42);
    }

    else
    {
      v48 = v76;
      v49 = v80;
      v73(v76, v74, v80);
      v50 = v29;
      v51 = v48;
      v52 = sub_1E41FFC94();
      v53 = sub_1E4206814();

      if (os_log_type_enabled(v52, v53))
      {
        OUTLINED_FUNCTION_6_21();
        v54 = OUTLINED_FUNCTION_10_11();
        v82 = v12;
        v83 = v54;
        *v49 = 136446210;
        v51 = v50;
        v55 = sub_1E40C50E8();
        OUTLINED_FUNCTION_38_8(v55, v56);
        OUTLINED_FUNCTION_14_52();
        *(v49 + 4) = 0;
        OUTLINED_FUNCTION_137_10(&dword_1E323F000, v52, v53, "%{public}sno current route for handling pushViews transaction.");
        OUTLINED_FUNCTION_40_75();
        OUTLINED_FUNCTION_55();

        v57 = v48;
        v58 = v80;
      }

      else
      {

        v57 = v48;
        v58 = v49;
      }

      v72(v57, v58);
      OUTLINED_FUNCTION_4_0();
      v59 = swift_allocObject();
      OUTLINED_FUNCTION_105_2(v59);
      swift_weakInit();
      OUTLINED_FUNCTION_4_0();
      v60 = swift_allocObject();
      OUTLINED_FUNCTION_101_15(v60);
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_10_9();
      v61 = swift_allocObject();
      v61[2] = v53;
      v61[3] = v51;
      v61[4] = v42;
      v61[5] = v50;
      v82 = *(v43 + 16);
      v62 = v50;
      v63 = *(v43 + 56);
      *(v43 + 16) = sub_1E40D6094;
      *(v43 + 24) = v61;
      *(v43 + 32) = 0u;
      *(v43 + 48) = 0u;
      v64 = *(v43 + 64);
      *(v43 + 64) = 1;
      v65 = v62;

      OUTLINED_FUNCTION_67_31();
      sub_1E40D60A0(v66, v67, v68, v69, v70, v63, v64);

      *&v77[v78] = v43;
    }

    goto LABEL_20;
  }

  if (v2 >> 62)
  {
    if (!sub_1E4207384())
    {
      goto LABEL_4;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    v82 = v5;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_12_7();
    v20(v1);
    v21 = v0;
    v22 = sub_1E41FFC94();
    v23 = sub_1E4206814();

    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_6_21();
      v84 = OUTLINED_FUNCTION_10_11();
      *v2 = 136446210;
      v24 = sub_1E40C50E8();
      OUTLINED_FUNCTION_49_1(v24, v25);
      OUTLINED_FUNCTION_14_52();
      *(v2 + 4) = v21;
      OUTLINED_FUNCTION_137_10(&dword_1E323F000, v22, v23, "%{public}sdocumentDataSources is empty, nothing to do.");
      OUTLINED_FUNCTION_40_75();
      OUTLINED_FUNCTION_55();
    }

    (*(v12 + 8))(v1, v10);
  }

  if (v7)
  {
    v7(v16);
  }

LABEL_20:
  OUTLINED_FUNCTION_25_2();
}