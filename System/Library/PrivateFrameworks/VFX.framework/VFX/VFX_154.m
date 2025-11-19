uint64_t sub_1AFCB7684(uint64_t a1)
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v57 = qword_1ED73B840;
  v58 = 0;
  v59 = 2;
  v60 = 0;
  v61 = 2;
  v62 = 0;
  sub_1AF826AB8(v49);
  v55[0] = v49[0];
  v55[1] = v49[1];
  v56 = v50;
  sub_1AF6B06C0(a1, v55, 0x200000000, v51);
  result = sub_1AFCBA0DC(v49, &qword_1EB633CE8, &type metadata for CodeGenerationComponent, &off_1F253BF50);
  if (*&v51[0])
  {
    if (v54 >= 1 && v53)
    {
      v3 = v52;
      v4 = v52 + 48 * v53;
      v34 = v4;
      do
      {
        v5 = *(v3 + 40);
        v6 = *(v5 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v6);
        os_unfair_lock_lock(*(v5 + 344));
        v7 = *(v5 + 24);

        v43 = 0;
        v41 = 0u;
        v42 = 0u;
        memset(v48, 0, sizeof(v48));
        v8 = sub_1AF65A4B4(v7, &type metadata for GraphV1ExecutionOverride, &off_1F255DC80, 0, 0, &v41, v48);

        sub_1AFCB9FB8(v48, sub_1AF5C4448);
        sub_1AFCB9FB8(&v41, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v8);
        }

        else
        {
          v10 = *(v5 + 232);
          v9 = *(v5 + 240);
          v37 = *(v5 + 120);
          v40 = *(v5 + 28);
          v39 = *(v5 + 32);
          v11 = *(v5 + 16);
          v12 = *(v5 + 40);
          v13 = *(v12 + 200);
          v38 = *(*(v11 + 88) + 8 * v8 + 32);

          if ((v13 & 1) != 0 || *(v38 + 200) == 1)
          {
            *(v11 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v12 = *(v5 + 40);
          }

          v14 = v37;
          v15 = *(v5 + 256);
          sub_1AF5B4FCC(v12, v10, v9, 0, v5);
          v36 = *(v5 + 256);
          v16 = v36 - v15;
          if (v36 == v15)
          {
            v17 = 0;
          }

          else
          {
            v17 = v15;
          }

          v48[0] = v17;
          v18 = *(*(v5 + 40) + 24);
          v19 = *(v18 + 16);
          if (v19)
          {
            v35 = v3;
            v20 = v18 + 32;

            v21 = 0;
            v22 = v36 - v15;
            do
            {
              v23 = v20 + 40 * v21;
              if ((*(v23 + 32) & 1) == 0)
              {
                v24 = *(v38 + 24);
                v25 = *(v24 + 16);
                if (v25)
                {
                  v26 = (v24 + 32);
                  while (*v26 != *v23)
                  {
                    v26 += 5;
                    if (!--v25)
                    {
                      goto LABEL_18;
                    }
                  }
                }

                else
                {
LABEL_18:
                  sub_1AF640BC8();
                  v22 = v36 - v15;
                }
              }

              ++v21;
            }

            while (v21 != v19);
            v16 = v22;

            v3 = v35;
            v14 = v37;
          }

          if (*(v11 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v11 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v5 + 72) * v16);
          }

          if (*(v5 + 184))
          {
            v27 = 0;
          }

          else
          {
            v27 = *(v5 + 168);
          }

          v47 = 0;

          MEMORY[0x1EEE9AC00](v28, v29);
          v30 = v40;
          v31 = v39;
          DWORD2(v42) = -1;
          v43 = v15;
          v44 = v36;
          v45 = v15;
          v46 = v36;
          *&v41 = v15;
          *(&v41 + 1) = v36;
          *&v42 = v27;
          if (v16 < 1)
          {

            v4 = v34;
          }

          else
          {
            v4 = v34;
            do
            {
              sub_1AF6248A8(v8, v30 | (v31 << 32), v14, v11, &v41, sub_1AF5C44B0);
              v31 = v39;
              v30 = v40;
            }

            while ((*(&v41 + 1) - v41) > 0);
          }

          v32 = *(v5 + 192);
          if (v32)
          {
            v33 = *(v5 + 208);
            sub_1AF75D364(v15, v36, v32);
            sub_1AF75D364(v15, v36, v33);
          }
        }

        v3 += 48;
        os_unfair_lock_unlock(*(v5 + 344));
        os_unfair_lock_unlock(*(v5 + 376));
      }

      while (v3 != v4);
    }

    return sub_1AFCB9F58(v51, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  return result;
}

uint64_t sub_1AFCB7C20(uint64_t result, void *a2)
{
  if (!a2)
  {
    return result;
  }

  *&v3 = MEMORY[0x1EEE9AC00](result, a2).n128_u64[0];
  v69 = v4;
  v62[2] = v4;
  v62[3] = v5;
  v63 = v6;
  v79 = HIDWORD(v6) & 1;
  v64 = BYTE4(v6) & 1;
  v78 = (v6 >> 40) & 1;
  v65 = BYTE5(v6) & 1;
  v81 = v6;
  v82 = v7;
  v77 = HIWORD(v6) & 1;
  v66 = BYTE6(v6) & 1;
  v67 = v7;
  v8 = [a2 assetRegistry];
  v9 = [v8 rootNode];

  v10 = swift_allocObject();
  *(v10 + 16) = sub_1AFCBA1C8;
  *(v10 + 24) = v62;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1AFCBA218;
  *(v11 + 24) = v10;
  *&v98[2] = sub_1AFCBAB18;
  *(&v98[2] + 1) = v11;
  *&v98[0] = MEMORY[0x1E69E9820];
  *(&v98[0] + 1) = 1107296256;
  *&v98[1] = sub_1AF92EF7C;
  *(&v98[1] + 1) = &unk_1F256D990;
  v12 = _Block_copy(v98);

  [v9 enumerateHierarchyUsingBlock_];

  _Block_release(v12);
  swift_isEscapingClosureAtFileLocation();

  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v111 = qword_1ED73B840;
  v112 = 0;
  v113 = 2;
  v114 = 0;
  v115 = 2;
  v116 = 0;
  sub_1AF705058(1, &v92);
  v105 = v92;
  v106 = v93;
  v107 = v94;
  v108 = v95 | 1;
  v109 = v96;
  v110 = v97;
  v80 = a2;
  v13 = [a2 scene];
  v14 = *&v13[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

  sub_1AF6B06C0(v14, &v105, 0x200000000, v98);
  v88 = v98[2];
  v89 = v99;
  v90 = v100;
  v91 = v101;
  v86 = v98[0];
  v87 = v98[1];

  if (!*&v98[0])
  {
    sub_1AFCBA0DC(&v92, &qword_1EB633D00, &type metadata for GraphComponent, &off_1F2547EF8);
  }

  if (v101 <= 0 || (v73 = *(&v99 + 1)) == 0)
  {
    sub_1AFCBA0DC(&v92, &qword_1EB633D00, &type metadata for GraphComponent, &off_1F2547EF8);
    sub_1AFCB9F58(v98, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v68[1] = v10;
  v68[2] = v68;
  v72 = *(&v98[2] + 1);
  v15 = *(&v100 + 1);
  v16 = *(v100 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v75 = *(*(&v100 + 1) + 32);
  v102 = *&v98[0];
  v103 = *(v98 + 8);
  v104 = *(&v98[1] + 8);
  v85[2] = v88;
  v85[3] = v89;
  v85[4] = v90;
  v85[5] = v91;
  v85[0] = v86;
  v85[1] = v87;
  sub_1AF5DD298(v85, v83);
  v17 = 0;
  v71 = v15;
  v70 = v16;
  do
  {
    v74 = v17;
    v18 = (v72 + 48 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v18 + 2);
    v22 = *(v18 + 3);
    v23 = *(v18 + 4);
    v24 = *(v18 + 5);
    v76 = v24;
    if (v16)
    {
      v25 = *(v76 + 376);

      v26 = v25;
      v24 = v76;
      os_unfair_lock_lock(v26);
      os_unfair_lock_lock(*(v24 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v75);
    v27 = *(v15 + 4);
    v83[0] = *(v15 + 3);
    v83[1] = v27;
    v84 = v15[10];
    v28 = *(*(*(*(v24 + 40) + 16) + 32) + 16) + 1;
    v15[6] = ecs_stack_allocator_allocate(v15[4], 48 * v28, 8);
    v15[7] = v28;
    v15[9] = 0;
    v15[10] = 0;
    v15[8] = 0;
    v29 = sub_1AF64B110(&type metadata for GraphComponent, &off_1F2547EF8, v21, v22, v23, v15);
    v31 = v29;
    if (v21)
    {
      if (!v23)
      {
        goto LABEL_18;
      }

      v32 = v69;
      v33 = MEMORY[0x1E69E7CC0];
      do
      {
        v34 = *v31++;
        MEMORY[0x1EEE9AC00](v29, v30);
        v55 = v32;
        v56 = v80;
        v57 = v81;
        v58 = v79;
        v59 = v78;
        v60 = v77;
        v61 = v82;
        sub_1AF3FB9C8(sub_1AFCBAB1C, v54, 0, 0x1000000000000000uLL, 0, v33);
        v35 = sub_1AF449CC8();

        *(v34 + 24) = v35;
        v33 = MEMORY[0x1E69E7CC0];

        --v23;
      }

      while (v23);
    }

    else
    {
      if (v19 == v20)
      {
LABEL_18:
        v33 = MEMORY[0x1E69E7CC0];
        goto LABEL_21;
      }

      v36 = v20 - v19;
      v37 = (v29 + 8 * v19);
      v38 = v69;
      v33 = MEMORY[0x1E69E7CC0];
      do
      {
        v39 = *v37++;
        MEMORY[0x1EEE9AC00](v29, v30);
        v55 = v38;
        v56 = v80;
        v57 = v81;
        v58 = v79;
        v59 = v78;
        v60 = v77;
        v61 = v82;
        sub_1AF3FB9C8(sub_1AFCBA220, v54, 0, 0x1000000000000000uLL, 0, v33);
        v40 = sub_1AF449CC8();

        *(v39 + 24) = v40;
        v33 = MEMORY[0x1E69E7CC0];

        --v36;
      }

      while (v36);
    }

LABEL_21:
    v15 = v71;
    sub_1AF630994(v71, &v102, v83);
    v16 = v70;
    v41 = v76;
    if (*(v15[13] + 16))
    {
      v42 = v70;

      sub_1AF62F348(v43, v41);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v15[13];
      if (isUniquelyReferenced_nonNull_native)
      {
        v46 = v45[2];
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v15[13] = v45;
        if ((v47 & 1) == 0)
        {
          v45 = sub_1AF420EA0(0, v46, 1, v45);
          v15[13] = v45;
        }

        sub_1AF43A540(0);
        swift_arrayDestroy();
        if (v46)
        {
          v48 = v45[2] - v46;
          memmove(v45 + 4, &v45[9 * v46 + 4], 72 * v48);
          v45[2] = v48;
        }

        v15[13] = v45;
      }

      else
      {
        if (v45[3] >= 2uLL)
        {
          sub_1AFCBA7A8(0, &qword_1ED7269C0, sub_1AF43A540, MEMORY[0x1E69E6F90]);
          v33 = swift_allocObject();
          v49 = j__malloc_size_0(v33);
          v33[2] = 0;
          v33[3] = 2 * ((v49 - 32) / 72);
        }

        v15[13] = v33;
      }

      v16 = v42;
      if (*(v15[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
      {
        v50 = *(v41 + 232);
        v51 = *(v41 + 256);
        if (v50 == v51)
        {
          v52 = *(v41 + 240);
        }

        else
        {
          sub_1AF6497A0(v51, v50);
          v51 = *(v41 + 232);
          v52 = *(v41 + 240);
          if (v52 == v51)
          {
            v52 = 0;
            v51 = 0;
            *(v41 + 232) = 0;
            *(v41 + 240) = 0;
          }

          v16 = v42;
        }

        *(v41 + 248) = v52;
        *(v41 + 256) = v51;
      }
    }

    ecs_stack_allocator_pop_snapshot(v75);
    if (v16)
    {
      os_unfair_lock_unlock(*(v41 + 344));
      os_unfair_lock_unlock(*(v41 + 376));
    }

    v17 = v74 + 1;
  }

  while (v74 + 1 != v73);
  v53 = MEMORY[0x1E69E6720];
  sub_1AFCB9F58(v98, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  sub_1AFCBA0DC(&v92, &qword_1EB633D00, &type metadata for GraphComponent, &off_1F2547EF8);
  sub_1AFCB9F58(v98, &qword_1ED725EA0, &type metadata for QueryResult, v53, sub_1AFCBA88C);
}

uint64_t sub_1AFCB85D4(uint64_t a1, uint64_t a2)
{
  v177 = *MEMORY[0x1E69E9840];
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v112 = a2;
    swift_once();
    LODWORD(a2) = v112;
  }

  v4 = qword_1ED73B840;
  v140 = qword_1ED73B840;
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  v6 = v3 >> 31;
  v141 = v5;
  v142 = v3 >> 31;
  v143 = 1;
  v144 = 2;
  v145 = 0;

  sub_1AF702F8C(3, v132);

  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = &type metadata for NeighborGrid;
  *(v7 + 40) = &off_1F2563D40;
  sub_1AF5D1EC0(v7, v133);
  sub_1AFCBA0DC(v132, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v138[0] = v133[0];
  v138[1] = v133[1];
  v139 = v134;
  sub_1AF6B06C0(a1, v138, 0x200000000, &v160);
  if (v160)
  {
    v114 = v4;
    v113 = v5;
    if (v167 >= 1)
    {
      v116 = v164;
      if (v164)
      {
        v8 = 0;
        v9 = 0;
        v115 = v163;
        v10 = v166;
        v119 = *(v166 + 32);
        v118 = *(v165 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v135 = v160;
        v136 = v161;
        v137 = v162;
        do
        {
          v120 = v9;
          v117 = v8;
          v11 = (v115 + 48 * v8);
          v12 = *v11;
          v13 = v11[1];
          v14 = *(v11 + 3);
          v15 = *(v11 + 5);
          v123 = *(v11 + 4);
          v125 = *(v11 + 2);
          if (v118)
          {
            v16 = *(v15 + 376);

            os_unfair_lock_lock(v16);
            os_unfair_lock_lock(*(v15 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v119);
          v17 = *(v10 + 64);
          v175[0] = *(v10 + 48);
          v175[1] = v17;
          v176 = *(v10 + 80);
          v18 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;
          *(v10 + 48) = ecs_stack_allocator_allocate(*(v10 + 32), 48 * v18, 8);
          *(v10 + 56) = v18;
          *(v10 + 72) = 0;
          *(v10 + 80) = 0;
          *(v10 + 64) = 0;
          v19 = v14;
          v20 = v15;
          v21 = v123;
          v130 = v20;
          v22 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v125, v19, v123, v10);
          if (v125)
          {
            if (!v123)
            {
              goto LABEL_58;
            }

            v23 = 0;
            v24 = v22 + 93;
            v121 = v22 + 93;
            while (2)
            {
              if (*(v24 + 104 * v23) != 1)
              {
                goto LABEL_18;
              }

              v127 = v125[v23];
              v30 = *(*(v130 + 40) + 16);
              v31 = *(v30 + 128);
              if (*(v31 + 16))
              {
                v32 = sub_1AF449CB8(&type metadata for NeighborGrid);
                if ((v33 & 1) != 0 && *(*(v30 + 24) + 16 * *(*(v31 + 56) + 8 * v32) + 32) == &type metadata for NeighborGrid)
                {
                  goto LABEL_18;
                }
              }

              v150 = &type metadata for NeighborGrid;
              *&v151 = &off_1F2563DC0;
              v153 = 0;
              v34 = *(v10 + 104);
              v35 = *(v34 + 16);
              if (!v35)
              {
                v37 = v130;

LABEL_53:
                v50 = *(v37 + 240) - *(v37 + 232);
                v51 = ecs_stack_allocator_allocate(*(v10 + 32), 8 * v50, 8);
                *v51 = v127;
                sub_1AF63515C(&v150, v170);
                *v171 = v51;
                *&v171[8] = v50;
                *&v171[16] = 1;
                v52 = *(v10 + 104);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v10 + 104) = v52;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v52 = sub_1AF420EA0(0, v52[2] + 1, 1, v52);
                  *(v10 + 104) = v52;
                }

                v24 = v121;
                v21 = v123;
                v55 = v52[2];
                v54 = v52[3];
                if (v55 >= v54 >> 1)
                {
                  *(v10 + 104) = sub_1AF420EA0(v54 > 1, v55 + 1, 1, v52);
                }

                sub_1AF635250(&v150);
                v25 = *(v10 + 104);
                *(v25 + 16) = v55 + 1;
                v26 = v25 + 72 * v55;
                *(v26 + 32) = *v170;
                v28 = *&v170[32];
                v27 = *v171;
                v29 = *&v170[16];
                *(v26 + 96) = *&v171[16];
                *(v26 + 64) = v28;
                *(v26 + 80) = v27;
                *(v26 + 48) = v29;
                *(v10 + 104) = v25;
                goto LABEL_18;
              }

              v36 = v34 + 32;
              v37 = v130;

              v38 = 0;
LABEL_28:
              sub_1AF6350F8(v36, &v154);
              sub_1AF63515C(&v154, v170);
              sub_1AF63515C(&v150, v171);
              if (v170[40] > 2u)
              {
                if (v170[40] != 3)
                {
                  if (v170[40] != 4)
                  {
                    sub_1AFCB9FB8(&v154, sub_1AF43A540);
                    if (v171[40] == 5)
                    {
                      v45 = vorrq_s8(*&v171[8], *&v171[24]);
                      if (!(*&vorr_s8(*v45.i8, *&vextq_s8(v45, v45, 8uLL)) | *v171))
                      {
                        sub_1AF635250(v170);
LABEL_49:
                        v47 = sub_1AFBFCA08(v170);
                        v48 = *(v46 + 48);
                        if (v48)
                        {
                          v49 = *(v46 + 64);
                          *(v48 + 8 * v49) = v127;
                          *(v46 + 64) = v49 + 1;
                        }

                        (v47)(v170, 0);

                        sub_1AF635250(&v150);
                        v24 = v121;
                        v21 = v123;
LABEL_18:
                        if (++v23 == v21)
                        {
                          goto LABEL_58;
                        }

                        continue;
                      }
                    }

                    goto LABEL_26;
                  }

                  sub_1AFCB9FB8(&v154, sub_1AF43A540);
                  sub_1AF63515C(v170, &v146);
                  if (v171[40] != 4)
                  {
                    goto LABEL_26;
                  }

                  v39 = v146;
                  v40 = v171[0];
                  sub_1AF635250(v170);
                  if (v39 == v40)
                  {
                    goto LABEL_49;
                  }

LABEL_27:
                  ++v38;
                  v36 += 72;
                  if (v35 == v38)
                  {
                    goto LABEL_53;
                  }

                  goto LABEL_28;
                }

                sub_1AF63515C(v170, &v146);
                if (v171[40] == 3)
                {
LABEL_44:
                  sub_1AF616568(&v146, &v172);
                  sub_1AF616568(v171, v168);
                  v43 = *(&v173 + 1);
                  v44 = v174;
                  sub_1AF441150(&v172, *(&v173 + 1));
                  LOBYTE(v43) = sub_1AF640C98(v168, v43, v44);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v168);
                  sub_1AFCB9FB8(&v154, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v172);
                  sub_1AF635250(v170);
                  if (v43)
                  {
                    goto LABEL_49;
                  }

                  goto LABEL_27;
                }
              }

              else
              {
                if (!v170[40])
                {
                  sub_1AFCB9FB8(&v154, sub_1AF43A540);
                  sub_1AF63515C(v170, &v146);
                  if (v171[40])
                  {
                    goto LABEL_26;
                  }

LABEL_39:
                  v41 = v146;
                  v42 = *v171;
                  sub_1AF635250(v170);
                  if (v41 == v42)
                  {
                    goto LABEL_49;
                  }

                  goto LABEL_27;
                }

                if (v170[40] == 1)
                {
                  sub_1AFCB9FB8(&v154, sub_1AF43A540);
                  sub_1AF63515C(v170, &v146);
                  if (v171[40] == 1)
                  {
                    goto LABEL_39;
                  }

LABEL_26:
                  sub_1AFCB9F58(v170, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
                  goto LABEL_27;
                }

                sub_1AF63515C(v170, &v146);
                if (v171[40] == 2)
                {
                  goto LABEL_44;
                }
              }

              break;
            }

            sub_1AFCB9FB8(&v154, sub_1AF43A540);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v146);
            goto LABEL_26;
          }

          if (v12 == v13)
          {
            goto LABEL_58;
          }

          v56 = v22 + 93;
          v122 = v13;
          v128 = v22 + 93;
          while (2)
          {
            if (*(v56 + 104 * v12) != 1)
            {
              goto LABEL_63;
            }

            v57 = *(*(v130 + 40) + 16);
            v58 = *(v57 + 128);
            if (*(v58 + 16))
            {
              v59 = sub_1AF449CB8(&type metadata for NeighborGrid);
              if ((v60 & 1) != 0 && *(*(v57 + 24) + 16 * *(*(v58 + 56) + 8 * v59) + 32) == &type metadata for NeighborGrid)
              {
                goto LABEL_62;
              }
            }

            v150 = &type metadata for NeighborGrid;
            *&v151 = &off_1F2563DC0;
            v153 = 0;
            v61 = *(v10 + 104);
            v62 = *(v61 + 16);
            if (!v62)
            {

LABEL_97:
              v76 = *(v130 + 240) - *(v130 + 232);
              v77 = ecs_stack_allocator_allocate(*(v10 + 32), 8 * v76, 8);
              *v77 = v12;
              sub_1AF63515C(&v150, v170);
              *v171 = v77;
              *&v171[8] = v76;
              *&v171[16] = 1;
              v78 = *(v10 + 104);
              v79 = swift_isUniquelyReferenced_nonNull_native();
              *(v10 + 104) = v78;
              if ((v79 & 1) == 0)
              {
                v78 = sub_1AF420EA0(0, v78[2] + 1, 1, v78);
                *(v10 + 104) = v78;
              }

              v13 = v122;
              v81 = v78[2];
              v80 = v78[3];
              if (v81 >= v80 >> 1)
              {
                *(v10 + 104) = sub_1AF420EA0(v80 > 1, v81 + 1, 1, v78);
              }

              sub_1AF635250(&v150);
              v82 = *(v10 + 104);
              *(v82 + 16) = v81 + 1;
              v83 = v82 + 72 * v81;
              *(v83 + 32) = *v170;
              v85 = *&v170[32];
              v84 = *v171;
              v86 = *&v170[16];
              *(v83 + 96) = *&v171[16];
              *(v83 + 64) = v85;
              *(v83 + 80) = v84;
              *(v83 + 48) = v86;
              *(v10 + 104) = v82;
              goto LABEL_62;
            }

            v63 = v61 + 32;

            v64 = 0;
            while (1)
            {
              sub_1AF6350F8(v63, &v154);
              sub_1AF63515C(&v154, v170);
              sub_1AF63515C(&v150, v171);
              if (v170[40] <= 2u)
              {
                if (!v170[40])
                {
                  sub_1AFCB9FB8(&v154, sub_1AF43A540);
                  sub_1AF63515C(v170, &v146);
                  if (v171[40])
                  {
                    goto LABEL_71;
                  }

                  goto LABEL_84;
                }

                if (v170[40] == 1)
                {
                  sub_1AFCB9FB8(&v154, sub_1AF43A540);
                  sub_1AF63515C(v170, &v146);
                  if (v171[40] != 1)
                  {
                    goto LABEL_71;
                  }

LABEL_84:
                  v67 = v146;
                  v68 = *v171;
                  sub_1AF635250(v170);
                  if (v67 == v68)
                  {
                    goto LABEL_94;
                  }

                  goto LABEL_72;
                }

                sub_1AF63515C(v170, &v146);
                if (v171[40] != 2)
                {
LABEL_70:
                  sub_1AFCB9FB8(&v154, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v146);
LABEL_71:
                  sub_1AFCB9F58(v170, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
                  goto LABEL_72;
                }

                goto LABEL_89;
              }

              if (v170[40] == 3)
              {
                sub_1AF63515C(v170, &v146);
                if (v171[40] != 3)
                {
                  goto LABEL_70;
                }

LABEL_89:
                sub_1AF616568(&v146, &v172);
                sub_1AF616568(v171, v168);
                v69 = *(&v173 + 1);
                v70 = v174;
                sub_1AF441150(&v172, *(&v173 + 1));
                LOBYTE(v69) = sub_1AF640C98(v168, v69, v70);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v168);
                sub_1AFCB9FB8(&v154, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v172);
                sub_1AF635250(v170);
                if (v69)
                {
                  goto LABEL_94;
                }

                goto LABEL_72;
              }

              if (v170[40] != 4)
              {
                break;
              }

              sub_1AFCB9FB8(&v154, sub_1AF43A540);
              sub_1AF63515C(v170, &v146);
              if (v171[40] != 4)
              {
                goto LABEL_71;
              }

              v65 = v146;
              v66 = v171[0];
              sub_1AF635250(v170);
              if (v65 == v66)
              {
                goto LABEL_94;
              }

LABEL_72:
              ++v64;
              v63 += 72;
              if (v62 == v64)
              {
                goto LABEL_97;
              }
            }

            sub_1AFCB9FB8(&v154, sub_1AF43A540);
            if (v171[40] != 5)
            {
              goto LABEL_71;
            }

            v71 = vorrq_s8(*&v171[8], *&v171[24]);
            if (*&vorr_s8(*v71.i8, *&vextq_s8(v71, v71, 8uLL)) | *v171)
            {
              goto LABEL_71;
            }

            sub_1AF635250(v170);
LABEL_94:
            v73 = sub_1AFBFCA08(v170);
            v74 = *(v72 + 48);
            if (v74)
            {
              v75 = *(v72 + 64);
              *(v74 + 8 * v75) = v12;
              *(v72 + 64) = v75 + 1;
            }

            (v73)(v170, 0);

            sub_1AF635250(&v150);
            v13 = v122;
LABEL_62:
            v56 = v128;
LABEL_63:
            if (++v12 != v13)
            {
              continue;
            }

            break;
          }

LABEL_58:
          v9 = v120;
          sub_1AF630994(v10, &v135, v175);
          sub_1AF62D29C(v130);
          ecs_stack_allocator_pop_snapshot(v119);
          if (v118)
          {
            os_unfair_lock_unlock(*(v130 + 344));
            os_unfair_lock_unlock(*(v130 + 376));
          }

          v8 = v117 + 1;
        }

        while (v117 + 1 != v116);
      }
    }

    sub_1AFCB9F58(&v160, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    v4 = v114;
    LOBYTE(v6) = v3 >> 31;
    v5 = v113;
  }

  *&v146 = v4;
  DWORD2(v146) = v5;
  BYTE12(v146) = v6;
  v147 = 1;
  v148 = 2;
  v149 = 0;

  sub_1AFCC7160(1, 2, v168);

  v172 = v168[0];
  v173 = v168[1];
  v174 = v169;
  sub_1AF6B06C0(a1, &v172, 0x200000000, v170);
  if (*v170)
  {
    if (*&v171[32] <= 0)
    {
      v156 = *&v170[32];
      v157 = *v171;
      v158 = *&v171[16];
      v159 = *&v171[32];
      v154 = *v170;
      v155 = *&v170[16];
      sub_1AF5DD298(&v154, &v150);
      sub_1AFCBA0DC(v133, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
      sub_1AFCB9FB8(v168, sub_1AFCBA14C);
      v111 = MEMORY[0x1E69E6720];
      sub_1AFCB9F58(v170, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      v109 = v111;
    }

    else
    {
      v131 = *&v171[8];
      if (*&v171[8])
      {
        v87 = 0;
        v129 = *&v170[40];
        v88 = *&v171[24];
        v89 = *(*&v171[24] + 32);
        v90 = *(*&v171[16] + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v150 = *v170;
        v151 = *&v170[8];
        v152 = *&v170[24];
        v124 = v90;
        v126 = v89;
        do
        {
          v91 = (v129 + 48 * v87);
          v92 = *v91;
          v93 = v91[1];
          v94 = *(v91 + 2);
          v95 = *(v91 + 3);
          v97 = *(v91 + 4);
          v96 = *(v91 + 5);
          if (v90)
          {
            v98 = *(v96 + 376);

            os_unfair_lock_lock(v98);
            os_unfair_lock_lock(*(v96 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v89);
          v99 = *(v88 + 64);
          v154 = *(v88 + 48);
          v155 = v99;
          *&v156 = *(v88 + 80);
          v100 = *(*(*(*(v96 + 40) + 16) + 32) + 16) + 1;
          *(v88 + 48) = ecs_stack_allocator_allocate(*(v88 + 32), 48 * v100, 8);
          *(v88 + 56) = v100;
          *(v88 + 72) = 0;
          *(v88 + 80) = 0;
          *(v88 + 64) = 0;
          v101 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v94, v95, v97, v88);
          v102 = sub_1AF64B110(&type metadata for NeighborGrid, &off_1F2563DC0, v94, v95, v97, v88);
          if (v94)
          {
            if (v97)
            {
              v103 = (v101 + 96);
              do
              {
                v104 = *v103;
                v103 += 26;
                *v102 = v104;
                v102 += 12;
                --v97;
              }

              while (v97);
            }
          }

          else if (v92 != v93)
          {
            v105 = v93 - v92;
            v106 = &v102[12 * v92];
            v107 = (v101 + 104 * v92 + 96);
            do
            {
              v108 = *v107;
              v107 += 26;
              *v106 = v108;
              v106 += 12;
              --v105;
            }

            while (v105);
          }

          sub_1AF630994(v88, &v150, &v154);
          sub_1AF62D29C(v96);
          v89 = v126;
          ecs_stack_allocator_pop_snapshot(v126);
          v90 = v124;
          if (v124)
          {
            os_unfair_lock_unlock(*(v96 + 344));
            os_unfair_lock_unlock(*(v96 + 376));
          }

          ++v87;
        }

        while (v87 != v131);
      }

      sub_1AFCB9FB8(v168, sub_1AFCBA14C);
      sub_1AFCBA0DC(v133, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
      v109 = MEMORY[0x1E69E6720];
    }

    return sub_1AFCB9F58(v170, &qword_1ED725EA0, &type metadata for QueryResult, v109, sub_1AFCBA88C);
  }

  else
  {
    sub_1AFCBA0DC(v133, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
    return sub_1AFCB9FB8(v168, sub_1AFCBA14C);
  }
}

void *sub_1AFCB9720(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = [result assetRegistry];
    v3 = [v2 rootNode];

    v4 = swift_allocObject();
    *(v4 + 16) = sub_1AFCDB6FC;
    *(v4 + 24) = 0;
    *&aBlock[32] = sub_1AFBF7FC8;
    *&aBlock[40] = v4;
    *aBlock = MEMORY[0x1E69E9820];
    *&aBlock[8] = 1107296256;
    *&aBlock[16] = sub_1AF92EF7C;
    *&aBlock[24] = &unk_1F24E62F8;
    v5 = _Block_copy(aBlock);

    [v3 enumerateHierarchyUsingBlock_];

    _Block_release(v5);
    swift_isEscapingClosureAtFileLocation();

    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v76 = qword_1ED73B840;
    v77 = 0;
    v78 = 2;
    v79 = 0;
    v80 = 2;
    v81 = 0;
    sub_1AF705058(1, &v57);
    v70 = v57;
    v71 = v58;
    v72 = v59;
    v73 = v60 | 1;
    v74 = v61;
    v75 = v62;
    v6 = [v1 scene];
    v7 = *&v6[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

    sub_1AF6B06C0(v7, &v70, 0x200000000, aBlock);
    v53 = *&aBlock[32];
    v54 = v64;
    v55 = v65;
    v56 = v66;
    v51 = *aBlock;
    v52 = *&aBlock[16];

    if (*aBlock)
    {
      if (v66 > 0 && (v45 = *(&v64 + 1)) != 0)
      {
        v44 = *&aBlock[40];
        v8 = *(&v65 + 1);
        v9 = *(v65 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v47 = *(*(&v65 + 1) + 32);
        v67 = *aBlock;
        v68 = *&aBlock[8];
        v69 = *&aBlock[24];
        v50[2] = v53;
        v50[3] = v54;
        v50[4] = v55;
        v50[5] = v56;
        v50[0] = v51;
        v50[1] = v52;
        sub_1AF5DD298(v50, v48);
        v10 = 0;
        v11 = MEMORY[0x1E69E7CC0];
        v43 = v9;
        do
        {
          v46 = v10;
          v12 = (v44 + 48 * v10);
          v13 = *v12;
          v14 = v12[1];
          v16 = *(v12 + 2);
          v15 = *(v12 + 3);
          v18 = *(v12 + 4);
          v17 = *(v12 + 5);
          if (v9)
          {
            v19 = *(v17 + 376);

            os_unfair_lock_lock(v19);
            os_unfair_lock_lock(*(v17 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v47);
          v20 = *(v8 + 64);
          v48[0] = *(v8 + 48);
          v48[1] = v20;
          v49 = *(v8 + 80);
          v21 = *(*(*(*(v17 + 40) + 16) + 32) + 16) + 1;
          *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v21, 8);
          *(v8 + 56) = v21;
          *(v8 + 72) = 0;
          *(v8 + 80) = 0;
          *(v8 + 64) = 0;
          v22 = sub_1AF64B110(&type metadata for GraphComponent, &off_1F2547EF8, v16, v15, v18, v8);
          v23 = v22;
          if (v16)
          {
            for (; v18; --v18)
            {
              v24 = *v23++;
              sub_1AF3FB9C8(sub_1AFC8EEE0, 0, 0, 0x1000000000000000uLL, 0, v11);
              v25 = sub_1AF449CC8();

              *(v24 + 24) = v25;
            }
          }

          else if (v13 != v14)
          {
            v26 = v14 - v13;
            v27 = (v22 + 8 * v13);
            do
            {
              v28 = *v27++;
              sub_1AF3FB9C8(sub_1AFC8EEE0, 0, 0, 0x1000000000000000uLL, 0, v11);
              v29 = sub_1AF449CC8();

              *(v28 + 24) = v29;

              --v26;
            }

            while (v26);
          }

          sub_1AF630994(v8, &v67, v48);
          v9 = v43;
          if (*(*(v8 + 104) + 16))
          {

            sub_1AF62F348(v30, v17);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v32 = *(v8 + 104);
            if (isUniquelyReferenced_nonNull_native)
            {
              v33 = v32[2];
              v34 = swift_isUniquelyReferenced_nonNull_native();
              *(v8 + 104) = v32;
              if ((v34 & 1) == 0)
              {
                v32 = sub_1AF420EA0(0, v33, 1, v32);
                *(v8 + 104) = v32;
              }

              sub_1AF43A540(0);
              swift_arrayDestroy();
              if (v33)
              {
                v35 = v32[2] - v33;
                memmove(v32 + 4, &v32[9 * v33 + 4], 72 * v35);
                v32[2] = v35;
              }

              *(v8 + 104) = v32;
            }

            else
            {
              v36 = v11;
              if (v32[3] >= 2uLL)
              {
                sub_1AFCBA7A8(0, &qword_1ED7269C0, sub_1AF43A540, MEMORY[0x1E69E6F90]);
                v36 = swift_allocObject();
                v37 = j__malloc_size_0(v36);
                v36[2] = 0;
                v36[3] = 2 * ((v37 - 32) / 72);
              }

              *(v8 + 104) = v36;
            }

            if (*(*(v8 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
            {
              v38 = *(v17 + 232);
              v39 = *(v17 + 256);
              if (v38 == v39)
              {
                v40 = *(v17 + 240);
              }

              else
              {
                sub_1AF6497A0(v39, v38);
                v39 = *(v17 + 232);
                v40 = *(v17 + 240);
                if (v40 == v39)
                {
                  v40 = 0;
                  v39 = 0;
                  *(v17 + 232) = 0;
                  *(v17 + 240) = 0;
                }
              }

              *(v17 + 248) = v40;
              *(v17 + 256) = v39;
            }
          }

          ecs_stack_allocator_pop_snapshot(v47);
          if (v43)
          {
            os_unfair_lock_unlock(*(v17 + 344));
            os_unfair_lock_unlock(*(v17 + 376));
          }

          v10 = v46 + 1;
        }

        while (v46 + 1 != v45);
        v42 = MEMORY[0x1E69E6720];
        sub_1AFCB9F58(aBlock, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
        sub_1AFCBA0DC(&v57, &qword_1EB633D00, &type metadata for GraphComponent, &off_1F2547EF8);
        v41 = v42;
      }

      else
      {
        sub_1AFCBA0DC(&v57, &qword_1EB633D00, &type metadata for GraphComponent, &off_1F2547EF8);
        v41 = MEMORY[0x1E69E6720];
      }

      return sub_1AFCB9F58(aBlock, &qword_1ED725EA0, &type metadata for QueryResult, v41, sub_1AFCBA88C);
    }

    else
    {
      return sub_1AFCBA0DC(&v57, &qword_1EB633D00, &type metadata for GraphComponent, &off_1F2547EF8);
    }
  }

  return result;
}

uint64_t sub_1AFCB9F40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AFCB9F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AFCB9FB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AFCBA018(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AFCBA7A8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AFCBA088()
{
  result = qword_1EB643C48;
  if (!qword_1EB643C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643C48);
  }

  return result;
}

uint64_t sub_1AFCBA0DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1AFCBAA8C(0, a2, a3, a4, type metadata accessor for Query1);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AFCBA14C()
{
  if (!qword_1ED722110)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED722110);
    }
  }
}

uint64_t sub_1AFCBA1C8(uint64_t a1)
{
  v2 = 0x1000000000000;
  if (!*(v1 + 38))
  {
    v2 = 0;
  }

  v3 = 0x10000000000;
  if (!*(v1 + 37))
  {
    v3 = 0;
  }

  return sub_1AFC90944(a1, *(v1 + 16), *(v1 + 24), v3 | v2 | (*(v1 + 36) << 32) | *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1AFCBA238(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AFCBA88C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1AFCBA31C()
{
  if (!qword_1EB632BD8)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB632BD8);
    }
  }
}

void sub_1AFCBA398()
{
  if (!qword_1EB632BC0)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB632BC0);
    }
  }
}

void sub_1AFCBA414()
{
  if (!qword_1EB632BB8)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB632BB8);
    }
  }
}

void sub_1AFCBA490()
{
  if (!qword_1EB632BC8)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB632BC8);
    }
  }
}

void sub_1AFCBA50C()
{
  if (!qword_1EB632BB0)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB632BB0);
    }
  }
}

void sub_1AFCBA588()
{
  if (!qword_1EB643C50)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB643C50);
    }
  }
}

void sub_1AFCBA604()
{
  if (!qword_1EB643C58)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB643C58);
    }
  }
}

void sub_1AFCBA680(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Query1();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AFCBA6E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AFCBA72C()
{
  if (!qword_1EB643C88)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB643C88);
    }
  }
}

void sub_1AFCBA7A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AFCBA80C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1AFCBA7A8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1AFCBA88C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AFCBA8FC()
{
  if (!qword_1EB643CB0)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB643CB0);
    }
  }
}

void sub_1AFCBA978()
{
  if (!qword_1EB643CB8)
  {
    v0 = type metadata accessor for Query3();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB643CB8);
    }
  }
}

void sub_1AFCBAA08()
{
  if (!qword_1EB643CF0)
  {
    sub_1AFCBAA8C(255, &qword_1EB643CF8, &type metadata for ParticleBoxRenderer, &off_1F254FC88, type metadata accessor for QueryResult1);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB643CF0);
    }
  }
}

void sub_1AFCBAA8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

id sub_1AFCBADFC()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_scene] = 0;
  *&v0[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_effect] = 0;
  *&v0[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_texture] = 0;
  *&v0[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_depthTexture] = 0;
  *&v0[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_backgroundColor] = 0;
  *&v0[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_pointOfView] = 0;
  v0[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_performMetalCaptureDuringSnapshot] = 0;
  v2 = &v0[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_postRenderCallback];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = CFXMTLCreateSystemDefaultDevice();
  if (v3)
  {
    v4 = [v3 newCommandQueue];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 device];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = CFXGPUDeviceCreate(v6);
  swift_unknownObjectRelease();
  v13 = 1;
  v12 = 1;
  v11 = 1;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 1;
  v18 = 0;
  v19 = 1;
  v20 = 0;
  v21 = 1;
  v22 = 1;
  v23 = 260;
  v24 = 0;
  v25 = 0;
  type metadata accessor for Renderer();
  swift_allocObject();
  v8 = sub_1AF70A2F4(v7, v5, &v14, 0);
  swift_unknownObjectRelease();
  *&v1[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_renderer] = v8;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for VFXRendererLegacy();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1AFCBAFD0()
{
  v1 = *&v0[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_scene];
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
    v3 = v1;
    v4 = v0;
    v5 = sub_1AF67200C(v2, v3, v4);
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v6 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v8 = v6;
      swift_once();
      v6 = v8;
    }

    v9 = 0;
    sub_1AF0D4F18(v6, &v9, 0xD000000000000026, 0x80000001AFF4CDD0);
    v5 = 0;
  }

  return v5 & 1;
}

void sub_1AFCBB128(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_scene];
  if (v2)
  {
    v3 = v1;
    v4 = *&v1[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_texture];
    if (v4)
    {
      v6 = *&v1[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_depthTexture];
      type metadata accessor for MTLTextureRenderOutput();
      swift_allocObject();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain_n();
      v7 = v2;
      v8 = sub_1AF7083F4(v4, v6);
      v9 = v8;
      *(v8 + 144) = 0;
      v10 = *&v3[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_backgroundColor];
      if (v10)
      {
        *(v8 + 32) = 2;
        v11 = v10;
        *v34 = 0uLL;
        v12 = [v11 CGColor];
        sub_1AF6DE2A8(v12);

        *(v9 + 40) = nullsub_106();
        *(v9 + 48) = v13;
        *(v9 + 56) = v14;
        *(v9 + 64) = v15;
      }

      else
      {
        *(v8 + 32) = 1;
      }

      v20 = *&v3[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_pointOfView];
      if (v20)
      {
        *(v9 + 80) = *(v20 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
      }

      v21 = *&v3[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_effect];
      if (v21)
      {
        v22 = (v21 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID);
        if ((v22[1] & 1) == 0)
        {
          v24 = *v22;
          LOBYTE(v34[0]) = 0;
          v25 = sub_1AF80F414(0);
          if (v24 == v25)
          {
            LODWORD(v21) = 0;
          }

          else
          {
            LODWORD(v21) = v24;
          }

          v23 = 2 * (v24 == v25);
          goto LABEL_26;
        }

        LODWORD(v21) = 0;
      }

      v23 = 2;
LABEL_26:
      *(v9 + 72) = v21;
      *(v9 + 76) = v23;
      v26 = *&v3[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_postRenderCallback];
      v27 = *&v3[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_postRenderCallback + 8];
      v28 = *(v9 + 120);
      *(v9 + 120) = v26;
      *(v9 + 128) = v27;
      sub_1AF719C90(v26);
      sub_1AF719C94(v28);
      v29 = v7;
      v30 = v3;

      swift_unknownObjectRetain();

      sub_1AF664614(v31, v29, v30, v9, a1);

      swift_unknownObjectRelease();
      return;
    }

    v17 = qword_1ED730EA0;
    v18 = v2;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v33 = v19;
      swift_once();
      v19 = v33;
    }

    v34[0] = 0;
    sub_1AF0D4F18(v19, v34, 0xD000000000000024, 0x80000001AFF4CDA0);
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v16 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v32 = v16;
      swift_once();
      v16 = v32;
    }

    v34[0] = 0;
    sub_1AF0D4F18(v16, v34, 0xD000000000000023, 0x80000001AFF4CD70);
  }
}

uint64_t sub_1AFCBB68C(double a1, double a2, double a3)
{
  v4 = v3;
  v61[2] = *MEMORY[0x1E69E9840];
  v8 = sub_1AFDFBFC8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF455364();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1AFDFC128();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *&v4[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_renderer];
  v23 = CFXGPUDeviceGetMTLDevice(*(v22 + 16));
  v59 = *(v22 + 264);
  v60 = v23;
  if (!v59)
  {
    goto LABEL_14;
  }

  v55 = v9;
  v56 = v8;
  v57 = v17;
  v24 = *&v4[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_scene];
  if (!v24)
  {
    goto LABEL_14;
  }

  v25 = objc_opt_self();
  v26 = v59;
  swift_unknownObjectRetain();
  v27 = v24;
  v28 = [v25 texture2DDescriptorWithPixelFormat:115 width:a1 height:a2 mipmapped:0];
  [v28 setStorageMode_];
  [v28 setUsage_];
  v29 = [v60 newTextureWithDescriptor_];
  v58 = OBJC_IVAR____TtC3VFX17VFXRendererLegacy_performMetalCaptureDuringSnapshot;
  if (v4[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_performMetalCaptureDuringSnapshot] == 1)
  {
    v54 = v27;
    v53 = [objc_opt_self() sharedCaptureManager];
    v30 = [objc_allocWithZone(MEMORY[0x1E6973FF8]) init];
    [v30 setCaptureObject_];
    v31 = v57;
    (*(v18 + 56))(v16, 1, 1, v57);
    (*(v55 + 104))(v12, *MEMORY[0x1E6968F70], v56);
    sub_1AFDFC108();
    v32 = sub_1AFDFC048();
    v33 = *(v18 + 8);
    v33(v21, v31);
    [v30 setOutputURL_];

    v34 = [objc_opt_self() defaultManager];
    v35 = [v30 outputURL];
    sub_1AFDFC0B8();

    v36 = sub_1AFDFC048();
    v33(v21, v31);
    v61[0] = 0;
    v37 = [v34 removeItemAtURL:v36 error:v61];

    if (v37)
    {
      v38 = v61[0];
    }

    else
    {
      v39 = v61[0];
      v40 = sub_1AFDFBF58();

      swift_willThrow();
    }

    [v30 setDestination_];
    v61[0] = 0;
    v41 = v53;
    v42 = [v53 startCaptureWithDescriptor:v30 error:v61];
    v21 = v61[0];
    v26 = v59;
    v27 = v54;
    if (!v42)
    {
      goto LABEL_15;
    }

    v43 = v61[0];
  }

  v44 = [v26 commandBuffer];
  if (!v44)
  {
LABEL_14:
    sub_1AFDFE518();
    __break(1u);
LABEL_15:
    v51 = v21;
    sub_1AFDFBF58();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v45 = v44;
  *&v4[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_texture] = v29;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v46 = v27;
  v47 = v4;
  swift_unknownObjectRetain();

  sub_1AF664CDC(v48, v46, v47, v45, a3);

  [v45 commit];
  if (v4[v58] == 1)
  {
    v49 = [objc_opt_self() sharedCaptureManager];
    [v49 stopCapture];
  }

  [v45 waitUntilCompleted];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v29;
}

void __swiftcall MTLTexture.toImage()(UIImage_optional *__return_ptr retstr)
{
  if ([v1 storageMode] == 2)
  {
    sub_1AF470C5C();
    swift_getObjectType();
    MTLTexture.toImage()(v2);
    swift_unknownObjectRelease();
    return;
  }

  v3 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v4 = [v1 pixelFormat];
  if (v4 > 80)
  {
    if (v4 == 115)
    {
      v7 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);

      v5 = 4353;
      v6 = 16;
      v3 = v7;
    }

    else
    {
      if (v4 != 81)
      {
LABEL_32:
        v21 = v4;
        sub_1AFDFE218();
        sub_1AF4720E8(v21);

        MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF4C9E0);
        sub_1AFDFE518();
        __break(1u);
        return;
      }

      v5 = 8194;
      v6 = 8;
    }
  }

  else
  {
    v5 = 16385;
    v6 = 8;
    if ((v4 - 70) >= 2 && v4 != 80)
    {
      goto LABEL_32;
    }
  }

  v8 = (4 * v6 * [v1 width]) >> 3;
  v9 = malloc(v8 * [v1 height]);
  if (v9)
  {
    v10 = v9;
    sub_1AF7156FC([v1 width], objc_msgSend(v1, sel_height), &v22);
    [v1 getBytes:v10 bytesPerRow:v8 fromRegion:&v22 mipmapLevel:0];
    v11 = j__CGBitmapContextCreate(v10, [v1 width], objc_msgSend(v1, sel_height), v6, v8, v3, v5);
    if (v11)
    {
      v12 = v11;
      Image = CGBitmapContextCreateImage(v11);
      if (Image)
      {
        v14 = Image;
        [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

        free(v10);
        return;
      }

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v17 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v20 = v17;
        swift_once();
        v17 = v20;
      }

      *&v22 = 0;
      sub_1AF0D4F18(v17, &v22, 0xD000000000000028, 0x80000001AFF4CA40);
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v16 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v19 = v16;
        swift_once();
        v16 = v19;
      }

      *&v22 = 0;
      sub_1AF0D4F18(v16, &v22, 0xD00000000000001DLL, 0x80000001AFF4CA20);
    }

    free(v10);
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v15 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v18 = v15;
      swift_once();
      v15 = v18;
    }

    *&v22 = 0;
    sub_1AF0D4F18(v15, &v22, 0xD00000000000001FLL, 0x80000001AFF4CA00);
  }
}

id sub_1AFCBC4C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VFXRendererLegacy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AFCBC5B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AFCBC5CC(unint64_t a1, uint64_t (*a2)(__int128 *))
{
  if (a1 == 0xFFFFFFFF || (a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v5 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1), v6 = *(v5 + 2), HIDWORD(a1) != 0xFFFFFFFF) && v5[2] != HIDWORD(a1))
  {
LABEL_13:
    *&v20 = 0;
    *(&v20 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v19 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v19);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF2EA70);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    goto LABEL_14;
  }

  v7 = *(*(v2 + 144) + 8 * *v5 + 32);
  v8 = *(v7 + 48);
  v9 = (v8 + 32);
  v10 = *(v8 + 16) + 1;
  do
  {
    if (!--v10)
    {
      goto LABEL_13;
    }

    v11 = v9 + 5;
    v12 = *v9;
    v9 += 5;
  }

  while (v12 != &type metadata for TextureLoadingOptions);
  v13 = (&(*(v11 - 2))[4 * v6].Kind + *(v7 + 128));
  v14 = v13[1];
  v20 = *v13;
  v21 = v14;
  v22[0] = v13[2];
  *(v22 + 10) = *(v13 + 42);
  result = a2(&v20);
  if (!v3)
  {
    v16 = sub_1AF65ADEC(a1);
    if ((v17 & 0x100000000) == 0)
    {
      v18 = v16 << 16 >> 48;
      v23[0] = v20;
      v23[1] = v21;
      v24[0] = v22[0];
      *(v24 + 10) = *(v22 + 10);

      sub_1AFC4556C(v18, v23);
    }

    while (1)
    {
LABEL_14:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AFCBC88C(unint64_t a1, void (*a2)(char *))
{
  result = sub_1AFC3F3D8(a1, a2);
  if (!v2 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v4 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v4);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF2EB60);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCBC9B0(unint64_t a1, uint64_t (*a2)(char *))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for LocalAABB)
        {
          return a2(&(*(v9 - 2))[2 * v4] + *(v5 + 128));
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x4241416C61636F4CLL, 0xE900000000000042);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCBCB84(unint64_t a1, uint64_t (*a2)(char *))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ProjectionMatrix)
        {
          return a2(&(*(v9 - 2))[4 * v4] + *(v5 + 128));
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2A190);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCBCD98(unint64_t a1, uint64_t (*a2)(char *))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for Children)
        {
          return a2(&(*(v9 - 2))->Kind + 8 * v4 + *(v5 + 128));
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x6E6572646C696843, 0xE800000000000000);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCBCF68(unint64_t a1, uint64_t (*a2)(void *))
{
  if (a1 == 0xFFFFFFFF || (a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v5 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1), v6 = *(v5 + 2), HIDWORD(a1) != 0xFFFFFFFF) && v5[2] != HIDWORD(a1))
  {
LABEL_13:
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v18 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v18);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0x746E65726150, 0xE600000000000000);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    goto LABEL_14;
  }

  v7 = *(*(v2 + 144) + 8 * *v5 + 32);
  v8 = *(v7 + 48);
  v9 = (v8 + 32);
  v10 = *(v8 + 16) + 1;
  do
  {
    if (!--v10)
    {
      goto LABEL_13;
    }

    v11 = v9 + 5;
    v12 = *v9;
    v9 += 5;
  }

  while (v12 != &type metadata for Parent);
  v19[0] = *(&(*(v11 - 2))->Kind + 8 * v6 + *(v7 + 128));
  result = a2(v19);
  if (!v3)
  {
    v14 = sub_1AF65ADEC(a1);
    if ((v15 & 0x100000000) == 0)
    {
      v16 = v14 << 16 >> 48;
      v17 = v19[0];

      sub_1AFC46420(v16, v17);
    }

    while (1)
    {
LABEL_14:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AFCBD1F8(unint64_t a1, uint64_t (*a2)(char *))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for WorldTransform)
        {
          return a2(&(*(v9 - 2))[4 * v4] + *(v5 + 128));
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x617254646C726F57, 0xEE006D726F66736ELL);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCBD3D4(unint64_t a1, void (*a2)(char *))
{
  result = sub_1AFC3F5A8(a1, a2);
  if (!v2 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v4 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v4);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF4D360);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCBD4FC(unint64_t a1, void (*a2)(char *))
{
  result = sub_1AFC3F690(a1, a2);
  if (!v2 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v4 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v4);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF4D1D0);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCBD620(unint64_t a1, uint64_t (*a2)(__int128 *))
{
  if (a1 == 0xFFFFFFFF || (a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v5 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1), v6 = *(v5 + 2), HIDWORD(a1) != 0xFFFFFFFF) && v5[2] != HIDWORD(a1))
  {
LABEL_13:
    *&v19 = 0;
    *(&v19 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v18 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v18);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0x6E65526C65646F4DLL, 0xED00007265726564);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    goto LABEL_14;
  }

  v7 = *(*(v2 + 144) + 8 * *v5 + 32);
  v8 = *(v7 + 48);
  v9 = (v8 + 32);
  v10 = *(v8 + 16) + 1;
  do
  {
    if (!--v10)
    {
      goto LABEL_13;
    }

    v11 = v9 + 5;
    v12 = *v9;
    v9 += 5;
  }

  while (v12 != &type metadata for ModelRenderer);
  v19 = *(&(*(v11 - 2))[v6] + *(v7 + 128));
  result = a2(&v19);
  if (!v3)
  {
    v14 = sub_1AF65ADEC(a1);
    if ((v15 & 0x100000000) == 0)
    {
      v16 = v14 << 16 >> 48;
      v17 = v19;

      sub_1AFC42330(v16, v17, *(&v17 + 1));
    }

    while (1)
    {
LABEL_14:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AFCBD8CC(unint64_t a1, uint64_t (*a2)(char *))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for Scale3)
        {
          return a2(&(*(v9 - 2))[v4] + *(v5 + 128));
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x33656C616353, 0xE600000000000000);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCBDA98(unint64_t a1, uint64_t (*a2)(char *))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for Orientation)
        {
          return a2(&(*(v9 - 2))[v4] + *(v5 + 128));
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x7461746E6569724FLL, 0xEB000000006E6F69);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCBDC70(unint64_t a1, uint64_t (*a2)(char *))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for Position)
        {
          return a2(&(*(v9 - 2))[v4] + *(v5 + 128));
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x6E6F697469736F50, 0xE800000000000000);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCBDE80(unint64_t a1, void (*a2)(char *))
{
  result = sub_1AFC3F864(a1, a2);
  if (!v2 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v4 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v4);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF4D2D0);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCBDFA4(unint64_t a1, uint64_t (*a2)(char *))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for Name)
        {
          return a2(&(*(v9 - 2))[v4] + *(v5 + 128));
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](1701667150, 0xE400000000000000);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCBE16C(unint64_t a1, uint64_t (*a2)(char *))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for Color)
        {
          return a2(&(*(v9 - 2))[v4] + *(v5 + 128));
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x726F6C6F43, 0xE500000000000000);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCBE338(unint64_t a1, uint64_t (*a2)(char *))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for AmbientLight)
        {
          return a2(*(v9 - 2) + 4 * v4 + *(v5 + 128));
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x4C746E6569626D41, 0xEC00000074686769);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCBE510(unint64_t a1, uint64_t (*a2)(char *))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for DirectionalLight)
        {
          return a2(&(*(v9 - 2))[v4] + *(v5 + 128));
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2B610);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCBE6E4(unint64_t a1, uint64_t (*a2)(char *))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for SpotLight)
        {
          return a2(*(v9 - 2) + 24 * v4 + *(v5 + 128));
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x6867694C746F7053, 0xE900000000000074);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCBE8BC(unint64_t a1, uint64_t (*a2)(char *))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for PointLight)
        {
          return a2(&(*(v9 - 2))[v4] + *(v5 + 128));
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x67694C746E696F50, 0xEA00000000007468);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCBEA90(unint64_t a1, uint64_t (*a2)(char *))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for PerspectiveCamera)
        {
          return a2(&(*(v9 - 2))[3 * v4] + *(v5 + 128));
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF4D210);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCBEC64(unint64_t a1, uint64_t (*a2)(char *))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for OrthographicCamera)
        {
          return a2(*(v9 - 2) + 20 * v4 + *(v5 + 128));
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF4D1F0);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCBEE38(unint64_t a1, uint64_t (*a2)(char *))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for GraphScriptingConfig)
        {
          return a2(&(*(v9 - 2))[2 * v4] + *(v5 + 128));
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF2EB40);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCBF008(unint64_t a1, uint64_t (*a2)(char *))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for EmitterRuntime)
        {
          return a2(&(*(v9 - 2))[53 * v4] + *(v5 + 128));
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCBF1E8(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC3FA38(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF4D270);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCBF310(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC3FA8C(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD00000000000001ALL, 0x80000001AFF4D290);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCBF438(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC3FC54(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF4D2B0);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCBF55C(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC3FCA8(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF454B0);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCBF680(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC3FCFC(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000024, 0x80000001AFF4D3B0);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCBF7A4(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC3FD3C(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF4D3E0);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCBF8CC(unint64_t a1, void (*a2)(char *))
{
  v28[3] = *MEMORY[0x1E69E9840];
  v6 = HIDWORD(a1);
  v7 = type metadata accessor for HeaderScript();
  MEMORY[0x1EEE9AC00](v7, v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11)
  {
    v13 = *(v10 + 72);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  if (a1 == -1)
  {
LABEL_17:
    v28[1] = 0;
    v28[2] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v27 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v27);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0x6353726564616548, 0xEC00000074706972);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    goto LABEL_18;
  }

LABEL_6:
  if ((a1 & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  if (a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    goto LABEL_17;
  }

  v14 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
  v15 = *(v14 + 2);
  if (v6 != 0xFFFFFFFF && v14[2] != v6)
  {
    goto LABEL_17;
  }

  v16 = *(*(v2 + 144) + 8 * *v14 + 32);
  v17 = *(v16 + 48);
  v18 = (v17 + 32);
  v19 = *(v17 + 16) + 1;
  do
  {
    if (!--v19)
    {
      goto LABEL_17;
    }

    v20 = v18 + 5;
    v21 = *v18;
    v18 += 5;
  }

  while (v21 != v9);
  sub_1AFCCE860(*(v16 + 128) + *(v20 - 2) + v13 * v15, v12, type metadata accessor for HeaderScript);
  a2(v12);
  if (!v3)
  {
    v22 = sub_1AF65ADEC(a1);
    if ((v23 & 0x100000000) == 0)
    {
      v24 = v22 << 16 >> 48;
      v25 = **(v2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

      sub_1AFC41DEC(v24, v12, v25);

      return sub_1AFCCE694(v12, type metadata accessor for HeaderScript);
    }

    while (1)
    {
LABEL_18:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  return sub_1AFCCE694(v12, type metadata accessor for HeaderScript);
}

uint64_t sub_1AFCBFC5C(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC3FD90(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000023, 0x80000001AFF454E0);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCBFD80(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC3FDE4(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000025, 0x80000001AFF4D400);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCBFEF0(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC40210(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF45510);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC0014(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC40264(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD00000000000002CLL, 0x80000001AFF4D450);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC0138(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC402A4(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000023, 0x80000001AFF4D480);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC025C(unint64_t a1, void (*a2)(char *))
{
  v28[3] = *MEMORY[0x1E69E9840];
  v6 = HIDWORD(a1);
  updated = type metadata accessor for ParticleUpdateScript(0);
  MEMORY[0x1EEE9AC00](updated, v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11)
  {
    v13 = *(v10 + 72);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  if (a1 == -1)
  {
LABEL_17:
    v28[1] = 0;
    v28[2] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v27 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v27);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF4D430);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    goto LABEL_18;
  }

LABEL_6:
  if ((a1 & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  if (a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    goto LABEL_17;
  }

  v14 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
  v15 = *(v14 + 2);
  if (v6 != 0xFFFFFFFF && v14[2] != v6)
  {
    goto LABEL_17;
  }

  v16 = *(*(v2 + 144) + 8 * *v14 + 32);
  v17 = *(v16 + 48);
  v18 = (v17 + 32);
  v19 = *(v17 + 16) + 1;
  do
  {
    if (!--v19)
    {
      goto LABEL_17;
    }

    v20 = v18 + 5;
    v21 = *v18;
    v18 += 5;
  }

  while (v21 != v9);
  sub_1AFCCE860(*(v16 + 128) + *(v20 - 2) + v13 * v15, v12, type metadata accessor for ParticleUpdateScript);
  a2(v12);
  if (!v3)
  {
    v22 = sub_1AF65ADEC(a1);
    if ((v23 & 0x100000000) == 0)
    {
      v24 = v22 << 16 >> 48;
      v25 = **(v2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

      sub_1AFC44A64(v24, v12, v25);

      return sub_1AFCCE694(v12, type metadata accessor for ParticleUpdateScript);
    }

    while (1)
    {
LABEL_18:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  return sub_1AFCCE694(v12, type metadata accessor for ParticleUpdateScript);
}

uint64_t sub_1AFCC05E4(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC402F8(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000028, 0x80000001AFF45540);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC0708(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC4034C(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF4D4D0);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC082C(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC4038C(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000021, 0x80000001AFF4D500);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC0950(unint64_t a1, void (*a2)(char *))
{
  v28[3] = *MEMORY[0x1E69E9840];
  v6 = HIDWORD(a1);
  inited = type metadata accessor for ParticleInitScript(0);
  MEMORY[0x1EEE9AC00](inited, v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11)
  {
    v13 = *(v10 + 72);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  if (a1 == -1)
  {
LABEL_17:
    v28[1] = 0;
    v28[2] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v27 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v27);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF4D4B0);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    goto LABEL_18;
  }

LABEL_6:
  if ((a1 & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  if (a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    goto LABEL_17;
  }

  v14 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
  v15 = *(v14 + 2);
  if (v6 != 0xFFFFFFFF && v14[2] != v6)
  {
    goto LABEL_17;
  }

  v16 = *(*(v2 + 144) + 8 * *v14 + 32);
  v17 = *(v16 + 48);
  v18 = (v17 + 32);
  v19 = *(v17 + 16) + 1;
  do
  {
    if (!--v19)
    {
      goto LABEL_17;
    }

    v20 = v18 + 5;
    v21 = *v18;
    v18 += 5;
  }

  while (v21 != v9);
  sub_1AFCCE860(*(v16 + 128) + *(v20 - 2) + v13 * v15, v12, type metadata accessor for ParticleInitScript);
  a2(v12);
  if (!v3)
  {
    v22 = sub_1AF65ADEC(a1);
    if ((v23 & 0x100000000) == 0)
    {
      v24 = v22 << 16 >> 48;
      v25 = **(v2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

      sub_1AFC43A84(v24, v12, v25);

      return sub_1AFCCE694(v12, type metadata accessor for ParticleInitScript);
    }

    while (1)
    {
LABEL_18:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  return sub_1AFCCE694(v12, type metadata accessor for ParticleInitScript);
}

uint64_t sub_1AFCC0CD8(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC403E0(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF45570);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC0DFC(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC40434(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000024, 0x80000001AFF4D530);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC0F20(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC40474(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF4D560);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC1090(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC40780(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000029, 0x80000001AFF456D0);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC11B4(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC407D4(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD00000000000002BLL, 0x80000001AFF4D5A0);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC12D8(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC40814(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF4D5D0);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC13FC(unint64_t a1, void (*a2)(char *))
{
  v28[3] = *MEMORY[0x1E69E9840];
  v6 = HIDWORD(a1);
  v7 = type metadata accessor for MetalFunctionScript(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11)
  {
    v13 = *(v10 + 72);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  if (a1 == -1)
  {
LABEL_17:
    v28[1] = 0;
    v28[2] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v27 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v27);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4D580);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    goto LABEL_18;
  }

LABEL_6:
  if ((a1 & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  if (a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    goto LABEL_17;
  }

  v14 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
  v15 = *(v14 + 2);
  if (v6 != 0xFFFFFFFF && v14[2] != v6)
  {
    goto LABEL_17;
  }

  v16 = *(*(v2 + 144) + 8 * *v14 + 32);
  v17 = *(v16 + 48);
  v18 = (v17 + 32);
  v19 = *(v17 + 16) + 1;
  do
  {
    if (!--v19)
    {
      goto LABEL_17;
    }

    v20 = v18 + 5;
    v21 = *v18;
    v18 += 5;
  }

  while (v21 != v9);
  sub_1AFCCE860(*(v16 + 128) + *(v20 - 2) + v13 * v15, v12, type metadata accessor for MetalFunctionScript);
  a2(v12);
  if (!v3)
  {
    v22 = sub_1AF65ADEC(a1);
    if ((v23 & 0x100000000) == 0)
    {
      v24 = v22 << 16 >> 48;
      v25 = **(v2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

      sub_1AFC43F90(v24, v12, v25);

      return sub_1AFCCE694(v12, type metadata accessor for MetalFunctionScript);
    }

    while (1)
    {
LABEL_18:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  return sub_1AFCCE694(v12, type metadata accessor for MetalFunctionScript);
}

uint64_t sub_1AFCC177C(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC40868(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF45700);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC18A0(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC408BC(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000024, 0x80000001AFF4D600);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC1A0C(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC40BB4(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000021, 0x80000001AFF45730);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC1B30(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC40C08(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000023, 0x80000001AFF4D630);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC1C9C(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC40F00(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000023, 0x80000001AFF45760);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC1DC0(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC40F54(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000025, 0x80000001AFF4D660);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC1EE4(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_1AFC40F94(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF4D690);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC2008(unint64_t a1, void (*a2)(char *))
{
  v28[3] = *MEMORY[0x1E69E9840];
  v6 = HIDWORD(a1);
  v7 = type metadata accessor for EmitterScript(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11)
  {
    v13 = *(v10 + 72);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  if (a1 == -1)
  {
LABEL_17:
    v28[1] = 0;
    v28[2] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v27 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v27);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0x5372657474696D45, 0xED00007470697263);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    goto LABEL_18;
  }

LABEL_6:
  if ((a1 & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  if (a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    goto LABEL_17;
  }

  v14 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
  v15 = *(v14 + 2);
  if (v6 != 0xFFFFFFFF && v14[2] != v6)
  {
    goto LABEL_17;
  }

  v16 = *(*(v2 + 144) + 8 * *v14 + 32);
  v17 = *(v16 + 48);
  v18 = (v17 + 32);
  v19 = *(v17 + 16) + 1;
  do
  {
    if (!--v19)
    {
      goto LABEL_17;
    }

    v20 = v18 + 5;
    v21 = *v18;
    v18 += 5;
  }

  while (v21 != v9);
  sub_1AFCCE860(*(v16 + 128) + *(v20 - 2) + v13 * v15, v12, type metadata accessor for EmitterScript);
  a2(v12);
  if (!v3)
  {
    v22 = sub_1AF65ADEC(a1);
    if ((v23 & 0x100000000) == 0)
    {
      v24 = v22 << 16 >> 48;
      v25 = **(v2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

      sub_1AFC42134(v24, v12, v25);

      return sub_1AFCCE694(v12, type metadata accessor for EmitterScript);
    }

    while (1)
    {
LABEL_18:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  return sub_1AFCCE694(v12, type metadata accessor for EmitterScript);
}

uint64_t sub_1AFCC239C(unint64_t a1, void (*a2)(uint64_t *))
{
  if (a1 == 0xFFFFFFFF || (a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1), v7 = *(v6 + 2), HIDWORD(a1) != 0xFFFFFFFF) && v6[2] != HIDWORD(a1))
  {
LABEL_13:
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v26 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v26);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF4D230);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    goto LABEL_14;
  }

  v8 = *(*(v2 + 144) + 8 * *v6 + 32);
  v9 = *(v8 + 48);
  v10 = (v9 + 32);
  v11 = *(v9 + 16) + 1;
  do
  {
    if (!--v11)
    {
      goto LABEL_13;
    }

    v12 = v10 + 5;
    v13 = *v10;
    v10 += 5;
  }

  while (v13 != &type metadata for MeshReferenceAsset);
  v14 = (&(*(v12 - 2))[2 * v7].Kind + *(v8 + 128));
  v15 = v14[1];
  v16 = v14[2];
  v17 = v14[3];
  v27 = *v14;
  v28 = v15;
  v29 = v16;
  v30 = v17;

  a2(&v27);
  if (v3)
  {
  }

  v19 = sub_1AF65ADEC(a1);
  if ((v20 & 0x100000000) != 0)
  {
    while (1)
    {
LABEL_14:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  v21 = v19 << 16 >> 48;
  v22 = v27;
  v23 = v28;
  v24 = v29;
  v25 = v30;

  sub_1AFC43954(v21, v22, v23, v24, v25);
}

uint64_t sub_1AFCC2690(unint64_t a1, void (*a2)(char *))
{
  result = sub_1AFC40FE8(a1, a2);
  if (!v2 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v4 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v4);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EB20);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC283C(unint64_t a1, void (*a2)(char *))
{
  result = sub_1AFC412A4(a1, a2);
  if (!v2 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v4 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v4);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF4D250);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC2964(unint64_t a1, void (*a2)(char *))
{
  result = sub_1AFC4138C(a1, a2);
  if (!v2 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v4 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v4);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF2EA50);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC2AD4(unint64_t a1, uint64_t (*a2)(char *))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for ForceField)
        {
          return a2(&(*(v9 - 2))[9 * v4] + *(v5 + 128));
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x6569466563726F46, 0xEA0000000000646CLL);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCC2CAC(unint64_t a1, void (*a2)(char *))
{
  result = sub_1AFC41648(a1, a2);
  if (!v2 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v4 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v4);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000021, 0x80000001AFF4D380);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCC2DD0(unint64_t a1, uint64_t (*a2)(char *))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for LastFrameWorldTransform)
        {
          return a2(&(*(v9 - 2))[4 * v4] + *(v5 + 128));
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000017, 0x80000001AFF2A150);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCC2FA0(unint64_t a1, uint64_t (*a2)(char *))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v4 = *(v3 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v5 = *(*(v2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for TextureClient)
        {
          return a2(&(*(v9 - 2))[v4] + *(v5 + 128));
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x4365727574786554, 0xED0000746E65696CLL);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCC31C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  result = a4();
  if (!v6 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v10 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v10);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](a5, a6);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

double sub_1AFCC333C@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *v7;
  v14 = *v7 + 41;
  v15 = (*v7)[8];
  v16 = v13[9];
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = a3;
  inited[5] = a4;
  inited[6] = a5;
  inited[7] = a6;
  if (v16 > 0xF)
  {
    *&v27[0] = sub_1AFC0592C((v14 + v15), v16 >> 4);
    sub_1AF48FC80(inited);
    inited = *&v27[0];
  }

  v18 = v13[10];
  v19 = v13[11];
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1AFE4C620;
  *(v20 + 32) = a1;
  *(v20 + 33) = a2;
  if (v19)
  {
    *&v27[0] = sub_1AFC0587C((v14 + v18), v19);
    sub_1AF48FBC0(v20);
    v20 = *&v27[0];
    v21 = *(*&v27[0] + 16);
  }

  else
  {
    v21 = 2;
  }

  sub_1AF5C3CE0((v20 + 32), v21, inited + 4, inited[2], v26, v27);

  result = *v27;
  v23 = v27[1];
  *a7 = v27[0];
  *(a7 + 16) = v23;
  *(a7 + 32) = v28;
  return result;
}

uint64_t sub_1AFCC3548@<X0>(char a1@<W0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = v7;
  v13 = a3(0);
  v14 = *v11;
  v15 = *v11 + 41;
  v34 = *(*v11 + 16);
  v16 = *(*v11 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v13;
  inited[5] = a4;
  inited[6] = a5;
  inited[7] = a6;
  if (v16 > 0xF)
  {
    v37 = sub_1AFC0592C((v15 + v34), v16 >> 4);
    sub_1AF48FC80(inited);
    inited = v37;
  }

  v18 = *(v14 + 20);
  v19 = *(v14 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1AFE4C620;
  *(v20 + 32) = a1;
  *(v20 + 33) = a2;
  if (v19)
  {
    v37 = sub_1AFC0587C((v15 + v18), v19);
    sub_1AF48FBC0(v20);
    v20 = v37;
    v21 = v37[2];
  }

  else
  {
    v21 = 2;
  }

  v22 = *v11 + 41;
  v23 = *(*v11 + 24);
  v24 = *(*v11 + 26) >> 4;
  v25 = *(*v11 + 28);
  v26 = *(*v11 + 30) / 0x18u;
  v27 = *(v11 + 2);
  v28 = *(v11 + 12);
  v29 = v11[4];
  v30 = v11[2];
  v31 = *(v11 + 24);
  v32 = sub_1AF6B7F4C(inited + 4, inited[2], (v20 + 32), v21, (v22 + v23), v24, (v22 + v25), v26);

  *a7 = v32;
  *(a7 + 8) = v27;
  *(a7 + 12) = v28;
  *(a7 + 13) = v38;
  *(a7 + 15) = v39;
  *(a7 + 16) = v30;
  *(a7 + 24) = v31;
  *(a7 + 25) = v37;
  *(a7 + 28) = *(&v37 + 3);
  *(a7 + 32) = v29;
  return result;
}

uint64_t sub_1AFCC3768@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = v7;
  v13 = *v7;
  v14 = *v7 + 41;
  v15 = (*v7)[8];
  v16 = v13[9];
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = a3;
  inited[5] = a4;
  inited[6] = a5;
  inited[7] = a6;
  if (v16 > 0xF)
  {
    v38 = sub_1AFC0592C((v14 + v15), v16 >> 4);
    sub_1AF48FC80(inited);
    inited = v38;
  }

  v18 = v14;
  v19 = v13[10];
  v20 = v13[11];
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1AFE4C620;
  *(v21 + 32) = a1;
  *(v21 + 33) = a2;
  if (v20)
  {
    v38 = sub_1AFC0587C((v18 + v19), v20);
    sub_1AF48FBC0(v21);
    v21 = v38;
    v22 = v38[2];
  }

  else
  {
    v22 = 2;
  }

  v23 = *v11 + 41;
  v24 = (*v11)[12];
  v25 = (*v11)[13] >> 4;
  v26 = (*v11)[14];
  v27 = (*v11)[15] / 0x18u;
  v28 = *(v11 + 2);
  v29 = *(v11 + 12);
  v30 = v11[4];
  v31 = v11[2];
  v32 = *(v11 + 24);
  v33 = sub_1AF6B7F4C(inited + 4, inited[2], (v21 + 32), v22, (v23 + v24), v25, (v23 + v26), v27);

  *a7 = v33;
  *(a7 + 8) = v28;
  *(a7 + 12) = v29;
  *(a7 + 13) = v39;
  *(a7 + 15) = v40;
  *(a7 + 16) = v31;
  *(a7 + 24) = v32;
  *(a7 + 25) = v38;
  *(a7 + 28) = *(&v38 + 3);
  *(a7 + 32) = v30;
  return result;
}

uint64_t sub_1AFCC3B44@<X0>(char a1@<W0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = v7;
  v13 = a3(0);
  v14 = *v11;
  v15 = *v11 + 41;
  v34 = *(*v11 + 16);
  v16 = *(*v11 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = a4;
  inited[5] = a5;
  inited[6] = v13;
  inited[7] = a6;
  if (v16 > 0xF)
  {
    v37 = sub_1AFC0592C((v15 + v34), v16 >> 4);
    sub_1AF48FC80(inited);
    inited = v37;
  }

  v18 = *(v14 + 20);
  v19 = *(v14 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1AFE4C620;
  *(v20 + 32) = a1;
  *(v20 + 33) = a2;
  if (v19)
  {
    v37 = sub_1AFC0587C((v15 + v18), v19);
    sub_1AF48FBC0(v20);
    v20 = v37;
    v21 = v37[2];
  }

  else
  {
    v21 = 2;
  }

  v22 = *v11 + 41;
  v23 = *(*v11 + 24);
  v24 = *(*v11 + 26) >> 4;
  v25 = *(*v11 + 28);
  v26 = *(*v11 + 30) / 0x18u;
  v27 = *(v11 + 2);
  v28 = *(v11 + 12);
  v29 = v11[4];
  v30 = v11[2];
  v31 = *(v11 + 24);
  v32 = sub_1AF6B7F4C(inited + 4, inited[2], (v20 + 32), v21, (v22 + v23), v24, (v22 + v25), v26);

  *a7 = v32;
  *(a7 + 8) = v27;
  *(a7 + 12) = v28;
  *(a7 + 13) = v38;
  *(a7 + 15) = v39;
  *(a7 + 16) = v30;
  *(a7 + 24) = v31;
  *(a7 + 25) = v37;
  *(a7 + 28) = *(&v37 + 3);
  *(a7 + 32) = v29;
  return result;
}

uint64_t sub_1AFCC3D40@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for TriggerScript(0);
  sub_1AFCCE8C8(0, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v7;
  inited[5] = &off_1F255BB48;
  inited[6] = v9;
  inited[7] = &off_1F250F288;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC3F7C@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  updated = type metadata accessor for ParticleUpdateScript(0);
  sub_1AFCCE8C8(0, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = updated;
  inited[5] = &off_1F255BA18;
  inited[6] = v9;
  inited[7] = &off_1F250F288;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC41B8@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  inited = type metadata accessor for ParticleInitScript(0);
  sub_1AFCCE8C8(0, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  v14 = swift_initStackObject();
  *(v14 + 1) = xmmword_1AFE4C620;
  v14[4] = inited;
  v14[5] = &off_1F255B908;
  v14[6] = v9;
  v14[7] = &off_1F250F288;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(v14);
    v14 = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(v14 + 4, v14[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC43F4@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for HeaderScript();
  sub_1AFCCE8C8(0, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v7;
  inited[5] = &off_1F25421A0;
  inited[6] = v9;
  inited[7] = &off_1F250F288;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC4630@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for ShaderScript(0);
  sub_1AFCCE8C8(0, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v7;
  inited[5] = &off_1F255B850;
  inited[6] = v9;
  inited[7] = &off_1F250F288;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC486C@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for MetalFunctionScript(0);
  sub_1AFCCE8C8(0, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v7;
  inited[5] = &off_1F255B5B0;
  inited[6] = v9;
  inited[7] = &off_1F250F288;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC4AA8@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for SimpleScript(0);
  sub_1AFCCE8C8(0, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v7;
  inited[5] = &off_1F255B788;
  inited[6] = v9;
  inited[7] = &off_1F250F288;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC4CE4@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for GraphScript(0);
  sub_1AFCCE8C8(0, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v7;
  inited[5] = &off_1F255B490;
  inited[6] = v9;
  inited[7] = &off_1F250F288;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC4F20@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for EmitterScript(0);
  sub_1AFCCE8C8(0, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v7;
  inited[5] = &off_1F255B668;
  inited[6] = v9;
  inited[7] = &off_1F250F288;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC51C8@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1AFCCE8C8(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v9;
  inited[5] = &off_1F2558F10;
  inited[6] = &type metadata for MetalScriptReflection;
  inited[7] = &off_1F2542E60;
  if (v13 > 0xF)
  {
    v31 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v31;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v31 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v31;
    v18 = v31[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v32;
  *(a3 + 15) = v33;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v31;
  *(a3 + 28) = *(&v31 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC5420@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for GraphScript(0);
  sub_1AFCCE8C8(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v7;
  inited[5] = &off_1F255B490;
  inited[6] = v9;
  inited[7] = &off_1F2558F10;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC565C@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for SimpleScript(0);
  sub_1AFCCE8C8(0, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v7;
  inited[5] = &off_1F255B788;
  inited[6] = v9;
  inited[7] = &off_1F2558F10;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC594C@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for TriggerScript(0);
  sub_1AFCCE8C8(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v7;
  inited[5] = &off_1F255BB48;
  inited[6] = v9;
  inited[7] = &off_1F2558F10;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC5B88@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for HeaderScript();
  sub_1AFCCE8C8(0, qword_1ED724BA0, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptStateRestoration);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v7;
  inited[5] = &off_1F25421A0;
  inited[6] = v9;
  inited[7] = &off_1F2559308;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC5DC4@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for TriggerScript(0);
  sub_1AFCCE8C8(0, &unk_1ED727F70, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptStateRestoration);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v7;
  inited[5] = &off_1F255BB48;
  inited[6] = v9;
  inited[7] = &off_1F2559308;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC6000@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  updated = type metadata accessor for ParticleUpdateScript(0);
  sub_1AFCCE8C8(0, &unk_1ED727FC0, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptStateRestoration);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = updated;
  inited[5] = &off_1F255BA18;
  inited[6] = v9;
  inited[7] = &off_1F2559308;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC623C@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  inited = type metadata accessor for ParticleInitScript(0);
  sub_1AFCCE8C8(0, qword_1ED727FE0, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptStateRestoration);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  v14 = swift_initStackObject();
  *(v14 + 1) = xmmword_1AFE4C620;
  v14[4] = inited;
  v14[5] = &off_1F255B908;
  v14[6] = v9;
  v14[7] = &off_1F2559308;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(v14);
    v14 = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(v14 + 4, v14[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC6478@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for EmitterScript(0);
  sub_1AFCCE8C8(0, &unk_1ED727F80, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptStateRestoration);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v7;
  inited[5] = &off_1F255B668;
  inited[6] = v9;
  inited[7] = &off_1F2559308;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC66B4@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for ShaderScript(0);
  sub_1AFCCE8C8(0, &unk_1ED727FA0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptStateRestoration);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v7;
  inited[5] = &off_1F255B850;
  inited[6] = v9;
  inited[7] = &off_1F2559308;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC68F0@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for MetalFunctionScript(0);
  sub_1AFCCE8C8(0, &unk_1ED727FD0, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptStateRestoration);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v7;
  inited[5] = &off_1F255B5B0;
  inited[6] = v9;
  inited[7] = &off_1F2559308;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC6B2C@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for SimpleScript(0);
  sub_1AFCCE8C8(0, &unk_1ED727F90, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptStateRestoration);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v7;
  inited[5] = &off_1F255B788;
  inited[6] = v9;
  inited[7] = &off_1F2559308;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC6D68@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for GraphScript(0);
  sub_1AFCCE8C8(0, &unk_1ED727FB0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptStateRestoration);
  v9 = v8;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v7;
  inited[5] = &off_1F255B490;
  inited[6] = v9;
  inited[7] = &off_1F2559308;
  if (v13 > 0xF)
  {
    v32 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v32;
  }

  v15 = *(v10 + 20);
  v16 = *(v10 + 22);
  sub_1AF6EEA28(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C620;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  if (v16)
  {
    v32 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v32;
    v18 = v32[2];
  }

  else
  {
    v18 = 2;
  }

  v19 = *v4 + 41;
  v20 = *(*v4 + 24);
  v21 = *(*v4 + 26) >> 4;
  v22 = *(*v4 + 28);
  v23 = *(*v4 + 30) / 0x18u;
  v24 = *(v4 + 2);
  v25 = *(v4 + 12);
  v26 = v4[4];
  v27 = v4[2];
  v28 = *(v4 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a3 = v29;
  *(a3 + 8) = v24;
  *(a3 + 12) = v25;
  *(a3 + 13) = v33;
  *(a3 + 15) = v34;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 25) = v32;
  *(a3 + 28) = *(&v32 + 3);
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_1AFCC73D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t))
{
  if (!sub_1AF657F68(a8))
  {
    v17 = ecs_stack_allocator_allocate(*(a1 + 32), 8, 8);
    *v17 = a3;
    sub_1AF648EC4(a8, a10, v17, 1, 1, **(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues));
  }

  return a11(a5, a6, a7);
}

uint64_t sub_1AFCC74B8(void *a1, void *a2)
{
  v3 = v2;
  LOBYTE(v26) = 1;
  LOBYTE(v15) = 1;
  *v33 = 0;
  v33[4] = 0;
  *&v33[8] = 0;
  v33[16] = 1;
  *(&v34 + 5) = 0;
  BYTE13(v34) = 1;
  *(&v35 + 5) = 0;
  *(&v35 + 13) = 257;
  *&v36[5] = 260;
  v36[13] = 0;
  v37 = 0;
  *(v25 + 13) = *&v36[13];
  v25[0] = *v36;
  v23 = v34;
  v24 = v35;
  v22 = *&v33[3];
  v6 = qword_1EB63E310;
  sub_1AF6EEA28(0, &unk_1ED730B60, &type metadata for RenderVariantDescriptor, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  v8 = v7;
  *(v7 + 16) = xmmword_1AFE4C5F0;
  *(v7 + 32) = 1025;
  *(v7 + 40) = 115;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0;
  *(v7 + 104) = xmmword_1AFE72A70;
  *(v7 + 120) = 4;
  *(v7 + 128) = 3073;
  *(v7 + 136) = 115;
  *(v7 + 144) = 0u;
  *(v7 + 160) = 0u;
  *(v7 + 176) = 0u;
  *(v7 + 192) = 0;
  *(v7 + 200) = xmmword_1AFE72A70;
  *(v7 + 216) = 4;
  if (v6 >= 0x2540BE40ALL)
  {
    v9 = 5121;
  }

  else
  {
    v9 = 1029;
  }

  *(v7 + 224) = v9;
  *(v7 + 232) = 115;
  *(v7 + 256) = 0uLL;
  *(v7 + 272) = 0uLL;
  *(v7 + 240) = 0uLL;
  *(v7 + 288) = 0;
  *(v7 + 296) = 252;
  *(v7 + 304) = 253;
  *(v7 + 312) = 4;
  *(v7 + 320) = 1089;
  *(v7 + 328) = 81;
  *(v7 + 336) = 0uLL;
  *(v7 + 352) = 0uLL;
  *(v7 + 368) = 0uLL;
  *(v7 + 384) = 0;
  *(v7 + 392) = 252;
  *(v7 + 400) = 253;
  *(v7 + 408) = 1;
  *(v7 + 416) = 3137;
  *(v7 + 424) = 81;
  *(v7 + 448) = 0uLL;
  *(v7 + 464) = 0uLL;
  *(v7 + 432) = 0uLL;
  *(v7 + 480) = 0;
  *(v7 + 488) = 252;
  *(v7 + 496) = 253;
  *(v7 + 504) = 1;
  *(v7 + 512) = v9 | 0x40;
  *(v7 + 520) = 81;
  *(v7 + 528) = 0uLL;
  *(v7 + 544) = 0uLL;
  *(v7 + 560) = 0uLL;
  *(v7 + 576) = 0;
  *(v7 + 584) = 252;
  *(v7 + 592) = 253;
  *(v7 + 600) = 1;
  *(v7 + 608) = 1025;
  *(v7 + 616) = 81;
  *(v7 + 624) = 0uLL;
  *(v7 + 640) = 0uLL;
  *(v7 + 656) = 0uLL;
  *(v7 + 672) = 0;
  *(v7 + 680) = 252;
  *(v7 + 688) = 253;
  *(v7 + 696) = 4;
  *(v7 + 704) = 3073;
  *(v7 + 712) = 81;
  *(v7 + 768) = 0;
  *(v7 + 736) = 0uLL;
  *(v7 + 752) = 0uLL;
  *(v7 + 720) = 0uLL;
  *(v7 + 776) = 252;
  *(v7 + 784) = 253;
  *(v7 + 792) = 4;
  sub_1AF70D13C(v33);
  v10 = CFXGPUDeviceCreate(a1);
  v26 = 257;
  v27 = 0;
  v29 = v23;
  v30 = v24;
  *v31 = v25[0];
  v28 = v22;
  *&v31[13] = *(v25 + 13);
  v32 = v8;
  type metadata accessor for Renderer();
  swift_allocObject();
  sub_1AF70D104(&v26, &v15);
  swift_unknownObjectRetain();
  v11 = sub_1AF70A2F4(v10, a2, &v26, 0);
  sub_1AF719C8C();

  sub_1AFCF7B30(v12, v11);

  v13 = *(*(v3 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + 184);

  sub_1AF6D2D90(&type metadata for RERendererConfiguration, &off_1F252F638, v13);

  v15 = 257;
  v16 = 0;
  v18 = v23;
  v19 = v24;
  *v20 = v25[0];
  v17 = v22;
  *&v20[13] = *(v25 + 13);
  v21 = v8;
  sub_1AF70D13C(&v15);
  return v11;
}

unint64_t BindingCopyAction.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1AFCC7834@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void *sub_1AFCC7A3C()
{
  v1 = *(v0 + OBJC_IVAR___VFXREScene_effect);
  v2 = v1;
  return v1;
}

uint64_t sub_1AFCC7D18()
{
  v1 = *(v0 + OBJC_IVAR___VFXREScene_reloadBlock);
  sub_1AF0FBD8C(v1);
  return v1;
}

uint64_t sub_1AFCC7DE0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___VFXREScene_reloadBlock);
  v4 = *(v2 + OBJC_IVAR___VFXREScene_reloadBlock);
  *v3 = a1;
  v3[1] = a2;
  return sub_1AF0FB8EC(v4);
}

uint64_t sub_1AFCC7E00@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___VFXREScene_reloadBlock);
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1AF464154;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1AF0FBD8C(v4);
}

uint64_t sub_1AFCC7E90(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1AFCCE68C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___VFXREScene_reloadBlock);
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1AF0FBD8C(v3);

  return sub_1AF0FB8EC(v8);
}

uint64_t sub_1AFCC7F58(char *a1, void *a2)
{
  v3 = v2;
  v48 = OBJC_IVAR___VFXREScene_scene;
  v6 = *(v3 + OBJC_IVAR___VFXREScene_scene);
  v7 = swift_unknownObjectRetain();
  v8 = sub_1AFCC74B8(v7, a2);
  v10 = v9;
  v11 = *&v6[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
  v12 = OBJC_IVAR___VFXREScene_scene;
  v13 = *(*&a1[OBJC_IVAR___VFXREScene_scene] + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v14 = *(v13 + 32);
  *(v11 + 24) = *(v13 + 24);
  *(v11 + 32) = v14;

  v15 = [*&a1[v12] peerPid];
  *(v11 + OBJC_IVAR____TtC3VFX13EntityManager_peerPid) = v15;
  v16 = [*&a1[v12] peerTaskIdentity];
  *(v11 + OBJC_IVAR____TtC3VFX13EntityManager_peerTaskIdentity) = v16;
  v17 = v6;
  v18 = a1;

  v19 = sub_1AF676B84(v11, v17, v18, v8, v10);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  swift_unknownObjectRelease();

  if ((v18[OBJC_IVAR___VFXREScene_rootEntity + 8] & 1) == 0)
  {
    if (*(v21 + 16) && (v26 = sub_1AF449D3C(*&v18[OBJC_IVAR___VFXREScene_rootEntity]), (v27 & 1) != 0))
    {
      v28 = (*(v21 + 56) + 8 * v26);
      v29 = *v28;
      v30 = v28[1] << 32;
    }

    else
    {
      v30 = 0;
      v29 = 0xFFFFFFFFLL;
    }

    v31 = v30 | v29;
    v32 = v3 + OBJC_IVAR___VFXREScene_rootEntity;
    *v32 = v31;
    *(v32 + 8) = 0;
  }

  if ((v18[OBJC_IVAR___VFXREScene_cameraEntity + 8] & 1) == 0)
  {
    if (*(v21 + 16) && (v33 = sub_1AF449D3C(*&v18[OBJC_IVAR___VFXREScene_cameraEntity]), (v34 & 1) != 0))
    {
      v35 = (*(v21 + 56) + 8 * v33);
      v36 = *v35;
      v37 = v35[1] << 32;
    }

    else
    {
      v37 = 0;
      v36 = 0xFFFFFFFFLL;
    }

    v38 = v37 | v36;
    v39 = v3 + OBJC_IVAR___VFXREScene_cameraEntity;
    *v39 = v38;
    *(v39 + 8) = 0;
  }

  v40 = *&v18[OBJC_IVAR___VFXREScene_effect];
  if (v40)
  {
    v41 = *(v3 + v48);
    v49 = *&v40[OBJC_IVAR____TtC3VFX9VFXEffect_name];
    v50 = *&v40[OBJC_IVAR____TtC3VFX9VFXEffect_name + 8];
    v42 = v40;
    v43 = v41;

    MEMORY[0x1B2718AE0](0x796461655245522DLL, 0xE800000000000000);
    v44 = objc_allocWithZone(type metadata accessor for VFXEffect());
    v45 = sub_1AFC7D640(v43, v19, v49, v50);

    v46 = *(v3 + OBJC_IVAR___VFXREScene_effect);
    *(v3 + OBJC_IVAR___VFXREScene_effect) = v45;
  }

  *(v3 + OBJC_IVAR___VFXREScene_remappingTable) = v21;

  *(v3 + OBJC_IVAR___VFXREScene_renderer) = v23;

  *(v3 + OBJC_IVAR___VFXREScene_renderOutput) = v25;
}

id (*sub_1AFCC8388(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR___VFXREScene_scene;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = [*(v1 + v2) peerPid];
  return sub_1AFCC83E4;
}

id (*sub_1AFCC8454(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR___VFXREScene_scene;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = [*(v1 + v2) peerTaskIdentity];
  return sub_1AFCC84B0;
}

pthread_mutex_t *sub_1AFCC854C()
{
  v1 = v0;

  v3 = sub_1AF6771B8(v2, v1);

  return v3;
}

double sub_1AFCC867C()
{
  v1 = v0;

  sub_1AF6774C8(v2, v1);
  v4 = v3;

  return v4;
}

float32x4_t sub_1AFCC871C@<Q0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR___VFXREScene_scene);
  v4 = *(*&v3[OBJC_IVAR____TtC3VFX8VFXScene_entityManager] + 184);
  v5 = v3;

  os_unfair_recursive_lock_lock_with_options();
  v6 = sub_1AF6D2A6C(&type metadata for SceneWorldAABB);
  if (v7 == 2 || (v7 & 1) == 0)
  {
    os_unfair_recursive_lock_unlock();

    *v11.i64 = sub_1AF6DE28C();
    v14 = v12;
    v15 = v11;
  }

  else
  {
    v9 = (*(v4 + 16) + v6);
    v10 = 32 * v8;
    os_unfair_lock_lock(*(*(v4 + 32) + 32 * v8 + 24));
    os_unfair_recursive_lock_unlock();
    v14 = v9[1];
    v15 = *v9;
    os_unfair_lock_unlock(*(*(v4 + 32) + v10 + 24));
  }

  result = vsubq_f32(v15, v14);
  *a2 = result;
  a2[1] = vaddq_f32(v15, v14);
  return result;
}

void sub_1AFCC8838(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR___VFXREScene_scene;
  v4 = **(*(*(a1 + OBJC_IVAR___VFXREScene_scene) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  v5 = OBJC_IVAR___VFXREScene_effect;
  v6 = *(a1 + OBJC_IVAR___VFXREScene_effect);
  if (v6)
  {
    v7 = (v6 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID);
    v8 = *(v7 + 4);
    if (v8 == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = *v7;
      LOBYTE(v8) = v6 == 0;
    }
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  LOBYTE(v125) = v8;
  v9 = sub_1AFD04D04(v6 | (v8 << 32), v4);
  v138 = v1;
  v10 = v2 + OBJC_IVAR___VFXREScene_rootEntity;
  *v10 = v9;
  *(v10 + 8) = 0;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v132 = qword_1ED73B840;
  v133 = 0;
  v134 = 2;
  v135 = 0;
  v136 = 2;
  v137 = 0;
  sub_1AF705280(1, v73);
  v11 = v3;
  v12 = *(v2 + v5);
  if (v12 && (v13 = (v12 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID), (v13[1] & 1) == 0))
  {
    v14 = *v13;
    v15 = (*v13 == 0) << 33;
  }

  else
  {
    v14 = 0;
    v15 = 0x200000000;
  }

  v123[0] = v73[0];
  v123[1] = v73[1];
  v124 = v74;

  sub_1AF6B06C0(v16, v123, v15 | v14, &v75);

  v17 = v75;
  if (!v75)
  {
    v18 = 0;
    v19 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    goto LABEL_17;
  }

  v18 = *(&v75 + 1);
  v19 = v76;
  v110 = v75;
  v111 = v76;
  v70 = v78;
  v71 = v77;
  v112 = v77;
  v113 = v78;
  v68 = v80;
  v69 = v79;
  v114 = v79;
  v115 = v80;
  v66 = v82;
  v67 = v81;
  v116 = v81;
  v117 = v82;
  v64 = v85;
  v65 = v83;
  v118 = v83;
  v119 = v84;
  v120 = v85;
  if (!v84)
  {
LABEL_17:
    v25 = **(*(*(v2 + v11) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    v26 = *(v2 + v5);
    if (v26)
    {
      v27 = (v26 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID);
      v28 = *(v27 + 4);
      if (v28 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v27;
        LOBYTE(v28) = v26 == 0;
      }
    }

    else
    {
      LOBYTE(v28) = 1;
    }

    LOBYTE(v125) = v28;
    v36 = v138;
    v37 = sub_1AFD051BC(v26 | (v28 << 32), v25);
    v138 = v36;
    v30 = 0;
    v38 = v2 + OBJC_IVAR___VFXREScene_cameraEntity;
    *v38 = v37;
    *(v38 + 8) = 0;
    v72[0] = v17;
LABEL_38:
    v72[1] = v18;
    v72[2] = v19;
    v72[3] = v71;
    v72[4] = v70;
    v72[5] = v69;
    v72[6] = v68;
    v72[7] = v67;
    v72[8] = v66;
    v72[9] = v65;
    v72[10] = v30;
    v72[11] = v64;
    if (*(v10 + 8))
    {
      sub_1AFCCE694(v72, sub_1AFCCE6F4);
      sub_1AFCCE778(v73, &unk_1EB643E30, &type metadata for PointOfView, &off_1F2511E50);
      return;
    }

    v39 = *v10;
    sub_1AF703320(1, v86);
    sub_1AF5C52A8();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1AFE4C620;
    *(v40 + 32) = &type metadata for Parent;
    *(v40 + 40) = &off_1F2529C18;
    *(v40 + 48) = &type metadata for PointOfView;
    *(v40 + 56) = &off_1F2511DD0;
    sub_1AF5D1EC0(v40, v87);
    sub_1AFCCE778(v86, &unk_1ED723DA0, &type metadata for WorldTransform, &off_1F2529FC0);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v121[0] = v87[0];
    v121[1] = v87[1];
    v122 = v88;

    sub_1AF6B06C0(v41, v121, 0x200000000, &v89);

    if (v89)
    {
      v106 = v92;
      v107 = v93;
      v108 = v94;
      v103 = v89;
      v109 = v95;
      v104 = v90;
      v105 = v91;
      sub_1AF6B9944();
      sub_1AFCCD850(&v89, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v42 = HIDWORD(v39);

    sub_1AF6B06C0(v43, v121, 0x200000000, &v96);

    if (v96)
    {
      v128 = v99;
      v129 = v100;
      v130 = v101;
      v126 = v97;
      v127 = v98;
      v131 = v102;
      v125 = v96;
      v44 = v138;
      sub_1AFD07CD4(&v125, v39);
      v45 = v44;
      sub_1AFCCD850(&v96, &qword_1ED725EA0, &type metadata for QueryResult);
      if (v42)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v45 = v138;
      if (v42)
      {
        goto LABEL_48;
      }
    }

    if (v39 == -1)
    {

      goto LABEL_56;
    }

LABEL_48:

    MEMORY[0x1EEE9AC00](v46, v47);

    sub_1AFC75668(0, sub_1AFCCE83C);

    swift_bridgeObjectRelease_n();
    v48 = *(*(v2 + v11) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
    if ((v39 & 0x80000000) == 0 && v39 < *(v48 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v49 = (*(v48 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v39);
      if (v42 == 0xFFFFFFFF || v49[2] == HIDWORD(v39))
      {
        v22 = *(v49 + 2);
        v2 = *(*(v48 + 144) + 8 * *v49 + 32);
        if (*(v2 + 232) <= v22 && *(v2 + 240) > v22)
        {
          v50 = **(v48 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          v51 = *(v2 + 344);

          os_unfair_lock_lock(v51);
          ecs_stack_allocator_push_snapshot(*(v50 + 32));

          sub_1AF682880(v50, v2, v22, &type metadata for WorldTransform, &off_1F2529FC0, v48);
          if (!v45)
          {

            ecs_stack_allocator_pop_snapshot(*(v50 + 32));
            os_unfair_lock_unlock(*(v2 + 344));

LABEL_57:
            sub_1AFCCE694(v72, sub_1AFCCE6F4);
            sub_1AFCCE778(v73, &unk_1EB643E30, &type metadata for PointOfView, &off_1F2511E50);

            sub_1AFCCE778(v87, &unk_1ED723DA0, &type metadata for WorldTransform, &off_1F2529FC0);
            return;
          }

          goto LABEL_67;
        }
      }
    }

LABEL_56:

    goto LABEL_57;
  }

  v60 = v84;
  v62 = v76;
  v63 = *(&v75 + 1);
  sub_1AF6BA358(0);
  v21 = v20;
  sub_1AF5D15C0(&v75, &v125);

  v22 = sub_1AF6496EC(v21);

  sub_1AFCCD850(&v75, &qword_1ED725EA0, &type metadata for QueryResult);
  v23 = v2 + OBJC_IVAR___VFXREScene_cameraEntity;
  *v23 = v22;
  *(v23 + 8) = 0;
  if (sub_1AF67CACC(&type metadata for ProjectionMatrix, &off_1F2511D20, v22))
  {
    v24 = HIDWORD(v22);
LABEL_23:
    v30 = v60;
    goto LABEL_24;
  }

  v29 = *(*(v2 + v11) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v24 = HIDWORD(v22);
  if (!HIDWORD(v22) && v22 == -1 || (v22 & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  v30 = v60;
  if (v22 < *(v29 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v52 = (*(v29 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v22);
    if (v24 == 0xFFFFFFFF || v52[2] == HIDWORD(v22))
    {
      v53 = *(v52 + 2);
      v54 = *(*(v29 + 144) + 8 * *v52 + 32);
      if (v54[29] <= v53 && v54[30] > v53)
      {
        v58 = **(v29 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        v59 = *(*(v29 + 144) + 8 * *v52 + 32);
        v55 = v54[43];
        v57 = *(v52 + 2);

        os_unfair_lock_lock(v55);
        ecs_stack_allocator_push_snapshot(*(v58 + 32));

        v56 = v138;
        sub_1AF682880(v58, v59, v57, &type metadata for ProjectionMatrix, &off_1F2511DA0, v29);
        v138 = v56;
        if (v56)
        {

          os_unfair_lock_unlock(*(v59 + 344));
          __break(1u);
LABEL_67:

          os_unfair_lock_unlock(*(v2 + 344));
          __break(1u);
          goto LABEL_68;
        }

        ecs_stack_allocator_pop_snapshot(*(v58 + 32));
        os_unfair_lock_unlock(*(v59 + 344));
      }
    }
  }

LABEL_24:
  if (sub_1AF67CACC(&type metadata for WorldTransform, &off_1F2529AF8, v22))
  {
    goto LABEL_35;
  }

  v31 = *(*(v2 + v11) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  if (!v24 && v22 == -1)
  {
    goto LABEL_35;
  }

  if ((v22 & 0x80000000) != 0)
  {
    goto LABEL_35;
  }

  if (v22 >= *(v31 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    goto LABEL_35;
  }

  v32 = (*(v31 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v22);
  if (v24 != 0xFFFFFFFF && v32[2] != v24)
  {
    goto LABEL_35;
  }

  v33 = *(v32 + 2);
  v22 = *(*(v31 + 144) + 8 * *v32 + 32);
  if (*(v22 + 232) > v33 || *(v22 + 240) <= v33)
  {
    goto LABEL_35;
  }

  v61 = **(v31 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  v34 = *(v22 + 344);

  os_unfair_lock_lock(v34);
  ecs_stack_allocator_push_snapshot(*(v61 + 32));

  v35 = v138;
  sub_1AF682880(v61, v22, v33, &type metadata for WorldTransform, &off_1F2529FC0, v31);
  v138 = v35;
  if (!v35)
  {

    ecs_stack_allocator_pop_snapshot(*(v61 + 32));
    os_unfair_lock_unlock(*(v22 + 344));

LABEL_35:
    v72[0] = v17;
    v19 = v62;
    v18 = v63;
    goto LABEL_38;
  }

LABEL_68:

  os_unfair_lock_unlock(*(v22 + 344));
  __break(1u);
}

char *VFXREScene.init(contentsOf:commandQueue:options:)(uint64_t a1, void *a2, _BYTE *a3)
{
  v55 = a1;
  v4 = v3;
  v7 = sub_1AFDFC318();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR___VFXREScene_effect] = 0;
  *&v4[OBJC_IVAR___VFXREScene_transientDrawCall] = 0;
  v12 = &v4[OBJC_IVAR___VFXREScene_rootEntity];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v4[OBJC_IVAR___VFXREScene_cameraEntity];
  *v13 = 0;
  v13[8] = 1;
  v14 = OBJC_IVAR___VFXREScene_device;
  *&v4[OBJC_IVAR___VFXREScene_device] = 0;
  *&v4[OBJC_IVAR___VFXREScene_cancellables] = MEMORY[0x1E69E7CD0];
  v4[OBJC_IVAR___VFXREScene_isPrepared] = 0;
  v15 = OBJC_IVAR___VFXREScene_uuid;
  sub_1AFDFC308();
  v16 = sub_1AFDFC2F8();
  (*(v8 + 8))(v11, v7);
  *&v4[v15] = v16;
  v17 = &v4[OBJC_IVAR___VFXREScene_worldFromScene];
  *v17 = xmmword_1AFE20150;
  v17[1] = xmmword_1AFE20160;
  v17[2] = xmmword_1AFE20180;
  v17[3] = xmmword_1AFE201A0;
  v18 = &v4[OBJC_IVAR___VFXREScene_sceneFromWorld];
  *v18 = xmmword_1AFE20150;
  v18[1] = xmmword_1AFE20160;
  v18[2] = xmmword_1AFE20180;
  v18[3] = xmmword_1AFE201A0;
  *&v4[OBJC_IVAR___VFXREScene_sceneScale] = 1065353216;
  v19 = &v4[OBJC_IVAR___VFXREScene_reloadBlock];
  *v19 = 0;
  v19[1] = 0;
  *&v4[OBJC_IVAR___VFXREScene_remappingTable] = 0;
  *&v4[OBJC_IVAR___VFXREScene_renderOutput] = 0;
  *&v4[OBJC_IVAR___VFXREScene_renderer] = 0;
  v20 = &v4[OBJC_IVAR___VFXREScene_externalDrawCallQuery];
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v59 = qword_1ED73B840;
  v60 = 0;
  v61 = 2;
  v62 = 0;
  v63 = 2;
  v64 = 0;
  sub_1AFCC3768(1, 1, &type metadata for VFXDrawCallHandler, &off_1F253A0F0, &type metadata for WorldAABB, &off_1F2510390, v57);
  v21 = v57[1];
  *v20 = v57[0];
  *(v20 + 1) = v21;
  *(v20 + 4) = v58;
  if (a2)
  {
    *&v4[v14] = [a2 device];
    swift_unknownObjectRelease();
  }

  else
  {
    *&v4[v14] = 0;
    swift_unknownObjectRelease();
    a3[OBJC_IVAR___VFXSceneLoadOptions_setupRenderer] = 0;
    a3[OBJC_IVAR___VFXSceneLoadOptions_automaticallyPrepareScene] = 0;
  }

  v22 = v55;
  v23 = a3[OBJC_IVAR___VFXSceneLoadOptions_automaticallyPrepareScene];
  a3[OBJC_IVAR___VFXSceneLoadOptions_automaticallyPrepareScene] = 0;
  *&a3[OBJC_IVAR___VFXSceneLoadOptions_systemRegistrationOptions] = 1073775625;
  a3[OBJC_IVAR___VFXSceneLoadOptions_loadPrecompiledScripts] = a3[OBJC_IVAR___VFXSceneLoadOptions_setupRenderer];
  v24 = objc_allocWithZone(type metadata accessor for VFXScene(0));
  v25 = a3;
  v26 = VFXScene.init(options:)(v25);
  v26[OBJC_IVAR____TtC3VFX8VFXScene_isInsideRE] = 1;
  *&v4[OBJC_IVAR___VFXREScene_scene] = v26;
  v26[OBJC_IVAR____TtC3VFX8VFXScene_isREAssetScene] = 1;
  v27 = type metadata accessor for VFXREScene();
  v56.receiver = v4;
  v56.super_class = v27;
  v28 = objc_msgSendSuper2(&v56, sel_init);
  v29 = OBJC_IVAR___VFXREScene_scene;
  v30 = *&v28[OBJC_IVAR___VFXREScene_scene];
  v31 = v54;
  sub_1AFCD4E08(v22);
  if (v31)
  {

    swift_unknownObjectRelease();
    v33 = sub_1AFDFC128();
    (*(*(v33 - 8) + 8))(v22, v33);
  }

  else
  {
    v35 = v32;
    LODWORD(v54) = v23;

    v36 = OBJC_IVAR___VFXREScene_effect;
    v37 = *&v28[OBJC_IVAR___VFXREScene_effect];
    *&v28[OBJC_IVAR___VFXREScene_effect] = v35;

    v65 = *(*&v28[v36] + OBJC_IVAR____TtC3VFX9VFXEffect_onEffectRestartSubject);
    v38 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1AFCCD78C;
    *(v39 + 24) = v38;
    sub_1AFCCD794();
    sub_1AFCCD7F8();

    sub_1AFDFC6B8();

    sub_1AFDFC5D8();

    v40 = v28;

    sub_1AF665264(v41, v40);

    if (a2)
    {
      v42 = [a2 device];
      if (v54)
      {
        v43 = *&v28[v29];
        v44 = sub_1AFCC74B8(v42, a2);
        v54 = v42;
        v46 = v45;

        v47 = OBJC_IVAR___VFXREScene_renderer;
        *&v40[OBJC_IVAR___VFXREScene_renderer] = v44;

        *&v40[OBJC_IVAR___VFXREScene_renderOutput] = v46;

        *(*&v28[v29] + OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer) = *&v40[v47];

        v48 = *&v28[v29];
        v49 = *&v48[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
        v50 = v48;
        sub_1AF6652B8(v49, v50);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        v51 = sub_1AFDFC128();
        (*(*(v51 - 8) + 8))(v55, v51);

        v40[OBJC_IVAR___VFXREScene_isPrepared] = 1;
      }

      else
      {
        v53 = sub_1AFDFC128();
        (*(*(v53 - 8) + 8))(v55, v53);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v52 = sub_1AFDFC128();
      (*(*(v52 - 8) + 8))(v55, v52);
    }
  }

  return v28;
}

void sub_1AFCC9B3C()
{
  v0 = sub_1AFDFC318();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_1AFDFC308();
  v6 = sub_1AFDFC2F8();
  (*(v1 + 8))(v4, v0);
  *&Strong[OBJC_IVAR___VFXREScene_uuid] = v6;

  v7 = swift_unknownObjectUnownedLoadStrong();

  sub_1AF665264(v8, v7);

  v9 = swift_unknownObjectUnownedLoadStrong();
  v10 = *&v9[OBJC_IVAR___VFXREScene_reloadBlock];
  sub_1AF0FBD8C(v10);

  if (v10)
  {
    v10();
    sub_1AF0FB8EC(v10);
  }
}

id VFXREScene.init(commandQueue:model:options:)(void *a1, char *a2, _BYTE *a3)
{
  v4 = v3;
  v8 = sub_1AFDFC318();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR___VFXREScene_effect] = 0;
  *&v4[OBJC_IVAR___VFXREScene_transientDrawCall] = 0;
  v13 = &v4[OBJC_IVAR___VFXREScene_rootEntity];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v4[OBJC_IVAR___VFXREScene_cameraEntity];
  *v14 = 0;
  v14[8] = 1;
  v15 = OBJC_IVAR___VFXREScene_device;
  *&v4[OBJC_IVAR___VFXREScene_device] = 0;
  *&v4[OBJC_IVAR___VFXREScene_cancellables] = MEMORY[0x1E69E7CD0];
  v4[OBJC_IVAR___VFXREScene_isPrepared] = 0;
  v16 = OBJC_IVAR___VFXREScene_uuid;
  sub_1AFDFC308();
  v17 = sub_1AFDFC2F8();
  (*(v9 + 8))(v12, v8);
  *&v4[v16] = v17;
  v18 = &v4[OBJC_IVAR___VFXREScene_worldFromScene];
  *v18 = xmmword_1AFE20150;
  v18[1] = xmmword_1AFE20160;
  v18[2] = xmmword_1AFE20180;
  v18[3] = xmmword_1AFE201A0;
  v19 = &v4[OBJC_IVAR___VFXREScene_sceneFromWorld];
  *v19 = xmmword_1AFE20150;
  v19[1] = xmmword_1AFE20160;
  v19[2] = xmmword_1AFE20180;
  v19[3] = xmmword_1AFE201A0;
  *&v4[OBJC_IVAR___VFXREScene_sceneScale] = 1065353216;
  v20 = &v4[OBJC_IVAR___VFXREScene_reloadBlock];
  *v20 = 0;
  v20[1] = 0;
  *&v4[OBJC_IVAR___VFXREScene_remappingTable] = 0;
  *&v4[OBJC_IVAR___VFXREScene_renderOutput] = 0;
  *&v4[OBJC_IVAR___VFXREScene_renderer] = 0;
  v21 = OBJC_IVAR___VFXREScene_externalDrawCallQuery;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v22 = &v4[v21];
  v33 = qword_1ED73B840;
  v34 = 0;
  v35 = 2;
  v36 = 0;
  v37 = 2;
  v38 = 0;
  sub_1AFCC3768(1, 1, &type metadata for VFXDrawCallHandler, &off_1F253A0F0, &type metadata for WorldAABB, &off_1F2510390, v31);
  v23 = v31[1];
  *v22 = v31[0];
  *(v22 + 1) = v23;
  *(v22 + 4) = v32;
  *&v4[v15] = [a1 device];
  swift_unknownObjectRelease();
  a3[OBJC_IVAR___VFXSceneLoadOptions_automaticallyPrepareScene] = 0;
  *&a3[OBJC_IVAR___VFXSceneLoadOptions_systemRegistrationOptions] = 1073775625;
  a3[OBJC_IVAR___VFXSceneLoadOptions_loadPrecompiledScripts] = a3[OBJC_IVAR___VFXSceneLoadOptions_setupRenderer];
  v24 = objc_allocWithZone(type metadata accessor for VFXScene(0));
  v25 = a3;
  v26 = VFXScene.init(options:)(v25);
  v26[OBJC_IVAR____TtC3VFX8VFXScene_isInsideRE] = 1;
  *&v4[OBJC_IVAR___VFXREScene_scene] = v26;
  v27 = type metadata accessor for VFXREScene();
  v30.receiver = v4;
  v30.super_class = v27;
  v28 = objc_msgSendSuper2(&v30, sel_init);
  swift_unknownObjectRetain();
  sub_1AFCC7F58(a2, a1);

  swift_unknownObjectRelease_n();
  return v28;
}

uint64_t sub_1AFCCA2D4()
{
  v1 = (v0 + OBJC_IVAR___VFXREScene_worldFromScene);
  *v1 = xmmword_1AFE20150;
  v1[1] = xmmword_1AFE20160;
  v1[2] = xmmword_1AFE20180;
  v1[3] = xmmword_1AFE201A0;
  v2 = (v0 + OBJC_IVAR___VFXREScene_sceneFromWorld);
  *v2 = xmmword_1AFE20150;
  v2[1] = xmmword_1AFE20160;
  v2[2] = xmmword_1AFE20180;
  v2[3] = xmmword_1AFE201A0;
  *(v0 + OBJC_IVAR___VFXREScene_sceneScale) = 1065353216;

  sub_1AF65C5D4(15);
}

uint64_t sub_1AFCCA3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v15 = v7;

  sub_1AF665518(v16, v15, a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1AFCCA4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v63 = a8;
  v64 = a7;
  v14 = OBJC_IVAR___VFXREScene_scene;
  v15 = *(a1 + OBJC_IVAR___VFXREScene_scene);
  v16 = sub_1AFC7E36C(a2, a3, a4, a5, 0x200000000);

  if (v16)
  {
    if ([v16 type] == 23)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      sub_1AFDFE218();

      *(&v67[0] + 1) = 0x80000001AFF4D320;
      v17 = [v16 bindingName];
      v18 = sub_1AFDFCEF8();
      v20 = v19;

      MEMORY[0x1B2718AE0](v18, v20);

      MEMORY[0x1B2718AE0](544108320, 0xE400000000000000);
      v21 = [v16 objectName];
      v22 = sub_1AFDFCEF8();
      v24 = v23;

      MEMORY[0x1B2718AE0](v22, v24);

      MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF4D340);
      v25 = sub_1AFDFDA08();
      *&v67[0] = 1;
      sub_1AF75A4B4(v25, 0xD000000000000015, 0x80000001AFF4D320, v67);
      swift_unknownObjectRelease();
    }

    if (a6)
    {
      if (a6 != 1)
      {
        result = sub_1AFDFF138();
        __break(1u);
        return result;
      }

      v42 = v16;
      v43 = *(a1 + v14);
      v44 = v42;
      v45 = [v42 objectName];
      v46 = sub_1AFDFCEF8();
      v48 = v47;

      v49 = [v44 bindingName];
      v50 = sub_1AFDFCEF8();
      v52 = v51;

      v53 = *&v43[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

      sub_1AF66C6B4(v53, v53, v46, v48, 0x200000000, v50, v52, &v65);

      if (v66)
      {
        sub_1AF449D40(&v65, v67);
        v54 = sub_1AFC4BE64(v67, [v44 type]);
        v55 = v64(v54);
        sub_1AFC4C1DC(v67, v55, [v44 type]);
        swift_unknownObjectRelease();
        return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v67);
      }
    }

    else
    {
      v28 = v64(0);
      sub_1AFC4C7A8(v28, [v16 type], &v65);
      if (v66)
      {
        sub_1AF449D40(&v65, v67);
        v29 = *(a1 + v14);
        v30 = v16;
        v31 = [v16 objectName];
        v32 = sub_1AFDFCEF8();
        v34 = v33;

        v35 = [v30 bindingName];
        v36 = sub_1AFDFCEF8();
        v38 = v37;

        v39 = *&v29[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
        MEMORY[0x1EEE9AC00](v40, v41);
        v57[2] = v39;
        v57[3] = v32;
        v57[4] = v34;
        v58 = 0;
        v59 = 2;
        v60 = v36;
        v61 = v38;
        v62 = v67;
        sub_1AFC7BD74(sub_1AFC87ED4, v57);

        swift_unknownObjectRelease();
        return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v67);
      }
    }

    swift_unknownObjectRelease();
    return sub_1AFCCD850(&v65, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  sub_1AFDFE218();

  *(&v67[0] + 1) = 0x80000001AFF4D2F0;
  MEMORY[0x1B2718AE0](a2, a3);
  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  MEMORY[0x1B2718AE0](a4, a5);
  MEMORY[0x1B2718AE0](0x662079706F63202CLL, 0xED000064656C6961);
  v27 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v56 = v27;
    swift_once();
    v27 = v56;
  }

  *&v67[0] = 0;
  sub_1AF0D4F18(v27, v67, 0xD000000000000020, 0x80000001AFF4D2F0);
}

uint64_t sub_1AFCCAC48()
{
  v1 = v0;

  sub_1AF66591C(v2, v1);
}

void sub_1AFCCACC0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___VFXREScene_renderer);
  if (v2)
  {
    v4 = v1;
    v5 = v2[31];

    CFXBufferAllocatorPerFrameNextFrame(v5);
    CFXBufferAllocatorPerFrameNextFrame(v2[29]);
    v6 = v2[7];
    if (v6)
    {
      sub_1AFDEB254(v6);
    }

    v7 = *(*(a1 + OBJC_IVAR___VFXREScene_scene) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);

    v8 = objc_autoreleasePoolPush();
    sub_1AF6F7DDC(v7, v2);
    if (v4)
    {
      objc_autoreleasePoolPop(v8);
      __break(1u);
    }

    else
    {
      objc_autoreleasePoolPop(v8);
    }
  }
}

uint64_t sub_1AFCCAE10(uint64_t a1)
{
  v3 = v1;
  swift_unknownObjectRetain();

  sub_1AF665970(v4, v3, a1);
}

void sub_1AFCCAE98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR___VFXREScene_renderOutput;
  v6 = *(a1 + OBJC_IVAR___VFXREScene_renderOutput);
  if (v6)
  {
    *(v6 + 136) = a2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  v7 = *(a1 + OBJC_IVAR___VFXREScene_renderer);
  if (v7)
  {
    v8 = v7[31];

    CFXBufferAllocatorPerFrameNextFrame(v8);
    CFXBufferAllocatorPerFrameNextFrame(v7[29]);
    v9 = v7[7];
    if (v9)
    {
      sub_1AFDEB254(v9);
    }

    v10 = *(*(a1 + OBJC_IVAR___VFXREScene_scene) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);

    v11 = objc_autoreleasePoolPush();
    sub_1AF6F7DDC(v10, v7);
    if (v3)
    {
      objc_autoreleasePoolPop(v11);
      __break(1u);
      return;
    }

    objc_autoreleasePoolPop(v11);
  }

  v12 = *(a1 + v5);
  if (v12)
  {
    *(v12 + 136) = 0;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1AFCCB04C(double a1)
{
  v3 = v1;

  sub_1AF665BD4(v4, v3, a1);
}

uint64_t sub_1AFCCB164(uint64_t a1, double a2)
{
  v5 = v2;
  swift_unknownObjectRetain();

  sub_1AF665DD8(v6, v5, a1, a2);
}

uint64_t sub_1AFCCB36C(float32x4_t a1, float32x4_t a2, simd_float4 a3, double a4, float32x4_t a5)
{
  sub_1AFCCB920(a1, a2, a3, a4, a5);

  return sub_1AFCCB40C(a1, a2, a3, v5, v6);
}

uint64_t sub_1AFCCB40C(float32x4_t a1, float32x4_t a2, float32x4_t a3, double a4, float32x4_t a5)
{
  v6 = *&v5[OBJC_IVAR___VFXREScene_sceneScale];
  *a5.f32 = vmul_n_f32(*a1.f32, v6);
  a5.i32[2] = vmuls_lane_f32(v6, a1, 2);
  v7 = vabsq_f32(a5);
  v7.i32[3] = 0;
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v9 = vorrq_s8(vandq_s8(a5, v8), vabsq_f32(vmaxnmq_f32(v7, xmmword_1AFE20A30)));
  v10 = vmulq_f32(a2, a2);
  v11 = vmulq_laneq_f32(a2, a2, 3);
  v12 = vmuls_lane_f32(a2.f32[0], *a2.f32, 1);
  v13 = vmuls_lane_f32(a2.f32[1], a2, 2);
  v14 = vmuls_lane_f32(a2.f32[0], a2, 2);
  v15 = vaddq_f32(v9, v9);
  v16.i32[3] = 0;
  v16.f32[0] = (0.5 - v10.f32[1]) - v10.f32[2];
  v17.i32[3] = 0;
  v16.f32[1] = v12 + v11.f32[2];
  v16.f32[2] = v14 - v11.f32[1];
  v18 = vmulq_n_f32(v16, v15.f32[0]);
  v10.f32[0] = 0.5 - v10.f32[0];
  v19.i32[3] = 0;
  v19.f32[0] = v12 - v11.f32[2];
  v19.f32[1] = v10.f32[0] - v10.f32[2];
  v19.f32[2] = v13 + v11.f32[0];
  v20 = vmulq_lane_f32(v19, *v15.f32, 1);
  v17.f32[0] = v14 + v11.f32[1];
  v17.f32[1] = v13 - v11.f32[0];
  v17.f32[2] = v10.f32[0] - v10.f32[1];
  v21 = vmulq_laneq_f32(v17, v15, 2);
  v22 = *&v5[OBJC_IVAR___VFXREScene_sceneFromWorld];
  v23 = *&v5[OBJC_IVAR___VFXREScene_sceneFromWorld + 16];
  v24 = *&v5[OBJC_IVAR___VFXREScene_sceneFromWorld + 32];
  v25 = *&v5[OBJC_IVAR___VFXREScene_sceneFromWorld + 48];
  v32 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v18.f32[0]), v23, *v18.f32, 1), v24, v18, 2), v25, v18, 3);
  v30 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v21.f32[0]), v23, *v21.f32, 1), v24, v21, 2), v25, v21, 3);
  v31 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v20.f32[0]), v23, *v20.f32, 1), v24, v20, 2), v25, v20, 3);
  v29 = vaddq_f32(v25, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, a3.f32[0]), v23, *a3.f32, 1), v24, a3, 2));
  v26 = v5;

  sub_1AF6660DC(v27, v26, v32, v31, v30, v29);
}

uint64_t sub_1AFCCB5C0(uint64_t result, float32x4_t a2, float32x4_t a3, float32x4_t a4, __n128 a5)
{
  if ((*(result + OBJC_IVAR___VFXREScene_rootEntity + 8) & 1) == 0)
  {
    v5 = vmulq_f32(a2, a2);
    v6 = vmulq_f32(a3, a3);
    v7 = vmulq_f32(a4, a4);
    v8 = vtrn2q_s32(v5, v6);
    v8.i32[2] = v7.i32[1];
    v9 = vaddq_f32(vzip1q_s32(vzip2q_s32(v5, v7), vdupq_laneq_s32(v6, 2)), vaddq_f32(vzip1q_s32(vzip1q_s32(v5, v7), v6), v8));
    v10.i64[0] = 0x80000000800000;
    v10.i64[1] = 0x80000000800000;
    v11 = vcgeq_f32(v10, v9);
    v9.i32[3] = 0;
    v12 = vrsqrteq_f32(v9);
    v13 = vmulq_f32(v12, vrsqrtsq_f32(v9, vmulq_f32(v12, v12)));
    v14 = v11;
    v14.i32[3] = 0;
    v15 = vbslq_s8(vcltzq_s32(v14), v9, vmulq_f32(v13, vrsqrtsq_f32(v9, vmulq_f32(v13, v13))));
    v16 = vmulq_n_f32(a2, v15.f32[0]);
    v17 = vmulq_lane_f32(a3, *v15.f32, 1);
    v18 = vmulq_laneq_f32(a4, v15, 2);
    v19 = vuzp1q_s32(v18, v18);
    v20 = vuzp1q_s32(v17, v17);
    v21 = v16;
    if (v11.i32[0])
    {
      v22 = vmlaq_f32(vmulq_f32(vextq_s8(v19, v18, 0xCuLL), vnegq_f32(v17)), v18, vextq_s8(v20, v17, 0xCuLL));
      v21 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
    }

    v23 = vuzp1q_s32(v16, v16);
    v24 = v17;
    if (v11.i32[1])
    {
      v25 = vmlaq_f32(vmulq_f32(vextq_s8(v23, v16, 0xCuLL), vnegq_f32(v18)), v16, vextq_s8(v19, v18, 0xCuLL));
      v24 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
    }

    if (v11.i32[2])
    {
      v26 = vmlaq_f32(vmulq_f32(vextq_s8(v20, v17, 0xCuLL), vnegq_f32(v16)), v17, vextq_s8(v23, v16, 0xCuLL));
      v18 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
    }

    v27 = (*v21.i32 + *&v24.i32[1]) + v18.f32[2];
    if (v27 > 0.0)
    {
      v28 = sqrtf(v27 + 1.0);
      *v29.f32 = vsub_f32(*&vzip2q_s32(v24, vuzp1q_s32(v24, v18)), *&vtrn2q_s32(v18, vzip2q_s32(v18, v21)));
      v29.f32[2] = *&v21.i32[1] - *v24.i32;
      v29.f32[3] = v28 * v28;
      v30 = 0.5 / v28;
LABEL_10:
      v31 = vmulq_n_f32(v29, v30);
LABEL_19:
      v47 = v31;
      v39.n128_u64[0] = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL)), vadd_f32(vzip1_s32(*v5.i8, *v6.i8), vzip2_s32(*v5.i8, *v6.i8))));
      v39.n128_u64[1] = COERCE_UNSIGNED_INT(sqrtf(*&v7.i32[2] + vaddv_f32(*v7.i8)));
      v40 = OBJC_IVAR___VFXREScene_scene;
      v41 = *(result + OBJC_IVAR___VFXREScene_rootEntity);
      v42 = result;
      sub_1AF68B2F4(v41, *(*(result + OBJC_IVAR___VFXREScene_scene) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager), v39);
      sub_1AF68B2D8(v41, *(*(v42 + v40) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager), v47);
      return sub_1AF68B310(v41, *(*(v42 + v40) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager), a5);
    }

    if (*v21.i32 < *&v24.i32[1] || *v21.i32 < v18.f32[2])
    {
      if (*&v24.i32[1] <= v18.f32[2])
      {
        v43 = vzip2q_s32(v21, v24).u64[0];
        v44 = __PAIR64__(v21.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v18.f32[2] + 1.0) - *v21.i32) - *&v24.i32[1])));
        v45 = vdup_lane_s32(*v24.i8, 0);
        v46 = vsub_f32(*v21.i8, v45);
        v45.i32[0] = v44.i32[0];
        v45.i32[0] = vmul_f32(v44, v45).u32[0];
        v45.i32[1] = v46.i32[1];
        *v29.f32 = vadd_f32(v43, *v18.f32);
        *&v29.u32[2] = v45;
        v30 = 0.5 / v44.f32[0];
        goto LABEL_10;
      }

      v34 = sqrtf(((*&v24.i32[1] + 1.0) - *v21.i32) - v18.f32[2]);
      v38.f32[0] = *&v21.i32[1] + *v24.i32;
      v33 = vzip2q_s32(v21, v24).u64[0];
      v38.f32[1] = v34 * v34;
      *&v38.u32[2] = vext_s8(vadd_f32(*v18.f32, v33), vsub_f32(*v18.f32, v33), 4uLL);
    }

    else
    {
      v34 = sqrtf(((*v21.i32 + 1.0) - *&v24.i32[1]) - v18.f32[2]);
      v38.f32[0] = v34 * v34;
      v35 = *&v21.i32[1] + *v24.i32;
      v36 = vzip2q_s32(v21, v24).u64[0];
      LODWORD(v37) = vadd_f32(v36, *v18.f32).u32[0];
      HIDWORD(v37) = vsub_f32(v36, *&v18).i32[1];
      v38.f32[1] = v35;
      v38.i64[1] = v37;
    }

    v31 = vmulq_n_f32(v38, 0.5 / v34);
    goto LABEL_19;
  }

  return result;
}

void sub_1AFCCB920(float32x4_t a1, float32x4_t a2, simd_float4 a3, double a4, float32x4_t a5)
{
  v13.columns[3] = a3;
  v13.columns[2].i32[0] = *(v5 + OBJC_IVAR___VFXREScene_sceneScale);
  *a5.f32 = vmul_n_f32(*a1.f32, v13.columns[2].f32[0]);
  a5.i32[2] = vmuls_lane_f32(v13.columns[2].f32[0], a1, 2);
  v13.columns[3].i32[3] = 1.0;
  v13.columns[0] = vabsq_f32(a5);
  v13.columns[0].i32[3] = 0;
  v13.columns[2].i64[0] = 0x8000000080000000;
  v13.columns[2].i64[1] = 0x8000000080000000;
  v13.columns[0] = vorrq_s8(vandq_s8(a5, v13.columns[2]), vabsq_f32(vmaxnmq_f32(v13.columns[0], xmmword_1AFE20A30)));
  v13.columns[2] = vmulq_f32(a2, a2);
  v6 = vmulq_laneq_f32(a2, a2, 3);
  v7 = vmuls_lane_f32(a2.f32[0], *a2.f32, 1);
  v8 = vmuls_lane_f32(a2.f32[1], a2, 2);
  v13.columns[1].f32[0] = vmuls_lane_f32(a2.f32[0], a2, 2);
  v9 = vaddq_f32(v13.columns[0], v13.columns[0]);
  v10.i32[3] = 0;
  v10.f32[0] = (0.5 - v13.columns[2].f32[1]) - v13.columns[2].f32[2];
  v10.f32[1] = v7 + v6.f32[2];
  v11.i32[3] = 0;
  v10.f32[2] = v13.columns[1].f32[0] - v6.f32[1];
  v13.columns[0] = vmulq_n_f32(v10, v9.f32[0]);
  v13.columns[2].f32[0] = 0.5 - v13.columns[2].f32[0];
  v12.i32[3] = 0;
  v12.f32[0] = v7 - v6.f32[2];
  v12.f32[1] = v13.columns[2].f32[0] - v13.columns[2].f32[2];
  v12.f32[2] = v8 + v6.f32[0];
  v11.f32[0] = v13.columns[1].f32[0] + v6.f32[1];
  v11.f32[1] = v8 - v6.f32[0];
  v11.f32[2] = v13.columns[2].f32[0] - v13.columns[2].f32[1];
  v13.columns[1] = vmulq_lane_f32(v12, *v9.f32, 1);
  v13.columns[2] = vmulq_laneq_f32(v11, v9, 2);
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v13.columns[1], *(v5 + OBJC_IVAR___VFXREScene_worldFromScene + 16)), vceqq_f32(v13.columns[3], *(v5 + OBJC_IVAR___VFXREScene_worldFromScene + 48))), vandq_s8(vceqq_f32(v13.columns[0], *(v5 + OBJC_IVAR___VFXREScene_worldFromScene)), vceqq_f32(v13.columns[2], *(v5 + OBJC_IVAR___VFXREScene_worldFromScene + 32))))) & 0x80000000) == 0)
  {
    *(v5 + OBJC_IVAR___VFXREScene_worldFromScene) = v13;
    *(v5 + OBJC_IVAR___VFXREScene_sceneFromWorld) = __invert_f4(v13);
  }
}

void sub_1AFCCBA94(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  if ((v7[OBJC_IVAR___VFXREScene_cameraEntity + 8] & 1) == 0)
  {
    v8 = *&v7[OBJC_IVAR___VFXREScene_cameraEntity];
    v9 = v7;

    sub_1AF6662F4(v10, v9, v8, a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t sub_1AFCCBC1C(__n128 a1)
{
  v2 = v1;

  sub_1AF6669C4(v3, v2, a1);
}

uint64_t sub_1AFCCBD24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___VFXREScene_scene;
  ecs_stack_allocator_push_snapshot(*(**(*(*(v3 + OBJC_IVAR___VFXREScene_scene) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));

  v7 = sub_1AF9075D4(a1, a2, 0x200000000);

  v8 = *(*(v3 + v6) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  if (v7 == 0xFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  ecs_stack_allocator_pop_snapshot(*(**(v8 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));
  return v9;
}

uint64_t sub_1AFCCBE64(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___VFXREScene_scene;
  ecs_stack_allocator_push_snapshot(*(**(*(*(v3 + OBJC_IVAR___VFXREScene_scene) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));
  v7 = HIDWORD(a1);
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  v9 = *(*(v3 + v6) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v17 = a2;
  if ((v8 != -1 || v7) && (v8 & 0x80000000) == 0 && *(v9 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v8 && ((v10 = (*(v9 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v8), v7 == 0xFFFFFFFF) || v10[2] == HIDWORD(a1)) && (v11 = *(v10 + 2), v12 = *(*(v9 + 144) + 8 * *v10 + 32), *(v12 + 232) <= v11) && *(v12 + 240) > v11)
  {
    lock = *(v12 + 344);
    v15 = **(v9 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

    os_unfair_lock_lock(lock);
    ecs_stack_allocator_push_snapshot(*(v15 + 32));

    sub_1AFCC73D8(v15, v12, v11, v9, a1 & 0xFFFFFFFF00000000 | v8, sub_1AFC890EC, v16, &type metadata for TextureGPURuntime, &off_1F2544300, &off_1F2544388, sub_1AFCBC88C);

    ecs_stack_allocator_pop_snapshot(*(v15 + 32));
    os_unfair_lock_unlock(*(v12 + 344));
  }

  else
  {
  }

  sub_1AF678B44(a1 & 0xFFFFFFFF00000000 | v8);

  return ecs_stack_allocator_pop_snapshot(*(**(*(*(v3 + v6) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));
}

uint64_t sub_1AFCCC134()
{
  v1 = v0;
  v2 = OBJC_IVAR___VFXREScene_scene;
  ecs_stack_allocator_push_snapshot(*(**(*(*(v0 + OBJC_IVAR___VFXREScene_scene) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));
  v42 = MEMORY[0x1E69E7CC0];
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v56 = qword_1ED73B840;
  v57 = 0;
  v58 = 2;
  v59 = 0;
  v60 = 2;
  v61 = 0;
  sub_1AF704CB8(1, v43);
  v54[0] = v43[0];
  v54[1] = v43[1];
  v55 = v44;

  sub_1AF6B06C0(v3, v54, 0x200000000, v45);

  v36 = *v45;
  if (!*v45)
  {
    sub_1AFCCE778(v43, &unk_1EB643E00, &type metadata for REMeshAssetPointCache, &off_1F25683E0);
LABEL_41:
    v30 = MEMORY[0x1E69E7CC0];
LABEL_43:
    ecs_stack_allocator_pop_snapshot(*(**(*(*(v1 + v2) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));
    return v30;
  }

  v35 = *&v45[40];
  v4 = *(&v46 + 1);
  v5 = *(&v47 + 1);
  v49 = *&v45[8];
  v50 = *&v45[24];
  if (v48 <= 0 || !*(&v46 + 1))
  {
    sub_1AFCCE778(v43, &unk_1EB643E00, &type metadata for REMeshAssetPointCache, &off_1F25683E0);
    sub_1AFCCD850(v45, &qword_1ED725EA0, &type metadata for QueryResult);
    goto LABEL_41;
  }

  v38 = *(*(&v47 + 1) + 32);
  v6 = *(v47 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v41[2] = *&v45[32];
  v41[3] = v46;
  v41[4] = v47;
  v41[5] = v48;
  v41[0] = *v45;
  v41[1] = *&v45[16];
  sub_1AF5DD298(v41, v39);
  v7 = 0;
  v32 = MEMORY[0x1E69E7CC0];
  v33 = v4;
  v34 = v6;
  while (1)
  {
    v37 = v7;
    v8 = (v35 + 48 * v7);
    v10 = *v8;
    v9 = v8[1];
    v12 = *(v8 + 2);
    v11 = *(v8 + 3);
    v13 = *(v8 + 4);
    v14 = *(v8 + 5);
    if (v6)
    {
      v15 = *(v14 + 376);

      os_unfair_lock_lock(v15);
      os_unfair_lock_lock(*(v14 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v38);
    v16 = *(v5 + 64);
    v39[0] = *(v5 + 48);
    v39[1] = v16;
    v40 = *(v5 + 80);
    v17 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
    *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v17, 8);
    *(v5 + 56) = v17;
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    *(v5 + 64) = 0;
    sub_1AF64B110(&type metadata for REMeshAssetPointCache, &off_1F25683E0, v12, v11, v13, v5);
    if (!v12)
    {
      break;
    }

    if (v13)
    {
      while (1)
      {
        v19 = *v12++;
        v18 = v19;

        if (*(v14 + 184))
        {
          goto LABEL_44;
        }

        v21 = *(*(v14 + 168) + 4 * v18);
        v22 = *(*(v20 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v21 + 8);

        if (v22)
        {
          v23 = 0;
        }

        else
        {
          v23 = v21 == 0xFFFFFFFFLL;
        }

        if (v23)
        {
          v24 = 0;
        }

        else
        {
          v24 = v21 | (v22 << 32);
        }

        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
        MEMORY[0x1B2718E00]();
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AFDFD458();
        }

        sub_1AFDFD4B8();
        if (!--v13)
        {
          v32 = v42;
          break;
        }
      }
    }

    v6 = v34;
LABEL_37:
    v51 = v36;
    v52 = v49;
    v53 = v50;
    sub_1AF630994(v5, &v51, v39);
    sub_1AF62D29C(v14);
    ecs_stack_allocator_pop_snapshot(v38);
    if (v6)
    {
      os_unfair_lock_unlock(*(v14 + 344));
      os_unfair_lock_unlock(*(v14 + 376));
    }

    v7 = v37 + 1;
    if (v37 + 1 == v33)
    {
      sub_1AFCCE778(v43, &unk_1EB643E00, &type metadata for REMeshAssetPointCache, &off_1F25683E0);
      sub_1AFCCD850(v45, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFCCD850(v45, &qword_1ED725EA0, &type metadata for QueryResult);
      v30 = v32;
      goto LABEL_43;
    }
  }

  v6 = v34;
  if (v10 == v9)
  {
    goto LABEL_37;
  }

  while (1)
  {

    if (*(v14 + 184))
    {
      break;
    }

    v26 = *(*(v14 + 168) + 4 * v10);
    v27 = *(*(v25 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v26 + 8);

    if (v27)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26 == 0xFFFFFFFFLL;
    }

    if (v28)
    {
      v29 = 0;
    }

    else
    {
      v29 = v26 | (v27 << 32);
    }

    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    MEMORY[0x1B2718E00]();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
      v6 = v34;
    }

    ++v10;
    sub_1AFDFD4B8();
    if (v9 == v10)
    {
      v32 = v42;
      goto LABEL_37;
    }
  }

LABEL_44:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCCC798(void *a1)
{
  v1 = sub_1AF3D131C([a1 unsignedLongLongValue]);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;

  return v3;
}

id sub_1AFCCC8C8()
{
  v0 = objc_allocWithZone(type metadata accessor for VFXREBindingMeshData());

  return [v0 init];
}

void sub_1AFCCC93C(void *a1, void *a2, void *a3, void *a4)
{
  v8 = [a1 unsignedLongLongValue];
  v9 = *(*(v4 + OBJC_IVAR___VFXREScene_scene) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v12 = a4;

  v10 = a2;
  v11 = a3;
  sub_1AF68AD4C(v8, v9, a2, a3, a4);
}

uint64_t sub_1AFCCCB34(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v7 = vaddq_f32(a1, a6);
  v7.n128_u32[3] = a6.u32[3];
  return sub_1AFCCCBC8(a2, a3, a4, a5, v7);
}

uint64_t sub_1AFCCCBC8(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, __n128 a5)
{
  v6 = OBJC_IVAR___VFXREScene_scene;
  ecs_stack_allocator_push_snapshot(*(**(*(*(v5 + OBJC_IVAR___VFXREScene_scene) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));
  v7 = sub_1AFD04DDC(0x100000000uLL, **(*(*(v5 + v6) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues), a2, a3, a4, a5, a1);
  v8 = *(*(v5 + v6) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  if (v7 == 0xFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  ecs_stack_allocator_pop_snapshot(*(**(v8 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));
  return v9;
}

uint64_t sub_1AFCCCD00(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v8 = vaddq_f32(a2, a7);
  v8.n128_u32[3] = a7.u32[3];
  return sub_1AFCCCDB0(a1, a3, a4, a5, a6, v8);
}

uint64_t sub_1AFCCCDB0(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, __n128 a6)
{
  v8 = OBJC_IVAR___VFXREScene_scene;
  ecs_stack_allocator_push_snapshot(*(**(*(*(v6 + OBJC_IVAR___VFXREScene_scene) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));
  v9 = vmulq_f32(a3, a3);
  v10 = vmulq_f32(a4, a4);
  v11 = vmulq_f32(a5, a5);
  v12 = vtrn2q_s32(v9, v10);
  v12.i32[2] = v11.i32[1];
  v13 = vaddq_f32(vzip1q_s32(vzip2q_s32(v9, v11), vdupq_laneq_s32(v10, 2)), vaddq_f32(vzip1q_s32(vzip1q_s32(v9, v11), v10), v12));
  v14.i64[0] = 0x80000000800000;
  v14.i64[1] = 0x80000000800000;
  v15 = vcgeq_f32(v14, v13);
  v13.i32[3] = 0;
  v16 = vrsqrteq_f32(v13);
  v17 = vmulq_f32(v16, vrsqrtsq_f32(v13, vmulq_f32(v16, v16)));
  v18 = v15;
  v18.i32[3] = 0;
  v19 = vbslq_s8(vcltzq_s32(v18), v13, vmulq_f32(v17, vrsqrtsq_f32(v13, vmulq_f32(v17, v17))));
  v20 = vmulq_n_f32(a3, v19.f32[0]);
  v21 = vmulq_lane_f32(a4, *v19.f32, 1);
  v22 = vmulq_laneq_f32(a5, v19, 2);
  v23 = vuzp1q_s32(v22, v22);
  v24 = vuzp1q_s32(v21, v21);
  v25 = v20;
  if (v15.i32[0])
  {
    v26 = vmlaq_f32(vmulq_f32(vextq_s8(v23, v22, 0xCuLL), vnegq_f32(v21)), v22, vextq_s8(v24, v21, 0xCuLL));
    v25 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
  }

  v27 = vuzp1q_s32(v20, v20);
  v28 = v21;
  if (v15.i32[1])
  {
    v29 = vmlaq_f32(vmulq_f32(vextq_s8(v27, v20, 0xCuLL), vnegq_f32(v22)), v20, vextq_s8(v23, v22, 0xCuLL));
    v28 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
  }

  if (v15.i32[2])
  {
    v30 = vmlaq_f32(vmulq_f32(vextq_s8(v24, v21, 0xCuLL), vnegq_f32(v20)), v21, vextq_s8(v27, v20, 0xCuLL));
    v22 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
  }

  v31 = (*v25.i32 + *&v28.i32[1]) + v22.f32[2];
  if (v31 > 0.0)
  {
    v32 = sqrtf(v31 + 1.0);
    *v33.f32 = vsub_f32(*&vzip2q_s32(v28, vuzp1q_s32(v28, v22)), *&vtrn2q_s32(v22, vzip2q_s32(v22, v25)));
    v33.f32[2] = *&v25.i32[1] - *v28.i32;
    v33.f32[3] = v32 * v32;
    v34 = 0.5 / v32;
LABEL_9:
    v35 = vmulq_n_f32(v33, v34);
    goto LABEL_18;
  }

  if (*v25.i32 < *&v28.i32[1] || *v25.i32 < v22.f32[2])
  {
    if (*&v28.i32[1] <= v22.f32[2])
    {
      v47 = vzip2q_s32(v25, v28).u64[0];
      v48 = __PAIR64__(v25.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v22.f32[2] + 1.0) - *v25.i32) - *&v28.i32[1])));
      v49 = vdup_lane_s32(*v28.i8, 0);
      v50 = vsub_f32(*v25.i8, v49);
      v49.i32[0] = v48.i32[0];
      v49.i32[0] = vmul_f32(v48, v49).u32[0];
      v49.i32[1] = v50.i32[1];
      *v33.f32 = vadd_f32(v47, *v22.f32);
      *&v33.u32[2] = v49;
      v34 = 0.5 / v48.f32[0];
      goto LABEL_9;
    }

    v38 = sqrtf(((*&v28.i32[1] + 1.0) - *v25.i32) - v22.f32[2]);
    v42.f32[0] = *&v25.i32[1] + *v28.i32;
    v37 = vzip2q_s32(v25, v28).u64[0];
    v42.f32[1] = v38 * v38;
    *&v42.u32[2] = vext_s8(vadd_f32(*v22.f32, v37), vsub_f32(*v22.f32, v37), 4uLL);
  }

  else
  {
    v38 = sqrtf(((*v25.i32 + 1.0) - *&v28.i32[1]) - v22.f32[2]);
    v42.f32[0] = v38 * v38;
    v39 = *&v25.i32[1] + *v28.i32;
    v40 = vzip2q_s32(v25, v28).u64[0];
    LODWORD(v41) = vadd_f32(v40, *v22.f32).u32[0];
    HIDWORD(v41) = vsub_f32(v40, *&v22).i32[1];
    v42.f32[1] = v39;
    v42.i64[1] = v41;
  }

  v35 = vmulq_n_f32(v42, 0.5 / v38);
LABEL_18:
  v54 = v35;
  v43.n128_u64[0] = vmul_f32(*a2.f32, vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v10, v10, 8uLL)), vadd_f32(vzip1_s32(*v9.i8, *v10.i8), vzip2_s32(*v9.i8, *v10.i8)))));
  v43.n128_u64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(sqrtf(*&v11.i32[2] + vaddv_f32(*v11.i8)), a2, 2));
  v44 = a1 & 0xFFFFFFFF00000000;
  if (a1)
  {
    a1 = a1;
  }

  else
  {
    a1 = 0xFFFFFFFFLL;
  }

  sub_1AF68B2F4(a1 | v44, *(*(v6 + v8) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager), v43);
  sub_1AF68B2D8(a1 | v44, *(*(v6 + v8) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager), v54);
  sub_1AF68B310(a1 | v44, *(*(v6 + v8) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager), a6);
  v45 = *(**(*(*(v6 + v8) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32);

  return ecs_stack_allocator_pop_snapshot(v45);
}

uint64_t sub_1AFCCD1A0(unint64_t a1)
{
  v3 = OBJC_IVAR___VFXREScene_scene;
  ecs_stack_allocator_push_snapshot(*(**(*(*(v1 + OBJC_IVAR___VFXREScene_scene) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));
  v4 = HIDWORD(a1);
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = -1;
  }

  v6 = *(*(v1 + v3) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  if ((v5 != -1 || v4) && (v5 & 0x80000000) == 0 && *(v6 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v5)
  {
    v9 = (*(v6 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v5);
    if (v4 == 0xFFFFFFFF || v9[2] == v4)
    {
      v10 = *(v9 + 2);
      v11 = *(*(v6 + 144) + 8 * *v9 + 32);
      if (*(v11 + 232) <= v10 && *(v11 + 240) > v10)
      {
        v13 = **(v6 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        v14 = *(v11 + 344);

        os_unfair_lock_lock(v14);
        ecs_stack_allocator_push_snapshot(*(v13 + 32));

        sub_1AF65CFA0(v13, v11, v10);

        ecs_stack_allocator_pop_snapshot(*(v13 + 32));
        os_unfair_lock_unlock(*(v11 + 344));

        v6 = *(*(v1 + v3) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
      }
    }
  }

  v7 = *(**(v6 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32);

  return ecs_stack_allocator_pop_snapshot(v7);
}

BOOL sub_1AFCCD3E8()
{
  v1 = OBJC_IVAR___VFXREScene_scene;
  ecs_stack_allocator_push_snapshot(*(**(*(*(v0 + OBJC_IVAR___VFXREScene_scene) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));

  v2 = sub_1AFA1B8FC();

  ecs_stack_allocator_pop_snapshot(*(**(*(*(v0 + v1) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));
  return v2;
}

uint64_t sub_1AFCCD498(uint64_t a1)
{
  v3 = OBJC_IVAR___VFXREScene_scene;
  ecs_stack_allocator_push_snapshot(*(**(*(*(v1 + OBJC_IVAR___VFXREScene_scene) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));
  v4 = a1;
  if (!a1)
  {
    v4 = 0xFFFFFFFFLL;
  }

  sub_1AF67F284(v4 | a1 & 0xFFFFFFFF00000000, *(*(v1 + v3) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager));
  v5 = *(**(*(*(v1 + v3) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32);

  return ecs_stack_allocator_pop_snapshot(v5);
}

id VFXREScene.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1AFCCD660(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1AFCCD794()
{
  if (!qword_1EB632B30)
  {
    v0 = sub_1AFDFC628();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB632B30);
    }
  }
}

unint64_t sub_1AFCCD7F8()
{
  result = qword_1EB632B38;
  if (!qword_1EB632B38)
  {
    sub_1AFCCD794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632B38);
  }

  return result;
}

uint64_t sub_1AFCCD850(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF6EEA28(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AFCCD8D4()
{
  result = qword_1EB643E10;
  if (!qword_1EB643E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643E10);
  }

  return result;
}

unint64_t sub_1AFCCE620()
{
  result = qword_1ED721F80;
  if (!qword_1ED721F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED721F80);
  }

  return result;
}

uint64_t sub_1AFCCE66C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AFCCE694(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFCCE6F4()
{
  if (!qword_1EB643E20)
  {
    sub_1AFCCE7E8(255, &qword_1EB643E28, &type metadata for PointOfView, &off_1F2511E50, type metadata accessor for QueryResult1);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB643E20);
    }
  }
}

uint64_t sub_1AFCCE778(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1AFCCE7E8(0, a2, a3, a4, type metadata accessor for Query1);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AFCCE7E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AFCCE860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AFCCE8C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t PixelFormatDepth.init(rawValue:)(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return v1 | ((a1 > 2u) << 8);
}

id VFXScene.LoadOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1AFCCEBC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX8VFXScene__version);
  if (v1 > 0)
  {
    return v1;
  }

  v3 = *(v0 + OBJC_IVAR____TtC3VFX8VFXScene_effects);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v4 = sub_1AFDFE108();
  if (!v4)
  {
    return 0;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {

    v1 = 0;
    v5 = 0;
    do
    {
      v6 = MEMORY[0x1B2719C70](v5++, v3);
      v7 = *(v6 + OBJC_IVAR____TtC3VFX9VFXEffect_version);
      swift_unknownObjectRelease();
      if (v1 <= v7)
      {
        v1 = v7;
      }
    }

    while (v4 != v5);

    return v1;
  }

  if (v4 == 1)
  {
    v1 = 0;
    v8 = 0;
LABEL_23:
    v13 = v4 - v8;
    v14 = (v3 + 8 * v8 + 32);
    do
    {
      v15 = *v14++;
      v16 = *(v15 + OBJC_IVAR____TtC3VFX9VFXEffect_version);
      if (v1 <= v16)
      {
        v1 = v16;
      }

      --v13;
    }

    while (v13);
    return v1;
  }

  v9 = 0;
  v10 = 0;
  v8 = v4 & 0xFFFFFFFFFFFFFFFELL;
  v11 = (v3 + 40);
  v12 = v4 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    if (v9 <= *(*(v11 - 1) + OBJC_IVAR____TtC3VFX9VFXEffect_version))
    {
      v9 = *(*(v11 - 1) + OBJC_IVAR____TtC3VFX9VFXEffect_version);
    }

    if (v10 <= *(*v11 + OBJC_IVAR____TtC3VFX9VFXEffect_version))
    {
      v10 = *(*v11 + OBJC_IVAR____TtC3VFX9VFXEffect_version);
    }

    v11 += 2;
    v12 -= 2;
  }

  while (v12);
  if (v9 <= v10)
  {
    v1 = v10;
  }

  else
  {
    v1 = v9;
  }

  if (v4 != v8)
  {
    goto LABEL_23;
  }

  return v1;
}

uint64_t (*sub_1AFCCF3A4(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR___VFXSceneLoadOptions_enableDeferredRendering;
  v3 = *(v1 + OBJC_IVAR___VFXSceneLoadOptions_enableDeferredRendering);
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = (v3 == 2) | v3 & 1;
  return sub_1AFCCF3E8;
}

uint64_t sub_1AFCCF5F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_1AFCCF6E4()
{
  v1 = *(v0 + OBJC_IVAR___VFXSceneLoadOptions_clientID);

  return v1;
}

id VFXScene.LoadOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VFXScene.LoadOptions(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1AFCCF9EC(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
  v41 = [objc_allocWithZone(type metadata accessor for AssetManager()) init];
  v4 = *(v3 + 184);

  sub_1AF6D655C(&type metadata for AssetManagerInstance, &off_1F25418A0, v4, sub_1AFCD9CC4);

  v5 = (v3 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
  *(v3 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig + 2) = 1;
  v6 = type metadata accessor for ScriptingConfiguration();
  *&v5[*(v6 + 32)] = 0;

  v7 = *&v1[OBJC_IVAR____TtC3VFX8VFXScene_loadOptions];
  v8 = *&v7[OBJC_IVAR___VFXSceneLoadOptions_counterStorage];
  if (vfx_counters_is_null(v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  sub_1AF650E7C(v9, v42);
  v10 = (v3 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
  v11 = v42[1];
  *v10 = v42[0];
  v10[1] = v11;
  *(v10 + 76) = *&v43[12];
  v12 = *v43;
  v13 = v42[2];
  v10[3] = v42[3];
  v10[4] = v12;
  v10[2] = v13;
  if (v7[OBJC_IVAR___VFXSceneLoadOptions_setupRenderer] == 1)
  {
    v14 = v7;
    sub_1AF7184F4(v14, v44);
    v15 = CFXGPUDeviceCreate(*&v14[OBJC_IVAR___VFXSceneLoadOptions_device]);
    v16 = *&v14[OBJC_IVAR___VFXSceneLoadOptions_commandQueue];
    type metadata accessor for Renderer();
    swift_allocObject();
    swift_unknownObjectRetain();
    *&v2[OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer] = sub_1AF70A2F4(v15, v16, v44, 0);
  }

  type metadata accessor for SceneAssetRegistry();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E7CC0];
  *(v17 + 16) = sub_1AF43EB64(MEMORY[0x1E69E7CC0]);
  *(v17 + 24) = sub_1AF43EB7C(v18);
  swift_weakInit();
  v19 = swift_weakAssign();
  MEMORY[0x1EEE9AC00](v19, v20);
  v21 = *(v3 + 184);

  sub_1AF6D655C(&type metadata for SceneAssetRegistryInstance, &off_1F2536D38, v21, sub_1AFCD9CDC);

  v22 = OBJC_IVAR___VFXSceneLoadOptions_isVFX2;
  *(v3 + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2) = v7[OBJC_IVAR___VFXSceneLoadOptions_isVFX2];
  *v5 = v7[OBJC_IVAR___VFXSceneLoadOptions_enableRuntimeScriptCompilation];
  v23 = OBJC_IVAR___VFXSceneLoadOptions_metalLibraryURL;
  v24 = *(v6 + 28);
  sub_1AFCD7458(&v5[v24], &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1AF0D1030);
  sub_1AF456C4C(&v7[v23], &v5[v24]);
  *(v3 + OBJC_IVAR____TtC3VFX13EntityManager_imGUIEnabled) = 0;
  if (*&v7[OBJC_IVAR___VFXSceneLoadOptions_clientID + 8])
  {
    v25 = *&v7[OBJC_IVAR___VFXSceneLoadOptions_clientID];
    v26 = *&v7[OBJC_IVAR___VFXSceneLoadOptions_clientID + 8];
  }

  else
  {
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  *(v3 + 40) = v25;
  *(v3 + 48) = v26;

  v27 = OBJC_IVAR___VFXSceneLoadOptions_isAuthoringWorld;
  v28 = v7[OBJC_IVAR___VFXSceneLoadOptions_isAuthoringWorld];
  *(v3 + 56) = v28;
  *(*(v3 + OBJC_IVAR____TtC3VFX13EntityManager_scheduler) + 16) = v28;
  v29 = *&v7[OBJC_IVAR___VFXSceneLoadOptions_systemRegistrationOptions];

  sub_1AFBF0428(v29);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    swift_unknownObjectWeakAssign();
  }

  v32 = 0;
  *(v3 + OBJC_IVAR____TtC3VFX13EntityManager_peerPid) = *&v7[OBJC_IVAR___VFXSceneLoadOptions_peerPid];
  *(v3 + OBJC_IVAR____TtC3VFX13EntityManager_peerTaskIdentity) = *&v7[OBJC_IVAR___VFXSceneLoadOptions_peerTaskIdentity];
  v33 = *&v2[OBJC_IVAR____TtC3VFX8VFXScene_loader];
  v33[19] = v7[v27];
  v33[20] = v7[OBJC_IVAR___VFXSceneLoadOptions_loadBindingsMetadata];
  v33[21] = v7[OBJC_IVAR___VFXSceneLoadOptions_enableParallelDecoding];
  v33[16] = v7[OBJC_IVAR___VFXSceneLoadOptions_loadPrecompiledScripts];
  v33[17] = 0;
  v33[22] = v7[OBJC_IVAR___VFXSceneLoadOptions_allowLoadingFromFuture];
  if (v7[OBJC_IVAR___VFXSceneLoadOptions_automaticallyPrepareScene] == 1)
  {
    v32 = v7[OBJC_IVAR___VFXSceneLoadOptions_setupAsTemplate] ^ 1;
  }

  v33[23] = v32 & 1;
  v34 = *&v7[OBJC_IVAR___VFXSceneLoadOptions_asyncRuntimeLock];
  *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock) = v34;
  if (v7[OBJC_IVAR___VFXSceneLoadOptions_setupAsyncRuntime] == 1)
  {
    v35 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
    if (!*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread))
    {
      type metadata accessor for RuntimeThread();
      swift_allocObject();

      v37 = sub_1AF6D1E38(v36, v34, 0);

      *(a1 + v35) = v37;
    }

    if (v7[v22] == 1)
    {
      v38 = swift_allocObject();
      *(v38 + 16) = v2;
      v39 = v2;
      sub_1AF66D948(sub_1AFCD9CBC, v38);
    }
  }
}

void sub_1AFCCFFB4()
{
  v0 = objc_opt_self();
  [v0 setCurrentThreadImmediateMode_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [v0 setImmediateModeRestrictedContext_];
  }
}

uint64_t sub_1AFCD0058(unint64_t a1)
{
  v4 = type metadata accessor for BundleInfo();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v13 = *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer);

  v18 = 1;
  v17 = sub_1AF81249C(v7, a1, 0, v12, v13, 0x100000000);

  if (!v2)
  {
    sub_1AF81FF3C(v7, v11);
    v17(v12, 7, 0);
    *(v1 + OBJC_IVAR____TtC3VFX8VFXScene__version) = *&v11[*(v4 + 24)];
    *(v12 + 24) = sub_1AFDFC028();
    *(v12 + 32) = v15;

    if (qword_1ED72FDA8 != -1)
    {
      swift_once();
    }

    return sub_1AFCD9B60(v11, type metadata accessor for BundleInfo);
  }

  return result;
}

uint64_t sub_1AFCD02EC()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + 24);

  return v1;
}

uint64_t sub_1AFCD0378(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
}

uint64_t (*sub_1AFCD0394(void *a1))(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  a1[2] = v3;
  v4 = *(v3 + 32);
  *a1 = *(v3 + 24);
  a1[1] = v4;

  return sub_1AFCD03F0;
}

uint64_t sub_1AFCD03F0(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  *(v1 + 24) = *a1;
  *(v1 + 32) = v2;
}

id VFXScene.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC3VFX8VFXScene_loader;
  type metadata accessor for VFXLoader();
  swift_allocObject();
  sub_1AF811870();
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer] = 0;
  *&v0[OBJC_IVAR____TtC3VFX8VFXScene_templateRemapTable] = 0;
  v0[OBJC_IVAR____TtC3VFX8VFXScene_templateWasPrepared] = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC3VFX8VFXScene_effects] = MEMORY[0x1E69E7CC0];
  v5 = OBJC_IVAR____TtC3VFX8VFXScene_entityObjects;
  *&v1[v5] = sub_1AF440CC0(v4);
  *&v1[OBJC_IVAR____TtC3VFX8VFXScene__version] = 0;
  v1[OBJC_IVAR____TtC3VFX8VFXScene_isInsideRE] = 0;
  v1[OBJC_IVAR____TtC3VFX8VFXScene_isREAssetScene] = 0;
  v6 = OBJC_IVAR____TtC3VFX8VFXScene_transientDrawCall;
  *&v1[v6] = [objc_allocWithZone(type metadata accessor for VFXREDrawCall()) init];
  v1[OBJC_IVAR____TtC3VFX8VFXScene_hasSharedEntityManager] = 0;
  *&v1[OBJC_IVAR____TtC3VFX8VFXScene_metalBinaryArchiveURLs] = 0;
  v7 = OBJC_IVAR____TtC3VFX8VFXScene_recordedMetalBinaryArchiveURL;
  v8 = sub_1AFDFC128();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  *&v1[OBJC_IVAR____TtC3VFX8VFXScene_internalPixelFormat] = 115;
  v1[OBJC_IVAR____TtC3VFX8VFXScene_internalPixelFormatDepth] = 1;
  v1[OBJC_IVAR____TtC3VFX8VFXScene_useGammaBlending] = 0;
  *&v1[OBJC_IVAR____TtC3VFX8VFXScene_debugUIOptions] = 0;
  type metadata accessor for EntityManager();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC3VFX8VFXScene_entityManager] = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
  *&v1[OBJC_IVAR____TtC3VFX8VFXScene_loadOptions] = [objc_allocWithZone(type metadata accessor for VFXScene.LoadOptions(0)) init];
  v12.receiver = v1;
  v12.super_class = type metadata accessor for VFXScene(0);
  v9 = objc_msgSendSuper2(&v12, sel_init);

  sub_1AFCCF9EC(v10);

  if (qword_1ED72FDA8 != -1)
  {
    swift_once();
  }

  return v9;
}

char *VFXScene.__allocating_init(contentsOf:options:)(unint64_t a1, void *a2)
{
  v25 = type metadata accessor for BundleInfo();
  MEMORY[0x1EEE9AC00](v25, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v24 - v11;
  v13 = objc_allocWithZone(v2);
  v27 = a2;
  v14 = [v13 initWithOptions_];
  if (qword_1ED72FDA8 != -1)
  {
    swift_once();
  }

  v15 = *&v14[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
  v16 = *&v14[OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer];

  v28 = 1;
  v26 = a1;
  v17 = sub_1AF81249C(v8, a1, 0, v15, v16, 0x100000000);
  if (v3)
  {

    v19 = sub_1AFDFC128();
    (*(*(v19 - 8) + 8))(v26, v19);
  }

  else
  {
    v18 = v17;

    sub_1AF81FF3C(v8, v12);
    v18(v15, 7, 0);
    v21 = v26;
    *&v14[OBJC_IVAR____TtC3VFX8VFXScene__version] = *&v12[*(v25 + 24)];
    *(v15 + 24) = sub_1AFDFC028();
    *(v15 + 32) = v22;

    sub_1AFCD9B60(v12, type metadata accessor for BundleInfo);
    v23 = sub_1AFDFC128();
    (*(*(v23 - 8) + 8))(v21, v23);
  }

  return v14;
}

char *VFXScene.init(contentsOf:options:)(unint64_t a1, void *a2)
{
  v25 = type metadata accessor for BundleInfo();
  MEMORY[0x1EEE9AC00](v25, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v9, v10).n128_u64[0];
  v13 = &v24 - v12;
  v27 = a2;
  v14 = [v2 initWithOptions_];
  if (qword_1ED72FDA8 != -1)
  {
    swift_once();
  }

  v15 = *&v14[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
  v16 = *&v14[OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer];

  v28 = 1;
  v26 = a1;
  v17 = sub_1AF81249C(v8, a1, 0, v15, v16, 0x100000000);
  if (v3)
  {

    v19 = sub_1AFDFC128();
    (*(*(v19 - 8) + 8))(v26, v19);
  }

  else
  {
    v18 = v17;

    sub_1AF81FF3C(v8, v13);
    v18(v15, 7, 0);
    v21 = v26;
    *&v14[OBJC_IVAR____TtC3VFX8VFXScene__version] = *&v13[*(v25 + 24)];
    *(v15 + 24) = sub_1AFDFC028();
    *(v15 + 32) = v22;

    sub_1AFCD9B60(v13, type metadata accessor for BundleInfo);
    v23 = sub_1AFDFC128();
    (*(*(v23 - 8) + 8))(v21, v23);
  }

  return v14;
}

char *VFXScene.init(contentsOf:)(unint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for BundleInfo();
  MEMORY[0x1EEE9AC00](v33, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v34 = &v32 - v9;
  v10 = OBJC_IVAR____TtC3VFX8VFXScene_loader;
  type metadata accessor for VFXLoader();
  swift_allocObject();
  sub_1AF811870();
  *&v1[v10] = v11;
  *&v1[OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer] = 0;
  *&v1[OBJC_IVAR____TtC3VFX8VFXScene_templateRemapTable] = 0;
  v1[OBJC_IVAR____TtC3VFX8VFXScene_templateWasPrepared] = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC3VFX8VFXScene_effects] = MEMORY[0x1E69E7CC0];
  v13 = OBJC_IVAR____TtC3VFX8VFXScene_entityObjects;
  *&v1[v13] = sub_1AF440CC0(v12);
  *&v1[OBJC_IVAR____TtC3VFX8VFXScene__version] = 0;
  v1[OBJC_IVAR____TtC3VFX8VFXScene_isInsideRE] = 0;
  v1[OBJC_IVAR____TtC3VFX8VFXScene_isREAssetScene] = 0;
  v14 = OBJC_IVAR____TtC3VFX8VFXScene_transientDrawCall;
  *&v1[v14] = [objc_allocWithZone(type metadata accessor for VFXREDrawCall()) init];
  v1[OBJC_IVAR____TtC3VFX8VFXScene_hasSharedEntityManager] = 0;
  *&v1[OBJC_IVAR____TtC3VFX8VFXScene_metalBinaryArchiveURLs] = 0;
  v15 = OBJC_IVAR____TtC3VFX8VFXScene_recordedMetalBinaryArchiveURL;
  v16 = sub_1AFDFC128();
  v35 = *(v16 - 8);
  v36 = v16;
  (*(v35 + 56))(&v1[v15], 1, 1);
  *&v1[OBJC_IVAR____TtC3VFX8VFXScene_internalPixelFormat] = 115;
  v1[OBJC_IVAR____TtC3VFX8VFXScene_internalPixelFormatDepth] = 1;
  v1[OBJC_IVAR____TtC3VFX8VFXScene_useGammaBlending] = 0;
  *&v1[OBJC_IVAR____TtC3VFX8VFXScene_debugUIOptions] = 0;
  v17 = sub_1AFDFC028();
  v19 = v18;
  type metadata accessor for EntityManager();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC3VFX8VFXScene_entityManager] = sub_1AF66F180(v17, v19, 1, 0);
  *&v2[OBJC_IVAR____TtC3VFX8VFXScene_loadOptions] = [objc_allocWithZone(type metadata accessor for VFXScene.LoadOptions(0)) init];
  v20 = type metadata accessor for VFXScene(0);
  v38.receiver = v2;
  v38.super_class = v20;
  v21 = objc_msgSendSuper2(&v38, sel_init);
  v22 = OBJC_IVAR____TtC3VFX8VFXScene_entityManager;

  sub_1AFCCF9EC(v23);

  if (qword_1ED72FDA8 != -1)
  {
    swift_once();
  }

  v24 = *&v21[v22];
  v25 = *&v21[OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer];

  v39 = 1;
  v26 = v37;
  v27 = sub_1AF81249C(v6, a1, 0, v24, v25, 0x100000000);
  if (v26)
  {

    (*(v35 + 8))(a1, v36);
  }

  else
  {
    v28 = v27;

    v29 = v34;
    sub_1AF81FF3C(v6, v34);
    v28(v24, 7, 0);
    *&v21[OBJC_IVAR____TtC3VFX8VFXScene__version] = *(v29 + *(v33 + 24));
    *(v24 + 24) = sub_1AFDFC028();
    *(v24 + 32) = v31;

    sub_1AFCD9B60(v29, type metadata accessor for BundleInfo);
    (*(v35 + 8))(a1, v36);
  }

  return v21;
}

void VFXScene.__allocating_init(forEngineNamed:)()
{
  type metadata accessor for VFXLoader();
  swift_initStackObject();
  sub_1AF811870();
  sub_1AF440CC0(MEMORY[0x1E69E7CC0]);
  [objc_allocWithZone(type metadata accessor for VFXREDrawCall()) init];
  sub_1AFDFE518();
  __break(1u);
}

id VFXScene.__allocating_init(entityManager:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = OBJC_IVAR____TtC3VFX8VFXScene_loader;
  type metadata accessor for VFXLoader();
  swift_allocObject();
  sub_1AF811870();
  *&v4[v5] = v6;
  *&v4[OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer] = 0;
  *&v4[OBJC_IVAR____TtC3VFX8VFXScene_templateRemapTable] = 0;
  v4[OBJC_IVAR____TtC3VFX8VFXScene_templateWasPrepared] = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC3VFX8VFXScene_effects] = MEMORY[0x1E69E7CC0];
  v8 = OBJC_IVAR____TtC3VFX8VFXScene_entityObjects;
  *&v4[v8] = sub_1AF440CC0(v7);
  *&v4[OBJC_IVAR____TtC3VFX8VFXScene__version] = 0;
  v4[OBJC_IVAR____TtC3VFX8VFXScene_isInsideRE] = 0;
  v4[OBJC_IVAR____TtC3VFX8VFXScene_isREAssetScene] = 0;
  v9 = OBJC_IVAR____TtC3VFX8VFXScene_transientDrawCall;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for VFXREDrawCall()) init];
  v10 = OBJC_IVAR____TtC3VFX8VFXScene_hasSharedEntityManager;
  *&v4[OBJC_IVAR____TtC3VFX8VFXScene_metalBinaryArchiveURLs] = 0;
  v11 = OBJC_IVAR____TtC3VFX8VFXScene_recordedMetalBinaryArchiveURL;
  v12 = sub_1AFDFC128();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  *&v4[OBJC_IVAR____TtC3VFX8VFXScene_internalPixelFormat] = 115;
  v4[OBJC_IVAR____TtC3VFX8VFXScene_internalPixelFormatDepth] = 1;
  v4[OBJC_IVAR____TtC3VFX8VFXScene_useGammaBlending] = 0;
  *&v4[OBJC_IVAR____TtC3VFX8VFXScene_debugUIOptions] = 0;
  v4[v10] = 1;
  *&v4[OBJC_IVAR____TtC3VFX8VFXScene_entityManager] = a1;
  v13 = objc_allocWithZone(type metadata accessor for VFXScene.LoadOptions(0));
  swift_unknownObjectRetain();
  v14 = [v13 init];
  *&v4[OBJC_IVAR____TtC3VFX8VFXScene_loadOptions] = v14;
  v17.receiver = v4;
  v17.super_class = v2;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  swift_unknownObjectRelease();
  return v15;
}

id VFXScene.init(entityManager:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC3VFX8VFXScene_loader;
  type metadata accessor for VFXLoader();
  swift_allocObject();
  sub_1AF811870();
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer] = 0;
  *&v1[OBJC_IVAR____TtC3VFX8VFXScene_templateRemapTable] = 0;
  v1[OBJC_IVAR____TtC3VFX8VFXScene_templateWasPrepared] = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC3VFX8VFXScene_effects] = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtC3VFX8VFXScene_entityObjects;
  *&v2[v7] = sub_1AF440CC0(v6);
  *&v2[OBJC_IVAR____TtC3VFX8VFXScene__version] = 0;
  v2[OBJC_IVAR____TtC3VFX8VFXScene_isInsideRE] = 0;
  v2[OBJC_IVAR____TtC3VFX8VFXScene_isREAssetScene] = 0;
  v8 = OBJC_IVAR____TtC3VFX8VFXScene_transientDrawCall;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for VFXREDrawCall()) init];
  v9 = OBJC_IVAR____TtC3VFX8VFXScene_hasSharedEntityManager;
  *&v2[OBJC_IVAR____TtC3VFX8VFXScene_metalBinaryArchiveURLs] = 0;
  v10 = OBJC_IVAR____TtC3VFX8VFXScene_recordedMetalBinaryArchiveURL;
  v11 = sub_1AFDFC128();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  *&v2[OBJC_IVAR____TtC3VFX8VFXScene_internalPixelFormat] = 115;
  v2[OBJC_IVAR____TtC3VFX8VFXScene_internalPixelFormatDepth] = 1;
  v2[OBJC_IVAR____TtC3VFX8VFXScene_useGammaBlending] = 0;
  *&v2[OBJC_IVAR____TtC3VFX8VFXScene_debugUIOptions] = 0;
  v2[v9] = 1;
  *&v2[OBJC_IVAR____TtC3VFX8VFXScene_entityManager] = a1;
  v12 = objc_allocWithZone(type metadata accessor for VFXScene.LoadOptions(0));
  swift_unknownObjectRetain();
  v13 = [v12 init];
  *&v2[OBJC_IVAR____TtC3VFX8VFXScene_loadOptions] = v13;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for VFXScene(0);
  v14 = objc_msgSendSuper2(&v16, sel_init);
  swift_unknownObjectRelease();
  return v14;
}

id VFXScene.__deallocating_deinit()
{
  if ((v0[OBJC_IVAR____TtC3VFX8VFXScene_hasSharedEntityManager] & 1) == 0)
  {

    sub_1AF65F760();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for VFXScene(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1AFCD1AD8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1AF0D1030(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - v7;
  sub_1AF456C4C(a1 + *a3, &v15 - v7);
  v9 = sub_1AFDFC128();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_1AFDFC048();
    (*(v10 + 8))(v8, v9);
    v12 = v13;
  }

  return v12;
}

uint64_t sub_1AFCD1C40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1AF0D1030(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v14 - v9;
  if (a3)
  {
    sub_1AFDFC0B8();
    v11 = sub_1AFDFC128();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_1AFDFC128();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  return sub_1AF456BE8(v10, a1 + *a4);
}

uint64_t sub_1AFCD1D88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1AF0D1030(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v13 - v10;
  sub_1AF456C4C(a1, &v13 - v10);
  return sub_1AF456BE8(v11, *a2 + *a5);
}

uint64_t sub_1AFCD1FAC(uint64_t a1)
{
  v2 = v1;
  sub_1AF0D1030(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v31 = &v29 - v6;
  v7 = sub_1AFDFC128();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF7184F4(*(v1 + OBJC_IVAR____TtC3VFX8VFXScene_loadOptions), v32);
  sub_1AFCD9844(v32, a1 + 392);
  sub_1AF0D8E28();
  *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer) = a1;

  v12 = *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v13 = *(v12 + 184);

  v14 = sub_1AF6D36F4(&type metadata for SceneAssetRegistryInstance, &off_1F2536D38, v13);

  if (!v14)
  {
    type metadata accessor for SceneAssetRegistry();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E7CC0];
    *(v15 + 16) = sub_1AF43EB64(MEMORY[0x1E69E7CC0]);
    *(v15 + 24) = sub_1AF43EB7C(v16);
    swift_weakInit();
    v17 = swift_weakAssign();
    MEMORY[0x1EEE9AC00](v17, v18);
    *(&v29 - 2) = v15;
    v19 = *(v12 + 184);

    sub_1AF6D655C(&type metadata for SceneAssetRegistryInstance, &off_1F2536D38, v19, sub_1AFCD98A0);
  }

  if (*(v2 + OBJC_IVAR____TtC3VFX8VFXScene_metalBinaryArchiveURLs))
  {
    v20 = *(v2 + OBJC_IVAR____TtC3VFX8VFXScene_metalBinaryArchiveURLs);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v20 + 16);
  if (v21)
  {
    v29 = v20;
    v30 = v2;
    v24 = *(v8 + 16);
    v23 = v8 + 16;
    v22 = v24;
    v25 = v20 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v26 = *(v23 + 56);

    do
    {
      v22(v11, v25, v7);

      sub_1AF728E38();

      (*(v23 - 8))(v11, v7);
      v25 += v26;
      --v21;
    }

    while (v21);

    v2 = v30;
  }

  else
  {
  }

  v27 = v31;
  sub_1AF456C4C(v2 + OBJC_IVAR____TtC3VFX8VFXScene_recordedMetalBinaryArchiveURL, v31);
  return sub_1AF456BE8(v27, *(a1 + 112) + OBJC_IVAR____TtC3VFX11ShaderCache_urlToSaveBinaryArchiveTo);
}

uint64_t sub_1AFCD2418()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_clock;
  if (*(v1 + 81) == 1)
  {
    return (*(v1 + 84) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t (*sub_1AFCD24A0(uint64_t a1))(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v3 = OBJC_IVAR____TtC3VFX13EntityManager_clock;
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = v2 + v3;
  if (*(v4 + 81) == 1)
  {
    v5 = *(v4 + 84) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 16) = v5 & 1;
  return sub_1AFCD2504;
}

uint64_t sub_1AFCD258C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_clock;
  *(v2 + 82) = result;
  if (result)
  {
    *(v2 + 83) = 0;
  }

  return result;
}

uint64_t (*sub_1AFCD25B8(uint64_t a1))(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v3 = OBJC_IVAR____TtC3VFX13EntityManager_clock;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v2 + v3 + 82);
  return sub_1AFCD2600;
}

uint64_t sub_1AFCD2600(uint64_t result)
{
  v1 = *result + *(result + 8);
  v2 = *(result + 16);
  *(v1 + 82) = v2;
  if (v2 == 1)
  {
    *(v1 + 83) = 0;
  }

  return result;
}

float (*sub_1AFCD26B0(uint64_t a1))(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v3 = OBJC_IVAR____TtC3VFX13EntityManager_scheduler;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(*(v2 + v3) + 208);
  return sub_1AFCD26F8;
}

float sub_1AFCD26F8(uint64_t a1)
{
  result = *(a1 + 16);
  *(*(*a1 + *(a1 + 8)) + 208) = result;
  return result;
}

void sub_1AFCD279C()
{
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AFDFDA08();
  v1 = 1;
  sub_1AF75A4B4(v0, 0xD000000000000057, 0x80000001AFF4D710, &v1);
}

uint64_t sub_1AFCD2898()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer);
  if (v1)
  {
    return *(v1 + 272);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AFCD2948(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer);
  if (v2 && *(v2 + 272) != (result & 1))
  {
    *(v2 + 272) = result & 1;
    v3 = *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);

    sub_1AF885E08(v3);
  }

  return result;
}

unsigned __int8 *sub_1AFCD29C4(unsigned __int8 *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer);
  if (v3)
  {
    v4 = *result;
    if (v4 != *(v3 + 272))
    {
      *(v3 + 272) = v4;
      v5 = *(v2 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);

      sub_1AF885E08(v5);
    }
  }

  return result;
}

uint64_t (*sub_1AFCD2A44(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer;
  *a1 = v1;
  *(a1 + 8) = v2;
  v3 = *(v1 + v2);
  if (v3)
  {
    LOBYTE(v3) = *(v3 + 272);
  }

  *(a1 + 16) = v3;
  return sub_1AFCD2A80;
}

uint64_t sub_1AFCD2A80(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 16);
  v3 = *(*result + *(result + 8));
  if (v3 && v2 != *(v3 + 272))
  {
    *(v3 + 272) = v2;
    v4 = *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);

    sub_1AF885E08(v4);
  }

  return result;
}

void sub_1AFCD2E0C()
{
  v1 = *&v0[OBJC_IVAR____TtC3VFX8VFXScene_effects];
  if (v1 >> 62)
  {
    v2 = sub_1AFDFE108();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1B2719C70](v3, v1);
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      sub_1AFCCD794();
      sub_1AFCD73DC();
      sub_1AFDFC638();
    }

    while (v2 != v3);
  }

  sub_1AF666F54(*&v0[OBJC_IVAR____TtC3VFX8VFXScene_entityManager], v0);
}

uint64_t sub_1AFCD2FBC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer;
  v3 = *(a1 + OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer);
  if (v3)
  {
    v4 = v3;
    v5 = v3;
  }

  else
  {
    v6 = CFXGPUDeviceCreate(0);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 1;
    v15 = 0;
    v16 = 1;
    v17 = 0;
    v18 = 1;
    v19 = 1;
    v20 = 260;
    v21 = 0;
    v22 = 0;
    type metadata accessor for Renderer();
    swift_allocObject();
    result = sub_1AF70A2F4(v6, 0, &v11, 0);
    if (!result)
    {
      return result;
    }

    v5 = result;
    v4 = *(a1 + v2);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (*(v4 + 393) != 1)
  {
LABEL_7:

    sub_1AFCD1FAC(v5);
    goto LABEL_8;
  }

LABEL_8:
  sub_1AF6F7F40(v5);
  if (*(*(a1 + OBJC_IVAR____TtC3VFX8VFXScene_loadOptions) + OBJC_IVAR___VFXSceneLoadOptions_setupAsTemplate) == 1)
  {
    *(a1 + OBJC_IVAR____TtC3VFX8VFXScene_templateWasPrepared) = 1;
    v8 = *(a1 + v2);
    if (v8)
    {
      v9 = v8[29];
      swift_retain_n();
      CFXBufferAllocatorPerFrameClear(v9);
      CFXBufferAllocatorPerFrameClear(v8[31]);
      v10 = v8[24];

      *(v10 + 32) = MEMORY[0x1E69E7CC8];
      CFXTextureAllocatorPerFrameClear(*(v10 + 16));
    }
  }
}

uint64_t sub_1AFCD324C(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer);
  if (v1)
  {
    v2 = v1[29];
    swift_retain_n();
    CFXBufferAllocatorPerFrameClear(v2);
    CFXBufferAllocatorPerFrameClear(v1[31]);
    v3 = v1[24];

    *(v3 + 32) = MEMORY[0x1E69E7CC8];
    CFXTextureAllocatorPerFrameClear(*(v3 + 16));
  }

  return result;
}

uint64_t sub_1AFCD3350(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v8 = *(v3 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v7[4] = a2;
  if (*(v8 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread))
  {
    swift_retain_n();

    sub_1AF6CC3F8(sub_1AFCD7434, v7);
  }

  else
  {
    swift_retain_n();
    swift_retain_n();
    sub_1AF667198(v8, v6, a1, a2);
  }
}