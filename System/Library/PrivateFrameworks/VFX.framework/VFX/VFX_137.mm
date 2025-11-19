uint64_t sub_1AFB89A04()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED73B840;
  v10 = 0;
  v11 = 2;
  v12 = 0;
  v13 = 2;
  v14 = 0;
  sub_1AFCC39D0(1, 2, v5);
  v1 = v5[1];
  *(v0 + 16) = v5[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v6;
  sub_1AFB91B24(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for OldEvent;
  *(inited + 40) = &off_1F25344E8;
  sub_1AF5F58E4(inited, 1, v7);
  swift_setDeallocating();
  v3 = v7[1];
  *(v0 + 56) = v7[0];
  *(v0 + 72) = v3;
  *(v0 + 88) = v8;
  return v0;
}

uint64_t sub_1AFB89B40(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = v3;
  v5 = 0;
  v6 = *(v3 + 16);
  v7 = *(v3 + 32);
  v8 = MEMORY[0x1E69E7CC0];
  v137 = MEMORY[0x1E69E7CC0];
  v172[0] = v6;
  v172[1] = v7;
  v173 = *(v3 + 48);
  sub_1AF6B06C0(a1, v172, 0x200000000, v138);
  v101 = *v138;
  if (!*v138)
  {
LABEL_12:
    v23 = *(v8 + 16);
    if (!v23)
    {
    }

    goto LABEL_13;
  }

  v9 = *&v138[40];
  v10 = *(&v139 + 1);
  v11 = *(&v140 + 1);
  v146 = *&v138[8];
  v147 = *&v138[24];
  v97 = v141;
  v99 = v140;
  if (v141 <= 0 || !*(&v139 + 1))
  {
    sub_1AFB91B88(v138, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v94 = v4;
  v12 = *(*(&v140 + 1) + 32);
  v13 = *(v140 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v133 = *&v138[32];
  v134 = v139;
  v135 = v140;
  v136 = v141;
  v131 = *v138;
  v132 = *&v138[16];
  sub_1AF5DD298(&v131, v167);
  v14 = (v9 + 24);
  v96 = v13;
  do
  {
    v15 = *(v14 - 5);
    v16 = *(v14 - 4);
    v111 = *(v14 - 1);
    v107 = *v14;
    v17 = v14[2];
    v103 = *(v14 - 6);
    v105 = v14[1];
    v116 = v10;
    if (v13)
    {
      v18 = *(v17 + 376);

      os_unfair_lock_lock(v18);
      os_unfair_lock_lock(*(v17 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v12);
    v19 = *(v11 + 64);
    v165[0] = *(v11 + 48);
    v165[1] = v19;
    v166 = *(v11 + 80);
    v20 = *(v11 + 32);
    v21 = v12;
    v22 = *(*(*(*(v17 + 40) + 16) + 32) + 16) + 1;

    *(v11 + 48) = ecs_stack_allocator_allocate(v20, 48 * v22, 8);
    *(v11 + 56) = v22;
    *(v11 + 72) = 0;
    *(v11 + 80) = 0;
    *(v11 + 64) = 0;

    LOBYTE(v125) = 1;
    v167[0] = v99;
    v167[1] = v17;
    v167[2] = v11;
    v167[3] = v16;
    v167[4] = (v15 - v103 + v16);
    v167[5] = v97;
    v167[6] = v103;
    v167[7] = v15;
    v167[8] = 0;
    v167[9] = 0;
    v168 = 1;
    v169 = v111;
    v170 = v107;
    v171 = v105;
    sub_1AFD10528(v167, &v137);
    v148 = v101;
    v149 = v146;
    v150 = v147;
    sub_1AF630994(v11, &v148, v165);
    sub_1AF62D29C(v17);
    ecs_stack_allocator_pop_snapshot(v21);
    v12 = v21;
    v13 = v96;
    if (v96)
    {
      os_unfair_lock_unlock(*(v17 + 344));
      os_unfair_lock_unlock(*(v17 + 376));
    }

    v14 += 6;
    v10 = v116 - 1;
  }

  while (v116 != 1);
  v90 = MEMORY[0x1E69E6720];
  sub_1AFB91B88(v138, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
  sub_1AFB91B88(v138, &qword_1ED725EA0, &type metadata for QueryResult, v90, sub_1AFB936C8);
  v8 = v137;
  v4 = v94;
  v23 = *(v137 + 16);
  if (v23)
  {
LABEL_13:
    v24 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 48);
    v133 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 32);
    v134 = v24;
    v25 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 80);
    v135 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 64);
    v136 = v25;
    v27 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 16);
    v131 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock);
    v26 = v131;
    v132 = v27;
    v95 = a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock;
    *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 64) = 1040187392;
    v93 = thread_worker_index;
    v28 = thread_worker_index(v26);
    if (*v28 == -1)
    {
      v30 = *(v29 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    }

    else
    {
      v30 = *(v29 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *v28 + 8;
    }

    v31 = *(*v30 + 40);
    v104 = OBJC_IVAR____TtC3VFX13EntityManager_scheduler;
    v32 = *(v4 + 56);
    v33 = *(v4 + 72);
    v152 = *(v4 + 88);
    v151[0] = v32;
    v151[1] = v33;
    v34 = v8;
    v35 = *(v31 + 16);

    v37 = -v23;
    v106 = v23;
    v108 = (v34 + 40);
    v38 = 0.0;
    v92 = v36;
    while (1)
    {
      v98 = *(v36 + 32);
      v100 = v35;
      v39 = *(a1 + v104);
      v40 = *(v39 + 24);

      if (v40)
      {
        v41 = *(v39 + 56);

        os_unfair_lock_lock(v41);
        v42 = *(v39 + 96);
        v43 = *(v42 + 16);
        if (v43)
        {
          v44 = (v42 + 32);
          v45 = type metadata accessor for EventDisposeSystem();
          while (*v44 != v45)
          {
            v44 += 6;
            if (!--v43)
            {
              goto LABEL_24;
            }
          }

          v46 = v44[1];
          v118[0] = *v44;
          v118[1] = v46;
          v47 = v44[2];
          v48 = v44[3];
          v49 = v44[5];
          v118[4] = v44[4];
          v118[5] = v49;
          v118[2] = v47;
          v118[3] = v48;
          v119 = *v44;
          v120 = v44[1];
          v50 = v44[2];
          v51 = v44[3];
          v52 = v44[5];
          v123 = v44[4];
          v124 = v52;
          v121 = v50;
          v122 = v51;
          sub_1AF6D8FC4(v118, v117);
          v127 = v121;
          v128 = v122;
          v129 = v123;
          v130 = v124;
          v125 = v119;
          v126 = v120;
        }

        else
        {
LABEL_24:
          v129 = 0u;
          v130 = 0u;
          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
        }

        os_unfair_lock_unlock(v41);
        v53 = v130;
        if (v130)
        {
          v54 = v127;
          v112 = *(v39 + 64);
          v55 = *(v39 + 80);
          v56 = *(v39 + 88);
          v57 = *(v39 + 89);
          *(v39 + 64) = v125;
          *(v39 + 72) = v126;
          *(v39 + 88) = v54;
          *(v39 + 89) = 0;
          v58 = (v93)(&thread_worker_index);
          if (*v58 == -1)
          {
            v59 = *(v40 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          }

          else
          {
            v59 = *(v40 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *v58 + 8;
          }

          v60 = *(*v59 + 32);
          ecs_stack_allocator_push_snapshot(v60);
          v53(a1, a2, a3);
          ecs_stack_allocator_pop_snapshot(v60);

          sub_1AFB91B88(&v125, &unk_1ED7220A0, &type metadata for Scheduler.Job, MEMORY[0x1E69E6720], sub_1AFB936C8);
          *(v39 + 64) = v112;
          *(v39 + 80) = v55;
          *(v39 + 88) = v56;
          *(v39 + 89) = v57;
        }

        else
        {
        }
      }

      v61 = 0;
      v62 = 0;
      do
      {
        v63 = &v108[3 * v62++];
        while (v38 >= *v63)
        {
          ++v62;
          v63 += 3;
          if (v37 + v62 == 1)
          {
            goto LABEL_54;
          }
        }

        v102 = v5;
        v64 = *(v63 - 2);
        v113 = *(v63 - 1);
        v65 = *(a1 + v104);
        v66 = v65[3];

        if (v66)
        {
          v67 = *(*(*(v66 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *(v93)(&thread_worker_index) + 8) + 32);
          v69 = v65[14];
          v68 = v65[15];

          if (v68 >= 1)
          {
            v70 = v68 + 1;
            v71 = 96 * v68 - 64;
            do
            {
              v73 = *(v69 + v71 + 64);
              v74 = *(v69 + v71 + 80);
              v75 = *(v69 + v71 + 32);
              v128 = *(v69 + v71 + 48);
              v76 = *(v69 + v71 + 16);
              v125 = *(v69 + v71);
              v126 = v76;
              v129 = v73;
              v130 = v74;
              v127 = v75;
              if (*(&v128 + 1) >= 600)
              {
                break;
              }

              if (*(&v125 + 1) != __PAIR64__(v113, v64))
              {
                if (!*(&v127 + 1))
                {
                  continue;
                }

                ObjCClassFromObject = swift_getObjCClassFromObject();
                if (ObjCClassFromObject != type metadata accessor for ParticleSubSpawnAddStateSystem() && ObjCClassFromObject != type metadata accessor for ParticleSubSpawnSystem() && ObjCClassFromObject != type metadata accessor for EventDisposeSystem() && ObjCClassFromObject != type metadata accessor for TransientPushSystem() && ObjCClassFromObject != type metadata accessor for RendererPostUpdateSystem())
                {
                  continue;
                }
              }

              v72 = v130;
              sub_1AF6D8FC4(&v125, &v119);
              ecs_stack_allocator_push_snapshot(v67);
              v72(a1, a2, a3);
              ecs_stack_allocator_pop_snapshot(v67);
              sub_1AF6D8FFC(&v125);
              --v70;
              v71 -= 96;
            }

            while (v70 > 1);
          }
        }

        v61 = 1;
        v5 = v102;
      }

      while (v106 != v62);
LABEL_54:
      v114 = v61;
      v79 = v106;
      v78 = v108;
      do
      {
        if (v38 < *v78)
        {
          v84 = *(v78 - 2);
          v83 = *(v78 - 1);
          if (qword_1ED72D720 != -1)
          {
            swift_once();
          }

          v159 = qword_1ED73B840;
          v160 = 0;
          v161 = 2;
          v162 = 0;
          v163 = 2;
          v164 = 0;
          sub_1AFB91B24(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
          v80 = swift_allocObject();
          *(v80 + 16) = xmmword_1AFE431C0;
          *(v80 + 32) = &type metadata for Particle;
          *(v80 + 40) = &off_1F252D7A8;
          sub_1AF5F58E4(v80, 1, v142);
          swift_setDeallocating();
          swift_deallocClassInstance();
          sub_1AFB9246C(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
          v81 = swift_allocObject();
          *(v81 + 16) = xmmword_1AFE431C0;
          *(v81 + 56) = &type metadata for EmitterReference;
          *(v81 + 64) = &off_1F2563D20;
          *(v81 + 32) = v84;
          v82 = v81 + 32;
          *(v81 + 36) = v83;
          sub_1AF5FC13C(v81, v143);
          sub_1AF692DB0(v142);
          swift_setDeallocating();
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v82);
          swift_deallocClassInstance();
          v153 = v143[0];
          v154 = 0;
          v155 = 2;
          v156 = v143[2];
          v157 = v144;
          v158 = v145;
          sub_1AF6234A4(&v153);
          sub_1AF692DB0(v143);
          sub_1AF680CE8(v84 | (v83 << 32), a1);
        }

        v78 += 3;
        --v79;
      }

      while (v79);
      sub_1AF6234A4(v151);
      ++*(v95 + 8);
      v85 = *(v95 + 64);
      v36 = v92;
      v35 = *(v92 + 16);
      if (v100)
      {
        v86 = v114;
        if (!v35 || v100 != v35)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v86 = v114;
        if (v35)
        {
          goto LABEL_18;
        }
      }

      *(v92 + 32) = v98;
LABEL_18:
      v38 = v38 + v85;
      if ((v86 & 1) == 0)
      {

        v87 = v134;
        *(v95 + 32) = v133;
        *(v95 + 48) = v87;
        v88 = v136;
        *(v95 + 64) = v135;
        *(v95 + 80) = v88;
        v89 = v132;
        *v95 = v131;
        *(v95 + 16) = v89;
      }
    }
  }
}

void sub_1AFB8A650(uint64_t a1)
{
  *(a1 + 112) = 0;
  if (*(a1 + 120) == 1)
  {
    v1 = *(a1 + 136);
    v2 = *(v1 + 2);
    if (v2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1AFC0DB84(v1);
      }

      bzero(v1 + 32, 4 * v2);
      *(a1 + 136) = v1;
    }
  }
}

uint64_t sub_1AFB8A724(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(void))
{
  a3();
  v6 = swift_allocObject();
  a5();
  return v6;
}

uint64_t sub_1AFB8A780(uint64_t a1)
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

void sub_1AFB8A854(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = *(v1 + 56);
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  v8 = *(v4 + 40);

  os_unfair_lock_unlock(v8);
}

uint64_t destroy for EmitterRuntime()
{
  swift_weakDestroy();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for EmitterRuntime(uint64_t a1, uint64_t a2)
{
  v4 = swift_weakCopyInit();
  *(v4 + 8) = *(a2 + 8);
  *(v4 + 24) = *(a2 + 24);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 49) = *(a2 + 49);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  v19 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v19;
  v5 = *(a2 + 152);
  v18 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = v18;
  *(a1 + 152) = v5;
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 162) = *(a2 + 162);
  v6 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v6;
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 292) = *(a2 + 292);
  *(a1 + 296) = *(a2 + 296);
  v7 = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 304) = v7;
  v17 = *(a2 + 328);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = v17;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  v8 = *(a2 + 376);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = v8;
  *(a1 + 384) = *(a2 + 384);
  v9 = *(a2 + 408);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = v9;
  v10 = *(a2 + 424);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = v10;
  v11 = *(a2 + 448);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = v11;
  v12 = *(a2 + 472);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = v12;
  v13 = *(a2 + 488);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = v13;
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 520) = *(a2 + 520);
  v14 = *(a2 + 544);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = v14;
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 580) = *(a2 + 580);
  v15 = *(a2 + 608);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 608) = v15;
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 664) = *(a2 + 664);
  *(a1 + 672) = *(a2 + 672);
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 688) = *(a2 + 688);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 712) = *(a2 + 712);
  *(a1 + 720) = *(a2 + 720);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 736) = *(a2 + 736);
  *(a1 + 744) = *(a2 + 744);
  *(a1 + 752) = *(a2 + 752);
  *(a1 + 760) = *(a2 + 760);
  *(a1 + 768) = *(a2 + 768);
  *(a1 + 776) = *(a2 + 776);
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 792) = *(a2 + 792);
  *(a1 + 800) = *(a2 + 800);
  *(a1 + 808) = *(a2 + 808);
  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return a1;
}

uint64_t assignWithCopy for EmitterRuntime(uint64_t a1, uint64_t a2)
{
  v4 = swift_weakCopyAssign();
  *(v4 + 8) = *(a2 + 8);
  *(v4 + 16) = *(a2 + 16);
  *(v4 + 24) = *(a2 + 24);
  *(v4 + 32) = *(a2 + 32);
  v5 = *(a2 + 40);
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 40) = v5;
  *(v4 + 49) = *(a2 + 49);
  *(v4 + 50) = *(a2 + 50);
  *(a1 + 56) = *(a2 + 56);

  v6 = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v7 = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 152) = v7;
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 162) = *(a2 + 162);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  v8 = *(a2 + 208);
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 208) = v8;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);

  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 292) = *(a2 + 292);
  *(a1 + 296) = *(a2 + 296);
  v9 = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 304) = v9;
  *(a1 + 320) = *(a2 + 320);

  *(a1 + 328) = *(a2 + 328);

  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = *(a2 + 376);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = *(a2 + 424);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = *(a2 + 488);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);

  *(a1 + 568) = *(a2 + 568);

  *(a1 + 576) = *(a2 + 576);
  *(a1 + 580) = *(a2 + 580);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 624) = *(a2 + 624);

  *(a1 + 632) = *(a2 + 632);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 640) = *(a2 + 640);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 648) = *(a2 + 648);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 656) = *(a2 + 656);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 664) = *(a2 + 664);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 672) = *(a2 + 672);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 680) = *(a2 + 680);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 688) = *(a2 + 688);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 696) = *(a2 + 696);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 704) = *(a2 + 704);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 712) = *(a2 + 712);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 720) = *(a2 + 720);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 728) = *(a2 + 728);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 736) = *(a2 + 736);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 744) = *(a2 + 744);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 752) = *(a2 + 752);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 760) = *(a2 + 760);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 768) = *(a2 + 768);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 776) = *(a2 + 776);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 784) = *(a2 + 784);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 792) = *(a2 + 792);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 800) = *(a2 + 800);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 808) = *(a2 + 808);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 816) = *(a2 + 816);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 824) = *(a2 + 824);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 832) = *(a2 + 832);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

__n128 initializeWithTake for EmitterRuntime(uint64_t a1, uint64_t a2)
{
  v3 = swift_weakTakeInit();
  *(v3 + 8) = *(a2 + 8);
  *(v3 + 24) = *(a2 + 24);
  *(v3 + 40) = *(a2 + 40);
  *(v3 + 48) = *(a2 + 48);
  *(v3 + 49) = *(a2 + 49);
  *(v3 + 56) = *(a2 + 56);
  *(v3 + 72) = *(a2 + 72);
  *(v3 + 88) = *(a2 + 88);
  *(v3 + 96) = *(a2 + 96);
  *(v3 + 104) = *(a2 + 104);
  *(v3 + 120) = *(a2 + 120);
  *(v3 + 128) = *(a2 + 128);
  *(v3 + 136) = *(a2 + 136);
  *(v3 + 152) = *(a2 + 152);
  *(v3 + 160) = *(a2 + 160);
  *(v3 + 161) = *(a2 + 161);
  v4 = *(a2 + 192);
  *(v3 + 176) = *(a2 + 176);
  *(v3 + 192) = v4;
  *(v3 + 217) = *(a2 + 217);
  *(v3 + 208) = *(a2 + 208);
  *(v3 + 240) = *(a2 + 240);
  *(v3 + 256) = *(a2 + 256);
  *(v3 + 264) = *(a2 + 264);
  *(v3 + 272) = *(a2 + 272);
  *(v3 + 288) = *(a2 + 288);
  *(v3 + 292) = *(a2 + 292);
  *(v3 + 296) = *(a2 + 296);
  v5 = *(a2 + 304);
  *(v3 + 312) = *(a2 + 312);
  *(v3 + 304) = v5;
  *(v3 + 320) = *(a2 + 320);
  *(v3 + 336) = *(a2 + 336);
  *(v3 + 344) = *(a2 + 344);
  v6 = *(a2 + 368);
  *(v3 + 360) = *(a2 + 360);
  *(v3 + 368) = v6;
  v7 = *(a2 + 376);
  *(v3 + 392) = *(a2 + 392);
  *(v3 + 376) = v7;
  v8 = *(a2 + 400);
  *(v3 + 416) = *(a2 + 416);
  *(v3 + 400) = v8;
  v9 = *(a2 + 424);
  *(v3 + 440) = *(a2 + 440);
  *(v3 + 424) = v9;
  v10 = *(a2 + 448);
  v11 = *(a2 + 464);
  *(v3 + 480) = *(a2 + 480);
  *(v3 + 448) = v10;
  *(v3 + 464) = v11;
  *(v3 + 488) = *(a2 + 488);
  v12 = *(a2 + 512);
  *(v3 + 504) = *(a2 + 504);
  *(v3 + 512) = v12;
  *(v3 + 520) = *(a2 + 520);
  v13 = *(a2 + 544);
  *(v3 + 528) = *(a2 + 528);
  *(v3 + 544) = v13;
  *(v3 + 560) = *(a2 + 560);
  *(v3 + 568) = *(a2 + 568);
  *(v3 + 576) = *(a2 + 576);
  *(v3 + 580) = *(a2 + 580);
  v14 = *(a2 + 608);
  *(v3 + 592) = *(a2 + 592);
  *(v3 + 608) = v14;
  v15 = *(a2 + 640);
  *(v3 + 624) = *(a2 + 624);
  *(v3 + 640) = v15;
  v16 = *(a2 + 672);
  *(v3 + 656) = *(a2 + 656);
  *(v3 + 672) = v16;
  v17 = *(a2 + 704);
  *(v3 + 688) = *(a2 + 688);
  *(v3 + 704) = v17;
  v18 = *(a2 + 736);
  *(v3 + 720) = *(a2 + 720);
  *(v3 + 736) = v18;
  v19 = *(a2 + 768);
  *(v3 + 752) = *(a2 + 752);
  *(v3 + 768) = v19;
  v20 = *(a2 + 800);
  *(v3 + 784) = *(a2 + 784);
  *(v3 + 800) = v20;
  result = *(a2 + 816);
  *(v3 + 816) = result;
  *(v3 + 832) = *(a2 + 832);
  return result;
}

uint64_t assignWithTake for EmitterRuntime(uint64_t a1, uint64_t a2)
{
  v4 = swift_weakTakeAssign();
  *(v4 + 8) = *(a2 + 8);
  *(v4 + 24) = *(a2 + 24);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 49) = *(a2 + 49);
  *(v4 + 50) = *(a2 + 50);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  swift_unknownObjectRelease();
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 162) = *(a2 + 162);
  v5 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v5;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);

  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 292) = *(a2 + 292);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);

  *(a1 + 328) = *(a2 + 328);

  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  swift_unknownObjectRelease();
  *(a1 + 352) = *(a2 + 352);
  v6 = *(a2 + 376);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = v6;
  swift_unknownObjectRelease();
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  swift_unknownObjectRelease();
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = *(a2 + 424);
  swift_unknownObjectRelease();
  v7 = *(a2 + 448);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = v7;
  *(a1 + 464) = *(a2 + 464);
  swift_unknownObjectRelease();
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 488) = *(a2 + 488);
  swift_unknownObjectRelease();
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 520) = *(a2 + 520);
  v8 = *(a2 + 544);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = v8;
  *(a1 + 560) = *(a2 + 560);

  *(a1 + 568) = *(a2 + 568);

  *(a1 + 576) = *(a2 + 576);
  *(a1 + 580) = *(a2 + 580);
  v9 = *(a2 + 608);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 608) = v9;
  *(a1 + 624) = *(a2 + 624);

  *(a1 + 632) = *(a2 + 632);
  swift_unknownObjectRelease();
  *(a1 + 640) = *(a2 + 640);
  swift_unknownObjectRelease();
  *(a1 + 648) = *(a2 + 648);
  swift_unknownObjectRelease();
  *(a1 + 656) = *(a2 + 656);
  swift_unknownObjectRelease();
  *(a1 + 664) = *(a2 + 664);
  swift_unknownObjectRelease();
  *(a1 + 672) = *(a2 + 672);
  swift_unknownObjectRelease();
  *(a1 + 680) = *(a2 + 680);
  swift_unknownObjectRelease();
  *(a1 + 688) = *(a2 + 688);
  swift_unknownObjectRelease();
  *(a1 + 696) = *(a2 + 696);
  swift_unknownObjectRelease();
  *(a1 + 704) = *(a2 + 704);
  swift_unknownObjectRelease();
  *(a1 + 712) = *(a2 + 712);
  swift_unknownObjectRelease();
  *(a1 + 720) = *(a2 + 720);
  swift_unknownObjectRelease();
  *(a1 + 728) = *(a2 + 728);
  swift_unknownObjectRelease();
  *(a1 + 736) = *(a2 + 736);
  swift_unknownObjectRelease();
  *(a1 + 744) = *(a2 + 744);
  swift_unknownObjectRelease();
  *(a1 + 752) = *(a2 + 752);
  swift_unknownObjectRelease();
  *(a1 + 760) = *(a2 + 760);
  swift_unknownObjectRelease();
  *(a1 + 768) = *(a2 + 768);
  swift_unknownObjectRelease();
  *(a1 + 776) = *(a2 + 776);
  swift_unknownObjectRelease();
  *(a1 + 784) = *(a2 + 784);
  swift_unknownObjectRelease();
  *(a1 + 792) = *(a2 + 792);
  swift_unknownObjectRelease();
  *(a1 + 800) = *(a2 + 800);
  swift_unknownObjectRelease();
  *(a1 + 808) = *(a2 + 808);
  swift_unknownObjectRelease();
  *(a1 + 816) = *(a2 + 816);
  swift_unknownObjectRelease();
  *(a1 + 824) = *(a2 + 824);
  swift_unknownObjectRelease();
  *(a1 + 832) = *(a2 + 832);
  swift_unknownObjectRelease();
  return a1;
}

uint64_t getEnumTagSinglePayload for EmitterRuntime(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 840))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EmitterRuntime(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 824) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 840) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 840) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void destroy for EmitterDescription(uint64_t a1)
{

  v2 = *(a1 + 48);
}

uint64_t initializeWithCopy for EmitterDescription(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 48);
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 96) = *(a2 + 96);

  v6 = v5;
  return a1;
}

uint64_t assignWithCopy for EmitterDescription(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  v4 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  v5 = *(a1 + 48);
  v6 = *(a2 + 48);
  *(a1 + 48) = v6;
  v7 = v6;

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

__n128 initializeWithTake for EmitterDescription(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 24);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for EmitterDescription(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for EmitterDescription(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 100))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EmitterDescription(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 100) = 1;
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

    *(result + 100) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AFB8C1B4()
{
  type metadata accessor for ParticleEmitterTransport();
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED73B840;
  v9 = 0;
  v10 = 2;
  v11 = 0;
  v12 = 2;
  v13 = 0;
  sub_1AFCC39D0(1, 2, v4);
  v1 = v4[1];
  *(v0 + 16) = v4[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v5;
  sub_1AF8D472C(1, 1, 2, v6);
  v2 = v6[1];
  *(v0 + 56) = v6[0];
  *(v0 + 72) = v2;
  *(v0 + 88) = v7;
  return v0;
}

uint64_t sub_1AFB8C2F4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

uint64_t sub_1AFB8C384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, unint64_t a7, uint64_t a8)
{
  v13 = *(a8 + 24);

  if (!HIDWORD(a7) && a7 == -1)
  {

    goto LABEL_7;
  }

  v14 = sub_1AF3C9078(a7);
  v16 = v15;

  if (!v16)
  {
LABEL_7:
    v16 = *(v13 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
    if (v16)
    {
      v19 = sub_1AFDFE238();
      LODWORD(v16) = vfx_counters.addCounter(name:scope:kind:)(v19, v20, 0, 0, v16);
    }

    else
    {
    }

    goto LABEL_12;
  }

  v22 = a5;
  v17 = *(v13 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
  if (v17)
  {
    *&v34[0] = v14;
    *(&v34[0] + 1) = v16;
    MEMORY[0x1B2718AE0](47, 0xE100000000000000);
    v18 = sub_1AFDFE238();
    MEMORY[0x1B2718AE0](v18);

    LODWORD(v16) = vfx_counters.addCounter(name:scope:kind:)(v14, v16, 0, 0, v17);
  }

  else
  {

    LODWORD(v16) = 0;
  }

  a5 = v22;
LABEL_12:
  *&v27 = a1;
  *(&v27 + 1) = a7;
  *&v28 = "ParticleLifeAndDeath";
  *(&v28 + 1) = 20;
  LOBYTE(v29) = 2;
  *(&v29 + 1) = *v33;
  DWORD1(v29) = *&v33[3];
  *(&v29 + 1) = a1;
  *&v30 = &off_1F25564B8;
  *(&v30 + 1) = a4;
  *&v31 = a5;
  WORD4(v31) = 257;
  BYTE10(v31) = a6 & 1;
  HIDWORD(v31) = v16;
  *&v32 = a2;
  *(&v32 + 1) = a3;
  os_unfair_lock_lock(*(a8 + 56));
  v34[2] = v29;
  v34[3] = v30;
  v34[4] = v31;
  v34[5] = v32;
  v34[0] = v27;
  v34[1] = v28;
  sub_1AF6D8FC4(&v27, v26);
  sub_1AF64D800(0, 0, v34);
  sub_1AF64D800(0, 0, v34);
  sub_1AF6D8FFC(&v27);
  *(a8 + 160) = 257;
  os_unfair_lock_unlock(*(a8 + 56));
  return sub_1AF6D8FFC(&v27);
}

uint64_t sub_1AFB8C63C(uint64_t a1, char a2, uint64_t a3, char a4, float a5, __n128 a6, float a7, __n128 a8)
{
  if (a5 == a7 && a1 == a3)
  {
    v10 = 0;
    while (1)
    {
      v15 = a6;
      v12 = *(&v15 & 0xFFFFFFFFFFFFFFF3 | (4 * (v10 & 3)));
      v16 = a8;
      v13 = *(&v16 & 0xFFFFFFFFFFFFFFF3 | (4 * (v10 & 3)));
      v11 = v12 == v13;
      if (v10 == 2)
      {
        break;
      }

      while (1)
      {
        ++v10;
        if (v11)
        {
          break;
        }

        v11 = 0;
        v9 = 0;
        if (v10 == 2)
        {
          return v9 & 1;
        }
      }
    }

    if (v12 == v13)
    {
      v9 = a2 ^ a4 ^ 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

BOOL sub_1AFB8C6CC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v2 + 4;
    v9 = v3 + 4;
    do
    {
      v10 = vceq_s32(*v8, *v9);
      if ((v10.i32[0] & v10.i32[1] & 1) == 0)
      {
        return 0;
      }

      ++v9;
      ++v8;
    }

    while (--v4);
  }

  if ((sub_1AFB7BCF0(*(a1 + 8), *(a2 + 8)) & 1) == 0 || (sub_1AFB7BCF0(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (sub_1AFB7BCF0(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v11 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = *(a1 + 48);
  v13 = *(a2 + 48);
  if (v12)
  {
    if (v12 == v13)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (v13)
  {
    return 0;
  }

LABEL_22:
  if ((*(a1 + 56) ^ *(a2 + 56)) & 1) != 0 || ((*(a1 + 57) ^ *(a2 + 57)) & 1) != 0 || ((*(a1 + 58) ^ *(a2 + 58)) & 1) != 0 || ((*(a1 + 59) ^ *(a2 + 59)) & 1) != 0 || ((*(a1 + 60) ^ *(a2 + 60)) & 1) != 0 || ((*(a1 + 61) ^ *(a2 + 61)) & 1) != 0 || *(a1 + 64) != *(a2 + 64) || *(a1 + 68) != *(a2 + 68) || ((*(a1 + 72) ^ *(a2 + 72)) & 1) != 0 || ((*(a1 + 73) ^ *(a2 + 73)) & 1) != 0 || ((*(a1 + 74) ^ *(a2 + 74)) & 1) != 0 || *(a1 + 80) != *(a2 + 80) || ((*(a1 + 88) ^ *(a2 + 88)) & 1) != 0 || *(a1 + 90) != *(a2 + 90) || *(a1 + 92) != *(a2 + 92) || ((*(a1 + 93) ^ *(a2 + 93)))
  {
    return 0;
  }

  return *(a1 + 96) == *(a2 + 96);
}

void sub_1AFB8C8D4(_OWORD *a1)
{
  *&v3 = sub_1AF5AF890(*(v1 + 24));
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

uint64_t sub_1AFB8C918(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    do
    {
      v5 = (a1 + 32 + 8 * v3);
      v7 = *v5;
      v6 = v5[1];
      v8 = v7 == -1 && v6 == 0;
      if (!v8 && (v7 & 0x80000000) == 0 && v4[1] > v7)
      {
        v9 = (*v4 + 12 * v7);
        if (v6 == -1 || v9[2] == v6)
        {
          v11 = *(*(*(a2 + 144) + 8 * *v9 + 32) + 48);
          v12 = (v11 + 32);
          v13 = *(v11 + 16) + 1;
          while (--v13)
          {
            v14 = *v12;
            v12 += 5;
            if (v14 == &type metadata for ParticleSetID)
            {
              return 1;
            }
          }
        }
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t sub_1AFB8C9D4()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFB8CA20()
{
  v0 = sub_1AFDFF118();

  if (v0 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFB8CA74(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  v8 = MEMORY[0x1E69E6720];
  sub_1AFB91B24(0, qword_1ED725258, type metadata accessor for ParticleInitScript, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v95 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v94 = &v91 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v93 = &v91 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v92 = &v91 - v20;
  sub_1AFB91B24(0, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript, v8);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v99 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v98 = &v91 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v97 = (&v91 - v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v96 = &v91 - v33;
  v34 = a2 - a1;
  v35 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v35 = a2 - a1;
  }

  v36 = v35 >> 3;
  v37 = a3 - a2;
  v38 = v37 / 8;
  if (v35 >> 3 < v37 / 8)
  {
    if (a4 != a1 || &a1[v36] <= a4)
    {
      v39 = v32;
      memmove(a4, a1, 8 * v36);
      v32 = v39;
    }

    v104 = &a4[v36];
    v40 = a4;
    if (v34 < 8)
    {
LABEL_8:
      v32 = a1;
      goto LABEL_67;
    }

    while (1)
    {
      if (v32 >= a3)
      {
        goto LABEL_8;
      }

      v43 = *v40;
      v44 = v40[1];
      v101 = v32;
      v45 = *v32;
      sub_1AF3CB570(*v32, &v102);
      if (v103)
      {
        v46 = v40;
        v47 = v102;
        v48 = v102;
        sub_1AF487074(v102, v103);
        if (v48 > 6)
        {
          v49 = 1;
        }

        else
        {
          v49 = qword_1AFE9F580[v47 & 7];
        }

        v40 = v46;
      }

      else
      {
        v50 = v96;
        sub_1AF3CFB68(v45, v96);
        updated = type metadata accessor for ParticleUpdateScript(0);
        v52 = (*(*(updated - 8) + 48))(v50, 1, updated);
        sub_1AFB92FD0(v50, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
        if (v52 == 1)
        {
          v53 = v93;
          sub_1AF3CFD30(v45, v93);
          inited = type metadata accessor for ParticleInitScript(0);
          v49 = (*(*(inited - 8) + 48))(v53, 1, inited) != 1;
          sub_1AFB92FD0(v53, qword_1ED725258, type metadata accessor for ParticleInitScript);
        }

        else
        {
          v49 = 1;
        }
      }

      v55 = v43 | (v44 << 32);
      sub_1AF3CB570(v55, &v102);
      if (v103)
      {
        v56 = v102;
        v57 = v102;
        sub_1AF487074(v102, v103);
        if (v57 > 6)
        {
          v58 = 1;
        }

        else
        {
          v58 = qword_1AFE9F580[v56 & 7];
        }

        v32 = v101;
        if (v49 < v58)
        {
LABEL_31:
          v41 = v32;
          v42 = a1 == v32++;
          if (v42)
          {
            goto LABEL_12;
          }

LABEL_11:
          *a1 = *v41;
          goto LABEL_12;
        }
      }

      else
      {
        v59 = v97;
        sub_1AF3CFB68(v55, v97);
        v60 = type metadata accessor for ParticleUpdateScript(0);
        v61 = (*(*(v60 - 8) + 48))(v59, 1, v60);
        sub_1AFB92FD0(v59, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
        if (v61 == 1 && (v62 = v92, sub_1AF3CFD30(v55, v92), v63 = type metadata accessor for ParticleInitScript(0), v64 = (*(*(v63 - 8) + 48))(v62, 1, v63), sub_1AFB92FD0(v62, qword_1ED725258, type metadata accessor for ParticleInitScript), v64 == 1))
        {
          v32 = v101;
          if (v49 < 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v32 = v101;
          if (v49 < 1)
          {
            goto LABEL_31;
          }
        }
      }

      v41 = v40;
      v42 = a1 == v40;
      v40 += 2;
      if (!v42)
      {
        goto LABEL_11;
      }

LABEL_12:
      ++a1;
      if (v40 >= v104)
      {
        goto LABEL_8;
      }
    }
  }

  v40 = a4;
  if (a4 != v32 || &v32[v38] <= a4)
  {
    v65 = v32;
    memmove(a4, v32, 8 * v38);
    v32 = v65;
  }

  v104 = &a4[v38];
  if (v37 >= 8 && v32 > a1)
  {
    v100 = a4;
LABEL_40:
    v97 = v32 - 1;
    --a3;
    v66 = v104;
    v101 = v32;
    while (1)
    {
      v68 = *(v66 - 1);
      v66 -= 2;
      v67 = v68;
      v69 = *(v32 - 2);
      v70 = *(v32 - 1);
      sub_1AF3CB570(v68, &v102);
      if (v103)
      {
        v71 = v102;
        v72 = v102;
        sub_1AF487074(v102, v103);
        if (v72 > 6)
        {
          goto LABEL_47;
        }

        v73 = qword_1AFE9F580[v71 & 7];
      }

      else
      {
        v74 = v98;
        sub_1AF3CFB68(v67, v98);
        v75 = type metadata accessor for ParticleUpdateScript(0);
        v76 = (*(*(v75 - 8) + 48))(v74, 1, v75);
        sub_1AFB92FD0(v74, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
        if (v76 != 1)
        {
LABEL_47:
          v73 = 1;
          goto LABEL_48;
        }

        v77 = v95;
        sub_1AF3CFD30(v67, v95);
        v78 = type metadata accessor for ParticleInitScript(0);
        v73 = (*(*(v78 - 8) + 48))(v77, 1, v78) != 1;
        sub_1AFB92FD0(v77, qword_1ED725258, type metadata accessor for ParticleInitScript);
      }

LABEL_48:
      v79 = v69 | (v70 << 32);
      sub_1AF3CB570(v79, &v102);
      if (v103)
      {
        v80 = v102;
        v81 = v102;
        sub_1AF487074(v102, v103);
        v40 = v100;
        if (v81 > 6)
        {
          v82 = 1;
        }

        else
        {
          v82 = qword_1AFE9F580[v80 & 7];
        }

        v32 = v101;
        if (v73 < v82)
        {
LABEL_61:
          v89 = v97;
          if (a3 + 1 != v32)
          {
            *a3 = *v97;
          }

          if (v104 <= v40 || (v32 = v89, v89 <= a1))
          {
            v32 = v89;
            break;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v83 = v99;
        sub_1AF3CFB68(v79, v99);
        v84 = type metadata accessor for ParticleUpdateScript(0);
        v85 = (*(*(v84 - 8) + 48))(v83, 1, v84);
        sub_1AFB92FD0(v83, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
        v40 = v100;
        if (v85 == 1 && (v86 = v94, sub_1AF3CFD30(v79, v94), v87 = type metadata accessor for ParticleInitScript(0), v88 = (*(*(v87 - 8) + 48))(v86, 1, v87), sub_1AFB92FD0(v86, qword_1ED725258, type metadata accessor for ParticleInitScript), v88 == 1))
        {
          v32 = v101;
          if (v73 < 0)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v32 = v101;
          if (v73 < 1)
          {
            goto LABEL_61;
          }
        }
      }

      if (a3 + 1 != v104)
      {
        *a3 = *v66;
      }

      --a3;
      v104 = v66;
      if (v66 <= v40)
      {
        v104 = v66;
        break;
      }
    }
  }

LABEL_67:
  if (v32 != v40 || v32 >= (v40 + ((v104 - v40 + (v104 - v40 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v32, v40, 8 * ((v104 - v40) / 8));
  }

  return 1;
}

uint64_t sub_1AFB8D41C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v264 = a4;
  v263 = a1;
  v7 = MEMORY[0x1E69E6720];
  sub_1AFB91B24(0, qword_1ED725258, type metadata accessor for ParticleInitScript, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v275 = &v262 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v274 = &v262 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v267 = &v262 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v266 = &v262 - v19;
  sub_1AFB91B24(0, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript, v7);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v277 = &v262 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v276 = &v262 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v269 = &v262 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v268 = &v262 - v31;
  v271 = a3;
  v32 = a3[1];
  v280 = a5;
  if (v32 >= 1)
  {
    v33 = (a5 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    swift_retain_n();
    v34 = 0;
    v35 = MEMORY[0x1E69E7CC0];
    v281 = v33;
    while (1)
    {
      v49 = v34 + 1;
      if (v34 + 1 >= v32)
      {
        v52 = v34 + 1;
        goto LABEL_120;
      }

      v50 = *v271;
      v285 = *(*v271 + 8 * v49);
      v278 = v50;
      v284 = *(v50 + 8 * v34);
      v51 = v273;
      LODWORD(v282) = sub_1AFB86390(&v285, &v284);
      v273 = v51;
      if (v51)
      {
        goto LABEL_10;
      }

      v265 = v35;
      v52 = v34 + 2;
      v279 = v34;
      if (v34 + 2 >= v32)
      {
        goto LABEL_113;
      }

      while (1)
      {
        v53 = (v278 + 8 * v49);
        v283 = v52;
        v54 = (v278 + 8 * v52);
        v55 = v54[1];
        v56 = *v54;
        v57 = v53[1];
        v58 = *v53;
        v59 = v56 == -1 && v55 == 0;
        v60 = v59;
        if (!v59 && (v56 & 0x80000000) == 0 && v33[1] > v56)
        {
          v65 = (*v33 + 12 * v56);
          if (v55 == -1 || v65[2] == v55)
          {
            v67 = *(v65 + 2);
            v68 = *(*(v280 + 144) + 8 * *v65 + 32);
            v69 = *(v68 + 48);
            v70 = (v69 + 32);
            v71 = *(v69 + 16) + 1;
            while (--v71)
            {
              v72 = v70 + 5;
              v73 = *v70;
              v70 += 5;
              if (v73 == &type metadata for GraphScriptingConfig)
              {
                v74 = *(&(*(v72 - 2))[2 * v67].Kind + *(v68 + 128));
                if (v74 > 6)
                {
                  v75 = 1;
                  if (v58 != -1)
                  {
                    goto LABEL_67;
                  }
                }

                else
                {
                  v75 = qword_1AFE9F580[v74];
                  if (v58 != -1)
                  {
                    goto LABEL_67;
                  }
                }

                if (!v57)
                {
                  goto LABEL_71;
                }

                goto LABEL_67;
              }
            }
          }
        }

        updated = type metadata accessor for ParticleUpdateScript(0);
        v62 = updated;
        v63 = *(updated - 8);
        if (*(v63 + 64))
        {
          if (v60)
          {
            goto LABEL_45;
          }

          v64 = *(v63 + 72);
          if ((v56 & 0x80000000) != 0)
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v60)
          {
            goto LABEL_45;
          }

          v64 = 0;
          if ((v56 & 0x80000000) != 0)
          {
            goto LABEL_45;
          }
        }

        if (v281[1] > v56)
        {
          v76 = (*v281 + 12 * v56);
          v77 = *(v76 + 2);
          if (v55 == -1 || v76[2] == v55)
          {
            v90 = *(*(v280 + 144) + 8 * *v76 + 32);
            v91 = *(v90 + 48);
            v92 = (v91 + 32);
            v93 = *(v91 + 16) + 1;
            while (--v93)
            {
              v94 = v92 + 5;
              v95 = *v92;
              v92 += 5;
              if (v95 == updated)
              {
                v96 = v268;
                sub_1AFB93040(*(v90 + 128) + *(v94 - 2) + v64 * v77, v268, type metadata accessor for ParticleUpdateScript);
                (*(v63 + 56))(v96, 0, 1, v62);
                v97 = type metadata accessor for ParticleUpdateScript;
                v98 = v96;
                v99 = &unk_1ED724F80;
LABEL_65:
                sub_1AFB92FD0(v98, v99, v97);
                v75 = 1;
                if (v58 == -1)
                {
                  goto LABEL_55;
                }

                goto LABEL_66;
              }
            }
          }
        }

LABEL_45:
        v78 = v55;
        v79 = v58;
        v80 = v57;
        v81 = v32;
        v82 = v268;
        (*(v63 + 56))(v268, 1, 1, updated);
        sub_1AFB92FD0(v82, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
        inited = type metadata accessor for ParticleInitScript(0);
        v84 = inited;
        v85 = *(inited - 8);
        if (*(v85 + 64))
        {
          v32 = v81;
          v57 = v80;
          v58 = v79;
          if (v60)
          {
            goto LABEL_54;
          }

          v86 = *(v85 + 72);
          if ((v56 & 0x80000000) != 0)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v32 = v81;
          v57 = v80;
          v58 = v79;
          if (v60)
          {
            goto LABEL_54;
          }

          v86 = 0;
          if ((v56 & 0x80000000) != 0)
          {
            goto LABEL_54;
          }
        }

        if (v281[1] > v56)
        {
          v87 = (*v281 + 12 * v56);
          v88 = *(v87 + 2);
          if (v78 == -1 || v87[2] == v78)
          {
            v100 = *(*(v280 + 144) + 8 * *v87 + 32);
            v101 = *(v100 + 48);
            v102 = (v101 + 32);
            v103 = *(v101 + 16) + 1;
            while (--v103)
            {
              v104 = v102 + 5;
              v105 = *v102;
              v102 += 5;
              if (v105 == inited)
              {
                v106 = v267;
                sub_1AFB93040(*(v100 + 128) + *(v104 - 2) + v86 * v88, v267, type metadata accessor for ParticleInitScript);
                (*(v85 + 56))(v106, 0, 1, v84);
                v97 = type metadata accessor for ParticleInitScript;
                v98 = v106;
                v99 = qword_1ED725258;
                goto LABEL_65;
              }
            }
          }
        }

LABEL_54:
        v89 = v267;
        (*(v85 + 56))(v267, 1, 1, inited);
        sub_1AFB92FD0(v89, qword_1ED725258, type metadata accessor for ParticleInitScript);
        v75 = 0;
        if (v58 == -1)
        {
LABEL_55:
          v33 = v281;
          if (!v57)
          {
            goto LABEL_71;
          }
        }

        else
        {
LABEL_66:
          v33 = v281;
        }

LABEL_67:
        if ((v58 & 0x80000000) == 0 && v33[1] > v58)
        {
          v107 = (*v33 + 12 * v58);
          v108 = *(v107 + 2);
          if (v57 == -1 || v107[2] == v57)
          {
            v134 = *(*(v280 + 144) + 8 * *v107 + 32);
            v135 = *(v134 + 48);
            v136 = (v135 + 32);
            v137 = *(v135 + 16) + 1;
            while (--v137)
            {
              v138 = v136 + 5;
              v139 = *v136;
              v136 += 5;
              if (v139 == &type metadata for GraphScriptingConfig)
              {
                v140 = *(&(*(v138 - 2))[2 * v108].Kind + *(v134 + 128));
                if (v140 > 6)
                {
                  v141 = 1;
                }

                else
                {
                  v141 = qword_1AFE9F580[v140];
                }

                v34 = v279;
                v49 = v283;
                if ((v282 ^ (v75 >= v141)))
                {
                  goto LABEL_85;
                }

                goto LABEL_112;
              }
            }
          }
        }

LABEL_71:
        v109 = type metadata accessor for ParticleUpdateScript(0);
        v110 = v109;
        v111 = *(v109 - 8);
        v112 = *(v111 + 64);
        if (v112)
        {
          v112 = *(v111 + 72);
        }

        if ((v58 != -1 || v57) && (v58 & 0x80000000) == 0 && v33[1] > v58)
        {
          v113 = (*v33 + 12 * v58);
          v114 = *(v113 + 2);
          if (v57 == -1 || v113[2] == v57)
          {
            v142 = *(*(v280 + 144) + 8 * *v113 + 32);
            v143 = *(v142 + 48);
            v144 = (v143 + 32);
            v145 = *(v143 + 16) + 1;
            while (--v145)
            {
              v146 = v144 + 5;
              v147 = *v144;
              v144 += 5;
              if (v147 == v109)
              {
                v148 = v269;
                sub_1AFB93040(*(v142 + 128) + *(v146 - 2) + v112 * v114, v269, type metadata accessor for ParticleUpdateScript);
                (*(v111 + 56))(v148, 0, 1, v110);
                v131 = type metadata accessor for ParticleUpdateScript;
                v132 = v148;
                v133 = &unk_1ED724F80;
LABEL_104:
                sub_1AFB92FD0(v132, v133, v131);
                v121 = v75 > 0;
                goto LABEL_84;
              }
            }
          }
        }

        v115 = v269;
        (*(v111 + 56))(v269, 1, 1, v109);
        sub_1AFB92FD0(v115, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
        v116 = type metadata accessor for ParticleInitScript(0);
        v117 = v116;
        v118 = *(v116 - 8);
        v119 = *(v118 + 64);
        if (v119)
        {
          v119 = *(v118 + 72);
        }

        if ((v58 != -1 || v57) && (v58 & 0x80000000) == 0 && v33[1] > v58)
        {
          v122 = (*v33 + 12 * v58);
          v123 = *(v122 + 2);
          if (v57 == -1 || v122[2] == v57)
          {
            v124 = *(*(v280 + 144) + 8 * *v122 + 32);
            v125 = *(v124 + 48);
            v126 = (v125 + 32);
            v127 = *(v125 + 16) + 1;
            while (--v127)
            {
              v128 = v126 + 5;
              v129 = *v126;
              v126 += 5;
              if (v129 == v116)
              {
                v130 = v266;
                sub_1AFB93040(*(v124 + 128) + *(v128 - 2) + v119 * v123, v266, type metadata accessor for ParticleInitScript);
                (*(v118 + 56))(v130, 0, 1, v117);
                v131 = type metadata accessor for ParticleInitScript;
                v132 = v130;
                v133 = qword_1ED725258;
                goto LABEL_104;
              }
            }
          }
        }

        v120 = v266;
        (*(v118 + 56))(v266, 1, 1, v116);
        sub_1AFB92FD0(v120, qword_1ED725258, type metadata accessor for ParticleInitScript);
        v121 = v75 >= 0;
LABEL_84:
        v34 = v279;
        v49 = v283;
        if (((v282 ^ v121) & 1) == 0)
        {
          break;
        }

LABEL_85:
        v52 = v49 + 1;
        if (v49 + 1 == v32)
        {
          v52 = v32;
          goto LABEL_113;
        }
      }

LABEL_112:
      v52 = v49;
LABEL_113:
      if (v34 >= v52 || (v282 & 1) == 0)
      {
        a5 = v280;
      }

      else
      {
        v149 = 8 * v52 - 8;
        v150 = 8 * v34;
        v151 = v52;
        v152 = v34;
        a5 = v280;
        do
        {
          if (v152 != --v151)
          {
            v153 = *v271;
            v154 = *(*v271 + v150);
            *(v153 + v150) = *(*v271 + v149);
            *(v153 + v149) = v154;
          }

          ++v152;
          v149 -= 8;
          v150 += 8;
        }

        while (v152 < v151);
      }

      v35 = v265;
LABEL_120:
      v155 = v271[1];
      if (v52 >= v155 || v52 - v34 >= v264)
      {
        goto LABEL_224;
      }

      if (v34 + v264 >= v155)
      {
        v157 = v271[1];
      }

      else
      {
        v157 = (v34 + v264);
      }

      if (v34 + v264 == v52)
      {
        v52 = v157;
        goto LABEL_224;
      }

      v265 = v35;
      v158 = *v271;
      v278 = *v271;
      v279 = v34;
      v270 = v157;
      while (2)
      {
        v159 = *(v158 + 8 * v52);
        v272 = v52;
        while (2)
        {
          v161 = v52 - 1;
          v162 = (v158 + 8 * (v52 - 1));
          v163 = v162[1];
          v164 = *v162;
          v282 = v164;
          v283 = v163;
          v165 = v159;
          v166 = HIDWORD(v159);
          v167 = v159 == -1 && HIDWORD(v159) == 0;
          v168 = v167;
          if (!v167 && (v159 & 0x80000000) == 0 && v281[1] > v159)
          {
            v173 = (*v281 + 12 * v159);
            if (HIDWORD(v159) == -1 || v173[2] == HIDWORD(v159))
            {
              v175 = *(v173 + 2);
              v176 = *(*(a5 + 144) + 8 * *v173 + 32);
              v177 = *(v176 + 48);
              v178 = (v177 + 32);
              v179 = *(v177 + 16) + 1;
              while (--v179)
              {
                v180 = v178 + 5;
                v181 = *v178;
                v178 += 5;
                if (v181 == &type metadata for GraphScriptingConfig)
                {
                  v182 = *(&(*(v180 - 2))[2 * v175].Kind + *(v176 + 128));
                  v183 = v283;
                  if (v182 > 6)
                  {
                    v184 = 1;
                  }

                  else
                  {
                    v184 = qword_1AFE9F580[v182];
                  }

                  v33 = v281;
                  if (v282 == -1 && !v283)
                  {
                    goto LABEL_187;
                  }

                  goto LABEL_183;
                }
              }
            }
          }

          v169 = type metadata accessor for ParticleUpdateScript(0);
          v170 = v169;
          v171 = *(v169 - 8);
          if (*(v171 + 64))
          {
            if (v168)
            {
              goto LABEL_164;
            }

            v172 = *(v171 + 72);
            if (v165 < 0)
            {
              goto LABEL_164;
            }

LABEL_161:
            if (v281[1] > v165)
            {
              v185 = (*v281 + 12 * v165);
              v186 = *(v185 + 2);
              if (v166 == -1 || v185[2] == v166)
              {
                v228 = *(*(v280 + 144) + 8 * *v185 + 32);
                v229 = *(v228 + 48);
                v230 = (v229 + 32);
                v231 = *(v229 + 16) + 1;
                while (--v231)
                {
                  v232 = v230 + 5;
                  v233 = *v230;
                  v230 += 5;
                  if (v233 == v169)
                  {
                    v234 = v276;
                    sub_1AFB93040(*(v228 + 128) + *(v232 - 2) + v172 * v186, v276, type metadata accessor for ParticleUpdateScript);
                    (*(v171 + 56))(v234, 0, 1, v170);
                    sub_1AFB92FD0(v234, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
                    v184 = 1;
                    if (v282 != -1)
                    {
                      a5 = v280;
                      v33 = v281;
                      goto LABEL_182;
                    }

                    a5 = v280;
                    v33 = v281;
                    v183 = v283;
                    if (!v283)
                    {
                      goto LABEL_187;
                    }

                    goto LABEL_183;
                  }
                }
              }
            }
          }

          else if ((v168 & 1) == 0)
          {
            v172 = 0;
            if ((v165 & 0x80000000) == 0)
            {
              goto LABEL_161;
            }
          }

LABEL_164:
          v187 = v276;
          (*(v171 + 56))(v276, 1, 1, v169);
          sub_1AFB92FD0(v187, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
          v188 = type metadata accessor for ParticleInitScript(0);
          v189 = v188;
          v190 = *(v188 - 8);
          if (*(v190 + 64))
          {
            if (v168)
            {
              goto LABEL_169;
            }

            v191 = *(v190 + 72);
            if (v165 < 0)
            {
              goto LABEL_169;
            }

LABEL_174:
            if (v281[1] <= v165)
            {
              v33 = v281;
            }

            else
            {
              v193 = (*v281 + 12 * v165);
              v194 = *(v193 + 2);
              v33 = v281;
              if (v166 == -1 || v193[2] == v166)
              {
                v195 = *(*(v280 + 144) + 8 * *v193 + 32);
                v196 = *(v195 + 48);
                v197 = (v196 + 32);
                v198 = *(v196 + 16) + 1;
                while (--v198)
                {
                  v199 = v197 + 5;
                  v200 = *v197;
                  v197 += 5;
                  if (v200 == v188)
                  {
                    v201 = v275;
                    sub_1AFB93040(*(v195 + 128) + *(v199 - 2) + v191 * v194, v275, type metadata accessor for ParticleInitScript);
                    (*(v190 + 56))(v201, 0, 1, v189);
                    sub_1AFB92FD0(v201, qword_1ED725258, type metadata accessor for ParticleInitScript);
                    v184 = 1;
                    if (v164 == -1)
                    {
                      goto LABEL_171;
                    }

                    goto LABEL_181;
                  }
                }
              }
            }
          }

          else
          {
            if ((v168 & 1) == 0)
            {
              v191 = 0;
              if ((v165 & 0x80000000) == 0)
              {
                goto LABEL_174;
              }
            }

LABEL_169:
            v33 = v281;
          }

          v192 = v275;
          (*(v190 + 56))(v275, 1, 1, v188);
          sub_1AFB92FD0(v192, qword_1ED725258, type metadata accessor for ParticleInitScript);
          v184 = 0;
          if (v164 == -1)
          {
LABEL_171:
            a5 = v280;
            v183 = v283;
            if (v283)
            {
              goto LABEL_183;
            }
          }

          else
          {
LABEL_181:
            a5 = v280;
LABEL_182:
            v183 = v283;
LABEL_183:
            if ((v164 & 0x80000000) == 0 && v33[1] > v164)
            {
              v202 = (*v33 + 12 * v164);
              v203 = *(v202 + 2);
              if (v183 == -1 || v202[2] == v183)
              {
                v220 = *(*(a5 + 144) + 8 * *v202 + 32);
                v221 = *(v220 + 48);
                v222 = (v221 + 32);
                v223 = *(v221 + 16) + 1;
                while (--v223)
                {
                  v224 = v222 + 5;
                  v225 = *v222;
                  v222 += 5;
                  if (v225 == &type metadata for GraphScriptingConfig)
                  {
                    v226 = *(&(*(v224 - 2))[2 * v203].Kind + *(v220 + 128));
                    if (v226 > 6)
                    {
                      v227 = 1;
                    }

                    else
                    {
                      v227 = qword_1AFE9F580[v226];
                    }

                    v158 = v278;
                    if (v184 < v227)
                    {
                      goto LABEL_134;
                    }

                    goto LABEL_131;
                  }
                }
              }
            }
          }

LABEL_187:
          v204 = type metadata accessor for ParticleUpdateScript(0);
          v205 = v204;
          v206 = *(v204 - 8);
          v207 = *(v206 + 64);
          if (v207)
          {
            v207 = *(v206 + 72);
            if (v282 != -1)
            {
LABEL_195:
              if ((v164 & 0x80000000) == 0 && v33[1] > v164)
              {
                v212 = (*v33 + 12 * v164);
                v213 = *(v212 + 2);
                if (v183 == -1 || v212[2] == v183)
                {
                  v214 = *(*(a5 + 144) + 8 * *v212 + 32);
                  v215 = *(v214 + 48);
                  v216 = (v215 + 32);
                  v217 = *(v215 + 16) + 1;
                  while (--v217)
                  {
                    v218 = v216 + 5;
                    v219 = *v216;
                    v216 += 5;
                    if (v219 == v204)
                    {
                      v160 = v277;
                      sub_1AFB93040(*(v214 + 128) + *(v218 - 2) + v207 * v213, v277, type metadata accessor for ParticleUpdateScript);
                      (*(v206 + 56))(v160, 0, 1, v205);
                      sub_1AFB92FD0(v160, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
                      goto LABEL_133;
                    }
                  }
                }
              }

              goto LABEL_192;
            }
          }

          else if (v164 != -1)
          {
            goto LABEL_195;
          }

          if (v183)
          {
            goto LABEL_195;
          }

LABEL_192:
          v208 = v277;
          (*(v206 + 56))(v277, 1, 1, v204);
          sub_1AFB92FD0(v208, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
          v209 = v274;
          sub_1AF3CFD30(v282 | (v283 << 32), v274);
          v210 = type metadata accessor for ParticleInitScript(0);
          v211 = (*(*(v210 - 8) + 48))(v209, 1, v210);
          sub_1AFB92FD0(v209, qword_1ED725258, type metadata accessor for ParticleInitScript);
          if (v211 != 1)
          {
LABEL_133:
            v158 = v278;
            if (v184 >= 1)
            {
              goto LABEL_131;
            }

LABEL_134:
            v159 = *(v158 + 8 * v52);
            *(v158 + 8 * v52) = *(v158 + 8 * v161);
            *(v158 + 8 * v161) = v159;
            --v52;
            if (v161 == v279)
            {
              goto LABEL_131;
            }

            continue;
          }

          break;
        }

        v158 = v278;
        if (v184 < 0)
        {
          goto LABEL_134;
        }

LABEL_131:
        v52 = v272 + 1;
        if ((v272 + 1) != v270)
        {
          continue;
        }

        break;
      }

      v52 = v270;
      v35 = v265;
      v34 = v279;
LABEL_224:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v272 = v52;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = sub_1AF4209A4(0, *(v35 + 2) + 1, 1, v35);
      }

      v237 = *(v35 + 2);
      v236 = *(v35 + 3);
      v238 = v237 + 1;
      if (v237 >= v236 >> 1)
      {
        v35 = sub_1AF4209A4(v236 > 1, v237 + 1, 1, v35);
      }

      *(v35 + 2) = v238;
      v239 = v35 + 32;
      v240 = &v35[16 * v237 + 32];
      v241 = v272;
      *v240 = v34;
      *(v240 + 1) = v241;
      if (v237)
      {
        v283 = *v263;
        v242 = v35;
        do
        {
          v243 = v238 - 1;
          if (v238 >= 4)
          {
            v247 = &v239[16 * v238];
            v248 = *(v247 - 7) - *(v247 - 8);
            v246 = *(v247 - 5) - *(v247 - 6);
            v249 = &v35[16 * v238];
            v244 = *v249;
            v245 = *(v249 + 1);
            if (v246 - v244 + v245 >= v248)
            {
              v252 = v238 - 2;
              v251 = *&v239[16 * v243 + 8] - *&v239[16 * v243];
LABEL_240:
              if (v246 < v251)
              {
                v243 = v252;
              }

              goto LABEL_242;
            }
          }

          else
          {
            if (v238 != 3)
            {
              v250 = *&v35[16 * v238 + 8] - *&v35[16 * v238];
              v251 = *&v239[16 * v243 + 8] - *&v239[16 * v243];
              goto LABEL_237;
            }

            v244 = *(v35 + 6);
            v245 = *(v35 + 7);
            v246 = *(v35 + 5) - *(v35 + 4);
          }

          v250 = v245 - v244;
          v251 = *&v239[16 * v243 + 8] - *&v239[16 * v243];
          if (v250 + v251 >= v246)
          {
            v252 = v238 - 2;
            goto LABEL_240;
          }

LABEL_237:
          if (v251 < v250)
          {
            v35 = v242;
            v33 = v281;
            break;
          }

LABEL_242:
          v253 = &v239[16 * v243];
          v254 = *(v253 - 2);
          v255 = *(v253 + 1);
          v256 = *v271 + 8 * v254;
          v257 = *v271 + 8 * *v253;
          v258 = (*v271 + 8 * v255);

          v259 = v256;
          v260 = v273;
          sub_1AFB8CA74(v259, v257, v258, v283);
          if (v260)
          {
            goto LABEL_245;
          }

          v273 = 0;

          *(v253 - 2) = v254;
          *(v253 - 1) = v255;
          v35 = v242;
          v261 = *(v242 + 2);
          v238 = v261 - 1;
          memmove(&v239[16 * v243], v253 + 16, 16 * (v261 - 1 - v243));
          *(v242 + 2) = v261 - 1;
          v33 = v281;
        }

        while (v261 > 2);
      }

      v34 = v272;
      v32 = v271[1];
      a5 = v280;
      if (v272 >= v32)
      {
        goto LABEL_4;
      }
    }
  }

  swift_retain_n();
  v35 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v283 = *v263;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = sub_1AF650C88(v35);
  }

  v36 = v35 + 16;
  v37 = *(v35 + 2);
  if (v37 < 2)
  {
LABEL_10:
  }

  else
  {
    v265 = v35;
    while (1)
    {
      v38 = &v35[16 * v37];
      v39 = *v38;
      v40 = &v36[2 * v37];
      v41 = *v271 + 8 * *v38;
      v42 = v40[1];
      v43 = *v271 + 8 * *v40;
      v44 = (*v271 + 8 * v42);

      v45 = v41;
      v46 = v273;
      sub_1AFB8CA74(v45, v43, v44, v283);
      v273 = v46;
      if (v46)
      {
        break;
      }

      *v38 = v39;
      *(v38 + 1) = v42;
      v47 = *v36 - 1;
      memmove(&v36[2 * v37], v40 + 2, 16 * (*v36 - v37));
      *v36 = v47;
      v37 = v47;
      v35 = v265;
      if (v47 <= 1)
      {
        goto LABEL_10;
      }
    }

LABEL_245:
  }
}

void sub_1AFB8EB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v121 = a1;
  v9 = MEMORY[0x1E69E6720];
  sub_1AFB91B24(0, qword_1ED725258, type metadata accessor for ParticleInitScript, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v117 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v116 = &v112 - v15;
  sub_1AFB91B24(0, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript, v9);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v120 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v119 = &v112 - v21;
  v113 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v115 = a5;
    v23 = (a5 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v118 = v22;
    do
    {
      v24 = *(v22 + 8 * a3);
      v114 = a3;
      do
      {
        v27 = v23;
        v123 = a3;
        v28 = a3 - 1;
        v29 = (v22 + 8 * (a3 - 1));
        v30 = *v29;
        v122 = v29[1];
        v31 = v24;
        v32 = HIDWORD(v24);
        v33 = v24 == -1 && HIDWORD(v24) == 0;
        v34 = v33;
        if (!v33 && (v24 & 0x80000000) == 0 && v27[1] > v24)
        {
          v39 = (*v27 + 12 * v24);
          if (HIDWORD(v24) == -1 || v39[2] == HIDWORD(v24))
          {
            v41 = *(v39 + 2);
            v42 = *(*(v115 + 144) + 8 * *v39 + 32);
            v43 = *(v42 + 48);
            v44 = (v43 + 32);
            v45 = *(v43 + 16) + 1;
            while (--v45)
            {
              v46 = v44 + 5;
              v47 = *v44;
              v44 += 5;
              if (v47 == &type metadata for GraphScriptingConfig)
              {
                v48 = *(&(*(v46 - 2))[2 * v41].Kind + *(v42 + 128));
                if (v48 > 6)
                {
                  v49 = 1;
                }

                else
                {
                  v49 = qword_1AFE9F580[v48];
                }

                v23 = v27;
                v57 = v122;
                if (v30 == -1 && !v122)
                {
                  goto LABEL_61;
                }

                goto LABEL_57;
              }
            }
          }
        }

        updated = type metadata accessor for ParticleUpdateScript(0);
        v36 = updated;
        v37 = *(updated - 8);
        if (*(v37 + 64))
        {
          if (v34)
          {
            goto LABEL_38;
          }

          v38 = *(v37 + 72);
          if (v31 < 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v34)
          {
            goto LABEL_38;
          }

          v38 = 0;
          if (v31 < 0)
          {
            goto LABEL_38;
          }
        }

        if (v27[1] > v31)
        {
          v50 = (*v27 + 12 * v31);
          v51 = *(v50 + 2);
          if (v32 == -1 || v50[2] == v32)
          {
            v105 = *(*(v115 + 144) + 8 * *v50 + 32);
            v106 = *(v105 + 48);
            v107 = (v106 + 32);
            v108 = *(v106 + 16) + 1;
            while (--v108)
            {
              v109 = v107 + 5;
              v110 = *v107;
              v107 += 5;
              if (v110 == updated)
              {
                v111 = v119;
                sub_1AFB93040(*(v105 + 128) + *(v109 - 2) + v38 * v51, v119, type metadata accessor for ParticleUpdateScript);
                (*(v37 + 56))(v111, 0, 1, v36);
                sub_1AFB92FD0(v111, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
                v49 = 1;
                if (v30 == -1)
                {
                  v22 = v118;
                  v23 = v27;
                  v57 = v122;
                  if (!v122)
                  {
                    goto LABEL_61;
                  }
                }

                else
                {
                  v22 = v118;
                  v23 = v27;
                  v57 = v122;
                }

                goto LABEL_57;
              }
            }
          }
        }

LABEL_38:
        v52 = v119;
        (*(v37 + 56))(v119, 1, 1, updated);
        sub_1AFB92FD0(v52, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
        inited = type metadata accessor for ParticleInitScript(0);
        v54 = inited;
        v55 = *(inited - 8);
        if (*(v55 + 64))
        {
          if (v34)
          {
            goto LABEL_43;
          }

          v56 = *(v55 + 72);
          v22 = v118;
          if (v31 < 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v34)
          {
LABEL_43:
            v22 = v118;
LABEL_44:
            v23 = v27;
LABEL_45:
            v57 = v122;
            goto LABEL_46;
          }

          v56 = 0;
          v22 = v118;
          if (v31 < 0)
          {
            goto LABEL_44;
          }
        }

        if (v27[1] <= v31)
        {
          goto LABEL_44;
        }

        v59 = (*v27 + 12 * v31);
        v60 = *(v59 + 2);
        v23 = v27;
        if (v32 != -1 && v59[2] != v32)
        {
          goto LABEL_45;
        }

        v61 = *(*(v115 + 144) + 8 * *v59 + 32);
        v62 = *(v61 + 48);
        v63 = (v62 + 32);
        v64 = *(v62 + 16) + 1;
        v57 = v122;
        while (--v64)
        {
          v65 = v63 + 5;
          v66 = *v63;
          v63 += 5;
          if (v66 == inited)
          {
            v67 = v117;
            sub_1AFB93040(*(v61 + 128) + *(v65 - 2) + v56 * v60, v117, type metadata accessor for ParticleInitScript);
            (*(v55 + 56))(v67, 0, 1, v54);
            sub_1AFB92FD0(v67, qword_1ED725258, type metadata accessor for ParticleInitScript);
            v49 = 1;
            if (v30 == -1)
            {
              goto LABEL_47;
            }

            goto LABEL_57;
          }
        }

LABEL_46:
        v58 = v117;
        (*(v55 + 56))(v117, 1, 1, inited);
        sub_1AFB92FD0(v58, qword_1ED725258, type metadata accessor for ParticleInitScript);
        v49 = 0;
        if (v30 == -1)
        {
LABEL_47:
          if (!v57)
          {
            goto LABEL_61;
          }
        }

LABEL_57:
        if ((v30 & 0x80000000) == 0 && v23[1] > v30)
        {
          v68 = (*v23 + 12 * v30);
          v69 = *(v68 + 2);
          if (v57 == -1 || v68[2] == v57)
          {
            v98 = *(*(v115 + 144) + 8 * *v68 + 32);
            v99 = *(v98 + 48);
            v100 = (v99 + 32);
            v101 = *(v99 + 16) + 1;
            while (--v101)
            {
              v102 = v100 + 5;
              v103 = *v100;
              v100 += 5;
              if (v103 == &type metadata for GraphScriptingConfig)
              {
                v104 = *(&(*(v102 - 2))[2 * v69].Kind + *(v98 + 128));
                if (v104 <= 6)
                {
                  v25 = qword_1AFE9F580[v104];
                }

                else
                {
                  v25 = 1;
                }

                v26 = v123;
                if (v49 >= v25)
                {
                  goto LABEL_4;
                }

                goto LABEL_8;
              }
            }
          }
        }

LABEL_61:
        v70 = type metadata accessor for ParticleUpdateScript(0);
        v71 = v70;
        v72 = *(v70 - 8);
        v73 = *(v72 + 64);
        if (v73)
        {
          v73 = *(v72 + 72);
        }

        if ((v30 != -1 || v57) && (v30 & 0x80000000) == 0 && v23[1] > v30)
        {
          v80 = (*v23 + 12 * v30);
          v81 = *(v80 + 2);
          if (v57 == -1 || v80[2] == v57)
          {
            v82 = *(*(v115 + 144) + 8 * *v80 + 32);
            v83 = *(v82 + 48);
            v84 = (v83 + 32);
            v85 = *(v83 + 16) + 1;
            while (--v85)
            {
              v86 = v84 + 5;
              v87 = *v84;
              v84 += 5;
              if (v87 == v70)
              {
                v88 = v120;
                sub_1AFB93040(*(v82 + 128) + *(v86 - 2) + v73 * v81, v120, type metadata accessor for ParticleUpdateScript);
                (*(v72 + 56))(v88, 0, 1, v71);
                sub_1AFB92FD0(v88, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
                v26 = v123;
                if (v49 < 1)
                {
                  goto LABEL_8;
                }

                goto LABEL_4;
              }
            }
          }
        }

        v74 = v120;
        (*(v72 + 56))(v120, 1, 1, v70);
        sub_1AFB92FD0(v74, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
        v75 = type metadata accessor for ParticleInitScript(0);
        v76 = v75;
        v77 = *(v75 - 8);
        v78 = *(v77 + 64);
        if (v78)
        {
          v78 = *(v77 + 72);
        }

        if ((v30 != -1 || v57) && (v30 & 0x80000000) == 0 && v23[1] > v30 && ((v89 = (*v23 + 12 * v30), v90 = *(v89 + 2), v57 == -1) || v89[2] == v57))
        {
          v91 = *(*(v115 + 144) + 8 * *v89 + 32);
          v92 = *(v91 + 48);
          v93 = (v92 + 32);
          v94 = *(v92 + 16) + 1;
          v26 = v123;
          while (--v94)
          {
            v95 = v93 + 5;
            v96 = *v93;
            v93 += 5;
            if (v96 == v75)
            {
              v97 = v116;
              sub_1AFB93040(*(v91 + 128) + *(v95 - 2) + v78 * v90, v116, type metadata accessor for ParticleInitScript);
              (*(v77 + 56))(v97, 0, 1, v76);
              sub_1AFB92FD0(v97, qword_1ED725258, type metadata accessor for ParticleInitScript);
              if (v49 < 1)
              {
                goto LABEL_8;
              }

              goto LABEL_4;
            }
          }
        }

        else
        {
          v26 = v123;
        }

        v79 = v116;
        (*(v77 + 56))(v116, 1, 1, v75);
        sub_1AFB92FD0(v79, qword_1ED725258, type metadata accessor for ParticleInitScript);
        if ((v49 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_8:
        v24 = *(v22 + 8 * v26);
        *(v22 + 8 * v26) = *(v22 + 8 * v28);
        *(v22 + 8 * v28) = v24;
        a3 = v28;
      }

      while (v28 != v121);
LABEL_4:
      a3 = v114 + 1;
    }

    while (v114 + 1 != v113);
  }
}

uint64_t sub_1AFB8F658(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  v5 = sub_1AFDFE9D8();
  if (v5 >= v4)
  {
    if (v4)
    {

      sub_1AFB8EB8C(0, v4, 1, a1, a2);
    }
  }

  else
  {
    v6 = v5;
    v7 = v4 / 2;
    if (v4 <= 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v8 = sub_1AFDFD488();
      *(v8 + 16) = v7;
    }

    v10[0] = (v8 + 32);
    v10[1] = v7;

    sub_1AFB8D41C(v10, v11, a1, v6, a2);

    *(v8 + 16) = 0;
  }
}

uint64_t sub_1AFB8F78C(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AF62483C(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_1AFB8F658(v7, a2);

  *a1 = v4;
}

uint64_t sub_1AFB8F830(void *a1)
{
  sub_1AFB925A0(0, &qword_1EB642E28, sub_1AFB916C0, &type metadata for NeighborGrid.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13.i8[-v7];
  v9 = a1[3];
  sub_1AF441150(a1, v9);
  sub_1AFB916C0();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v15.i8[0] = 0;
    sub_1AFDFE738();
    v15.i8[0] = 1;
    v9 = sub_1AFDFE758();
    sub_1AFB925A0(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    v14 = 2;
    sub_1AFB91714(&qword_1EB63EF98);
    sub_1AFDFE768();
    v11 = v15;
    v11.i32[3] = 0;
    v12 = vmaxq_u32(v11, xmmword_1AFE552D0);
    v12.i32[3] = 0;
    v13 = vminq_u32(v12, xmmword_1AFE552E0);
    (*(v5 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

uint64_t sub_1AFB8FAE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  sub_1AFB925A0(0, &qword_1ED722FC0, sub_1AFB91790, &type metadata for EmitterDescription.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v113 - v8;
  v170 = 1;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB91790();
  sub_1AFDFF3B8();
  v132 = a1;
  if (v2)
  {
    v133 = v2;
    v127 = 0;
    LODWORD(v128) = 0;
    v125 = 0;
    v126 = 0;
    LODWORD(v131) = 0;
    v18 = 0;
    LODWORD(v130) = 0;
    LODWORD(v129) = 0;
    v19 = 0;
    v124 = 0;
    v20 = MEMORY[0x1E69E7CC0];
    v21 = 1;
    v22 = 0;
    v23 = 1036831949;
    v24 = 1;
    v25 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7CC0];
    v27 = MEMORY[0x1E69E7CC0];
LABEL_6:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v132);
    v141 = v27;
    v142 = v26;
    v143 = v25;
    v144 = v20;
    v145 = v19;
    v146 = v170;
    *v147 = *v169;
    *&v147[3] = *&v169[3];
    v148 = 0;
    v149 = v129;
    v150 = v130;
    v151 = v21;
    v152 = v18;
    v153 = v131;
    v154 = v126;
    v155 = v22;
    v156 = 1065353216;
    v157 = v125;
    v158 = 0;
    v159 = v167;
    v160 = v168;
    v161 = v127;
    v162 = v128;
    v163 = 0;
    v164 = v24;
    v165 = v124;
    v166 = v23;
    return sub_1AF57A684(&v141);
  }

  v131 = v6;
  v121 = v9;
  v122 = v5;
  v10 = v123;
  v11 = 0;
  v12 = a1[3];
  v13 = a1[4];
  sub_1AF441150(a1, v12);
  if (sub_1AF69504C(1036, v12, v13))
  {
    sub_1AFB936C8(0, &qword_1EB642E60, &type metadata for EntityComponentReference, MEMORY[0x1E69E62F8]);
    LOBYTE(v134) = 15;
    sub_1AFB918CC();
    v14 = v121;
    sub_1AFDFE768();
    v15 = v141;
    LOBYTE(v134) = 16;
    sub_1AFDFE768();
    v16 = v141;
    LOBYTE(v134) = 17;
    sub_1AFDFE768();
    v130 = v16;
    v17 = v141;
    LOBYTE(v134) = 18;
    sub_1AFDFE768();
    v133 = 0;
    v128 = v17;
    v129 = v141;
    v29 = *(v15 + 16);
    if (v29)
    {
      v35 = v131;
      v141 = MEMORY[0x1E69E7CC0];
      sub_1AFC07194(0, v29, 0);
      v30 = v141;
      v31 = *(v141 + 16);
      v32 = 32;
      do
      {
        v33 = *(v15 + v32);
        v141 = v30;
        v34 = *(v30 + 24);
        if (v31 >= v34 >> 1)
        {
          sub_1AFC07194(v34 > 1, v31 + 1, 1);
          v30 = v141;
        }

        *(v30 + 16) = v31 + 1;
        *(v30 + 8 * v31 + 32) = v33;
        v32 += 16;
        ++v31;
        --v29;
      }

      while (v29);
      v120 = v30;

      v11 = v133;
    }

    else
    {
      v11 = 0;

      v120 = MEMORY[0x1E69E7CC0];
      v35 = v131;
    }

    v36 = *(v130 + 16);
    if (v36)
    {
      v37 = v11;
      v141 = MEMORY[0x1E69E7CC0];
      sub_1AFC07194(0, v36, 0);
      v38 = v130;
      v39 = v141;
      v40 = *(v141 + 16);
      v41 = 32;
      do
      {
        v42 = *(v38 + v41);
        v141 = v39;
        v43 = *(v39 + 24);
        if (v40 >= v43 >> 1)
        {
          sub_1AFC07194(v43 > 1, v40 + 1, 1);
          v38 = v130;
          v39 = v141;
        }

        *(v39 + 16) = v40 + 1;
        *(v39 + 8 * v40 + 32) = v42;
        v41 += 16;
        ++v40;
        --v36;
      }

      while (v36);
      v119 = v39;

      v11 = v37;
    }

    else
    {

      v119 = MEMORY[0x1E69E7CC0];
    }

    v44 = *(v128 + 16);
    if (v44)
    {
      v45 = v11;
      v141 = MEMORY[0x1E69E7CC0];
      sub_1AFC07194(0, v44, 0);
      v46 = v128;
      v47 = v141;
      v48 = *(v141 + 16);
      v49 = 32;
      do
      {
        v50 = *(v46 + v49);
        v141 = v47;
        v51 = *(v47 + 24);
        if (v48 >= v51 >> 1)
        {
          sub_1AFC07194(v51 > 1, v48 + 1, 1);
          v46 = v128;
          v47 = v141;
        }

        *(v47 + 16) = v48 + 1;
        *(v47 + 8 * v48 + 32) = v50;
        v49 += 16;
        ++v48;
        --v44;
      }

      while (v44);
      v118 = v47;

      v11 = v45;
    }

    else
    {

      v118 = MEMORY[0x1E69E7CC0];
    }

    v52 = *(v129 + 16);
    if (v52)
    {
      v53 = v35;
      v141 = MEMORY[0x1E69E7CC0];
      sub_1AFC07194(0, v52, 0);
      v54 = v129;
      v55 = v141;
      v56 = *(v141 + 16);
      v57 = 32;
      do
      {
        v58 = *(v54 + v57);
        v141 = v55;
        v59 = *(v55 + 24);
        if (v56 >= v59 >> 1)
        {
          sub_1AFC07194(v59 > 1, v56 + 1, 1);
          v54 = v129;
          v55 = v141;
        }

        *(v55 + 16) = v56 + 1;
        *(v55 + 8 * v56 + 32) = v58;
        v57 += 16;
        ++v56;
        --v52;
      }

      while (v52);
      v117 = v55;

      v11 = v133;
      v35 = v53;
    }

    else
    {

      v117 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    sub_1AFB936C8(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    LOBYTE(v134) = 0;
    sub_1AFB919BC(&qword_1ED723220, sub_1AF47FEB4);
    v14 = v121;
    sub_1AFDFE768();
    v120 = v141;
    LOBYTE(v134) = 1;
    sub_1AFDFE768();
    v119 = v141;
    LOBYTE(v134) = 2;
    sub_1AFDFE768();
    v118 = v141;
    LOBYTE(v134) = 3;
    sub_1AFDFE768();
    v117 = v141;
    v35 = v131;
  }

  sub_1AFB936C8(0, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  LOBYTE(v134) = 4;
  sub_1AFB91A4C(&qword_1ED7231B0);
  v60 = v122;
  sub_1AFDFE6E8();
  if (v11)
  {
    v133 = v11;
    (*(v35 + 8))(v14, v60);
    v127 = 0;
    LODWORD(v128) = 0;
    v125 = 0;
    v126 = 0;
    LODWORD(v131) = 0;
    v18 = 0;
    LODWORD(v130) = 0;
    LODWORD(v129) = 0;
    v19 = 0;
    v124 = 0;
    v21 = 1;
    v22 = 0;
    v23 = 1036831949;
    v24 = 1;
    v27 = v120;
    v26 = v119;
    v25 = v118;
    v20 = v117;
    goto LABEL_6;
  }

  v61 = v35;
  if (BYTE1(v142))
  {
    v62 = 0;
  }

  else
  {
    v62 = v141;
  }

  v170 = (BYTE1(v142) | v142) & 1;
  v63 = v132;
  v64 = v132[3];
  v65 = v132[4];
  sub_1AF441150(v132, v64);
  if (sub_1AF69504C(1087, v64, v65))
  {
    v66 = v63[3];
    v67 = v63[4];
    sub_1AF441150(v63, v66);
    if (sub_1AF69504C(1071, v66, v67))
    {
      v68 = 0;
    }

    else
    {
      LOBYTE(v141) = 21;
      v68 = sub_1AFDFE718() & 1;
    }

    v72 = v132[3];
    v73 = v132[4];
    sub_1AF441150(v132, v72);
    if (sub_1AF69504C(1051, v72, v73))
    {
      sub_1AFB936C8(0, &qword_1EB642E50, MEMORY[0x1E69E76D8], MEMORY[0x1E69E6720]);
      LOBYTE(v134) = 20;
      sub_1AFB91838();
      sub_1AFDFE6E8();
      if ((v142 & 0x100) != 0)
      {
        v127 = 0;
        v68 = 1;
      }

      else
      {
        v77 = v141;
        if (v142)
        {
          v77 = 0;
        }

        v127 = v77;
        if (v142)
        {
          v68 = 1;
        }
      }
    }

    else
    {
      LOBYTE(v141) = 20;
      v127 = sub_1AFDFE7E8();
    }
  }

  else
  {
    v127 = 0;
    v68 = 0;
  }

  LOBYTE(v141) = 5;
  v69 = sub_1AFDFE718();
  LODWORD(v128) = v68;
  v70 = v69 & 1;
  LOBYTE(v141) = 6;
  v71 = sub_1AFDFE718();
  v115 = v70;
  v116 = v62;
  v114 = v71 & 1;
  LOBYTE(v141) = 7;
  LOBYTE(v131) = sub_1AFDFE718() & 1;
  LODWORD(v131) = v131;
  v75 = v132[3];
  v74 = v132[4];
  sub_1AF441150(v132, v75);
  if (sub_1AF69504C(1002, v75, v74))
  {
    v133 = 0;
    v76 = 1;
  }

  else
  {
    LOBYTE(v134) = 8;
    sub_1AFB917E4();
    sub_1AFDFE768();
    v133 = 0;
    v76 = v141;
  }

  HIDWORD(v113) = v76;
  v79 = v132[3];
  v78 = v132[4];
  sub_1AF441150(v132, v79);
  if (sub_1AF69504C(1032, v79, v78))
  {
    v126 = 0;
  }

  else
  {
    LOBYTE(v141) = 9;
    v80 = v133;
    v81 = sub_1AFDFE718();
    v133 = v80;
    if (v80)
    {
      (*(v61 + 8))(v121, v122);
      v125 = 0;
      v126 = 0;
      LODWORD(v130) = 0;
      LODWORD(v129) = 0;
      v124 = 0;
      v22 = 0;
LABEL_70:
      v23 = 1036831949;
LABEL_80:
      v27 = v120;
      v26 = v119;
      v25 = v118;
      v19 = v116;
      v18 = v114;
      v20 = v117;
      v21 = v115;
      v24 = BYTE4(v113);
      goto LABEL_6;
    }

    v126 = v81 & 1;
  }

  v83 = v132[3];
  v82 = v132[4];
  sub_1AF441150(v132, v83);
  v22 = 0;
  if (!sub_1AF69504C(1064, v83, v82))
  {
    LOBYTE(v141) = 10;
    v84 = v133;
    sub_1AFDFE738();
    v133 = v84;
    if (v84)
    {
      goto LABEL_68;
    }

    v22 = v85;
  }

  v87 = v132[3];
  v86 = v132[4];
  sub_1AF441150(v132, v87);
  if (!sub_1AF69504C(1069, v87, v86))
  {
    LOBYTE(v141) = 11;
    v88 = v133;
    v89 = sub_1AFDFE718();
    v133 = v88;
    if (!v88)
    {
      v125 = v89 & 1;
      goto LABEL_72;
    }

LABEL_68:
    (*(v61 + 8))(v121, v122);
    v125 = 0;
LABEL_69:
    LODWORD(v130) = 0;
    LODWORD(v129) = 0;
    v124 = 0;
    goto LABEL_70;
  }

  v125 = 0;
LABEL_72:
  v91 = v132[3];
  v90 = v132[4];
  sub_1AF441150(v132, v91);
  if (sub_1AF694FF8(2016, v91, v90) && (v93 = v132[3], v92 = v132[4], sub_1AF441150(v132, v93), sub_1AF69504C(3013, v93, v92)))
  {
    LOBYTE(v141) = 22;
    v94 = v133;
    v95 = sub_1AFDFE718();
    v133 = v94;
    if (v94)
    {
      (*(v61 + 8))(v121, v122);
      goto LABEL_69;
    }

    v124 = v95 & 1;
    LOBYTE(v141) = 23;
    sub_1AFDFE738();
    v133 = 0;
    v23 = v112;
  }

  else
  {
    v124 = 0;
    v23 = 1036831949;
  }

  LOBYTE(v141) = 12;
  v96 = v133;
  v97 = sub_1AFDFE6A8();
  v133 = v96;
  if (v96)
  {
    (*(v61 + 8))(v121, v122);
    LODWORD(v130) = 0;
    LODWORD(v129) = 0;
    goto LABEL_80;
  }

  LODWORD(v130) = v97 & 1;
  LOBYTE(v141) = 14;
  v98 = sub_1AFDFE6A8();
  v133 = 0;
  LODWORD(v129) = v98 & 1;
  LOBYTE(v141) = 13;
  v99 = sub_1AFDFE6C8();
  v133 = 0;
  v100 = v99;
  (*(v61 + 8))(v121, v122);
  *&v134 = v120;
  *(&v134 + 1) = v119;
  if ((v100 & 0x100000000) != 0)
  {
    v101 = 1.0;
  }

  else
  {
    v101 = *&v100;
  }

  *&v135 = v118;
  *(&v135 + 1) = v117;
  *&v136 = v116;
  LODWORD(v122) = v170;
  BYTE8(v136) = v170;
  *(&v136 + 9) = *v169;
  HIDWORD(v136) = *&v169[3];
  *&v137 = 0;
  BYTE8(v137) = v129;
  BYTE9(v137) = v130;
  BYTE10(v137) = v115;
  v102 = v114;
  BYTE11(v137) = v114;
  BYTE12(v137) = v131;
  v103 = v126;
  BYTE13(v137) = v126;
  *&v138 = __PAIR64__(LODWORD(v101), v22);
  v104 = v125;
  BYTE8(v138) = v125;
  *(&v138 + 9) = 0;
  *(&v138 + 11) = v167;
  HIBYTE(v138) = v168;
  v105 = v127;
  *&v139 = v127;
  v106 = v128;
  BYTE8(v139) = v128;
  WORD5(v139) = 0;
  v107 = BYTE4(v113);
  BYTE12(v139) = BYTE4(v113);
  v108 = v124;
  BYTE13(v139) = v124;
  v140 = v23;
  sub_1AF445DA0(&v134, &v141);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v132);
  v141 = v120;
  v142 = v119;
  v143 = v118;
  v144 = v117;
  v145 = v116;
  v146 = v122;
  *v147 = *v169;
  *&v147[3] = *&v169[3];
  v148 = 0;
  v149 = v129;
  v150 = v130;
  v151 = v115;
  v152 = v102;
  v153 = v131;
  v154 = v103;
  v155 = v22;
  v156 = LODWORD(v101);
  v157 = v104;
  v158 = 0;
  v159 = v167;
  v160 = v168;
  v161 = v105;
  v162 = v106;
  v163 = 0;
  v164 = v107;
  v165 = v108;
  v166 = v23;
  result = sub_1AF57A684(&v141);
  v109 = v139;
  *(v10 + 64) = v138;
  *(v10 + 80) = v109;
  *(v10 + 96) = v140;
  v110 = v135;
  *v10 = v134;
  *(v10 + 16) = v110;
  v111 = v137;
  *(v10 + 32) = v136;
  *(v10 + 48) = v111;
  return result;
}

uint64_t sub_1AFB91480(void *a1)
{
  sub_1AFB925A0(0, &qword_1ED722F90, sub_1AFB9166C, &type metadata for Seed.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB9166C();
  sub_1AFDFF3B8();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v15 = 0;
  v9 = sub_1AFDFE7D8();
  v14 = 1;
  v10 = sub_1AFDFE718();
  if (v10)
  {
    v12 = 0x100000000;
    v9 = arc4random();
  }

  else
  {
    v12 = 0;
  }

  (*(v5 + 8))(v8, v4);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v12 | v9;
}

unint64_t sub_1AFB9166C()
{
  result = qword_1ED7240B8;
  if (!qword_1ED7240B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7240B8);
  }

  return result;
}

unint64_t sub_1AFB916C0()
{
  result = qword_1EB642E30;
  if (!qword_1EB642E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642E30);
  }

  return result;
}

uint64_t sub_1AFB91714(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AFB925A0(255, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFB91790()
{
  result = qword_1ED725348;
  if (!qword_1ED725348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725348);
  }

  return result;
}

unint64_t sub_1AFB917E4()
{
  result = qword_1ED725318;
  if (!qword_1ED725318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725318);
  }

  return result;
}

unint64_t sub_1AFB91838()
{
  result = qword_1EB642E58;
  if (!qword_1EB642E58)
  {
    sub_1AFB936C8(255, &qword_1EB642E50, MEMORY[0x1E69E76D8], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642E58);
  }

  return result;
}

unint64_t sub_1AFB918CC()
{
  result = qword_1EB642E68;
  if (!qword_1EB642E68)
  {
    sub_1AFB936C8(255, &qword_1EB642E60, &type metadata for EntityComponentReference, MEMORY[0x1E69E62F8]);
    sub_1AFB91968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642E68);
  }

  return result;
}

unint64_t sub_1AFB91968()
{
  result = qword_1EB642E70;
  if (!qword_1EB642E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642E70);
  }

  return result;
}

uint64_t sub_1AFB919BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1AFB936C8(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AFB91A4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AFB936C8(255, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFB91AD0()
{
  result = qword_1EB642E88;
  if (!qword_1EB642E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642E88);
  }

  return result;
}

void sub_1AFB91B24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AFB91B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AFB91BE8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1AF441194(a1, v10);
  sub_1AF5C5358(0, &qword_1ED72FFF0);
  sub_1AF5C5358(0, qword_1ED724348);
  if (swift_dynamicCast())
  {
    sub_1AF0FBA54(v13, v15);
    v6 = v16;
    v7 = v17;
    sub_1AF441150(v15, v16);
    LOBYTE(v6) = (*(v7 + 64))(v6, v7);
    sub_1AF67CACC(&type metadata for ParticleSpawnID, &off_1F254ED98, a3);
    sub_1AFB73D64(v6);
    sub_1AF441194(v15, v13);
    if ((swift_dynamicCast() & 1) != 0 && v12 <= 1 && !v11)
    {
      v8 = v10[20];
      sub_1AFB73D64(5u);
      *(a4 + 264) = 1;
      *(a4 + 288) = v8;
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v15);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    return sub_1AFB93108(v13, &qword_1ED724340, qword_1ED724348, &protocol descriptor for ParticleRendererWithSystem);
  }
}

void sub_1AFB91D98(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = 0;
  v5 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 64);
  v6 = *(v1 + 32);
  v90[0] = *(v1 + 16);
  v90[1] = v6;
  v91 = *(v1 + 48);
  sub_1AF6B06C0(a1, v90, 0x200000000, v72);
  if (*v72)
  {
    if (v75 <= 0 || (v64 = *(&v73 + 1)) == 0)
    {
      sub_1AFB91B88(v72, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
      goto LABEL_22;
    }

    v56 = v1;
    v57 = v3;
    v62 = *&v72[40];
    v7 = *(&v74 + 1);
    v8 = *(v74 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v9 = *(*(&v74 + 1) + 32);
    v80 = *v72;
    v81 = *&v72[8];
    v82 = *&v72[24];
    *&v76[32] = *&v72[32];
    v77 = v73;
    v78 = v74;
    v79 = v75;
    *v76 = *v72;
    *&v76[16] = *&v72[16];
    sub_1AF5DD298(v76, v70);
    v10 = 0;
    v60 = v8;
    v58 = v9;
    while (1)
    {
      v68 = v4;
      v11 = (v62 + 48 * v10);
      v12 = *v11;
      v66 = v11[1];
      v13 = *(v11 + 2);
      v14 = *(v11 + 3);
      v16 = *(v11 + 4);
      v15 = *(v11 + 5);
      if (v8)
      {
        v17 = *(v15 + 376);

        os_unfair_lock_lock(v17);
        os_unfair_lock_lock(*(v15 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v9);
      v18 = *(v7 + 64);
      v70[0] = *(v7 + 48);
      v70[1] = v18;
      v71 = *(v7 + 80);
      v19 = *(v7 + 32);
      v20 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;

      *(v7 + 48) = ecs_stack_allocator_allocate(v19, 48 * v20, 8);
      *(v7 + 56) = v20;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 64) = 0;

      v21 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v13, v14, v16, v7);
      v22 = sub_1AF64B110(&type metadata for EmitterRuntime, &off_1F2563418, v13, v14, v16, v7);
      if (v13)
      {
        if (v16)
        {
          v23 = (v21 + 68);
          v24 = (v22 + 96);
          v4 = v68;
          do
          {
            v25 = *v23;
            v23 += 26;
            *v24 = *v24 + (v5 * v25);
            v24 += 212;
            --v16;
          }

          while (v16);
          goto LABEL_18;
        }
      }

      else if (v12 != v66)
      {
        v26 = (v22 + 848 * v12 + 96);
        v27 = (v21 + 104 * v12 + 68);
        v28 = v66 - v12;
        v4 = v68;
        do
        {
          v29 = *v27;
          v27 += 26;
          *v26 = *v26 + (v5 * v29);
          v26 += 212;
          --v28;
        }

        while (v28);
        goto LABEL_18;
      }

      v4 = v68;
LABEL_18:
      sub_1AF630994(v7, &v80, v70);
      sub_1AF62D29C(v15);
      v9 = v58;
      ecs_stack_allocator_pop_snapshot(v58);
      v8 = v60;
      if (v60)
      {
        os_unfair_lock_unlock(*(v15 + 344));
        os_unfair_lock_unlock(*(v15 + 376));
      }

      if (++v10 == v64)
      {
        v30 = MEMORY[0x1E69E6720];
        sub_1AFB91B88(v72, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
        sub_1AFB91B88(v72, &qword_1ED725EA0, &type metadata for QueryResult, v30, sub_1AFB936C8);
        v2 = v56;
        v3 = v57;
        break;
      }
    }
  }

LABEL_22:
  v31 = *(v2 + 72);
  v88[0] = *(v2 + 56);
  v88[1] = v31;
  v89 = *(v2 + 88);
  sub_1AF6B06C0(v3, v88, 0x200000000, v76);
  if (*v76)
  {
    if (v79 >= 1)
    {
      v65 = *(&v77 + 1);
      if (*(&v77 + 1))
      {
        v32 = 0;
        v63 = *&v76[40];
        v33 = *(&v78 + 1);
        v34 = *(*(&v78 + 1) + 32);
        v35 = *(v78 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v83 = *v76;
        v84 = *&v76[8];
        v85 = *&v76[24];
        v59 = v35;
        v61 = v34;
        do
        {
          v36 = (v63 + 48 * v32);
          v69 = *v36;
          v67 = v36[1];
          v37 = *(v36 + 2);
          v38 = *(v36 + 3);
          v40 = *(v36 + 4);
          v39 = *(v36 + 5);
          if (v35)
          {
            v41 = *(v39 + 376);

            os_unfair_lock_lock(v41);
            os_unfair_lock_lock(*(v39 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v34);
          v42 = *(v33 + 64);
          v86[0] = *(v33 + 48);
          v86[1] = v42;
          v87 = *(v33 + 80);
          v43 = *(*(*(*(v39 + 40) + 16) + 32) + 16) + 1;
          *(v33 + 48) = ecs_stack_allocator_allocate(*(v33 + 32), 48 * v43, 8);
          *(v33 + 56) = v43;
          *(v33 + 72) = 0;
          *(v33 + 80) = 0;
          *(v33 + 64) = 0;
          v44 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v37, v38, v40, v33);
          v45 = sub_1AF64B110(&type metadata for EmitterRuntime, &off_1F2563418, v37, v38, v40, v33);
          v46 = sub_1AF64B110(&type metadata for LocalAABB, &off_1F25104C0, v37, v38, v40, v33);
          if (v37)
          {
            if (v40)
            {
              v47 = (v46 + 16);
              v48 = (v45 + 192);
              v49 = (v44 + 61);
              v34 = v61;
              v35 = v59;
              do
              {
                if (*(v49 - 3) == 1 && (*v49 & 1) == 0)
                {
                  v50 = *v48;
                  *(v47 - 1) = *(v48 - 1);
                  *v47 = v50;
                }

                v47 += 2;
                v48 += 53;
                v49 += 104;
                --v40;
              }

              while (v40);
              goto LABEL_39;
            }
          }

          else if (v69 != v67)
          {
            v51 = v67 - v69;
            v52 = (v44 + 104 * v69 + 61);
            v53 = (v46 + 32 * v69 + 16);
            v54 = (v45 + 848 * v69 + 192);
            v34 = v61;
            v35 = v59;
            do
            {
              if (*(v52 - 3) == 1 && (*v52 & 1) == 0)
              {
                v55 = *v54;
                *(v53 - 1) = *(v54 - 1);
                *v53 = v55;
              }

              v52 += 104;
              v53 += 2;
              v54 += 53;
              --v51;
            }

            while (v51);
            goto LABEL_39;
          }

          v34 = v61;
          v35 = v59;
LABEL_39:
          sub_1AF630994(v33, &v83, v86);
          sub_1AF62D29C(v39);
          ecs_stack_allocator_pop_snapshot(v34);
          if (v35)
          {
            os_unfair_lock_unlock(*(v39 + 344));
            os_unfair_lock_unlock(*(v39 + 376));
          }

          ++v32;
        }

        while (v32 != v65);
      }
    }

    sub_1AFB91B88(v76, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
  }
}

void sub_1AFB9246C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_1AFB924D4()
{
  result = qword_1EB6327A0;
  if (!qword_1EB6327A0)
  {
    sub_1AFDFC128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6327A0);
  }

  return result;
}

void sub_1AFB9252C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AFB925A0(255, a3, sub_1AF43A0C8, MEMORY[0x1E69E6448], a4);
    v5 = sub_1AFDFEA18();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AFB925A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1AFB92608()
{
  if (!qword_1EB633200)
  {
    type metadata accessor for BufferSlice(255);
    sub_1AF85A6D8();
    v0 = sub_1AFDFE4C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633200);
    }
  }
}

uint64_t sub_1AFB92698(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = qword_1ED725EC0;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = qword_1ED73B5C0;

    if (v11 == v13)
    {
LABEL_25:
      v14 = 2;
      goto LABEL_26;
    }

    if (v11 != a5)
    {
LABEL_6:
      v14 = 1;
LABEL_26:

      return v14;
    }

    if (*(a3 + 61) == 1)
    {
      if ((*(a4 + 336) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (*(a4 + 336))
    {
      goto LABEL_6;
    }

    if (*(a3 + 72) == 1)
    {
      if ((*(a4 + 49) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((a3[6] == 0) == *(a4 + 49))
    {
      goto LABEL_6;
    }

    v15 = sub_1AF3C9600(a2);
    if ((*(a4 + 48) & 1) == 0)
    {
      v16 = (v15 & 0xFF00000000) == 0x200000000 ? 0 : v15;
      if (v16 == *(a4 + 40))
      {
        sub_1AF3CF3A4(a2, v56);
        if (v58 == 2)
        {
          if ((*(a4 + 576) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else if (*(a4 + 576) && v56[0] == *(a4 + 580))
        {
          v47 = 0;
          v48 = *(a4 + 592);
          while (1)
          {
            v54 = v57;
            v50 = *(&v54 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3)));
            v55 = v48;
            v51 = *(&v55 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3)));
            v49 = v50 == v51;
            if (v47 == 2)
            {
              break;
            }

            while (1)
            {
              ++v47;
              if (v49)
              {
                break;
              }

              v49 = 0;
              if (v47 == 2)
              {
                goto LABEL_66;
              }
            }
          }

          if (v50 == v51)
          {
LABEL_23:
            v17 = *a3;
            v18 = *(*a3 + 16);
            if (v18)
            {
              v19 = 0;
              v52 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
              v53 = v17 + 32;
              do
              {
                v21 = (v53 + 8 * v19);
                v22 = v21[1];
                v23 = *v21;
                v24 = v23 == -1 && v22 == 0;
                if (!v24 && (v23 & 0x80000000) == 0 && v52[1] > v23)
                {
                  v25 = (*v52 + 12 * v23);
                  v26 = v22 == -1 || v25[2] == v22;
                  if (v26 && (*(*(*(a1 + 144) + 8 * *v25 + 32) + 120) & 1) != 0)
                  {
                    v27 = *(*(*(*(a1 + 88) + 8 * *(v25 + 3) + 32) + 16) + 32);
                    v28 = *(v27 + 16);
                    v29 = (v27 + 32);
                    v30 = v28 + 1;
                    while (--v30)
                    {
                      v31 = v29 + 2;
                      v32 = *v29;
                      if (swift_conformsToProtocol2())
                      {
                        v33 = v32 == 0;
                      }

                      else
                      {
                        v33 = 1;
                      }

                      v29 = v31;
                      if (!v33)
                      {
                        v34 = *(v25 + 2);
                        v35 = *(*(a1 + 144) + 8 * *v25 + 32);
                        v36 = *(v35[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState);

                        if (v36 == 4)
                        {
                          v38 = *(v37 + 233);
                          v39 = *(v37 + 224);

                          v40 = v39 > 1;
                          if ((v38 & 1) == 0)
                          {
                            v40 = v39 > 0;
                          }
                        }

                        else
                        {

                          v40 = 1;
                        }

                        v41 = v35[24];
                        if (!v41 || (*(v41 + 8 * (v34 >> 6)) & (1 << v34)) == 0)
                        {
                          break;
                        }

                        if (v40)
                        {
                          *(v35[26] + 8 * (v34 >> 6)) |= 1 << v34;
                        }

                        v42 = v23 | (v22 << 32);

                        v43 = sub_1AF67CACC(&type metadata for ParticleSpawnState, &off_1F2567280, v42);

                        if (v43)
                        {

                          v44 = sub_1AF67CACC(&type metadata for ParticleBurstSpawn, &off_1F2567500, v42);

                          if (!v44)
                          {

                            v45 = sub_1AF67CACC(&type metadata for ParticlePeriodicBurstSpawn, &off_1F2567460, v42);

                            if (!v45)
                            {

                              v46 = sub_1AF67CACC(&type metadata for ParticleSpawnDuration, &off_1F2567780, v42);

                              if (!v46)
                              {
                                break;
                              }
                            }
                          }
                        }

                        goto LABEL_66;
                      }
                    }
                  }
                }

                ++v19;
                v14 = 2;
              }

              while (v19 != v18);
              goto LABEL_26;
            }

            goto LABEL_25;
          }
        }
      }
    }

LABEL_66:
    v14 = 0;
    goto LABEL_26;
  }

  return 2;
}

void sub_1AFB92AF4()
{
  if (!qword_1EB642E98)
  {
    sub_1AFB92B5C();
    v0 = sub_1AFDFE4C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB642E98);
    }
  }
}

unint64_t sub_1AFB92B5C()
{
  result = qword_1EB630CB0;
  if (!qword_1EB630CB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB630CB0);
  }

  return result;
}

uint64_t sub_1AFB92BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, uint64_t a7)
{
  v12 = *(a7 + 24);

  if (!HIDWORD(a6) && a6 == -1)
  {

    goto LABEL_7;
  }

  v13 = sub_1AF3C9078(a6);
  v15 = v14;

  if (!v15)
  {
LABEL_7:
    v15 = *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
    if (v15)
    {
      v18 = sub_1AFDFE238();
      LODWORD(v15) = vfx_counters.addCounter(name:scope:kind:)(v18, v19, 0, 0, v15);
    }

    else
    {
    }

    goto LABEL_12;
  }

  v21 = a2;
  v16 = *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
  if (v16)
  {
    *&v32[0] = v13;
    *(&v32[0] + 1) = v15;
    MEMORY[0x1B2718AE0](47, 0xE100000000000000);
    v17 = sub_1AFDFE238();
    MEMORY[0x1B2718AE0](v17);

    LODWORD(v15) = vfx_counters.addCounter(name:scope:kind:)(v13, v15, 0, 0, v16);
  }

  else
  {

    LODWORD(v15) = 0;
  }

  a2 = v21;
LABEL_12:
  *&v25 = a1;
  *(&v25 + 1) = a6;
  *&v26 = "ParticleRibbonSystem";
  *(&v26 + 1) = 20;
  LOBYTE(v27) = 2;
  *(&v27 + 1) = *v31;
  DWORD1(v27) = *&v31[3];
  *(&v27 + 1) = a1;
  *&v28 = &off_1F2551E38;
  *(&v28 + 1) = 700;
  *&v29 = a4;
  WORD4(v29) = 257;
  BYTE10(v29) = a5 & 1;
  HIDWORD(v29) = v15;
  *&v30 = a2;
  *(&v30 + 1) = a3;
  os_unfair_lock_lock(*(a7 + 56));
  v32[2] = v27;
  v32[3] = v28;
  v32[4] = v29;
  v32[5] = v30;
  v32[0] = v25;
  v32[1] = v26;
  sub_1AF6D8FC4(&v25, v24);
  sub_1AF64D800(0, 0, v32);
  sub_1AF64D800(0, 0, v32);
  sub_1AF6D8FFC(&v25);
  *(a7 + 160) = 257;
  os_unfair_lock_unlock(*(a7 + 56));
  return sub_1AF6D8FFC(&v25);
}

uint64_t sub_1AFB92E7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1AFB92EC8(uint64_t a1, uint64_t a2, char a3)
{
  if (((1 << a3) & 0x3A) != 0)
  {
    return sub_1AFA02874(v3 + 24);
  }

  return result;
}

uint64_t sub_1AFB92EEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1AFB92F34(uint64_t a1, uint64_t a2, char a3)
{
  if (((1 << a3) & 0x3A) != 0)
  {
    return sub_1AFA324E0((v3 + 24));
  }

  return result;
}

uint64_t sub_1AFB92FD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AFB91B24(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AFB93040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AFB930A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AFB93108(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1AFB9246C(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AFB93178()
{

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t sub_1AFB931F8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t getEnumTagSinglePayload for EmitterDescription.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EmitterDescription.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 initializeWithCopy for NeighborGrid(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NeighborGrid(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NeighborGrid(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AFB934BC()
{
  result = qword_1EB642EA0;
  if (!qword_1EB642EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642EA0);
  }

  return result;
}

unint64_t sub_1AFB93514()
{
  result = qword_1EB642EA8;
  if (!qword_1EB642EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642EA8);
  }

  return result;
}

unint64_t sub_1AFB9356C()
{
  result = qword_1EB642EB0;
  if (!qword_1EB642EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642EB0);
  }

  return result;
}

unint64_t sub_1AFB935C4()
{
  result = qword_1EB642EB8;
  if (!qword_1EB642EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642EB8);
  }

  return result;
}

unint64_t sub_1AFB93618(uint64_t a1)
{
  *(a1 + 8) = sub_1AFB917E4();
  result = sub_1AFB91AD0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AFB9364C()
{
  result = qword_1EB642EC0;
  if (!qword_1EB642EC0)
  {
    sub_1AFB936C8(255, &qword_1EB642EC8, &type metadata for EmitterDescription.PhysicsSimulation, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642EC0);
  }

  return result;
}

void sub_1AFB936C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AFB9371C()
{
  result = qword_1EB642ED0;
  if (!qword_1EB642ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642ED0);
  }

  return result;
}

unint64_t sub_1AFB93774()
{
  result = qword_1EB642ED8;
  if (!qword_1EB642ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642ED8);
  }

  return result;
}

unint64_t sub_1AFB937CC()
{
  result = qword_1EB642EE0;
  if (!qword_1EB642EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642EE0);
  }

  return result;
}

unint64_t sub_1AFB93824()
{
  result = qword_1EB642EE8;
  if (!qword_1EB642EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642EE8);
  }

  return result;
}

unint64_t sub_1AFB9387C()
{
  result = qword_1EB631E20;
  if (!qword_1EB631E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631E20);
  }

  return result;
}

unint64_t sub_1AFB938D4()
{
  result = qword_1ED725338;
  if (!qword_1ED725338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725338);
  }

  return result;
}

unint64_t sub_1AFB9392C()
{
  result = qword_1ED725340;
  if (!qword_1ED725340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725340);
  }

  return result;
}

unint64_t sub_1AFB93984()
{
  result = qword_1EB642EF8;
  if (!qword_1EB642EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642EF8);
  }

  return result;
}

unint64_t sub_1AFB939DC()
{
  result = qword_1EB642F00;
  if (!qword_1EB642F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642F00);
  }

  return result;
}

unint64_t sub_1AFB93A34()
{
  result = qword_1ED7240A8;
  if (!qword_1ED7240A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7240A8);
  }

  return result;
}

unint64_t sub_1AFB93A8C()
{
  result = qword_1ED7240B0;
  if (!qword_1ED7240B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7240B0);
  }

  return result;
}

unint64_t sub_1AFB93AE0()
{
  result = qword_1ED725328;
  if (!qword_1ED725328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725328);
  }

  return result;
}

uint64_t sub_1AFB93B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(a8 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v24 = v28 - v23;
  if (!v18)
  {
    result = v22(0, 0, v28 - v23);
    v16 = v24;
    if (!v11)
    {
      return result;
    }

    return (*(v13 + 32))(a11, v16, a8);
  }

  v25 = *(*(v21 - 8) + 72);
  v26 = *(*(v20 - 8) + 72);
  if (v25 != v26)
  {
    v19 = v26 * v19 / v25;
  }

  result = v22(v18, v19, v16);
  if (v11)
  {
    return (*(v13 + 32))(a11, v16, a8);
  }

  return result;
}

uint64_t sub_1AFB93CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v18 = qword_1ED73B840;
  v19 = 0;
  v20 = 2;
  v21 = 0;
  v22 = 2;
  v23 = 0;
  sub_1AF5FD7D8(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for Particle;
  *(inited + 40) = &off_1F252D7A8;
  sub_1AF5F58E4(inited, 1, v14);
  swift_setDeallocating();
  sub_1AFA1CF6C();
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 56) = &type metadata for EmitterReference;
  *(v7 + 64) = &off_1F2563D20;
  *(v7 + 32) = a1;
  v8 = v7 + 32;
  sub_1AF5FC13C(v7, v15);
  sub_1AF692DB0(v14);
  swift_setDeallocating();
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  if ((a2 & 0x100000000) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = a2;
  }

  v11 = v15[2];
  v12 = v16;
  v13 = v17;
  *a3 = v15[0];
  *(a3 + 8) = v10;
  *(a3 + 12) = (a2 & 0x100000000uLL) >> 31;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = v13;
  return result;
}

uint64_t sub_1AFB93E58()
{
  v1 = *v0;
  v2 = *(v0 + 9);
  v3 = *(v0 + 8);

  v4 = v3 == -1 && v2 == 0;
  if (!v4 && (v3 & 0x80000000) == 0 && *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v3)
  {
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v3);
    v6 = v2 == -1 || v5[2] == v2;
    if (v6 && (sub_1AF685724(*(*(v1 + 144) + 8 * *v5 + 32), *(v5 + 2), 104) & 0x100000000) == 0)
    {
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v8 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v8);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB9402C()
{
  v1 = *v0;
  v2 = *(v0 + 9);
  v3 = *(v0 + 8);

  v4 = v3 == -1 && v2 == 0;
  if (v4 || (v3 & 0x80000000) != 0 || *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v3 || ((v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v3), v2 != -1) ? (v6 = v5[2] == v2) : (v6 = 1), !v6 || (v7 = sub_1AF6856B0(*(*(v1 + 144) + 8 * *v5 + 32), *(v5 + 2), 104), v7 == 3)))
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v10 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v10);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    v8 = v7;

    return v8;
  }

  return result;
}

uint64_t sub_1AFB941E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_1AFDFDD58();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v16 - v10;
  v12 = *(v3 + 8);

  sub_1AF67CB9C(v12, a1, v11);

  v13 = *(a1 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, a1) != 1)
  {
    return (*(v13 + 32))(a3, v11, a1);
  }

  (*(*(*(a2 + 8) + 8) + 8))(a1);
  result = (v14)(v11, 1, a1);
  if (result != 1)
  {
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_1AFB943A8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 44);
  v3 = *(v0 + 40);

  v4 = v3 == -1 && v2 == 0;
  if (!v4 && (v3 & 0x80000000) == 0 && *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v3)
  {
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v3);
    v6 = v2 == -1 || v5[2] == v2;
    if (v6 && (sub_1AF685724(*(*(v1 + 144) + 8 * *v5 + 32), *(v5 + 2), 104) & 0x100000000) == 0)
    {
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v8 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v8);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB9457C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 40);
  v5 = *(*(a4 + 8) + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

  v6 = v5;

  sub_1AFCBF008(v4, sub_1AFB97B0C);
}

uint64_t sub_1AFB94680()
{
  v1 = *(v0 + 32);

  sub_1AFCBF008(v1, sub_1AFB97B54);
}

uint64_t sub_1AFB946F8()
{
  v1 = *v0;
  v2 = *(v0 + 9);
  v3 = *(v0 + 8);

  v4 = v3 == -1 && v2 == 0;
  if (v4 || (v3 & 0x80000000) != 0 || *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v3 || ((v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v3), v2 != -1) ? (v6 = v5[2] == v2) : (v6 = 1), !v6 || (v7 = sub_1AF685798(*(*(v1 + 144) + 8 * *v5 + 32), *(v5 + 2), 848), (v8 & 0x100) != 0)))
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v11 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v11);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    v9 = v7;

    return v9;
  }

  return result;
}

uint64_t sub_1AFB948D8()
{
  v1 = *v0;
  v2 = v0[4];

  v3 = sub_1AF67E868(v2, v1);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
    }

    else
    {
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
      v5 = sub_1AF656F38();
      MEMORY[0x1B2718AE0](v5);

      MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
      MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
      MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    if (v3)
    {
      sub_1AF68B2C0(v2, v1, &v6);
    }

    else
    {
      sub_1AF3C9244(v2, &v6);
    }
  }

  return result;
}

uint64_t sub_1AFB94ABC()
{
  v1 = *v0;
  v2 = *(v0 + 9);
  v3 = *(v0 + 8);

  v4 = v3 == -1 && v2 == 0;
  if (v4 || (v3 & 0x80000000) != 0 || *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v3 || ((v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v3), v2 != -1) ? (v6 = v5[2] == v2) : (v6 = 1), !v6 || (v7 = sub_1AF685A48(*(*(v1 + 144) + 8 * *v5 + 32), *(v5 + 2), 104), v7 == 2)))
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v10 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v10);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    v8 = v7;

    return v8 & 1;
  }

  return result;
}

double sub_1AFB94C78()
{
  if (sub_1AFB9402C() > 1u)
  {
    v7 = *(v0 + 8);

    sub_1AF3C9244(v7, &v21);

    if (v22)
    {

      v18 = sub_1AF5B0544(v7);

      return v18;
    }

    else
    {
      return *v21.i64;
    }
  }

  else
  {
    v1 = *(v0 + 32);

    sub_1AFB95040(v1, &v19);
    v14 = v19.columns[1];
    v16 = v19.columns[0];
    v10 = v19.columns[3];
    v12 = v19.columns[2];

    if (v20)
    {
      v2 = -1;
    }

    else
    {
      v2 = 0;
    }

    v3 = vdupq_n_s32(v2);
    v17 = vbslq_s8(v3, xmmword_1AFE20150, v16);
    v15 = vbslq_s8(v3, xmmword_1AFE20160, v14);
    v13 = vbslq_s8(v3, xmmword_1AFE20180, v12);
    v11 = vbslq_s8(v3, xmmword_1AFE201A0, v10);
    v4 = *(v0 + 8);

    sub_1AF3C9244(v4, &v21);

    if (v22)
    {

      *v5.i64 = sub_1AF5B0544(v4);
      v9 = v5;

      v6 = v9;
    }

    else
    {
      v6 = v21;
    }

    *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v6.f32[0]), v15, *v6.f32, 1), v13, v6, 2), v11, v6, 3).u64[0];
  }

  return result;
}

uint64_t sub_1AFB94E78(uint64_t (*a1)(void, void, uint64_t))
{
  v3 = *v1;
  v4 = *(v1 + 9);
  v5 = *(v1 + 8);

  v6 = v5 == -1 && v4 == 0;
  if (v6 || (v5 & 0x80000000) != 0 || *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v5 || ((v7 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v5), v4 != -1) ? (v8 = v7[2] == v4) : (v8 = 1), !v8 || (v9 = a1(*(*(v3 + 144) + 8 * *v7 + 32), *(v7 + 2), 848)) == 0))
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v12 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v12);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    v10 = v9;

    return v10;
  }

  return result;
}

void sub_1AFB95040(unint64_t a1@<X0>, simd_float4x4 *a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v6 = sub_1AF6856B0(*(*(v2 + 144) + 8 * *v5 + 32), *(v5 + 2), 104);
      if (v6 <= 1)
      {
        if (v6)
        {
          sub_1AF67D000(a1, v2, &v11);
          v13 = v11;
          v7 = v12;
          goto LABEL_15;
        }

        sub_1AF3C9330(a1, &v9);
        if ((v10 & 1) == 0)
        {
          v7 = 0;
          v13 = v9;
          goto LABEL_15;
        }

        sub_1AF3C9244(a1, &v11);
        if ((v12 & 1) == 0)
        {
          v13 = __invert_f4(v11);
          v7 = 0;
LABEL_15:
          *a2 = v13;
          a2[1].columns[0].i8[0] = v7;
          return;
        }

LABEL_12:
        v7 = 1;
        v13.columns[0] = 0uLL;
        v13.columns[1] = 0uLL;
        v13.columns[2] = 0uLL;
        v13.columns[3] = 0uLL;
        goto LABEL_15;
      }

      if (v6 == 2)
      {
        goto LABEL_12;
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v8 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v8);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AFDFE518();
  __break(1u);
}

uint64_t (*sub_1AFB95274(_OWORD *a1, uint64_t a2, uint64_t a3))(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v7 = swift_allocObject();
  v8 = a1[5];
  *(v7 + 104) = a1[4];
  *(v7 + 120) = v8;
  v9 = a1[7];
  *(v7 + 136) = a1[6];
  *(v7 + 152) = v9;
  v10 = a1[1];
  *(v7 + 40) = *a1;
  *(v7 + 56) = v10;
  v11 = a1[3];
  *(v7 + 72) = a1[2];
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = v3;
  *(v7 + 88) = v11;
  swift_unknownObjectRetain();
  sub_1AF68A8E0(a1, &v13);
  return sub_1AFB97BD8;
}

void sub_1AFB95330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 <= 2u)
  {
    if (!a5)
    {
      ObjectType = swift_getObjectType();
      v13 = swift_conformsToProtocol2();
      if (v13)
      {
        (*(v13 + 24))(a6, a3, a4, 0, ObjectType, v13);
        return;
      }

      goto LABEL_10;
    }

    if (a5 != 1)
    {
      return;
    }
  }

  v10 = swift_getObjectType();
  v11 = swift_conformsToProtocol2();
  if (!v11)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  (*(v11 + 32))(a6, a3, a4, a5, v10, v11);
}

uint64_t sub_1AFB95460(uint64_t result, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = a2;
  v18 = result;
  if (*(result + 528) > 0 || !*a2)
  {
    v19 = (*(a13 + 24))();
    v65 = v18;
    v62 = a4;
    if (!v19)
    {
LABEL_17:
      v26 = *(v18 + 320);
      v77 = v26;
      v61 = v17;

      if (a6)
      {

        sub_1AF490060(a6);
        v26 = v77;
      }

      sub_1AFDFF308();
      swift_unknownObjectRetain();

      sub_1AF88352C(v71, v62, a5, a8, v26);
      v27 = sub_1AFDFF2E8();
      *&v72 = v62;
      *(&v72 + 1) = a5;
      v73 = 0;
      v74 = a8;
      v75 = v26;
      v76 = v27;
      v28 = sub_1AF73BD84(&v72, 0, a9 & 1, a10);
      v30 = v29;

      swift_unknownObjectRelease();

      if (!v28)
      {
        if (a9)
        {
        }

        sub_1AFDFE218();

        v66 = 0x20676E697373694DLL;
        v67 = 0xEF206C656E72656BLL;
        MEMORY[0x1B2718AE0](v62, a5);
        goto LABEL_66;
      }

      v31 = *(a13 + 32);
      v32 = swift_unknownObjectRetain();
      v64 = v28;
      v31(v32, a12, a13);
      v33 = *(a13 + 56);

      v33(v62, a5, a12, a13);
      if (a6)
      {
        v34 = a6;
      }

      else
      {
        v34 = MEMORY[0x1E69E7CC0];
      }

      (*(a13 + 80))(v34, a12, a13);
      v17 = v61;
LABEL_24:
      v35 = *v17;
      if (!*v17)
      {
        return swift_unknownObjectRelease();
      }

      v36 = *(v65 + 424);
      v63 = *(v65 + 432);
      if (v36)
      {
        v37 = *(v65 + 440);
        if (*(v65 + 336))
        {
          v38 = *(v65 + 512);
        }

        else
        {
          LODWORD(v38) = 0;
        }

        ObjectType = swift_getObjectType();
        v40 = *(v65 + 344);
        v41 = (*(v65 + 352) + *(v65 + 368) * v38) | (*(v65 + 368) << 32);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        sub_1AF6F34C4(v40, v41, 0, 4, ObjectType);
        sub_1AF6F353C(v36, v63, v37, 0);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v42 = v17[1];
      v43 = v17[2];
      v44 = v17[5];

      v45 = sub_1AF67ECF0(v44, v42);

      if (v45 == 2 || (, v46 = sub_1AF3CD0F8(v43), v48 = v47, , (v48 & 1) != 0))
      {
        v46 = 0;
        v49 = 1;
      }

      else
      {
        if ((v45 & 1) == 0)
        {
          v46 = 0;
        }

        v49 = v45 ^ 1;
      }

      v50 = *(a11 + 45);
      if (v50 == 3)
      {
        if (v49)
        {
          swift_getObjectType();
          [v35 setBuffer:*(v65 + 144) offset:60 atIndex:0];
          v51 = v63 + 96;
LABEL_61:
          sub_1AF6F46F4(v64, v36, v51);
          goto LABEL_62;
        }

        sub_1AF442324(v65, &v66);
        if (v46 == -1)
        {
          v57 = 15;
        }

        else
        {
          v57 = v46;
        }

        swift_getObjectType();
        [v35 setBuffer:v68 offset:4 * v57 atIndex:0];
        sub_1AF58D38C(&v66);
        sub_1AF442324(v65, &v66);
        v58 = v69;
        v59 = v70 + 12 * v46 + 508;
LABEL_59:
        sub_1AF58D38C(&v66);
        sub_1AF6F46F4(v64, v58, v59);
LABEL_62:
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      if (v50 == 2)
      {
        if ((v49 & 1) == 0)
        {
          sub_1AF442324(v65, &v66);
          if (v46 == -1)
          {
            v60 = 15;
          }

          else
          {
            v60 = v46;
          }

          swift_getObjectType();
          [v35 setBuffer:v68 offset:4 * v60 atIndex:0];
          sub_1AF58D38C(&v66);
          sub_1AF442324(v65, &v66);
          v58 = v69;
          v59 = v70 + 12 * v46 + 700;
          goto LABEL_59;
        }

        if (*(v65 + 120) != 1)
        {
          swift_getObjectType();
          [v35 setBuffer:*(v65 + 144) offset:60 atIndex:0];
          v51 = v63 + 108;
          goto LABEL_61;
        }

        v52 = 0;
        v53 = 0;
        v54 = *(v65 + 128);
        v55 = v63 + 700;
        v56 = v64;
        do
        {
          if (v53 >> 6) < *(v54 + 24) && ((*(*(v54 + 32) + 8 * (v53 >> 6)) >> v53))
          {
            swift_getObjectType();
            [v35 setBuffer:*(v65 + 144) offset:v52 atIndex:0];
            sub_1AF6F46F4(v56, v36, v55);
            v56 = v64;
          }

          ++v53;
          v52 += 4;
          v55 += 12;
        }

        while (v53 != 16);
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      v66 = 0;
      v67 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF42A20);
      LOBYTE(v77) = v50;
      sub_1AFDFE458();
LABEL_66:
      result = sub_1AFDFE518();
      __break(1u);
      return result;
    }

    v64 = v19;
    if ((*(a13 + 48))(a12, a13) == a4 && v20 == a5)
    {
    }

    else
    {
      v22 = sub_1AFDFEE28();

      if ((v22 & 1) == 0)
      {
LABEL_16:
        swift_unknownObjectRelease();
        v18 = v65;
        goto LABEL_17;
      }
    }

    if (a6)
    {
      v23 = a6;
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

    v24 = *(a13 + 72);

    v25 = v24(a12, a13);
    LOBYTE(v24) = sub_1AFB7B210(v23, v25);

    if (v24)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  return result;
}

void sub_1AFB95C50(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v6 = sub_1AF6856B0(*(*(v2 + 144) + 8 * *v5 + 32), *(v5 + 2), 104);
      if (v6 <= 1)
      {
        if (v6)
        {
          sub_1AF68B2C0(a1, v2, &v13);
          v10 = v13;
          v11 = v14;
          v8 = v15;
          v9 = v16;
          v7 = v17;
          goto LABEL_13;
        }

        sub_1AF3C9244(a1, &v13);
        if ((v17 & 1) == 0)
        {
          v7 = 0;
          v8 = v15;
          v9 = v16;
          v10 = v13;
          v11 = v14;
LABEL_13:
          *a2 = v10;
          *(a2 + 16) = v11;
          *(a2 + 32) = v8;
          *(a2 + 48) = v9;
          *(a2 + 64) = v7;
          return;
        }

LABEL_11:
        v7 = 1;
        v10 = 0uLL;
        v11 = 0uLL;
        v8 = 0uLL;
        v9 = 0uLL;
        goto LABEL_13;
      }

      if (v6 == 2)
      {
        goto LABEL_11;
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AFDFE518();
  __break(1u);
}

unint64_t sub_1AFB95E64@<X0>(unint64_t a1@<X0>, float32x4_t *a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      result = sub_1AF6856B0(*(*(v2 + 144) + 8 * *v5 + 32), *(v5 + 2), 104);
      if (result <= 1u)
      {
        if (result)
        {
          sub_1AF67DCBC(a1, v2);
          v17 = v7;
          v18 = v8;
          v19 = v9;
          v20 = v10;
          result = sub_1AF3C9244(a1, &v21);
          v11 = 0;
          if (v25)
          {
            v12 = v17;
            v13 = v18;
            v14 = v19;
            v15 = v20;
          }

          else
          {
            v12 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v21.f32[0]), v18, *v21.f32, 1), v19, v21, 2), v20, v21, 3);
            v13 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v22.f32[0]), v18, *v22.f32, 1), v19, v22, 2), v20, v22, 3);
            v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v23.f32[0]), v18, *v23.f32, 1), v19, v23, 2), v20, v23, 3);
            v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v24.f32[0]), v18, *v24.f32, 1), v19, v24, 2), v20, v24, 3);
          }

          goto LABEL_15;
        }

        goto LABEL_12;
      }

      if (result == 2)
      {
        result = sub_1AF3C9244(a1, &v21);
        if ((v25 & 1) == 0)
        {
          v11 = 0;
          v14 = v23;
          v15 = v24;
          v12 = v21;
          v13 = v22;
          goto LABEL_15;
        }

LABEL_12:
        v11 = 1;
        v12 = 0uLL;
        v13 = 0uLL;
        v14 = 0uLL;
        v15 = 0uLL;
LABEL_15:
        *a2 = v12;
        a2[1] = v13;
        a2[2] = v14;
        a2[3] = v15;
        a2[4].i8[0] = v11;
        return result;
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v16 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v16);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AFB960DC(unint64_t a1@<X0>, float32x4_t *a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v6 = sub_1AF6856B0(*(*(v2 + 144) + 8 * *v5 + 32), *(v5 + 2), 104);
      if (v6 <= 1)
      {
        if (v6)
        {
          sub_1AF68B2C0(a1, v2, v18);
          v14 = v18[0];
          v15 = v18[1];
          v16 = v18[2];
          v17 = v18[3];
          v7 = v19;
          sub_1AF3C9330(a1, &v20);
          if (v21)
          {
            sub_1AF3C9244(a1, &v22);
            if (v23)
            {
              v10 = v16;
              v11 = v17;
              v8 = v14;
              v9 = v15;
              goto LABEL_21;
            }

            v12 = __invert_f4(v22);
          }

          else
          {
            v12 = v20;
          }

          v10 = v16;
          v11 = v17;
          v8 = v14;
          v9 = v15;
          if ((v7 & 1) == 0)
          {
            v7 = 0;
            v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12.columns[0], v14.f32[0]), v12.columns[1], *v14.f32, 1), v12.columns[2], v14, 2), v12.columns[3], v14, 3);
            v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12.columns[0], v15.f32[0]), v12.columns[1], *v15.f32, 1), v12.columns[2], v15, 2), v12.columns[3], v15, 3);
            v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12.columns[0], v16.f32[0]), v12.columns[1], *v16.f32, 1), v12.columns[2], v16, 2), v12.columns[3], v16, 3);
            v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12.columns[0], v17.f32[0]), v12.columns[1], *v17.f32, 1), v12.columns[2], v17, 2), v12.columns[3], v17, 3);
          }

          goto LABEL_21;
        }

        goto LABEL_8;
      }

      if (v6 == 2)
      {
        sub_1AF3C9330(a1, &v20);
        if ((v21 & 1) == 0)
        {
          v7 = 0;
          v10 = v20.columns[2];
          v11 = v20.columns[3];
          v8 = v20.columns[0];
          v9 = v20.columns[1];
          goto LABEL_21;
        }

        sub_1AF3C9244(a1, &v22);
        if ((v23 & 1) == 0)
        {
          v24 = __invert_f4(v22);
          v8 = v24.columns[0];
          v9 = v24.columns[1];
          v10 = v24.columns[2];
          v11 = v24.columns[3];
          v7 = 0;
          LOBYTE(v18[0]) = 0;
          goto LABEL_21;
        }

LABEL_8:
        v7 = 1;
        v8 = 0uLL;
        v9 = 0uLL;
        v10 = 0uLL;
        v11 = 0uLL;
LABEL_21:
        *a2 = v8;
        a2[1] = v9;
        a2[2] = v10;
        a2[3] = v11;
        a2[4].i8[0] = v7;
        return;
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v13 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v13);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AFDFE518();
  __break(1u);
}

void sub_1AFB963D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, float a7)
{
  v8 = v7;
  v11 = *(a2 + 104);
  v53[0] = *(a2 + 88);
  v53[1] = v11;
  v54 = *(a2 + 120);

  sub_1AF6B06C0(v12, v53, 0x200000000, &v37);

  v29 = v37;
  if (v37)
  {
    v13 = v41;
    v14 = v43;
    v45 = v38;
    v46 = v39;
    v27 = v44;
    v28 = v42;
    if (v44 >= 1 && v41)
    {
      v15 = *(v42 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v16 = *(v43 + 32);
      v17 = (v40 + 24);
      v26 = v15;
      while (1)
      {
        v62 = v8;
        v19 = *(v17 - 6);
        v18 = *(v17 - 5);
        v20 = *(v17 - 4);
        v35 = *v17;
        v36 = *(v17 - 1);
        v21 = v17[2];
        v34 = v17[1];
        if (v15)
        {
          v22 = *(v21 + 376);

          os_unfair_lock_lock(v22);
          os_unfair_lock_lock(*(v21 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v16);
        v23 = *(v14 + 64);
        v55[0] = *(v14 + 48);
        v55[1] = v23;
        v56 = *(v14 + 80);
        v24 = *(*(*(*(v21 + 40) + 16) + 32) + 16) + 1;
        *(v14 + 48) = ecs_stack_allocator_allocate(*(v14 + 32), 48 * v24, 8);
        *(v14 + 56) = v24;
        *(v14 + 72) = 0;
        *(v14 + 80) = 0;
        *(v14 + 64) = 0;
        LOBYTE(v50) = 1;
        v57[0] = v28;
        v57[1] = v21;
        v57[2] = v14;
        v57[3] = v20;
        v57[4] = (v18 - v19 + v20);
        v57[5] = v27;
        v57[6] = v19;
        v57[7] = v18;
        v57[8] = 0;
        v57[9] = 0;
        v58 = 1;
        v59 = v36;
        v60 = v35;
        v61 = v34;
        v25 = v62;
        sub_1AFB966A0(v57, a3, a1, a4, a5, a6, a7);
        if (v25)
        {
          break;
        }

        v47 = v29;
        v48 = v45;
        v49 = v46;
        sub_1AF630994(v14, &v47, v55);
        v8 = 0;
        sub_1AF62D29C(v21);
        ecs_stack_allocator_pop_snapshot(v16);
        v15 = v26;
        if (v26)
        {
          os_unfair_lock_unlock(*(v21 + 344));
          os_unfair_lock_unlock(*(v21 + 376));
        }

        v17 += 6;
        if (!--v13)
        {
          goto LABEL_12;
        }
      }

      v50 = v29;
      v51 = v45;
      v52 = v46;
      sub_1AF630994(v14, &v50, v55);
      sub_1AF62D29C(v21);
      ecs_stack_allocator_pop_snapshot(v16);
      os_unfair_lock_unlock(*(v21 + 344));
      os_unfair_lock_unlock(*(v21 + 376));
      __break(1u);
    }

    else
    {
LABEL_12:
      sub_1AF5D1564(&v37);
    }
  }
}

uint64_t sub_1AFB966A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, float a7)
{
  v12 = sub_1AF6AF8AC(a2, a4, a5);
  v17 = a6;
  v18 = a7;
  v19 = a1;
  v20 = a3;
  return sub_1AFB93B58(MEMORY[0x1E69E6448], sub_1AFB97B78, v16, v12, v13, a4, MEMORY[0x1E69E6448], MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v15);
}

uint64_t sub_1AFB9675C(uint64_t result, double a2, float a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *(a5 + 48);
  v6 = *(a5 + 56);
  if (*&a2 == a3)
  {
    v8 = v6 - v7;
    if (v6 != v7)
    {
      v9 = *(a5 + 48);
      if (v8 < 8)
      {
        goto LABEL_7;
      }

      v9 = v7 + (v8 & 0xFFFFFFFFFFFFFFF8);
      v10 = vdupq_lane_s32(*&a2, 0);
      v11 = (result + 4 * v7 + 16);
      v12 = v8 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v11[-1] = v10;
        *v11 = v10;
        v11 += 2;
        v12 -= 8;
      }

      while (v12);
      if (v8 != (v8 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_7:
        v13 = v6 - v9;
        v14 = (result + 4 * v9);
        do
        {
          *v14++ = LODWORD(a2);
          --v13;
        }

        while (v13);
      }
    }
  }

  else
  {
    v15 = v6 - v7;
    if (v15)
    {
      v16 = a3 - *&a2;
      v17 = (result + 4 * v7);
      do
      {
        v19 = a6[1];
        v18 = a6[2];
        v20 = a6[3] ^ v19;
        v21 = a6[4] ^ v18;
        a6[1] = v21 ^ v19;
        a6[2] = v20 ^ v18;
        a6[3] = v20 ^ (v18 << 17);
        a6[4] = __ROR8__(v21, 19);
        *v17++ = (v16 * vcvts_n_f32_u64((9 * ((((5 * v18) >> 32) >> 25) | (640 * v18))) & 0xFFFFFF, 0x18uLL)) + *&a2;
        --v15;
      }

      while (v15);
    }
  }

  return result;
}

uint64_t sub_1AFB96830(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((*(result + 336) & 1) == 0)
  {
    v12 = result;
    result = swift_weakLoadStrong();
    if (result)
    {
      if (!v12[43])
      {
        v106 = a6;
        v113 = v7;
        v16 = *(a3 + 16);
        MinConstantBufferAlignment = CFXGPUDeviceGetMinConstantBufferAlignment(v16, v13, v14, v15);
        v18 = (MinConstantBufferAlignment + 279) & -MinConstantBufferAlignment;
        v121 = a3;
        CFXBufferAllocatorPerFrameAllocateWithLength(*(a3 + 232), v18);
        v20 = v19;
        v12[43] = v21;
        v12[44] = v19;
        v12[45] = HIDWORD(v19);
        v12[46] = v18;
        v22 = swift_unknownObjectRetain();
        v23 = sub_1AF6F2CC8(v22, v20);
        v27 = CFXGPUDeviceGetMinConstantBufferAlignment(v16, v24, v25, v26);
        v28 = (v27 + 991) & -v27;
        v128 = v16;
        v32 = CFXGPUDeviceGetMinConstantBufferAlignment(v16, v29, v30, v31);
        bzero(v23, (v32 + 279) & -v32);
        *v23 = 0;
        *(v23 + 2) = 0;
        v119 = v23;
        *(v23 + 3) = v28;
        sub_1AF776050(0x1Au, a2);
        for (i = a2; a2; v28 = (v28 + v42 * a4 + v46 - 1) & -v46)
        {
          v33 = __clz(__rbit64(a2));
          v34 = sub_1AFB79288(v33);
          if (v34 == 28)
          {
            break;
          }

          v35 = v34;
          v36 = ((1 << v33) & a2) != 0 ? ~(1 << v33) : -1;
          a2 &= v36;
          v37 = sub_1AFB79138(v34);
          v38 = sub_1AFB79124(v35);
          v39 = word_1AFE9F852[v35];
          v40 = sub_1AF64118C(v37);
          v41 = &v119[8 * v38];
          *v41 = v28;
          *(v41 + 2) = v39;
          *(v41 + 3) = v40;
          v42 = sub_1AF64118C(v37);
          v46 = CFXGPUDeviceGetMinConstantBufferAlignment(v128, v43, v44, v45);
        }

        CFXBufferAllocatorPerFrameAllocateWithLength(*(v121 + 232), v28);
        v48 = v47;
        v50 = HIDWORD(v49);
        v51 = v49;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v12[53] = v48;
        v12[54] = v51;
        v12[55] = v50;
        v12[56] = a4;
        v12[57] = i;
        v52 = [swift_unknownObjectRetain() storageMode];
        swift_unknownObjectRelease();
        if (v52 == 2)
        {
          v53 = 0;
        }

        else
        {
          v54 = [swift_unknownObjectRetain() contents];
          v55 = v48;
          v53 = &v54[v51];
        }

        v56 = v113;
        *v53 = a4;
        *(v53 + 12) = 0;
        *(v53 + 4) = 0;
        v57 = sub_1AFB946F8();
        if (v58)
        {
          v59 = a4;
        }

        else
        {
          v59 = v57;
        }

        *(v53 + 7) = v59;
        v53[120] = sub_1AFBF1718(&type metadata for Color) != 0;
        if (sub_1AFBF1718(&type metadata for Scale1))
        {
          v60 = 1;
          v61 = i;
        }

        else
        {
          v61 = i;
          if (sub_1AFBF1718(&type metadata for Scale2))
          {
            v60 = 1;
          }

          else
          {
            v60 = sub_1AFBF1718(&type metadata for Scale3) != 0;
          }
        }

        v53[121] = v60;
        sub_1AFB948D8();
        *(v53 + 2) = v62;
        *(v53 + 3) = v63;
        *(v53 + 4) = v64;
        *(v53 + 5) = v65;
        if (*(v106 + 80) >= 1)
        {
          v108 = *(v106 + 56);
          if (v108)
          {
            v66 = 0;
            v67 = 0;
            v68 = *(v106 + 72);
            v112 = v68[4];
            v111 = *(*(v106 + 64) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
            v69 = *(v106 + 16);
            v124[0] = *v106;
            v124[1] = v69;
            v107 = *(v106 + 40);
            v125 = *(v106 + 32);
            v117 = v53;
            v122 = v68;
            while (1)
            {
              v110 = v66;
              v70 = (v107 + 48 * v66);
              v71 = v70[1];
              v115 = *v70;
              v120 = v70[2];
              v72 = *(v70 + 5);
              if (v111)
              {
                v73 = *(v72 + 376);

                os_unfair_lock_lock(v73);
                os_unfair_lock_lock(*(v72 + 344));
              }

              else
              {
              }

              v114 = v56;
              ecs_stack_allocator_push_snapshot(v112);
              v74 = *(v68 + 4);
              v126[0] = *(v68 + 3);
              v126[1] = v74;
              v127 = v68[10];
              v75 = *(*(*(*(v72 + 40) + 16) + 32) + 16) + 1;
              v68[6] = ecs_stack_allocator_allocate(v68[4], 48 * v75, 8);
              v68[7] = v75;
              v68[9] = 0;
              v68[10] = 0;
              v68[8] = 0;
              if (v61)
              {
                break;
              }

LABEL_51:
              v68 = v122;
              sub_1AF630994(v122, v124, v126);
              v56 = v114;
              v61 = i;
              if (*(v122[13] + 16))
              {

                sub_1AF62F348(v94, v72);

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v96 = v122[13];
                if (isUniquelyReferenced_nonNull_native)
                {
                  v97 = v96[2];
                  v98 = swift_isUniquelyReferenced_nonNull_native();
                  v122[13] = v96;
                  if ((v98 & 1) == 0)
                  {
                    v96 = sub_1AF420EA0(0, v97, 1, v96);
                    v122[13] = v96;
                  }

                  sub_1AF43A540(0);
                  swift_arrayDestroy();
                  if (v97)
                  {
                    v99 = v96[2] - v97;
                    memmove(v96 + 4, &v96[9 * v97 + 4], 72 * v99);
                    v96[2] = v99;
                    v68 = v122;
                  }

                  v68[13] = v96;
                }

                else
                {
                  v100 = MEMORY[0x1E69E7CC0];
                  if (v96[3] >= 2uLL)
                  {
                    sub_1AF5FD7D8(0, &qword_1ED7269C0, sub_1AF43A540);
                    v100 = swift_allocObject();
                    v101 = j__malloc_size_0(v100);
                    v100[2] = 0;
                    v100[3] = 2 * ((v101 - 32) / 72);
                  }

                  v122[13] = v100;
                }

                if (*(v68[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
                {
                  v102 = *(v72 + 232);
                  v103 = *(v72 + 256);
                  if (v102 == v103)
                  {
                    v104 = *(v72 + 240);
                  }

                  else
                  {
                    sub_1AF6497A0(v103, v102);
                    v103 = *(v72 + 232);
                    v104 = *(v72 + 240);
                    if (v104 == v103)
                    {
                      v104 = 0;
                      v103 = 0;
                      *(v72 + 232) = 0;
                      *(v72 + 240) = 0;
                    }
                  }

                  *(v72 + 248) = v104;
                  *(v72 + 256) = v103;
                }
              }

              ecs_stack_allocator_pop_snapshot(v112);
              if (v111)
              {
                os_unfair_lock_unlock(*(v72 + 344));
                os_unfair_lock_unlock(*(v72 + 376));
              }

              v66 = v110 + 1;
              if (v110 + 1 == v108)
              {
                goto LABEL_70;
              }
            }

            v118 = v71 - v115;
            while (1)
            {
              v76 = __clz(__rbit64(v61));
              if (((1 << v76) & v61) != 0)
              {
                v77 = ~(1 << v76);
              }

              else
              {
                v77 = -1;
              }

              v78 = sub_1AFB79288(v76);
              if (v78 == 28)
              {
                goto LABEL_51;
              }

              v79 = v78;
              if ((v78 - 65) <= 0x7Eu)
              {
                break;
              }

              if ((v78 & 0x80) != 0)
              {
                if (v78 <= 0xC0u)
                {
                  break;
                }

                v80 = 1uLL >> -v78;
              }

              else
              {
                if (v78 >= 0x40u)
                {
                  break;
                }

                v80 = 1 << v78;
              }

              if ((v80 & ~a7) == 0)
              {
                break;
              }

LABEL_32:
              v61 &= v77;
              if (!v61)
              {
                goto LABEL_51;
              }
            }

            v128 = v67;
            v81 = sub_1AFB79138(v78);
            v82 = v72;
            v84 = v83;
            v85 = &v119[8 * sub_1AFB79124(v79)];
            v86 = *(v85 + 3);
            __dst = &v53[*v85 + v86 * v120];
            v87 = *(v84 + 8);
            v88 = sub_1AF64118C(v81);

            v89 = v84;
            v72 = v82;
            v90 = sub_1AF64B110(v81, v89, 0, 0, 0, v122);
            if (v91)
            {
              v92 = v118;
              if (sub_1AF640E28(v81))
              {
                sub_1AF6413C0(__dst, 0, v118, v81, v87);
              }

              else
              {
                sub_1AF641654(__dst, 0, v118, v81);
              }
            }

            else
            {
              v93 = (v90 + v88 * v115);
              if (sub_1AF640E28(v81))
              {
                memcpy(__dst, v93, v88 * v118);
              }

              else
              {
                sub_1AF641760();
              }

              v72 = v82;
              v92 = v118;
            }

            v67 = v128 + v92 * v86;
            v53 = v117;
            goto LABEL_32;
          }
        }

        v67 = 0;
LABEL_70:
        v105 = *(v106 + 64) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
        if (*v105)
        {
          vfx_counters.add(_:_:)(*(v105 + 88), v67);
        }
      }
    }
  }

  return result;
}

void sub_1AFB970B8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 32);
  v58[0] = *(v3 + 16);
  v58[1] = v7;
  v59 = *(v3 + 48);
  sub_1AF6B06C0(a1, v58, 0x200000000, v40);
  if (*v40)
  {
    v32 = *v40;
    v10 = *&v40[40];
    v11 = *(&v41 + 1);
    v12 = *(&v42 + 1);
    v33 = v42;
    v45 = *&v40[8];
    v46 = *&v40[24];
    MEMORY[0x1EEE9AC00](v8, v9);
    v30 = v26;
    v31 = v13;
    v26[2] = a1;
    v26[3] = a2;
    v27 = a3;
    v28 = a1;
    if (v13 > 0 && v11)
    {
      v29[1] = v29;
      v14 = v12[4];
      v38 = *(v33 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v39[2] = *&v40[32];
      v39[3] = v41;
      v39[4] = v42;
      v39[5] = v43;
      v39[0] = *v40;
      v39[1] = *&v40[16];
      sub_1AF5DD298(v39, v53);
      for (i = (v10 + 24); ; i += 6)
      {
        v37 = 0;
        v16 = *(i - 6);
        v17 = *(i - 5);
        v18 = *(i - 4);
        v19 = *(i - 1);
        v35 = *i;
        v36 = v19;
        v20 = i[2];
        v34 = i[1];
        if (v38)
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

        sub_1AF630914(v24, v12, v44);

        LOBYTE(v47) = 1;
        v53[0] = v33;
        v53[1] = v20;
        v53[2] = v12;
        v53[3] = v18;
        v53[4] = (v17 - v16 + v18);
        v53[5] = v31;
        v53[6] = v16;
        v53[7] = v17;
        v53[8] = 0;
        v53[9] = 0;
        v54 = 1;
        v55 = v36;
        v56 = v35;
        v57 = v34;
        v25 = v37;
        sub_1AFA16D8C(v53, sub_1AFB97BB4, v30);
        if (v25)
        {
          break;
        }

        v50 = v32;
        v51 = v45;
        v52 = v46;
        sub_1AF630994(v12, &v50, v44);
        sub_1AF62D29C(v20);
        ecs_stack_allocator_pop_snapshot(v14);
        if (v38)
        {
          os_unfair_lock_unlock(*(v20 + 344));
          os_unfair_lock_unlock(*(v20 + 376));
        }

        if (!--v11)
        {
          sub_1AF5D1564(v40);
          sub_1AF5D1564(v40);
          return;
        }
      }

      v47 = v32;
      v48 = v45;
      v49 = v46;
      sub_1AF630994(v12, &v47, v44);
      sub_1AF62D29C(v20);
      ecs_stack_allocator_pop_snapshot(v14);
      os_unfair_lock_unlock(*(v20 + 344));
      os_unfair_lock_unlock(*(v20 + 376));
      __break(1u);
    }

    else
    {
      sub_1AF5D1564(v40);
    }
  }
}

float32_t sub_1AFB973EC(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, uint64_t a6, float32x4_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a2 + 59) == 1)
  {
    v13 = sub_1AFB2EB3C(a5, a6);
    if ((v14 & 1) == 0)
    {
      sub_1AFB2F7B0(v13, &v43);
      v15 = *a4;
      a7 = a4[1];
      v16 = vmulq_f32(*a4, v43);
      v17 = vmulq_f32(a7, vabsq_f32(v43));
      if (vaddv_f32(vadd_f32(*v16.i8, *&vextq_s8(v16, v16, 8uLL))) <= -vaddv_f32(vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL))) || ((v18 = vmulq_f32(v15, v44), v19 = vmulq_f32(a7, vabsq_f32(v44)), v24 = vaddv_f32(vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL))) <= -vaddv_f32(vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL))), v20 = vmulq_f32(v15, v45), v21 = vaddv_f32(vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL))), v22 = vmulq_f32(a7, vabsq_f32(v45)), v23 = -vaddv_f32(vadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL))), !v24) ? (v24 = v21 <= v23) : (v24 = 1), (v25 = vmulq_f32(v15, v46), v26 = vaddv_f32(vadd_f32(*v25.i8, *&vextq_s8(v25, v25, 8uLL))), v27 = vmulq_f32(a7, vabsq_f32(v46)), v28 = -vaddv_f32(vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL))), !v24) ? (v29 = v26 <= v28) : (v29 = 1), (v30 = vmulq_f32(v15, v47), v31 = vaddv_f32(vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL))), v32 = vmulq_f32(a7, vabsq_f32(v47)), v33 = -vaddv_f32(vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL))), !v29) ? (v34 = v31 <= v33) : (v34 = 1), v34))
      {
        if ((*(a3 + 161) & 1) == 0)
        {
          return a7.f32[0];
        }

        v41 = 0;
      }

      else
      {
        v40 = vmulq_f32(v15, v48);
        a7 = vmulq_f32(a7, vabsq_f32(v48));
        a7.f32[0] = -vaddv_f32(vadd_f32(*a7.f32, *&vextq_s8(a7, a7, 8uLL)));
        v41 = vaddv_f32(vadd_f32(*v40.i8, *&vextq_s8(v40, v40, 8uLL))) > a7.f32[0];
        if (v41 == *(a3 + 161))
        {
          return a7.f32[0];
        }
      }

      v82 = (a3 + 161);
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
      sub_1AF5FD7D8(0, &qword_1ED7269A0, sub_1AF5C5300);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 32) = &type metadata for Particle;
      *(inited + 40) = &off_1F252D7A8;
      sub_1AF5F58E4(inited, 1, v49);
      swift_setDeallocating();
      sub_1AFA1CF6C();
      v36 = swift_initStackObject();
      *(v36 + 16) = xmmword_1AFE431C0;
      v37 = *(a1 + 32);

      v38 = sub_1AF6496EC(v37);

      *(v36 + 56) = &type metadata for EmitterReference;
      *(v36 + 64) = &off_1F2563D20;
      *(v36 + 32) = v38;
      sub_1AF5FC13C(v36, &v50);
      sub_1AF692DB0(v49);
      swift_setDeallocating();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v36 + 32);
      v70 = v50;
      v71 = v51;
      v72 = v52;
      v73 = v53 | 1;
      v74 = v54;
      v75 = v55;
      sub_1AF6B06C0(a9, &v70, 0x200000000, &v56);
      if (v56)
      {
        v66 = v59;
        v67 = v60;
        v68 = v61;
        v63 = v56;
        v69 = v62;
        v64 = v57;
        v65 = v58;
        sub_1AF6B9CF0(v41);
        sub_1AF5D1564(&v56);
      }

      *v82 = v41;

      v39 = sub_1AF6496EC(v37);

      sub_1AF6D8010(v39, v41);
      sub_1AF692DB0(&v50);
    }
  }

  return a7.f32[0];
}

uint64_t sub_1AFB9784C()
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
  sub_1AF8D4304(1, 2, 1, v3);
  v1 = v3[1];
  *(v0 + 16) = v3[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v4;
  return v0;
}

uint64_t sub_1AFB97920(uint64_t a1)
{
  v2 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v13 = qword_1ED73B840;
  v14 = 0;
  v15 = 2;
  v16 = 0;
  v17 = 2;
  v18 = 0;
  sub_1AF8290DC(v7);
  v3 = v7[1];
  *(v2 + 16) = v7[0];
  *(v2 + 32) = v3;
  *(v2 + 48) = v8;
  sub_1AF5C90C0(v9);
  v4 = v9[1];
  *(v2 + 56) = v9[0];
  *(v2 + 72) = v4;
  *(v2 + 88) = v10;
  sub_1AF5C90E4(v11);
  sub_1AF688940(a1);
  v5 = v11[1];
  *(v2 + 96) = v11[0];
  *(v2 + 112) = v5;
  *(v2 + 128) = v12;
  return v2;
}

uint64_t sub_1AFB97A18(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = swift_allocObject();
  sub_1AF5FD7D8(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for ParticleRibbonRenderer;
  *(inited + 40) = &off_1F2551780;
  sub_1AF6B8120(inited, MEMORY[0x1E69E7CC0], v6);
  swift_setDeallocating();
  sub_1AF688940(a1);
  v4 = v6[1];
  *(v2 + 16) = v6[0];
  *(v2 + 32) = v4;
  *(v2 + 48) = v7;
  return v2;
}

uint64_t sub_1AFB97BD8(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v4 = *(v3 + 24);
  if (a3 > 2u)
  {
    return (*(v4 + 32))(v3 + 40, result, a2);
  }

  if (!a3)
  {
    return (*(v4 + 24))(v3 + 40, result, a2, 0, *(v3 + 16));
  }

  if (a3 == 1)
  {
    return (*(v4 + 32))(v3 + 40, result, a2);
  }

  return result;
}

double sub_1AFB97C5C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 a7@<W6>, uint64_t a8@<X8>)
{
  v8 = a6;
  v13 = a7;
  v31 = BYTE4(a6) & 1;
  LOBYTE(v35) = BYTE4(a6) & 1;
  sub_1AFB93CB8(a5, a6 | ((BYTE4(a6) & 1) << 32), &v32);
  *&v30[2] = v32;
  *&v30[18] = v33;
  *&v30[34] = v34;
  v27 = a1;
  v14 = sub_1AF3CD0F8(a2);
  if (v15)
  {
    v16 = v13;
    v17 = v33 & 0xFFFFFFFFFFFFFFF7 | (8 * ((v13 - 1) < 2));
    v18 = v34;
    v19 = BYTE8(v33);
    v20 = DWORD2(v32);
    v21 = BYTE12(v32);
  }

  else
  {
    v23 = v14;
    sub_1AFA1CF6C();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 56) = &type metadata for ParticleClassSpawnID;
    *(inited + 64) = &off_1F254ECF8;
    *(inited + 32) = v23;
    v25 = inited + 32;
    sub_1AF5FC13C(inited, &v35);
    swift_setDeallocating();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v25);
    v16 = v13;
    v17 = v38 & 0xFFFFFFFFFFFFFFF7 | (8 * ((v13 - 1) < 2));
    v22 = v35;
    v20 = v36;
    v21 = v37;
    v19 = v39;
    v18 = v40;
  }

  *(a8 + 46) = *v30;
  *a8 = v27;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = v8;
  *(a8 + 44) = v31;
  *(a8 + 45) = v16;
  *(a8 + 62) = *&v30[16];
  result = *&v30[26];
  *(a8 + 72) = *&v30[26];
  *(a8 + 88) = v22;
  *(a8 + 96) = v20;
  *(a8 + 100) = v21;
  *(a8 + 104) = v17;
  *(a8 + 112) = v19;
  *(a8 + 120) = v18;
  return result;
}

uint64_t sub_1AFB97E24()
{
  swift_unknownObjectRelease();
}

__n128 sub_1AFB97E78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1AFB97EAC(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v4;

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t sub_1AFB97F94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AFB97FDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for ParticleComponentSystemParameter()
{
}

uint64_t initializeWithCopy for ParticleComponentSystemParameter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v4;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithCopy for ParticleComponentSystemParameter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  v4 = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = v4;
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 48) = *(a2 + 48);

  v5 = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 56) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  v6 = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 96) = v6;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t assignWithTake for ParticleComponentSystemParameter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v4;

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t getEnumTagSinglePayload for ParticleComponentSystemParameter(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleComponentSystemParameter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AFB98410()
{
  v24 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, 4, 0);
  v0 = v24;
  v2 = aClamptozero_0[0];
  v1 = aClamptozero_0[1];
  v4 = *(v24 + 16);
  v3 = *(v24 + 24);
  v5 = v4 + 1;

  if (v4 >= v3 >> 1)
  {
    sub_1AFC05CE4(v3 > 1, v4 + 1, 1);
    v0 = v24;
  }

  *(v0 + 16) = v5;
  v6 = v0 + 16 * v4;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  v8 = aClamptoedge_0[0];
  v7 = aClamptoedge_0[1];
  v9 = *(v0 + 24);
  v10 = v4 + 2;

  if (v5 >= v9 >> 1)
  {
    sub_1AFC05CE4(v9 > 1, v10, 1);
  }

  *(v0 + 16) = v10;
  v11 = v0 + 16 * v5;
  *(v11 + 32) = v8;
  *(v11 + 40) = v7;
  v13 = *aRepeat_1;
  v12 = unk_1F24F3FD8;
  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  v16 = v15 + 1;

  if (v15 >= v14 >> 1)
  {
    sub_1AFC05CE4(v14 > 1, v15 + 1, 1);
  }

  *(v0 + 16) = v16;
  v17 = v0 + 16 * v15;
  *(v17 + 32) = v13;
  *(v17 + 40) = v12;
  v19 = aRepeatmirror_0[0];
  v18 = aRepeatmirror_0[1];
  v20 = *(v0 + 24);
  v21 = v15 + 2;

  if (v16 >= v20 >> 1)
  {
    sub_1AFC05CE4(v20 > 1, v21, 1);
  }

  *(v0 + 16) = v21;
  v22 = v0 + 16 * v16;
  *(v22 + 32) = v19;
  *(v22 + 40) = v18;
  return v0;
}

uint64_t sub_1AFB985B8()
{
  v8 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, 2, 0);
  result = v8;
  v2 = *(v8 + 16);
  v1 = *(v8 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1AFC05CE4(v1 > 1, v2 + 1, 1);
    result = v8;
    v1 = *(v8 + 24);
    v3 = v1 >> 1;
  }

  *(result + 16) = v4;
  v5 = result + 16 * v2;
  *(v5 + 32) = 0x7473657261656ELL;
  *(v5 + 40) = 0xE700000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1AFC05CE4(v1 > 1, v6, 1);
    result = v8;
  }

  *(result + 16) = v6;
  v7 = result + 16 * v4;
  *(v7 + 32) = 0x7261656E696CLL;
  *(v7 + 40) = 0xE600000000000000;
  return result;
}

uint64_t sub_1AFB9899C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFB99418(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AFB989C8(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v2, v3);
  sub_1AFDFEC58();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

uint64_t sub_1AFB98A5C()
{
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB98B20()
{
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB98BB4(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v3, v4);
  sub_1AFDFEC28();
  if (!v1)
  {
    sub_1AF448018(v3, v4);
    sub_1AFDFEC18();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

void sub_1AFB98CB4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1AFB994E8(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
  }
}

double sub_1AFB98F44(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      *&result = 3212836864;
    }

    else if (a1 == 4)
    {
      return -0.0078125;
    }

    else
    {
      return 0.0;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      return 0.0078125;
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    *&result = 1065353216;
  }

  return result;
}

uint64_t sub_1AFB98FB4@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFB99648(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AFB992E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFB98410();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 40);
    while (1)
    {
      v8 = *(v7 - 1) == a1 && *v7 == a2;
      if (v8 || (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      ++v6;
      v7 += 2;
      if (v5 == v6)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

  return byte_1F24FE850[v6 + 32];
}

uint64_t sub_1AFB9937C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFB985B8();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 40);
    while (1)
    {
      v8 = *(v7 - 1) == a1 && *v7 == a2;
      if (v8 || (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      ++v6;
      v7 += 2;
      if (v5 == v6)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

  return byte_1F24FE878[v6 + 32];
}

uint64_t sub_1AFB99418(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (v1)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return 0;
  }

  else
  {
    sub_1AF448018(v6, v7);
    v3 = sub_1AFDFEAB8();
    if ((v3 & 0xFC) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return v5;
  }
}

float sub_1AFB994E8(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (!v1)
  {
    sub_1AF448018(v6, v7);
    if (sub_1AFDFEAB8() >= 4)
    {
      sub_1AFDFE2C8();
      swift_allocError();
      sub_1AFDFE288();
      swift_willThrow();
    }

    else
    {
      sub_1AF448018(v6, v7);
      sub_1AFDFEAA8();
      v2 = v4;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AFB99648(uint64_t result)
{
  if (result >= 6u)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1AFB9965C()
{
  result = qword_1ED7232E0;
  if (!qword_1ED7232E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7232E0);
  }

  return result;
}

unint64_t sub_1AFB996B0()
{
  result = qword_1EB633380;
  if (!qword_1EB633380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633380);
  }

  return result;
}

unint64_t sub_1AFB99704()
{
  result = qword_1EB642F08;
  if (!qword_1EB642F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642F08);
  }

  return result;
}

unint64_t sub_1AFB99758()
{
  result = qword_1EB642F10;
  if (!qword_1EB642F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642F10);
  }

  return result;
}

unint64_t sub_1AFB997AC()
{
  result = qword_1EB642F18;
  if (!qword_1EB642F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642F18);
  }

  return result;
}

unint64_t sub_1AFB99800()
{
  result = qword_1EB642F20;
  if (!qword_1EB642F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642F20);
  }

  return result;
}

unint64_t sub_1AFB99854()
{
  result = qword_1ED725600;
  if (!qword_1ED725600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725600);
  }

  return result;
}

unint64_t sub_1AFB998A8()
{
  result = qword_1ED722BB8;
  if (!qword_1ED722BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722BB8);
  }

  return result;
}

unint64_t sub_1AFB998FC()
{
  result = qword_1EB6339F8;
  if (!qword_1EB6339F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6339F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Composition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[8])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Composition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1AFB99AB8()
{
  result = qword_1EB642F38;
  if (!qword_1EB642F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642F38);
  }

  return result;
}

unint64_t sub_1AFB99B40()
{
  result = qword_1EB642F50;
  if (!qword_1EB642F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642F50);
  }

  return result;
}

unint64_t sub_1AFB99BC8()
{
  result = qword_1EB642F68;
  if (!qword_1EB642F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642F68);
  }

  return result;
}

unint64_t sub_1AFB99C50()
{
  result = qword_1EB642F80;
  if (!qword_1EB642F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642F80);
  }

  return result;
}

unint64_t sub_1AFB99CA8()
{
  result = qword_1EB642F88;
  if (!qword_1EB642F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642F88);
  }

  return result;
}

unint64_t sub_1AFB99D30()
{
  result = qword_1EB642FA0;
  if (!qword_1EB642FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642FA0);
  }

  return result;
}

unint64_t sub_1AFB99DB8()
{
  result = qword_1EB642FB8;
  if (!qword_1EB642FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642FB8);
  }

  return result;
}

unint64_t sub_1AFB99E40()
{
  result = qword_1EB642FD0;
  if (!qword_1EB642FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642FD0);
  }

  return result;
}

unint64_t sub_1AFB99EC8()
{
  result = qword_1EB642FE8;
  if (!qword_1EB642FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642FE8);
  }

  return result;
}

unint64_t sub_1AFB99F50()
{
  result = qword_1EB643000;
  if (!qword_1EB643000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643000);
  }

  return result;
}

unint64_t sub_1AFB99FD8()
{
  result = qword_1EB643018;
  if (!qword_1EB643018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643018);
  }

  return result;
}

unint64_t sub_1AFB9A02C()
{
  result = qword_1EB643020;
  if (!qword_1EB643020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643020);
  }

  return result;
}

unint64_t sub_1AFB9A080()
{
  result = qword_1EB643028;
  if (!qword_1EB643028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643028);
  }

  return result;
}

uint64_t sub_1AFB9A0E0(void *a1)
{
  v3 = v1;
  sub_1AFBAC650(0, &qword_1EB643050, sub_1AFBAC3A0, &type metadata for ParticleFlockingAlignOrientation.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBAC3A0();
  sub_1AFDFF3F8();
  LOBYTE(v13) = *v3;
  v14 = 0;
  sub_1AF51CFA8();
  sub_1AFDFE918();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1AFDFE8E8();
    LOBYTE(v13) = *(v3 + 8);
    v14 = 2;
    sub_1AFDFE918();
    v13 = *(v3 + 16);
    v14 = 3;
    v12 = MEMORY[0x1E69E7450];
    sub_1AFBAC650(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AFBAC3F4(&qword_1ED72F758, &qword_1ED72F740, v12);
    sub_1AFDFE918();
    LOBYTE(v13) = 4;
    sub_1AFDFE8C8();
    LOBYTE(v13) = 5;
    sub_1AFDFE8E8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AFB9A3C4()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFB9A4E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBA2394();
  *a1 = result;
  return result;
}

void sub_1AFB9A510(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006ELL;
  v4 = 0x6F69746365726964;
  v5 = 0xE700000000000000;
  v6 = 0x7441746E696F70;
  v7 = 0xEE00676E69707069;
  v8 = 0x6C46656375646572;
  if (v2 != 4)
  {
    v8 = 0x6556746F5278616DLL;
    v7 = 0xEE0063655670556CLL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC0000007269446CLL;
  v10 = 0x6556746F5278616DLL;
  if (v2 != 1)
  {
    v10 = 0x726F746365567075;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1AFB9A5F4()
{
  v1 = *v0;
  v2 = 0x6F69746365726964;
  v3 = 0x7441746E696F70;
  v4 = 0x6C46656375646572;
  if (v1 != 4)
  {
    v4 = 0x6556746F5278616DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6556746F5278616DLL;
  if (v1 != 1)
  {
    v5 = 0x726F746365567075;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AFB9A6D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBA2394();
  *a1 = result;
  return result;
}

uint64_t sub_1AFB9A6FC(uint64_t a1)
{
  v2 = sub_1AFBAC3A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB9A738(uint64_t a1)
{
  v2 = sub_1AFBAC3A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFB9A774@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFBA3A54(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_1AFB9A7F0@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1124532224;
  *(a1 + 8) = 1;
  result = 0.0078125;
  *(a1 + 16) = xmmword_1AFE20160;
  *(a1 + 32) = 1;
  *(a1 + 36) = 1124532224;
  return result;
}

uint64_t sub_1AFB9A858(void *a1, double a2, __n128 a3)
{
  v13 = a3;
  sub_1AFBAC650(0, &qword_1EB643068, sub_1AFBAC458, &type metadata for ParticleFlockingAlignVelocityOnPlane.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBAC458();
  sub_1AFDFF3F8();
  v14.n128_u8[0] = 0;
  sub_1AFDFE8E8();
  if (!v3)
  {
    v14 = v13;
    v15 = 1;
    v11 = MEMORY[0x1E69E7450];
    sub_1AFBAC650(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AFBAC3F4(&qword_1ED72F758, &qword_1ED72F740, v11);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AFB9AA78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F4E656E616C70;
  }

  else
  {
    v3 = 0x636E65756C666E69;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xEB000000006C616DLL;
  }

  if (*a2)
  {
    v5 = 0x726F4E656E616C70;
  }

  else
  {
    v5 = 0x636E65756C666E69;
  }

  if (*a2)
  {
    v6 = 0xEB000000006C616DLL;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AFB9AB2C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB9ABBC()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFB9AC38()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB9ACC4@<X0>(char *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1AFB9AD24(uint64_t *a1@<X8>)
{
  v2 = 0x636E65756C666E69;
  if (*v1)
  {
    v2 = 0x726F4E656E616C70;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xEB000000006C616DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AFB9AD70()
{
  if (*v0)
  {
    return 0x726F4E656E616C70;
  }

  else
  {
    return 0x636E65756C666E69;
  }
}

uint64_t sub_1AFB9ADB8@<X0>(char *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1AFB9AE1C(uint64_t a1)
{
  v2 = sub_1AFBAC458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB9AE58(uint64_t a1)
{
  v2 = sub_1AFBAC458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AFB9AE94(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AFBA40B0(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 16) = v5;
  }
}

double sub_1AFB9AF04@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1048576000;
  result = 0.0078125;
  *(a1 + 16) = xmmword_1AFE20160;
  return result;
}

void sub_1AFB9AF1C(uint64_t a1, int32x4_t a2, float a3, float a4)
{
  v7 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  v8 = a2;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = v10 - v9;
  if (v10 != v9)
  {
    v12 = vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL);
    v13 = vnegq_f32(a2);
    v14 = a3 * a4;
    v15 = (v7 + 16 * v9);
    v16 = xmmword_1AFE21390;
    v52 = v13;
    v53 = v12;
    do
    {
      v18 = *v15;
      v19 = vmulq_f32(v18, v18);
      v19.f32[0] = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
      if (v19.f32[0] > 0.000001 && ((v20 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v21 = vmlaq_f32(vmulq_f32(v20, v13), v18, v12), v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), v23 = vmlaq_f32(vmulq_f32(v12, vnegq_f32(v22)), v8, vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL)), v24 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), v25 = vabsq_f32(v24), v25.f32[0] <= 0.00000011921) ? (v26 = v25.f32[1] > 0.00000011921) : (v26 = 1), !v26 ? (v27 = v25.f32[2] > 0.00000011921) : (v27 = 1), v27))
      {
        v28 = vmulq_f32(v23, v23);
        *&v29 = v28.f32[1] + (v28.f32[2] + v28.f32[0]);
        *v28.f32 = vrsqrte_f32(v29);
        *v28.f32 = vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32)));
        v17 = vmulq_n_f32(v24, vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32))).f32[0]);
        v30 = vdivq_f32(v18, vdupq_lane_s32(*v19.f32, 0));
        v30.f32[2] = v18.f32[2] / v19.f32[0];
        v31 = vmulq_f32(v30, v17);
        v17.i32[3] = HIDWORD(v16);
        v32 = v31.f32[2] + vaddv_f32(*v31.f32);
        if (v32 <= 1.0)
        {
          v56 = v17;
          v58 = *v15;
          if (v32 < -1.0)
          {
            v33 = 3.1416;
            goto LABEL_19;
          }

          v54 = v20;
          v51 = v24;
          v33 = acosf(v32);
          v24 = v51;
          v20 = v54;
          v18 = v58;
          if (v33 > 0.001)
          {
LABEL_19:
            if ((v14 * v33) < v33)
            {
              v33 = v14 * v33;
            }

            v34 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), vnegq_f32(v18)), v24, v20);
            v35 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
            v36 = vmulq_f32(v34, v34);
            *&v37 = v36.f32[1] + (v36.f32[2] + v36.f32[0]);
            *v36.f32 = vrsqrte_f32(v37);
            *v36.f32 = vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32)));
            v55 = vmulq_n_f32(v35, vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32))).f32[0]);
            v38 = __sincosf_stret(v33 * 0.5);
            v39 = vmulq_n_f32(v55, v38.__sinval);
            v40 = v39;
            v40.i32[3] = LODWORD(v38.__cosval);
            v41 = vmulq_f32(v40, xmmword_1AFE21390);
            v42 = vnegq_f32(v41);
            v43 = vtrn2q_s32(v41, vtrn1q_s32(v41, v42));
            v44 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v41, v42, 8uLL), *v58.f32, 1), vextq_s8(v43, v43, 8uLL), v58.f32[0]);
            v45 = vrev64q_s32(v41);
            v45.i32[0] = v42.i32[1];
            v45.i32[3] = v42.i32[2];
            v46 = vmlaq_laneq_f32(v44, v45, v58, 2);
            v47 = vnegq_f32(v46);
            v48 = vtrn2q_s32(v46, vtrn1q_s32(v46, v47));
            v49 = vrev64q_s32(v46);
            v49.i32[0] = v47.i32[1];
            v49.i32[3] = v47.i32[2];
            v50 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v46, v40, 3), v49, v39, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v46, v47, 8uLL), *v39.f32, 1), vextq_s8(v48, v48, 8uLL), v39.f32[0]));
            v50.i32[3] = 0;
            *v15 = v50;
          }

          v17 = v56;
          v8 = a2;
          v13 = v52;
          v12 = v53;
        }
      }

      else
      {
        v17 = v16;
      }

      ++v15;
      v16 = v17;
      --v11;
    }

    while (v11);
  }
}

uint64_t sub_1AFB9B274()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB9B344()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFB9B400()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB9B4CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBA2348();
  *a1 = result;
  return result;
}

void sub_1AFB9B4FC(uint64_t *a1@<X8>)
{
  v2 = 0xEF7373656E6B6369;
  v3 = 0x6854726564726F62;
  v4 = 0xE700000000000000;
  v5 = 0x3272656E726F63;
  if (*v1 != 2)
  {
    v5 = 0x61657241776F6873;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x3172656E726F63;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1AFB9B588()
{
  v1 = 0x6854726564726F62;
  v2 = 0x3272656E726F63;
  if (*v0 != 2)
  {
    v2 = 0x61657241776F6873;
  }

  if (*v0)
  {
    v1 = 0x3172656E726F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AFB9B610@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBA2348();
  *a1 = result;
  return result;
}

uint64_t sub_1AFB9B638(uint64_t a1)
{
  v2 = sub_1AFBAC4AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB9B674(uint64_t a1)
{
  v2 = sub_1AFBAC4AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFB9B77C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x40000000;
  result = -524288.378;
  *(a1 + 16) = xmmword_1AFEA0660;
  *(a1 + 32) = xmmword_1AFEA0670;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1AFB9B7DC(void *a1, int a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(void), double a7, __n128 a8, __n128 a9)
{
  v21 = a2;
  v20 = a9;
  v22 = a8;
  sub_1AFBAC650(0, a3, a4, a5, MEMORY[0x1E69E6F58]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v20 - v16;
  sub_1AF441150(a1, a1[3]);
  a6();
  sub_1AFDFF3F8();
  v24.n128_u8[0] = 0;
  sub_1AFDFE8E8();
  if (!v9)
  {
    v24 = v22;
    v23 = 1;
    v18 = MEMORY[0x1E69E7450];
    sub_1AFBAC650(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AFBAC3F4(&qword_1ED72F758, &qword_1ED72F740, v18);
    sub_1AFDFE918();
    v24 = v20;
    v23 = 2;
    sub_1AFDFE918();
    v24.n128_u8[0] = 3;
    sub_1AFDFE8C8();
  }

  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1AFB9BA74()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB9BB48()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFB9BC08()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB9BCD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBA23E0();
  *a1 = result;
  return result;
}

void sub_1AFB9BD08(uint64_t *a1@<X8>)
{
  v2 = 0x636E65756C666E69;
  v3 = 0xEB000000006C616DLL;
  v4 = 0x726F4E656E616C70;
  if (*v1 != 2)
  {
    v4 = 0x6E616C50776F6873;
    v3 = 0xE900000000000065;
  }

  v5 = 0xEB00000000726574;
  if (*v1)
  {
    v2 = 0x6E6543656E616C70;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  *a1 = v6;
  a1[1] = v7;
}

uint64_t sub_1AFB9BD98()
{
  v1 = 0x636E65756C666E69;
  v2 = 0x726F4E656E616C70;
  if (*v0 != 2)
  {
    v2 = 0x6E616C50776F6873;
  }

  if (*v0)
  {
    v1 = 0x6E6543656E616C70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AFB9BE24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBA23E0();
  *a1 = result;
  return result;
}

uint64_t sub_1AFB9BE4C(uint64_t a1)
{
  v2 = sub_1AFBAC500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB9BE88(uint64_t a1)
{
  v2 = sub_1AFBAC500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AFB9BF14(void *a1@<X0>, unint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X5>, void (*a5)(void)@<X6>, uint64_t a6@<X8>)
{
  v9 = sub_1AFBA3DEC(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = v9;
    *(a6 + 16) = v10;
    *(a6 + 32) = v11;
    *(a6 + 48) = v8 & 1;
  }
}

double sub_1AFB9BFD8@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1088421888;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  result = 0.0078125;
  *(a1 + 32) = xmmword_1AFE20160;
  *(a1 + 48) = 1;
  return result;
}

uint64_t sub_1AFB9BFFC(uint64_t a1, __n128 a2, float32x4_t a3, float32x4_t a4)
{
  result = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  v6.i64[1] = a2.n128_i64[1];
  if (a2.n128_f32[0] == 1.0)
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56) - v7;
    if (v8)
    {
      v9 = (result + 16 * v7);
      do
      {
        v10 = vmulq_f32(vsubq_f32(*v9, a4), a3);
        v11 = vaddv_f32(*v10.f32);
        v12.i64[0] = vsubq_f32(*v9, vmulq_n_f32(a3, v10.f32[2] + v11)).u64[0];
        v12.f32[2] = COERCE_FLOAT(v9->i64[1]) - (a3.f32[2] * (v10.f32[2] + v11));
        v12.i32[3] = 1.0;
        *v9++ = v12;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v13 = *(a1 + 48);
    v14 = *(a1 + 56) - v13;
    if (v14)
    {
      v15 = vmuls_lane_f32(a2.n128_f32[0], a3, 2);
      *v6.f32 = vdup_lane_s32(a2.n128_u64[0], 0);
      v16 = vmulq_f32(v6, a3);
      v17 = (result + 16 * v13);
      do
      {
        v18 = vmulq_f32(vsubq_f32(*v17, a4), a3);
        v19 = vaddv_f32(*v18.f32);
        v20.i64[0] = vsubq_f32(*v17, vmulq_n_f32(v16, v18.f32[2] + v19)).u64[0];
        v20.f32[2] = COERCE_FLOAT(v17->i64[1]) - (v15 * (v18.f32[2] + v19));
        v20.i32[3] = 1.0;
        *v17++ = v20;
        --v14;
      }

      while (v14);
    }
  }

  return result;
}

uint64_t sub_1AFB9C15C(void *a1)
{
  sub_1AFBAC650(0, &qword_1EB6430B0, sub_1AFBAC554, &type metadata for ParticleFlockingFlyTowardsArea.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBAC554();
  sub_1AFDFF3F8();
  v17 = 0;
  sub_1AFDFE8E8();
  if (!v1)
  {
    v16 = 1;
    sub_1AFDFE8E8();
    v15 = 2;
    sub_1AFDFE8E8();
    v14 = 3;
    sub_1AFDFE8E8();
    v13 = 4;
    sub_1AFDFE8E8();
    v12 = 5;
    sub_1AFDFE8E8();
    v11 = 6;
    sub_1AFDFE8C8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AFB9C3A0()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFB9C4C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBA22FC();
  *a1 = result;
  return result;
}

void sub_1AFB9C4F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x636E65756C666E69;
  v4 = 0xE90000000000006CLL;
  v5 = 0x6556746F5278616DLL;
  if (v2 != 5)
  {
    v5 = 0x61657241776F6873;
    v4 = 0xE800000000000000;
  }

  v6 = 0x6C676E4177656976;
  v7 = 0x80000001AFF241B0;
  if (v2 == 3)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*v1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x737569646172;
  if (v2 != 1)
  {
    v9 = 0x65636E6174736964;
    v8 = 0xEF66666F6C6C6146;
  }

  if (*v1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0xE900000000000065;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  *a1 = v10;
  a1[1] = v11;
}