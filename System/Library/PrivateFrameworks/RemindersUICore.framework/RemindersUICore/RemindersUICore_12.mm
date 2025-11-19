void TTRRemindersListInteractor.indentUncommittedReminder(with:changes:paramsForREMManualOrdering:)(void *a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v79 = *MEMORY[0x277D85DE8];
  v6 = a3[1];
  v75 = *a3;
  v76 = v6;
  v7 = a3[3];
  v77 = a3[2];
  v78 = v7;
  v8 = MEMORY[0x277D84F90];
  *&v74[0] = MEMORY[0x277D84F90];
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = (a2 + 32);
    v11 = *(a2 + 16);
    do
    {
      v12 = *v10;
      MEMORY[0x223D42D80]();
      if (*((*&v74[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v74[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v10 += 2;
      --v11;
    }

    while (v11);
    v13 = *&v74[0];
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v14 = sub_21D19ED08(v13);

  *&v74[0] = v8;
  if (v9)
  {
    v15 = (a2 + 40);
    v16 = v9;
    do
    {
      v17 = *v15;
      MEMORY[0x223D42D80]();
      if (*((*&v74[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v74[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v15 += 2;
      --v16;
    }

    while (v16);
    v8 = *&v74[0];
  }

  v18 = sub_21D198698(v14);

  *&v74[0] = v18;
  sub_21D562328(v8);
  v19 = *(v4 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  sub_21D0D8CF0(0, &qword_280D17880);
  v20 = sub_21DBFA5DC();

  *&v74[0] = 0;
  v21 = [v19 fetchRemindersIncludingUnsupportedWithObjectIDs:v20 error:v74];

  v22 = *&v74[0];
  if (v21)
  {
    sub_21D0D8CF0(0, &qword_280D17860);
    sub_21D19F2B8(&qword_280D17870, &qword_280D17880);
    v23 = sub_21DBF9E6C();
    v24 = v22;

    v25 = [a1 saveRequest];
    v26 = v25;
    if (!v9)
    {
      v69 = MEMORY[0x277D84F90];
      goto LABEL_52;
    }

    v27 = 0;
    v28 = a2 + 40;
    v29 = v23 & 0xC000000000000001;
    v69 = MEMORY[0x277D84F90];
    v30 = v23;
    v71 = v9;
    v72 = v28;
    v68 = v25;
    while (1)
    {
      v31 = (v28 + 16 * v27);
      v32 = v27;
      while (1)
      {
        if (v32 >= v9)
        {
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v27 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_55;
        }

        v34 = *(v31 - 1);
        v33 = *v31;
        if (v29)
        {
          break;
        }

        v45 = *(v30 + 16);
        v46 = v34;
        v47 = v33;
        if (v45)
        {
          v48 = sub_21D17E07C(v46);
          if (v49)
          {
            v73 = v32 + 1;
            v37 = *(*(v30 + 56) + 8 * v48);
            v28 = v72;
            if (!v37)
            {
              goto LABEL_34;
            }

            goto LABEL_26;
          }
        }

        v23 = v34;
LABEL_19:
        v28 = v72;
LABEL_20:

        ++v32;
        v31 += 2;
        if (v27 == v9)
        {
          v26 = v68;
          goto LABEL_52;
        }
      }

      v35 = v34;
      v36 = v33;
      if (!sub_21DBFC2CC())
      {
        v23 = v34;
        goto LABEL_20;
      }

      v73 = v32 + 1;
      swift_dynamicCast();
      v37 = *&v74[0];
      if (!*&v74[0])
      {
LABEL_34:
        v23 = v34;
        v9 = v71;
        v27 = v73;
        goto LABEL_20;
      }

LABEL_26:
      v38 = v29;
      v39 = v30;
      sub_21D0D8CF0(0, &qword_280D17680);
      v40 = [a1 objectID];
      v41 = sub_21DBFB63C();

      if (v41)
      {
        v67 = a1;

        v26 = v68;
        v30 = v39;
        v9 = v71;
        v29 = v38;
        v23 = v37;
        v27 = v73;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_41;
        }

        goto LABEL_46;
      }

      if (v38)
      {
        break;
      }

      v29 = 0;
      v30 = v39;
      v50 = *(v39 + 16);
      v9 = v71;
      v23 = v37;
      v27 = v73;
      if (!v50)
      {
        goto LABEL_39;
      }

      v51 = sub_21D17E07C(v33);
      if ((v52 & 1) == 0)
      {
        goto LABEL_39;
      }

      v44 = *(*(v30 + 56) + 8 * v51);
      if (!v44)
      {
        goto LABEL_39;
      }

LABEL_45:
      v26 = v68;
      v56 = v44;
      v67 = [v68 updateReminder_];

      v28 = v72;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_41;
      }

LABEL_46:
      v69 = sub_21D211328(0, v69[2] + 1, 1, v69);
LABEL_41:
      v54 = v69[2];
      v53 = v69[3];
      if (v54 >= v53 >> 1)
      {
        v69 = sub_21D211328((v53 > 1), v54 + 1, 1, v69);
      }

      v69[2] = v54 + 1;
      v55 = &v69[2 * v54];
      v55[4] = v23;
      v55[5] = v67;
      if (v27 == v9)
      {
LABEL_52:

        v74[0] = v75;
        v74[1] = v76;
        v74[2] = v77;
        v74[3] = v78;
        sub_21D1E8E68(v69, v26, 0, v74);

        return;
      }
    }

    v42 = v33;
    v43 = sub_21DBFC2CC();

    v29 = v38;
    v30 = v39;
    v9 = v71;
    v23 = v37;
    v27 = v73;
    if (v43)
    {
      swift_dynamicCast();
      v44 = *&v74[0];
      if (*&v74[0])
      {
        goto LABEL_45;
      }
    }

LABEL_39:

    v33 = v34;
    goto LABEL_19;
  }

  v57 = *&v74[0];
  v23 = sub_21DBF52DC();

  swift_willThrow();
  if (qword_280D17ED0 != -1)
  {
LABEL_56:
    swift_once();
  }

  v58 = sub_21DBF84BC();
  __swift_project_value_buffer(v58, qword_280D0F228);
  v59 = v23;
  v60 = sub_21DBF84AC();
  v61 = sub_21DBFAEBC();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v74[0] = v63;
    *v62 = 136315138;
    swift_getErrorValue();
    v64 = sub_21DBFC75C();
    v66 = sub_21D0CDFB4(v64, v65, v74);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_21D0C9000, v60, v61, "indentUncommittedReminder error: Failed to fetch reminders {error: %s}", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x223D46520](v63, -1, -1);
    MEMORY[0x223D46520](v62, -1, -1);
  }

  else
  {
  }
}

void TTRRemindersListInteractor.makeTask(_:paramsForREMManualOrdering:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v124 = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v120 = *a2;
  v6 = a2[2];
  v7 = a2[3];
  v121 = v5;
  v122 = v6;
  v123 = v7;
  *&v119[0] = MEMORY[0x277D84F90];
  v8 = *(a1 + 16);
  v113 = v8;
  if (v8)
  {
    v9 = (a1 + 56);
    do
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = *(v9 - 3);
      v14 = v10;
      v15 = v12;
      v16 = v13;
      v17 = sub_21DBF8E0C();
      MEMORY[0x223D42D80](v17);
      if (*((*&v119[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v119[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v18 = v16;
      v19 = v14;

      MEMORY[0x223D42D80]();
      if (*((*&v119[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v119[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      v9 += 4;
      sub_21DBFA6CC();
      v20 = v18;
      v21 = v19;
      sub_21DBF8E0C();

      sub_21D562328(v11);

      --v8;
    }

    while (v8);
    v8 = v113;
  }

  v22 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  sub_21D0D8CF0(0, &qword_280D17880);
  v23 = sub_21DBFA5DC();

  *&v119[0] = 0;
  v24 = [v22 fetchRemindersWithObjectIDs:v23 error:v119];

  v25 = *&v119[0];
  if (v24)
  {
    sub_21D0D8CF0(0, &qword_280D17860);
    sub_21D19F2B8(&qword_280D17870, &qword_280D17880);
    v26 = sub_21DBF9E6C();
    v27 = v25;

    v28 = sub_21DBF8E0C();
    v29 = sub_21D1E1A6C(v28);
    v114 = v26;

    v30 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    REMSaveRequest.prepareForMutatingOrder(in:needsRefresh:)(v29, 1);
    [v30 setNotifyChangeDelegate_];

    if (!v8)
    {
      v111 = MEMORY[0x277D84F90];
      goto LABEL_76;
    }

    v31 = 0;
    v115 = v26 & 0xC000000000000001;
    v32 = a1 + 56;
    v111 = MEMORY[0x277D84F90];
    v110 = v30;
    v107 = a1 + 56;
    while (1)
    {
      v33 = (v32 + 32 * v31);
      v34 = v31;
      while (1)
      {
        if (v34 >= v8)
        {
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_79;
        }

        v35 = *(v33 - 3);
        v37 = *(v33 - 2);
        v38 = *v33;
        v116 = *v33;
        v117 = *(v33 - 1);
        if (v115)
        {
          v39 = v38;
          v40 = v35;
          v41 = v37;
          sub_21DBF8E0C();
          v42 = sub_21DBFC2CC();

          if (!v42)
          {
            goto LABEL_34;
          }

          v118 = v42;
          swift_dynamicCast();
          v43 = *&v119[0];
          if (!*&v119[0])
          {
            goto LABEL_34;
          }

          v44 = v41;
          v45 = sub_21DBFC2CC();

          if (v45)
          {
            v118 = v45;
            swift_dynamicCast();
            v46 = *&v119[0];
            if (*&v119[0])
            {
              break;
            }
          }

          goto LABEL_22;
        }

        v54 = *(v114 + 16);
        v55 = v38;
        v56 = v35;
        v57 = v37;
        v36 = v34 + 1;
        sub_21DBF8E0C();
        if (!v54 || (v58 = sub_21D17E07C(v56), (v59 & 1) == 0) || (v60 = *(*(v114 + 56) + 8 * v58), v61 = v60, !v60))
        {
LABEL_34:
          if (qword_280D17ED0 != -1)
          {
            swift_once();
          }

          v64 = sub_21DBF84BC();
          __swift_project_value_buffer(v64, qword_280D0F228);
          v49 = v35;
          v43 = sub_21DBF84AC();
          v65 = sub_21DBFAEBC();

          if (os_log_type_enabled(v43, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            *v66 = 138412290;
            *(v66 + 4) = v49;
            *v67 = v49;
            v49 = v49;
            _os_log_impl(&dword_21D0C9000, v43, v65, "makeTask error: target reminder not fetched {objectID: %@}", v66, 0xCu);
            sub_21D0CF7E0(v67, &unk_27CE60070);
            v68 = v67;
            v8 = v113;
            MEMORY[0x223D46520](v68, -1, -1);
            MEMORY[0x223D46520](v66, -1, -1);
          }

          v35 = v37;
          goto LABEL_14;
        }

        v43 = v61;
        if (*(v114 + 16))
        {
          v62 = sub_21D17E07C(v57);
          if (v63)
          {
            v46 = *(*(v114 + 56) + 8 * v62);
            if (v46)
            {
              break;
            }
          }
        }

LABEL_22:
        if (qword_280D17ED0 != -1)
        {
          swift_once();
        }

        v47 = sub_21DBF84BC();
        __swift_project_value_buffer(v47, qword_280D0F228);
        v48 = v37;
        v49 = sub_21DBF84AC();
        v50 = sub_21DBFAEBC();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *v51 = 138412290;
          *(v51 + 4) = v48;
          *v52 = v48;
          v48 = v48;
          _os_log_impl(&dword_21D0C9000, v49, v50, "makeTask error: siblingBefore not fetched {objectID: %@}", v51, 0xCu);
          sub_21D0CF7E0(v52, &unk_27CE60070);
          v53 = v52;
          v8 = v113;
          MEMORY[0x223D46520](v53, -1, -1);
          MEMORY[0x223D46520](v51, -1, -1);
        }

LABEL_14:
        ++v34;
        v33 += 4;
        if (v36 == v8)
        {
          v30 = v110;
          goto LABEL_76;
        }
      }

      v103 = v46;
      v105 = v36;
      *&v119[0] = MEMORY[0x277D84F90];
      if (v117 >> 62)
      {
        v69 = v117 & 0xFFFFFFFFFFFFFF8;
        v70 = sub_21DBFBD7C();
        if (!v70)
        {
          goto LABEL_64;
        }

LABEL_40:
        v71 = 0;
        v33 = (v117 & 0xC000000000000001);
        v106 = MEMORY[0x277D84F90];
        v108 = v69;
        v109 = v70;
LABEL_41:
        v72 = v71;
        while (1)
        {
          if (v33)
          {
            v73 = MEMORY[0x223D44740](v72, v117);
          }

          else
          {
            if (v72 >= *(v69 + 16))
            {
              goto LABEL_81;
            }

            v73 = *(v117 + 8 * v72 + 32);
          }

          v74 = v73;
          v71 = v72 + 1;
          if (__OFADD__(v72, 1))
          {
            break;
          }

          v112 = v72;
          if (v115)
          {
            v75 = v73;
            v76 = sub_21DBFC2CC();

            if (v76)
            {
              swift_dynamicCast();
              if (v118)
              {
                goto LABEL_59;
              }
            }
          }

          else if (*(v114 + 16))
          {
            v77 = sub_21D17E07C(v73);
            if (v78)
            {
              if (*(*(v114 + 56) + 8 * v77))
              {
LABEL_59:

                MEMORY[0x223D42D80]();
                if (*((*&v119[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v119[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_21DBFA63C();
                }

                sub_21DBFA6CC();
                v106 = *&v119[0];
                v8 = v113;
                if (v71 != v70)
                {
                  goto LABEL_41;
                }

                goto LABEL_65;
              }
            }
          }

          if (qword_280D17ED0 != -1)
          {
            swift_once();
          }

          v79 = sub_21DBF84BC();
          __swift_project_value_buffer(v79, qword_280D0F228);
          v80 = v74;
          v81 = sub_21DBF84AC();
          v82 = sub_21DBFAEBC();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v84 = v33;
            v85 = swift_slowAlloc();
            *v83 = 138412290;
            *(v83 + 4) = v80;
            *v85 = v80;
            v86 = v80;
            _os_log_impl(&dword_21D0C9000, v81, v82, "makeTask error: subtask not fetched {objectID: %@}", v83, 0xCu);
            sub_21D0CF7E0(v85, &unk_27CE60070);
            v87 = v85;
            v33 = v84;
            MEMORY[0x223D46520](v87, -1, -1);
            v88 = v83;
            v69 = v108;
            v70 = v109;
            MEMORY[0x223D46520](v88, -1, -1);
          }

          v72 = v112 + 1;
          v8 = v113;
          if (v71 == v70)
          {
            goto LABEL_65;
          }
        }

LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v69 = v117 & 0xFFFFFFFFFFFFFF8;
      v70 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v70)
      {
        goto LABEL_40;
      }

LABEL_64:
      v106 = MEMORY[0x277D84F90];
LABEL_65:
      v30 = v110;
      v89 = [v110 updateReminder_];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v111 = sub_21D211484(0, v111[2] + 1, 1, v111);
      }

      v31 = v105;
      v91 = v111[2];
      v90 = v111[3];
      if (v91 >= v90 >> 1)
      {
        v111 = sub_21D211484((v90 > 1), v91 + 1, 1, v111);
      }

      v111[2] = v91 + 1;
      v92 = &v111[4 * v91];
      v92[4] = v89;
      v92[5] = v104;
      v32 = v107;
      v92[6] = v106;
      v92[7] = v116;
      if (v105 == v8)
      {
LABEL_76:

        v119[0] = v120;
        v119[1] = v121;
        v119[2] = v122;
        v119[3] = v123;
        sub_21D1EAAB8(v111, v30, 1, v119);

        return;
      }
    }
  }

  v93 = *&v119[0];
  v33 = sub_21DBF52DC();

  swift_willThrow();
  if (qword_280D17ED0 != -1)
  {
LABEL_82:
    swift_once();
  }

  v94 = sub_21DBF84BC();
  __swift_project_value_buffer(v94, qword_280D0F228);
  v95 = v33;
  v96 = sub_21DBF84AC();
  v97 = sub_21DBFAEBC();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *&v119[0] = v99;
    *v98 = 136315138;
    swift_getErrorValue();
    v100 = sub_21DBFC74C();
    v102 = sub_21D0CDFB4(v100, v101, v119);

    *(v98 + 4) = v102;
    _os_log_impl(&dword_21D0C9000, v96, v97, "makeTask error: Failed to fetch reminders {error: %s}", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v99);
    MEMORY[0x223D46520](v99, -1, -1);
    MEMORY[0x223D46520](v98, -1, -1);
  }

  else
  {
  }
}

void sub_21D1EAAB8(uint64_t a1, char *a2, int a3, __int128 *a4)
{
  v111 = a3;
  v131 = sub_21DBF6D7C();
  v133 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v132 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58990);
  v119 = *(v8 - 8);
  v120 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v107 - v9;
  v116 = sub_21DBF563C();
  MEMORY[0x28223BE20](v116);
  v115 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a4[1];
  v142 = *a4;
  v143 = v13;
  v14 = a4[3];
  v144 = a4[2];
  v145 = v14;
  v112 = a1;
  v15 = *(a1 + 16);
  v117 = v10;
  v122 = v15;
  if (!v15)
  {
LABEL_29:
    v56 = v142;
    if (v142)
    {
      v58 = *(&v142 + 1);
      v57 = v143;
      v59 = BYTE8(v143);
      v60 = v144;
      LODWORD(v116) = WORD4(v144);
      v61 = *(&v145 + 1);
      v115 = v145;
      *&v118 = v143;
      if (v15)
      {
        LODWORD(v113) = BYTE8(v143);
        *&v140[0] = MEMORY[0x277D84F90];
        v114 = v142;
        sub_21DBF8E0C();
        v110 = v58;
        sub_21DBF8E0C();
        v62 = v57;
        v108 = v60;
        v63 = v60;
        v109 = v61;
        sub_21DBF8E0C();
        sub_21D18EA40(0, v15, 0);
        v64 = 0;
        v65 = *&v140[0];
        v123 = a2;
        v124 = (v112 + 32);
        v66 = v117;
        while (1)
        {
          v129 = v64;
          v130 = v65;
          v67 = &v124[32 * v64];
          v68 = *v67;
          v69 = *(v67 + 1);
          v70 = *(v67 + 2);
          v127 = *(v67 + 3);
          v71 = v68;
          v72 = v69;
          sub_21DBF8E0C();
          v73 = [v71 objectID];
          sub_21DBFADFC();

          v128 = v71;
          [v71 isCompleted];
          sub_21DBF6D4C();
          v74 = [v72 objectID];
          if (v70 >> 62)
          {
            v75 = sub_21DBFBD7C();
            if (v75)
            {
LABEL_34:
              *&v137 = MEMORY[0x277D84F90];
              sub_21D18E718(0, v75 & ~(v75 >> 63), 0);
              if (v75 < 0)
              {
                goto LABEL_58;
              }

              v125 = v74;
              v126 = v72;
              v76 = 0;
              v77 = v137;
              do
              {
                if ((v70 & 0xC000000000000001) != 0)
                {
                  v78 = MEMORY[0x223D44740](v76, v70);
                }

                else
                {
                  v78 = *(v70 + 8 * v76 + 32);
                }

                v79 = v78;
                v80 = [v78 objectID];
                sub_21DBFADFC();

                [v79 isCompleted];
                v81 = v132;
                sub_21DBF6D4C();

                *&v137 = v77;
                v83 = *(v77 + 16);
                v82 = *(v77 + 24);
                if (v83 >= v82 >> 1)
                {
                  sub_21D18E718(v82 > 1, v83 + 1, 1);
                  v81 = v132;
                  v77 = v137;
                }

                ++v76;
                *(v77 + 16) = v83 + 1;
                (*(v133 + 32))(v77 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v83, v81, v131);
              }

              while (v75 != v76);

              v66 = v117;
              v15 = v122;
              v74 = v125;
              goto LABEL_45;
            }
          }

          else
          {
            v75 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v75)
            {
              goto LABEL_34;
            }
          }

          v77 = MEMORY[0x277D84F90];
LABEL_45:
          v84 = *(v120 + 64);
          *(v66 + *(v120 + 48)) = v74;
          *(v66 + v84) = v77;
          v85 = v129;
          v65 = v130;
          *&v140[0] = v130;
          v87 = v130[2];
          v86 = v130[3];
          if (v87 >= v86 >> 1)
          {
            sub_21D18EA40(v86 > 1, v87 + 1, 1);
            v65 = *&v140[0];
          }

          v64 = v85 + 1;
          v65[2] = v87 + 1;
          sub_21D0D523C(v66, v65 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v87, &qword_27CE58990);
          a2 = v123;
          if (v64 == v15)
          {
            v56 = v114;
            v59 = v113;
            v61 = v109;
            v58 = v110;
            v60 = v108;
            goto LABEL_50;
          }
        }
      }

      v88 = v143;
      v89 = v60;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v65 = MEMORY[0x277D84F90];
LABEL_50:
      sub_21D0D8CF0(0, &qword_27CE59830);
      v90 = v60;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v91 = sub_21D39B7F8(v90, v116, v115, v61, v56, v58, v65);
      v141 = 0;
      memset(v140, 0, sizeof(v140));
      sub_21D0D3954(v140, &v137, &unk_27CE60D80);
      if (v59)
      {
        v92 = a2;
        v93 = v118;
        v94 = [v92 updateTemplate_];
        sub_21D0CF7E0(v140, &unk_27CE60D80);
        type metadata accessor for TTRTemplateEditor();
        inited = swift_initStackObject();
        *(inited + 16) = v94;
        v96 = v139;
        v97 = v138;
        *(inited + 24) = v137;
        *(inited + 40) = v97;
        *(inited + 56) = v96;
        *(inited + 64) = 0;
        LOBYTE(v134) = 4;
        sub_21D866814(v91);
        v98 = *MEMORY[0x277D44BF0];
        LOBYTE(v134) = 1;
        sub_21D863CB4(v98);
      }

      else
      {
        v92 = a2;
        v93 = v118;
        v99 = [v92 updateSmartList_];
        sub_21D0CF7E0(v140, &unk_27CE60D80);
        type metadata accessor for TTRSmartListEditor();
        inited = swift_initStackObject();
        *(inited + 16) = v99;
        v100 = v139;
        v101 = v138;
        *(inited + 24) = v137;
        *(inited + 40) = v101;
        *(inited + 56) = v100;
        *(inited + 64) = 0;
        LOBYTE(v134) = 4;
        sub_21D6532B4(v91);
        v102 = *MEMORY[0x277D44BF0];
        LOBYTE(v134) = 1;
        sub_21D64F7E4(v102);
      }

      swift_setDeallocating();

      sub_21D0CF7E0(inited + 24, &unk_27CE60D80);
      sub_21D0CF7E0(&v142, &qword_27CE59DD8);
    }

    if (v111)
    {
      v103 = *(v121 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 24);
      v104 = *(v121 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 32);
      __swift_project_boxed_opaque_existential_1((v121 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer), v103);
      v105 = swift_allocObject();
      *(v105 + 16) = v112;
      v106 = *(v104 + 16);
      sub_21DBF8E0C();
      v106(a2, sub_21D22D1A4, v105, v103, v104);
    }

    return;
  }

  v16 = 0;
  v123 = (v112 + 32);
  v114 = (v11 + 8);
  *(&v17 + 1) = 3;
  v118 = xmmword_21DC09CF0;
  *&v17 = 138412290;
  v113 = v17;
  while (1)
  {
    v18 = v15;
    v19 = &v123[32 * v16];
    v20 = *v19;
    v21 = *(v19 + 1);
    v22 = *(v19 + 2);
    v129 = *(v19 + 3);
    v23 = v129;
    v24 = v20;
    v25 = v21;
    sub_21DBF8E0C();
    v26 = [v24 listChangeItem];
    if (v26)
    {
      break;
    }

    v15 = v18;
LABEL_4:
    v16 = v16 + 1;

    if (v16 == v15)
    {
      goto LABEL_29;
    }
  }

  v27 = v26;
  v130 = v24;
  v127 = v23;
  v126 = [a2 updateReminder_];
  if (v22 >> 62)
  {
    v28 = sub_21DBFBD7C();
  }

  else
  {
    v28 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v125 = v16;
  v128 = v25;
  if (!v28)
  {

    v33 = MEMORY[0x277D84F90];
    v15 = v18;
    goto LABEL_17;
  }

  *&v140[0] = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  if ((v28 & 0x8000000000000000) == 0)
  {
    v29 = 0;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x223D44740](v29, v22);
      }

      else
      {
        v30 = *(v22 + 8 * v29 + 32);
      }

      v31 = v30;
      ++v29;
      v32 = [a2 updateReminder_];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v28 != v29);

    v33 = *&v140[0];
    v15 = v122;
    v16 = v125;
LABEL_17:
    v34 = v27;
    TTRRemindersListInteractor.undoContext.getter(v140);
    sub_21D0D3954(v140, &v137, &unk_27CE60D80);
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    v35 = qword_280D1AA18;
    sub_21D0CF7E0(v140, &unk_27CE60D80);
    type metadata accessor for TTRListEditor();
    v36 = swift_initStackObject();
    v135 = type metadata accessor for TTRUserDefaults();
    v136 = &protocol witness table for TTRUserDefaults;
    *&v134 = v35;
    *(v36 + 64) = 0;
    v124 = v34;
    *(v36 + 16) = v34;
    *(v36 + 56) = v139;
    v37 = v137;
    *(v36 + 40) = v138;
    *(v36 + 24) = v37;
    swift_beginAccess();
    *(v36 + 64) = 0;
    sub_21D0D0FD0(&v134, v36 + 72);
    v38 = v126;
    *&v134 = v126;
    BYTE8(v134) = 1;
    v39 = v35;
    v126 = v38;
    v40 = v130;
    TTRListEditor.moveWithinList(_:togetherWith:position:)(v130, v33, &v134);

    sub_21D157478(v134, BYTE8(v134));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v41 = swift_initStackObject();
    *(v41 + 16) = v118;
    *(v41 + 32) = [v40 objectID];
    sub_21D1CE198(v41);
    v43 = v42;
    swift_setDeallocating();
    swift_arrayDestroy();
    v44 = *(v36 + 16);
    v45 = [v44 sectionsContextChangeItem];
    if (v45)
    {
      v46 = v45;
      v47 = v127;
      v48 = v127;
      v49 = v115;
      sub_21DBF560C();
      sub_21D0D8CF0(0, &qword_27CE59228);
      sub_21DBF815C();

      (*v114)(v49, v116);
      v50 = v126;
    }

    else
    {
      v129 = v43;
      if (qword_27CE56580 != -1)
      {
        swift_once();
      }

      v51 = sub_21DBF84BC();
      __swift_project_value_buffer(v51, qword_27CE591E0);

      v46 = sub_21DBF84AC();
      v52 = sub_21DBFAECC();

      if (os_log_type_enabled(v46, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = v113;
        v55 = [v44 objectID];
        *(v53 + 4) = v55;
        *v54 = v55;
        _os_log_impl(&dword_21D0C9000, v46, v52, "Failed to update memberships of reminders in sections because list does not support sections {listID: %@}", v53, 0xCu);
        sub_21D0CF7E0(v54, &unk_27CE60070);
        MEMORY[0x223D46520](v54, -1, -1);
        MEMORY[0x223D46520](v53, -1, -1);

        v16 = v125;
LABEL_27:
        v23 = v130;
        goto LABEL_4;
      }

      v16 = v125;
      v50 = v126;
      v47 = v127;
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_58:
  __break(1u);
}

void TTRRemindersListInteractor.outdentUncommittedReminder(with:changes:paramsForREMManualOrdering:)(id a1, uint64_t a2, __int128 *a3)
{
  v178 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370);
  MEMORY[0x28223BE20](v6 - 8);
  v147 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v151 = &v141 - v9;
  v10 = a3[1];
  v174 = *a3;
  v175 = v10;
  v11 = a3[3];
  v176 = a3[2];
  v177 = v11;
  *&v170 = MEMORY[0x277D84F90];
  v12 = *(a2 + 16);
  v156 = a1;
  v157 = v12;
  if (v12)
  {
    v13 = (a2 + 56);
    do
    {
      v14 = *(v13 - 2);
      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = *(v13 - 3);
      v18 = v14;
      v19 = v16;
      v20 = v17;
      v21 = sub_21DBF8E0C();
      MEMORY[0x223D42D80](v21);
      if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
        a1 = v156;
      }

      sub_21DBFA6CC();
      v22 = v20;
      v23 = v18;

      MEMORY[0x223D42D80]();
      if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
        a1 = v156;
      }

      v13 += 4;
      sub_21DBFA6CC();
      v24 = v22;
      v25 = v23;
      sub_21DBF8E0C();

      sub_21D562328(v15);

      v12 = (v12 - 1);
    }

    while (v12);
    v12 = v157;
  }

  v26 = *(v154 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  sub_21D0D8CF0(0, &qword_280D17880);
  v27 = sub_21DBFA5DC();

  *&v170 = 0;
  v28 = [v26 fetchRemindersWithObjectIDs:v27 error:&v170];

  v29 = v170;
  if (!v28)
  {
    v97 = v170;
    v28 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D17ED0 == -1)
    {
      goto LABEL_79;
    }

    goto LABEL_120;
  }

  v30 = sub_21D0D8CF0(0, &qword_280D17860);
  sub_21D19F2B8(&qword_280D17870, &qword_280D17880);
  v148 = v30;
  v31 = sub_21DBF9E6C();
  v32 = v29;

  v33 = [a1 saveRequest];
  v35 = MEMORY[0x277D84F90];
  if (!v12)
  {
    v158 = MEMORY[0x277D84F90];
    goto LABEL_83;
  }

  v36 = 0;
  v160 = (v31 & 0xC000000000000001);
  v37 = v31 & 0xFFFFFFFFFFFFFF8;
  if (v31 < 0)
  {
    v37 = v31;
  }

  v152 = v37;
  v38 = a2 + 56;
  *&v34 = 138412290;
  v149 = v34;
  v158 = MEMORY[0x277D84F90];
  v155 = v31;
  v143 = a2 + 56;
  do
  {
    v39 = (v38 + 32 * v36);
    while (1)
    {
      if (v36 >= v12)
      {
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
        swift_once();
LABEL_79:
        v98 = sub_21DBF84BC();
        __swift_project_value_buffer(v98, qword_280D0F228);
        v99 = v28;
        v100 = sub_21DBF84AC();
        v101 = sub_21DBFAEBC();

        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          *&v170 = v103;
          *v102 = 136315138;
          swift_getErrorValue();
          v104 = sub_21DBFC74C();
          v106 = sub_21D0CDFB4(v104, v105, &v170);

          *(v102 + 4) = v106;
          _os_log_impl(&dword_21D0C9000, v100, v101, "outdentUncommittedReminder error: Failed to fetch reminders {error: %s}", v102, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v103);
          MEMORY[0x223D46520](v103, -1, -1);
          MEMORY[0x223D46520](v102, -1, -1);
        }

        else
        {
        }

        return;
      }

      if (__OFADD__(v36, 1))
      {
        goto LABEL_115;
      }

      v162 = (v36 + 1);
      v40 = *(v39 - 3);
      v41 = *(v39 - 2);
      v43 = *(v39 - 1);
      v42 = *v39;
      sub_21D0D8CF0(0, &qword_280D17680);
      v153 = v42;
      v161 = v42;
      v44 = v40;
      v45 = v41;
      v163 = v43;
      v46 = v44;
      sub_21DBF8E0C();
      v47 = v156;
      v28 = [v156 objectID];
      v48 = sub_21DBFB63C();

      if (v48)
      {
        v159 = v47;
        if (v160)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v160)
        {
          v28 = v46;
          v52 = sub_21DBFC2CC();

          if (!v52)
          {
            goto LABEL_39;
          }

          *&v167 = v52;
          swift_dynamicCast();
          v53 = v170;
          if (!v170)
          {
            goto LABEL_39;
          }
        }

        else if (!*(v155 + 16) || (v54 = sub_21D17E07C(v46), (v55 & 1) == 0) || (v53 = *(*(v155 + 56) + 8 * v54)) == 0)
        {
LABEL_39:
          if (qword_280D17ED0 != -1)
          {
            swift_once();
          }

          v64 = sub_21DBF84BC();
          __swift_project_value_buffer(v64, qword_280D0F228);
          v59 = v46;
          v46 = sub_21DBF84AC();
          v65 = sub_21DBFAEBC();

          if (os_log_type_enabled(v46, v65))
          {
            v28 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            *v28 = v149;
            *(v28 + 4) = v59;
            *v66 = v59;
            v59 = v59;
            _os_log_impl(&dword_21D0C9000, v46, v65, "outdentUncommittedReminder error: target reminder not fetched {objectID: %@}", v28, 0xCu);
            sub_21D0CF7E0(v66, &unk_27CE60070);
            MEMORY[0x223D46520](v66, -1, -1);
            MEMORY[0x223D46520](v28, -1, -1);
          }

          goto LABEL_16;
        }

        v159 = [v33 updateReminder_];

        if (v160)
        {
LABEL_21:
          v28 = v45;
          v49 = v45;
          v50 = sub_21DBFC2CC();

          v45 = v28;
          if (v50)
          {
            *&v167 = v50;
            swift_dynamicCast();
            v51 = v170;
            if (v170)
            {
              break;
            }
          }

          goto LABEL_35;
        }
      }

      if (*(v155 + 16))
      {
        v56 = sub_21D17E07C(v45);
        if (v57)
        {
          v51 = *(*(v155 + 56) + 8 * v56);
          if (v51)
          {
            break;
          }
        }
      }

LABEL_35:
      if (qword_280D17ED0 != -1)
      {
        swift_once();
      }

      v58 = sub_21DBF84BC();
      __swift_project_value_buffer(v58, qword_280D0F228);
      v59 = v45;
      v60 = sub_21DBF84AC();
      v61 = sub_21DBFAEBC();

      if (os_log_type_enabled(v60, v61))
      {
        v28 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v28 = v149;
        *(v28 + 4) = v59;
        *v62 = v59;
        v63 = v59;
        _os_log_impl(&dword_21D0C9000, v60, v61, "outdentUncommittedReminder error: siblingBefore not fetched {objectID: %@}", v28, 0xCu);
        sub_21D0CF7E0(v62, &unk_27CE60070);
        MEMORY[0x223D46520](v62, -1, -1);
        MEMORY[0x223D46520](v28, -1, -1);
      }

LABEL_16:

      ++v36;
      v39 += 4;
      v12 = v157;
      v35 = MEMORY[0x277D84F90];
      if (v162 == v157)
      {
        goto LABEL_83;
      }
    }

    v141 = v51;
    *&v170 = v35;
    v67 = v163;
    v68 = v163 & 0xFFFFFFFFFFFFFF8;
    if (v163 >> 62)
    {
      v88 = v163;
      v69 = sub_21DBFBD7C();
      v67 = v88;
      if (!v69)
      {
        goto LABEL_71;
      }

LABEL_46:
      v70 = 0;
      v28 = v67 & 0xC000000000000001;
      v142 = v35;
      v145 = v69;
      v146 = v45;
      v144 = v67 & 0xC000000000000001;
      while (1)
      {
        if (v28)
        {
          v71 = MEMORY[0x223D44740](v70, v67);
        }

        else
        {
          if (v70 >= *(v68 + 16))
          {
            goto LABEL_119;
          }

          v71 = *(v67 + 8 * v70 + 32);
        }

        v72 = v71;
        if (__OFADD__(v70, 1))
        {
          goto LABEL_118;
        }

        v161 = (v70 + 1);
        if (v160)
        {
          v73 = v71;
          v74 = sub_21DBFC2CC();

          if (!v74)
          {
            goto LABEL_58;
          }

          *&v164 = v74;
          swift_dynamicCast();
          if (!v167)
          {
            goto LABEL_58;
          }
        }

        else if (!*(v155 + 16) || (v75 = sub_21D17E07C(v71), (v76 & 1) == 0) || !*(*(v155 + 56) + 8 * v75))
        {
LABEL_58:
          if (qword_280D17ED0 != -1)
          {
            swift_once();
          }

          v77 = sub_21DBF84BC();
          __swift_project_value_buffer(v77, qword_280D0F228);
          v78 = v72;
          v79 = sub_21DBF84AC();
          v80 = sub_21DBFAEBC();

          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = v68;
            v83 = swift_slowAlloc();
            *v81 = v149;
            *(v81 + 4) = v78;
            *v83 = v78;
            v84 = v78;
            _os_log_impl(&dword_21D0C9000, v79, v80, "outdentUncommittedReminder error: subtask not fetched {objectID: %@}", v81, 0xCu);
            sub_21D0CF7E0(v83, &unk_27CE60070);
            v85 = v83;
            v68 = v82;
            v69 = v145;
            MEMORY[0x223D46520](v85, -1, -1);
            v86 = v81;
            v28 = v144;
            MEMORY[0x223D46520](v86, -1, -1);
          }

          ++v70;
          v87 = v161 == v69;
          goto LABEL_63;
        }

        MEMORY[0x223D42D80]();
        if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v142 = v170;
        v70 = v161;
        v87 = v161 == v69;
LABEL_63:
        v35 = MEMORY[0x277D84F90];
        v67 = v163;
        v45 = v146;
        if (v87)
        {
          goto LABEL_72;
        }
      }
    }

    v69 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v69)
    {
      goto LABEL_46;
    }

LABEL_71:
    v142 = v35;
LABEL_72:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v158 = sub_21D211484(0, v158[2] + 1, 1, v158);
    }

    v12 = v157;
    v90 = v158[2];
    v89 = v158[3];
    v36 = v162;
    if (v90 >= v89 >> 1)
    {
      v96 = sub_21D211484((v89 > 1), v90 + 1, 1, v158);
      v36 = v162;
      v158 = v96;
    }

    v91 = v158;
    v92 = v159;
    v158[2] = v90 + 1;
    v93 = &v91[4 * v90];
    v95 = v141;
    v94 = v142;
    v93[4] = v92;
    v93[5] = v95;
    v93[6] = v94;
    v93[7] = v153;
    v38 = v143;
  }

  while (v36 != v12);
LABEL_83:

  v159 = v158[2];
  if (v159)
  {
    v156 = OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_fixedUndoContext;
    v157 = v158 + 4;
    v107 = v154 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_delegate;
    swift_beginAccess();
    v108 = 0;
    v155 = v107;
    v150 = v33;
    do
    {
      if (v108 >= v158[2])
      {
        goto LABEL_116;
      }

      v109 = &v157[4 * v108];
      v110 = v109[1];
      v28 = v109[2];
      v163 = *v109;
      v111 = v110;
      sub_21DBF8E0C();
      v161 = v111;
      v160 = [v33 updateReminder_];
      if (v28 >> 62)
      {
        v112 = sub_21DBFBD7C();
        if (!v112)
        {
LABEL_98:

          v117 = MEMORY[0x277D84F90];
          goto LABEL_99;
        }
      }

      else
      {
        v112 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v112)
        {
          goto LABEL_98;
        }
      }

      *&v170 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      if (v112 < 0)
      {
        goto LABEL_117;
      }

      v113 = 0;
      do
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v114 = MEMORY[0x223D44740](v113, v28);
        }

        else
        {
          v114 = *(v28 + 8 * v113 + 32);
        }

        v115 = v114;
        ++v113;
        v116 = [v33 updateReminder_];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v112 != v113);

      v117 = v170;
LABEL_99:
      v118 = v163;
      v162 = [v163 listChangeItem];
      if (v162)
      {
        v119 = v117;
        v120 = v151;
        sub_21D0D3954(v156 + v154, v151, &qword_27CE59370);
        v121 = type metadata accessor for TTRRemindersListUndoContext();
        v122 = *(v121 - 8);
        v123 = *(v122 + 48);
        if (v123(v120, 1, v121) == 1)
        {
          v124 = v162;
          sub_21D0CF7E0(v120, &qword_27CE59370);
          v167 = 0u;
          v168 = 0u;
          v169 = 0;
          v125 = v155;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v126 = *(v125 + 8);
            ObjectType = swift_getObjectType();
            v128 = v147;
            (*(v126 + 8))(v154, &protocol witness table for TTRRemindersListInteractor, ObjectType, v126);
            swift_unknownObjectRelease();
            v129 = v128;
            if (v123(v128, 1, v121) != 1)
            {
              *(&v171 + 1) = v121;
              *&v172 = &protocol witness table for TTRRemindersListUndoContext;
              boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v170);
              sub_21D1073B0(v128, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListUndoContext);
LABEL_107:
              v28 = &unk_27CE60D80;
              if (*(&v168 + 1))
              {
                sub_21D0CF7E0(&v167, &unk_27CE60D80);
              }

LABEL_109:
              sub_21D0D3954(&v170, &v167, &unk_27CE60D80);
              if (qword_280D1AA10 != -1)
              {
                swift_once();
              }

              v133 = qword_280D1AA18;
              sub_21D0CF7E0(&v170, &unk_27CE60D80);
              type metadata accessor for TTRListEditor();
              inited = swift_initStackObject();
              v165 = type metadata accessor for TTRUserDefaults();
              v166 = &protocol witness table for TTRUserDefaults;
              *&v164 = v133;
              *(inited + 64) = 0;
              v135 = v162;
              *(inited + 16) = v162;
              *(inited + 56) = v169;
              v136 = v167;
              *(inited + 40) = v168;
              *(inited + 24) = v136;
              swift_beginAccess();
              *(inited + 64) = 0;
              sub_21D0D0FD0(&v164, inited + 72);
              v137 = v160;
              *&v164 = v160;
              BYTE8(v164) = 1;
              v138 = v133;
              v139 = v137;
              v140 = v163;
              TTRListEditor.moveWithinList(_:togetherWith:position:)(v163, v119, &v164);

              swift_setDeallocating();
              sub_21D0CF7E0(inited + 24, &unk_27CE60D80);
              __swift_destroy_boxed_opaque_existential_0(inited + 72);

              sub_21D157478(v164, BYTE8(v164));
              v33 = v150;
              goto LABEL_86;
            }
          }

          else
          {
            v129 = v147;
            (*(v122 + 56))(v147, 1, 1, v121);
          }

          sub_21D0CF7E0(v129, &qword_27CE59370);
          v170 = 0u;
          v171 = 0u;
          *&v172 = 0;
          goto LABEL_107;
        }

        *(&v168 + 1) = v121;
        v169 = &protocol witness table for TTRRemindersListUndoContext;
        v131 = __swift_allocate_boxed_opaque_existential_0(&v167);
        sub_21D1073B0(v120, v131, type metadata accessor for TTRRemindersListUndoContext);
        sub_21D0D0FD0(&v167, &v170);
        v132 = v162;
        v28 = &unk_27CE60D80;
        goto LABEL_109;
      }

LABEL_86:
      ++v108;
    }

    while (v108 != v159);
  }

  v170 = v174;
  v171 = v175;
  v172 = v176;
  v173 = v177;
  sub_21D1EAAB8(v158, v33, 0, &v170);
}

id TTRRemindersListInteractor.reminderChangeItem(forEditing:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v3 setNotifyChangeDelegate_];
  [v3 setSaveIsNoopIfNoChangedKeys_];
  v4 = [v3 updateReminder_];

  return v4;
}

void TTRRemindersListInteractor.newReminderChangeItems(params:targetContainer:position:remindersBeingSaved:)(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a2 + 16);
  v10 = *a3;
  v11 = *(a3 + 8);
  v67 = *a2;
  v68 = v9;
  sub_21D1ED28C(&v67, a4, &v69);
  if (!v70)
  {
    sub_21D0CF7E0(&v69, &qword_27CE597E8);
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return;
  }

  v59 = v5;
  sub_21D0D0FD0(&v69, v71);
  v12 = v72;
  v13 = v73;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  v14 = *(v13 + 8);
  sub_21D227D78(v10, v11);
  v15 = v14(v12, v13);
  if (v11 <= 1)
  {
    v18 = v15;
    if (v11)
    {
      v19 = [v15 updateReminder_];

      v20 = v10;
      v17 = 1;
      sub_21D227D8C(v20, 1u);
    }

    else
    {
      v19 = [v15 updateReminder_];

      sub_21D227D8C(v10, 0);
      v17 = 0;
    }

    v16 = v19;
  }

  else if (v11 == 2)
  {
    v16 = v10;

    v17 = 0;
  }

  else if (v11 == 3)
  {
    v16 = v10;

    v17 = 1;
  }

  else
  {
    v16 = v10 != 0;

    v17 = 2;
  }

  *&v69 = v7;
  BYTE8(v69) = v8;
  sub_21D1E46EC();
  v22 = v21;
  v23 = v21[2];
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v56 = v8;
    v57 = v7;
    v58 = a5;
    v66 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    if (!v22[2])
    {
LABEL_34:
      __break(1u);
      return;
    }

    v25 = v22[4];
    v26 = v22[5];
    v27 = v22[6];
    v60 = v23;
    v61 = v22;
    v29 = v72;
    v28 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    *&v67 = v16;
    BYTE8(v67) = v17;
    v30 = *(v28 + 24);
    v63 = v25;
    sub_21DBF8E0C();
    sub_21D157850(v16, v17);
    v31 = v30(v25, &v67, v26, v27, v29, v28);
    sub_21D157478(v67, BYTE8(v67));
    v32 = v31;
    sub_21D157478(v16, v17);

    sub_21DBFBFEC();
    sub_21DBFC03C();
    v33 = v61;
    sub_21DBFC04C();
    sub_21DBFBFFC();
    if (v60 != 1)
    {
      v34 = v61 + 9;
      v35 = 1;
      v36 = v32;
      while (v35 < v33[2])
      {
        ++v35;
        v37 = *(v34 - 2);
        v62 = *(v34 - 1);
        v38 = *v34;
        v34 += 3;
        v39 = v72;
        v40 = v73;
        __swift_project_boxed_opaque_existential_1(v71, v72);
        *&v67 = v36;
        BYTE8(v67) = 1;
        v41 = *(v40 + 24);
        v64 = v37;
        sub_21DBF8E0C();
        sub_21D157850(v36, 1u);
        v42 = v41(v37, &v67, v62, v38, v39, v40);
        sub_21D157478(v67, BYTE8(v67));
        v32 = v42;
        sub_21D157478(v36, 1u);

        sub_21DBFBFEC();
        sub_21DBFC03C();
        v33 = v61;
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v36 = v32;
        if (v60 == v35)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_34;
    }

LABEL_19:

    v43 = v66;
    v65 = 1;
    v44 = v32;
    v7 = v57;
    a5 = v58;
    v8 = v56;
    v24 = MEMORY[0x277D84F90];
  }

  else
  {
    v65 = v17;

    v43 = MEMORY[0x277D84F90];
    v44 = v16;
  }

  *&v69 = v7;
  BYTE8(v69) = v8;
  sub_21D1E46EC();
  v46 = v45;
  v47 = 0;
  *&v67 = v24;
  v48 = *(v45 + 16);
LABEL_22:
  v49 = 24 * v47 + 32;
  while (v48 != v47)
  {
    if (v47 >= *(v46 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    ++v47;
    v50 = *(v46 + v49);
    v49 += 24;
    if (v50)
    {
      v51 = v50;
      MEMORY[0x223D42D80]();
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v24 = v67;
      goto LABEL_22;
    }
  }

  v52 = sub_21D19ED08(v24);

  v53 = v59 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v54 = *(v53 + 8);
    ObjectType = swift_getObjectType();
    (*(v54 + 24))(v59, &protocol witness table for TTRRemindersListInteractor, v52, ObjectType, v54);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  *(a5 + 24) = &type metadata for TTRRemindersListInteractor.ReminderChangeItemGroup;
  *(a5 + 32) = &off_282EADB00;
  *a5 = v43;
  sub_21D157478(v44, v65);
  __swift_destroy_boxed_opaque_existential_0(v71);
}

double sub_21D1ED28C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = a2;
  v6 = a3;
  v8 = *a1;
  v7 = *(a1 + 8);
  if (!*(a1 + 16))
  {
    if (*(a1 + 8) > 1u)
    {
      if (*(a1 + 8) == 2)
      {
        v64 = a2;
        v65 = a3;
        Fallback = v8;
        v16 = 0;
LABEL_25:
        v43 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
        v44 = Fallback;
        TTRRemindersListInteractor.undoContext.getter(v74);
        v45 = type metadata accessor for ReminderContainerListEditor();
        v46 = swift_allocObject();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21DC09CF0;
        *(inited + 32) = v44;
        v48 = objc_allocWithZone(MEMORY[0x277D447D8]);
        v49 = v44;
        v50 = [v48 initWithStore_];
        REMSaveRequest.prepareForMutatingOrder(in:needsRefresh:)(inited, v16);
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_21D0D3954(v74, v73, &unk_27CE60D80);
        sub_21D0D3954(v73, v72, &unk_27CE60D80);
        v51 = [v50 updateList_];
        sub_21D0D3954(v72, &v69, &unk_27CE60D80);
        if (qword_280D1AA10 != -1)
        {
          swift_once();
        }

        v52 = qword_280D1AA18;
        sub_21D0CF7E0(v72, &unk_27CE60D80);
        type metadata accessor for TTRListEditor();
        v53 = swift_allocObject();
        v67 = type metadata accessor for TTRUserDefaults();
        v68 = &protocol witness table for TTRUserDefaults;
        *&v66 = v52;
        v54 = v52;
        sub_21D0CF7E0(v73, &unk_27CE60D80);
        *(v53 + 64) = 0;
        *(v53 + 16) = v51;
        v55 = v70;
        *(v53 + 24) = v69;
        *(v53 + 40) = v55;
        *(v53 + 56) = v71;
        swift_beginAccess();
        *(v53 + 64) = 0;
        sub_21D0D0FD0(&v66, v53 + 72);

        sub_21D0CF7E0(v74, &unk_27CE60D80);
        *(v46 + 16) = v53;
        v75 = v45;
        v76 = &off_282EADAD8;
        v74[0] = v46;
        v56 = [*(*(*__swift_project_boxed_opaque_existential_1(v74 v45) + 16) + 16)];
        [v56 setNotifyChangeDelegate_];

        goto LABEL_28;
      }

      Fallback = TTRRemindersListInteractor.fetchDefaultListOrCreateFallbackList()();
      if (!Fallback)
      {
        goto LABEL_31;
      }

      v64 = v5;
      v65 = v6;
    }

    else
    {
      if (!*(a1 + 8))
      {
        Fallback = sub_21D20574C(*a1);
        if (!Fallback)
        {
          goto LABEL_31;
        }

        v64 = v5;
        v65 = v6;
        v16 = 0;
        goto LABEL_25;
      }

      v64 = a2;
      v65 = a3;
      Fallback = v8;
    }

    v16 = 1;
    goto LABEL_25;
  }

  if (*(a1 + 16) != 1)
  {
    if (*(a1 + 8))
    {
      if (*(a1 + 8) != 1)
      {
        goto LABEL_31;
      }

      v17 = TTRRemindersListInteractor.fetchDefaultListOrCreateFallbackList()();
      if (!v17)
      {
        goto LABEL_31;
      }

      v64 = v5;
      v65 = v6;
      v18 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
      v19 = v17;
      TTRRemindersListInteractor.undoContext.getter(v74);
      v20 = type metadata accessor for ReminderContainerListEditor();
      v62 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_21DC09CF0;
      *(v21 + 32) = v19;
      v22 = objc_allocWithZone(MEMORY[0x277D447D8]);
      v23 = v19;
      v24 = [v22 initWithStore_];
      REMSaveRequest.prepareForMutatingOrder(in:needsRefresh:)(v21, 1);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_21D0D3954(v74, v73, &unk_27CE60D80);
      sub_21D0D3954(v73, v72, &unk_27CE60D80);
      v25 = [v24 updateList_];
      sub_21D0D3954(v72, &v69, &unk_27CE60D80);
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      v26 = qword_280D1AA18;
      sub_21D0CF7E0(v72, &unk_27CE60D80);
      type metadata accessor for TTRListEditor();
      v27 = swift_allocObject();
      v67 = type metadata accessor for TTRUserDefaults();
      v68 = &protocol witness table for TTRUserDefaults;
      *&v66 = v26;
      v28 = v26;
      sub_21D0CF7E0(v73, &unk_27CE60D80);
      *(v27 + 64) = 0;
      *(v27 + 16) = v25;
      v29 = v70;
      *(v27 + 24) = v69;
      *(v27 + 40) = v29;
      *(v27 + 56) = v71;
      swift_beginAccess();
      *(v27 + 64) = 0;
      sub_21D0D0FD0(&v66, v27 + 72);

      sub_21D0CF7E0(v74, &unk_27CE60D80);
      *(v62 + 16) = v27;
      v75 = v20;
      v76 = &off_282EADAD8;
      v74[0] = v62;
      v30 = [*(*(*__swift_project_boxed_opaque_existential_1(v74 v20) + 16) + 16)];
      [v30 setNotifyChangeDelegate_];
    }

    else
    {
      v64 = a2;
      v65 = a3;
      v31 = [v8 list];
      v32 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
      TTRRemindersListInteractor.undoContext.getter(v74);
      v63 = type metadata accessor for ReminderContainerListEditor();
      v61 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v33 = swift_initStackObject();
      *(v33 + 16) = xmmword_21DC09CF0;
      *(v33 + 32) = v31;
      v34 = objc_allocWithZone(MEMORY[0x277D447D8]);
      v35 = v31;
      v36 = [v34 initWithStore_];
      REMSaveRequest.prepareForMutatingOrder(in:needsRefresh:)(v33, 1);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_21D0D3954(v74, v73, &unk_27CE60D80);
      sub_21D0D3954(v73, v72, &unk_27CE60D80);
      v60 = v35;
      v37 = [v36 updateList_];
      sub_21D0D3954(v72, &v69, &unk_27CE60D80);
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      v38 = qword_280D1AA18;
      sub_21D0CF7E0(v72, &unk_27CE60D80);
      type metadata accessor for TTRListEditor();
      v39 = swift_allocObject();
      v67 = type metadata accessor for TTRUserDefaults();
      v68 = &protocol witness table for TTRUserDefaults;
      *&v66 = v38;
      v40 = v38;
      sub_21D0CF7E0(v73, &unk_27CE60D80);
      *(v39 + 64) = 0;
      *(v39 + 16) = v37;
      v41 = v70;
      *(v39 + 24) = v69;
      *(v39 + 40) = v41;
      *(v39 + 56) = v71;
      swift_beginAccess();
      *(v39 + 64) = 0;
      sub_21D0D0FD0(&v66, v39 + 72);

      sub_21D0CF7E0(v74, &unk_27CE60D80);
      *(v61 + 16) = v39;
      v75 = v63;
      v76 = &off_282EADAD8;
      v74[0] = v61;
      v42 = [*(*(*__swift_project_boxed_opaque_existential_1(v74 v63) + 16) + 16)];
      [v42 setNotifyChangeDelegate_];

      sub_21D22A46C(v8, v7, 2);
    }

LABEL_28:
    v5 = v64;
    v6 = v65;
    if (!v64)
    {
LABEL_30:
      sub_21D0D32E4(v74, v6);
      __swift_destroy_boxed_opaque_existential_0(v74);
      return result;
    }

LABEL_29:
    v57 = v75;
    v58 = v76;
    __swift_project_boxed_opaque_existential_1(v74, v75);
    (v58[2])(v5, v57, v58);
    goto LABEL_30;
  }

  v9 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v10 = v7;
  v11 = v8;
  v12 = v9;
  TTRRemindersListInteractor.undoContext.getter(v74);
  v13 = type metadata accessor for ReminderContainerReminderEditor();
  swift_allocObject();
  v14 = sub_21D20BBE4(v11, v7, v12, v74);
  if (v14)
  {
    v75 = v13;
    v76 = &off_282EADAB0;
    v74[0] = v14;
    if (!v5)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_31:
  *(v6 + 32) = 0;
  result = 0.0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  return result;
}

uint64_t TTRRemindersListInteractor.reminderChangeItems(forMoving:to:insertingAt:)@<X0>(unint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *a3;
  v8 = *(a3 + 8);
  v20 = *a2;
  v21 = v6;
  sub_21D1ED28C(&v20, 0, &v22);
  if (v23)
  {
    sub_21D0D0FD0(&v22, v24);
    v9 = v25;
    v10 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v11 = *(v10 + 8);
    sub_21D227D78(v7, v8);
    v12 = v11(v9, v10);
    if (v8 <= 1)
    {
      v16 = v12;
      if (v8)
      {
        v17 = [v12 updateReminder_];

        v14 = 1;
        sub_21D227D8C(v7, 1u);
      }

      else
      {
        v17 = [v12 updateReminder_];

        sub_21D227D8C(v7, 0);
        v14 = 0;
      }

      v7 = v17;
    }

    else if (v8 == 2)
    {

      v14 = 0;
    }

    else if (v8 == 3)
    {

      v14 = 1;
    }

    else
    {
      v7 = v7 != 0;

      v14 = 2;
    }

    *&v22 = v7;
    BYTE8(v22) = v14;
    MEMORY[0x28223BE20](v13);
    v19[2] = v24;
    v19[3] = &v22;
    v18 = sub_21D173B74(sub_21D227DA0, v19, a1);
    *(a4 + 24) = &type metadata for TTRRemindersListInteractor.ReminderChangeItemGroup;
    *(a4 + 32) = &off_282EADB00;
    *a4 = v18;
    sub_21D157478(v22, BYTE8(v22));
    return __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
    result = sub_21D0CF7E0(&v22, &qword_27CE597E8);
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void sub_21D1EDE58(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v9 = *(a3 + 8);
  v14 = *a3;
  v15 = v9;
  v10 = *(v8 + 32);
  sub_21D157850(v14, v9);
  v11 = v10(v6, &v14, v7, v8);
  sub_21D157478(v14, v15);
  v12 = *a3;
  *a3 = v11;
  LOBYTE(v8) = *(a3 + 8);
  *(a3 + 8) = 1;
  v13 = v11;
  sub_21D157478(v12, v8);
  *a4 = v13;
}

void TTRRemindersListInteractor.save(_:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 objectID];
  sub_21D1EE0BC(a1);
  v9 = [a1 saveRequest];
  sub_21D0D8CF0(0, &qword_280D1B900);
  v10 = sub_21DBFB12C();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v8;
  v11[5] = v4;
  v15[4] = sub_21D228298;
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_21D11E5E4;
  v15[3] = &block_descriptor_15;
  v12 = _Block_copy(v15);
  sub_21D0D0E78(a2);
  v13 = v8;
  v14 = v4;

  [v9 saveWithQueue:v10 completion:v12];
  _Block_release(v12);
}

void sub_21D1EE0BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = &v18[-v4];
  v6 = [a1 lastModifiedDate];
  if (v6)
  {
    v7 = v6;
    sub_21DBF55FC();

    v8 = sub_21DBF563C();
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    sub_21D0CF7E0(v5, &qword_27CE58D68);
  }

  else
  {
    v9 = sub_21DBF563C();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    sub_21D0CF7E0(v5, &qword_27CE58D68);
    v10 = [a1 listChangeItem];
    if (v10)
    {
      v11 = v10;
      TTRRemindersListInteractor.undoContext.getter(v24);
      sub_21D0D3954(v24, v22, &unk_27CE60D80);
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      v12 = qword_280D1AA18;
      sub_21D0CF7E0(v24, &unk_27CE60D80);
      type metadata accessor for TTRListEditor();
      v13 = swift_allocObject();
      v20 = type metadata accessor for TTRUserDefaults();
      v21 = &protocol witness table for TTRUserDefaults;
      *&v19 = v12;
      *(v13 + 64) = 0;
      *(v13 + 16) = v11;
      v14 = v22[1];
      *(v13 + 24) = v22[0];
      *(v13 + 40) = v14;
      *(v13 + 56) = v23;
      swift_beginAccess();
      *(v13 + 64) = 0;
      sub_21D0D0FD0(&v19, v13 + 72);
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      v16 = v12;
      v17 = a1;
      sub_21D182B38(sub_21D22D19C, v15);
    }
  }
}

void sub_21D1EE37C(void *a1, void (*a2)(id), uint64_t a3, void *a4, uint64_t a5)
{
  v40[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_280D0F228);
    v8 = a1;
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAEBC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v40[0] = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_21DBFC74C();
      v15 = sub_21D0CDFB4(v13, v14, v40);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_21D0C9000, v9, v10, "Error saving reminder: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223D46520](v12, -1, -1);
      MEMORY[0x223D46520](v11, -1, -1);
    }

    if (a2)
    {
      a2(0);
    }
  }

  else
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_280D0F228);
    v19 = a4;
    v20 = sub_21DBF84AC();
    v21 = sub_21DBFAE9C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_21D0C9000, v20, v21, "reminder saved: %@", v22, 0xCu);
      sub_21D0CF7E0(v23, &unk_27CE60070);
      MEMORY[0x223D46520](v23, -1, -1);
      MEMORY[0x223D46520](v22, -1, -1);
    }

    if (a2)
    {
      v25 = *(a5 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
      v40[0] = 0;

      v26 = [v25 fetchReminderWithObjectID:v19 error:v40];
      v27 = v40[0];
      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v29 = v27;
        v30 = sub_21DBF52DC();

        swift_willThrow();
        v31 = v30;
        v32 = sub_21DBF84AC();
        v33 = sub_21DBFAEBC();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v40[0] = v35;
          *v34 = 136315138;
          swift_getErrorValue();
          v36 = sub_21DBFC74C();
          v38 = sub_21D0CDFB4(v36, v37, v40);

          *(v34 + 4) = v38;
          _os_log_impl(&dword_21D0C9000, v32, v33, "Error fetching updated reminder: %s", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x223D46520](v35, -1, -1);
          MEMORY[0x223D46520](v34, -1, -1);
        }

        else
        {
        }

        v28 = 0;
      }

      v39 = v26;
      a2(v28);

      sub_21D0D0E88(a2);
    }
  }
}

uint64_t TTRRemindersListInteractor.save(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v52 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE597F0);
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE597F8);
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59800);
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v8 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
  v9 = *(a1 + 16);
  v49 = &v41 - v10;
  if (!v9)
  {
LABEL_24:
    if (v8 >> 62)
    {
      goto LABEL_35;
    }

    v25 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_26;
    }

LABEL_36:

    v31 = MEMORY[0x277D84F90];
LABEL_37:
    v54 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59808);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59810);
    sub_21D0D0F1C(&qword_280D17948, &qword_27CE59808);
    sub_21D0D0F1C(&qword_280D178D8, &qword_27CE59810);
    v32 = v43;
    sub_21DBF8FCC();
    sub_21D0D0F1C(&qword_280D179B8, &qword_27CE597F0);
    v34 = v45;
    v33 = v46;
    sub_21DBF932C();
    (*(v44 + 8))(v32, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
    sub_21D0D0F1C(&qword_280D179D8, &qword_27CE597F8);
    v35 = v48;
    v36 = v49;
    sub_21DBF93BC();
    (*(v47 + 8))(v34, v35);
    v37 = swift_allocObject();
    v38 = v52;
    v39 = v53;
    *(v37 + 16) = v52;
    *(v37 + 24) = v39;
    sub_21D0D0E78(v38);
    sub_21D0D0F1C(&qword_280D17A08, &qword_27CE59800);
    v40 = v51;
    sub_21DBF91DC();

    return (*(v50 + 8))(v36, v40);
  }

  v11 = 0;
  v12 = a1 + 32;
  while (1)
  {
    v14 = v12 + 16 * v11;
    v15 = *(v14 + 8);
    v16 = *v14;
    v17 = v16;
    if ((v15 & 1) == 0)
    {
      sub_21D1EE0BC(v16);
    }

    v18 = [v17 saveRequest];
    if (!(v8 >> 62))
    {
      v19 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        break;
      }

      goto LABEL_21;
    }

    v23 = v18;
    v19 = sub_21DBFBD7C();
    v18 = v23;
    if (v19)
    {
      break;
    }

LABEL_21:
    v24 = v18;
    MEMORY[0x223D42D80]();
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();

    v8 = v55;
LABEL_4:
    if (++v11 == v9)
    {
      goto LABEL_24;
    }
  }

  v20 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v42 = v18;
      result = MEMORY[0x223D44740](v20, v8);
      if (__OFADD__(v20++, 1))
      {
        goto LABEL_39;
      }

      v41 = result;
      swift_unknownObjectRelease();
      v18 = v42;
      if (v41 == v42)
      {
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v20 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

    if (*(v8 + 32 + 8 * v20) == v18)
    {
LABEL_3:
      v13 = v18;

      goto LABEL_4;
    }

    ++v20;
LABEL_15:
    if (v20 == v19)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  v25 = sub_21DBFBD7C();
  if (!v25)
  {
    goto LABEL_36;
  }

LABEL_26:
  v54 = MEMORY[0x277D84F90];
  result = sub_21DBFC01C();
  if ((v25 & 0x8000000000000000) == 0)
  {
    sub_21D0D8CF0(0, &qword_280D1B900);
    v26 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x223D44740](v26, v8);
      }

      else
      {
        v27 = *(v8 + 8 * v26 + 32);
      }

      v28 = v27;
      ++v26;
      v29 = sub_21DBFB12C();
      v30 = swift_allocObject();
      *(v30 + 16) = v28;
      *(v30 + 24) = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59808);
      swift_allocObject();
      sub_21DBF911C();
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v25 != v26);

    v31 = v54;
    goto LABEL_37;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_21D1EEEEC(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = *a1;
  if (*(a1 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DC8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_21DC08D00;
    *(v4 + 32) = v3;
    v5 = v3;
    if (!a2)
    {
    }

    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
  sub_21D0D0F1C(&qword_280D178A8, &qword_27CE59DD0);
  v4 = sub_21DBFA41C();
  if (a2)
  {
LABEL_5:
    a2(v4);
  }
}

id TTRRemindersListInteractor.saveAndFetchSynchronously(_:options:)(void *a1, uint64_t *a2)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = [a1 objectID];
  if ((v4 & 1) == 0)
  {
    sub_21D1EE0BC(a1);
  }

  v6 = [a1 saveRequest];
  v33[0] = 0;
  v7 = [v6 saveSynchronouslyWithError_];

  v8 = v33[0];
  if (v7)
  {
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 defaultFetchOptions];
    v12 = [a1 storage];
    v13 = [v12 fetchedDueDateDeltaAlerts];

    if (v13)
    {
      sub_21D0D8CF0(0, &qword_27CE59818);
      v14 = sub_21DBFA5EC();

      v15 = v14 >> 62 ? sub_21DBFBD7C() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v15)
      {
        v16 = [v11 fetchOptionsIncludingDueDateDeltaAlerts];

        v11 = v16;
      }
    }

    v17 = *(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
    v33[0] = 0;
    v18 = [v17 fetchReminderWithObjectID:v5 fetchOptions:v11 error:v33];
    v19 = v33[0];
    if (v18)
    {

      return v18;
    }

    v22 = v19;
    v21 = sub_21DBF52DC();

    swift_willThrow();
  }

  else
  {
    v20 = v33[0];
    v21 = sub_21DBF52DC();

    swift_willThrow();
  }

  if (qword_280D17ED0 != -1)
  {
    swift_once();
  }

  v23 = sub_21DBF84BC();
  __swift_project_value_buffer(v23, qword_280D0F228);
  v24 = v21;
  v25 = sub_21DBF84AC();
  v26 = sub_21DBFAEBC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33[0] = v28;
    *v27 = 136315138;
    swift_getErrorValue();
    v29 = sub_21DBFC74C();
    v31 = sub_21D0CDFB4(v29, v30, v33);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_21D0C9000, v25, v26, "Error saving and fetching reminder synchronously: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x223D46520](v28, -1, -1);
    MEMORY[0x223D46520](v27, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t TTRRemindersListInteractor.fetchReminderAsync(withID:on:)(void *a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = v5;
  v6[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59820);
  swift_allocObject();
  v7 = a2;
  v8 = v5;
  v9 = a1;
  return sub_21DBF911C();
}

uint64_t sub_21D1EF468(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v24 = a3;
  v9 = sub_21DBF9D2C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21DBF9D5C();
  v13 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = sub_21D22D120;
  v17[5] = v16;
  aBlock[4] = sub_21D22D124;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_416;
  v18 = _Block_copy(aBlock);

  v19 = a4;
  v20 = a5;
  sub_21DBF9D4C();
  v25 = MEMORY[0x277D84F90];
  sub_21D0F1C20(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v15, v12, v18);
  _Block_release(v18);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v23);
}

void sub_21D1EF778(void *a1, uint64_t a2, void (*a3)(id, uint64_t))
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
  v12[0] = 0;
  v7 = [a1 fetchReminderWithObjectID:a2 fetchOptions:v6 error:v12];

  v8 = v12[0];
  if (v7)
  {
    v9 = v7;
    a3(v7, 0);
  }

  else
  {
    v10 = v8;
    v9 = sub_21DBF52DC();

    swift_willThrow();
    v11 = v9;
    a3(v9, 1);
  }
}

uint64_t TTRRemindersListInteractor.registerUndoToDeleteReminderIfExists(with:)(void *a1)
{
  TTRRemindersListInteractor.undoContext.getter(&v15);
  if (!v16)
  {
    return sub_21D0CF7E0(&v15, &unk_27CE60D80);
  }

  sub_21D0D0FD0(&v15, v17);
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v16 = sub_21D0D8CF0(0, &qword_280D17880);
  *&v15 = a1;
  v4 = sub_21D0D8CF0(0, &qword_280D17860);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8);
  *&v13 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21DC08D00;
  sub_21D0CEB98(&v15, v5 + 32);
  sub_21D0CF2E8(&v13, (v5 + 64));
  v6 = a1;
  __swift_destroy_boxed_opaque_existential_0(&v15);
  v7 = v18;
  v8 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  *&v15 = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v3;
  v10 = v6;
  v11 = v3;
  TTRUndoContext.registerUndo(forEditing:action:)(&v15, sub_21D2282C0, v9, v7, v8);

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t sub_21D1EFA60(uint64_t a1, void *a2, void *a3)
{
  v25[10] = *MEMORY[0x277D85DE8];
  if (qword_280D17ED0 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF84BC();
  __swift_project_value_buffer(v6, qword_280D0F228);
  v7 = a2;
  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAEDC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_21D0C9000, v8, v9, "Reminder List: undo adding new reminder {reminderID: %@}", v10, 0xCu);
    sub_21D0CF7E0(v11, &unk_27CE60070);
    MEMORY[0x223D46520](v11, -1, -1);
    MEMORY[0x223D46520](v10, -1, -1);
  }

  v25[0] = 0;
  v13 = [a3 fetchReminderWithObjectID:v7 error:v25];
  if (v13)
  {
    v14 = v13;
    v15 = v25[0];
    v16 = v14;
    v17 = [v16 store];
    v18 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = v16;
    sub_21D0D32E4(a1, v25);
    v20 = v16;
    v21 = _s15RemindersUICore13TTRListEditorC6remove9reminders11saveRequest11undoContext7Combine6FutureCyyts5Error_pGSaySo11REMReminderCG_So07REMSaveH0CAA07TTRUndoJ0_pSgtFZ_0(inited, v18, v25);

    sub_21D0CF7E0(v25, &unk_27CE60D80);
  }

  else
  {
    v22 = v25[0];
    v23 = sub_21DBF52DC();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260);
    swift_allocObject();
    return sub_21DBF911C();
  }

  return v21;
}

uint64_t sub_21D1EFD54(uint64_t (*a1)(uint64_t *))
{
  v2 = 0;
  v3 = 0;
  return a1(&v2);
}

uint64_t TTRRemindersListInteractor.registerUndoToSaveUncommittedReminder(_:)(void *a1)
{
  TTRRemindersListInteractor.undoContext.getter(&v15);
  if (!v16)
  {
    return sub_21D0CF7E0(&v15, &unk_27CE60D80);
  }

  sub_21D0D0FD0(&v15, v17);
  v2 = [a1 listChangeItem];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 objectID];
    v16 = sub_21D0D8CF0(0, &qword_280D17880);
    *&v15 = v4;
    v5 = sub_21D0D8CF0(0, &qword_280D17860);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8);
    *&v13 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21DC08D00;
    sub_21D0CEB98(&v15, v6 + 32);
    sub_21D0CF2E8(&v13, (v6 + 64));
    __swift_destroy_boxed_opaque_existential_0(&v15);
    v7 = v18;
    v8 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    *&v15 = v6;
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = v3;
    v10 = a1;
    v11 = v3;
    TTRUndoContext.registerUndo(forEditing:action:)(&v15, sub_21D2282C8, v9, v7, v8);
  }

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t sub_21D1EFF78(void *a1, void *a2, void *a3)
{
  v46 = a1;
  v5 = sub_21DBF4CAC();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 objectID];
  if (qword_280D17ED0 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_280D0F228);
  v12 = v10;
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAEDC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_21D0C9000, v13, v14, "Reminder List: undo discarding uncommitted reminder {reminderID: %@}", v15, 0xCu);
    sub_21D0CF7E0(v16, &unk_27CE60070);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  sub_21D0D32E4(v46, v52);
  sub_21D0D3954(v52, v50, &unk_27CE60D80);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v18 = qword_280D1AA18;
  sub_21D0CF7E0(v52, &unk_27CE60D80);
  type metadata accessor for TTRListEditor();
  v19 = swift_allocObject();
  v48 = type metadata accessor for TTRUserDefaults();
  v49 = &protocol witness table for TTRUserDefaults;
  *&v47 = v18;
  *(v19 + 64) = 0;
  *(v19 + 16) = a3;
  v20 = v50[1];
  *(v19 + 24) = v50[0];
  *(v19 + 40) = v20;
  *(v19 + 56) = v51;
  swift_beginAccess();
  *(v19 + 64) = 0;
  sub_21D0D0FD0(&v47, v19 + 72);
  v21 = swift_allocObject();
  *(v21 + 16) = v12;
  v22 = v12;
  v23 = v18;
  v24 = a3;
  sub_21D182B38(sub_21D22D104, v21);

  v25 = [a2 titleAsString];
  if (!v25)
  {
    goto LABEL_11;
  }

  v26 = v25;
  v27 = sub_21DBFA16C();
  v29 = v28;

  v52[0] = v27;
  v52[1] = v29;
  sub_21DBF4C5C();
  sub_21D176F0C();
  v30 = sub_21DBFBB3C();
  v32 = v31;
  (*(v6 + 8))(v9, v5);

  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
LABEL_11:
    sub_21D0D32E4(v46, v52);
    sub_21D0D3954(v52, v50, &unk_27CE60D80);
    type metadata accessor for TTRReminderEditor();
    inited = swift_initStackObject();
    *(inited + 72) = 0;
    *(inited + 16) = a2;
    sub_21D0D3954(v50, inited + 24, &unk_27CE60D80);
    v35 = a2;
    v46 = [v35 fetchedCurrentDueDateDeltaAlert];
    sub_21D0CF7E0(v52, &unk_27CE60D80);
    sub_21D0CF7E0(v50, &unk_27CE60D80);
    v48 = sub_21D0D8CF0(0, &unk_280D177F0);
    v49 = &protocol witness table for REMListChangeItem;
    *&v47 = v24;
    v36 = v24;
    _s15RemindersUICore21TTRLocalizableStringsO6CommonO28defaultTitleForBlankReminder19effectiveParentListSSAA15TTRListProtocol_pSg_tFZ_0(&v47);
    sub_21D0CF7E0(&v47, &qword_27CE59DC0);
    v37 = v22;
    v38 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v39 = sub_21DBFA12C();

    v40 = [v38 initWithString_];

    sub_21D9CA3E0(v40, 0, 1);
    swift_setDeallocating();
    sub_21D0CF7E0(inited + 24, &unk_27CE60D80);

    v22 = v37;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = a2;
  *(v41 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260);
  swift_allocObject();
  v42 = v22;
  v43 = a2;
  v44 = sub_21DBF911C();

  return v44;
}

void sub_21D1F0568(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [*(*a1 + 16) saveRequest];
  v4 = [v3 store];

  v9[0] = 0;
  v5 = [v4 fetchReminderWithObjectID:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
    TTRListEditor.remove(reminder:)(v5);
  }

  else
  {
    v7 = v9[0];
    v8 = sub_21DBF52DC();

    swift_willThrow();
  }
}

void sub_21D1F0670(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = [a3 saveRequest];
  sub_21D0D8CF0(0, &qword_280D1B900);
  v10 = sub_21DBFB12C();
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = sub_21D1D20C4;
  v11[4] = v8;
  v14[4] = sub_21D22D114;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_21D11E5E4;
  v14[3] = &block_descriptor_407;
  v12 = _Block_copy(v14);
  v13 = a4;

  [v9 saveWithQueue:v10 completion:v12];
  _Block_release(v12);
}

void sub_21D1F07E0(void *a1, void *a2, void (*a3)(void, void))
{
  if (a1)
  {
    v6 = a1;
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_280D0F228);
    v8 = a1;
    v9 = a2;
    v10 = sub_21DBF84AC();
    v11 = sub_21DBFAEBC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = a3;
      v15 = swift_slowAlloc();
      v29 = v15;
      *v12 = 136315394;
      swift_getErrorValue();
      v16 = sub_21DBFC75C();
      v18 = sub_21D0CDFB4(v16, v17, &v29);

      *(v12 + 4) = v18;
      *(v12 + 12) = 2112;
      *(v12 + 14) = v9;
      *v13 = v9;
      v19 = v9;
      _os_log_impl(&dword_21D0C9000, v10, v11, "Reminder List: failed to save uncommitted reminder {error: %s, reminderID: %@}", v12, 0x16u);
      sub_21D0CF7E0(v13, &unk_27CE60070);
      MEMORY[0x223D46520](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      v20 = v15;
      a3 = v14;
      MEMORY[0x223D46520](v20, -1, -1);
      MEMORY[0x223D46520](v12, -1, -1);
    }

    v21 = a1;
    a3(a1, 1);
  }

  else
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_280D0F228);
    v23 = a2;
    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAEDC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&dword_21D0C9000, v24, v25, "Reminder List: saved uncommitted reminder {reminderID: %@}", v26, 0xCu);
      sub_21D0CF7E0(v27, &unk_27CE60070);
      MEMORY[0x223D46520](v27, -1, -1);
      MEMORY[0x223D46520](v26, -1, -1);
    }

    a3(0, 0);
  }
}

id TTRRemindersListInteractor.changeItem(for:)(uint64_t a1)
{
  return sub_21D1F0B5C(a1, &selRef_updateAccount_);
}

{
  return sub_21D1F0B5C(a1, &selRef_updateList_);
}

{
  return sub_21D1F0B5C(a1, &selRef_updateSmartList_);
}

{
  return sub_21D1F0B5C(a1, &selRef_updateTemplate_);
}

id sub_21D1F0B5C(uint64_t a1, SEL *a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v5 setNotifyChangeDelegate_];
  v6 = [v5 *a2];

  return v6;
}

void TTRRemindersListInteractor.setSortingStyle(sortingStyle:for:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_21DBF70DC();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_canChangeSortingStyle) == 1)
  {
    v10 = *a2;
    v11 = *(a2 + 8);
    v12 = [*a2 sortingStyle];
    sub_21DBFAF7C();

    sub_21D0F1C20(&qword_27CE58DB0, MEMORY[0x277D45430]);
    v13 = sub_21DBFA10C();
    v14 = (*(v6 + 8))(v9, v5);
    if (v11)
    {
      if (v11 == 1)
      {
        if (v13)
        {
          return;
        }

        MEMORY[0x28223BE20](v14);
        *(&v19 - 2) = a1;
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        sub_21D20C818(v10, &v21, sub_21D228300, (&v19 - 4), 0, 0);
      }

      else
      {
        if (v13)
        {
          return;
        }

        MEMORY[0x28223BE20](v14);
        *(&v19 - 2) = a1;
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        sub_21D20C56C(v10, &v21, sub_21D2282D0, (&v19 - 4), 0, 0);
      }
    }

    else
    {
      if (v13)
      {
        return;
      }

      MEMORY[0x28223BE20](v14);
      *(&v19 - 2) = a1;
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      sub_21D20CAC4(v10, &v21, sub_21D228330, (&v19 - 4), 0, 0);
    }

    sub_21D0CF7E0(&v21, &unk_27CE60D80);
  }

  else
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v15 = sub_21DBF84BC();
    __swift_project_value_buffer(v15, qword_280D0F228);
    v20 = sub_21DBF84AC();
    v16 = sub_21DBFAEBC();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21D0C9000, v20, v16, "Illegal attempt to change sorting style.", v17, 2u);
      MEMORY[0x223D46520](v17, -1, -1);
    }

    v18 = v20;
  }
}

void sub_21D1F0F80(uint64_t a1, uint64_t a2, void (*a3)(id, char *))
{
  v4 = sub_21DBF709C();
  v5 = 2;
  a3(v4, &v5);
}

uint64_t TTRRemindersListInteractor.move(reminders:to:position:)(unint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v5 = *a3;
  v6 = v3;
  return sub_21D1F1024(a1, a2, &v5, 0);
}

uint64_t sub_21D1F1024(unint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a3;
  v10 = *(a3 + 8);
  if (a1 >> 62)
  {
    v11 = sub_21DBFBD7C();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12._rawValue = MEMORY[0x277D84F90];
  if (!v11)
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = [a2 list];
    v26[0] = v12._rawValue;
    sub_21D562354(inited);
    v19 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    REMSaveRequest.prepareForMutatingOrder(in:needsRefresh:)(v12, 1);
    [v19 setNotifyChangeDelegate_];

    v27 = v9;
    v28 = v10;
    TTRRemindersListInteractor.undoContext.getter(v26);
    sub_21D205B3C(a1, a2, &v27, a4, v19, v26);
    sub_21D0CF7E0(v26, &unk_27CE60D80);
    v20 = (v5 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer);
    v21 = *(v5 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 24);
    v22 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    *(v23 + 24) = a2;
    v24 = *(v22 + 16);
    sub_21DBF8E0C();
    v25 = a2;
    v24(v19, sub_21D22D0D0, v23, v21, v22);
  }

  v26[0] = MEMORY[0x277D84F90];
  result = sub_21DBFC01C();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D44740](v14, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      v17 = [v15 list];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v11 != v14);
    v12._rawValue = v26[0];
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t TTRRemindersListInteractor.move(reminders:to:position:initialUncompletedRemindersInTargetList:)(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  v6 = *a3;
  v7 = v4;
  return sub_21D1F1024(a1, a2, &v6, a4);
}

uint64_t TTRRemindersListInteractor.move(reminders:to:position:initialSectionIDByReminderID:)(unint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  v6 = *a3;
  v7 = v4;
  return sub_21D1F1358(a1, a2, &v6, a4, 0);
}

uint64_t sub_21D1F1358(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v94 = *a3;
  v96 = *(a3 + 8);
  if (a1 >> 62)
  {
    v9 = sub_21DBFBD7C();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10._rawValue = MEMORY[0x277D84F90];
  v91 = a4;
  v95 = a5;
  if (v9)
  {
    *&v110[0] = MEMORY[0x277D84F90];
    result = sub_21DBFC01C();
    if (v9 < 0)
    {
      __break(1u);
      goto LABEL_59;
    }

    v12 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x223D44740](v12, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      v15 = [v13 list];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v9 != v12);
    v10._rawValue = *&v110[0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  *(inited + 32) = a2;
  *&v110[0] = v10;
  v17 = a2;
  sub_21D562354(inited);
  v18 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  REMSaveRequest.prepareForMutatingOrder(in:needsRefresh:)(v10, 1);

  [v18 setNotifyChangeDelegate_];

  v93 = v17;
  if (!v9)
  {
    v89 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  *&v110[0] = MEMORY[0x277D84F90];
  result = sub_21DBFC01C();
  if (v9 < 0)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v19 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x223D44740](v19, a1);
    }

    else
    {
      v20 = *(a1 + 8 * v19 + 32);
    }

    v21 = v20;
    ++v19;
    v22 = [v20 objectID];

    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    sub_21DBFBFFC();
  }

  while (v9 != v19);
  v89 = *&v110[0];
LABEL_20:
  TTRRemindersListInteractor.undoContext.getter(v110);
  sub_21D0D3954(v110, v109, &unk_27CE60D80);
  sub_21D0D3954(v109, v107, &unk_27CE60D80);
  v23 = v93;
  v24 = v18;
  v93 = [v24 updateList_];
  sub_21D0D3954(v107, &v104, &unk_27CE60D80);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v25 = qword_280D1AA18;
  sub_21D0CF7E0(v107, &unk_27CE60D80);
  v88 = type metadata accessor for TTRListEditor();
  v26 = swift_initStackObject();
  v102 = type metadata accessor for TTRUserDefaults();
  v103 = &protocol witness table for TTRUserDefaults;
  v87 = v102;
  *&v101 = v25;
  v86 = v25;
  sub_21D0CF7E0(v109, &unk_27CE60D80);
  *(v26 + 64) = 0;
  *(v26 + 16) = v93;
  v27 = v106;
  v28 = v105;
  *(v26 + 24) = v104;
  *(v26 + 40) = v28;
  *(v26 + 56) = v27;
  swift_beginAccess();
  *(v26 + 64) = 0;
  v29 = v26;
  sub_21D0D0FD0(&v101, v26 + 72);

  if (v95)
  {
    sub_21D2272C4(v95, v24, v26);
  }

  if (!v96)
  {
    sub_21D157850(v94, 0);
    v95 = [v24 updateReminder_];

    goto LABEL_30;
  }

  if (v96 != 1)
  {
    if (!v94)
    {
      sub_21D157850(0, 2u);
      v95 = 0;
      goto LABEL_32;
    }

    v95 = 1;
    sub_21D157850(1, 2u);
LABEL_30:
    v100 = MEMORY[0x277D84F90];
    v30 = sub_21DBF8E0C();
    v31 = a1;
    goto LABEL_33;
  }

  sub_21D157850(v94, 1u);
  v95 = [v24 updateReminder_];

LABEL_32:
  v100 = MEMORY[0x277D84F90];
  v32 = sub_21DBF8E0C();
  v30 = sub_21D1E3EEC(v32, sub_21D9D9774, sub_21D565304, sub_21D256E5C);
  v31 = v30;
LABEL_33:
  MEMORY[0x28223BE20](v30);
  v93 = v24;
  v82[2] = v24;
  v82[3] = v97;
  v82[4] = v110;
  v82[5] = &v100;
  v90 = v29;
  v82[6] = v29;
  v82[7] = v95;
  v83 = v96;
  sub_21D173B74(sub_21D22D4D8, v82, v31);

  sub_21D0D3954(v110, &v98, &unk_27CE60D80);
  v92 = v23;
  if (v99)
  {
    v85 = 0;
    sub_21D0D0FD0(&v98, &v101);
    v33 = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DA8);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_21DC08D00;
    v34 = MEMORY[0x277D84F90];
    if (v9)
    {
      *&v98 = MEMORY[0x277D84F90];
      result = sub_21DBFC01C();
      if (v9 < 0)
      {
LABEL_61:
        __break(1u);
        return result;
      }

      v35 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x223D44740](v35, a1);
        }

        else
        {
          v36 = *(a1 + 8 * v35 + 32);
        }

        v37 = v36;
        ++v35;
        v38 = [v36 objectID];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v9 != v35);
      v34 = v98;
      v23 = v92;
    }

    v39 = [v23 objectID];
    v40 = v84;
    *(v84 + 32) = v34;
    *(v40 + 40) = v39;
    v41 = v94;
    *(v40 + 48) = v94;
    v42 = v96;
    *(v40 + 56) = v96;
    sub_21D157850(v41, v42);
    v43 = v33;
    v44 = sub_21D2080D0(v33);
    TTRUndoNavigationEditingTarget.init(reminderIDs:)(v44);
    v45 = v98;
    v46 = v102;
    v94 = v103;
    v85 = __swift_project_boxed_opaque_existential_1(&v101, v102);
    *&v98 = v45;
    v47 = swift_allocObject();
    v48 = v97;
    v47[2] = v97;
    v47[3] = v43;
    v47[4] = v40;
    v49 = v48;
    sub_21DBF8E0C();
    TTRUndoContext.registerUndo(forEditing:action:)(&v98, sub_21D22D518, v47, v46, v94);
    v50 = v96;

    __swift_destroy_boxed_opaque_existential_0(&v101);
  }

  else
  {
    sub_21D0CF7E0(&v98, &unk_27CE60D80);
    v48 = v97;
    v50 = v96;
  }

  v51 = *MEMORY[0x277D44BF0];
  LOBYTE(v101) = 1;
  TTRListEditor.edit(sortingStyle:reason:)(v51);

  sub_21D157478(v95, v50);

  sub_21D0CF7E0(v110, &unk_27CE60D80);
  v52 = (v48 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer);
  sub_21D0D32E4(v48 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, v110);
  type metadata accessor for TTRRemindersListInteractorSectionsCapability();
  v53 = swift_allocObject();
  *(v53 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_21D0D0FD0(v110, v53 + 32);
  swift_beginAccess();
  *(v53 + 24) = &protocol witness table for TTRRemindersListInteractor;
  swift_unknownObjectWeakAssign();
  v54 = v93;
  v97 = v52;
  if (v9)
  {
    *&v110[0] = MEMORY[0x277D84F90];
    v55 = v93;
    result = sub_21DBFC01C();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v56 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v57 = MEMORY[0x223D44740](v56, a1);
        }

        else
        {
          v57 = *(a1 + 8 * v56 + 32);
        }

        v58 = v57;
        ++v56;
        v59 = [v57 objectID];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v9 != v56);
      v54 = v93;
      goto LABEL_53;
    }

    goto LABEL_60;
  }

  v60 = v93;
LABEL_53:
  if (swift_unknownObjectWeakLoadStrong())
  {
    v61 = *(v53 + 24);
    ObjectType = swift_getObjectType();
    v63 = *(v61 + 8);
    v64 = v92;
    v65 = v92;
    v66 = v54;
    v63(v110, v53, &protocol witness table for TTRRemindersListInteractorSectionsCapability, ObjectType, v61);
    swift_unknownObjectRelease();
  }

  else
  {
    v111 = 0;
    memset(v110, 0, sizeof(v110));
    v64 = v92;
    v67 = v92;
    v68 = v54;
  }

  sub_21D0D3954(v110, v109, &unk_27CE60D80);
  v69 = [v54 updateList_];
  sub_21D0D3954(v109, v107, &unk_27CE60D80);
  sub_21D0CF7E0(v109, &unk_27CE60D80);
  v70 = swift_allocObject();
  *(&v105 + 1) = v87;
  v106 = &protocol witness table for TTRUserDefaults;
  *&v104 = v86;
  v71 = v86;
  sub_21D0CF7E0(v110, &unk_27CE60D80);
  *(v70 + 64) = 0;
  *(v70 + 16) = v69;
  v72 = v107[1];
  *(v70 + 24) = v107[0];
  *(v70 + 40) = v72;
  *(v70 + 56) = v108;
  swift_beginAccess();
  *(v70 + 64) = 0;
  sub_21D0D0FD0(&v104, v70 + 72);
  v73 = v64;

  v74 = sub_21DBF8E0C();
  v75 = sub_21D19ED08(v74);

  *&v110[0] = 0;
  TTRListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v75, v110, v91);

  sub_21D1BF9F4();

  v76 = v97[3];
  v77 = v97[4];
  __swift_project_boxed_opaque_existential_1(v97, v76);
  v78 = swift_allocObject();
  *(v78 + 16) = v89;
  *(v78 + 24) = v73;
  v79 = v73;
  v80 = *(v77 + 16);
  v81 = v79;
  v80(v54, sub_21D22D07C, v78, v76, v77);
}

uint64_t TTRRemindersListInteractor.move(reminders:to:position:initialSectionIDByReminderID:initialUncompletedRemindersInTargetList:)(unint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 8);
  v7 = *a3;
  v8 = v5;
  return sub_21D1F1358(a1, a2, &v7, a4, a5);
}

void TTRRemindersListInteractor.move(reminders:to:position:initialSectionIDByReminderID:)(unint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  v16 = a2;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v14 = v6;
  v15 = v7;
  v8 = a2;
  sub_21D1F2014(a1, &v16, &v14, a4, 0, 0, 0);

  v9 = v16;
  v10 = v17;
  v11 = v18;
  v12 = v19;
  v13 = v20;

  sub_21D228360(v9, v10, v11, v12, v13);
}

void *sub_21D1F2014(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v139 = a6;
  v140 = a7;
  v141 = a5;
  v9 = *(a2 + 8);
  v146 = *a2;
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v135 = v9;
  v136 = v11;
  v137 = v10;
  v138 = a4;
  LODWORD(v12) = *(a2 + 32);
  v143 = *a3;
  v144 = *(a3 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80);
  v13 = sub_21D0D8CF0(0, &qword_280D17880);
  sub_21D0D0F1C(&qword_27CE589E8, &qword_27CE5DF80);
  sub_21D19F2B8(&qword_280D17870, &qword_280D17880);
  v152 = v13;
  v14 = sub_21DBFA42C();
  v142 = 0;
  *&v168[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_106;
  }

  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v16 = &off_278331000;
  LODWORD(v145) = v12;
  if (v15)
  {
    v7 = 0;
    v134 = a1;
    v153 = (a1 + 32);
    v154 = (a1 & 0xFFFFFFFFFFFFFF8);
    a1 &= 0xC000000000000001;
    v17 = (v14 & 0xFFFFFFFFFFFFFF8);
    if (v14 < 0)
    {
      v17 = v14;
    }

    v150 = v17;
    v151 = (v14 & 0xC000000000000001);
    v12 = v14 + 56;
    v147 = a1;
    v148 = v15;
    while (1)
    {
      if (a1)
      {
        v18 = MEMORY[0x223D44740](v7, v134);
      }

      else
      {
        if (v7 >= v154[2])
        {
          goto LABEL_105;
        }

        v18 = v153[v7];
      }

      v19 = v18;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        v15 = sub_21DBFBD7C();
        goto LABEL_3;
      }

      v21 = [v18 parentReminder];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 v16[425]];

        if (v23)
        {
          if (v151)
          {
            v24 = v23;
            v25 = sub_21DBFBDCC();

            if (v25)
            {

              goto LABEL_9;
            }
          }

          else
          {
            if (*(v14 + 16))
            {
              v26 = sub_21DBFB62C();
              v27 = -1 << *(v14 + 32);
              v28 = v26 & ~v27;
              if ((*(v12 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
              {
                v29 = ~v27;
                while (1)
                {
                  v30 = *(*(v14 + 48) + 8 * v28);
                  v31 = sub_21DBFB63C();

                  if (v31)
                  {
                    break;
                  }

                  v28 = (v28 + 1) & v29;
                  if (((*(v12 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
                  {
                    goto LABEL_7;
                  }
                }

                v16 = &off_278331000;
                a1 = v147;
                v15 = v148;
                goto LABEL_9;
              }
            }

LABEL_7:

            v16 = &off_278331000;
            a1 = v147;
            v15 = v148;
          }
        }
      }

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
LABEL_9:
      if (v7 == v15)
      {
        v32 = *&v168[0];
        LODWORD(v12) = v145;
        goto LABEL_29;
      }
    }
  }

  v32 = MEMORY[0x277D84F90];
LABEL_29:

  v33 = &selRef__setContentViewMarginType_;
  if ((v12 & 0x80000000) != 0)
  {
    v34 = v146;
    if ((v32 & 0x8000000000000000) != 0)
    {
      goto LABEL_107;
    }
  }

  else
  {
    v34 = [v146 list];
    if ((v32 & 0x8000000000000000) != 0)
    {
      goto LABEL_107;
    }
  }

  if ((v32 & 0x4000000000000000) == 0)
  {
    v35 = *(v32 + 16);
    goto LABEL_35;
  }

LABEL_107:
  v35 = sub_21DBFBD7C();
LABEL_35:
  v36 = MEMORY[0x277D84F90];
  if (v35)
  {
    *&v168[0] = MEMORY[0x277D84F90];
    v37 = v168;
    sub_21DBFC01C();
    if (v35 < 0)
    {
      __break(1u);
      goto LABEL_109;
    }

    v38 = 0;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x223D44740](v38, v32);
      }

      else
      {
        v39 = *(v32 + 8 * v38 + 32);
      }

      v40 = v39;
      ++v38;
      v41 = [v39 list];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v35 != v38);
    v36 = *&v168[0];
    LODWORD(v12) = v145;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  *(inited + 32) = v34;
  *&v168[0] = v36;
  v154 = v34;
  sub_21D562354(inited);
  v16 = *&v168[0];
  v7 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  REMSaveRequest.prepareForMutatingOrder(in:needsRefresh:)(v16, 1);

  [v7 setNotifyChangeDelegate_];

  v43 = MEMORY[0x277D84F90];
  v33 = &off_278331000;
  if (!v35)
  {
    goto LABEL_51;
  }

  *&v168[0] = MEMORY[0x277D84F90];
  v37 = v168;
  sub_21DBFC01C();
  if ((v35 & 0x8000000000000000) == 0)
  {
    v44 = 0;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x223D44740](v44, v32);
      }

      else
      {
        v45 = *(v32 + 8 * v44 + 32);
      }

      v46 = v45;
      ++v44;
      v47 = [v45 objectID];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v35 != v44);
    v43 = *&v168[0];
    v33 = &off_278331000;
LABEL_51:
    v151 = v43;
    if ((v12 & 0x80000000) != 0)
    {
      v54 = v154;
      v55 = v7;
      TTRRemindersListInteractor.undoContext.getter(v168);
      sub_21D0D3954(v168, v167, &unk_27CE60D80);
      v153 = v54;
      v56 = [v55 updateList_];
      sub_21D0D3954(v167, &v164, &unk_27CE60D80);
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      v57 = qword_280D1AA18;
      sub_21D0CF7E0(v167, &unk_27CE60D80);
      type metadata accessor for TTRListEditor();
      v58 = swift_allocObject();
      *(&v162 + 1) = type metadata accessor for TTRUserDefaults();
      v163 = &protocol witness table for TTRUserDefaults;
      *&v161 = v57;
      v59 = v57;
      sub_21D0CF7E0(v168, &unk_27CE60D80);
      *(v58 + 64) = 0;
      *(v58 + 16) = v56;
      v60 = v165;
      *(v58 + 24) = v164;
      *(v58 + 40) = v60;
      *(v58 + 56) = v166;
      swift_beginAccess();
      *(v58 + 64) = 0;
      sub_21D0D0FD0(&v161, v58 + 72);
      v53 = v153;

      v61 = TTRListEditor.addNewSection(with:displayName:)(v135);
      if (!v61)
      {
        v35 = v55;

        v33 = &off_278331000;
        if (qword_280D17ED0 == -1)
        {
LABEL_71:
          v67 = sub_21DBF84BC();
          __swift_project_value_buffer(v67, qword_280D0F228);
          v68 = v53;
          v69 = sub_21DBF84AC();
          v70 = sub_21DBFAECC();

          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            *v71 = 138412290;
            v73 = [v68 v33[425]];
            *(v71 + 4) = v73;
            *v72 = v73;
            _os_log_impl(&dword_21D0C9000, v69, v70, "failed to add new section with displayName given {groupID: %@}", v71, 0xCu);
            sub_21D0CF7E0(v72, &unk_27CE60070);
            MEMORY[0x223D46520](v72, -1, -1);
            MEMORY[0x223D46520](v71, -1, -1);
          }

          goto LABEL_74;
        }

LABEL_114:
        swift_once();
        goto LABEL_71;
      }

      v62 = v61;
      v63 = [v61 remObjectID];
      v33 = &off_278331000;
      if (v145)
      {
        v64 = sub_21DBFA12C();
        [v62 setCanonicalName_];
      }

      v48 = v63;
      if (v63)
      {
LABEL_53:
        v153 = v48;
        TTRRemindersListInteractor.undoContext.getter(v168);
        v16 = &unk_27CE60D80;
        sub_21D0D3954(v168, v167, &unk_27CE60D80);
        sub_21D0D3954(v167, &v164, &unk_27CE60D80);
        v37 = v154;
        v7 = v7;
        v154 = [v7 updateList_];
        sub_21D0D3954(&v164, &v161, &unk_27CE60D80);
        if (qword_280D1AA10 == -1)
        {
          goto LABEL_54;
        }

        goto LABEL_110;
      }
    }

    else
    {
      v48 = [v146 remObjectID];
      if (v48)
      {
        goto LABEL_53;
      }
    }

LABEL_74:

    return MEMORY[0x277D84F90];
  }

LABEL_109:
  __break(1u);
LABEL_110:
  swift_once();
LABEL_54:
  v49 = qword_280D1AA18;
  sub_21D0CF7E0(&v164, v16);
  v146 = type metadata accessor for TTRListEditor();
  v50 = swift_initStackObject();
  v159 = type metadata accessor for TTRUserDefaults();
  v160 = &protocol witness table for TTRUserDefaults;
  v145 = v159;
  *&v158 = v49;
  v137 = v49;
  sub_21D0CF7E0(v167, v16);
  *(v50 + 64) = 0;
  *(v50 + 16) = v154;
  v51 = v163;
  v52 = v162;
  *(v50 + 24) = v161;
  *(v50 + 40) = v52;
  *(v50 + 56) = v51;
  swift_beginAccess();
  *(v50 + 64) = 0;
  sub_21D0D0FD0(&v158, v50 + 72);
  v150 = v37;

  if (v141)
  {
    sub_21D2272C4(v141, v7, v50);
  }

  v53 = v144;
  if (!v144)
  {
    sub_21D157850(v143, 0);
    v148 = [v7 updateReminder_];

    goto LABEL_69;
  }

  if (v144 != 1)
  {
    if (!v143)
    {
      sub_21D157850(0, 2u);
      v148 = 0;
      goto LABEL_76;
    }

    v148 = 1;
    sub_21D157850(1, 2u);
LABEL_69:
    v157 = MEMORY[0x277D84F90];

    v66 = v32;
    goto LABEL_77;
  }

  sub_21D157850(v143, 1u);
  v148 = [v7 updateReminder_];

LABEL_76:
  v157 = MEMORY[0x277D84F90];

  v65 = sub_21D1E3EEC(v75, sub_21D9D9774, sub_21D565304, sub_21D256E5C);
  v66 = v65;
LABEL_77:
  MEMORY[0x28223BE20](v65);
  v152 = v7;
  v132[2] = v7;
  v132[3] = v149;
  v132[4] = v168;
  v132[5] = &v157;
  v147 = v50;
  v132[6] = v50;
  v132[7] = v148;
  v133 = v53;
  v76 = v142;
  v77 = sub_21D173B74(sub_21D22CEA0, v132, v66);

  sub_21D0D3954(v168, &v155, &unk_27CE60D80);
  v154 = v77;
  if (v156)
  {
    v141 = v76;
    sub_21D0D0FD0(&v155, &v158);
    v142 = v157;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DA8);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_21DC08D00;
    if (v35)
    {
      *&v155 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      if (v35 < 0)
      {
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      v79 = 0;
      do
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v80 = MEMORY[0x223D44740](v79, v32);
        }

        else
        {
          v80 = *(v32 + 8 * v79 + 32);
        }

        v81 = v80;
        ++v79;
        v82 = [v80 v33[425]];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v35 != v79);

      v83 = v155;
      LOBYTE(v53) = v144;
    }

    else
    {

      v83 = MEMORY[0x277D84F90];
    }

    v85 = [v150 v33[425]];
    v86 = v78;
    *(v78 + 32) = v83;
    *(v78 + 40) = v85;
    v87 = v143;
    *(v78 + 48) = v143;
    *(v78 + 56) = v53;
    sub_21D157850(v87, v53);
    v53 = v142;
    v88 = sub_21D2080D0(v142);
    TTRUndoNavigationEditingTarget.init(reminderIDs:)(v88);
    v89 = v155;
    v90 = v159;
    v91 = v160;
    __swift_project_boxed_opaque_existential_1(&v158, v159);
    *&v155 = v89;
    v35 = swift_allocObject();
    v84 = v149;
    *(v35 + 16) = v149;
    *(v35 + 24) = v53;
    *(v35 + 32) = v86;
    v92 = v84;
    sub_21DBF8E0C();
    LOBYTE(v53) = v144;
    TTRUndoContext.registerUndo(forEditing:action:)(&v155, sub_21D22CF48, v35, v90, v91);

    __swift_destroy_boxed_opaque_existential_0(&v158);
    v77 = v154;
  }

  else
  {

    sub_21D0CF7E0(&v155, &unk_27CE60D80);
    v84 = v149;
  }

  v93 = *MEMORY[0x277D44BF0];
  LOBYTE(v158) = 1;
  TTRListEditor.edit(sortingStyle:reason:)(v93);

  sub_21D157478(v148, v53);

  sub_21D0CF7E0(v168, &unk_27CE60D80);
  v94 = &v84[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer];
  sub_21D0D32E4(&v84[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer], v168);
  type metadata accessor for TTRRemindersListInteractorSectionsCapability();
  v95 = swift_allocObject();
  *(v95 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_21D0D0FD0(v168, v95 + 32);
  swift_beginAccess();
  *(v95 + 24) = &protocol witness table for TTRRemindersListInteractor;
  swift_unknownObjectWeakAssign();
  if (v77 >> 62)
  {
    v96 = sub_21DBFBD7C();
  }

  else
  {
    v96 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v97 = v153;
  v53 = v150;
  if (v96)
  {
    *&v168[0] = MEMORY[0x277D84F90];
    v98 = v150;
    v99 = v152;
    v100 = v97;
    sub_21DBFC01C();
    if ((v96 & 0x8000000000000000) == 0)
    {
      v101 = 0;
      v102 = v77;
      do
      {
        if ((v77 & 0xC000000000000001) != 0)
        {
          v103 = MEMORY[0x223D44740](v101);
        }

        else
        {
          v103 = v102[v101 + 4];
        }

        v104 = v103;
        ++v101;
        v105 = [v103 v33[425]];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v102 = v154;
      }

      while (v96 != v101);
      v53 = v150;
      goto LABEL_100;
    }

    __break(1u);
    goto LABEL_113;
  }

  v106 = v150;
  v107 = v152;
  v108 = v97;
LABEL_100:
  v150 = v94;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v109 = *(v95 + 24);
    ObjectType = swift_getObjectType();
    v111 = *(v109 + 8);
    v112 = v53;
    v113 = v152;
    v114 = v152;
    v111(v168, v95, &protocol witness table for TTRRemindersListInteractorSectionsCapability, ObjectType, v109);
    swift_unknownObjectRelease();
  }

  else
  {
    v169 = 0;
    memset(v168, 0, sizeof(v168));
    v115 = v53;
    v113 = v152;
    v116 = v152;
  }

  sub_21D0D3954(v168, v167, &unk_27CE60D80);
  v117 = [v113 updateList_];
  sub_21D0D3954(v167, &v164, &unk_27CE60D80);
  sub_21D0CF7E0(v167, &unk_27CE60D80);
  v118 = swift_allocObject();
  *(&v162 + 1) = v145;
  v163 = &protocol witness table for TTRUserDefaults;
  *&v161 = v137;
  v119 = v137;
  sub_21D0CF7E0(v168, &unk_27CE60D80);
  *(v118 + 64) = 0;
  *(v118 + 16) = v117;
  v120 = v165;
  *(v118 + 24) = v164;
  *(v118 + 40) = v120;
  *(v118 + 56) = v166;
  swift_beginAccess();
  *(v118 + 64) = 0;
  sub_21D0D0FD0(&v161, v118 + 72);

  v121 = sub_21DBF8E0C();
  v122 = sub_21D19ED08(v121);

  *&v168[0] = v153;
  v123 = v153;
  TTRListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v122, v168, v138);

  sub_21D1BF9F4();

  v124 = *(v150 + 3);
  v125 = *(v150 + 4);
  __swift_project_boxed_opaque_existential_1(v150, v124);
  v126 = swift_allocObject();
  v127 = v139;
  v128 = v140;
  v126[2] = v139;
  v126[3] = v128;
  v126[4] = v151;
  v126[5] = v53;
  v129 = *(v125 + 16);
  v151 = v53;
  sub_21D0D0E78(v127);
  v130 = v152;
  v129(v152, sub_21D22CF08, v126, v124, v125);

  v131 = v153;
  return v154;
}

void TTRRemindersListInteractor.move(reminders:to:position:initialSectionIDByReminderID:initialUncompletedRemindersInTargetList:)(unint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  v18 = a2;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v16 = v8;
  v17 = v9;
  v10 = a2;
  sub_21D1F2014(a1, &v18, &v16, a4, a5, 0, 0);

  v11 = v18;
  v12 = v19;
  v13 = v20;
  v14 = v21;
  v15 = v22;

  sub_21D228360(v11, v12, v13, v14, v15);
}

void *TTRRemindersListInteractor.move(reminders:to:position:)(unint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v11 = a2;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v9 = v4;
  v10 = v5;
  v6 = a2;
  v7 = sub_21D1F2014(a1, &v11, &v9, 0, 0, 0, 0);
  sub_21D228360(v11, v12, v13, v14, v15);
  return v7;
}

void TTRRemindersListInteractor.move(reminders:to:position:initialSectionIDByReminderID:sortingStyleInPresenter:paramsForREMManualOrdering:changeReason:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, _OWORD *a6, char *a7)
{
  sub_21D1F4604(a1, a2, a3, a4, a5, a6, a7, sub_21D1F345C);
}

{
  sub_21D1F4604(a1, a2, a3, a4, a5, a6, a7, sub_21D1F46BC);
}

void sub_21D1F345C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v148 = a8;
  v140 = a4;
  v156 = sub_21DBF6D7C();
  v158 = *(v156 - 8);
  *&v16 = MEMORY[0x28223BE20](v156).n128_u64[0];
  v157 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  v19 = *(a2 + 32);
  v20 = *a3;
  LODWORD(v151) = *(a3 + 8);
  v22 = *a6;
  v21 = *(a6 + 8);
  v145 = *(a6 + 16);
  v144 = *(a6 + 24);
  v23 = *(a6 + 32);
  v149 = v20;
  v150 = v23;
  v143 = *(a6 + 40);
  v159 = a1;
  v152 = a1 >> 62;
  v25 = *(a6 + 48);
  v24 = *(a6 + 56);
  v141 = v22;
  v142 = v25;
  v153 = v24;
  v154 = v21;
  v146 = *a7;
  v147 = v10;
  if (!v19)
  {
    v155 = [v18 smartList];
    a7 = [v155 store];
    v40 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

    sub_21D0D32E4(v10 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, &v164);
    type metadata accessor for TTRRemindersListInteractorSectionsCapability();
    v41 = swift_allocObject();
    v41[3] = 0;
    swift_unknownObjectWeakInit();
    sub_21D0D0FD0(&v164, (v41 + 4));
    swift_beginAccess();
    v41[3] = &protocol witness table for TTRRemindersListInteractor;
    v139 = v41;
    swift_unknownObjectWeakAssign();
    v42 = v40;
    v43 = v18;
    v30 = v42;
    v31 = &off_278331000;
    v44 = [v43 objectID];
    if (v152)
    {
      goto LABEL_85;
    }

    v45 = *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_13;
  }

  v26 = *(a2 + 8);
  v27 = *(a2 + 16);
  v28 = *(a2 + 24);
  v138 = v28;
  v139 = v27;
  if (v19 == 1)
  {
    v136 = v26;
    sub_21D125950(v18, v26, v27, v28, 1u);
    v137 = v18;
    v155 = v18;
    v29 = [v155 store];
    v30 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

    sub_21D0D32E4(v10 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, &v164);
    type metadata accessor for TTRRemindersListInteractorSectionsCapability();
    v31 = swift_allocObject();
    *(v31 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_21D0D0FD0(&v164, v31 + 32);
    swift_beginAccess();
    *(v31 + 24) = &protocol witness table for TTRRemindersListInteractor;
    swift_unknownObjectWeakAssign();
    if (v152)
    {
      v32 = sub_21DBFBD7C();
      if (v32)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v32 = *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
LABEL_5:
        v135 = v31;
        *&v164 = MEMORY[0x277D84F90];
        v33 = v30;
        v34 = &v164;
        sub_21DBFC01C();
        if (v32 < 0)
        {
          __break(1u);
          goto LABEL_87;
        }

        v35 = 0;
        v36 = v159 & 0xC000000000000001;
        do
        {
          if (v36)
          {
            v37 = MEMORY[0x223D44740](v35, v159);
          }

          else
          {
            v37 = *(v159 + 8 * v35 + 32);
          }

          v38 = v37;
          ++v35;
          v39 = [(objc_class *)v37 objectID];

          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
        }

        while (v32 != v35);
        v31 = v135;
        goto LABEL_44;
      }
    }

    v88 = v30;
LABEL_44:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v89 = *(v31 + 24);
      ObjectType = swift_getObjectType();
      (*(v89 + 8))(&v164, v31, &protocol witness table for TTRRemindersListInteractorSectionsCapability, ObjectType, v89);
      swift_unknownObjectRelease();
    }

    else
    {
      v166 = 0;
      v164 = 0u;
      v165 = 0u;
    }

    sub_21D0D3954(&v164, &v161, &unk_27CE60D80);
    v91 = [v30 updateSmartList_];
    sub_21D0CF7E0(&v164, &unk_27CE60D80);
    type metadata accessor for TTRSmartListEditor();
    v92 = swift_allocObject();
    *(v92 + 16) = v91;
    v93 = v162;
    *(v92 + 24) = v161;
    *(v92 + 40) = v93;
    *(v92 + 56) = v163;
    *(v92 + 64) = 0;
    v94 = sub_21DBF8E0C();
    v95 = sub_21D19ED08(v94);

    *&v164 = 0;
    TTRSmartListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v95, &v164, v140);

    sub_21D2283C4(v137, v136, v139, v138, 1u);
    goto LABEL_48;
  }

  v51 = v26;
  v52 = v10;
  v53 = v18;
  v54 = [v53 store];
  v55 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  v30 = v55;
  TTRRemindersListInteractor.undoContext.getter(&v164);
  sub_21D0D3954(&v164, &v161, &unk_27CE60D80);
  v155 = v53;
  v56 = [v30 updateSmartList_];

  sub_21D0CF7E0(&v164, &unk_27CE60D80);
  v31 = type metadata accessor for TTRSmartListEditor();
  v34 = swift_allocObject();
  *(v34 + 2) = v56;
  v57 = v162;
  *(v34 + 24) = v161;
  *(v34 + 40) = v57;
  *(v34 + 7) = v163;
  *(v34 + 64) = 0;
  v58 = TTRSmartListEditor.addNewSection(with:displayName:)(v51);
  if (v58)
  {
    a7 = v58;
    v138 = v31;
    sub_21D0D32E4(v52 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, &v164);
    type metadata accessor for TTRRemindersListInteractorSectionsCapability();
    v59 = swift_allocObject();
    v59[3] = 0;
    swift_unknownObjectWeakInit();
    sub_21D0D0FD0(&v164, (v59 + 4));
    swift_beginAccess();
    v59[3] = &protocol witness table for TTRRemindersListInteractor;
    v136 = v59;
    swift_unknownObjectWeakAssign();
    v31 = &off_278331000;
    v135 = [a7 objectID];
    if (v152)
    {
      goto LABEL_88;
    }

    v60 = *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_23;
  }

  v22 = v141;
  while (1)
  {
LABEL_48:
    if (v152)
    {
      a7 = sub_21DBFBD7C();
    }

    else
    {
      a7 = *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v96 = MEMORY[0x277D84F90];
    if (!a7)
    {
      v102 = MEMORY[0x277D84F90];
      goto LABEL_59;
    }

    *&v164 = MEMORY[0x277D84F90];
    v44 = sub_21DBFC01C();
    if ((a7 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    v134 = v44;
    v45 = sub_21DBFBD7C();
    v44 = v134;
LABEL_13:
    v138 = v44;
    if (v45)
    {
      *&v164 = MEMORY[0x277D84F90];
      v34 = &v164;
      sub_21DBFC01C();
      if ((v45 & 0x8000000000000000) == 0)
      {
        v46 = 0;
        v47 = v159 & 0xC000000000000001;
        do
        {
          if (v47)
          {
            v48 = MEMORY[0x223D44740](v46, v159);
          }

          else
          {
            v48 = *(v159 + 8 * v46 + 32);
          }

          v49 = v48;
          ++v46;
          v50 = [v48 *(v31 + 3400)];

          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
        }

        while (v45 != v46);
        goto LABEL_31;
      }

LABEL_87:
      __break(1u);
LABEL_88:
      v60 = sub_21DBFBD7C();
LABEL_23:
      v22 = v141;
      v137 = v34;
      v139 = a7;
      if (v60)
      {
        *&v164 = MEMORY[0x277D84F90];
        v61 = v155;
        v62 = v30;
        sub_21DBFC01C();
        if (v60 < 0)
        {
          __break(1u);
          return;
        }

        v63 = 0;
        v64 = v159 & 0xC000000000000001;
        do
        {
          if (v64)
          {
            v65 = MEMORY[0x223D44740](v63, v159);
          }

          else
          {
            v65 = *(v159 + 8 * v63 + 32);
          }

          v66 = v65;
          ++v63;
          v67 = [v65 *(v31 + 3400)];

          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
        }

        while (v60 != v63);
      }

      else
      {
        v77 = v155;
        v78 = v30;
      }

      v79 = v136;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v80 = v79[3];
        v81 = swift_getObjectType();
        (*(v80 + 8))(&v164, v79, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v81, v80);
        swift_unknownObjectRelease();
      }

      else
      {
        v166 = 0;
        v164 = 0u;
        v165 = 0u;
      }

      sub_21D0D3954(&v164, &v161, &unk_27CE60D80);
      v31 = v155;
      v82 = [v30 updateSmartList_];
      sub_21D0CF7E0(&v164, &unk_27CE60D80);
      v83 = swift_allocObject();
      *(v83 + 16) = v82;
      v84 = v162;
      *(v83 + 24) = v161;
      *(v83 + 40) = v84;
      *(v83 + 56) = v163;
      *(v83 + 64) = 0;
      v85 = sub_21DBF8E0C();
      v86 = sub_21D19ED08(v85);

      v87 = v135;
      *&v164 = v135;
      TTRSmartListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v86, &v164, v140);
    }

    else
    {
LABEL_31:
      v68 = v139;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v69 = v68[3];
        v70 = swift_getObjectType();
        (*(v69 + 8))(&v164, v68, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v70, v69);
        swift_unknownObjectRelease();
      }

      else
      {
        v166 = 0;
        v164 = 0u;
        v165 = 0u;
      }

      sub_21D0D3954(&v164, &v161, &unk_27CE60D80);
      v31 = v155;
      v71 = [v30 updateSmartList_];
      sub_21D0CF7E0(&v164, &unk_27CE60D80);
      type metadata accessor for TTRSmartListEditor();
      v72 = swift_allocObject();
      *(v72 + 16) = v71;
      v73 = v162;
      *(v72 + 24) = v161;
      *(v72 + 40) = v73;
      *(v72 + 56) = v163;
      *(v72 + 64) = 0;
      v74 = sub_21DBF8E0C();
      v75 = sub_21D19ED08(v74);

      v76 = v138;
      *&v164 = v138;
      TTRSmartListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v75, &v164, v140);
    }
  }

  v97 = 0;
  v98 = v159 & 0xC000000000000001;
  do
  {
    if (v98)
    {
      v99 = MEMORY[0x223D44740](v97, v159);
    }

    else
    {
      v99 = *(v159 + 8 * v97 + 32);
    }

    v100 = v99;
    ++v97;
    v101 = [(objc_class *)v99 objectID];

    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    sub_21DBFBFFC();
  }

  while (a7 != v97);
  v102 = v164;
  v96 = MEMORY[0x277D84F90];
LABEL_59:
  v103 = v150;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v151)
  {
    if (v151 == 1)
    {
      v31 = [v149 remObjectID];
      v104 = 1;
      if (!a7)
      {
        v105 = 1;
LABEL_76:
        v151 = v105;
        goto LABEL_77;
      }
    }

    else
    {
      v31 = v149 != 0;
      v104 = 2;
      if (!a7)
      {
        v105 = 2;
        goto LABEL_76;
      }
    }
  }

  else
  {
    v31 = [v149 remObjectID];
    v104 = 0;
    if (!a7)
    {
      v151 = 0;
LABEL_77:
      v152 = v31;
      v107 = MEMORY[0x277D84F90];
      goto LABEL_78;
    }
  }

  *&v164 = v96;
  v44 = sub_21D18E718(0, a7 & ~(a7 >> 63), 0);
  if (a7 < 0)
  {
    goto LABEL_84;
  }

  v151 = v104;
  v152 = v31;
  v140 = v103;
  v149 = v102;
  v150 = v30;
  v106 = 0;
  v107 = v164;
  v108 = v159 & 0xC000000000000001;
  do
  {
    if (v108)
    {
      v109 = MEMORY[0x223D44740](v106, v159);
    }

    else
    {
      v109 = *(v159 + 8 * v106 + 32);
    }

    v110 = v109;
    v111 = [(objc_class *)v109 remObjectID];
    sub_21DBFADFC();

    [(objc_class *)v110 isCompleted];
    v112 = v157;
    sub_21DBF6D4C();

    *&v164 = v107;
    v114 = v107[2];
    v113 = v107[3];
    if (v114 >= v113 >> 1)
    {
      sub_21D18E718(v113 > 1, v114 + 1, 1);
      v112 = v157;
      v107 = v164;
    }

    ++v106;
    v107[2] = v114 + 1;
    (*(v158 + 32))(v107 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v114, v112, v156);
  }

  while (a7 != v106);
  v102 = v149;
  v30 = v150;
  v103 = v140;
  v22 = v141;
LABEL_78:
  sub_21D0D8CF0(0, &qword_27CE59830);
  *&v164 = v152;
  *(&v164 + 1) = v151;
  *&v165 = 0;
  v159 = sub_21D39D1B0(v103, v143, v142, v153, v22, v154, v107, 0, &v164);
  v166 = 0;
  v164 = 0u;
  v165 = 0u;
  if (v144)
  {
    sub_21D0D3954(&v164, &v161, &unk_27CE60D80);
    v115 = v30;
    v116 = v30;
    v117 = v145;
    v118 = [v115 updateTemplate_];
    sub_21D0CF7E0(&v164, &unk_27CE60D80);
    type metadata accessor for TTRTemplateEditor();
    inited = swift_initStackObject();
    *(inited + 16) = v118;
    v120 = v163;
    v121 = v162;
    *(inited + 24) = v161;
    *(inited + 40) = v121;
    *(inited + 56) = v120;
    *(inited + 64) = 0;
    v160 = v146;
    sub_21D866814(v159);
    v122 = *MEMORY[0x277D44BF0];
    v160 = 1;
    sub_21D863CB4(v122);
  }

  else
  {
    sub_21D0D3954(&v164, &v161, &unk_27CE60D80);
    v115 = v30;
    v116 = v30;
    v117 = v145;
    v123 = [v115 updateSmartList_];
    sub_21D0CF7E0(&v164, &unk_27CE60D80);
    type metadata accessor for TTRSmartListEditor();
    inited = swift_initStackObject();
    *(inited + 16) = v123;
    v124 = v163;
    v125 = v162;
    *(inited + 24) = v161;
    *(inited + 40) = v125;
    *(inited + 56) = v124;
    *(inited + 64) = 0;
    v160 = v146;
    sub_21D6532B4(v159);
    v126 = *MEMORY[0x277D44BF0];
    v160 = 1;
    sub_21D64F7E4(v126);
  }

  swift_setDeallocating();

  sub_21D0CF7E0(inited + 24, &unk_27CE60D80);
  v127 = *(v147 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 24);
  v128 = *(v147 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 32);
  __swift_project_boxed_opaque_existential_1((v147 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer), v127);
  v129 = swift_allocObject();
  v130 = v148;
  v129[2] = v148;
  v129[3] = a9;
  v129[4] = v102;
  v131 = v155;
  v129[5] = v155;
  v132 = *(v128 + 16);
  sub_21D0D0E78(v130);
  v133 = v131;
  v132(v116, sub_21D22CE8C, v129, v127, v128);
}

void sub_21D1F4604(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, _OWORD *a6, char *a7, void (*a8)(uint64_t, void **, uint64_t *, uint64_t, uint64_t, _OWORD *, char *, void, void))
{
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = a6[1];
  v19[0] = *a6;
  v19[1] = v14;
  v15 = a6[3];
  v19[2] = a6[2];
  v19[3] = v15;
  v16 = *a7;
  v22 = a2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v20 = v12;
  v21 = v13;
  v18 = v16;
  v17 = a2;
  a8(a1, &v22, &v20, a4, a5, v19, &v18, 0, 0);
  sub_21D2283C4(v22, v23, v24, v25, v26);
}

void sub_21D1F46BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9)
{
  v151 = a8;
  v145 = a4;
  v161 = sub_21DBF6D7C();
  v163 = *(v161 - 8);
  *&v14 = MEMORY[0x28223BE20](v161).n128_u64[0];
  v162 = &v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  v17 = *(a2 + 32);
  v18 = *a3;
  LODWORD(v154) = *(a3 + 8);
  v20 = *a6;
  v19 = *(a6 + 8);
  v149 = *(a6 + 16);
  v148 = *(a6 + 24);
  v21 = *(a6 + 32);
  v152 = v18;
  v153 = v21;
  v147 = *(a6 + 40);
  v164 = a1;
  v157 = a1 >> 62;
  v22 = *(a6 + 56);
  v146 = *(a6 + 48);
  v158 = v22;
  v159 = v19;
  v150 = *a7;
  v155 = v20;
  if (!v17)
  {
    v40 = [v16 parentTemplate];
    v41 = [v40 store];

    v42 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    v30 = v16;
    v26 = v42;
    v43 = [v30 parentTemplate];
    sub_21D0D32E4(v160 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, &v169);
    type metadata accessor for TTRRemindersListInteractorSectionsCapability();
    v44 = swift_allocObject();
    v44[3] = 0;
    swift_unknownObjectWeakInit();
    sub_21D0D0FD0(&v169, (v44 + 4));
    swift_beginAccess();
    v44[3] = &protocol witness table for TTRRemindersListInteractor;
    v144 = v44;
    swift_unknownObjectWeakAssign();
    v156 = v43;
    v29 = &off_278331000;
    v45 = [v30 objectID];
    v142 = [v30 parentTemplate];
    if (v157)
    {
      v46 = sub_21DBFBD7C();
    }

    else
    {
      v46 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v143 = v45;
    if (v46)
    {
      *&v169 = MEMORY[0x277D84F90];
      v34 = &v169;
      sub_21DBFC01C();
      if (v46 < 0)
      {
        goto LABEL_86;
      }

      v47 = 0;
      v48 = v164 & 0xC000000000000001;
      do
      {
        if (v48)
        {
          v49 = MEMORY[0x223D44740](v47, v164);
        }

        else
        {
          v49 = *(v164 + 8 * v47 + 32);
        }

        v50 = v49;
        ++v47;
        v51 = [v49 objectID];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v46 != v47);
    }

    v69 = v144;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v70 = v69[3];
      ObjectType = swift_getObjectType();
      (v70->superclass)(&v169, v69, &protocol witness table for TTRRemindersListInteractorSectionsCapability, ObjectType, v70);
      swift_unknownObjectRelease();
    }

    else
    {
      v171 = 0;
      v169 = 0u;
      v170 = 0u;
    }

    sub_21D0D3954(&v169, &v166, &unk_27CE60D80);
    v83 = v142;
    v84 = [v26 updateTemplate_];
    sub_21D0CF7E0(&v169, &unk_27CE60D80);
    type metadata accessor for TTRTemplateEditor();
    v85 = swift_allocObject();
    *(v85 + 16) = v84;
    v86 = v167;
    *(v85 + 24) = v166;
    *(v85 + 40) = v86;
    *(v85 + 56) = v168;
    *(v85 + 64) = 0;
    v87 = sub_21DBF8E0C();
    v88 = sub_21D19ED08(v87);

    v89 = v143;
    *&v169 = v143;
    TTRTemplateEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v88, &v169, v145);

    if (v157)
    {
      goto LABEL_80;
    }

    goto LABEL_45;
  }

  v23 = *(a2 + 8);
  v24 = *(a2 + 16);
  if (v17 != 1)
  {
    v144 = *(a2 + 8);
    v52 = v16;
    v53 = [v52 store];
    v54 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

    v55 = v52;
    v26 = v54;
    v56 = v160;
    TTRRemindersListInteractor.undoContext.getter(&v169);
    sub_21D0D3954(&v169, &v166, &unk_27CE60D80);
    v57 = [v26 updateTemplate_];
    v156 = v55;

    sub_21D0CF7E0(&v169, &unk_27CE60D80);
    v30 = type metadata accessor for TTRTemplateEditor();
    v34 = swift_allocObject();
    *(v34 + 2) = v57;
    v58 = v167;
    *(v34 + 24) = v166;
    *(v34 + 40) = v58;
    *(v34 + 7) = v168;
    *(v34 + 64) = 0;
    v59 = TTRTemplateEditor.addNewSection(with:displayName:)(v144);
    if (!v59)
    {

      v20 = v155;
      if (v157)
      {
        goto LABEL_80;
      }

      goto LABEL_45;
    }

    v29 = v59;
    sub_21D0D32E4(v56 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, &v169);
    type metadata accessor for TTRRemindersListInteractorSectionsCapability();
    v60 = swift_allocObject();
    *(v60 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_21D0D0FD0(&v169, v60 + 32);
    swift_beginAccess();
    *(v60 + 24) = &protocol witness table for TTRRemindersListInteractor;
    v141 = v60;
    swift_unknownObjectWeakAssign();
    v140 = [v29 remObjectID];
    v20 = v155;
    if (v157)
    {
      goto LABEL_87;
    }

    v61 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_24;
  }

  v142 = *(a2 + 24);
  v143 = v24;
  v20 = v23;
  v144 = v16;
  v156 = v16;
  v25 = [v156 store];
  v26 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  sub_21D0D32E4(v160 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, &v169);
  type metadata accessor for TTRRemindersListInteractorSectionsCapability();
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_21D0D0FD0(&v169, v27 + 32);
  swift_beginAccess();
  *(v27 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v141 = v27;
  swift_unknownObjectWeakAssign();
  if (v157)
  {
    goto LABEL_83;
  }

  for (i = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
  {
    v29 = v20;
    v31 = v142;
    v30 = v143;
    if (!i)
    {
      v72 = v144;
      sub_21D125950(v144, v20, v143, v142, 1u);
      sub_21D125950(v72, v20, v30, v31, 1u);
      v73 = v26;
      goto LABEL_36;
    }

    *&v169 = MEMORY[0x277D84F90];
    v32 = v144;
    sub_21D125950(v144, v20, v143, v142, 1u);
    sub_21D125950(v32, v20, v30, v31, 1u);
    v33 = v26;
    v34 = &v169;
    sub_21DBFC01C();
    if ((i & 0x8000000000000000) == 0)
    {
      v35 = 0;
      v36 = v164 & 0xC000000000000001;
      do
      {
        if (v36)
        {
          v37 = MEMORY[0x223D44740](v35, v164);
        }

        else
        {
          v37 = *(v164 + 8 * v35 + 32);
        }

        v38 = v37;
        ++v35;
        v39 = [v37 objectID];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (i != v35);
      v29 = v20;
LABEL_36:
      v74 = v141;
      Strong = swift_unknownObjectWeakLoadStrong();
      v20 = v155;
      if (Strong)
      {
        v76 = *(v74 + 24);
        v77 = swift_getObjectType();
        (*(v76 + 8))(&v169, v74, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v77, v76);
        swift_unknownObjectRelease();
      }

      else
      {
        v171 = 0;
        v169 = 0u;
        v170 = 0u;
      }

      sub_21D0D3954(&v169, &v166, &unk_27CE60D80);
      v78 = [v26 updateTemplate_];
      sub_21D0CF7E0(&v169, &unk_27CE60D80);
      type metadata accessor for TTRTemplateEditor();
      v79 = swift_allocObject();
      *(v79 + 16) = v78;
      v80 = v167;
      *(v79 + 24) = v166;
      *(v79 + 40) = v80;
      *(v79 + 56) = v168;
      *(v79 + 64) = 0;
      v81 = sub_21DBF8E0C();
      v82 = sub_21D19ED08(v81);

      *&v169 = 0;
      TTRTemplateEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v82, &v169, v145);

      sub_21D2283C4(v144, v29, v143, v142, 1u);
      if (!v157)
      {
        goto LABEL_45;
      }

      goto LABEL_80;
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    v61 = sub_21DBFBD7C();
LABEL_24:
    v143 = v34;
    v144 = v29;
    v142 = v30;
    if (v61)
    {
      *&v169 = MEMORY[0x277D84F90];
      v62 = v156;
      v63 = v26;
      sub_21DBFC01C();
      if (v61 < 0)
      {
        __break(1u);
        return;
      }

      v64 = 0;
      v65 = v164 & 0xC000000000000001;
      do
      {
        if (v65)
        {
          v66 = MEMORY[0x223D44740](v64, v164);
        }

        else
        {
          v66 = *(v164 + 8 * v64 + 32);
        }

        v67 = v66;
        ++v64;
        v68 = [v66 objectID];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v61 != v64);
    }

    else
    {
      v128 = v156;
      v129 = v26;
    }

    v130 = v141;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v131 = *(v130 + 24);
      v132 = swift_getObjectType();
      (*(v131 + 8))(&v169, v130, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v132, v131);
      swift_unknownObjectRelease();
    }

    else
    {
      v171 = 0;
      v169 = 0u;
      v170 = 0u;
    }

    sub_21D0D3954(&v169, &v166, &unk_27CE60D80);
    v133 = v156;
    v134 = [v26 updateTemplate_];
    sub_21D0CF7E0(&v169, &unk_27CE60D80);
    v135 = swift_allocObject();
    *(v135 + 16) = v134;
    v136 = v167;
    *(v135 + 24) = v166;
    *(v135 + 40) = v136;
    *(v135 + 56) = v168;
    *(v135 + 64) = 0;
    v137 = sub_21DBF8E0C();
    v138 = sub_21D19ED08(v137);

    v139 = v140;
    *&v169 = v140;
    TTRTemplateEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v138, &v169, v145);

    if (!v157)
    {
LABEL_45:
      v90 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_46;
    }

LABEL_80:
    v90 = sub_21DBFBD7C();
LABEL_46:
    v91 = MEMORY[0x277D84F90];
    if (v90)
    {
      *&v169 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      if (v90 < 0)
      {
        __break(1u);
        goto LABEL_82;
      }

      v92 = 0;
      v93 = v164 & 0xC000000000000001;
      do
      {
        if (v93)
        {
          v94 = MEMORY[0x223D44740](v92, v164);
        }

        else
        {
          v94 = *(v164 + 8 * v92 + 32);
        }

        v95 = v94;
        ++v92;
        v96 = [v94 objectID];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v90 != v92);
      v97 = v169;
      v91 = MEMORY[0x277D84F90];
    }

    else
    {
      v97 = MEMORY[0x277D84F90];
    }

    v98 = v153;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v157 = v97;
    if (v154)
    {
      if (v154 == 1)
      {
        v99 = [v152 remObjectID];
        v154 = 1;
        if (!v90)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v99 = v152 != 0;
        v154 = 2;
        if (!v90)
        {
LABEL_68:
          v101 = MEMORY[0x277D84F90];
          goto LABEL_69;
        }
      }
    }

    else
    {
      v99 = [v152 remObjectID];
      v154 = 0;
      if (!v90)
      {
        goto LABEL_68;
      }
    }

    *&v169 = v91;
    sub_21D18E718(0, v90 & ~(v90 >> 63), 0);
    if ((v90 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    ;
  }

  v145 = v99;
  v152 = v98;
  v153 = v26;
  v100 = 0;
  v101 = v169;
  v102 = v164 & 0xC000000000000001;
  do
  {
    if (v102)
    {
      v103 = MEMORY[0x223D44740](v100, v164);
    }

    else
    {
      v103 = *(v164 + 8 * v100 + 32);
    }

    v104 = v103;
    v105 = [v103 remObjectID];
    sub_21DBFADFC();

    [v104 isCompleted];
    v106 = v162;
    sub_21DBF6D4C();

    *&v169 = v101;
    v108 = v101[2];
    v107 = v101[3];
    if (v108 >= v107 >> 1)
    {
      sub_21D18E718(v107 > 1, v108 + 1, 1);
      v106 = v162;
      v101 = v169;
    }

    ++v100;
    v101[2] = v108 + 1;
    (*(v163 + 32))(v101 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v108, v106, v161);
  }

  while (v90 != v100);
  v98 = v152;
  v26 = v153;
  v20 = v155;
  v99 = v145;
LABEL_69:
  sub_21D0D8CF0(0, &qword_27CE59830);
  *&v169 = v99;
  *(&v169 + 1) = v154;
  *&v170 = 0;
  v109 = sub_21D39D1B0(v98, v147, v146, v158, v20, v159, v101, 0, &v169);
  v171 = 0;
  v169 = 0u;
  v170 = 0u;
  if (v148)
  {
    sub_21D0D3954(&v169, &v166, &unk_27CE60D80);
    v110 = v26;
    v111 = v26;
    v112 = v149;
    v113 = [v110 updateTemplate_];
    sub_21D0CF7E0(&v169, &unk_27CE60D80);
    type metadata accessor for TTRTemplateEditor();
    inited = swift_initStackObject();
    *(inited + 16) = v113;
    v115 = v168;
    v116 = v167;
    *(inited + 24) = v166;
    *(inited + 40) = v116;
    *(inited + 56) = v115;
    *(inited + 64) = 0;
    v165 = v150;
    sub_21D866814(v109);
    v117 = *MEMORY[0x277D44BF0];
    v165 = 1;
    sub_21D863CB4(v117);
  }

  else
  {
    sub_21D0D3954(&v169, &v166, &unk_27CE60D80);
    v110 = v26;
    v111 = v26;
    v112 = v149;
    v118 = [v110 updateSmartList_];
    sub_21D0CF7E0(&v169, &unk_27CE60D80);
    type metadata accessor for TTRSmartListEditor();
    inited = swift_initStackObject();
    *(inited + 16) = v118;
    v119 = v168;
    v120 = v167;
    *(inited + 24) = v166;
    *(inited + 40) = v120;
    *(inited + 56) = v119;
    *(inited + 64) = 0;
    v165 = v150;
    sub_21D6532B4(v109);
    v121 = *MEMORY[0x277D44BF0];
    v165 = 1;
    sub_21D64F7E4(v121);
  }

  swift_setDeallocating();

  sub_21D0CF7E0(inited + 24, &unk_27CE60D80);
  v122 = *(v160 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 24);
  v123 = *(v160 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 32);
  __swift_project_boxed_opaque_existential_1((v160 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer), v122);
  v124 = swift_allocObject();
  v125 = v151;
  v124[2] = v151;
  v124[3] = a9;
  v126 = v156;
  v124[4] = v157;
  v124[5] = v126;
  v127 = *(v123 + 16);
  sub_21D0D0E78(v125);
  v127(v111, sub_21D22CE78, v124, v122, v123);
}

void TTRRemindersListInteractor.move(reminders:toNewSection:sectionID:targetList:position:initialSectionIDByReminderID:isFromSuggestion:moveSectionCompletion:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v13 = *a6;
  v14 = *(a6 + 8);
  v24 = a5;
  v25 = a4;
  v26 = a2;
  v27 = a3;
  v28 = a8 | 0x80;
  v22 = v13;
  v23 = v14;
  v15 = a4;
  sub_21DBF8E0C();
  v16 = a5;
  sub_21D1F2014(a1, &v24, &v22, a7, 0, a9, a10);

  v17 = v24;
  v18 = v25;
  v19 = v26;
  v20 = v27;
  v21 = v28;

  sub_21D228360(v17, v18, v19, v20, v21);
}

void sub_21D1F5A50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, _OWORD *a9, char *a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t, void **, uint64_t *, uint64_t, uint64_t, _OWORD *, char *, uint64_t, uint64_t))
{
  v17 = *a6;
  v18 = *(a6 + 8);
  v19 = a9[1];
  v25[0] = *a9;
  v25[1] = v19;
  v20 = a9[3];
  v25[2] = a9[2];
  v25[3] = v20;
  v21 = *a10;
  v28 = a5;
  v29 = a4;
  v30 = a2;
  v31 = a3;
  v32 = 2;
  v26 = v17;
  v27 = v18;
  v24 = v21;
  v22 = a4;
  sub_21DBF8E0C();
  v23 = a5;
  a13(a1, &v28, &v26, a7, a8, v25, &v24, a11, a12);
  sub_21D2283C4(v28, v29, v30, v31, v32);
}

void sub_21D1F5B68(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, _OWORD *a6, char *a7, void (*a8)(uint64_t, void **, uint64_t *, uint64_t, uint64_t, _OWORD *, char *, void, void))
{
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = a6[1];
  v19[0] = *a6;
  v19[1] = v14;
  v15 = a6[3];
  v19[2] = a6[2];
  v19[3] = v15;
  v16 = *a7;
  v22 = a2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 1;
  v20 = v12;
  v21 = v13;
  v18 = v16;
  v17 = a2;
  a8(a1, &v22, &v20, a4, a5, v19, &v18, 0, 0);
  sub_21D2283C4(v22, v23, v24, v25, v26);
}

uint64_t TTRRemindersListInteractor.move(topLevelReminders:to:)(unint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (a1 >> 62)
  {
    v5 = sub_21DBFBD7C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    result = sub_21DBFC01C();
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223D44740](v8, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      v11 = [v9 objectID];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v5 != v8);
    v6 = v12;
  }

  sub_21D20D1B8(v6, v3, v4, 0, 0);
}

void TTRRemindersListInteractor.move(reminders:position:initialSectionIDByReminderID:makeTopLevelInParentREMList:sortingStyleInPresenter:paramsForREMManualOrdering:changeReason:)(NSObject *a1, uint64_t a2, uint64_t a3, int a4, char *a5, uint64_t a6, unsigned __int8 *a7)
{
  LODWORD(v171) = a4;
  v166 = a3;
  v184 = a1;
  v181 = sub_21DBF6D7C();
  v183 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v182 = &v165 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF70DC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v180 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v165 - v18;
  v169 = *a2;
  LODWORD(v170) = *(a2 + 8);
  v20 = *a6;
  v177 = *(a6 + 8);
  v178 = v20;
  v21 = *(a6 + 16);
  v179 = *(a6 + 24);
  v176 = *(a6 + 32);
  v168 = *(a6 + 40);
  v22 = *(a6 + 48);
  v23 = *(a6 + 56);
  v167 = v22;
  v175 = *a7;
  (*(v14 + 104))(&v165 - v18, *MEMORY[0x277D45418], v13, v17);
  LOBYTE(a7) = MEMORY[0x223D3F870](a5, v19);
  v174 = *(v14 + 8);
  (v174)(v19, v13);
  if ((a7 & 1) == 0 && v7[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_canChangeSortingStyle] != 1)
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v30 = sub_21DBF84BC();
    __swift_project_value_buffer(v30, qword_280D0F228);
    v31 = v180;
    (*(v14 + 16))(v180, a5, v13);
    v32 = v21;
    v33 = v7;
    v34 = sub_21DBF84AC();
    v35 = sub_21DBFAEBC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v186 = v37;
      *v36 = 136315650;
      *&v189 = v21;
      BYTE8(v189) = v179;
      v38 = TTRRemindersListREMManualOrderingSaveTarget.debugDescription.getter();
      v40 = sub_21D0CDFB4(v38, v39, &v186);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_21D0CDFB4(0x65736C6166, 0xE500000000000000, &v186);
      *(v36 + 22) = 2080;
      sub_21D0F1C20(&qword_27CE59828, MEMORY[0x277D45430]);
      v41 = sub_21DBFC5BC();
      v43 = v42;
      (v174)(v31, v13);
      v44 = sub_21D0CDFB4(v41, v43, &v186);

      *(v36 + 24) = v44;
      _os_log_impl(&dword_21D0C9000, v34, v35, "Illegal attempt to move reminders in list using REMManualOrdering {saveTarget: %s, canChangeSortingStyle: %s, sortingStyleInPresenter: %s}", v36, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v37, -1, -1);
      MEMORY[0x223D46520](v36, -1, -1);
    }

    else
    {

      (v174)(v31, v13);
    }

    return;
  }

  v173 = v23;
  v174 = v21;
  v180 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  v172 = v7;
  [v180 setNotifyChangeDelegate_];
  v24 = v184;
  if (v171)
  {
    if (v184 >> 62)
    {
      v25 = sub_21DBFBD7C();
      if (v25)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v25 = *((v184 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
LABEL_6:
        if (v25 < 1)
        {
          __break(1u);
          goto LABEL_87;
        }

        for (i = 0; i != v25; ++i)
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x223D44740](i, v24);
          }

          else
          {
            v27 = *(v24 + 8 * i + 32);
          }

          v28 = v27;
          if ([v27 isSubtask])
          {
            v29 = [v180 updateReminder_];
            [v29 setParentReminderID_];

            v28 = v29;
          }
        }
      }
    }
  }

  LOBYTE(v14) = v179;
  if (v179)
  {
    a5 = v174;
    v21 = v180;
    if (v175 != 1)
    {
      goto LABEL_105;
    }

    sub_21D0D32E4(&v172[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer], &v189);
    type metadata accessor for TTRRemindersListInteractorSectionsCapability();
    v45 = v24;
    v24 = swift_allocObject();
    *(v24 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_21D0D0FD0(&v189, v24 + 32);
    swift_beginAccess();
    *(v24 + 24) = &protocol witness table for TTRRemindersListInteractor;
    swift_unknownObjectWeakAssign();
    if (!(v45 >> 62))
    {
      v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
LABEL_24:
        *&v189 = MEMORY[0x277D84F90];
        v47 = a5;
        v48 = v21;
        sub_21DBFC01C();
        if ((v46 & 0x8000000000000000) == 0)
        {
          v49 = 0;
          v50 = v184 & 0xC000000000000001;
          do
          {
            if (v50)
            {
              v51 = MEMORY[0x223D44740](v49, v184);
            }

            else
            {
              v51 = *(v184 + 8 * v49 + 32);
            }

            v52 = v51;
            ++v49;
            v53 = [(objc_class *)v51 objectID];

            sub_21DBFBFEC();
            sub_21DBFC03C();
            sub_21DBFC04C();
            sub_21DBFBFFC();
          }

          while (v46 != v49);
          LOBYTE(v14) = v179;
          v21 = v180;
          goto LABEL_89;
        }

        __break(1u);
        goto LABEL_94;
      }

LABEL_88:
      v112 = a5;
      v113 = v21;
LABEL_89:
      if (swift_unknownObjectWeakLoadStrong())
      {
        v114 = *(v24 + 24);
        ObjectType = swift_getObjectType();
        (*(v114 + 8))(&v189, v24, &protocol witness table for TTRRemindersListInteractorSectionsCapability, ObjectType, v114);
        swift_unknownObjectRelease();
      }

      else
      {
        v191 = 0;
        v189 = 0u;
        v190 = 0u;
      }

      sub_21D0D3954(&v189, &v186, &unk_27CE60D80);
      v116 = [v21 updateTemplate_];
      sub_21D0CF7E0(&v189, &unk_27CE60D80);
      type metadata accessor for TTRTemplateEditor();
      v117 = swift_allocObject();
      *(v117 + 16) = v116;
      v118 = v187;
      *(v117 + 24) = v186;
      *(v117 + 40) = v118;
      *(v117 + 56) = v188;
      *(v117 + 64) = 0;
      v119 = sub_21DBF8E0C();
      v120 = sub_21D19ED08(v119);

      *&v189 = 0;
      TTRTemplateEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v120, &v189, v166);

      goto LABEL_104;
    }

LABEL_87:
    v46 = sub_21DBFBD7C();
    if (v46)
    {
      goto LABEL_24;
    }

    goto LABEL_88;
  }

  a5 = v174;
  v171 = v174;
  v54 = [v171 smartListType];
  v55 = sub_21DBFA16C();
  v57 = v56;
  if (v55 == sub_21DBFA16C() && v57 == v58)
  {

    v21 = v180;
LABEL_37:
    if (v175 > 1)
    {
      if (v175 == 2)
      {
        v74 = v172;
        TTRRemindersListInteractor.undoContext.getter(&v189);
        sub_21D1F73DC(v24, v171, v21, &v189, qword_282EADF38, sub_21D22CD60);

        sub_21D0CF7E0(&v189, &unk_27CE60D80);
        sub_21D0D32E4(&v74[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer], &v189);
        type metadata accessor for TTRRemindersListInteractorSectionsCapability();
        v75 = v24;
        v24 = swift_allocObject();
        *(v24 + 24) = 0;
        swift_unknownObjectWeakInit();
        sub_21D0D0FD0(&v189, v24 + 32);
        swift_beginAccess();
        *(v24 + 24) = &protocol witness table for TTRRemindersListInteractor;
        swift_unknownObjectWeakAssign();
        if (!(v75 >> 62))
        {
          v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v76)
          {
LABEL_95:
            v121 = v21;
            goto LABEL_96;
          }

          goto LABEL_56;
        }

LABEL_94:
        v76 = sub_21DBFBD7C();
        if (!v76)
        {
          goto LABEL_95;
        }

LABEL_56:
        *&v189 = MEMORY[0x277D84F90];
        v77 = v21;
        v54 = &v189;
        sub_21DBFC01C();
        if ((v76 & 0x8000000000000000) == 0)
        {
          v78 = 0;
          v79 = v184 & 0xC000000000000001;
          do
          {
            if (v79)
            {
              v80 = MEMORY[0x223D44740](v78, v184);
            }

            else
            {
              v80 = *(v184 + 8 * v78 + 32);
            }

            v81 = v80;
            ++v78;
            v82 = [(objc_class *)v80 objectID];

            sub_21DBFBFEC();
            sub_21DBFC03C();
            sub_21DBFC04C();
            sub_21DBFBFFC();
          }

          while (v76 != v78);
          LOBYTE(v14) = v179;
          v21 = v180;
LABEL_96:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            v191 = 0;
            v189 = 0u;
            v190 = 0u;
LABEL_103:
            sub_21D0D3954(&v189, &v186, &unk_27CE60D80);
            v125 = v171;
            v126 = [v21 updateSmartList_];
            sub_21D0CF7E0(&v189, &unk_27CE60D80);
            type metadata accessor for TTRSmartListEditor();
            v127 = swift_allocObject();
            *(v127 + 16) = v126;
            v128 = v187;
            *(v127 + 24) = v186;
            *(v127 + 40) = v128;
            *(v127 + 56) = v188;
            *(v127 + 64) = 0;
            v129 = sub_21DBF8E0C();
            v130 = sub_21D19ED08(v129);

            *&v189 = 0;
            TTRSmartListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v130, &v189, v166);

LABEL_104:

            v24 = v184;
LABEL_105:
            v73 = v170;
            if (!v170)
            {
              goto LABEL_65;
            }

            goto LABEL_106;
          }

LABEL_101:
          v123 = *(v24 + 24);
          v124 = swift_getObjectType();
          (*(v123 + 8))(&v189, v24, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v124, v123);
          swift_unknownObjectRelease();
          goto LABEL_103;
        }

        __break(1u);
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

LABEL_64:

      v73 = v170;
      if (!v170)
      {
        goto LABEL_65;
      }

      goto LABEL_106;
    }

    if (!v175)
    {
      goto LABEL_64;
    }

    sub_21D0D32E4(&v172[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer], &v189);
    type metadata accessor for TTRRemindersListInteractorSectionsCapability();
    v61 = v24;
    v24 = swift_allocObject();
    *(v24 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_21D0D0FD0(&v189, v24 + 32);
    swift_beginAccess();
    *(v24 + 24) = &protocol witness table for TTRRemindersListInteractor;
    swift_unknownObjectWeakAssign();
    if (v61 >> 62)
    {
      v62 = sub_21DBFBD7C();
      if (v62)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v62)
      {
LABEL_44:
        *&v189 = MEMORY[0x277D84F90];
        v63 = v21;
        v54 = &v189;
        sub_21DBFC01C();
        if (v62 < 0)
        {
          goto LABEL_132;
        }

        v64 = 0;
        v65 = v184 & 0xC000000000000001;
        do
        {
          if (v65)
          {
            v66 = MEMORY[0x223D44740](v64, v184);
          }

          else
          {
            v66 = *(v184 + 8 * v64 + 32);
          }

          v67 = v66;
          ++v64;
          v68 = [(objc_class *)v66 objectID];

          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
        }

        while (v62 != v64);
        LOBYTE(v14) = v179;
        v21 = v180;
LABEL_100:
        if (!swift_unknownObjectWeakLoadStrong())
        {
          v191 = 0;
          v189 = 0u;
          v190 = 0u;
          goto LABEL_103;
        }

        goto LABEL_101;
      }
    }

    v122 = v21;
    goto LABEL_100;
  }

  v60 = sub_21DBFC64C();

  v21 = v180;
  if (v60)
  {

    goto LABEL_37;
  }

  v69 = sub_21DBFA16C();
  v71 = v70;
  if (v69 == sub_21DBFA16C() && v71 == v72)
  {
LABEL_52:

    v73 = v170;
    if (!v170)
    {
      goto LABEL_65;
    }

    goto LABEL_106;
  }

  v83 = sub_21DBFC64C();

  if (v83)
  {
    goto LABEL_63;
  }

  v87 = sub_21DBFA16C();
  v89 = v88;
  if (v87 == sub_21DBFA16C() && v89 == v90)
  {
    goto LABEL_52;
  }

  v91 = sub_21DBFC64C();

  if (v91)
  {
    goto LABEL_63;
  }

  v92 = sub_21DBFA16C();
  v94 = v93;
  if (v92 == sub_21DBFA16C() && v94 == v95)
  {
    goto LABEL_52;
  }

  v96 = sub_21DBFC64C();

  if (v96)
  {
    goto LABEL_63;
  }

  v97 = sub_21DBFA16C();
  v99 = v98;
  if (v97 == sub_21DBFA16C() && v99 == v100)
  {
    goto LABEL_52;
  }

  v101 = sub_21DBFC64C();

  if (v101)
  {
    goto LABEL_63;
  }

  v102 = sub_21DBFA16C();
  v104 = v103;
  if (v102 == sub_21DBFA16C() && v104 == v105)
  {
    goto LABEL_52;
  }

  v106 = sub_21DBFC64C();

  if (v106)
  {
LABEL_63:

    goto LABEL_64;
  }

  v107 = sub_21DBFA16C();
  v109 = v108;
  if (v107 == sub_21DBFA16C() && v109 == v110)
  {
    goto LABEL_52;
  }

  v111 = sub_21DBFC64C();

  if ((v111 & 1) == 0)
  {
    goto LABEL_128;
  }

LABEL_85:

  while (1)
  {
    a5 = v174;
    LOBYTE(v14) = v179;
    v24 = v184;
    v21 = v180;
    v73 = v170;
    if (v170)
    {
LABEL_106:
      v85 = v173;
      if (v73 == 1)
      {
        v131 = v176;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v86 = [v169 remObjectID];
        v132 = 1;
        if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v86 = v169 != 0;
        v159 = v176;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v132 = 2;
        if ((v24 & 0x8000000000000000) != 0)
        {
LABEL_125:
          v171 = v132;
          goto LABEL_126;
        }
      }

      v171 = v132;
      if ((v24 & 0x4000000000000000) == 0)
      {
        goto LABEL_109;
      }
    }

    else
    {
LABEL_65:
      v84 = v176;
      v85 = v173;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v86 = [v169 remObjectID];
      v171 = 0;
      if ((v24 & 0x8000000000000000) == 0 && (v24 & 0x4000000000000000) == 0)
      {
LABEL_109:
        v133 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_110;
      }
    }

LABEL_126:
    v133 = sub_21DBFBD7C();
LABEL_110:
    v134 = MEMORY[0x277D84F90];
    if (!v133)
    {
      goto LABEL_120;
    }

    *&v189 = MEMORY[0x277D84F90];
    v54 = &v189;
    sub_21D18E718(0, v133 & ~(v133 >> 63), 0);
    if ((v133 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_128:
    v160 = sub_21DBFA16C();
    v162 = v161;
    if (v160 == sub_21DBFA16C() && v162 == v163)
    {
    }

    else
    {
LABEL_133:
      v164 = sub_21DBFC64C();

      if (v164)
      {
        goto LABEL_85;
      }
    }
  }

  v170 = v86;
  v135 = 0;
  v134 = v189;
  v136 = v24 & 0xC000000000000001;
  do
  {
    if (v136)
    {
      v137 = MEMORY[0x223D44740](v135, v24);
    }

    else
    {
      v137 = *(v24 + 8 * v135 + 32);
    }

    v138 = v137;
    v139 = [v137 remObjectID];
    sub_21DBFADFC();

    [v138 isCompleted];
    v140 = v182;
    sub_21DBF6D4C();

    *&v189 = v134;
    v142 = v134[2];
    v141 = v134[3];
    if (v142 >= v141 >> 1)
    {
      sub_21D18E718(v141 > 1, v142 + 1, 1);
      v140 = v182;
      v134 = v189;
    }

    ++v135;
    v134[2] = v142 + 1;
    (*(v183 + 32))(v134 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v142, v140, v181);
    v24 = v184;
  }

  while (v133 != v135);
  v85 = v173;
  a5 = v174;
  LOBYTE(v14) = v179;
  v21 = v180;
  v86 = v170;
LABEL_120:
  sub_21D0D8CF0(0, &qword_27CE59830);
  *&v189 = v86;
  *(&v189 + 1) = v171;
  *&v190 = 0;
  v184 = sub_21D39D1B0(v176, v168, v167, v85, v178, v177, v134, 0, &v189);
  v191 = 0;
  v189 = 0u;
  v190 = 0u;
  sub_21D0D3954(&v189, &v186, &unk_27CE60D80);
  v143 = v21;
  if (v14)
  {
    v144 = [v143 updateTemplate_];
    sub_21D0CF7E0(&v189, &unk_27CE60D80);
    type metadata accessor for TTRTemplateEditor();
    v145 = v21;
    inited = swift_initStackObject();
    *(inited + 16) = v144;
    v147 = v188;
    v148 = v187;
    *(inited + 24) = v186;
    *(inited + 40) = v148;
    *(inited + 56) = v147;
    *(inited + 64) = 0;
    v185 = v175;
    sub_21D866814(v184);
    v149 = *MEMORY[0x277D44BF0];
    v185 = 1;
    sub_21D863CB4(v149);
  }

  else
  {
    v150 = [v143 updateSmartList_];
    sub_21D0CF7E0(&v189, &unk_27CE60D80);
    type metadata accessor for TTRSmartListEditor();
    v145 = v21;
    inited = swift_initStackObject();
    *(inited + 16) = v150;
    v151 = v188;
    v152 = v187;
    *(inited + 24) = v186;
    *(inited + 40) = v152;
    *(inited + 56) = v151;
    *(inited + 64) = 0;
    v185 = v175;
    sub_21D6532B4(v184);
    v153 = *MEMORY[0x277D44BF0];
    v185 = 1;
    sub_21D64F7E4(v153);
  }

  swift_setDeallocating();

  sub_21D0CF7E0(inited + 24, &unk_27CE60D80);
  v154 = *&v172[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 24];
  v155 = *&v172[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 32];
  __swift_project_boxed_opaque_existential_1(&v172[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer], v154);
  v156 = swift_allocObject();
  *(v156 + 16) = v24;
  *(v156 + 24) = a5;
  *(v156 + 32) = v14;
  v157 = *(v155 + 16);
  v158 = a5;
  sub_21DBF8E0C();
  v157(v145, sub_21D228424, v156, v154, v155);
}

unint64_t sub_21D1F73DC(unint64_t a1, NSObject *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = v6;
  v84 = a4;
  v87[5] = *MEMORY[0x277D85DE8];
  v82 = sub_21DBF563C();
  v13 = *(v82 - 8);
  *&v14 = MEMORY[0x28223BE20](v82).n128_u64[0];
  v81 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 customContext];
  if (!v16 || (v17 = v16, v18 = sub_21DBFB4FC(), v17, (v83 = v18) == 0))
  {
    if (qword_27CE56E90 == -1)
    {
LABEL_17:
      v26 = sub_21DBF84BC();
      __swift_project_value_buffer(v26, qword_27CE641B8);
      v27 = a2;
      v28 = sub_21DBF84AC();
      v29 = sub_21DBFAECC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        v32 = [v27 objectID];
        *(v30 + 4) = v32;
        *v31 = v32;
        _os_log_impl(&dword_21D0C9000, v28, v29, "Passed smart list that is not a custom smart {listID: %@}", v30, 0xCu);
        sub_21D0CF7E0(v31, &unk_27CE60070);
        MEMORY[0x223D46520](v31, -1, -1);
        MEMORY[0x223D46520](v30, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_34:
    swift_once();
    goto LABEL_17;
  }

  v79 = a2;
  v80 = a3;
  v75 = v9;
  v76 = a5;
  v77 = a6;
  v87[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v19 = sub_21DBFBD7C();
  }

  else
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = MEMORY[0x277D84F90];
  if (!v19)
  {
    v34 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v21 = 0;
  a5 = (a1 & 0xC000000000000001);
  do
  {
    if (a5)
    {
      v22 = MEMORY[0x223D44740](v21, a1);
    }

    else
    {
      if (v21 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v22 = *(a1 + 8 * v21 + 32);
    }

    v23 = v22;
    a2 = (v21 + 1);
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v24 = [v22 account];
    v25 = [v24 capabilities];

    v17 = [v25 supportsCustomSmartLists];
    if (v17)
    {
      v17 = v87;
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    else
    {
    }

    ++v21;
  }

  while (a2 != v19);
  v34 = v87[0];
  v20 = MEMORY[0x277D84F90];
LABEL_22:
  v78 = v13;
  if ((v34 & 0x8000000000000000) != 0 || (v34 & 0x4000000000000000) != 0)
  {
    v35 = sub_21DBFBD7C();
    if (!v35)
    {
      goto LABEL_37;
    }

LABEL_25:
    v87[0] = v20;
    sub_21DBFC01C();
    if ((v35 & 0x8000000000000000) == 0)
    {
      v36 = 0;
      do
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x223D44740](v36, v34);
        }

        else
        {
          v37 = *(v34 + 8 * v36 + 32);
        }

        v38 = v37;
        v36 = (v36 + 1);
        a5 = [v80 updateReminder_];

        v17 = v87;
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v35 != v36);

      v39 = v87[0];
      v13 = v78;
      v20 = MEMORY[0x277D84F90];
      goto LABEL_38;
    }

    __break(1u);
LABEL_86:
    swift_once();
    goto LABEL_54;
  }

  v35 = *(v34 + 16);
  if (v35)
  {
    goto LABEL_25;
  }

LABEL_37:

  v39 = MEMORY[0x277D84F90];
LABEL_38:
  v85 = v39;
  v87[0] = v20;
  if (v19)
  {
    v34 = 0;
    a5 = (a1 & 0xC000000000000001);
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (a5)
      {
        v40 = MEMORY[0x223D44740](v34, a1);
      }

      else
      {
        if (v34 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v40 = *(a1 + 8 * v34 + 32);
      }

      v35 = v40;
      v41 = (v34 + 1);
      if (__OFADD__(v34, 1))
      {
        break;
      }

      v42 = [v40 account];
      v43 = [v42 capabilities];

      v17 = [v43 supportsCustomSmartLists];
      if (v17)
      {
      }

      else
      {
        v17 = v87;
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      ++v34;
      if (v41 == v19)
      {
        v20 = v87[0];
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    if (!sub_21DBFBD7C())
    {
      goto LABEL_72;
    }
  }

  else
  {
LABEL_50:
    v34 = v79;
    if ((v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
    {
      goto LABEL_71;
    }

    if (!*(v20 + 16))
    {
LABEL_72:

      goto LABEL_73;
    }
  }

  if (qword_27CE56E90 != -1)
  {
    goto LABEL_86;
  }

LABEL_54:
  v44 = sub_21DBF84BC();
  v45 = __swift_project_value_buffer(v44, qword_27CE641B8);
  v33 = v34;

  v19 = sub_21DBF84AC();
  LOBYTE(v35) = sub_21DBFAECC();

  if (!os_log_type_enabled(v19, v35))
  {

    goto LABEL_60;
  }

  v46 = swift_slowAlloc();
  a5 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v87[0] = v34;
  *v46 = 138412546;
  v17 = &off_278331000;
  v47 = [v33 objectID];
  *(v46 + 4) = v47;
  *a5 = v47;
  *(v46 + 12) = 2080;
  v74 = v45;
  if ((v20 & 0xC000000000000001) != 0)
  {
    goto LABEL_88;
  }

  if (!*(v20 + 16))
  {
    __break(1u);
  }

  v48 = a5;
  v49 = v34;
  v50 = *(v20 + 32);
  while (2)
  {
    v51 = v50;
    v52 = [v50 v17[425]];

    v86[0] = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60EE0);
    v53 = sub_21DBFBA5C();
    v55 = v54;

    v56 = sub_21D0CDFB4(v53, v55, v87);

    *(v46 + 14) = v56;
    _os_log_impl(&dword_21D0C9000, v19, v35, "Unexpected attempt to add reminders not supporting CSL to a CSL {cslID: %@, reminders.first.objectID: %s}", v46, 0x16u);
    sub_21D0CF7E0(v48, &unk_27CE60070);
    MEMORY[0x223D46520](v48, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x223D46520](v49, -1, -1);
    MEMORY[0x223D46520](v46, -1, -1);

    v13 = v78;
    v45 = v74;
LABEL_60:
    a5 = v80;
    v57 = [v80 store];
    v35 = [v33 accountID];
    v87[0] = 0;
    v34 = [v57 fetchDefaultListRequiringCloudKitAccountWithAccountID:v35 error:v87];

    if (v87[0])
    {
      v58 = v87[0];

      swift_willThrow();
      v34 = v58;
      v17 = v45;
      v35 = sub_21DBF84AC();
      v59 = sub_21DBFAEBC();

      if (os_log_type_enabled(v35, v59))
      {
        v60 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v87[0] = v19;
        *v60 = 136315138;
        swift_getErrorValue();
        v61 = sub_21DBFC74C();
        v17 = v62;
        a5 = sub_21D0CDFB4(v61, v62, v87);

        *(v60 + 4) = a5;
        _os_log_impl(&dword_21D0C9000, v35, v59, "unable to fetch default CloudKit list because %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x223D46520](v19, -1, -1);
        MEMORY[0x223D46520](v60, -1, -1);

        goto LABEL_63;
      }

LABEL_73:
      v80 = 0;
    }

    else
    {
      if (!v34)
      {

        v34 = sub_21DBF84AC();
        v17 = sub_21DBFAEBC();
        if (os_log_type_enabled(v34, v17))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_21D0C9000, v34, v17, "No available default CloudKit list", v35, 2u);
          MEMORY[0x223D46520](v35, -1, -1);
        }

LABEL_63:

        goto LABEL_73;
      }

      a5 = sub_21D20DD3C(v20, v34, a5, v84, v76, v77);
      v80 = v63;

      v17 = &v85;
      sub_21D562380(a5);
    }

    v33 = v85;
    if (v85 >> 62)
    {
      v46 = sub_21DBFBD7C();
      if (!v46)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v46 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v46)
      {
        goto LABEL_83;
      }
    }

    if (v46 < 1)
    {
      __break(1u);
LABEL_88:
      v48 = a5;
      v49 = v34;
      v50 = MEMORY[0x223D44740](0, v20);
      continue;
    }

    break;
  }

  v64 = 0;
  do
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v65 = MEMORY[0x223D44740](v64, v33);
    }

    else
    {
      v65 = *(v33 + 8 * v64 + 32);
    }

    v66 = v65;
    ++v64;
    sub_21D0D3954(v84, v87, &unk_27CE60D80);
    sub_21D0D3954(v87, v86, &unk_27CE60D80);
    type metadata accessor for TTRReminderEditor();
    v67 = swift_allocObject();
    *(v67 + 72) = 0;
    *(v67 + 16) = v66;
    sub_21D0D3954(v86, v67 + 24, &unk_27CE60D80);
    *(v67 + 64) = 0;
    v68 = v66;
    v69 = [v68 fetchedCurrentDueDateDeltaAlert];
    sub_21D0CF7E0(v86, &unk_27CE60D80);
    sub_21D0CF7E0(v87, &unk_27CE60D80);
    v70 = *(v67 + 72);
    *(v67 + 72) = v69;

    v71 = v81;
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    TTRReminderEditor.edit(toMatch:now:)(v83, v71);

    (*(v13 + 8))(v71, v82);
  }

  while (v46 != v64);
LABEL_83:

  return v33;
}

void sub_21D1F7FD8(void *a1, char a2, unint64_t a3, void *a4)
{
  if (a3 >> 62)
  {
    v8 = sub_21DBFBD7C();
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v45 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    if (v8 < 0)
    {
      __break(1u);
LABEL_25:
      swift_once();
LABEL_13:
      v14 = sub_21DBF84BC();
      __swift_project_value_buffer(v14, qword_280D0F228);
      v15 = a4;
      sub_21DBF8E0C();
      sub_21D22CD54(a1, 1);
      oslog = sub_21DBF84AC();
      v16 = sub_21DBFAEBC();
      sub_21D1D1F18(a1, 1);

      if (os_log_type_enabled(oslog, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v46 = v18;
        *v17 = 136315650;
        swift_getErrorValue();
        v19 = sub_21DBFC75C();
        v21 = sub_21D0CDFB4(v19, v20, &v46);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2080;
        v22 = sub_21D0D8CF0(0, &qword_280D17880);
        v23 = MEMORY[0x223D42DB0](v9, v22);
        v25 = v24;

        v26 = sub_21D0CDFB4(v23, v25, &v46);

        *(v17 + 14) = v26;
        *(v17 + 22) = 2080;
        v27 = TTRRemindersListREMManualOrderingSaveTarget.debugDescription.getter();
        v29 = sub_21D0CDFB4(v27, v28, &v46);

        *(v17 + 24) = v29;
        _os_log_impl(&dword_21D0C9000, oslog, v16, "Failed to move reminders using REMManualOrdering {error: %s, reminders.objectID: %s, saveTarget: %s}", v17, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D46520](v18, -1, -1);
        v30 = v17;
LABEL_19:
        MEMORY[0x223D46520](v30, -1, -1);

        return;
      }

      goto LABEL_20;
    }

    v10 = 0;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x223D44740](v10, a3);
      }

      else
      {
        v11 = *(a3 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      v13 = [v11 objectID];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v8 != v10);
    v9 = v45;
  }

  if (a2)
  {
    if (qword_280D17ED0 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  if (qword_280D17ED0 != -1)
  {
    swift_once();
  }

  v31 = sub_21DBF84BC();
  __swift_project_value_buffer(v31, qword_280D0F228);
  v32 = a4;
  sub_21DBF8E0C();
  oslog = sub_21DBF84AC();
  v33 = sub_21DBFAEDC();

  if (os_log_type_enabled(oslog, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v46 = v35;
    *v34 = 136315394;
    v36 = sub_21D0D8CF0(0, &qword_280D17880);
    v37 = MEMORY[0x223D42DB0](v9, v36);
    v39 = v38;

    v40 = sub_21D0CDFB4(v37, v39, &v46);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2080;
    v41 = TTRRemindersListREMManualOrderingSaveTarget.debugDescription.getter();
    v43 = sub_21D0CDFB4(v41, v42, &v46);

    *(v34 + 14) = v43;
    _os_log_impl(&dword_21D0C9000, oslog, v33, "Moved reminders using REMManualOrdering {reminders.objectID: %s, saveTarget: %s}", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v35, -1, -1);
    v30 = v34;
    goto LABEL_19;
  }

LABEL_20:
}

void TTRRemindersListInteractor.move(reminders:to:position:sortingStyleInPresenter:paramsForREMManualOrdering:)(id *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v103 = a4;
  v114 = sub_21DBF6D7C();
  v117 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v116 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DBF70DC();
  v13 = *(v12 - 8);
  v104 = v12;
  v105 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v102 = &v94 - v17;
  v111 = *a3;
  v18 = *(a3 + 8);
  v19 = *a5;
  v107 = *(a5 + 8);
  v108 = v19;
  v101 = *(a5 + 16);
  v99 = *(a5 + 24);
  v98 = *(a5 + 32);
  v97 = *(a5 + 40);
  v20 = *(a5 + 56);
  v96 = *(a5 + 48);
  v106 = v20;
  v21 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  v110 = v6;
  [v21 setNotifyChangeDelegate_];
  v132 = 0;
  memset(v131, 0, sizeof(v131));
  v22 = &unk_27CE60D80;
  sub_21D0D3954(v131, v130, &unk_27CE60D80);
  v23 = a2;
  v24 = v21;
  v25 = [v24 updateReminder_];
  sub_21D0D3954(v130, v129, &unk_27CE60D80);
  v128[6] = 0;
  sub_21D0D3954(v129, v128, &unk_27CE60D80);
  v100 = [v25 fetchedCurrentDueDateDeltaAlert];
  v109 = v23;

  sub_21D0CF7E0(v131, &unk_27CE60D80);
  sub_21D0CF7E0(v129, &unk_27CE60D80);
  sub_21D0CF7E0(v130, &unk_27CE60D80);
  v115 = v18;
  if (!v18)
  {
    v27 = v111;
    sub_21D157850(v111, 0);
    v120 = [v24 updateReminder_];

    goto LABEL_7;
  }

  if (v18 != 1)
  {
    if (!v111)
    {
      sub_21D157850(0, 2u);
      v120 = 0;
      goto LABEL_9;
    }

    v120 = 1;
    sub_21D157850(1, 2u);
LABEL_7:
    sub_21DBF8E0C();
    v28 = a1;
    goto LABEL_10;
  }

  v26 = v111;
  sub_21D157850(v111, 1u);
  v120 = [v24 updateReminder_];

LABEL_9:
  v29 = sub_21DBF8E0C();
  v28 = sub_21D1E3EEC(v29, sub_21D9D9774, sub_21D565304, sub_21D256E5C);
LABEL_10:
  v118 = a1;
  if (v28 >> 62)
  {
    v30 = sub_21DBFBD7C();
  }

  else
  {
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v112 = v25;
  v113 = v24;
  v95 = v15;
  if (v30)
  {
    if (v30 >= 1)
    {
      v31 = 0;
      v119 = v28 & 0xC000000000000001;
      while (1)
      {
        if (v119)
        {
          v34 = MEMORY[0x223D44740](v31, v28);
        }

        else
        {
          v34 = *(v28 + 8 * v31 + 32);
        }

        v35 = v34;
        v36 = [v24 updateReminder_];
        v37 = [v25 subtaskContext];
        if (!v37)
        {
          goto LABEL_17;
        }

        v38 = v37;
        v39 = v28;
        v40 = [v25 listChangeItem];
        if (v40)
        {
          v41 = v40;
          v42 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_2to11asSubtaskOf011allowsLossyI0So21REMReminderChangeItemCAI_So07REMListsT0CSo0rn7ContextsT0CSbtFZ_0(v36, v40, v38, 0);

          v43 = v115;
          if (!v115)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v42 = v36;
          v43 = v115;
          if (!v115)
          {
LABEL_28:
            v33 = v120;
LABEL_29:
            v32 = &selRef_insertReminderChangeItem_beforeReminderChangeItem_;
            goto LABEL_16;
          }
        }

        if (v43 == 1)
        {
          v32 = &selRef_insertReminderChangeItem_afterReminderChangeItem_;
          v33 = v120;
        }

        else
        {
          v33 = 0;
          if (!v120)
          {
            goto LABEL_29;
          }

          v32 = &selRef_insertReminderChangeItem_afterReminderChangeItem_;
        }

LABEL_16:
        sub_21D157850(v120, v43);
        [v38 *v32];

        v25 = v112;
        v24 = v113;
        v28 = v39;
LABEL_17:
        ++v31;

        if (v30 == v31)
        {
          goto LABEL_30;
        }
      }
    }

    __break(1u);
    goto LABEL_61;
  }

LABEL_30:

  a1 = v104;
  v44 = v105;
  v45 = v102;
  (v105[13])(v102, *MEMORY[0x277D45418], v104);
  v24 = v103;
  v46 = MEMORY[0x223D3F870](v103, v45);
  v28 = v44[1];
  (v28)(v45, a1);
  if ((v46 & 1) == 0 && (v110[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_canChangeSortingStyle] & 1) == 0)
  {
    v22 = v101;
    if (qword_280D17ED0 == -1)
    {
      goto LABEL_37;
    }

    goto LABEL_62;
  }

  v47 = v98;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v115)
  {
    v48 = v113;
    v24 = v118;
    if (v115 == 1)
    {
      v49 = [v111 remObjectID];
    }

    else
    {
      v49 = v111 != 0;
    }
  }

  else
  {
    v49 = [v111 remObjectID];
    v48 = v113;
    v24 = v118;
  }

  a1 = [v109 objectID];
  if (v24 >> 62)
  {
    v22 = sub_21DBFBD7C();
  }

  else
  {
    v22 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = MEMORY[0x277D84F90];
  if (v22)
  {
    *&v125 = MEMORY[0x277D84F90];
    sub_21D18E718(0, v22 & ~(v22 >> 63), 0);
    if (v22 < 0)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      swift_once();
LABEL_37:
      v50 = sub_21DBF84BC();
      __swift_project_value_buffer(v50, qword_280D0F228);
      (v105[2])(v95, v24, a1);
      v51 = v22;
      v52 = v110;
      v53 = sub_21DBF84AC();
      v54 = sub_21DBFAEBC();

      LODWORD(v119) = v54;
      if (os_log_type_enabled(v53, v54))
      {
        v55 = a1;
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *&v122 = v57;
        *v56 = 136315650;
        *&v125 = v22;
        BYTE8(v125) = v99;
        v58 = v53;
        v59 = TTRRemindersListREMManualOrderingSaveTarget.debugDescription.getter();
        v61 = sub_21D0CDFB4(v59, v60, &v122);

        *(v56 + 4) = v61;
        *(v56 + 12) = 2080;
        *(v56 + 14) = sub_21D0CDFB4(0x65736C6166, 0xE500000000000000, &v122);
        *(v56 + 22) = 2080;
        sub_21D0F1C20(&qword_27CE59828, MEMORY[0x277D45430]);
        v62 = v95;
        v63 = sub_21DBFC5BC();
        v65 = v64;
        (v28)(v62, v55);
        v66 = sub_21D0CDFB4(v63, v65, &v122);

        *(v56 + 24) = v66;
        _os_log_impl(&dword_21D0C9000, v58, v119, "Illegal attempt to move reminders in list using REMManualOrdering {saveTarget: %s, canChangeSortingStyle: %s, sortingStyleInPresenter: %s}", v56, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D46520](v57, -1, -1);
        MEMORY[0x223D46520](v56, -1, -1);

        sub_21D157478(v120, v115);
        sub_21D0CF7E0(v128, &unk_27CE60D80);
      }

      else
      {

        sub_21D157478(v120, v115);
        sub_21D0CF7E0(v128, &unk_27CE60D80);

        (v28)(v95, a1);
      }

      return;
    }

    v105 = a1;
    v111 = v49;
    v119 = v47;
    v67 = 0;
    v25 = v125;
    v68 = v24 & 0xC000000000000001;
    do
    {
      if (v68)
      {
        v69 = MEMORY[0x223D44740](v67, v118);
      }

      else
      {
        v69 = v118[v67 + 4];
      }

      v70 = v69;
      v71 = [v69 remObjectID];
      sub_21DBFADFC();

      [v70 isCompleted];
      v72 = v116;
      sub_21DBF6D4C();

      *&v125 = v25;
      v74 = v25[2];
      v73 = v25[3];
      if (v74 >= v73 >> 1)
      {
        sub_21D18E718(v73 > 1, v74 + 1, 1);
        v72 = v116;
        v25 = v125;
      }

      ++v67;
      v25[2] = v74 + 1;
      (*(v117 + 32))(v25 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v74, v72, v114);
    }

    while (v22 != v67);
    v75 = v115;
    v48 = v113;
    v47 = v119;
    v49 = v111;
    a1 = v105;
  }

  else
  {
    v75 = v115;
  }

  v76 = v75 | 0x8000000000000000;
  sub_21D0D8CF0(0, &qword_27CE59830);
  *&v125 = v49;
  *(&v125 + 1) = v76;
  *&v126 = a1;
  v77 = sub_21D39D1B0(v47, v97, v96, v106, v108, v107, v25, 0, &v125);
  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  if (v99)
  {
    sub_21D0D3954(&v125, &v122, &unk_27CE60D80);
    v78 = v48;
    v79 = [v78 updateTemplate_];
    sub_21D0CF7E0(&v125, &unk_27CE60D80);
    type metadata accessor for TTRTemplateEditor();
    inited = swift_initStackObject();
    *(inited + 16) = v79;
    v81 = v124;
    v82 = v123;
    *(inited + 24) = v122;
    *(inited + 40) = v82;
    *(inited + 56) = v81;
    *(inited + 64) = 0;
    v121 = 1;
    sub_21D866814(v77);
    v83 = *MEMORY[0x277D44BF0];
    v121 = 1;
    sub_21D863CB4(v83);
  }

  else
  {
    sub_21D0D3954(&v125, &v122, &unk_27CE60D80);
    v78 = v48;
    v84 = [v78 updateSmartList_];
    sub_21D0CF7E0(&v125, &unk_27CE60D80);
    type metadata accessor for TTRSmartListEditor();
    inited = swift_initStackObject();
    *(inited + 16) = v84;
    v85 = v124;
    v86 = v123;
    *(inited + 24) = v122;
    *(inited + 40) = v86;
    *(inited + 56) = v85;
    *(inited + 64) = 0;
    v121 = 1;
    sub_21D6532B4(v77);
    v87 = *MEMORY[0x277D44BF0];
    v121 = 1;
    sub_21D64F7E4(v87);
  }

  swift_setDeallocating();

  sub_21D0CF7E0(inited + 24, &unk_27CE60D80);
  v88 = *&v110[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 24];
  v89 = *&v110[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 32];
  __swift_project_boxed_opaque_existential_1(&v110[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer], v88);
  v90 = swift_allocObject();
  v91 = v109;
  *(v90 + 16) = v118;
  *(v90 + 24) = v91;
  v92 = *(v89 + 16);
  v93 = v91;
  sub_21DBF8E0C();
  v92(v48, sub_21D228434, v90, v88, v89);

  sub_21D157478(v120, v115);
  sub_21D0CF7E0(v128, &unk_27CE60D80);
}

uint64_t TTRRemindersListInteractor.move(reminders:byReplacingDueDate:completionBlock:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v31 = a3;
  v36 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = *(v4 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  TTRRemindersListInteractor.undoContext.getter(v40);
  v37 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v37 setSaveIsNoopIfNoChangedKeys_];
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_21D0D8CF0(0, &qword_280D1B900);
    v26 = sub_21DBFB12C();
    v27 = swift_allocObject();
    v28 = v31;
    v27[2] = a1;
    v27[3] = v28;
    v27[4] = v32;
    aBlock[4] = sub_21D22D514;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_42_0;
    v29 = _Block_copy(aBlock);
    sub_21DBF8E0C();
    sub_21D0D0E78(v28);

    v30 = v37;
    [v37 saveWithQueue:v26 completion:v29];
    _Block_release(v29);

    return sub_21D0CF7E0(v40, &unk_27CE60D80);
  }

  result = sub_21DBFBD7C();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (result >= 1)
  {
    v14 = 0;
    v33 = a1 & 0xC000000000000001;
    v34 = result;
    v35 = a1;
    do
    {
      if (v33)
      {
        v15 = MEMORY[0x223D44740](v14, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      sub_21D0D3954(v40, aBlock, &unk_27CE60D80);
      v17 = v37;
      v18 = [v17 updateReminder_];
      sub_21D0D3954(aBlock, v39, &unk_27CE60D80);
      type metadata accessor for TTRReminderEditor();
      v19 = swift_allocObject();
      *(v19 + 72) = 0;
      *(v19 + 16) = v18;
      sub_21D0D3954(v39, v19 + 24, &unk_27CE60D80);
      *(v19 + 64) = 0;
      v20 = v18;
      v21 = [v20 fetchedCurrentDueDateDeltaAlert];

      sub_21D0CF7E0(v39, &unk_27CE60D80);
      sub_21D0CF7E0(aBlock, &unk_27CE60D80);
      v22 = *(v19 + 72);
      *(v19 + 72) = v21;

      v23 = sub_21DBF509C();
      v24 = *(v23 - 8);
      (*(v24 + 16))(v11, v36, v23);
      (*(v24 + 56))(v11, 0, 1, v23);
      v25 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties();
      (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
      sub_21D9C50E0(v11, v8);

      sub_21D0CF7E0(v8, &unk_27CE60DA0);
      sub_21D0CF7E0(v11, &qword_27CE58D60);
      a1 = v35;
    }

    while (v34 != v14);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t TTRRemindersListInteractor.move(reminders:byUpdatingDueDate:completionBlock:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v48 = a3;
  v50 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v56 = &v47 - v12;
  MEMORY[0x28223BE20](v13);
  v57 = &v47 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = *(v4 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  TTRRemindersListInteractor.undoContext.getter(v62);
  v59 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v59 setSaveIsNoopIfNoChangedKeys_];
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_16:
    sub_21D0D8CF0(0, &qword_280D1B900);
    v42 = sub_21DBFB12C();
    v43 = swift_allocObject();
    v44 = v48;
    v43[2] = a1;
    v43[3] = v44;
    v43[4] = v49;
    aBlock[4] = sub_21D22D514;
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_49;
    v45 = _Block_copy(aBlock);
    sub_21DBF8E0C();
    sub_21D0D0E78(v44);

    v46 = v59;
    [v59 saveWithQueue:v42 completion:v45];
    _Block_release(v45);

    return sub_21D0CF7E0(v62, &unk_27CE60D80);
  }

  result = sub_21DBFBD7C();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (result >= 1)
  {
    v20 = 0;
    v52 = a1 & 0xC000000000000001;
    v55 = a1;
    v54 = v10;
    v53 = result;
    v51 = v17;
    do
    {
      if (v52)
      {
        v25 = MEMORY[0x223D44740](v20, a1);
      }

      else
      {
        v25 = *(a1 + 8 * v20 + 32);
      }

      v26 = v25;
      v27 = v17;
      sub_21D0D3954(v62, aBlock, &unk_27CE60D80);
      v28 = v59;
      v29 = [v28 updateReminder_];
      sub_21D0D3954(aBlock, v61, &unk_27CE60D80);
      type metadata accessor for TTRReminderEditor();
      v30 = swift_allocObject();
      *(v30 + 72) = 0;
      *(v30 + 16) = v29;
      sub_21D0D3954(v61, v30 + 24, &unk_27CE60D80);
      *(v30 + 64) = 0;
      v31 = v29;
      v32 = [v31 fetchedCurrentDueDateDeltaAlert];

      sub_21D0CF7E0(v61, &unk_27CE60D80);
      sub_21D0CF7E0(aBlock, &unk_27CE60D80);
      v33 = *(v30 + 72);
      *(v30 + 72) = v32;

      v34 = [*(v30 + 16) dueDateComponents];
      if (v34)
      {
        v35 = v57;
        v36 = v34;
        sub_21DBF4EFC();

        v37 = 0;
      }

      else
      {
        v37 = 1;
        v35 = v57;
      }

      v38 = sub_21DBF509C();
      v39 = *(v38 - 8);
      v40 = *(v39 + 56);
      v40(v35, v37, 1, v38);
      sub_21D0D523C(v35, v27, &qword_27CE58D60);
      v41 = v54;
      sub_21D0D3954(v27, v54, &qword_27CE58D60);
      if ((*(v39 + 48))(v41, 1, v38) == 1)
      {
        sub_21D0CF7E0(v41, &qword_27CE58D60);
        v21 = 1;
        a1 = v55;
        v22 = v56;
      }

      else
      {
        v22 = v56;
        sub_21DBF4ECC();
        (*(v39 + 8))(v41, v38);
        v21 = 0;
        a1 = v55;
      }

      ++v20;
      v40(v22, v21, 1, v38);
      v23 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties();
      v24 = v58;
      (*(*(v23 - 8) + 56))(v58, 1, 1, v23);
      sub_21D9C50E0(v22, v24);

      sub_21D0CF7E0(v24, &unk_27CE60DA0);
      sub_21D0CF7E0(v22, &qword_27CE58D60);
      v17 = v51;
      sub_21D0CF7E0(v51, &qword_27CE58D60);
    }

    while (v53 != v20);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t TTRRemindersListInteractor.move(sections:to:position:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v130 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *a3;
  v8 = *(a3 + 8);
  v124 = *(a3 + 9);
  v9 = [*a2 sectionContext];
  v10 = v9;
  if (!v6)
  {
    if (v9)
    {
      v25 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
      *&v129[0] = 0;
      v26 = [v25 fetchListSectionsForListSectionContext:v10 error:v129];
      v27 = *&v129[0];
      if (v26)
      {
        v28 = v26;
        v119 = a1;
        sub_21D0D8CF0(0, &qword_27CE584F8);
        v29 = sub_21DBFA5EC();
        v30 = v27;

        *&v129[0] = MEMORY[0x277D84F90];
        v110 = v3;
        v111 = v5;
        v109 = 0;
        v117 = v8;
        v112 = v7;
        v122 = v10;
        v17 = v29 & 0xFFFFFFFFFFFFFF8;
        if (v29 >> 62)
        {
          v31 = sub_21DBFBD7C();
        }

        else
        {
          v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v19 = 0;
        v20 = (v29 & 0xC000000000000001);
        v21 = MEMORY[0x277D84F90];
        while (v31 != v19)
        {
          if (v20)
          {
            v32 = MEMORY[0x223D44740](v19, v29);
          }

          else
          {
            if (v19 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_120;
            }

            v32 = *(v29 + 8 * v19 + 32);
          }

          v33 = v32;
          v6 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_117;
          }

          v34 = [v32 objectID];

          ++v19;
          if (v34)
          {
            MEMORY[0x223D42D80]();
            if (*((*&v129[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v129[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21DBFA63C();
            }

            sub_21DBFA6CC();
            v21 = *&v129[0];
            v19 = v6;
          }
        }

        goto LABEL_48;
      }

      v89 = *&v129[0];
      v75 = sub_21DBF52DC();

      swift_willThrow();
      if (qword_280D17ED0 != -1)
      {
        swift_once();
      }

      v90 = sub_21DBF84BC();
      __swift_project_value_buffer(v90, qword_280D0F228);
      v77 = v5;
      v91 = v75;
      v79 = sub_21DBF84AC();
      v80 = sub_21DBFAEBC();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *&v129[0] = v83;
        *v81 = 138543618;
        v92 = [v77 objectID];

        *(v81 + 4) = v92;
        *v82 = v92;
        *(v81 + 12) = 2082;
        swift_getErrorValue();
        v93 = sub_21DBFC75C();
        v95 = sub_21D0CDFB4(v93, v94, v129);

        *(v81 + 14) = v95;
        v88 = "Failed to move sections to target {targetListID: %{public}@, error: %{public}s}";
        goto LABEL_113;
      }

LABEL_114:

      return 0;
    }

    return 0;
  }

  if (v6 != 1)
  {
    if (v9)
    {
      v35 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
      *&v129[0] = 0;
      v36 = [v35 fetchTemplateSectionsForTemplateSectionContext:v10 error:v129];
      v37 = *&v129[0];
      if (v36)
      {
        v38 = v36;
        v119 = a1;
        sub_21D0D8CF0(0, &qword_27CE584B8);
        v39 = sub_21DBFA5EC();
        v40 = v37;

        *&v129[0] = MEMORY[0x277D84F90];
        v110 = v3;
        v111 = v5;
        v109 = v6;
        v117 = v8;
        v112 = v7;
        v122 = v10;
        v17 = v39 & 0xFFFFFFFFFFFFFF8;
        if (v39 >> 62)
        {
          v41 = sub_21DBFBD7C();
        }

        else
        {
          v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v19 = 0;
        v20 = (v39 & 0xC000000000000001);
        v21 = MEMORY[0x277D84F90];
        while (v41 != v19)
        {
          if (v20)
          {
            v42 = MEMORY[0x223D44740](v19, v39);
          }

          else
          {
            if (v19 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_121;
            }

            v42 = *(v39 + 8 * v19 + 32);
          }

          v43 = v42;
          v6 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_118;
          }

          v44 = [v42 objectID];

          ++v19;
          if (v44)
          {
            MEMORY[0x223D42D80]();
            if (*((*&v129[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v129[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21DBFA63C();
            }

            sub_21DBFA6CC();
            v21 = *&v129[0];
            v19 = v6;
          }
        }

        goto LABEL_48;
      }

      v96 = *&v129[0];
      v75 = sub_21DBF52DC();

      swift_willThrow();
      if (qword_280D17ED0 != -1)
      {
        swift_once();
      }

      v97 = sub_21DBF84BC();
      __swift_project_value_buffer(v97, qword_280D0F228);
      v77 = v5;
      v98 = v75;
      v79 = sub_21DBF84AC();
      v80 = sub_21DBFAEBC();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *&v129[0] = v83;
        *v81 = 138543618;
        v99 = [v77 objectID];

        *(v81 + 4) = v99;
        *v82 = v99;
        *(v81 + 12) = 2082;
        swift_getErrorValue();
        v100 = sub_21DBFC75C();
        v102 = sub_21D0CDFB4(v100, v101, v129);

        *(v81 + 14) = v102;
        v88 = "Failed to move sections to target {targetTemplateID: %{public}@, error: %{public}s}";
        goto LABEL_113;
      }

      goto LABEL_114;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v11 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  *&v129[0] = 0;
  v12 = [v11 fetchSmartListSectionsForSmartListSectionContext:v10 error:v129];
  v13 = *&v129[0];
  if (!v12)
  {
    v74 = *&v129[0];
    v75 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v76 = sub_21DBF84BC();
    __swift_project_value_buffer(v76, qword_280D0F228);
    v77 = v5;
    v78 = v75;
    v79 = sub_21DBF84AC();
    v80 = sub_21DBFAEBC();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v129[0] = v83;
      *v81 = 138543618;
      v84 = [v77 objectID];

      *(v81 + 4) = v84;
      *v82 = v84;
      *(v81 + 12) = 2082;
      swift_getErrorValue();
      v85 = sub_21DBFC75C();
      v87 = sub_21D0CDFB4(v85, v86, v129);

      *(v81 + 14) = v87;
      v88 = "Failed to move sections to target {targetSmartListID: %{public}@, error: %{public}s}";
LABEL_113:
      _os_log_impl(&dword_21D0C9000, v79, v80, v88, v81, 0x16u);
      sub_21D0CF7E0(v82, &unk_27CE60070);
      MEMORY[0x223D46520](v82, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x223D46520](v83, -1, -1);
      MEMORY[0x223D46520](v81, -1, -1);

      return 0;
    }

    goto LABEL_114;
  }

  v14 = v12;
  v119 = a1;
  sub_21D0D8CF0(0, &qword_27CE584A8);
  v15 = sub_21DBFA5EC();
  v16 = v13;

  *&v129[0] = MEMORY[0x277D84F90];
  v110 = v3;
  v111 = v5;
  v109 = 1;
  v117 = v8;
  v112 = v7;
  v122 = v10;
  v17 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
    v18 = sub_21DBFBD7C();
  }

  else
  {
    v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = 0;
  v20 = (v15 & 0xC000000000000001);
  v21 = MEMORY[0x277D84F90];
  while (v18 != v19)
  {
    if (v20)
    {
      v22 = MEMORY[0x223D44740](v19, v15);
    }

    else
    {
      if (v19 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_119;
      }

      v22 = *(v15 + 8 * v19 + 32);
    }

    v23 = v22;
    v6 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_116;
    }

    v24 = [v22 objectID];

    ++v19;
    if (v24)
    {
      MEMORY[0x223D42D80]();
      if (*((*&v129[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v129[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v21 = *&v129[0];
      v19 = v6;
    }
  }

LABEL_48:

  v17 = v21;
  sub_21DBF8E0C();
  v45 = MEMORY[0x277D84F90];
  *&v129[0] = MEMORY[0x277D84F90];
  v46 = *(v119 + 16);
  v20 = v112;
  if (v46)
  {
    v47 = (v119 + 32);
    do
    {
      v48 = *v47;
      v47 += 2;
      v49 = [v48 objectID];
      MEMORY[0x223D42D80]();
      if (*((*&v129[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v129[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      --v46;
    }

    while (v46);
    v51 = *&v129[0];
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
  }

  v114 = v51;
  *&v129[0] = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858);
  sub_21D0D8CF0(0, &qword_280D17880);
  sub_21D0D0F1C(&qword_27CE59838, &qword_27CE58858);
  sub_21D19F2B8(&qword_280D17870, &qword_280D17880);
  v6 = sub_21DBFA49C();
  v125 = v45;
  if (v124 != 2 || v112 || v117)
  {
    LODWORD(v19) = 0;
    if (v17 < 0)
    {
      goto LABEL_123;
    }
  }

  else
  {
    v52 = sub_21DBF8E0C();
    sub_21D562328(v52);
    LODWORD(v19) = 1;
    if (v17 < 0)
    {
      goto LABEL_123;
    }
  }

  if ((v17 & 0x4000000000000000) != 0)
  {
    goto LABEL_123;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v54 = 0;
    v121 = v6 & 0xC000000000000001;
    v123 = v17 & 0xC000000000000001;
    v115 = v17 + 32;
    v116 = v17 & 0xFFFFFFFFFFFFFF8;
    v118 = v17;
    v17 = v6 + 56;
    v120 = i;
    v113 = v20;
    while (1)
    {
      if (v123)
      {
        v55 = MEMORY[0x223D44740](v54, v118);
      }

      else
      {
        if (v54 >= *(v116 + 16))
        {
          goto LABEL_122;
        }

        v55 = *(v115 + 8 * v54);
      }

      v56 = v55;
      if (__OFADD__(v54++, 1))
      {
        break;
      }

      if (v19)
      {
        goto LABEL_72;
      }

      if (v124)
      {
LABEL_80:
        v58 = 0;
        if (!v121)
        {
          goto LABEL_81;
        }

LABEL_73:
        v59 = v56;
        v60 = sub_21DBFBDCC();

        if ((v60 & 1) == 0)
        {
          goto LABEL_87;
        }

        if ((v58 & 1) == 0)
        {
          goto LABEL_90;
        }

LABEL_65:

        LODWORD(v19) = 1;
        if (v54 == i)
        {
          goto LABEL_100;
        }
      }

      else
      {
        v61 = [v20 objectID];
        sub_21D0D8CF0(0, &qword_280D17680);
        v62 = sub_21DBFB63C();

        if ((v62 & 1) == 0)
        {
          sub_21D228468(v20, v117, 0);
          goto LABEL_80;
        }

        v63 = sub_21DBF8E0C();
        sub_21D562328(v63);
        sub_21D228468(v20, v117, 0);
LABEL_72:
        v58 = 1;
        if (v121)
        {
          goto LABEL_73;
        }

LABEL_81:
        if (*(v6 + 16))
        {
          v64 = sub_21DBFB62C();
          v65 = -1 << *(v6 + 32);
          v66 = v64 & ~v65;
          if ((*(v17 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
          {
            v67 = ~v65;
            while (1)
            {
              v68 = *(*(v6 + 48) + 8 * v66);
              v69 = sub_21DBFB63C();

              if (v69)
              {
                break;
              }

              v66 = (v66 + 1) & v67;
              if (((*(v17 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
              {
                v20 = v113;
                goto LABEL_87;
              }
            }

            v20 = v113;
            i = v120;
            if (v58)
            {
              goto LABEL_65;
            }

            goto LABEL_90;
          }
        }

LABEL_87:
        v70 = v56;
        MEMORY[0x223D42D80]();
        if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        i = v120;
        if (v58)
        {
          goto LABEL_65;
        }

LABEL_90:
        if (v124 == 1)
        {
          v71 = [v20 objectID];
          sub_21D0D8CF0(0, &qword_280D17680);
          v72 = sub_21DBFB63C();

          if (v72)
          {
            v73 = sub_21DBF8E0C();
            sub_21D562328(v73);
            LODWORD(v19) = 1;
            sub_21D228468(v20, v117, 1u);

            if (v54 == i)
            {
LABEL_100:

              v17 = v118;

              goto LABEL_125;
            }
          }

          else
          {

            sub_21D228468(v20, v117, 1u);
            LODWORD(v19) = 0;
            if (v54 == i)
            {

              v17 = v118;
              goto LABEL_125;
            }
          }
        }

        else
        {

          LODWORD(v19) = 0;
          if (v54 == i)
          {

            v17 = v118;

            goto LABEL_126;
          }
        }
      }
    }

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
    ;
  }

  if (v19)
  {
LABEL_125:

    v103 = v110;
    v104 = v111;
    v105 = v109;
  }

  else
  {
LABEL_126:
    v103 = v110;
    v104 = v111;
    v105 = v109;
    if (v124 == 2 && v20 == 1 && !v117)
    {
      sub_21D562328(v114);
    }

    else
    {
    }
  }

  sub_21D0D32E4(v103 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, v129);
  type metadata accessor for TTRRemindersListInteractorSectionsCapability();
  v106 = swift_allocObject();
  *(v106 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_21D0D0FD0(v129, v106 + 32);
  v50 = 1;
  swift_beginAccess();
  *(v106 + 24) = &protocol witness table for TTRRemindersListInteractor;
  swift_unknownObjectWeakAssign();
  v126 = 0;
  v127 = v104;
  v128 = v105;
  v107._rawValue = v125;
  TTRRemindersListInteractorSectionsCapability.updateOrderingOfSections(withSectionIDsOrdering:in:initialSectionIDsOrdering:option:)(v107, &v127, v17, &v126);

  return v50;
}

void TTRRemindersListInteractor.updateManualOrdering(uncommittedReminderIDs:position:paramsForREMManualOrdering:)(void *a1, uint64_t a2, uint64_t a3)
{
  v81 = a1;
  v6 = sub_21DBF6D7C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v66 - v11;
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *a3;
  v79 = *(a3 + 8);
  v80 = v15;
  v16 = *(a3 + 16);
  LODWORD(v15) = *(a3 + 24);
  v17 = *(a3 + 32);
  v69 = *(a3 + 40);
  v70 = v15;
  v18 = *(a3 + 56);
  v68 = *(a3 + 48);
  v77 = v18;
  v78 = v17;
  v19 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  v20 = v19;
  v71 = v16;
  if (v14 <= 1)
  {
    if (v14)
    {
      v13 = [v19 updateReminder_];
      goto LABEL_10;
    }

    v13 = [v19 updateReminder_];
    v22 = 0;
  }

  else if (v14 == 2)
  {
    v23 = v13;
    v22 = 0;
  }

  else
  {
    if (v14 == 3)
    {
      v21 = v13;
LABEL_10:
      v22 = 1;
      goto LABEL_11;
    }

    v13 = v13 != 0;
    v22 = 2;
  }

LABEL_11:
  v73 = v3;
  v24 = sub_21D1FF5E0();
  if (v24)
  {
    v30 = v24;
    v25 = [v24 accountID];

    v72 = v25;
    if (!v22)
    {
LABEL_18:
      v31 = v25;
      v32 = v78;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v33 = [v13 remObjectID];
      v66 = 0;
      v67 = v33;
      v29 = v81;
      if ((v81 & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v25 = 0;
    v72 = 0;
    if (!v22)
    {
      goto LABEL_18;
    }
  }

  if (v22 == 1)
  {
    v26 = v25;
    v27 = v78;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v28 = [v13 remObjectID];
    v66 = 1;
    v67 = v28;
    v29 = v81;
    if ((v81 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v67 = v13 != 0;
    v34 = v25;
    v35 = v78;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v66 = 2;
    v29 = v81;
    if ((v81 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }
  }

LABEL_21:
  if ((v29 & 0x4000000000000000) == 0)
  {
    v36 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_23;
  }

LABEL_39:
  v36 = sub_21DBFBD7C();
LABEL_23:
  v37 = MEMORY[0x277D84F90];
  v75 = v20;
  v76 = v13;
  v74 = v22;
  if (v36)
  {
    v82[0] = MEMORY[0x277D84F90];
    sub_21D18E718(0, v36 & ~(v36 >> 63), 0);
    if (v36 < 0)
    {
      __break(1u);
      return;
    }

    v37 = v82[0];
    if ((v81 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v36; ++i)
      {
        MEMORY[0x223D44740](i);
        sub_21DBFADFC();
        sub_21DBF6D4C();
        swift_unknownObjectRelease();
        v82[0] = v37;
        v40 = v37[2];
        v39 = v37[3];
        if (v40 >= v39 >> 1)
        {
          sub_21D18E718(v39 > 1, v40 + 1, 1);
          v37 = v82[0];
        }

        v37[2] = v40 + 1;
        (*(v7 + 32))(v37 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v40, v9, v6);
      }
    }

    else
    {
      v41 = (v81 + 32);
      do
      {
        v42 = *v41;
        sub_21DBFADFC();
        sub_21DBF6D4C();

        v82[0] = v37;
        v44 = v37[2];
        v43 = v37[3];
        if (v44 >= v43 >> 1)
        {
          sub_21D18E718(v43 > 1, v44 + 1, 1);
          v37 = v82[0];
        }

        v37[2] = v44 + 1;
        (*(v7 + 32))(v37 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v44, v12, v6);
        ++v41;
        --v36;
      }

      while (v36);
    }
  }

  sub_21D0D8CF0(0, &qword_27CE59830);
  v82[0] = v67;
  v82[1] = v66;
  v82[2] = 0;
  v45 = v37;
  v46 = v72;
  v47 = sub_21D39D1B0(v78, v69, v68, v77, v80, v79, v45, v72, v82);
  if (v70)
  {
    sub_21D0D32E4(v73 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, v82);
    v48 = v83;
    v49 = v84;
    v81 = __swift_project_boxed_opaque_existential_1(v82, v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_21DC09CF0;
    v51 = v71;
    *(v50 + 32) = v71;
    v52 = v51;
    v53 = [v52 store];
    v54 = TTRRemindersListInteractor.undoManager.getter();
    v55 = type metadata accessor for TTRTemplateEditor();
    MEMORY[0x28223BE20](v55);
    v64 = v49;
    v65 = &protocol witness table for TTRTemplateEditor;
    v62 = v48;
    v63 = v56;
    v57 = sub_21D22847C;
  }

  else
  {
    sub_21D0D32E4(v73 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, v82);
    v58 = v83;
    v59 = v84;
    v81 = __swift_project_boxed_opaque_existential_1(v82, v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_21DC09CF0;
    v60 = v71;
    *(v50 + 32) = v71;
    v52 = v60;
    v53 = [v52 store];
    v54 = TTRRemindersListInteractor.undoManager.getter();
    v61 = type metadata accessor for TTRSmartListEditor();
    MEMORY[0x28223BE20](v61);
    v64 = v59;
    v65 = &protocol witness table for TTRSmartListEditor;
    v62 = v58;
    v63 = v56;
    v57 = sub_21D2284C4;
  }

  TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v56, v50, v53, v54, v57, &v62, 0, 0, v62, v63, v64, v65);

  __swift_destroy_boxed_opaque_existential_0(v82);

  sub_21D157478(v76, v74);
}

uint64_t TTRRemindersListInteractor.updateMembershipsOfReminders(with:sectionIDByClonedReminderIDs:saveRequest:)(uint64_t a1, uint64_t a2, void *a3)
{
  v67 = sub_21DBF563C();
  v6 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  LOBYTE(v7) = *(a1 + 8);
  v69 = a2;
  if ((v7 & 1) == 0)
  {
    v8 = v8;
    v17 = a3;
    TTRRemindersListInteractor.undoContext.getter(v77);
    v9 = &unk_27CE60D80;
    sub_21D0D3954(v77, v75, &unk_27CE60D80);
    v19 = [v17 updateList_];
    sub_21D0D3954(v75, v73, &unk_27CE60D80);
    if (qword_280D1AA10 == -1)
    {
LABEL_19:
      v35 = qword_280D1AA18;
      sub_21D0CF7E0(v75, v9);
      type metadata accessor for TTRListEditor();
      inited = swift_initStackObject();
      v71 = type metadata accessor for TTRUserDefaults();
      v72 = &protocol witness table for TTRUserDefaults;
      *&v70 = v35;
      v37 = v35;
      sub_21D0CF7E0(v77, v9);
      *(inited + 64) = 0;
      v9 = (inited + 64);
      v65 = v19;
      *(inited + 16) = v19;
      v38 = v74;
      v39 = v73[1];
      *(inited + 24) = v73[0];
      *(inited + 40) = v39;
      *(inited + 56) = v38;
      swift_beginAccess();
      *(inited + 64) = 0;
      v61 = inited;
      sub_21D0D0FD0(&v70, inited + 72);

      v40 = a2 + 64;
      v41 = 1 << *(a2 + 32);
      v42 = -1;
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      v8 = v42 & *(a2 + 64);
      v43 = (v41 + 63) >> 6;
      v62 = v6 + 1;
      sub_21DBF8E0C();
      v19 = 0;
      *(&v44 + 1) = 3;
      v63 = xmmword_21DC09CF0;
      *&v44 = 138412290;
      v60 = v44;
      while (1)
      {
        if (!v8)
        {
          do
          {
            v47 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_37;
            }

            if (v47 >= v43)
            {
              goto LABEL_35;
            }

            v8 = *(v40 + 8 * v47);
            ++v19;
          }

          while (!v8);
          v19 = v47;
        }

        v48 = (v19 << 9) | (8 * __clz(__rbit64(v8)));
        v49 = *(*(a2 + 48) + v48);
        v50 = *(*(a2 + 56) + v48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
        v51 = swift_initStackObject();
        *(v51 + 16) = v63;
        *(v51 + 32) = v49;
        v52 = v50;
        v6 = v49;
        sub_21D1CE198(v51);
        v68 = v53;
        swift_setDeallocating();
        swift_arrayDestroy();
        v54 = [v65 sectionsContextChangeItem];
        if (v54)
        {
          v9 = v54;
          v17 = v52;
          v64 = v6;
          v45 = v66;
          sub_21DBF560C();
          sub_21D0D8CF0(0, &qword_27CE59228);
          sub_21DBF815C();

          (*v62)(v45, v67);
          v46 = v17;

          v6 = v9;
        }

        else
        {
          v17 = v52;
          if (qword_27CE56580 != -1)
          {
            swift_once();
          }

          v55 = sub_21DBF84BC();
          __swift_project_value_buffer(v55, qword_27CE591E0);
          v46 = sub_21DBF84AC();
          v9 = sub_21DBFAECC();
          if (os_log_type_enabled(v46, v9))
          {
            v56 = swift_slowAlloc();
            v64 = v17;
            v17 = v56;
            v57 = swift_slowAlloc();
            *v17 = v60;
            v58 = [v65 objectID];
            *(v17 + 4) = v58;
            *v57 = v58;
            _os_log_impl(&dword_21D0C9000, v46, v9, "Failed to update memberships of reminders in sections because list does not support sections {listID: %@}", v17, 0xCu);
            sub_21D0CF7E0(v57, &unk_27CE60070);
            MEMORY[0x223D46520](v57, -1, -1);
            MEMORY[0x223D46520](v17, -1, -1);
          }

          else
          {

            v6 = v46;
            v46 = v17;
          }
        }

        v8 &= v8 - 1;

        a2 = v69;
      }
    }

LABEL_38:
    swift_once();
    goto LABEL_19;
  }

  TTRRemindersListInteractor.undoContext.getter(v77);
  v9 = &unk_27CE60D80;
  sub_21D0D3954(v77, v75, &unk_27CE60D80);
  v10 = [a3 updateSmartList_];
  sub_21D0CF7E0(v77, &unk_27CE60D80);
  type metadata accessor for TTRSmartListEditor();
  v11 = swift_initStackObject();
  v65 = v10;
  *(v11 + 16) = v10;
  v12 = v76;
  v13 = v75[1];
  *(v11 + 24) = v75[0];
  *(v11 + 40) = v13;
  *(v11 + 56) = v12;
  *(v11 + 64) = 0;
  v14 = a2 + 64;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 64);
  v18 = (v15 + 63) >> 6;
  v61 = v11;
  v62 = v6 + 1;
  sub_21DBF8E0C();
  v19 = 0;
  *(&v20 + 1) = 3;
  v63 = xmmword_21DC09CF0;
  *&v20 = 138412290;
  v60 = v20;
LABEL_7:
  if (v17)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v23 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v23);
    ++v19;
    if (v17)
    {
      v19 = v23;
LABEL_12:
      v24 = (v19 << 9) | (8 * __clz(__rbit64(v17)));
      v25 = *(*(a2 + 48) + v24);
      v26 = *(*(a2 + 56) + v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v27 = swift_initStackObject();
      *(v27 + 16) = v63;
      *(v27 + 32) = v25;
      v28 = v26;
      v6 = v25;
      sub_21D1CE198(v27);
      v68 = v29;
      swift_setDeallocating();
      swift_arrayDestroy();
      v30 = [v65 sectionsContextChangeItem];
      if (v30)
      {
        v9 = v30;
        v8 = v28;
        v64 = v6;
        v21 = v66;
        sub_21DBF560C();
        sub_21D0D8CF0(0, &qword_27CE59840);
        sub_21DBF815C();

        (*v62)(v21, v67);
        v22 = v8;

        v6 = v9;
      }

      else
      {
        v8 = v28;
        if (qword_27CE56B28 != -1)
        {
          swift_once();
        }

        v31 = sub_21DBF84BC();
        __swift_project_value_buffer(v31, qword_27CE5F5C8);
        v22 = sub_21DBF84AC();
        v9 = sub_21DBFAECC();
        if (os_log_type_enabled(v22, v9))
        {
          v32 = swift_slowAlloc();
          v64 = v8;
          v8 = v32;
          v33 = swift_slowAlloc();
          *v8 = v60;
          v34 = [v65 objectID];
          *(v8 + 4) = v34;
          *v33 = v34;
          _os_log_impl(&dword_21D0C9000, v22, v9, "Failed to update memberships of reminders in sections because list does not support sections {listID: %@}", v8, 0xCu);
          sub_21D0CF7E0(v33, &unk_27CE60070);
          MEMORY[0x223D46520](v33, -1, -1);
          MEMORY[0x223D46520](v8, -1, -1);
        }

        else
        {

          v6 = v22;
          v22 = v8;
        }
      }

      v17 &= v17 - 1;

      a2 = v69;
      goto LABEL_7;
    }
  }

LABEL_35:
}