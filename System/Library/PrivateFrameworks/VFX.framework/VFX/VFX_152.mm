void sub_1AFC979C4(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a1[1];
  v6 = *a1;
  if (v6 == -1 && v5 == 0)
  {
    goto LABEL_19;
  }

  v8 = 0;
  v9 = 1;
  if ((v6 & 0x80000000) != 0 || *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v6)
  {
LABEL_13:
    v13 = *(a1 + 1);
    if ((a3 & 0x100000000) != 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    if (v8 == a3)
    {
      v14 = v9;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return;
    }

    goto LABEL_21;
  }

  v10 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v6);
  if (v5 == -1 || v10[2] == v5)
  {
    v12 = *(*(a2 + 144) + 8 * *v10 + 32);
    v8 = *(v12 + 28);
    v9 = *(v12 + 32);
    goto LABEL_13;
  }

LABEL_19:
  v8 = 0;
  v9 = 1;
  v13 = *(a1 + 1);
  if ((a3 & 0x100000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_20:
  if ((v9 & 1) == 0)
  {
    return;
  }

LABEL_21:
  v15 = 0;
  v84 = v6 | (v5 << 32);
  v16 = MEMORY[0x1E69E7CC0];
  v81 = v13;
  do
  {
    v88 = v16;
    v79 = v15;
    v80 = v4;
    v78 = *(&unk_1F2507FB0 + v15 + 32);
    v17 = sub_1AF80E468(v78, v84, v13);
    v18 = *(v17 + 16);
    v82 = v17;
    if (v18)
    {
      v19 = (v17 + 40);
      v20 = *(v17 + 16);
      v21 = MEMORY[0x1E69E7CC0];
      do
      {
        v22 = *(v19 - 2);
        v23 = *(v19 - 1);
        v24 = *v19;

        v25 = v22 == -1 && v23 == 0;
        if (!v25 && (v22 & 0x80000000) == 0 && *(v24 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v22 && ((v26 = *(v24 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v22, v23 == -1) || *(v26 + 8) == v23) && (v27 = *(*(*(v24 + 88) + 8 * *(v26 + 6) + 32) + 16), v28 = *(v27 + 128), *(v28 + 16)) && (v29 = sub_1AF449CB8(&type metadata for GraphScriptingConfig), (v30 & 1) != 0))
        {
          v31 = *(*(v27 + 24) + 16 * *(*(v28 + 56) + 8 * v29) + 32);

          if (v31 == &type metadata for GraphScriptingConfig)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v85[0] = v21;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1AFC072B4(0, v21[2] + 1, 1);
              v21 = v85[0];
            }

            v34 = v21[2];
            v33 = v21[3];
            v35 = v34 + 1;
            if (v34 >= v33 >> 1)
            {
              sub_1AFC072B4(v33 > 1, v34 + 1, 1);
              v35 = v34 + 1;
              v21 = v85[0];
            }

            v21[2] = v35;
            v36 = &v21[2 * v34];
            *(v36 + 8) = v22;
            *(v36 + 9) = v23;
            v36[5] = v24;
          }
        }

        else
        {
        }

        v19 += 2;
        --v20;
      }

      while (v20);
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    v37 = v21[2];
    v38 = v88;
    v39 = *(v88 + 2);
    v40 = v39 + v37;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    if (v41 && v40 <= *(v38 + 3) >> 1)
    {
      if (!v21[2])
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (v39 <= v40)
      {
        v58 = v39 + v37;
      }

      else
      {
        v58 = v39;
      }

      v38 = sub_1AF4238E8(v41, v58, 1, v38);
      if (!v21[2])
      {
LABEL_78:

        v88 = v38;
        if (v18)
        {
          goto LABEL_53;
        }

        goto LABEL_79;
      }
    }

    memcpy(&v38[16 * *(v38 + 2) + 32], v21 + 4, 16 * v37);

    if (v37)
    {
      *(v38 + 2) += v37;
    }

    v88 = v38;
    if (v18)
    {
LABEL_53:
      v42 = (v82 + 40);
      v43 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v45 = *(v42 - 2);
        v44 = *(v42 - 1);
        v46 = *v42;

        if (v45 == -1 && v44 == 0)
        {
          break;
        }

        if (v45 < 0)
        {
          break;
        }

        if (*(v46 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v45)
        {
          break;
        }

        v48 = *(v46 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v45;
        if (v44 != -1 && *(v48 + 8) != v44)
        {
          break;
        }

        v49 = *(*(*(v46 + 88) + 8 * *(v48 + 6) + 32) + 16);
        v50 = *(v49 + 128);
        if (!*(v50 + 16))
        {
          break;
        }

        v51 = sub_1AF449CB8(&type metadata for GraphScriptingConfig);
        if ((v52 & 1) == 0)
        {
          break;
        }

        v53 = *(*(v49 + 24) + 16 * *(*(v50 + 56) + 8 * v51) + 32);

        if (v53 != &type metadata for GraphScriptingConfig)
        {
          goto LABEL_67;
        }

LABEL_72:
        v42 += 2;
        if (!--v18)
        {
          goto LABEL_80;
        }
      }

LABEL_67:
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v85[0] = v43;
      if ((v54 & 1) == 0)
      {
        sub_1AFC072B4(0, *(v43 + 16) + 1, 1);
        v43 = v85[0];
      }

      v56 = *(v43 + 16);
      v55 = *(v43 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_1AFC072B4(v55 > 1, v56 + 1, 1);
        v43 = v85[0];
      }

      *(v43 + 16) = v56 + 1;
      v57 = v43 + 16 * v56;
      *(v57 + 32) = v45;
      *(v57 + 36) = v44;
      *(v57 + 40) = v46;
      goto LABEL_72;
    }

LABEL_79:
    v43 = MEMORY[0x1E69E7CC0];
LABEL_80:

    v13 = v81;
    v59 = *(v81 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v59)
    {
      v60 = *(v59 + 80);
      swift_unknownObjectWeakLoadStrong();
      v59 = *(v59 + 56);
    }

    else
    {
      v60 = 0;
    }

    v4 = v80;
    v16 = v88;
    v86 = 0;
    swift_unknownObjectUnownedInit();
    v85[0] = v81;
    v86 = v59;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    LOBYTE(v87) = v60;
    sub_1AF80E7C4(v85, v78, v43, v84);
    if (v80)
    {

      sub_1AF579490(v85);
      v76 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v76 ^ 1);
      __break(1u);

      sub_1AF579490(v85);
      v77 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v77 ^ 1);
      __break(1u);
      return;
    }

    v15 = v79 + 1;
    sub_1AF579490(v85);

    if (v60)
    {
      v61 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v61 ^ 1);
    }
  }

  while (v79 != 3);
  v62 = *(v16 + 2);
  if (v62)
  {
    v83 = v62 - 1;
    for (i = (v16 + 40); ; i += 2)
    {
      v64 = *(i - 2);
      v65 = *(i - 1);
      v66 = *i;
      sub_1AF3CB570(v64 | (v65 << 32), v85);
      v67 = v85[0];
      sub_1AF487074(v85[0], v85[1]);
      v68 = 0x4030302020101uLL >> (8 * v67);
      v69 = sub_1AF80E468(v68, v84, v81);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_1AF4238E8(0, *(v69 + 16) + 1, 1, v69);
      }

      v71 = *(v69 + 16);
      v70 = *(v69 + 24);
      if (v71 >= v70 >> 1)
      {
        v69 = sub_1AF4238E8(v70 > 1, v71 + 1, 1, v69);
      }

      *(v69 + 16) = v71 + 1;
      v72 = v69 + 16 * v71;
      *(v72 + 32) = v64;
      *(v72 + 36) = v65;
      *(v72 + 40) = v66;
      v73 = *(v81 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v73)
      {
        v74 = *(v73 + 80);
        swift_unknownObjectWeakLoadStrong();
        v73 = *(v73 + 56);
      }

      else
      {
        v74 = 0;
      }

      v86 = 0;
      swift_unknownObjectUnownedInit();
      v85[0] = v81;
      v86 = v73;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      LOBYTE(v87) = v74;
      sub_1AF80E7C4(v85, v68, v69, v84);
      sub_1AF579490(v85);

      if (v74)
      {
        v75 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v75 ^ 1);
      }

      if (!v83)
      {
        break;
      }

      --v83;
    }
  }
}

uint64_t sub_1AFC981C8(uint64_t a1, uint64_t a2)
{
  v147 = *MEMORY[0x1E69E9840];
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v89 = a2;
    swift_once();
    LODWORD(a2) = v89;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v120 = qword_1ED73B840;
  v121 = v4;
  v122 = v3 >> 31;
  v123 = 1;
  v124 = 2;
  v125 = 0;

  sub_1AF7032F8(1, v113);

  v118[0] = v113[0];
  v118[1] = v113[1];
  v119 = v114;
  sub_1AF6B06C0(a1, v118, 0x200000000, v139);
  v99 = *v139;
  if (*v139)
  {
    v97 = *&v139[40];
    v5 = *(&v140 + 1);
    v6 = *(&v141 + 1);
    v143 = *&v139[8];
    v144 = *&v139[24];
    if (v142 > 0 && *(&v140 + 1))
    {
      v91 = a1;
      v105 = *(*(&v141 + 1) + 32);
      v102 = *(v141 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v130 = *&v139[32];
      *v131 = v140;
      *&v131[16] = v141;
      *&v131[32] = v142;
      v128 = *v139;
      v129 = *&v139[16];
      sub_1AF5DD298(&v128, v126);
      v7 = 0;
      v8 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      v93 = v5;
      while (1)
      {
        v106 = v8;
        v100 = v7;
        v10 = (v97 + 48 * v7);
        v12 = *v10;
        v11 = v10[1];
        v14 = *(v10 + 2);
        v13 = *(v10 + 3);
        v15 = *(v10 + 4);
        v16 = *(v10 + 5);
        if (v102)
        {
          v17 = *(v16 + 376);

          os_unfair_lock_lock(v17);
          os_unfair_lock_lock(*(v16 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v105);
        v18 = *(v6 + 64);
        v145[0] = *(v6 + 48);
        v145[1] = v18;
        v146 = *(v6 + 80);
        v19 = *(*(*(*(v16 + 40) + 16) + 32) + 16) + 1;
        *(v6 + 48) = ecs_stack_allocator_allocate(*(v6 + 32), 48 * v19, 8);
        *(v6 + 56) = v19;
        *(v6 + 72) = 0;
        *(v6 + 80) = 0;
        *(v6 + 64) = 0;
        v20 = sub_1AF64B110(&type metadata for Parent, &off_1F2529C98, v14, v13, v15, v6);
        if (v14)
        {
          if (v15)
          {
            do
            {
              v22 = *v14++;
              v21 = v22;

              if (*(v16 + 184))
              {
                goto LABEL_120;
              }

              v24 = *(*(v16 + 168) + 4 * v21);
              v25 = *(*(v23 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v24 + 8);

              v107 = *v20;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v9 = sub_1AF428540(0, *(v9 + 2) + 1, 1, v9);
              }

              v27 = *(v9 + 2);
              v26 = *(v9 + 3);
              if (v27 >= v26 >> 1)
              {
                v9 = sub_1AF428540(v26 > 1, v27 + 1, 1, v9);
              }

              *(v9 + 2) = v27 + 1;
              *&v28 = __PAIR64__(v25, v24);
              *(&v28 + 1) = v107;
              *&v9[16 * v27 + 32] = v28;
              ++v20;
            }

            while (--v15);
          }
        }

        else if (v12 != v11)
        {
          while (1)
          {

            if (*(v16 + 184))
            {
              break;
            }

            v30 = *(*(v16 + 168) + 4 * v12);
            v31 = *(*(v29 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v30 + 8);

            v108 = v20[v12];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_1AF428540(0, *(v9 + 2) + 1, 1, v9);
            }

            v33 = *(v9 + 2);
            v32 = *(v9 + 3);
            if (v33 >= v32 >> 1)
            {
              v9 = sub_1AF428540(v32 > 1, v33 + 1, 1, v9);
            }

            ++v12;
            *(v9 + 2) = v33 + 1;
            *&v34 = __PAIR64__(v31, v30);
            *(&v34 + 1) = v108;
            *&v9[16 * v33 + 32] = v34;
            if (v11 == v12)
            {
              goto LABEL_24;
            }
          }

LABEL_120:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

LABEL_24:
        v115 = v99;
        v116 = v143;
        v117 = v144;
        v8 = v106;
        sub_1AF630994(v6, &v115, v145);
        sub_1AF62D29C(v16);
        ecs_stack_allocator_pop_snapshot(v105);
        if (v102)
        {
          os_unfair_lock_unlock(*(v16 + 344));
          os_unfair_lock_unlock(*(v16 + 376));
        }

        v7 = v100 + 1;
        if (v100 + 1 == v93)
        {
          v36 = MEMORY[0x1E69E6720];
          sub_1AFCB9F58(v139, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
          sub_1AFCB9F58(v139, &qword_1ED725EA0, &type metadata for QueryResult, v36, sub_1AFCBA88C);
          a1 = v91;
          v35 = *(v9 + 2);
          if (!v35)
          {
            goto LABEL_119;
          }

          goto LABEL_37;
        }
      }
    }

    sub_1AFCB9F58(v139, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v9 = MEMORY[0x1E69E7CC0];
  v35 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v35)
  {
    goto LABEL_119;
  }

LABEL_37:
  v109 = v35;
  v37 = 0;
  v38 = v9 + 32;
  while (2)
  {
    v39 = &v38[16 * v37];
    v40 = *v39;
    v41 = *(v39 + 1);
    v42 = *(v39 + 1);
    if (v40 == -1 && v41 == 0)
    {
      goto LABEL_40;
    }

    v44 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v44)
    {
      v45 = *(v44 + 80);
      swift_unknownObjectWeakLoadStrong();
      v44 = *(v44 + 56);
    }

    else
    {
      v45 = 0;
    }

    v111 = 0;
    swift_unknownObjectUnownedInit();
    v110[0] = a1;
    v111 = v44;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v112 = v45;
    if (v40 == -1)
    {
      if (v41)
      {
        swift_unownedRetainStrong();

        swift_unownedRetainStrong();
        goto LABEL_63;
      }

      sub_1AF579490(v110);
      if (v45)
      {
        v38 = v9 + 32;
        v35 = v109;
        goto LABEL_82;
      }

      goto LABEL_39;
    }

    swift_unownedRetainStrong();

    swift_unownedRetainStrong();
    if ((v40 & 0x80000000) != 0)
    {
      goto LABEL_63;
    }

    if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v40)
    {
      goto LABEL_63;
    }

    v46 = (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v40);
    if (v41 != -1 && v46[2] != v41)
    {
      goto LABEL_63;
    }

    v47 = *(v46 + 2);
    v48 = *(*(a1 + 144) + 8 * *v46 + 32);
    if (*(v48 + 232) > v47 || *(v48 + 240) <= v47)
    {
      goto LABEL_63;
    }

    v98 = *(v46 + 2);
    v49 = **(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    v50 = *(v48 + 344);

    os_unfair_lock_lock(v50);
    v103 = v49;
    ecs_stack_allocator_push_snapshot(*(v49 + 32));
    v51 = *(*(v48 + 40) + 16);
    v52 = *(v51 + 128);
    if (!*(v52 + 16) || (v53 = sub_1AF449CB8(&type metadata for Parent), (v54 & 1) == 0) || *(*(v51 + 24) + 16 * *(*(v52 + 56) + 8 * v53) + 32) != &type metadata for Parent)
    {

      goto LABEL_59;
    }

    v92 = a1;
    v137[0] = &type metadata for Parent;
    v137[1] = &off_1F2529C98;
    v138 = 1;
    v66 = *(v103 + 104);
    v90 = (v103 + 104);
    v101 = *(v66 + 16);
    if (!v101)
    {

LABEL_113:
      v77 = *(v48 + 240) - *(v48 + 232);
      v78 = ecs_stack_allocator_allocate(*(v103 + 32), 8 * v77, 8);
      *v78 = v98;
      sub_1AF63515C(v137, &v128);
      *v131 = v78;
      *&v131[8] = v77;
      *&v131[16] = 1;
      v79 = *(v103 + 104);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v103 + 104) = v79;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v79 = sub_1AF420EA0(0, v79[2] + 1, 1, v79);
        *v90 = v79;
      }

      v82 = v79[2];
      v81 = v79[3];
      if (v82 >= v81 >> 1)
      {
        *v90 = sub_1AF420EA0(v81 > 1, v82 + 1, 1, v79);
      }

      sub_1AF635250(v137);
      v83 = *v90;
      *(v83 + 16) = v82 + 1;
      v84 = v83 + 72 * v82;
      *(v84 + 32) = v128;
      v86 = v130;
      v85 = *v131;
      v87 = v129;
      *(v84 + 96) = *&v131[16];
      *(v84 + 64) = v86;
      *(v84 + 80) = v85;
      *(v84 + 48) = v87;
      *v90 = v83;
      goto LABEL_118;
    }

    v67 = v66 + 32;

    v68 = 0;
    while (1)
    {
      sub_1AF6350F8(v67, v126);
      sub_1AF63515C(v126, &v128);
      sub_1AF63515C(v137, v131);
      if (BYTE8(v130) <= 2u)
      {
        if (!BYTE8(v130))
        {
          sub_1AFCB9FB8(v126, sub_1AF43A540);
          sub_1AF63515C(&v128, v136);
          if (v131[40])
          {
            goto LABEL_86;
          }

          goto LABEL_99;
        }

        if (BYTE8(v130) == 1)
        {
          sub_1AFCB9FB8(v126, sub_1AF43A540);
          sub_1AF63515C(&v128, v136);
          if (v131[40] != 1)
          {
            goto LABEL_86;
          }

LABEL_99:
          v95 = *&v136[0];
          v70 = *v131;
          sub_1AF635250(&v128);
          if (v95 == v70)
          {
            goto LABEL_109;
          }

          goto LABEL_87;
        }

        sub_1AF63515C(&v128, v136);
        if (v131[40] != 2)
        {
LABEL_85:
          sub_1AFCB9FB8(v126, sub_1AF43A540);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v136);
LABEL_86:
          sub_1AFCB9F58(&v128, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
          goto LABEL_87;
        }

        goto LABEL_104;
      }

      if (BYTE8(v130) == 3)
      {
        sub_1AF63515C(&v128, v136);
        if (v131[40] != 3)
        {
          goto LABEL_85;
        }

LABEL_104:
        sub_1AF616568(v136, v133);
        sub_1AF616568(v131, v132);
        v71 = v134;
        v96 = v135;
        sub_1AF441150(v133, v134);
        LOBYTE(v71) = sub_1AF640C98(v132, v71, v96);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v132);
        sub_1AFCB9FB8(v126, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v133);
        sub_1AF635250(&v128);
        if (v71)
        {
          goto LABEL_109;
        }

        goto LABEL_87;
      }

      if (BYTE8(v130) != 4)
      {
        break;
      }

      sub_1AFCB9FB8(v126, sub_1AF43A540);
      sub_1AF63515C(&v128, v136);
      if (v131[40] != 4)
      {
        goto LABEL_86;
      }

      v94 = LOBYTE(v136[0]);
      v69 = v131[0];
      sub_1AF635250(&v128);
      if (v94 == v69)
      {
        goto LABEL_109;
      }

LABEL_87:
      ++v68;
      v67 += 72;
      if (v101 == v68)
      {
        goto LABEL_113;
      }
    }

    sub_1AFCB9FB8(v126, sub_1AF43A540);
    if (v131[40] != 5)
    {
      goto LABEL_86;
    }

    v72 = vorrq_s8(*&v131[8], *&v131[24]);
    if (*&vorr_s8(*v72.i8, *&vextq_s8(v72, v72, 8uLL)) | *v131)
    {
      goto LABEL_86;
    }

    sub_1AF635250(&v128);
LABEL_109:
    v74 = sub_1AFBFCA08(&v128);
    v75 = *(v73 + 48);
    if (v75)
    {
      v76 = *(v73 + 64);
      *(v75 + 8 * v76) = v98;
      *(v73 + 64) = v76 + 1;
    }

    (v74)(&v128, 0);
    sub_1AF635250(v137);
LABEL_118:
    a1 = v92;
LABEL_59:
    sub_1AF62D29C(v48);

    ecs_stack_allocator_pop_snapshot(*(v103 + 32));
    os_unfair_lock_unlock(*(v48 + 344));

LABEL_63:

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    if (!v45)
    {
      sub_1AF579490(v110);
LABEL_39:

      v38 = v9 + 32;
      v35 = v109;
      goto LABEL_40;
    }

    swift_unownedRetainStrong();
    *&v128 = __PAIR64__(v41, v40);
    *(&v128 + 1) = a1;
    *&v129 = &type metadata for Parent;
    *(&v129 + 1) = &off_1F2529C98;
    v131[8] = 13;
    v55 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    if (!v55)
    {
      goto LABEL_79;
    }

    v35 = v109;
    if ((*(v55 + 81) & 1) == 0)
    {

      sub_1AF57955C(&v128);
      goto LABEL_81;
    }

    if (!*(v55 + 24) || !swift_weakLoadStrong())
    {
LABEL_79:

      sub_1AF57955C(&v128);
      goto LABEL_80;
    }

    swift_unknownObjectRetain();

    sub_1AF6CAF24(&v128, v126);
    v56 = *(v55 + 16);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    *(v55 + 16) = v56;
    if ((v57 & 1) == 0)
    {
      v56 = sub_1AF4221C8(0, *(v56 + 2) + 1, 1, v56);
      *(v55 + 16) = v56;
    }

    v59 = *(v56 + 2);
    v58 = *(v56 + 3);
    v104 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      *(v55 + 16) = sub_1AF4221C8(v58 > 1, v104, 1, v56);
    }

    swift_unknownObjectRelease();
    sub_1AF57955C(&v128);
    v60 = *(v55 + 16);
    *(v60 + 16) = v104;
    v61 = (v60 + (v59 << 6));
    v62 = v126[0];
    v63 = v126[1];
    v64 = v127[0];
    *(v61 + 73) = *(v127 + 9);
    v61[3] = v63;
    v61[4] = v64;
    v61[2] = v62;
    *(v55 + 16) = v60;

LABEL_80:
    v35 = v109;
LABEL_81:
    sub_1AF579490(v110);
    v38 = v9 + 32;
LABEL_82:
    v65 = [objc_opt_self() immediateMode];
    sub_1AF6C5E30(v65 ^ 1);

LABEL_40:
    ++v37;
    sub_1AF5ABF9C(v42, a1, v40 | (v41 << 32), a1);
    if (v37 != v35)
    {
      continue;
    }

    break;
  }

LABEL_119:
  sub_1AFCBA0DC(v113, &qword_1EB643C78, &type metadata for Parent, &off_1F2529C98);
}

uint64_t sub_1AFC99074(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v269 = a2;
    swift_once();
    LODWORD(a2) = v269;
  }

  v4 = qword_1ED73B840;
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  v411 = qword_1ED73B840;
  LODWORD(v278) = v5;
  v412 = v5;
  v277 = v3 >> 31;
  v413 = v3 >> 31;
  v414 = 1;
  v415 = 2;
  v416 = 0;

  sub_1AF70321C(1, v300);
  v279 = v4;

  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0);
  v276 = v6;
  v7 = swift_allocObject();
  v274 = xmmword_1AFE431C0;
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = &type metadata for VFXAssetTag;
  *(v7 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v7, v301);
  sub_1AFCBA0DC(v300, &qword_1ED723D88, &type metadata for TextureFileAsset, &off_1F2544090);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v373[0] = v301[0];
  v373[1] = v301[1];
  v374 = v302;
  v275 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(a1, v373, 0x200000000, v303);
  v271 = a1;
  if (*&v303[0])
  {
    if (v307 >= 1 && v305)
    {
      v288 = 0;
      v8 = v304;
      v9 = v304 + 48 * v305;
      v272 = v306;
      v270 = v9;
      do
      {
        v10 = *(v8 + 40);
        v11 = *(v10 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v11);
        os_unfair_lock_lock(*(v10 + 344));
        v12 = *(v10 + 24);

        v355 = 0;
        v353 = 0u;
        v354 = 0u;
        v345 = 0;
        v343 = 0u;
        v344 = 0u;
        v13 = sub_1AF65A4B4(v12, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v353, &v343);

        sub_1AFCB9FB8(&v343, sub_1AF5C4448);
        sub_1AFCB9FB8(&v353, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v13);
        }

        else
        {
          v283 = v8;
          v15 = *(v10 + 232);
          v14 = *(v10 + 240);
          v281 = *(v10 + 120);
          v290 = *(v10 + 28);
          v289 = *(v10 + 32);
          v16 = *(v10 + 16);
          v17 = *(v10 + 40);
          v18 = v17[200];
          v287 = *(*(v16 + 88) + 8 * v13 + 32);

          if ((v18 & 1) != 0 || *(v287 + 200) == 1)
          {
            *(v16 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v17 = *(v10 + 40);
          }

          v19 = v288;
          if (v17[212])
          {
            v20 = 0;
          }

          else
          {
            v20 = *(v287 + 212);
          }

          v21 = v14;
          LODWORD(v282) = v17[208];
          v286 = *(v10 + 128);
          v22 = *(v10 + 256);
          sub_1AF5B4FCC(v17, v15, v21, 0, v10);
          v23 = v19;
          v284 = *(v10 + 256);
          v285 = v22;
          v24 = v284 - v22;
          if (v284 == v22)
          {
            v25 = 0;
          }

          else
          {
            v25 = v22;
          }

          *&v343 = v25;
          v26 = *(*(v10 + 40) + 24);
          v27 = *(v26 + 16);
          v288 = v23;
          if (v27)
          {
            v28 = v26 + 32;
            v273 = v26;

            v29 = 0;
            v280 = v20;
            do
            {
              v30 = v28 + 40 * v29;
              if ((*(v30 + 32) & 1) == 0)
              {
                v31 = *(v287 + 24);
                v32 = *(v31 + 16);
                if (v32)
                {
                  v33 = (v31 + 32);
                  while (*v33 != *v30)
                  {
                    v33 += 5;
                    if (!--v32)
                    {
                      goto LABEL_24;
                    }
                  }
                }

                else
                {
LABEL_24:
                  sub_1AF640BC8();
                }
              }

              ++v29;
            }

            while (v29 != v27);

            v34 = v280;
          }

          else
          {
            v34 = v20;
          }

          v35 = v272;
          if (*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v10 + 72) * v24);
          }

          if (*(v10 + 184))
          {
            v36 = 0;
          }

          else
          {
            v36 = *(v10 + 168);
          }

          *&v335[0] = 0;

          MEMORY[0x1EEE9AC00](&v270, v37);
          v38 = v290;
          *(&v270 - 28) = v290;
          v39 = v289;
          *(&v270 - 108) = v289;
          v40 = v287;
          *(&v270 - 13) = v10;
          *(&v270 - 12) = v40;
          *(&v270 - 11) = 0u;
          *(&v270 - 9) = 0u;
          *(&v270 - 7) = &v343;
          *(&v270 - 6) = v286;
          *(&v270 - 5) = v335;
          *(&v270 - 32) = v282;
          *(&v270 - 7) = v13;
          *(&v270 - 24) = v34;
          *(&v270 - 2) = v35;
          *&v354 = v36;
          DWORD2(v354) = -1;
          v355 = v285;
          v356 = v284;
          v357 = v285;
          v358 = v284;
          *&v353 = v285;
          *(&v353 + 1) = v284;
          if (v24 >= 1)
          {
            v41 = v281;
            do
            {
              LOBYTE(v327[0]) = v39;
              sub_1AF6248A8(v13, v38 | (v39 << 32), v41, v16, &v353, sub_1AF5C5E08);
              v39 = v289;
              v38 = v290;
            }

            while ((*(&v353 + 1) - v353) > 0);
          }

          v42 = *(v10 + 192);
          v8 = v283;
          v9 = v270;
          if (v42)
          {
            v43 = *(v10 + 208);
            v290 = *(v10 + 216);
            v45 = v284;
            v44 = v285;
            sub_1AF75D364(v285, v284, v42);
            sub_1AF75D364(v44, v45, v43);
          }
        }

        v8 += 48;
        os_unfair_lock_unlock(*(v10 + 344));
        os_unfair_lock_unlock(*(v10 + 376));
      }

      while (v8 != v9);
    }

    else
    {
      v288 = 0;
    }

    sub_1AFCB9F58(v303, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    a1 = v271;
  }

  else
  {
    v288 = 0;
  }

  v405 = v279;
  v406 = v278;
  v407 = v277;
  v408 = 1;
  v409 = 2;
  v410 = 0;

  sub_1AF702E88(1, v308);

  v46 = swift_allocObject();
  *(v46 + 16) = v274;
  *(v46 + 32) = &type metadata for VFXAssetTag;
  *(v46 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v46, v309);
  sub_1AFCBA0DC(v308, &qword_1EB643CC0, &type metadata for SceneFileAsset, &off_1F252BBF8);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v371[0] = v309[0];
  v371[1] = v309[1];
  v372 = v310;
  sub_1AF6B06C0(a1, v371, 0x200000000, v311);
  if (*&v311[0])
  {
    if (v315 >= 1 && v313)
    {
      v47 = v312;
      v283 = v314;
      v48 = v312 + 48 * v313;
      v270 = v48;
      do
      {
        v49 = *(v47 + 40);
        v50 = *(v49 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v50);
        os_unfair_lock_lock(*(v49 + 344));
        v51 = *(v49 + 24);

        v355 = 0;
        v353 = 0u;
        v354 = 0u;
        v345 = 0;
        v343 = 0u;
        v344 = 0u;
        v52 = sub_1AF65A4B4(v51, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v353, &v343);

        sub_1AFCB9FB8(&v343, sub_1AF5C4448);
        sub_1AFCB9FB8(&v353, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v52);
        }

        else
        {
          v282 = v47;
          v53 = *(v49 + 232);
          v54 = *(v49 + 240);
          LODWORD(v273) = *(v49 + 120);
          v290 = *(v49 + 28);
          v289 = *(v49 + 32);
          v55 = *(v49 + 16);
          v56 = *(v49 + 40);
          v57 = v56[200];
          v287 = *(*(v55 + 88) + 8 * v52 + 32);

          if ((v57 & 1) != 0 || *(v287 + 200) == 1)
          {
            *(v55 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v56 = *(v49 + 40);
          }

          v58 = v288;
          if (v56[212])
          {
            v281 = 0;
          }

          else
          {
            v281 = *(v287 + 212);
          }

          v280 = v56[208];
          v286 = *(v49 + 128);
          v59 = *(v49 + 256);
          sub_1AF5B4FCC(v56, v53, v54, 0, v49);
          v284 = *(v49 + 256);
          v285 = v59;
          v60 = v284 - v59;
          if (v284 == v59)
          {
            v61 = 0;
          }

          else
          {
            v61 = v59;
          }

          *&v343 = v61;
          v62 = *(*(v49 + 40) + 24);
          v63 = *(v62 + 16);
          v288 = v58;
          if (v63)
          {
            v64 = v62 + 32;
            v272 = v62;

            v65 = 0;
            v66 = v60;
            do
            {
              v67 = v64 + 40 * v65;
              if ((*(v67 + 32) & 1) == 0)
              {
                v68 = *(v287 + 24);
                v69 = *(v68 + 16);
                if (v69)
                {
                  v70 = (v68 + 32);
                  while (*v70 != *v67)
                  {
                    v70 += 5;
                    if (!--v69)
                    {
                      goto LABEL_66;
                    }
                  }
                }

                else
                {
LABEL_66:
                  sub_1AF640BC8();
                }
              }

              ++v65;
            }

            while (v65 != v63);
          }

          else
          {
            v66 = v284 - v59;
          }

          if (*(v55 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v55 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v49 + 72) * v66);
          }

          v71 = v66;
          if (*(v49 + 184))
          {
            v72 = 0;
          }

          else
          {
            v72 = *(v49 + 168);
          }

          *&v335[0] = 0;

          MEMORY[0x1EEE9AC00](v73, v74);
          v75 = v290;
          *(&v270 - 28) = v290;
          v76 = v289;
          *(&v270 - 108) = v289;
          v77 = v287;
          *(&v270 - 13) = v49;
          *(&v270 - 12) = v77;
          *(&v270 - 11) = 0u;
          *(&v270 - 9) = 0u;
          *(&v270 - 7) = &v343;
          *(&v270 - 6) = v286;
          *(&v270 - 5) = v335;
          *(&v270 - 32) = v280;
          *(&v270 - 7) = v52;
          *(&v270 - 24) = v281;
          *(&v270 - 2) = v283;
          DWORD2(v354) = -1;
          v355 = v285;
          v356 = v284;
          v357 = v285;
          v358 = v284;
          *&v353 = v285;
          *(&v353 + 1) = v284;
          *&v354 = v72;
          if (v71 >= 1)
          {
            v78 = v273;
            do
            {
              LOBYTE(v327[0]) = v76;
              sub_1AF6248A8(v52, v75 | (v76 << 32), v78, v55, &v353, sub_1AF5C5E08);
              v76 = v289;
              v75 = v290;
            }

            while ((*(&v353 + 1) - v353) > 0);
          }

          v79 = *(v49 + 192);
          v47 = v282;
          if (v79)
          {
            v80 = *(v49 + 208);
            v82 = v284;
            v81 = v285;
            sub_1AF75D364(v285, v284, v79);
            sub_1AF75D364(v81, v82, v80);
          }

          v48 = v270;
        }

        v47 += 48;
        os_unfair_lock_unlock(*(v49 + 344));
        os_unfair_lock_unlock(*(v49 + 376));
      }

      while (v47 != v48);
    }

    sub_1AFCB9F58(v311, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    a1 = v271;
  }

  v399 = v279;
  v400 = v278;
  v401 = v277;
  v402 = 1;
  v403 = 2;
  v404 = 0;

  sub_1AF702E9C(1, v316);

  v83 = swift_allocObject();
  *(v83 + 16) = v274;
  *(v83 + 32) = &type metadata for VFXAssetTag;
  *(v83 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v83, v317);
  sub_1AFCBA0DC(v316, &qword_1EB643CC8, &type metadata for MeshFileAsset, &off_1F252BCD0);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v369[0] = v317[0];
  v369[1] = v317[1];
  v370 = v318;
  sub_1AF6B06C0(a1, v369, 0x200000000, v319);
  if (*&v319[0])
  {
    if (v323 >= 1 && v321)
    {
      v84 = v320;
      v283 = v322;
      v85 = v320 + 48 * v321;
      v270 = v85;
      do
      {
        v86 = *(v84 + 40);
        v87 = *(v86 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v87);
        os_unfair_lock_lock(*(v86 + 344));
        v88 = *(v86 + 24);

        v355 = 0;
        v353 = 0u;
        v354 = 0u;
        v345 = 0;
        v343 = 0u;
        v344 = 0u;
        v89 = sub_1AF65A4B4(v88, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v353, &v343);

        sub_1AFCB9FB8(&v343, sub_1AF5C4448);
        sub_1AFCB9FB8(&v353, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v89);
        }

        else
        {
          v282 = v84;
          v90 = *(v86 + 232);
          v91 = *(v86 + 240);
          LODWORD(v273) = *(v86 + 120);
          v290 = *(v86 + 28);
          v289 = *(v86 + 32);
          v92 = *(v86 + 16);
          v93 = *(v86 + 40);
          v94 = v93[200];
          v287 = *(*(v92 + 88) + 8 * v89 + 32);

          if ((v94 & 1) != 0 || *(v287 + 200) == 1)
          {
            *(v92 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v93 = *(v86 + 40);
          }

          v95 = v288;
          if (v93[212])
          {
            v281 = 0;
          }

          else
          {
            v281 = *(v287 + 212);
          }

          v280 = v93[208];
          v286 = *(v86 + 128);
          v96 = *(v86 + 256);
          sub_1AF5B4FCC(v93, v90, v91, 0, v86);
          v284 = *(v86 + 256);
          v285 = v96;
          v97 = v284 - v96;
          if (v284 == v96)
          {
            v98 = 0;
          }

          else
          {
            v98 = v96;
          }

          *&v343 = v98;
          v99 = *(*(v86 + 40) + 24);
          v100 = *(v99 + 16);
          v288 = v95;
          if (v100)
          {
            v101 = v99 + 32;
            v272 = v99;

            v102 = 0;
            v103 = v97;
            do
            {
              v104 = v101 + 40 * v102;
              if ((*(v104 + 32) & 1) == 0)
              {
                v105 = *(v287 + 24);
                v106 = *(v105 + 16);
                if (v106)
                {
                  v107 = (v105 + 32);
                  while (*v107 != *v104)
                  {
                    v107 += 5;
                    if (!--v106)
                    {
                      goto LABEL_106;
                    }
                  }
                }

                else
                {
LABEL_106:
                  sub_1AF640BC8();
                }
              }

              ++v102;
            }

            while (v102 != v100);
          }

          else
          {
            v103 = v284 - v96;
          }

          if (*(v92 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v92 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v86 + 72) * v103);
          }

          v108 = v103;
          if (*(v86 + 184))
          {
            v109 = 0;
          }

          else
          {
            v109 = *(v86 + 168);
          }

          *&v335[0] = 0;

          MEMORY[0x1EEE9AC00](v110, v111);
          v112 = v290;
          *(&v270 - 28) = v290;
          v113 = v289;
          *(&v270 - 108) = v289;
          v114 = v287;
          *(&v270 - 13) = v86;
          *(&v270 - 12) = v114;
          *(&v270 - 11) = 0u;
          *(&v270 - 9) = 0u;
          *(&v270 - 7) = &v343;
          *(&v270 - 6) = v286;
          *(&v270 - 5) = v335;
          *(&v270 - 32) = v280;
          *(&v270 - 7) = v89;
          *(&v270 - 24) = v281;
          *(&v270 - 2) = v283;
          DWORD2(v354) = -1;
          v355 = v285;
          v356 = v284;
          v357 = v285;
          v358 = v284;
          *&v353 = v285;
          *(&v353 + 1) = v284;
          *&v354 = v109;
          if (v108 >= 1)
          {
            v115 = v273;
            do
            {
              LOBYTE(v327[0]) = v113;
              sub_1AF6248A8(v89, v112 | (v113 << 32), v115, v92, &v353, sub_1AF5C5E08);
              v113 = v289;
              v112 = v290;
            }

            while ((*(&v353 + 1) - v353) > 0);
          }

          v116 = *(v86 + 192);
          v84 = v282;
          if (v116)
          {
            v117 = *(v86 + 208);
            v119 = v284;
            v118 = v285;
            sub_1AF75D364(v285, v284, v116);
            sub_1AF75D364(v118, v119, v117);
          }

          v85 = v270;
        }

        v84 += 48;
        os_unfair_lock_unlock(*(v86 + 344));
        os_unfair_lock_unlock(*(v86 + 376));
      }

      while (v84 != v85);
    }

    sub_1AFCB9F58(v319, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    a1 = v271;
  }

  v393 = v279;
  v394 = v278;
  v395 = v277;
  v396 = 1;
  v397 = 2;
  v398 = 0;

  sub_1AF7033E0(1, v324);

  v120 = swift_allocObject();
  *(v120 + 16) = v274;
  *(v120 + 32) = &type metadata for VFXAssetTag;
  *(v120 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v120, v325);
  sub_1AFCBA0DC(v324, &qword_1EB643CA0, &type metadata for PointCacheGenerator, &off_1F2567FB0);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v367[0] = v325[0];
  v367[1] = v325[1];
  v368 = v326;
  sub_1AF6B06C0(a1, v367, 0x200000000, v327);
  if (*&v327[0])
  {
    if (v331 >= 1 && v329)
    {
      v121 = v328;
      v283 = v330;
      v122 = v328 + 48 * v329;
      v270 = v122;
      do
      {
        v123 = *(v121 + 40);
        v124 = *(v123 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v124);
        os_unfair_lock_lock(*(v123 + 344));
        v125 = *(v123 + 24);

        v355 = 0;
        v353 = 0u;
        v354 = 0u;
        v345 = 0;
        v343 = 0u;
        v344 = 0u;
        v126 = sub_1AF65A4B4(v125, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v353, &v343);

        sub_1AFCB9FB8(&v343, sub_1AF5C4448);
        sub_1AFCB9FB8(&v353, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v126);
        }

        else
        {
          v282 = v121;
          v127 = *(v123 + 232);
          v128 = *(v123 + 240);
          LODWORD(v273) = *(v123 + 120);
          v290 = *(v123 + 28);
          v289 = *(v123 + 32);
          v129 = *(v123 + 16);
          v130 = *(v123 + 40);
          v131 = v130[200];
          v287 = *(*(v129 + 88) + 8 * v126 + 32);

          if ((v131 & 1) != 0 || *(v287 + 200) == 1)
          {
            *(v129 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v130 = *(v123 + 40);
          }

          v132 = v288;
          if (v130[212])
          {
            v281 = 0;
          }

          else
          {
            v281 = *(v287 + 212);
          }

          v280 = v130[208];
          v286 = *(v123 + 128);
          v133 = *(v123 + 256);
          sub_1AF5B4FCC(v130, v127, v128, 0, v123);
          v284 = *(v123 + 256);
          v285 = v133;
          v134 = v284 - v133;
          if (v284 == v133)
          {
            v135 = 0;
          }

          else
          {
            v135 = v133;
          }

          *&v343 = v135;
          v136 = *(*(v123 + 40) + 24);
          v137 = *(v136 + 16);
          v288 = v132;
          if (v137)
          {
            v138 = v136 + 32;
            v272 = v136;

            v139 = 0;
            v140 = v134;
            do
            {
              v141 = v138 + 40 * v139;
              if ((*(v141 + 32) & 1) == 0)
              {
                v142 = *(v287 + 24);
                v143 = *(v142 + 16);
                if (v143)
                {
                  v144 = (v142 + 32);
                  while (*v144 != *v141)
                  {
                    v144 += 5;
                    if (!--v143)
                    {
                      goto LABEL_146;
                    }
                  }
                }

                else
                {
LABEL_146:
                  sub_1AF640BC8();
                }
              }

              ++v139;
            }

            while (v139 != v137);
          }

          else
          {
            v140 = v284 - v133;
          }

          if (*(v129 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v129 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v123 + 72) * v140);
          }

          v145 = v140;
          if (*(v123 + 184))
          {
            v146 = 0;
          }

          else
          {
            v146 = *(v123 + 168);
          }

          *&v335[0] = 0;

          MEMORY[0x1EEE9AC00](v147, v148);
          v149 = v290;
          *(&v270 - 28) = v290;
          v150 = v289;
          *(&v270 - 108) = v289;
          v151 = v287;
          *(&v270 - 13) = v123;
          *(&v270 - 12) = v151;
          *(&v270 - 11) = 0u;
          *(&v270 - 9) = 0u;
          *(&v270 - 7) = &v343;
          *(&v270 - 6) = v286;
          *(&v270 - 5) = v335;
          *(&v270 - 32) = v280;
          *(&v270 - 7) = v126;
          *(&v270 - 24) = v281;
          *(&v270 - 2) = v283;
          DWORD2(v354) = -1;
          v355 = v285;
          v356 = v284;
          v357 = v285;
          v358 = v284;
          *&v353 = v285;
          *(&v353 + 1) = v284;
          *&v354 = v146;
          if (v145 >= 1)
          {
            v152 = v273;
            do
            {
              LOBYTE(v292) = v150;
              sub_1AF6248A8(v126, v149 | (v150 << 32), v152, v129, &v353, sub_1AF5C5E08);
              v150 = v289;
              v149 = v290;
            }

            while ((*(&v353 + 1) - v353) > 0);
          }

          v153 = *(v123 + 192);
          v121 = v282;
          if (v153)
          {
            v154 = *(v123 + 208);
            v156 = v284;
            v155 = v285;
            sub_1AF75D364(v285, v284, v153);
            sub_1AF75D364(v155, v156, v154);
          }

          v122 = v270;
        }

        v121 += 48;
        os_unfair_lock_unlock(*(v123 + 344));
        os_unfair_lock_unlock(*(v123 + 376));
      }

      while (v121 != v122);
    }

    sub_1AFCB9F58(v327, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    a1 = v271;
  }

  v387 = v279;
  v388 = v278;
  v389 = v277;
  v390 = 1;
  v391 = 2;
  v392 = 0;

  sub_1AF704C90(1, v332);

  v157 = swift_allocObject();
  *(v157 + 16) = v274;
  *(v157 + 32) = &type metadata for VFXAssetTag;
  *(v157 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v157, v333);
  sub_1AFCBA0DC(v332, &qword_1EB643CD0, &type metadata for PointCacheFileAsset, &off_1F2568060);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v365[0] = v333[0];
  v365[1] = v333[1];
  v366 = v334;
  sub_1AF6B06C0(a1, v365, 0x200000000, v335);
  if (*&v335[0])
  {
    if (v339 >= 1 && v337)
    {
      v158 = v336;
      v283 = v338;
      v159 = v336 + 48 * v337;
      v270 = v159;
      do
      {
        v160 = *(v158 + 40);
        v161 = *(v160 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v161);
        os_unfair_lock_lock(*(v160 + 344));
        v162 = *(v160 + 24);

        v355 = 0;
        v353 = 0u;
        v354 = 0u;
        v345 = 0;
        v343 = 0u;
        v344 = 0u;
        v163 = sub_1AF65A4B4(v162, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v353, &v343);

        sub_1AFCB9FB8(&v343, sub_1AF5C4448);
        sub_1AFCB9FB8(&v353, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v163);
        }

        else
        {
          v282 = v158;
          v164 = *(v160 + 232);
          v165 = *(v160 + 240);
          LODWORD(v273) = *(v160 + 120);
          v290 = *(v160 + 28);
          v289 = *(v160 + 32);
          v166 = *(v160 + 16);
          v167 = *(v160 + 40);
          v168 = v167[200];
          v287 = *(*(v166 + 88) + 8 * v163 + 32);

          if ((v168 & 1) != 0 || *(v287 + 200) == 1)
          {
            *(v166 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v167 = *(v160 + 40);
          }

          v169 = v288;
          if (v167[212])
          {
            v281 = 0;
          }

          else
          {
            v281 = *(v287 + 212);
          }

          v280 = v167[208];
          v286 = *(v160 + 128);
          v170 = *(v160 + 256);
          sub_1AF5B4FCC(v167, v164, v165, 0, v160);
          v284 = *(v160 + 256);
          v285 = v170;
          v171 = v284 - v170;
          if (v284 == v170)
          {
            v172 = 0;
          }

          else
          {
            v172 = v170;
          }

          *&v343 = v172;
          v173 = *(*(v160 + 40) + 24);
          v174 = *(v173 + 16);
          v288 = v169;
          if (v174)
          {
            v175 = v173 + 32;
            v272 = v173;

            v176 = 0;
            v177 = v171;
            do
            {
              v178 = v175 + 40 * v176;
              if ((*(v178 + 32) & 1) == 0)
              {
                v179 = *(v287 + 24);
                v180 = *(v179 + 16);
                if (v180)
                {
                  v181 = (v179 + 32);
                  while (*v181 != *v178)
                  {
                    v181 += 5;
                    if (!--v180)
                    {
                      goto LABEL_186;
                    }
                  }
                }

                else
                {
LABEL_186:
                  sub_1AF640BC8();
                }
              }

              ++v176;
            }

            while (v176 != v174);
          }

          else
          {
            v177 = v284 - v170;
          }

          if (*(v166 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v166 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v160 + 72) * v177);
          }

          v182 = v177;
          if (*(v160 + 184))
          {
            v183 = 0;
          }

          else
          {
            v183 = *(v160 + 168);
          }

          *&v292 = 0;

          MEMORY[0x1EEE9AC00](v184, v185);
          v186 = v290;
          *(&v270 - 28) = v290;
          v187 = v289;
          *(&v270 - 108) = v289;
          v188 = v287;
          *(&v270 - 13) = v160;
          *(&v270 - 12) = v188;
          *(&v270 - 11) = 0u;
          *(&v270 - 9) = 0u;
          *(&v270 - 7) = &v343;
          *(&v270 - 6) = v286;
          *(&v270 - 5) = &v292;
          *(&v270 - 32) = v280;
          *(&v270 - 7) = v163;
          *(&v270 - 24) = v281;
          *(&v270 - 2) = v283;
          DWORD2(v354) = -1;
          v355 = v285;
          v356 = v284;
          v357 = v285;
          v358 = v284;
          *&v353 = v285;
          *(&v353 + 1) = v284;
          *&v354 = v183;
          if (v182 >= 1)
          {
            v189 = v273;
            do
            {
              LOBYTE(v381) = v187;
              sub_1AF6248A8(v163, v186 | (v187 << 32), v189, v166, &v353, sub_1AF5C5E08);
              v187 = v289;
              v186 = v290;
            }

            while ((*(&v353 + 1) - v353) > 0);
          }

          v190 = *(v160 + 192);
          v158 = v282;
          if (v190)
          {
            v191 = *(v160 + 208);
            v193 = v284;
            v192 = v285;
            sub_1AF75D364(v285, v284, v190);
            sub_1AF75D364(v192, v193, v191);
          }

          v159 = v270;
        }

        v158 += 48;
        os_unfair_lock_unlock(*(v160 + 344));
        os_unfair_lock_unlock(*(v160 + 376));
      }

      while (v158 != v159);
    }

    sub_1AFCB9F58(v335, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    a1 = v271;
  }

  v381 = v279;
  v382 = v278;
  v383 = v277;
  v384 = 1;
  v385 = 2;
  v386 = 0;

  sub_1AF703280(1, v340);

  v194 = swift_allocObject();
  *(v194 + 16) = v274;
  *(v194 + 32) = &type metadata for VFXAssetTag;
  *(v194 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v194, v341);
  sub_1AFCBA0DC(v340, &qword_1ED723D18, &type metadata for TextureShaderAsset, &off_1F2543F30);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v363[0] = v341[0];
  v363[1] = v341[1];
  v364 = v342;
  sub_1AF6B06C0(a1, v363, 0x200000000, &v343);
  if (v343)
  {
    if (v349 >= 1 && v347)
    {
      v195 = v346;
      v283 = v348;
      v196 = v346 + 48 * v347;
      v270 = v196;
      do
      {
        v197 = *(v195 + 40);
        v198 = *(v197 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v198);
        os_unfair_lock_lock(*(v197 + 344));
        v199 = *(v197 + 24);

        v355 = 0;
        v353 = 0u;
        v354 = 0u;
        v294 = 0;
        v292 = 0u;
        v293 = 0u;
        v200 = sub_1AF65A4B4(v199, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v353, &v292);

        sub_1AFCB9FB8(&v292, sub_1AF5C4448);
        sub_1AFCB9FB8(&v353, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v200);
        }

        else
        {
          v282 = v195;
          v201 = *(v197 + 232);
          v202 = *(v197 + 240);
          LODWORD(v273) = *(v197 + 120);
          v290 = *(v197 + 28);
          v289 = *(v197 + 32);
          v203 = *(v197 + 16);
          v204 = *(v197 + 40);
          v205 = v204[200];
          v287 = *(*(v203 + 88) + 8 * v200 + 32);

          if ((v205 & 1) != 0 || *(v287 + 200) == 1)
          {
            *(v203 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v204 = *(v197 + 40);
          }

          v206 = v288;
          if (v204[212])
          {
            v281 = 0;
          }

          else
          {
            v281 = *(v287 + 212);
          }

          v280 = v204[208];
          v286 = *(v197 + 128);
          v207 = *(v197 + 256);
          sub_1AF5B4FCC(v204, v201, v202, 0, v197);
          v284 = *(v197 + 256);
          v285 = v207;
          v208 = v284 - v207;
          if (v284 == v207)
          {
            v209 = 0;
          }

          else
          {
            v209 = v207;
          }

          *&v292 = v209;
          v210 = *(*(v197 + 40) + 24);
          v211 = *(v210 + 16);
          v288 = v206;
          if (v211)
          {
            v212 = v210 + 32;
            v272 = v210;

            v213 = 0;
            v214 = v208;
            do
            {
              v215 = v212 + 40 * v213;
              if ((*(v215 + 32) & 1) == 0)
              {
                v216 = *(v287 + 24);
                v217 = *(v216 + 16);
                if (v217)
                {
                  v218 = (v216 + 32);
                  while (*v218 != *v215)
                  {
                    v218 += 5;
                    if (!--v217)
                    {
                      goto LABEL_226;
                    }
                  }
                }

                else
                {
LABEL_226:
                  sub_1AF640BC8();
                }
              }

              ++v213;
            }

            while (v213 != v211);
          }

          else
          {
            v214 = v284 - v207;
          }

          if (*(v203 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v203 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v197 + 72) * v214);
          }

          v219 = v214;
          if (*(v197 + 184))
          {
            v220 = 0;
          }

          else
          {
            v220 = *(v197 + 168);
          }

          v375 = 0;

          MEMORY[0x1EEE9AC00](v221, v222);
          v223 = v290;
          *(&v270 - 28) = v290;
          v224 = v289;
          *(&v270 - 108) = v289;
          v225 = v287;
          *(&v270 - 13) = v197;
          *(&v270 - 12) = v225;
          *(&v270 - 11) = 0u;
          *(&v270 - 9) = 0u;
          *(&v270 - 7) = &v292;
          *(&v270 - 6) = v286;
          *(&v270 - 5) = &v375;
          *(&v270 - 32) = v280;
          *(&v270 - 7) = v200;
          *(&v270 - 24) = v281;
          *(&v270 - 2) = v283;
          DWORD2(v354) = -1;
          v355 = v285;
          v356 = v284;
          v357 = v285;
          v358 = v284;
          *&v353 = v285;
          *(&v353 + 1) = v284;
          *&v354 = v220;
          if (v219 >= 1)
          {
            v226 = v273;
            do
            {
              LOBYTE(v361[0]) = v224;
              sub_1AF6248A8(v200, v223 | (v224 << 32), v226, v203, &v353, sub_1AF5C5E08);
              v224 = v289;
              v223 = v290;
            }

            while ((*(&v353 + 1) - v353) > 0);
          }

          v227 = *(v197 + 192);
          v195 = v282;
          if (v227)
          {
            v228 = *(v197 + 208);
            v230 = v284;
            v229 = v285;
            sub_1AF75D364(v285, v284, v227);
            sub_1AF75D364(v229, v230, v228);
          }

          v196 = v270;
        }

        v195 += 48;
        os_unfair_lock_unlock(*(v197 + 344));
        os_unfair_lock_unlock(*(v197 + 376));
      }

      while (v195 != v196);
    }

    sub_1AFCB9F58(&v343, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    a1 = v271;
  }

  v375 = v279;
  v376 = v278;
  v377 = v277;
  v378 = 1;
  v379 = 2;
  v380 = 0;

  sub_1AF704D1C(1, v350);

  v231 = swift_allocObject();
  *(v231 + 16) = v274;
  *(v231 + 32) = &type metadata for VFXAssetTag;
  *(v231 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v231, v351);
  sub_1AFCBA0DC(v350, &qword_1EB6400E0, &type metadata for ShaderFileAsset, &off_1F25432B8);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v361[0] = v351[0];
  v361[1] = v351[1];
  v362 = v352;
  sub_1AF6B06C0(a1, v361, 0x200000000, &v353);
  if (v353)
  {
    if (v360 >= 1 && v358)
    {
      v232 = v356;
      v233 = v356 + 48 * v358;
      v277 = v233;
      v278 = v359;
      do
      {
        v234 = *(v232 + 40);
        v235 = *(v234 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v235);
        os_unfair_lock_lock(*(v234 + 344));
        v236 = *(v234 + 24);

        v294 = 0;
        v292 = 0u;
        v293 = 0u;
        memset(v299, 0, 40);
        v237 = sub_1AF65A4B4(v236, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v292, v299);

        sub_1AFCB9FB8(v299, sub_1AF5C4448);
        sub_1AFCB9FB8(&v292, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v237);
        }

        else
        {
          v283 = v232;
          v238 = v288;
          v239 = *(v234 + 232);
          v240 = *(v234 + 240);
          v280 = *(v234 + 120);
          v290 = *(v234 + 28);
          v289 = *(v234 + 32);
          v241 = *(v234 + 16);
          v242 = *(v234 + 40);
          v243 = v242[200];
          v287 = *(*(v241 + 88) + 8 * v237 + 32);

          if ((v243 & 1) != 0 || *(v287 + 200) == 1)
          {
            *(v241 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v242 = *(v234 + 40);
          }

          if (v242[212])
          {
            LODWORD(v282) = 0;
          }

          else
          {
            LODWORD(v282) = *(v287 + 212);
          }

          v281 = v242[208];
          v286 = *(v234 + 128);
          v244 = *(v234 + 256);
          sub_1AF5B4FCC(v242, v239, v240, 0, v234);
          v288 = v238;
          v284 = *(v234 + 256);
          v285 = v244;
          v245 = v284 - v244;
          if (v284 == v244)
          {
            v246 = 0;
          }

          else
          {
            v246 = v244;
          }

          v299[0] = v246;
          v247 = *(v234 + 40);
          v248 = *(v247 + 24);
          v249 = *(v248 + 16);
          if (v249)
          {
            v250 = v248 + 32;
            v279 = *(v247 + 24);

            for (i = 0; i != v249; ++i)
            {
              v252 = v250 + 40 * i;
              if ((*(v252 + 32) & 1) == 0)
              {
                v253 = *(v287 + 24);
                v254 = *(v253 + 16);
                if (v254)
                {
                  v255 = (v253 + 32);
                  while (*v255 != *v252)
                  {
                    v255 += 5;
                    if (!--v254)
                    {
                      goto LABEL_266;
                    }
                  }
                }

                else
                {
LABEL_266:
                  sub_1AF640BC8();
                }
              }
            }
          }

          v232 = v283;
          v256 = v278;
          if (*(v241 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v241 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v234 + 72) * v245);
          }

          if (*(v234 + 184))
          {
            v257 = 0;
          }

          else
          {
            v257 = *(v234 + 168);
          }

          v298 = 0;

          MEMORY[0x1EEE9AC00](v258, v259);
          v260 = v290;
          *(&v270 - 28) = v290;
          v261 = v289;
          *(&v270 - 108) = v289;
          v262 = v287;
          *(&v270 - 13) = v234;
          *(&v270 - 12) = v262;
          *(&v270 - 11) = 0u;
          *(&v270 - 9) = 0u;
          *(&v270 - 7) = v299;
          *(&v270 - 6) = v286;
          *(&v270 - 5) = &v298;
          *(&v270 - 32) = v281;
          *(&v270 - 7) = v237;
          *(&v270 - 24) = v282;
          *(&v270 - 2) = v256;
          DWORD2(v293) = -1;
          v294 = v285;
          v295 = v284;
          v296 = v285;
          v297 = v284;
          *&v292 = v285;
          *(&v292 + 1) = v284;
          *&v293 = v257;
          if (v245 >= 1)
          {
            v263 = v280;
            do
            {
              v291 = v261;
              sub_1AF6248A8(v237, v260 | (v261 << 32), v263, v241, &v292, sub_1AF5C5E08);
              v261 = v289;
              v260 = v290;
            }

            while ((*(&v292 + 1) - v292) > 0);
          }

          v264 = *(v234 + 192);
          if (v264)
          {
            v265 = *(v234 + 208);
            v267 = v284;
            v266 = v285;
            sub_1AF75D364(v285, v284, v264);
            sub_1AF75D364(v266, v267, v265);
          }

          v233 = v277;
        }

        v232 += 48;
        os_unfair_lock_unlock(*(v234 + 344));
        os_unfair_lock_unlock(*(v234 + 376));
      }

      while (v232 != v233);
    }

    sub_1AFCB9F58(&v353, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  sub_1AFCBA0DC(v351, &qword_1EB6400E0, &type metadata for ShaderFileAsset, &off_1F25432B8);
  sub_1AFCBA0DC(v341, &qword_1ED723D18, &type metadata for TextureShaderAsset, &off_1F2543F30);
  sub_1AFCBA0DC(v333, &qword_1EB643CD0, &type metadata for PointCacheFileAsset, &off_1F2568060);
  sub_1AFCBA0DC(v325, &qword_1EB643CA0, &type metadata for PointCacheGenerator, &off_1F2567FB0);
  sub_1AFCBA0DC(v317, &qword_1EB643CC8, &type metadata for MeshFileAsset, &off_1F252BCD0);
  sub_1AFCBA0DC(v309, &qword_1EB643CC0, &type metadata for SceneFileAsset, &off_1F252BBF8);
  return sub_1AFCBA0DC(v301, &qword_1ED723D88, &type metadata for TextureFileAsset, &off_1F2544090);
}

void sub_1AFC9B87C(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v86 = a2;
    swift_once();
    LODWORD(a2) = v86;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v128 = qword_1ED73B840;
  v129 = v4;
  v130 = v3 >> 31;
  v131 = 1;
  v132 = 2;
  v133 = 0;

  sub_1AF70510C(0, v113);

  v124[0] = v113[0];
  v124[1] = v113[1];
  v125 = v114;
  sub_1AF6B06C0(a1, v124, 0x200000000, v115);
  v90 = *v115;
  if (!*v115)
  {
LABEL_37:
    v8 = MEMORY[0x1E69E7CC0];
    v34 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v34)
    {
LABEL_40:
      v36 = v8 + 32;
      do
      {
        v37 = *v36;
        v38 = HIDWORD(*v36);
        if (v37 == -1 && v38 == 0)
        {
          goto LABEL_107;
        }

        v96 = *v36;
        v40 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

        if (v40)
        {
          v41 = *(v40 + 80);
          swift_unknownObjectWeakLoadStrong();
          v40 = *(v40 + 56);
        }

        else
        {
          v41 = 0;
        }

        v111 = 0;
        swift_unknownObjectUnownedInit();
        v110[0] = a1;
        v111 = v40;
        swift_unknownObjectUnownedAssign();
        swift_unownedRetain();
        swift_unknownObjectRelease();
        v112 = v41;
        swift_unownedRetainStrong();

        if (swift_unknownObjectUnownedLoadStrong())
        {
          swift_unknownObjectRelease();
        }

        swift_unownedRetainStrong();
        v42 = v37;
        if ((v37 & 0x80000000) == 0)
        {
          v43 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
          if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v37)
          {
            v44 = (*v43 + 12 * v37);
            if (v38 == -1 || v44[2] == v38)
            {
              v45 = *(*(*(a1 + 144) + 8 * *v44 + 32) + 344);
              v98 = *(*(a1 + 144) + 8 * *v44 + 32);

              os_unfair_lock_lock(v45);
              if (v43[1] > v37)
              {
                v46 = *v43 + 12 * v37;
                if (v38 == -1 || *(v46 + 8) == v38)
                {
                  v92 = *(v46 + 4);

                  sub_1AF62FD38(1, v92, 0);

                  sub_1AF678B44(v37 | (v38 << 32));
                }
              }

              os_unfair_lock_unlock(*(v98 + 344));
            }
          }
        }

        if (swift_unknownObjectUnownedLoadStrong())
        {
          swift_unknownObjectRelease();
        }

        if (v41)
        {
          swift_unownedRetainStrong();
          *&v104 = v96;
          *(&v104 + 1) = a1;
          LOBYTE(v105) = 1;
          BYTE8(v107) = 7;
          v47 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
          if (v47 && (*(v47 + 81) & 1) != 0 && *(v47 + 24) && swift_weakLoadStrong())
          {

            swift_unknownObjectRetain();

            sub_1AF6CAF24(&v104, &v101);
            v48 = *(v47 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v47 + 16) = v48;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v48 = sub_1AF4221C8(0, *(v48 + 2) + 1, 1, v48);
              *(v47 + 16) = v48;
            }

            v51 = *(v48 + 2);
            v50 = *(v48 + 3);
            v99 = v51 + 1;
            v93 = v51;
            if (v51 >= v50 >> 1)
            {
              *(v47 + 16) = sub_1AF4221C8(v50 > 1, v99, 1, v48);
            }

            swift_unknownObjectRelease();
            sub_1AF57955C(&v104);
            v52 = *(v47 + 16);
            *(v52 + 16) = v99;
            v53 = (v52 + (v93 << 6));
            v54 = v101;
            v55 = v102;
            v56 = v103[0];
            *(v53 + 73) = *(v103 + 9);
            v53[3] = v55;
            v53[4] = v56;
            v53[2] = v54;
            *(v47 + 16) = v52;
          }

          else
          {

            sub_1AF57955C(&v104);
          }

          sub_1AF579490(v110);
          v57 = [objc_opt_self() immediateMode];
          sub_1AF6C5E30(v57 ^ 1);
        }

        else
        {
          sub_1AF579490(v110);
        }

        v58 = OBJC_IVAR____TtC3VFX13EntityManager__entries;

        if (v37 & 0x80000000) == 0 && *(a1 + v58 + 8) > v37 && ((v59 = *(a1 + v58) + 12 * v37, v38 == -1) || *(v59 + 8) == v38) && (v60 = *(*(*(a1 + 88) + 8 * *(v59 + 6) + 32) + 16), v61 = *(v60 + 128), *(v61 + 16)) && (v62 = sub_1AF449CB8(&type metadata for Hidden), (v63))
        {
          v64 = *(*(v60 + 24) + 16 * *(*(v61 + 56) + 8 * v62) + 32);

          if (v64 == &type metadata for Hidden)
          {
            goto LABEL_108;
          }
        }

        else
        {
        }

        v100 = v36;
        v65 = v34;
        v66 = v37;
        v67 = v38;
        v68 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

        v69 = v42;
        if (v68)
        {
          v70 = *(v68 + 80);
          swift_unknownObjectWeakLoadStrong();
          v68 = *(v68 + 56);
        }

        else
        {
          v70 = 0;
        }

        *&v102 = 0;
        swift_unknownObjectUnownedInit();
        *&v101 = a1;
        *&v102 = v68;
        swift_unknownObjectUnownedAssign();
        swift_unownedRetain();
        swift_unknownObjectRelease();
        BYTE8(v102) = v70;
        v71 = v70;
        if (v66 == -1)
        {
          v38 = v67;
          v34 = v65;
          if (!v67)
          {
            sub_1AF579490(&v101);
            v36 = v100;
            if ((v71 & 1) == 0)
            {

              v37 = v66;
              goto LABEL_107;
            }

            v37 = v66;
            goto LABEL_104;
          }

          swift_unownedRetainStrong();
        }

        else
        {
          swift_unownedRetainStrong();
          v34 = v65;
          if ((v66 & 0x80000000) == 0)
          {
            v94 = v71;
            v72 = v69;
            v73 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v69;
            v38 = v67;
            if (!v73 && ((v74 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v72, v67 == -1) || *(v74 + 8) == v67))
            {
              v81 = *(*(*(a1 + 88) + 8 * *(v74 + 6) + 32) + 16);
              v82 = *(v81 + 128);
              v37 = v66;
              if (*(v82 + 16) && (v83 = sub_1AF449CB8(&type metadata for Hidden), (v84 & 1) != 0))
              {
                v85 = *(*(v81 + 24) + 16 * *(*(v82 + 56) + 8 * v83) + 32);

                v75 = v85 != &type metadata for Hidden;
              }

              else
              {

                v75 = 1;
              }
            }

            else
            {

              v75 = 1;
              v37 = v66;
            }

            v36 = v100;
            swift_unownedRetainStrong();
            if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v72)
            {
              v76 = (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v72);
              if (v38 == -1 || v76[2] == v38)
              {
                v77 = *(*(a1 + 144) + 8 * *v76 + 32);
                v78 = *(v76 + 2);
                os_unfair_lock_lock(*(v77 + 344));
                sub_1AFC0F59C(v77, v78, a1);
                os_unfair_lock_unlock(*(v77 + 344));
              }
            }

            v71 = v94;
            goto LABEL_100;
          }
        }

        swift_unownedRetainStrong();
        v75 = 1;
        v38 = v67;
        v37 = v66;
        v36 = v100;
LABEL_100:

        swift_unownedRetainStrong();

        if (swift_unknownObjectUnownedLoadStrong())
        {
          swift_unknownObjectRelease();
        }

        if (!v71)
        {
          sub_1AF579490(&v101);
          goto LABEL_106;
        }

        swift_unownedRetainStrong();
        *&v104 = v96;
        *(&v104 + 1) = a1;
        sub_1AFCBAA8C(0, &qword_1EB643B78, &type metadata for Hidden, &off_1F25296D8, type metadata accessor for ComponentWriter);
        *(&v106 + 1) = v79;
        *&v107 = &off_1F2536170;
        LOBYTE(v105) = v75;
        BYTE8(v107) = 12;
        sub_1AF6C67D0(&v104);

        sub_1AF57955C(&v104);
        sub_1AF579490(&v101);
LABEL_104:
        v80 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v80 ^ 1);
LABEL_106:

LABEL_107:
        sub_1AF5AAC40(v37 | (v38 << 32), a1);
LABEL_108:
        ++v36;
        --v34;
      }

      while (v34);
    }

LABEL_117:
    sub_1AFCB9F58(v113, &unk_1EB643C80, type metadata accessor for VFXObjectTag, &off_1F253D658, sub_1AFCBA680);

    return;
  }

  v89 = *&v115[40];
  v5 = *(&v116 + 1);
  v6 = *(&v117 + 1);
  v119 = *&v115[8];
  v120 = *&v115[24];
  if (v118 <= 0 || !*(&v116 + 1))
  {
    sub_1AFCB9F58(v115, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    goto LABEL_37;
  }

  v97 = *(*(&v117 + 1) + 32);
  v95 = *(v117 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v87 = type metadata accessor for VFXObjectTag();
  v106 = *&v115[32];
  v107 = v116;
  v108 = v117;
  v109 = v118;
  v104 = *v115;
  v105 = *&v115[16];
  sub_1AF5DD298(&v104, &v101);
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v88 = v5;
  while (1)
  {
    v91 = v7;
    v9 = (v89 + 48 * v7);
    v10 = *v9;
    v11 = v9[1];
    v13 = *(v9 + 2);
    v12 = *(v9 + 3);
    v14 = *(v9 + 4);
    v15 = *(v9 + 5);
    if (v95)
    {
      v16 = *(v15 + 376);

      os_unfair_lock_lock(v16);
      os_unfair_lock_lock(*(v15 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v97);
    v17 = *(v6 + 64);
    v126[0] = *(v6 + 48);
    v126[1] = v17;
    v127 = *(v6 + 80);
    v18 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;
    *(v6 + 48) = ecs_stack_allocator_allocate(*(v6 + 32), 48 * v18, 8);
    *(v6 + 56) = v18;
    *(v6 + 72) = 0;
    *(v6 + 80) = 0;
    *(v6 + 64) = 0;
    v19 = v12;
    v20 = v15;
    sub_1AF64B110(v87, &off_1F253D658, v13, v19, v14, v6);
    if (v13)
    {
      if (v14)
      {
        while (1)
        {
          v22 = *v13++;
          v20 = v22;
          if ((*(v15 + 120) & 1) == 0)
          {

            if (*(v15 + 184))
            {
              goto LABEL_118;
            }

            v24 = *(*(v15 + 168) + 4 * v20);
            v25 = *(*(v23 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v24 + 8);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_1AF4217DC(0, *(v8 + 2) + 1, 1, v8);
            }

            v27 = *(v8 + 2);
            v26 = *(v8 + 3);
            if (v27 >= v26 >> 1)
            {
              v8 = sub_1AF4217DC(v26 > 1, v27 + 1, 1, v8);
            }

            *(v8 + 2) = v27 + 1;
            v21 = &v8[8 * v27];
            *(v21 + 8) = v24;
            *(v21 + 9) = v25;
          }

          if (!--v14)
          {
            goto LABEL_26;
          }
        }
      }

      goto LABEL_26;
    }

    if (v10 != v11)
    {
      break;
    }

LABEL_26:
    v121 = v90;
    v122 = v119;
    v123 = v120;
    sub_1AF630994(v6, &v121, v126);
    sub_1AF62D29C(v15);
    ecs_stack_allocator_pop_snapshot(v97);
    if (v95)
    {
      os_unfair_lock_unlock(*(v15 + 344));
      os_unfair_lock_unlock(*(v15 + 376));
    }

    v7 = v91 + 1;
    if (v91 + 1 == v88)
    {
      v35 = MEMORY[0x1E69E6720];
      sub_1AFCB9F58(v115, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      sub_1AFCB9F58(v115, &qword_1ED725EA0, &type metadata for QueryResult, v35, sub_1AFCBA88C);
      v34 = *(v8 + 2);
      if (v34)
      {
        goto LABEL_40;
      }

      goto LABEL_117;
    }
  }

  while (1)
  {
    if (*(v15 + 120))
    {
      goto LABEL_29;
    }

    if (*(v15 + 184))
    {
      break;
    }

    v30 = *(*(v15 + 168) + 4 * v10);
    v31 = *(*(v29 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v30 + 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AF4217DC(0, *(v8 + 2) + 1, 1, v8);
    }

    v33 = *(v8 + 2);
    v32 = *(v8 + 3);
    v20 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v8 = sub_1AF4217DC(v32 > 1, v33 + 1, 1, v8);
    }

    *(v8 + 2) = v20;
    v28 = &v8[8 * v33];
    *(v28 + 8) = v30;
    *(v28 + 9) = v31;
LABEL_29:
    if (v11 == ++v10)
    {
      goto LABEL_26;
    }
  }

LABEL_118:
  sub_1AFDFE518();
  __break(1u);

  os_unfair_lock_unlock(*(v20 + 344));
  __break(1u);
}

uint64_t sub_1AFC9C5E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(*(a3 + 264) + 16))
  {
    return result;
  }

  v4 = result;

  sub_1AF419914(v4, a2);
  if (v5)
  {

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      if (*Strong == _TtCO3VFX21GraphV1CodeGeneration11CodeSnippet)
      {
        v8 = *(Strong + 136);
        v9 = *(v8 + 336) == 0x726F6C6F43 && *(v8 + 344) == 0xE500000000000000;
        if (v9 || (sub_1AFDFEE28() & 1) != 0)
        {
          v27 = MEMORY[0x1E69E6158];
          *&v26 = 0;
          *(&v26 + 1) = 0xE000000000000000;

          sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v26, v25);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v26);
          sub_1AF449D40(v25, &v26);
          swift_dynamicCast();
          if (v23 == 0x657461756C617645 && v24 == 0xE800000000000000)
          {
          }

          else
          {
            v10 = sub_1AFDFEE28();

            if ((v10 & 1) == 0)
            {
            }
          }

          v11 = v7[6];
          v12 = v7[11];

          v13 = sub_1AF770BA0(v11, v12);
          v15 = v14;

          if (v13 == 0xD00000000000001BLL && 0x80000001AFF4C930 == v15)
          {
          }

          else
          {
            v17 = sub_1AFDFEE28();

            if ((v17 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          v18 = sub_1AF7F48D4(0x726F6C6F43, 0xE500000000000000, 0x657461756C617645, 0xE800000000000000, 0xD000000000000022, 0x80000001AFF4C950);

          if (v18)
          {
            v19 = sub_1AF78633C(v7, v18, 0);

            v20 = v7[2];
            if (v20)
            {
              v21 = v19[2];

              if (!v21)
              {
                v19[2] = sub_1AF432414(MEMORY[0x1E69E7CC0]);
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v26 = v19[2];
              v19[2] = 0x8000000000000000;
              sub_1AF7A6008(v20, sub_1AF7A2CE4, 0, isUniquelyReferenced_nonNull_native, &v26);

              v19[2] = v26;
            }
          }

LABEL_35:
        }
      }
    }
  }

  else
  {
  }
}

uint64_t sub_1AFC9CA44(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(*(a3 + 264) + 16))
  {
    return result;
  }

  v4 = result;

  sub_1AF419914(v4, a2);
  if (v5)
  {

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      if (*Strong == _TtCO3VFX21GraphV1CodeGeneration11CodeSnippet)
      {
        v8 = *(Strong + 136);
        v9 = *(v8 + 336) == 1752457549 && *(v8 + 344) == 0xE400000000000000;
        if (v9 || (sub_1AFDFEE28() & 1) != 0)
        {
          v27 = MEMORY[0x1E69E6158];
          *&v26 = 0;
          *(&v26 + 1) = 0xE000000000000000;

          sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v26, v25);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v26);
          sub_1AF449D40(v25, &v26);
          swift_dynamicCast();
          if (v23 == 0x657461756C617645 && v24 == 0xE800000000000000)
          {
          }

          else
          {
            v10 = sub_1AFDFEE28();

            if ((v10 & 1) == 0)
            {
            }
          }

          v11 = v7[6];
          v12 = v7[11];

          v13 = sub_1AF770BA0(v11, v12);
          v15 = v14;

          if (v13 == 0xD000000000000017 && 0x80000001AFF4C980 == v15)
          {
          }

          else
          {
            v17 = sub_1AFDFEE28();

            if ((v17 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          v18 = sub_1AF7F48D4(1752457549, 0xE400000000000000, 0x657461756C617645, 0xE800000000000000, 0xD00000000000001DLL, 0x80000001AFF4C9A0);

          if (v18)
          {
            v19 = sub_1AF78633C(v7, v18, 0);

            v20 = v7[2];
            if (v20)
            {
              v21 = v19[2];

              if (!v21)
              {
                v19[2] = sub_1AF432414(MEMORY[0x1E69E7CC0]);
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v26 = v19[2];
              v19[2] = 0x8000000000000000;
              sub_1AF7A6008(v20, sub_1AF7A2CE4, 0, isUniquelyReferenced_nonNull_native, &v26);

              v19[2] = v26;
            }
          }

LABEL_35:
        }
      }
    }
  }

  else
  {
  }
}

uint64_t sub_1AFC9CEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_65;
  }

  if (v6 != &type metadata for ColorRampComponent)
  {
    v8 = sub_1AFDFDFD8();
    result = swift_conformsToProtocol2();
    if (result)
    {
      if (v8 != &type metadata for CurveComponent)
      {
        return result;
      }

      goto LABEL_5;
    }

LABEL_65:
    __break(1u);
    return result;
  }

LABEL_5:
  v80 = a4;
  v9 = *(a4 + 168);
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v14 = 0;
  v81 = v13;
  v82 = a1;
  while (1)
  {
    do
    {
LABEL_8:
      if (!v12)
      {
        while (1)
        {
          v15 = v14 + 1;
          if (v14 + 1 >= v13)
          {
            break;
          }

          v12 = *(v9 + 8 * v14++ + 72);
          if (v12)
          {
            v14 = v15;
            goto LABEL_12;
          }
        }
      }

LABEL_12:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = v16 | (v14 << 6);
      v18 = *(*(*(v9 + 56) + 8 * v17) + 80);
      v19 = *(v18 + 16);
    }

    while (!v19);
    v87 = *(*(v9 + 56) + 8 * v17);
    v22 = *(v18 + 40);
    v20 = (v18 + 40);
    v21 = v22;
    v23 = *(v20 - 1);
    v24 = v19;
    v25 = v20;
    while (1)
    {
      v26 = *(v25 - 1) == v23 && *v25 == v21;
      if (v26 || (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      v25 += 2;
      if (!--v24)
      {
        goto LABEL_8;
      }
    }

    v27 = 0;
    while (1)
    {
      v28 = *(v20 - 1) == v23 && *v20 == v21;
      if (v28 || (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      ++v27;
      v20 += 2;
      if (v19 == v27)
      {
        v27 = 0;
        break;
      }
    }

    v29 = *(v87 + 88) + 40 * v27;
    v30 = *(v29 + 32);
    v31 = *(v29 + 40);
    v85 = v30;

    sub_1AF687F90(v30, v31);
    v32 = sub_1AF7AF740(v23, v21);
    v34 = v33;
    swift_weakInit();
    swift_weakAssign();

    swift_weakDestroy();

    sub_1AF687FE4(v85, v31);
    if (v32 == v82 && v34 == a2)
    {
      break;
    }

    v35 = sub_1AFDFEE28();

    if (v35)
    {

      goto LABEL_37;
    }

    v13 = v81;
  }

LABEL_37:

  v36 = *(v87 + 80);
  if (!v36[2])
  {
  }

  v37 = v36[4];
  v38 = v36[5];

  v39 = sub_1AF7AF5BC(v37, v38);

  if (!v39)
  {
  }

  v41 = v39[7];
  v40 = v39[8];
  if (v40 == 28)
  {
    v84 = v39[7];
    v62 = v39[3];
    v63 = v39[4];
    v90 = xmmword_1AFE79130;
    v92 = 0;
    v93 = 0;
    v91 = 0;

    sub_1AF7AF3E4(v62, v63, &v90);
    v64 = sub_1AF7AF5BC(v62, v63);

    v65 = v64[5];
    v66 = v64[6];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = *(v80 + 264);
    *(v80 + 264) = 0x8000000000000000;
    sub_1AF854E5C(v64, v65, v66, isUniquelyReferenced_nonNull_native);

    *(v80 + 264) = v89;

    v69 = sub_1AF7AA030(v68, v80, v87);

    v70 = 1 << *(v69 + 32);
    v71 = -1;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    v72 = v71 & *(v69 + 64);
    v73 = (v70 + 63) >> 6;

    v74 = 0;
    while (v72)
    {
      v75 = v74;
LABEL_59:
      v76 = __clz(__rbit64(v72));
      v72 &= v72 - 1;
      v77 = (*(v69 + 48) + 16 * (v76 | (v75 << 6)));
      v78 = *v77;
      v79 = v77[1];

      sub_1AFC9C5E4(v78, v79, v80);
    }

    while (1)
    {
      v75 = v74 + 1;
      if (v74 + 1 >= v73)
      {
        break;
      }

      v72 = *(v69 + 8 * v74++ + 72);
      if (v72)
      {
        v74 = v75;
        goto LABEL_59;
      }
    }

    v60 = v84;
    v61 = 28;
    goto LABEL_62;
  }

  if (v40 == 37)
  {
    v83 = v39[7];
    v42 = v39[3];
    v43 = v39[4];
    v90 = xmmword_1AFE791A0;
    v92 = 0;
    v93 = 0;
    v91 = 0;

    sub_1AF7AF3E4(v42, v43, &v90);
    v44 = sub_1AF7AF5BC(v42, v43);

    v45 = v44[5];
    v46 = v44[6];

    v47 = swift_isUniquelyReferenced_nonNull_native();
    v88 = *(v80 + 264);
    *(v80 + 264) = 0x8000000000000000;
    sub_1AF854E5C(v44, v45, v46, v47);

    *(v80 + 264) = v88;

    v49 = sub_1AF7AA030(v48, v80, v87);

    v50 = 1 << *(v49 + 32);
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v52 = v51 & *(v49 + 64);
    v53 = (v50 + 63) >> 6;

    v54 = 0;
    while (v52)
    {
      v55 = v54;
LABEL_48:
      v56 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
      v57 = (*(v49 + 48) + 16 * (v56 | (v55 << 6)));
      v58 = *v57;
      v59 = v57[1];

      sub_1AFC9CA44(v58, v59, v80);
    }

    while (1)
    {
      v55 = v54 + 1;
      if (v54 + 1 >= v53)
      {
        break;
      }

      v52 = *(v49 + 8 * v54++ + 72);
      if (v52)
      {
        v54 = v55;
        goto LABEL_48;
      }
    }

    v60 = v83;
    v61 = 37;
LABEL_62:
    sub_1AF687FE4(v60, v61);
  }

  sub_1AF687F90(v39[7], v39[8]);

  return sub_1AF687FE4(v41, v40);
}

uint64_t sub_1AFC9D684(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v51 = a2;
    swift_once();
    LODWORD(a2) = v51;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v77 = qword_1ED73B840;
  v78 = v4;
  v79 = v3 >> 31;
  v80 = 1;
  v81 = 2;
  v82 = 0;

  sub_1AF8D6CE4(1, 1, 3, v66);

  v75[0] = v66[0];
  v75[1] = v66[1];
  v76 = v67;
  sub_1AF6B06C0(a1, v75, 0x200000000, v68);
  if (!*v68)
  {
    return sub_1AFCB9FB8(v66, sub_1AFCBA978);
  }

  if (v71 > 0 && (v54 = *(&v69 + 1)) != 0)
  {
    v53 = *&v68[40];
    v5 = *(v70 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v58 = *(*(&v70 + 1) + 32);
    v59 = *(&v70 + 1);
    v72 = *v68;
    v73 = *&v68[8];
    v74 = *&v68[24];
    v65[2] = *&v68[32];
    v65[3] = v69;
    v65[4] = v70;
    v65[5] = v71;
    v65[0] = *v68;
    v65[1] = *&v68[16];
    sub_1AF5DD298(v65, v63);
    v6 = 0;
    v7 = 0;
    v52 = v5;
    do
    {
      v56 = v7;
      v57 = v6;
      v8 = (v53 + 48 * v6);
      v10 = *v8;
      v9 = v8[1];
      v11 = *(v8 + 2);
      v12 = *(v8 + 3);
      v14 = *(v8 + 4);
      v13 = *(v8 + 5);
      if (v5)
      {
        v15 = *(v13 + 376);

        os_unfair_lock_lock(v15);
        os_unfair_lock_lock(*(v13 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v58);
      v16 = *(v59 + 64);
      v63[0] = *(v59 + 48);
      v63[1] = v16;
      v64 = *(v59 + 80);
      v17 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
      *(v59 + 48) = ecs_stack_allocator_allocate(*(v59 + 32), 48 * v17, 8);
      *(v59 + 56) = v17;
      *(v59 + 72) = 0;
      *(v59 + 80) = 0;
      *(v59 + 64) = 0;
      sub_1AF64B110(&type metadata for CodeGenerationInitialized, &off_1F253BF30, v11, v12, v14, v59);
      v18 = sub_1AF64B110(&type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8, v11, v12, v14, v59);
      v55 = v13;
      v62 = sub_1AF64B110(&type metadata for CodeGenerationComponent, &off_1F253BF50, v11, v12, v14, v59);
      if (v11)
      {
        if (v14)
        {
          v19 = 0;
          v60 = v18 + 8;
          do
          {
            v20 = *(v62 + 8 * v19);
            if (v20)
            {
              v21 = *(v60 + (v19 << 6));
              v22 = 1 << *(v21 + 32);
              if (v22 < 64)
              {
                v23 = ~(-1 << v22);
              }

              else
              {
                v23 = -1;
              }

              v24 = v23 & *(v21 + 64);
              v25 = (v22 + 63) >> 6;
              swift_bridgeObjectRetain_n();

              v26 = 0;
              while (v24)
              {
                v27 = v26;
LABEL_28:
                v28 = __clz(__rbit64(v24));
                v24 &= v24 - 1;
                v29 = (v27 << 10) | (16 * v28);
                v30 = (*(v21 + 48) + v29);
                v31 = *v30;
                v32 = v30[1];
                v33 = *(*(v21 + 56) + v29 + 8);

                sub_1AFC9CEA8(v31, v32, v33, v20);
              }

              while (1)
              {
                v27 = v26 + 1;
                if (v26 + 1 >= v25)
                {
                  break;
                }

                v24 = *(v21 + 8 * v26++ + 72);
                if (v24)
                {
                  v26 = v27;
                  goto LABEL_28;
                }
              }
            }

            ++v19;
          }

          while (v19 != v14);
        }
      }

      else if (v10 != v9)
      {
        v61 = v18 + 8;
        do
        {
          v34 = *(v62 + 8 * v10);
          if (v34)
          {
            v35 = *(v61 + (v10 << 6));
            v36 = 1 << *(v35 + 32);
            if (v36 < 64)
            {
              v37 = ~(-1 << v36);
            }

            else
            {
              v37 = -1;
            }

            v38 = v37 & *(v35 + 64);
            v39 = (v36 + 63) >> 6;
            swift_bridgeObjectRetain_n();

            v40 = 0;
            while (v38)
            {
              v41 = v40;
LABEL_45:
              v42 = __clz(__rbit64(v38));
              v38 &= v38 - 1;
              v43 = (v41 << 10) | (16 * v42);
              v44 = (*(v35 + 48) + v43);
              v45 = *v44;
              v46 = v44[1];
              v47 = *(*(v35 + 56) + v43 + 8);

              sub_1AFC9CEA8(v45, v46, v47, v34);
            }

            while (1)
            {
              v41 = v40 + 1;
              if (v40 + 1 >= v39)
              {
                break;
              }

              v38 = *(v35 + 8 * v40++ + 72);
              if (v38)
              {
                v40 = v41;
                goto LABEL_45;
              }
            }
          }

          ++v10;
        }

        while (v10 != v9);
      }

      v7 = v56;
      sub_1AF630994(v59, &v72, v63);
      sub_1AF62D29C(v55);
      ecs_stack_allocator_pop_snapshot(v58);
      v5 = v52;
      if (v52)
      {
        os_unfair_lock_unlock(*(v55 + 344));
        os_unfair_lock_unlock(*(v55 + 376));
      }

      v6 = v57 + 1;
    }

    while (v57 + 1 != v54);
    v50 = MEMORY[0x1E69E6720];
    sub_1AFCB9F58(v68, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    sub_1AFCB9FB8(v66, sub_1AFCBA978);
    v48 = v50;
  }

  else
  {
    sub_1AFCB9FB8(v66, sub_1AFCBA978);
    v48 = MEMORY[0x1E69E6720];
  }

  return sub_1AFCB9F58(v68, &qword_1ED725EA0, &type metadata for QueryResult, v48, sub_1AFCBA88C);
}

void sub_1AFC9DD20(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v235 = a2;
    swift_once();
    LODWORD(a2) = v235;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v297 = qword_1ED73B840;
  v298 = v4;
  v299 = v3 >> 31;
  v300 = 1;
  v301 = 2;
  v302 = 0;

  sub_1AF702F8C(3, v282);

  v293[0] = v282[0];
  v293[1] = v282[1];
  v294 = v283;
  v275 = a1;
  sub_1AF6B06C0(a1, v293, 0x200000000, v284);
  v239 = *&v284[0];
  if (!*&v284[0])
  {
    sub_1AFCBA0DC(v282, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
    return;
  }

  v238 = *(&v284[2] + 1);
  v5 = *(&v285 + 1);
  v243 = *(&v286 + 1);
  v288 = *(v284 + 8);
  v289 = *(&v284[1] + 8);
  if (v287 > 0 && *(&v285 + 1))
  {
    v6 = *(*(&v286 + 1) + 32);
    v242 = *(v286 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v281[3] = v285;
    v281[4] = v286;
    v281[5] = v287;
    v281[0] = v284[0];
    v274 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v249 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
    v281[1] = v284[1];
    v281[2] = v284[2];
    sub_1AF5DD298(v281, &v278);
    v7 = 0;
    v8 = 0;
    v236 = v6;
    v237 = v5;
    while (1)
    {
      v241 = v7;
      v9 = (v238 + 48 * v7);
      v10 = *v9;
      v244 = v9[1];
      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      v14 = *(v9 + 4);
      v13 = *(v9 + 5);
      if (v242)
      {
        v15 = *(v13 + 376);

        os_unfair_lock_lock(v15);
        os_unfair_lock_lock(*(v13 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v6);
      v16 = *(v243 + 64);
      v295[0] = *(v243 + 48);
      v295[1] = v16;
      v296 = *(v243 + 80);
      v17 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
      *(v243 + 48) = ecs_stack_allocator_allocate(*(v243 + 32), 48 * v17, 8);
      *(v243 + 56) = v17;
      *(v243 + 72) = 0;
      *(v243 + 80) = 0;
      *(v243 + 64) = 0;
      v240 = v13;
      v246 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v12, v11, v14, v243);
      if (v12)
      {
        if (v14)
        {
          v18 = 0;
          v245 = v14;
          while (1)
          {
            v247 = v18;
            v250 = (v246 + 104 * v18);
            v264 = *(*v250 + 16);
            if (v264)
            {
              v262 = *v250 + 32;

              v21 = 0;
              v22 = MEMORY[0x1E69E7CC0];
              while (1)
              {
                *&v20 = *(v262 + 8 * v21);
                v23 = DWORD1(v20);
                v266 = v20;
                v24 = v20;
                v25 = v20;
                sub_1AF3CB570(v20, &v278);
                if (!v279)
                {
                  break;
                }

                v26 = v279[2];
                sub_1AF487074(v278, v279);
                v27 = v274;
                if (v26)
                {
                  goto LABEL_42;
                }

                v28 = v24 == -1 && v23 == 0;
                if (!v28 && (v24 & 0x80000000) == 0 && v274[1] > v24)
                {
                  v29 = (*v274 + 12 * v24);
                  if (v23 == -1 || v29[2] == v23)
                  {
                    v31 = *(v29 + 2);
                    v32 = *(*(v275 + 144) + 8 * *v29 + 32);
                    if (*(v32 + 232) <= v31 && *(v32 + 240) > v31)
                    {
                      v55 = **(v275 + v249);
                      v56 = *(v32 + 344);

                      os_unfair_lock_lock(v56);
                      ecs_stack_allocator_push_snapshot(*(v55 + 32));

                      sub_1AF65CFA0(v55, v32, v31);

                      ecs_stack_allocator_pop_snapshot(*(v55 + 32));
                      os_unfair_lock_unlock(*(v32 + 344));
                    }
                  }
                }

LABEL_21:
                if (++v21 == v264)
                {

                  v19 = v250;
                  goto LABEL_84;
                }
              }

              v27 = v274;
LABEL_42:
              v276 = 0;
              if (v24 == -1 && v23 == 0)
              {
                v35 = v275;
LABEL_73:
                sub_1AF65CD48(v25, v35, &type metadata for PropagateDirtiness, &off_1F2532300, 0);
LABEL_74:
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v277 = v22;
                v52 = v8;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1AFC07194(0, *(v22 + 16) + 1, 1);
                  v22 = v277;
                }

                v54 = *(v22 + 16);
                v53 = *(v22 + 24);
                if (v54 >= v53 >> 1)
                {
                  sub_1AFC07194(v53 > 1, v54 + 1, 1);
                  v22 = v277;
                }

                *(v22 + 16) = v54 + 1;
                *(&v20 + 1) = *(&v266 + 1);
                *(v22 + 8 * v54 + 32) = v266;
                v8 = v52;
                goto LABEL_21;
              }

              v35 = v275;
              if ((v24 & 0x80000000) == 0 && v27[1] > v24)
              {
                v36 = *v27 + 12 * v24;
                if (v23 == -1 || *(v36 + 8) == v23)
                {
                  v252 = v8;
                  v38 = *(*(*(*(v275 + 88) + 8 * *(v36 + 6) + 32) + 16) + 32);
                  v39 = *(v38 + 16);
                  if (!v39)
                  {
                    v35 = v275;
                    v8 = v252;
                    if (v24 < 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_58;
                  }

                  v40 = (v38 + 40);
                  do
                  {
                    sub_1AFC953DC(*(v40 - 1), *v40, &v276, &v276 + 1);
                    v40 += 2;
                    --v39;
                  }

                  while (v39);

                  v27 = v274;
                  v35 = v275;
                  v8 = v252;
                  if ((v276 & 0x100) != 0)
                  {
                    goto LABEL_70;
                  }
                }
              }

              if (v24 < 0)
              {
                goto LABEL_70;
              }

LABEL_58:
              if (v27[1] > v24)
              {
                v41 = (*v27 + 12 * v24);
                if (v23 == -1 || v41[2] == v23)
                {
                  v42 = *(v41 + 2);
                  v43 = *(*(v35 + 144) + 8 * *v41 + 32);
                  if (*(v43 + 232) <= v42 && *(v43 + 240) > v42)
                  {
                    v253 = v8;
                    v45 = **(v35 + v249);
                    v46 = *(v43 + 344);

                    os_unfair_lock_lock(v46);
                    ecs_stack_allocator_push_snapshot(*(v45 + 32));
                    v47 = *(*(v43 + 40) + 16);
                    v48 = *(v47 + 128);
                    if (*(v48 + 16) && (v49 = sub_1AF449CB8(&type metadata for Parent), (v50 & 1) != 0) && *(*(v47 + 24) + 16 * *(*(v48 + 56) + 8 * v49) + 32) == &type metadata for Parent)
                    {
                      v278 = &type metadata for Parent;
                      v279 = &off_1F2529C98;
                      v280 = 1;
                      MEMORY[0x1EEE9AC00](v49, v50);

                      sub_1AF63023C(0, v43, sub_1AFA9EC24);
                      sub_1AF635250(&v278);
                    }

                    else
                    {
                    }

                    sub_1AF62D29C(v43);

                    ecs_stack_allocator_pop_snapshot(*(v45 + 32));
                    os_unfair_lock_unlock(*(v43 + 344));

                    v35 = v275;
                    v8 = v253;
                  }
                }
              }

LABEL_70:
              if (v276)
              {
                goto LABEL_74;
              }

              goto LABEL_73;
            }

            v22 = MEMORY[0x1E69E7CC0];
            v19 = (v246 + 104 * v18);
LABEL_84:

            *v19 = v22;
            v57 = v19[1];
            v58 = *(v57 + 16);
            if (v58)
            {
              v59 = v57 + 32;

              v61 = 0;
              v62 = MEMORY[0x1E69E7CC0];
              while (1)
              {
                *&v60 = *(v59 + 8 * v61);
                v63 = DWORD1(v60);
                v267 = v60;
                v64 = v60;
                v65 = v60;
                sub_1AF3CB570(v60, &v278);
                if (!v279)
                {
                  break;
                }

                v66 = v279[2];
                sub_1AF487074(v278, v279);
                v67 = v274;
                if (v66)
                {
                  goto LABEL_107;
                }

                v68 = v64 == -1 && v63 == 0;
                if (!v68 && (v64 & 0x80000000) == 0 && v274[1] > v64)
                {
                  v69 = (*v274 + 12 * v64);
                  if (v63 == -1 || v69[2] == v63)
                  {
                    v71 = *(v69 + 2);
                    v72 = *(*(v275 + 144) + 8 * *v69 + 32);
                    if (*(v72 + 232) <= v71 && *(v72 + 240) > v71)
                    {
                      v85 = **(v275 + v249);
                      v86 = *(v72 + 344);

                      os_unfair_lock_lock(v86);
                      ecs_stack_allocator_push_snapshot(*(v85 + 32));

                      sub_1AF65CFA0(v85, v72, v71);

                      ecs_stack_allocator_pop_snapshot(*(v85 + 32));
                      os_unfair_lock_unlock(*(v72 + 344));
                    }
                  }
                }

LABEL_86:
                if (++v61 == v58)
                {

                  v19 = v250;
                  goto LABEL_134;
                }
              }

              v67 = v274;
LABEL_107:
              LOBYTE(v278) = 0;
              HIBYTE(v276) = 0;
              if (v64 != -1 || v63 != 0)
              {
                v75 = v275;
                if (v64 < 0 || v67[1] <= v64)
                {
                  goto LABEL_130;
                }

                v76 = *v67 + 12 * v64;
                if (v63 != -1 && *(v76 + 8) != v63)
                {
                  goto LABEL_130;
                }

                v78 = *(*(*(*(v275 + 88) + 8 * *(v76 + 6) + 32) + 16) + 32);
                v79 = *(v78 + 16);
                if (v79)
                {
                  v254 = v8;

                  v80 = (v78 + 40);
                  do
                  {
                    sub_1AFC953DC(*(v80 - 1), *v80, &v276 + 1, &v278);
                    v80 += 2;
                    --v79;
                  }

                  while (v79);

                  v75 = v275;
                  v8 = v254;
                  if (v278)
                  {
                    if ((v276 & 0x100) != 0)
                    {
LABEL_124:
                      v81 = swift_isUniquelyReferenced_nonNull_native();
                      v277 = v62;
                      v82 = v8;
                      if ((v81 & 1) == 0)
                      {
                        sub_1AFC07194(0, *(v62 + 16) + 1, 1);
                        v62 = v277;
                      }

                      v84 = *(v62 + 16);
                      v83 = *(v62 + 24);
                      if (v84 >= v83 >> 1)
                      {
                        sub_1AFC07194(v83 > 1, v84 + 1, 1);
                        v62 = v277;
                      }

                      *(v62 + 16) = v84 + 1;
                      *(&v60 + 1) = *(&v267 + 1);
                      *(v62 + 8 * v84 + 32) = v267;
                      v8 = v82;
                      goto LABEL_86;
                    }

LABEL_123:
                    sub_1AF65CD48(v65, v75, &type metadata for PropagateDirtiness, &off_1F2532300, 0);
                    goto LABEL_124;
                  }

LABEL_130:
                  sub_1AF65CD48(v65, v75, &type metadata for Parent, &off_1F2529C98, 0);
                  if ((v276 & 0x100) != 0)
                  {
                    goto LABEL_124;
                  }

                  goto LABEL_123;
                }
              }

              v75 = v275;
              goto LABEL_130;
            }

            v62 = MEMORY[0x1E69E7CC0];
LABEL_134:

            v19[1] = v62;
            v87 = v19[2];
            v88 = *(v87 + 16);
            if (v88)
            {
              v89 = v87 + 32;

              v91 = 0;
              v92 = MEMORY[0x1E69E7CC0];
              while (1)
              {
                *&v90 = *(v89 + 8 * v91);
                v93 = DWORD1(v90);
                v268 = v90;
                v94 = v90;
                v95 = v90;
                sub_1AF3CB570(v90, &v278);
                if (!v279)
                {
                  break;
                }

                v96 = v279[2];
                sub_1AF487074(v278, v279);
                if (v96)
                {
                  break;
                }

                sub_1AF65CE88(v95, v275);
LABEL_137:
                if (++v91 == v88)
                {

                  v19 = v250;
                  goto LABEL_167;
                }
              }

              LOBYTE(v278) = 0;
              HIBYTE(v276) = 0;
              if (v94 != -1 || v93 != 0)
              {
                v98 = v275;
                if (v94 < 0 || v274[1] <= v94)
                {
                  goto LABEL_163;
                }

                v99 = *v274 + 12 * v94;
                if (v93 != -1 && *(v99 + 8) != v93)
                {
                  goto LABEL_163;
                }

                v101 = *(*(*(*(v275 + 88) + 8 * *(v99 + 6) + 32) + 16) + 32);
                v102 = *(v101 + 16);
                if (v102)
                {
                  v255 = v8;

                  v103 = (v101 + 40);
                  do
                  {
                    sub_1AFC953DC(*(v103 - 1), *v103, &v276 + 1, &v278);
                    v103 += 2;
                    --v102;
                  }

                  while (v102);

                  v98 = v275;
                  v8 = v255;
                  if (v278)
                  {
                    if ((v276 & 0x100) != 0)
                    {
LABEL_157:
                      v104 = swift_isUniquelyReferenced_nonNull_native();
                      v277 = v92;
                      v105 = v8;
                      if ((v104 & 1) == 0)
                      {
                        sub_1AFC07194(0, *(v92 + 16) + 1, 1);
                        v92 = v277;
                      }

                      v107 = *(v92 + 16);
                      v106 = *(v92 + 24);
                      if (v107 >= v106 >> 1)
                      {
                        sub_1AFC07194(v106 > 1, v107 + 1, 1);
                        v92 = v277;
                      }

                      *(v92 + 16) = v107 + 1;
                      *(&v90 + 1) = *(&v268 + 1);
                      *(v92 + 8 * v107 + 32) = v268;
                      v8 = v105;
                      goto LABEL_137;
                    }

LABEL_156:
                    sub_1AF65CD48(v95, v98, &type metadata for PropagateDirtiness, &off_1F2532300, 0);
                    goto LABEL_157;
                  }

LABEL_163:
                  sub_1AF65CD48(v95, v98, &type metadata for Parent, &off_1F2529C98, 0);
                  if ((v276 & 0x100) != 0)
                  {
                    goto LABEL_157;
                  }

                  goto LABEL_156;
                }
              }

              v98 = v275;
              goto LABEL_163;
            }

            v92 = MEMORY[0x1E69E7CC0];
LABEL_167:

            v19[2] = v92;
            v108 = v19[3];
            v109 = *(v108 + 16);
            if (v109)
            {
              break;
            }

            v113 = MEMORY[0x1E69E7CC0];
LABEL_18:

            v19[3] = v113;
            v18 = v247 + 1;
            if (v247 + 1 == v245)
            {
              goto LABEL_200;
            }
          }

          v110 = v108 + 32;

          v112 = 0;
          v113 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            *&v111 = *(v110 + 8 * v112);
            v114 = DWORD1(v111);
            v269 = v111;
            v115 = v111;
            v116 = v111;
            sub_1AF3CB570(v111, &v278);
            if (!v279)
            {
              break;
            }

            v117 = v279[2];
            sub_1AF487074(v278, v279);
            if (v117)
            {
              break;
            }

            sub_1AF65CE88(v116, v275);
LABEL_170:
            if (++v112 == v109)
            {

              v19 = v250;
              goto LABEL_18;
            }
          }

          LOBYTE(v278) = 0;
          HIBYTE(v276) = 0;
          if (v115 != -1 || v114 != 0)
          {
            v119 = v275;
            if (v115 < 0 || v274[1] <= v115)
            {
              goto LABEL_196;
            }

            v120 = *v274 + 12 * v115;
            if (v114 != -1 && *(v120 + 8) != v114)
            {
              goto LABEL_196;
            }

            v122 = *(*(*(*(v275 + 88) + 8 * *(v120 + 6) + 32) + 16) + 32);
            v123 = *(v122 + 16);
            if (v123)
            {
              v256 = v8;

              v124 = (v122 + 40);
              do
              {
                sub_1AFC953DC(*(v124 - 1), *v124, &v276 + 1, &v278);
                v124 += 2;
                --v123;
              }

              while (v123);

              v119 = v275;
              v8 = v256;
              if (v278)
              {
                if ((v276 & 0x100) != 0)
                {
LABEL_190:
                  v125 = swift_isUniquelyReferenced_nonNull_native();
                  v277 = v113;
                  v126 = v8;
                  if ((v125 & 1) == 0)
                  {
                    sub_1AFC07194(0, *(v113 + 16) + 1, 1);
                    v113 = v277;
                  }

                  v128 = *(v113 + 16);
                  v127 = *(v113 + 24);
                  if (v128 >= v127 >> 1)
                  {
                    sub_1AFC07194(v127 > 1, v128 + 1, 1);
                    v113 = v277;
                  }

                  *(v113 + 16) = v128 + 1;
                  *(&v111 + 1) = *(&v269 + 1);
                  *(v113 + 8 * v128 + 32) = v269;
                  v8 = v126;
                  goto LABEL_170;
                }

LABEL_189:
                sub_1AF65CD48(v116, v119, &type metadata for PropagateDirtiness, &off_1F2532300, 0);
                goto LABEL_190;
              }

LABEL_196:
              sub_1AF65CD48(v116, v119, &type metadata for Parent, &off_1F2529C98, 0);
              if ((v276 & 0x100) != 0)
              {
                goto LABEL_190;
              }

              goto LABEL_189;
            }
          }

          v119 = v275;
          goto LABEL_196;
        }

        goto LABEL_200;
      }

      if (v10 != v244)
      {
        break;
      }

LABEL_200:
      v290 = v239;
      v291 = v288;
      v292 = v289;
      sub_1AF630994(v243, &v290, v295);
      sub_1AF62D29C(v240);
      v6 = v236;
      ecs_stack_allocator_pop_snapshot(v236);
      if (v242)
      {
        os_unfair_lock_unlock(*(v240 + 344));
        os_unfair_lock_unlock(*(v240 + 376));
      }

      v7 = v241 + 1;
      if (v241 + 1 == v237)
      {
        sub_1AFCBA0DC(v282, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
        v234 = MEMORY[0x1E69E6720];
        sub_1AFCB9F58(v284, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
        v233 = v234;
        goto LABEL_370;
      }
    }

    while (1)
    {
      v248 = v10;
      v130 = (v246 + 104 * v10);
      v251 = v130;
      v265 = *(*v130 + 16);
      if (v265)
      {
        v263 = *v130 + 32;

        v132 = 0;
        v133 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          *&v131 = *(v263 + 8 * v132);
          v134 = DWORD1(v131);
          v270 = v131;
          v135 = v131;
          v136 = v131;
          sub_1AF3CB570(v131, &v278);
          if (!v279)
          {
            break;
          }

          v137 = v279[2];
          sub_1AF487074(v278, v279);
          v138 = v274;
          if (v137)
          {
            goto LABEL_227;
          }

          v139 = v135 == -1 && v134 == 0;
          if (!v139 && (v135 & 0x80000000) == 0 && v274[1] > v135)
          {
            v140 = (*v274 + 12 * v135);
            if (v134 == -1 || v140[2] == v134)
            {
              v142 = *(v140 + 2);
              v143 = *(*(v275 + 144) + 8 * *v140 + 32);
              if (*(v143 + 232) <= v142 && *(v143 + 240) > v142)
              {
                v166 = **(v275 + v249);
                v167 = *(v143 + 344);

                os_unfair_lock_lock(v167);
                ecs_stack_allocator_push_snapshot(*(v166 + 32));

                sub_1AF65CFA0(v166, v143, v142);

                ecs_stack_allocator_pop_snapshot(*(v166 + 32));
                os_unfair_lock_unlock(*(v143 + 344));
              }
            }
          }

LABEL_206:
          if (++v132 == v265)
          {

            v130 = v251;
            goto LABEL_269;
          }
        }

        v138 = v274;
LABEL_227:
        v276 = 0;
        if (v135 == -1 && v134 == 0)
        {
          v146 = v275;
LABEL_258:
          sub_1AF65CD48(v136, v146, &type metadata for PropagateDirtiness, &off_1F2532300, 0);
LABEL_259:
          v162 = swift_isUniquelyReferenced_nonNull_native();
          v277 = v133;
          v163 = v8;
          if ((v162 & 1) == 0)
          {
            sub_1AFC07194(0, *(v133 + 16) + 1, 1);
            v133 = v277;
          }

          v165 = *(v133 + 16);
          v164 = *(v133 + 24);
          if (v165 >= v164 >> 1)
          {
            sub_1AFC07194(v164 > 1, v165 + 1, 1);
            v133 = v277;
          }

          *(v133 + 16) = v165 + 1;
          *(&v131 + 1) = *(&v270 + 1);
          *(v133 + 8 * v165 + 32) = v270;
          v8 = v163;
          goto LABEL_206;
        }

        v146 = v275;
        if ((v135 & 0x80000000) == 0 && v138[1] > v135)
        {
          v147 = *v138 + 12 * v135;
          if (v134 == -1 || *(v147 + 8) == v134)
          {
            v149 = *(*(*(*(v275 + 88) + 8 * *(v147 + 6) + 32) + 16) + 32);
            v150 = *(v149 + 16);
            if (!v150)
            {
              v146 = v275;
              if (v135 < 0)
              {
                goto LABEL_255;
              }

              goto LABEL_243;
            }

            v257 = v8;

            v151 = (v149 + 40);
            do
            {
              sub_1AFC953DC(*(v151 - 1), *v151, &v276, &v276 + 1);
              v151 += 2;
              --v150;
            }

            while (v150);

            v138 = v274;
            v146 = v275;
            v8 = v257;
            if ((v276 & 0x100) != 0)
            {
              goto LABEL_255;
            }
          }
        }

        if (v135 < 0)
        {
          goto LABEL_255;
        }

LABEL_243:
        if (v138[1] > v135)
        {
          v152 = (*v138 + 12 * v135);
          if (v134 == -1 || v152[2] == v134)
          {
            v153 = *(v152 + 2);
            v154 = *(*(v146 + 144) + 8 * *v152 + 32);
            if (*(v154 + 232) <= v153 && *(v154 + 240) > v153)
            {
              v258 = v8;
              v156 = **(v146 + v249);
              v157 = *(v154 + 344);

              os_unfair_lock_lock(v157);
              ecs_stack_allocator_push_snapshot(*(v156 + 32));
              v158 = *(*(v154 + 40) + 16);
              v159 = *(v158 + 128);
              if (*(v159 + 16) && (v160 = sub_1AF449CB8(&type metadata for Parent), (v161 & 1) != 0) && *(*(v158 + 24) + 16 * *(*(v159 + 56) + 8 * v160) + 32) == &type metadata for Parent)
              {
                v278 = &type metadata for Parent;
                v279 = &off_1F2529C98;
                v280 = 1;
                MEMORY[0x1EEE9AC00](v160, v161);

                sub_1AF63023C(0, v154, sub_1AF6AFAF8);
                sub_1AF635250(&v278);
              }

              else
              {
              }

              sub_1AF62D29C(v154);

              ecs_stack_allocator_pop_snapshot(*(v156 + 32));
              os_unfair_lock_unlock(*(v154 + 344));

              v146 = v275;
              v8 = v258;
            }
          }
        }

LABEL_255:
        if (v276)
        {
          goto LABEL_259;
        }

        goto LABEL_258;
      }

      v133 = MEMORY[0x1E69E7CC0];
LABEL_269:

      *v130 = v133;
      v168 = v130[1];
      v169 = *(v168 + 16);
      if (v169)
      {
        v170 = v168 + 32;

        v172 = 0;
        v173 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          *&v171 = *(v170 + 8 * v172);
          v174 = DWORD1(v171);
          v271 = v171;
          v175 = v171;
          v176 = v171;
          sub_1AF3CB570(v171, &v278);
          if (!v279)
          {
            break;
          }

          v177 = v279[2];
          sub_1AF487074(v278, v279);
          if (v177)
          {
            break;
          }

          sub_1AF65CE88(v176, v275);
LABEL_272:
          if (++v172 == v169)
          {

            v189 = v251;
            goto LABEL_302;
          }
        }

        LOBYTE(v278) = 0;
        HIBYTE(v276) = 0;
        if (v175 != -1 || v174 != 0)
        {
          v179 = v275;
          if (v175 < 0 || v274[1] <= v175)
          {
            goto LABEL_298;
          }

          v180 = *v274 + 12 * v175;
          if (v174 != -1 && *(v180 + 8) != v174)
          {
            goto LABEL_298;
          }

          v182 = *(*(*(*(v275 + 88) + 8 * *(v180 + 6) + 32) + 16) + 32);
          v183 = *(v182 + 16);
          if (v183)
          {
            v259 = v8;

            v184 = (v182 + 40);
            do
            {
              sub_1AFC953DC(*(v184 - 1), *v184, &v276 + 1, &v278);
              v184 += 2;
              --v183;
            }

            while (v183);

            v179 = v275;
            v8 = v259;
            if (v278)
            {
              if ((v276 & 0x100) != 0)
              {
LABEL_292:
                v185 = swift_isUniquelyReferenced_nonNull_native();
                v277 = v173;
                v186 = v8;
                if ((v185 & 1) == 0)
                {
                  sub_1AFC07194(0, *(v173 + 16) + 1, 1);
                  v173 = v277;
                }

                v188 = *(v173 + 16);
                v187 = *(v173 + 24);
                if (v188 >= v187 >> 1)
                {
                  sub_1AFC07194(v187 > 1, v188 + 1, 1);
                  v173 = v277;
                }

                *(v173 + 16) = v188 + 1;
                *(&v171 + 1) = *(&v271 + 1);
                *(v173 + 8 * v188 + 32) = v271;
                v8 = v186;
                goto LABEL_272;
              }

LABEL_291:
              sub_1AF65CD48(v176, v179, &type metadata for PropagateDirtiness, &off_1F2532300, 0);
              goto LABEL_292;
            }

LABEL_298:
            sub_1AF65CD48(v176, v179, &type metadata for Parent, &off_1F2529C98, 0);
            if ((v276 & 0x100) != 0)
            {
              goto LABEL_292;
            }

            goto LABEL_291;
          }
        }

        v179 = v275;
        goto LABEL_298;
      }

      v173 = MEMORY[0x1E69E7CC0];
      v189 = v251;
LABEL_302:

      v189[1] = v173;
      v190 = v189[2];
      v191 = *(v190 + 16);
      if (v191)
      {
        v192 = v190 + 32;

        v194 = 0;
        v195 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          *&v193 = *(v192 + 8 * v194);
          v196 = DWORD1(v193);
          v272 = v193;
          v197 = v193;
          v198 = v193;
          sub_1AF3CB570(v193, &v278);
          if (!v279)
          {
            break;
          }

          v199 = v279[2];
          sub_1AF487074(v278, v279);
          if (v199)
          {
            break;
          }

          sub_1AF65CE88(v198, v275);
LABEL_305:
          if (++v194 == v191)
          {

            v211 = v251;
            goto LABEL_335;
          }
        }

        LOBYTE(v278) = 0;
        HIBYTE(v276) = 0;
        if (v197 != -1 || v196 != 0)
        {
          v201 = v275;
          if (v197 < 0 || v274[1] <= v197)
          {
            goto LABEL_331;
          }

          v202 = *v274 + 12 * v197;
          if (v196 != -1 && *(v202 + 8) != v196)
          {
            goto LABEL_331;
          }

          v204 = *(*(*(*(v275 + 88) + 8 * *(v202 + 6) + 32) + 16) + 32);
          v205 = *(v204 + 16);
          if (v205)
          {
            v260 = v8;

            v206 = (v204 + 40);
            do
            {
              sub_1AFC953DC(*(v206 - 1), *v206, &v276 + 1, &v278);
              v206 += 2;
              --v205;
            }

            while (v205);

            v201 = v275;
            v8 = v260;
            if (v278)
            {
              if ((v276 & 0x100) != 0)
              {
LABEL_325:
                v207 = swift_isUniquelyReferenced_nonNull_native();
                v277 = v195;
                v208 = v8;
                if ((v207 & 1) == 0)
                {
                  sub_1AFC07194(0, *(v195 + 16) + 1, 1);
                  v195 = v277;
                }

                v210 = *(v195 + 16);
                v209 = *(v195 + 24);
                if (v210 >= v209 >> 1)
                {
                  sub_1AFC07194(v209 > 1, v210 + 1, 1);
                  v195 = v277;
                }

                *(v195 + 16) = v210 + 1;
                *(&v193 + 1) = *(&v272 + 1);
                *(v195 + 8 * v210 + 32) = v272;
                v8 = v208;
                goto LABEL_305;
              }

LABEL_324:
              sub_1AF65CD48(v198, v201, &type metadata for PropagateDirtiness, &off_1F2532300, 0);
              goto LABEL_325;
            }

LABEL_331:
            sub_1AF65CD48(v198, v201, &type metadata for Parent, &off_1F2529C98, 0);
            if ((v276 & 0x100) != 0)
            {
              goto LABEL_325;
            }

            goto LABEL_324;
          }
        }

        v201 = v275;
        goto LABEL_331;
      }

      v195 = MEMORY[0x1E69E7CC0];
      v211 = v251;
LABEL_335:

      v211[2] = v195;
      v212 = v211[3];
      v213 = *(v212 + 16);
      if (v213)
      {
        break;
      }

      v217 = MEMORY[0x1E69E7CC0];
      v129 = v251;
LABEL_203:
      v10 = v248 + 1;

      v129[3] = v217;
      if (v248 + 1 == v244)
      {
        goto LABEL_200;
      }
    }

    v214 = v212 + 32;

    v216 = 0;
    v217 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      *&v215 = *(v214 + 8 * v216);
      v218 = DWORD1(v215);
      v273 = v215;
      v219 = v215;
      v220 = v215;
      sub_1AF3CB570(v215, &v278);
      if (!v279)
      {
        break;
      }

      v221 = v279[2];
      sub_1AF487074(v278, v279);
      if (v221)
      {
        break;
      }

      sub_1AF65CE88(v220, v275);
LABEL_338:
      if (++v216 == v213)
      {

        v129 = v251;
        goto LABEL_203;
      }
    }

    LOBYTE(v278) = 0;
    HIBYTE(v276) = 0;
    if (v219 != -1 || v218 != 0)
    {
      v223 = v275;
      if (v219 < 0 || v274[1] <= v219)
      {
        goto LABEL_364;
      }

      v224 = *v274 + 12 * v219;
      if (v218 != -1 && *(v224 + 8) != v218)
      {
        goto LABEL_364;
      }

      v226 = *(*(*(*(v275 + 88) + 8 * *(v224 + 6) + 32) + 16) + 32);
      v227 = *(v226 + 16);
      if (v227)
      {
        v261 = v8;

        v228 = (v226 + 40);
        do
        {
          sub_1AFC953DC(*(v228 - 1), *v228, &v276 + 1, &v278);
          v228 += 2;
          --v227;
        }

        while (v227);

        v223 = v275;
        v8 = v261;
        if (v278)
        {
          if ((v276 & 0x100) != 0)
          {
LABEL_358:
            v229 = swift_isUniquelyReferenced_nonNull_native();
            v277 = v217;
            v230 = v8;
            if ((v229 & 1) == 0)
            {
              sub_1AFC07194(0, *(v217 + 16) + 1, 1);
              v217 = v277;
            }

            v232 = *(v217 + 16);
            v231 = *(v217 + 24);
            if (v232 >= v231 >> 1)
            {
              sub_1AFC07194(v231 > 1, v232 + 1, 1);
              v217 = v277;
            }

            *(v217 + 16) = v232 + 1;
            *(&v215 + 1) = *(&v273 + 1);
            *(v217 + 8 * v232 + 32) = v273;
            v8 = v230;
            goto LABEL_338;
          }

LABEL_357:
          sub_1AF65CD48(v220, v223, &type metadata for PropagateDirtiness, &off_1F2532300, 0);
          goto LABEL_358;
        }

LABEL_364:
        sub_1AF65CD48(v220, v223, &type metadata for Parent, &off_1F2529C98, 0);
        if ((v276 & 0x100) != 0)
        {
          goto LABEL_358;
        }

        goto LABEL_357;
      }
    }

    v223 = v275;
    goto LABEL_364;
  }

  sub_1AFCBA0DC(v282, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
  v233 = MEMORY[0x1E69E6720];
LABEL_370:
  sub_1AFCB9F58(v284, &qword_1ED725EA0, &type metadata for QueryResult, v233, sub_1AFCBA88C);
}

void sub_1AFC9F9AC(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1AFC954A0(7368532, 0xE300000000000000, a1, xmmword_1AFE20160, xmmword_1AFEA9750);
    sub_1AFC954A0(0x6D6F74746F42, 0xE600000000000000, a1, xmmword_1AFE20B60, xmmword_1AFEA9760);
    sub_1AFC954A0(1952867660, 0xE400000000000000, a1, xmmword_1AFE20650, xmmword_1AFEA9770);
    sub_1AFC954A0(0x7468676952, 0xE500000000000000, a1, xmmword_1AFE20150, xmmword_1AFEA9780);
    sub_1AFC954A0(0x746E6F7246, 0xE500000000000000, a1, xmmword_1AFE20180, 0);

    sub_1AFC954A0(1801675074, 0xE400000000000000, a1, xmmword_1AFE206C0, xmmword_1AFEA9790);
  }
}

uint64_t sub_1AFC9FAC0(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v97 = a2;
    swift_once();
    LODWORD(a2) = v97;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v133 = qword_1ED73B840;
  v134 = v4;
  v135 = v3 >> 31;
  v136 = 1;
  v137 = 2;
  v138 = 0;

  sub_1AF702F78(3, v122);

  v131[0] = v122[0];
  v131[1] = v122[1];
  v132 = v123;
  sub_1AF6B06C0(a1, v131, 0x200000000, v124);
  if (!*v124)
  {
    return sub_1AFCBA0DC(v122, &qword_1EB63D270, &type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8);
  }

  if (v127 <= 0 || (v102 = *(&v125 + 1)) == 0)
  {
    sub_1AFCBA0DC(v122, &qword_1EB63D270, &type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8);
    v94 = MEMORY[0x1E69E6720];
    return sub_1AFCB9F58(v124, &qword_1ED725EA0, &type metadata for QueryResult, v94, sub_1AFCBA88C);
  }

  v101 = *&v124[40];
  v5 = *(&v126 + 1);
  v6 = *(v126 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v7 = *(*(&v126 + 1) + 32);
  v128 = *v124;
  v129 = *&v124[8];
  v130 = *&v124[24];
  v121[2] = *&v124[32];
  v121[3] = v125;
  v121[4] = v126;
  v121[5] = v127;
  v121[0] = *v124;
  v121[1] = *&v124[16];
  sub_1AF5DD298(v121, v119);
  v8 = 0;
  v9 = 0;
  v100 = v5;
  v98 = v7;
  v99 = v6;
  while (2)
  {
    v10 = (v101 + 48 * v8);
    v11 = *v10;
    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    v14 = *(v10 + 5);
    v106 = v10[1];
    v107 = *(v10 + 4);
    v104 = v9;
    if (v6)
    {
      v15 = *(v14 + 376);

      os_unfair_lock_lock(v15);
      os_unfair_lock_lock(*(v14 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v7);
    v16 = *(v5 + 4);
    v119[0] = *(v5 + 3);
    v119[1] = v16;
    v120 = v5[10];
    v17 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
    v5[6] = ecs_stack_allocator_allocate(v5[4], 48 * v17, 8);
    v5[7] = v17;
    v5[9] = 0;
    v5[10] = 0;
    v5[8] = 0;
    v18 = v107;
    v110 = sub_1AF64B110(&type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8, v13, v12, v107, v5);
    v105 = v8;
    v103 = v14;
    if (!v13)
    {
      v57 = MEMORY[0x1E69E7CC0];
      if (v11 == v106)
      {
        goto LABEL_48;
      }

LABEL_52:
      v58 = v110 + (v11 << 6);
      if (*(v58 + 40))
      {
        *(v58 + 40) = v57;
      }

      *(v58 + 48) = v57;

      v59 = *(v58 + 40);
      if (!v59)
      {
        goto LABEL_51;
      }

      v109 = v11;
      v60 = *(v59 + 16);
      v61 = *(v58 + 40);

      if (!v60)
      {
        goto LABEL_50;
      }

      v62 = 0;
      v63 = v61 + 32;
      v112 = v61 + 32;
      v114 = v60;
LABEL_60:
      v65 = *(v58 + 8);
      if (!*(v65 + 16))
      {
        goto LABEL_59;
      }

      v66 = (v63 + 24 * v62);
      v67 = v66[1];
      v68 = v66[2];
      v69 = *v66;

      v70 = sub_1AF419914(v69, v67);
      if ((v71 & 1) == 0)
      {
        goto LABEL_58;
      }

      v72 = (*(v65 + 56) + 16 * v70);
      v73 = *v72;
      v74 = *(v68 + 16);
      v116 = v72[1];

      if (!v74)
      {
        v118 = v57;
        goto LABEL_76;
      }

      v75 = 0;
      v76 = v68 + 40;
      v77 = -v74;
      v118 = v57;
LABEL_64:
      v78 = (v76 + 16 * v75++);
      while (1)
      {
        v79 = *v58;
        if (*(*v58 + 16))
        {
          v81 = *(v78 - 1);
          v80 = *v78;

          v82 = sub_1AF419914(v81, v80);
          if (v83)
          {
            v84 = (*(v79 + 56) + 16 * v82);
            v85 = *v84;
            v86 = v84[1];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v118 = sub_1AF425958(0, *(v118 + 2) + 1, 1, v118);
            }

            v88 = *(v118 + 2);
            v87 = *(v118 + 3);
            if (v88 >= v87 >> 1)
            {
              v118 = sub_1AF425958(v87 > 1, v88 + 1, 1, v118);
            }

            *(v118 + 2) = v88 + 1;
            v89 = &v118[16 * v88];
            *(v89 + 4) = v85;
            *(v89 + 5) = v86;
            v76 = v68 + 40;
            if (!(v77 + v75))
            {
LABEL_76:
              v90 = *(v58 + 48);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v58 + 48) = v90;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v90 = sub_1AF423470(0, *(v90 + 2) + 1, 1, v90);
                *(v58 + 48) = v90;
              }

              v63 = v112;
              v60 = v114;
              v93 = *(v90 + 2);
              v92 = *(v90 + 3);
              if (v93 >= v92 >> 1)
              {
                v90 = sub_1AF423470(v92 > 1, v93 + 1, 1, v90);
                *(v58 + 48) = v90;
              }

              v57 = MEMORY[0x1E69E7CC0];
              *(v90 + 2) = v93 + 1;
              v64 = &v90[24 * v93];
              *(v64 + 4) = v73;
              *(v64 + 5) = v116;
              *(v64 + 6) = v118;
LABEL_58:

LABEL_59:
              if (++v62 != v60)
              {
                goto LABEL_60;
              }

LABEL_50:

              v11 = v109;
LABEL_51:
              ++v11;
              *(v58 + 56) = 1;
              if (v11 == v106)
              {
                goto LABEL_48;
              }

              goto LABEL_52;
            }

            goto LABEL_64;
          }
        }

        v78 += 2;
        ++v75;
        if (v77 + v75 == 1)
        {
          goto LABEL_76;
        }
      }
    }

    v19 = MEMORY[0x1E69E7CC0];
    if (!v107)
    {
      goto LABEL_48;
    }

    v20 = 0;
    while (2)
    {
      v21 = v110 + (v20 << 6);
      if (*(v21 + 40))
      {
        *(v21 + 40) = v19;
      }

      *(v21 + 48) = v19;

      v22 = *(v21 + 40);
      if (!v22)
      {
        goto LABEL_18;
      }

      v108 = v20;
      v23 = *(v22 + 16);
      v24 = *(v21 + 40);

      if (!v23)
      {
        goto LABEL_17;
      }

      v25 = 0;
      v26 = v24 + 32;
      v111 = v24 + 32;
      v113 = v23;
      while (2)
      {
        v28 = *(v21 + 8);
        if (!*(v28 + 16))
        {
          goto LABEL_26;
        }

        v29 = (v26 + 24 * v25);
        v30 = v29[1];
        v31 = v29[2];
        v32 = *v29;

        v33 = sub_1AF419914(v32, v30);
        if ((v34 & 1) == 0)
        {
          goto LABEL_25;
        }

        v35 = (*(v28 + 56) + 16 * v33);
        v36 = *v35;
        v37 = *(v31 + 16);
        v115 = v35[1];

        if (!v37)
        {
          v117 = v19;
          goto LABEL_43;
        }

        v38 = 0;
        v39 = v31 + 40;
        v40 = -v37;
        v117 = v19;
        do
        {
          v41 = (v39 + 16 * v38++);
          while (1)
          {
            v42 = *v21;
            if (*(*v21 + 16))
            {
              break;
            }

LABEL_32:
            v41 += 2;
            ++v38;
            if (v40 + v38 == 1)
            {
              goto LABEL_43;
            }
          }

          v44 = *(v41 - 1);
          v43 = *v41;

          v45 = sub_1AF419914(v44, v43);
          if ((v46 & 1) == 0)
          {

            goto LABEL_32;
          }

          v47 = (*(v42 + 56) + 16 * v45);
          v48 = *v47;
          v49 = v47[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v117 = sub_1AF425958(0, *(v117 + 2) + 1, 1, v117);
          }

          v51 = *(v117 + 2);
          v50 = *(v117 + 3);
          if (v51 >= v50 >> 1)
          {
            v117 = sub_1AF425958(v50 > 1, v51 + 1, 1, v117);
          }

          *(v117 + 2) = v51 + 1;
          v52 = &v117[16 * v51];
          *(v52 + 4) = v48;
          *(v52 + 5) = v49;
          v39 = v31 + 40;
        }

        while (v40 + v38);
LABEL_43:
        v53 = *(v21 + 48);
        v54 = swift_isUniquelyReferenced_nonNull_native();
        *(v21 + 48) = v53;
        if ((v54 & 1) == 0)
        {
          v53 = sub_1AF423470(0, *(v53 + 2) + 1, 1, v53);
          *(v21 + 48) = v53;
        }

        v26 = v111;
        v23 = v113;
        v56 = *(v53 + 2);
        v55 = *(v53 + 3);
        if (v56 >= v55 >> 1)
        {
          v53 = sub_1AF423470(v55 > 1, v56 + 1, 1, v53);
          *(v21 + 48) = v53;
        }

        v19 = MEMORY[0x1E69E7CC0];
        *(v53 + 2) = v56 + 1;
        v27 = &v53[24 * v56];
        *(v27 + 4) = v36;
        *(v27 + 5) = v115;
        *(v27 + 6) = v117;
LABEL_25:

LABEL_26:
        if (++v25 != v23)
        {
          continue;
        }

        break;
      }

LABEL_17:

      v18 = v107;
      v20 = v108;
LABEL_18:
      *(v21 + 56) = 1;
      if (++v20 != v18)
      {
        continue;
      }

      break;
    }

LABEL_48:
    v5 = v100;
    v9 = v104;
    sub_1AF630994(v100, &v128, v119);
    sub_1AF62D29C(v103);
    v7 = v98;
    ecs_stack_allocator_pop_snapshot(v98);
    v6 = v99;
    if (v99)
    {
      os_unfair_lock_unlock(*(v103 + 344));
      os_unfair_lock_unlock(*(v103 + 376));
    }

    v8 = v105 + 1;
    if (v105 + 1 != v102)
    {
      continue;
    }

    break;
  }

  sub_1AFCBA0DC(v122, &qword_1EB63D270, &type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8);
  v96 = MEMORY[0x1E69E6720];
  sub_1AFCB9F58(v124, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  v94 = v96;
  return sub_1AFCB9F58(v124, &qword_1ED725EA0, &type metadata for QueryResult, v94, sub_1AFCBA88C);
}

uint64_t sub_1AFCA0434(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v173 = a2;
    swift_once();
    LODWORD(a2) = v173;
  }

  v4 = qword_1ED73B840;
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  v305 = qword_1ED73B840;
  v179 = v5;
  v306 = v5;
  v178 = v3 >> 31;
  v307 = v3 >> 31;
  v308 = 1;
  v309 = 2;
  v310 = 0;

  sub_1AF7032E4(1, v231);
  v180 = v4;

  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  *(v6 + 32) = &type metadata for VFXAssetTag;
  *(v6 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v6, v232);
  sub_1AFCBA0DC(v231, &qword_1ED723D40, &type metadata for ColorRampComponent, &off_1F2541AA8);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v279[0] = v232[0];
  v279[1] = v232[1];
  v280 = v233;
  sub_1AF6B06C0(a1, v279, 0x200000000, v234);
  sub_1AFCBA0DC(v232, &qword_1ED723D40, &type metadata for ColorRampComponent, &off_1F2541AA8);
  v182 = a1;
  if (*&v234[0])
  {
    if (v237 >= 1 && v236)
    {
      v7 = 0;
      v8 = v235;
      v9 = v235 + 48 * v236;
      v174 = v9;
      do
      {
        v10 = *(v8 + 40);
        v11 = *(v10 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v11);
        os_unfair_lock_lock(*(v10 + 344));
        v12 = *(v10 + 24);

        v266 = 0;
        v264 = 0u;
        v265 = 0u;
        v257 = 0;
        v255 = 0u;
        v256 = 0u;
        v13 = sub_1AF65A4B4(v12, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v264, &v255);

        sub_1AFCB9FB8(&v255, sub_1AF5C4448);
        sub_1AFCB9FB8(&v264, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v13);
        }

        else
        {
          v188 = v8;
          v14 = *(v10 + 232);
          v15 = *(v10 + 240);
          v183 = *(v10 + 120);
          v218 = *(v10 + 28);
          v213 = *(v10 + 32);
          v16 = *(v10 + 16);
          v17 = *(v10 + 40);
          v18 = *(v17 + 200);
          v208 = *(*(v16 + 88) + 8 * v13 + 32);

          if ((v18 & 1) != 0 || *(v208 + 200) == 1)
          {
            *(v16 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v17 = *(v10 + 40);
          }

          v19 = v7;
          v20 = *(v10 + 256);
          sub_1AF5B4FCC(v17, v14, v15, 0, v10);
          v193 = *(v10 + 256);
          v198 = v20;
          v21 = v193 - v20;
          if (v193 == v20)
          {
            v22 = 0;
          }

          else
          {
            v22 = v20;
          }

          *&v255 = v22;
          v23 = *(*(v10 + 40) + 24);
          v24 = *(v23 + 16);
          if (v24)
          {
            v203 = v19;
            v25 = v23 + 32;

            v26 = 0;
            v27 = v21;
            do
            {
              v28 = v25 + 40 * v26;
              if ((*(v28 + 32) & 1) == 0)
              {
                v29 = *(v208 + 24);
                v30 = *(v29 + 16);
                if (v30)
                {
                  v31 = (v29 + 32);
                  while (*v31 != *v28)
                  {
                    v31 += 5;
                    if (!--v30)
                    {
                      goto LABEL_21;
                    }
                  }
                }

                else
                {
LABEL_21:
                  sub_1AF640BC8();
                }
              }

              ++v26;
            }

            while (v26 != v24);

            v32 = v203;
          }

          else
          {
            v32 = v19;
            v27 = v193 - v20;
          }

          if (*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v10 + 72) * v27);
          }

          if (*(v10 + 184))
          {
            v33 = 0;
          }

          else
          {
            v33 = *(v10 + 168);
          }

          *&v248[0] = 0;

          MEMORY[0x1EEE9AC00](v34, v35);
          v36 = v218;
          v37 = v213;
          DWORD2(v265) = -1;
          v266 = v198;
          v267 = v193;
          v268 = v198;
          v269 = v193;
          *&v264 = v198;
          *(&v264 + 1) = v193;
          *&v265 = v33;
          if (v38 >= 1)
          {
            do
            {
              LOBYTE(v241[0]) = v37;
              sub_1AF6248A8(v13, v36 | (v37 << 32), v183, v16, &v264, sub_1AF5C5E08);
              v37 = v213;
              v36 = v218;
            }

            while ((*(&v264 + 1) - v264) > 0);
          }

          v39 = v32;

          v40 = *(v10 + 192);
          v8 = v188;
          v9 = v174;
          if (v40)
          {
            v41 = *(v10 + 208);
            sub_1AF75D364(v198, v193, v40);
            sub_1AF75D364(v198, v193, v41);
          }

          v7 = v39;
        }

        v8 += 48;
        os_unfair_lock_unlock(*(v10 + 344));
        os_unfair_lock_unlock(*(v10 + 376));
      }

      while (v8 != v9);
    }

    else
    {
      v7 = 0;
    }

    sub_1AFCB9F58(v234, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  else
  {
    v7 = 0;
  }

  v299 = v180;
  v300 = v179;
  v301 = v178;
  v302 = 1;
  v303 = 2;
  v304 = 0;

  sub_1AF702FA0(1, v238);

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1AFE431C0;
  *(v42 + 32) = &type metadata for VFXAssetTag;
  *(v42 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v42, v239);
  sub_1AFCBA0DC(v238, &qword_1ED723DB8, &type metadata for CurveComponent, &off_1F2541E18);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v277[0] = v239[0];
  v277[1] = v239[1];
  v278 = v240;
  sub_1AF6B06C0(v182, v277, 0x200000000, v241);
  sub_1AFCBA0DC(v239, &qword_1ED723DB8, &type metadata for CurveComponent, &off_1F2541E18);
  if (*&v241[0])
  {
    if (v244 >= 1 && v243)
    {
      v43 = v242;
      v44 = v242 + 48 * v243;
      v175 = v44;
      do
      {
        v45 = *(v43 + 40);
        v46 = *(v45 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v46);
        os_unfair_lock_lock(*(v45 + 344));
        v47 = *(v45 + 24);

        v266 = 0;
        v264 = 0u;
        v265 = 0u;
        v257 = 0;
        v255 = 0u;
        v256 = 0u;
        v48 = sub_1AF65A4B4(v47, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v264, &v255);

        sub_1AFCB9FB8(&v255, sub_1AF5C4448);
        sub_1AFCB9FB8(&v264, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v48);
        }

        else
        {
          v189 = v43;
          v49 = *(v45 + 232);
          v50 = *(v45 + 240);
          v184 = *(v45 + 120);
          v219 = *(v45 + 28);
          v214 = *(v45 + 32);
          v51 = *(v45 + 16);
          v52 = *(v45 + 40);
          v53 = *(v52 + 200);
          v209 = *(*(v51 + 88) + 8 * v48 + 32);

          if ((v53 & 1) != 0 || *(v209 + 200) == 1)
          {
            *(v51 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v52 = *(v45 + 40);
          }

          v54 = v7;
          v55 = *(v45 + 256);
          sub_1AF5B4FCC(v52, v49, v50, 0, v45);
          v194 = *(v45 + 256);
          v199 = v55;
          v56 = v194 - v55;
          if (v194 == v55)
          {
            v57 = 0;
          }

          else
          {
            v57 = v55;
          }

          *&v255 = v57;
          v58 = *(*(v45 + 40) + 24);
          v59 = *(v58 + 16);
          if (v59)
          {
            v204 = v54;
            v60 = v58 + 32;

            v61 = 0;
            v62 = v56;
            do
            {
              v63 = v60 + 40 * v61;
              if ((*(v63 + 32) & 1) == 0)
              {
                v64 = *(v209 + 24);
                v65 = *(v64 + 16);
                if (v65)
                {
                  v66 = (v64 + 32);
                  while (*v66 != *v63)
                  {
                    v66 += 5;
                    if (!--v65)
                    {
                      goto LABEL_59;
                    }
                  }
                }

                else
                {
LABEL_59:
                  sub_1AF640BC8();
                }
              }

              ++v61;
            }

            while (v61 != v59);

            v7 = v204;
          }

          else
          {
            v7 = v54;
            v62 = v56;
          }

          if (*(v51 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v51 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v45 + 72) * v62);
          }

          v67 = v62;
          if (*(v45 + 184))
          {
            v68 = 0;
          }

          else
          {
            v68 = *(v45 + 168);
          }

          *&v248[0] = 0;

          MEMORY[0x1EEE9AC00](v69, v70);
          v71 = v219;
          v72 = v214;
          DWORD2(v265) = -1;
          v266 = v199;
          v267 = v194;
          v268 = v199;
          v269 = v194;
          *&v264 = v199;
          *(&v264 + 1) = v194;
          *&v265 = v68;
          if (v67 >= 1)
          {
            do
            {
              LOBYTE(v223) = v72;
              sub_1AF6248A8(v48, v71 | (v72 << 32), v184, v51, &v264, sub_1AF5C5E08);
              v72 = v214;
              v71 = v219;
            }

            while ((*(&v264 + 1) - v264) > 0);
          }

          v73 = *(v45 + 192);
          v43 = v189;
          v44 = v175;
          if (v73)
          {
            v74 = *(v45 + 208);
            sub_1AF75D364(v199, v194, v73);
            sub_1AF75D364(v199, v194, v74);
          }
        }

        v43 += 48;
        os_unfair_lock_unlock(*(v45 + 344));
        os_unfair_lock_unlock(*(v45 + 376));
      }

      while (v43 != v44);
    }

    sub_1AFCB9F58(v241, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v293 = v180;
  v294 = v179;
  v295 = v178;
  v296 = 1;
  v297 = 2;
  v298 = 0;

  sub_1AF703230(1, v245);

  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1AFE431C0;
  *(v75 + 32) = &type metadata for VFXAssetTag;
  *(v75 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v75, v246);
  sub_1AFCBA0DC(v245, &qword_1EB632C38, &type metadata for TextureArrayFileAsset, &off_1F2544168);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v275[0] = v246[0];
  v275[1] = v246[1];
  v276 = v247;
  sub_1AF6B06C0(v182, v275, 0x200000000, v248);
  sub_1AFCBA0DC(v246, &qword_1EB632C38, &type metadata for TextureArrayFileAsset, &off_1F2544168);
  if (*&v248[0])
  {
    if (v251 >= 1 && v250)
    {
      v76 = v249;
      v77 = v249 + 48 * v250;
      v176 = v77;
      do
      {
        v78 = *(v76 + 40);
        v79 = *(v78 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v79);
        os_unfair_lock_lock(*(v78 + 344));
        v80 = *(v78 + 24);

        v266 = 0;
        v264 = 0u;
        v265 = 0u;
        v257 = 0;
        v255 = 0u;
        v256 = 0u;
        v81 = sub_1AF65A4B4(v80, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v264, &v255);

        sub_1AFCB9FB8(&v255, sub_1AF5C4448);
        sub_1AFCB9FB8(&v264, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v81);
        }

        else
        {
          v190 = v76;
          v82 = *(v78 + 232);
          v83 = *(v78 + 240);
          v185 = *(v78 + 120);
          v220 = *(v78 + 28);
          v215 = *(v78 + 32);
          v84 = *(v78 + 16);
          v85 = *(v78 + 40);
          v86 = *(v85 + 200);
          v210 = *(*(v84 + 88) + 8 * v81 + 32);

          if ((v86 & 1) != 0 || *(v210 + 200) == 1)
          {
            *(v84 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v85 = *(v78 + 40);
          }

          v87 = v7;
          v88 = *(v78 + 256);
          sub_1AF5B4FCC(v85, v82, v83, 0, v78);
          v195 = *(v78 + 256);
          v200 = v88;
          v89 = v195 - v88;
          if (v195 == v88)
          {
            v90 = 0;
          }

          else
          {
            v90 = v88;
          }

          *&v255 = v90;
          v91 = *(*(v78 + 40) + 24);
          v92 = *(v91 + 16);
          if (v92)
          {
            v205 = v87;
            v93 = v91 + 32;

            v94 = 0;
            v95 = v89;
            do
            {
              v96 = v93 + 40 * v94;
              if ((*(v96 + 32) & 1) == 0)
              {
                v97 = *(v210 + 24);
                v98 = *(v97 + 16);
                if (v98)
                {
                  v99 = (v97 + 32);
                  while (*v99 != *v96)
                  {
                    v99 += 5;
                    if (!--v98)
                    {
                      goto LABEL_95;
                    }
                  }
                }

                else
                {
LABEL_95:
                  sub_1AF640BC8();
                }
              }

              ++v94;
            }

            while (v94 != v92);

            v7 = v205;
          }

          else
          {
            v7 = v87;
            v95 = v89;
          }

          if (*(v84 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v84 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v78 + 72) * v95);
          }

          v100 = v95;
          if (*(v78 + 184))
          {
            v101 = 0;
          }

          else
          {
            v101 = *(v78 + 168);
          }

          *&v223 = 0;

          MEMORY[0x1EEE9AC00](v102, v103);
          v104 = v220;
          v105 = v215;
          DWORD2(v265) = -1;
          v266 = v200;
          v267 = v195;
          v268 = v200;
          v269 = v195;
          *&v264 = v200;
          *(&v264 + 1) = v195;
          *&v265 = v101;
          if (v100 >= 1)
          {
            do
            {
              LOBYTE(v287) = v105;
              sub_1AF6248A8(v81, v104 | (v105 << 32), v185, v84, &v264, sub_1AF5C5E08);
              v105 = v215;
              v104 = v220;
            }

            while ((*(&v264 + 1) - v264) > 0);
          }

          v106 = *(v78 + 192);
          v76 = v190;
          v77 = v176;
          if (v106)
          {
            v107 = *(v78 + 208);
            sub_1AF75D364(v200, v195, v106);
            sub_1AF75D364(v200, v195, v107);
          }
        }

        v76 += 48;
        os_unfair_lock_unlock(*(v78 + 344));
        os_unfair_lock_unlock(*(v78 + 376));
      }

      while (v76 != v77);
    }

    sub_1AFCB9F58(v248, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v287 = v180;
  v288 = v179;
  v289 = v178;
  v290 = 1;
  v291 = 2;
  v292 = 0;

  sub_1AF7033E0(1, v252);

  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1AFE431C0;
  *(v108 + 32) = &type metadata for VFXAssetTag;
  *(v108 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v108, v253);
  sub_1AFCBA0DC(v252, &qword_1EB643CA0, &type metadata for PointCacheGenerator, &off_1F2567FB0);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v273[0] = v253[0];
  v273[1] = v253[1];
  v274 = v254;
  sub_1AF6B06C0(v182, v273, 0x200000000, &v255);
  sub_1AFCBA0DC(v253, &qword_1EB643CA0, &type metadata for PointCacheGenerator, &off_1F2567FB0);
  if (v255)
  {
    if (v260 >= 1 && v259)
    {
      v109 = v258;
      v110 = v258 + 48 * v259;
      v177 = v110;
      do
      {
        v111 = *(v109 + 40);
        v112 = *(v111 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v112);
        os_unfair_lock_lock(*(v111 + 344));
        v113 = *(v111 + 24);

        v266 = 0;
        v264 = 0u;
        v265 = 0u;
        v225 = 0;
        v223 = 0u;
        v224 = 0u;
        v114 = sub_1AF65A4B4(v113, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v264, &v223);

        sub_1AFCB9FB8(&v223, sub_1AF5C4448);
        sub_1AFCB9FB8(&v264, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v114);
        }

        else
        {
          v191 = v109;
          v115 = *(v111 + 232);
          v116 = *(v111 + 240);
          v186 = *(v111 + 120);
          v221 = *(v111 + 28);
          v216 = *(v111 + 32);
          v117 = *(v111 + 16);
          v118 = *(v111 + 40);
          v119 = *(v118 + 200);
          v211 = *(*(v117 + 88) + 8 * v114 + 32);

          if ((v119 & 1) != 0 || *(v211 + 200) == 1)
          {
            *(v117 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v118 = *(v111 + 40);
          }

          v120 = v7;
          v121 = *(v111 + 256);
          sub_1AF5B4FCC(v118, v115, v116, 0, v111);
          v196 = *(v111 + 256);
          v201 = v121;
          v122 = v196 - v121;
          if (v196 == v121)
          {
            v123 = 0;
          }

          else
          {
            v123 = v121;
          }

          *&v223 = v123;
          v124 = *(*(v111 + 40) + 24);
          v125 = *(v124 + 16);
          if (v125)
          {
            v206 = v120;
            v126 = v124 + 32;

            v127 = 0;
            v128 = v122;
            do
            {
              v129 = v126 + 40 * v127;
              if ((*(v129 + 32) & 1) == 0)
              {
                v130 = *(v211 + 24);
                v131 = *(v130 + 16);
                if (v131)
                {
                  v132 = (v130 + 32);
                  while (*v132 != *v129)
                  {
                    v132 += 5;
                    if (!--v131)
                    {
                      goto LABEL_131;
                    }
                  }
                }

                else
                {
LABEL_131:
                  sub_1AF640BC8();
                }
              }

              ++v127;
            }

            while (v127 != v125);

            v7 = v206;
          }

          else
          {
            v7 = v120;
            v128 = v122;
          }

          if (*(v117 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v117 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v111 + 72) * v128);
          }

          v133 = v128;
          if (*(v111 + 184))
          {
            v134 = 0;
          }

          else
          {
            v134 = *(v111 + 168);
          }

          v281 = 0;

          MEMORY[0x1EEE9AC00](v135, v136);
          v137 = v221;
          v138 = v216;
          DWORD2(v265) = -1;
          v266 = v201;
          v267 = v196;
          v268 = v201;
          v269 = v196;
          *&v264 = v201;
          *(&v264 + 1) = v196;
          *&v265 = v134;
          if (v133 >= 1)
          {
            do
            {
              LOBYTE(v271[0]) = v138;
              sub_1AF6248A8(v114, v137 | (v138 << 32), v186, v117, &v264, sub_1AF5C5E08);
              v138 = v216;
              v137 = v221;
            }

            while ((*(&v264 + 1) - v264) > 0);
          }

          v139 = *(v111 + 192);
          v109 = v191;
          v110 = v177;
          if (v139)
          {
            v140 = *(v111 + 208);
            sub_1AF75D364(v201, v196, v139);
            sub_1AF75D364(v201, v196, v140);
          }
        }

        v109 += 48;
        os_unfair_lock_unlock(*(v111 + 344));
        os_unfair_lock_unlock(*(v111 + 376));
      }

      while (v109 != v110);
    }

    sub_1AFCB9F58(&v255, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v281 = v180;
  v282 = v179;
  v283 = v178;
  v284 = 1;
  v285 = 2;
  v286 = 0;

  sub_1AF70512C(1, v261);

  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_1AFE431C0;
  *(v141 + 32) = &type metadata for VFXAssetTag;
  *(v141 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v141, v262);
  sub_1AFCBA0DC(v261, &qword_1EB643CA8, &type metadata for TextureSource, &off_1F2545C18);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v271[0] = v262[0];
  v271[1] = v262[1];
  v272 = v263;
  sub_1AF6B06C0(v182, v271, 0x200000000, &v264);
  result = sub_1AFCBA0DC(v262, &qword_1EB643CA8, &type metadata for TextureSource, &off_1F2545C18);
  if (v264)
  {
    if (v270 >= 1 && v269)
    {
      v143 = v267;
      v144 = v267 + 48 * v269;
      v181 = v144;
      do
      {
        v145 = *(v143 + 40);
        v146 = *(v145 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v146);
        os_unfair_lock_lock(*(v145 + 344));
        v147 = *(v145 + 24);

        v225 = 0;
        v223 = 0u;
        v224 = 0u;
        memset(v230, 0, 40);
        v148 = sub_1AF65A4B4(v147, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v223, v230);

        sub_1AFCB9FB8(v230, sub_1AF5C4448);
        sub_1AFCB9FB8(&v223, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v148);
        }

        else
        {
          v192 = v143;
          v149 = v7;
          v150 = *(v145 + 232);
          v151 = *(v145 + 240);
          v187 = *(v145 + 120);
          v222 = *(v145 + 28);
          v217 = *(v145 + 32);
          v152 = *(v145 + 16);
          v153 = *(v145 + 40);
          v154 = *(v153 + 200);
          v212 = *(*(v152 + 88) + 8 * v148 + 32);

          if ((v154 & 1) != 0 || *(v212 + 200) == 1)
          {
            *(v152 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v153 = *(v145 + 40);
          }

          v155 = *(v145 + 256);
          sub_1AF5B4FCC(v153, v150, v151, 0, v145);
          v202 = v155;
          v207 = v149;
          v197 = *(v145 + 256);
          v156 = v197 - v155;
          if (v197 == v155)
          {
            v157 = 0;
          }

          else
          {
            v157 = v155;
          }

          v230[0] = v157;
          v158 = *(*(v145 + 40) + 24);
          v159 = *(v158 + 16);
          if (v159)
          {
            v160 = v158 + 32;

            for (i = 0; i != v159; ++i)
            {
              v162 = v160 + 40 * i;
              if ((*(v162 + 32) & 1) == 0)
              {
                v163 = *(v212 + 24);
                v164 = *(v163 + 16);
                if (v164)
                {
                  v165 = (v163 + 32);
                  while (*v165 != *v162)
                  {
                    v165 += 5;
                    if (!--v164)
                    {
                      goto LABEL_167;
                    }
                  }
                }

                else
                {
LABEL_167:
                  sub_1AF640BC8();
                }
              }
            }
          }

          v144 = v181;
          if (*(v152 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v152 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v145 + 72) * v156);
          }

          if (*(v145 + 184))
          {
            v166 = 0;
          }

          else
          {
            v166 = *(v145 + 168);
          }

          v229 = 0;

          MEMORY[0x1EEE9AC00](v167, v168);
          v169 = v222;
          v170 = v217;
          DWORD2(v224) = -1;
          v225 = v202;
          v226 = v197;
          v227 = v202;
          v228 = v197;
          *&v223 = v202;
          *(&v223 + 1) = v197;
          *&v224 = v166;
          if (v156 >= 1)
          {
            do
            {
              sub_1AF6248A8(v148, v169 | (v170 << 32), v187, v152, &v223, sub_1AF5C5E08);
              v170 = v217;
              v169 = v222;
            }

            while ((*(&v223 + 1) - v223) > 0);
          }

          v171 = *(v145 + 192);
          v7 = v207;
          if (v171)
          {
            v172 = *(v145 + 208);
            sub_1AF75D364(v202, v197, v171);
            sub_1AF75D364(v202, v197, v172);
          }

          v143 = v192;
        }

        v143 += 48;
        os_unfair_lock_unlock(*(v145 + 344));
        os_unfair_lock_unlock(*(v145 + 376));
      }

      while (v143 != v144);
    }

    return sub_1AFCB9F58(&v264, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  return result;
}

void sub_1AFCA2108(uint64_t a1, uint64_t a2)
{
  v391 = *MEMORY[0x1E69E9840];
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v269 = a2;
    swift_once();
    LODWORD(a2) = v269;
  }

  v4 = qword_1ED73B840;
  v330 = qword_1ED73B840;
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  v331 = v5;
  v6 = v3 >> 31;
  v332 = v3 >> 31;
  v333 = 1;
  v334 = 2;
  v335 = 0;

  sub_1AF705140(1, v309);

  v322[0] = v309[0];
  v322[1] = v309[1];
  v323 = v310;
  v290 = a1;
  sub_1AF6B06C0(a1, v322, 0x200000000, &v354);
  if (v354)
  {
    v274 = v4;
    v272 = v5;
    v271 = v3 >> 31;
    if (v361 < 1 || (v287 = v358) == 0)
    {
LABEL_174:
      sub_1AFCB9F58(&v354, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      v139 = 0;
      v4 = v274;
      v5 = v272;
      LOBYTE(v6) = v271;
      goto LABEL_176;
    }

    v7 = 0;
    v285 = v357;
    v8 = v360;
    v9 = *(v360 + 32);
    v10 = *(v359 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v314 = v354;
    v315 = v355;
    v316 = v356;
    v282 = v9;
    v279 = v10;
    while (1)
    {
      v11 = (v285 + 48 * v7);
      v12 = *v11;
      v299 = v11[1];
      v13 = *(v11 + 3);
      v14 = *(v11 + 5);
      v292 = *(v11 + 2);
      v295 = *(v11 + 4);
      v288 = v7;
      if (v10)
      {
        v15 = *(v14 + 376);

        os_unfair_lock_lock(v15);
        os_unfair_lock_lock(*(v14 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v9);
      v16 = *(v8 + 64);
      v389[0] = *(v8 + 48);
      v389[1] = v16;
      v390 = *(v8 + 80);
      v17 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
      *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v17, 8);
      *(v8 + 56) = v17;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 64) = 0;
      sub_1AF64B110(&type metadata for ParticleGlobalForce, &off_1F2562C30, v292, v13, v295, v8);
      if (v292)
      {
        if (v295)
        {
          v18 = 0;
          while (1)
          {
            v300 = v292[v18];
            v19 = *(*(v14 + 40) + 16);
            v20 = *(v19 + 128);
            if (!*(v20 + 16))
            {
              goto LABEL_57;
            }

            v21 = sub_1AF449CB8(&type metadata for ParticleGlobalForce);
            if ((v22 & 1) == 0 || *(*(v19 + 24) + 16 * *(*(v20 + 56) + 8 * v21) + 32) != &type metadata for ParticleGlobalForce)
            {
              goto LABEL_57;
            }

            *v362 = &type metadata for ParticleGlobalForce;
            *&v362[8] = &off_1F2562C30;
            v362[40] = 1;
            v23 = *(v8 + 104);
            v24 = *(v23 + 16);
            if (!v24)
            {

LABEL_52:
              v38 = *(v14 + 240) - *(v14 + 232);
              v39 = ecs_stack_allocator_allocate(*(v8 + 32), 8 * v38, 8);
              *v39 = v300;
              sub_1AF63515C(v362, &v368);
              *v370 = v39;
              *&v370[8] = v38;
              *&v370[16] = 1;
              v40 = *(v8 + 104);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v8 + 104) = v40;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v40 = sub_1AF420EA0(0, v40[2] + 1, 1, v40);
                *(v8 + 104) = v40;
              }

              v43 = v40[2];
              v42 = v40[3];
              if (v43 >= v42 >> 1)
              {
                *(v8 + 104) = sub_1AF420EA0(v42 > 1, v43 + 1, 1, v40);
              }

              sub_1AF635250(v362);
              v44 = *(v8 + 104);
              *(v44 + 16) = v43 + 1;
              v45 = v44 + 72 * v43;
              *(v45 + 32) = v368;
              v47 = *&v369[16];
              v46 = *v370;
              v48 = *v369;
              *(v45 + 96) = *&v370[16];
              *(v45 + 64) = v47;
              *(v45 + 80) = v46;
              *(v45 + 48) = v48;
              *(v8 + 104) = v44;
              goto LABEL_57;
            }

            v25 = v23 + 32;

            v26 = 0;
            while (1)
            {
              sub_1AF6350F8(v25, v380);
              sub_1AF63515C(v380, &v368);
              sub_1AF63515C(v362, v370);
              if (v369[24] <= 2u)
              {
                if (!v369[24])
                {
                  sub_1AFCB9FB8(v380, sub_1AF43A540);
                  sub_1AF63515C(&v368, &v341);
                  if (v370[40])
                  {
                    goto LABEL_25;
                  }

                  goto LABEL_38;
                }

                if (v369[24] == 1)
                {
                  sub_1AFCB9FB8(v380, sub_1AF43A540);
                  sub_1AF63515C(&v368, &v341);
                  if (v370[40] != 1)
                  {
                    goto LABEL_25;
                  }

LABEL_38:
                  v29 = v341;
                  v30 = *v370;
                  sub_1AF635250(&v368);
                  if (v29 == v30)
                  {
                    goto LABEL_48;
                  }

                  goto LABEL_26;
                }

                sub_1AF63515C(&v368, &v341);
                if (v370[40] != 2)
                {
LABEL_24:
                  sub_1AFCB9FB8(v380, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v341);
LABEL_25:
                  sub_1AFCB9F58(&v368, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
                  goto LABEL_26;
                }

                goto LABEL_43;
              }

              if (v369[24] == 3)
              {
                sub_1AF63515C(&v368, &v341);
                if (v370[40] != 3)
                {
                  goto LABEL_24;
                }

LABEL_43:
                sub_1AF616568(&v341, v347);
                sub_1AF616568(v370, v350);
                v31 = v348;
                v32 = v349;
                sub_1AF441150(v347, v348);
                LOBYTE(v31) = sub_1AF640C98(v350, v31, v32);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v350);
                sub_1AFCB9FB8(v380, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v347);
                sub_1AF635250(&v368);
                if (v31)
                {
                  goto LABEL_48;
                }

                goto LABEL_26;
              }

              if (v369[24] != 4)
              {
                break;
              }

              sub_1AFCB9FB8(v380, sub_1AF43A540);
              sub_1AF63515C(&v368, &v341);
              if (v370[40] != 4)
              {
                goto LABEL_25;
              }

              v27 = v341;
              v28 = v370[0];
              sub_1AF635250(&v368);
              if (v27 == v28)
              {
                goto LABEL_48;
              }

LABEL_26:
              ++v26;
              v25 += 72;
              if (v24 == v26)
              {
                goto LABEL_52;
              }
            }

            sub_1AFCB9FB8(v380, sub_1AF43A540);
            if (v370[40] != 5)
            {
              goto LABEL_25;
            }

            v33 = vorrq_s8(*&v370[8], *&v370[24]);
            if (*&vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL)) | *v370)
            {
              goto LABEL_25;
            }

            sub_1AF635250(&v368);
LABEL_48:
            v35 = sub_1AFBFCA08(&v368);
            v36 = *(v34 + 48);
            if (v36)
            {
              v37 = *(v34 + 64);
              *(v36 + 8 * v37) = v300;
              *(v34 + 64) = v37 + 1;
            }

            (v35)(&v368, 0);

            sub_1AF635250(v362);
LABEL_57:
            v49 = *(*(v14 + 40) + 16);
            v50 = *(v49 + 128);
            if (*(v50 + 16))
            {
              v51 = sub_1AF449CB8(&type metadata for ParticleForceField);
              if ((v52 & 1) != 0 && *(*(v49 + 24) + 16 * *(*(v50 + 56) + 8 * v51) + 32) == &type metadata for ParticleForceField)
              {
                goto LABEL_18;
              }
            }

            *v362 = &type metadata for ParticleForceField;
            *&v362[8] = &off_1F25613E0;
            v362[40] = 0;
            v53 = *(v8 + 104);
            v54 = *(v53 + 16);
            if (!v54)
            {

LABEL_89:
              v68 = *(v14 + 240) - *(v14 + 232);
              v69 = ecs_stack_allocator_allocate(*(v8 + 32), 8 * v68, 8);
              *v69 = v300;
              sub_1AF63515C(v362, &v368);
              *v370 = v69;
              *&v370[8] = v68;
              *&v370[16] = 1;
              v70 = *(v8 + 104);
              v71 = swift_isUniquelyReferenced_nonNull_native();
              *(v8 + 104) = v70;
              if ((v71 & 1) == 0)
              {
                v70 = sub_1AF420EA0(0, v70[2] + 1, 1, v70);
                *(v8 + 104) = v70;
              }

              v73 = v70[2];
              v72 = v70[3];
              if (v73 >= v72 >> 1)
              {
                *(v8 + 104) = sub_1AF420EA0(v72 > 1, v73 + 1, 1, v70);
              }

              sub_1AF635250(v362);
              v74 = *(v8 + 104);
              *(v74 + 16) = v73 + 1;
              v75 = v74 + 72 * v73;
              *(v75 + 32) = v368;
              v77 = *&v369[16];
              v76 = *v370;
              v78 = *v369;
              *(v75 + 96) = *&v370[16];
              *(v75 + 64) = v77;
              *(v75 + 80) = v76;
              *(v75 + 48) = v78;
              *(v8 + 104) = v74;
              goto LABEL_18;
            }

            v55 = v53 + 32;

            v56 = 0;
            while (2)
            {
              sub_1AF6350F8(v55, v380);
              sub_1AF63515C(v380, &v368);
              sub_1AF63515C(v362, v370);
              if (v369[24] <= 2u)
              {
                if (!v369[24])
                {
                  sub_1AFCB9FB8(v380, sub_1AF43A540);
                  sub_1AF63515C(&v368, &v341);
                  if (v370[40])
                  {
                    goto LABEL_63;
                  }

LABEL_76:
                  v59 = v341;
                  v60 = *v370;
                  sub_1AF635250(&v368);
                  if (v59 == v60)
                  {
                    goto LABEL_86;
                  }

                  goto LABEL_64;
                }

                if (v369[24] == 1)
                {
                  sub_1AFCB9FB8(v380, sub_1AF43A540);
                  sub_1AF63515C(&v368, &v341);
                  if (v370[40] == 1)
                  {
                    goto LABEL_76;
                  }

LABEL_63:
                  sub_1AFCB9F58(&v368, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
LABEL_64:
                  ++v56;
                  v55 += 72;
                  if (v54 == v56)
                  {
                    goto LABEL_89;
                  }

                  continue;
                }

                sub_1AF63515C(&v368, &v341);
                if (v370[40] == 2)
                {
LABEL_81:
                  sub_1AF616568(&v341, v347);
                  sub_1AF616568(v370, v350);
                  v61 = v348;
                  v62 = v349;
                  sub_1AF441150(v347, v348);
                  LOBYTE(v61) = sub_1AF640C98(v350, v61, v62);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v350);
                  sub_1AFCB9FB8(v380, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v347);
                  sub_1AF635250(&v368);
                  if (v61)
                  {
                    goto LABEL_86;
                  }

                  goto LABEL_64;
                }

LABEL_62:
                sub_1AFCB9FB8(v380, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v341);
                goto LABEL_63;
              }

              break;
            }

            if (v369[24] == 3)
            {
              sub_1AF63515C(&v368, &v341);
              if (v370[40] == 3)
              {
                goto LABEL_81;
              }

              goto LABEL_62;
            }

            if (v369[24] == 4)
            {
              sub_1AFCB9FB8(v380, sub_1AF43A540);
              sub_1AF63515C(&v368, &v341);
              if (v370[40] != 4)
              {
                goto LABEL_63;
              }

              v57 = v341;
              v58 = v370[0];
              sub_1AF635250(&v368);
              if (v57 == v58)
              {
                goto LABEL_86;
              }

              goto LABEL_64;
            }

            sub_1AFCB9FB8(v380, sub_1AF43A540);
            if (v370[40] != 5)
            {
              goto LABEL_63;
            }

            v63 = vorrq_s8(*&v370[8], *&v370[24]);
            if (*&vorr_s8(*v63.i8, *&vextq_s8(v63, v63, 8uLL)) | *v370)
            {
              goto LABEL_63;
            }

            sub_1AF635250(&v368);
LABEL_86:
            v65 = sub_1AFBFCA08(&v368);
            v66 = *(v64 + 48);
            if (v66)
            {
              v67 = *(v64 + 64);
              *(v66 + 8 * v67) = v300;
              *(v64 + 64) = v67 + 1;
            }

            (v65)(&v368, 0);

            sub_1AF635250(v362);
LABEL_18:
            if (++v18 == v295)
            {
              goto LABEL_95;
            }
          }
        }

        goto LABEL_95;
      }

      if (v12 != v299)
      {
        break;
      }

LABEL_95:
      sub_1AF630994(v8, &v314, v389);
      sub_1AF62D29C(v14);
      v9 = v282;
      ecs_stack_allocator_pop_snapshot(v282);
      v10 = v279;
      if (v279)
      {
        os_unfair_lock_unlock(*(v14 + 344));
        os_unfair_lock_unlock(*(v14 + 376));
      }

      v7 = v288 + 1;
      if (v288 + 1 == v287)
      {
        goto LABEL_174;
      }
    }

LABEL_99:
    v79 = *(*(v14 + 40) + 16);
    v80 = *(v79 + 128);
    if (!*(v80 + 16))
    {
      goto LABEL_137;
    }

    v81 = sub_1AF449CB8(&type metadata for ParticleGlobalForce);
    if ((v82 & 1) == 0 || *(*(v79 + 24) + 16 * *(*(v80 + 56) + 8 * v81) + 32) != &type metadata for ParticleGlobalForce)
    {
      goto LABEL_137;
    }

    *v362 = &type metadata for ParticleGlobalForce;
    *&v362[8] = &off_1F2562C30;
    v362[40] = 1;
    v83 = *(v8 + 104);
    v84 = *(v83 + 16);
    if (!v84)
    {

LABEL_132:
      v98 = *(v14 + 240) - *(v14 + 232);
      v99 = ecs_stack_allocator_allocate(*(v8 + 32), 8 * v98, 8);
      *v99 = v12;
      sub_1AF63515C(v362, &v368);
      *v370 = v99;
      *&v370[8] = v98;
      *&v370[16] = 1;
      v100 = *(v8 + 104);
      v101 = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + 104) = v100;
      if ((v101 & 1) == 0)
      {
        v100 = sub_1AF420EA0(0, v100[2] + 1, 1, v100);
        *(v8 + 104) = v100;
      }

      v103 = v100[2];
      v102 = v100[3];
      if (v103 >= v102 >> 1)
      {
        *(v8 + 104) = sub_1AF420EA0(v102 > 1, v103 + 1, 1, v100);
      }

      sub_1AF635250(v362);
      v104 = *(v8 + 104);
      *(v104 + 16) = v103 + 1;
      v105 = v104 + 72 * v103;
      *(v105 + 32) = v368;
      v107 = *&v369[16];
      v106 = *v370;
      v108 = *v369;
      *(v105 + 96) = *&v370[16];
      *(v105 + 64) = v107;
      *(v105 + 80) = v106;
      *(v105 + 48) = v108;
      *(v8 + 104) = v104;
      goto LABEL_137;
    }

    v85 = v83 + 32;

    v86 = 0;
    while (1)
    {
      sub_1AF6350F8(v85, v380);
      sub_1AF63515C(v380, &v368);
      sub_1AF63515C(v362, v370);
      if (v369[24] <= 2u)
      {
        break;
      }

      if (v369[24] == 3)
      {
        sub_1AF63515C(&v368, &v341);
        if (v370[40] != 3)
        {
          goto LABEL_104;
        }

LABEL_123:
        sub_1AF616568(&v341, v347);
        sub_1AF616568(v370, v350);
        v91 = v348;
        v92 = v349;
        sub_1AF441150(v347, v348);
        LOBYTE(v91) = sub_1AF640C98(v350, v91, v92);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v350);
        sub_1AFCB9FB8(v380, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v347);
        sub_1AF635250(&v368);
        if (v91)
        {
          goto LABEL_128;
        }

        goto LABEL_106;
      }

      if (v369[24] != 4)
      {
        sub_1AFCB9FB8(v380, sub_1AF43A540);
        if (v370[40] == 5)
        {
          v93 = vorrq_s8(*&v370[8], *&v370[24]);
          if (!(*&vorr_s8(*v93.i8, *&vextq_s8(v93, v93, 8uLL)) | *v370))
          {
            sub_1AF635250(&v368);
LABEL_128:
            v95 = sub_1AFBFCA08(&v368);
            v96 = *(v94 + 48);
            if (v96)
            {
              v97 = *(v94 + 64);
              *(v96 + 8 * v97) = v12;
              *(v94 + 64) = v97 + 1;
            }

            (v95)(&v368, 0);

            sub_1AF635250(v362);
LABEL_137:
            v109 = *(*(v14 + 40) + 16);
            v110 = *(v109 + 128);
            if (*(v110 + 16))
            {
              v111 = sub_1AF449CB8(&type metadata for ParticleForceField);
              if ((v112 & 1) != 0 && *(*(v109 + 24) + 16 * *(*(v110 + 56) + 8 * v111) + 32) == &type metadata for ParticleForceField)
              {
                goto LABEL_98;
              }
            }

            *v362 = &type metadata for ParticleForceField;
            *&v362[8] = &off_1F25613E0;
            v362[40] = 0;
            v113 = *(v8 + 104);
            v114 = *(v113 + 16);
            if (!v114)
            {

LABEL_169:
              v128 = *(v14 + 240) - *(v14 + 232);
              v129 = ecs_stack_allocator_allocate(*(v8 + 32), 8 * v128, 8);
              *v129 = v12;
              sub_1AF63515C(v362, &v368);
              *v370 = v129;
              *&v370[8] = v128;
              *&v370[16] = 1;
              v130 = *(v8 + 104);
              v131 = swift_isUniquelyReferenced_nonNull_native();
              *(v8 + 104) = v130;
              if ((v131 & 1) == 0)
              {
                v130 = sub_1AF420EA0(0, v130[2] + 1, 1, v130);
                *(v8 + 104) = v130;
              }

              v133 = v130[2];
              v132 = v130[3];
              if (v133 >= v132 >> 1)
              {
                *(v8 + 104) = sub_1AF420EA0(v132 > 1, v133 + 1, 1, v130);
              }

              sub_1AF635250(v362);
              v134 = *(v8 + 104);
              *(v134 + 16) = v133 + 1;
              v135 = v134 + 72 * v133;
              *(v135 + 32) = v368;
              v137 = *&v369[16];
              v136 = *v370;
              v138 = *v369;
              *(v135 + 96) = *&v370[16];
              *(v135 + 64) = v137;
              *(v135 + 80) = v136;
              *(v135 + 48) = v138;
              *(v8 + 104) = v134;
              goto LABEL_98;
            }

            v115 = v113 + 32;

            v116 = 0;
            while (2)
            {
              sub_1AF6350F8(v115, v380);
              sub_1AF63515C(v380, &v368);
              sub_1AF63515C(v362, v370);
              if (v369[24] <= 2u)
              {
                if (!v369[24])
                {
                  sub_1AFCB9FB8(v380, sub_1AF43A540);
                  sub_1AF63515C(&v368, &v341);
                  if (v370[40])
                  {
                    goto LABEL_143;
                  }

LABEL_156:
                  v119 = v341;
                  v120 = *v370;
                  sub_1AF635250(&v368);
                  if (v119 == v120)
                  {
                    goto LABEL_166;
                  }

                  goto LABEL_144;
                }

                if (v369[24] == 1)
                {
                  sub_1AFCB9FB8(v380, sub_1AF43A540);
                  sub_1AF63515C(&v368, &v341);
                  if (v370[40] == 1)
                  {
                    goto LABEL_156;
                  }

LABEL_143:
                  sub_1AFCB9F58(&v368, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
LABEL_144:
                  ++v116;
                  v115 += 72;
                  if (v114 == v116)
                  {
                    goto LABEL_169;
                  }

                  continue;
                }

                sub_1AF63515C(&v368, &v341);
                if (v370[40] == 2)
                {
LABEL_161:
                  sub_1AF616568(&v341, v347);
                  sub_1AF616568(v370, v350);
                  v121 = v348;
                  v122 = v349;
                  sub_1AF441150(v347, v348);
                  LOBYTE(v121) = sub_1AF640C98(v350, v121, v122);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v350);
                  sub_1AFCB9FB8(v380, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v347);
                  sub_1AF635250(&v368);
                  if (v121)
                  {
                    goto LABEL_166;
                  }

                  goto LABEL_144;
                }

LABEL_142:
                sub_1AFCB9FB8(v380, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v341);
                goto LABEL_143;
              }

              break;
            }

            if (v369[24] == 3)
            {
              sub_1AF63515C(&v368, &v341);
              if (v370[40] == 3)
              {
                goto LABEL_161;
              }

              goto LABEL_142;
            }

            if (v369[24] == 4)
            {
              sub_1AFCB9FB8(v380, sub_1AF43A540);
              sub_1AF63515C(&v368, &v341);
              if (v370[40] != 4)
              {
                goto LABEL_143;
              }

              v117 = v341;
              v118 = v370[0];
              sub_1AF635250(&v368);
              if (v117 == v118)
              {
                goto LABEL_166;
              }

              goto LABEL_144;
            }

            sub_1AFCB9FB8(v380, sub_1AF43A540);
            if (v370[40] != 5)
            {
              goto LABEL_143;
            }

            v123 = vorrq_s8(*&v370[8], *&v370[24]);
            if (*&vorr_s8(*v123.i8, *&vextq_s8(v123, v123, 8uLL)) | *v370)
            {
              goto LABEL_143;
            }

            sub_1AF635250(&v368);
LABEL_166:
            v125 = sub_1AFBFCA08(&v368);
            v126 = *(v124 + 48);
            if (v126)
            {
              v127 = *(v124 + 64);
              *(v126 + 8 * v127) = v12;
              *(v124 + 64) = v127 + 1;
            }

            (v125)(&v368, 0);

            sub_1AF635250(v362);
LABEL_98:
            if (++v12 == v299)
            {
              goto LABEL_95;
            }

            goto LABEL_99;
          }
        }

        goto LABEL_105;
      }

      sub_1AFCB9FB8(v380, sub_1AF43A540);
      sub_1AF63515C(&v368, &v341);
      if (v370[40] != 4)
      {
        goto LABEL_105;
      }

      v87 = v341;
      v88 = v370[0];
      sub_1AF635250(&v368);
      if (v87 == v88)
      {
        goto LABEL_128;
      }

LABEL_106:
      ++v86;
      v85 += 72;
      if (v84 == v86)
      {
        goto LABEL_132;
      }
    }

    if (!v369[24])
    {
      sub_1AFCB9FB8(v380, sub_1AF43A540);
      sub_1AF63515C(&v368, &v341);
      if (v370[40])
      {
        goto LABEL_105;
      }

      goto LABEL_118;
    }

    if (v369[24] == 1)
    {
      sub_1AFCB9FB8(v380, sub_1AF43A540);
      sub_1AF63515C(&v368, &v341);
      if (v370[40] != 1)
      {
        goto LABEL_105;
      }

LABEL_118:
      v89 = v341;
      v90 = *v370;
      sub_1AF635250(&v368);
      if (v89 == v90)
      {
        goto LABEL_128;
      }

      goto LABEL_106;
    }

    sub_1AF63515C(&v368, &v341);
    if (v370[40] != 2)
    {
LABEL_104:
      sub_1AFCB9FB8(v380, sub_1AF43A540);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v341);
LABEL_105:
      sub_1AFCB9F58(&v368, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      goto LABEL_106;
    }

    goto LABEL_123;
  }

  v139 = 0;
LABEL_176:
  v324 = v4;
  v325 = v5;
  v326 = v6;
  v327 = 1;
  v328 = 2;
  v329 = 0;

  sub_1AF705154(1, v311);

  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0);
  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_1AFE431C0;
  *(v140 + 32) = &type metadata for SubEntity;
  *(v140 + 40) = &off_1F2562CF0;
  sub_1AF5D1EC0(v140, v312);
  sub_1AFCBA0DC(v311, &qword_1EB643C90, &type metadata for ParticleForce, &off_1F2555DA0);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v320[0] = v312[0];
  v320[1] = v312[1];
  v321 = v313;
  v141 = v290;
  sub_1AF6B06C0(v290, v320, 0x200000000, v362);
  v289 = *v362;
  if (!*v362)
  {
LABEL_204:
    v149 = MEMORY[0x1E69E7CC0];
    goto LABEL_206;
  }

  v144 = *(&v363 + 1);
  v145 = v364;
  v366 = *&v362[8];
  v367 = *&v362[24];
  v283 = v365;
  v286 = *&v362[40];
  if (v365 <= 0 || !*(&v363 + 1))
  {
    sub_1AFCB9F58(v362, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    goto LABEL_204;
  }

  v146 = *(*(&v364 + 1) + 32);
  v147 = *(v364 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  *&v369[16] = *&v362[32];
  *v370 = v363;
  *&v370[16] = v364;
  *&v370[32] = v365;
  v368 = *v362;
  *v369 = *&v362[16];
  sub_1AF5DD298(&v368, v380);
  v148 = 0;
  v149 = MEMORY[0x1E69E7CC0];
  v277 = v146;
  v280 = v144;
  v275 = v147;
  while (1)
  {
    v301 = v148;
    v150 = (v286 + 48 * v148);
    v151 = *v150;
    v152 = v150[1];
    v153 = v150[2];
    v293 = *(v150 + 3);
    v296 = *(v150 + 2);
    v154 = *(v150 + 5);
    v291 = *(v150 + 4);
    if (v147)
    {
      v155 = *(v154 + 376);

      os_unfair_lock_lock(v155);
      os_unfair_lock_lock(*(v154 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v146);
    v156 = *(*(&v145 + 1) + 64);
    v378[0] = *(*(&v145 + 1) + 48);
    v378[1] = v156;
    v379 = *(*(&v145 + 1) + 80);
    v157 = *(*(*(*(v154 + 40) + 16) + 32) + 16) + 1;
    *(*(&v145 + 1) + 48) = ecs_stack_allocator_allocate(*(*(&v145 + 1) + 32), 48 * v157, 8);
    *(*(&v145 + 1) + 56) = v157;
    *(*(&v145 + 1) + 72) = 0uLL;
    *(*(&v145 + 1) + 64) = 0;
    LOBYTE(v341) = 1;
    v380[0] = v145;
    v380[1] = v154;
    v380[2] = *(&v145 + 1);
    v380[3] = v153;
    v380[4] = (v152 - v151 + v153);
    v380[5] = v283;
    v381 = v151;
    v382 = v152;
    v383 = 0;
    v384 = 0;
    v385 = 1;
    v386 = v296;
    v387 = v293;
    v388 = v291;
    v158 = v139;
    sub_1AF707120(v154, v380);
    v159 = v386;
    if (!v386)
    {
      break;
    }

    v160 = v388;
    if (v388)
    {
      do
      {
        v162 = *v159++;
        v161 = v162;

        if (*(v154 + 184))
        {
          goto LABEL_330;
        }

        v164 = *(*(v154 + 168) + 4 * v161);
        v165 = *(*(v163 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v164 + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_1AF4217DC(0, *(v149 + 2) + 1, 1, v149);
        }

        v167 = *(v149 + 2);
        v166 = *(v149 + 3);
        if (v167 >= v166 >> 1)
        {
          v149 = sub_1AF4217DC(v166 > 1, v167 + 1, 1, v149);
        }

        *(v149 + 2) = v167 + 1;
        v168 = &v149[8 * v167];
        *(v168 + 8) = v164;
        *(v168 + 9) = v165;
      }

      while (--v160);
    }

LABEL_194:
    v317 = v289;
    v318 = v366;
    v319 = v367;
    sub_1AF630994(*(&v145 + 1), &v317, v378);
    v139 = v158;
    sub_1AF62D29C(v154);
    v146 = v277;
    ecs_stack_allocator_pop_snapshot(v277);
    v147 = v275;
    if (v275)
    {
      os_unfair_lock_unlock(*(v154 + 344));
      os_unfair_lock_unlock(*(v154 + 376));
    }

    v148 = v301 + 1;
    if (v301 + 1 == v280)
    {
      v177 = MEMORY[0x1E69E6720];
      sub_1AFCB9F58(v362, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      sub_1AFCB9F58(v362, &qword_1ED725EA0, &type metadata for QueryResult, v177, sub_1AFCBA88C);
      v141 = v290;
LABEL_206:
      v294 = *(v149 + 2);
      if (!v294)
      {
LABEL_329:
        sub_1AFCBA0DC(v312, &qword_1EB643C90, &type metadata for ParticleForce, &off_1F2555DA0);
        sub_1AFCBA0DC(v309, &qword_1EB643C98, &type metadata for ParticleGlobalForce, &off_1F2562C30);

        return;
      }

      v178 = 0;
      v308 = 0uLL;
      v352 = 0;
      v353 = 0;
      while (2)
      {
        v179 = *&v149[8 * v178 + 32];
        v180 = v179;
        v302.i64[0] = v179;
        if (v179 == -1)
        {
          if (HIDWORD(v179))
          {

            goto LABEL_224;
          }

          v197 = 0uLL;
        }

        else
        {
          v181 = OBJC_IVAR____TtC3VFX13EntityManager__entries;

          if ((v180 & 0x80000000) == 0)
          {
            v183 = (v182 + v181);
            v184 = *(v182 + v181 + 8);
            v141 = v182;
            if (v184 <= v180 || ((v185 = (*v183 + 12 * v180), v302.i32[1] != -1) ? (v186 = v185[2] == v302.i32[1]) : (v186 = 1), !v186))
            {

              v197 = 0uLL;
              goto LABEL_230;
            }

            v187 = *(v185 + 2);
            v188 = *(*(v182 + 144) + 8 * *v185 + 32);
            v189 = *(v188 + 48);
            v190 = (v189 + 32);
            v191 = *(v189 + 16) + 1;
            while (--v191)
            {
              v192 = v190 + 5;
              v193 = *v190;
              v190 += 5;
              if (v193 == &type metadata for ParticleForce)
              {
                v194 = (&(*(v192 - 2))[2 * v187].Kind + *(v188 + 128));
                v196 = *v194;
                v195 = v194[1];

                goto LABEL_225;
              }
            }
          }

LABEL_224:

          v196 = 0;
          v195 = 0;
LABEL_225:
          v197.i64[0] = v196;
          v197.i64[1] = v195;
          if (v180 != -1)
          {
            v141 = v290;
            goto LABEL_230;
          }

          v141 = v290;
          if (v302.i32[1])
          {
LABEL_230:
            v297 = v197;
            v198 = *(v141 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

            if (v198)
            {
              v199 = *(v198 + 80);
              swift_unknownObjectWeakLoadStrong();
              v198 = *(v198 + 56);
            }

            else
            {
              v199 = 0;
            }

            v306 = 0;
            swift_unknownObjectUnownedInit();
            v305[0] = v290;
            v306 = v198;
            swift_unknownObjectUnownedAssign();
            swift_unownedRetain();
            swift_unknownObjectRelease();
            v307 = v199;
            if (v180 != -1)
            {
              swift_unownedRetainStrong();

              swift_unownedRetainStrong();
              v141 = v290;
              if ((v180 & 0x80000000) != 0)
              {
                goto LABEL_249;
              }

              if (*(v290 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v180)
              {
                goto LABEL_249;
              }

              v200 = (*(v290 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v180);
              if (v302.i32[1] != -1 && v200[2] != v302.i32[1])
              {
                goto LABEL_249;
              }

              v201 = *(v200 + 2);
              v202 = *(*(v290 + 144) + 8 * *v200 + 32);
              if (*(v202 + 232) > v201 || *(v202 + 240) <= v201)
              {
                goto LABEL_249;
              }

              v284 = *(v200 + 2);
              v203 = **(v290 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
              v204 = *(v202 + 344);

              os_unfair_lock_lock(v204);
              ecs_stack_allocator_push_snapshot(*(v203 + 32));
              v205 = *(*(v202 + 40) + 16);
              v206 = *(v205 + 128);
              if (!*(v206 + 16) || (v207 = sub_1AF449CB8(&type metadata for ParticleForce), (v208 & 1) == 0) || *(*(v205 + 24) + 16 * *(*(v206 + 56) + 8 * v207) + 32) != &type metadata for ParticleForce)
              {

LABEL_244:
                v141 = v290;
                goto LABEL_245;
              }

              v350[0] = &type metadata for ParticleForce;
              v350[1] = &off_1F2555DA0;
              v351 = 1;
              v273 = v203;
              v243 = *(v203 + 104);
              v276 = (v203 + 104);
              v244 = *(v243 + 16);
              if (!v244)
              {

LABEL_324:
                v258 = *(v202 + 240) - *(v202 + 232);
                v203 = v273;
                v259 = ecs_stack_allocator_allocate(*(v273 + 32), 8 * v258, 8);
                *v259 = v284;
                sub_1AF63515C(v350, &v341);
                *v344 = v259;
                *&v344[8] = v258;
                *&v344[16] = 1;
                v260 = *(v273 + 104);
                v261 = swift_isUniquelyReferenced_nonNull_native();
                *(v273 + 104) = v260;
                if ((v261 & 1) == 0)
                {
                  v260 = sub_1AF420EA0(0, v260[2] + 1, 1, v260);
                  *v276 = v260;
                }

                v263 = v260[2];
                v262 = v260[3];
                if (v263 >= v262 >> 1)
                {
                  *v276 = sub_1AF420EA0(v262 > 1, v263 + 1, 1, v260);
                }

                sub_1AF635250(v350);
                v264 = *v276;
                *(v264 + 16) = v263 + 1;
                v265 = v264 + 72 * v263;
                *(v265 + 32) = v341;
                v266 = *v344;
                v267 = v343;
                v268 = v342;
                *(v265 + 96) = *&v344[16];
                *(v265 + 64) = v267;
                *(v265 + 80) = v266;
                *(v265 + 48) = v268;
                *v276 = v264;
                goto LABEL_244;
              }

              v245 = v243 + 32;

              v246 = 0;
              v281 = v244;
              while (2)
              {
                sub_1AF6350F8(v245, v347);
                sub_1AF63515C(v347, &v341);
                sub_1AF63515C(v350, v344);
                if (BYTE8(v343) > 2u)
                {
                  if (BYTE8(v343) != 3)
                  {
                    if (BYTE8(v343) != 4)
                    {
                      sub_1AFCB9FB8(v347, sub_1AF43A540);
                      if (v346 == 5)
                      {
                        v253 = vorrq_s8(*&v344[8], v345);
                        if (!(*&vorr_s8(*v253.i8, *&vextq_s8(v253, v253, 8uLL)) | *v344))
                        {
                          sub_1AF635250(&v341);
LABEL_320:
                          v255 = sub_1AFBFCA08(&v341);
                          v256 = *(v254 + 48);
                          if (v256)
                          {
                            v257 = *(v254 + 64);
                            *(v256 + 8 * v257) = v284;
                            *(v254 + 64) = v257 + 1;
                          }

                          (v255)(&v341, 0);
                          sub_1AF635250(v350);
                          v141 = v290;
                          v203 = v273;
LABEL_245:
                          sub_1AF62D29C(v202);

                          ecs_stack_allocator_pop_snapshot(*(v203 + 32));
                          os_unfair_lock_unlock(*(v202 + 344));

LABEL_249:

                          if (swift_unknownObjectUnownedLoadStrong())
                          {
                            swift_unknownObjectRelease();
                          }

                          if (v199)
                          {
                            swift_unownedRetainStrong();
                            *&v341 = v302.i64[0];
                            *(&v341 + 1) = v141;
                            *&v342 = &type metadata for ParticleForce;
                            *(&v342 + 1) = &off_1F2555DA0;
                            v344[8] = 13;
                            sub_1AF6C67D0(&v341);

                            sub_1AF57955C(&v341);
                            sub_1AF579490(v305);
                            goto LABEL_253;
                          }

                          sub_1AF579490(v305);
                          goto LABEL_255;
                        }
                      }

                      goto LABEL_296;
                    }

                    sub_1AFCB9FB8(v347, sub_1AF43A540);
                    sub_1AF63515C(&v341, v340);
                    if (v346 != 4)
                    {
                      goto LABEL_296;
                    }

                    v247 = LOBYTE(v340[0]);
                    v248 = v344[0];
                    sub_1AF635250(&v341);
                    v249 = v247 == v248;
LABEL_309:
                    v244 = v281;
                    if (v249)
                    {
                      goto LABEL_320;
                    }

                    goto LABEL_297;
                  }

                  sub_1AF63515C(&v341, v340);
                  if (v346 == 3)
                  {
LABEL_315:
                    sub_1AF616568(v340, v337);
                    sub_1AF616568(v344, v336);
                    v252 = v338;
                    v278 = v339;
                    sub_1AF441150(v337, v338);
                    LOBYTE(v252) = sub_1AF640C98(v336, v252, v278);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v336);
                    sub_1AFCB9FB8(v347, sub_1AF43A540);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v337);
                    sub_1AF635250(&v341);
                    if (v252)
                    {
                      goto LABEL_320;
                    }

                    goto LABEL_297;
                  }
                }

                else
                {
                  if (!BYTE8(v343))
                  {
                    sub_1AFCB9FB8(v347, sub_1AF43A540);
                    sub_1AF63515C(&v341, v340);
                    if (!v346)
                    {
                      goto LABEL_308;
                    }

                    goto LABEL_296;
                  }

                  if (BYTE8(v343) == 1)
                  {
                    sub_1AFCB9FB8(v347, sub_1AF43A540);
                    sub_1AF63515C(&v341, v340);
                    if (v346 == 1)
                    {
LABEL_308:
                      v250 = *&v340[0];
                      v251 = *v344;
                      sub_1AF635250(&v341);
                      v249 = v250 == v251;
                      goto LABEL_309;
                    }

LABEL_296:
                    sub_1AFCB9F58(&v341, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
LABEL_297:
                    ++v246;
                    v245 += 72;
                    if (v244 == v246)
                    {
                      goto LABEL_324;
                    }

                    continue;
                  }

                  sub_1AF63515C(&v341, v340);
                  if (v346 == 2)
                  {
                    goto LABEL_315;
                  }
                }

                break;
              }

              sub_1AFCB9FB8(v347, sub_1AF43A540);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v340);
              goto LABEL_296;
            }

            if (v302.i32[1])
            {
              v141 = v290;
              swift_unownedRetainStrong();

              swift_unownedRetainStrong();
              goto LABEL_249;
            }

            sub_1AF579490(v305);
            v141 = v290;
            if (v199)
            {
LABEL_253:
              v209 = [objc_opt_self() immediateMode];
              sub_1AF6C5E30(v209 ^ 1);
            }

LABEL_255:

            v197 = v297;
          }
        }

        *v370 = v308;
        *&v370[20] = v352;
        *&v370[28] = v353;
        v210 = vmulq_f32(v197, v197);
        *v142.i32 = v210.f32[2] + vaddv_f32(*v210.f32);
        *&v368 = 0;
        DWORD2(v368) = 257;
        HIDWORD(v368) = sqrtf(*v142.i32);
        *v369 = 1065353216;
        *&v369[8] = xmmword_1AFE9BBC0;
        *&v369[24] = 1;
        *&v370[32] = xmmword_1AFE208C0;
        v373 = 0;
        v371 = 0;
        v372 = 0;
        *&v370[16] = 1065353216;
        v374 = 1065353216;
        v375 = 0;
        v376 = 1;
        v377 = 0xFFFFFFFFLL;
        v211 = v302.u32[1];
        v212 = v180 == -1 && v302.i32[1] == 0;
        v213 = v212;
        if (!v212)
        {
          v298 = v197;
          v303 = v142;
          v214 = *(v141 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

          if (v214)
          {
            v215 = *(v214 + 80);
            swift_unknownObjectWeakLoadStrong();
            v214 = *(v214 + 56);
          }

          else
          {
            v215 = 0;
          }

          *&v342 = 0;
          swift_unknownObjectUnownedInit();
          v141 = v290;
          *&v341 = v290;
          *&v342 = v214;
          swift_unknownObjectUnownedAssign();
          swift_unownedRetain();
          swift_unknownObjectRelease();
          BYTE8(v342) = v215;
          sub_1AFC7722C(&v341, &v368, v180 | (v211 << 32));
          sub_1AF579490(&v341);
          if (v215)
          {
            v216 = [objc_opt_self() immediateMode];
            sub_1AF6C5E30(v216 ^ 1);
          }

          v197 = v298;
          v142 = v303;
        }

        v217 = vdupq_lane_s32(*v142.i8, 0);
        v217.i32[3] = 0;
        v218 = vrsqrteq_f32(v217);
        v219 = vmulq_f32(v218, vrsqrtsq_f32(v217, vmulq_f32(v218, v218)));
        v220 = vmulq_f32(v219, vrsqrtsq_f32(v217, vmulq_f32(v219, v219)));
        v221 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(*v142.i32 != 0.0)), 0x1FuLL));
        v221.i32[3] = 0;
        v222 = vbslq_s8(vcltzq_s32(v221), vmulq_f32(v197, v220), v197);
        v142.i32[0] = v222.i32[2];
        v143.i32[0] = 1.0;
        v221.i64[0] = 0x8000000080000000;
        v221.i64[1] = 0x8000000080000000;
        v221.i32[0] = vbslq_s8(v221, v143, v142).i32[0];
        v223 = v222.f32[1] / (fabsf(v222.f32[2]) + 1.0);
        v224 = vmuls_lane_f32(v223, *v222.f32, 1);
        v225 = -(v222.f32[0] * v223);
        v226 = v222.f32[2] + (*v221.i32 * v224);
        v227 = *v221.i32 * v225;
        v228 = 1.0 - v224;
        v229 = vmuls_lane_f32(-*v221.i32, *v222.f32, 1);
        v230 = v222.f32[2] + (v226 + v228);
        if (v230 <= 0.0)
        {
          if (v226 < v228 || v226 < v222.f32[2])
          {
            if (v228 <= v222.f32[2])
            {
              if (v213)
              {
                goto LABEL_209;
              }

              v239 = sqrtf(((v222.f32[2] + 1.0) - v226) - v228);
              v222.i32[0] = vsubq_f32(v222, v222).u32[0];
              v222.f32[1] = v222.f32[1] + v229;
              v222.f32[2] = v239 * v239;
              v222.f32[3] = v227 - v225;
              v233 = vmulq_n_f32(v222, 0.5 / v239);
            }

            else
            {
              if (v213)
              {
                goto LABEL_209;
              }

              v235 = sqrtf(((v228 + 1.0) - v226) - v222.f32[2]);
              v236.f32[0] = v225 + v227;
              v236.f32[1] = v235 * v235;
              *&v236.u32[2] = vrev64_s32(vadd_f32(*v222.f32, __PAIR64__(LODWORD(v229), v222.u32[0])));
              v233 = vmulq_n_f32(v236, 0.5 / v235);
            }
          }

          else
          {
            if (v213)
            {
              goto LABEL_209;
            }

            v237 = sqrtf(((v226 + 1.0) - v228) - v222.f32[2]);
            v238.f32[0] = v237 * v237;
            v238.f32[1] = v225 + v227;
            *&v238.u32[2] = vsub_f32(__PAIR64__(LODWORD(v229), v222.u32[0]), *v222.f32);
            v233 = vmulq_n_f32(v238, 0.5 / v237);
          }

LABEL_285:
          v304 = v233;
          v240 = *(v141 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

          if (v240)
          {
            v241 = *(v240 + 80);
            swift_unknownObjectWeakLoadStrong();
            v240 = *(v240 + 56);
          }

          else
          {
            v241 = 0;
          }

          *&v342 = 0;
          swift_unknownObjectUnownedInit();
          *&v341 = v290;
          *&v342 = v240;
          swift_unknownObjectUnownedAssign();
          swift_unownedRetain();
          v141 = v290;
          swift_unknownObjectRelease();
          BYTE8(v342) = v241;
          sub_1AFC76C74(&v341, v180 | (v211 << 32), v304);
          sub_1AF579490(&v341);
          if (v241)
          {
            v242 = [objc_opt_self() immediateMode];
            sub_1AF6C5E30(v242 ^ 1);
          }
        }

        else if ((v213 & 1) == 0)
        {
          v231 = sqrtf(v230 + 1.0);
          v232.f32[0] = v229 - v222.f32[1];
          v232.i32[1] = vaddq_f32(v222, v222).u32[0];
          v232.f32[2] = v227 - v225;
          v232.f32[3] = v231 * v231;
          v233 = vmulq_n_f32(v232, 0.5 / v231);
          goto LABEL_285;
        }

LABEL_209:
        if (++v178 == v294)
        {
          goto LABEL_329;
        }

        continue;
      }
    }
  }

  v169 = v381;
  v170 = v382;
  if (v381 == v382)
  {
    goto LABEL_194;
  }

  while (1)
  {

    if (*(v154 + 184))
    {
      break;
    }

    v172 = *(*(v154 + 168) + 4 * v169);
    v173 = *(*(v171 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v172 + 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v149 = sub_1AF4217DC(0, *(v149 + 2) + 1, 1, v149);
    }

    v175 = *(v149 + 2);
    v174 = *(v149 + 3);
    if (v175 >= v174 >> 1)
    {
      v149 = sub_1AF4217DC(v174 > 1, v175 + 1, 1, v149);
    }

    ++v169;
    *(v149 + 2) = v175 + 1;
    v176 = &v149[8 * v175];
    *(v176 + 8) = v172;
    *(v176 + 9) = v173;
    if (v170 == v169)
    {
      goto LABEL_194;
    }
  }

LABEL_330:
  sub_1AFDFE518();
  __break(1u);

  sub_1AF579490(&v341);
  v270 = [objc_opt_self() immediateMode];
  sub_1AF6C5E30(v270 ^ 1);
  __break(1u);
}

uint64_t sub_1AFCA492C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
    if (*(a4 + 16))
    {
LABEL_11:
      v16 = (*(a3 + 48) + 16 * v12);
      v17 = *v16;
      v18 = v16[1];

      sub_1AF419914(v17, v18);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
LABEL_12:
      *(a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      ++v24;
    }
  }

  v13 = v6 << 6;
  while (1)
  {
    v14 = v6 + 1;
    if (v6 + 1 >= v10)
    {
      return sub_1AF8FB190(a1, a2, v24, a3);
    }

    v15 = *(a3 + 8 * v6 + 72);
    v13 += 64;
    ++v6;
    if (v15)
    {
      v9 = (v15 - 1) & v15;
      v12 = __clz(__rbit64(v15)) + v13;
      v6 = v14;
      if (!*(a4 + 16))
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }
}

uint64_t sub_1AFCA4AAC(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_1AFC95A40(v13, v7, a1, a2);
      MEMORY[0x1B271DEA0](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x1EEE9AC00](v9, v10);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v11 = sub_1AFCA492C((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_1AFCA4C6C(ProtocolDescriptor *a1, uint64_t a2)
{
  LODWORD(v2) = a2;
  v4 = &v388;
  v422 = *MEMORY[0x1E69E9840];
  v5 = a2 & 0x100000000;
  sub_1AFCBA7A8(0, &qword_1EB63D800, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v336 = &v332[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v340 = &v332[-v11];
  MEMORY[0x1EEE9AC00](v12, v13);
  v338 = &v332[-v14];
  MEMORY[0x1EEE9AC00](v15, v16);
  v344 = &v332[-v17];
  v342 = sub_1AFDFF358();
  v18 = *(v342 - 8);
  MEMORY[0x1EEE9AC00](v342, v19);
  v339 = &v332[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21, v22);
  v343 = &v332[-v23];
  if (qword_1ED72D720 != -1)
  {
LABEL_288:
    swift_once();
  }

  if (v5)
  {
    v24 = 0;
  }

  else
  {
    v24 = v2;
  }

  v382 = qword_1ED73B840;
  v383 = v24;
  v384 = v5 >> 31;
  v385 = 1;
  v386 = 2;
  v387 = 0;

  sub_1AF702F78(3, v375);

  v380[0] = v375[0];
  v380[1] = v375[1];
  v381 = v376;
  sub_1AF6B06C0(a1, v380, 0x200000000, &v402);
  v25 = v4[31];
  v4[24] = v4[30];
  v4[25] = v25;
  v26 = v4[33];
  v4[26] = v4[32];
  v4[27] = v26;
  v27 = v4[29];
  v4[22] = v4[28];
  v4[23] = v27;
  result = sub_1AFCBA0DC(v375, &qword_1EB63D270, &type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8);
  v348 = v402;
  if (!v402)
  {
    return result;
  }

  v347 = v405;
  v29 = v406;
  v351 = v408;
  v418 = v403;
  v419 = v404;
  if (v409 <= 0 || !v406)
  {
    v330 = MEMORY[0x1E69E6720];
    return sub_1AFCB9F58(&v402, &qword_1ED725EA0, &type metadata for QueryResult, v330, sub_1AFCBA88C);
  }

  v350 = v351[4];
  v30 = *(v407 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v401[2] = v401[8];
  v401[3] = v401[9];
  v401[4] = v401[10];
  v401[5] = v401[11];
  v401[0] = v401[6];
  v401[1] = v401[7];
  sub_1AF5DD298(v401, &v397);
  v31 = 0;
  v374 = 0;
  v352 = 0x80000001AFF4C910;
  v337 = *MEMORY[0x1E69E75B8];
  v335 = *MEMORY[0x1E69E75B0];
  v341 = (v18 + 8);
  v333 = *MEMORY[0x1E69E75A8];
  v334 = xmmword_1AFE76100;
  v345 = v30;
  v346 = v29;
LABEL_10:
  v349 = v31;
  v32 = (v347 + 48 * v31);
  v33 = *v32;
  v361 = v32[1];
  v34 = *(v32 + 2);
  v35 = *(v32 + 3);
  v36 = *(v32 + 5);
  v357 = *(v32 + 4);
  v358 = v34;
  if (v30)
  {
    v37 = *(v36 + 376);

    os_unfair_lock_lock(v37);
    os_unfair_lock_lock(*(v36 + 344));
  }

  else
  {
  }

  ecs_stack_allocator_push_snapshot(v350);
  v38 = v351;
  v39 = *(v351 + 4);
  v420[0] = *(v351 + 3);
  v420[1] = v39;
  v421 = v351[10];
  v40 = *(*(*(*(v36 + 40) + 16) + 32) + 16) + 1;
  v38[6] = ecs_stack_allocator_allocate(v351[4], 48 * v40, 8);
  v38[7] = v40;
  v38[9] = 0;
  v38[10] = 0;
  v38[8] = 0;
  v42 = v357;
  v41 = v358;
  v356 = v36;
  v368 = sub_1AF64B110(&type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8, v358, v35, v357, v38);
  if (v41)
  {
    if (!v42)
    {
      goto LABEL_148;
    }

    v43 = 0;
LABEL_19:
    v18 = *(v368 + (v43 << 6) + 8);
    if (!*(v18 + 16))
    {
      goto LABEL_18;
    }

    v365 = (v368 + (v43 << 6));
    v44 = v358[v43];
    v362 = v43;
    v363 = v44;
    LOBYTE(v44) = *(v18 + 32);
    v45 = v44 & 0x3F;
    v46 = ((1 << v44) + 63) >> 6;
    v47 = 8 * v46;

    if (v45 > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v173 = swift_slowAlloc();

        v185 = v374;
        v186 = sub_1AFC95AD4(v173, v46, v18, sub_1AFC952E0);
        v374 = v185;
        if (v185)
        {
          goto LABEL_290;
        }

        v68 = v186;

        MEMORY[0x1B271DEA0](v173, -1, -1);
        goto LABEL_54;
      }
    }

    v366 = v332;
    v367 = v46;
    MEMORY[0x1EEE9AC00](v48, v49);
    v369 = &v332[-((v47 + 15) & 0x3FFFFFFFFFFFFFF0)];
    bzero(v369, v47);
    *&v370 = 0;
    v5 = 0;
    v50 = 1 << *(v18 + 32);
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    else
    {
      v51 = -1;
    }

    v52 = v51 & *(v18 + 64);
    v53 = (v50 + 63) >> 6;
    v371 = v53;
    while (v52)
    {
      v54 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
      v55 = v54 | (v5 << 6);
LABEL_31:
      v59 = *(v18 + 56) + 16 * v55;
      if (*v59 == -1 && !*(v59 + 4))
      {
        v60 = *(v59 + 8);
        v61 = qword_1EB6340F8;
        v372 = *(*(v18 + 48) + 16 * v55 + 8);
        *&v373 = v52;

        if (v61 != -1)
        {
          swift_once();
        }

        v62 = qword_1EB6C2AD0;
        v63 = *(qword_1EB6C2AD0 + 16);

        if (v63)
        {
          v364 = v55;
          v4 = (v62 + 32);
          while (1)
          {
            v64 = *v4;
            LODWORD(v2) = **(*v4 + 32);

            v65 = sub_1AFDFDFD8();
            a1 = &protocol descriptor for Component;
            if (!swift_conformsToProtocol2())
            {
              break;
            }

            v2 = sub_1AFDFDFD8();
            if (!swift_conformsToProtocol2())
            {
              goto LABEL_285;
            }

            if (v65 == v2 && v64[5] == v60[5])
            {
              if (v64[2] == v60[2] && v64[3] == v60[3])
              {

                goto LABEL_52;
              }

              v67 = sub_1AFDFEE28();

              if (v67)
              {

LABEL_52:

                *(v369 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v364;
                *&v370 = v370 + 1;
                goto LABEL_50;
              }
            }

            else
            {
            }

            v4 = (v4 + 8);
            if (!--v63)
            {
              goto LABEL_49;
            }
          }

          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
          goto LABEL_287;
        }

LABEL_49:

LABEL_50:
        v53 = v371;
        v52 = v373;
      }
    }

    v56 = v5 << 6;
    while (1)
    {
      v57 = v5 + 1;
      if ((v5 + 1) >= v53)
      {
        break;
      }

      v58 = *(v18 + 8 * v5 + 72);
      v56 += 64;
      ++v5;
      if (v58)
      {
        v52 = (v58 - 1) & v58;
        v55 = __clz(__rbit64(v58)) + v56;
        v5 = v57;
        goto LABEL_31;
      }
    }

    v68 = sub_1AF8FB190(v369, v367, v370, v18);
LABEL_54:

    if (!*(v68 + 16))
    {
      goto LABEL_16;
    }

    sub_1AF44377C();
    v69 = sub_1AFDFE598();
    v70 = v69;
    v71 = 0;
    v72 = 1 << *(v68 + 32);
    v73 = *(v68 + 64);
    if (v72 < 64)
    {
      v74 = ~(-1 << v72);
    }

    else
    {
      v74 = -1;
    }

    v75 = v74 & v73;
    v76 = (v72 + 63) >> 6;
    v77 = v69 + 64;
    if ((v74 & v73) != 0)
    {
      do
      {
        v78 = __clz(__rbit64(v75));
        v75 &= v75 - 1;
        v79 = v78 | (v71 << 6);
LABEL_64:
        v83 = (*(v68 + 48) + 16 * v79);
        v85 = *v83;
        v84 = v83[1];
        v86 = *(*(v68 + 56) + 16 * v79 + 8);
        *(v77 + ((v79 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v79;
        v87 = (v70[6] + 16 * v79);
        *v87 = v85;
        v87[1] = v84;
        *(v70[7] + 8 * v79) = v86;
        ++v70[2];
      }

      while (v75);
    }

    v80 = v71 << 6;
    while (1)
    {
      v81 = v71 + 1;
      if (v71 + 1 >= v76)
      {
        break;
      }

      v82 = *(v68 + 8 * v71 + 72);
      v80 += 64;
      ++v71;
      if (v82)
      {
        v75 = (v82 - 1) & v82;
        v79 = __clz(__rbit64(v82)) + v80;
        v71 = v81;
        goto LABEL_64;
      }
    }

    v88 = v365;
    *(v365 + 2) = v70;

    v90 = v374;
    v91 = sub_1AFCA4AAC(v89, v68);
    v374 = v90;

    *(v88 + 8) = v91;

    v92 = sub_1AF64B03C(&type metadata for CodeGenerationComponent);
    if (v93)
    {

LABEL_16:

      goto LABEL_17;
    }

    v94 = v92;

    v95 = *(v94 + 8 * v363);
    if (!v95)
    {
      goto LABEL_16;
    }

    v96 = 1 << *(v68 + 32);
    if (v96 < 64)
    {
      v97 = ~(-1 << v96);
    }

    else
    {
      v97 = -1;
    }

    v98 = v97 & *(v68 + 64);
    v99 = (v96 + 63) >> 6;

    v100 = 0;
    v353 = v99;
    v354 = v95;
    v355 = v68;
    if (!v98)
    {
      goto LABEL_75;
    }

    while (1)
    {
LABEL_78:
      v360 = v100;
      v361 = (v98 - 1) & v98;
      v102 = (v100 << 10) | (16 * __clz(__rbit64(v98)));
      v103 = *(v68 + 56);
      v104 = *(v68 + 48) + v102;
      v105 = *(v104 + 8);
      v369 = *v104;
      v106 = *(v103 + v102 + 8);
      v107 = *(v95 + 168);
      v108 = 1 << *(v107 + 32);
      if (v108 < 64)
      {
        v109 = ~(-1 << v108);
      }

      else
      {
        v109 = -1;
      }

      v110 = v109 & *(v107 + 64);
      v111 = (v108 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v371 = v105;

      v359 = v106;

      v112 = 0;
      *&v370 = v111;
      while (1)
      {
        if (!v110)
        {
          while (1)
          {
            v113 = v112 + 1;
            if (v112 + 1 >= v111)
            {
              break;
            }

            v110 = *(v107 + 8 * v112++ + 72);
            if (v110)
            {
              v112 = v113;
              goto LABEL_88;
            }
          }

          v95 = v354;
          v68 = v355;
          v99 = v353;
          v100 = v360;
          v98 = v361;
          if (v361)
          {
            goto LABEL_78;
          }

          goto LABEL_75;
        }

LABEL_88:
        v114 = __clz(__rbit64(v110)) | (v112 << 6);
        v115 = *(*(v107 + 48) + 16 * v114 + 8);
        v116 = *(*(v107 + 56) + 8 * v114);
        v117 = *(v116 + 80);
        if (!v117[2])
        {

          goto LABEL_83;
        }

        v118 = v117[4];
        v119 = v117[5];

        v372 = v332;
        *&v397 = v118;
        *(&v397 + 1) = v119;
        MEMORY[0x1EEE9AC00](v120, v121);
        *&v332[-16] = &v397;
        *&v373 = v115;

        v122 = v374;
        v123 = v116;
        v124 = sub_1AF7B9518(sub_1AF7714A4, &v332[-32], v117);
        v374 = v122;

        if ((v124 & 1) == 0)
        {

          v111 = v370;
          goto LABEL_83;
        }

        v125 = *(v123 + 80);
        v126 = *(v125 + 16);
        v127 = v123;
        v128 = 0;
        if (v126)
        {
          v129 = (v125 + 40);
          while (1)
          {
            v130 = *(v129 - 1) == v118 && *v129 == v119;
            if (v130 || (sub_1AFDFEE28() & 1) != 0)
            {
              break;
            }

            ++v128;
            v129 += 2;
            if (v126 == v128)
            {
              v128 = 0;
              break;
            }
          }
        }

        v131 = (*(v127 + 88) + 40 * v128);
        v133 = v131[4];
        v132 = v131[5];
        v134 = v131[7];
        v366 = v131[6];
        v367 = v132;
        v364 = v131[8];
        v365 = v134;
        sub_1AF687F90(v133, v132);
        v363 = sub_1AF7AF740(v118, v119);
        v136 = v135;
        _s12ParameterOutCMa();
        v137 = swift_allocObject();
        swift_weakInit();
        v372 = v127;
        swift_weakAssign();
        v137[3] = v118;
        v137[4] = v119;
        v138 = v363;
        v137[5] = v363;
        v137[6] = v136;
        v140 = v366;
        v139 = v367;
        v137[7] = v133;
        v137[8] = v139;
        v141 = v364;
        v142 = v365;
        v137[9] = v140;
        v137[10] = v142;
        v137[11] = v141;
        *&v397 = v138;
        *(&v397 + 1) = v136;
        sub_1AF4486E4();

        v143 = sub_1AFDFDF28();

        if (*(v143 + 16) <= 1uLL)
        {
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v143 = sub_1AFC0DBAC(v143);
          }

          --*(v143 + 16);

          *&v397 = v143;
          sub_1AFCBA88C(0, &qword_1EB63EA80, MEMORY[0x1E69E67B0], MEMORY[0x1E69E62F8]);
          sub_1AF7F5FB0();
          sub_1AF6DC518();
          v144 = sub_1AFDFD298();
          v146 = v145;

          *&v397 = v144;
          *(&v397 + 1) = v146;
          v138 = sub_1AFDFD1E8();
          v136 = v147;
        }

        v111 = v370;
        if (v138 == v369 && v136 == v371)
        {

          goto LABEL_111;
        }

        v148 = sub_1AFDFEE28();

        if (v148)
        {
          break;
        }

LABEL_83:
        v110 &= v110 - 1;
      }

LABEL_111:

      v396 = MEMORY[0x1E69E6370];
      v395[0] = 1;
      v149 = v372;
      v150 = *(v372 + 2);

      v68 = v355;
      v99 = v353;
      v98 = v361;
      if (!v150)
      {
        *(v149 + 2) = sub_1AF432414(MEMORY[0x1E69E7CC0]);
      }

      sub_1AF0D5A54(v395, &v388);
      memset(v400 + 8, 0, 32);
      *&v397 = 0xD00000000000001CLL;
      *(&v397 + 1) = v352;
      sub_1AF0D5A54(&v388, v394);
      v151 = v343;
      sub_1AFDFF318();
      sub_1AF441150(&v388, *(&v389 + 1));
      DynamicType = swift_getDynamicType();
      v153 = v344;
      sub_1AFDFF338();
      v154 = sub_1AFDFF328();
      v155 = *(v154 - 8);
      if ((*(v155 + 48))(v153, 1, v154) == 1)
      {
LABEL_114:
        sub_1AF808478(v412);
        v373 = v412[1];
        v370 = v412[0];
        v156 = v413;
        (*v341)(v151, v342);
        goto LABEL_128;
      }

      v157 = v153;
      v158 = v338;
      sub_1AFCBA80C(v157, v338, &qword_1EB63D800, MEMORY[0x1E69E75C8]);
      v159 = (*(v155 + 88))(v158, v154);
      if (v159 == v337)
      {
        if (DynamicType == &type metadata for Entity)
        {
          v156 = 0;
          v373 = 0u;
          v370 = v334;
        }

        else
        {
          sub_1AF808478(v410);
          v373 = v410[1];
          v370 = v410[0];
          v156 = v411;
        }

        v153 = v344;
        v95 = v354;
        (*v341)(v343, v342);
      }

      else
      {
        v151 = v343;
        if (v159 == v335)
        {
          (*v341)(v343, v342);
          v156 = 0;
          v373 = 0u;
          v160 = v334;
        }

        else
        {
          if (v159 != v333)
          {
            (*(v155 + 8))(v338, v154);
            v153 = v344;
            goto LABEL_114;
          }

          (*v341)(v343, v342);
          sub_1AF441150(&v388, *(&v389 + 1));
          v161 = swift_getDynamicType();
          v162 = swift_conformsToProtocol2();
          v156 = 0;
          if (v161)
          {
            v163 = v162 == 0;
          }

          else
          {
            v163 = 1;
          }

          v164 = 41;
          if (v163)
          {
            v164 = 42;
          }

          *&v160 = 0;
          v373 = 0u;
          *(&v160 + 1) = v164;
        }

        v370 = v160;
        v153 = v344;
LABEL_128:
        v95 = v354;
      }

      sub_1AFCBA018(v153, &qword_1EB63D800, MEMORY[0x1E69E75C8]);
      v398 = v370;
      v399 = v373;
      *&v400[0] = v156;
      sub_1AFCB9F58(v400 + 8, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      sub_1AF449D40(&v388, (v400 + 8));
      v390 = v399;
      v391 = v400[0];
      v392 = v400[1];
      v393 = *&v400[2];
      v388 = v397;
      v389 = v398;
      v165 = v372;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v394[0] = *(v165 + 2);
      v167 = v394[0];
      *(v165 + 2) = 0x8000000000000000;
      v168 = v352;
      v169 = sub_1AF419914(0xD00000000000001CLL, v352);
      v171 = v170;
      v172 = *(v167 + 16) + ((v170 & 1) == 0);
      if (*(v167 + 24) >= v172)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v184 = v169;
          sub_1AF844804();
          v169 = v184;
        }
      }

      else
      {
        sub_1AF82C8F0(v172, isUniquelyReferenced_nonNull_native);
        v173 = v394[0];
        v169 = sub_1AF419914(0xD00000000000001CLL, v168);
        if ((v171 & 1) != (v174 & 1))
        {
          goto LABEL_289;
        }
      }

      v175 = v352;
      v176 = v372;
      v177 = v394[0];
      if (v171)
      {
        sub_1AF770FA0(&v388, *(v394[0] + 56) + 88 * v169);
      }

      else
      {
        *(v394[0] + 8 * (v169 >> 6) + 64) |= 1 << v169;
        v178 = (v177[6] + 16 * v169);
        *v178 = 0xD00000000000001CLL;
        v178[1] = v175;
        v179 = v177[7] + 88 * v169;
        v180 = v389;
        *v179 = v388;
        *(v179 + 16) = v180;
        v181 = v390;
        v182 = v391;
        v183 = v392;
        *(v179 + 80) = v393;
        *(v179 + 48) = v182;
        *(v179 + 64) = v183;
        *(v179 + 32) = v181;

        ++v177[2];
      }

      *(v176 + 2) = v177;

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v395);
      v100 = v360;
      if (!v98)
      {
LABEL_75:
        while (2)
        {
          v101 = v100 + 1;
          if (v100 + 1 < v99)
          {
            v98 = *(v68 + 8 * v100++ + 72);
            if (!v98)
            {
              continue;
            }

            v100 = v101;
            goto LABEL_78;
          }

          break;
        }

LABEL_17:
        v42 = v357;
        v43 = v362;
LABEL_18:
        if (++v43 != v42)
        {
          goto LABEL_19;
        }

LABEL_148:
        v377 = v348;
        v378 = v418;
        v379 = v419;
        v187 = v374;
        sub_1AF630994(v351, &v377, v420);
        v374 = v187;
        v188 = v356;
        sub_1AF62D29C(v356);
        ecs_stack_allocator_pop_snapshot(v350);
        v30 = v345;
        if (v345)
        {
          os_unfair_lock_unlock(*(v188 + 43));
          os_unfair_lock_unlock(*(v188 + 47));
        }

        v31 = v349 + 1;
        if (v349 + 1 == v346)
        {
          v331 = MEMORY[0x1E69E6720];
          sub_1AFCB9F58(&v402, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
          v330 = v331;
          return sub_1AFCB9F58(&v402, &qword_1ED725EA0, &type metadata for QueryResult, v330, sub_1AFCBA88C);
        }

        goto LABEL_10;
      }
    }
  }

  if (v33 == v361)
  {
    goto LABEL_148;
  }

  while (1)
  {
    v18 = *(v368 + (v33 << 6) + 8);
    if (!*(v18 + 16))
    {
      goto LABEL_152;
    }

    v364 = v368 + (v33 << 6);
    v369 = v33;
    v189 = *(v18 + 32);
    v190 = v189 & 0x3F;
    v191 = ((1 << v189) + 63) >> 6;
    v192 = 8 * v191;

    if (v190 > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v173 = swift_slowAlloc();

        v328 = v374;
        v329 = sub_1AFC95AD4(v173, v191, v18, sub_1AFC952E0);
        v374 = v328;
        if (v328)
        {
          goto LABEL_290;
        }

        v212 = v329;

        MEMORY[0x1B271DEA0](v173, -1, -1);
        goto LABEL_188;
      }
    }

    v365 = v332;
    v366 = v191;
    MEMORY[0x1EEE9AC00](v193, v194);
    v367 = &v332[-((v192 + 15) & 0x3FFFFFFFFFFFFFF0)];
    bzero(v367, v192);
    *&v370 = 0;
    v5 = 0;
    v195 = 1 << *(v18 + 32);
    if (v195 < 64)
    {
      v196 = ~(-1 << v195);
    }

    else
    {
      v196 = -1;
    }

    v197 = v196 & *(v18 + 64);
    v198 = (v195 + 63) >> 6;
    v371 = v198;
LABEL_159:
    while (2)
    {
      if (v197)
      {
        v199 = __clz(__rbit64(v197));
        v197 &= v197 - 1;
        v200 = v199 | (v5 << 6);
LABEL_165:
        v204 = *(v18 + 56) + 16 * v200;
        if (*v204 != -1 || *(v204 + 4))
        {
          continue;
        }

        v205 = *(v204 + 8);
        v206 = qword_1EB6340F8;
        v372 = *(*(v18 + 48) + 16 * v200 + 8);
        *&v373 = v197;

        if (v206 != -1)
        {
          swift_once();
        }

        v207 = qword_1EB6C2AD0;
        v208 = *(qword_1EB6C2AD0 + 16);

        if (!v208)
        {
LABEL_183:

          goto LABEL_184;
        }

        v363 = v200;
        v4 = (v207 + 32);
        while (1)
        {
          v209 = *v4;
          LODWORD(v2) = **(*v4 + 32);

          a1 = sub_1AFDFDFD8();
          if (!swift_conformsToProtocol2())
          {
            goto LABEL_286;
          }

          v2 = sub_1AFDFDFD8();
          if (!swift_conformsToProtocol2())
          {
LABEL_287:
            __break(1u);
            goto LABEL_288;
          }

          if (a1 == v2 && v209[5] == v205[5])
          {
            if (v209[2] == v205[2] && v209[3] == v205[3])
            {

LABEL_186:

              *&v367[(v363 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v363;
              *&v370 = v370 + 1;
LABEL_184:
              v198 = v371;
              v197 = v373;
              goto LABEL_159;
            }

            v211 = sub_1AFDFEE28();

            if (v211)
            {

              goto LABEL_186;
            }
          }

          else
          {
          }

          v4 = (v4 + 8);
          if (!--v208)
          {
            goto LABEL_183;
          }
        }
      }

      break;
    }

    v201 = v5 << 6;
    while (1)
    {
      v202 = v5 + 1;
      if ((v5 + 1) >= v198)
      {
        break;
      }

      v203 = *(v18 + 8 * v5 + 72);
      v201 += 64;
      ++v5;
      if (v203)
      {
        v197 = (v203 - 1) & v203;
        v200 = __clz(__rbit64(v203)) + v201;
        v5 = v202;
        goto LABEL_165;
      }
    }

    v212 = sub_1AF8FB190(v367, v366, v370, v18);
LABEL_188:

    if (*(v212 + 16))
    {
      sub_1AF44377C();
      v213 = sub_1AFDFE598();
      v214 = v213;
      v215 = 0;
      v216 = 1 << *(v212 + 32);
      v217 = *(v212 + 64);
      if (v216 < 64)
      {
        v218 = ~(-1 << v216);
      }

      else
      {
        v218 = -1;
      }

      v219 = v218 & v217;
      v220 = (v216 + 63) >> 6;
      v221 = v213 + 64;
      if ((v218 & v217) != 0)
      {
        do
        {
          v222 = __clz(__rbit64(v219));
          v219 &= v219 - 1;
          v223 = v222 | (v215 << 6);
LABEL_198:
          v227 = (*(v212 + 48) + 16 * v223);
          v229 = *v227;
          v228 = v227[1];
          v230 = *(*(v212 + 56) + 16 * v223 + 8);
          *(v221 + ((v223 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v223;
          v231 = (v214[6] + 16 * v223);
          *v231 = v229;
          v231[1] = v228;
          *(v214[7] + 8 * v223) = v230;
          ++v214[2];
        }

        while (v219);
      }

      v224 = v215 << 6;
      while (1)
      {
        v225 = v215 + 1;
        if (v215 + 1 >= v220)
        {
          break;
        }

        v226 = *(v212 + 8 * v215 + 72);
        v224 += 64;
        ++v215;
        if (v226)
        {
          v219 = (v226 - 1) & v226;
          v223 = __clz(__rbit64(v226)) + v224;
          v215 = v225;
          goto LABEL_198;
        }
      }

      v232 = v364;
      *(v364 + 16) = v214;

      v234 = v374;
      v235 = sub_1AFCA4AAC(v233, v212);
      v374 = v234;

      *(v232 + 8) = v235;

      v236 = sub_1AF64B03C(&type metadata for CodeGenerationComponent);
      if (v237)
      {

        goto LABEL_150;
      }

      v238 = v236;

      v239 = *(v238 + 8 * v369);
      if (v239)
      {
        break;
      }
    }

LABEL_150:

LABEL_151:
    v33 = v369;
LABEL_152:
    if (++v33 == v361)
    {
      goto LABEL_148;
    }
  }

  v240 = 1 << *(v212 + 32);
  if (v240 < 64)
  {
    v241 = ~(-1 << v240);
  }

  else
  {
    v241 = -1;
  }

  v367 = (v241 & *(v212 + 64));
  v357 = (v240 + 63) >> 6;

  v242 = 0;
  v354 = v212;
  v355 = v239;
  while (1)
  {
    v243 = v367;
    if (v367)
    {
      goto LABEL_212;
    }

    do
    {
      v244 = (v242 + 1);
      if (v242 + 1 >= v357)
      {

        goto LABEL_151;
      }

      v243 = *(v212 + 8 * v242 + 72);
      v242 = (v242 + 1);
    }

    while (!v243);
    v242 = v244;
LABEL_212:
    v367 = ((v243 - 1) & v243);
    v358 = v242;
    v245 = (v242 << 10) | (16 * __clz(__rbit64(v243)));
    v246 = *(v212 + 56);
    v247 = (*(v212 + 48) + v245);
    v248 = v247[1];
    v360 = *v247;
    v249 = *(v246 + v245 + 8);
    v250 = *(v239 + 168);
    v251 = 1 << *(v250 + 32);
    if (v251 < 64)
    {
      v252 = ~(-1 << v251);
    }

    else
    {
      v252 = -1;
    }

    v253 = v252 & *(v250 + 64);
    v254 = (v251 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v371 = v248;

    v359 = v249;

    v255 = 0;
    *&v370 = v254;
LABEL_218:
    if (v253)
    {
      goto LABEL_222;
    }

LABEL_219:
    v256 = v255 + 1;
    if (v255 + 1 >= v254)
    {

      v212 = v354;
      v239 = v355;
      v242 = v358;
      continue;
    }

    v253 = *(v250 + 8 * v255++ + 72);
    if (!v253)
    {
      goto LABEL_219;
    }

    v255 = v256;
LABEL_222:
    v257 = __clz(__rbit64(v253)) | (v255 << 6);
    v258 = *(*(v250 + 48) + 16 * v257 + 8);
    v259 = *(*(v250 + 56) + 8 * v257);
    v260 = *(v259 + 80);
    if (!v260[2])
    {

      goto LABEL_217;
    }

    v261 = v260[4];
    v262 = v260[5];

    v372 = v332;
    *&v397 = v261;
    *(&v397 + 1) = v262;
    MEMORY[0x1EEE9AC00](v263, v264);
    *&v332[-16] = &v397;
    *&v373 = v258;

    v265 = v374;
    v266 = v259;
    v267 = sub_1AF7B9518(sub_1AF771190, &v332[-32], v260);
    v374 = v265;

    if ((v267 & 1) == 0)
    {

      v254 = v370;
      goto LABEL_217;
    }

    v268 = *(v266 + 80);
    v269 = *(v268 + 16);
    v270 = v266;
    v271 = 0;
    if (v269)
    {
      v272 = (v268 + 40);
      while (1)
      {
        v273 = *(v272 - 1) == v261 && *v272 == v262;
        if (v273 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        ++v271;
        v272 += 2;
        if (v269 == v271)
        {
          v271 = 0;
          break;
        }
      }
    }

    v274 = (*(v270 + 88) + 40 * v271);
    v275 = v274[4];
    v365 = v274[5];
    v366 = v275;
    v276 = v274[6];
    v363 = v274[7];
    v364 = v276;
    v362 = v274[8];
    sub_1AF687F90(v275, v365);
    v277 = sub_1AF7AF740(v261, v262);
    v279 = v278;
    _s12ParameterOutCMa();
    v280 = swift_allocObject();
    swift_weakInit();
    v372 = v270;
    swift_weakAssign();
    v280[3] = v261;
    v280[4] = v262;
    v280[5] = v277;
    v280[6] = v279;
    v281 = v365;
    v280[7] = v366;
    v280[8] = v281;
    v282 = v363;
    v280[9] = v364;
    v280[10] = v282;
    v280[11] = v362;
    v366 = v277;
    *&v397 = v277;
    *(&v397 + 1) = v279;
    sub_1AF4486E4();

    v283 = sub_1AFDFDF28();

    if (*(v283 + 16) <= 1uLL)
    {

      v291 = v360;
      v254 = v370;
      v290 = v366;
    }

    else
    {
      v284 = swift_isUniquelyReferenced_nonNull_native();
      v254 = v370;
      if ((v284 & 1) == 0)
      {
        v283 = sub_1AFC0DBAC(v283);
      }

      --*(v283 + 16);

      *&v397 = v283;
      sub_1AFCBA88C(0, &qword_1EB63EA80, MEMORY[0x1E69E67B0], MEMORY[0x1E69E62F8]);
      sub_1AF7F5FB0();
      sub_1AF6DC518();
      v285 = sub_1AFDFD298();
      v287 = v286;

      *&v397 = v285;
      *(&v397 + 1) = v287;
      v288 = sub_1AFDFD1E8();
      v279 = v289;

      v290 = v288;
      v291 = v360;
    }

    if (v290 == v291 && v279 == v371)
    {

      goto LABEL_245;
    }

    v292 = sub_1AFDFEE28();

    if ((v292 & 1) == 0)
    {
LABEL_217:
      v253 &= v253 - 1;

      goto LABEL_218;
    }

LABEL_245:

    v396 = MEMORY[0x1E69E6370];
    v395[0] = 1;
    v293 = v372;
    v294 = *(v372 + 2);

    v212 = v354;
    if (!v294)
    {
      *(v293 + 2) = sub_1AF432414(MEMORY[0x1E69E7CC0]);
    }

    sub_1AF0D5A54(v395, &v388);
    memset(v400 + 8, 0, 32);
    *&v397 = 0xD00000000000001CLL;
    *(&v397 + 1) = v352;
    sub_1AF0D5A54(&v388, v394);
    v295 = v339;
    sub_1AFDFF318();
    sub_1AF441150(&v388, *(&v389 + 1));
    v296 = swift_getDynamicType();
    v297 = v340;
    sub_1AFDFF338();
    v298 = sub_1AFDFF328();
    v299 = *(v298 - 8);
    if ((*(v299 + 48))(v297, 1, v298) == 1)
    {
LABEL_248:
      sub_1AF808478(v416);
      v373 = v416[1];
      v370 = v416[0];
      v300 = v417;
      (*v341)(v295, v342);
      goto LABEL_262;
    }

    v301 = v297;
    v302 = v336;
    sub_1AFCBA80C(v301, v336, &qword_1EB63D800, MEMORY[0x1E69E75C8]);
    v303 = (*(v299 + 88))(v302, v298);
    if (v303 == v337)
    {
      if (v296 == &type metadata for Entity)
      {
        v300 = 0;
        v373 = 0u;
        v370 = v334;
      }

      else
      {
        sub_1AF808478(v414);
        v373 = v414[1];
        v370 = v414[0];
        v300 = v415;
      }

      v297 = v340;
      v239 = v355;
      (*v341)(v339, v342);
    }

    else
    {
      v295 = v339;
      if (v303 == v335)
      {
        (*v341)(v339, v342);
        v300 = 0;
        v373 = 0u;
        v304 = v334;
      }

      else
      {
        if (v303 != v333)
        {
          (*(v299 + 8))(v336, v298);
          v297 = v340;
          goto LABEL_248;
        }

        (*v341)(v339, v342);
        sub_1AF441150(&v388, *(&v389 + 1));
        v305 = swift_getDynamicType();
        v306 = swift_conformsToProtocol2();
        v300 = 0;
        if (v305)
        {
          v307 = v306 == 0;
        }

        else
        {
          v307 = 1;
        }

        v308 = 41;
        if (v307)
        {
          v308 = 42;
        }

        *&v304 = 0;
        v373 = 0u;
        *(&v304 + 1) = v308;
      }

      v370 = v304;
      v297 = v340;
LABEL_262:
      v239 = v355;
    }

    sub_1AFCBA018(v297, &qword_1EB63D800, MEMORY[0x1E69E75C8]);
    v398 = v370;
    v399 = v373;
    *&v400[0] = v300;
    sub_1AFCB9F58(v400 + 8, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    sub_1AF449D40(&v388, (v400 + 8));
    v390 = v399;
    v391 = v400[0];
    v392 = v400[1];
    v393 = *&v400[2];
    v388 = v397;
    v389 = v398;
    v309 = v372;
    v310 = swift_isUniquelyReferenced_nonNull_native();
    v394[0] = *(v309 + 2);
    v311 = v394[0];
    *(v309 + 2) = 0x8000000000000000;
    v312 = v352;
    v313 = sub_1AF419914(0xD00000000000001CLL, v352);
    v315 = v314;
    v316 = *(v311 + 16) + ((v314 & 1) == 0);
    if (*(v311 + 24) < v316)
    {
      break;
    }

    if ((v310 & 1) == 0)
    {
      v327 = v313;
      sub_1AF844804();
      v313 = v327;
    }

LABEL_270:
    v318 = v352;
    v319 = v372;
    v320 = v394[0];
    if (v315)
    {
      sub_1AF770FA0(&v388, *(v394[0] + 56) + 88 * v313);
    }

    else
    {
      *(v394[0] + 8 * (v313 >> 6) + 64) |= 1 << v313;
      v321 = (v320[6] + 16 * v313);
      *v321 = 0xD00000000000001CLL;
      v321[1] = v318;
      v322 = v320[7] + 88 * v313;
      v323 = v389;
      *v322 = v388;
      *(v322 + 16) = v323;
      v324 = v390;
      v325 = v391;
      v326 = v392;
      *(v322 + 80) = v393;
      *(v322 + 48) = v325;
      *(v322 + 64) = v326;
      *(v322 + 32) = v324;

      ++v320[2];
    }

    *(v319 + 2) = v320;

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v395);
    v242 = v358;
  }

  sub_1AF82C8F0(v316, v310);
  v173 = v394[0];
  v313 = sub_1AF419914(0xD00000000000001CLL, v312);
  if ((v315 & 1) == (v317 & 1))
  {
    goto LABEL_270;
  }

LABEL_289:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_290:

  result = MEMORY[0x1B271DEA0](v173, -1, -1);
  __break(1u);
  return result;
}