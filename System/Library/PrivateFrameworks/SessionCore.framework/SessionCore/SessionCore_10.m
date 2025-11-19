void sub_22CFD2DCC(uint64_t *a1)
{
  v2 = sub_22D01659C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC11SessionCore15PushTokenServer_requestProcessingQueue);
    *v7 = v11;
    (*(v3 + 104))(v7, *MEMORY[0x277D85200], v2);
    v12 = v11;
    LOBYTE(v11) = sub_22D0165BC();
    (*(v3 + 8))(v7, v2);
    if (v11)
    {
      v13 = *(*&v10[OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock] + 16);
      os_unfair_lock_lock(v13);
      sub_22CFD371C(v10);
      os_unfair_lock_unlock(v13);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_22CFD2F40(uint64_t *a1)
{
  v2 = sub_22D01659C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC11SessionCore15PushTokenServer_requestProcessingQueue);
    *v7 = v11;
    (*(v3 + 104))(v7, *MEMORY[0x277D85200], v2);
    v12 = v11;
    LOBYTE(v11) = sub_22D0165BC();
    (*(v3 + 8))(v7, v2);
    if (v11)
    {
      v13 = *(*&v10[OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock] + 16);
      os_unfair_lock_lock(v13);
      sub_22CFD30B4(v8, v10);
      os_unfair_lock_unlock(v13);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_22CFD30B4(uint64_t a1, uint64_t a2)
{
  v68[9] = *MEMORY[0x277D85DE8];
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock_clients;

  v60 = v7;
  swift_beginAccess();
  v8 = 0;
  v56 = 0;
  v9 = (63 - v4) >> 6;
  v10 = &off_278748000;
  *&v11 = 67240192;
  v55 = v11;
  v57 = v9;
  v58 = v3;
  v59 = a2;
LABEL_5:
  while (v6)
  {
LABEL_10:
    v13 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v14 = v13[1];
    v63 = *v13;
    v15 = *(a2 + v60);
    if ((v15 & 0xC000000000000001) != 0)
    {
      swift_bridgeObjectRetain_n();

      sub_22D016B3C();
      _s11SessionCore6ClientCMa_1();
      sub_22CEEC438(&unk_27D9F36D0, _s11SessionCore6ClientCMa_1);
      sub_22D01689C();
      v17 = v68[4];
      v16 = v68[5];
      v18 = v68[6];
      v19 = v68[7];
      v20 = v68[8];
    }

    else
    {
      v21 = -1 << *(v15 + 32);
      v16 = (v15 + 56);
      v22 = ~v21;
      v23 = -v21;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v17 = v15;
      v20 = (v24 & *(v15 + 56));
      swift_bridgeObjectRetain_n();

      v18 = v22;
      v19 = 0;
    }

    v6 &= v6 - 1;
    v25 = (v18 + 64) >> 6;
    v65 = v25;
    v66 = v14;
    v62 = v16;
    v64 = v17;
    while (1)
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        if (!sub_22D016BAC())
        {
          goto LABEL_49;
        }

        _s11SessionCore6ClientCMa_1();
        swift_dynamicCast();
        v27 = v68[0];
        v30 = v20;
        v16 = v62;
        if (!v68[0])
        {
LABEL_50:
          v14 = v66;
LABEL_49:
          sub_22CEE57FC();

          a2 = v59;
          sub_22CFD4BD8(v63, v14);

          v9 = v57;
          v3 = v58;
          goto LABEL_5;
        }
      }

      else
      {
        v28 = v19;
        v29 = v20;
        if (!v20)
        {
          while (1)
          {
            v19 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v19 >= v25)
            {
              goto LABEL_49;
            }

            v29 = v16[v19];
            ++v28;
            if (v29)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
LABEL_56:
          __break(1u);
        }

LABEL_26:
        v30 = (v29 - 1) & v29;
        v27 = *(*(v17 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v29)))));
        if (!v27)
        {
          goto LABEL_50;
        }
      }

      v67 = v30;
      v31 = [*(&v27->isa + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_connection) remoteProcess];
      v32 = [v31 bundleIdentifier];
      if (v32)
      {
        v33 = v32;
        v34 = sub_22D01667C();
        v36 = v35;
      }

      else
      {
        v39 = [objc_opt_self() identifierWithPid_];
        if (!v39)
        {
          if (qword_28143FB00 != -1)
          {
            swift_once();
          }

          v47 = sub_22D01637C();
          __swift_project_value_buffer(v47, qword_2814443C0);
          v31 = v31;
          v26 = sub_22D01636C();
          v48 = sub_22D0168EC();
          v14 = v66;
          if (os_log_type_enabled(v26, v48))
          {
            v49 = swift_slowAlloc();
            *v49 = v55;
            *(v49 + 4) = [v31 v10[417]];

            _os_log_impl(&dword_22CEE1000, v26, v48, "Couldn't fetch an identifier for pid: %{public}d", v49, 8u);
            v50 = v49;
            v17 = v64;
            MEMORY[0x2318C6860](v50, -1, -1);
          }

          else
          {

            v26 = v31;
          }

          [v31 v10[417]];
          goto LABEL_19;
        }

        v40 = v39;
        v41 = objc_opt_self();
        v68[0] = 0;
        v42 = v40;
        v43 = [v41 handleForIdentifier:v42 error:v68];
        if (!v43)
        {
          v51 = v68[0];
          v52 = sub_22D01416C();

          swift_willThrow();
          v56 = 0;
          goto LABEL_48;
        }

        v44 = v43;
        v45 = v68[0];

        v33 = [v44 name];
        if (!v33)
        {

          v27 = v31;
          v31 = v42;
LABEL_48:
          v14 = v66;
          v17 = v64;
LABEL_19:

          v27 = v31;
          v16 = v62;
          goto LABEL_20;
        }

        v34 = sub_22D01667C();
        v36 = v46;

        v31 = v42;
        v16 = v62;
      }

      v14 = v66;
      if (v34 == v63 && v36 == v66)
      {
        break;
      }

      v38 = sub_22D016DFC();

      if (v38)
      {
        goto LABEL_52;
      }

      v10 = &off_278748000;
      v17 = v64;
LABEL_20:

      v20 = v67;
      v25 = v65;
    }

LABEL_52:
    sub_22CEE57FC();

    sub_22CEE90A4();

    v3 = v58;
    a2 = v59;
    v9 = v57;
    v10 = &off_278748000;
  }

  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_56;
    }

    if (v12 >= v9)
    {
      break;
    }

    v6 = *(v3 + 8 * v12);
    ++v8;
    if (v6)
    {
      v8 = v12;
      goto LABEL_10;
    }
  }

  v54 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22CFD371C(uint64_t a1)
{
  v131[5] = *MEMORY[0x277D85DE8];
  v113 = sub_22D0161DC();
  v2 = *(v113 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v113, v4);
  *&v112 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v125 = &v110 - v9;
  v123 = type metadata accessor for Activity();
  v10 = *(v123 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v123, v12);
  v122 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_22D015E7C();
  v124 = *(v127 - 8);
  v14 = *(v124 + 8);
  v16 = MEMORY[0x28223BE20](v127, v15);
  v126 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v121 = &v110 - v19;
  v20 = *(a1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_processManager + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_processManager), *(a1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_processManager + 24));
  v21 = *(a1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_pushServer + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_pushServer), *(a1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_pushServer + 24));
  sub_22CFD43F8();
  (*(*(v20 + 8) + 8))();

  v23 = sub_22CF7C338(v22);

  v24 = OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock_tokens;
  v120 = a1;
  v25 = *(a1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock_tokens);
  v26 = *(v25 + 16);
  v27 = *(v23 + 16);
  v111 = v2;
  v28 = v10;
  if (v26 > v27 >> 3)
  {

    v29 = sub_22CF63900(v25, v23);
  }

  else
  {
    v131[0] = v23;

    sub_22CF62A34(v25);

    v29 = v131[0];
  }

  v30 = v120;
  v31 = *(v120 + v24);
  *(v120 + v24) = v23;

  v32 = 0;
  v130 = MEMORY[0x277D84FA0];
  v33 = v29 + 56;
  v34 = 1 << *(v29 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v29 + 56);
  v118 = (v30 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_activityStore);
  v37 = (v34 + 63) >> 6;
  v117 = v124 + 16;
  v116 = (v124 + 32);
  v115 = (v28 + 48);
  v114 = (v124 + 8);
  ++v111;
  v39 = v126;
  v38 = v127;
  v119 = v29;
  while (v36)
  {
    v45 = v125;
LABEL_16:
    v47 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v48 = v124;
    v49 = v121;
    (*(v124 + 2))(v121, *(v29 + 48) + *(v124 + 9) * (v47 | (v32 << 6)), v38);
    v48[4](v39, v49, v38);
    v50 = v118[4];
    __swift_project_boxed_opaque_existential_1(v118, v118[3]);
    v51 = sub_22D015E4C();
    (*(v50 + 16))(v51);

    v52 = v123;
    if ((*v115)(v45, 1, v123) == 1)
    {
      sub_22CEEC3D8(v45, &qword_27D9F3810, &unk_22D018FA0);
      v40 = v112;
      v41 = v126;
      sub_22D015E6C();
      v42 = sub_22D01619C();
      v44 = v43;
      (*v111)(v40, v113);
      sub_22CEE54CC(v131, v42, v44);

      v38 = v127;
      (*v114)(v41, v127);
      v39 = v41;
    }

    else
    {
      v53 = v122;
      sub_22CFA8FC0(v45, v122);
      v54 = sub_22CFD46CC(*(v53 + *(v52 + 36)));
      v55 = *(v54 + 2);
      if (v55)
      {
        v56 = (v54 + 40);
        do
        {
          v57 = *(v56 - 1);
          v58 = *v56;

          sub_22CEE54CC(v131, v57, v58);

          v56 += 2;
          --v55;
        }

        while (v55);
      }

      v39 = v126;
      v38 = v127;
      (*v114)(v126, v127);
      sub_22CF0C71C(v122);
    }

    v29 = v119;
  }

  v45 = v125;
  while (1)
  {
    v46 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
    }

    if (v46 >= v37)
    {
      break;
    }

    v36 = *(v33 + 8 * v46);
    ++v32;
    if (v36)
    {
      v32 = v46;
      goto LABEL_16;
    }
  }

  v60 = (v130 + 56);
  v59 = *(v130 + 7);
  v117 = v130;
  v61 = -1 << v130[32];
  if (-v61 < 64)
  {
    v62 = ~(-1 << -v61);
  }

  else
  {
    v62 = -1;
  }

  v63 = v62 & v59;
  v116 = OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock_clients;
  swift_beginAccess();
  v64 = 0;
  v113 = 0;
  v65 = (63 - v61) >> 6;
  v66 = &off_278748000;
  *&v67 = 67240192;
  v112 = v67;
  v114 = v65;
  v115 = v60;
LABEL_25:
  if (v63)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v68 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      goto LABEL_75;
    }

    if (v68 >= v65)
    {
      break;
    }

    v63 = v60[v68];
    ++v64;
    if (v63)
    {
      v64 = v68;
LABEL_30:
      v69 = (*(v117 + 6) + ((v64 << 10) | (16 * __clz(__rbit64(v63)))));
      v70 = v69[1];
      v121 = *v69;
      v119 = *(v120 + v116);
      if ((v119 & 0xC000000000000001) != 0)
      {
        swift_bridgeObjectRetain_n();

        sub_22D016B3C();
        _s11SessionCore6ClientCMa_1();
        sub_22CEEC438(&unk_27D9F36D0, _s11SessionCore6ClientCMa_1);
        sub_22D01689C();
        v71 = v131[0];
        v72 = v131[1];
        v73 = v131[2];
        v74 = v131[3];
        v75 = v131[4];
      }

      else
      {
        v76 = -1 << *(v119 + 32);
        v72 = v119 + 56;
        v77 = ~v76;
        v78 = -v76;
        if (v78 < 64)
        {
          v79 = ~(-1 << v78);
        }

        else
        {
          v79 = -1;
        }

        v71 = v119;
        v75 = v79 & *(v119 + 56);
        swift_bridgeObjectRetain_n();

        v73 = v77;
        v74 = 0;
      }

      v63 &= v63 - 1;
      v118 = v73;
      v80 = (v73 + 8) >> 6;
      v124 = v70;
      v125 = v71;
      v122 = v80;
      v123 = v72;
      while (2)
      {
        v126 = v74;
        if (v71 < 0)
        {
          v85 = sub_22D016BAC();
          if (!v85 || (v128 = v85, _s11SessionCore6ClientCMa_1(), swift_dynamicCast(), v82 = v129, v127 = v75, !v129))
          {
LABEL_69:
            sub_22CEE57FC();

            sub_22CFD4BD8(v121, v70);

            v60 = v115;
            v65 = v114;
            goto LABEL_25;
          }
        }

        else
        {
          v83 = v74;
          v84 = v75;
          if (!v75)
          {
            while (1)
            {
              v74 = v83 + 1;
              if (__OFADD__(v83, 1))
              {
                break;
              }

              if (v74 >= v80)
              {
                goto LABEL_69;
              }

              v84 = *(v72 + 8 * v74);
              ++v83;
              if (v84)
              {
                goto LABEL_46;
              }
            }

            __break(1u);
            goto LABEL_74;
          }

LABEL_46:
          v127 = (v84 - 1) & v84;
          v82 = *(*(v71 + 48) + ((v74 << 9) | (8 * __clz(__rbit64(v84)))));
          if (!v82)
          {
            goto LABEL_69;
          }
        }

        v86 = [*(&v82->isa + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_connection) remoteProcess];
        v87 = [v86 bundleIdentifier];
        if (v87)
        {
          v88 = v87;
          v89 = sub_22D01667C();
          v91 = v90;
          goto LABEL_52;
        }

        v94 = [objc_opt_self() identifierWithPid_];
        if (v94)
        {
          v95 = v94;
          v96 = objc_opt_self();
          v129 = 0;
          v97 = v95;
          v98 = [v96 handleForIdentifier:v97 error:&v129];
          if (v98)
          {
            v99 = v98;
            v100 = v129;

            v88 = [v99 name];
            if (v88)
            {
              v89 = sub_22D01667C();
              v91 = v101;

              v86 = v97;
LABEL_52:

              v70 = v124;
              if (v89 == v121 && v91 == v124)
              {

LABEL_71:
                sub_22CEE57FC();

                sub_22CEE90A4();

                v60 = v115;
                v65 = v114;
                v66 = &off_278748000;
                goto LABEL_25;
              }

              v93 = sub_22D016DFC();

              v72 = v123;
              if (v93)
              {
                goto LABEL_71;
              }

              v66 = &off_278748000;
              v71 = v125;
              v75 = v127;
LABEL_40:

              v80 = v122;
              continue;
            }

            v82 = v86;
            v86 = v97;
          }

          else
          {
            v106 = v129;
            v107 = sub_22D01416C();

            swift_willThrow();
            v113 = 0;
          }

          v72 = v123;
          v75 = v127;
        }

        else
        {
          if (qword_28143FB00 != -1)
          {
            swift_once();
          }

          v102 = sub_22D01637C();
          __swift_project_value_buffer(v102, qword_2814443C0);
          v86 = v86;
          v81 = sub_22D01636C();
          v103 = sub_22D0168EC();
          v104 = os_log_type_enabled(v81, v103);
          v72 = v123;
          if (v104)
          {
            v105 = swift_slowAlloc();
            *v105 = v112;
            *(v105 + 4) = [v86 v66[417]];

            _os_log_impl(&dword_22CEE1000, v81, v103, "Couldn't fetch an identifier for pid: %{public}d", v105, 8u);
            MEMORY[0x2318C6860](v105, -1, -1);
          }

          else
          {

            v81 = v86;
          }

          v75 = v127;

          [v86 v66[417]];
        }

        break;
      }

      v82 = v86;
      v70 = v124;
      v71 = v125;
      goto LABEL_40;
    }
  }

  v109 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22CFD43F8()
{
  v35 = sub_22D0161DC();
  v0 = *(v35 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v35, v2);
  v34 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D015C8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D015F2C();
  v11 = *(v10 + 16);
  if (v11)
  {
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    v17 = (v12 - 8);
    v29[1] = v10;
    v30 = (v0 + 8);
    v18 = MEMORY[0x277D84F90];
    v31 = v16;
    v32 = v14;
    v33 = v12;
    v14(v9, v15, v4);
    while (1)
    {
      sub_22D015C6C();
      if (v19)
      {

        (*v17)(v9, v4);
      }

      else
      {
        v20 = v34;
        sub_22D015C5C();
        v21 = sub_22D01619C();
        v23 = v22;
        (*v30)(v20, v35);
        (*v17)(v9, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_22CFCE000(0, *(v18 + 2) + 1, 1, v18);
        }

        v25 = *(v18 + 2);
        v24 = *(v18 + 3);
        if (v25 >= v24 >> 1)
        {
          v18 = sub_22CFCE000((v24 > 1), v25 + 1, 1, v18);
        }

        *(v18 + 2) = v25 + 1;
        v26 = &v18[16 * v25];
        *(v26 + 4) = v21;
        *(v26 + 5) = v23;
        v13 = v32;
        v16 = v31;
      }

      v15 += v16;
      if (!--v11)
      {
        break;
      }

      v13(v9, v15, v4);
    }
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v27 = sub_22CF7BDC4(v18);

  return v27;
}

char *sub_22CFD46CC(uint64_t a1)
{
  v49 = sub_22D0145EC();
  v51 = *(v49 - 8);
  v2 = *(v51 + 8);
  MEMORY[0x28223BE20](v49, v3);
  v48 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_22D01502C();
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v47, v7);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D01483C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v58 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v42 - v16;
  v57 = a1;
  v18 = *(a1 + 16);
  if (!v18)
  {
    return MEMORY[0x277D84F90];
  }

  v19 = 0;
  v20 = v10 + 16;
  v56 = (v10 + 88);
  v55 = *MEMORY[0x277CB9320];
  v53 = *MEMORY[0x277CB9348];
  v52 = *MEMORY[0x277CB9328];
  v54 = (v10 + 8);
  v50 = (v10 + 96);
  v42 = (v5 + 8);
  v43 = (v5 + 32);
  v44 = v51 + 8;
  v45 = v51 + 32;
  v51 = MEMORY[0x277D84F90];
  do
  {
    for (i = v19; ; ++i)
    {
      if (i >= v18)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        result = sub_22D016CFC();
        __break(1u);
        return result;
      }

      v22 = *(v10 + 16);
      v23 = v20;
      v22(v17, v57 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * i, v9);
      v19 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_23;
      }

      v24 = v58;
      v25 = v23;
      v22(v58, v17, v9);
      v26 = (*v56)(v24, v9);
      if (v26 == v55)
      {
        v27 = v58;
        (*v50)(v58, v9);
        v28 = v48;
        v29 = v49;
        (*v45)(v48, v27, v49);
        v30 = sub_22D0145BC();
        v32 = v31;
        v33 = v44;
        goto LABEL_13;
      }

      if (v26 == v53)
      {
        break;
      }

      if (v26 != v52)
      {
        goto LABEL_24;
      }

      (*v54)(v17, v9);
      v20 = v23;
      if (v19 == v18)
      {
        return v51;
      }
    }

    v34 = v58;
    (*v50)(v58, v9);
    v28 = v46;
    v29 = v47;
    (*v43)(v46, v34, v47);
    v30 = sub_22D014F9C();
    v32 = v35;
    v33 = v42;
LABEL_13:
    (*v33)(v28, v29);
    (*v54)(v17, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = sub_22CFCE000(0, *(v51 + 2) + 1, 1, v51);
    }

    v37 = *(v51 + 2);
    v36 = *(v51 + 3);
    if (v37 >= v36 >> 1)
    {
      v40 = sub_22CFCE000((v36 > 1), v37 + 1, 1, v51);
      v20 = v25;
      v51 = v40;
    }

    else
    {
      v20 = v25;
    }

    v38 = v51;
    *(v51 + 2) = v37 + 1;
    v39 = &v38[16 * v37];
    *(v39 + 4) = v30;
    *(v39 + 5) = v32;
  }

  while (v19 != v18);
  return v51;
}

uint64_t sub_22CFD4BD8(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_28143FAE8 != -1)
  {
    swift_once();
  }

  v6 = sub_22D01637C();
  __swift_project_value_buffer(v6, qword_281444390);

  v7 = sub_22D01636C();
  v8 = sub_22D01690C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136380675;
    *(v9 + 4) = sub_22CEEE31C(a1, a2, &v21);
    _os_log_impl(&dword_22CEE1000, v7, v8, "Launching process to deliver push token for: %{private}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x2318C6860](v10, -1, -1);
    MEMORY[0x2318C6860](v9, -1, -1);
  }

  sub_22D01566C();
  v11 = sub_22D01563C();
  v12 = __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_processManager), *(v3 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_processManager + 24));
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a1;
  v13[4] = a2;
  v14 = *v12;
  v15 = *(*v12 + 40);
  v16 = *(*v12 + 48);
  __swift_project_boxed_opaque_existential_1((*v12 + 16), v15);
  v17 = *(v16 + 32);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v18 = v17(a1, a2, v15, v16);
  if (v18)
  {
    v19 = v18;

    sub_22CF7DFE8(v19, 0xD000000000000013, 0x800000022D0218F0, 2, v14, v11, a1, a2, 10.0);

    return swift_bridgeObjectRelease_n();
  }

  else
  {

    sub_22CF7D8CC(a1, a2, v14, v14, 0xD000000000000013, 0x800000022D0218F0, 2, sub_22CFD5F08, 10.0, v13);
  }
}

void sub_22CFD4EEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_22D01562C();
  if (a1)
  {
    if (qword_28143FAE8 != -1)
    {
      swift_once();
    }

    v7 = sub_22D01637C();
    __swift_project_value_buffer(v7, qword_281444390);

    oslog = sub_22D01636C();
    v8 = sub_22D0168EC();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136380675;
      *(v9 + 4) = sub_22CEEE31C(a3, a4, &v12);
      _os_log_impl(&dword_22CEE1000, oslog, v8, "Did not launch process for push token delivery: %{private}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x2318C6860](v10, -1, -1);
      MEMORY[0x2318C6860](v9, -1, -1);
    }

    else
    {
    }
  }
}

id sub_22CFD5208(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22CFD52B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v77 = a3;
  v78 = a4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3640, &qword_22D01BBC0);
  v7 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72, v8);
  v76 = &v65 - v9;
  v10 = sub_22D0149CC();
  v70 = *(v10 - 8);
  v71 = v10;
  v11 = *(v70 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v69 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D014E2C();
  v67 = *(v14 - 8);
  v68 = v14;
  v15 = *(v67 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D014AFC();
  v73 = *(v19 - 8);
  v74 = v19;
  v20 = *(v73 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v66 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v65 - v31;
  v34 = MEMORY[0x28223BE20](v30, v33);
  v36 = (&v65 - v35);
  v37 = *a1;
  v38 = a1[1];
  *v36 = v37;
  v36[1] = v38;
  sub_22CF0F9C8(a2, &v65 + *(v34 + 48) - v35);
  sub_22CEEB6DC(v36, v32, &unk_27D9F3840, &unk_22D01A2B0);
  v39 = *(v32 + 1);

  v40 = &v32[*(v23 + 48)];
  v41 = type metadata accessor for Activity();
  v42 = *(v40 + v41[9]);

  sub_22CF0C71C(v40);
  LOBYTE(v40) = sub_22CFD5880(v77, v78, v42);

  if ((v40 & 1) == 0)
  {
    sub_22CEEC3D8(v36, &unk_27D9F3840, &unk_22D01A2B0);
    return 0;
  }

  sub_22CEEB6DC(v36, v28, &unk_27D9F3840, &unk_22D01A2B0);
  v43 = *(v28 + 1);

  v44 = &v28[*(v23 + 48)];
  if (*(v44 + v41[12]) == 1)
  {

    sub_22CF0C71C(v44);
  }

  else
  {
    v45 = sub_22D016DFC();

    sub_22CF0C71C(v44);
    if ((v45 & 1) == 0)
    {
      v62 = &unk_27D9F3840;
      v63 = &unk_22D01A2B0;
      v64 = v36;
      goto LABEL_16;
    }
  }

  sub_22CEEB6DC(v36, v32, &unk_27D9F3840, &unk_22D01A2B0);
  v46 = *(v32 + 1);

  v47 = &v32[*(v23 + 48)];
  v48 = v41[5];
  v50 = v67;
  v49 = v68;
  (*(v67 + 16))(v18, v47 + v48, v68);
  sub_22CF0C71C(v47);
  v51 = v69;
  sub_22D014DBC();
  (*(v50 + 8))(v18, v49);
  v52 = v66;
  sub_22D01497C();
  (*(v70 + 8))(v51, v71);
  sub_22CEEC3D8(v36, &unk_27D9F3840, &unk_22D01A2B0);
  v53 = v73;
  v54 = *(v72 + 48);
  v55 = v76;
  v56 = v74;
  (*(v73 + 16))(v76, v75, v74);
  (*(v53 + 32))(&v55[v54], v52, v56);
  v57 = *(v53 + 88);
  v58 = v57(v55, v56);
  v59 = *MEMORY[0x277CB9580];
  if (v58 == *MEMORY[0x277CB9580])
  {
    v60 = v57(&v55[v54], v56);
    goto LABEL_8;
  }

  if (v58 == *MEMORY[0x277CB9578])
  {
    v60 = v57(&v55[v54], v56);
    if (v60 == v59)
    {
LABEL_12:
      (*(v53 + 8))(v55, v56);
      return 0;
    }

LABEL_8:
    if (v60 != *MEMORY[0x277CB9588])
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_14:
  v62 = &unk_27D9F3640;
  v63 = &qword_22D01BBC0;
  v64 = v55;
LABEL_16:
  sub_22CEEC3D8(v64, v62, v63);
  return 1;
}

uint64_t sub_22CFD5880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v47 = a1;
  v45 = sub_22D0145EC();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v45, v6);
  v44 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22D01502C();
  v8 = *(v39 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v39, v10);
  v38 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D01483C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v32 - v20;
  v22 = *(a3 + 16);
  if (!v22)
  {
    return 0;
  }

  v25 = *(v13 + 16);
  v23 = v13 + 16;
  v24 = v25;
  v26 = (a3 + ((*(v23 + 64) + 32) & ~*(v23 + 64)));
  v41 = *(v23 + 56);
  v42 = *MEMORY[0x277CB9320];
  v37 = *MEMORY[0x277CB9348];
  v43 = (v23 - 8);
  v40 = (v23 + 80);
  v33 = *MEMORY[0x277CB9328];
  v32 = (v8 + 32);
  v34 = (v8 + 8);
  v35 = (v4 + 32);
  v36 = (v4 + 8);
  v25(v21, v26, v12);
  while (1)
  {
    v24(v18, v21, v12);
    v28 = (*(v23 + 72))(v18, v12);
    if (v28 != v42)
    {
      break;
    }

    (*v40)(v18, v12);
    (*v35)(v44, v18, v45);
    if (sub_22D0145BC() == v47 && v29 == v46)
    {

      (*v36)(v44, v45);
LABEL_19:
      (*v43)(v21, v12);
      return 1;
    }

    v27 = sub_22D016DFC();

    (*v36)(v44, v45);
LABEL_4:
    (*v43)(v21, v12);
    if (v27)
    {
      return 1;
    }

LABEL_5:
    v26 += v41;
    if (!--v22)
    {
      return 0;
    }

    v24(v21, v26, v12);
  }

  if (v28 == v37)
  {
    (*v40)(v18, v12);
    (*v32)(v38, v18, v39);
    if (sub_22D014F9C() == v47 && v30 == v46)
    {

      (*v34)(v38, v39);
      goto LABEL_19;
    }

    v27 = sub_22D016DFC();

    (*v34)(v38, v39);
    goto LABEL_4;
  }

  if (v28 == v33)
  {
    (*v43)(v21, v12);
    goto LABEL_5;
  }

  result = sub_22D016CFC();
  __break(1u);
  return result;
}

uint64_t sub_22CFD5D70()
{
  v0 = sub_22D014E3C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D01637C();
  __swift_allocate_value_buffer(v5, qword_281444390);
  __swift_project_value_buffer(v5, qword_281444390);
  (*(v1 + 104))(v4, *MEMORY[0x277CB9778], v0);
  return sub_22D01634C();
}

uint64_t sub_22CFD5E98()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_22D015C3C();
  sub_22D015F5C();
}

unint64_t sub_22CFD5F5C()
{
  result = qword_28143D948;
  if (!qword_28143D948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D9F36A0, &qword_22D01BBF8);
    sub_22CEEC438(&qword_28143FB80, MEMORY[0x277D4D5D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143D948);
  }

  return result;
}

unint64_t sub_22CFD6018()
{
  result = qword_28143D968;
  if (!qword_28143D968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D9F36C0, &qword_22D01BC00);
    sub_22CEEC438(&unk_28143F668, MEMORY[0x277CB9590]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143D968);
  }

  return result;
}

uint64_t sub_22CFD6104(uint64_t a1)
{
  v37 = sub_22D014CBC();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37, v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v36 = v7;
  v31[1] = v1;
  v40 = MEMORY[0x277D84F90];
  sub_22CF443AC(0, v8, 0);
  v9 = v40;
  v10 = -1 << *(a1 + 32);
  v38 = a1 + 64;
  result = sub_22D016AEC();
  v12 = result;
  v13 = 0;
  v39 = *(a1 + 36);
  v34 = v3 + 32;
  v35 = v3;
  v32 = a1 + 72;
  v33 = v8;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v16 = v12 >> 6;
    if ((*(v38 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_22;
    }

    if (v39 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v17 = (*(a1 + 48) + 16 * v12);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(a1 + 56) + 8 * v12);

    v21 = v36;
    sub_22D014C9C();
    v40 = v9;
    v23 = *(v9 + 16);
    v22 = *(v9 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_22CF443AC(v22 > 1, v23 + 1, 1);
      v9 = v40;
    }

    *(v9 + 16) = v23 + 1;
    result = (*(v35 + 32))(v9 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v23, v21, v37);
    v14 = 1 << *(a1 + 32);
    if (v12 >= v14)
    {
      goto LABEL_24;
    }

    v24 = *(v38 + 8 * v16);
    if ((v24 & (1 << v12)) == 0)
    {
      goto LABEL_25;
    }

    if (v39 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v25 = v24 & (-2 << (v12 & 0x3F));
    if (v25)
    {
      v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
      v15 = v33;
    }

    else
    {
      v26 = v16 << 6;
      v27 = v16 + 1;
      v15 = v33;
      v28 = (v32 + 8 * v16);
      while (v27 < (v14 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_22CF44CF8(v12, v39, 0);
          v14 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_22CF44CF8(v12, v39, 0);
    }

LABEL_4:
    ++v13;
    v12 = v14;
    if (v13 == v15)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22CFD6420(uint64_t a1, uint64_t *a2)
{
  v45 = a2;
  v44 = sub_22D014CBC();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v44, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v43 = v8;
    v38 = v2;
    v48 = MEMORY[0x277D84F90];
    sub_22CF443AC(0, v9, 0);
    v47 = v48;
    v11 = a1 + 64;
    v12 = -1 << *(a1 + 32);
    result = sub_22D016AEC();
    v13 = v4;
    v14 = result;
    v15 = 0;
    v42 = v13;
    v40 = v9;
    v41 = v13 + 32;
    v39 = a1 + 72;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v17 = v14 >> 6;
      if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_24;
      }

      v18 = *v45;
      if (!*(*v45 + 16))
      {
        goto LABEL_25;
      }

      v46 = v15;
      v19 = *(a1 + 36);
      v20 = a1;
      v21 = (*(a1 + 48) + 16 * v14);
      v22 = *v21;
      v23 = v21[1];
      swift_bridgeObjectRetain_n();
      result = sub_22CEEC698(v22, v23);
      if ((v24 & 1) == 0)
      {
        goto LABEL_26;
      }

      v25 = *(*(v18 + 56) + 8 * result);

      v26 = v43;
      sub_22D014C9C();

      v27 = v47;
      v48 = v47;
      v29 = *(v47 + 16);
      v28 = *(v47 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_22CF443AC(v28 > 1, v29 + 1, 1);
        v26 = v43;
        v27 = v48;
      }

      *(v27 + 16) = v29 + 1;
      v30 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v47 = v27;
      result = (*(v42 + 32))(v27 + v30 + *(v42 + 72) * v29, v26, v44);
      a1 = v20;
      v16 = 1 << *(v20 + 32);
      if (v14 >= v16)
      {
        goto LABEL_27;
      }

      v31 = *(v11 + 8 * v17);
      if ((v31 & (1 << v14)) == 0)
      {
        goto LABEL_28;
      }

      if (v19 != *(v20 + 36))
      {
        goto LABEL_29;
      }

      v32 = v31 & (-2 << (v14 & 0x3F));
      if (v32)
      {
        v16 = __clz(__rbit64(v32)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = v17 << 6;
        v34 = v17 + 1;
        v35 = (v39 + 8 * v17);
        while (v34 < (v16 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_22CF44CF8(v14, v19, 0);
            v16 = __clz(__rbit64(v36)) + v33;
            goto LABEL_4;
          }
        }

        result = sub_22CF44CF8(v14, v19, 0);
      }

LABEL_4:
      v15 = v46 + 1;
      v14 = v16;
      if (v46 + 1 == v40)
      {
        return v47;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

id sub_22CFD6774(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D014ADC();
  sub_22D016A3C();
  (*(v5 + 8))(v9, v4);
  sub_22D014ACC();
  v10 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

uint64_t sub_22CFD68A0(uint64_t a1, uint64_t a2, unsigned int a3, const char *a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if (qword_28143FB78 != -1)
    {
      swift_once();
    }

    v8 = sub_22D01637C();
    __swift_project_value_buffer(v8, qword_2814444E0);
    v9 = sub_22D01636C();
    v10 = sub_22D01690C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22CEE1000, v9, v10, a4, v11, 2u);
      MEMORY[0x2318C6860](v11, -1, -1);
    }

    v12 = *(*&v7[OBJC_IVAR____TtC11SessionCore12OutputServer_lock] + 16);

    os_unfair_lock_lock(v12);
    swift_beginAccess();
    sub_22CFB3670(0, a3);
    swift_endAccess();
    os_unfair_lock_unlock(v12);
  }

  return result;
}

unint64_t sub_22CFD6B24()
{
  if (*v0)
  {
    result = 0x7974697669746341;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_22CFD6B70(void *a1, uint64_t a2)
{
  v2 = (*a1 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier);
  v3 = *v2;
  v4 = v2[1];
  v5 = a2 + *(type metadata accessor for Activity() + 24);
  if (v3 == sub_22D014F9C() && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22D016DFC();
  }

  return v8 & 1;
}

uint64_t sub_22CFD6C08(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for Activity();
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v49 - v13;
  if (a1)
  {
    v15 = a1;
    if (qword_28143FB60 != -1)
    {
      swift_once();
    }

    v16 = sub_22D01637C();
    __swift_project_value_buffer(v16, qword_2814444B0);
    sub_22CF1C294(a3, v14, type metadata accessor for Activity);
    v17 = a1;
    v18 = sub_22D01636C();
    v19 = sub_22D01690C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v50 = v21;
      *v20 = 136315651;
      if (a2)
      {
        v22 = 0x7974697669746341;
      }

      else
      {
        v22 = 0xD000000000000010;
      }

      if (a2)
      {
        v23 = 0xEE006465646E6520;
      }

      else
      {
        v23 = 0x800000022D021B30;
      }

      v24 = sub_22CEEE31C(v22, v23, &v50);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2081;
      v25 = &v14[*(v6 + 24)];
      v26 = sub_22D014F9C();
      v28 = v27;
      sub_22CF0C71C(v14);
      v29 = sub_22CEEE31C(v26, v28, &v50);

      *(v20 + 14) = v29;
      *(v20 + 22) = 2082;
      v49 = a1;
      v30 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2030, &qword_22D018FD0);
      v31 = sub_22D01669C();
      v33 = sub_22CEEE31C(v31, v32, &v50);

      *(v20 + 24) = v33;
      _os_log_impl(&dword_22CEE1000, v18, v19, "Did not launch process for reason %s: %{private}s: %{public}s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v21, -1, -1);
      MEMORY[0x2318C6860](v20, -1, -1);

      return sub_22D01562C();
    }

    v47 = v14;
LABEL_24:
    sub_22CF0C71C(v47);
    return sub_22D01562C();
  }

  if (qword_28143FB60 != -1)
  {
    swift_once();
  }

  v34 = sub_22D01637C();
  __swift_project_value_buffer(v34, qword_2814444B0);
  sub_22CF1C294(a3, v11, type metadata accessor for Activity);
  v35 = sub_22D01636C();
  v36 = sub_22D01690C();
  if (!os_log_type_enabled(v35, v36))
  {

    v47 = v11;
    goto LABEL_24;
  }

  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v50 = v38;
  *v37 = 136315395;
  if (a2)
  {
    v39 = 0x7974697669746341;
  }

  else
  {
    v39 = 0xD000000000000010;
  }

  if (a2)
  {
    v40 = 0xEE006465646E6520;
  }

  else
  {
    v40 = 0x800000022D021B30;
  }

  v41 = sub_22CEEE31C(v39, v40, &v50);

  *(v37 + 4) = v41;
  *(v37 + 12) = 2081;
  v42 = &v11[*(v6 + 24)];
  v43 = sub_22D014F9C();
  v45 = v44;
  sub_22CF0C71C(v11);
  v46 = sub_22CEEE31C(v43, v45, &v50);

  *(v37 + 14) = v46;
  _os_log_impl(&dword_22CEE1000, v35, v36, "Launched process for reason %s: %{private}s", v37, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x2318C6860](v38, -1, -1);
  MEMORY[0x2318C6860](v37, -1, -1);

  return sub_22D01562C();
}

void sub_22CFD70EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*(v3 + OBJC_IVAR____TtC11SessionCore12OutputServer_lock) + 16);
  os_unfair_lock_lock(v7);
  v8 = OBJC_IVAR____TtC11SessionCore12OutputServer__lock_activities;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  v10 = sub_22CEEC698(a1, a2);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    v16 = type metadata accessor for Activity();
    (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
    goto LABEL_6;
  }

  v12 = v10;
  v13 = *(v9 + 56);
  v14 = type metadata accessor for Activity();
  v15 = *(v14 - 8);
  sub_22CF1C294(v13 + *(v15 + 72) * v12, a3, type metadata accessor for Activity);

  (*(v15 + 56))(a3, 0, 1, v14);
LABEL_6:
  os_unfair_lock_unlock(v7);
}

id sub_22CFD7330(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_22CFD745C()
{
  sub_22CFD7578();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22CFD75DC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_22CFD7578()
{
  if (!qword_28143DAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D9F37A0, &qword_22D01BC68);
    v0 = sub_22D01568C();
    if (!v1)
    {
      atomic_store(v0, &qword_28143DAE8);
    }
  }
}

void sub_22CFD75DC()
{
  if (!qword_2814439B8)
  {
    sub_22D014A1C();
    v0 = sub_22D016A8C();
    if (!v1)
    {
      atomic_store(v0, &qword_2814439B8);
    }
  }
}

uint64_t sub_22CFD7634@<X0>(uint64_t a1@<X0>, size_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v41 = a4;
  v40 = a3;
  v42 = a2;
  v5 = sub_22D014C8C();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3820, &qword_22D01BD08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v38 - v13;
  v15 = sub_22D014A1C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_subscriptionOptions;
  swift_beginAccess();
  sub_22CEEB6DC(a1 + v21, v14, &qword_27D9F3820, &qword_22D01BD08);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_22CEEC3D8(v14, &qword_27D9F3820, &qword_22D01BD08);
LABEL_10:
    v24 = v40;
    goto LABEL_11;
  }

  (*(v16 + 32))(v20, v14, v15);
  if ((sub_22D014A0C() & 1) == 0)
  {
    (*(v16 + 8))(v20, v15);
    goto LABEL_10;
  }

  v22 = *(type metadata accessor for Activity() + 56);
  v23 = sub_22D0146BC();
  v24 = v40;
  (*(*(v23 - 8) + 16))(v9, v40 + v22, v23);
  (*(v38 + 104))(v9, *MEMORY[0x277CB9638], v39);
  v25 = v42;
  v26 = *v42;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v25 = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_22CF0D6DC(0, v26[2] + 1, 1, v26);
    *v42 = v26;
  }

  v29 = v26[2];
  v28 = v26[3];
  if (v29 >= v28 >> 1)
  {
    v37 = sub_22CF0D6DC(v28 > 1, v29 + 1, 1, v26);
    *v42 = v37;
  }

  (*(v16 + 8))(v20, v15);
  v30 = *v42;
  *(v30 + 16) = v29 + 1;
  (*(v38 + 32))(v30 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v29, v9, v39);
LABEL_11:
  *(a1 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_pendingChangeAck) = 1;
  v31 = *v42;
  v33 = *v24;
  v32 = v24[1];

  v35 = sub_22CFD7A04(v34, v33, v32);

  *v41 = v35;
  return result;
}

uint64_t sub_22CFD7A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a1;
  v6 = sub_22D014C8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v59 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v67 = &v50 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v66 = &v50 - v16;
  os_unfair_lock_assert_owner(*(*(v3 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_lock) + 16));
  v17 = OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_bufferedChanges;
  swift_beginAccess();
  v55 = v3;
  if (*(v3 + v17))
  {
    v18 = *(v3 + v17);
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v19 = *(v18 + 16);

  if (v19 && (v20 = sub_22CEEC698(a2, a3), (v21 & 1) != 0))
  {
    v22 = *(*(v18 + 56) + 8 * v20);
  }

  else
  {
    result = MEMORY[0x277D84F90];
  }

  v51 = v18;
  v53 = a2;
  v54 = a3;
  v65 = *(result + 16);
  if (v65)
  {
    v24 = 0;
    v64 = v7 + 16;
    v62 = v7 + 88;
    v61 = *MEMORY[0x277CB9630];
    v25 = *MEMORY[0x277CB9628];
    v57 = *MEMORY[0x277CB9638];
    v58 = v25;
    v26 = (v7 + 8);
    v56 = (v7 + 32);
    v60 = MEMORY[0x277D84F90];
    v63 = result;
    while (1)
    {
      if (v24 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v28 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v29 = *(v7 + 72);
      v30 = *(v7 + 16);
      v31 = v66;
      v30(v66, result + v28 + v29 * v24, v6);
      v32 = v67;
      v30(v67, v31, v6);
      v33 = (*(v7 + 88))(v32, v6);
      if (v33 == v61)
      {
        v27 = *v26;
      }

      else
      {
        v27 = *v26;
        if (v33 == v58 || v33 == v57)
        {
          v27(v67, v6);
          v35 = *v56;
          (*v56)(v59, v66, v6);
          v36 = v60;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v68[0] = v36;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22CF443F0(0, *(v36 + 16) + 1, 1);
            v36 = v68[0];
          }

          v39 = *(v36 + 16);
          v38 = *(v36 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_22CF443F0(v38 > 1, v39 + 1, 1);
            v36 = v68[0];
          }

          *(v36 + 16) = v39 + 1;
          v60 = v36;
          v35((v36 + v28 + v39 * v29), v59, v6);
          goto LABEL_12;
        }
      }

      v27(v67, v6);
      v27(v66, v6);
LABEL_12:
      result = v63;
      if (v65 == ++v24)
      {
        goto LABEL_26;
      }
    }
  }

  v60 = MEMORY[0x277D84F90];
LABEL_26:

  v70 = v60;

  sub_22CFA1564(v40);
  v41 = v70;
  v42 = v54;

  v43 = v51;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v68[0] = v43;
  sub_22CFC00E0(v41, v53, v42, v44);

  v69 = v68[0];
  v46 = sub_22CFD7280();
  if (*v45)
  {
    v47 = v45;

    *v47 = MEMORY[0x277D84F98];
  }

  (v46)(v68, 0);

  v49 = sub_22CFD6420(v48, &v69);

  return v49;
}

uint64_t sub_22CFD7EB0@<X0>(uint64_t a1@<X8>)
{
  v86 = sub_22D01430C();
  v4 = *(v86 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v86, v6);
  v85 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D0149CC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v103 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_22D01502C();
  v12 = *(v84 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v84, v14);
  v102 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D01488C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v101 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v20 = *(*(v83 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v83, v21);
  v82 = v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v81 = (v73 - v26);
  MEMORY[0x28223BE20](v25, v27);
  v80 = v73 - v28;
  v79 = sub_22D01471C();
  v87 = *(v79 - 8);
  v29 = *(v87 + 64);
  MEMORY[0x28223BE20](v79, v30);
  v32 = v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v34 = MEMORY[0x277D84F90];
  if (!Strong)
  {
    return sub_22D01452C();
  }

  v100 = v4;
  v35 = *(*(Strong + OBJC_IVAR____TtC11SessionCore12OutputServer_lock) + 16);
  v36 = Strong;
  os_unfair_lock_lock(v35);
  v37 = OBJC_IVAR____TtC11SessionCore12OutputServer__lock_activities;
  swift_beginAccess();
  v38 = *(v36 + v37);

  os_unfair_lock_unlock(v35);
  swift_unknownObjectRelease();
  v39 = v1;
  v40 = sub_22CEE4290(v38, v39);

  v41 = *(v40 + 16);
  if (!v41)
  {
LABEL_11:

    return sub_22D01452C();
  }

  v73[0] = a1;
  v73[1] = v2;
  v104 = v34;
  sub_22CF44434(0, v41, 0);
  v42 = v104;
  v43 = -1 << *(v40 + 32);
  v44 = sub_22D016AEC();
  v75 = (v12 + 16);
  v74 = (v100 + 16);
  v73[2] = v87 + 32;
  v78 = v32;
  v77 = v40;
  v76 = v40 + 64;
  while (1)
  {
    v88 = v41;
    v100 = v42;
    v45 = *(v40 + 36);
    v46 = v83;
    v47 = *(v83 + 48);
    v48 = v80;
    v99 = v44;
    v89 = v45;
    v49 = sub_22CFA3598(&v80[v47], v44, v45, 0, v40);
    v50 = v81;
    *v81 = v49;
    *(v50 + 8) = v51;
    sub_22CF0A794(&v48[v47], v50 + *(v46 + 48), type metadata accessor for Activity);
    v52 = v82;
    sub_22CEEB6DC(v50, v82, &unk_27D9F3840, &unk_22D01A2B0);
    v53 = *(v52 + 8);

    v54 = (v52 + *(v46 + 48));
    v55 = *v54;
    v97 = *(v54 + 1);
    v98 = v55;
    v56 = type metadata accessor for Activity();
    v57 = v56[5];

    sub_22D014D7C();
    v58 = sub_22D014D4C();
    v95 = v59;
    v96 = v58;
    v60 = v56[6];
    v61 = *&v54[v56[7]];
    v93 = *&v54[v56[8]];
    v94 = v61;
    (*v75)(v102, &v54[v60], v84);

    sub_22D014DBC();
    v62 = *&v54[v56[9]];

    v92 = sub_22D014CFC();
    v91 = sub_22D014D1C();
    v90 = sub_22D014D0C();
    (*v74)(v85, &v54[v56[11]], v86);
    v63 = &v54[v56[13]];
    v64 = *v63;
    v65 = v63[1];

    v42 = v100;
    sub_22D014D8C();
    v66 = &v54[v56[16]];
    v67 = v66[1];
    v72 = *v66;

    v68 = v78;
    sub_22D0146FC();
    sub_22CEEC3D8(v50, &unk_27D9F3840, &unk_22D01A2B0);
    sub_22CF0C71C(v54);
    v104 = v42;
    v70 = *(v42 + 16);
    v69 = *(v42 + 24);
    if (v70 >= v69 >> 1)
    {
      sub_22CF44434(v69 > 1, v70 + 1, 1);
      v42 = v104;
    }

    *(v42 + 16) = v70 + 1;
    (*(v87 + 32))(v42 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v70, v68, v79);
    v40 = v77;
    result = v99;
    if (v99 < 0 || v99 >= -(-1 << *(v77 + 32)))
    {
      break;
    }

    if (((*(v76 + ((v99 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v99) & 1) == 0)
    {
      goto LABEL_14;
    }

    if (v89 != *(v77 + 36))
    {
      goto LABEL_15;
    }

    v44 = sub_22D016B0C();
    v41 = v88 - 1;
    if (v88 == 1)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_22CFD881C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22D01430C();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v62 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D0149CC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v66 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D01502C();
  v59 = *(v14 - 8);
  v15 = *(v59 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v65 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D01488C();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v64 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = v52 - v25;
  v27 = type metadata accessor for Activity();
  v28 = *(v27 - 1);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v32 = v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v63 = a3;
    sub_22CFD70EC(a1, a2, v26);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {
      swift_unknownObjectRelease();
      sub_22CEEC3D8(v26, &qword_27D9F3810, &unk_22D018FA0);
    }

    else
    {
      sub_22CF0A794(v26, v32, type metadata accessor for Activity);
      if (sub_22CF16990(v32))
      {
        v36 = *v32;
        v57 = *(v32 + 1);
        v58 = v36;
        v37 = v27[5];

        sub_22D014D7C();
        v38 = sub_22D014D4C();
        v55 = v39;
        v56 = v38;
        v40 = v27[6];
        v41 = *&v32[v27[7]];
        v53 = *&v32[v27[8]];
        v54 = v41;
        (*(v59 + 16))(v65, &v32[v40], v14);

        sub_22D014DBC();
        v42 = *&v32[v27[9]];

        LODWORD(v59) = sub_22D014CFC();
        v52[3] = sub_22D014D1C();
        sub_22D014D0C();
        (*(v60 + 16))(v62, &v32[v27[11]], v61);
        v43 = &v32[v27[13]];
        v45 = *v43;
        v44 = *(v43 + 1);

        sub_22D014D8C();
        v46 = &v32[v27[16]];
        v47 = *(v46 + 1);
        v51 = *v46;

        v48 = v63;
        sub_22D0146FC();
        swift_unknownObjectRelease();
        sub_22CF0C71C(v32);
        v49 = sub_22D01471C();
        return (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
      }

      sub_22CF0C71C(v32);
      swift_unknownObjectRelease();
    }

    v50 = sub_22D01471C();
    return (*(*(v50 - 8) + 56))(v63, 1, 1, v50);
  }

  else
  {
    v33 = sub_22D01471C();
    v34 = *(*(v33 - 8) + 56);

    return v34(a3, 1, 1, v33);
  }
}

unint64_t *sub_22CFD9114(unint64_t *result, uint64_t a2, void *a3, void *a4)
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

    v8 = a4;
    v9 = sub_22CEE443C(v7, a2, a3);

    return v9;
  }

  return result;
}

uint64_t sub_22CFD91CC(void *a1)
{
  v3 = *(type metadata accessor for Activity() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v1 + 24);

  return sub_22CFD6C08(a1, v5, v1 + v4);
}

uint64_t getEnumTagSinglePayload for OutputServer.LaunchEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OutputServer.LaunchEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_22CFD9374()
{
  result = qword_27D9F3868;
  if (!qword_27D9F3868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3868);
  }

  return result;
}

uint64_t sub_22CFD93D8(char *a1)
{
  v71 = a1;
  v2 = type metadata accessor for Activity();
  v72 = *(v2 - 8);
  v3 = *(v72 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v74 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v68 - v9;
  MEMORY[0x28223BE20](v8, v11);
  v13 = (&v68 - v12);
  v14 = sub_22D01697C();
  v69 = *(v14 - 8);
  v70 = v14;
  v15 = *(v69 + 8);
  MEMORY[0x28223BE20](v14, v16);
  v68 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D01691C();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18, v20);
  v21 = sub_22D01653C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  type metadata accessor for CachingActivityStore();
  v24 = swift_allocObject();
  *(v24 + 16) = MEMORY[0x277D84F98];
  v73 = v1;
  *(v1 + 2) = v24;
  type metadata accessor for UnfairLock();
  v25 = swift_allocObject();
  v26 = swift_slowAlloc();
  *(v25 + 16) = v26;
  *v26 = 0;
  *(v1 + 4) = v25;
  sub_22CEEC38C();
  sub_22D0164FC();
  v76 = MEMORY[0x277D84F90];
  sub_22CF65F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  sub_22D016ADC();
  (*(v69 + 13))(v68, *MEMORY[0x277D85268], v70);
  v69 = v71;
  v27 = v73;
  *(v27 + 3) = sub_22D0169BC();
  if (qword_281442150 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v28 = qword_2814444F8;
    *(v27 + 5) = qword_2814444F8;
    if (!v28)
    {

      return v27;
    }

    v29 = *(v28 + 56);

    v30 = sub_22CF5391C();

    v31 = *(v30 + 2);
    v70 = v31;
    v71 = v30;
    v32 = 0;
    if (v31)
    {
      v33 = &v30[(*(v72 + 80) + 32) & ~*(v72 + 80)];
      v34 = *(v72 + 72);
      v35 = 0xE000000000000000;
      do
      {
        sub_22CF0F9C8(v33, v13);
        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v32 & 0xFFFFFFFFFFFFLL;
        }

        if (v36)
        {
          v76 = v32;
          v77 = v35;

          MEMORY[0x2318C5860](8236, 0xE200000000000000);
          MEMORY[0x2318C5860](*v13, v13[1]);

          v32 = v76;
          v35 = v77;
        }

        else
        {
          v32 = *v13;
          v37 = v13[1];

          v35 = v37;
        }

        sub_22CF0C71C(v13);
        v33 += v34;
        --v31;
      }

      while (v31);
    }

    else
    {
      v35 = 0xE000000000000000;
    }

    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v38 = sub_22D01637C();
    __swift_project_value_buffer(v38, qword_2814443C0);

    v39 = sub_22D01636C();
    v40 = sub_22D01690C();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v70;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v76 = v44;
      *v43 = 136446210;
      v13 = sub_22CEEE31C(v32, v35, &v76);

      *(v43 + 4) = v13;
      _os_log_impl(&dword_22CEE1000, v39, v40, "Restored activities: %{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x2318C6860](v44, -1, -1);
      MEMORY[0x2318C6860](v43, -1, -1);
    }

    else
    {
    }

    v45 = v71;
    if (!v42)
    {
      break;
    }

    v46 = 0;
    v27 = &v71[(*(v72 + 80) + 32) & ~*(v72 + 80)];
    while (v46 < *(v45 + 2))
    {
      v48 = *(v72 + 72);
      sub_22CF0F9C8(&v27[v48 * v46], v10);
      v49 = *(v73 + 2);
      v13 = *v10;
      v50 = *(v10 + 1);
      swift_beginAccess();
      sub_22CF0F9C8(v10, v74);
      v51 = *(v49 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = *(v49 + 16);
      v53 = v75;
      *(v49 + 16) = 0x8000000000000000;
      v54 = sub_22CEEC698(v13, v50);
      v56 = v53[2];
      v57 = (v55 & 1) == 0;
      v58 = __OFADD__(v56, v57);
      v59 = v56 + v57;
      if (v58)
      {
        goto LABEL_37;
      }

      v60 = v55;
      if (v53[3] < v59)
      {
        sub_22CFB8AC8(v59, isUniquelyReferenced_nonNull_native);
        v54 = sub_22CEEC698(v13, v50);
        if ((v60 & 1) != (v61 & 1))
        {
          sub_22D016E1C();
          __break(1u);

          result = sub_22D016CFC();
          __break(1u);
          return result;
        }

LABEL_28:
        v62 = v75;
        if (v60)
        {
          goto LABEL_20;
        }

        goto LABEL_29;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_28;
      }

      v66 = v54;
      sub_22CFB6320();
      v54 = v66;
      v62 = v75;
      if (v60)
      {
LABEL_20:
        sub_22CFDA02C(v74, v62[7] + v54 * v48);
        goto LABEL_21;
      }

LABEL_29:
      v62[(v54 >> 6) + 8] |= 1 << v54;
      v63 = (v62[6] + 16 * v54);
      *v63 = v13;
      v63[1] = v50;
      sub_22CFA8FC0(v74, v62[7] + v54 * v48);
      v64 = v62[2];
      v58 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v58)
      {
        goto LABEL_38;
      }

      v62[2] = v65;

LABEL_21:
      ++v46;
      v47 = *(v49 + 16);
      *(v49 + 16) = v62;

      swift_endAccess();
      sub_22CF0C71C(v10);
      v45 = v71;
      if (v70 == v46)
      {

        return v73;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  return v27;
}

uint64_t sub_22CFD9BD0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Activity();
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = *(a3 + 40);
  if (v13)
  {
    v21[1] = a2;
    v22 = a1;
    v21[0] = v21;
    MEMORY[0x28223BE20](v11, v12);
    v21[-2] = a4;
    v14 = *(v13 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    v15 = sub_22CF3D558();
    v16 = *(*(v13 + 96) + 16);

    os_unfair_lock_lock(v16);
    v17 = *(v13 + 16);
    MEMORY[0x28223BE20](v18, v19);
    v21[-4] = sub_22CFDA000;
    v21[-3] = &v21[-4];
    v21[-2] = v15;
    sub_22D0143FC();
    os_unfair_lock_unlock(v16);

    sub_22CF3DC24();

    a1 = v22;
  }

  return a1(v11);
}

uint64_t sub_22CFD9F7C(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = *(type metadata accessor for Activity() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_22CFD9BD0(a1, a2, v6, v7);
}

uint64_t sub_22CFDA000(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 48);
  return sub_22CF55644(v2);
}

uint64_t sub_22CFDA02C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Activity();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CFDA090(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v34 = a3;
  v35 = a1;
  v36 = a2;
  v33 = sub_22D01697C();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v33, v7);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D01691C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v12 = sub_22D01653C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  *&v3[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_listener] = 0;
  *&v3[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_serverStartupToken] = -1;
  v15 = OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_lock;
  type metadata accessor for UnfairLock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *(v16 + 16) = v17;
  *v17 = 0;
  *&v3[v15] = v16;
  *&v3[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_clients] = MEMORY[0x277D84FA0];
  v31 = sub_22CEEC38C();
  sub_22D01651C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22CEEC480(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v5 + 104))(v32, *MEMORY[0x277D85268], v33);
  v18 = v34;
  *&v3[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_requestProcessingQueue] = sub_22D0169BC();
  v19 = v35;
  v20 = v36;
  *&v4[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_pushServer] = v35;
  *&v4[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_authorizationManager] = v20;
  v21 = type metadata accessor for PushFrequentUpdatesObservationServer();
  v40.receiver = v4;
  v40.super_class = v21;
  v22 = v19;

  v23 = objc_msgSendSuper2(&v40, sel_init);
  v38 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_22CFDAFF8;
  *(v24 + 24) = &v37;
  aBlock[4] = sub_22CEE5B1C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_46_1;
  v25 = _Block_copy(aBlock);
  v26 = objc_opt_self();
  v27 = v23;

  v28 = [v26 listenerWithConfigurator_];

  _Block_release(v25);

  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  else
  {
    v30 = *&v27[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_listener];
    *&v27[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_listener] = v28;

    return v27;
  }

  return result;
}

id sub_22CFDA510(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D014C0C();
  sub_22D016A3C();
  (*(v5 + 8))(v9, v4);
  sub_22D014BFC();
  v10 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22CFDA63C(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  if (qword_28143DA78 != -1)
  {
    swift_once();
  }

  v7 = sub_22D01637C();
  __swift_project_value_buffer(v7, qword_2814442C0);
  v8 = sub_22D01636C();
  v9 = sub_22D0168EC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22CEE1000, v8, v9, a4, v10, 2u);
    MEMORY[0x2318C6860](v10, -1, -1);
  }

  v11 = *(*(a2 + OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_lock) + 16);
  os_unfair_lock_lock(v11);
  swift_beginAccess();
  v12 = sub_22CF612E8(a3);
  swift_endAccess();

  os_unfair_lock_unlock(v11);
}

void sub_22CFDA87C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_22CFDA944();
  }
}

void sub_22CFDA8D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_22CFDAC24();
  }
}

void sub_22CFDA944()
{
  v1 = v0;
  v2 = sub_22D01502C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D015C2C();
  if (v8)
  {
    sub_22D015C4C();
    v9 = sub_22D014F9C();
    v11 = v10;
    (*(v3 + 8))(v7, v2);
    v12 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v13 = sub_22CEE8CD0(v9, v11, 0);
    if (v13 && (v14 = v13, v15 = [v13 supportsLiveActivitiesFrequentUpdates], v14, (v15 & 1) != 0))
    {
      v18 = *(*(v1 + OBJC_IVAR____TtC11SessionCoreP33_4F2D4625D323D26671D2A7737A69A19536PushFrequentUpdatesObservationClient_authorizationManager) + 72);
      MEMORY[0x28223BE20](v16, v17);
      v22[-4] = v19;
      v22[-3] = v9;
      v22[-2] = v11;
      LOBYTE(v22[-1]) = 1;
      sub_22D01699C();

      if ((v25[0] & 1) == 0)
      {
        if ([*(v1 + OBJC_IVAR____TtC11SessionCoreP33_4F2D4625D323D26671D2A7737A69A19536PushFrequentUpdatesObservationClient_connection) remoteTarget])
        {
          sub_22D016ACC();
          swift_unknownObjectRelease();
        }

        else
        {
          v23 = 0u;
          v24 = 0u;
        }

        v25[0] = v23;
        v25[1] = v24;
        if (!*(&v24 + 1))
        {

          sub_22CEEC3D8(v25, &qword_27D9F2B10, &unk_22D01B930);
          return;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3948, &unk_22D01BEE8);
        if (swift_dynamicCast())
        {
          v20 = v22[1];
          v21 = sub_22D01666C();

          [v20 activityDidExceedReducedPushBudgetForIdentifier_];
          swift_unknownObjectRelease();

          return;
        }
      }
    }

    else
    {
    }
  }
}

void sub_22CFDAC24()
{
  if ([*(v0 + OBJC_IVAR____TtC11SessionCoreP33_4F2D4625D323D26671D2A7737A69A19536PushFrequentUpdatesObservationClient_connection) remoteTarget])
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3948, &unk_22D01BEE8);
    if (swift_dynamicCast())
    {
      v1 = sub_22D01666C();
      [v2 activityDidUnsubscribeForIdentifier_];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_22CEEC3D8(v5, &qword_27D9F2B10, &unk_22D01B930);
  }
}

id sub_22CFDAD80(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22CFDAE24(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22D016EAC();
  sub_22D0166DC();
  result = sub_22D016ECC();
  v8 = v5 + 56;
  v9 = -1 << *(v5 + 32);
  v10 = result & ~v9;
  v11 = v10 >> 6;
  v12 = *(v5 + 56 + 8 * (v10 >> 6));
  v13 = 1 << v10;
  if (((1 << v10) & v12) != 0)
  {
    v14 = ~v9;
    while (1)
    {
      v15 = (*(v5 + 48) + 16 * v10);
      if (*v15 == a1 && v15[1] == a2)
      {
        break;
      }

      result = sub_22D016DFC();
      if (result)
      {
        v21 = v15[1];
        break;
      }

      v10 = (v10 + 1) & v14;
      v11 = v10 >> 6;
      v12 = *(v8 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_9;
      }
    }

    *v15 = a1;
    v15[1] = a2;
  }

  else
  {
LABEL_9:
    if (*(v5 + 16) >= *(v5 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v8 + 8 * v11) = v13 | v12;
      v17 = (*(v5 + 48) + 16 * v10);
      *v17 = a1;
      v17[1] = a2;
      v18 = *(v5 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v5 + 16) = v20;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22CFDAF7C@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  return sub_22CF46918(*(v1 + 24), *(v1 + 32), a1);
}

uint64_t sub_22CFDB00C(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v17 = a1;
  v16[0] = sub_22D01697C();
  v3 = *(v16[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v16[0], v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D01691C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v11 = sub_22D01653C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  sub_22CEEC38C();
  sub_22D0164FC();
  v18 = MEMORY[0x277D84F90];
  sub_22CF65F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  sub_22D016ADC();
  (*(v3 + 104))(v7, *MEMORY[0x277D85268], v16[0]);
  v14 = sub_22D0169BC();
  *(v2 + 16) = v17;
  *(v2 + 24) = v14;
  return v2;
}

uint64_t sub_22CFDB220()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_22CFDB284(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v4 + 64);
    v6 = *(a1 + 16);

    v7 = sub_22CF56C04();
    if (!v2)
    {
      v18 = v7;

      goto LABEL_10;
    }

    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v8 = sub_22D01637C();
    __swift_project_value_buffer(v8, qword_2814443C0);
    v9 = v2;
    v10 = sub_22D01636C();
    v11 = sub_22D0168EC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136446210;
      v14 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2030, &qword_22D018FD0);
      v15 = sub_22D01669C();
      v17 = sub_22CEEE31C(v15, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_22CEE1000, v10, v11, "Could not fetch metadata from sync engine persistent store: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x2318C6860](v13, -1, -1);
      MEMORY[0x2318C6860](v12, -1, -1);
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_10:
  *a2 = v18;
}

void sub_22CFDB47C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_9:
    v18 = MEMORY[0x277D84FA0];
    goto LABEL_10;
  }

  v5 = *(v4 + 72);
  v6 = *(a1 + 16);

  v7 = sub_22CF576CC();
  if (v2)
  {

    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v8 = sub_22D01637C();
    __swift_project_value_buffer(v8, qword_2814443C0);
    v9 = v2;
    v10 = sub_22D01636C();
    v11 = sub_22D0168EC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136446210;
      v14 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2030, &qword_22D018FD0);
      v15 = sub_22D01669C();
      v17 = sub_22CEEE31C(v15, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_22CEE1000, v10, v11, "Could not fetch paired device identifiers from sync engine persistent store: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x2318C6860](v13, -1, -1);
      MEMORY[0x2318C6860](v12, -1, -1);
    }

    else
    {
    }

    goto LABEL_9;
  }

  v18 = v7;

LABEL_10:
  *a2 = v18;
}

uint64_t sub_22CFDB68C@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *(v4 + 80);
    v6 = *(result + 16);

    v7 = sub_22CF57C9C();
    if (v2)
    {

      if (qword_28143FB00 != -1)
      {
        swift_once();
      }

      v8 = sub_22D01637C();
      __swift_project_value_buffer(v8, qword_2814443C0);
      v9 = v2;
      v10 = sub_22D01636C();
      v11 = sub_22D0168EC();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v19 = v13;
        *v12 = 136446210;
        v14 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2030, &qword_22D018FD0);
        v15 = sub_22D01669C();
        v17 = sub_22CEEE31C(v15, v16, &v19);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_22CEE1000, v10, v11, "Could not fetch sync dates from sync engine persistent store: %{public}s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x2318C6860](v13, -1, -1);
        MEMORY[0x2318C6860](v12, -1, -1);
      }

      v18 = sub_22CFF7CD8(MEMORY[0x277D84F90]);
    }

    else
    {
      v18 = v7;
    }
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  *a2 = v18;
  return result;
}

uint64_t sub_22CFDB898(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v10 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558();
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    v6 = *(v3 + 16);
    MEMORY[0x28223BE20](v7, v8);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v10;
  }

  return a1();
}

uint64_t sub_22CFDBB80(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v10 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558();
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    v6 = *(v3 + 16);
    MEMORY[0x28223BE20](v7, v8);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v10;
  }

  return a1();
}

uint64_t sub_22CFDBE68(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v10 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558();
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    v6 = *(v3 + 16);
    MEMORY[0x28223BE20](v7, v8);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v10;
  }

  return a1();
}

uint64_t sub_22CFDC150(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v10 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558();
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    v6 = *(v3 + 16);
    MEMORY[0x28223BE20](v7, v8);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v10;
  }

  return a1();
}

uint64_t sub_22CFDC438(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v10 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558();
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    v6 = *(v3 + 16);
    MEMORY[0x28223BE20](v7, v8);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v10;
  }

  return a1();
}

uint64_t sub_22CFDC720(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v10 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558();
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    v6 = *(v3 + 16);
    MEMORY[0x28223BE20](v7, v8);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v10;
  }

  return a1();
}

uint64_t sub_22CFDCA08(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v10 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558();
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    v6 = *(v3 + 16);
    MEMORY[0x28223BE20](v7, v8);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v10;
  }

  return a1();
}

uint64_t sub_22CFDCCF4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = *(v4 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558();
    v6 = *(*(v4 + 96) + 16);

    os_unfair_lock_lock(v6);
    v7 = *(v4 + 16);
    MEMORY[0x28223BE20](v8, v9);
    sub_22D0143FC();
    os_unfair_lock_unlock(v6);

    sub_22CF3DC24();
  }

  return a1();
}

uint64_t sub_22CFDD040(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_22D01699C();
  return v7;
}

uint64_t sub_22CFDD0A0()
{
  v1 = *v0;
  sub_22D01566C();
  v2 = *(v1 + 24);

  sub_22D01565C();
  sub_22D01564C();
}

uint64_t sub_22CFDD1F4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_22D01566C();
  v6 = *(v5 + 24);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a2;

  sub_22D01565C();
  sub_22D01564C();
}

uint64_t sub_22CFDD2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v17 - v10;
  v12 = *v4;
  sub_22D01566C();
  v13 = *(v12 + 24);
  (*(v7 + 16))(v11, a1, v6);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  (*(v7 + 32))(v15 + v14, v11, v6);

  sub_22D01565C();
  sub_22D01564C();
}

uint64_t sub_22CFDD464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v25 = a2;
  v26 = a1;
  v5 = sub_22D01430C();
  v24 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v9 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D0157AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v14 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v4;
  v16 = sub_22D01566C();
  v27 = *(v15 + 24);
  v28 = v16;
  (*(v11 + 16))(v14, v25, v10);
  (*(v6 + 16))(v9, v26, v5);
  v17 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v18 = (v12 + *(v6 + 80) + v17) & ~*(v6 + 80);
  v19 = swift_allocObject();
  v20 = v29;
  v21 = v30;
  *(v19 + 2) = v15;
  *(v19 + 3) = v20;
  *(v19 + 4) = v21;
  (*(v11 + 32))(&v19[v17], v14, v10);
  (*(v6 + 32))(&v19[v18], v9, v24);

  sub_22D01565C();
  sub_22D01564C();
}

uint64_t sub_22CFDD6C4(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = *(sub_22D0157AC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_22D01430C() - 8);
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[4];
  v12 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_22CFDCA08(a1, a2, v9);
}

uint64_t sub_22CFDD7B0(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(a1 + 72);
  return sub_22CF57FC4(v3, v2, v4);
}

uint64_t sub_22CFDD80C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 72);
  return sub_22CF58400();
}

uint64_t sub_22CFDD838(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_22CFDC438(a1, a2, v2[2]);
}

uint64_t sub_22CFDD844(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(a1 + 72);
  return sub_22CF583D0(v3, v2);
}

uint64_t sub_22CFDD870(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_22CFDC150(a1, a2, v2[2]);
}

uint64_t sub_22CFDD87C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(a1 + 64);
  return sub_22CF57C6C(v3, v2);
}

uint64_t sub_22CFDD8A8(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_22CFDBE68(a1, a2, v2[2]);
}

uint64_t sub_22CFDD8B4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(a1 + 64);
  return sub_22CF57980(v3, v2);
}

uint64_t sub_22CFDD90C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 56);
  return sub_22CF57684();
}

uint64_t objectdestroy_3Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_22CFDDA30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = *(v4 + 16);
  v9 = v4 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return a4(a1, a2, v8, v9);
}

uint64_t sub_22CFDDACC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 56);
  return sub_22CF56F2C(v2);
}

uint64_t sub_22CFDDBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16))
  {

    v8 = sub_22CEEC698(a1, a2);
    if (v9)
    {
      v10 = v8;
      v11 = *(v7 + 56);
      v12 = type metadata accessor for Activity();
      v13 = *(v12 - 8);
      sub_22CF0F9C8(v11 + *(v13 + 72) * v10, a3);

      return (*(v13 + 56))(a3, 0, 1, v12);
    }
  }

  v15 = type metadata accessor for Activity();
  return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
}

uint64_t sub_22CFDDD3C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = *a1;
  v10 = a1[1];
  sub_22CF0F9C8(a1, &v13 - v6);
  v11 = type metadata accessor for Activity();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  swift_beginAccess();

  sub_22CF0BC5C(v7, v9, v10);
  return swift_endAccess();
}

uint64_t sub_22CFDDE4C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v13 - v8;
  v10 = *v2;
  v11 = type metadata accessor for Activity();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  swift_beginAccess();

  sub_22CF0BC5C(v9, a1, a2);
  return swift_endAccess();
}

uint64_t getEnumTagSinglePayload for ActivityManagerEvent.EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityManagerEvent.EventType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22CFDE1D4()
{
  result = type metadata accessor for Activity();
  if (v1 <= 0x3F)
  {
    result = sub_22D01486C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22CFDE270()
{
  type metadata accessor for ActivityParticipantEvent.EventType(319);
  if (v0 <= 0x3F)
  {
    sub_22D01483C();
    if (v1 <= 0x3F)
    {
      sub_22CFDE498(319, qword_28143EAD8);
      if (v2 <= 0x3F)
      {
        sub_22CFDE354();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22CFDE354()
{
  if (!qword_28143F6E0)
  {
    sub_22D0146BC();
    v0 = sub_22D016A8C();
    if (!v1)
    {
      atomic_store(v0, &qword_28143F6E0);
    }
  }
}

uint64_t sub_22CFDE3E4()
{
  result = type metadata accessor for Activity();
  if (v1 <= 0x3F)
  {
    result = sub_22CFDE498(319, qword_28143E000);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22CFDE498(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_22CFDE4F0()
{
  sub_22CFDE58C();
  if (v0 <= 0x3F)
  {
    sub_22D01430C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22CFDE58C()
{
  if (!qword_28143F718)
  {
    v0 = sub_22D016A8C();
    if (!v1)
    {
      atomic_store(v0, &qword_28143F718);
    }
  }
}

unint64_t sub_22CFDE5F0()
{
  result = qword_27D9F3A10;
  if (!qword_27D9F3A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3A10);
  }

  return result;
}

unint64_t sub_22CFDE648()
{
  result = qword_27D9F3A18;
  if (!qword_27D9F3A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3A18);
  }

  return result;
}

unint64_t sub_22CFDE6A0()
{
  result = qword_27D9F3A20;
  if (!qword_27D9F3A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3A20);
  }

  return result;
}

uint64_t sub_22CFDE738()
{
  sub_22CF460CC(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_22CFDE7A4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_22CFDE7E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_22CFDE840(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_22CFDE8D4;
}

void sub_22CFDE8D4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_22CFDE958()
{
  v1 = sub_22D01637C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v0 + 24);
    swift_getObjectType();
    sub_22D01526C();
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_22D01635C();
    v9 = sub_22D01636C();
    v10 = sub_22D0168EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22CEE1000, v9, v10, "Alert presenter has no delegate", v11, 2u);
      MEMORY[0x2318C6860](v11, -1, -1);
    }

    return (*(v2 + 8))(v6, v1);
  }
}

id sub_22CFDEAE8(void *a1)
{
  [a1 selector];
  if (sub_22D0143EC())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

uint64_t sub_22CFDEB60(uint64_t a1, void *a2)
{
  v29 = a2;
  v30 = a1;
  v28 = sub_22D01697C();
  v3 = *(v28 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v28, v5);
  v27 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D01691C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v10 = sub_22D01653C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  *&v2[OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_listener] = 0;
  *&v2[OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_serverStartupToken] = -1;
  v13 = OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_lock;
  type metadata accessor for UnfairLock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *(v14 + 16) = v15;
  *v15 = 0;
  *&v2[v13] = v14;
  *&v2[OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_clients] = MEMORY[0x277D84FA0];
  v26[1] = sub_22CEEC38C();
  sub_22D01651C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22CEEC4C8(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v3 + 104))(v27, *MEMORY[0x277D85268], v28);
  v16 = v29;
  *&v2[OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_requestProcessingQueue] = sub_22D0169BC();
  *&v2[OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_replicatorParticipant] = v30;
  v17 = type metadata accessor for ActivityRemoteSubscriptionPreferencesObservationServer();
  v34.receiver = v2;
  v34.super_class = v17;

  v18 = objc_msgSendSuper2(&v34, sel_init);
  v32 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_22CFE0344;
  *(v19 + 24) = &v31;
  aBlock[4] = sub_22CEE5B24;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_48;
  v20 = _Block_copy(aBlock);
  v21 = objc_opt_self();
  v22 = v18;

  v23 = [v21 listenerWithConfigurator_];

  _Block_release(v20);

  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    v25 = *&v22[OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_listener];
    *&v22[OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_listener] = v23;

    return v22;
  }

  return result;
}

id sub_22CFDEFC4(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D014C2C();
  sub_22D016A3C();
  (*(v5 + 8))(v9, v4);
  sub_22D014C1C();
  v10 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22CFDF0F0(void *a1, void *a2, char *a3)
{
  sub_22D014C1C();
  v6 = sub_22D01666C();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v26 = sub_22CFDEAE8;
  v27 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22CEE5F40;
  v25 = &block_descriptor_30_1;
  v8 = _Block_copy(&v22);
  v9 = &unk_284040728;

  v10 = objc_opt_self();
  v11 = [v10 protocolForProtocol:v9 interpreter:v8];
  _Block_release(v8);

  [v7 setClient_];
  v12 = [v10 protocolForProtocol_];
  [v7 setServer_];

  v13 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a2;
  v26 = sub_22CFE02FC;
  v27 = v14;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_36_1;
  v15 = _Block_copy(&v22);
  v16 = a3;
  v17 = a2;

  [a1 setInterruptionHandler_];
  _Block_release(v15);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  v26 = sub_22CFE0320;
  v27 = v18;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_42;
  v19 = _Block_copy(&v22);
  v20 = v16;
  v21 = v17;

  [a1 setInvalidationHandler_];
  _Block_release(v19);
}

void sub_22CFDF460(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  if (qword_28143DAC0 != -1)
  {
    swift_once();
  }

  v7 = sub_22D01637C();
  __swift_project_value_buffer(v7, qword_281444350);
  v8 = sub_22D01636C();
  v9 = sub_22D0168EC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22CEE1000, v8, v9, a4, v10, 2u);
    MEMORY[0x2318C6860](v10, -1, -1);
  }

  v11 = *(*(a2 + OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_lock) + 16);
  os_unfair_lock_lock(v11);
  swift_beginAccess();
  v12 = sub_22CF61324(a3);
  swift_endAccess();

  os_unfair_lock_unlock(v11);
}

void sub_22CFDF724(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3B38, qword_22D01C440);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = v26 - v6;
  v8 = sub_22D0150DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v1 + OBJC_IVAR____TtC11SessionCoreP33_B02F3357A3D0A8E8DFCA3AAB9BED3E036Client_connection) remoteTarget])
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29[0] = v27;
  v29[1] = v28;
  if (*(&v28 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B48, qword_22D01C458);
    if (swift_dynamicCast())
    {
      v14 = v26[1];
      sub_22CFE0014(a1, v7);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        swift_unknownObjectRelease();
        sub_22CEEC3D8(v7, &unk_27D9F3B38, qword_22D01C440);
      }

      else
      {
        (*(v9 + 32))(v13, v7, v8);
        v19 = sub_22D0140BC();
        v20 = *(v19 + 48);
        v21 = *(v19 + 52);
        swift_allocObject();
        sub_22D0140AC();
        sub_22CEEC4C8(&qword_27D9F3B50, MEMORY[0x277CB9868]);
        v22 = sub_22D01409C();
        v24 = v23;
        v25 = sub_22D0141DC();
        [v14 subscriptionPreferencesDidChange_];
        sub_22CEE7524(v22, v24);
        swift_unknownObjectRelease();

        (*(v9 + 8))(v13, v8);
      }

      return;
    }
  }

  else
  {
    sub_22CEEC3D8(v29, &qword_27D9F2B10, &unk_22D01B930);
  }

  if (qword_28143DAC0 != -1)
  {
    swift_once();
  }

  v15 = sub_22D01637C();
  __swift_project_value_buffer(v15, qword_281444350);
  v16 = sub_22D01636C();
  v17 = sub_22D0168EC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22CEE1000, v16, v17, "No remote target for subscription preferences client connection", v18, 2u);
    MEMORY[0x2318C6860](v18, -1, -1);
  }
}

id sub_22CFDFB34(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22CFDFBFC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3670, &qword_22D01BF00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B08, &qword_22D01C430);
  v8 = *(v7 - 8);
  v19 = v7;
  v20 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v19 - v11;
  v13 = *(v0 + OBJC_IVAR____TtC11SessionCoreP33_B02F3357A3D0A8E8DFCA3AAB9BED3E036Client_replicatorParticipant);
  v21 = sub_22CF8B6A0();
  v22 = *(v1 + OBJC_IVAR____TtC11SessionCoreP33_B02F3357A3D0A8E8DFCA3AAB9BED3E036Client_requestProcessingQueue);
  v14 = v22;
  v15 = sub_22D01693C();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3B10, &qword_22D01C438);
  sub_22CEEC38C();
  sub_22CEE8394(&unk_27D9F3B20, &unk_27D9F3B10, &qword_22D01C438);
  sub_22CEEC4C8(&qword_28143FA10, sub_22CEEC38C);
  sub_22D01647C();
  sub_22CEEC3D8(v6, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22CEE8394(&qword_27D9F3B30, &qword_27D9F3B08, &qword_22D01C430);
  v17 = v19;
  sub_22D0164AC();

  (*(v20 + 8))(v12, v17);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();
}

void sub_22CFDFF34(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_22CFDF724(a1);
  }
}

uint64_t sub_22CFE0014(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3B38, qword_22D01C440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22CFE0084(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_replicatorParticipant];
  v5 = *&v2[OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_requestProcessingQueue];
  v6 = _s11SessionCore6ClientCMa_3();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC11SessionCoreP33_B02F3357A3D0A8E8DFCA3AAB9BED3E036Client_cancellables] = MEMORY[0x277D84FA0];
  *&v7[OBJC_IVAR____TtC11SessionCoreP33_B02F3357A3D0A8E8DFCA3AAB9BED3E036Client_connection] = a1;
  *&v7[OBJC_IVAR____TtC11SessionCoreP33_B02F3357A3D0A8E8DFCA3AAB9BED3E036Client_replicatorParticipant] = v4;
  *&v7[OBJC_IVAR____TtC11SessionCoreP33_B02F3357A3D0A8E8DFCA3AAB9BED3E036Client_requestProcessingQueue] = v5;
  v20.receiver = v7;
  v20.super_class = v6;
  v8 = a1;

  v9 = v5;
  v10 = objc_msgSendSuper2(&v20, sel_init);
  v11 = *(*&v2[OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_lock] + 16);
  os_unfair_lock_lock(v11);
  swift_beginAccess();
  v12 = v10;
  sub_22CF76DDC(&v19, v12);
  swift_endAccess();

  os_unfair_lock_unlock(v11);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22CFE02F4;
  *(v14 + 24) = v13;
  aBlock[4] = sub_22CEE5B1C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_27;
  v15 = _Block_copy(aBlock);
  v16 = v12;
  v17 = v2;

  [v8 configureConnection_];
  _Block_release(v15);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    [v8 activate];
  }
}

id sub_22CFE0388(void *a1, void *a2)
{
  result = [a1 bundleIdentifier];
  if (result)
  {
    v4 = result;
    v5 = sub_22D01667C();
    v7 = v6;

    v8 = a2[5];
    v9 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v8);
    v10 = (*(v9 + 8))(v5, v7, v8, v9);

    return (v10 & 1);
  }

  return result;
}

uint64_t sub_22CFE0450(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(v6 + 8))(a1, a2, v5, v6) & 1;
}

id sub_22CFE04C4(uint64_t a1, uint64_t a2)
{
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  result = sub_22CEE8CD0(a1, a2, 0);
  if (result)
  {
    v5 = result;
    v6 = [result entitlements];
    v7 = sub_22D01666C();
    sub_22CFB21B0();
    v8 = [v6 objectForKey:v7 ofClass:swift_getObjCClassFromMetadata()];

    if (v8)
    {
      sub_22D016ACC();
      swift_unknownObjectRelease();
    }

    else
    {

      v10 = 0u;
      v11 = 0u;
    }

    v12[0] = v10;
    v12[1] = v11;
    if (*(&v11 + 1))
    {
      if (swift_dynamicCast())
      {
        return v9;
      }
    }

    else
    {
      sub_22CFAA9A8(v12);
    }

    return 0;
  }

  return result;
}

uint64_t sub_22CFE0658()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(*(result + 16) + 16);
    v2 = result;
    os_unfair_lock_lock(v1);
    sub_22CFE06EC(v2);
    os_unfair_lock_unlock(v1);
    v3 = *(*(v2 + 16) + 16);
    os_unfair_lock_lock(v3);
    sub_22CF11D74(v2);
    os_unfair_lock_unlock(v3);
  }

  return result;
}

uint64_t sub_22CFE06EC(uint64_t a1)
{
  v2 = type metadata accessor for Activity();
  v55 = *(v2 - 8);
  v3 = *(v55 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5, v8);
  v54 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3850, &unk_22D019D30);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = (&v51 - v17);
  v59 = MEMORY[0x277D84FA0];
  swift_beginAccess();
  v19 = *(a1 + 120);
  v22 = *(v19 + 64);
  v21 = v19 + 64;
  v20 = v22;
  v23 = 1 << *(*(a1 + 120) + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;
  v56 = *(a1 + 120);
  v57 = a1;

  v28 = 0;
  v52 = v15;
  v53 = v7;
  v51 = v18;
  while (v25)
  {
    v29 = v28;
LABEL_15:
    v32 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v33 = v32 | (v29 << 6);
    v34 = (*(v56 + 48) + 16 * v33);
    v36 = *v34;
    v35 = v34[1];
    v37 = v54;
    sub_22CF0CCBC(*(v56 + 56) + *(v55 + 72) * v33, v54, type metadata accessor for Activity);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
    v39 = *(v38 + 48);
    v15 = v52;
    *v52 = v36;
    *(v15 + 1) = v35;
    sub_22CF0A72C(v37, &v15[v39], type metadata accessor for Activity);
    (*(*(v38 - 8) + 56))(v15, 0, 1, v38);

    v31 = v29;
    v7 = v53;
    v18 = v51;
LABEL_16:
    sub_22CF82724(v15, v18);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
    if ((*(*(v40 - 8) + 48))(v18, 1, v40) == 1)
    {

      v45 = v57;
      v46 = *(v57 + 120);
      MEMORY[0x28223BE20](v44, v47);
      *(&v51 - 2) = &v59;

      v49 = sub_22CFC3D3C(v48, sub_22CFC3A80);

      v50 = *(v45 + 120);
      *(v45 + 120) = v49;
    }

    v41 = *v18;
    v42 = v18[1];
    sub_22CF0A72C(v18 + *(v40 + 48), v7, type metadata accessor for Activity);
    if (sub_22CFE0BA8(v7))
    {
      sub_22CEE54CC(&v58, v41, v42);

      result = sub_22CF0F640(v7, type metadata accessor for Activity);
    }

    else
    {
      sub_22CF0F640(v7, type metadata accessor for Activity);
    }

    v28 = v31;
  }

  if (v26 <= v28 + 1)
  {
    v30 = v28 + 1;
  }

  else
  {
    v30 = v26;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v26)
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      (*(*(v43 - 8) + 56))(v15, 1, 1, v43);
      v25 = 0;
      goto LABEL_16;
    }

    v25 = *(v21 + 8 * v29);
    ++v28;
    if (v25)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFE0BA8(uint64_t (*a1)(uint64_t a1))
{
  v138 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v134 = &v117 - v5;
  v6 = sub_22D0164CC();
  v129 = *(v6 - 8);
  v130 = v6;
  v7 = *(v129 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v127 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_22D01653C();
  v126 = *(v128 - 8);
  v10 = *(v126 + 64);
  MEMORY[0x28223BE20](v128, v11);
  v125 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for ActivityParticipantEvent(0);
  v121 = *(v120 - 8);
  v13 = *(v121 + 64);
  v15 = MEMORY[0x28223BE20](v120, v14);
  v123 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v16;
  MEMORY[0x28223BE20](v15, v17);
  v124 = &v117 - v18;
  v19 = type metadata accessor for Activity();
  v133 = *(v19 - 8);
  v20 = *(v133 + 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v132 = (&v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v22, v24);
  v118 = (&v117 - v26);
  MEMORY[0x28223BE20](v25, v27);
  v131 = (&v117 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v33 = &v117 - v32;
  v34 = sub_22D01461C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  v39 = &v117 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_22D01430C();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v44 = MEMORY[0x28223BE20](v40, v43);
  v46 = &v117 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v47);
  v49 = &v117 - v48;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v135 = v1;
    v119 = *(v1 + 136);
    v136 = v19;
    v50 = *(v19 + 56);
    sub_22D01467C();
    sub_22D01460C();
    (*(v35 + 8))(v39, v34);
    if ((*(v41 + 48))(v33, 1, v40) == 1)
    {
      sub_22CEEC3D8(v33, &qword_27D9F2648, &unk_22D018BC0);
      if (qword_28143DAB0 != -1)
      {
        swift_once();
      }

      v51 = sub_22D01637C();
      __swift_project_value_buffer(v51, qword_281444320);
      v52 = v138;
      v53 = v132;
      sub_22CF0CCBC(v138, v132, type metadata accessor for Activity);
      v54 = sub_22D01636C();
      v55 = sub_22D01690C();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        aBlock[0] = v57;
        *v56 = 136446210;
        v58 = *v53;
        v59 = v53[1];

        sub_22CF0F640(v53, type metadata accessor for Activity);
        v60 = sub_22CEEE31C(v58, v59, aBlock);

        *(v56 + 4) = v60;
        _os_log_impl(&dword_22CEE1000, v54, v55, "Activity has no stale date: %{public}s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        MEMORY[0x2318C6860](v57, -1, -1);
        MEMORY[0x2318C6860](v56, -1, -1);
      }

      else
      {

        sub_22CF0F640(v53, type metadata accessor for Activity);
      }

      v74 = *(*(v135 + 16) + 16);
      os_unfair_lock_lock(v74);
      v75 = *v52;
      v76 = v52[1];
      v77 = v134;
      (*(v133 + 7))(v134, 1, 1, v136);
      swift_beginAccess();

      sub_22CF0BC5C(v77, v75, v76);
      swift_endAccess();
      os_unfair_lock_unlock(v74);
      goto LABEL_15;
    }

    (*(v41 + 32))(v49, v33, v40);
    sub_22D0142DC();
    v61 = sub_22D01428C();
    v62 = *(v41 + 8);
    v62(v46, v40);
    if ((v61 & 1) == 0)
    {
      v62(v49, v40);
LABEL_15:
      swift_unknownObjectRelease();
      return 0;
    }

    v134 = v62;
    if (qword_28143DAB0 != -1)
    {
      swift_once();
    }

    v63 = sub_22D01637C();
    v64 = __swift_project_value_buffer(v63, qword_281444320);
    v65 = v131;
    sub_22CF0CCBC(v138, v131, type metadata accessor for Activity);
    v133 = v64;
    v66 = sub_22D01636C();
    v67 = sub_22D01690C();
    v68 = os_log_type_enabled(v66, v67);
    v117 = v50;
    if (v68)
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      aBlock[0] = v70;
      *v69 = 136446210;
      v71 = *v65;
      v72 = v65[1];

      sub_22CF0F640(v65, type metadata accessor for Activity);
      v73 = sub_22CEEE31C(v71, v72, aBlock);

      *(v69 + 4) = v73;
      _os_log_impl(&dword_22CEE1000, v66, v67, "Marking outdated activity as stale: %{public}s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x2318C6860](v70, -1, -1);
      MEMORY[0x2318C6860](v69, -1, -1);
    }

    else
    {

      sub_22CF0F640(v65, type metadata accessor for Activity);
    }

    v79 = v136;
    v80 = v138;
    v81 = *(v138 + *(v136 + 36));
    if (*(v81 + 16))
    {
      v82 = sub_22D01483C();
      v83 = *(v82 - 8);
      v136 = v40;
      v84 = v83;
      v85 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v86 = *v80;
      v131 = *(v80 + 1);
      v132 = v86;
      v87 = (v80 + *(v79 + 52));
      v88 = v87[1];
      v118 = *v87;
      v133 = v49;
      v89 = v80;
      v90 = v120;
      v91 = *(v120 + 24);
      type metadata accessor for ActivityParticipantEvent.EventType(0);
      v92 = v124;
      swift_storeEnumTagMultiPayload();
      (*(v84 + 16))(&v92[v90[7]], v81 + v85, v82);
      v93 = v90[9];
      v94 = sub_22D0146BC();
      v95 = *(v94 - 8);
      (*(v95 + 16))(&v92[v93], v89 + v117, v94);
      (*(v95 + 56))(&v92[v93], 0, 1, v94);
      v96 = v131;
      *v92 = v132;
      *(v92 + 1) = v96;
      *(v92 + 2) = v118;
      *(v92 + 3) = v88;
      v97 = &v92[v90[8]];
      v98 = v135;
      *v97 = v135;
      *(v97 + 1) = &off_28402D288;
      v92[v90[10]] = 0;
      v132 = *(v98 + 72);
      v138 = type metadata accessor for ActivityParticipantEvent;
      v99 = v123;
      sub_22CF0CCBC(v92, v123, type metadata accessor for ActivityParticipantEvent);
      v100 = (*(v121 + 80) + 32) & ~*(v121 + 80);
      v101 = swift_allocObject();
      v102 = v119;
      *(v101 + 16) = Strong;
      *(v101 + 24) = v102;
      sub_22CF0A72C(v99, v101 + v100, type metadata accessor for ActivityParticipantEvent);
      aBlock[4] = sub_22CFA5C9C;
      aBlock[5] = v101;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22CEF8B58;
      aBlock[3] = &block_descriptor_28;
      v103 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      v104 = v125;
      sub_22D0164EC();
      v139 = MEMORY[0x277D84F90];
      sub_22CF1A1AC(&qword_28143FA60, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
      sub_22CF0EDA8();
      v105 = v127;
      v106 = v130;
      sub_22D016ADC();
      MEMORY[0x2318C5B10](0, v104, v105, v103);
      _Block_release(v103);
      swift_unknownObjectRelease();
      (*(v129 + 8))(v105, v106);
      (*(v126 + 8))(v104, v128);
      sub_22CF0F640(v92, v138);
      (v134)(v133, v136);
    }

    else
    {
      v107 = v118;
      sub_22CF0CCBC(v138, v118, type metadata accessor for Activity);
      v108 = sub_22D01636C();
      v109 = sub_22D0168EC();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        aBlock[0] = v111;
        *v110 = 136446210;
        v112 = v49;
        v113 = *v107;
        v114 = v107[1];

        sub_22CF0F640(v107, type metadata accessor for Activity);
        v115 = sub_22CEEE31C(v113, v114, aBlock);

        *(v110 + 4) = v115;
        _os_log_impl(&dword_22CEE1000, v108, v109, "No content sources exist for outdated activity: %{public}s", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v111);
        MEMORY[0x2318C6860](v111, -1, -1);
        MEMORY[0x2318C6860](v110, -1, -1);
        swift_unknownObjectRelease();

        v116 = v112;
      }

      else
      {
        swift_unknownObjectRelease();

        sub_22CF0F640(v107, type metadata accessor for Activity);
        v116 = v49;
      }

      (v134)(v116, v40);
    }

    return 1;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22CFE1A30()
{
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v1 = *(*(v73 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v73, v2);
  v72 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v71 = (&v62 - v7);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v70 = (&v62 - v10);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v69 = (&v62 - v13);
  MEMORY[0x28223BE20](v12, v14);
  v68 = &v62 - v15;
  v62 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v62);
  swift_beginAccess();
  v16 = *(v0 + 120);
  v17 = *(v16 + 16);
  v81 = MEMORY[0x277D84F90];
  if (v17)
  {
    v82 = MEMORY[0x277D84F90];

    sub_22CF4414C(0, v17, 0);
    v81 = v82;
    v18 = v16 + 64;
    v19 = -1 << *(v16 + 32);
    v20 = sub_22D016AEC();
    v21 = 0;
    v22 = *(v16 + 36);
    v63 = v16 + 72;
    v64 = v17;
    v66 = v16 + 64;
    v65 = v22;
    v67 = v16;
    while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << *(v16 + 32))
    {
      if ((*(v18 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
      {
        goto LABEL_26;
      }

      if (v22 != *(v16 + 36))
      {
        goto LABEL_27;
      }

      v75 = 1 << v20;
      v76 = v20 >> 6;
      v74 = v21;
      v24 = v73;
      v25 = *(v73 + 48);
      v26 = *(v16 + 56);
      v27 = (*(v16 + 48) + 16 * v20);
      v29 = *v27;
      v28 = v27[1];
      v30 = type metadata accessor for Activity();
      v31 = v68;
      sub_22CF0CCBC(v26 + *(*(v30 - 8) + 72) * v20, &v68[v25], type metadata accessor for Activity);
      v32 = v69;
      *v69 = v29;
      *(v32 + 8) = v28;
      v33 = *(v24 + 48);
      sub_22CF0A72C(&v31[v25], v32 + v33, type metadata accessor for Activity);
      v34 = v70;
      *v70 = v29;
      *(v34 + 8) = v28;
      sub_22CF0CCBC(v32 + v33, v34 + *(v24 + 48), type metadata accessor for Activity);
      v35 = v71;
      sub_22CEEB6DC(v34, v71, &unk_27D9F3840, &unk_22D01A2B0);
      v36 = *v35;
      v79 = v35[1];
      v80 = v36;
      v77 = *(v24 + 48);
      v37 = v72;
      sub_22CEEB6DC(v34, v72, &unk_27D9F3840, &unk_22D01A2B0);
      v38 = *(v37 + 8);
      swift_bridgeObjectRetain_n();

      v39 = *(v24 + 48);
      v78 = sub_22CF0B174();
      v41 = v40;
      v42 = v34;
      v43 = v81;
      sub_22CEEC3D8(v42, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CF0F640(v37 + v39, type metadata accessor for Activity);
      sub_22CF0F640(v35 + v77, type metadata accessor for Activity);
      sub_22CEEC3D8(v32, &unk_27D9F3840, &unk_22D01A2B0);
      v82 = v43;
      v45 = *(v43 + 16);
      v44 = *(v43 + 24);
      v81 = v43;
      if (v45 >= v44 >> 1)
      {
        sub_22CF4414C((v44 > 1), v45 + 1, 1);
        v81 = v82;
      }

      v47 = v80;
      v46 = v81;
      *(v81 + 16) = v45 + 1;
      v48 = (v46 + 48 * v45);
      v49 = v78;
      v50 = v79;
      v48[4] = v47;
      v48[5] = v50;
      v48[6] = v49;
      v48[7] = v41;
      v48[9] = MEMORY[0x277D837D0];
      v16 = v67;
      v23 = 1 << *(v67 + 32);
      if (v20 >= v23)
      {
        goto LABEL_28;
      }

      v18 = v66;
      v51 = *(v66 + 8 * v76);
      if ((v51 & v75) == 0)
      {
        goto LABEL_29;
      }

      LODWORD(v22) = v65;
      if (v65 != *(v67 + 36))
      {
        goto LABEL_30;
      }

      v52 = v51 & (-2 << (v20 & 0x3F));
      if (v52)
      {
        v23 = __clz(__rbit64(v52)) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v53 = v76 << 6;
        v54 = v76 + 1;
        v55 = (v63 + 8 * v76);
        while (v54 < (v23 + 63) >> 6)
        {
          v57 = *v55++;
          v56 = v57;
          v53 += 64;
          ++v54;
          if (v57)
          {
            sub_22CF44CF8(v20, v65, 0);
            v23 = __clz(__rbit64(v56)) + v53;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v20, v65, 0);
      }

LABEL_4:
      v21 = v74 + 1;
      v20 = v23;
      if (v74 + 1 == v64)
      {

        goto LABEL_21;
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
LABEL_30:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_21:
    if (*(v81 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
      v58 = sub_22D016D3C();
    }

    else
    {
      v58 = MEMORY[0x277D84F98];
    }

    v82 = v58;

    sub_22CF623EC(v59, 1, &v82);

    v60 = v82;
    os_unfair_lock_unlock(v62);
    return v60;
  }

  return result;
}

uint64_t sub_22CFE1FF0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22CFE2EE0();
  }

  return result;
}

uint64_t sub_22CFE2048(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22CFE2324(v1);
  }

  return result;
}

uint64_t sub_22CFE20A8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 120);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + 120);
    }

    swift_unknownObjectRetain();
    sub_22D016B3C();
    sub_22D01640C();
    sub_22CF87454();
    result = sub_22D01689C();
    v6 = v21;
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v2;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_20:
      sub_22CEE57FC();

      sub_22CF460CC(v1 + 16);
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 32));
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 72));

      v19 = *(v1 + 120);

      return v1;
    }

    while (1)
    {
      sub_22D0163FC();

      v8 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_22D016BAC())
      {
        sub_22D01640C();
        swift_dynamicCast();
        v16 = v8;
        v17 = v9;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_20;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFE22CC()
{
  sub_22CFE20A8();

  return swift_deallocClassInstance();
}

uint64_t sub_22CFE2324(uint64_t a1)
{
  v126 = a1;
  v111 = type metadata accessor for ActivityParticipantEvent(0);
  v2 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111, v3);
  v110 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_22D01483C();
  v114 = *(v121 - 8);
  v5 = *(v114 + 64);
  MEMORY[0x28223BE20](v121, v6);
  v120 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for Activity();
  v123 = *(v118 - 8);
  v8 = *(v123 + 64);
  v10 = MEMORY[0x28223BE20](v118, v9);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v122 = &v101 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3850, &unk_22D019D30);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = (&v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18, v21);
  v23 = (&v101 - v22);
  v24 = sub_22D01495C();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v113 = sub_22D01486C();
  v102 = *(v113 - 8);
  v27 = *(v102 + 64);
  MEMORY[0x28223BE20](v113, v28);
  v115 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22D01659C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  v35 = (&v101 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = v1;
  v36 = v1[14];
  *v35 = v36;
  (*(v31 + 104))(v35, *MEMORY[0x277D85200], v30);
  v37 = v36;
  LOBYTE(v36) = sub_22D0165BC();
  (*(v31 + 8))(v35, v30);
  if ((v36 & 1) == 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v38 = v116;
    v39 = v116[3];

    sub_22CF7BDC4(v40);

    v41 = v38[7];
    v42 = v38[8];
    __swift_project_boxed_opaque_existential_1(v38 + 4, v41);
    v43 = (*(v42 + 8))(v41, v42);
    sub_22D01494C();
    sub_22D01485C();
    v45 = 0;
    v128 = 0;
    v46 = v43 + 64;
    v47 = 1 << *(v43 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & *(v43 + 64);
    v104 = (v47 + 63) >> 6;
    v119 = v114 + 16;
    v107 = (v102 + 16);
    v109 = v39;
    v106 = v39 + 24;
    v105 = (v114 + 8);
    *&v44 = 136446210;
    v103 = v44;
    v117 = v12;
    v127 = v23;
    v108 = v43;
    v124 = v43 + 64;
    v125 = v20;
    while (v49)
    {
      v61 = v45;
LABEL_18:
      v64 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
      v65 = v64 | (v61 << 6);
      v66 = (*(v43 + 48) + 16 * v65);
      v68 = *v66;
      v67 = v66[1];
      v69 = v122;
      sub_22CF0F9C8(*(v43 + 56) + *(v123 + 72) * v65, v122);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      v71 = *(v70 + 48);
      *v20 = v68;
      v20[1] = v67;
      sub_22CFA8FC0(v69, v20 + v71);
      (*(*(v70 - 8) + 56))(v20, 0, 1, v70);

      v23 = v127;
LABEL_19:
      sub_22CF82724(v20, v23);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      if ((*(*(v72 - 8) + 48))(v23, 1, v72) == 1)
      {
        (*(v102 + 8))(v115, v113);

        return swift_unknownObjectRelease();
      }

      v73 = *v23;
      v74 = v23[1];
      v75 = sub_22CFA8FC0(v23 + *(v72 + 48), v12);
      MEMORY[0x28223BE20](v75, v76);
      v99 = v12;
      v77 = v126;

      v78 = v77;
      v79 = v128;
      v80 = sub_22CF301D4(sub_22CFE3A6C, (&v101 - 4), v78);
      v128 = v79;
      v81 = *(v80 + 16);

      if (v81)
      {
        v82 = *&v12[*(v118 + 36)];
        if (*(v82 + 16))
        {
          v83 = *(v114 + 16);
          v83(v120, v82 + ((*(v114 + 80) + 32) & ~*(v114 + 80)), v121);
          if (qword_28143DAA0 != -1)
          {
            swift_once();
          }

          v84 = sub_22D01637C();
          __swift_project_value_buffer(v84, qword_281444308);

          v85 = sub_22D01636C();
          v86 = sub_22D01690C();

          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v129[0] = v88;
            *v87 = v103;
            *(v87 + 4) = sub_22CEEE31C(v73, v74, v129);
            _os_log_impl(&dword_22CEE1000, v85, v86, "Stopping uninstalled activity: %{public}s", v87, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v88);
            MEMORY[0x2318C6860](v88, -1, -1);
            MEMORY[0x2318C6860](v87, -1, -1);
          }

          v50 = v73;
          v52 = v110;
          v51 = v111;
          (*v107)(&v110[*(v111 + 24)], v115, v113);
          type metadata accessor for ActivityParticipantEvent.EventType(0);
          swift_storeEnumTagMultiPayload();
          v53 = v120;
          v54 = v121;
          v83(&v52[v51[7]], v120, v121);
          v55 = v51[9];
          v56 = sub_22D0146BC();
          (*(*(v56 - 8) + 56))(&v52[v55], 1, 1, v56);
          *v52 = v50;
          *(v52 + 1) = v74;
          *(v52 + 2) = 0;
          *(v52 + 3) = 0;
          v57 = &v52[v51[8]];
          *v57 = v116;
          *(v57 + 1) = &off_28402D340;
          v52[v51[10]] = 0;
          ObjectType = swift_getObjectType();
          v59 = v109;
          v60 = *(v109 + 24);

          v60(v52, ObjectType, v59);
          sub_22CF0A65C(v52, type metadata accessor for ActivityParticipantEvent);
          (*v105)(v53, v54);
          v12 = v117;
          v23 = v127;
          v43 = v108;
        }

        else
        {
          if (qword_28143DAA0 != -1)
          {
            swift_once();
          }

          v89 = sub_22D01637C();
          __swift_project_value_buffer(v89, qword_281444308);

          v90 = sub_22D01636C();
          v91 = sub_22D0168EC();

          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v129[0] = v93;
            *v92 = v103;
            v94 = sub_22CEEE31C(v73, v74, v129);

            *(v92 + 4) = v94;
            _os_log_impl(&dword_22CEE1000, v90, v91, "No content sources exist for uninstalled activity: %{public}s", v92, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v93);
            v95 = v93;
            v23 = v127;
            MEMORY[0x2318C6860](v95, -1, -1);
            v96 = v92;
            v12 = v117;
            MEMORY[0x2318C6860](v96, -1, -1);
          }

          else
          {
          }
        }
      }

      else
      {
      }

      sub_22CF0A65C(v12, type metadata accessor for Activity);
      v46 = v124;
      v20 = v125;
    }

    if (v104 <= v45 + 1)
    {
      v62 = v45 + 1;
    }

    else
    {
      v62 = v104;
    }

    v63 = v62 - 1;
    while (1)
    {
      v61 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v61 >= v104)
      {
        v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
        (*(*(v97 - 8) + 56))(v20, 1, 1, v97);
        v49 = 0;
        v45 = v63;
        goto LABEL_19;
      }

      v49 = *(v46 + 8 * v61);
      ++v45;
      if (v49)
      {
        v45 = v61;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_37:
  v100 = 0;
  v99 = 74;
  result = sub_22D016CFC();
  __break(1u);
  return result;
}

uint64_t sub_22CFE2EE0()
{
  v107 = type metadata accessor for ActivityParticipantEvent(0);
  v1 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107, v2);
  v106 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_22D01483C();
  v110 = *(v119 - 8);
  v4 = *(v110 + 64);
  MEMORY[0x28223BE20](v119, v5);
  v115 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Activity();
  v117 = *(v7 - 8);
  v8 = *(v117 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v112 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v116 = &v99 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3850, &unk_22D019D30);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v121 = (&v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17, v19);
  v122 = (&v99 - v20);
  v21 = sub_22D01495C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v109 = sub_22D01486C();
  v100 = *(v109 - 8);
  v24 = *(v100 + 64);
  MEMORY[0x28223BE20](v109, v25);
  v111 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22D01659C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v32 = (&v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = v0[14];
  *v32 = v33;
  (*(v28 + 104))(v32, *MEMORY[0x277D85200], v27);
  v34 = v33;
  v35 = sub_22D0165BC();
  (*(v28 + 8))(v32, v27);
  if ((v35 & 1) == 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v36 = v0[3];
    v37 = v0[7];
    v38 = v0[8];
    v123 = v0;
    __swift_project_boxed_opaque_existential_1(v0 + 4, v37);
    v39 = (*(v38 + 8))(v37, v38);
    sub_22D01494C();
    sub_22D01485C();
    v41 = 0;
    v43 = v39 + 64;
    v42 = *(v39 + 64);
    v118 = v39;
    v44 = 1 << *(v39 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & v42;
    v47 = (v44 + 63) >> 6;
    v114 = v110 + 16;
    v104 = (v100 + 16);
    v105 = v36;
    v103 = v36 + 24;
    v102 = (v110 + 8);
    *&v40 = 136446210;
    v101 = v40;
    v113 = v7;
    v48 = v112;
    v120 = v39 + 64;
    while (v46)
    {
      v49 = v41;
LABEL_18:
      v52 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v53 = v52 | (v49 << 6);
      v54 = (*(v118 + 48) + 16 * v53);
      v55 = *v54;
      v56 = v54[1];
      v57 = v116;
      sub_22CF0F9C8(*(v118 + 56) + *(v117 + 72) * v53, v116);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      v59 = *(v58 + 48);
      v60 = v121;
      *v121 = v55;
      v60[1] = v56;
      v61 = v60;
      sub_22CFA8FC0(v57, v60 + v59);
      (*(*(v58 - 8) + 56))(v61, 0, 1, v58);

LABEL_19:
      v62 = v61;
      v63 = v122;
      sub_22CF82724(v62, v122);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      if ((*(*(v64 - 8) + 48))(v63, 1, v64) == 1)
      {
        (*(v100 + 8))(v111, v109);

        return swift_unknownObjectRelease();
      }

      v66 = *v63;
      v65 = v63[1];
      sub_22CFA8FC0(v63 + *(v64 + 48), v48);
      v67 = __swift_project_boxed_opaque_existential_1(v123 + 9, v123[12]);
      v68 = v48 + *(v7 + 24);
      v69 = sub_22D014F9C();
      v70 = *v67;
      LOBYTE(v70) = sub_22CF04C80(v69, v71);

      if (v70)
      {
        v72 = *(v48 + *(v7 + 36));
        if (*(v72 + 16))
        {
          v73 = *(v110 + 16);
          v73(v115, v72 + ((*(v110 + 80) + 32) & ~*(v110 + 80)), v119);
          if (qword_28143DAA0 != -1)
          {
            swift_once();
          }

          v74 = sub_22D01637C();
          __swift_project_value_buffer(v74, qword_281444308);

          v75 = sub_22D01636C();
          v76 = sub_22D01690C();

          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v124[0] = v78;
            *v77 = v101;
            *(v77 + 4) = sub_22CEEE31C(v66, v65, v124);
            _os_log_impl(&dword_22CEE1000, v75, v76, "Stopping restricted activity: %{public}s", v77, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v78);
            MEMORY[0x2318C6860](v78, -1, -1);
            MEMORY[0x2318C6860](v77, -1, -1);
          }

          v79 = v66;
          v81 = v106;
          v80 = v107;
          (*v104)(&v106[*(v107 + 24)], v111, v109);
          type metadata accessor for ActivityParticipantEvent.EventType(0);
          swift_storeEnumTagMultiPayload();
          v82 = v115;
          v73(&v81[v80[7]], v115, v119);
          v83 = v80[9];
          v84 = sub_22D0146BC();
          (*(*(v84 - 8) + 56))(&v81[v83], 1, 1, v84);
          *v81 = v79;
          *(v81 + 1) = v65;
          *(v81 + 2) = 0;
          *(v81 + 3) = 0;
          v85 = &v81[v80[8]];
          *v85 = v123;
          *(v85 + 1) = &off_28402D340;
          v81[v80[10]] = 0;
          ObjectType = swift_getObjectType();
          v87 = v105;
          v88 = *(v105 + 24);

          v88(v81, ObjectType, v87);
          sub_22CF0A65C(v81, type metadata accessor for ActivityParticipantEvent);
          (*v102)(v82, v119);
          v48 = v112;
          v7 = v113;
        }

        else
        {
          if (qword_28143DAA0 != -1)
          {
            swift_once();
          }

          v91 = sub_22D01637C();
          __swift_project_value_buffer(v91, qword_281444308);

          v92 = sub_22D01636C();
          v93 = sub_22D0168EC();

          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v124[0] = v95;
            *v94 = v101;
            v96 = sub_22CEEE31C(v66, v65, v124);

            *(v94 + 4) = v96;
            _os_log_impl(&dword_22CEE1000, v92, v93, "No content sources exist for restricted activity: %{public}s", v94, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v95);
            v97 = v95;
            v48 = v112;
            MEMORY[0x2318C6860](v97, -1, -1);
            MEMORY[0x2318C6860](v94, -1, -1);
          }

          else
          {
          }

          v7 = v113;
        }
      }

      else
      {
      }

      sub_22CF0A65C(v48, type metadata accessor for Activity);
      v43 = v120;
    }

    if (v47 <= v41 + 1)
    {
      v50 = v41 + 1;
    }

    else
    {
      v50 = v47;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v49 >= v47)
      {
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
        v90 = v121;
        (*(*(v89 - 8) + 56))(v121, 1, 1, v89);
        v46 = 0;
        v41 = v51;
        v61 = v90;
        goto LABEL_19;
      }

      v46 = *(v43 + 8 * v49);
      ++v41;
      if (v46)
      {
        v41 = v49;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_37:
  result = sub_22D016CFC();
  __break(1u);
  return result;
}

uint64_t sub_22CFE3A28(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t Daemon.__allocating_init(workloop:)(NSObject *a1)
{
  v2 = swift_allocObject();
  Daemon.init(workloop:)(a1);
  return v2;
}

void *Daemon.init(workloop:)(NSObject *a1)
{
  v662 = sub_22D01637C();
  v661 = *(v662 - 1);
  v3 = *(v661 + 64);
  MEMORY[0x28223BE20](v662, v4);
  v646 = (&v593 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3670, &qword_22D01BF00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v641 = (&v593 - v9);
  v647 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3B58, &unk_22D01C630);
  v643 = *(v647 - 1);
  v10 = *(v643 + 64);
  MEMORY[0x28223BE20](v647, v11);
  v642 = &v593 - v12;
  v13 = sub_22D01697C();
  v639 = *(v13 - 8);
  v640 = v13;
  v14 = v639[8];
  MEMORY[0x28223BE20](v13, v15);
  v638 = &v593 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v636 = sub_22D01691C();
  v17 = *(*(v636 - 1) + 64);
  MEMORY[0x28223BE20](v636, v18);
  v637 = &v593 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22D01653C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v635 = &v593 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22D0151BC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v593 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StuckClientBugCapturer();
  swift_allocObject();
  v30 = sub_22CF8127C();
  v615 = v1;
  v1[12] = v30;
  sub_22CFF81AC(a1);
  type metadata accessor for WakingTaskScheduler();
  swift_allocObject();
  v31 = sub_22CFB25CC();
  type metadata accessor for NonwakingTaskScheduler();
  swift_allocObject();
  v32 = sub_22D0086B8();
  v33 = type metadata accessor for PreciseWakingTaskScheduler(0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  sub_22D01435C();
  v37 = (v36 + OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_lock_didFire);
  *v37 = 0;
  v37[1] = 0;
  v38 = OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B60, &qword_22D01C638);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v36 + v38) = v39;
  v672 = type metadata accessor for TaskScheduler();
  swift_allocObject();

  v673 = sub_22CFC08E8(v36, &off_28402ACF0, v31, &off_28402BA30, v32, &off_28402E9F8);
  v612 = v36;

  v614 = v31;

  v613 = v32;

  v40 = a1;
  v41 = sub_22CFF8680(a1);
  v42 = type metadata accessor for AlertServiceServer();
  v43 = objc_allocWithZone(v42);
  v677 = a1;
  v44 = sub_22CFA9AC0(a1);
  *&v680 = &off_28402B5F8;
  *(&v679 + 1) = v42;
  *&v678 = v44;
  type metadata accessor for AlertPresenter();
  v45 = swift_allocObject();
  v46 = __swift_mutable_project_boxed_opaque_existential_1(&v678, v42);
  v47 = *(*(v42 - 1) + 64);
  MEMORY[0x28223BE20](v46, v46);
  v49 = (&v593 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49);
  v51 = *v49;
  v610 = v44;
  v52 = sub_22CFEB948(v51, v45);
  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  sub_22CFF8F4C(&unk_2814436A8, type metadata accessor for AlertPresenter);

  sub_22D0151AC();
  sub_22D01528C();
  *(&v679 + 1) = v24;
  *&v680 = MEMORY[0x277D4D400];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v678);
  (*(v25 + 16))(boxed_opaque_existential_1, v29, v24);
  v697 = sub_22D0156CC();
  v698 = MEMORY[0x277D4D6E8];
  *&v696 = v41;

  v611 = v41;
  v54 = v40;

  v55 = sub_22D01527C();
  (*(v25 + 8))(v29, v24);
  v609 = v52;

  type metadata accessor for AlertParticipant();
  v56 = swift_allocObject();
  v670 = type metadata accessor for UnfairLock();
  v57 = swift_allocObject();

  v58 = swift_slowAlloc();
  *(v57 + 16) = v58;
  *v58 = 0;
  v56[4] = v57;
  v59 = MEMORY[0x277D4D428];
  v608 = v55;
  v56[2] = v55;
  v56[3] = v59;
  v671 = v56;
  type metadata accessor for ActivityManager();
  swift_allocObject();
  v644 = sub_22CFCC674();
  v60 = type metadata accessor for StateCaptureService();
  swift_allocObject();
  v61 = sub_22CF68374();
  *&v680 = &off_284029BB0;
  *(&v679 + 1) = v60;
  *&v678 = v61;
  v62 = objc_allocWithZone(type metadata accessor for StateCaptureServiceServer());
  v63 = *(&v679 + 1);
  v64 = __swift_mutable_project_boxed_opaque_existential_1(&v678, *(&v679 + 1));
  v65 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v64, v64);
  v67 = (&v593 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v68 + 16))(v67);
  v69 = *v67;
  v70 = v677;
  v607 = v61;

  v606 = sub_22CFEAC30(v69, v40, v62);
  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  v669 = type metadata accessor for PersistentActivityStore();
  swift_allocObject();
  v71 = v70;
  v72 = sub_22CFD93D8(v71);
  type metadata accessor for PersistentAssertionStore();
  swift_allocObject();
  v73 = v71;
  v74 = sub_22CFA68C4(v73);
  LaunchDetector = type metadata accessor for FirstLaunchDetector();
  v76 = swift_allocObject();
  v77 = qword_281441818;

  if (v77 != -1)
  {
    swift_once();
  }

  *&v680 = &off_28402BEB0;
  *(&v679 + 1) = LaunchDetector;
  *&v678 = v76;
  v78 = type metadata accessor for AssertionManager();
  v79 = swift_allocObject();
  v80 = __swift_mutable_project_boxed_opaque_existential_1(&v678, LaunchDetector);
  v81 = *(*(LaunchDetector - 8) + 64);
  MEMORY[0x28223BE20](v80, v80);
  v83 = (&v593 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v84 + 16))(v83);
  v85 = *v83;
  v86 = v73;
  v87 = sub_22CFF8844(v54, v74, v72, v85, v79);
  v675 = v72;
  v88 = v87;

  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  *&v680 = &off_284029D68;
  *(&v679 + 1) = v78;
  *&v678 = v88;
  v89 = objc_allocWithZone(type metadata accessor for AssertionServiceServer());
  v90 = *(&v679 + 1);
  v91 = __swift_mutable_project_boxed_opaque_existential_1(&v678, *(&v679 + 1));
  v92 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v91, v91);
  v94 = (&v593 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v95 + 16))(v94);
  v96 = *v94;
  v97 = v86;

  v605 = sub_22CFEBA70(v54, v96, v89);
  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  *&v680 = &off_284029D50;
  *(&v679 + 1) = v78;
  *&v678 = v88;
  v98 = objc_allocWithZone(type metadata accessor for PresentationObservationServiceServer());
  v99 = *(&v679 + 1);
  v100 = __swift_mutable_project_boxed_opaque_existential_1(&v678, *(&v679 + 1));
  v101 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v100, v100);
  v103 = (&v593 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v104 + 16))(v103);
  v105 = *v103;
  v106 = v97;

  v604 = sub_22CFEA4F8(v54, v105, v98);
  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  *&v680 = &off_284029D40;
  v668 = v78;
  *(&v679 + 1) = v78;
  *&v678 = v88;
  v107 = objc_allocWithZone(type metadata accessor for ProminenceObservationServiceServer());
  v108 = *(&v679 + 1);
  v109 = __swift_mutable_project_boxed_opaque_existential_1(&v678, *(&v679 + 1));
  v110 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v109, v109);
  v112 = (&v593 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v113 + 16))(v112);
  v114 = *v112;
  v115 = v106;

  v116 = v54;
  v674 = v54;
  v603 = sub_22CFE9F80(v54, v114, v107);
  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  v117 = type metadata accessor for LockStateObserver();
  swift_allocObject();
  v118 = sub_22CF659BC();
  *&v680 = &off_284029998;
  *(&v679 + 1) = v117;
  *&v678 = v118;
  type metadata accessor for QoSManager();
  v119 = swift_allocObject();
  v120 = __swift_mutable_project_boxed_opaque_existential_1(&v678, v117);
  v121 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v120, v120);
  v657 = v122;
  v123 = (&v593 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = *(v124 + 16);
  v659 = v117;
  v658 = (v124 + 16);
  v656 = v125;
  v125(v123);
  v126 = *v123;
  v127 = v115;

  v666 = v118;

  v128 = sub_22CFF5EE8(v88, v126, v127, v119);
  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  v129 = objc_allocWithZone(type metadata accessor for QoSObservationServiceServer());
  v130 = v127;

  v665 = v128;
  v602 = sub_22CFF598C(v116, v128, v129);
  v131 = type metadata accessor for KnownClientStore();
  swift_allocObject();
  v132 = sub_22CFCBE2C(1);
  *&v680 = &off_28402C270;
  *(&v679 + 1) = v131;
  *&v678 = v132;
  v133 = type metadata accessor for AppEventObserver();
  v134 = objc_allocWithZone(v133);
  v135 = *(&v679 + 1);
  v136 = __swift_mutable_project_boxed_opaque_existential_1(&v678, *(&v679 + 1));
  v137 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v136, v136);
  v139 = (&v593 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v140 + 16))(v139);
  v141 = *v139;

  v142 = sub_22CFEB050(v141, v134);
  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  *&v680 = &off_28402BFA0;
  *(&v679 + 1) = v133;
  *&v678 = v142;
  v667 = type metadata accessor for AuthorizationManager();
  v143 = swift_allocObject();
  v144 = __swift_mutable_project_boxed_opaque_existential_1(&v678, v133);
  v145 = *(*(v133 - 1) + 64);
  MEMORY[0x28223BE20](v144, v144);
  v147 = (&v593 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0));
  v149 = *(v148 + 16);
  v663 = v133;
  v654 = v149;
  v655 = v146;
  v660 = (v148 + 16);
  v149(v147);
  v150 = *v147;
  v650 = v142;
  v151 = sub_22CFE9870(v150, v143);
  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  v152 = objc_allocWithZone(type metadata accessor for AuthorizationServer());
  v153 = v130;

  v154 = v674;
  v677 = v151;
  v601 = sub_22D00DE80(v674, v151);
  type metadata accessor for ProcessMonitor();
  v155 = swift_allocObject();
  v156 = MEMORY[0x277D84FA0];
  v155[2] = 0;
  v155[3] = v156;
  v157 = MEMORY[0x277D84F98];
  v155[4] = MEMORY[0x277D84F98];
  v155[5] = v157;
  v158 = swift_allocObject();
  v159 = swift_slowAlloc();
  *(v158 + 16) = v159;
  *v159 = 0;
  v155[6] = v158;
  *&v680 = &off_28402C270;
  *(&v679 + 1) = v131;
  *&v678 = v132;
  type metadata accessor for ProcessManager();
  v160 = swift_allocObject();
  v161 = __swift_mutable_project_boxed_opaque_existential_1(&v678, v131);
  v162 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v161, v161);
  v164 = (&v593 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0));
  v166 = *(v165 + 16);
  v664 = v131;
  v166(v164);
  v167 = *v164;

  v645 = v155;
  v169 = sub_22CFF56A8(v168, v167, v160);
  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  v649 = v153;

  v652 = v169;
  v653 = v132;
  v632 = sub_22CFEC1A8(v170, v132, v154, 1);
  if (qword_281442150 != -1)
  {
    swift_once();
  }

  v676 = v88;
  if (qword_2814444F8)
  {
    v171 = type metadata accessor for PushBudgetStore();
    swift_allocObject();
    v172 = swift_retain_n();
    v173 = sub_22D00CFB0(v172);
    v174 = sub_22D015F8C();
    *(&v679 + 1) = v171;
    *&v680 = sub_22CFF8F4C(&unk_28143F348, type metadata accessor for PushBudgetStore);
    *&v678 = v173;

    v651 = v174;
    v175 = sub_22D015F7C();
  }

  else
  {
    v176 = sub_22D015F8C();
    *&v680 = 0;
    v678 = 0u;
    v679 = 0u;
    v651 = v176;
    v175 = sub_22D015F7C();
  }

  v177 = v677;
  v178 = v667;
  v648 = sub_22D0160DC();

  v179 = sub_22D0160CC();
  *(&v679 + 1) = v178;
  *&v680 = sub_22CFF8F4C(&unk_28143EAD0, type metadata accessor for AuthorizationManager);
  *&v678 = v177;

  sub_22D0160BC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  v180 = sub_22D01611C();
  *(&v679 + 1) = v672;
  v633 = sub_22CFF8F4C(&qword_28143F548, type metadata accessor for TaskScheduler);
  *&v680 = v633;
  v181 = v673;
  *&v678 = v673;

  v182 = sub_22D01610C();
  v183 = sub_22D0160FC();
  v184 = sub_22D0160EC();
  v185 = sub_22D01618C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3B68, &unk_22D01C640);
  v186 = swift_allocObject();
  *(v186 + 16) = xmmword_22D0189F0;
  v187 = MEMORY[0x277D4D640];
  *(v186 + 56) = v180;
  *(v186 + 64) = v187;
  *(v186 + 32) = v182;
  v188 = MEMORY[0x277D4D638];
  *(v186 + 96) = v183;
  *(v186 + 104) = v188;
  *(v186 + 72) = v184;
  v598 = v182;

  v597 = v184;

  v189 = sub_22D01617C();
  *&v680 = MEMORY[0x277D4D658];
  *(&v679 + 1) = v185;
  *&v678 = v189;
  v596 = v189;

  sub_22D0160BC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  *&v680 = &off_284029998;
  v190 = v659;
  *(&v679 + 1) = v659;
  *&v678 = v666;
  v191 = type metadata accessor for PushBudgetEnforcementPolicyProvider();
  v192 = swift_allocObject();
  v193 = __swift_mutable_project_boxed_opaque_existential_1(&v678, v190);
  MEMORY[0x28223BE20](v193, v193);
  v634 = (v194 + 15) & 0xFFFFFFFFFFFFFFF0;
  v195 = (&v593 - v634);
  v656(&v593 - v634);
  v196 = *v195;

  v197 = sub_22CFEBEDC(v196, v192);
  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  v198 = sub_22D015FFC();
  sub_22D015F8C();
  *&v680 = MEMORY[0x277D4D610];
  *(&v679 + 1) = v651;
  v600 = v175;
  *&v678 = v175;
  v697 = v648;
  v698 = MEMORY[0x277D4D630];
  *&v696 = v179;
  v694 = v191;
  v695 = sub_22CFF8F4C(&unk_281440200, type metadata accessor for PushBudgetEnforcementPolicyProvider);
  v692 = v633;
  *&v693 = v197;
  v691 = v672;
  v690[0] = v181;

  v599 = v179;

  v595 = v197;

  v633 = v198;
  v199 = sub_22D015FEC();

  v200 = v649;
  v651 = v199;
  v201 = sub_22CFEC38C(v649);

  v672 = v200;
  v202 = v675;

  v203 = v653;

  v204 = v652;

  v205 = v201;
  v594 = sub_22CFEC594(v205, v204, v202, v203, v677, v674);
  *&v680 = &off_28402CB48;
  *(&v679 + 1) = v669;
  *&v678 = v202;
  LOBYTE(v204) = *(v202 + 40) != 0;
  v697 = v664;
  v698 = &off_28402C270;
  *&v696 = v203;
  v206 = v663;
  v694 = v663;
  v695 = &off_28402BFA0;
  v207 = v650;
  *&v693 = v650;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B70, &qword_22D01C648);
  v209 = swift_allocObject();
  v210 = v676;
  *(v209 + 16) = 4096;
  *(v209 + 24) = v210;
  sub_22CEF44D4(&v678, v209 + 32);
  v631 = xmmword_22D01C620;
  *(v209 + 72) = xmmword_22D01C620;
  *(v209 + 88) = v204;
  *(v209 + 96) = v677;
  sub_22CEF44D4(&v696, v209 + 104);
  sub_22CEF44D4(&v693, v209 + 144);
  v211 = v203;
  swift_retain_n();
  v628 = v672;

  v212 = v207;
  v649 = v212;

  v213 = v205;
  v650 = v213;

  v672 = sub_22CFECC9C(v214, v203, v674, v213);
  *&v680 = &off_28402E878;
  *(&v679 + 1) = v208;
  *&v678 = v209;
  started = type metadata accessor for PushToStartAppBundleIDProvider();
  v216 = swift_allocObject();
  sub_22CEF44D4(&v678, v216 + 16);
  *&v680 = &off_28402BFA0;
  *(&v679 + 1) = v206;
  *&v678 = v212;
  v697 = started;
  v698 = &off_28402D240;
  *&v696 = v216;
  v694 = v667;
  v695 = &off_284029420;
  *&v693 = v677;
  v691 = v664;
  v692 = &off_28402C270;
  v690[0] = v211;
  type metadata accessor for PushToStartManager();
  v648 = swift_allocObject();
  v217 = __swift_mutable_project_boxed_opaque_existential_1(&v678, v206);
  v664 = &v593;
  MEMORY[0x28223BE20](v217, v217);
  v629 = (v218 + 15) & 0xFFFFFFFFFFFFFFF0;
  v219 = (&v593 - v629);
  (v654)(&v593 - v629);
  v220 = v697;
  v221 = __swift_mutable_project_boxed_opaque_existential_1(&v696, v697);
  v630 = &v593;
  v222 = *(*(v220 - 1) + 64);
  MEMORY[0x28223BE20](v221, v221);
  v224 = (&v593 - ((v223 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v225 + 16))(v224);
  v226 = v694;
  v227 = __swift_mutable_project_boxed_opaque_existential_1(&v693, v694);
  v228 = *(*(v226 - 8) + 64);
  MEMORY[0x28223BE20](v227, v227);
  v230 = (&v593 - ((v229 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v231 + 16))(v230);
  v232 = v691;
  v233 = __swift_mutable_project_boxed_opaque_existential_1(v690, v691);
  v234 = *(*(v232 - 1) + 64);
  MEMORY[0x28223BE20](v233, v233);
  v236 = (&v593 - ((v235 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v237 + 16))(v236);
  v238 = *v219;
  v239 = *v224;
  v240 = *v230;
  v241 = *v236;

  v627 = v649;

  v242 = v650;
  v626 = v242;
  v650 = v209;

  v593 = sub_22CFF46F0(v238, v242, v239, v240, v241, v648);
  __swift_destroy_boxed_opaque_existential_1Tm(v690);
  __swift_destroy_boxed_opaque_existential_1Tm(&v693);
  __swift_destroy_boxed_opaque_existential_1Tm(&v696);
  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  v630 = type metadata accessor for PowerLogger();
  swift_allocObject();
  v649 = sub_22CF8A84C();
  *&v680 = &off_28402CB48;
  *(&v679 + 1) = v669;
  *&v678 = v675;
  type metadata accessor for PersistentParticipant();
  v243 = swift_allocObject();
  *(v243 + 24) = 0;
  swift_unknownObjectWeakInit();
  v244 = swift_allocObject();

  v245 = swift_slowAlloc();
  *(v244 + 16) = v245;
  *v245 = 0;
  *(v243 + 72) = v244;
  v664 = v243;
  sub_22CEF44D4(&v678, v243 + 32);
  v246 = type metadata accessor for XPCInputBudgetManager();
  swift_allocObject();
  v247 = v676;

  v248 = v672;
  sub_22CFFFA0C(0, 1, 0);
  v250 = v249;
  v251 = type metadata accessor for InputServer();
  *&v680 = &off_28402DC90;
  *(&v679 + 1) = v251;
  v648 = v248;
  *&v678 = v248;
  v252 = v668;
  v697 = v668;
  v698 = &off_284029D28;
  *&v696 = v247;
  v694 = v246;
  v695 = &off_28402E6C0;
  *&v693 = v250;
  v691 = v668;
  v692 = &off_284029D50;
  v690[0] = v247;
  type metadata accessor for XPCInputParticipant();
  v672 = swift_allocObject();
  v253 = __swift_mutable_project_boxed_opaque_existential_1(&v678, v251);
  v625 = &v593;
  v254 = *(*(v251 - 8) + 64);
  MEMORY[0x28223BE20](v253, v253);
  v256 = (&v593 - ((v255 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v257 + 16))(v256);
  v258 = v697;
  v259 = __swift_mutable_project_boxed_opaque_existential_1(&v696, v697);
  v624 = &v593;
  v260 = *(*(v258 - 1) + 64);
  MEMORY[0x28223BE20](v259, v259);
  v262 = (&v593 - ((v261 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v263 + 16))(v262);
  v264 = v694;
  v265 = __swift_mutable_project_boxed_opaque_existential_1(&v693, v694);
  v623 = &v593;
  v266 = *(*(v264 - 8) + 64);
  MEMORY[0x28223BE20](v265, v265);
  v268 = (&v593 - ((v267 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v269 + 16))(v268);
  v270 = v691;
  v271 = __swift_mutable_project_boxed_opaque_existential_1(v690, v691);
  v622 = &v593;
  v272 = *(*(v270 - 1) + 64);
  MEMORY[0x28223BE20](v271, v271);
  v274 = (&v593 - ((v273 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v275 + 16))(v274);
  v276 = *v256;
  v277 = *v262;
  v278 = *v268;
  v279 = *v274;
  v689[4] = &off_28402DC90;
  v689[3] = v251;
  v689[0] = v276;
  v688[4] = &off_284029D28;
  v688[3] = v252;
  v688[0] = v277;
  v687[4] = &off_28402E6C0;
  v687[3] = v246;
  v687[0] = v278;
  v686 = &off_284029D50;
  v685 = v252;
  v684[0] = v279;
  v280 = sub_22CEEC38C();
  v620 = "ant has no ActivityManager";

  sub_22D0164EC();
  v682 = MEMORY[0x277D84F90];
  v618 = sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230]);
  v617 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  v619 = sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  v616 = *MEMORY[0x277D85260];
  v281 = v638;
  v639 = v639[13];
  v282 = v640;
  (v639)(v638);
  v621 = v280;
  v283 = sub_22D0169BC();
  v284 = v672;
  v672[2] = v283;
  v620 = "nCore.XPCInputParticipant";
  sub_22D0164EC();
  v682 = MEMORY[0x277D84F90];
  sub_22D016ADC();
  (v639)(v281, v616, v282);
  v284[3] = sub_22D0169BC();
  v285 = MEMORY[0x277D84F90];
  v284[15] = sub_22CFF7114(MEMORY[0x277D84F90]);
  v284[16] = sub_22CFF72FC(v285);
  v284[17] = sub_22CFF74E4(v285);
  v286 = MEMORY[0x277D84FA0];
  v284[18] = MEMORY[0x277D84FA0];
  sub_22D014EBC();
  v284[19] = sub_22D014EAC();
  v284[25] = v286;
  v640 = v284 + 25;
  v284[27] = 0;
  swift_unknownObjectWeakInit();
  sub_22CEE3A84(v689, (v284 + 4));
  v287 = v677;
  v284[9] = v677;
  sub_22CEE3A84(v688, (v284 + 28));
  sub_22CEE3A84(v684, (v284 + 10));
  sub_22CEE3A84(v687, (v284 + 20));
  __swift_project_boxed_opaque_existential_1(v684, v685);
  v288 = off_284029D58;

  v682 = v288();
  v683 = v284[2];
  v289 = v683;
  v290 = sub_22D01693C();
  v291 = v641;
  (*(*(v290 - 8) + 56))(v641, 1, 1, v290);
  v292 = v289;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B78, &qword_22D01C650);
  sub_22CEE8394(&qword_28143FAB0, &qword_27D9F3B78, &qword_22D01C650);
  sub_22CFF8F4C(&qword_28143FA10, sub_22CEEC38C);
  v293 = v642;
  sub_22D01647C();
  sub_22CEEC3D8(v291, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_weakInit();
  sub_22CEE8394(&unk_28143DA18, &unk_27D9F3B58, &unk_22D01C630);
  v294 = v647;
  sub_22D0164AC();

  (*(v643 + 8))(v293, v294);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v687);
  __swift_destroy_boxed_opaque_existential_1Tm(v688);
  __swift_destroy_boxed_opaque_existential_1Tm(v689);
  __swift_destroy_boxed_opaque_existential_1Tm(v684);
  __swift_destroy_boxed_opaque_existential_1Tm(v690);
  __swift_destroy_boxed_opaque_existential_1Tm(&v693);
  __swift_destroy_boxed_opaque_existential_1Tm(&v696);
  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  v295 = objc_allocWithZone(type metadata accessor for PushFrequentUpdatesObservationServer());
  v639 = v628;

  v296 = v626;
  v638 = sub_22CFDA090(v296, v287, v674);
  v297 = type metadata accessor for XPCOutputParticipant();
  v298 = *(v297 + 48);
  v299 = *(v297 + 52);
  v300 = swift_allocObject();
  v301 = v632;
  *(v300 + 16) = v632;
  v302 = qword_28143FB58;
  v303 = v301;
  if (v302 != -1)
  {
    swift_once();
  }

  v304 = v662;
  v305 = __swift_project_value_buffer(v662, qword_281444498);
  (*(v661 + 16))(v646, v305, v304);
  v647 = v300;
  sub_22D01631C();
  v637 = v303;

  type metadata accessor for DismissParticipant();
  v306 = swift_allocObject();

  v662 = sub_22CFF43DC(v307, v306);
  type metadata accessor for DurationEnforcerParticipant();
  v308 = swift_allocObject();

  v661 = sub_22CFF40BC(v309, v308, 28800.0);
  *&v680 = &off_28402BFA0;
  v310 = v663;
  *(&v679 + 1) = v663;
  v311 = v627;
  *&v678 = v627;
  type metadata accessor for AppEventParticipant();
  v312 = swift_allocObject();
  v313 = __swift_mutable_project_boxed_opaque_existential_1(&v678, v310);
  MEMORY[0x28223BE20](v313, v313);
  v314 = (&v593 - v629);
  (v654)(&v593 - v629);
  v315 = *v314;
  v316 = v675;

  v636 = v311;
  v655 = sub_22CFF36C8(v315, v316, v312);
  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  *&v680 = &off_284029420;
  v317 = v667;
  *(&v679 + 1) = v667;
  *&v678 = v287;
  type metadata accessor for PushParticipant();
  v318 = swift_allocObject();
  v319 = __swift_mutable_project_boxed_opaque_existential_1(&v678, v317);
  v642 = *(*(v317 - 8) + 64);
  MEMORY[0x28223BE20](v319, v319);
  v643 = (v320 + 15) & 0xFFFFFFFFFFFFFFF0;
  v321 = (&v593 - v643);
  v323 = *(v322 + 16);
  v640 = (v322 + 16);
  v641 = v323;
  v323(&v593 - v643);
  v324 = *v321;
  v325 = v665;

  v326 = v296;
  v654 = v326;
  v327 = v650;

  v328 = v651;

  v663 = sub_22CFF2D14(v326, v328, v325, v324, v327, v318);
  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  type metadata accessor for KeepAliveParticipant();
  v329 = swift_allocObject();
  v330 = swift_allocObject();
  v331 = swift_slowAlloc();
  *(v330 + 16) = v331;
  *v331 = 0;
  v329[2] = v330;
  v329[3] = MEMORY[0x277D84FA0];
  v329[4] = 0;
  v329[6] = 0;
  v660 = v329;
  swift_unknownObjectWeakInit();
  *&v680 = &off_284029D68;
  v332 = v668;
  *(&v679 + 1) = v668;
  *&v678 = v676;
  type metadata accessor for AssertionParticipant();
  v333 = swift_allocObject();
  v334 = __swift_mutable_project_boxed_opaque_existential_1(&v678, v332);
  v335 = *(*(v332 - 8) + 64);
  MEMORY[0x28223BE20](v334, v334);
  v337 = (&v593 - ((v336 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v338 + 16))(v337);
  v339 = *v337;
  v333[5] = v332;
  v333[6] = &off_284029D68;
  v668 = v333;
  v333[2] = v339;

  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  type metadata accessor for CountEnforcerParticipant();
  v340 = swift_allocObject();
  *&v680 = &off_28402CB48;
  *(&v679 + 1) = v669;
  *&v678 = v675;
  *(v340 + 24) = 0;
  swift_unknownObjectWeakInit();
  v341 = swift_allocObject();

  v342 = swift_slowAlloc();
  *(v341 + 16) = v342;
  *v342 = 0;
  *(v340 + 88) = v341;
  sub_22CEF44D4(&v678, v340 + 32);
  v670 = v340;
  *(v340 + 72) = v631;
  *&v680 = &off_28402AF20;
  v343 = v630;
  *(&v679 + 1) = v630;
  *&v678 = v649;
  v697 = sub_22D015EDC();
  v698 = MEMORY[0x277D4D608];
  v344 = v654;
  *&v696 = v654;
  v694 = v633;
  v695 = MEMORY[0x277D4D628];
  *&v693 = v328;
  type metadata accessor for PowerLogParticipant();
  v345 = swift_allocObject();
  v346 = __swift_mutable_project_boxed_opaque_existential_1(&v678, v343);
  v347 = *(*(v343 - 8) + 64);
  MEMORY[0x28223BE20](v346, v346);
  v349 = (&v593 - ((v348 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v350 + 16))(v349);
  v351 = *v349;
  v345[5] = v343;
  v345[6] = &off_28402AF20;
  v345[2] = v351;
  sub_22CEF44D4(&v696, (v345 + 7));
  v669 = v345;
  sub_22CEF44D4(&v693, (v345 + 12));
  v635 = v344;

  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  *&v680 = &off_284029420;
  *(&v679 + 1) = v317;
  v352 = v677;
  *&v678 = v677;
  type metadata accessor for AuthorizationParticipant();
  v353 = swift_allocObject();
  v354 = __swift_mutable_project_boxed_opaque_existential_1(&v678, v317);
  MEMORY[0x28223BE20](v354, v354);
  v355 = v643;
  v356 = v641;
  v641(&v593 - v643);
  v357 = *(&v593 - v355);

  v654 = sub_22CFEAA74(v357, v353, sub_22CF46328);
  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  type metadata accessor for StaleParticipant();
  v358 = swift_allocObject();

  v646 = sub_22CFF29E0(v359, 0, 1, v358);
  *&v680 = &off_284029420;
  *(&v679 + 1) = v317;
  *&v678 = v352;
  type metadata accessor for FrequentPushParticipant();
  v360 = swift_allocObject();
  v361 = __swift_mutable_project_boxed_opaque_existential_1(&v678, v317);
  MEMORY[0x28223BE20](v361, v361);
  v362 = (&v593 - v355);
  v356(v362);
  v363 = *v362;

  v667 = sub_22CFEAA74(v363, v360, sub_22CF463EC);
  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  *&v680 = &off_284029998;
  v364 = v659;
  *(&v679 + 1) = v659;
  *&v678 = v666;
  type metadata accessor for MomentaryParticipant();
  v365 = swift_allocObject();
  v366 = __swift_mutable_project_boxed_opaque_existential_1(&v678, v364);
  MEMORY[0x28223BE20](v366, v366);
  v367 = (&v593 - v634);
  v656(&v593 - v634);
  v368 = *v367;

  v659 = sub_22CFEB290(v368, v365);
  __swift_destroy_boxed_opaque_existential_1Tm(&v678);
  type metadata accessor for DelayedStartParticipant();
  v369 = swift_allocObject();

  v658 = sub_22CFF43DC(v370, v369);
  v680 = 0u;
  v681 = 0u;
  v678 = 0u;
  v679 = 0u;
  v371 = type metadata accessor for ActivityPreferenceReplicationFilter();
  v372 = objc_allocWithZone(v371);
  v373 = v675;

  v374 = [v372 init];
  v697 = v371;
  v698 = &off_28402A550;
  *&v696 = v374;
  type metadata accessor for ReplicatorParticipant();
  v375 = swift_allocObject();
  v376 = sub_22CFF22E8(v373, &v678, &v696, v375);
  v377 = objc_allocWithZone(type metadata accessor for ActivityRemoteSubscriptionPreferencesObservationServer());
  v378 = swift_retain_n();
  v657 = v376;
  v656 = sub_22CFDEB60(v378, v674);
  *(v648 + OBJC_IVAR____TtC11SessionCore11InputServer_delegate + 8) = &off_28402A2D8;
  swift_unknownObjectWeakAssign();
  v379 = v664;
  v380 = *v664;
  v674 = &protocol descriptor for ActivityManagerInput;
  result = swift_conformsToProtocol2();
  v382 = v644;
  if (!result)
  {
    __break(1u);
    goto LABEL_83;
  }

  v383 = result;
  ObjectType = swift_getObjectType();
  v385 = v383[3];
  swift_retain_n();

  v385(v386, &off_28402C2E0, ObjectType, v383);

  v387 = *(v382 + 40);
  v388 = swift_allocObject();
  v388[2] = v379;
  v388[3] = &off_28402E608;
  v388[4] = v382;
  v389 = swift_allocObject();
  *(v389 + 16) = sub_22CFF8D0C;
  *(v389 + 24) = v388;
  *&v680 = sub_22CEF3C50;
  *(&v680 + 1) = v389;
  *&v678 = MEMORY[0x277D85DD0];
  *(&v678 + 1) = 1107296256;
  *&v679 = sub_22CEF3C20;
  *(&v679 + 1) = &block_descriptor_29;
  v390 = _Block_copy(&v678);

  dispatch_sync(v387, v390);
  _Block_release(v390);
  LOBYTE(v387) = swift_isEscapingClosureAtFileLocation();

  if (v387)
  {
    __break(1u);
    goto LABEL_63;
  }

  v359 = v672;
  v391 = *v672;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v392 = result;
  v393 = swift_getObjectType();
  v394 = v392[3];

  v394(v382, &off_28402C2E0, v393, v392);
  v395 = *(v382 + 40);
  v396 = swift_allocObject();
  v396[2] = v359;
  v396[3] = &off_28402A2D0;
  v396[4] = v382;
  v397 = swift_allocObject();
  *(v397 + 16) = sub_22CFF9090;
  *(v397 + 24) = v396;
  *&v680 = sub_22CFF9014;
  *(&v680 + 1) = v397;
  *&v678 = MEMORY[0x277D85DD0];
  *(&v678 + 1) = 1107296256;
  *&v679 = sub_22CEF3C20;
  *(&v679 + 1) = &block_descriptor_17;
  v398 = _Block_copy(&v678);

  dispatch_sync(v395, v398);
  _Block_release(v398);
  LOBYTE(v395) = swift_isEscapingClosureAtFileLocation();

  if (v395)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v379 = v676;
  v399 = *v676;
  v359 = v674;
  v400 = swift_conformsToProtocol2();
  if (v400)
  {
    v401 = v400;
    v402 = swift_getObjectType();
    v403 = *(v401 + 24);
    swift_retain_n();

    v403(v404, &off_28402C2E0, v402, v401);
  }

  else
  {
  }

  v405 = *(v382 + 40);
  v406 = swift_allocObject();
  v406[2] = v379;
  v406[3] = &off_284029D20;
  v406[4] = v382;
  v407 = swift_allocObject();
  *(v407 + 16) = sub_22CFF9090;
  *(v407 + 24) = v406;
  *&v680 = sub_22CFF9014;
  *(&v680 + 1) = v407;
  *&v678 = MEMORY[0x277D85DD0];
  *(&v678 + 1) = 1107296256;
  *&v679 = sub_22CEF3C20;
  *(&v679 + 1) = &block_descriptor_28_0;
  v408 = _Block_copy(&v678);

  dispatch_sync(v405, v408);
  _Block_release(v408);
  LOBYTE(v405) = swift_isEscapingClosureAtFileLocation();

  if (v405)
  {
    goto LABEL_64;
  }

  v379 = v647;
  v409 = *v647;
  v410 = swift_conformsToProtocol2();
  if (v410)
  {
    v411 = v410;
    v412 = swift_getObjectType();
    v413 = *(v411 + 24);

    v413(v382, &off_28402C2E0, v412, v411);
  }

  else
  {
  }

  v414 = *(v382 + 40);
  v415 = swift_allocObject();
  v415[2] = v379;
  v415[3] = &off_28402E628;
  v415[4] = v382;
  v416 = swift_allocObject();
  *(v416 + 16) = sub_22CFF9090;
  *(v416 + 24) = v415;
  *&v680 = sub_22CFF9014;
  *(&v680 + 1) = v416;
  *&v678 = MEMORY[0x277D85DD0];
  *(&v678 + 1) = 1107296256;
  *&v679 = sub_22CEF3C20;
  *(&v679 + 1) = &block_descriptor_39;
  v417 = _Block_copy(&v678);

  dispatch_sync(v414, v417);
  _Block_release(v417);
  LOBYTE(v414) = swift_isEscapingClosureAtFileLocation();

  if (v414)
  {
    goto LABEL_65;
  }

  v418 = v663;
  v419 = *v663;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v420 = result;
  v421 = swift_getObjectType();
  v422 = v420[3];

  v422(v382, &off_28402C2E0, v421, v420);
  v423 = *(v382 + 40);
  v424 = swift_allocObject();
  v424[2] = v418;
  v424[3] = &off_28402B9D8;
  v424[4] = v382;
  v425 = swift_allocObject();
  *(v425 + 16) = sub_22CFF9090;
  *(v425 + 24) = v424;
  *&v680 = sub_22CFF9014;
  *(&v680 + 1) = v425;
  *&v678 = MEMORY[0x277D85DD0];
  *(&v678 + 1) = 1107296256;
  *&v679 = sub_22CEF3C20;
  *(&v679 + 1) = &block_descriptor_50_0;
  v426 = _Block_copy(&v678);

  dispatch_sync(v423, v426);
  _Block_release(v426);
  LOBYTE(v423) = swift_isEscapingClosureAtFileLocation();

  v379 = v662;
  if (v423)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v427 = *v662;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v428 = result;
  v429 = swift_getObjectType();
  v430 = v428[3];

  v430(v382, &off_28402C2E0, v429, v428);
  v431 = *(v382 + 40);
  v432 = swift_allocObject();
  v432[2] = v379;
  v432[3] = &off_28402BDB0;
  v432[4] = v382;
  v433 = swift_allocObject();
  *(v433 + 16) = sub_22CFF9090;
  *(v433 + 24) = v432;
  *&v680 = sub_22CFF9014;
  *(&v680 + 1) = v433;
  *&v678 = MEMORY[0x277D85DD0];
  *(&v678 + 1) = 1107296256;
  *&v679 = sub_22CEF3C20;
  *(&v679 + 1) = &block_descriptor_61;
  v434 = _Block_copy(&v678);

  dispatch_sync(v431, v434);
  _Block_release(v434);
  LOBYTE(v431) = swift_isEscapingClosureAtFileLocation();

  if (v431)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v379 = v661;
  v435 = *v661;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v436 = result;
  v437 = swift_getObjectType();
  v438 = v436[3];

  v438(v382, &off_28402C2E0, v437, v436);
  v439 = *(v382 + 40);
  v440 = swift_allocObject();
  v440[2] = v379;
  v440[3] = &off_28402C598;
  v440[4] = v382;
  v441 = swift_allocObject();
  *(v441 + 16) = sub_22CFF9090;
  *(v441 + 24) = v440;
  *&v680 = sub_22CFF9014;
  *(&v680 + 1) = v441;
  *&v678 = MEMORY[0x277D85DD0];
  *(&v678 + 1) = 1107296256;
  *&v679 = sub_22CEF3C20;
  *(&v679 + 1) = &block_descriptor_72_0;
  v442 = _Block_copy(&v678);

  dispatch_sync(v439, v442);
  _Block_release(v442);
  LOBYTE(v439) = swift_isEscapingClosureAtFileLocation();

  if (v439)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v379 = v655;
  v443 = *v655;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v444 = result;
  v445 = swift_getObjectType();
  v446 = v444[3];

  v446(v382, &off_28402C2E0, v445, v444);
  v447 = *(v382 + 40);
  v448 = swift_allocObject();
  v448[2] = v379;
  v448[3] = &off_28402D378;
  v448[4] = v382;
  v449 = swift_allocObject();
  *(v449 + 16) = sub_22CFF9090;
  *(v449 + 24) = v448;
  *&v680 = sub_22CFF9014;
  *(&v680 + 1) = v449;
  *&v678 = MEMORY[0x277D85DD0];
  *(&v678 + 1) = 1107296256;
  *&v679 = sub_22CEF3C20;
  *(&v679 + 1) = &block_descriptor_83;
  v450 = _Block_copy(&v678);

  dispatch_sync(v447, v450);
  _Block_release(v450);
  LOBYTE(v447) = swift_isEscapingClosureAtFileLocation();

  if (v447)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v379 = v660;
  v451 = *v660;
  v452 = swift_conformsToProtocol2();
  if (v452)
  {
    v453 = v452;
    v454 = swift_getObjectType();
    v455 = *(v453 + 24);

    v455(v382, &off_28402C2E0, v454, v453);
  }

  else
  {
  }

  v456 = *(v382 + 40);
  v457 = swift_allocObject();
  v457[2] = v379;
  v457[3] = &off_28402A278;
  v457[4] = v382;
  v458 = swift_allocObject();
  *(v458 + 16) = sub_22CFF9090;
  *(v458 + 24) = v457;
  *&v680 = sub_22CFF9014;
  *(&v680 + 1) = v458;
  *&v678 = MEMORY[0x277D85DD0];
  *(&v678 + 1) = 1107296256;
  *&v679 = sub_22CEF3C20;
  *(&v679 + 1) = &block_descriptor_94;
  v459 = _Block_copy(&v678);

  dispatch_sync(v456, v459);
  _Block_release(v459);
  LOBYTE(v456) = swift_isEscapingClosureAtFileLocation();

  if (v456)
  {
    goto LABEL_70;
  }

  v379 = v668;
  v460 = *v668;
  v461 = swift_conformsToProtocol2();
  if (v461)
  {
    v462 = v461;
    v463 = swift_getObjectType();
    v464 = *(v462 + 24);

    v464(v382, &off_28402C2E0, v463, v462);
  }

  else
  {
  }

  v465 = *(v382 + 40);
  v466 = swift_allocObject();
  v466[2] = v379;
  v466[3] = &off_28402A240;
  v466[4] = v382;
  v467 = swift_allocObject();
  *(v467 + 16) = sub_22CFF9090;
  *(v467 + 24) = v466;
  *&v680 = sub_22CFF9014;
  *(&v680 + 1) = v467;
  *&v678 = MEMORY[0x277D85DD0];
  *(&v678 + 1) = 1107296256;
  *&v679 = sub_22CEF3C20;
  *(&v679 + 1) = &block_descriptor_105;
  v468 = _Block_copy(&v678);

  dispatch_sync(v465, v468);
  _Block_release(v468);
  LOBYTE(v465) = swift_isEscapingClosureAtFileLocation();

  if (v465)
  {
    goto LABEL_71;
  }

  v379 = v670;
  v469 = *v670;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v470 = result;
  v471 = swift_getObjectType();
  v472 = v470[3];

  v472(v382, &off_28402C2E0, v471, v470);
  v473 = *(v382 + 40);
  v474 = swift_allocObject();
  v474[2] = v379;
  v474[3] = &off_28402B5A0;
  v474[4] = v382;
  v475 = swift_allocObject();
  *(v475 + 16) = sub_22CFF9090;
  *(v475 + 24) = v474;
  *&v680 = sub_22CFF9014;
  *(&v680 + 1) = v475;
  *&v678 = MEMORY[0x277D85DD0];
  *(&v678 + 1) = 1107296256;
  *&v679 = sub_22CEF3C20;
  *(&v679 + 1) = &block_descriptor_116;
  v476 = _Block_copy(&v678);

  dispatch_sync(v473, v476);
  _Block_release(v476);
  LOBYTE(v473) = swift_isEscapingClosureAtFileLocation();

  if (v473)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v379 = v669;
  v477 = *v669;
  v478 = swift_conformsToProtocol2();
  if (v478)
  {
    v479 = v478;
    v480 = swift_getObjectType();
    v481 = *(v479 + 24);

    v481(v382, &off_28402C2E0, v480, v479);
  }

  else
  {
  }

  v482 = *(v382 + 40);
  v483 = swift_allocObject();
  v483[2] = v379;
  v483[3] = &off_28402EAB0;
  v483[4] = v382;
  v484 = swift_allocObject();
  *(v484 + 16) = sub_22CFF9090;
  *(v484 + 24) = v483;
  *&v680 = sub_22CFF9014;
  *(&v680 + 1) = v484;
  *&v678 = MEMORY[0x277D85DD0];
  *(&v678 + 1) = 1107296256;
  *&v679 = sub_22CEF3C20;
  *(&v679 + 1) = &block_descriptor_127;
  v485 = _Block_copy(&v678);

  dispatch_sync(v482, v485);
  _Block_release(v485);
  LOBYTE(v482) = swift_isEscapingClosureAtFileLocation();

  if (v482)
  {
    goto LABEL_73;
  }

  v379 = v654;
  v486 = *v654;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v487 = result;
  v488 = swift_getObjectType();
  v489 = v487[3];

  v489(v382, &off_28402C2E0, v488, v487);
  v490 = *(v382 + 40);
  v491 = swift_allocObject();
  v491[2] = v379;
  v491[3] = &off_28402AB78;
  v491[4] = v382;
  v492 = swift_allocObject();
  *(v492 + 16) = sub_22CFF9090;
  *(v492 + 24) = v491;
  *&v680 = sub_22CFF9014;
  *(&v680 + 1) = v492;
  *&v678 = MEMORY[0x277D85DD0];
  *(&v678 + 1) = 1107296256;
  *&v679 = sub_22CEF3C20;
  *(&v679 + 1) = &block_descriptor_138;
  v493 = _Block_copy(&v678);

  dispatch_sync(v490, v493);
  _Block_release(v493);
  LOBYTE(v490) = swift_isEscapingClosureAtFileLocation();

  if (v490)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v379 = v646;
  v494 = *v646;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v495 = result;
  v496 = swift_getObjectType();
  v497 = v495[3];

  v497(v382, &off_28402C2E0, v496, v495);
  v498 = *(v382 + 40);
  v499 = swift_allocObject();
  v499[2] = v379;
  v499[3] = &off_28402D2C0;
  v499[4] = v382;
  v500 = swift_allocObject();
  *(v500 + 16) = sub_22CFF9090;
  *(v500 + 24) = v499;
  *&v680 = sub_22CFF9014;
  *(&v680 + 1) = v500;
  *&v678 = MEMORY[0x277D85DD0];
  *(&v678 + 1) = 1107296256;
  *&v679 = sub_22CEF3C20;
  *(&v679 + 1) = &block_descriptor_149;
  v501 = _Block_copy(&v678);

  dispatch_sync(v498, v501);
  _Block_release(v501);
  LOBYTE(v498) = swift_isEscapingClosureAtFileLocation();

  if (v498)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v379 = v667;
  v502 = *v667;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v503 = result;
  v504 = swift_getObjectType();
  v505 = v503[3];

  v505(v382, &off_28402C2E0, v504, v503);
  v506 = *(v382 + 40);
  v507 = swift_allocObject();
  v507[2] = v379;
  v507[3] = &off_28402A690;
  v507[4] = v382;
  v508 = swift_allocObject();
  *(v508 + 16) = sub_22CFF9090;
  *(v508 + 24) = v507;
  *&v680 = sub_22CFF9014;
  *(&v680 + 1) = v508;
  *&v678 = MEMORY[0x277D85DD0];
  *(&v678 + 1) = 1107296256;
  *&v679 = sub_22CEF3C20;
  *(&v679 + 1) = &block_descriptor_160;
  v509 = _Block_copy(&v678);

  dispatch_sync(v506, v509);
  _Block_release(v509);
  LOBYTE(v506) = swift_isEscapingClosureAtFileLocation();

  if (v506)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v510 = v671;
  v511 = *v671;
  v512 = swift_conformsToProtocol2();
  if (v512)
  {
    v513 = v512;
    v514 = swift_getObjectType();
    v515 = *(v513 + 24);

    v515(v382, &off_28402C2E0, v514, v513);
    v510 = v671;
  }

  else
  {
  }

  v379 = v659;
  v516 = *(v382 + 40);
  v517 = swift_allocObject();
  v517[2] = v510;
  v517[3] = &off_284029DE0;
  v517[4] = v382;
  v518 = swift_allocObject();
  *(v518 + 16) = sub_22CFF9090;
  *(v518 + 24) = v517;
  *&v680 = sub_22CFF9014;
  *(&v680 + 1) = v518;
  *&v678 = MEMORY[0x277D85DD0];
  *(&v678 + 1) = 1107296256;
  *&v679 = sub_22CEF3C20;
  *(&v679 + 1) = &block_descriptor_171;
  v519 = _Block_copy(&v678);

  dispatch_sync(v516, v519);
  _Block_release(v519);
  LOBYTE(v516) = swift_isEscapingClosureAtFileLocation();

  if (v516)
  {
    goto LABEL_77;
  }

  v520 = *v379;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v521 = result;
  v522 = swift_getObjectType();
  v523 = v521[3];

  v523(v382, &off_28402C2E0, v522, v521);
  v524 = *(v382 + 40);
  v525 = swift_allocObject();
  v525[2] = v379;
  v525[3] = &off_28402C680;
  v525[4] = v382;
  v526 = swift_allocObject();
  *(v526 + 16) = sub_22CFF9090;
  *(v526 + 24) = v525;
  *&v680 = sub_22CFF9014;
  *(&v680 + 1) = v526;
  *&v678 = MEMORY[0x277D85DD0];
  *(&v678 + 1) = 1107296256;
  *&v679 = sub_22CEF3C20;
  *(&v679 + 1) = &block_descriptor_182;
  v527 = _Block_copy(&v678);

  dispatch_sync(v524, v527);
  _Block_release(v527);
  LOBYTE(v524) = swift_isEscapingClosureAtFileLocation();

  if (v524)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v379 = v658;
  v528 = *v658;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v529 = result;
  v530 = swift_getObjectType();
  v531 = v529[3];

  v531(v382, &off_28402C2E0, v530, v529);
  v532 = *(v382 + 40);
  v533 = swift_allocObject();
  v533[2] = v379;
  v533[3] = &off_28402ECC0;
  v533[4] = v382;
  v534 = swift_allocObject();
  *(v534 + 16) = sub_22CFF9090;
  *(v534 + 24) = v533;
  *&v680 = sub_22CFF9014;
  *(&v680 + 1) = v534;
  *&v678 = MEMORY[0x277D85DD0];
  *(&v678 + 1) = 1107296256;
  *&v679 = sub_22CEF3C20;
  *(&v679 + 1) = &block_descriptor_193;
  v535 = _Block_copy(&v678);

  dispatch_sync(v532, v535);
  _Block_release(v535);
  LOBYTE(v532) = swift_isEscapingClosureAtFileLocation();

  if (v532)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v536 = v657;
  v537 = *v657;
  result = swift_conformsToProtocol2();
  if (result)
  {
    v538 = result;
    v539 = swift_getObjectType();
    v540 = v538[3];
    swift_retain_n();

    v540(v541, &off_28402C2E0, v539, v538);

    v542 = *(v382 + 40);
    v543 = swift_allocObject();
    v543[2] = v536;
    v543[3] = &off_28402B100;
    v543[4] = v382;
    v544 = swift_allocObject();
    *(v544 + 16) = sub_22CFF9090;
    *(v544 + 24) = v543;
    *&v680 = sub_22CFF9014;
    *(&v680 + 1) = v544;
    *&v678 = MEMORY[0x277D85DD0];
    *(&v678 + 1) = 1107296256;
    *&v679 = sub_22CEF3C20;
    *(&v679 + 1) = &block_descriptor_204;
    v545 = _Block_copy(&v678);

    dispatch_sync(v542, v545);
    _Block_release(v545);
    LOBYTE(v542) = swift_isEscapingClosureAtFileLocation();

    v359 = v673;
    v379 = v676;
    if ((v542 & 1) == 0)
    {
      v546 = qword_281441CE0;

      if (v546 == -1)
      {
LABEL_61:
        v547 = off_281441CE8[0];
        v548 = *(off_281441CE8[0] + 16);
        os_unfair_lock_lock(v548);
        v549 = v607;
        sub_22CFF1E30(v379, 0xD000000000000010, 0x800000022D01F9B0, v607);
        os_unfair_lock_unlock(v548);

        v550 = *(v547 + 16);
        v551 = v663;

        os_unfair_lock_lock(v550);
        sub_22CFF1974(v551, 0x7672655368737570, 0xEA00000000007265, v549);
        os_unfair_lock_unlock(v550);

        v552 = *(v547 + 16);
        v553 = v664;

        os_unfair_lock_lock(v552);
        sub_22CFF14BC(v553, 0x7974697669746361, 0xED000065726F7453, v549);
        os_unfair_lock_unlock(v552);

        v554 = *(v547 + 16);
        v555 = v662;

        os_unfair_lock_lock(v554);
        sub_22CFF1004(v555, 0xD000000000000012, 0x800000022D0224F0, v549);
        os_unfair_lock_unlock(v554);

        v556 = *(v547 + 16);
        v557 = v661;

        os_unfair_lock_lock(v556);
        sub_22CFF0B4C(v557, 0xD00000000000001BLL, 0x800000022D022510, v549);
        os_unfair_lock_unlock(v556);

        v558 = *(v547 + 16);
        v559 = v660;

        os_unfair_lock_lock(v558);
        sub_22CFF0694(v559, 0xD000000000000014, 0x800000022D022530, v549);
        os_unfair_lock_unlock(v558);

        v560 = *(v547 + 16);

        os_unfair_lock_lock(v560);
        sub_22CFF01D8(v359, 0x656863536B736174, 0xED000072656C7564, v549);
        os_unfair_lock_unlock(v560);

        v561 = *(v547 + 16);
        v562 = v665;

        os_unfair_lock_lock(v561);
        sub_22CFEFD1C(v562, 0x67616E614D736F71, 0xEA00000000007265, v549);
        os_unfair_lock_unlock(v561);

        v563 = *(v547 + 16);
        v564 = v645;

        os_unfair_lock_lock(v563);
        sub_22CFEF860(v564, 0x4D737365636F7270, 0xEE00726F74696E6FLL, v549);
        os_unfair_lock_unlock(v563);

        v565 = *(v547 + 16);

        os_unfair_lock_lock(v565);
        sub_22CFEF3A4(v382, 0x7974697669746361, 0xEF726567616E614DLL, v549);
        os_unfair_lock_unlock(v565);

        v566 = *(v547 + 16);
        v567 = v677;

        os_unfair_lock_lock(v566);
        sub_22CFEEEEC(v567, 0xD000000000000014, 0x800000022D01FB00, v549);
        os_unfair_lock_unlock(v566);

        v568 = *(v547 + 16);
        v569 = v648;
        v674 = v569;
        os_unfair_lock_lock(v568);
        sub_22CFEEA38(v569, 0x7265537475706E69, 0xEB00000000726576, v549);
        os_unfair_lock_unlock(v568);

        v570 = *(v547 + 16);
        v571 = v646;

        os_unfair_lock_lock(v570);
        sub_22CFEE580(v571, 0xD000000000000010, 0x800000022D022550, v549);
        os_unfair_lock_unlock(v570);

        v572 = *(v547 + 16);
        v573 = v659;

        os_unfair_lock_lock(v572);
        sub_22CFEE0C8(v573, 0xD000000000000014, 0x800000022D022570, v549);
        os_unfair_lock_unlock(v572);

        v574 = *(v547 + 16);
        v575 = v636;
        v648 = v575;
        os_unfair_lock_lock(v574);
        sub_22CFEDC14(v575, 0xD000000000000010, 0x800000022D01DC60, v549);
        os_unfair_lock_unlock(v574);

        v576 = *(v547 + 16);
        v577 = v658;

        os_unfair_lock_lock(v576);
        sub_22CFED75C(v577, 0xD000000000000017, 0x800000022D022590, v549);
        os_unfair_lock_unlock(v576);

        v578 = *(v547 + 16);
        os_unfair_lock_lock(v578);
        v579 = v657;
        sub_22CFED2A4(v657, 0xD000000000000015, 0x800000022D022160, v549);
        os_unfair_lock_unlock(v578);

        result = v615;
        v580 = v638;
        v615[13] = v601;
        result[14] = v580;
        v581 = v666;
        result[15] = v665;
        result[16] = v581;
        v582 = v605;
        result[17] = v676;
        result[18] = v582;
        v584 = v603;
        v583 = v604;
        result[19] = v602;
        result[20] = v583;
        v585 = v650;
        result[21] = v584;
        result[22] = v585;
        v586 = v652;
        result[23] = v674;
        result[24] = v586;
        v587 = v635;
        result[25] = v637;
        result[26] = v587;
        v588 = v648;
        result[27] = v594;
        result[28] = v588;
        result[29] = v593;
        result[30] = v579;
        result[31] = v656;
        v589 = v673;
        result[2] = v639;
        result[3] = v589;
        v590 = v610;
        result[4] = v611;
        result[5] = v590;
        v591 = v608;
        result[6] = v609;
        result[7] = v591;
        result[9] = v382;
        result[8] = MEMORY[0x277D4D428];
        v592 = v606;
        result[10] = v549;
        result[11] = v592;
        return result;
      }

LABEL_81:
      swift_once();
      goto LABEL_61;
    }

LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

LABEL_94:
  __break(1u);
  return result;
}

void sub_22CFE92E0()
{
  v1 = v0;
  v2 = sub_22D01561C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[9];
  sub_22CFCCC14();
  v9 = *(v1[11] + OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_listener);
  if (!v9)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v9 activate];
  v10 = *(v1[5] + OBJC_IVAR____TtC11SessionCore18AlertServiceServer_listener);
  if (!v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v10 activate];
  v11 = *(v1[13] + OBJC_IVAR____TtC11SessionCore19AuthorizationServer_listener);
  if (!v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v11 activate];
  v12 = *(v1[25] + OBJC_IVAR____TtC11SessionCore12OutputServer_listener);
  if (!v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v12 activate];
  v13 = *(v1[19] + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_listener);
  if (!v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v13 activate];
  v14 = *(v1[20] + OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_listener);
  if (!v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v14 activate];
  v15 = *(v1[21] + OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_listener);
  if (!v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v15 activate];
  v16 = *(v1[23] + OBJC_IVAR____TtC11SessionCore11InputServer_listener);
  if (!v16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v16 activate];
  v17 = v1[27];
  sub_22CFD2258();
  v18 = *(v1[18] + OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_listener);
  if (!v18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v18 activate];
  v19 = v1[26];
  sub_22D015ECC();
  v20 = v1[4];
  sub_22D0156BC();
  [*(v1[28] + OBJC_IVAR____TtC11SessionCore16AppEventObserver_applicationWorkspace) addObserver_];
  sub_22CFC4DB0();
  v21 = *(v1[14] + OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_listener);
  if (!v21)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v21 activate];
  if (v1[30])
  {
    v22 = v1[30];

    sub_22CF8C40C();
  }

  v23 = v1[31];
  if (!v23)
  {
    goto LABEL_16;
  }

  v24 = *(v23 + OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_listener);
  if (v24)
  {
    [v24 activate];
LABEL_16:
    v25 = objc_opt_self();
    sub_22D0155FC();
    sub_22D01560C();
    (*(v3 + 8))(v7, v2);
    v26 = sub_22D01666C();

    v27 = [v25 activateManualDomain_];
    swift_unknownObjectRelease();

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t Daemon.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);
  swift_unknownObjectRelease();
  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  v7 = *(v0 + 96);

  v8 = *(v0 + 120);

  v9 = *(v0 + 128);

  v10 = *(v0 + 136);

  v11 = *(v0 + 176);

  v12 = *(v0 + 192);

  v13 = *(v0 + 232);

  v14 = *(v0 + 240);

  return v0;
}

uint64_t Daemon.__deallocating_deinit()
{
  Daemon.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22CFE9704(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_27D9F1E40 != -1)
  {
    swift_once();
  }

  v7 = sub_22D01637C();
  __swift_project_value_buffer(v7, qword_27D9F40B8);

  v8 = sub_22D01636C();
  v9 = sub_22D01690C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_22CEEE31C(a2, a3, &v13);
    _os_log_impl(&dword_22CEE1000, v8, v9, "%{public}s: Received", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x2318C6860](v11, -1, -1);
    MEMORY[0x2318C6860](v10, -1, -1);
  }

  result = swift_beginAccess();
  *(a4 + 16) = 0;
  return result;
}

uint64_t sub_22CFE9870(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3670, &qword_22D01BF00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v49 = v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BE0, &qword_22D01C7E0);
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v50 = v48 - v12;
  v13 = sub_22D01697C();
  v14 = *(v13 - 8);
  v53 = v13;
  v54 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D01691C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19, v21);
  v22 = sub_22D01653C();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v57[3] = type metadata accessor for AppEventObserver();
  v57[4] = &off_28402BFA0;
  v57[0] = a1;
  a2[2] = 0xD000000000000020;
  a2[3] = 0x800000022D022C50;
  v48[0] = a2;
  sub_22CEEC38C();
  v48[2] = "nStatusEventDate";
  sub_22D01651C();
  v55 = MEMORY[0x277D84F90];
  v48[1] = sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  v25 = *MEMORY[0x277D85268];
  v26 = *(v54 + 104);
  v54 += 104;
  v26(v18, v25, v53);
  a2[9] = sub_22D0169BC();
  sub_22D0164EC();
  v55 = MEMORY[0x277D84F90];
  sub_22D016ADC();
  v26(v18, *MEMORY[0x277D85260], v53);
  v27 = sub_22D0169BC();
  v28 = v48[0];
  *(v48[0] + 80) = v27;
  *(v28 + 88) = MEMORY[0x277D84FA0];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  *(v28 + 96) = sub_22D01642C();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2670, &qword_22D018BE8);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  *(v28 + 104) = sub_22D01642C();
  v35 = *(v32 + 48);
  v36 = *(v32 + 52);
  swift_allocObject();
  *(v28 + 112) = sub_22D01642C();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2668, &qword_22D018BE0);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  *(v28 + 120) = sub_22D01642C();
  *(v28 + 128) = 0u;
  *(v28 + 144) = 0u;
  sub_22CEE3A84(v57, v28 + 32);
  v40 = *__swift_project_boxed_opaque_existential_1((v28 + 32), *(v28 + 56));
  v55 = sub_22CFC4AB0();
  v56 = *(v28 + 72);
  v41 = v56;
  v42 = sub_22D01693C();
  v43 = v49;
  (*(*(v42 - 8) + 56))(v49, 1, 1, v42);
  v44 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BE8, &qword_22D01C7E8);
  sub_22CEE8394(&qword_28143FAA8, &qword_27D9F3BE8, &qword_22D01C7E8);
  sub_22CFF8F4C(&qword_28143FA10, sub_22CEEC38C);
  v45 = v50;
  sub_22D01647C();
  sub_22CEEC3D8(v43, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_weakInit();
  sub_22CEE8394(&qword_28143FAC8, &qword_27D9F3BE0, &qword_22D01C7E0);
  v46 = v51;
  sub_22D0164AC();

  (*(v52 + 8))(v45, v46);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  sub_22CF471B4();
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  return v28;
}

uint64_t sub_22CFE9F80(void *a1, uint64_t a2, char *a3)
{
  v36 = a1;
  v35 = sub_22D01697C();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v35, v7);
  v33 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D01691C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v12 = sub_22D01653C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v34 = type metadata accessor for AssertionManager();
  v42 = v34;
  v43 = &off_284029D40;
  v41[0] = a2;
  *&a3[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_listener] = 0;
  v15 = OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_lock;
  type metadata accessor for UnfairLock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *(v16 + 16) = v17;
  *v17 = 0;
  *&a3[v15] = v16;
  *&a3[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer__lock_clients] = MEMORY[0x277D84F98];
  v18 = MEMORY[0x277D84F90];
  *&a3[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer__lock_prominentActivityIdentifiers] = MEMORY[0x277D84F90];
  *&a3[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_prominenceSubscription] = 0;
  v32[1] = sub_22CEEC38C();
  sub_22D01651C();
  aBlock[0] = v18;
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v5 + 104))(v33, *MEMORY[0x277D85268], v35);
  v19 = v36;
  *&a3[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_requestProcessingQueue] = sub_22D0169BC();
  v20 = type metadata accessor for ProminenceObservationServiceServer();
  v40.receiver = a3;
  v40.super_class = v20;
  v21 = objc_msgSendSuper2(&v40, sel_init);
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v22 = off_284029D48;
  v23 = v21;
  aBlock[0] = v22();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BE8, &qword_22D01C7E8);
  sub_22CEE8394(&qword_28143FAA8, &qword_27D9F3BE8, &qword_22D01C7E8);
  v24 = sub_22D0164AC();

  v25 = *&v23[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_prominenceSubscription];
  *&v23[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_prominenceSubscription] = v24;

  v38 = v23;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_22CFF8F2C;
  *(v26 + 24) = &v37;
  aBlock[4] = sub_22CFF908C;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_354;
  v27 = _Block_copy(aBlock);
  v28 = objc_opt_self();

  v29 = [v28 listenerWithConfigurator_];

  _Block_release(v27);

  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    v31 = *&v23[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_listener];
    *&v23[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_listener] = v29;

    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    return v23;
  }

  return result;
}

uint64_t sub_22CFEA4F8(void *a1, uint64_t a2, char *a3)
{
  v36 = a1;
  v35 = sub_22D01697C();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v35, v7);
  v33 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D01691C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v12 = sub_22D01653C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v34 = type metadata accessor for AssertionManager();
  v42 = v34;
  v43 = &off_284029D50;
  v41[0] = a2;
  *&a3[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_listener] = 0;
  v15 = OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_lock;
  type metadata accessor for UnfairLock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *(v16 + 16) = v17;
  *v17 = 0;
  *&a3[v15] = v16;
  v18 = MEMORY[0x277D84F98];
  *&a3[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer__lock_clients] = MEMORY[0x277D84F98];
  *&a3[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer__lock_presentations] = v18;
  *&a3[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_presentationSubscription] = 0;
  v32[1] = sub_22CEEC38C();
  sub_22D01651C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v5 + 104))(v33, *MEMORY[0x277D85268], v35);
  v19 = v36;
  *&a3[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_requestProcessingQueue] = sub_22D0169BC();
  v20 = type metadata accessor for PresentationObservationServiceServer();
  v40.receiver = a3;
  v40.super_class = v20;
  v21 = objc_msgSendSuper2(&v40, sel_init);
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v22 = off_284029D58;
  v23 = v21;
  aBlock[0] = v22();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B78, &qword_22D01C650);
  sub_22CEE8394(&qword_28143FAB0, &qword_27D9F3B78, &qword_22D01C650);
  v24 = sub_22D0164AC();

  v25 = *&v23[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_presentationSubscription];
  *&v23[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_presentationSubscription] = v24;

  v38 = v23;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_22CFF8F34;
  *(v26 + 24) = &v37;
  aBlock[4] = sub_22CFF908C;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_364;
  v27 = _Block_copy(aBlock);
  v28 = objc_opt_self();

  v29 = [v28 listenerWithConfigurator_];

  _Block_release(v27);

  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    v31 = *&v23[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_listener];
    *&v23[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_listener] = v29;

    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    return v23;
  }

  return result;
}

void *sub_22CFEAA74(uint64_t a1, void *a2, void (*a3)(void))
{
  v10[3] = type metadata accessor for AuthorizationManager();
  v10[4] = &off_284029420;
  v10[0] = a1;
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *(v6 + 16) = v7;
  *v7 = 0;
  a2[2] = v6;
  a2[8] = MEMORY[0x277D84FA0];
  a2[9] = MEMORY[0x277D84F98];
  a2[11] = 0;
  swift_unknownObjectWeakInit();
  sub_22CEE3A84(v10, (a2 + 3));
  v8 = *__swift_project_boxed_opaque_existential_1(a2 + 3, a2[6]);
  a3();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F4080, &qword_22D01C7B0);
  sub_22CEE8394(&qword_28143D9E0, &unk_27D9F4080, &qword_22D01C7B0);
  sub_22D0164AC();

  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return a2;
}

uint64_t sub_22CFEAC30(uint64_t a1, void *a2, char *a3)
{
  v29 = a2;
  v28 = sub_22D01697C();
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v28, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01691C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v13 = sub_22D01653C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v34[3] = type metadata accessor for StateCaptureService();
  v34[4] = &off_284029BB0;
  v34[0] = a1;
  *&a3[OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_listener] = 0;
  v16 = sub_22CEEC38C();
  v27[0] = "tivitiesd.AssertionManager";
  v27[1] = v16;
  sub_22D01651C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v5 + 104))(v9, *MEMORY[0x277D85268], v28);
  v17 = v29;
  *&a3[OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_requestProcessingQueue] = sub_22D0169BC();
  sub_22CEE3A84(v34, &a3[OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_stateCaptureManager]);
  v18 = type metadata accessor for StateCaptureServiceServer();
  v33.receiver = a3;
  v33.super_class = v18;
  v19 = objc_msgSendSuper2(&v33, sel_init);
  v31 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22CFF8F44;
  *(v20 + 24) = &v30;
  aBlock[4] = sub_22CFF908C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_378;
  v21 = _Block_copy(aBlock);
  v22 = objc_opt_self();
  v23 = v19;

  v24 = [v22 listenerWithConfigurator_];
  _Block_release(v21);

  __swift_destroy_boxed_opaque_existential_1Tm(v34);

  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  else
  {
    v26 = *&v23[OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_listener];
    *&v23[OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_listener] = v24;

    return v23;
  }

  return result;
}

id sub_22CFEB050(uint64_t a1, char *a2)
{
  v22[3] = type metadata accessor for KnownClientStore();
  v22[4] = &off_28402C270;
  v22[0] = a1;
  *&a2[OBJC_IVAR____TtC11SessionCore16AppEventObserver____lazy_storage___addedPublisher] = 0;
  v4 = OBJC_IVAR____TtC11SessionCore16AppEventObserver__addedPublisher;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3480, &qword_22D01B598);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *&a2[v4] = sub_22D01642C();
  *&a2[OBJC_IVAR____TtC11SessionCore16AppEventObserver____lazy_storage___removedPublisher] = 0;
  v8 = OBJC_IVAR____TtC11SessionCore16AppEventObserver__removedPublisher;
  v9 = *(v5 + 48);
  v10 = *(v5 + 52);
  swift_allocObject();
  *&a2[v8] = sub_22D01642C();
  *&a2[OBJC_IVAR____TtC11SessionCore16AppEventObserver____lazy_storage___restrictionsChangedPublisher] = 0;
  v11 = OBJC_IVAR____TtC11SessionCore16AppEventObserver__restrictionsChangedPublisher;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *&a2[v11] = sub_22D01642C();
  v15 = MEMORY[0x277D84FA0];
  *&a2[OBJC_IVAR____TtC11SessionCore16AppEventObserver_subscriptions] = MEMORY[0x277D84FA0];
  v16 = OBJC_IVAR____TtC11SessionCore16AppEventObserver_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B60, &qword_22D01C638);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *&a2[v16] = v17;
  *&a2[OBJC_IVAR____TtC11SessionCore16AppEventObserver_lock_restrictions] = v15;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    *&a2[OBJC_IVAR____TtC11SessionCore16AppEventObserver_applicationWorkspace] = result;
    sub_22CEE3A84(v22, &a2[OBJC_IVAR____TtC11SessionCore16AppEventObserver_knownClientStore]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3C20, &qword_22D01C820);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_22D0189F0;
    *(v19 + 32) = [objc_allocWithZone(type metadata accessor for ManagedConfigRestrictionProvider()) init];
    *(v19 + 40) = &off_28402BF68;
    *(v19 + 48) = [objc_allocWithZone(type metadata accessor for AppProtectionRestrictionProvider()) init];
    *(v19 + 56) = &off_28402BF48;
    *&a2[OBJC_IVAR____TtC11SessionCore16AppEventObserver_restrictionProviders] = v19;
    v21.receiver = a2;
    v21.super_class = type metadata accessor for AppEventObserver();
    v20 = objc_msgSendSuper2(&v21, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_22CFEB290(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for LockStateObserver();
  v10[3] = v4;
  v10[4] = &off_284029998;
  v10[0] = a1;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  v7 = MEMORY[0x277D84F98];
  a2[2] = v5;
  a2[3] = v7;
  a2[4] = MEMORY[0x277D84FA0];
  a2[6] = 0;
  swift_unknownObjectWeakInit();
  v9 = *(*__swift_project_boxed_opaque_existential_1(v10, v4) + 16);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BB0, &qword_22D01C7A8);
  sub_22CEE8394(&qword_28143FAA0, &qword_27D9F3BB0, &qword_22D01C7A8);
  sub_22D0164AC();

  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return a2;
}

uint64_t sub_22CFEB448(uint64_t a1, uint64_t a2, void *a3, int a4, char *a5)
{
  v37 = a4;
  v36 = a3;
  v35 = sub_22D01697C();
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v35, v10);
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D01691C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v15 = sub_22D01653C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v41[3] = type metadata accessor for ProcessManager();
  v41[4] = &off_284029E18;
  v41[0] = a1;
  v40[3] = type metadata accessor for KnownClientStore();
  v40[4] = &off_28402C270;
  v40[0] = a2;
  v18 = MEMORY[0x277D84F98];
  *&a5[OBJC_IVAR____TtC11SessionCore12OutputServer__lock_clients] = MEMORY[0x277D84F98];
  *&a5[OBJC_IVAR____TtC11SessionCore12OutputServer__lock_activities] = v18;
  v19 = OBJC_IVAR____TtC11SessionCore12OutputServer_lock;
  type metadata accessor for UnfairLock();
  v20 = swift_allocObject();
  v21 = swift_slowAlloc();
  *(v20 + 16) = v21;
  *v21 = 0;
  *&a5[v19] = v20;
  *&a5[OBJC_IVAR____TtC11SessionCore12OutputServer_listener] = 0;
  v33 = sub_22CEEC38C();
  sub_22D01651C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v8 + 104))(v34, *MEMORY[0x277D85268], v35);
  v22 = v36;
  *&a5[OBJC_IVAR____TtC11SessionCore12OutputServer_requestProcessingQueue] = sub_22D0169BC();
  sub_22CEE3A84(v41, &a5[OBJC_IVAR____TtC11SessionCore12OutputServer_processManager]);
  sub_22CEE3A84(v40, &a5[OBJC_IVAR____TtC11SessionCore12OutputServer_knownClientStore]);
  v23 = type metadata accessor for OutputServer();
  v39.receiver = a5;
  v39.super_class = v23;
  v24 = objc_msgSendSuper2(&v39, sel_init);
  v26 = v24;
  if ((v37 & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    return v26;
  }

  MEMORY[0x28223BE20](v24, v25);
  *(&v33 - 2) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_22CFF8F14;
  *(v27 + 24) = &v33 - 4;
  aBlock[4] = sub_22CFF908C;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_331;
  v28 = _Block_copy(aBlock);
  v29 = objc_opt_self();

  v30 = [v29 listenerWithConfigurator_];
  _Block_release(v28);

  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);

  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if ((v28 & 1) == 0)
  {
    v32 = *&v26[OBJC_IVAR____TtC11SessionCore12OutputServer_listener];
    *&v26[OBJC_IVAR____TtC11SessionCore12OutputServer_listener] = v30;

    return v26;
  }

  __break(1u);
  return result;
}

void *sub_22CFEB948(uint64_t a1, void *a2)
{
  v11[3] = type metadata accessor for AlertServiceServer();
  v11[4] = &off_28402B5F8;
  v11[0] = a1;
  a2[3] = 0;
  swift_unknownObjectWeakInit();
  v4 = sub_22D01666C();
  v5 = [objc_opt_self() serviceForClientIdentifier_];

  a2[9] = v5;
  sub_22CEE3A84(v11, (a2 + 4));
  swift_beginAccess();
  v6 = a2[7];
  v7 = a2[8];
  __swift_mutable_project_boxed_opaque_existential_1((a2 + 4), v6);
  v8 = *(v7 + 32);

  v8(v9, &off_28402D040, v6, v7);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return a2;
}

uint64_t sub_22CFEBA70(void *a1, uint64_t a2, char *a3)
{
  v33 = a1;
  v32 = sub_22D01697C();
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v32, v7);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D01691C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v12 = sub_22D01653C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v38[3] = type metadata accessor for AssertionManager();
  v38[4] = &off_284029D68;
  v38[0] = a2;
  v15 = OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_lock;
  type metadata accessor for UnfairLock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *(v16 + 16) = v17;
  *v17 = 0;
  *&a3[v15] = v16;
  v18 = OBJC_IVAR____TtC11SessionCore22AssertionServiceServer__lock_clients;
  v19 = MEMORY[0x277D84F90];
  *&a3[v18] = sub_22CFF7DDC(MEMORY[0x277D84F90]);
  *&a3[OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_listener] = 0;
  v30 = sub_22CEEC38C();
  sub_22D01651C();
  aBlock[0] = v19;
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v5 + 104))(v31, *MEMORY[0x277D85268], v32);
  v20 = v33;
  *&a3[OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_requestProcessingQueue] = sub_22D0169BC();
  sub_22CEE3A84(v38, &a3[OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_assertionManager]);
  v21 = type metadata accessor for AssertionServiceServer();
  v37.receiver = a3;
  v37.super_class = v21;
  v22 = objc_msgSendSuper2(&v37, sel_init);
  v35 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_22CFF8F3C;
  *(v23 + 24) = &v34;
  aBlock[4] = sub_22CFF908C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_371;
  v24 = _Block_copy(aBlock);
  v25 = objc_opt_self();
  v26 = v22;

  v27 = [v25 listenerWithConfigurator_];
  _Block_release(v24);

  __swift_destroy_boxed_opaque_existential_1Tm(v38);

  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    v29 = *&v26[OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_listener];
    *&v26[OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_listener] = v27;

    return v26;
  }

  return result;
}

void *sub_22CFEBEDC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for LockStateObserver();
  v19 = v4;
  v20 = &off_284029998;
  v18[0] = a1;
  a2[4] = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  a2[10] = v5;
  __swift_project_boxed_opaque_existential_1(v18, v4);
  if (off_2840299A8[0]())
  {
    goto LABEL_6;
  }

  if (qword_28143DBD8 != -1)
  {
    swift_once();
  }

  if ((byte_281444380 & 1) == 0)
  {
LABEL_6:
    v16 = sub_22D01616C();
    v17 = MEMORY[0x277D4D650];
    __swift_allocate_boxed_opaque_existential_1(v15);
    sub_22D01615C();
  }

  else
  {
    v16 = sub_22D01616C();
    v17 = MEMORY[0x277D4D650];
    __swift_allocate_boxed_opaque_existential_1(v15);
    sub_22D01614C();
  }

  sub_22CEE3A84(v15, (a2 + 11));
  sub_22CEE3A84(v18, (a2 + 5));
  sub_22CEE3A84(v15, v14);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3C18, &qword_22D01C818);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_22D01644C();
  a2[3] = v10;
  v14[0] = v10;
  sub_22CEE8394(&unk_28143FA88, &qword_27D9F3C18, &qword_22D01C818);
  a2[2] = sub_22D01646C();
  v14[0] = *(*__swift_project_boxed_opaque_existential_1(v18, v19) + 16);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BB0, &qword_22D01C7A8);
  sub_22CEE8394(&qword_28143FAA0, &qword_27D9F3BB0, &qword_22D01C7A8);
  v11 = sub_22D0164AC();

  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  v12 = a2[4];
  a2[4] = v11;

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return a2;
}

uint64_t sub_22CFEC1A8(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v8 = type metadata accessor for ProcessManager();
  v26[3] = v8;
  v26[4] = &off_284029E18;
  v26[0] = a1;
  v24 = type metadata accessor for KnownClientStore();
  v25 = &off_28402C270;
  v23[0] = a2;
  v9 = objc_allocWithZone(type metadata accessor for OutputServer());
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v26, v8);
  v11 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v10, v10);
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = v24;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16, v16);
  v19 = (v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_22CFEB448(*v13, *v19, a3, a4, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return v21;
}

uint64_t sub_22CFEC38C(void *a1)
{
  type metadata accessor for PersistentPushSubscriptionStore();
  swift_allocObject();
  v2 = a1;
  sub_22D011CDC(v2);
  type metadata accessor for PersistentPublicTokenStore();
  swift_allocObject();
  v3 = v2;
  sub_22D00BE10(v3);
  type metadata accessor for PersistentPushTokenStore();
  swift_allocObject();
  sub_22CFC8CB8(v3);
  sub_22D01613C();
  sub_22D01612C();
  sub_22D015EDC();
  sub_22CFF8F4C(&unk_2814402C0, type metadata accessor for PersistentPushSubscriptionStore);
  sub_22CFF8F4C(qword_2814404B0, type metadata accessor for PersistentPublicTokenStore);
  sub_22CFF8F4C(qword_2814405D8, type metadata accessor for PersistentPushTokenStore);
  sub_22D015FFC();

  return sub_22D015E8C();
}

uint64_t sub_22CFEC594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v60 = a6;
  v61 = a4;
  v59 = sub_22D01697C();
  v57 = *(v59 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v59, v11);
  v55 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D01691C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v54[2] = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D01653C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v54[1] = v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_22D015EDC();
  v72[3] = v58;
  v72[4] = MEMORY[0x277D4D608];
  v72[0] = a1;
  v21 = type metadata accessor for ProcessManager();
  v71[3] = v21;
  v71[4] = &off_284029E18;
  v71[0] = a2;
  v70[3] = type metadata accessor for PersistentActivityStore();
  v70[4] = &off_28402CB48;
  v70[0] = a3;
  v22 = type metadata accessor for AuthorizationManager();
  v68 = v22;
  v69 = &off_284029420;
  v67[0] = a5;
  v56 = type metadata accessor for PushTokenServer();
  v23 = objc_allocWithZone(v56);
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v71, v21);
  v25 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v24, v24);
  v27 = (v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = v68;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v67, v68);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30, v30);
  v33 = (v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *v27;
  v36 = *v33;
  v66[3] = v21;
  v66[4] = &off_284029E18;
  v65[4] = &off_284029420;
  v66[0] = v35;
  v65[3] = v22;
  v65[0] = v36;
  v37 = MEMORY[0x277D84FA0];
  *&v23[OBJC_IVAR____TtC11SessionCore15PushTokenServer_subscriptions] = MEMORY[0x277D84FA0];
  *&v23[OBJC_IVAR____TtC11SessionCore15PushTokenServer_listener] = 0;
  v38 = OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock;
  type metadata accessor for UnfairLock();
  v39 = swift_allocObject();
  v40 = swift_slowAlloc();
  *(v39 + 16) = v40;
  *v40 = 0;
  *&v23[v38] = v39;
  *&v23[OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock_clients] = v37;
  v41 = OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock_tokens;
  *&v23[OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock_tokens] = v37;
  v54[0] = sub_22CEEC38C();
  sub_22D01651C();
  v63[0] = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v57 + 104))(v55, *MEMORY[0x277D85268], v59);
  v42 = v60;
  *&v23[OBJC_IVAR____TtC11SessionCore15PushTokenServer_requestProcessingQueue] = sub_22D0169BC();
  sub_22CEE3A84(v72, &v23[OBJC_IVAR____TtC11SessionCore15PushTokenServer_pushServer]);
  sub_22CEE3A84(v66, &v23[OBJC_IVAR____TtC11SessionCore15PushTokenServer_processManager]);
  sub_22CEE3A84(v70, &v23[OBJC_IVAR____TtC11SessionCore15PushTokenServer_activityStore]);
  sub_22CEE3A84(v65, &v23[OBJC_IVAR____TtC11SessionCore15PushTokenServer_authorizationManager]);
  *&v23[OBJC_IVAR____TtC11SessionCore15PushTokenServer_knownClientStore] = v61;

  v43 = sub_22D015EEC();
  v44 = sub_22CF7C338(v43);

  v45 = *&v23[v41];
  *&v23[v41] = v44;

  v64.receiver = v23;
  v64.super_class = v56;
  v46 = objc_msgSendSuper2(&v64, sel_init);
  v62[2] = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_22CFF8F0C;
  *(v47 + 24) = v62;
  v63[4] = sub_22CFF908C;
  v63[5] = v47;
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 1107296256;
  v63[2] = sub_22CEE5AA0;
  v63[3] = &block_descriptor_321;
  v48 = _Block_copy(v63);
  v49 = objc_opt_self();
  v50 = v46;

  v51 = [v49 listenerWithConfigurator_];
  _Block_release(v48);

  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  __swift_destroy_boxed_opaque_existential_1Tm(v65);
  __swift_destroy_boxed_opaque_existential_1Tm(v66);

  LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

  if (v48)
  {
    __break(1u);
  }

  else
  {
    v53 = *&v50[OBJC_IVAR____TtC11SessionCore15PushTokenServer_listener];
    *&v50[OBJC_IVAR____TtC11SessionCore15PushTokenServer_listener] = v51;

    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    return v50;
  }

  return result;
}

uint64_t sub_22CFECC9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v6 = sub_22D01697C();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v42 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01691C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v40[1] = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D01653C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v54[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B70, &qword_22D01C648);
  v54[4] = &off_28402E860;
  v54[0] = a1;
  v53[3] = &type metadata for DefaultInputBackoffPolicy;
  v53[4] = &off_28402E710;
  v17 = type metadata accessor for KnownClientStore();
  v52[3] = v17;
  v52[4] = &off_28402C270;
  v52[0] = a2;
  v41 = type metadata accessor for InputServer();
  v18 = objc_allocWithZone(v41);
  __swift_mutable_project_boxed_opaque_existential_1(v53, &type metadata for DefaultInputBackoffPolicy);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v52, v17);
  v20 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v19, v19);
  v22 = (v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v22;
  v51[3] = &type metadata for DefaultInputBackoffPolicy;
  v51[4] = &off_28402E710;
  v50[3] = v17;
  v50[4] = &off_28402C270;
  v50[0] = v24;
  *&v18[OBJC_IVAR____TtC11SessionCore11InputServer_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v18[OBJC_IVAR____TtC11SessionCore11InputServer_listener] = 0;
  v25 = OBJC_IVAR____TtC11SessionCore11InputServer_lock;
  type metadata accessor for UnfairLock();
  v26 = swift_allocObject();
  v27 = swift_slowAlloc();
  *(v26 + 16) = v27;
  *v27 = 0;
  *&v18[v25] = v26;
  *&v18[OBJC_IVAR____TtC11SessionCore11InputServer_clients] = MEMORY[0x277D84FA0];
  sub_22CEEC38C();
  sub_22D01651C();
  v48[0] = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v43 + 104))(v42, *MEMORY[0x277D85268], v44);
  v28 = v45;
  *&v18[OBJC_IVAR____TtC11SessionCore11InputServer_queue] = sub_22D0169BC();
  sub_22CEE3A84(v54, &v18[OBJC_IVAR____TtC11SessionCore11InputServer_activityAuthorizer]);
  sub_22CEE3A84(v51, &v18[OBJC_IVAR____TtC11SessionCore11InputServer_backoffPolicy]);
  v29 = &v18[OBJC_IVAR____TtC11SessionCore11InputServer_pushServer];
  v30 = MEMORY[0x277D4D5F0];
  *v29 = v46;
  *(v29 + 1) = v30;
  v31 = MEMORY[0x277D4D608];
  *(v29 + 2) = MEMORY[0x277D4D600];
  *(v29 + 3) = v31;
  sub_22CEE3A84(v50, &v18[OBJC_IVAR____TtC11SessionCore11InputServer_knownClientStore]);
  v49.receiver = v18;
  v49.super_class = v41;
  v32 = objc_msgSendSuper2(&v49, sel_init);
  v47[2] = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_22CFF8F04;
  *(v33 + 24) = v47;
  v48[4] = sub_22CEE5B1C;
  v48[5] = v33;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 1107296256;
  v48[2] = sub_22CEE5AA0;
  v48[3] = &block_descriptor_314;
  v34 = _Block_copy(v48);
  v35 = objc_opt_self();
  v36 = v32;

  v37 = [v35 listenerWithConfigurator_];
  _Block_release(v34);

  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);

  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
  }

  else
  {
    v39 = *&v36[OBJC_IVAR____TtC11SessionCore11InputServer_listener];
    *&v36[OBJC_IVAR____TtC11SessionCore11InputServer_listener] = v37;

    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    return v36;
  }

  return result;
}

uint64_t sub_22CFED2A4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29[3] = type metadata accessor for ReplicatorParticipant();
  v29[4] = &off_28402B088;
  v29[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_2814444C8);

    v23 = sub_22D01636C();
    v24 = sub_22D0168EC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v28[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v23, v24, "[state-capture] identifier [%{public}s] is already in use", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318C6860](v26, -1, -1);
      MEMORY[0x2318C6860](v25, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v29, v28);
    v11 = swift_allocObject();
    sub_22CEF44D4(v28, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0xD000000000000015;
    v12[3] = 0x800000022D0227E0;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF8DD4;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF8DD4, v11, 0xD000000000000015, 0x800000022D0227E0, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v28[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0xD000000000000015, 0x800000022D0227E0, v28);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    v19 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v27;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return result;
}

uint64_t sub_22CFED75C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29[3] = type metadata accessor for DelayedStartParticipant();
  v29[4] = &off_28402EC58;
  v29[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_2814444C8);

    v23 = sub_22D01636C();
    v24 = sub_22D0168EC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v28[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v23, v24, "[state-capture] identifier [%{public}s] is already in use", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318C6860](v26, -1, -1);
      MEMORY[0x2318C6860](v25, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v29, v28);
    v11 = swift_allocObject();
    sub_22CEF44D4(v28, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0xD000000000000017;
    v12[3] = 0x800000022D022860;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0xD000000000000017, 0x800000022D022860, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v28[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0xD000000000000017, 0x800000022D022860, v28);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    v19 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v27;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return result;
}

uint64_t sub_22CFEDC14(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v30[3] = type metadata accessor for AppEventObserver();
  v30[4] = &off_28402BF88;
  v30[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);
  v9 = a1;
  if (v8 && (, sub_22CEEC698(a2, a3), v11 = v10, , (v11 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v23 = sub_22D01637C();
    __swift_project_value_buffer(v23, qword_2814444C8);

    v24 = sub_22D01636C();
    v25 = sub_22D0168EC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v29[0] = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_22CEEE31C(a2, a3, v29);
      _os_log_impl(&dword_22CEE1000, v24, v25, "[state-capture] identifier [%{public}s] is already in use", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x2318C6860](v27, -1, -1);
      MEMORY[0x2318C6860](v26, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v30, v29);
    v12 = swift_allocObject();
    sub_22CEF44D4(v29, v12 + 16);
    type metadata accessor for StateCaptureItem();
    v13 = swift_allocObject();
    v13[2] = 0xD000000000000010;
    v13[3] = 0x800000022D022880;
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = sub_22CFF9010;
    v13[7] = v12;
    v14 = qword_281441AC8;

    if (v14 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v12, 0xD000000000000010, 0x800000022D022880, qword_281441AD0, (v13 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v15 = sub_22D01637C();
    __swift_project_value_buffer(v15, qword_2814444C8);

    v16 = sub_22D01636C();
    v17 = sub_22D01690C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v29[0] = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_22CEEE31C(0xD000000000000010, 0x800000022D022880, v29);
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_22CEEE31C(a2, a3, v29);
      _os_log_impl(&dword_22CEE1000, v16, v17, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v19, -1, -1);
      MEMORY[0x2318C6860](v18, -1, -1);
    }

    swift_beginAccess();

    v20 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v28;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  return result;
}

uint64_t sub_22CFEE0C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29[3] = type metadata accessor for MomentaryParticipant();
  v29[4] = &off_28402C618;
  v29[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_2814444C8);

    v23 = sub_22D01636C();
    v24 = sub_22D0168EC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v28[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v23, v24, "[state-capture] identifier [%{public}s] is already in use", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318C6860](v26, -1, -1);
      MEMORY[0x2318C6860](v25, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v29, v28);
    v11 = swift_allocObject();
    sub_22CEF44D4(v28, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0xD000000000000014;
    v12[3] = 0x800000022D0228A0;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0xD000000000000014, 0x800000022D0228A0, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v28[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0xD000000000000014, 0x800000022D0228A0, v28);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    v19 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v27;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return result;
}