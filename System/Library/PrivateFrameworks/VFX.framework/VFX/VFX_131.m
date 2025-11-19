void sub_1AFB23CF8(unint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a1 == 0xFFFFFFFF)
  {
    return;
  }

  v4 = v2;
  v5 = HIDWORD(a1);
  v6 = &unk_1ED72C000;
  v7 = a1;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1;
    if (v5 == 0xFFFFFFFF || *(v8 + 8) == HIDWORD(a1))
    {
      v9 = *(*(*(v2 + 88) + 8 * *(v8 + 6) + 32) + 16);
      v10 = *(v9 + 128);
      if (*(v10 + 16))
      {
        v11 = a1;
        v12 = a2;
        v13 = sub_1AF449CB8(&type metadata for ColorRampComponent);
        a1 = v11;
        v15 = v14;
        a2 = v12;
        if ((v15 & 1) != 0 && *(*(v9 + 24) + 16 * *(*(v10 + 56) + 8 * v13) + 32) == &type metadata for ColorRampComponent)
        {
          return;
        }
      }
    }
  }

  if ((v7 & 0x8000000000000000) == 0 && v7 < *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v16 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v7;
    if (v5 == 0xFFFFFFFF || *(v16 + 8) == v5)
    {
      v17 = *(*(*(v4 + 88) + 8 * *(v16 + 6) + 32) + 16);
      v18 = *(v17 + 128);
      if (*(v18 + 16))
      {
        v19 = a1;
        v20 = a2;
        v21 = sub_1AF449CB8(&type metadata for CurveComponent);
        a1 = v19;
        v23 = v22;
        a2 = v20;
        if ((v23 & 1) != 0 && *(*(v17 + 24) + 16 * *(*(v18 + 56) + 8 * v21) + 32) == &type metadata for CurveComponent)
        {
          return;
        }
      }
    }
  }

  if ((v7 & 0x8000000000000000) == 0 && v7 < *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v24 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v7);
    if (v5 == 0xFFFFFFFF || v24[2] == v5)
    {
      v25 = *(v24 + 2);
      v26 = *(*(v4 + 144) + 8 * *v24 + 32);
      if (*(v26 + 232) <= v25 && *(v26 + 240) > v25)
      {
        v147 = 0;
        v143 = v3;
        v145 = a1;
        v144 = a2;
        v28 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        v29 = *v28;
        v30 = *(v26 + 344);

        os_unfair_lock_lock(v30);
        v146 = v29;
        ecs_stack_allocator_push_snapshot(*(v29 + 32));
        v31 = *(*(v26 + 40) + 16);
        v32 = *(v31 + 128);
        if (*(v32 + 16) && (v33 = sub_1AF449CB8(&type metadata for TextureLoadingOptions), (v34 & 1) != 0) && *(*(v31 + 24) + 16 * *(*(v32 + 56) + 8 * v33) + 32) == &type metadata for TextureLoadingOptions)
        {

          v42 = v147;
        }

        else
        {
          v35 = *(v146 + 32);

          v36 = ecs_stack_allocator_allocate(v35, 8, 8);
          v37 = v36;
          *v36 = v25;
          v38 = *v28;
          v39 = *(v26 + 192);
          if (v39)
          {
            sub_1AF5C3A64(v36, 1, 1, &type metadata for TextureLoadingOptions, &off_1F2543FE0, 1, v39, *(v26 + 200), *(v26 + 208));
          }

          v40 = *(v26 + 40);
          v148 = v37;
          v142 = v38;
          v41 = v38;
          v42 = v147;
          sub_1AF5C3B0C(v40, v26, v37, 1, 1, v41);
          v43 = *(v26 + 24);

          v156 = 0;
          v154 = 0u;
          v155 = 0u;
          v162 = 0;
          memset(v161, 0, sizeof(v161));
          v44 = sub_1AF65A4B4(v43, &type metadata for TextureLoadingOptions, &off_1F2543FE0, 0, 0, &v154, v161);

          sub_1AFB2E634(v161, &qword_1ED72C1C0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
          sub_1AFB2E634(&v154, &qword_1ED72C1C0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
          if ((*(v26 + 240) - *(v26 + 232)) >= 2)
          {
            v45 = *(v26 + 120);
            v152 = *(v26 + 28);
            v151 = *(v26 + 32);
            v46 = *(v26 + 16);
            v47 = *(v46 + 88);
            v141 = v44;
            v48 = *(v26 + 40);
            v49 = v48[200];
            v150 = *(v47 + 8 * v44 + 32);

            if ((v49 & 1) != 0 || *(v150 + 200) == 1)
            {
              *(v46 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
              v48 = *(v26 + 40);
            }

            v50 = v48[212];
            v137 = v45;
            if (v50)
            {
              v136 = 0;
            }

            else
            {
              v136 = *(v150 + 212);
            }

            v135 = v48[208];
            v149 = *(v26 + 128);
            v51 = *(v26 + 256);
            sub_1AF5B5880(v48, v148, 1, 1, 0, v26);
            v139 = *(v26 + 256);
            v52 = v139 - v51;
            v140 = v51;
            if (v139 == v51)
            {
              v53 = 0;
            }

            else
            {
              v53 = v51;
            }

            v148 = v53;
            *&v161[0] = v53;
            v54 = *(*(v26 + 40) + 24);
            v55 = *(v54 + 16);
            v147 = v42;
            if (v55)
            {
              v138 = v5;
              v56 = v54 + 32;
              v134 = v54;

              for (i = 0; i != v55; ++i)
              {
                v58 = v56 + 40 * i;
                if ((*(v58 + 32) & 1) == 0)
                {
                  v59 = *(v150 + 24);
                  v60 = *(v59 + 16);
                  if (v60)
                  {
                    v61 = (v59 + 32);
                    while (*v61 != *v58)
                    {
                      v61 += 5;
                      if (!--v60)
                      {
                        goto LABEL_47;
                      }
                    }
                  }

                  else
                  {
LABEL_47:
                    sub_1AF640BC8();
                  }
                }
              }

              v5 = v138;
              v42 = v147;
            }

            if (*(v46 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
            {
              vfx_counters.add(_:_:)(*(v46 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v26 + 72) * v52);
            }

            if (*(v26 + 184))
            {
              v62 = 0;
            }

            else
            {
              v62 = *(v26 + 168);
            }

            v160 = 0;

            MEMORY[0x1EEE9AC00](v63, v64);
            v65 = v152;
            v66 = v151;
            DWORD2(v155) = -1;
            v156 = v140;
            v157 = v139;
            v158 = v140;
            v159 = v139;
            *&v154 = v140;
            *(&v154 + 1) = v139;
            *&v155 = v62;
            if (v52 >= 1)
            {
              do
              {
                v153 = v66;
                sub_1AF6248A8(v141, v65 | (v66 << 32), v137, v46, &v154, sub_1AF5C5E08);
                v66 = v151;
                v65 = v152;
              }

              while ((*(&v154 + 1) - v154) > 0);
            }

            v67 = *(v26 + 192);
            v6 = &unk_1ED72C000;
            if (!v67)
            {
              goto LABEL_99;
            }

            v68 = *(v26 + 208);
            sub_1AF75D364(v140, v139, v67);
            v69 = v140;
            v70 = v139;
            v71 = v68;
            v42 = v147;
LABEL_98:
            sub_1AF75D364(v69, v70, v71);
LABEL_99:

            goto LABEL_100;
          }

          if ((sub_1AF649CEC() & 1) == 0)
          {
            v138 = v5;
            v72 = *(v26 + 232);
            v148 = *(v26 + 240);
            v135 = *(v26 + 120);
            v152 = *(v26 + 28);
            v151 = *(v26 + 32);
            v73 = *(v26 + 16);
            v74 = *(v73 + 88);
            v141 = v44;
            v75 = *(v26 + 40);
            v76 = v75[200];
            v150 = *(v74 + 8 * v44 + 32);

            if ((v76 & 1) != 0 || *(v150 + 200) == 1)
            {
              *(v73 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
              v75 = *(v26 + 40);
            }

            if (v75[212])
            {
              v137 = 0;
            }

            else
            {
              v137 = *(v150 + 212);
            }

            v136 = v75[208];
            v149 = *(v26 + 128);
            v77 = *(v26 + 256);
            sub_1AF5B4FCC(v75, v72, v148, 0, v26);
            v140 = *(v26 + 256);
            v78 = v140 - v77;
            if (v140 == v77)
            {
              v79 = 0;
            }

            else
            {
              v79 = v77;
            }

            v148 = v79;
            *&v161[0] = v79;
            v80 = *(*(v26 + 40) + 24);
            v81 = *(v80 + 16);
            v139 = v77;
            if (v81)
            {
              v147 = v42;
              v82 = v80 + 32;
              v134 = v80;

              for (j = 0; j != v81; ++j)
              {
                v84 = v82 + 40 * j;
                if ((*(v84 + 32) & 1) == 0)
                {
                  v85 = *(v150 + 24);
                  v86 = *(v85 + 16);
                  if (v86)
                  {
                    v87 = (v85 + 32);
                    while (*v87 != *v84)
                    {
                      v87 += 5;
                      if (!--v86)
                      {
                        goto LABEL_77;
                      }
                    }
                  }

                  else
                  {
LABEL_77:
                    sub_1AF640BC8();
                  }
                }
              }

              v77 = v139;
              v42 = v147;
            }

            v5 = v138;
            if (*(v73 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
            {
              vfx_counters.add(_:_:)(*(v73 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v26 + 72) * v78);
            }

            if (*(v26 + 184))
            {
              v88 = 0;
            }

            else
            {
              v88 = *(v26 + 168);
            }

            v160 = 0;

            v148 = &v133;
            MEMORY[0x1EEE9AC00](v89, v90);
            v91 = v152;
            v92 = v151;
            DWORD2(v155) = -1;
            v156 = v77;
            v157 = v140;
            v158 = v77;
            v159 = v140;
            *&v154 = v77;
            *(&v154 + 1) = v140;
            *&v155 = v88;
            if (v78 < 1)
            {
            }

            else
            {
              v93 = v141;
              v94 = v135;
              do
              {
                v153 = v92;
                sub_1AF6248A8(v93, v91 | (v92 << 32), v94, v73, &v154, sub_1AF5C44B0);
                v92 = v151;
                v91 = v152;
              }

              while ((*(&v154 + 1) - v154) > 0);

              v77 = v139;
            }

            v95 = *(v26 + 192);
            v6 = &unk_1ED72C000;
            if (!v95)
            {
              goto LABEL_99;
            }

            v96 = *(v26 + 208);
            v97 = v140;
            sub_1AF75D364(v77, v140, v95);
            v69 = v77;
            v70 = v97;
            v71 = v96;
            goto LABEL_98;
          }

          sub_1AF649D40(v44);
        }

LABEL_100:
        sub_1AF67FD1C(v145, v4, v143);
        if (v42)
        {

          os_unfair_lock_unlock(*(v26 + 344));
          __break(1u);
          return;
        }

        ecs_stack_allocator_pop_snapshot(*(v146 + 32));
        os_unfair_lock_unlock(*(v26 + 344));

        LOBYTE(a2) = v144;
      }
    }
  }

  v98 = (v4 + v6[284]);
  v100 = v7 >= 0 && v7 < v98[1];
  if (a2)
  {
    if (v100)
    {
      v101 = (*v98 + 12 * v7);
      v102 = *(v101 + 2);
      if (v5 == 0xFFFFFFFF || v101[2] == v5)
      {
        v103 = *(*(v4 + 144) + 8 * *v101 + 32);
        v104 = *(v103 + 48);
        v105 = (v104 + 32);
        v106 = *(v104 + 16) + 1;
        while (--v106)
        {
          v107 = v105 + 5;
          v108 = *v105;
          v105 += 5;
          if (v108 == &type metadata for TextureLoadPolicy)
          {
            if (*(&(*(v107 - 2))->Kind + 4 * v102 + *(v103 + 128)) != 1)
            {
              return;
            }

            if (*(v103 + 232) > v102 || *(v103 + 240) <= v102)
            {
              return;
            }

            v110 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
            v111 = *v110;
            v112 = *(v103 + 344);

            os_unfair_lock_lock(v112);
            v114 = *(v111 + 32);
            v113 = (v111 + 32);
            ecs_stack_allocator_push_snapshot(v114);
            if (sub_1AF657F68(&type metadata for TextureLoadRequestCPU))
            {
              goto LABEL_136;
            }

            v115 = *v113;

            v116 = ecs_stack_allocator_allocate(v115, 8, 8);
            *v116 = v102;
            v117 = *v110;
            v118 = &type metadata for TextureLoadRequestCPU;
            v119 = &off_1F25460F8;
            goto LABEL_135;
          }
        }
      }
    }
  }

  else if (v100)
  {
    v120 = (*v98 + 12 * v7);
    v121 = *(v120 + 2);
    if (v5 == 0xFFFFFFFF || v120[2] == v5)
    {
      v103 = *(*(v4 + 144) + 8 * *v120 + 32);
      v122 = *(v103 + 48);
      v123 = (v122 + 32);
      v124 = *(v122 + 16) + 1;
      while (--v124)
      {
        v125 = v123 + 5;
        v126 = *v123;
        v123 += 5;
        if (v126 == &type metadata for TextureLoadPolicy)
        {
          if (*(&(*(v125 - 2))->Kind + 4 * v121 + *(v103 + 128) + 1) == 1 && *(v103 + 232) <= v121 && *(v103 + 240) > v121)
          {
            v128 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
            v129 = *v128;
            v130 = *(v103 + 344);

            os_unfair_lock_lock(v130);
            v131 = *(v129 + 32);
            v113 = (v129 + 32);
            ecs_stack_allocator_push_snapshot(v131);
            if (!sub_1AF657F68(&type metadata for TextureLoadRequestGPU))
            {
              v132 = *v113;

              v116 = ecs_stack_allocator_allocate(v132, 8, 8);
              *v116 = v121;
              v117 = *v128;
              v118 = &type metadata for TextureLoadRequestGPU;
              v119 = &off_1F2544788;
LABEL_135:
              sub_1AF648EC4(v118, v119, v116, 1, 1, v117);
            }

LABEL_136:
            ecs_stack_allocator_pop_snapshot(*v113);
            os_unfair_lock_unlock(*(v103 + 344));
          }

          return;
        }
      }
    }
  }
}

uint64_t sub_1AFB24B80(uint64_t a1, unint64_t a2)
{
  result = sub_1AF3C941C(a2);
  if (BYTE3(result) != 2 && (result & 0xFF00) == 0x100)
  {
    swift_unknownObjectRetain();
    sub_1AF6700C0(a2, a1, &type metadata for TextureLoadRequestGPU, &off_1F2544788, a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1AFB24C28(uint64_t a1)
{
  v3 = v1[5];
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = v1[10];
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  os_unfair_lock_unlock(*(v4 + 40));
  v8 = v1[15];
  swift_getObjectType();
  v9 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v8);

  sub_1AF6B1B20(a1, v9, v8);
  os_unfair_lock_unlock(*(v4 + 40));
  v10 = v1[25];
  swift_getObjectType();
  v11 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v10);

  sub_1AF6B1B20(a1, v11, v10);
  os_unfair_lock_unlock(*(v4 + 40));
  v12 = v1[30];
  swift_getObjectType();
  v13 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v12);

  sub_1AF6B1B20(a1, v13, v12);
  os_unfair_lock_unlock(*(v4 + 40));
  v14 = v1[35];
  swift_getObjectType();
  v15 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v14);

  sub_1AF6B1B20(a1, v15, v14);
  os_unfair_lock_unlock(*(v4 + 40));
  v16 = v1[20];
  swift_getObjectType();
  v17 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v16);

  sub_1AF6B1B20(a1, v17, v16);
  os_unfair_lock_unlock(*(v4 + 40));
  v18 = v1[60];
  swift_getObjectType();
  v19 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v18);

  sub_1AF6B1B20(a1, v19, v18);
  os_unfair_lock_unlock(*(v4 + 40));
  v20 = v1[45];
  swift_getObjectType();
  v21 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v20);

  sub_1AF6B1B20(a1, v21, v20);
  os_unfair_lock_unlock(*(v4 + 40));
  v22 = v1[40];
  swift_getObjectType();
  v23 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v22);

  sub_1AF6B1B20(a1, v23, v22);
  os_unfair_lock_unlock(*(v4 + 40));
  v24 = v1[55];
  swift_getObjectType();
  v25 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v24);

  sub_1AF6B1B20(a1, v25, v24);
  os_unfair_lock_unlock(*(v4 + 40));
  v26 = v1[50];
  swift_getObjectType();
  v27 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v26);

  sub_1AF6B1B20(a1, v27, v26);
  os_unfair_lock_unlock(*(v4 + 40));
  if (qword_1ED725978 != -1)
  {
    swift_once();
  }

  v28 = xmmword_1ED73B568;
  swift_getObjectType();
  v29 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v28);

  sub_1AF6B1B20(a1, v29, v28);
  v30 = *(v4 + 40);

  os_unfair_lock_unlock(v30);
}

void sub_1AFB2523C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = 0;
  v7 = *(v2 + 56);
  v198[0] = *(v2 + 40);
  v198[1] = v7;
  v199 = *(v2 + 72);
  sub_1AF6B06C0(a1, v198, 0x200000000, &v170);
  if (v170)
  {
    if (v177 >= 1)
    {
      v106 = v174;
      if (v174)
      {
        v100 = a2;
        v104 = v173;
        v8 = v176;
        v114 = *(v176 + 32);
        v9 = *(v175 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v186 = v170;
        v187 = v171;
        v188 = v172;
        v108 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
        sub_1AFB2EA40(&v170, &v148, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
        v10 = 0;
        v103 = v9;
        while (1)
        {
          v116 = v6;
          v112 = v10;
          v11 = (v104 + 48 * v10);
          v12 = *v11;
          v13 = v11[1];
          v14 = *(v11 + 2);
          v15 = *(v11 + 3);
          v17 = *(v11 + 4);
          v16 = *(v11 + 5);
          if (v9)
          {
            v18 = *(v16 + 376);

            os_unfair_lock_lock(v18);
            os_unfair_lock_lock(*(v16 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v114);
          v19 = *(v8 + 64);
          v196[0] = *(v8 + 48);
          v196[1] = v19;
          v197 = *(v8 + 80);
          v20 = *(*(*(*(v16 + 40) + 16) + 32) + 16) + 1;
          *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v20, 8);
          *(v8 + 56) = v20;
          *(v8 + 72) = 0;
          *(v8 + 80) = 0;
          *(v8 + 64) = 0;
          v110 = v16;
          v21 = sub_1AF64B110(&type metadata for PointCacheGenerator, &off_1F2567FB0, v14, v15, v17, v8);
          if (v14)
          {
            v22 = v108;
            if (v17)
            {
              v23 = 0;
              while (1)
              {
                v25 = (v21 + 32 * v23);
                v27 = *v25;
                v26 = v25[1];
                v28 = v27 == -1 && v26 == 0;
                if (!v28 && (v27 & 0x80000000) == 0 && v22[1] > v27)
                {
                  v29 = (*v22 + 12 * v27);
                  if (v26 == -1 || v29[2] == v26)
                  {
                    v31 = *(v29 + 2);
                    v32 = *(*(a1 + 144) + 8 * *v29 + 32);
                    v33 = *(v32 + 48);
                    v34 = (v33 + 32);
                    v35 = *(v33 + 16) + 1;
                    do
                    {
                      if (!--v35)
                      {
                        goto LABEL_17;
                      }

                      v36 = v34 + 5;
                      v37 = *v34;
                      v34 += 5;
                    }

                    while (v37 != &type metadata for MeshModel);
                    v38 = *(&(*(v36 - 2))[v31].Description + *(v32 + 128));
                    if (*(v38 + 16))
                    {
                      break;
                    }
                  }
                }

LABEL_17:
                if (++v23 == v17)
                {
                  goto LABEL_13;
                }
              }

              v39 = *(v38 + 32);
              sub_1AF3CB184(v39, &v148);
              v163 = v148;
              *v164 = v149;
              v167 = v152;
              v168 = v153;
              v169 = v154;
              v165 = v150;
              v166 = v151;
              if (!*(&v148 + 1))
              {
                goto LABEL_16;
              }

              v40 = v164[1];
              if (!v164[1])
              {
                goto LABEL_37;
              }

              Class = object_getClass(v164[1]);
              if (Class == _TtC3VFX13PBRParameters)
              {

                swift_unknownObjectRetain();
                sub_1AFB2E5D4(&v163, &qword_1ED7220C0, &type metadata for Material, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
                v47 = v40[8];
                v46 = v40[9];
              }

              else
              {
                if (Class != _TtC3VFX16PrelitParameters)
                {
LABEL_37:
                  sub_1AF3CA6C0(v39, &v118);
                  v145 = v130;
                  v146 = v131;
                  v147 = v132;
                  v141 = v126;
                  v142 = v127;
                  v143 = v128;
                  v144 = v129;
                  v137 = v122;
                  v138 = v123;
                  v139 = v124;
                  v140 = v125;
                  v133 = v118;
                  v134 = v119;
                  v135 = v120;
                  v136 = v121;
                  v160 = v130;
                  v161 = v131;
                  v162 = v132;
                  v156 = v126;
                  v157 = v127;
                  v158 = v128;
                  v159 = v129;
                  v152 = v122;
                  v153 = v123;
                  v154 = v124;
                  v155 = v125;
                  v148 = v118;
                  v149 = v119;
                  v150 = v120;
                  v151 = v121;
                  if (sub_1AF448314(&v148) == 1)
                  {
                    sub_1AFB2E5D4(&v163, &qword_1ED7220C0, &type metadata for Material, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
                  }

                  else if (*(v152 + 16))
                  {
                    v43 = *(v152 + 32);
                    v42 = *(v152 + 40);
                    v96 = *(v152 + 48);
                    v98 = *(v152 + 56);

                    v95 = v43;
                    sub_1AF64E4D0(v43, v42, v96, v98);
                    v44 = MEMORY[0x1E69E6720];
                    sub_1AFB2E5D4(&v133, &qword_1ED7255C8, &type metadata for MaterialRuntime, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
                    sub_1AFB2E5D4(&v163, &qword_1ED7220C0, &type metadata for Material, v44, sub_1AFB2E7BC);

                    if (v98 == 2)
                    {
                      v45 = v95;
                      v46 = HIDWORD(v95);
                      goto LABEL_44;
                    }

                    sub_1AF88DCFC(v95, v42, v96, v98);

LABEL_45:
                  }

                  else
                  {

                    v48 = MEMORY[0x1E69E6720];
                    sub_1AFB2E5D4(&v133, &qword_1ED7255C8, &type metadata for MaterialRuntime, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
                    sub_1AFB2E5D4(&v163, &qword_1ED7220C0, &type metadata for Material, v48, sub_1AFB2E7BC);
                  }

LABEL_16:
                  v22 = v108;
                  goto LABEL_17;
                }

                swift_unknownObjectRetain();
                sub_1AFB2E5D4(&v163, &qword_1ED7220C0, &type metadata for Material, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
                v47 = v40[4];
                v46 = v40[5];
              }

              swift_unknownObjectRelease();
              v45 = v47;
LABEL_44:
              sub_1AFB23CF8(v45 | (v46 << 32), 1);

              goto LABEL_45;
            }
          }

          else
          {
            v24 = v108;
            if (v12 != v13)
            {
              while (1)
              {
                v49 = (v21 + 32 * v12);
                v51 = *v49;
                v50 = v49[1];
                v52 = v51 == -1 && v50 == 0;
                if (!v52 && (v51 & 0x80000000) == 0 && v24[1] > v51)
                {
                  v53 = (*v24 + 12 * v51);
                  if (v50 == -1 || v53[2] == v50)
                  {
                    v55 = *(v53 + 2);
                    v56 = *(*(a1 + 144) + 8 * *v53 + 32);
                    v57 = *(v56 + 48);
                    v58 = (v57 + 32);
                    v59 = *(v57 + 16) + 1;
                    do
                    {
                      if (!--v59)
                      {
                        goto LABEL_50;
                      }

                      v60 = v58 + 5;
                      v61 = *v58;
                      v58 += 5;
                    }

                    while (v61 != &type metadata for MeshModel);
                    v62 = *(&(*(v60 - 2))[v55].Description + *(v56 + 128));
                    if (*(v62 + 16))
                    {
                      break;
                    }
                  }
                }

LABEL_50:
                if (++v12 == v13)
                {
                  goto LABEL_13;
                }
              }

              v63 = *(v62 + 32);
              sub_1AF3CB184(v63, &v148);
              v163 = v148;
              *v164 = v149;
              v167 = v152;
              v168 = v153;
              v169 = v154;
              v165 = v150;
              v166 = v151;
              if (!*(&v148 + 1))
              {
                goto LABEL_49;
              }

              v64 = v164[1];
              if (!v164[1])
              {
                goto LABEL_70;
              }

              v65 = object_getClass(v164[1]);
              if (v65 == _TtC3VFX13PBRParameters)
              {

                swift_unknownObjectRetain();
                sub_1AFB2E5D4(&v163, &qword_1ED7220C0, &type metadata for Material, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
                v71 = v64[8];
                v70 = v64[9];
              }

              else
              {
                if (v65 != _TtC3VFX16PrelitParameters)
                {
LABEL_70:
                  sub_1AF3CA6C0(v63, &v118);
                  v145 = v130;
                  v146 = v131;
                  v147 = v132;
                  v141 = v126;
                  v142 = v127;
                  v143 = v128;
                  v144 = v129;
                  v137 = v122;
                  v138 = v123;
                  v139 = v124;
                  v140 = v125;
                  v133 = v118;
                  v134 = v119;
                  v135 = v120;
                  v136 = v121;
                  v160 = v130;
                  v161 = v131;
                  v162 = v132;
                  v156 = v126;
                  v157 = v127;
                  v158 = v128;
                  v159 = v129;
                  v152 = v122;
                  v153 = v123;
                  v154 = v124;
                  v155 = v125;
                  v148 = v118;
                  v149 = v119;
                  v150 = v120;
                  v151 = v121;
                  if (sub_1AF448314(&v148) == 1)
                  {
                    sub_1AFB2E5D4(&v163, &qword_1ED7220C0, &type metadata for Material, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
                  }

                  else if (*(v152 + 16))
                  {
                    v66 = *(v152 + 32);
                    v67 = *(v152 + 40);
                    v97 = *(v152 + 48);
                    v99 = *(v152 + 56);

                    v94 = v67;
                    sub_1AF64E4D0(v66, v67, v97, v99);
                    v68 = MEMORY[0x1E69E6720];
                    sub_1AFB2E5D4(&v133, &qword_1ED7255C8, &type metadata for MaterialRuntime, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
                    sub_1AFB2E5D4(&v163, &qword_1ED7220C0, &type metadata for Material, v68, sub_1AFB2E7BC);

                    if (v99 == 2)
                    {
                      v69 = v66;
                      v70 = HIDWORD(v66);
                      goto LABEL_77;
                    }

                    sub_1AF88DCFC(v66, v94, v97, v99);

LABEL_78:
                  }

                  else
                  {

                    v102 = MEMORY[0x1E69E6720];
                    sub_1AFB2E5D4(&v133, &qword_1ED7255C8, &type metadata for MaterialRuntime, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
                    sub_1AFB2E5D4(&v163, &qword_1ED7220C0, &type metadata for Material, v102, sub_1AFB2E7BC);
                  }

LABEL_49:
                  v24 = v108;
                  goto LABEL_50;
                }

                swift_unknownObjectRetain();
                sub_1AFB2E5D4(&v163, &qword_1ED7220C0, &type metadata for Material, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
                v71 = v64[4];
                v70 = v64[5];
              }

              swift_unknownObjectRelease();
              v69 = v71;
LABEL_77:
              sub_1AFB23CF8(v69 | (v70 << 32), 1);

              goto LABEL_78;
            }
          }

LABEL_13:
          v6 = v116;
          sub_1AF630994(v8, &v186, v196);
          sub_1AF62D29C(v110);
          ecs_stack_allocator_pop_snapshot(v114);
          v9 = v103;
          if (v103)
          {
            os_unfair_lock_unlock(*(v110 + 344));
            os_unfair_lock_unlock(*(v110 + 376));
          }

          v10 = v112 + 1;
          if (v112 + 1 == v106)
          {
            sub_1AFB2E5D4(&v170, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
            a2 = v100;
            break;
          }
        }
      }
    }

    sub_1AFB2E5D4(&v170, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
  }

  v72 = *(v3 + 96);
  v194[0] = *(v3 + 80);
  v194[1] = v72;
  v195 = *(v3 + 112);
  sub_1AF6B06C0(a1, v194, 0x200000000, &v178);
  if (v178)
  {
    v101 = a2;
    if (v185 >= 1 && (v107 = v182) != 0)
    {
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v105 = v181;
      v76 = v184;
      v115 = *(v183 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v113 = *(v184 + 32);
      v189 = v178;
      v190 = v179;
      v191 = v180;
      do
      {
        v117 = v6;
        v77 = (v105 + 48 * v73);
        v111 = *v77;
        v109 = v77[1];
        v79 = *(v77 + 2);
        v78 = *(v77 + 3);
        v81 = *(v77 + 4);
        v80 = *(v77 + 5);
        if (v115)
        {
          v82 = *(v80 + 376);

          os_unfair_lock_lock(v82);
          os_unfair_lock_lock(*(v80 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v113);
        v83 = *(v76 + 64);
        v192[0] = *(v76 + 48);
        v192[1] = v83;
        v193 = *(v76 + 80);
        v84 = *(*(*(*(v80 + 40) + 16) + 32) + 16) + 1;
        *(v76 + 48) = ecs_stack_allocator_allocate(*(v76 + 32), 48 * v84, 8);
        *(v76 + 56) = v84;
        *(v76 + 72) = 0;
        *(v76 + 80) = 0;
        *(v76 + 64) = 0;
        v85 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v79, v78, v81, v76);
        v86 = v85;
        if (v79)
        {
          for (; v81; --v81)
          {
            v87 = *(v86 + 61);
            v74 |= v87;
            v75 |= v87 ^ 1;
            v88 = *(v86 + 80);
            v122 = *(v86 + 64);
            v123 = v88;
            LODWORD(v124) = *(v86 + 96);
            v89 = *(v86 + 16);
            v118 = *v86;
            v119 = v89;
            v90 = *(v86 + 48);
            v120 = *(v86 + 32);
            v121 = v90;
            sub_1AFB2C5A4(a1, &v118);
            v166 = *(v86 + 48);
            v167 = *(v86 + 64);
            v168 = *(v86 + 80);
            LODWORD(v169) = *(v86 + 96);
            v163 = *v86;
            *v164 = *(v86 + 16);
            v165 = *(v86 + 32);
            sub_1AFB2C84C(a1, &v163);
            v86 += 104;
          }
        }

        else if (v111 != v109)
        {
          v91 = v109 - v111;
          v92 = v85 + 104 * v111;
          do
          {
            v93 = *(v92 + 61);
            v151 = *(v92 + 48);
            v152 = *(v92 + 64);
            v153 = *(v92 + 80);
            LODWORD(v154) = *(v92 + 96);
            v74 |= v93;
            v75 |= v93 ^ 1;
            v148 = *v92;
            v149 = *(v92 + 16);
            v150 = *(v92 + 32);
            sub_1AFB2C5A4(a1, &v148);
            v136 = *(v92 + 48);
            v137 = *(v92 + 64);
            v138 = *(v92 + 80);
            LODWORD(v139) = *(v92 + 96);
            v133 = *v92;
            v134 = *(v92 + 16);
            v135 = *(v92 + 32);
            sub_1AFB2C84C(a1, &v133);
            v92 += 104;
            --v91;
          }

          while (v91);
        }

        v6 = v117;
        sub_1AF630994(v76, &v189, v192);
        sub_1AF62D29C(v80);
        ecs_stack_allocator_pop_snapshot(v113);
        if (v115)
        {
          os_unfair_lock_unlock(*(v80 + 344));
          os_unfair_lock_unlock(*(v80 + 376));
        }

        ++v73;
      }

      while (v73 != v107);
    }

    else
    {
      LOBYTE(v74) = 0;
      LOBYTE(v75) = 0;
    }

    sub_1AFB2E5D4(&v178, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
    a2 = v101;
  }

  else
  {
    LOBYTE(v74) = 0;
    LOBYTE(v75) = 0;
  }

  sub_1AFB26BEC(a1);
  sub_1AFB26F58(a1);
  sub_1AFB26248(a1, v75 & 1, v74 & 1);
  sub_1AFB28950(a1, a2);
  sub_1AFB28CF8(a1);
  sub_1AFB2A848(a1);
  sub_1AFB2CD6C(a1);
}

uint64_t sub_1AFB26248(uint64_t a1, char a2, char a3)
{
  v7 = *(v3 + 136);
  v100[0] = *(v3 + 120);
  v100[1] = v7;
  v101 = *(v3 + 152);
  sub_1AF6B06C0(a1, v100, 0x200000000, v91);
  v79 = *v91;
  if (!*v91)
  {
    goto LABEL_88;
  }

  v78 = *&v91[40];
  v8 = *(&v92 + 1);
  v83 = *(&v93 + 1);
  v95 = *&v91[8];
  v96 = *&v91[24];
  if (v94 <= 0 || !*(&v92 + 1))
  {
    sub_1AFB2E5D4(v91, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
LABEL_88:
    v71 = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E7CC0];
LABEL_90:
    sub_1AFB22C80(v71, 0);
    if (a2)
    {
      sub_1AFB22C80(v12, 1);
    }

    if (a3)
    {
      sub_1AFB22C80(v12, 0);
    }
  }

  v74 = a2;
  v75 = a3;
  v9 = *(*(&v93 + 1) + 32);
  v82 = *(v93 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v86 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v90[2] = *&v91[32];
  v90[3] = v92;
  v90[4] = v93;
  v90[5] = v94;
  v90[0] = *v91;
  v90[1] = *&v91[16];
  sub_1AF5DD298(v90, v88);
  v10 = 0;
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v87 = MEMORY[0x1E69E7CC0];
  v76 = v9;
  v77 = v8;
  while (1)
  {
    v80 = v11;
    v81 = v10;
    v13 = (v78 + 48 * v10);
    v15 = *v13;
    v14 = v13[1];
    v17 = *(v13 + 2);
    v16 = *(v13 + 3);
    v18 = *(v13 + 4);
    v19 = *(v13 + 5);
    if (v82)
    {
      v20 = *(v19 + 376);

      os_unfair_lock_lock(v20);
      os_unfair_lock_lock(*(v19 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v9);
    v21 = *(v83 + 64);
    v88[0] = *(v83 + 48);
    v88[1] = v21;
    v89 = *(v83 + 80);
    v22 = *(*(*(*(v19 + 40) + 16) + 32) + 16) + 1;
    *(v83 + 48) = ecs_stack_allocator_allocate(*(v83 + 32), 48 * v22, 8);
    *(v83 + 56) = v22;
    *(v83 + 72) = 0;
    *(v83 + 80) = 0;
    *(v83 + 64) = 0;
    v23 = sub_1AF64B110(&type metadata for SDFTextureGenerator, &off_1F252FC58, v17, v16, v18, v83);
    if (!v17)
    {
      if (v15 == v14)
      {
        goto LABEL_47;
      }

      while (1)
      {
        while (1)
        {
          v48 = v15;

          if (*(v19 + 184))
          {
            goto LABEL_95;
          }

          v50 = *(*(v19 + 168) + 4 * v15);
          v51 = *(*(v49 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v50 + 8);

          v52 = *(v12 + 2);
          if (v52)
          {
            v53 = v12 + 36;
            v54 = *(v12 + 2);
            while (*(v53 - 1) != v50 || *v53 != v51)
            {
              v53 += 2;
              if (!--v54)
              {
                goto LABEL_59;
              }
            }
          }

          else
          {
LABEL_59:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_1AF4217DC(0, v52 + 1, 1, v12);
            }

            v57 = *(v12 + 2);
            v56 = *(v12 + 3);
            if (v57 >= v56 >> 1)
            {
              v12 = sub_1AF4217DC(v56 > 1, v57 + 1, 1, v12);
            }

            *(v12 + 2) = v57 + 1;
            v58 = &v12[8 * v57];
            *(v58 + 8) = v50;
            *(v58 + 9) = v51;
          }

          v15 = v48 + 1;
          v59 = *(v23 + 24 * v48);
          v60 = v59.i32[0] == -1 && v59.i32[1] == 0;
          if (!v60 && (v59.i32[0] & 0x80000000) == 0 && v86[1] > v59.i32[0] && (v59.i32[1] == -1 || *(*v86 + 12 * v59.i32[0] + 8) == v59.i32[1]))
          {
            break;
          }

LABEL_50:
          if (v15 == v14)
          {
            goto LABEL_47;
          }
        }

        v62 = *(v87 + 2);
        if (v62)
        {
          v63 = (v87 + 32);
          v64 = *(v87 + 2);
          while (1)
          {
            v65 = vceq_s32(*v63, v59);
            if (v65.i32[0] & v65.i32[1])
            {
              goto LABEL_50;
            }

            ++v63;
            if (!--v64)
            {
              v85 = *(v23 + 24 * v48);
              v66 = v62 + 1;
              goto LABEL_80;
            }
          }
        }

        v85 = *(v23 + 24 * v48);
        v66 = 1;
LABEL_80:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = sub_1AF4217DC(0, v66, 1, v87);
        }

        v68 = *(v87 + 2);
        v67 = *(v87 + 3);
        v69 = v85;
        if (v68 >= v67 >> 1)
        {
          v70 = sub_1AF4217DC(v67 > 1, v68 + 1, 1, v87);
          v69 = v85;
          v87 = v70;
        }

        *(v87 + 2) = v68 + 1;
        *&v87[8 * v68 + 32] = v69;
        if (v15 == v14)
        {
          goto LABEL_47;
        }
      }
    }

    if (v18)
    {
      break;
    }

LABEL_47:
    v11 = v80;
    v97 = v79;
    v98 = v95;
    v99 = v96;
    sub_1AF630994(v83, &v97, v88);
    sub_1AF62D29C(v19);
    v9 = v76;
    ecs_stack_allocator_pop_snapshot(v76);
    if (v82)
    {
      os_unfair_lock_unlock(*(v19 + 344));
      os_unfair_lock_unlock(*(v19 + 376));
    }

    v10 = v81 + 1;
    if (v81 + 1 == v77)
    {
      v72 = MEMORY[0x1E69E6720];
      sub_1AFB2E5D4(v91, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
      sub_1AFB2E5D4(v91, &qword_1ED725EA0, &type metadata for QueryResult, v72, sub_1AFB2E7BC);
      a2 = v74;
      a3 = v75;
      v71 = v87;
      goto LABEL_90;
    }
  }

  v24 = 0;
  while (1)
  {
    v25 = v17[v24];

    if (*(v19 + 184))
    {
      break;
    }

    v27 = *(*(v19 + 168) + 4 * v25);
    v28 = *(*(v26 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v27 + 8);

    v29 = *(v12 + 2);
    if (v29)
    {
      v30 = v12 + 36;
      v31 = *(v12 + 2);
      while (*(v30 - 1) != v27 || *v30 != v28)
      {
        v30 += 2;
        if (!--v31)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1AF4217DC(0, v29 + 1, 1, v12);
      }

      v34 = *(v12 + 2);
      v33 = *(v12 + 3);
      if (v34 >= v33 >> 1)
      {
        v12 = sub_1AF4217DC(v33 > 1, v34 + 1, 1, v12);
      }

      *(v12 + 2) = v34 + 1;
      v35 = &v12[8 * v34];
      *(v35 + 8) = v27;
      *(v35 + 9) = v28;
    }

    v36 = *(v23 + 24 * v24);
    if (v36.i32[0] != -1 || v36.i32[1] != 0)
    {
      v38 = v87;
      if ((v36.i32[0] & 0x80000000) == 0 && v86[1] > v36.i32[0] && (v36.i32[1] == -1 || *(*v86 + 12 * v36.i32[0] + 8) == v36.i32[1]))
      {
        v40 = *(v87 + 2);
        if (v40)
        {
          v41 = 32;
          v42 = *(v87 + 2);
          while (1)
          {
            v43 = vceq_s32(*&v87[v41], v36);
            if (v43.i32[0] & v43.i32[1])
            {
              break;
            }

            v41 += 8;
            if (!--v42)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
LABEL_42:
          v84 = *(v23 + 24 * v24);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = sub_1AF4217DC(0, v40 + 1, 1, v87);
          }

          v45 = *(v38 + 2);
          v44 = *(v38 + 3);
          v46 = v84;
          if (v45 >= v44 >> 1)
          {
            v47 = sub_1AF4217DC(v44 > 1, v45 + 1, 1, v38);
            v46 = v84;
            v38 = v47;
          }

          *(v38 + 2) = v45 + 1;
          v87 = v38;
          *&v38[8 * v45 + 32] = v46;
        }
      }
    }

    if (++v24 == v18)
    {
      goto LABEL_47;
    }
  }

LABEL_95:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

unint64_t sub_1AFB26A0C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_1AF441150(a1, v2);
  v4 = (*(v3 + 32))(v2, v3);
  if (sub_1AF65A128(v4))
  {
    v5 = a1[3];
    v6 = a1[4];
    sub_1AF441150(a1, v5);
    v7 = (*(v6 + 32))(v5, v6);
    sub_1AF6B05F4(v7);
  }

  sub_1AF441194(a1, v17);
  sub_1AF5C5358(0, &qword_1ED724130);
  if (swift_dynamicCast())
  {
    if (sub_1AF65A128(v14))
    {
      sub_1AF6B05F4(v14);
    }

    if (sub_1AF65A128(v15 | (v16 << 32)))
    {
      sub_1AF6B05F4(v15 | (v16 << 32));
    }
  }

  sub_1AF441194(a1, v17);
  result = swift_dynamicCast();
  if ((result & 1) != 0 && !v9)
  {
    if (v10 != -1 || v11)
    {
      result = sub_1AF65A128(v10 | (v11 << 32));
      if (result)
      {
        result = sub_1AF6B05F4(v10 | (v11 << 32));
      }
    }

    if (v12 != -1 || v13)
    {
      result = sub_1AF65A128(v12 | (v13 << 32));
      if (result)
      {
        return sub_1AF6B05F4(v12 | (v13 << 32));
      }
    }
  }

  return result;
}

uint64_t sub_1AFB26BEC(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 176);
  v39[0] = *(v1 + 160);
  v39[1] = v3;
  v40 = *(v1 + 192);
  sub_1AF6B06C0(a1, v39, 0x200000000, v32);
  if (*v32)
  {
    if (v35 > 0 && (v25 = *(&v33 + 1)) != 0)
    {
      v24 = *&v32[40];
      v4 = *(&v34 + 1);
      v27 = *(v34 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v26 = *(*(&v34 + 1) + 32);
      v36 = *v32;
      v37 = *&v32[8];
      v38 = *&v32[24];
      v30[2] = *&v32[32];
      v30[3] = v33;
      v30[4] = v34;
      v30[5] = v35;
      v30[0] = *v32;
      v30[1] = *&v32[16];
      sub_1AF5DD298(v30, v28);
      v5 = 0;
      do
      {
        v6 = (v24 + 48 * v5);
        v8 = *v6;
        v7 = v6[1];
        v10 = *(v6 + 2);
        v9 = *(v6 + 3);
        v12 = *(v6 + 4);
        v11 = *(v6 + 5);
        if (v27)
        {
          v13 = *(v11 + 376);

          os_unfair_lock_lock(v13);
          os_unfair_lock_lock(*(v11 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v26);
        v14 = *(v4 + 64);
        v28[0] = *(v4 + 48);
        v28[1] = v14;
        v29 = *(v4 + 80);
        v15 = *(*(*(*(v11 + 40) + 16) + 32) + 16) + 1;
        *(v4 + 48) = ecs_stack_allocator_allocate(*(v4 + 32), 48 * v15, 8);
        *(v4 + 56) = v15;
        *(v4 + 72) = 0;
        *(v4 + 80) = 0;
        *(v4 + 64) = 0;
        v16 = sub_1AF64B110(&type metadata for TextureShaderAsset, &off_1F2543F30, v10, v9, v12, v4);
        if (v10)
        {
          if (v12)
          {
            v17 = v16 + 88;
            do
            {
              v17 += 112;

              sub_1AF4901F8(v18);
              --v12;
            }

            while (v12);
          }
        }

        else if (v8 != v7)
        {
          v19 = v16 + 112 * v8 + 88;
          v20 = v7 - v8;
          do
          {
            v19 += 112;

            sub_1AF4901F8(v21);
            --v20;
          }

          while (v20);
        }

        sub_1AF630994(v4, &v36, v28);
        sub_1AF62D29C(v11);
        ecs_stack_allocator_pop_snapshot(v26);
        if (v27)
        {
          os_unfair_lock_unlock(*(v11 + 344));
          os_unfair_lock_unlock(*(v11 + 376));
        }

        ++v5;
      }

      while (v5 != v25);
      v22 = MEMORY[0x1E69E6720];
      sub_1AFB2E5D4(v32, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
      sub_1AFB2E5D4(v32, &qword_1ED725EA0, &type metadata for QueryResult, v22, sub_1AFB2E7BC);
      v2 = v31;
    }

    else
    {
      sub_1AFB2E5D4(v32, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
    }
  }

  sub_1AFB22C80(v2, 0);
}

void sub_1AFB26F58(uint64_t a1)
{
  v2 = v1;
  v4 = 0;
  sub_1AFB2E9DC(0, &unk_1ED72C4F0, type metadata accessor for GraphScript);
  v114 = v5;
  v99 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v98 = &v93 - v7;
  sub_1AFB2E9DC(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript);
  v113 = v8;
  v97 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v93 - v10;
  sub_1AFB2E9DC(0, qword_1ED72C520, type metadata accessor for ParticleInitScript);
  v13 = v12;
  v96 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v93 - v15;
  v17 = *(v1 + 216);
  v158[0] = *(v1 + 200);
  v158[1] = v17;
  v159 = *(v1 + 232);
  v95 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(a1, v158, 0x200000000, &v115);
  v109 = a1;
  v94 = v1;
  if (v115)
  {
    if (v122 >= 1)
    {
      v104 = v119;
      if (v119)
      {
        v18 = 0;
        v103 = v118;
        v19 = v121;
        v110 = v121[4];
        v20 = *(v120 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v139 = v115;
        v140 = v116;
        v141 = v117;
        v106 = v13;
        v102 = v121;
        v101 = v20;
        v100 = v11;
        do
        {
          v108 = v18;
          v21 = &v103[6 * v18];
          v22 = *v21;
          v105 = v21[1];
          v23 = *(v21 + 2);
          v112 = *(v21 + 3);
          v24 = *(v21 + 4);
          v25 = *(v21 + 5);
          if (v20)
          {
            v26 = *(v25 + 376);

            os_unfair_lock_lock(v26);
            os_unfair_lock_lock(*(v25 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v110);
          v27 = *(v19 + 4);
          v156[0] = *(v19 + 3);
          v156[1] = v27;
          v157 = v19[10];
          v28 = *(*(*(*(v25 + 40) + 16) + 32) + 16) + 1;
          v19[6] = ecs_stack_allocator_allocate(v19[4], 48 * v28, 8);
          v19[7] = v28;
          v19[9] = 0;
          v19[10] = 0;
          v19[8] = 0;
          v29 = sub_1AF64B110(v13, &off_1F2558F90, v23, v112, v24, v19);
          v30 = v29;
          v111 = v4;
          v107 = v25;
          if (v23)
          {
            if (v24)
            {
              v112 = *(v96 + 72);
              v31 = v109;
              v32 = v106;
              do
              {
                sub_1AFB2EA40(v30, v16, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, sub_1AFB2E9DC);
                v33 = *(v30 + *(v32 + 60));

                sub_1AFB27D58(v16, v33, v31);

                sub_1AFB2E5D4(v16, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, sub_1AFB2E9DC);
                v30 += v112;
                --v24;
              }

              while (v24);
            }
          }

          else if (v22 != v105)
          {
            v34 = v105 - v22;
            v112 = *(v96 + 72);
            v35 = v29 + v112 * v22;
            v36 = v109;
            v37 = v106;
            do
            {
              sub_1AFB2EA40(v35, v16, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, sub_1AFB2E9DC);
              v38 = *(v35 + *(v37 + 60));

              sub_1AFB27D58(v16, v38, v36);

              sub_1AFB2E5D4(v16, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, sub_1AFB2E9DC);
              v35 += v112;
              --v34;
            }

            while (v34);
          }

          v19 = v102;
          v4 = v111;
          sub_1AF630994(v102, &v139, v156);
          v39 = v107;
          sub_1AF62D29C(v107);
          ecs_stack_allocator_pop_snapshot(v110);
          v20 = v101;
          if (v101)
          {
            os_unfair_lock_unlock(*(v39 + 43));
            os_unfair_lock_unlock(*(v39 + 47));
          }

          v18 = v108 + 1;
          v13 = v106;
          v11 = v100;
        }

        while (v108 + 1 != v104);
      }
    }

    sub_1AFB2E5D4(&v115, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
    a1 = v109;
    v2 = v94;
  }

  v40 = *(v2 + 256);
  v154[0] = *(v2 + 240);
  v154[1] = v40;
  v155 = *(v2 + 272);
  sub_1AF6B06C0(a1, v154, 0x200000000, &v123);
  if (v123)
  {
    v111 = v4;
    if (v130 >= 1)
    {
      v105 = v127;
      if (v127)
      {
        v41 = 0;
        v104 = v126;
        v42 = v129;
        v112 = v129[4];
        v43 = *(v128 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v142 = v123;
        v143 = v124;
        v144 = v125;
        v103 = v129;
        LODWORD(v102) = v43;
        do
        {
          v110 = v41;
          v44 = &v104[48 * v41];
          v107 = *v44;
          v106 = *(v44 + 1);
          v46 = *(v44 + 2);
          v45 = *(v44 + 3);
          v48 = *(v44 + 4);
          v47 = *(v44 + 5);
          if (v43)
          {
            v49 = *(v47 + 376);

            os_unfair_lock_lock(v49);
            os_unfair_lock_lock(*(v47 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v112);
          v50 = *(v42 + 4);
          v152[0] = *(v42 + 3);
          v152[1] = v50;
          v153 = v42[10];
          v51 = *(*(*(*(v47 + 40) + 16) + 32) + 16) + 1;
          v42[6] = ecs_stack_allocator_allocate(v42[4], 48 * v51, 8);
          v42[7] = v51;
          v42[9] = 0;
          v42[10] = 0;
          v42[8] = 0;
          v52 = v113;
          v108 = v47;
          v53 = sub_1AF64B110(v113, &off_1F2558F90, v46, v45, v48, v42);
          v54 = v53;
          if (v46)
          {
            if (v48)
            {
              v55 = *(v97 + 72);
              v56 = v109;
              do
              {
                sub_1AFB2EA40(v54, v11, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, sub_1AFB2E9DC);
                v57 = *(v54 + *(v52 + 60));

                sub_1AFB28360(v11, v57, v56, type metadata accessor for ParticleUpdateScript, type metadata accessor for ParticleUpdateScript, type metadata accessor for ParticleUpdateScript);
                v52 = v113;

                sub_1AFB2E5D4(v11, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, sub_1AFB2E9DC);
                v54 += v55;
                --v48;
              }

              while (v48);
            }
          }

          else if (v107 != v106)
          {
            v58 = *(v97 + 72);
            v59 = v106 - v107;
            v60 = v53 + v58 * v107;
            v61 = v109;
            do
            {
              sub_1AFB2EA40(v60, v11, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, sub_1AFB2E9DC);
              v62 = *(v60 + *(v52 + 60));

              sub_1AFB28360(v11, v62, v61, type metadata accessor for ParticleUpdateScript, type metadata accessor for ParticleUpdateScript, type metadata accessor for ParticleUpdateScript);
              v52 = v113;

              sub_1AFB2E5D4(v11, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, sub_1AFB2E9DC);
              v60 += v58;
              --v59;
            }

            while (v59);
          }

          v42 = v103;
          v63 = v111;
          sub_1AF630994(v103, &v142, v152);
          v111 = v63;
          v64 = v108;
          sub_1AF62D29C(v108);
          ecs_stack_allocator_pop_snapshot(v112);
          v43 = v102;
          if (v102)
          {
            os_unfair_lock_unlock(*(v64 + 43));
            os_unfair_lock_unlock(*(v64 + 47));
          }

          v41 = v110 + 1;
        }

        while ((v110 + 1) != v105);
      }
    }

    sub_1AFB2E5D4(&v123, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
    a1 = v109;
    v2 = v94;
    v4 = v111;
  }

  v151 = *(v2 + 312);
  v65 = *(v2 + 296);
  v150[0] = *(v2 + 280);
  v150[1] = v65;
  sub_1AF6B06C0(a1, v150, 0x200000000, &v131);
  if (v131)
  {
    v111 = v4;
    if (v138 >= 1)
    {
      v107 = v135;
      if (v135)
      {
        v66 = 0;
        v106 = v134;
        v67 = v137;
        v68 = v137[4];
        v69 = *(v136 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v145 = v131;
        v146 = v132;
        v147 = v133;
        v104 = v68;
        v105 = v137;
        LODWORD(v103) = v69;
        do
        {
          v113 = v66;
          v70 = (v106 + 48 * v66);
          v110 = *v70;
          v108 = v70[1];
          v72 = *(v70 + 2);
          v71 = *(v70 + 3);
          v74 = *(v70 + 4);
          v73 = *(v70 + 5);
          if (v69)
          {
            v75 = *(v73 + 376);

            os_unfair_lock_lock(v75);
            os_unfair_lock_lock(*(v73 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v68);
          v76 = *(v67 + 4);
          v148[0] = *(v67 + 3);
          v148[1] = v76;
          v149 = v67[10];
          v77 = *(*(*(*(v73 + 40) + 16) + 32) + 16) + 1;
          v67[6] = ecs_stack_allocator_allocate(v67[4], 48 * v77, 8);
          v67[7] = v77;
          v67[9] = 0;
          v67[10] = 0;
          v67[8] = 0;
          v78 = v114;
          v112 = v73;
          v79 = sub_1AF64B110(v114, &off_1F2558F90, v72, v71, v74, v67);
          v80 = v79;
          if (v72)
          {
            if (v74)
            {
              v81 = v98;
              v82 = *(v99 + 72);
              v83 = v109;
              do
              {
                sub_1AFB2EA40(v80, v81, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, sub_1AFB2E9DC);
                v84 = *(v80 + *(v78 + 60));

                sub_1AFB28360(v81, v84, v83, type metadata accessor for GraphScript, type metadata accessor for GraphScript, type metadata accessor for GraphScript);
                v78 = v114;

                sub_1AFB2E5D4(v81, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, sub_1AFB2E9DC);
                v80 += v82;
                --v74;
              }

              while (v74);
            }
          }

          else if (v110 != v108)
          {
            v85 = v98;
            v86 = *(v99 + 72);
            v87 = &v108[-v110];
            v88 = v79 + v86 * v110;
            v89 = v109;
            do
            {
              sub_1AFB2EA40(v88, v85, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, sub_1AFB2E9DC);
              v90 = *(v88 + *(v78 + 60));

              sub_1AFB28360(v85, v90, v89, type metadata accessor for GraphScript, type metadata accessor for GraphScript, type metadata accessor for GraphScript);
              v78 = v114;

              sub_1AFB2E5D4(v85, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, sub_1AFB2E9DC);
              v88 += v86;
              --v87;
            }

            while (v87);
          }

          v67 = v105;
          v91 = v111;
          sub_1AF630994(v105, &v145, v148);
          v111 = v91;
          v92 = v112;
          sub_1AF62D29C(v112);
          v68 = v104;
          ecs_stack_allocator_pop_snapshot(v104);
          v69 = v103;
          if (v103)
          {
            os_unfair_lock_unlock(*(v92 + 43));
            os_unfair_lock_unlock(*(v92 + 47));
          }

          v66 = v113 + 1;
        }

        while ((v113 + 1) != v107);
      }
    }

    sub_1AFB2E5D4(&v131, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
  }
}

uint64_t sub_1AFB27D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  sub_1AF0D4E74();
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v54 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = sub_1AFDFC298();
  v8 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v9);
  v52 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  inited = type metadata accessor for ParticleInitScript(0);
  MEMORY[0x1EEE9AC00](inited - 8, v12);
  v14 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AFB2EAB4(a1, v14, type metadata accessor for ParticleInitScript);
  v45 = *v14;
  sub_1AFB2E888(v14, type metadata accessor for ParticleInitScript);
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = a2 + 32;
    v49 = " are not valid for the GPU";
    v18 = MEMORY[0x1E69E7CC0];
    v48 = (v8 + 32);
    v47 = xmmword_1AFE431C0;
    v50 = a2 + 32;
    v51 = v15;
    while (1)
    {
      v25 = (v17 + 40 * v16);
      v26 = *v25;
      if (((*v25 >> 59) & 0x1E | (*v25 >> 2) & 1) == 8)
      {
        v27 = v25[2];
        v28 = *((v26 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v29 = *((v26 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v58 = v27;
        if (!v29)
        {
          sub_1AF443EE0(v26);
          sub_1AF444224(v27);
LABEL_11:
          v34 = *(v18 + 2);
          if (v34)
          {
            v35 = v18 + 36;
            v36 = *(v18 + 2);
            while (*(v35 - 1) != v28 || *v35 != HIDWORD(v28))
            {
              v35 += 2;
              if (!--v36)
              {
                goto LABEL_18;
              }
            }

            sub_1AF443F24(v26);
            sub_1AF444AF4(v58);
          }

          else
          {
LABEL_18:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_1AF4217DC(0, v34 + 1, 1, v18);
            }

            v39 = *(v18 + 2);
            v38 = *(v18 + 3);
            if (v39 >= v38 >> 1)
            {
              v18 = sub_1AF4217DC(v38 > 1, v39 + 1, 1, v18);
            }

            sub_1AF443F24(v26);
            sub_1AF444AF4(v58);
            *(v18 + 2) = v39 + 1;
            *&v18[8 * v39 + 32] = v28;
          }

          goto LABEL_4;
        }

        v30 = *((v26 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        if (v29 == 1)
        {
          sub_1AF443EE0(v26);
          sub_1AF444224(v27);
          sub_1AFAB8864(v28, v30, 1);
          LOBYTE(v59) = 1;
          v31 = sub_1AF7016BC(v28, v30, v46, 0x100000000);
          if ((v32 & 1) == 0)
          {
            v33 = v31;
            sub_1AF7D4C4C(v28, v30, 1);
            v28 = v33;
            goto LABEL_11;
          }
        }

        else
        {
          sub_1AF443EE0(v26);
          sub_1AF444224(v27);
        }

        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v59 = 0;
        v60 = 0xE000000000000000;
        sub_1AFDFE218();
        v62 = v59;
        v63 = v60;
        MEMORY[0x1B2718AE0](0xD000000000000018, v49 | 0x8000000000000000);
        v59 = v28;
        v60 = v30;
        v61 = v29;
        sub_1AFDFE458();
        sub_1AF7D4C4C(v28, v30, v29);
        v41 = v62;
        v40 = v63;
        v42 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        v57 = v18;
        if (qword_1ED730E98 != -1)
        {
          swift_once();
        }

        sub_1AFB2E6A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v19 = swift_allocObject();
        *(v19 + 16) = v47;
        *(v19 + 56) = MEMORY[0x1E69E6158];
        *(v19 + 64) = sub_1AF0D544C();
        v56 = v41;
        *(v19 + 32) = v41;
        *(v19 + 40) = v40;

        sub_1AFDFC4C8();

        v20 = v52;
        sub_1AFDFC288();
        v21 = v54;
        v22 = v55[12];
        v23 = v55[16];
        v24 = &v54[v55[20]];
        (*v48)(v54, v20, v53);
        *(v21 + v22) = v42;
        *(v21 + v23) = 0;
        *v24 = v56;
        v24[1] = v40;
        sub_1AFDFC608();

        sub_1AF443F24(v26);
        sub_1AF444AF4(v58);
        sub_1AFB2E888(v21, sub_1AF0D4E74);
        v17 = v50;
        v15 = v51;
        v18 = v57;
      }

LABEL_4:
      if (++v16 == v15)
      {
        goto LABEL_32;
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_32:
  sub_1AFB22C80(v18, v45 != 2);
}

uint64_t sub_1AFB28360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, __n128), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v53 = a3;
  sub_1AF0D4E74();
  v62 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v61 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = sub_1AFDFC298();
  v14 = *(v60 - 8);
  v16 = MEMORY[0x1EEE9AC00](v60, v15);
  v59 = &v51[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a4(0, v16);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v51[-v20];
  sub_1AFB2EAB4(a1, &v51[-v20], a5);
  v52 = v21[24];
  sub_1AFB2E888(v21, a6);
  v22 = *(a2 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = a2 + 32;
    v56 = " are not valid for the GPU";
    v25 = MEMORY[0x1E69E7CC0];
    v55 = (v14 + 32);
    v54 = xmmword_1AFE431C0;
    v57 = a2 + 32;
    v58 = v22;
    while (1)
    {
      v26 = (v24 + 40 * v23);
      v27 = *v26;
      if (((*v26 >> 59) & 0x1E | (*v26 >> 2) & 1) == 8)
      {
        v28 = v26[2];
        v29 = *((v27 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v30 = *((v27 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v65 = v28;
        if (!v30)
        {
          sub_1AF443EE0(v27);
          sub_1AF444224(v28);
LABEL_11:
          v35 = *(v25 + 2);
          if (v35)
          {
            v36 = v25 + 36;
            v37 = *(v25 + 2);
            while (*(v36 - 1) != v29 || *v36 != HIDWORD(v29))
            {
              v36 += 2;
              if (!--v37)
              {
                goto LABEL_18;
              }
            }

            sub_1AF443F24(v27);
            sub_1AF444AF4(v65);
          }

          else
          {
LABEL_18:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1AF4217DC(0, v35 + 1, 1, v25);
            }

            v40 = *(v25 + 2);
            v39 = *(v25 + 3);
            if (v40 >= v39 >> 1)
            {
              v25 = sub_1AF4217DC(v39 > 1, v40 + 1, 1, v25);
            }

            sub_1AF443F24(v27);
            sub_1AF444AF4(v65);
            *(v25 + 2) = v40 + 1;
            *&v25[8 * v40 + 32] = v29;
          }

          goto LABEL_4;
        }

        v31 = *((v27 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        if (v30 == 1)
        {
          sub_1AF443EE0(v27);
          sub_1AF444224(v28);
          sub_1AFAB8864(v29, v31, 1);
          LOBYTE(v66) = 1;
          v32 = sub_1AF7016BC(v29, v31, v53, 0x100000000);
          if ((v33 & 1) == 0)
          {
            v34 = v32;
            sub_1AF7D4C4C(v29, v31, 1);
            v29 = v34;
            goto LABEL_11;
          }
        }

        else
        {
          sub_1AF443EE0(v27);
          sub_1AF444224(v28);
        }

        v63 = v27;
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v66 = 0;
        v67 = 0xE000000000000000;
        sub_1AFDFE218();
        v69 = v66;
        v70 = v67;
        MEMORY[0x1B2718AE0](0xD000000000000018, v56 | 0x8000000000000000);
        v66 = v29;
        v67 = v31;
        v68 = v30;
        sub_1AFDFE458();
        sub_1AF7D4C4C(v29, v31, v30);
        v41 = v69;
        v42 = v70;
        v43 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        v64 = v25;
        if (qword_1ED730E98 != -1)
        {
          swift_once();
        }

        sub_1AFB2E6A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v44 = swift_allocObject();
        *(v44 + 16) = v54;
        *(v44 + 56) = MEMORY[0x1E69E6158];
        *(v44 + 64) = sub_1AF0D544C();
        *(v44 + 32) = v41;
        *(v44 + 40) = v42;

        sub_1AFDFC4C8();

        v45 = v59;
        sub_1AFDFC288();
        v46 = v61;
        v47 = v62[12];
        v48 = v62[16];
        v49 = &v61[v62[20]];
        (*v55)(v61, v45, v60);
        *(v46 + v47) = v43;
        *(v46 + v48) = 0;
        *v49 = v41;
        v49[1] = v42;
        sub_1AFDFC608();

        sub_1AF443F24(v63);
        sub_1AF444AF4(v65);
        sub_1AFB2E888(v46, sub_1AF0D4E74);
        v24 = v57;
        v22 = v58;
        v25 = v64;
      }

LABEL_4:
      if (++v23 == v22)
      {
        goto LABEL_32;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_32:
  sub_1AFB22C80(v25, v52 != 2);
}

void sub_1AFB28950(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);
  v44[0] = *(v2 + 80);
  v44[1] = v5;
  v45 = *(v2 + 112);
  sub_1AF6B06C0(a1, v44, 0x200000000, v35);
  v28 = *v35;
  if (*v35)
  {
    v27 = *&v35[40];
    v6 = *(&v36 + 1);
    v7 = *(&v37 + 1);
    v39 = *&v35[8];
    v40 = *&v35[24];
    if (v38 > 0 && *(&v36 + 1))
    {
      v31 = *(*(&v37 + 1) + 32);
      i = *(v37 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v34[2] = *&v35[32];
      v34[3] = v36;
      v34[4] = v37;
      v34[5] = v38;
      v34[0] = *v35;
      v34[1] = *&v35[16];
      sub_1AF5DD298(v34, v32);
      v9 = 0;
      v25 = i;
      v26 = v6;
      do
      {
        v10 = (v27 + 48 * v9);
        v30 = *v10;
        v29 = v10[1];
        v12 = *(v10 + 2);
        v11 = *(v10 + 3);
        v14 = *(v10 + 4);
        v13 = *(v10 + 5);
        if (i)
        {
          v15 = *(v13 + 376);

          os_unfair_lock_lock(v15);
          os_unfair_lock_lock(*(v13 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v31);
        v16 = *(v7 + 64);
        v32[0] = *(v7 + 48);
        v32[1] = v16;
        v33 = *(v7 + 80);
        v17 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
        *(v7 + 48) = ecs_stack_allocator_allocate(*(v7 + 32), 48 * v17, 8);
        *(v7 + 56) = v17;
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 64) = 0;
        v18 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v12, v11, v14, v7);
        v19 = v18;
        if (v12)
        {
          for (i = v25; v14; --v14)
          {
            sub_1AFB2CB40(v19, a1, a2);
            v19 += 104;
          }
        }

        else
        {
          v20 = v18 + 104 * v30;
          v21 = v29 - v30 + 1;
          i = v25;
          while (--v21)
          {
            v22 = v20 + 104;
            sub_1AFB2CB40(v20, a1, a2);
            v20 = v22;
          }
        }

        v41 = v28;
        v42 = v39;
        v43 = v40;
        sub_1AF630994(v7, &v41, v32);
        sub_1AF62D29C(v13);
        ecs_stack_allocator_pop_snapshot(v31);
        if (i)
        {
          os_unfair_lock_unlock(*(v13 + 344));
          os_unfair_lock_unlock(*(v13 + 376));
        }

        ++v9;
      }

      while (v9 != v26);
      v24 = MEMORY[0x1E69E6720];
      sub_1AFB2E5D4(v35, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
      v23 = v24;
    }

    else
    {
      v23 = MEMORY[0x1E69E6720];
    }

    sub_1AFB2E5D4(v35, &qword_1ED725EA0, &type metadata for QueryResult, v23, sub_1AFB2E7BC);
  }
}

void sub_1AFB28CF8(uint64_t a1)
{
  v2 = a1;
  v3 = *(v1 + 496);
  v319[0] = *(v1 + 480);
  v319[1] = v3;
  v320 = *(v1 + 512);
  sub_1AF6B06C0(a1, v319, 0x200000000, v310);
  if (*v310)
  {
    if (v313 <= 0 || (v248 = *(&v311 + 1)) == 0)
    {
      v237 = MEMORY[0x1E69E6720];
LABEL_230:
      sub_1AFB2E5D4(v310, &qword_1ED725EA0, &type metadata for QueryResult, v237, sub_1AFB2E7BC);
      return;
    }

    v247 = *&v310[40];
    v4 = *(&v312 + 1);
    v5 = *(*(&v312 + 1) + 32);
    v255 = *(v312 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v251 = (v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v243 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
    v314 = *v310;
    v315 = *&v310[8];
    v316 = *&v310[24];
    v309[2] = *&v310[32];
    v309[3] = v311;
    v309[4] = v312;
    v309[5] = v313;
    v309[0] = *v310;
    v309[1] = *&v310[16];
    sub_1AF5DD298(v309, &v287);
    v6 = 0;
    v7 = 0;
    v242 = 0x80000001AFF38800;
    v249 = v2;
    v245 = v5;
    v246 = v4;
    while (1)
    {
      v256 = v7;
      v8 = v2;
      v254 = v6;
      v9 = (v247 + 48 * v6);
      v10 = *v9;
      v250 = v9[1];
      v11 = *(v9 + 2);
      v12 = *(v9 + 3);
      v14 = *(v9 + 4);
      v13 = *(v9 + 5);
      if (v255)
      {
        v15 = *(v13 + 376);

        os_unfair_lock_lock(v15);
        os_unfair_lock_lock(*(v13 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v5);
      v16 = *(v4 + 4);
      v317[0] = *(v4 + 3);
      v317[1] = v16;
      v318 = v4[10];
      v17 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
      v4[6] = ecs_stack_allocator_allocate(v4[4], 48 * v17, 8);
      v4[7] = v17;
      v4[9] = 0;
      v4[10] = 0;
      v4[8] = 0;
      v253 = v13;
      v18 = sub_1AF64B110(&type metadata for ParticleMeshRenderer, &off_1F2550788, v11, v12, v14, v4);
      if (v11)
      {
        v19 = v251;
        v2 = v8;
        if (v14)
        {
          v20 = 0;
          v7 = v256;
          while (1)
          {
            v21 = (v18 + 40 * v20);
            v22 = v21[1];
            v23 = *v21;
            if (v23 == -1 && v22 == 0)
            {
              goto LABEL_13;
            }

            if ((v23 & 0x80000000) != 0)
            {
              goto LABEL_13;
            }

            v25 = v19[1];
            if (v25 <= v23)
            {
              goto LABEL_13;
            }

            v26 = *v19;
            v27 = (*v19 + 12 * v23);
            if (v22 != -1 && v27[2] != v22)
            {
              goto LABEL_13;
            }

            v29 = *(v27 + 2);
            v30 = *(v2 + 144) + 32;
            v31 = *(v30 + 8 * *v27);
            v32 = *(v31 + 48);
            v33 = (v32 + 32);
            v34 = *(v32 + 16) + 1;
            do
            {
              if (!--v34)
              {
                goto LABEL_13;
              }

              v35 = v33 + 5;
              v36 = *v33;
              v33 += 5;
            }

            while (v36 != &type metadata for MeshModel);
            v37 = (&(*(v35 - 2))[v29].Kind + *(v31 + 128));
            v38 = v37[1];
            v250 = *v37;
            v39 = v21[2];
            v40 = v21[3];
            if (v39 != -1 || v40 != 0)
            {
              goto LABEL_36;
            }

            v42 = *(v21 + 3);
            if ((v42 & 0x8000000000000000) == 0 && v42 < *(v38 + 16))
            {
              break;
            }

LABEL_44:
            if (*(v252 + 520))
            {
              goto LABEL_12;
            }

            v46 = v38;
            swift_getKeyPath();

            v244 = v46;

            v2 = v249;
            v47 = sub_1AF88BAA0();
            v49 = v48;

            if (((v49 & 1) != 0 || v47 == 0xFFFFFFFFLL) && ((v49 & 1) != 0 || !HIDWORD(v47)))
            {
              sub_1AF892268();
              v51 = v50;
              type metadata accessor for RenderPipelineFactory();
              swift_allocObject();
              v52 = sub_1AF89DCA8(140);
              *(v52 + 88) = sub_1AF891C5C;
              *(v52 + 96) = 0;

              v256 = &v239;
              v53 = *(v2 + v243);
              v54 = *v53;
              v55 = *(*v53 + 32);

              ecs_stack_allocator_push_snapshot(v55);
              v56 = ecs_stack_allocator_allocate(*(v54 + 32), 32, 8);
              *v56 = &type metadata for Material;
              v56[1] = &off_1F253F848;
              v56[2] = &type metadata for Name;
              v56[3] = &off_1F2535068;
              LOBYTE(v287) = 1;
              v57 = sub_1AF635354(v56, 2, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v54, 0, v52, -1.0, 0, 1, 0xD000000000000018, v242);

              if (v7)
              {
                goto LABEL_232;
              }

              ecs_stack_allocator_pop_snapshot(*(v54 + 32));

              sub_1AF6879B0(v57, v2, v51);

              *&v287 = v57;
              MEMORY[0x1EEE9AC00](v58, v59);
              v60 = *(v2 + 184);

              sub_1AF6D655C(&type metadata for DefaultMaterialInstance, &off_1F253FC80, v60, sub_1AFB2EB1C);
            }

            else
            {
            }

            *(v252 + 520) = 1;
LABEL_53:
            v19 = v251;
LABEL_13:
            if (++v20 == v14)
            {
              goto LABEL_118;
            }
          }

          v43 = v38 + 8 * v42;
          v39 = *(v43 + 32);
          v40 = *(v43 + 36);
LABEL_36:
          if ((v39 != -1 || v40 != 0) && (v39 & 0x80000000) == 0 && v25 > v39)
          {
            v45 = (v26 + 12 * v39);
            if (v40 == 0xFFFFFFFFLL || v45[2] == v40)
            {
              v61 = *(v45 + 2);
              v62 = *(v30 + 8 * *v45);
              v63 = *(v62 + 48);
              v64 = (v63 + 32);
              v65 = *(v63 + 16) + 1;
              while (--v65)
              {
                v66 = v64 + 5;
                v67 = *v64;
                v64 += 5;
                if (v67 == &type metadata for Material)
                {
                  v256 = v7;
                  v244 = v38;
                  v68 = *(v66 - 2) + 104 * v61 + *(v62 + 128);
                  v70 = *(v68 + 16);
                  v69 = *(v68 + 32);
                  v302 = *v68;
                  v303 = v70;
                  v304 = v69;
                  v72 = *(v68 + 64);
                  v71 = *(v68 + 80);
                  v73 = *(v68 + 48);
                  v308 = *(v68 + 96);
                  v306 = v72;
                  v307 = v71;
                  v305 = v73;
                  v74 = *(&v303 + 1);
                  if (!*(&v303 + 1))
                  {
                    goto LABEL_60;
                  }

                  Class = object_getClass(*(&v303 + 1));
                  if (Class == _TtC3VFX13PBRParameters)
                  {
                    v97 = *(v74 + 32);
                    v2 = v249;
                    v98 = sub_1AF3C941C(v97);
                    v99 = v74;
                    if (HIBYTE(v98) == 2)
                    {

                      sub_1AF4424F4(&v302, &v287);
                      swift_unknownObjectRetain();
                      v7 = v256;
                    }

                    else
                    {
                      v102 = v98 & 0xFF00;

                      v7 = v256;
                      sub_1AF4424F4(&v302, &v287);
                      swift_unknownObjectRetain();
                      if (v102 == 256)
                      {

                        sub_1AF6700C0(v97, v2, &type metadata for TextureLoadRequestGPU, &off_1F2544788, v2);
                      }
                    }

                    v112 = v99[10];
                    v113 = sub_1AF3C941C(v112);
                    if (HIBYTE(v113) != 2 && (v113 & 0xFF00) == 0x100)
                    {

                      sub_1AF6700C0(v112, v2, &type metadata for TextureLoadRequestGPU, &off_1F2544788, v2);
                    }

                    v114 = v99[14];
                    v115 = sub_1AF3C941C(v114);
                    if (HIBYTE(v115) != 2 && (v115 & 0xFF00) == 0x100)
                    {

                      sub_1AF6700C0(v114, v2, &type metadata for TextureLoadRequestGPU, &off_1F2544788, v2);
                    }

                    v116 = v99[20];
                    v117 = sub_1AF3C941C(v116);
                    if (HIBYTE(v117) != 2 && (v117 & 0xFF00) == 0x100)
                    {

                      sub_1AF6700C0(v116, v2, &type metadata for TextureLoadRequestGPU, &off_1F2544788, v2);
                    }

                    v118 = v99[26];
                    v119 = sub_1AF3C941C(v118);
                    if (HIBYTE(v119) != 2 && (v119 & 0xFF00) == 0x100)
                    {

                      sub_1AF6700C0(v118, v2, &type metadata for TextureLoadRequestGPU, &off_1F2544788, v2);
                    }

                    v120 = v99[32];
                    v121 = sub_1AF3C941C(v120);
                    if (HIBYTE(v121) == 2 || (v121 & 0xFF00) != 0x100)
                    {
                      swift_unknownObjectRelease();
                    }

                    else
                    {

                      sub_1AF6700C0(v120, v2, &type metadata for TextureLoadRequestGPU, &off_1F2544788, v2);
                      swift_unknownObjectRelease();
                    }

                    sub_1AF584F68(&v302);

                    goto LABEL_53;
                  }

                  if (Class != _TtC3VFX16PrelitParameters)
                  {
LABEL_60:
                    v76 = v39 | (v40 << 32);
                    v2 = v249;
                    sub_1AF3CA6C0(v76, &v257);
                    v284 = v269;
                    v285 = v270;
                    v286 = v271;
                    v280 = v265;
                    v281 = v266;
                    v282 = v267;
                    v283 = v268;
                    v276 = v261;
                    v277 = v262;
                    v278 = v263;
                    v279 = v264;
                    v272 = v257;
                    v273 = v258;
                    v274 = v259;
                    v275 = v260;
                    v299 = v269;
                    v300 = v270;
                    v301 = v271;
                    v295 = v265;
                    v296 = v266;
                    v297 = v267;
                    v298 = v268;
                    v291 = v261;
                    v292 = v262;
                    v293 = v263;
                    v294 = v264;
                    v287 = v257;
                    v288 = v258;
                    v289 = v259;
                    v290 = v260;
                    v77 = sub_1AF448314(&v287);
                    v7 = v256;
                    if (v77 != 1)
                    {
                      v78 = *(v291 + 16);
                      if (v78)
                      {
                        v79 = v291;
                        v80 = v291 + 32;

                        sub_1AF4424F4(&v302, &v257);
                        v241 = v79;

                        v81 = 0;
                        v82 = v251;
                        do
                        {
                          v83 = v80 + 40 * v81;
                          v84 = *v83;
                          v85 = *(v83 + 24) != 2 || v84 == 0xFFFFFFFF;
                          if (!v85 && (v84 & 0x80000000) == 0 && v84 < v82[1])
                          {
                            v86 = (*v82 + 12 * v84);
                            if (HIDWORD(v84) == 0xFFFFFFFF || v86[2] == HIDWORD(v84))
                            {
                              v88 = *(v83 + 8);
                              v89 = *(v83 + 16);
                              v90 = *(v86 + 2);
                              v91 = *(*(v2 + 144) + 8 * *v86 + 32);
                              v92 = *(v91 + 48);
                              v93 = (v92 + 32);
                              v94 = *(v92 + 16) + 1;
                              while (--v94)
                              {
                                v95 = v93 + 5;
                                v96 = *v93;
                                v93 += 5;
                                if (v96 == &type metadata for TextureLoadPolicy)
                                {
                                  if (*(&(*(v95 - 2))->Kind + 4 * v90 + *(v91 + 128) + 1) == 1)
                                  {
                                    v240 = v88;
                                    v256 = v89;

                                    sub_1AF64E4D0(v84, v240, v256, 2);
                                    sub_1AF6700C0(v84, v2, &type metadata for TextureLoadRequestGPU, &off_1F2544788, v2);

                                    sub_1AF88DCFC(v84, v240, v256, 2);
                                    v82 = v251;
                                  }

                                  break;
                                }
                              }
                            }
                          }

                          ++v81;
                        }

                        while (v81 != v78);
                        sub_1AFB2E5D4(&v272, &qword_1ED7255C8, &type metadata for MaterialRuntime, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
                        sub_1AF584F68(&v302);
                      }

                      else
                      {

                        sub_1AFB2E5D4(&v272, &qword_1ED7255C8, &type metadata for MaterialRuntime, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
                      }
                    }

                    goto LABEL_53;
                  }

                  v100 = *(v74 + 20);
                  v101 = *(v74 + 16);
                  v241 = v74;
                  if (__PAIR64__(v100, v101) == 0xFFFFFFFF)
                  {
                    v2 = v249;
                    v19 = v251;
                    v7 = v256;
                    goto LABEL_13;
                  }

                  v19 = v251;
                  v7 = v256;
                  if ((v101 & 0x80000000) == 0 && v25 > v101)
                  {
                    v103 = (v26 + 12 * v101);
                    v104 = *(v103 + 2);
                    if (v100 == -1 || v103[2] == v100)
                    {
                      v105 = *(v30 + 8 * *v103);
                      v106 = *(v105 + 48);
                      v107 = (v106 + 32);
                      v108 = *(v106 + 16) + 1;
                      while (--v108)
                      {
                        v109 = v107 + 5;
                        v110 = *v107;
                        v107 += 5;
                        if (v110 == &type metadata for TextureLoadPolicy)
                        {
                          if (*(&(*(v109 - 2))->Kind + 4 * v104 + *(v105 + 128) + 1) != 1)
                          {
                            goto LABEL_12;
                          }

                          sub_1AF4424F4(&v302, &v287);
                          v111 = v101 | (v100 << 32);
                          swift_unknownObjectRetain();
                          v2 = v249;

                          sub_1AF6700C0(v111, v2, &type metadata for TextureLoadRequestGPU, &off_1F2544788, v2);
                          swift_unknownObjectRelease();

                          sub_1AF584F68(&v302);

                          v19 = v251;
                          goto LABEL_13;
                        }
                      }
                    }
                  }

                  break;
                }
              }

LABEL_12:
              v2 = v249;
              goto LABEL_13;
            }
          }

          goto LABEL_44;
        }

        v7 = v256;
        goto LABEL_118;
      }

      v122 = v250;
      v123 = v251;
      v2 = v8;
      v7 = v256;
      if (v10 != v250)
      {
        break;
      }

LABEL_118:
      v4 = v246;
      sub_1AF630994(v246, &v314, v317);
      v124 = v253;
      sub_1AF62D29C(v253);
      v5 = v245;
      ecs_stack_allocator_pop_snapshot(v245);
      if (v255)
      {
        os_unfair_lock_unlock(*(v124 + 43));
        os_unfair_lock_unlock(*(v124 + 47));
      }

      v6 = v254 + 1;
      if (v254 + 1 == v248)
      {
        v238 = MEMORY[0x1E69E6720];
        sub_1AFB2E5D4(v310, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
        v237 = v238;
        goto LABEL_230;
      }
    }

    while (1)
    {
      v125 = (v18 + 40 * v10);
      v126 = v125[1];
      v127 = *v125;
      if (v127 == -1 && v126 == 0)
      {
        goto LABEL_121;
      }

      if ((v127 & 0x80000000) != 0)
      {
        goto LABEL_121;
      }

      v129 = v123[1];
      if (v129 <= v127)
      {
        goto LABEL_121;
      }

      v130 = *v123;
      v131 = (*v123 + 12 * v127);
      if (v126 != -1 && v131[2] != v126)
      {
        goto LABEL_121;
      }

      v133 = *(v131 + 2);
      v134 = *(v2 + 144) + 32;
      v135 = *(v134 + 8 * *v131);
      v136 = *(v135 + 48);
      v137 = (v136 + 32);
      v138 = *(v136 + 16) + 1;
      do
      {
        if (!--v138)
        {
          goto LABEL_121;
        }

        v139 = v137 + 5;
        v140 = *v137;
        v137 += 5;
      }

      while (v140 != &type metadata for MeshModel);
      v141 = (&(*(v139 - 2))[v133].Kind + *(v135 + 128));
      v143 = *v141;
      v142 = v141[1];
      v145 = v125[2];
      v144 = v125[3];
      if (v145 == -1 && v144 == 0)
      {
        v147 = *(v125 + 3);
        if (v147 < 0 || v147 >= *(v142 + 16))
        {
          goto LABEL_152;
        }

        v148 = v142 + 8 * v147;
        v145 = *(v148 + 32);
        v144 = *(v148 + 36);
      }

      if ((v145 != -1 || v144 != 0) && (v145 & 0x80000000) == 0 && v129 > v145)
      {
        v150 = (v130 + 12 * v145);
        if (v144 == 0xFFFFFFFFLL || v150[2] == v144)
        {
          v166 = *(v150 + 2);
          v167 = *(v134 + 8 * *v150);
          v168 = *(v167 + 48);
          v169 = (v168 + 32);
          v170 = *(v168 + 16) + 1;
          do
          {
            if (!--v170)
            {
              goto LABEL_120;
            }

            v171 = v169 + 5;
            v172 = *v169;
            v169 += 5;
          }

          while (v172 != &type metadata for Material);
          v244 = v143;
          v256 = v142;
          v173 = *(v171 - 2) + 104 * v166 + *(v167 + 128);
          v175 = *(v173 + 16);
          v174 = *(v173 + 32);
          v302 = *v173;
          v303 = v175;
          v304 = v174;
          v177 = *(v173 + 64);
          v176 = *(v173 + 80);
          v178 = *(v173 + 48);
          v308 = *(v173 + 96);
          v306 = v177;
          v307 = v176;
          v305 = v178;
          v179 = *(&v303 + 1);
          if (!*(&v303 + 1))
          {
            goto LABEL_167;
          }

          v180 = object_getClass(*(&v303 + 1));
          if (v180 == _TtC3VFX13PBRParameters)
          {
            v202 = *(v179 + 32);
            v2 = v249;
            v203 = sub_1AF3C941C(v202);
            if (HIBYTE(v203) == 2)
            {

              goto LABEL_194;
            }

            v206 = v203 & 0xFF00;

            if (v206 == 256)
            {

              sub_1AF4424F4(&v302, &v287);
              swift_unknownObjectRetain();
              sub_1AF6700C0(v202, v2, &type metadata for TextureLoadRequestGPU, &off_1F2544788, v2);
            }

            else
            {
LABEL_194:
              sub_1AF4424F4(&v302, &v287);
              swift_unknownObjectRetain();
            }

            v207 = *(v179 + 80);
            v208 = sub_1AF3C941C(v207);
            if (HIBYTE(v208) != 2 && (v208 & 0xFF00) == 0x100)
            {

              sub_1AF6700C0(v207, v2, &type metadata for TextureLoadRequestGPU, &off_1F2544788, v2);
            }

            v209 = *(v179 + 112);
            v210 = sub_1AF3C941C(v209);
            if (HIBYTE(v210) != 2 && (v210 & 0xFF00) == 0x100)
            {

              sub_1AF6700C0(v209, v2, &type metadata for TextureLoadRequestGPU, &off_1F2544788, v2);
            }

            v211 = *(v179 + 160);
            v212 = sub_1AF3C941C(v211);
            if (HIBYTE(v212) != 2 && (v212 & 0xFF00) == 0x100)
            {

              sub_1AF6700C0(v211, v2, &type metadata for TextureLoadRequestGPU, &off_1F2544788, v2);
            }

            v213 = *(v179 + 208);
            v214 = sub_1AF3C941C(v213);
            if (HIBYTE(v214) != 2 && (v214 & 0xFF00) == 0x100)
            {

              sub_1AF6700C0(v213, v2, &type metadata for TextureLoadRequestGPU, &off_1F2544788, v2);
            }

            v215 = *(v179 + 256);
            v216 = sub_1AF3C941C(v215);
            if (HIBYTE(v216) == 2 || (v216 & 0xFF00) != 0x100)
            {
              swift_unknownObjectRelease();
            }

            else
            {

              sub_1AF6700C0(v215, v2, &type metadata for TextureLoadRequestGPU, &off_1F2544788, v2);
              swift_unknownObjectRelease();
            }

            sub_1AF584F68(&v302);

            goto LABEL_227;
          }

          if (v180 != _TtC3VFX16PrelitParameters)
          {
LABEL_167:
            v181 = v145 | (v144 << 32);
            v2 = v249;
            sub_1AF3CA6C0(v181, &v257);
            v284 = v269;
            v285 = v270;
            v286 = v271;
            v280 = v265;
            v281 = v266;
            v282 = v267;
            v283 = v268;
            v276 = v261;
            v277 = v262;
            v278 = v263;
            v279 = v264;
            v272 = v257;
            v273 = v258;
            v274 = v259;
            v275 = v260;
            v299 = v269;
            v300 = v270;
            v301 = v271;
            v295 = v265;
            v296 = v266;
            v297 = v267;
            v298 = v268;
            v291 = v261;
            v292 = v262;
            v293 = v263;
            v294 = v264;
            v287 = v257;
            v288 = v258;
            v289 = v259;
            v290 = v260;
            if (sub_1AF448314(&v287) != 1)
            {
              v182 = v291;
              v183 = *(v291 + 16);
              if (v183)
              {
                v184 = v291 + 32;

                sub_1AF4424F4(&v302, &v257);
                v241 = v182;

                v185 = 0;
                v186 = v251;
                do
                {
                  v187 = v184 + 40 * v185;
                  v188 = *v187;
                  v189 = *(v187 + 24) != 2 || v188 == 0xFFFFFFFF;
                  if (!v189 && (v188 & 0x80000000) == 0 && v188 < v186[1])
                  {
                    v190 = (*v186 + 12 * v188);
                    if (HIDWORD(v188) == 0xFFFFFFFF || v190[2] == HIDWORD(v188))
                    {
                      v193 = *(v187 + 8);
                      v192 = *(v187 + 16);
                      v194 = *(v190 + 2);
                      v195 = *(*(v2 + 144) + 8 * *v190 + 32);
                      v196 = *(v195 + 48);
                      v197 = (v196 + 32);
                      v198 = *(v196 + 16) + 1;
                      while (--v198)
                      {
                        v199 = v197 + 5;
                        v200 = *v197;
                        v197 += 5;
                        if (v200 == &type metadata for TextureLoadPolicy)
                        {
                          if (*(&(*(v199 - 2))->Kind + 4 * v194 + *(v195 + 128) + 1) == 1)
                          {
                            v240 = v193;
                            v201 = v192;

                            sub_1AF64E4D0(v188, v240, v201, 2);
                            sub_1AF6700C0(v188, v2, &type metadata for TextureLoadRequestGPU, &off_1F2544788, v2);

                            sub_1AF88DCFC(v188, v240, v201, 2);
                            v186 = v251;
                          }

                          break;
                        }
                      }
                    }
                  }

                  ++v185;
                }

                while (v185 != v183);
                sub_1AFB2E5D4(&v272, &qword_1ED7255C8, &type metadata for MaterialRuntime, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
                sub_1AF584F68(&v302);
              }

              else
              {

                sub_1AFB2E5D4(&v272, &qword_1ED7255C8, &type metadata for MaterialRuntime, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
              }
            }

            goto LABEL_227;
          }

          v204 = *(v179 + 20);
          v205 = *(v179 + 16);
          v241 = v179;
          if (__PAIR64__(v204, v205) == 0xFFFFFFFF)
          {
            v2 = v249;
            goto LABEL_227;
          }

          v122 = v250;
          v123 = v251;
          if ((v205 & 0x80000000) == 0 && v129 > v205)
          {
            v217 = (v130 + 12 * v205);
            v218 = *(v217 + 2);
            if (v204 == -1 || v217[2] == v204)
            {
              v219 = *(v134 + 8 * *v217);
              v220 = *(v219 + 48);
              v221 = (v220 + 32);
              v222 = *(v220 + 16) + 1;
              while (--v222)
              {
                v223 = v221 + 5;
                v224 = *v221;
                v221 += 5;
                if (v224 == &type metadata for TextureLoadPolicy)
                {
                  if (*(&(*(v223 - 2))->Kind + 4 * v218 + *(v219 + 128) + 1) != 1)
                  {
                    goto LABEL_120;
                  }

                  v225 = v249;

                  sub_1AF4424F4(&v302, &v287);
                  v226 = v205 | (v204 << 32);
                  v2 = v225;
                  swift_unknownObjectRetain();
                  sub_1AF6700C0(v226, v225, &type metadata for TextureLoadRequestGPU, &off_1F2544788, v225);
                  swift_unknownObjectRelease();

                  sub_1AF584F68(&v302);

                  v122 = v250;
                  v123 = v251;
                  goto LABEL_121;
                }
              }
            }
          }

          goto LABEL_120;
        }
      }

LABEL_152:
      if ((*(v252 + 520) & 1) == 0)
      {
        v151 = *(v249 + 184);
        v152 = v142;

        v256 = v152;

        os_unfair_recursive_lock_lock_with_options();
        v153 = *(v151 + 64);
        v154 = *(v151 + 96);
        v274 = *(v151 + 80);
        v275 = v154;
        LOBYTE(v276) = *(v151 + 112);
        v155 = *(v151 + 64);
        v272 = *(v151 + 48);
        v273 = v153;
        v156 = *(v151 + 96);
        v259 = v274;
        v260 = v156;
        LOBYTE(v261) = *(v151 + 112);
        v257 = *(v151 + 48);
        v258 = v155;
        v157 = sub_1AF64FC48(&type metadata for DefaultMaterialInstance);
        v159 = v158;
        v161 = v160;
        v289 = v259;
        v290 = v260;
        LOBYTE(v291) = v261;
        v287 = v257;
        v288 = v258;
        sub_1AF5DD36C(&v272, &v302);
        sub_1AF5DD3C8(&v287);
        if ((v161 & 1) != 0 || v159 - 65 < 0xFFFFFFFFFFFFFF7FLL || (v159 & 0x8000000000000000) != 0 || v159 > 0x3F || ((1 << v159) & *(v151 + 120)) == 0)
        {
          os_unfair_recursive_lock_unlock();
        }

        else
        {
          v162 = (*(v151 + 16) + v157);
          v163 = 32 * v159;
          os_unfair_lock_lock(*(*(v151 + 32) + 32 * v159 + 24));
          os_unfair_recursive_lock_unlock();
          v165 = *v162;
          v164 = v162[1];
          os_unfair_lock_unlock(*(*(v151 + 32) + v163 + 24));

          if (v165 != -1 || v164)
          {

            v2 = v249;
LABEL_226:
            *(v252 + 520) = 1;
LABEL_227:
            v122 = v250;
            v123 = v251;
            goto LABEL_121;
          }
        }

        v244 = v143;
        sub_1AF892268();
        v228 = v227;
        type metadata accessor for RenderPipelineFactory();
        swift_allocObject();
        v229 = sub_1AF89DCA8(140);
        *(v229 + 88) = sub_1AF891C5C;
        *(v229 + 96) = 0;

        v2 = v249;
        v230 = *(v249 + v243);
        v54 = *v230;
        v231 = *(*v230 + 32);

        ecs_stack_allocator_push_snapshot(v231);
        v232 = ecs_stack_allocator_allocate(*(v54 + 32), 32, 8);
        *v232 = &type metadata for Material;
        v232[1] = &off_1F253F848;
        v232[2] = &type metadata for Name;
        v232[3] = &off_1F2535068;
        LOBYTE(v257) = 1;
        v233 = sub_1AF635354(v232, 2, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v54, 0, v229, -1.0, 0, 1, 0xD000000000000018, v242);

        if (v7)
        {
LABEL_232:
          ecs_stack_allocator_pop_snapshot(*(v54 + 32));
          __break(1u);
          return;
        }

        ecs_stack_allocator_pop_snapshot(*(v54 + 32));

        sub_1AF6879B0(v233, v2, v228);

        *&v257 = v233;
        MEMORY[0x1EEE9AC00](v234, v235);
        v236 = *(v2 + 184);

        sub_1AF6D655C(&type metadata for DefaultMaterialInstance, &off_1F253FC80, v236, sub_1AFB2E718);

        goto LABEL_226;
      }

LABEL_120:
      v2 = v249;
LABEL_121:
      if (++v10 == v122)
      {
        goto LABEL_118;
      }
    }
  }
}

void sub_1AFB2A848(uint64_t a1)
{
  v3 = *(v1 + 376);
  v308[0] = *(v1 + 360);
  v308[1] = v3;
  v309 = *(v1 + 392);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(a1, v308, 0x200000000, &v253);
  v5 = v253;
  if (v253)
  {
    v212 = v256;
    v226 = v258;
    v228 = v259;
    v269 = v254;
    v270 = v255;
    if (v260 >= 1 && v257)
    {
      v211 = v257;
      v230 = v4;
      v215 = v228[4];
      v214 = *(v226 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v217 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
      v216 = OBJC_IVAR____TtC3VFX13EntityManager_currentState;
      v6 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      sub_1AFB2EA40(&v253, v265, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
      v7 = 0;
      v272 = v269;
      v271 = v5;
      v273 = v270;
      while (1)
      {
        v213 = v7;
        v8 = (v212 + 48 * v7);
        v10 = *v8;
        v9 = v8[1];
        v220 = v8[2];
        v221 = v9;
        v11 = *(v8 + 2);
        v12 = *(v8 + 3);
        v13 = *(v8 + 5);
        v222 = *(v8 + 4);
        v223 = v11;
        v229 = v13;
        if (v214)
        {
          v14 = *(v229 + 47);

          v15 = v14;
          v13 = v229;
          os_unfair_lock_lock(v15);
          os_unfair_lock_lock(*(v13 + 43));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v215);
        v16 = v228;
        v17 = *(v228 + 4);
        v280[0] = *(v228 + 3);
        v280[1] = v17;
        v281 = v228[10];
        v18 = *(*(*(*(v13 + 5) + 16) + 32) + 16) + 1;
        v16[6] = ecs_stack_allocator_allocate(v228[4], 48 * v18, 8);
        v16[7] = v18;
        v16[9] = 0;
        v16[10] = 0;
        v16[8] = 0;
        v19 = v223;
        v20 = v12;
        v21 = v222;
        sub_1AF64B110(&type metadata for TextureRequireAnimationRepresentation, &off_1F25444F0, v223, v20, v222, v16);
        v224 = 32;
        if (!v19)
        {
          break;
        }

        v22 = v230;
        if (v21)
        {
          v23 = 0;
          do
          {
            v24 = v223[v23];
            v231 = v23;
            v284 = v226;
            v285 = v229;
            v286 = v228;
            v287 = v23 + v220;
            v288 = v24;
            v25 = *(v227 + 400);
            LODWORD(v238) = *(v227 + 408);
            v26 = *(v227 + 412);
            v27 = *(v227 + 416);
            LODWORD(v235) = *(v227 + 424);
            v236 = *(v227 + 432);
            v237 = v27;
            os_unfair_lock_lock(*(v22 + 40));
            v28 = *(v22 + 48);
            if (*(v28 + 16) && (v29 = sub_1AF449CB8(*(v25 + 32)), (v30 & 1) != 0))
            {
              v31 = (*(v28 + 56) + 24 * v29);
              v32 = v22;
              v33 = *v31;
              v34 = v31[1];

              v239 = v33;
            }

            else
            {

              v239 = sub_1AF6B1714(a1, v25);
              v32 = v22;
              v34 = v35;
            }

            os_unfair_lock_unlock(*(v32 + 40));
            v37 = *(v34 + 16);
            if (v37)
            {
              v38 = thread_worker_index(v36);
              if (*v38 == -1)
              {
                v39 = *(a1 + v217);
              }

              else
              {
                v39 = (*(a1 + v217) + 8 * *v38 + 8);
              }

              if (*(a1 + v216) == 4)
              {
                v40 = *(a1 + 224);
                if (*(a1 + 233) == 1)
                {
                  v41 = v40 <= 1;
                }

                else
                {
                  v41 = v40 <= 0;
                }

                v42 = !v41;
              }

              else
              {
                v42 = 1;
              }

              v43 = *v39;
              v44 = v235;
              if (v235 == 2)
              {
                v44 = v42;
              }

              v289 = v25;
              v290 = v238;
              v291 = v26;
              v292 = v237;
              v293 = v44;
              v294 = v236;

              sub_1AF6BB028(v45, v43, &v289, (v34 + 32), v37, v261);
              v249 = v261[2];
              v250 = v262;
              v251 = v263;
              v252 = v264;
              v247 = v261[0];
              v248 = v261[1];

              if (*&v261[0])
              {
                v22 = v230;
                if (v264 < 1 || (v233 = *(&v262 + 1)) == 0)
                {
                  sub_1AFB2E5D4(v261, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
                  goto LABEL_14;
                }

                v232 = *(&v261[2] + 1);
                v46 = *(&v263 + 1);
                LODWORD(v237) = *(v263 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
                v236 = *(*(&v263 + 1) + 32);
                v277 = *&v261[0];
                v278 = *(v261 + 8);
                v279 = *(&v261[1] + 8);
                v243 = v249;
                v244 = v250;
                v245 = v251;
                v246 = v252;
                v241 = v247;
                v242 = v248;
                sub_1AF5DD298(&v241, v240);
                v47 = 0;
                v234 = v46;
                do
                {
                  v235 = v47;
                  v48 = (v232 + 48 * v47);
                  v50 = *v48;
                  v49 = v48[1];
                  v52 = *(v48 + 2);
                  v51 = *(v48 + 3);
                  v54 = *(v48 + 4);
                  v53 = *(v48 + 5);
                  v238 = v53;
                  v239 = v49;
                  if (v237)
                  {
                    v55 = *(v238 + 376);

                    v56 = v55;
                    v53 = v238;
                    os_unfair_lock_lock(v56);
                    os_unfair_lock_lock(*(v53 + 344));
                  }

                  else
                  {
                  }

                  ecs_stack_allocator_push_snapshot(v236);
                  v57 = *(v46 + 4);
                  v282[0] = *(v46 + 3);
                  v282[1] = v57;
                  v283 = v46[10];
                  v58 = *(*(*(*(v53 + 40) + 16) + 32) + 16) + 1;
                  v46[6] = ecs_stack_allocator_allocate(v46[4], 48 * v58, 8);
                  v46[7] = v58;
                  v46[9] = 0;
                  v46[10] = 0;
                  v46[8] = 0;
                  v59 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v52, v51, v54, v46);
                  if (v52)
                  {
                    if (v54)
                    {
                      v60 = 0;
                      v239 = v59 + 24;
                      do
                      {
                        v61 = *(*(v239 + 104 * v60) + 16);
                        if (v61)
                        {

                          v64 = 32;
                          do
                          {
                            v66 = MEMORY[0x1EEE9AC00](v62, v63).n128_u64[0];
                            v208 = v67;
                            v209 = a1;
                            v210 = v66;
                            v68 = v66 == -1 && HIDWORD(v66) == 0;
                            if (!v68 && (v66 & 0x80000000) == 0 && v6[1] > v66)
                            {
                              v69 = (*v6 + v66 * v65);
                              v70 = v69[2];
                              if (HIDWORD(v66) == -1 || v70 == HIDWORD(v66))
                              {
                                v62 = sub_1AF683FD0(*(*(a1 + 144) + 8 * *v69 + 32), a1, *v69 | (*(v69 + 3) << 48) | (*(v69 + 2) << 32), v70, sub_1AFB2EB38, v207);
                              }
                            }

                            v64 += 8;
                            --v61;
                          }

                          while (v61);
                        }

                        ++v60;
                      }

                      while (v60 != v54);
                    }
                  }

                  else if (v50 != v239)
                  {
                    v85 = v59 + 24;
                    do
                    {
                      v86 = *(*(v85 + 104 * v50) + 16);
                      if (v86)
                      {

                        v89 = 32;
                        do
                        {
                          v91 = MEMORY[0x1EEE9AC00](v87, v88).n128_u64[0];
                          v208 = v92;
                          v209 = a1;
                          v210 = v91;
                          v93 = v91 == -1 && HIDWORD(v91) == 0;
                          if (!v93 && (v91 & 0x80000000) == 0 && v6[1] > v91)
                          {
                            v94 = (*v6 + v91 * v90);
                            v95 = v94[2];
                            if (HIDWORD(v91) == -1 || v95 == HIDWORD(v91))
                            {
                              v87 = sub_1AF683FD0(*(*(a1 + 144) + 8 * *v94 + 32), a1, *v94 | (*(v94 + 3) << 48) | (*(v94 + 2) << 32), v95, sub_1AFB2EB38, v207);
                            }
                          }

                          v89 += 8;
                          --v86;
                        }

                        while (v86);
                      }

                      ++v50;
                    }

                    while (v50 != v239);
                  }

                  v46 = v234;
                  sub_1AF630994(v234, &v277, v282);
                  v72 = v238;
                  if (*(v46[13] + 16))
                  {

                    sub_1AF62F348(v73, v72);

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v75 = v46[13];
                    if (isUniquelyReferenced_nonNull_native)
                    {
                      v76 = v75[2];
                      v77 = swift_isUniquelyReferenced_nonNull_native();
                      v46[13] = v75;
                      if ((v77 & 1) == 0)
                      {
                        v75 = sub_1AF420EA0(0, v76, 1, v75);
                        v46[13] = v75;
                      }

                      sub_1AFB2E96C(0, qword_1ED729A30, sub_1AF43A570);
                      swift_arrayDestroy();
                      if (v76)
                      {
                        v78 = v75[2] - v76;
                        memmove(v75 + 4, &v75[9 * v76 + 4], 72 * v78);
                        v75[2] = v78;
                        v72 = v238;
                      }

                      v46[13] = v75;
                    }

                    else
                    {
                      v79 = MEMORY[0x1E69E7CC0];
                      if (v75[3] >= 2uLL)
                      {
                        sub_1AF9FA280();
                        v79 = swift_allocObject();
                        v80 = j__malloc_size_0(v79);
                        v79[2] = 0;
                        v79[3] = 2 * ((v80 - 32) / 72);
                      }

                      v46[13] = v79;
                    }

                    if (*(v46[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
                    {
                      v81 = *(v72 + 232);
                      v82 = *(v72 + 256);
                      v83 = v81 - v82;
                      if (v81 == v82)
                      {
                        v84 = *(v72 + 240);
                      }

                      else
                      {
                        v239 = *(v72 + 232);
                        v221 = (v72 + 232);
                        v97 = *(v72 + 56);
                        v98 = *(v97 + 16);
                        if (v98)
                        {
                          v99 = *(v72 + 48);
                          v225 = *(v72 + 64);
                          v219 = v99;

                          swift_retain_n();

                          v218 = v97;
                          v100 = v97 + 56;
                          do
                          {
                            sub_1AF640BC8();
                            v100 += 40;
                            --v98;
                          }

                          while (v98);

                          v46 = v234;
                          v72 = v238;
                        }

                        if ((*(v72 + 184) & 1) == 0)
                        {
                          v218 = *(v72 + 168);
                          v101 = *(v72 + 16);
                          v102 = *(v101 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                          os_unfair_lock_lock(v102);

                          v103 = OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex;
                          v225 = OBJC_IVAR____TtC3VFX13EntityManager_entityCount;
                          v104 = *(v101 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
                          v219 = v82 + *(v101 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount);
                          v105 = *(v101 + OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex);

                          v106 = (v218 + 4 * v82);
                          do
                          {
                            v107 = *v106++;
                            v108 = (v104 + 12 * v107);
                            *v108 = v105;
                            v108[1] = -1;
                            ++v108[2];
                            *(v101 + v103) = v107;
                            v105 = v107;
                            --v83;
                          }

                          while (v83);
                          *(v101 + v225) = v219 - v239;

                          v109 = *(v101 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                          os_unfair_lock_unlock(v109);

                          v46 = v234;
                          v72 = v238;
                        }

                        v110 = *(v72 + 192);
                        if (v110)
                        {
                          v111 = *(v72 + 208);
                          v112 = v239;
                          sub_1AF75D364(v82, v239, v110);
                          sub_1AF75D364(v82, v112, v111);
                        }

                        v82 = *(v72 + 232);
                        v84 = *(v72 + 240);
                        if (v84 == v82)
                        {
                          v84 = 0;
                          v82 = 0;
                          v113 = v221;
                          *v221 = 0;
                          v113[1] = 0;
                        }
                      }

                      *(v72 + 248) = v84;
                      *(v72 + 256) = v82;
                    }
                  }

                  ecs_stack_allocator_pop_snapshot(v236);
                  if (v237)
                  {
                    os_unfair_lock_unlock(*(v72 + 344));
                    os_unfair_lock_unlock(*(v72 + 376));
                  }

                  v47 = v235 + 1;
                }

                while (v235 + 1 != v233);
                v114 = MEMORY[0x1E69E6720];
                sub_1AFB2E5D4(v261, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
                sub_1AFB2E5D4(v261, &qword_1ED725EA0, &type metadata for QueryResult, v114, sub_1AFB2E7BC);
              }
            }

            else
            {
            }

            v22 = v230;
LABEL_14:
            v23 = v231 + 1;
          }

          while (v231 + 1 != v222);
        }

LABEL_111:
        sub_1AF630994(v228, &v271, v280);
        v116 = v229;
        sub_1AF62D29C(v229);
        ecs_stack_allocator_pop_snapshot(v215);
        if (v214)
        {
          os_unfair_lock_unlock(*(v116 + 43));
          os_unfair_lock_unlock(*(v116 + 47));
        }

        v7 = v213 + 1;
        if (v213 + 1 == v211)
        {
          sub_1AFB2E5D4(&v253, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
          goto LABEL_213;
        }
      }

      v115 = v230;
      if (v10 == v221)
      {
        goto LABEL_111;
      }

      v222 = v220 - v10;
      while (1)
      {
        v297 = v226;
        v298 = v229;
        v299 = v228;
        v300 = v222 + v10;
        v231 = v10;
        v301 = v10;
        v117 = *(v227 + 400);
        LODWORD(v238) = *(v227 + 408);
        v118 = *(v227 + 412);
        v119 = *(v227 + 416);
        LODWORD(v235) = *(v227 + 424);
        v236 = *(v227 + 432);
        v237 = v119;
        os_unfair_lock_lock(*(v115 + 40));
        v120 = *(v115 + 48);
        if (*(v120 + 16) && (v121 = sub_1AF449CB8(*(v117 + 32)), (v122 & 1) != 0))
        {
          v123 = (*(v120 + 56) + 24 * v121);
          v124 = v115;
          v125 = *v123;
          v126 = v123[1];

          v239 = v125;
        }

        else
        {

          v239 = sub_1AF6B1714(a1, v117);
          v124 = v115;
          v126 = v127;
        }

        os_unfair_lock_unlock(*(v124 + 40));
        v129 = *(v126 + 16);
        if (v129)
        {
          v130 = thread_worker_index(v128);
          if (*v130 == -1)
          {
            v131 = *(a1 + v217);
          }

          else
          {
            v131 = (*(a1 + v217) + 8 * *v130 + 8);
          }

          if (*(a1 + v216) == 4)
          {
            v132 = *(a1 + 224);
            if (*(a1 + 233) == 1)
            {
              v133 = v132 <= 1;
            }

            else
            {
              v133 = v132 <= 0;
            }

            v134 = !v133;
          }

          else
          {
            v134 = 1;
          }

          v135 = *v131;
          v136 = v235;
          if (v235 == 2)
          {
            v136 = v134;
          }

          v302 = v117;
          v303 = v238;
          v304 = v118;
          v305 = v237;
          v306 = v136;
          v307 = v236;

          sub_1AF6BB028(v137, v135, &v302, (v126 + 32), v129, v265);
          v249 = v265[2];
          v250 = v266;
          v251 = v267;
          v252 = v268;
          v247 = v265[0];
          v248 = v265[1];

          if (*&v265[0])
          {
            v115 = v230;
            if (v268 >= 1 && (v233 = *(&v266 + 1)) != 0)
            {
              v232 = *(&v265[2] + 1);
              v138 = *(&v267 + 1);
              LODWORD(v237) = *(v267 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
              v236 = *(*(&v267 + 1) + 32);
              v274 = *&v265[0];
              v275 = *(v265 + 8);
              v276 = *(&v265[1] + 8);
              v243 = v249;
              v244 = v250;
              v245 = v251;
              v246 = v252;
              v241 = v247;
              v242 = v248;
              sub_1AF5DD298(&v241, v240);
              v139 = 0;
              v234 = v138;
              do
              {
                v235 = v139;
                v140 = (v232 + 48 * v139);
                v142 = *v140;
                v141 = v140[1];
                v144 = *(v140 + 2);
                v143 = *(v140 + 3);
                v146 = *(v140 + 4);
                v145 = *(v140 + 5);
                v238 = v145;
                v239 = v141;
                if (v237)
                {
                  v147 = *(v238 + 376);

                  v148 = v147;
                  v145 = v238;
                  os_unfair_lock_lock(v148);
                  os_unfair_lock_lock(*(v145 + 344));
                }

                else
                {
                }

                ecs_stack_allocator_push_snapshot(v236);
                v149 = *(v138 + 4);
                v295[0] = *(v138 + 3);
                v295[1] = v149;
                v296 = v138[10];
                v150 = *(*(*(*(v145 + 40) + 16) + 32) + 16) + 1;
                v138[6] = ecs_stack_allocator_allocate(v138[4], 48 * v150, 8);
                v138[7] = v150;
                v138[9] = 0;
                v138[10] = 0;
                v138[8] = 0;
                v151 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v144, v143, v146, v138);
                if (v144)
                {
                  if (v146)
                  {
                    v152 = 0;
                    v239 = v151 + 24;
                    do
                    {
                      v153 = *(*(v239 + 104 * v152) + 16);
                      if (v153)
                      {

                        v156 = 32;
                        do
                        {
                          v158 = MEMORY[0x1EEE9AC00](v154, v155).n128_u64[0];
                          v208 = v159;
                          v209 = a1;
                          v210 = v158;
                          v160 = v158 == -1 && HIDWORD(v158) == 0;
                          if (!v160 && (v158 & 0x80000000) == 0 && v6[1] > v158)
                          {
                            v161 = (*v6 + v158 * v157);
                            v162 = v161[2];
                            if (HIDWORD(v158) == -1 || v162 == HIDWORD(v158))
                            {
                              v154 = sub_1AF683FD0(*(*(a1 + 144) + 8 * *v161 + 32), a1, *v161 | (*(v161 + 3) << 48) | (*(v161 + 2) << 32), v162, sub_1AFB2EB38, v207);
                            }
                          }

                          v156 += 8;
                          --v153;
                        }

                        while (v153);
                      }

                      ++v152;
                    }

                    while (v152 != v146);
                  }
                }

                else if (v142 != v239)
                {
                  v177 = v151 + 24;
                  do
                  {
                    v178 = *(*(v177 + 104 * v142) + 16);
                    if (v178)
                    {

                      v181 = 32;
                      do
                      {
                        v183 = MEMORY[0x1EEE9AC00](v179, v180).n128_u64[0];
                        v208 = v184;
                        v209 = a1;
                        v210 = v183;
                        v185 = v183 == -1 && HIDWORD(v183) == 0;
                        if (!v185 && (v183 & 0x80000000) == 0 && v6[1] > v183)
                        {
                          v186 = (*v6 + v183 * v182);
                          v187 = v186[2];
                          if (HIDWORD(v183) == -1 || v187 == HIDWORD(v183))
                          {
                            v179 = sub_1AF683FD0(*(*(a1 + 144) + 8 * *v186 + 32), a1, *v186 | (*(v186 + 3) << 48) | (*(v186 + 2) << 32), v187, sub_1AFB2E70C, v207);
                          }
                        }

                        v181 += 8;
                        --v178;
                      }

                      while (v178);
                    }

                    ++v142;
                  }

                  while (v142 != v239);
                }

                v138 = v234;
                sub_1AF630994(v234, &v274, v295);
                v164 = v238;
                if (*(v138[13] + 16))
                {

                  sub_1AF62F348(v165, v164);

                  v166 = swift_isUniquelyReferenced_nonNull_native();
                  v167 = v138[13];
                  if (v166)
                  {
                    v168 = v167[2];
                    v169 = swift_isUniquelyReferenced_nonNull_native();
                    v138[13] = v167;
                    if ((v169 & 1) == 0)
                    {
                      v167 = sub_1AF420EA0(0, v168, 1, v167);
                      v138[13] = v167;
                    }

                    sub_1AFB2E96C(0, qword_1ED729A30, sub_1AF43A570);
                    swift_arrayDestroy();
                    if (v168)
                    {
                      v170 = v167[2] - v168;
                      memmove(v167 + 4, &v167[9 * v168 + 4], 72 * v170);
                      v167[2] = v170;
                      v164 = v238;
                    }

                    v138[13] = v167;
                  }

                  else
                  {
                    v171 = MEMORY[0x1E69E7CC0];
                    if (v167[3] >= 2uLL)
                    {
                      sub_1AF9FA280();
                      v171 = swift_allocObject();
                      v172 = j__malloc_size_0(v171);
                      v171[2] = 0;
                      v171[3] = 2 * ((v172 - 32) / 72);
                    }

                    v138[13] = v171;
                  }

                  if (*(v138[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
                  {
                    v173 = *(v164 + 232);
                    v174 = *(v164 + 256);
                    v175 = v173 - v174;
                    if (v173 == v174)
                    {
                      v176 = *(v164 + 240);
                    }

                    else
                    {
                      v239 = *(v164 + 232);
                      v223 = (v164 + 232);
                      v189 = *(v164 + 56);
                      v190 = *(v189 + 16);
                      if (v190)
                      {
                        v191 = *(v164 + 48);
                        v225 = *(v164 + 64);
                        v220 = v191;

                        swift_retain_n();

                        v219 = v189;
                        v192 = v189 + 56;
                        do
                        {
                          sub_1AF640BC8();
                          v192 += 40;
                          --v190;
                        }

                        while (v190);

                        v138 = v234;
                        v164 = v238;
                      }

                      if ((*(v164 + 184) & 1) == 0)
                      {
                        v219 = *(v164 + 168);
                        v193 = *(v164 + 16);
                        v194 = *(v193 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                        os_unfair_lock_lock(v194);

                        v195 = OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex;
                        v225 = OBJC_IVAR____TtC3VFX13EntityManager_entityCount;
                        v196 = *(v193 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
                        v220 = v174 + *(v193 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount);
                        v197 = *(v193 + OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex);

                        v198 = (v219 + 4 * v174);
                        do
                        {
                          v199 = *v198++;
                          v200 = (v196 + 12 * v199);
                          *v200 = v197;
                          v200[1] = -1;
                          ++v200[2];
                          *(v193 + v195) = v199;
                          v197 = v199;
                          --v175;
                        }

                        while (v175);
                        *(v193 + v225) = v220 - v239;

                        v201 = *(v193 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                        os_unfair_lock_unlock(v201);

                        v138 = v234;
                        v164 = v238;
                      }

                      v202 = *(v164 + 192);
                      if (v202)
                      {
                        v203 = *(v164 + 208);
                        v204 = v239;
                        sub_1AF75D364(v174, v239, v202);
                        sub_1AF75D364(v174, v204, v203);
                      }

                      v174 = *(v164 + 232);
                      v176 = *(v164 + 240);
                      if (v176 == v174)
                      {
                        v176 = 0;
                        v174 = 0;
                        v205 = v223;
                        *v223 = 0;
                        v205[1] = 0;
                      }
                    }

                    *(v164 + 248) = v176;
                    *(v164 + 256) = v174;
                  }
                }

                ecs_stack_allocator_pop_snapshot(v236);
                if (v237)
                {
                  os_unfair_lock_unlock(*(v164 + 344));
                  os_unfair_lock_unlock(*(v164 + 376));
                }

                v139 = v235 + 1;
              }

              while (v235 + 1 != v233);
              v206 = MEMORY[0x1E69E6720];
              sub_1AFB2E5D4(v265, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
              sub_1AFB2E5D4(v265, &qword_1ED725EA0, &type metadata for QueryResult, v206, sub_1AFB2E7BC);
              v115 = v230;
            }

            else
            {
              sub_1AFB2E5D4(v265, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
            }

            goto LABEL_115;
          }
        }

        else
        {
        }

        v115 = v230;
LABEL_115:
        v10 = v231 + 1;
        if ((v231 + 1) == v221)
        {
          goto LABEL_111;
        }
      }
    }

LABEL_213:
    sub_1AFB2E5D4(&v253, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
  }
}

unint64_t sub_1AFB2C084(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[3];
  v7 = a1[4];
  sub_1AF441150(a1, v6);
  v8 = (*(v7 + 32))(v6, v7);
  v9 = *(a2 + 32);

  v10 = sub_1AF6496EC(v9);

  if (v8 == v10)
  {
    return sub_1AF678B44(a4);
  }

  return result;
}

uint64_t sub_1AFB2C130()
{

  return v0;
}

uint64_t sub_1AFB2C1A8()
{
  sub_1AFB2C130();

  return swift_deallocClassInstance();
}

uint64_t sub_1AFB2C1DC()
{
  *(v0 + 16) = "ResourceUsage";
  *(v0 + 24) = 13;
  *(v0 + 32) = 2;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v106 = qword_1ED73B840;
  v107 = 0;
  v108 = 2;
  v109 = 0;
  v110 = 2;
  v111 = 0;
  sub_1AF7033E0(1, &v48);
  v1 = v49;
  v2 = v50;
  v3 = v52;
  v4 = v51 | 4;
  *(v0 + 40) = v48;
  *(v0 + 48) = v1;
  *(v0 + 52) = v2;
  *(v0 + 56) = v4;
  *(v0 + 64) = 2;
  *(v0 + 72) = v3;
  sub_1AF702F8C(1, &v53);
  v5 = v54;
  v6 = v55;
  v7 = v57;
  v8 = v56 | 4;
  *(v0 + 80) = v53;
  *(v0 + 88) = v5;
  *(v0 + 92) = v6;
  *(v0 + 96) = v8;
  *(v0 + 104) = 2;
  *(v0 + 112) = v7;
  sub_1AF702F14(1, &v58);
  v9 = v59;
  v10 = v60;
  v11 = v62;
  v12 = v61 | 4;
  *(v0 + 120) = v58;
  *(v0 + 128) = v9;
  *(v0 + 132) = v10;
  *(v0 + 136) = v12;
  *(v0 + 144) = 2;
  *(v0 + 152) = v11;
  sub_1AF703280(1, &v63);
  v13 = v64;
  v14 = v65;
  v15 = v67;
  v16 = v66 | 4;
  *(v0 + 160) = v63;
  *(v0 + 168) = v13;
  *(v0 + 172) = v14;
  *(v0 + 176) = v16;
  *(v0 + 184) = 2;
  *(v0 + 192) = v15;
  sub_1AF7033F4(1, &v68);
  v17 = v69;
  v18 = v70;
  v19 = v72;
  v20 = v71 | 4;
  *(v0 + 200) = v68;
  *(v0 + 208) = v17;
  *(v0 + 212) = v18;
  *(v0 + 216) = v20;
  *(v0 + 224) = 2;
  *(v0 + 232) = v19;
  sub_1AF70363C(1, &v73);
  v21 = v74;
  v22 = v75;
  v23 = v77;
  v24 = v76 | 4;
  *(v0 + 240) = v73;
  *(v0 + 248) = v21;
  *(v0 + 252) = v22;
  *(v0 + 256) = v24;
  *(v0 + 264) = 2;
  *(v0 + 272) = v23;
  sub_1AF703884(1, &v78);
  v25 = v79;
  v26 = v80;
  v27 = v82;
  v28 = v81 | 4;
  *(v0 + 280) = v78;
  *(v0 + 288) = v25;
  *(v0 + 292) = v26;
  *(v0 + 296) = v28;
  *(v0 + 304) = 2;
  *(v0 + 312) = v27;
  sub_1AF70321C(1, &v83);
  v29 = v84;
  v30 = v85;
  v31 = v87;
  v32 = v86 | 4;
  *(v0 + 320) = v83;
  *(v0 + 328) = v29;
  *(v0 + 332) = v30;
  *(v0 + 336) = v32;
  *(v0 + 344) = 2;
  *(v0 + 352) = v31;
  sub_1AF703ACC(1, &v88);
  v33 = v89;
  v34 = v90;
  v35 = v92;
  v36 = v91 | 4;
  *(v0 + 360) = v88;
  *(v0 + 368) = v33;
  *(v0 + 372) = v34;
  *(v0 + 376) = v36;
  *(v0 + 384) = 2;
  *(v0 + 392) = v35;
  sub_1AF702F8C(1, v93);
  v37 = v93[1];
  *(v0 + 400) = v93[0];
  *(v0 + 416) = v37;
  *(v0 + 432) = v94;
  sub_1AFCC3A60(3, 2, &v95);
  v38 = v96;
  v39 = v97;
  v40 = v99;
  v41 = v100;
  v42 = v98 | 0x20;
  *(v0 + 440) = v95;
  *(v0 + 448) = v38;
  *(v0 + 452) = v39;
  *(v0 + 456) = v42;
  *(v0 + 464) = v40;
  *(v0 + 472) = v41;
  sub_1AF702EB0(1, &v101);
  v43 = v102;
  v44 = v103;
  v45 = v105;
  v46 = v104 | 4;
  *(v0 + 480) = v101;
  *(v0 + 488) = v43;
  *(v0 + 492) = v44;
  *(v0 + 496) = v46;
  *(v0 + 504) = 2;
  *(v0 + 512) = v45;
  *(v0 + 520) = 0;
  return v0;
}

uint64_t sub_1AFB2C544()
{
  v0 = swift_allocObject();
  sub_1AFB2C1DC();
  return v0;
}

uint64_t sub_1AFB2C5A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 61);
  v4 = MEMORY[0x1E69E7CC0];
  v37 = MEMORY[0x1E69E7CC0];
  v5 = *(a2 + 8);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v9 = v5 + 32;
    do
    {
      v10 = (v9 + 8 * v7);
      v11 = v10[1];
      v12 = *v10;
      if ((v12 != -1 || v11 != 0) && (v12 & 0x80000000) == 0)
      {
        v14 = v8[1];
        if (v14 > v12)
        {
          v15 = *v8;
          v16 = (*v8 + 12 * v12);
          if (v11 == -1 || v16[2] == v11)
          {
            v18 = *(*(a1 + 144) + 8 * *v16 + 32);
            if (*(v18 + 120))
            {
              v19 = *(v16 + 2);
              v20 = *(v18 + 48);
              v21 = (v20 + 32);
              v22 = *(v20 + 16) + 1;
              while (--v22)
              {
                v23 = v21 + 5;
                v24 = *v21;
                v21 += 5;
                if (v24 == &type metadata for EmitterShape)
                {
                  v36 = v3;
                  v25 = &(*(v23 - 2))[14 * v19] + *(v18 + 128);
                  v26 = *(v25 + 176);
                  v40 = *(v25 + 160);
                  v41 = v26;
                  v42 = *(v25 + 192);
                  v43 = *(v25 + 208);
                  v27 = *(v25 + 112);
                  v38[6] = *(v25 + 96);
                  v38[7] = v27;
                  v28 = *(v25 + 144);
                  v38[8] = *(v25 + 128);
                  v39 = v28;
                  v29 = *(v25 + 48);
                  v38[2] = *(v25 + 32);
                  v38[3] = v29;
                  v30 = *(v25 + 80);
                  v38[4] = *(v25 + 64);
                  v38[5] = v30;
                  v31 = *(v25 + 16);
                  v38[0] = *v25;
                  v38[1] = v31;
                  if (*(&v39 + 1) != 0xFFFFFFFFLL && (DWORD2(v39) & 0x80000000) == 0 && v14 > SDWORD2(v39) && (HIDWORD(v39) == -1 || *(v15 + 12 * SDWORD2(v39) + 8) == HIDWORD(v39)))
                  {
                    sub_1AF6B05F4(SDWORD2(v39) | (HIDWORD(v39) << 32));
                  }

                  v32 = sub_1AF65ADEC(v12 | (v11 << 32));
                  if ((v33 & 0x100000000) == 0)
                  {
                    v34 = v32 << 16 >> 48;

                    sub_1AFC41C10(v34, v38);

                    v3 = v36;
                    break;
                  }

                  result = sub_1AFDFE518();
                  __break(1u);
                  return result;
                }
              }
            }
          }
        }
      }

      ++v7;
    }

    while (v7 != v6);
    v4 = v37;
  }

  sub_1AFB22C80(v4, (v3 & 1) == 0);
}

uint64_t sub_1AFB2C84C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = MEMORY[0x1E69E7CC0];
  v43 = MEMORY[0x1E69E7CC0];
  v4 = *(a2 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v8 = v4 + 32;
    v9 = &qword_1ED724130;
    v34 = v4 + 32;
    v35 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v33 = *(v4 + 16);
    while (1)
    {
      v10 = (v8 + 8 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v11 == -1 && v12 == 0;
      if (!v13 && (v11 & 0x80000000) == 0 && v7[1] > v11)
      {
        v14 = (*v7 + 12 * v11);
        if (v12 == -1 || v14[2] == v12)
        {
          v16 = *(*(v2 + 144) + 8 * *v14 + 32);
          if (*(v16 + 120))
          {
            v17 = *(*(*(*(v2 + 88) + 8 * *(v14 + 3) + 32) + 16) + 32);
            if (*(v17 + 16))
            {
              break;
            }
          }
        }
      }

LABEL_4:
      if (++v6 == v5)
      {
        v3 = v43;
        goto LABEL_29;
      }
    }

    v18 = *(v14 + 2);

    v19 = 0;
LABEL_21:
    v20 = v9;
    v21 = *(v17 + 32 + 16 * v19++);
    v22 = *(v16 + 48);
    v24 = *(v22 + 16);
    v23 = v22 + 16;
    v25 = v21;
    v26 = v24 + 1;
    while (--v26)
    {
      v27 = (v23 + 40);
      v28 = *(v23 + 16);
      v23 += 40;
      if (v28 == v21)
      {
        v29 = *(v27 - 1);
        if (v29 <= 1)
        {
          v29 = 1;
        }

        v30 = *(v16 + 128) + *v27 + v29 * v18;
        v42 = v21;
        v31 = sub_1AF585714(v41);
        sub_1AF641154(v30, v25, v31);
        sub_1AF441194(v41, v39);
        sub_1AF5C5358(0, &qword_1ED72FFF0);
        v9 = v20;
        sub_1AF5C5358(0, v20);
        if (swift_dynamicCast())
        {
          sub_1AF616568(v37, v40);
          sub_1AFB26A0C(v40);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v40);
        }

        else
        {
          v38 = 0;
          memset(v37, 0, sizeof(v37));
          sub_1AFB2E634(v37, &unk_1ED724120, v20, &protocol descriptor for ParticleDefaultRendererable);
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v41);
        if (v19 == *(v17 + 16))
        {

          v2 = a1;
          v8 = v34;
          v7 = v35;
          v5 = v33;
          goto LABEL_4;
        }

        goto LABEL_21;
      }
    }

    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
LABEL_29:
    sub_1AFB22C80(v3, 0);
  }

  return result;
}

uint64_t sub_1AFB2CB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *(a1 + 61);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v29[0] = *a1;
  v29[1] = v4;
  v29[2] = v5;
  v29[3] = v6;
  v7 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);

  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (1)
  {
LABEL_2:
    while (v8 && v9 != *(v8 + 16))
    {
      v12 = v8 + 8 * v9;
      v13 = *(v12 + 32);
      v14 = *(v12 + 36);
      ++v9;
      if ((v13 != -1 || v14) && (v13 & 0x80000000) == 0 && v7[1] > v13)
      {
        v15 = (*v7 + 12 * v13);
        v16 = *(v15 + 2);
        if (v14 == -1 || v15[2] == v14)
        {
          v17 = *(*(a2 + 144) + 8 * *v15 + 32);
          v18 = *(v17 + 48);
          v19 = (v18 + 32);
          v20 = *(v18 + 16) + 1;
          while (--v20)
          {
            v21 = v19 + 5;
            v22 = *v19;
            v19 += 5;
            if (v22 == &type metadata for ParticleNoise)
            {
              v23 = &(*(v21 - 2))[4 * v16] + *(v17 + 128);
              v24 = v23[36];
              if (v24 != 2)
              {
                v25 = *(v23 + 5);
                if (v27)
                {
                  sub_1AF74F2D4(a2, a3, v24, v25, 1, v30);
                  sub_1AFB2E888(v30, sub_1AFB2E8E8);
                }

                else
                {
                  sub_1AF74F2D4(a2, a3, v24, v25, 0, v31);
                  sub_1AFB2E888(v31, sub_1AFB2E8E8);
                }
              }

              goto LABEL_2;
            }
          }
        }
      }
    }

    if (v10 == 4)
    {
      break;
    }

    v11 = v29[v10++];

    v9 = 0;
    v8 = v11;
  }

  sub_1AFB2E734();
  swift_arrayDestroy();
}

void sub_1AFB2CD6C(uint64_t a1)
{
  v2 = *(v1 + 336);
  v290[0] = *(v1 + 320);
  v290[1] = v2;
  v291 = *(v1 + 352);
  v3 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(a1, v290, 0x200000000, v249);
  v188 = *v249;
  if (!*v249)
  {
    return;
  }

  v187 = *&v249[40];
  v4 = *(&v250 + 1);
  v191 = *(&v251 + 1);
  v261 = *&v249[8];
  v262 = *&v249[24];
  if (v252 <= 0 || !*(&v250 + 1))
  {
    v182 = MEMORY[0x1E69E6720];
    goto LABEL_184;
  }

  v5 = *(*(&v251 + 1) + 32);
  v190 = *(v251 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v201 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  v200 = OBJC_IVAR____TtC3VFX13EntityManager_currentState;
  v248[2] = *&v249[32];
  v248[3] = v250;
  v248[4] = v251;
  v248[5] = v252;
  v248[0] = *v249;
  v248[1] = *&v249[16];
  sub_1AF5DD298(v248, v257);
  v6 = 0;
  v185 = v5;
  v186 = v4;
  v211 = v3;
  do
  {
    v189 = v6;
    v7 = (v187 + 48 * v6);
    v232 = *v7;
    v209 = v7[1];
    v8 = *(v7 + 3);
    v9 = *(v7 + 5);
    v204 = *(v7 + 4);
    v205 = *(v7 + 2);
    if (v190)
    {
      v10 = *(v9 + 376);

      os_unfair_lock_lock(v10);
      os_unfair_lock_lock(*(v9 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v5);
    v11 = *(v191 + 64);
    v272[0] = *(v191 + 48);
    v272[1] = v11;
    v273 = *(v191 + 80);
    v12 = *(*(*(*(v9 + 40) + 16) + 32) + 16) + 1;
    *(v191 + 48) = ecs_stack_allocator_allocate(*(v191 + 32), 48 * v12, 8);
    *(v191 + 56) = v12;
    *(v191 + 72) = 0;
    *(v191 + 80) = 0;
    *(v191 + 64) = 0;
    sub_1AF64B110(&type metadata for TextureFileAsset, &off_1F2544090, v205, v8, v204, v191);
    v234 = v9;
    if (!v205)
    {
      v99 = v211;
      if (v232 == v209)
      {
        goto LABEL_96;
      }

      v100 = *(v184 + 440);
      v203 = *(v184 + 448);
      v202 = *(v184 + 452);
      v199 = *(v184 + 456);
      v197 = *(v184 + 464);
      v195 = *(v184 + 472);
      v208 = v100;
      while (1)
      {
        os_unfair_lock_lock(*(v99 + 40));
        v101 = *(v99 + 48);
        if (*(v101 + 16) && (v102 = sub_1AF449CB8(*(v100 + 32)), (v103 & 1) != 0))
        {
          v104 = v99;
          v105 = *(*(v101 + 56) + 24 * v102 + 8);
        }

        else
        {

          sub_1AF6B1714(a1, v100);
          v104 = v99;
          v105 = v106;
        }

        os_unfair_lock_unlock(*(v104 + 40));
        v108 = *(v105 + 16);
        if (v108)
        {
          v109 = thread_worker_index(v107);
          if (*v109 == -1)
          {
            v110 = *(a1 + v201);
          }

          else
          {
            v110 = (*(a1 + v201) + 8 * *v109 + 8);
          }

          if (*(a1 + v200) == 4)
          {
            v111 = *(a1 + 224);
            if (*(a1 + 233) == 1)
            {
              v112 = v111 <= 1;
            }

            else
            {
              v112 = v111 <= 0;
            }

            v113 = !v112;
          }

          else
          {
            v113 = 1;
          }

          v114 = *v110;
          v115 = v197;
          if (v197 == 2)
          {
            v115 = v113;
          }

          v284 = v208;
          v285 = v203;
          v286 = v202;
          v287 = v199;
          v288 = v115;
          v289 = v195;

          v117 = v114;
          v100 = v208;
          sub_1AF6BB028(v116, v117, &v284, (v105 + 32), v108, v257);
          v244 = *&v257[32];
          v245 = v258;
          v246 = v259;
          v247 = v260;
          v242 = *v257;
          v243 = *&v257[16];

          if (*v257)
          {
            v99 = v211;
            if (v260 >= 1 && (v218 = *(&v258 + 1)) != 0)
            {
              v216 = *&v257[40];
              v118 = *(&v259 + 1);
              v119 = *(v259 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
              v225 = *(*(&v259 + 1) + 32);
              v266 = *v257;
              v267 = *&v257[8];
              v268 = *&v257[24];
              v238 = v244;
              v239 = v245;
              v240 = v246;
              v241 = v247;
              v236 = v242;
              v237 = v243;
              sub_1AF5DD298(&v236, v235);
              v120 = 0;
              v214 = v119;
              v227 = v118;
              do
              {
                v223 = v120;
                v121 = (v216 + 48 * v120);
                v122 = *v121;
                v123 = *(v121 + 2);
                v230 = *(v121 + 3);
                v125 = *(v121 + 4);
                v124 = *(v121 + 5);
                v220 = v121[1];
                if (v119)
                {
                  v126 = *(v124 + 376);

                  os_unfair_lock_lock(v126);
                  os_unfair_lock_lock(*(v124 + 344));
                }

                else
                {
                }

                ecs_stack_allocator_push_snapshot(v225);
                v127 = *(v227 + 64);
                v282[0] = *(v227 + 48);
                v282[1] = v127;
                v283 = *(v227 + 80);
                v128 = *(v227 + 32);
                v129 = *(*(*(*(v124 + 40) + 16) + 32) + 16) + 1;

                *(v227 + 48) = ecs_stack_allocator_allocate(v128, 48 * v129, 8);
                *(v227 + 56) = v129;
                *(v227 + 72) = 0;
                *(v227 + 80) = 0;
                *(v227 + 64) = 0;

                v130 = v230;
                v131 = sub_1AF64B110(&type metadata for Material, &off_1F253F848, v123, v230, v125, v227);
                v231 = v124;
                sub_1AF64B110(&type metadata for MaterialRuntime, &off_1F253FE70, v123, v130, v125, v227);
                if (v123)
                {
                  if (v125)
                  {
                    v132 = (v131 + 32);
                    do
                    {
                      v134 = *v123++;
                      v133 = v134;
                      if (*(v132 - 1))
                      {
                        v135 = *v132;
                        v136 = *(v9 + 16);

                        if (*(v9 + 184))
                        {
                          goto LABEL_186;
                        }

                        v137 = *(v9 + 168);
                        ObjectType = swift_getObjectType();
                        v139 = *(v137 + 4 * v232);
                        v140 = *(*(v136 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v139 + 8);
                        swift_unknownObjectRetain();

                        if ((*(v135 + 48))(v139 | (v140 << 32), ObjectType, v135))
                        {
                          v141 = *(v231 + 192);

                          if (v141)
                          {
                            v142 = *(v231 + 208);
                            *(v141 + 8 * (v133 >> 6)) |= 1 << v133;
                            *(v142 + 8 * (v133 >> 6)) &= ~(1 << v133);
                          }

                          sub_1AF705804(v133);
                          swift_unknownObjectRelease();
                        }

                        else
                        {
                          swift_unknownObjectRelease();
                        }

                        v9 = v234;
                      }

                      v132 += 13;
                      --v125;
                    }

                    while (v125);
                  }
                }

                else if (v122 != v220)
                {
                  v156 = (v131 + 104 * v122 + 32);
                  do
                  {
                    if (*(v156 - 1))
                    {
                      v157 = *v156;
                      v158 = *(v9 + 16);

                      if (*(v9 + 184))
                      {
LABEL_186:
                        sub_1AFDFE518();
                        __break(1u);
                        return;
                      }

                      v159 = *(v9 + 168);
                      v160 = swift_getObjectType();
                      v161 = *(v159 + 4 * v232);
                      v162 = *(*(v158 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v161 + 8);
                      swift_unknownObjectRetain();

                      if ((*(v157 + 48))(v161 | (v162 << 32), v160, v157))
                      {
                        v163 = *(v231 + 192);

                        if (v163)
                        {
                          v164 = *(v231 + 208);
                          *(v163 + 8 * (v122 >> 6)) |= 1 << v122;
                          *(v164 + 8 * (v122 >> 6)) &= ~(1 << v122);
                        }

                        sub_1AF705804(v122);
                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        swift_unknownObjectRelease();
                      }

                      v9 = v234;
                    }

                    ++v122;
                    v156 += 13;
                  }

                  while (v220 != v122);
                }

                sub_1AF630994(v227, &v266, v282);
                if (*(*(v227 + 104) + 16))
                {

                  sub_1AF62F348(v143, v231);

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v145 = *(v227 + 104);
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    v146 = v145[2];
                    v147 = swift_isUniquelyReferenced_nonNull_native();
                    *(v227 + 104) = v145;
                    if ((v147 & 1) == 0)
                    {
                      v145 = sub_1AF420EA0(0, v146, 1, v145);
                      *(v227 + 104) = v145;
                    }

                    sub_1AFB2E96C(0, qword_1ED729A30, sub_1AF43A570);
                    swift_arrayDestroy();
                    if (v146)
                    {
                      v148 = v145[2] - v146;
                      memmove(v145 + 4, &v145[9 * v146 + 4], 72 * v148);
                      v145[2] = v148;
                    }

                    *(v227 + 104) = v145;
                  }

                  else
                  {
                    v149 = MEMORY[0x1E69E7CC0];
                    if (v145[3] >= 2uLL)
                    {
                      sub_1AF9FA280();
                      v149 = swift_allocObject();
                      v150 = j__malloc_size_0(v149);
                      v149[2] = 0;
                      v149[3] = 2 * ((v150 - 32) / 72);
                    }

                    *(v227 + 104) = v149;
                  }

                  if (*(*(v227 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
                  {
                    v151 = v231;
                    v152 = *(v231 + 232);
                    v153 = *(v231 + 256);
                    v154 = v152 - v153;
                    if (v152 == v153)
                    {
                      v155 = *(v231 + 240);
                    }

                    else
                    {
                      v221 = *(v231 + 232);
                      v165 = *(v231 + 56);
                      v166 = *(v165 + 16);
                      if (v166)
                      {

                        swift_retain_n();

                        v167 = v165 + 56;
                        do
                        {
                          sub_1AF640BC8();
                          v167 += 40;
                          --v166;
                        }

                        while (v166);

                        v151 = v231;
                      }

                      if ((*(v151 + 184) & 1) == 0)
                      {
                        v168 = *(v151 + 168);
                        v169 = *(v151 + 16);
                        v170 = *(v169 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                        os_unfair_lock_lock(v170);

                        v171 = OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex;
                        v172 = OBJC_IVAR____TtC3VFX13EntityManager_entityCount;
                        v173 = *(v169 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
                        v206 = v153 + *(v169 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount);
                        v174 = *(v169 + OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex);

                        v175 = (v168 + 4 * v153);
                        do
                        {
                          v176 = *v175++;
                          v177 = (v173 + 12 * v176);
                          *v177 = v174;
                          v177[1] = -1;
                          ++v177[2];
                          *(v169 + v171) = v176;
                          v174 = v176;
                          --v154;
                        }

                        while (v154);
                        *(v169 + v172) = v206 - v221;

                        v178 = *(v169 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                        os_unfair_lock_unlock(v178);

                        v9 = v234;
                        v151 = v231;
                      }

                      v179 = *(v151 + 192);
                      if (v179)
                      {
                        v180 = *(v151 + 208);
                        sub_1AF75D364(v153, v221, v179);
                        sub_1AF75D364(v153, v221, v180);
                      }

                      v153 = *(v151 + 232);
                      v155 = *(v151 + 240);
                      if (v155 == v153)
                      {
                        v155 = 0;
                        v153 = 0;
                        *(v231 + 232) = 0;
                        *(v231 + 240) = 0;
                      }

                      v151 = v231;
                    }

                    *(v151 + 248) = v155;
                    *(v151 + 256) = v153;
                  }
                }

                ecs_stack_allocator_pop_snapshot(v225);
                v119 = v214;
                if (v214)
                {
                  os_unfair_lock_unlock(*(v231 + 344));
                  os_unfair_lock_unlock(*(v231 + 376));
                }

                v120 = v223 + 1;
              }

              while (v223 + 1 != v218);
              v181 = MEMORY[0x1E69E6720];
              sub_1AFB2E5D4(v257, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
              sub_1AFB2E5D4(v257, &qword_1ED725EA0, &type metadata for QueryResult, v181, sub_1AFB2E7BC);
              v99 = v211;
              v100 = v208;
            }

            else
            {
              sub_1AFB2E5D4(v257, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
            }

            goto LABEL_100;
          }
        }

        else
        {

          v100 = v208;
        }

        v99 = v211;
LABEL_100:
        if (++v232 == v209)
        {
          goto LABEL_96;
        }
      }
    }

    v13 = v211;
    if (v204)
    {
      v14 = 0;
      v15 = *(v184 + 440);
      v196 = *(v184 + 452);
      v198 = *(v184 + 448);
      v194 = *(v184 + 456);
      v193 = *(v184 + 464);
      v192 = *(v184 + 472);
      v207 = v15;
      do
      {
        v213 = v14;
        v233 = v205[v14];
        os_unfair_lock_lock(*(v13 + 40));
        v16 = *(v13 + 48);
        if (*(v16 + 16) && (v17 = sub_1AF449CB8(*(v15 + 32)), (v18 & 1) != 0))
        {
          v19 = v13;
          v20 = *(*(v16 + 56) + 24 * v17 + 8);
        }

        else
        {

          sub_1AF6B1714(a1, v15);
          v19 = v13;
          v20 = v21;
        }

        os_unfair_lock_unlock(*(v19 + 40));
        v23 = *(v20 + 16);
        if (v23)
        {
          v24 = thread_worker_index(v22);
          if (*v24 == -1)
          {
            v25 = *(a1 + v201);
          }

          else
          {
            v25 = (*(a1 + v201) + 8 * *v24 + 8);
          }

          if (*(a1 + v200) == 4)
          {
            v26 = *(a1 + 224);
            if (*(a1 + 233) == 1)
            {
              v27 = v26 <= 1;
            }

            else
            {
              v27 = v26 <= 0;
            }

            v28 = !v27;
          }

          else
          {
            v28 = 1;
          }

          v29 = *v25;
          v30 = v193;
          if (v193 == 2)
          {
            v30 = v28;
          }

          v276 = v207;
          v277 = v198;
          v278 = v196;
          v279 = v194;
          v280 = v30;
          v281 = v192;

          v32 = v29;
          v15 = v207;
          sub_1AF6BB028(v31, v32, &v276, (v20 + 32), v23, v253);
          v244 = *&v253[32];
          v245 = v254;
          v246 = v255;
          v247 = v256;
          v242 = *v253;
          v243 = *&v253[16];

          if (*v253)
          {
            v13 = v211;
            if (v256 >= 1 && (v219 = *(&v254 + 1)) != 0)
            {
              v217 = *&v253[40];
              v33 = *(&v255 + 1);
              v34 = *(v255 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
              v224 = *(*(&v255 + 1) + 32);
              v269 = *v253;
              v270 = *&v253[8];
              v271 = *&v253[24];
              v238 = v244;
              v239 = v245;
              v240 = v246;
              v241 = v247;
              v236 = v242;
              v237 = v243;
              sub_1AF5DD298(&v236, v235);
              v35 = 0;
              v215 = v34;
              v226 = v33;
              do
              {
                v222 = v35;
                v36 = (v217 + 48 * v35);
                v38 = *v36;
                v37 = v36[1];
                v39 = *(v36 + 2);
                v41 = *(v36 + 4);
                v40 = *(v36 + 5);
                v228 = *(v36 + 3);
                if (v34)
                {
                  v42 = *(v40 + 376);

                  os_unfair_lock_lock(v42);
                  os_unfair_lock_lock(*(v40 + 344));
                }

                else
                {
                }

                ecs_stack_allocator_push_snapshot(v224);
                v43 = *(v226 + 64);
                v274[0] = *(v226 + 48);
                v274[1] = v43;
                v275 = *(v226 + 80);
                v44 = *(v226 + 32);
                v45 = *(*(*(*(v40 + 40) + 16) + 32) + 16) + 1;

                *(v226 + 48) = ecs_stack_allocator_allocate(v44, 48 * v45, 8);
                *(v226 + 56) = v45;
                *(v226 + 72) = 0;
                *(v226 + 80) = 0;
                *(v226 + 64) = 0;

                v46 = v228;
                v47 = sub_1AF64B110(&type metadata for Material, &off_1F253F848, v39, v228, v41, v226);
                v229 = v40;
                sub_1AF64B110(&type metadata for MaterialRuntime, &off_1F253FE70, v39, v46, v41, v226);
                if (v39)
                {
                  if (v41)
                  {
                    v48 = (v47 + 32);
                    do
                    {
                      v50 = *v39++;
                      v49 = v50;
                      if (*(v48 - 1))
                      {
                        v51 = *v48;
                        v52 = *(v9 + 16);

                        if (*(v9 + 184))
                        {
                          goto LABEL_186;
                        }

                        v53 = *(v9 + 168);
                        v54 = swift_getObjectType();
                        v55 = *(v53 + 4 * v233);
                        v56 = *(*(v52 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v55 + 8);
                        swift_unknownObjectRetain();

                        if ((*(v51 + 48))(v55 | (v56 << 32), v54, v51))
                        {
                          v57 = *(v229 + 192);

                          if (v57)
                          {
                            v58 = *(v229 + 208);
                            *(v57 + 8 * (v49 >> 6)) |= 1 << v49;
                            *(v58 + 8 * (v49 >> 6)) &= ~(1 << v49);
                          }

                          sub_1AF705804(v49);
                          swift_unknownObjectRelease();
                        }

                        else
                        {
                          swift_unknownObjectRelease();
                        }

                        v9 = v234;
                      }

                      v48 += 13;
                      --v41;
                    }

                    while (v41);
                  }
                }

                else if (v38 != v37)
                {
                  v72 = (v47 + 104 * v38 + 32);
                  do
                  {
                    if (*(v72 - 1))
                    {
                      v73 = *v72;
                      v74 = *(v9 + 16);

                      if (*(v9 + 184))
                      {
                        goto LABEL_186;
                      }

                      v75 = *(v9 + 168);
                      v76 = swift_getObjectType();
                      v77 = *(v75 + 4 * v233);
                      v78 = *(*(v74 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v77 + 8);
                      swift_unknownObjectRetain();

                      if ((*(v73 + 48))(v77 | (v78 << 32), v76, v73))
                      {
                        v79 = *(v229 + 192);

                        if (v79)
                        {
                          v80 = *(v229 + 208);
                          *(v79 + 8 * (v38 >> 6)) |= 1 << v38;
                          *(v80 + 8 * (v38 >> 6)) &= ~(1 << v38);
                        }

                        sub_1AF705804(v38);
                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        swift_unknownObjectRelease();
                      }

                      v9 = v234;
                    }

                    ++v38;
                    v72 += 13;
                  }

                  while (v37 != v38);
                }

                sub_1AF630994(v226, &v269, v274);
                if (*(*(v226 + 104) + 16))
                {

                  sub_1AF62F348(v59, v229);

                  v60 = swift_isUniquelyReferenced_nonNull_native();
                  v61 = *(v226 + 104);
                  if (v60)
                  {
                    v62 = v61[2];
                    v63 = swift_isUniquelyReferenced_nonNull_native();
                    *(v226 + 104) = v61;
                    if ((v63 & 1) == 0)
                    {
                      v61 = sub_1AF420EA0(0, v62, 1, v61);
                      *(v226 + 104) = v61;
                    }

                    sub_1AFB2E96C(0, qword_1ED729A30, sub_1AF43A570);
                    swift_arrayDestroy();
                    if (v62)
                    {
                      v64 = v61[2] - v62;
                      memmove(v61 + 4, &v61[9 * v62 + 4], 72 * v64);
                      v61[2] = v64;
                    }

                    *(v226 + 104) = v61;
                  }

                  else
                  {
                    v65 = MEMORY[0x1E69E7CC0];
                    if (v61[3] >= 2uLL)
                    {
                      sub_1AF9FA280();
                      v65 = swift_allocObject();
                      v66 = j__malloc_size_0(v65);
                      v65[2] = 0;
                      v65[3] = 2 * ((v66 - 32) / 72);
                    }

                    *(v226 + 104) = v65;
                  }

                  if (*(*(v226 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
                  {
                    v67 = v229;
                    v68 = *(v229 + 232);
                    v69 = *(v229 + 256);
                    v70 = v68 - v69;
                    if (v68 == v69)
                    {
                      v71 = *(v229 + 240);
                    }

                    else
                    {
                      v210 = *(v229 + 232);
                      v81 = *(v229 + 56);
                      v82 = *(v81 + 16);
                      if (v82)
                      {

                        swift_retain_n();

                        v83 = v81 + 56;
                        do
                        {
                          sub_1AF640BC8();
                          v83 += 40;
                          --v82;
                        }

                        while (v82);

                        v67 = v229;
                      }

                      if ((*(v67 + 184) & 1) == 0)
                      {
                        v84 = *(v67 + 168);
                        v85 = *(v67 + 16);
                        v86 = *(v85 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                        os_unfair_lock_lock(v86);

                        v87 = OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex;
                        v88 = OBJC_IVAR____TtC3VFX13EntityManager_entityCount;
                        v89 = *(v85 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
                        v90 = v69 + *(v85 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount);
                        v91 = *(v85 + OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex);

                        v92 = (v84 + 4 * v69);
                        do
                        {
                          v93 = *v92++;
                          v94 = (v89 + 12 * v93);
                          *v94 = v91;
                          v94[1] = -1;
                          ++v94[2];
                          *(v85 + v87) = v93;
                          v91 = v93;
                          --v70;
                        }

                        while (v70);
                        *(v85 + v88) = v90 - v210;

                        v95 = *(v85 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                        os_unfair_lock_unlock(v95);

                        v9 = v234;
                        v67 = v229;
                      }

                      v96 = *(v67 + 192);
                      if (v96)
                      {
                        v97 = *(v67 + 208);
                        sub_1AF75D364(v69, v210, v96);
                        sub_1AF75D364(v69, v210, v97);
                      }

                      v69 = *(v67 + 232);
                      v71 = *(v67 + 240);
                      if (v71 == v69)
                      {
                        v71 = 0;
                        v69 = 0;
                        *(v229 + 232) = 0;
                        *(v229 + 240) = 0;
                      }

                      v67 = v229;
                    }

                    *(v67 + 248) = v71;
                    *(v67 + 256) = v69;
                  }
                }

                ecs_stack_allocator_pop_snapshot(v224);
                v34 = v215;
                if (v215)
                {
                  os_unfair_lock_unlock(*(v229 + 344));
                  os_unfair_lock_unlock(*(v229 + 376));
                }

                v35 = v222 + 1;
              }

              while (v222 + 1 != v219);
              v98 = MEMORY[0x1E69E6720];
              sub_1AFB2E5D4(v253, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
              sub_1AFB2E5D4(v253, &qword_1ED725EA0, &type metadata for QueryResult, v98, sub_1AFB2E7BC);
              v13 = v211;
              v15 = v207;
            }

            else
            {
              sub_1AFB2E5D4(v253, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
            }

            goto LABEL_13;
          }
        }

        else
        {

          v15 = v207;
        }

        v13 = v211;
LABEL_13:
        v14 = v213 + 1;
      }

      while (v213 + 1 != v204);
    }

LABEL_96:
    v263 = v188;
    v264 = v261;
    v265 = v262;
    sub_1AF630994(v191, &v263, v272);
    sub_1AF62D29C(v9);
    v5 = v185;
    ecs_stack_allocator_pop_snapshot(v185);
    if (v190)
    {
      os_unfair_lock_unlock(*(v9 + 344));
      os_unfair_lock_unlock(*(v9 + 376));
    }

    v6 = v189 + 1;
  }

  while (v189 + 1 != v186);
  v183 = MEMORY[0x1E69E6720];
  sub_1AFB2E5D4(v249, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB2E7BC);
  v182 = v183;
LABEL_184:
  sub_1AFB2E5D4(v249, &qword_1ED725EA0, &type metadata for QueryResult, v182, sub_1AFB2E7BC);
}

uint64_t sub_1AFB2E5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AFB2E634(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1AFB2E6A4(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AFB2E6A4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1AF5C5358(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1AFB2E734()
{
  if (!qword_1ED7230C8)
  {
    sub_1AFB2E7BC(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    sub_1AFB2E80C();
    v0 = sub_1AFDFE228();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7230C8);
    }
  }
}

void sub_1AFB2E7BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AFB2E80C()
{
  result = qword_1ED723228;
  if (!qword_1ED723228)
  {
    sub_1AFB2E7BC(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED723228);
  }

  return result;
}

uint64_t sub_1AFB2E888(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFB2E8E8()
{
  if (!qword_1EB631BC0)
  {
    sub_1AFB2E96C(255, &qword_1EB631BD0, sub_1AF6B7338);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB631BC0);
    }
  }
}

void sub_1AFB2E96C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1AFB2E9DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ScriptRuntime();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AFB2EA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1AFB2EAB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AFB2EB3C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED7256E8 != -1)
  {
    swift_once();
  }

  v22[0] = xmmword_1ED73B540;
  v22[1] = *algn_1ED73B550;
  v23 = qword_1ED73B560;
  sub_1AF6B06C0(a1, v22, 0x200000000, &v8);
  if (!v8)
  {
    return sub_1AFB195A8(a1, a2);
  }

  v15 = v8;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v16 = v9;
  v17 = v10;
  sub_1AF6BA358(0);
  v5 = v4;

  v6 = sub_1AF6496EC(v5);

  sub_1AFB2F6F8(&v8, sub_1AF5C3C90);
  return v6;
}

double sub_1AFB2ECAC()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED73B840;
  v4 = 0;
  v5 = 2;
  v6 = 0;
  v7 = 2;
  v8 = 0;

  sub_1AF8D5054(1, 1, 1, v1);

  result = *v1;
  xmmword_1ED73B540 = v1[0];
  *algn_1ED73B550 = v1[1];
  qword_1ED73B560 = v2;
  return result;
}

uint64_t sub_1AFB2ED64(uint64_t a1, float32x4_t *a2, uint64_t a3, unint64_t a4)
{
  v7 = *(a1 + 8);
  if (*(v7 + 304) != *(v7 + 116))
  {

    goto LABEL_7;
  }

  v62 = a2[2];
  v63 = a2[3];
  v60 = *a2;
  v61 = a2[1];
  v66 = *(v7 + 288);
  v67 = a2[5];
  v64 = *(v7 + 272);
  v65 = a2[4];

  v69[0] = v60;
  v69[1] = v61;
  v69[2] = v62;
  v69[3] = v63;
  v69[4] = v65;
  v69[5] = v67;
  v8 = vfx_frustum_classify_aabb(v69, v64, v66);
  if (v8 == 2)
  {
LABEL_7:
    v68 = a4;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 16);
    v12 = (v10 + 63) >> 6;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = 8 * v12;

    v14 = sub_1AF757580(v13, 8);

    bzero(v14, v13);
    v15 = sub_1AF64B110(&type metadata for WorldAABB, &off_1F2510410, *(a1 + 88), *(a1 + 96), *(a1 + 104), v11);
    if (v9 == v10)
    {
LABEL_10:
      sub_1AF66D580(v7, v14, v10, v68);
    }

    v17 = *a2;
    v18 = a2[1];
    v19 = a2[2];
    v20 = a2[3];
    v21 = a2[4];
    v22 = a2[5];
    v23 = vabsq_f32(*a2);
    v24 = vabsq_f32(v18);
    v25 = vabsq_f32(v19);
    v26 = vabsq_f32(v20);
    v27 = vabsq_f32(v21);
    v28 = vabsq_f32(v22);
    v29 = (v15 + 32 * v9 + 16);
    while (1)
    {
      v31 = v29[-1];
      v30 = *v29;
      v32 = vmulq_f32(v17, v31);
      v33 = vmulq_f32(v23, *v29);
      v38 = vaddv_f32(vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL))) <= -vaddv_f32(vadd_f32(*v33.i8, *&vextq_s8(v33, v33, 8uLL)));
      v34 = vmulq_f32(v18, v31);
      v35 = vaddv_f32(vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL)));
      v36 = vmulq_f32(v24, *v29);
      v37 = -vaddv_f32(vadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL)));
      v38 = v38 || v35 <= v37;
      v39 = vmulq_f32(v19, v31);
      v40 = vaddv_f32(vadd_f32(*v39.i8, *&vextq_s8(v39, v39, 8uLL)));
      v41 = vmulq_f32(v25, v30);
      v42 = -vaddv_f32(vadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL)));
      v43 = v38 || v40 <= v42;
      v44 = vmulq_f32(v20, v31);
      v45 = vaddv_f32(vadd_f32(*v44.i8, *&vextq_s8(v44, v44, 8uLL)));
      v46 = vmulq_f32(v26, v30);
      v47 = -vaddv_f32(vadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL)));
      v48 = v43 || v45 <= v47;
      v49 = vmulq_f32(v21, v31);
      v50 = vaddv_f32(vadd_f32(*v49.i8, *&vextq_s8(v49, v49, 8uLL)));
      v51 = vmulq_f32(v27, v30);
      v52 = -vaddv_f32(vadd_f32(*v51.i8, *&vextq_s8(v51, v51, 8uLL)));
      v53 = v48 || v50 <= v52;
      v54 = v9 >> 6;
      if (v53)
      {
        v55 = 1 << v9;
      }

      else
      {
        v57 = vmulq_f32(v22, v31);
        v58 = vmulq_f32(v28, v30);
        v55 = 1 << v9;
        if (vaddv_f32(vadd_f32(*v57.i8, *&vextq_s8(v57, v57, 8uLL))) > -vaddv_f32(vadd_f32(*v58.i8, *&vextq_s8(v58, v58, 8uLL))))
        {
          v56 = v14->i64[v54] | v55;
          goto LABEL_29;
        }
      }

      v56 = v14->i64[v54] & ~v55;
LABEL_29:
      v14->i64[v54] = v56;
      ++v9;
      v29 += 2;
      if (v10 == v9)
      {
        goto LABEL_10;
      }
    }
  }

  if (v8 == 1)
  {
  }

  if (!v8)
  {
    sub_1AF66D4DC(v7, a4);
  }

  v59 = v8;
  type metadata accessor for vfx_classify_state(0);
  v69[0].i8[0] = v59;
  result = sub_1AFDFF138();
  __break(1u);
  return result;
}

double sub_1AFB2F078()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED73B840;
  v6 = 0;
  v7 = 2;
  v8 = 0;
  v9 = 2;
  v10 = 0;

  sub_1AF702F28(1, v2);

  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for LODCulled;
  *(inited + 40) = &off_1F252B740;
  sub_1AF5D1EBC(inited, v3);
  sub_1AFB2F6F8(v2, sub_1AFB2F758);
  swift_setDeallocating();
  result = *v3;
  xmmword_1ED73B808 = v3[0];
  unk_1ED73B818 = v3[1];
  qword_1ED73B828 = v4;
  return result;
}

uint64_t sub_1AFB2F1C8(uint64_t result, _OWORD *a2, float32x4_t *a3, unint64_t a4)
{
  if (a2)
  {
    v4 = result;
    v5 = a2[41];
    v67[6] = a2[40];
    v67[7] = v5;
    v68[0] = a2[42];
    v6 = a2[37];
    v67[2] = a2[36];
    v67[3] = v6;
    v7 = a2[39];
    v67[4] = a2[38];
    v67[5] = v7;
    v8 = a2[35];
    v67[0] = a2[34];
    v67[1] = v8;
    *(v68 + 9) = *(a2 + 681);
    if (sub_1AF448314(v67) == 1)
    {
      result = sub_1AFDFE518();
      __break(1u);
    }

    else
    {
      v9 = *(&v67[0] + 1);
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 152);
      swift_unknownObjectRetain();

      v12 = v11(ObjectType, v9);
      swift_unknownObjectRelease();
      if (qword_1ED72CB80 != -1)
      {
        swift_once();
      }

      v85[0] = xmmword_1ED73B808;
      v85[1] = unk_1ED73B818;
      v86 = qword_1ED73B828;
      sub_1AF6B06C0(v4, v85, v12 & 0xFFFFFFFFFFLL, &v69);
      if (v69)
      {
        v59 = v76;
        if (v76 > 0)
        {
          v58 = v73;
          if (v73)
          {
            v13 = 0;
            v56 = v72;
            v14 = v75;
            v55 = v74;
            v15 = *(v74 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
            v16 = *(v75 + 32);
            v77 = v69;
            v78 = v70;
            v79 = v71;
            v54 = v15;
            v57 = v4;
            v53 = v16;
            do
            {
              v66 = v13;
              v17 = (v56 + 48 * v13);
              v18 = *v17;
              v19 = v17[1];
              v20 = v17[2];
              v21 = *(v17 + 2);
              v22 = *(v17 + 3);
              v23 = *(v17 + 4);
              v24 = *(v17 + 5);
              if (v15)
              {
                v25 = *(v24 + 376);

                os_unfair_lock_lock(v25);
                os_unfair_lock_lock(*(v24 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v16);
              v63 = *(v14 + 64);
              v64 = *(v14 + 48);
              v62 = *(v14 + 80);
              v26 = *(*(*(*(v24 + 40) + 16) + 32) + 16) + 1;
              *(v14 + 48) = ecs_stack_allocator_allocate(*(v14 + 32), 48 * v26, 8);
              *(v14 + 56) = v26;
              *(v14 + 72) = 0;
              *(v14 + 80) = 0;
              *(v14 + 64) = 0;
              v80[0] = v55;
              v80[1] = v24;
              v65 = v24;
              v80[2] = v14;
              v80[3] = v20;
              v80[4] = (v19 - v18 + v20);
              v80[5] = v59;
              v80[6] = v18;
              v80[7] = v19;
              v80[8] = 0;
              v80[9] = 0;
              v81 = 1;
              v82 = v21;
              v83 = v22;
              v84 = v23;
              sub_1AFB2ED64(v80, a3, v57, a4);
              v27 = *(v14 + 48);
              v28 = *(v14 + 64);
              if (!v28)
              {
                v50 = *(v14 + 56);
                v51 = *(v14 + 32);
                v52 = v66;
                goto LABEL_42;
              }

              for (i = 0; i != v28; ++i)
              {
                v31 = (v27 + 48 * i);
                v32 = *v31;
                v33 = v31[4];
                v34 = *(v14 + 72);
                if (v34)
                {
                  v35 = v32 == v34;
                }

                else
                {
                  v35 = 0;
                }

                if (v35)
                {
                  goto LABEL_15;
                }

                v36 = v77;
                if (!v77[11])
                {
                  goto LABEL_15;
                }

                v37 = v31[2];
                v38 = v77 + 41;
                v39 = v77[9];
                if (v39 >= 0x10)
                {
                  v40 = &v38[v77[8]];
                  v41 = v39 >> 4;
                  v42 = v77 + 41;
                  while (*v40 != v32)
                  {
                    ++v42;
                    v40 += 16;
                    if (!--v41)
                    {
                      goto LABEL_31;
                    }
                  }

                  v43 = v42[v77[10]];
                  v44 = v43 > 5;
                  v45 = (1 << v43) & 0x23;
                  if (v44 || v45 == 0)
                  {
LABEL_15:

                    v33(v30);

                    continue;
                  }
                }

LABEL_31:
                if (swift_conformsToProtocol2() && v37)
                {
                  if (sub_1AF5FC8D8(v37))
                  {
                    goto LABEL_15;
                  }

                  v47 = v36[9];
                  if (v47 < 0x10)
                  {
                    goto LABEL_15;
                  }

                  v48 = &v38[v36[8]];
                  v49 = 16 * (v47 >> 4);
                  while (*v48 != v37)
                  {
                    v48 += 16;
                    v49 -= 16;
                    if (!v49)
                    {
                      goto LABEL_15;
                    }
                  }
                }
              }

              v50 = *(v14 + 56);
              v27 = *(v14 + 48);
              v51 = *(v14 + 32);
              v52 = v66;
              if (*(v14 + 64) >= 1)
              {
                swift_arrayDestroy();
              }

LABEL_42:
              ecs_stack_allocator_deallocate(v51, v27, 48 * v50);
              *(v14 + 48) = v64;
              *(v14 + 64) = v63;
              *(v14 + 80) = v62;
              sub_1AF62D29C(v65);
              v16 = v53;
              ecs_stack_allocator_pop_snapshot(v53);
              v15 = v54;
              if (v54)
              {
                os_unfair_lock_unlock(*(v65 + 344));
                os_unfair_lock_unlock(*(v65 + 376));
              }

              v13 = v52 + 1;
            }

            while (v13 != v58);
          }
        }

        return sub_1AFB2F6F8(&v69, sub_1AF5C3C90);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1AFB2F6F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFB2F758()
{
  if (!qword_1ED723BE0)
  {
    v0 = type metadata accessor for Query1();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723BE0);
    }
  }
}

float32x4_t sub_1AFB2F7B0@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF3C9244(a1, v31);
  v25 = v31[1];
  v26 = v31[0];
  v23 = v31[3];
  v24 = v31[2];
  v4 = v32;
  sub_1AF3C9AB8(a1, v33);
  if (v34)
  {
    v30 = xmmword_1AFE201A0;
    v29 = xmmword_1AFE20180;
    v28 = xmmword_1AFE20160;
    v27 = xmmword_1AFE20150;
  }

  else
  {
    v27 = v33[0];
    v28 = v33[1];
    v29 = v33[2];
    v30 = v33[3];
  }

  if (v4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  v6 = vdupq_n_s32(v5);
  v35.columns[3] = vbslq_s8(v6, xmmword_1AFE201A0, v23);
  v35.columns[2] = vbslq_s8(v6, xmmword_1AFE20180, v24);
  v35.columns[1] = vbslq_s8(v6, xmmword_1AFE20160, v25);
  v35.columns[0] = vbslq_s8(v6, xmmword_1AFE20150, v26);
  v36 = __invert_f4(v35);
  v7.i32[3] = v28.i32[3];
  v8.i32[3] = v29.i32[3];
  v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, v36.columns[0].f32[0]), v28, *v36.columns[0].f32, 1), v29, v36.columns[0], 2), v30, v36.columns[0], 3);
  v36.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, v36.columns[1].f32[0]), v28, *v36.columns[1].f32, 1), v29, v36.columns[1], 2), v30, v36.columns[1], 3);
  v36.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, v36.columns[2].f32[0]), v28, *v36.columns[2].f32, 1), v29, v36.columns[2], 2), v30, v36.columns[2], 3);
  v36.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, v36.columns[3].f32[0]), v28, *v36.columns[3].f32, 1), v29, v36.columns[3], 2), v30, v36.columns[3], 3);
  v7.f32[0] = *&v9.i32[3] - *v9.i32;
  v7.f32[1] = v36.columns[0].f32[3] - v36.columns[0].f32[0];
  v7.f32[2] = v36.columns[1].f32[3] - v36.columns[1].f32[0];
  v10 = vmulq_f32(v7, v7);
  v7.f32[3] = v36.columns[2].f32[3] - v36.columns[2].f32[0];
  v11.f32[0] = *&v9.i32[3] + *v9.i32;
  v11.f32[1] = v36.columns[0].f32[3] + v36.columns[0].f32[0];
  v11.f32[2] = v36.columns[1].f32[3] + v36.columns[1].f32[0];
  v12 = vmulq_f32(v11, v11);
  v11.f32[3] = v36.columns[2].f32[3] + v36.columns[2].f32[0];
  v13.f32[0] = *&v9.i32[3] + *&v9.i32[1];
  v13.f32[1] = v36.columns[0].f32[3] + v36.columns[0].f32[1];
  v13.f32[2] = v36.columns[1].f32[3] + v36.columns[1].f32[1];
  v14 = vmulq_f32(v13, v13);
  v13.f32[3] = v36.columns[2].f32[3] + v36.columns[2].f32[1];
  v8.f32[0] = *&v9.i32[3] - *&v9.i32[1];
  v8.f32[1] = v36.columns[0].f32[3] - v36.columns[0].f32[1];
  v8.f32[2] = v36.columns[1].f32[3] - v36.columns[1].f32[1];
  v15 = vmulq_f32(v8, v8);
  v8.f32[3] = v36.columns[2].f32[3] - v36.columns[2].f32[1];
  v16 = vextq_s8(v36.columns[0], v36.columns[0], 8uLL);
  v17 = vextq_s8(v9, v9, 8uLL).u64[0];
  *v16.f32 = vsub_f32(vzip2_s32(v17, *v16.f32), vzip1_s32(v17, *v16.f32));
  v16.f32[2] = v36.columns[1].f32[3] - v36.columns[1].f32[2];
  v18 = vmulq_f32(v16, v16);
  v36.columns[3] = v16;
  v36.columns[3].f32[3] = v36.columns[2].f32[3] - v36.columns[2].f32[2];
  v19 = vzip2q_s32(v9, v36.columns[0]);
  v19.i32[2] = v36.columns[1].i32[2];
  v20 = vmulq_f32(v19, v19);
  v19.i32[3] = v36.columns[2].i32[2];
  v36.columns[0].f32[0] = vaddv_f32(*v10.f32);
  *v36.columns[2].f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v10.f32[2] + v36.columns[0].f32[0]));
  *v36.columns[2].f32 = vmul_f32(*v36.columns[2].f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v10.f32[2] + v36.columns[0].f32[0]), vmul_f32(*v36.columns[2].f32, *v36.columns[2].f32)));
  v36.columns[1] = vmulq_n_f32(v7, vmul_f32(*v36.columns[2].f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v10.f32[2] + v36.columns[0].f32[0]), vmul_f32(*v36.columns[2].f32, *v36.columns[2].f32))).f32[0]);
  v7.f32[0] = v12.f32[2] + vaddv_f32(*v12.f32);
  *v36.columns[2].f32 = vrsqrte_f32(v7.u32[0]);
  *v36.columns[2].f32 = vmul_f32(*v36.columns[2].f32, vrsqrts_f32(v7.u32[0], vmul_f32(*v36.columns[2].f32, *v36.columns[2].f32)));
  v36.columns[2] = vmulq_n_f32(v11, vmul_f32(*v36.columns[2].f32, vrsqrts_f32(v7.u32[0], vmul_f32(*v36.columns[2].f32, *v36.columns[2].f32))).f32[0]);
  v10.f32[0] = v14.f32[2] + vaddv_f32(*v14.f32);
  *v7.f32 = vrsqrte_f32(v10.u32[0]);
  *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v7.f32, *v7.f32)));
  v7.i32[0] = vmul_f32(*v7.f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v7.f32, *v7.f32))).u32[0];
  v10.f32[0] = v15.f32[2] + vaddv_f32(*v15.f32);
  *v15.f32 = vrsqrte_f32(v10.u32[0]);
  *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v15.f32, *v15.f32)));
  v21 = vmulq_n_f32(v8, vmul_f32(*v15.f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v15.f32, *v15.f32))).f32[0]);
  v10.f32[0] = v20.f32[2] + vaddv_f32(*v20.f32);
  *v15.f32 = vrsqrte_f32(v10.u32[0]);
  *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v15.f32, *v15.f32)));
  v36.columns[0].f32[0] = v18.f32[2] + vaddv_f32(*v18.f32);
  *v18.f32 = vrsqrte_f32(v36.columns[0].u32[0]);
  *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v36.columns[0].u32[0], vmul_f32(*v18.f32, *v18.f32)));
  *a2 = v36.columns[1];
  *(a2 + 16) = v36.columns[2];
  *(a2 + 32) = vmulq_n_f32(v13, v7.f32[0]);
  *(a2 + 48) = v21;
  result = vmulq_n_f32(v36.columns[3], vmul_f32(*v18.f32, vrsqrts_f32(v36.columns[0].u32[0], vmul_f32(*v18.f32, *v18.f32))).f32[0]);
  *(a2 + 64) = vmulq_n_f32(v19, vmul_f32(*v15.f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v15.f32, *v15.f32))).f32[0]);
  *(a2 + 80) = result;
  return result;
}

uint64_t sub_1AFB2FB14(uint64_t result, _OWORD *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 41);
    v16 = *(a2 + 40);
    v17 = v4;
    v18[0] = *(a2 + 42);
    v5 = *(a2 + 37);
    v12[2] = a2[36];
    v13 = v5;
    v6 = *(a2 + 39);
    v14 = *(a2 + 38);
    v15 = v6;
    v7 = a2[35];
    v12[0] = a2[34];
    v12[1] = v7;
    *(v18 + 9) = *(a2 + 681);
    v8 = sub_1AF448314(v12);
    if (v8 == 1)
    {
      result = sub_1AFDFE518();
      __break(1u);
    }

    else
    {
      v19[0] = v13;
      v19[1] = v14;
      v19[2] = v15;
      v19[3] = v16;
      v19[4] = v17;
      v19[5] = v18[0];
      v10 = *(v3 + 192);
      *(v3 + 192) = v10 + 1;
      MEMORY[0x1EEE9AC00](v8, v9);
      v11 = *(v3 + 184);

      sub_1AF6D655C(&type metadata for MainCullGroup, &off_1F255F8C0, v11, sub_1AFB2FCC4);

      sub_1AFB2F1C8(v3, a2, v19, v10);
    }
  }

  return result;
}

uint64_t sub_1AFB2FCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = (*v2)[8];
  v9 = v6[9];
  v10 = sub_1AF3C457C(a1);
  if (v9 >= 0x10)
  {
    v12 = v10;
    v13 = *(v10 + 16);
    v14 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    v11 = v14;
    if (v13)
    {
      v30 = v14;
      sub_1AF48FC80(v12);
      v11 = v30;
    }

    else
    {
    }
  }

  else
  {
    v11 = v10;
  }

  v15 = v6[10];
  v16 = v6[11];
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = sub_1AFDFD488();
    *(v18 + 16) = v17;
    bzero((v18 + 32), v17);
    v29 = v7;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v21 = v18;
    goto LABEL_13;
  }

  v18 = MEMORY[0x1E69E7CC0];
  v29 = v7;
  if (!v6[11])
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = *(v18 + 16);
  v20 = sub_1AFC0587C((v7 + v15), v16);
  v21 = v20;
  if (v19)
  {
    v31 = v20;
    sub_1AF48FBC0(v18);
    v21 = v31;
  }

  else
  {
  }

LABEL_13:
  v22 = *(v3 + 2);
  v23 = *(v3 + 12);
  v24 = v3[2];
  v25 = *(v3 + 24);
  v26 = v3[4];
  v27 = sub_1AF6B7F4C(v11 + 4, v11[2], v21 + 32, *(v21 + 2), (v29 + v6[12]), v6[13] >> 4, (v29 + v6[14]), v6[15] / 0x18u);

  *a2 = v27;
  *(a2 + 8) = v22;
  *(a2 + 12) = v23;
  *(a2 + 16) = v24;
  *(a2 + 24) = v25;
  *(a2 + 32) = v26;
  return result;
}

__n128 sub_1AFB2FEA8@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result.n128_u64[0] = 0xFFFFFFFFLL;
  result.n128_u64[1] = 0xFFFFFFFFLL;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AFB2FEB8(void *a1, uint64_t a2, uint64_t a3)
{
  BufferWithLength = CFXGPUDeviceCreateBufferWithLength(*(a2 + 16), 0x30, 0);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *a1 = BufferWithLength;
  v6 = sub_1AFDFCEC8();
  [BufferWithLength setLabel_];

  v7 = [BufferWithLength contents];
  v8 = BufferWithLength;
  v9 = xmmword_1F25071D0;
  v10 = xmmword_1F25071F0;
  v7[1] = unk_1F25071E0;
  v7[2] = v10;
  *v7 = v9;
  type metadata accessor for RenderPipelineFactory();
  swift_allocObject();
  v11 = sub_1AF89DCA8(0);
  v12 = swift_allocObject();
  strcpy((v12 + 16), "debug_box_vert");
  *(v12 + 31) = -18;
  *(v12 + 32) = xmmword_1AFE9AA80;
  v11[11] = sub_1AFB3CBA8;
  v11[12] = v12;

  v11[2] = 2;
  v13 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  v14 = *v13;
  v15 = *(*v13 + 32);
  swift_retain_n();
  ecs_stack_allocator_push_snapshot(v15);
  v16 = ecs_stack_allocator_allocate(*(v14 + 32), 16, 8);
  *v16 = &type metadata for Material;
  v16[1] = &off_1F253F848;
  v17 = sub_1AF639508(v16, 1, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v14, 2, v11, -1.0, 0, 1);

  ecs_stack_allocator_pop_snapshot(*(v14 + 32));

  v18 = MEMORY[0x1E69E7CC0];
  sub_1AF688108(v17, a3, 0, 1, 2, MEMORY[0x1E69E7CC0]);

  a1[1] = v17;
  swift_allocObject();
  v19 = sub_1AF89DCA8(0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0xD000000000000013;
  *(v20 + 24) = 0x80000001AFF48840;
  *(v20 + 32) = xmmword_1AFE9AA80;
  v19[11] = sub_1AFB402BC;
  v19[12] = v20;

  v19[2] = 3;
  v21 = *v13;
  v22 = *(*v13 + 32);
  swift_retain_n();
  ecs_stack_allocator_push_snapshot(v22);
  v23 = ecs_stack_allocator_allocate(*(v21 + 32), 16, 8);
  *v23 = &type metadata for Material;
  v23[1] = &off_1F253F848;
  v24 = sub_1AF639508(v23, 1, v18, 1, 0x100000000uLL, v21, 2, v19, -1.0, 0, 1);

  ecs_stack_allocator_pop_snapshot(*(v21 + 32));

  sub_1AF688108(v24, a3, 7, 0, 0, MEMORY[0x1E69E7CC0]);

  a1[2] = v24;
  return result;
}

uint64_t sub_1AFB30290(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9)
{
  v88 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 16);
  result = sub_1AF6F3FF4(v15[3]);
  v82 = result;
  if (!result)
  {
    return result;
  }

  v80 = *(a1 + 48);
  v84 = *(a1 + 56);
  v17 = v84 - v80;
  v18 = *(a1 + 8);
  v19 = sub_1AF64B110(&type metadata for WorldAABB, &off_1F2510410, *(a1 + 88), *(a1 + 96), *(a1 + 104), v15);
  if (a3)
  {
    if ((a3 & 0x100) != 0)
    {
      v20 = v17 + 2;
      if (v17 + 2 <= 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v20 = v84 - v80;
      if (v17 <= 0)
      {
LABEL_22:

        return swift_unknownObjectRelease();
      }
    }

    v76 = a3;
    v73 = v19;
    CFXBufferAllocatorPerFrameAllocateWithLength(*(a2 + 232), 32 * v20);
    v30 = v29;
    v32 = v31;
    CFXBufferAllocatorPerFrameAllocateWithLength(*(a2 + 232), 16 * v17);
    v34 = v33;
    v36 = v35;
    v37 = [swift_unknownObjectRetain() storageMode];
    swift_unknownObjectRelease();
    v77 = a5;
    v72 = v34;
    if (v37 == 2)
    {
      v38 = 0;
    }

    else
    {
      v39 = [swift_unknownObjectRetain() contents];
      v40 = v34;
      v38 = &v39[v36];
    }

    v75 = v32;
    sub_1AF649C6C(*(v18 + 40), &type metadata for LODCulled, v86);
    v71 = v36;
    if (LOBYTE(v86[0]) == 1)
    {
      if (v84 != v80)
      {
        v41 = v84 - v80;
        do
        {
          *v38++ = a7;
          --v41;
        }

        while (v41);
      }
    }

    else if (v84 != v80)
    {
      v63 = v80;
      v64 = &v38[-v80];
      do
      {
        v66 = *(v18 + 188);
        v67 = *(*(*(v18 + 16) + 104) + 40 * *(v18 + 24) + 48);

        if (a4 < 0 || *(v67 + 16) <= a4 || (v68 = *(v67 + 8 * a4 + 32), (v69 = *(v68 + 16)) == 0))
        {
LABEL_34:

          v65 = a9;
        }

        else
        {
          v70 = (v68 + 40);
          while (*(v70 - 2) != v66 || *v70 && (*(*v70 + 8 * (v63 >> 6)) & (1 << v63)) == 0)
          {
            v70 += 3;
            if (!--v69)
            {
              goto LABEL_34;
            }
          }

          v65 = a8;
        }

        v64[v63++] = v65;
      }

      while (v63 != v84);
    }

    v28 = v82;
    swift_getObjectType();
    sub_1AF6F5B9C(v72, v71, 0, v77);
    v26 = v75;
    sub_1AF6F5B9C(v30, v75, 0, a6);
    v42 = [swift_unknownObjectRetain() storageMode];
    swift_unknownObjectRelease();
    v43 = 0;
    if (v42 != 2)
    {
      v44 = [swift_unknownObjectRetain() contents];
      v45 = v30;
      v43 = &v44[v75];
    }

    v24 = v30;
    v27 = 32 * v17;
    memcpy(v43, (v73 + 32 * v80), 32 * v17);
    sub_1AF6F5C2C(12, v17);
    if ((v76 & 0x100) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    v73 = v19;
    v76 = a3;
    v77 = a5;
    *v21.i8 = CFXBufferAllocatorPerFrameAllocateWithLength(*(a2 + 232), 64);
    v24 = v23;
    v26 = v25;
    v27 = 32 * v17;
    v28 = v82;
  }

  v21.i32[0] = *(v18 + 116);
  v22.i32[0] = *(v18 + 304);
  v87 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v22, v21), 0), xmmword_1AFE9AAA0, xmmword_1AFE9AA90);
  swift_getObjectType();
  [v28 setVertexBytes:&v87 length:16 atIndex:v77];
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v46 = [swift_unknownObjectRetain() contents];
  v47 = v24;
  v48 = vaddq_f32(*(v18 + 288), xmmword_1AFE90AE0);
  v49 = &v46[v26 + v27];
  *v49 = *(v18 + 272);
  *(v49 + 1) = v48;
  sub_1AF6F5B9C(v47, v26, v27, a6);
  sub_1AF6F5C2C(12, 1);
  if ((v76 & 0x10000) != 0)
  {
    v74 = a6;
    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](v18);
    v86[0] = sub_1AFDFF2F8();
    sub_1AFDFEA08();
    sub_1AFDFF308();
    sub_1AFDFD038();

    v50 = sub_1AFDFF2E8();
    *v51.i64 = sub_1AF57F008(v50 | 0xFF000000);
    v87 = v51;
    [v28 setVertexBytes:&v87 length:16 atIndex:v77];
    *v52.i64 = sub_1AF6DE28C();
    if (v84 == v80)
    {
      v54 = v24;
    }

    else
    {
      v55 = (v73 + 32 * v80 + 16);
      v56.i64[0] = 0x3F0000003F000000;
      v56.i64[1] = 0x3F0000003F000000;
      v54 = v24;
      do
      {
        v57 = v55[-1];
        v58 = vminnmq_f32(vsubq_f32(v52, v53), vsubq_f32(v57, *v55));
        v59 = vmaxnmq_f32(vaddq_f32(v53, v52), vaddq_f32(v57, *v55));
        v52 = vmulq_f32(vaddq_f32(v58, v59), v56);
        v53 = vmulq_f32(vsubq_f32(v59, v58), v56);
        v55 += 2;
        --v17;
      }

      while (v17);
    }

    v81 = v53;
    v85 = v52;
    [swift_unknownObjectRetain() storageMode];
    swift_unknownObjectRelease();
    v60 = [swift_unknownObjectRetain() contents];
    v61 = v54;
    v62 = v60 + v26 + v27 + 32;
    *v62 = v85;
    *(v62 + 16) = vaddq_f32(v81, xmmword_1AFE90AE0);
    sub_1AF6F5B9C(v61, v26, v27 + 32, v74);
    sub_1AF6F5C2C(12, 1);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1AFB30998()
{
  result = swift_allocObject();
  *(result + 16) = 256;
  return result;
}

uint64_t sub_1AFB309D8(uint64_t a1)
{
  v1 = *(a1 + 184);

  sub_1AF6D2D90(&type metadata for DebugCullingSystemState, &off_1F25603E8, v1);
}

void sub_1AFB30A40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = *(a2 + 200);

    v139 = sub_1AFBE45A8(a1);

    if (v139)
    {
      v132 = v2;
      v6 = sub_1AFDFE238();
      v8 = v7;

      sub_1AF7180FC();

      v9 = sub_1AF6F3D60(v139, v6, v8);

      sub_1AF709E8C(v9);
      swift_unknownObjectRelease();

      v10 = *(v2 + 32);
      v231[0] = *(v2 + 16);
      v231[1] = v10;
      v232 = *(v2 + 48);
      v11 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
      sub_1AF6B06C0(a1, v231, 0x200000000, &v203);
      v12 = v203;
      if (v203)
      {
        v135 = v206;
        v136 = v208;
        v13 = v209;
        v137 = v207;
        v138 = v210;
        v218 = v204;
        v219 = v205;

        os_unfair_recursive_lock_lock_with_options();
        sub_1AF6D2A6C(&type metadata for DebugDrawSystemState);
        v131 = v11;
        v146 = v12;
        if (v14 == 2)
        {
          os_unfair_recursive_lock_unlock();
        }

        else
        {
          v17 = v14;
          os_unfair_recursive_lock_unlock();

          if (v17)
          {

            goto LABEL_15;
          }
        }

        MEMORY[0x1EEE9AC00](v15, v16);
        v18 = *(a1 + 184);
        MEMORY[0x1EEE9AC00](v19, v20);

        sub_1AF6D655C(&type metadata for DebugDrawSystemState, &off_1F25603C8, v18, sub_1AF6FFFE8);

LABEL_15:
        v140 = a1;
        v21 = *(a1 + 184);

        v22 = sub_1AF6D42E8(&type metadata for DebugDrawSystemState, &off_1F25603C8, v21);

        v23 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
        v149 = a2;
        v24 = *(a2 + 280);
        if (v24[8])
        {
          if (*v24[12])
          {
            swift_unknownObjectRetain();
          }

          else
          {
            v143 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
            v26 = [swift_unknownObjectRetain() renderCommandEncoder];
            *&v223[0] = 0x646F636E45627573;
            *(&v223[0] + 1) = 0xEB000000005B7265;
            *&v187 = 0;
            v27 = sub_1AFDFEA08();
            MEMORY[0x1B2718AE0](v27);

            MEMORY[0x1B2718AE0](93, 0xE100000000000000);
            v28 = sub_1AFDFCEC8();

            [v26 setLabel_];

            v29 = v24[12];
            *v29 = [objc_allocWithZone(type metadata accessor for RenderCommandEncoder()) initWithEncoder_];
            v23 = v143;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v30 = *v24[12];
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            if (!v30)
            {
              goto LABEL_45;
            }
          }
        }

        else
        {
          v25 = v24[7];
          swift_unknownObjectRetain();
          if (!v25)
          {
            goto LABEL_45;
          }
        }

        sub_1AF3CA6C0(v22, v162);
        v184 = v169;
        v185 = v170;
        v186 = v171;
        v180 = v165;
        v181 = v166;
        v182 = v167;
        v183 = v168;
        v176 = v162[4];
        v177 = v162[5];
        v178 = v163;
        v179 = v164;
        v172 = v162[0];
        v173 = v162[1];
        v174 = v162[2];
        v175 = v162[3];
        v199 = v169;
        v200 = v170;
        v201 = v171;
        v195 = v165;
        v196 = v166;
        v198 = v168;
        v197 = v167;
        v191 = v162[4];
        v192 = v162[5];
        v193 = v163;
        v194 = v164;
        v187 = v162[0];
        v188 = v162[1];
        v189 = v162[2];
        v190 = v162[3];
        if (sub_1AF448314(&v187) == 1)
        {

          sub_1AF0D9DB0(&v203, &qword_1ED725EA0);

          swift_unknownObjectRelease();
          return;
        }

        v31 = v23;
        v223[12] = v199;
        v223[13] = v200;
        v223[14] = v201;
        v223[8] = v195;
        v223[9] = v196;
        v223[11] = v198;
        v223[10] = v197;
        v223[4] = v191;
        v223[5] = v192;
        v223[7] = v194;
        v223[6] = v193;
        v223[0] = v187;
        v223[1] = v188;
        v223[3] = v190;
        v223[2] = v189;
        v32 = BYTE3(v200);
        if (BYTE3(v200) && BYTE3(v200) == 1)
        {
          v33 = *(v5 + 56);
          if (*(v33 + 16) && (v34 = sub_1AF0D8ED4(v190), (v35 & 1) != 0))
          {
            v36 = (*(v33 + 56) + 80 * v34);
            v211 = *v36;
            v37 = v36[3];
            v38 = v36[4];
            v39 = v36[2];
            v212 = v36[1];
            v213 = v39;
            v215 = v38;
            v214 = v37;
            v225 = v36[1];
            v226 = v36[2];
            v227 = v36[3];
            v228 = v36[4];
            v224 = *v36;
            sub_1AF0D8EDC(&v211, v158);
            *&v158[32] = v226;
            *&v158[48] = v227;
            *&v158[64] = v228;
            v40 = v225;
            *v158 = v224;
            *&v158[16] = v225;
            v144 = v225.n128_u64[0];
            v41 = v225.n128_i8[8];
          }

          else
          {
            v41 = 0;
            v144 = 0;
            v40 = 0uLL;
            memset(v158, 0, 80);
          }

          v49 = *(v5 + 56);
          if (*(v49 + 16) && (v50 = sub_1AF0D8ED4(v40), (v51 & 1) != 0))
          {
            v52 = (*(v49 + 56) + 80 * v50);
            v153 = *v52;
            v53 = v52[3];
            v54 = v52[4];
            v55 = v52[2];
            v154 = v52[1];
            v155 = v55;
            v156 = v53;
            v157 = v54;
            v212 = v52[1];
            v213 = v52[2];
            v214 = v52[3];
            v215 = v52[4];
            v211 = *v52;
            sub_1AF0D8EDC(&v153, &v224);
            v226 = v213;
            v227 = v214;
            v228 = v215;
            v56 = v212;
            v224 = v211;
            v225 = v212;
            v47 = v212.n128_u64[0];
          }

          else
          {
            v47 = 0;
            v56 = 0uLL;
            v227 = 0u;
            v228 = 0u;
            v225 = 0u;
            v226 = 0u;
            v224 = 0u;
          }

          v57 = *(v5 + 56);
          if (*(v57 + 16) && (v58 = sub_1AF0D8ED4(v56), (v59 & 1) != 0))
          {
            v60 = (*(v57 + 56) + 80 * v58);
            v211 = *v60;
            v61 = v60[3];
            v62 = v60[4];
            v63 = v60[2];
            v212 = v60[1];
            v213 = v63;
            v215 = v62;
            v214 = v61;
            sub_1AF0D8EDC(&v211, &v153);
            sub_1AF0D9DB0(v158, &qword_1ED730AD0);
            sub_1AF0D8F38(&v211);
            sub_1AF0D9DB0(&v224, &qword_1ED730AD0);
            v64 = v212.n128_u64[0];
          }

          else
          {
            sub_1AF0D9DB0(v158, &qword_1ED730AD0);
            sub_1AF0D9DB0(&v224, &qword_1ED730AD0);
            v64 = 0;
          }

          if (v47 == 260)
          {
            v46 = 260;
          }

          else
          {
            v46 = 0;
          }

          v48 = v41;
          if ((v41 & 0xFE) == 0)
          {
            v48 = 1;
          }

          v43 = 0uLL;
          v42 = v144;
          v44 = v64;
          v45 = 0uLL;
        }

        else
        {
          sub_1AF0D8CC8(&v211);
          v42 = v211;
          v43 = v212;
          v44 = v213;
          v45 = v214;
          v46 = v215.n128_i64[1];
          v47 = v215.n128_u64[0];
          v48 = v216;
          LODWORD(v220) = v217[0];
          *(&v220 + 3) = *(v217 + 3);
        }

        v224 = v42;
        v225 = v43;
        v226 = v44;
        v227 = v45;
        v228.n128_u64[0] = v47;
        v228.n128_u64[1] = v46;
        v229 = v48;
        v230[0] = v220;
        *(v230 + 3) = *(&v220 + 3);
        v65 = *(*(v140 + v31) + 8);
        v155.n128_u64[0] = 0;
        v153 = 0u;
        v154 = 0u;
        memset(&v158[40], 0, 48);
        v159 = xmmword_1AFE22A20;
        v160 = xmmword_1AFE22A20;
        v161 = xmmword_1AFE22A20;
        v158[32] = v32;
        *v158 = v140;
        *&v158[8] = v149;
        *&v158[16] = v65;
        *&v158[24] = 1;

        sub_1AF5FD5D8(&v153, &v158[40]);
        swift_getObjectType();
        sub_1AF88E748(v223, &v224, 0, 0, v158);
        sub_1AFB19490(v140, v149);
        swift_unknownObjectRelease();
        sub_1AF0D9DB0(&v172, &qword_1ED7255C8);
        sub_1AF5FD668(v158);
LABEL_45:
        if (v138 > 0 && v137)
        {
          v66 = 0;
          v221 = v218;
          v67 = *(v13 + 32);
          v68 = *(v136 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v220 = v146;
          v222 = v219;
          v133 = v68;
          v150 = v13;
          v134 = v67;
          do
          {
            v148 = v66;
            v69 = (v135 + 48 * v66);
            v70 = *v69;
            v71 = v69[1];
            v72 = v69[2];
            v73 = *(v69 + 2);
            v74 = *(v69 + 3);
            v75 = *(v69 + 4);
            v76 = *(v69 + 5);
            if (v68)
            {
              v77 = *(v76 + 376);

              os_unfair_lock_lock(v77);
              os_unfair_lock_lock(*(v76 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v67);
            v142 = *(v150 + 64);
            v145 = *(v150 + 48);
            v141 = *(v150 + 80);
            v78 = *(*(*(*(v76 + 40) + 16) + 32) + 16) + 1;
            *(v150 + 48) = ecs_stack_allocator_allocate(*(v150 + 32), 48 * v78, 8);
            *(v150 + 56) = v78;
            v79 = (v71 - v70 + v72);
            *(v150 + 72) = 0;
            *(v150 + 80) = 0;
            *(v150 + 64) = 0;
            LOBYTE(v172) = 1;
            *&v187 = v136;
            v147 = v76;
            *(&v187 + 1) = v76;
            *&v188 = v150;
            *(&v188 + 1) = v72;
            v80 = v150;
            *&v189 = v79;
            *(&v189 + 1) = v138;
            v190.n128_u64[0] = v70;
            v190.n128_u64[1] = v71;
            v191 = 0uLL;
            LOBYTE(v192) = 1;
            *(&v192 + 1) = v73;
            *&v193 = v74;
            *(&v193 + 1) = v75;
            sub_1AFB31AB0(&v187, v149, v140);
            v81 = *(v150 + 48);
            v82 = *(v150 + 64);
            if (!v82)
            {
              v104 = *(v150 + 56);
              v105 = *(v150 + 32);
              goto LABEL_81;
            }

            for (i = 0; i != v82; ++i)
            {
              v85 = (v81 + 48 * i);
              v86 = *v85;
              v87 = v85[4];
              v88 = *(v80 + 72);
              if (v88)
              {
                v89 = v86 == v88;
              }

              else
              {
                v89 = 0;
              }

              if (v89)
              {
                goto LABEL_54;
              }

              v90 = v220;
              if (!v220[11])
              {
                goto LABEL_54;
              }

              v91 = v85[2];
              v92 = v220 + 41;
              v93 = v220[9];
              if (v93 >= 0x10)
              {
                v94 = &v92[v220[8]];
                v95 = v93 >> 4;
                v96 = v220 + 41;
                while (*v94 != v86)
                {
                  ++v96;
                  v94 += 16;
                  if (!--v95)
                  {
                    goto LABEL_70;
                  }
                }

                v97 = v96[v220[10]];
                v98 = v97 > 5;
                v99 = (1 << v97) & 0x23;
                if (v98 || v99 == 0)
                {
LABEL_54:

                  v87(v84);

                  goto LABEL_55;
                }
              }

LABEL_70:
              if (swift_conformsToProtocol2() && v91)
              {
                if (sub_1AF5FC8D8(v91))
                {
                  goto LABEL_54;
                }

                v101 = v90[9];
                if (v101 < 0x10)
                {
                  goto LABEL_54;
                }

                v102 = &v92[v90[8]];
                v103 = 16 * (v101 >> 4);
                while (*v102 != v91)
                {
                  v102 += 16;
                  v103 -= 16;
                  if (!v103)
                  {
                    goto LABEL_54;
                  }
                }
              }

LABEL_55:
              v80 = v150;
            }

            v104 = *(v150 + 56);
            v81 = *(v150 + 48);
            v105 = *(v150 + 32);
            if (*(v150 + 64) >= 1)
            {
              swift_arrayDestroy();
            }

LABEL_81:
            ecs_stack_allocator_deallocate(v105, v81, 48 * v104);
            *(v80 + 48) = v145;
            *(v80 + 64) = v142;
            *(v80 + 80) = v141;
            sub_1AF62D29C(v147);
            v67 = v134;
            ecs_stack_allocator_pop_snapshot(v134);
            v68 = v133;
            if (v133)
            {
              os_unfair_lock_unlock(*(v147 + 344));
              os_unfair_lock_unlock(*(v147 + 376));
            }

            v66 = v148 + 1;
          }

          while (v148 + 1 != v137);
        }

        v106 = *(v132 + 72);
        v153 = *(v132 + 56);
        v154 = v106;
        v155.n128_u64[0] = *(v132 + 88);
        sub_1AF6B06C0(v140, &v153, 0x200000000, v158);
        if (*v158)
        {
          *(&v162[2] + 8) = *&v158[40];
          *(&v162[3] + 8) = *&v158[56];
          *(&v162[4] + 8) = *&v158[72];
          *&v162[0] = *v158;
          *(&v162[5] + 1) = v159;
          *(v162 + 8) = *&v158[8];
          *(&v162[1] + 8) = *&v158[24];
          sub_1AF6BA358(0);
          v108 = v107;

          v109 = sub_1AF64B03C(&type metadata for Position);

          v151 = *(v109 + 16 * v108);
          v110 = sub_1AFB371F8(v140);
          if (v110)
          {
            v112 = v110;
            v113 = v111;
            v114 = v151;
            HIDWORD(v114) = 1.0;
            v152 = v114;
            v115 = sub_1AFB3CAA4(255, 255, 255);
            v172 = v152;
            v173 = xmmword_1AFE9A6F0;
            LOBYTE(v178) = 6;
            ecs_stack_allocator_push_snapshot(*(v112 + 32));
            v116 = *(v113 + 16);
            v117 = 2 * v116;
            v118 = ecs_stack_allocator_allocate(*(v112 + 32), 16 * v116 + 32, 8);
            *v118 = &type metadata for DebugInfoWireframePrimitive;
            v118[1] = &off_1F25604A8;
            v118[2] = &type metadata for DebugInfoColor;
            v118[3] = &off_1F2560488;
            if (v116)
            {
              if (v116 > 5 && ((v118 + 4) >= v113 + v117 * 8 + 32 || v113 + 32 >= &v118[v117 + 4]))
              {
                v119 = v116 & 0x7FFFFFFFFFFFFFFCLL;
                v120 = v116 & 0x7FFFFFFFFFFFFFFCLL | 2;
                v124 = v118 + 8;
                v125 = (v113 + 64);
                v126 = v116 & 0x7FFFFFFFFFFFFFFCLL;
                do
                {
                  v128 = *(v125 - 2);
                  v127 = *(v125 - 1);
                  v130 = *v125;
                  v129 = v125[1];
                  v125 += 4;
                  *(v124 - 2) = v128;
                  *(v124 - 1) = v127;
                  *v124 = v130;
                  v124[1] = v129;
                  v124 += 4;
                  v126 -= 4;
                }

                while (v126);
                if (v116 == v119)
                {
                  goto LABEL_97;
                }
              }

              else
              {
                v119 = 0;
                v120 = 2;
              }

              v121 = v116 - v119;
              v122 = (v113 + 16 * v119 + 32);
              do
              {
                v123 = *v122++;
                *&v118[2 * v120++] = v123;
                --v121;
              }

              while (v121);
            }

            else
            {
              v120 = 2;
            }

LABEL_97:
            v202 = 1;
            sub_1AF63C898(v118, v120, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v112, &v172, v115);
            ecs_stack_allocator_pop_snapshot(*(v112 + 32));

            sub_1AF0D9DB0(v158, &qword_1ED725EA0);
            sub_1AF0D9DB0(&v203, &qword_1ED725EA0);

            sub_1AFB3CAB4(v112);
            return;
          }

          sub_1AF0D9DB0(v158, &qword_1ED725EA0);
        }

        else
        {
        }

        sub_1AF0D9DB0(&v203, &qword_1ED725EA0);

        return;
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1AFB31AB0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[2];
  result = sub_1AF6F3FF4(v6[3]);
  if (!result)
  {
    return result;
  }

  v8 = result;
  v41 = a1[7];
  v42 = a1[6];
  v44 = a3;
  CFXBufferAllocatorPerFrameAllocateWithLength(*(a2 + 232), 32 * (v41 - v42));
  v10 = v9;
  v12 = v11;
  __len = 16 * (v41 - v42);
  CFXBufferAllocatorPerFrameAllocateWithLength(*(a2 + 232), __len);
  v14 = v13;
  v43 = v15;
  v16 = a1[1];
  v17 = a1[11];
  v18 = a1[12];
  v19 = a1[13];
  v39 = v18;
  v40 = v17;
  v20 = sub_1AF64B110(&type metadata for WorldAABB, &off_1F2510410, v17, v18, v19, v6);
  v21 = [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  if (v21 == 2)
  {
    v22 = 0;
  }

  else
  {
    v23 = [swift_unknownObjectRetain() 0x1FAD4C978];
    v24 = v10;
    v22 = &v23[v12];
  }

  memcpy(v22, v20, 32 * (v41 - v42));
  swift_getObjectType();
  sub_1AF6F5B9C(v10, v12, 0, 4);
  v25 = [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v26 = 0;
  if (v25 != 2)
  {
    v27 = [swift_unknownObjectRetain() contents];
    v28 = v14;
    v26 = &v27[v43];
  }

  v29 = sub_1AF64B110(&type metadata for LODState, &off_1F252B4A0, v40, v39, v19, v6);
  sub_1AF649C6C(*(v16 + 40), &type metadata for LODCulled, &v45);
  if (v45 == 1)
  {
    if (v41 != v42)
    {
      memset_pattern16(&v26[16 * v42], &xmmword_1AFE20BF0, __len);
    }

    goto LABEL_12;
  }

  v30 = v41 - v42;
  if (v41 != v42)
  {
    v33 = (v29 + 12 * v42 + 8);
    v34 = &v26[16 * v42];
    do
    {
      v37 = *v33;
      v33 += 3;
      v36 = v37;
      if (v37 <= 0)
      {
        if (v36 == -1)
        {
          v35 = xmmword_1AFE20BF0;
          goto LABEL_17;
        }

        v35 = xmmword_1AFE21170;
        if (v36)
        {
          goto LABEL_25;
        }
      }

      else
      {
        switch(v36)
        {
          case 1:
            v35 = xmmword_1AFE9AAD0;
            break;
          case 2:
            v35 = xmmword_1AFE9AAC0;
            break;
          case 3:
            v35 = xmmword_1AFE9AAB0;
            break;
          default:
LABEL_25:
            v35 = xmmword_1AFE9AAE0;
            break;
        }
      }

LABEL_17:
      *v34++ = v35;
      --v30;
    }

    while (v30);
  }

LABEL_12:
  sub_1AF6F5B9C(v14, v43, 0, 5);
  v31 = *(v44 + 184);

  v32 = sub_1AF6D4098(&type metadata for DebugDrawSystemState, &off_1F25603C8, v31);

  [v8 drawIndexedPrimitives:1 indexCount:24 indexType:0 indexBuffer:v32 indexBufferOffset:0 instanceCount:v41 - v42];
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1AFB31E74()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED73B840;
  v11 = 0;
  v12 = 2;
  v13 = 0;
  v14 = 2;
  v15 = 0;
  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = &type metadata for LODState;
  *(inited + 40) = &off_1F252B420;
  *(inited + 48) = &type metadata for WorldAABB;
  *(inited + 56) = &off_1F2510390;
  sub_1AF5B4630(inited, v6);
  swift_setDeallocating();
  v2 = v6[1];
  *(v0 + 16) = v6[0];
  *(v0 + 32) = v2;
  *(v0 + 48) = v7;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1AFE4C620;
  *(v3 + 32) = &type metadata for PointOfCulling;
  *(v3 + 40) = &off_1F252B2B8;
  *(v3 + 48) = &type metadata for Position;
  *(v3 + 56) = &off_1F252EDF0;
  sub_1AF5B4630(v3, v8);
  swift_setDeallocating();
  v4 = v8[1];
  *(v0 + 56) = v8[0];
  *(v0 + 72) = v4;
  *(v0 + 88) = v9;
  return v0;
}

uint64_t sub_1AFB32008()
{
  v0 = swift_allocObject();
  sub_1AFB31E74();
  return v0;
}

uint64_t sub_1AFB3205C(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 0;
  }

  else
  {
    if (!a1)
    {
      v1 = 255;
LABEL_10:
      v2 = 255;
      v3 = 255;
      return sub_1AFB3CAA4(v1, v2, v3);
    }

    if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v1 = 0;
      goto LABEL_10;
    }

    if ((a1 & 0xFFFFFFFFFFFFFFFCLL) == 4)
    {
      v1 = 0;
LABEL_15:
      v2 = 255;
      v3 = 0;
      return sub_1AFB3CAA4(v1, v2, v3);
    }

    if ((a1 & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      v1 = 255;
      goto LABEL_15;
    }

    if ((a1 & 0xFFFFFFFFFFFFFFF0) == 0x10)
    {
      return sub_1AFB3CAA4(255, 128, 0);
    }

    if ((a1 & 0xFFFFFFFFFFFFFFE0) == 0x20)
    {
      v1 = 255;
LABEL_23:
      v2 = 0;
      v3 = 0;
      return sub_1AFB3CAA4(v1, v2, v3);
    }

    if ((a1 & 0xFFFFFFFFFFFFFFC0) != 0x40)
    {
      v1 = 0;
      goto LABEL_23;
    }

    v1 = 255;
  }

  v2 = 0;
  v3 = 255;
  return sub_1AFB3CAA4(v1, v2, v3);
}

uint64_t sub_1AFB32120(unsigned int a1, uint64_t a2, uint64_t a3, float32x4_t a4, float32x4_t a5)
{
  a4.i32[3] = 1.0;
  a5.i32[3] = 1.0;
  v7.i64[0] = 0x3F0000003F000000;
  v7.i64[1] = 0x3F0000003F000000;
  v26 = vmulq_f32(vsubq_f32(a5, a4), v7);
  v27 = vmulq_f32(vaddq_f32(a4, a5), v7);
  v8 = sub_1AFB3205C(a1);
  v28[0] = v27;
  v28[1] = v26;
  v29 = 6;
  ecs_stack_allocator_push_snapshot(*(a2 + 32));
  v9 = *(a3 + 16);
  v10 = 2 * v9;
  v11 = ecs_stack_allocator_allocate(*(a2 + 32), 16 * v9 + 32, 8);
  *v11 = &type metadata for DebugInfoWireframePrimitive;
  v11[1] = &off_1F25604A8;
  v11[2] = &type metadata for DebugInfoColor;
  v11[3] = &off_1F2560488;
  if (!v9)
  {
    v13 = 2;
    goto LABEL_10;
  }

  if (v9 <= 5 || (v11 + 4) < a3 + v10 * 8 + 32 && a3 + 32 < &v11[v10 + 4])
  {
    v12 = 0;
    v13 = 2;
LABEL_6:
    v14 = v9 - v12;
    v15 = (a3 + 16 * v12 + 32);
    do
    {
      v16 = *v15++;
      *&v11[2 * v13++] = v16;
      --v14;
    }

    while (v14);
    goto LABEL_10;
  }

  v12 = v9 & 0x7FFFFFFFFFFFFFFCLL;
  v13 = v9 & 0x7FFFFFFFFFFFFFFCLL | 2;
  v19 = v11 + 8;
  v20 = (a3 + 64);
  v21 = v9 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v23 = *(v20 - 2);
    v22 = *(v20 - 1);
    v25 = *v20;
    v24 = v20[1];
    v20 += 4;
    *(v19 - 2) = v23;
    *(v19 - 1) = v22;
    *v19 = v25;
    v19[1] = v24;
    v19 += 4;
    v21 -= 4;
  }

  while (v21);
  if (v9 != v12)
  {
    goto LABEL_6;
  }

LABEL_10:
  sub_1AF63C898(v11, v13, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a2, v28, v8);
  v17 = *(a2 + 32);

  return ecs_stack_allocator_pop_snapshot(v17);
}

void sub_1AFB322EC(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 32);
  v57[0] = *(v3 + 16);
  v57[1] = v7;
  v58 = *(v3 + 48);
  sub_1AF6B06C0(a1, v57, 0x200000000, v39);
  if (*v39)
  {
    v31 = *v39;
    v10 = *&v39[40];
    v11 = *(&v40 + 1);
    v12 = *(&v41 + 1);
    v32 = v41;
    v44 = *&v39[8];
    v45 = *&v39[24];
    MEMORY[0x1EEE9AC00](v8, v9);
    v29 = v26;
    v30 = v13;
    v26[2] = a1;
    v26[3] = a2;
    v27 = a3;
    if (v13 > 0 && v11)
    {
      v28[1] = v28;
      v14 = v12[4];
      v37 = *(v32 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v38[2] = *&v39[32];
      v38[3] = v40;
      v38[4] = v41;
      v38[5] = v42;
      v38[0] = *v39;
      v38[1] = *&v39[16];
      sub_1AF5DD298(v38, v52);
      for (i = (v10 + 24); ; i += 6)
      {
        v36 = 0;
        v16 = *(i - 6);
        v17 = *(i - 5);
        v18 = *(i - 4);
        v19 = *(i - 1);
        v34 = *i;
        v35 = v19;
        v20 = i[2];
        v33 = i[1];
        if (v37)
        {
          v21 = v12;
          v22 = *(v20 + 376);

          v23 = v22;
          v12 = v21;
          os_unfair_lock_lock(v23);
          os_unfair_lock_lock(*(v20 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v14);

        sub_1AF630914(v24, v12, v43);

        LOBYTE(v46) = 1;
        v52[0] = v32;
        v52[1] = v20;
        v52[2] = v12;
        v52[3] = v18;
        v52[4] = (v17 - v16 + v18);
        v52[5] = v30;
        v52[6] = v16;
        v52[7] = v17;
        v52[8] = 0;
        v52[9] = 0;
        v53 = 1;
        v54 = v35;
        v55 = v34;
        v56 = v33;
        v25 = v36;
        sub_1AF889684(v52, sub_1AFB3CBF4, v29);
        if (v25)
        {
          break;
        }

        v49 = v31;
        v50 = v44;
        v51 = v45;
        sub_1AF630994(v12, &v49, v43);
        sub_1AF62D29C(v20);
        ecs_stack_allocator_pop_snapshot(v14);
        if (v37)
        {
          os_unfair_lock_unlock(*(v20 + 344));
          os_unfair_lock_unlock(*(v20 + 376));
        }

        if (!--v11)
        {
          sub_1AF0D9DB0(v39, &qword_1ED725EA0);
          sub_1AF0D9DB0(v39, &qword_1ED725EA0);
          return;
        }
      }

      v46 = v31;
      v47 = v44;
      v48 = v45;
      sub_1AF630994(v12, &v46, v43);
      sub_1AF62D29C(v20);
      ecs_stack_allocator_pop_snapshot(v14);
      os_unfair_lock_unlock(*(v20 + 344));
      os_unfair_lock_unlock(*(v20 + 376));
      __break(1u);
    }

    else
    {
      sub_1AF0D9DB0(v39, &qword_1ED725EA0);
    }
  }
}

void sub_1AFB3264C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v10 = *(a2 + 96);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v8 = *(a1 + 32);

  sub_1AF6496EC(v8);

  sub_1AFB3D668(a4, v9);
}

uint64_t sub_1AFB32700()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED73B840;
  v6 = 0;
  v7 = 2;
  v8 = 0;
  v9 = 2;
  v10 = 0;
  sub_1AFCC39D0(1, 1, v3);
  v1 = v3[1];
  *(v0 + 16) = v3[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v4;
  return v0;
}

uint64_t sub_1AFB327C8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  swift_getObjectType();
  return sub_1AF6D6B58();
}

uint64_t sub_1AFB3289C(uint64_t a1)
{
  v2 = sub_1AFB3FEC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB328D8(uint64_t a1)
{
  v2 = sub_1AFB3FEC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB32954(uint64_t a1)
{
  v2 = sub_1AFB3FF7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB32990(uint64_t a1)
{
  v2 = sub_1AFB3FF7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB32A0C(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(void), uint64_t a6, void (*a7)(void))
{
  sub_1AFB3FF1C(0, a4, a5);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v16 - v13;
  sub_1AF441150(a1, a1[3]);
  a7();
  sub_1AFDFF3F8();
  return (*(v11 + 8))(v14, v10);
}

void sub_1AFB32B34(uint64_t a1@<X8>)
{
  *&v2 = sub_1AF6DE29C();
  *a1 = v2;
  *(a1 + 96) = 3;
}

uint64_t sub_1AFB32B64@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1AFB3CAA4(255, 255, 255);
  *a1 = result;
  return result;
}

uint64_t sub_1AFB32BA8()
{
  result = 18;
  v2 = 144;
  switch(*(v0 + 96))
  {
    case 1:
    case 2:
      result = 6;
      break;
    case 3:
      goto LABEL_12;
    case 4:
      result = 48;
      break;
    case 5:
      v2 = 2 * (*(v0 + 20) * 24.0);
LABEL_12:
      result = v2;
      break;
    case 6:
    case 8:
      result = 24;
      break;
    case 7:
      result = 2 * *(v0 + 32) + 96;
      break;
    case 9:
      result = 48 * (*(v0 + 40) + *(v0 + 48));
      break;
    case 0xA:
      result = 4;
      break;
    case 0xB:
      result = 2;
      break;
    case 0xC:
      return result;
    default:
      if (*(v0 + 32) >= 3u)
      {
        result = 10;
      }

      else
      {
        result = qword_1AFE9B290[*(v0 + 32) & 3];
      }

      break;
  }

  return result;
}

void sub_1AFB32C68(unint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, int8x16_t a6, double a7, double a8, double a9, float32x4_t a10)
{
  v588 = *MEMORY[0x1E69E9840];
  v529 = *a2;
  v530 = *(a2 + 16);
  v11 = *(a2 + 32);
  v12 = *(a2 + 48);
  v13 = v10[1].f32[1];
  v14 = *v10;
  v15 = v10[1];
  v17 = v10[2];
  v16 = v10[3];
  v20 = a1;
  v535 = *v10;
  v531 = v11;
  v532 = v17;
  switch(v10[6].i8[0])
  {
    case 1:
      if ((a1 & 0x100000000) != 0)
      {
        v522 = *(a2 + 48);
        v576 = v10[1];
        v246 = sub_1AFB3CAA4(255, 0, 0);
        v15 = v576;
        v17 = v532;
        v14 = v535;
        v12 = v522;
        LODWORD(v20) = v246;
      }

      v247 = *(a3 + 64);
      v248 = *(a3 + 88);
      v249 = *(a3 + 112);
      v28 = *(a3 + 32);
      if (*(a2 + 64))
      {
        v14.i32[3] = 1.0;
        v15.i32[3] = 1.0;
        v250 = (v247 + 16 * v28.i64[0]);
        *v250 = v14;
        v250[1] = v15;
      }

      else
      {
        v432 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v12, v531, v14, 2), v530, *v14.f32, 1), v529, v14.f32[0]);
        v433 = (v247 + 16 * v28.i64[0]);
        v434 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v12, v531, v15, 2), v530, *v15.f32, 1), v529, v15.f32[0]);
        v432.i32[3] = 1.0;
        v434.i32[3] = 1.0;
        *v433 = v432;
        v433[1] = v434;
        v17 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v12, v531, v17, 2), v530, *v17.f32, 1), v529, v17.f32[0]);
      }

      v435 = (v248 + 4 * v28.i64[0]);
      v436 = v249 + 2 * v28.i64[1];
      v17.i32[3] = 1.0;
      *(v247 + 16 * v28.i64[0] + 32) = v17;
      *v435 = v20;
      v435[1] = v20;
      v435[2] = v20;
      *v436 = v28.i16[0];
      v437 = vuzp1_s16(vadd_s32(vdup_lane_s32(*v28.i8, 0), 0x200000001), *v28.i8);
      *(v436 + 2) = vzip1_s16(v437, v437);
      *(v436 + 10) = v28.i16[0];
      v29 = xmmword_1AFE4C680;
      goto LABEL_133;
    case 2:
      if (*(a2 + 64))
      {
        v12 = xmmword_1AFE201A0;
        v531 = xmmword_1AFE20180;
        v530 = xmmword_1AFE20160;
        v529 = xmmword_1AFE20150;
      }

      v581 = v12;
      if ((v10->i64[0] & 0x100000000) != 0)
      {
        goto LABEL_61;
      }

      v183 = *(a3 + 176);
      v184 = *(a3 + 192);
      v185 = *(a3 + 208);
      v186 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(a3 + 224), v185, v12, 2), v184, *v12.f32, 1), v183, v12.f32[0]);
      v187 = vdupq_laneq_s32(v186, 3);
      a10.i64[0] = 0;
      v188 = vceqq_f32(v187, a10);
      v17.i32[0] = 841731191;
      v189 = vdivq_f32(v186, vorrq_s8(vbicq_s8(v187, v188), vbicq_s8(v17, vdupq_lane_s32(*&vmvnq_s8(v188), 0))));
      v190 = 1.0;
      v191 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(*(a3 + 224), v185, v12.f32[2] + 0.0), v184, v12.f32[1] + 0.0), v183, v12.f32[0] + 1.0);
      v192 = vdupq_laneq_s32(v191, 3);
      v193 = vceqq_f32(v192, a10);
      v194 = (COERCE_FLOAT(*v10) + COERCE_FLOAT(*v10)) / (fabsf(vsubq_f32(v189, vdivq_f32(v191, vorrq_s8(vbicq_s8(v192, v193), vbicq_s8(v17, vdupq_lane_s32(*&vmvnq_s8(v193), 0))))).f32[0]) * 1024.0);
      if (v194 <= 0.000001)
      {
        return;
      }

      v195 = v530;
      v196 = v531;
      v197 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v196, v196), v531, 0xCuLL), vnegq_f32(v530)), v531, vextq_s8(vuzp1q_s32(v195, v195), v530, 0xCuLL));
      v198 = vmulq_f32(v529, vextq_s8(vuzp1q_s32(v197, v197), v197, 0xCuLL));
      v199 = vmulq_f32(v529, v529);
      v200 = vmulq_f32(v195, v195);
      *v195.f32 = vadd_f32(vzip1_s32(*v199.i8, *v200.i8), vzip2_s32(*v199.i8, *v200.i8));
      v202 = vextq_s8(v199, v199, 8uLL);
      *v202.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v202.f32, *&vextq_s8(v200, v200, 8uLL)), *v195.f32));
      v201 = vmulq_f32(v196, v196);
      v202.i32[2] = sqrtf(v201.f32[2] + vaddv_f32(*v201.f32));
      if ((v198.f32[2] + vaddv_f32(*v198.f32)) < 0.0)
      {
        v190 = -1.0;
      }

      v203 = vabsq_f32(vmulq_n_f32(v202, v190));
      v203.f32[0] = v194 / fmaxf(fmaxf(v203.f32[0], v203.f32[2]), v203.f32[1]);
      v204 = vdupq_lane_s32(*v203.f32, 0);
      v204.i32[3] = 0;
      sub_1AF6A6ACC(v204);
      v12 = v581;
LABEL_61:
      v205 = v12.f32[2];
      v206.i64[0] = 0xBF000000BF000000;
      v206.i64[1] = 0xBF000000BF000000;
      v519 = v12;
      v207.i64[0] = vaddq_f32(v12, vmulq_f32(v529, v206)).u64[0];
      v207.i64[1] = __PAIR64__(1.0, v12.f32[2] + vmuls_lane_f32(-0.5, v529, 2));
      v208 = v20;
      if ((v20 & 0x100000000) != 0)
      {
        v571 = v207;
        v208 = sub_1AFB3CAA4(255, 0, 0);
        v207 = v571;
      }

      v209 = v529;
      v209.i32[3] = 0;
      v582 = 0u;
      v583 = 0u;
      v584 = 0u;
      v585 = 0u;
      v586.i8[0] = 1;
      sub_1AFB35250(0, v208, &v582, a3, v207, v209);
      v210.i64[0] = 0xBF000000BF000000;
      v210.i64[1] = 0xBF000000BF000000;
      v211.i64[0] = vaddq_f32(v519, vmulq_f32(v530, v210)).u64[0];
      v211.f32[2] = v205 + vmuls_lane_f32(-0.5, v530, 2);
      v211.i32[3] = 1.0;
      v212 = v20;
      if ((v20 & 0x100000000) != 0)
      {
        v572 = v211;
        v212 = sub_1AFB3CAA4(255, 0, 0);
        v211 = v572;
      }

      v213 = v530;
      v213.i32[3] = 0;
      sub_1AFB35250(0, v212, &v582, a3, v211, v213);
      v214.i64[0] = 0xBF000000BF000000;
      v214.i64[1] = 0xBF000000BF000000;
      v79.i64[0] = vaddq_f32(v519, vmulq_f32(v531, v214)).u64[0];
      v79.i64[1] = __PAIR64__(1.0, v205 + vmuls_lane_f32(-0.5, v531, 2));
      if ((v20 & 0x100000000) != 0)
      {
        v573 = v79;
        v215 = sub_1AFB3CAA4(255, 0, 0);
        v79 = v573;
        LODWORD(v20) = v215;
      }

      v76 = v531;
      v76.i32[3] = 0;
      v78 = v20;
      v80 = 0;
LABEL_68:
      sub_1AFB35250(v80, v78, &v582, a3, v79, v76);
      return;
    case 3:
      LODWORD(v216) = HIDWORD(*v10);
      v217 = a1;
      v520 = *(a2 + 48);
      if ((a1 & 0x100000000) != 0)
      {
        v218 = sub_1AFB3CAA4(255, 0, 0);
        v12 = v520;
        v14 = v535;
        v217 = v218;
      }

      v219 = 0.0;
      v220 = COERCE_UNSIGNED_INT(v216 * 0.0);
      v220.f32[1] = v216 * -0.0;
      v221 = v220;
      v221.f32[2] = -v216;
      v222 = COERCE_UNSIGNED_INT(v216 * -0.0);
      v222.i32[1] = v14.i32[3];
      v222.f32[2] = v216 * -0.0;
      v223 = *(a2 + 64);
      v515 = v216 * -0.0;
      v574 = v222;
      v511 = v216 * -0.0;
      if (v223)
      {
        v546 = v14;
        v557 = v222;
      }

      else
      {
        v221 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v531, v221, 2), v530, *v220.f32, 1), v529, v216 * 0.0);
        v546 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v12, v531, v14, 2), v530, *v14.f32, 1), v529, v14.f32[0]);
        v557 = vmlaq_n_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v531, v222, 2), v530, v14, 3), v529, v216 * -0.0);
      }

      v311 = 0;
      v312 = *(a3 + 32);
      v313 = vzip1_s32(*&vextq_s8(v557, v557, 8uLL), *&vextq_s8(v221, v221, 8uLL));
      v314 = *(a3 + 88) + 4 * v312;
      v315 = *(a3 + 64) + 16 * v312;
      v533 = v221;
      do
      {
        v316 = __sincospif_stret(v219);
        v317 = vmul_f32(v313, v316);
        *&v318 = vaddq_f32(vmulq_n_f32(v557, v316.__sinval), vaddq_f32(v546, vmulq_n_f32(v533, v316.__cosval))).u64[0];
        *(&v318 + 2) = v317.f32[0] + (v546.f32[2] + v317.f32[1]);
        HIDWORD(v318) = 1.0;
        *(v315 + 16 * v311) = v318;
        *(v314 + 4 * v311) = v217;
        v219 = v219 + 0.083333;
        ++v311;
      }

      while (v311 != 24);
      v319 = *(a3 + 40);
      v320 = *(a3 + 32);
      v321 = *(a3 + 112) + 2 * v319;
      v322 = (v321 + 2);
      v323 = vdup_n_s16(v320);
      v593.val[0] = vadd_s16(v323, 0x4000300020001);
      v593.val[1] = v593.val[0];
      vst2_s16(v322, v593);
      v324 = (v321 + 18);
      v593.val[0] = vadd_s16(v323, 0x8000700060005);
      v593.val[1] = v593.val[0];
      vst2_s16(v324, v593);
      v325 = (v321 + 34);
      v593.val[0] = vadd_s16(v323, 0xC000B000A0009);
      v593.val[1] = v593.val[0];
      vst2_s16(v325, v593);
      v326 = (v321 + 50);
      v593.val[0] = vadd_s16(v323, 0x10000F000E000DLL);
      v593.val[1] = v593.val[0];
      vst2_s16(v326, v593);
      v327 = (v321 + 66);
      v328 = vadd_s16(v323, 0x14001300120011);
      v593.val[0] = v328;
      vst2_s16(v327, v593);
      *v321 = v320;
      v329 = vadd_s32(vdup_n_s32(v320), 0x1600000015);
      v330 = vuzp1_s16(v329, v329);
      *(v321 + 82) = vzip1_s16(v330, v330);
      *(v321 + 90) = v320 + 23;
      *(v321 + 92) = v320 + 23;
      *(v321 + 94) = v320;
      *(a3 + 32) = v312 + 24;
      *(a3 + 40) = v319 + 48;
      v331 = v20;
      if ((v20 & 0x100000000) != 0)
      {
        v331 = sub_1AFB3CAA4(0, 255, 0);
      }

      v332 = __PAIR64__(LODWORD(v511), v535.u32[3]);
      v332.f32[2] = v216 * -0.0;
      v333 = COERCE_UNSIGNED_INT(v216 * -0.0);
      v333.f32[1] = v216 * 0.0;
      v334 = v333;
      v334.f32[2] = -v216;
      v560 = v332;
      if (v223)
      {
        v547 = v332;
        v534 = v535;
      }

      else
      {
        v547 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_laneq_f32(v531, v332, 2), v530, __PAIR64__(LODWORD(v511), v535.u32[3]), 1), v529, v535, 3);
        v334 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v531, v334, 2), v530, *v333.f32, 1), v529, v515);
        v534 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v520, v531, v535, 2), v530, *v535.f32, 1), v529, v535.f32[0]);
      }

      v335 = 0;
      v336 = vzip1_s32(*&vextq_s8(v334, v334, 8uLL), *&vextq_s8(v547, v547, 8uLL));
      v337 = 0.0;
      v528 = v334;
      do
      {
        v338 = __sincospif_stret(v337);
        v339 = vmul_f32(v336, v338);
        *&v340 = vaddq_f32(vmulq_n_f32(v528, v338.__sinval), vaddq_f32(v534, vmulq_n_f32(v547, v338.__cosval))).u64[0];
        *(&v340 + 2) = v339.f32[0] + (v534.f32[2] + v339.f32[1]);
        HIDWORD(v340) = 1.0;
        *(v315 + 384 + 16 * v335) = v340;
        *(v314 + 96 + 4 * v335) = v331;
        v337 = v337 + 0.083333;
        ++v335;
      }

      while (v335 != 24);
      v341 = *(a3 + 40);
      v342 = *(a3 + 32);
      v343 = *(a3 + 112) + 2 * v341;
      v344 = (v343 + 2);
      v345 = vdup_n_s16(v342);
      v594.val[0] = vadd_s16(v345, 0x4000300020001);
      v594.val[1] = v594.val[0];
      vst2_s16(v344, v594);
      v346 = (v343 + 18);
      v594.val[0] = vadd_s16(v345, 0x8000700060005);
      v594.val[1] = v594.val[0];
      vst2_s16(v346, v594);
      *v343 = v342;
      v347 = (v343 + 34);
      v594.val[0] = vadd_s16(v345, 0xC000B000A0009);
      v594.val[1] = v594.val[0];
      vst2_s16(v347, v594);
      v348 = (v343 + 50);
      v594.val[0] = vadd_s16(v345, 0x10000F000E000DLL);
      v594.val[1] = v594.val[0];
      vst2_s16(v348, v594);
      v349 = (v343 + 66);
      v350 = vadd_s16(v345, 0x14001300120011);
      v594.val[0] = v350;
      vst2_s16(v349, v594);
      v351 = vadd_s32(vdup_n_s32(v342), 0x1600000015);
      v352 = vuzp1_s16(v351, v351);
      *(v343 + 82) = vzip1_s16(v352, v352);
      *(v343 + 90) = v342 + 23;
      *(v343 + 92) = v342 + 23;
      *(v343 + 94) = v342;
      *(a3 + 32) = v312 + 48;
      *(a3 + 40) = v341 + 48;
      if ((v20 & 0x100000000) != 0)
      {
        LODWORD(v20) = sub_1AFB3CAA4(0, 0, 255);
      }

      if (v223)
      {
        v353 = v535;
        v355 = v560;
        v354 = v574;
      }

      else
      {
        v355 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_laneq_f32(v531, v560, 2), v530, __PAIR64__(LODWORD(v511), v535.u32[3]), 1), v529, v535, 3);
        v354 = vmlaq_n_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v531, v574, 2), v530, v535, 3), v529, v515);
        v353 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v520, v531, v535, 2), v530, *v535.f32, 1), v529, v535.f32[0]);
      }

      v356 = 0;
      v357 = v353.f32[2];
      v358 = vzip1_s32(*&vextq_s8(v354, v354, 8uLL), *&vextq_s8(v355, v355, 8uLL));
      v359 = 0.0;
      v539 = v353;
      v561 = v355;
      v579 = v354;
      do
      {
        v360 = __sincospif_stret(v359);
        v361 = vmul_f32(v358, v360);
        *&v362 = vaddq_f32(vmulq_n_f32(v579, v360.__sinval), vaddq_f32(v539, vmulq_n_f32(v561, v360.__cosval))).u64[0];
        *(&v362 + 2) = v361.f32[0] + (v357 + v361.f32[1]);
        HIDWORD(v362) = 1.0;
        *(v315 + 768 + 16 * v356) = v362;
        *(v314 + 192 + 4 * v356) = v20;
        v359 = v359 + 0.083333;
        ++v356;
      }

      while (v356 != 24);
      v363 = *(a3 + 40);
      v364 = *(a3 + 32);
      v365 = *(a3 + 112) + 2 * v363;
      v366 = (v365 + 2);
      v367 = vdup_n_s16(v364);
      v595.val[0] = vadd_s16(v367, 0x4000300020001);
      v595.val[1] = v595.val[0];
      vst2_s16(v366, v595);
      v368 = (v365 + 18);
      v595.val[0] = vadd_s16(v367, 0x8000700060005);
      v595.val[1] = v595.val[0];
      vst2_s16(v368, v595);
      *v365 = v364;
      v369 = (v365 + 34);
      v595.val[0] = vadd_s16(v367, 0xC000B000A0009);
      v595.val[1] = v595.val[0];
      vst2_s16(v369, v595);
      v370 = (v365 + 50);
      v595.val[0] = vadd_s16(v367, 0x10000F000E000DLL);
      v595.val[1] = v595.val[0];
      vst2_s16(v370, v595);
      v371 = (v365 + 66);
      v372 = vadd_s16(v367, 0x14001300120011);
      v595.val[0] = v372;
      vst2_s16(v371, v595);
      v373 = vadd_s32(vdup_n_s32(v364), 0x1600000015);
      v374 = vuzp1_s16(v373, v373);
      *(v365 + 82) = vzip1_s16(v374, v374);
      *(v365 + 90) = v364 + 23;
      *(v365 + 92) = v364 + 23;
      *(v365 + 94) = v364;
      v66 = v363 + 48;
      v67 = v312 + 72;
      goto LABEL_149;
    case 4:
      if ((a1 & 0x100000000) != 0)
      {
        v565 = v10[1];
        v30 = sub_1AFB3CAA4(255, 255, 255);
        v15 = v565;
        v17.i64[0] = v532.i64[0];
        v14 = v535;
        LODWORD(v20) = v30;
      }

      v31 = v17.f32[1];
      v32 = *(a3 + 64);
      v33 = *(a3 + 88);
      if ((*(a2 + 64) & 1) == 0)
      {
        sub_1AF6DE920();
        v17.i64[0] = v532.i64[0];
        v14 = v34;
        v15 = v11;
      }

      v35 = 0;
      v36 = vmulq_f32(v15, v15);
      v11.f32[0] = v36.f32[2] + vaddv_f32(*v36.f32);
      v37 = v17.f32[0] * 6.2832;
      *v36.f32 = vrsqrte_f32(v11.u32[0]);
      *v36.f32 = vmul_f32(*v36.f32, vrsqrts_f32(v11.u32[0], vmul_f32(*v36.f32, *v36.f32)));
      *v11.f32 = vrsqrts_f32(v11.u32[0], vmul_f32(*v36.f32, *v36.f32));
      v38 = vmulq_n_f32(v15, vmul_f32(*v36.f32, *v11.f32).f32[0]);
      a10.i32[0] = 1.0;
      v39 = v38.f32[1] / (fabsf(v38.f32[2]) + 1.0);
      v40 = vmuls_lane_f32(v39, *v38.f32, 1);
      v41.f32[0] = -(v38.f32[0] * v39);
      v11.f32[0] = -v38.f32[2];
      v42.i64[0] = 0x8000000080000000;
      v42.i64[1] = 0x8000000080000000;
      v49 = vbslq_s8(v42, a10, v11);
      v41.f32[1] = 1.0 - v40;
      v43 = vmul_lane_f32(v41, *v17.f32, 1);
      v44 = v31 * vmuls_lane_f32(*v49.i32, *v38.f32, 1);
      v45 = *(a3 + 32);
      v46 = v14.f32[2];
      v550 = vsubq_f32(vaddq_f32(v14, v15), v14);
      v47 = v33 + 4 * v45;
      v48 = v32 + 16 * v45;
      v49.i64[0] = 0;
      v536 = *v14.f32;
      do
      {
        v566 = v49;
        v50 = vmul_n_f32(*v550.f32, *v49.i32);
        v51 = v46 + (v550.f32[2] * *v49.i32);
        v52 = sinf(v37 * *v49.i32);
        v53 = v44 * v52;
        *&v54 = vadd_f32(vadd_f32(v536, v50), vmul_n_f32(v43, v52));
        *(&v54 + 2) = v51 + v53;
        HIDWORD(v54) = 1.0;
        v49 = v566;
        *(v48 + 16 * v35) = v54;
        *(v47 + 4 * v35) = v20;
        *v49.i32 = *v566.i32 + 0.043478;
        ++v35;
      }

      while (v35 != 24);
      v55 = *(a3 + 40);
      v56 = *(a3 + 112) + 2 * v55;
      v57 = (v56 + 2);
      v58 = vdup_n_s16(v45);
      v590.val[0] = vadd_s16(v58, 0x4000300020001);
      v590.val[1] = v590.val[0];
      vst2_s16(v57, v590);
      v59 = (v56 + 18);
      v590.val[0] = vadd_s16(v58, 0x8000700060005);
      v590.val[1] = v590.val[0];
      vst2_s16(v59, v590);
      *v56 = v45;
      v60 = (v56 + 34);
      v590.val[0] = vadd_s16(v58, 0xC000B000A0009);
      v590.val[1] = v590.val[0];
      vst2_s16(v60, v590);
      v61 = (v56 + 50);
      v590.val[0] = vadd_s16(v58, 0x10000F000E000DLL);
      v590.val[1] = v590.val[0];
      vst2_s16(v61, v590);
      v62 = (v56 + 66);
      v63 = vadd_s16(v58, 0x14001300120011);
      v590.val[0] = v63;
      vst2_s16(v62, v590);
      v64 = vadd_s32(vdup_n_s32(v45), 0x1600000015);
      v65 = vuzp1_s16(v64, v64);
      *(v56 + 82) = vzip1_s16(v65, v65);
      *(v56 + 90) = v45 + 23;
      v66 = v55 + 46;
      v67 = v45 + 24;
      goto LABEL_149;
    case 5:
      if ((a1 & 0x100000000) != 0)
      {
        v523 = *(a2 + 48);
        v577 = v10[1].i64[0];
        v251 = sub_1AFB3CAA4(255, 255, 255);
        v15.i64[0] = v577;
        v12 = v523;
        v14 = v535;
        LODWORD(v20) = v251;
      }

      v252 = (v13 * 24.0);
      if (*(a2 + 64))
      {
        v253 = xmmword_1AFE9AAF0;
        v254 = xmmword_1AFE8B8F0;
        v255 = *(a3 + 32);
        if (v252)
        {
LABEL_85:
          v256 = 0;
          v257 = (v15.f32[1] + v15.f32[1]) / v252;
          v258 = v14.f32[2];
          v259 = vzip1_s32(*&vextq_s8(v254, v254, 8uLL), *&vextq_s8(v253, v253, 8uLL));
          v260 = *(a3 + 88) + 4 * v255;
          v261 = *(a3 + 64) + 16 * v255;
          v262 = 0.0;
          v263 = v15.f32[0] / v252;
          v538 = v14;
          v559 = v253;
          v578 = v254;
          do
          {
            v264 = vmul_n_f32(__sincospif_stret(v262), v263 * v256);
            v265 = vmul_f32(v259, v264);
            *v266.f32 = vdup_lane_s32(v264, 0);
            *v267.f32 = vdup_lane_s32(v264, 1);
            v267.i64[0] = vaddq_f32(vmulq_f32(v578, v266), vaddq_f32(v538, vmulq_f32(v559, v267))).u64[0];
            v267.f32[2] = v265.f32[0] + (v258 + v265.f32[1]);
            v267.i32[3] = 1.0;
            *(v261 + 16 * v256) = v267;
            *(v260 + 4 * v256) = v20;
            v262 = v257 + v262;
            ++v256;
          }

          while (v252 != v256);
          v268 = *(a3 + 40);
          v269 = v252 - 1;
          if (v252 == 1)
          {
LABEL_148:
            v66 = v268 + v269;
            v67 = v255 + v252;
LABEL_149:
            *(a3 + 32) = v67;
            *(a3 + 40) = v66;
            return;
          }

LABEL_136:
          v440 = *(a3 + 112);
          if (v269 < 4 || ((v441 = 2 * v268, v442 = v440 + 2 * v268, v443 = 4 * (v252 - 2), v444 = v442 + v443, v445 = v442 + 2 + v443, v444 >= v442) ? (_CF = v445 >= v442 + 2) : (_CF = 0), _CF ? (_ZF = (v252 - 2) >> 62 == 0) : (_ZF = 0), !_ZF))
          {
            v448 = 0;
            v449 = v268;
            goto LABEL_145;
          }

          v475 = vdupq_n_s64(v255);
          if (v269 >= 0x10)
          {
            v448 = v269 & 0xFFFFFFFFFFFFFFF0;
            v476 = (v441 + v440 + 32);
            v477 = xmmword_1AFE22900;
            v478 = xmmword_1AFE22910;
            v479 = xmmword_1AFE21100;
            v480 = xmmword_1AFE21110;
            v481.i64[0] = 0x1000100010001;
            v481.i64[1] = 0x1000100010001;
            v482.i64[0] = 0x8000800080008;
            v482.i64[1] = 0x8000800080008;
            v483.i64[0] = 0x9000900090009;
            v483.i64[1] = 0x9000900090009;
            v484 = vdupq_n_s64(0x10uLL);
            v485 = v269 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v599.val[0] = vuzp1q_s16(vuzp1q_s32(vaddq_s64(v480, v475), vaddq_s64(v479, v475)), vuzp1q_s32(vaddq_s64(v478, v475), vaddq_s64(v477, v475)));
              v599.val[1] = vaddq_s16(v599.val[0], v481);
              v486 = v476 - 16;
              vst2q_s16(v486, v599);
              v601.val[0] = vaddq_s16(v599.val[0], v482);
              v601.val[1] = vaddq_s16(v599.val[0], v483);
              vst2q_s16(v476, v601);
              v478 = vaddq_s64(v478, v484);
              v479 = vaddq_s64(v479, v484);
              v480 = vaddq_s64(v480, v484);
              v477 = vaddq_s64(v477, v484);
              v476 += 32;
              v485 -= 16;
            }

            while (v485);
            if (v269 == v448)
            {
              goto LABEL_147;
            }

            if ((v269 & 0xC) == 0)
            {
              v449 = v268 + 2 * v448;
LABEL_145:
              v450 = (v440 + 2 * v449 + 2);
              v451 = v448 + v255;
              v452 = ~v448 + v252;
              do
              {
                *(v450 - 1) = v451;
                *v450 = v451 + 1;
                v450 += 2;
                ++v451;
                --v452;
              }

              while (v452);
LABEL_147:
              v269 *= 2;
              goto LABEL_148;
            }
          }

          else
          {
            v448 = 0;
          }

          v487 = v448;
          v448 = v269 & 0xFFFFFFFFFFFFFFFCLL;
          v449 = v268 + 2 * (v269 & 0xFFFFFFFFFFFFFFFCLL);
          v488 = vdupq_n_s64(v487);
          v489 = vorrq_s8(v488, xmmword_1AFE21100);
          v490 = vorrq_s8(v488, xmmword_1AFE21110);
          v491 = (v440 + v441 + 4 * v487);
          v492 = v487 - (v269 & 0xFFFFFFFFFFFFFFFCLL);
          v493 = vdupq_n_s64(4uLL);
          do
          {
            v598.val[0] = vmovn_s32(vuzp1q_s32(vaddq_s64(v490, v475), vaddq_s64(v489, v475)));
            v598.val[1] = vadd_s16(v598.val[0], 0x1000100010001);
            vst2_s16(v491, v598);
            v491 += 8;
            v489 = vaddq_s64(v489, v493);
            v490 = vaddq_s64(v490, v493);
            v492 += 4;
          }

          while (v492);
          if (v269 == v448)
          {
            goto LABEL_147;
          }

          goto LABEL_145;
        }
      }

      else
      {
        v438.i64[0] = 0x8000000080000000;
        v438.i64[1] = 0x8000000080000000;
        v439 = vmulq_f32(v531, v438);
        v253 = vaddq_f32(v529, vmlaq_f32(v439, v438, v530));
        v254 = vmlaq_f32(vaddq_f32(v530, v439), v438, v529);
        v14 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v12, v531, v14, 2), v530, *v14.f32, 1), v529, v14.f32[0]);
        v255 = *(a3 + 32);
        if (v252)
        {
          goto LABEL_85;
        }
      }

      v268 = *(a3 + 40);
      v269 = -1;
      goto LABEL_136;
    case 6:
      v271 = *(a3 + 32);
      v270 = *(a3 + 40);
      v272 = *(a3 + 64) + 16 * v271;
      v273 = *(a3 + 88);
      v274 = *(a3 + 112);
      if (*(a2 + 64))
      {
        v275 = vsubq_f32(v14, v15);
        v276 = vaddq_f32(v15, v15);
        v277 = vdupq_laneq_s32(v276, 3);
        v277.i32[0] = v276.i32[0];
        v278 = vaddq_f32(v275, v277);
        *v272 = v275;
        *(v272 + 16) = v278;
        v279 = vaddq_f32(v275, vtrn2q_s32(vuzp2q_s32(v276, v276), v276));
        v280 = vaddq_f32(v277, v279);
        *(v272 + 32) = v279;
        *(v272 + 48) = v280;
        v281.i64[1] = v276.i64[1];
        v281.i32[0] = v276.i32[3];
        v281.i32[1] = v276.i32[3];
        *(v272 + 64) = vaddq_f32(v275, v281);
        *(v272 + 80) = vaddq_f32(v281, v278);
        *(v272 + 96) = vaddq_f32(v281, v279);
        *(v272 + 112) = vaddq_f32(v281, v280);
      }

      else
      {
        sub_1AF6DDFE0(v272, v529, v530, v11, v12, v14, v15);
      }

      v453 = (v273 + 4 * v271);
      if ((v20 & 0x100000000) != 0)
      {
        LODWORD(v20) = sub_1AFB3CAA4(255, 255, 255);
      }

      v454 = vdupq_n_s32(v20);
      v455 = (v274 + 2 * v270);
      *v453 = v454;
      v453[1] = v454;
      *v455 = word_1F2500B50 + v271;
      v455[1] = word_1F2500B52 + v271;
      v455[2] = word_1F2500B54 + v271;
      v455[3] = word_1F2500B56 + v271;
      v455[4] = word_1F2500B58 + v271;
      v455[5] = word_1F2500B5A + v271;
      v455[6] = word_1F2500B5C + v271;
      v455[7] = word_1F2500B5E + v271;
      v455[8] = word_1F2500B60 + v271;
      v455[9] = word_1F2500B62 + v271;
      v455[10] = word_1F2500B64 + v271;
      v455[11] = word_1F2500B66 + v271;
      v455[12] = word_1F2500B68 + v271;
      v455[13] = word_1F2500B6A + v271;
      v455[14] = word_1F2500B6C + v271;
      v455[15] = word_1F2500B6E + v271;
      v455[16] = word_1F2500B70 + v271;
      v455[17] = word_1F2500B72 + v271;
      v455[18] = word_1F2500B74 + v271;
      v455[19] = word_1F2500B76 + v271;
      v455[20] = word_1F2500B78 + v271;
      v455[21] = word_1F2500B7A + v271;
      v455[22] = word_1F2500B7C + v271;
      v455[23] = word_1F2500B7E + v271;
      v299 = v271 + 8;
      goto LABEL_154;
    case 7:
      v521 = *(a2 + 48);
      v224 = *(a3 + 32);
      LODWORD(v225) = HIDWORD(*v10);
      v575 = v10[1];
      *&v226 = sub_1AF6DD730(v14, v15);
      v229 = v20;
      if ((v20 & 0x100000000) != 0)
      {
        v558 = v226;
        v230 = sub_1AFB3CAA4(255, 255, 255);
        v226 = v558;
        v229 = v230;
      }

      v228.i32[0] = DWORD2(v226);
      v227.i32[0] = 1.0;
      v231.i64[0] = 0x8000000080000000;
      v231.i64[1] = 0x8000000080000000;
      v231.i32[0] = vbslq_s8(v231, v227, v228).i32[0];
      v232 = *(&v226 + 1) / (fabsf(*(&v226 + 2)) + 1.0);
      v233 = vmuls_lane_f32(v232, *&v226, 1);
      v234 = -(*&v226 * v232);
      v235 = *(&v226 + 2) + (*v231.i32 * v233);
      v236 = *v231.i32 * v234;
      v237 = 1.0 - v233;
      v238 = COERCE_UNSIGNED_INT(v225 * v235);
      v238.f32[1] = v225 * (*v231.i32 * v234);
      v239 = v238;
      v239.f32[2] = -(*&v226 * v225);
      v240 = v225 * (1.0 - v233);
      v241 = COERCE_UNSIGNED_INT(v225 * v234);
      v241.f32[1] = v240;
      v242 = vmuls_lane_f32(-*v231.i32, *&v226, 1);
      v243 = v241;
      v243.f32[2] = v225 * v242;
      v244 = *(a2 + 64);
      v527 = v235;
      v525 = v242;
      if (v244)
      {
        v245 = v535;
      }

      else
      {
        v239 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v531, v239, 2), v530, *v238.f32, 1), v529, v225 * v235);
        v243 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v531, v243, 2), v530, *v241.f32, 1), v529, v225 * v234);
        v245 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v521, v531, v535, 2), v530, *v535.f32, 1), v529, v535.f32[0]);
      }

      v375 = 0;
      v517 = -*&v226;
      v376 = v245.f32[2];
      v377 = vzip1_s32(*&vextq_s8(v243, v243, 8uLL), *&vextq_s8(v239, v239, 8uLL));
      v378 = *(a3 + 88) + 4 * v224;
      v379 = *(a3 + 64) + 16 * v224;
      v380 = 0.0;
      v540 = v245;
      v548 = v243;
      v562 = v239;
      do
      {
        v381 = __sincospif_stret(v380);
        v382 = vmul_f32(v377, v381);
        *&v383 = vaddq_f32(vmulq_n_f32(v548, v381.__sinval), vaddq_f32(v540, vmulq_n_f32(v562, v381.__cosval))).u64[0];
        *(&v383 + 1) = __PAIR64__(1.0, v382.f32[0] + (v376 + v382.f32[1]));
        *(v379 + 16 * v375) = v383;
        *(v378 + 4 * v375) = v229;
        v380 = v380 + 0.083333;
        ++v375;
      }

      while (v375 != 24);
      v384 = *(a3 + 40);
      v385 = *(a3 + 32);
      v386 = *(a3 + 112) + 2 * v384;
      v387 = (v386 + 2);
      v388 = vdup_n_s16(v385);
      v596.val[0] = vadd_s16(v388, 0x4000300020001);
      v596.val[1] = v596.val[0];
      vst2_s16(v387, v596);
      v389 = (v386 + 18);
      v596.val[0] = vadd_s16(v388, 0x8000700060005);
      v596.val[1] = v596.val[0];
      vst2_s16(v389, v596);
      v390 = (v386 + 34);
      v596.val[0] = vadd_s16(v388, 0xC000B000A0009);
      v596.val[1] = v596.val[0];
      vst2_s16(v390, v596);
      v391 = (v386 + 50);
      v596.val[0] = vadd_s16(v388, 0x10000F000E000DLL);
      v596.val[1] = v596.val[0];
      vst2_s16(v391, v596);
      v392 = (v386 + 66);
      v393 = vadd_s16(v388, 0x14001300120011);
      v596.val[0] = v393;
      vst2_s16(v392, v596);
      *v386 = v385;
      v394 = vadd_s32(vdup_n_s32(v385), 0x1600000015);
      v395 = vuzp1_s16(v394, v394);
      *(v386 + 82) = vzip1_s16(v395, v395);
      *(v386 + 90) = v385 + 23;
      *(v386 + 92) = v385 + 23;
      *(v386 + 94) = v385;
      v396 = v224 + 24;
      *(a3 + 32) = v224 + 24;
      *(a3 + 40) = v384 + 48;
      v397 = v575;
      if ((v20 & 0x100000000) != 0)
      {
        v398 = sub_1AFB3CAA4(255, 255, 255);
        v397 = v575;
        LODWORD(v20) = v398;
      }

      v399 = COERCE_UNSIGNED_INT(*&v575.i32[3] * v527);
      v399.f32[1] = *&v575.i32[3] * v236;
      v400 = v399;
      v400.f32[2] = *&v575.i32[3] * v517;
      v401 = COERCE_UNSIGNED_INT(*&v575.i32[3] * v234);
      v401.f32[1] = *&v575.i32[3] * v237;
      v402 = v401;
      v402.f32[2] = *&v575.i32[3] * v525;
      if ((v244 & 1) == 0)
      {
        v400 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v531, v400, 2), v530, *v399.f32, 1), v529, *&v575.i32[3] * v527);
        v402 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v531, v402, 2), v530, *v401.f32, 1), v529, *&v575.i32[3] * v234);
        v397 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v521, v531, v397, 2), v530, *v397.f32, 1), v529, v397.f32[0]);
      }

      v403 = 0;
      v404 = v397.f32[2];
      v405 = vzip1_s32(*&vextq_s8(v402, v402, 8uLL), *&vextq_s8(v400, v400, 8uLL));
      v406 = v378 + 96;
      v407 = v379 + 384;
      v408 = 0.0;
      v563 = v400;
      v580 = v397;
      v549 = v402;
      do
      {
        v409 = __sincospif_stret(v408);
        v410 = vmul_f32(v405, v409);
        *&v411 = vaddq_f32(vmulq_n_f32(v549, v409.__sinval), vaddq_f32(v580, vmulq_n_f32(v563, v409.__cosval))).u64[0];
        *(&v411 + 2) = v410.f32[0] + (v404 + v410.f32[1]);
        HIDWORD(v411) = 1.0;
        *(v407 + 16 * v403) = v411;
        *(v406 + 4 * v403) = v20;
        v408 = v408 + 0.083333;
        ++v403;
      }

      while (v403 != 24);
      v412 = *(a3 + 40);
      v413 = *(a3 + 32);
      v414 = *(a3 + 112) + 2 * v412;
      v415 = (v414 + 2);
      v416 = vdup_n_s16(v413);
      v597.val[0] = vadd_s16(v416, 0x4000300020001);
      v597.val[1] = v597.val[0];
      vst2_s16(v415, v597);
      *v414 = v413;
      v417 = (v414 + 18);
      v597.val[0] = vadd_s16(v416, 0x8000700060005);
      v597.val[1] = v597.val[0];
      vst2_s16(v417, v597);
      v418 = (v414 + 34);
      v597.val[0] = vadd_s16(v416, 0xC000B000A0009);
      v597.val[1] = v597.val[0];
      vst2_s16(v418, v597);
      v419 = (v414 + 50);
      v597.val[0] = vadd_s16(v416, 0x10000F000E000DLL);
      v597.val[1] = v597.val[0];
      vst2_s16(v419, v597);
      v420 = (v414 + 66);
      v421 = vadd_s16(v416, 0x14001300120011);
      v597.val[0] = v421;
      vst2_s16(v420, v597);
      v422 = vadd_s32(vdup_n_s32(v413), 0x1600000015);
      v423 = vuzp1_s16(v422, v422);
      *(v414 + 82) = vzip1_s16(v423, v423);
      *(v414 + 90) = v413 + 23;
      *(v414 + 92) = v413 + 23;
      *(v414 + 94) = v413;
      v424 = v412 + 48;
      *(a3 + 32) = v224 + 48;
      *(a3 + 40) = v412 + 48;
      if (v532.i64[0] <= 0)
      {
        return;
      }

      v425 = *(a3 + 112);
      v426 = 0x18uLL / v532.i64[0];
      if (v532.i64[0] < 0x48uLL)
      {
        v427 = 0;
LABEL_127:
        v428 = v424;
LABEL_128:
        v429 = (v425 + 2 * v428 + 2);
        v430 = v532.i64[0] - v427;
        do
        {
          v431 = v427++ * v426;
          *(v429 - 1) = v431 + v224;
          *v429 = v431 + v396;
          v429 += 2;
          --v430;
        }

        while (v430);
        goto LABEL_130;
      }

      v427 = 0;
      v456 = v425 + 2 * v412;
      v457 = (v456 + 96);
      v458 = 4 * (v532.i64[0] - 1);
      if (v456 + 96 + v458 < (v456 + 96) || v456 + 98 + v458 < (v456 + 98))
      {
        goto LABEL_127;
      }

      v428 = v424;
      if ((v532.i64[0] - 1) >> 62)
      {
        goto LABEL_128;
      }

      v427 = v532.i64[0] & 0x7FFFFFFFFFFFFFF8;
      v428 = v424 + 2 * (v532.i64[0] & 0x7FFFFFFFFFFFFFF8);
      v459 = vdupq_n_s64(v426);
      v460 = vdupq_n_s64(v224);
      v461 = xmmword_1AFE22900;
      v462 = xmmword_1AFE22910;
      v463 = xmmword_1AFE21100;
      v464 = xmmword_1AFE21110;
      v465 = vdupq_n_s64(v396);
      v466 = v459.i64[1];
      v467 = v459.i64[0];
      v468 = v459.i64[0];
      v469 = vdupq_n_s64(8uLL);
      v470 = v532.i64[0] & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v471.i64[0] = v463.i64[0] * v468;
        v471.i64[1] = v463.i64[1] * v466;
        v472.i64[0] = v464.i64[0] * v468;
        v472.i64[1] = v464.i64[1] * v466;
        v473.i64[0] = v461.i64[0] * v467;
        v473.i64[1] = v461.i64[1] * v466;
        v474.i64[0] = v462.i64[0] * v468;
        v474.i64[1] = v462.i64[1] * v466;
        v600.val[0] = vuzp1q_s16(vuzp1q_s32(vaddq_s64(v472, v460), vaddq_s64(v471, v460)), vuzp1q_s32(vaddq_s64(v474, v460), vaddq_s64(v473, v460)));
        v600.val[1] = vuzp1q_s16(vuzp1q_s32(vaddq_s64(v472, v465), vaddq_s64(v471, v465)), vuzp1q_s32(vaddq_s64(v474, v465), vaddq_s64(v473, v465)));
        vst2q_s16(v457, v600);
        v457 += 16;
        v462 = vaddq_s64(v462, v469);
        v463 = vaddq_s64(v463, v469);
        v464 = vaddq_s64(v464, v469);
        v461 = vaddq_s64(v461, v469);
        v470 -= 8;
      }

      while (v470);
      if (v532.i64[0] != v427)
      {
        goto LABEL_128;
      }

LABEL_130:
      v310 = v424 + 2 * v532.i64[0];
LABEL_155:
      *(a3 + 40) = v310;
      return;
    case 8:
      v301 = v10[4];
      v300 = v10[5];
      v302 = *(a3 + 88);
      v303 = *(a3 + 112);
      v305 = *(a3 + 32);
      v304 = *(a3 + 40);
      v306 = (*(a3 + 64) + 16 * v305);
      v582 = *v10;
      v583 = v15;
      v584 = v17;
      v585 = v16;
      v586 = v301;
      v587 = v300;
      sub_1AF1F7BAC(&v582, v306);
      if ((v20 & 0x100000000) != 0)
      {
        LODWORD(v20) = sub_1AFB3CAA4(255, 255, 255);
      }

      v307 = (v302 + 4 * v305);
      v308 = vdupq_n_s32(v20);
      *v307 = v308;
      v307[1] = v308;
      v309 = (v303 + 2 * v304);
      *v309 = word_1F2500B50 + v305;
      v309[1] = word_1F2500B52 + v305;
      v309[2] = word_1F2500B54 + v305;
      v309[3] = word_1F2500B56 + v305;
      v309[4] = word_1F2500B58 + v305;
      v309[5] = word_1F2500B5A + v305;
      v309[6] = word_1F2500B5C + v305;
      v309[7] = word_1F2500B5E + v305;
      v309[8] = word_1F2500B60 + v305;
      v309[9] = word_1F2500B62 + v305;
      v309[10] = word_1F2500B64 + v305;
      v309[11] = word_1F2500B66 + v305;
      v309[12] = word_1F2500B68 + v305;
      v309[13] = word_1F2500B6A + v305;
      v309[14] = word_1F2500B6C + v305;
      v309[15] = word_1F2500B6E + v305;
      v309[16] = word_1F2500B70 + v305;
      v309[17] = word_1F2500B72 + v305;
      v309[18] = word_1F2500B74 + v305;
      v309[19] = word_1F2500B76 + v305;
      v309[20] = word_1F2500B78 + v305;
      v309[21] = word_1F2500B7A + v305;
      v309[22] = word_1F2500B7C + v305;
      v309[23] = word_1F2500B7E + v305;
      *(a3 + 32) = v305 + 8;
      v310 = sub_1AFB32BA8() + v304;
      goto LABEL_155;
    case 9:
      v518 = *(a2 + 48);
      v510 = v17.f32[1];
      v516 = v10[3].i64[0];
      v81 = vmulq_f32(v15, v15);
      v11.f32[0] = v81.f32[2] + vaddv_f32(*v81.f32);
      *v81.f32 = vrsqrte_f32(v11.u32[0]);
      *v81.f32 = vmul_f32(*v81.f32, vrsqrts_f32(v11.u32[0], vmul_f32(*v81.f32, *v81.f32)));
      *a6.i8 = vmul_f32(*v81.f32, *v81.f32);
      *v11.f32 = vrsqrts_f32(v11.u32[0], *a6.i8);
      v82 = vmulq_n_f32(v15, vmul_f32(*v81.f32, *v11.f32).f32[0]);
      v11.i32[0] = v82.i32[2];
      v513 = v11;
      v514 = *v82.f32;
      v512 = v82.f32[1];
      LODWORD(v524) = v10->i64[1];
      v509 = v17.i64[1];
      v526 = a1;
      if (v17.i64[1] < 1)
      {
        goto LABEL_44;
      }

      v83 = 0;
      v508 = 2.0 / v17.u64[1];
      a6.i32[0] = 1.0;
      v84.i64[0] = 0x8000000080000000;
      v84.i64[1] = 0x8000000080000000;
      v84.i32[0] = vbslq_s8(v84, a6, v11).i32[0];
      v85.f32[0] = v512 / (fabsf(v11.f32[0]) + 1.0);
      v86 = vmuls_lane_f32(v85.f32[0], v514, 1);
      v87.f32[0] = *v513.i32 + (*v84.i32 * v86);
      __asm { FMOV            V5.2S, #1.0 }

      v85.f32[1] = v86;
      v91 = vsub_f32(_D5, v85);
      _D5.f32[0] = -v514.f32[0];
      v85.f32[0] = vmul_f32(_D5, v85).f32[0];
      v85.i32[1] = v91.i32[1];
      v87.f32[1] = *v84.i32 * v85.f32[0];
      v92 = vmul_lane_f32(v87, *v17.f32, 1);
      v93 = -(v514.f32[0] * v17.f32[1]);
      v94 = vmul_lane_f32(v85, *v17.f32, 1);
      v95 = v17.f32[1] * vmuls_lane_f32(-*v84.i32, v514, 1);
      v504 = *(a3 + 88);
      v506 = *(a3 + 64);
      v96 = 0.0;
      v502 = *(a2 + 64);
      break;
    case 0xA:
      v282 = *(a3 + 32);
      v270 = *(a3 + 40);
      v283 = (*(a3 + 64) + 16 * v282);
      v284 = *(a3 + 128);
      v285 = *(a3 + 144);
      v286 = *(a3 + 160);
      v287 = vmul_f32(*v14.f32, vzip1_s32(*v285.i8, *v286.i8));
      v288 = vextq_s8(v286, v286, 8uLL).u64[0];
      v289 = vextq_s8(v285, v285, 8uLL).u64[0];
      v290 = vmul_f32(*v14.f32, vzip2_s32(v289, v288));
      v287.f32[0] = (*v284.i32 + v287.f32[0]) + v287.f32[1];
      *v291.i32 = v287.f32[0] + 0.005;
      *v284.i8 = vadd_f32(vadd_f32(vext_s8(*v284.i8, *&vextq_s8(v284, v284, 8uLL), 4uLL), vmul_n_f32(vext_s8(*v285.i8, v289, 4uLL), v14.f32[0])), vmul_lane_f32(vext_s8(*v286.i8, v288, 4uLL), *v14.f32, 1));
      *v285.i8 = vadd_f32(*v284.i8, 1000593162);
      v292 = vextq_s8(vextq_s8(v291.u32[0], v291.u32[0], 4uLL), v285, 0xCuLL);
      *&v292.i32[3] = ((COERCE_FLOAT(HIDWORD(*(a3 + 128))) + v290.f32[0]) + v290.f32[1]) + 0.0;
      *v293.i32 = v287.f32[0] + -0.005;
      *&v293.i32[1] = *v284.i32 + -0.005;
      v293.i64[1] = __PAIR64__(v292.u32[3], v285.u32[1]);
      v294 = *(a3 + 88);
      v295 = vextq_s8(vextq_s8(v293.u32[0], v293.u32[0], 4uLL), v285, 0xCuLL);
      v295.i32[3] = v292.i32[3];
      v296 = *(a3 + 112);
      *&v291.i32[1] = *v284.i32 + -0.005;
      v291.i64[1] = __PAIR64__(v292.u32[3], v285.u32[1]);
      *v283 = v292;
      v283[1] = v293;
      v297 = (v294 + 4 * v282);
      v283[2] = v295;
      v283[3] = v291;
      if ((a1 & 0x100000000) != 0)
      {
        LODWORD(v20) = sub_1AFB3CAA4(255, 255, 255);
      }

      *v297 = vdupq_n_s32(v20);
      v298 = (v296 + 2 * v270);
      *v298 = v282;
      v298[1] = v282 + 1;
      v298[2] = v282 + 2;
      v298[3] = v282 + 3;
      v299 = v282 + 4;
LABEL_154:
      *(a3 + 32) = v299;
      v310 = sub_1AFB32BA8() + v270;
      goto LABEL_155;
    case 0xB:
      v21 = *(a3 + 32);
      v22 = *(a3 + 40);
      v23 = (*(a3 + 64) + 16 * v21);
      v24 = (*(a3 + 88) + 4 * v21);
      v25 = *(a3 + 112);
      *v23 = vaddq_f32(vaddq_f32(*(a3 + 128), vmulq_n_f32(*(a3 + 144), v14.f32[0])), vmulq_lane_f32(*(a3 + 160), *v14.f32, 1));
      v564 = *(a3 + 32);
      v23[1] = vaddq_f32(vaddq_f32(*(a3 + 128), vmulq_n_f32(*(a3 + 144), v14.f32[2])), vmulq_n_f32(*(a3 + 160), v14.f32[3]));
      if ((a1 & 0x100000000) != 0)
      {
        LODWORD(v20) = sub_1AFB3CAA4(255, 255, 255);
      }

      v26 = (v25 + 2 * v22);
      *v24 = v20;
      v24[1] = v20;
      *v26 = v564.i16[0];
      v26[1] = v564.i16[0] + 1;
      v27 = sub_1AFB32BA8();
      v28.i64[0] = vdupq_n_s64(2uLL).u64[0];
      v28.i64[1] = v27;
      v29 = v564;
LABEL_133:
      *(a3 + 32) = vaddq_s64(v28, v29);
      return;
    case 0xC:
      if (*(a2 + 64))
      {
        v68 = -1;
      }

      else
      {
        v68 = 0;
      }

      v69 = vdupq_n_s32(v68);
      v73 = vbslq_s8(v69, xmmword_1AFE20150, v529);
      v541 = vbslq_s8(v69, xmmword_1AFE20160, v530);
      v70 = xmmword_1AFE20180;
      v71 = 0uLL;
      v72 = vbslq_s8(v69, 0, v12);
      v72.i32[3] = 1.0;
      v567 = v72;
      v73.i32[3] = 0;
      if ((a1 & 0x100000000) != 0)
      {
        v551 = v73;
        v537 = v69;
        LODWORD(a1) = sub_1AFB3CAA4(255, 0, 0);
        v70 = xmmword_1AFE20180;
        v69 = v537;
        v71 = 0uLL;
        v73 = v551;
      }

      v552 = vbslq_s8(v69, v70, v531);
      v582 = v71;
      v583 = v71;
      v584 = v71;
      v585 = v71;
      v586.i8[0] = 1;
      sub_1AFB35250(2u, a1, &v582, a3, v567, v73);
      v74 = v541;
      v74.i32[3] = 0;
      v75 = v20;
      if ((v20 & 0x100000000) != 0)
      {
        v542 = v74;
        v75 = sub_1AFB3CAA4(0, 255, 0);
        v74 = v542;
      }

      sub_1AFB35250(2u, v75, &v582, a3, v567, v74);
      v76 = v552;
      v76.i32[3] = 0;
      if ((v20 & 0x100000000) != 0)
      {
        v553 = v76;
        v77 = sub_1AFB3CAA4(0, 0, 255);
        v76 = v553;
        LODWORD(v20) = v77;
      }

      v78 = v20;
      v79 = v567;
      v80 = 2;
      goto LABEL_68;
    default:

      sub_1AFB35250(v17.u8[0], a1 | ((HIDWORD(a1) & 1) << 32), a2, a3, v14, v15);
      return;
  }

  while (1)
  {
    v97 = __sincospif_stret(v96);
    *v98.i32 = (v95 * v97.__sinval) + (v524 + (v93 * v97.__cosval));
    v568 = v98;
    v99 = __sincospif_stret(v96 + 0.01);
    v100 = v535;
    v101 = vadd_f32(vmul_n_f32(v94, v97.__sinval), vadd_f32(*v535.f32, vmul_n_f32(v92, v97.__cosval)));
    *v102.f32 = vsub_f32(vadd_f32(vmul_n_f32(v94, v99.__sinval), vadd_f32(*v535.f32, vmul_n_f32(v92, v99.__cosval))), v101);
    v102.f32[2] = ((v95 * v99.__sinval) + (v524 + (v93 * v99.__cosval))) - *v568.i32;
    v103 = vabsq_f32(v102);
    v104 = v103.f32[0] > 0.00000011921 || v103.f32[1] > 0.00000011921;
    if (v104 || v103.f32[2] > 0.00000011921)
    {
      break;
    }

    v108 = 0uLL;
    v109 = v20;
    if ((v20 & 0x100000000) != 0)
    {
      goto LABEL_38;
    }

LABEL_39:
    *v112.f32 = v101;
    v111 = v568;
    v112.i64[1] = v568.u32[0];
    v111.i32[0] = v108.i32[2];
    v100.i32[0] = 1.0;
    v113.i64[0] = 0x8000000080000000;
    v113.i64[1] = 0x8000000080000000;
    v113.i32[0] = vbslq_s8(v113, v100, v111).i32[0];
    v114 = v108.f32[1] / (fabsf(v108.f32[2]) + 1.0);
    v115 = vmuls_lane_f32(v114, *v108.f32, 1);
    v116 = -(v108.f32[0] * v114);
    v117 = vmuls_lane_f32(-*v113.i32, *v108.f32, 1);
    v118 = v532.f32[0] * (v108.f32[2] + (*v113.i32 * v115));
    v119 = LODWORD(v118);
    v119.f32[1] = v532.f32[0] * (*v113.i32 * v116);
    *v113.i32 = -(v108.f32[0] * v532.f32[0]);
    v120 = v119;
    v120.i32[2] = v113.i32[0];
    v121 = v532.f32[0] * v116;
    v122 = v532.f32[0] * (1.0 - v115);
    v123 = LODWORD(v121);
    v123.f32[1] = v122;
    v124 = v123;
    v124.f32[2] = v532.f32[0] * v117;
    if ((v502 & 1) == 0)
    {
      v120 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v531, v120, 2), v530, *v119.f32, 1), v529, v118);
      v120.i32[3] = v494;
      v124 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v531, v124, 2), v530, *v123.f32, 1), v529, v121);
      v124.i32[3] = v495;
      v125 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v518, v531, v112, 2), v530, v101, 1), v529, v101.f32[0]);
      v125.i32[3] = v497;
      v112 = v125;
    }

    v126 = 0;
    ++v83;
    v127 = *(a3 + 32);
    v128 = v112.f32[2];
    v129 = vzip1_s32(*&vextq_s8(v124, v124, 8uLL), *&vextq_s8(v120, v120, 8uLL));
    v130 = 0.0;
    v555 = v120;
    v569 = v112;
    v544 = v124;
    do
    {
      v131 = __sincospif_stret(v130);
      v132 = vmul_f32(v129, v131);
      *&v133 = vaddq_f32(vmulq_n_f32(v544, v131.__sinval), vaddq_f32(v569, vmulq_n_f32(v555, v131.__cosval))).u64[0];
      *(&v133 + 2) = v132.f32[0] + (v128 + v132.f32[1]);
      HIDWORD(v133) = 1.0;
      *(v506 + 16 * v127 + 16 * v126) = v133;
      *(v504 + 4 * v127 + 4 * v126) = v109;
      v130 = v130 + 0.083333;
      ++v126;
    }

    while (v126 != 24);
    v134 = *(a3 + 40);
    v135 = *(a3 + 32);
    v136 = *(a3 + 112) + 2 * v134;
    *v136 = v135;
    v137 = (v136 + 2);
    v138 = vdup_n_s16(v135);
    v591.val[0] = vadd_s16(v138, 0x4000300020001);
    v591.val[1] = v591.val[0];
    vst2_s16(v137, v591);
    v139 = (v136 + 18);
    v591.val[0] = vadd_s16(v138, 0x8000700060005);
    v591.val[1] = v591.val[0];
    vst2_s16(v139, v591);
    v140 = (v136 + 34);
    v591.val[0] = vadd_s16(v138, 0xC000B000A0009);
    v591.val[1] = v591.val[0];
    vst2_s16(v140, v591);
    v141 = (v136 + 50);
    v591.val[0] = vadd_s16(v138, 0x10000F000E000DLL);
    v591.val[1] = v591.val[0];
    vst2_s16(v141, v591);
    v142 = (v136 + 66);
    v143 = vadd_s16(v138, 0x14001300120011);
    v591.val[0] = v143;
    vst2_s16(v142, v591);
    v144 = vadd_s32(vdup_n_s32(v135), 0x1600000015);
    v145 = vuzp1_s16(v144, v144);
    *(v136 + 82) = vzip1_s16(v145, v145);
    *(v136 + 90) = v135 + 23;
    *(v136 + 92) = v135 + 23;
    *(v136 + 94) = v135;
    *(a3 + 32) = v127 + 24;
    *(a3 + 40) = v134 + 48;
    v96 = v508 + v96;
    v20 = v526;
    if (v83 == v509)
    {
LABEL_44:
      if (v516 >= 1)
      {
        v146 = 0;
        v14.i32[0] = 1.0;
        v147.i64[0] = 0x8000000080000000;
        v147.i64[1] = 0x8000000080000000;
        v147.i32[0] = vbslq_s8(v147, v14, v513).i32[0];
        v148 = v512 / (fabsf(*v513.i32) + 1.0);
        v149 = vmuls_lane_f32(v148, v514, 1);
        v505 = *(a3 + 64);
        v507 = -(v514.f32[0] * v148);
        v501 = *v147.i32 * v507;
        v503 = *v513.i32 + (*v147.i32 * v149);
        v500 = 1.0 - v149;
        v499 = vmuls_lane_f32(-*v147.i32, v514, 1);
        v498 = *(a3 + 88);
        v150 = *(a2 + 64);
        v151 = 0.0;
        do
        {
          v152 = __sincospif_stret(v151);
          v153 = v20;
          if ((v20 & 0x100000000) != 0)
          {
            v153 = sub_1AFB3CAA4(255, 255, 255);
          }

          v154 = v535.f32[0] + (v532.f32[0] * (v514.f32[0] * v152.__sinval));
          v155 = LODWORD(v154);
          v155.f32[1] = v535.f32[1] + (v532.f32[0] * (v512 * v152.__sinval));
          v156 = v155;
          v156.f32[2] = v524 + (v532.f32[0] * (*v513.i32 * v152.__sinval));
          v157 = v510 + (v532.f32[0] * v152.__cosval);
          v158 = COERCE_UNSIGNED_INT(v503 * v157);
          v158.f32[1] = v501 * v157;
          v159 = v158;
          v159.f32[2] = v157 * -v514.f32[0];
          v160 = COERCE_UNSIGNED_INT(v507 * v157);
          v160.f32[1] = v500 * v157;
          v161 = v160;
          v161.f32[2] = v499 * v157;
          if ((v150 & 1) == 0)
          {
            v159 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v531, v159, 2), v530, *v158.f32, 1), v529, v503 * v157);
            v159.i32[3] = v495;
            v161 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v531, v161, 2), v530, *v160.f32, 1), v529, v507 * v157);
            v161.i32[3] = v496;
            v162 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v518, v531, v156, 2), v530, *v155.f32, 1), v529, v154);
            v162.i32[3] = v497;
            v156 = v162;
          }

          v163 = 0;
          ++v146;
          v164 = *(a3 + 32);
          v165 = v156.f32[2];
          v166 = vzip1_s32(*&vextq_s8(v161, v161, 8uLL), *&vextq_s8(v159, v159, 8uLL));
          v167 = 0.0;
          v556 = v159;
          v570 = v156;
          v545 = v161;
          do
          {
            v168 = __sincospif_stret(v167);
            v169 = vmul_f32(v166, v168);
            *&v170 = vaddq_f32(vmulq_n_f32(v545, v168.__sinval), vaddq_f32(v570, vmulq_n_f32(v556, v168.__cosval))).u64[0];
            *(&v170 + 2) = v169.f32[0] + (v165 + v169.f32[1]);
            HIDWORD(v170) = 1.0;
            *(v505 + 16 * v164 + 16 * v163) = v170;
            *(v498 + 4 * v164 + 4 * v163) = v153;
            v167 = v167 + 0.083333;
            ++v163;
          }

          while (v163 != 24);
          v171 = *(a3 + 40);
          v172 = *(a3 + 32);
          v173 = *(a3 + 112) + 2 * v171;
          *v173 = v172;
          v174 = (v173 + 2);
          v175 = vdup_n_s16(v172);
          v592.val[0] = vadd_s16(v175, 0x4000300020001);
          v592.val[1] = v592.val[0];
          vst2_s16(v174, v592);
          v176 = (v173 + 18);
          v592.val[0] = vadd_s16(v175, 0x8000700060005);
          v592.val[1] = v592.val[0];
          vst2_s16(v176, v592);
          v177 = (v173 + 34);
          v592.val[0] = vadd_s16(v175, 0xC000B000A0009);
          v592.val[1] = v592.val[0];
          vst2_s16(v177, v592);
          v178 = (v173 + 50);
          v592.val[0] = vadd_s16(v175, 0x10000F000E000DLL);
          v592.val[1] = v592.val[0];
          vst2_s16(v178, v592);
          v179 = (v173 + 66);
          v180 = vadd_s16(v175, 0x14001300120011);
          v592.val[0] = v180;
          vst2_s16(v179, v592);
          v181 = vadd_s32(vdup_n_s32(v172), 0x1600000015);
          v182 = vuzp1_s16(v181, v181);
          *(v173 + 82) = vzip1_s16(v182, v182);
          *(v173 + 90) = v172 + 23;
          *(v173 + 92) = v172 + 23;
          *(v173 + 94) = v172;
          *(a3 + 32) = v164 + 24;
          *(a3 + 40) = v171 + 48;
          v151 = (2.0 / v516) + v151;
          v20 = v526;
        }

        while (v146 != v516);
      }

      return;
    }
  }

  v106 = vmulq_f32(v102, v102);
  *&v107 = v106.f32[2] + vaddv_f32(*v106.f32);
  *v106.f32 = vrsqrte_f32(v107);
  *v106.f32 = vmul_f32(*v106.f32, vrsqrts_f32(v107, vmul_f32(*v106.f32, *v106.f32)));
  v108 = vmulq_n_f32(v102, vmul_f32(*v106.f32, vrsqrts_f32(v107, vmul_f32(*v106.f32, *v106.f32))).f32[0]);
  v108.i32[3] = v496;
  v109 = v20;
  if ((v20 & 0x100000000) == 0)
  {
    goto LABEL_39;
  }

LABEL_38:
  v543 = v108;
  v554 = v101;
  v110 = sub_1AFB3CAA4(255, 255, 255);
  v108 = v543;
  v101 = v554;
  v109 = v110;
  goto LABEL_39;
}