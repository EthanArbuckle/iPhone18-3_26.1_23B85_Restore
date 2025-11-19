uint64_t sub_1AFBF3108(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFBF3168()
{
  if (!qword_1ED723A90)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723A90);
    }
  }
}

void sub_1AFBF31E4()
{
  if (!qword_1ED723A88)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723A88);
    }
  }
}

void sub_1AFBF3260()
{
  if (!qword_1ED723A78)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723A78);
    }
  }
}

void sub_1AFBF32DC()
{
  if (!qword_1ED723A70)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723A70);
    }
  }
}

void sub_1AFBF3358()
{
  if (!qword_1ED723A68)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723A68);
    }
  }
}

void sub_1AFBF33D4(_OWORD *a1@<X8>)
{
  *&v2 = sub_1AF6DE28C();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AFBF3420()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v12 = qword_1ED73B840;
  v13 = 0;
  v14 = 2;
  v15 = 0;
  v16 = 2;
  v17 = 0;
  sub_1AF5C9078(v6);
  sub_1AF5FD7D8(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for WorldAABB;
  *(inited + 40) = &off_1F2510390;
  sub_1AF5D1EC0(inited, v7);
  sub_1AFBF444C(v6, sub_1AFBF44AC);
  swift_setDeallocating();
  v2 = v7[1];
  *(v0 + 16) = v7[0];
  *(v0 + 32) = v2;
  *(v0 + 48) = v8;
  sub_1AF8D4518(1, 1, 2, v9);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  *(v3 + 32) = &type metadata for Fixed;
  *(v3 + 40) = &off_1F252A220;
  sub_1AF5D1EC0(v3, v10);
  sub_1AFBF444C(v9, sub_1AFBF4528);
  swift_setDeallocating();
  v4 = v10[1];
  *(v0 + 56) = v10[0];
  *(v0 + 72) = v4;
  *(v0 + 88) = v11;
  return v0;
}

uint64_t sub_1AFBF35E4()
{
  v0 = swift_allocObject();
  sub_1AFBF3420();
  return v0;
}

uint64_t sub_1AFBF3630(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + 32);
  v182[0] = *(v1 + 16);
  v182[1] = v4;
  v183 = *(v1 + 48);
  sub_1AF6B06C0(a1, v182, 0x200000000, v164);
  v125 = v3;
  if (*&v164[0])
  {
    v123 = v1;
    if (v167 >= 1 && v166)
    {
      v5 = v165;
      v6 = v165 + 48 * v166;
      v126 = v6;
      do
      {
        v7 = *(v5 + 40);
        v8 = *(v7 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v8);
        os_unfair_lock_lock(*(v7 + 344));
        v9 = *(v7 + 24);

        *&v170 = 0;
        v168 = 0u;
        v169 = 0u;
        *&v160 = 0;
        v158 = 0u;
        v159 = 0u;
        v10 = sub_1AF65A4B4(v9, &type metadata for WorldAABB, &off_1F2510410, 0, 0, &v168, &v158);

        sub_1AFBF444C(&v158, sub_1AF5C4448);
        sub_1AFBF444C(&v168, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v10);
        }

        else
        {
          v11 = *(v7 + 232);
          v12 = *(v7 + 240);
          v130 = *(v7 + 120);
          v148 = *(v7 + 28);
          v145 = *(v7 + 32);
          v13 = *(v7 + 16);
          v14 = *(v7 + 40);
          v15 = *(v14 + 200);
          v142 = *(*(v13 + 88) + 8 * v10 + 32);

          if ((v15 & 1) != 0 || *(v142 + 200) == 1)
          {
            *(v13 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v14 = *(v7 + 40);
          }

          v16 = *(v7 + 256);
          sub_1AF5B4FCC(v14, v11, v12, 0, v7);
          v134 = *(v7 + 256);
          v17 = v134 - v16;
          v137 = v16;
          if (v134 == v16)
          {
            v18 = 0;
          }

          else
          {
            v18 = v16;
          }

          v158.i64[0] = v18;
          v19 = *(*(v7 + 40) + 24);
          v20 = *(v19 + 16);
          if (v20)
          {
            v128 = v5;
            v21 = v19 + 32;

            for (i = 0; i != v20; ++i)
            {
              v23 = v21 + 40 * i;
              if ((*(v23 + 32) & 1) == 0)
              {
                v24 = *(v142 + 24);
                v25 = *(v24 + 16);
                if (v25)
                {
                  v26 = (v24 + 32);
                  while (*v26 != *v23)
                  {
                    v26 += 5;
                    if (!--v25)
                    {
                      goto LABEL_16;
                    }
                  }
                }

                else
                {
LABEL_16:
                  sub_1AF640BC8();
                }
              }
            }

            v5 = v128;
          }

          if (*(v13 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v13 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v7 + 72) * v17);
          }

          if (*(v7 + 184))
          {
            v27 = 0;
          }

          else
          {
            v27 = *(v7 + 168);
          }

          v152.i64[0] = 0;

          MEMORY[0x1EEE9AC00](v28, v29);
          v30 = v148;
          v31 = v145;
          v169.i64[0] = v27;
          v169.i32[2] = -1;
          *&v170 = v137;
          *(&v170 + 1) = v134;
          *&v171 = v137;
          *(&v171 + 1) = v134;
          v168.i64[0] = v137;
          v168.i64[1] = v134;
          if (v17 < 1)
          {

            v6 = v126;
          }

          else
          {
            v6 = v126;
            do
            {
              v151[0] = v31;
              sub_1AF6248A8(v10, v30 | (v31 << 32), v130, v13, &v168, sub_1AF5C5ACC);
              v31 = v145;
              v30 = v148;
            }

            while (v168.i64[1] - v168.i64[0] > 0);
          }

          v32 = *(v7 + 192);
          if (v32)
          {
            v33 = *(v7 + 208);
            sub_1AF75D364(v137, v134, v32);
            sub_1AF75D364(v137, v134, v33);
          }
        }

        v5 += 48;
        os_unfair_lock_unlock(*(v7 + 344));
        os_unfair_lock_unlock(*(v7 + 376));
      }

      while (v5 != v6);
    }

    sub_1AF5D1564(v164);
    v2 = v123;
    v3 = v125;
  }

  v34 = *(v2 + 72);
  v180[0] = *(v2 + 56);
  v180[1] = v34;
  v181 = *(v2 + 88);
  sub_1AF6B06C0(v3, v180, 0x200000000, &v168);
  v35 = v168.i64[0];
  if (!v168.i64[0])
  {
    v131 = 0;
    v36 = 0;
    v124 = 0;
    v37 = 0;
    v103 = 1;
    goto LABEL_102;
  }

  v131 = *(&v170 + 1);
  v36 = *(&v171 + 1);
  v37 = *(&v172 + 1);
  v124 = v172;
  if (v173 < 1)
  {
    v103 = 1;
    goto LABEL_102;
  }

  if (!*(&v171 + 1))
  {
    v103 = 0;
    goto LABEL_102;
  }

  v38 = *(v172 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v143 = *(*(&v172 + 1) + 32);
  v154 = v170;
  v155 = v171;
  v156 = v172;
  v157 = v173;
  v152 = v168;
  v153 = v169;
  v162 = v172;
  v163 = v173;
  v160 = v170;
  v161 = v171;
  v174 = v168.i64[0];
  v175 = v168.i32[2];
  v176 = v168.i8[12];
  v177 = v169.i64[0];
  v178 = v169.i8[8];
  v179 = v170;
  v158 = v168;
  v159 = v169;
  sub_1AF5DD298(&v158, v151);
  sub_1AF5DD298(&v152, v151);
  v39 = 0;
  v149 = v35 + 41;
  v127 = v38;
  v129 = v36;
  while (2)
  {
    v140 = v39;
    v40 = (v131 + 48 * v39);
    v41 = *v40;
    v132 = v40[1];
    v42 = *(v40 + 2);
    v43 = *(v40 + 3);
    v45 = *(v40 + 4);
    v44 = *(v40 + 5);
    if (v38)
    {
      v46 = *(v44 + 376);

      os_unfair_lock_lock(v46);
      os_unfair_lock_lock(*(v44 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v143);
    v135 = *(v37 + 64);
    v138 = *(v37 + 48);
    v133 = *(v37 + 80);
    v47 = *(*(*(*(v44 + 40) + 16) + 32) + 16) + 1;
    *(v37 + 48) = ecs_stack_allocator_allocate(*(v37 + 32), 48 * v47, 8);
    *(v37 + 56) = v47;
    *(v37 + 72) = 0;
    *(v37 + 80) = 0;
    *(v37 + 64) = 0;
    v48 = v44;
    v49 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v42, v43, v45, v37);
    v50 = sub_1AF64B110(&type metadata for LocalAABB, &off_1F25104C0, v42, v43, v45, v37);
    v146 = v48;
    v51 = sub_1AF64B110(&type metadata for WorldAABB, &off_1F2510410, v42, v43, v45, v37);
    if (v41 == v132)
    {
      v52 = xmmword_1AFE72000;
      v53 = xmmword_1AFE201A0;
    }

    else
    {
      v54 = v132 - v41;
      v55 = (v49 + (v41 << 6) + 32);
      v56 = (v51 + 32 * v41 + 16);
      v57 = (v50 + 32 * v41 + 16);
      v52 = xmmword_1AFE72000;
      v53 = xmmword_1AFE201A0;
      v58.i64[0] = 0x3F0000003F000000;
      v58.i64[1] = 0x3F0000003F000000;
      do
      {
        v59 = v55[-2];
        v60 = v55[-1];
        v61 = *v55;
        v62 = v55[1];
        v55 += 4;
        v63 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v62, v61, *v57[-2].i8, 2), v60, v57[-2], 1), v59, COERCE_FLOAT(*v57[-2].i8));
        v63.i32[3] = HIDWORD(*v57[-2].i8);
        v64 = *v57->i8;
        v64.i32[1] = *v57->i8;
        v64.i32[2] = v64.i32[1];
        v65 = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v60), vuzp2q_s32(vdupq_lane_s32(*v57, 1), *v57->i8)), v64, vabsq_f32(v59)), vzip2q_s32(vtrn1q_s32(*v57->i8, *v57->i8), *v57->i8), vabsq_f32(v61));
        v56[-1] = v63;
        *v56 = v65;
        v66 = vminnmq_f32(vsubq_f32(v53, v52), vsubq_f32(v63, v65));
        v67 = vmaxnmq_f32(vaddq_f32(v52, v53), vaddq_f32(v65, v63));
        v53 = vmulq_f32(vaddq_f32(v66, v67), v58);
        v52 = vmulq_f32(vsubq_f32(v67, v66), v58);
        v56 += 2;
        v57 += 4;
        --v54;
      }

      while (v54);
    }

    v48[17] = v53;
    v48[18] = v52;
    v48[19].i32[0] = v48[7].i32[1];
    v68 = *(v37 + 48);
    v69 = *(v37 + 64);
    if (!v69)
    {
      v89 = *(v37 + 56);
      v90 = *(v37 + 32);
      v38 = v127;
      goto LABEL_80;
    }

    for (j = 0; j != v69; ++j)
    {
      v72 = (v68 + 48 * j);
      v73 = *v72;
      v74 = v72[4];
      v75 = *(v37 + 72);
      if (v75)
      {
        v76 = v73 == v75;
      }

      else
      {
        v76 = 0;
      }

      if (v76 || !v35[11])
      {
        goto LABEL_53;
      }

      v77 = v72[2];
      v78 = v35[9];
      if (v78 >= 0x10)
      {
        v79 = v35 + 41;
        v80 = &v149[v35[8]];
        v81 = v78 >> 4;
        while (*v80 != v73)
        {
          ++v79;
          v80 += 16;
          if (!--v81)
          {
            goto LABEL_69;
          }
        }

        v82 = v79[v35[10]];
        v83 = v82 > 5;
        v84 = (1 << v82) & 0x23;
        if (v83 || v84 == 0)
        {
LABEL_53:

          v74(v71);

          continue;
        }
      }

LABEL_69:
      if (swift_conformsToProtocol2() && v77)
      {
        if (sub_1AF5FC8D8(v77))
        {
          goto LABEL_53;
        }

        v86 = v35[9];
        if (v86 < 0x10)
        {
          goto LABEL_53;
        }

        v87 = &v149[v35[8]];
        v88 = 16 * (v86 >> 4);
        while (*v87 != v77)
        {
          v87 += 16;
          v88 -= 16;
          if (!v88)
          {
            goto LABEL_53;
          }
        }
      }
    }

    v89 = *(v37 + 56);
    v68 = *(v37 + 48);
    v90 = *(v37 + 32);
    v38 = v127;
    if (*(v37 + 64) >= 1)
    {
      swift_arrayDestroy();
    }

LABEL_80:
    v91 = v146;
    ecs_stack_allocator_deallocate(v90, v68, 48 * v89);
    *(v37 + 48) = v138;
    *(v37 + 64) = v135;
    *(v37 + 80) = v133;
    v36 = v129;
    if (*(*(v37 + 104) + 16))
    {

      sub_1AF62F348(v92, v146);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = *(v37 + 104);
      if (isUniquelyReferenced_nonNull_native)
      {
        v95 = v94[2];
        v96 = swift_isUniquelyReferenced_nonNull_native();
        *(v37 + 104) = v94;
        if ((v96 & 1) == 0)
        {
          v94 = sub_1AF420EA0(0, v95, 1, v94);
          *(v37 + 104) = v94;
        }

        sub_1AF43A540(0);
        swift_arrayDestroy();
        if (v95)
        {
          v97 = v94[2] - v95;
          memmove(v94 + 4, &v94[9 * v95 + 4], 72 * v97);
          v94[2] = v97;
          v91 = v146;
        }

        *(v37 + 104) = v94;
      }

      else
      {
        v98 = MEMORY[0x1E69E7CC0];
        if (v94[3] >= 2uLL)
        {
          sub_1AF5FD7D8(0, &qword_1ED7269C0, sub_1AF43A540);
          v98 = swift_allocObject();
          v99 = j__malloc_size_0(v98);
          v98[2] = 0;
          v98[3] = 2 * ((v99 - 32) / 72);
        }

        *(v37 + 104) = v98;
      }

      if (*(*(v37 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
      {
        v100 = *(v91 + 232);
        v101 = *(v91 + 256);
        if (v100 == v101)
        {
          v102 = *(v91 + 240);
        }

        else
        {
          sub_1AF6497A0(v101, v100);
          v101 = *(v91 + 232);
          v102 = *(v91 + 240);
          if (v102 == v101)
          {
            v102 = 0;
            v101 = 0;
            *(v91 + 232) = 0;
            *(v91 + 240) = 0;
          }
        }

        *(v91 + 248) = v102;
        *(v91 + 256) = v101;
      }
    }

    ecs_stack_allocator_pop_snapshot(v143);
    if (v38)
    {
      os_unfair_lock_unlock(*(v91 + 344));
      os_unfair_lock_unlock(*(v91 + 376));
    }

    v39 = v140 + 1;
    if (v140 + 1 != v129)
    {
      continue;
    }

    break;
  }

  sub_1AF5D1564(&v168);
  sub_1AF5D1564(&v168);
  v103 = 0;
  v3 = v125;
LABEL_102:
  *v106.i64 = sub_1AF6DE28C();
  v152 = v106;
  v153 = v107;
  if (v35 && (v103 & 1) == 0 && v36)
  {
    v147 = v107;
    v150 = v106;
    v108 = *(v37 + 32);
    v109 = *(v124 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    sub_1AF5D15C0(&v168, &v158);
    v110 = (v131 + 40);
    do
    {
      v114 = *v110;
      if (v109)
      {
        v115 = *(v114 + 376);

        os_unfair_lock_lock(v115);
        os_unfair_lock_lock(*(v114 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v108);
      v116 = *(v37 + 80);
      v117 = *(*(*(*(v114 + 40) + 16) + 32) + 16) + 1;
      v136 = *(v37 + 64);
      v139 = *(v37 + 48);
      v118 = ecs_stack_allocator_allocate(*(v37 + 32), 48 * v117, 8);
      *(v37 + 48) = v118;
      *(v37 + 56) = v117;
      *(v37 + 72) = 0;
      *(v37 + 80) = 0;
      *(v37 + 64) = 0;
      v141 = *(v114 + 288);
      v144 = *(v114 + 272);
      ecs_stack_allocator_deallocate(*(v37 + 32), v118, 48 * v117);
      *(v37 + 48) = v139;
      *(v37 + 64) = v136;
      *(v37 + 80) = v116;
      sub_1AF62D29C(v114);
      ecs_stack_allocator_pop_snapshot(v108);
      if (v109)
      {
        os_unfair_lock_unlock(*(v114 + 344));
        os_unfair_lock_unlock(*(v114 + 376));
      }

      v111 = vminnmq_f32(vsubq_f32(v150, v147), vsubq_f32(v144, v141));
      v112 = vmaxnmq_f32(vaddq_f32(v147, v150), vaddq_f32(v144, v141));
      v113.i64[0] = 0x3F0000003F000000;
      v113.i64[1] = 0x3F0000003F000000;
      v147 = vmulq_f32(vsubq_f32(v112, v111), v113);
      v150 = vmulq_f32(vaddq_f32(v111, v112), v113);

      v110 += 6;
      --v36;
    }

    while (v36);
    v104 = sub_1AF5D1564(&v168);
    v152 = v150;
    v153 = v147;
    v3 = v125;
  }

  MEMORY[0x1EEE9AC00](v104, v105);
  v119 = *(v3 + 184);
  MEMORY[0x1EEE9AC00](v120, v121);

  sub_1AF6D655C(&type metadata for SceneWorldAABB, &off_1F2569C10, v119, sub_1AF6FFFE8);
  sub_1AF5D1564(&v168);
}

__n128 sub_1AFBF443C(_OWORD *a1)
{
  v2 = *(v1 + 16);
  result = *v2;
  v4 = *(v2 + 16);
  *a1 = *v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AFBF444C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFBF44AC()
{
  if (!qword_1ED723A60)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723A60);
    }
  }
}

void sub_1AFBF4528()
{
  if (!qword_1ED723968)
  {
    v0 = type metadata accessor for Query3();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723968);
    }
  }
}

uint64_t sub_1AFBF45C8(void *a1)
{
  sub_1AFBF5708(0, &qword_1EB643560, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBF56B4();
  sub_1AFDFF3F8();
  v14 = 0;
  sub_1AFDFE8E8();
  if (!v1)
  {
    v13 = 1;
    sub_1AFDFE8E8();
    v12 = 2;
    sub_1AFDFE8E8();
    v11 = 3;
    sub_1AFDFE8E8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AFBF4798()
{
  v1 = 0x737569646172;
  v2 = 0x64656570536E69;
  if (*v0 != 2)
  {
    v2 = 0x73656E7468676974;
  }

  if (*v0)
  {
    v1 = 0x7053646E756F7261;
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

uint64_t sub_1AFBF481C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFBF4C50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFBF4844(uint64_t a1)
{
  v2 = sub_1AFBF56B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBF4880(uint64_t a1)
{
  v2 = sub_1AFBF56B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AFBF48BC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AFBF4DBC(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
    *(a2 + 8) = v6;
    *(a2 + 12) = v7;
  }
}

double sub_1AFBF492C@<D0>(_OWORD *a1@<X8>)
{
  result = 3.96316838e17;
  *a1 = xmmword_1AFEA5B30;
  return result;
}

uint64_t sub_1AFBF4978(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 88);
  v44 = *(a1 + 72);
  v45 = v3;
  v4 = *(a1 + 120);
  v46 = *(a1 + 104);
  v47 = v4;
  v5 = *(a1 + 24);
  v40 = v2;
  v41 = v5;
  v6 = *(a1 + 56);
  v42 = *(a1 + 40);
  v43 = v6;
  v7 = v2;

  v8 = sub_1AF3CFA7C(*(&v7 + 1));
  v10 = v9;
  v12 = v11;

  if (v12)
  {
    v13 = 1050253722;
  }

  else
  {
    v13 = HIDWORD(v10);
  }

  if (v12)
  {
    LODWORD(v10) = 1128792064;
    v14 = 1133903872;
  }

  else
  {
    v14 = HIDWORD(v8);
  }

  if (v12)
  {
    v15 = 20.0;
  }

  else
  {
    v15 = *&v8;
  }

  sub_1AF3C9244(*(&v7 + 1), v38);
  v31 = v38[3];
  v33 = v38[1];

  if (v39)
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  v17 = vdupq_n_s32(v16);
  v34 = vbslq_s8(v17, xmmword_1AFE20160, v33);
  v32 = vbslq_s8(v17, 0, v31);
  sub_1AFB93E58();
  v35[0] = v18;
  v35[1] = v13;
  *&v35[2] = 1.0 / v15;
  *&v35[3] = v15;
  v35[4] = v10;
  v35[5] = v14;
  v36 = v32;
  v37 = v34;
  if (*a1)
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for particle_vortex_uniforms(0);
    sub_1AF6F4524(v35, 1, ObjectType, v20, v21, v22, v23, v24);
  }

  v25 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v26 = v42;

  v27 = v25;

  MEMORY[0x1EEE9AC00](v28, v29);
  sub_1AFCBF008(v26, sub_1AF9D17D4);
}

uint64_t sub_1AFBF4C50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737569646172 && a2 == 0xE600000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7053646E756F7261 && a2 == 0xEB00000000646565 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656570536E69 && a2 == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656E7468676974 && a2 == 0xE900000000000073)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

float sub_1AFBF4DBC(void *a1)
{
  sub_1AFBF5708(0, &qword_1EB643550, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12[-v8];
  sub_1AF441150(a1, a1[3]);
  sub_1AFBF56B4();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v12[15] = 0;
    sub_1AFDFE738();
    v2 = v10;
    v12[14] = 1;
    sub_1AFDFE738();
    v12[13] = 2;
    sub_1AFDFE738();
    v12[12] = 3;
    sub_1AFDFE738();
    (*(v6 + 8))(v9, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AFBF4FD8(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  swift_retain_n();
  v4 = sub_1AF3CFA7C(v2);
  v6 = v5;
  v8 = v7;

  if (v8)
  {
    v9 = 0.3;
  }

  else
  {
    v9 = *(&v6 + 1);
  }

  if (v8)
  {
    v10 = 200.0;
  }

  else
  {
    v10 = *&v6;
  }

  if (v8)
  {
    v11 = 300.0;
  }

  else
  {
    v11 = *(&v4 + 1);
  }

  if (v8)
  {
    v12 = 20.0;
  }

  else
  {
    v12 = *&v4;
  }

  sub_1AF3C9244(v2, v92);
  v78 = v93;
  v81 = v94;

  if (v95)
  {
    v13 = -1;
  }

  else
  {
    v13 = 0;
  }

  sub_1AFB93E58();
  v15 = v14;
  v16 = *(a1 + 104);
  v104 = *(a1 + 88);
  v105 = v16;
  v106 = *(a1 + 120);
  sub_1AF5C9174(v96);
  v102[0] = v96[0];
  v102[1] = v96[1];
  v103 = v97;
  sub_1AF6B06C0(v3, v102, 0x200000000, v98);
  if (*v98)
  {
    if (v101 <= 0)
    {
      v88 = *&v98[32];
      v89 = v99;
      v90 = v100;
      v91 = v101;
      v86 = *v98;
      v87 = *&v98[16];
      sub_1AF5DD298(&v86, &v83);
      sub_1AFBF5644(v96, sub_1AFA0D2A0);

      sub_1AFBF5644(v98, sub_1AF5C3C90);
    }

    else
    {
      v80 = *(&v99 + 1);
      if (*(&v99 + 1))
      {
        v17 = 0;
        v18 = vdupq_n_s32(v13);
        v19 = vbslq_s8(v18, xmmword_1AFE20160, v78);
        v77 = vbslq_s8(v18, xmmword_1AFE201A0, v81);
        v20 = v12 * v12;
        v76 = 1.0 - (v9 * v15);
        v75 = *&v98[40];
        v21 = *(&v100 + 1);
        v22 = *(*(&v100 + 1) + 32);
        v23 = *(v100 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v83 = *v98;
        v84 = *&v98[8];
        v85 = *&v98[24];
        v24 = (1.0 / v12) * (v9 * v15);
        v25 = v19.f32[2];
        v79 = v19;
        v71 = vnegq_f32(v19);
        v72 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
        v73 = v23;
        v74 = v22;
        do
        {
          v26 = (v75 + 48 * v17);
          v27 = *v26;
          v82 = v26[1];
          v28 = *(v26 + 2);
          v29 = *(v26 + 3);
          v30 = *(v26 + 4);
          v31 = *(v26 + 5);
          if (v23)
          {
            v32 = *(v31 + 376);

            os_unfair_lock_lock(v32);
            os_unfair_lock_lock(*(v31 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v22);
          v33 = *(v21 + 64);
          v86 = *(v21 + 48);
          v87 = v33;
          *&v88 = *(v21 + 80);
          v34 = *(*(*(*(v31 + 40) + 16) + 32) + 16) + 1;
          *(v21 + 48) = ecs_stack_allocator_allocate(*(v21 + 32), 48 * v34, 8);
          *(v21 + 56) = v34;
          *(v21 + 72) = 0;
          *(v21 + 80) = 0;
          *(v21 + 64) = 0;
          v35 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v28, v29, v30, v21);
          v36 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v28, v29, v30, v21);
          if (v28)
          {
            for (; v30; --v30)
            {
              v37 = vsubq_f32(*v35, v77);
              v38 = vmulq_f32(v79, v37);
              v39 = vmulq_f32(v37, v37);
              v40 = vzip1q_s32(v38, v39);
              v41 = vadd_f32(vzip1_s32(*&vextq_s8(v38, v38, 8uLL), *&vextq_s8(v39, v39, 8uLL)), vadd_f32(*v40.i8, *&vextq_s8(v40, v40, 8uLL)));
              *v39.i8 = vmul_f32(v41, v41);
              v43 = *v39.i32 < v20;
              LODWORD(v42) = vsub_f32(vdup_lane_s32(v41, 1), *v39.i8).u32[0];
              v43 = v43 && v42 < v20;
              if (v43)
              {
                v44 = vmul_n_f32(*v79.f32, *v41.i32);
                v45 = (v25 * *v41.i32) - v37.f32[2];
                v46 = v24 * (v12 - sqrtf(v42));
                v47 = v10 * v46;
                v48 = (v45 * (v10 * v46)) + vmuls_lane_f32(v76, *v36, 2);
                v49 = v11 * v46;
                *v37.f32 = vsub_f32(v44, *v37.f32);
                v37.f32[2] = v45;
                v50 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), v71), v37, v72);
                v44.i32[0] = vextq_s8(v50, v50, 8uLL).u32[0];
                v44.i32[1] = v50.i32[0];
                *v51.f32 = vadd_f32(vmul_n_f32(v44, v49), vadd_f32(vmul_n_f32(*v37.f32, v47), vmul_n_f32(*v36->f32, v76)));
                v51.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v49, *v50.i8, 1) + v48);
                *v36 = v51;
              }

              ++v36;
              ++v35;
            }
          }

          else if (v27 != v82)
          {
            v52 = v82 - v27;
            v53 = &v36[v27];
            v54 = &v35[v27];
            do
            {
              v55 = vsubq_f32(*v54, v77);
              v56 = vmulq_f32(v79, v55);
              v57 = vmulq_f32(v55, v55);
              v58 = vzip1q_s32(v56, v57);
              v59 = vadd_f32(vzip1_s32(*&vextq_s8(v56, v56, 8uLL), *&vextq_s8(v57, v57, 8uLL)), vadd_f32(*v58.i8, *&vextq_s8(v58, v58, 8uLL)));
              *v57.i8 = vmul_f32(v59, v59);
              v43 = *v57.i32 < v20;
              LODWORD(v60) = vsub_f32(vdup_lane_s32(v59, 1), *v57.i8).u32[0];
              if (v43 && v60 < v20)
              {
                v62 = vmul_n_f32(*v79.f32, *v59.i32);
                v63 = (v25 * *v59.i32) - v55.f32[2];
                v64 = v24 * (v12 - sqrtf(v60));
                v65 = v10 * v64;
                v66 = (v63 * (v10 * v64)) + vmuls_lane_f32(v76, *v53, 2);
                v67 = v11 * v64;
                *v55.f32 = vsub_f32(v62, *v55.f32);
                v55.f32[2] = v63;
                v68 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), v71), v55, v72);
                v62.i32[0] = vextq_s8(v68, v68, 8uLL).u32[0];
                v62.i32[1] = v68.i32[0];
                *v69.f32 = vadd_f32(vmul_n_f32(v62, v67), vadd_f32(vmul_n_f32(*v55.f32, v65), vmul_n_f32(*v53->f32, v76)));
                v69.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v67, *v68.i8, 1) + v66);
                *v53 = v69;
              }

              ++v53;
              ++v54;
              --v52;
            }

            while (v52);
          }

          sub_1AF630994(v21, &v83, &v86);
          sub_1AF62D29C(v31);
          v22 = v74;
          ecs_stack_allocator_pop_snapshot(v74);
          v23 = v73;
          if (v73)
          {
            os_unfair_lock_unlock(*(v31 + 344));
            os_unfair_lock_unlock(*(v31 + 376));
          }

          ++v17;
        }

        while (v17 != v80);
      }

      sub_1AFBF5644(v96, sub_1AFA0D2A0);
    }

    return sub_1AFBF5644(v98, sub_1AF5C3C90);
  }

  else
  {
    sub_1AFBF5644(v96, sub_1AFA0D2A0);
  }
}

uint64_t sub_1AFBF5644(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AFBF56B4()
{
  result = qword_1EB643558;
  if (!qword_1EB643558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643558);
  }

  return result;
}

void sub_1AFBF5708(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFBF56B4();
    v7 = a3(a1, &type metadata for Vortex.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFBF5780()
{
  result = qword_1EB643568;
  if (!qword_1EB643568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643568);
  }

  return result;
}

unint64_t sub_1AFBF57D8()
{
  result = qword_1EB643570;
  if (!qword_1EB643570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643570);
  }

  return result;
}

unint64_t sub_1AFBF5830()
{
  result = qword_1EB643578;
  if (!qword_1EB643578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643578);
  }

  return result;
}

void sub_1AFBF5AE8(void *a1)
{
  v2 = [a1 worldRef];
  if (v2)
  {
    v9 = v2;
    if (sub_1AF1CFF64(v2, 1))
    {
    }

    else
    {
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      v3 = OBJC_IVAR____TtC3VFX14VFXGazeTracker_worlds;
      v4 = *(v1 + OBJC_IVAR____TtC3VFX14VFXGazeTracker_worlds);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v3) = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v4 = sub_1AF4282E0(0, v4[2] + 1, 1, v4);
        *(v1 + v3) = v4;
      }

      v7 = v4[2];
      v6 = v4[3];
      if (v7 >= v6 >> 1)
      {
        *(v1 + v3) = sub_1AF4282E0(v6 > 1, v7 + 1, 1, v4);
      }

      v8 = *(v1 + v3);
      *(v8 + 16) = v7 + 1;
      sub_1AFBF5E00(v10, v8 + 16 * v7 + 32);
      *(v1 + v3) = v8;
    }
  }
}

id sub_1AFBF5C24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VFXGazeTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void destroy for TriggerWorldPair()
{
  MEMORY[0x1B271E060]();

  JUMPOUT(0x1B271E060);
}

uint64_t initializeWithCopy for TriggerWorldPair(uint64_t a1)
{
  swift_unknownObjectWeakCopyInit();
  swift_unknownObjectWeakCopyInit();
  return a1;
}

uint64_t assignWithCopy for TriggerWorldPair(uint64_t a1)
{
  swift_unknownObjectWeakCopyAssign();
  swift_unknownObjectWeakCopyAssign();
  return a1;
}

uint64_t initializeWithTake for TriggerWorldPair(uint64_t a1)
{
  swift_unknownObjectWeakTakeInit();
  swift_unknownObjectWeakTakeInit();
  return a1;
}

uint64_t assignWithTake for TriggerWorldPair(uint64_t a1)
{
  swift_unknownObjectWeakTakeAssign();
  swift_unknownObjectWeakTakeAssign();
  return a1;
}

uint64_t sub_1AFBF5E00(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeInit();
  swift_unknownObjectWeakTakeInit();
  return a2;
}

uint64_t sub_1AFBF5E40(uint64_t a1, void *a2)
{
  v2 = *(*a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v21 = *a1;
  v3 = 0;
  for (i = 6; ; i += 2)
  {
    sub_1AFBF61F0(&v21[i - 2], v20);
    sub_1AFDFD638();
    sub_1AFDFD628();
    sub_1AFDFD5B8();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      break;
    }

    sub_1AFBF6230(v20);
LABEL_4:
    if (v2 == ++v3)
    {
      return v21[2];
    }
  }

  v6 = Strong;
  sub_1AF45F940();
  v7 = a2;
  v8 = sub_1AFDFDC48();

  sub_1AFBF6230(v20);
  if ((v8 & 1) == 0)
  {
    goto LABEL_4;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1AFC0DE48(v21);
  }

  if (v21[2] - 1 != v3)
  {
    v11 = v3 + 1;
    v18 = v21 + 4;
    v12 = &v21[i];
    v9 = v21;
    while (1)
    {
      sub_1AFBF61F0(v12, v20);
      sub_1AFDFD628();
      sub_1AFDFD5B8();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = v13;
        v15 = v7;
        v16 = sub_1AFDFDC48();

        v9 = v21;
        sub_1AFBF6230(v20);
        if (v16)
        {
          goto LABEL_19;
        }

        if (v11 != v3)
        {
LABEL_27:
          sub_1AFBF61F0(&v18[2 * v3], v20);
          sub_1AFBF6260(v12, &v18[2 * v3]);
          sub_1AFBF62A0(v20, v12);
        }
      }

      else
      {

        sub_1AFBF6230(v20);
        if (v11 != v3)
        {
          goto LABEL_27;
        }
      }

      ++v3;
LABEL_19:
      ++v11;
      v12 += 2;
      if (v11 == v9[2])
      {
        goto LABEL_13;
      }
    }
  }

  v9 = v21;
LABEL_13:
  *a1 = v9;
  return v3;
}

void sub_1AFBF6118(void *a1)
{
  v1 = qword_1EB6C3608;
  if (qword_1EB6C3608)
  {
    v2 = OBJC_IVAR____TtC3VFX14VFXGazeTracker_worlds;
    v3 = a1;
    v4 = v1;
    v5 = sub_1AFBF5E40(&v1[v2], v3);

    sub_1AF64EB00(v5, *(*&v1[v2] + 16));
    v6 = *(*&v1[v2] + 16);

    if (v6)
    {
      return;
    }

    v7 = qword_1EB6C3608;
  }

  else
  {
    v7 = 0;
  }

  qword_1EB6C3608 = 0;
}

uint64_t sub_1AFBF61F0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  swift_unknownObjectWeakCopyInit();
  return a2;
}

uint64_t sub_1AFBF6230(uint64_t a1)
{
  MEMORY[0x1B271E060]();
  MEMORY[0x1B271E060](a1 + 8);
  return a1;
}

uint64_t sub_1AFBF6260(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyAssign();
  swift_unknownObjectWeakCopyAssign();
  return a2;
}

uint64_t sub_1AFBF62A0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeAssign();
  swift_unknownObjectWeakTakeAssign();
  return a2;
}

uint64_t sub_1AFBF62E0(char a1)
{
  result = 1953460082;
  switch(a1)
  {
    case 1:
      result = 1835819376;
      break;
    case 2:
      result = 0x7473697277;
      break;
    case 3:
      result = 0x756E4B626D756874;
      break;
    case 4:
    case 7:
      result = 0xD000000000000015;
      break;
    case 5:
    case 17:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x706954626D756874;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 10:
    case 19:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0x6E69467865646E69;
      break;
    case 12:
    case 22:
      result = 0xD000000000000016;
      break;
    case 13:
    case 23:
      result = 0xD000000000000013;
      break;
    case 14:
    case 24:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0xD00000000000001BLL;
      break;
    case 16:
      v3 = 1684302189;
      goto LABEL_25;
    case 18:
      result = 0xD000000000000011;
      break;
    case 20:
      result = 0xD000000000000019;
      break;
    case 21:
      result = 0x676E6946676E6972;
      break;
    case 25:
      result = 0xD00000000000001BLL;
      break;
    case 26:
      v3 = 1953786220;
LABEL_25:
      result = v3 | 0x6946656C00000000;
      break;
    case 27:
      result = 0x576D726165726F66;
      break;
    case 28:
      result = 0x416D726165726F66;
      break;
    default:
      return result;
  }

  return result;
}

_DWORD *sub_1AFBF65F8@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1AFBF66D8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AFBF62E0(*a1);
  v5 = v4;
  if (v3 == sub_1AFBF62E0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AFBF6760@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBF7608();
  *a1 = result;
  return result;
}

uint64_t sub_1AFBF6790@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AFBF62E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AFBF67CC()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AFBF62E0(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFBF6830()
{
  sub_1AFBF62E0(*v0);
  sub_1AFDFD038();
}

uint64_t sub_1AFBF6884()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AFBF62E0(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

void sub_1AFBF6994(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = [a1 name];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1AFDFCEF8();
    v11 = v10;

    if (*(a3 + 16))
    {
      v12 = sub_1AF419914(v9, v11);
      v14 = v13;

      if (v14)
      {
        v15 = *(*(a3 + 56) + v12);
        v16 = a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *a4;
        *a4 = 0x8000000000000000;
        sub_1AF859308(v16, v15, isUniquelyReferenced_nonNull_native);
        *a4 = v18;
      }
    }

    else
    {
    }
  }
}

void sub_1AFBF6A98(void *a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5 = [a1 rootNode];
  aBlock[4] = sub_1AFBF6E00;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AFBF6E20;
  aBlock[3] = &unk_1F24E6280;
  v6 = _Block_copy(aBlock);

  v7 = [v5 childNodesPassingTest_];

  _Block_release(v6);
  swift_isEscapingClosureAtFileLocation();
  sub_1AF9B3D50();
  v8 = sub_1AFDFD418();

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_20:

    goto LABEL_21;
  }

  if (!sub_1AFDFE108())
  {
    goto LABEL_20;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1B2719C70](0, v8);
  }

  else
  {
    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = [v10 childNodes];
  v12 = sub_1AFDFD418();

  if (v12 >> 62)
  {
    v13 = sub_1AFDFE108();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 != 2)
  {

LABEL_21:
    return;
  }

  v14 = [v10 childNodes];
  v15 = sub_1AFDFD418();

  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_25:

    *a2 = MEMORY[0x1E69E7CC0];
    return;
  }

  v16 = sub_1AFDFE108();
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_10:
  aBlock[0] = v4;
  sub_1AFC07ABC(0, v16 & ~(v16 >> 63), 0);
  v17 = 0;
  v18 = aBlock[0];
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1B2719C70](v17, v15);
    }

    else
    {
      v19 = *(v15 + 8 * v17 + 32);
    }

    v20 = sub_1AFBF765C(v19);
    aBlock[0] = v18;
    v23 = *(v18 + 16);
    v22 = *(v18 + 24);
    if (v23 >= v22 >> 1)
    {
      v26 = v20;
      v25 = v21;
      sub_1AFC07ABC(v22 > 1, v23 + 1, 1);
      v21 = v25;
      v20 = v26;
      v18 = aBlock[0];
    }

    ++v17;
    *(v18 + 16) = v23 + 1;
    v24 = v18 + 16 * v23;
    *(v24 + 32) = v20;
    *(v24 + 40) = v21 & 1;
  }

  while (v16 != v17);

  *a2 = v18;
}

uint64_t sub_1AFBF6E20(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_1AFBF6ED8(void *a1)
{
  v2 = a1;
  sub_1AFBF6A98(v2, v13);
  if (qword_1EB637308 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB6435A0);
  v3 = OBJC_IVAR____TtC3VFX14VFXHandTracker__worlds;
  v4 = *(v1 + OBJC_IVAR____TtC3VFX14VFXHandTracker__worlds);

  os_unfair_lock_unlock(&dword_1EB6435A0);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    while (1)
    {
      sub_1AFBF7E64(v6, v12);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1AFBF7EB0(v12);
      if (Strong)
      {

        if (Strong == v2)
        {
          break;
        }
      }

      v6 += 2;
      if (!--v5)
      {
        goto LABEL_9;
      }
    }

    sub_1AFBF7EB0(v13);
  }

  else
  {
LABEL_9:

    sub_1AFBF7E64(v13, v12);
    os_unfair_lock_lock(&dword_1EB6435A0);
    v9 = *(v1 + v3);

    os_unfair_lock_unlock(&dword_1EB6435A0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1AF428410(0, v9[2] + 1, 1, v9);
    }

    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1AF428410(v10 > 1, v11 + 1, 1, v9);
    }

    v9[2] = v11 + 1;
    sub_1AFBF7F70(v12, &v9[2 * v11 + 4]);
    os_unfair_lock_lock(&dword_1EB6435A0);
    *(v1 + v3) = v9;

    os_unfair_lock_unlock(&dword_1EB6435A0);
    return sub_1AFBF7EB0(v13);
  }
}

void sub_1AFBF70B8(void *a1)
{
  v2 = v1;
  v3 = qword_1EB637308;
  v4 = a1;
  if (v3 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB6435A0);
  v5 = OBJC_IVAR____TtC3VFX14VFXHandTracker__worlds;
  v6 = *(v2 + OBJC_IVAR____TtC3VFX14VFXHandTracker__worlds);

  os_unfair_lock_unlock(&dword_1EB6435A0);
  v17 = v6;
  v7 = sub_1AFBF7CB8(&v17, v4);

  v8 = v17;
  v9 = v17[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v7 > v8[3] >> 1)
  {
    if (v9 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }

    v8 = sub_1AF428410(isUniquelyReferenced_nonNull_native, v11, 1, v8);
    v17 = v8;
  }

  sub_1AF64EBD4(v7, v9, 0);
  os_unfair_lock_lock(&dword_1EB6435A0);
  *(v2 + v5) = v8;

  os_unfair_lock_unlock(&dword_1EB6435A0);
  os_unfair_lock_lock(&dword_1EB6435A0);
  v12 = qword_1EB6435A8;
  v16 = qword_1EB6435A8;
  os_unfair_lock_unlock(&dword_1EB6435A0);
  if (v12)
  {
    os_unfair_lock_lock(&dword_1EB6435A0);
    v13 = *(v2 + v5);

    os_unfair_lock_unlock(&dword_1EB6435A0);
    v14 = *(v13 + 16);

    if (!v14)
    {
      [v16 stop];
      os_unfair_lock_lock(&dword_1EB6435A0);
      v15 = qword_1EB6435A8;
      qword_1EB6435A8 = 0;

      os_unfair_lock_unlock(&dword_1EB6435A0);
    }
  }
}

void sub_1AFBF72C4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = qword_1EB637310;
  v7 = a3;
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB6C3610;
  a4(v7);
}

id sub_1AFBF7358()
{
  result = [objc_allocWithZone(type metadata accessor for VFXHandTracker()) init];
  qword_1EB6C3610 = result;
  return result;
}

id sub_1AFBF7388()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VFXHandTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void destroy for VFXHandTracker.HandsInstance()
{

  JUMPOUT(0x1B271E060);
}

void *initializeWithCopy for VFXHandTracker.HandsInstance(void *a1, void *a2)
{
  *a1 = *a2;

  swift_unknownObjectWeakCopyInit();
  return a1;
}

void *assignWithCopy for VFXHandTracker.HandsInstance(void *a1, void *a2)
{
  *a1 = *a2;

  swift_unknownObjectWeakCopyAssign();
  return a1;
}

void *initializeWithTake for VFXHandTracker.HandsInstance(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakTakeInit();
  return a1;
}

void *assignWithTake for VFXHandTracker.HandsInstance(void *a1, void *a2)
{
  *a1 = *a2;

  swift_unknownObjectWeakTakeAssign();
  return a1;
}

unint64_t sub_1AFBF7560()
{
  result = qword_1EB6435C0;
  if (!qword_1EB6435C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6435C0);
  }

  return result;
}

unint64_t sub_1AFBF75B4()
{
  result = qword_1EB6435C8;
  if (!qword_1EB6435C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6435C8);
  }

  return result;
}

uint64_t sub_1AFBF7608()
{
  v0 = sub_1AFDFF118();

  if (v0 >= 0x1D)
  {
    return 29;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFBF765C(void *a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v28 = sub_1AF4409B4(MEMORY[0x1E69E7CC0]);
  v29 = 0;
  v2 = sub_1AF440AD8(v1);
  for (i = 0; i != 29; ++i)
  {
    v5 = byte_1F24F4360[i + 32];
    v6 = 0xE400000000000000;
    v7 = 1953460082;
    switch(v5)
    {
      case 1:
        v7 = 1835819376;
        break;
      case 2:
        v6 = 0xE500000000000000;
        v7 = 0x7473697277;
        break;
      case 3:
        v6 = 0xEC000000656C6B63;
        v7 = 0x756E4B626D756874;
        break;
      case 4:
        v7 = 0xD000000000000015;
        v6 = 0x80000001AFF27030;
        break;
      case 5:
        v7 = 0xD000000000000014;
        v6 = 0x80000001AFF27050;
        break;
      case 6:
        v6 = 0xE800000000000000;
        v7 = 0x706954626D756874;
        break;
      case 7:
        v7 = 0xD000000000000015;
        v6 = 0x80000001AFF27070;
        break;
      case 8:
        v7 = 0xD000000000000012;
        v6 = 0x80000001AFF27090;
        break;
      case 9:
        v7 = 0xD00000000000001BLL;
        v6 = 0x80000001AFF270B0;
        break;
      case 10:
        v7 = 0xD00000000000001ALL;
        v6 = 0x80000001AFF270D0;
        break;
      case 11:
        v6 = 0xEE00706954726567;
        v7 = 0x6E69467865646E69;
        break;
      case 12:
        v7 = 0xD000000000000016;
        v6 = 0x80000001AFF27100;
        break;
      case 13:
        v7 = 0xD000000000000013;
        v6 = 0x80000001AFF27120;
        break;
      case 14:
        v7 = 0xD00000000000001CLL;
        v6 = 0x80000001AFF27140;
        break;
      case 15:
        v7 = 0xD00000000000001BLL;
        v6 = 0x80000001AFF27160;
        break;
      case 16:
        v8 = 1684302189;
        goto LABEL_33;
      case 17:
        v7 = 0xD000000000000014;
        v6 = 0x80000001AFF27190;
        break;
      case 18:
        v7 = 0xD000000000000011;
        v6 = 0x80000001AFF271B0;
        break;
      case 19:
        v7 = 0xD00000000000001ALL;
        v6 = 0x80000001AFF271D0;
        break;
      case 20:
        v7 = 0xD000000000000019;
        v6 = 0x80000001AFF271F0;
        break;
      case 21:
        v6 = 0xED00007069547265;
        v7 = 0x676E6946676E6972;
        break;
      case 22:
        v7 = 0xD000000000000016;
        v6 = 0x80000001AFF27220;
        break;
      case 23:
        v7 = 0xD000000000000013;
        v6 = 0x80000001AFF27240;
        break;
      case 24:
        v7 = 0xD00000000000001CLL;
        v6 = 0x80000001AFF27260;
        break;
      case 25:
        v7 = 0xD00000000000001BLL;
        v6 = 0x80000001AFF27280;
        break;
      case 26:
        v8 = 1953786220;
LABEL_33:
        v7 = v8 | 0x6946656C00000000;
        v6 = 0xEF7069547265676ELL;
        break;
      case 27:
        v6 = 0xEC00000074736972;
        v7 = 0x576D726165726F66;
        break;
      case 28:
        v6 = 0xEA00000000006D72;
        v7 = 0x416D726165726F66;
        break;
      default:
        break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v2;
    v10 = sub_1AF419914(v7, v6);
    v12 = v11;
    v13 = v2[2] + ((v11 & 1) == 0);
    if (v2[3] < v13)
    {
      sub_1AF841EF4(v13, isUniquelyReferenced_nonNull_native);
      v10 = sub_1AF419914(v7, v6);
      if ((v12 & 1) != (v14 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }

LABEL_38:
      if ((v12 & 1) == 0)
      {
        goto LABEL_2;
      }

      goto LABEL_39;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_38;
    }

    v16 = v10;
    sub_1AF850120();
    v10 = v16;
    if ((v12 & 1) == 0)
    {
LABEL_2:
      v2 = aBlock[0];
      *(aBlock[0] + 8 * (v10 >> 6) + 64) |= 1 << v10;
      v4 = (v2[6] + 16 * v10);
      *v4 = v7;
      v4[1] = v6;
      *(v2[7] + v10) = v5;
      ++v2[2];
      continue;
    }

LABEL_39:
    v15 = v10;

    v2 = aBlock[0];
    *(*(aBlock[0] + 56) + v15) = v5;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = &v28;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AFBF7FC0;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1AFBF7FC8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AF92EF7C;
  aBlock[3] = &unk_1F256A068;
  v19 = _Block_copy(aBlock);

  [a1 enumerateChildNodesUsingBlock_];
  _Block_release(v19);
  swift_isEscapingClosureAtFileLocation();

  v20 = v28;
  if (v28[2])
  {
    v21 = sub_1AF419B48(2);
    if (v22)
    {
      v23 = [*(v20[7] + 8 * v21) parentNode];
      if (v23)
      {
        sub_1AF8265D4(v23, 0);
      }
    }
  }

  v24 = v28;

  return v24;
}

uint64_t sub_1AFBF7CB8(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = 6; ; i += 2)
  {
    sub_1AFBF7E64(&v2[i - 2], v16);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      break;
    }

    sub_1AFBF7EB0(v16);
LABEL_4:
    if (v3 == ++v6)
    {
      return v2[2];
    }
  }

  v9 = Strong;

  sub_1AFBF7EB0(v16);
  if (v9 != a2)
  {
    goto LABEL_4;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AFC0DE5C(v2);
  }

  if (v2[2] - 1 != v6)
  {
    v11 = v6 + 1;
    v12 = v2 + 4;
    v13 = &v2[i];
    do
    {
      sub_1AFBF7E64(v13, v16);
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        v15 = v14;

        sub_1AFBF7EB0(v16);
        if (v15 == a2)
        {
          goto LABEL_16;
        }

        if (v11 != v6)
        {
LABEL_22:
          sub_1AFBF7E64(&v12[2 * v6], v16);
          sub_1AFBF7EE8(v13, &v12[2 * v6]);
          sub_1AFBF7F20(v16, v13);
        }
      }

      else
      {
        sub_1AFBF7EB0(v16);
        if (v11 != v6)
        {
          goto LABEL_22;
        }
      }

      ++v6;
LABEL_16:
      ++v11;
      v13 += 2;
    }

    while (v11 != v2[2]);
  }

  *a1 = v2;
  return v6;
}

void *sub_1AFBF7E64(void *a1, void *a2)
{
  *a2 = *a1;

  swift_unknownObjectWeakCopyInit();
  return a2;
}

uint64_t sub_1AFBF7EB0(uint64_t a1)
{
  v2 = a1 + 8;

  MEMORY[0x1B271E060](v2);
  return a1;
}

void *sub_1AFBF7F20(void *a1, void *a2)
{
  *a2 = *a1;

  swift_unknownObjectWeakTakeAssign();
  return a2;
}

void *sub_1AFBF7F70(void *a1, void *a2)
{
  *a2 = *a1;
  swift_unknownObjectWeakTakeInit();
  return a2;
}

uint64_t sub_1AFBF7FA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t assignWithCopy for VFXHandTracker.Hand(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for VFXHandTracker.Hand(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for VFXHandTracker.Hand(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for VFXHandTracker.Hand(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VFXHandTracker.Joint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 28;
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

      return (*a1 | (v4 << 8)) - 28;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VFXHandTracker.Joint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE4)
  {
    v4 = 0;
  }

  if (a2 > 0xE3)
  {
    v5 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
    *result = a2 + 28;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AFBF828C()
{
  result = qword_1EB6435E0;
  if (!qword_1EB6435E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6435E0);
  }

  return result;
}

unint64_t sub_1AFBF8314()
{
  result = qword_1ED7255D0;
  if (!qword_1ED7255D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7255D0);
  }

  return result;
}

void sub_1AFBF8374(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1AFBF8498()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC3VFX16VFXMotionTracker_motionManager;
    v20 = Strong;
    [*(v0 + OBJC_IVAR____TtC3VFX16VFXMotionTracker_motionManager) startDeviceMotionUpdatesUsingReferenceFrame_];
    [*(v0 + v2) deviceMotionUpdateInterval];
    v4 = v3;
    [*(v0 + v2) gyroUpdateInterval];
    v6 = v5;
    [*(v0 + v2) magnetometerUpdateInterval];
    if (v6 >= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = v6;
    }

    if (v7 >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    v10 = [v20 worldRef];
    if (v10)
    {
      v11 = v10;
      if (!sub_1AF1CFF64(v10, 1))
      {
        v12 = objc_opt_self();
        v13 = *(v0 + v2);
        v14 = swift_allocObject();
        *(v14 + 16) = v13;
        *(v14 + 24) = v11;
        aBlock[4] = sub_1AFBF8F70;
        aBlock[5] = v14;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1AFBF8374;
        aBlock[3] = &unk_1F24E62A8;
        v15 = _Block_copy(aBlock);
        v16 = v13;
        v17 = v11;

        v18 = [v12 scheduledTimerWithTimeInterval:1 repeats:v15 block:v9];

        _Block_release(v15);
        v19 = *(v0 + OBJC_IVAR____TtC3VFX16VFXMotionTracker_motionUpdateTimer);
        *(v0 + OBJC_IVAR____TtC3VFX16VFXMotionTracker_motionUpdateTimer) = v18;

        return;
      }
    }
  }
}

void sub_1AFBF86A8(int a1, id a2, void *a3)
{
  v5 = [a2 deviceMotion];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 attitude];

    [v7 rotationMatrix];
    v8.i64[1] = *&aBlock.f64[1];
    *v8.i8 = vcvt_f32_f64(aBlock);
    v85 = v8;
    *&v9 = v88;
    v8.i64[0] = 0;
    v8.i64[1] = v9;
    v10.i64[1] = *&v89.f64[1];
    *v10.i8 = vcvt_f32_f64(v89);
    v79 = v10;
    *v10.i32 = v90;
    v11.i64[0] = 0;
    v11.i64[1] = v10.u32[0];
    v81 = v11;
    v83 = v8;

    v12.i64[1] = *&v91.f64[1];
    *v12.i8 = vcvt_f32_f64(v91);
    *&v13 = v92;
    v14.i64[0] = 0;
    v15 = vzip1q_s32(v79, 0);
    v14.i64[1] = v13;
    v16 = vzip1q_s32(v85, v12);
    v17 = vzip2q_s32(v83, v14);
    v18 = vzip2q_s32(v81, xmmword_1AFE201A0);
    v77 = vzip1q_s32(v16, v15);
    v78 = vzip2q_s32(v16, v15);
    v80 = vzip1q_s32(v17, v18);
    v82 = vzip2q_s32(v17, v18);
  }

  else
  {
    v82 = xmmword_1AFE201A0;
    v80 = xmmword_1AFE20180;
    v78 = xmmword_1AFE20160;
    v77 = xmmword_1AFE20150;
  }

  v19 = [a2 deviceMotion];
  v86 = 0u;
  v20 = 0uLL;
  if (v19)
  {
    v21 = v19;
    [v19 rotationRate];
    v23 = v22;
    v25 = v24;
    v27 = v26;

    *&v28 = v23;
    *&v29 = v25;
    *&v30 = v27;
    v20.i64[0] = __PAIR64__(v29, v28);
    v20.i64[1] = v30;
  }

  v75 = v20;
  v31 = [a2 deviceMotion];
  if (v31)
  {
    v32 = v31;
    [v31 gravity];
    v34 = v33;
    v36 = v35;
    v38 = v37;

    *&v39 = v34;
    *&v40 = v36;
    *&v41 = v38;
    *&v42 = __PAIR64__(v40, v39);
    *(&v42 + 1) = v41;
    v86 = v42;
  }

  v43 = [a2 deviceMotion];
  v84 = 0u;
  v44 = 0;
  v45 = 0;
  if (v43)
  {
    v46 = v43;
    [v43 userAcceleration];
    v48 = v47;
    v50 = v49;
    v52 = v51;

    *&v53 = v48;
    *&v54 = v50;
    *&v55 = v52;
    v44 = __PAIR64__(v54, v53);
    v45 = v55;
  }

  v56 = [a2 deviceMotion];
  if (v56)
  {
    v57 = v56;
    [v56 magneticField];

    *&v58 = vcvt_f32_f64(aBlock);
    *&v59 = v88;
    *(&v58 + 1) = v59;
    v84 = v58;
  }

  v60 = [a2 deviceMotion];
  v61 = 0;
  if (v60)
  {
    v62 = v60;
    [v60 magneticField];

    if (LODWORD(v89.f64[0]) <= 2)
    {
      v61 = dword_1AFEA6124[LODWORD(v89.f64[0])];
    }
  }

  v63 = [a2 deviceMotion];
  if (v63)
  {
    v64 = v63;
    [v63 heading];
    v66 = v65;

    v67 = v66;
    v68 = (v67 * 3.1416) / 180.0;
  }

  else
  {
    v68 = -1.0;
  }

  *&v69 = vmulq_f32(v75, vdupq_n_s32(0x3C8EFA35u)).u64[0];
  *(&v69 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(0.017453, v75, 2));
  v76 = v69;
  v70 = objc_opt_self();
  *&v71 = COERCE_DOUBLE(swift_allocObject());
  *(v71 + 16) = a3;
  *(v71 + 32) = v77;
  *(v71 + 48) = v78;
  *(v71 + 64) = v80;
  *(v71 + 80) = v82;
  *(v71 + 96) = v76;
  *(v71 + 112) = v86;
  *(v71 + 128) = v74;
  *(v71 + 144) = v84;
  *(v71 + 160) = v61;
  *(v71 + 164) = v68;
  *&v89.f64[1] = sub_1AFBF8F90;
  v90 = *&v71;
  *&aBlock.f64[0] = MEMORY[0x1E69E9820];
  *&aBlock.f64[1] = 1107296256;
  v88 = COERCE_DOUBLE(sub_1AFCDA98C);
  *&v89.f64[0] = &unk_1F256A280;
  v72 = _Block_copy(&aBlock);
  v73 = a3;

  [v70 postCommandWithWorldRef:v73 applyBlock:v72];
  _Block_release(v72);
}

uint64_t sub_1AFBF8B38(uint64_t a1, _OWORD *a2)
{
  v3 = sub_1AF1CF8AC(a1);
  v4 = *(sub_1AF0FB884(v3) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v5 = a2[7];
  v18 = a2[6];
  v19 = v5;
  v20 = a2[8];
  v6 = a2[3];
  v14 = a2[2];
  v15 = v6;
  v7 = a2[5];
  v16 = a2[4];
  v17 = v7;
  v8 = a2[1];
  v13[0] = *a2;
  v13[1] = v8;
  v9 = *(v4 + 184);

  sub_1AF6D2ADC(&type metadata for VFXMotionDataComponent, &off_1F254AE48, v9, sub_1AFBF8F9C);

  v10 = *(v4 + 184);

  sub_1AF6D5188(&type metadata for TriggerListComponent, &off_1F255DD10, v10, v13);

  BYTE2(v14) = 1;
  v11 = *(v4 + 184);

  sub_1AF6D2ADC(&type metadata for TriggerListComponent, &off_1F255DD10, v11, sub_1AFBF8FCC);

  swift_unknownObjectRelease();

  return sub_1AF645830(v13);
}

id sub_1AFBF8EBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VFXMotionTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AFBF8F78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_1AFBF8F9C(uint64_t a1)
{
  v2 = *(v1 + 16);
  *a1 = *v2;
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 64);
  *(a1 + 48) = *(v2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  result = *(v2 + 80);
  v7 = *(v2 + 96);
  v8 = *(v2 + 128);
  *(a1 + 112) = *(v2 + 112);
  *(a1 + 128) = v8;
  *(a1 + 80) = result;
  *(a1 + 96) = v7;
  return result;
}

uint64_t sub_1AFBF8FF0(uint64_t a1, uint64_t a2)
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v134 = qword_1ED73B840;
  v135 = 0;
  v136 = 2;
  v137 = 0;
  v138 = 2;
  v139 = 0;
  sub_1AF703D7C(2, v95);
  v132[0] = v95[0];
  v132[1] = v95[1];
  v133 = v96;
  sub_1AF6B06C0(a1, v132, 0x200000000, v97);
  v67 = *v97;
  if (*v97)
  {
    v64 = *&v97[40];
    v4 = *(&v98 + 1);
    v5 = *(&v99 + 1);
    v117 = *&v97[8];
    v118 = *&v97[24];
    if (v100 > 0 && *(&v98 + 1))
    {
      v84 = *(*(&v99 + 1) + 32);
      v81 = *(v99 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      inited = type metadata accessor for ParticleInitScript(0);
      *&v109[32] = *&v97[32];
      v110 = v98;
      v111 = v99;
      v112 = v100;
      *v109 = *v97;
      *&v109[16] = *&v97[16];
      sub_1AF5DD298(v109, v103);
      v7 = 0;
      v58 = inited;
      v61 = v4;
      v8 = inited - 8;
      do
      {
        v73 = v7;
        v9 = (v64 + 48 * v7);
        v10 = *v9;
        v11 = v9[1];
        v70 = *(v9 + 2);
        v76 = *(v9 + 3);
        v13 = *(v9 + 4);
        v12 = *(v9 + 5);
        if (v81)
        {
          v14 = *(v12 + 376);

          os_unfair_lock_lock(v14);
          os_unfair_lock_lock(*(v12 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v84);
        v15 = *(v5 + 64);
        v142[0] = *(v5 + 48);
        v142[1] = v15;
        v143 = *(v5 + 80);
        v16 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;
        *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v16, 8);
        *(v5 + 56) = v16;
        *(v5 + 72) = 0;
        *(v5 + 80) = 0;
        *(v5 + 64) = 0;
        v17 = v76;
        v77 = v12;
        v18 = sub_1AF64B110(v58, &off_1F255B9C0, v70, v17, v13, v5);
        if (v70)
        {
          if (v13)
          {
            v19 = *(*v8 + 72);
            do
            {
              sub_1AFBFA060(v18, a1, a2);
              v18 += v19;
              --v13;
            }

            while (v13);
          }
        }

        else
        {
          while (v11 != v10)
          {
            sub_1AFBFA060(v18 + *(*v8 + 72) * v10++, a1, a2);
          }
        }

        v119 = v67;
        v120 = v117;
        v121 = v118;
        sub_1AF630994(v5, &v119, v142);
        sub_1AF62D29C(v77);
        ecs_stack_allocator_pop_snapshot(v84);
        if (v81)
        {
          os_unfair_lock_unlock(*(v77 + 344));
          os_unfair_lock_unlock(*(v77 + 376));
        }

        v7 = v73 + 1;
      }

      while (v73 + 1 != v61);
      sub_1AFBFAD10(v97, sub_1AF5C3C90);
      sub_1AFBFAD10(v97, sub_1AF5C3C90);
    }

    else
    {
      sub_1AFBFAD10(v97, sub_1AF5C3C90);
    }
  }

  sub_1AF703D5C(2, v101);
  v130[0] = v101[0];
  v130[1] = v101[1];
  v131 = v102;
  sub_1AF6B06C0(a1, v130, 0x200000000, v103);
  v68 = *v103;
  if (*v103)
  {
    v65 = *&v103[40];
    v20 = *(&v104 + 1);
    v21 = *(&v105 + 1);
    v115 = *&v103[8];
    v116 = *&v103[24];
    if (v106 > 0 && *(&v104 + 1))
    {
      v85 = *(*(&v105 + 1) + 32);
      v82 = *(v105 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      updated = type metadata accessor for ParticleUpdateScript(0);
      *&v109[32] = *&v103[32];
      v110 = v104;
      v111 = v105;
      v112 = v106;
      *v109 = *v103;
      *&v109[16] = *&v103[16];
      sub_1AF5DD298(v109, &v89);
      v23 = 0;
      v59 = updated;
      v62 = v20;
      v24 = updated - 8;
      do
      {
        v74 = v23;
        v25 = (v65 + 48 * v23);
        v26 = *v25;
        v27 = v25[1];
        v71 = *(v25 + 2);
        v78 = *(v25 + 3);
        v29 = *(v25 + 4);
        v28 = *(v25 + 5);
        if (v82)
        {
          v30 = *(v28 + 376);

          os_unfair_lock_lock(v30);
          os_unfair_lock_lock(*(v28 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v85);
        v31 = *(v21 + 64);
        v140[0] = *(v21 + 48);
        v140[1] = v31;
        v141 = *(v21 + 80);
        v32 = *(*(*(*(v28 + 40) + 16) + 32) + 16) + 1;
        *(v21 + 48) = ecs_stack_allocator_allocate(*(v21 + 32), 48 * v32, 8);
        *(v21 + 56) = v32;
        *(v21 + 72) = 0;
        *(v21 + 80) = 0;
        *(v21 + 64) = 0;
        v33 = v78;
        v79 = v28;
        v34 = sub_1AF64B110(v59, &off_1F255BAD0, v71, v33, v29, v21);
        if (v71)
        {
          if (v29)
          {
            v35 = *(*v24 + 72);
            do
            {
              sub_1AFBFA060(v34, a1, a2);
              v34 += v35;
              --v29;
            }

            while (v29);
          }
        }

        else
        {
          while (v27 != v26)
          {
            sub_1AFBFA060(v34 + *(*v24 + 72) * v26++, a1, a2);
          }
        }

        v122 = v68;
        v123 = v115;
        v124 = v116;
        sub_1AF630994(v21, &v122, v140);
        sub_1AF62D29C(v79);
        ecs_stack_allocator_pop_snapshot(v85);
        if (v82)
        {
          os_unfair_lock_unlock(*(v79 + 344));
          os_unfair_lock_unlock(*(v79 + 376));
        }

        v23 = v74 + 1;
      }

      while (v74 + 1 != v62);
      sub_1AFBFAD10(v103, sub_1AF5C3C90);
      sub_1AFBFAD10(v103, sub_1AF5C3C90);
    }

    else
    {
      sub_1AFBFAD10(v103, sub_1AF5C3C90);
    }
  }

  sub_1AF70335C(2, v107);
  v128[0] = v107[0];
  v128[1] = v107[1];
  v129 = v108;
  sub_1AF6B06C0(a1, v128, 0x200000000, v109);
  v66 = *v109;
  if (*v109)
  {
    v63 = *&v109[40];
    v36 = *(&v110 + 1);
    v83 = *(&v111 + 1);
    v113 = *&v109[8];
    v114 = *&v109[24];
    if (v112 <= 0)
    {
      v91 = *&v109[32];
      v92 = v110;
      v93 = v111;
      v94 = v112;
      v89 = *v109;
      v90 = *&v109[16];
      sub_1AF5DD298(&v89, v87);
      sub_1AFBFAD10(v95, sub_1AF81F794);
      sub_1AFBFAD10(v101, sub_1AF81F67C);
      v54 = sub_1AF81FD74;
      v55 = v107;
    }

    else
    {
      if (*(&v110 + 1))
      {
        v80 = *(*(&v111 + 1) + 32);
        v75 = *(v111 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v37 = type metadata accessor for GraphScript(0);
        v91 = *&v109[32];
        v92 = v110;
        v93 = v111;
        v94 = v112;
        v89 = *v109;
        v90 = *&v109[16];
        sub_1AF5DD298(&v89, v87);
        v38 = 0;
        v57 = v37;
        v60 = v36;
        v39 = v37 - 8;
        do
        {
          v40 = (v63 + 48 * v38);
          v41 = *v40;
          v42 = v40[1];
          v43 = *(v40 + 2);
          v45 = *(v40 + 4);
          v44 = *(v40 + 5);
          v86 = v44;
          v69 = *(v40 + 3);
          v72 = v38;
          if (v75)
          {
            v46 = *(v44 + 376);

            v47 = v46;
            v44 = v86;
            os_unfair_lock_lock(v47);
            os_unfair_lock_lock(*(v86 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v80);
          v48 = *(v83 + 64);
          v87[0] = *(v83 + 48);
          v87[1] = v48;
          v88 = *(v83 + 80);
          v49 = *(*(*(*(v44 + 40) + 16) + 32) + 16) + 1;
          *(v83 + 48) = ecs_stack_allocator_allocate(*(v83 + 32), 48 * v49, 8);
          *(v83 + 56) = v49;
          *(v83 + 72) = 0;
          *(v83 + 80) = 0;
          *(v83 + 64) = 0;
          v50 = sub_1AF64B110(v57, &off_1F255B548, v43, v69, v45, v83);
          if (v43)
          {
            if (v45)
            {
              v51 = *(*v39 + 72);
              do
              {
                sub_1AFBFA6B8(v50, a1, a2);
                v50 += v51;
                --v45;
              }

              while (v45);
            }
          }

          else
          {
            while (v42 != v41)
            {
              sub_1AFBFA6B8(v50 + *(*v39 + 72) * v41++, a1, a2);
            }
          }

          v125 = v66;
          v126 = v113;
          v127 = v114;
          sub_1AF630994(v83, &v125, v87);
          sub_1AF62D29C(v86);
          ecs_stack_allocator_pop_snapshot(v80);
          if (v75)
          {
            os_unfair_lock_unlock(*(v86 + 344));
            os_unfair_lock_unlock(*(v86 + 376));
          }

          v38 = v72 + 1;
        }

        while (v72 + 1 != v60);
      }

      else
      {
        v91 = *&v109[32];
        v92 = v110;
        v93 = v111;
        v94 = v112;
        v89 = *v109;
        v90 = *&v109[16];
        sub_1AF5DD298(&v89, v87);
      }

      sub_1AFBFAD10(v107, sub_1AF81FD74);
      sub_1AFBFAD10(v101, sub_1AF81F67C);
      v54 = sub_1AF81F794;
      v55 = v95;
    }

    sub_1AFBFAD10(v55, v54);
    sub_1AFBFAD10(v109, sub_1AF5C3C90);
    v53 = v109;
    v52 = sub_1AF5C3C90;
  }

  else
  {
    sub_1AFBFAD10(v95, sub_1AF81F794);
    sub_1AFBFAD10(v101, sub_1AF81F67C);
    v52 = sub_1AF81FD74;
    v53 = v107;
  }

  return sub_1AFBFAD10(v53, v52);
}

uint64_t sub_1AFBF9C14(uint64_t a1, uint64_t a2)
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v49 = qword_1ED73B840;
  v50 = 0;
  v51 = 2;
  v52 = 0;
  v53 = 2;
  v54 = 0;
  sub_1AF704004(2, v36);
  v47[0] = v36[0];
  v47[1] = v36[1];
  v48 = v37;
  sub_1AF6B06C0(a1, v47, 0x200000000, v38);
  v26 = *v38;
  if (*v38)
  {
    v25 = *&v38[40];
    v4 = *(&v39 + 1);
    v5 = *(&v40 + 1);
    v42 = *&v38[8];
    v43 = *&v38[24];
    if (v41 > 0 && *(&v39 + 1))
    {
      v32 = *(*(&v40 + 1) + 32);
      v31 = *(v40 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v35[2] = *&v38[32];
      v35[3] = v39;
      v35[4] = v40;
      v35[5] = v41;
      v35[0] = *v38;
      v35[1] = *&v38[16];
      sub_1AF5DD298(v35, v33);
      sub_1AF5B2388(0);
      v6 = 0;
      v23 = v7;
      v24 = v4;
      v8 = v7 - 8;
      do
      {
        v28 = v6;
        v9 = (v25 + 48 * v6);
        v10 = *v9;
        v11 = v9[1];
        v27 = *(v9 + 2);
        v29 = *(v9 + 3);
        v13 = *(v9 + 4);
        v12 = *(v9 + 5);
        if (v31)
        {
          v14 = *(v12 + 376);

          os_unfair_lock_lock(v14);
          os_unfair_lock_lock(*(v12 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v32);
        v15 = *(v5 + 64);
        v33[0] = *(v5 + 48);
        v33[1] = v15;
        v34 = *(v5 + 80);
        v16 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;
        *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v16, 8);
        *(v5 + 56) = v16;
        *(v5 + 72) = 0;
        *(v5 + 80) = 0;
        *(v5 + 64) = 0;
        v17 = v29;
        v30 = v12;
        v18 = sub_1AF64B110(v23, &off_1F2558F90, v27, v17, v13, v5);
        if (v27)
        {
          if (v13)
          {
            v19 = *(*v8 + 72);
            do
            {
              sub_1AFBFAD70(v18, a1, a2);
              v18 += v19;
              --v13;
            }

            while (v13);
          }
        }

        else
        {
          while (v11 != v10)
          {
            sub_1AFBFAD70(v18 + *(*v8 + 72) * v10++, a1, a2);
          }
        }

        v44 = v26;
        v45 = v42;
        v46 = v43;
        sub_1AF630994(v5, &v44, v33);
        sub_1AF62D29C(v30);
        ecs_stack_allocator_pop_snapshot(v32);
        if (v31)
        {
          os_unfair_lock_unlock(*(v30 + 344));
          os_unfair_lock_unlock(*(v30 + 376));
        }

        v6 = v28 + 1;
      }

      while (v28 + 1 != v24);
      sub_1AFBFAD10(v36, sub_1AFA9E64C);
      sub_1AFBFAD10(v38, sub_1AF5C3C90);
      v21 = v38;
      v20 = sub_1AF5C3C90;
    }

    else
    {
      sub_1AFBFAD10(v36, sub_1AFA9E64C);
      v20 = sub_1AF5C3C90;
      v21 = v38;
    }
  }

  else
  {
    v20 = sub_1AFA9E64C;
    v21 = v36;
  }

  return sub_1AFBFAD10(v21, v20);
}

unint64_t sub_1AFBFA060(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 32);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = result;
    v50 = *(a3 + *(type metadata accessor for BundleInfo() + 24));
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AFC0D9F4(v3);
      v3 = result;
    }

    v45 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v6 = v3 + 32;
    v48 = v5;
    v49 = v3;
    do
    {
      v12 = *v6;
      if (((*v6 >> 59) & 0x1E | (*v6 >> 2) & 1) != 4)
      {
        goto LABEL_7;
      }

      v13 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v14 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
      v15 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      KeyPath = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v51 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v52 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v17 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      v18 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x42);
      v57 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v58 = v18;
      if (v50 > 2025)
      {
        sub_1AF443EE0(v12);

        v5 = v48;
      }

      else
      {
        v47 = v17;
        sub_1AF3CBEEC(v13 | (v14 << 32), v53);
        v55[10] = v53[10];
        v55[11] = v53[11];
        v55[12] = v53[12];
        v56 = v54;
        v55[6] = v53[6];
        v55[7] = v53[7];
        v55[8] = v53[8];
        v55[9] = v53[9];
        v55[2] = v53[2];
        v55[3] = v53[3];
        v55[4] = v53[4];
        v55[5] = v53[5];
        v55[0] = v53[0];
        v55[1] = v53[1];
        if (sub_1AF9D050C(v55) == 1)
        {
          if (v13 == -1 && !v14 || ((v19 = v13, (v13 & 0x80000000) != 0) || v45[1] <= v13 || (v20 = *v45 + 12 * v13, v14 != -1) && *(v20 + 8) != v14 || (v21 = *(*(*(*(a2 + 88) + 8 * *(v20 + 6) + 32) + 16) + 128), !*(v21 + 16)) || (v39 = *(*(*(a2 + 88) + 8 * *(v20 + 6) + 32) + 16), v22 = sub_1AF449CB8(&type metadata for ParticlePlaneCollider), v19 = v13, (v23 & 1) == 0) || *(*(v39 + 24) + 16 * *(*(v21 + 56) + 8 * v22) + 32) != &type metadata for ParticlePlaneCollider) && ((v13 & 0x80000000) != 0 || v45[1] <= v19 || (v24 = *v45 + 12 * v19, v14 != -1) && *(v24 + 8) != v14 || (v25 = *(*(*(*(a2 + 88) + 8 * *(v24 + 6) + 32) + 16) + 128), !*(v25 + 16)) || (v40 = *(*(*(a2 + 88) + 8 * *(v24 + 6) + 32) + 16), v42 = v19, v26 = sub_1AF449CB8(&type metadata for ParticleSphereCollider), v19 = v42, (v27 & 1) == 0) || *(*(v40 + 24) + 16 * *(*(v25 + 56) + 8 * v26) + 32) != &type metadata for ParticleSphereCollider) && ((v13 & 0x80000000) != 0 || v45[1] <= v19 || (v28 = *v45 + 12 * v19, v14 != -1) && *(v28 + 8) != v14 || (v29 = *(*(*(*(a2 + 88) + 8 * *(v28 + 6) + 32) + 16) + 128), !*(v29 + 16)) || (v41 = *(*(*(a2 + 88) + 8 * *(v28 + 6) + 32) + 16), v43 = v19, v30 = sub_1AF449CB8(&type metadata for ParticleBoxCollider), v19 = v43, (v31 & 1) == 0) || *(*(v41 + 24) + 16 * *(*(v29 + 56) + 8 * v30) + 32) != &type metadata for ParticleBoxCollider) && ((v13 & 0x80000000) != 0 || v45[1] <= v19 || (v32 = *v45 + 12 * v19, v14 != -1) && *(v32 + 8) != v14 || (v33 = *(*(*(*(a2 + 88) + 8 * *(v32 + 6) + 32) + 16) + 128), !*(v33 + 16)) || (v44 = *(*(*(a2 + 88) + 8 * *(v32 + 6) + 32) + 16), v34 = sub_1AF449CB8(&type metadata for ParticleCylinderCollider), (v35 & 1) == 0) || *(*(v44 + 24) + 16 * *(*(v33 + 56) + 8 * v34) + 32) != &type metadata for ParticleCylinderCollider))
          {
LABEL_44:
            sub_1AF443EE0(v12);

            v17 = v47;
            v5 = v48;
            goto LABEL_6;
          }
        }

        else if (BYTE4(v55[0]) == 1 && !LODWORD(v55[0]))
        {
          goto LABEL_44;
        }

        sub_1AFDFDFD8();
        result = swift_conformsToProtocol2();
        if (!result)
        {
          __break(1u);
          return result;
        }

        v5 = v48;
        if (swift_dynamicCastMetatype())
        {
          KeyPath = swift_getKeyPath();
          v17 = 0;
          v57 = 1;
          v58 = 128;
          v51 = 0x6C616353666C6168;
          v15 = 0xE900000000000065;
          v52 = MEMORY[0x1E69E6448];
        }

        else
        {
          if (swift_dynamicCastMetatype())
          {
            KeyPath = swift_getKeyPath();
            v36 = MEMORY[0x1E69E7428];
            v37 = &unk_1ED72F770;
          }

          else
          {
            if (!swift_dynamicCastMetatype())
            {

              v17 = v47;
              goto LABEL_6;
            }

            KeyPath = swift_getKeyPath();
            v36 = MEMORY[0x1E69E7450];
            v37 = &qword_1ED72F740;
          }

          sub_1AF99D3F4(0, v37, v36);
          v52 = v38;
          v17 = 0;
          v57 = 1;
          v58 = 128;
          v51 = 0x6C616353666C6168;
          v15 = 0xE900000000000065;
        }
      }

LABEL_6:
      v7 = swift_allocObject();
      *(v7 + 16) = v13;
      *(v7 + 20) = v14;
      *(v7 + 24) = v51;
      *(v7 + 32) = v15;
      *(v7 + 40) = KeyPath;
      *(v7 + 48) = v52;
      *(v7 + 56) = v17;
      v8 = v58;
      *(v7 + 64) = v57;
      *(v7 + 66) = v8;
      v9 = v7 | 0x2000000000000000;
      v10 = *(v6 + 8);
      v11 = *(v6 + 16);
      sub_1AF443F24(*v6);
      sub_1AF444AF4(v11);
      *v6 = v9;
      *(v6 + 8) = v10;
      *(v6 + 16) = xmmword_1AFE4C460;
      *(v6 + 32) = 1;
      result = sub_1AF443F24(v12);
      v3 = v49;
LABEL_7:
      *(v5 + 32) = v3;
      v6 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t sub_1AFBFA6B8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    v5 = result;
    v50 = *(a3 + *(type metadata accessor for BundleInfo() + 24));
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AFC0D9F4(v3);
      v3 = result;
    }

    v45 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v6 = v3 + 32;
    v48 = v5;
    v49 = v3;
    do
    {
      v12 = *v6;
      if (((*v6 >> 59) & 0x1E | (*v6 >> 2) & 1) != 4)
      {
        goto LABEL_7;
      }

      v13 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v14 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
      v15 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      KeyPath = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v51 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v52 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v17 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      v18 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x42);
      v57 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v58 = v18;
      if (v50 > 2025)
      {
        sub_1AF443EE0(v12);

        v5 = v48;
      }

      else
      {
        v47 = v17;
        sub_1AF3CBEEC(v13 | (v14 << 32), v53);
        v55[10] = v53[10];
        v55[11] = v53[11];
        v55[12] = v53[12];
        v56 = v54;
        v55[6] = v53[6];
        v55[7] = v53[7];
        v55[8] = v53[8];
        v55[9] = v53[9];
        v55[2] = v53[2];
        v55[3] = v53[3];
        v55[4] = v53[4];
        v55[5] = v53[5];
        v55[0] = v53[0];
        v55[1] = v53[1];
        if (sub_1AF9D050C(v55) == 1)
        {
          if (v13 == -1 && !v14 || ((v19 = v13, (v13 & 0x80000000) != 0) || v45[1] <= v13 || (v20 = *v45 + 12 * v13, v14 != -1) && *(v20 + 8) != v14 || (v21 = *(*(*(*(a2 + 88) + 8 * *(v20 + 6) + 32) + 16) + 128), !*(v21 + 16)) || (v39 = *(*(*(a2 + 88) + 8 * *(v20 + 6) + 32) + 16), v22 = sub_1AF449CB8(&type metadata for ParticlePlaneCollider), v19 = v13, (v23 & 1) == 0) || *(*(v39 + 24) + 16 * *(*(v21 + 56) + 8 * v22) + 32) != &type metadata for ParticlePlaneCollider) && ((v13 & 0x80000000) != 0 || v45[1] <= v19 || (v24 = *v45 + 12 * v19, v14 != -1) && *(v24 + 8) != v14 || (v25 = *(*(*(*(a2 + 88) + 8 * *(v24 + 6) + 32) + 16) + 128), !*(v25 + 16)) || (v40 = *(*(*(a2 + 88) + 8 * *(v24 + 6) + 32) + 16), v42 = v19, v26 = sub_1AF449CB8(&type metadata for ParticleSphereCollider), v19 = v42, (v27 & 1) == 0) || *(*(v40 + 24) + 16 * *(*(v25 + 56) + 8 * v26) + 32) != &type metadata for ParticleSphereCollider) && ((v13 & 0x80000000) != 0 || v45[1] <= v19 || (v28 = *v45 + 12 * v19, v14 != -1) && *(v28 + 8) != v14 || (v29 = *(*(*(*(a2 + 88) + 8 * *(v28 + 6) + 32) + 16) + 128), !*(v29 + 16)) || (v41 = *(*(*(a2 + 88) + 8 * *(v28 + 6) + 32) + 16), v43 = v19, v30 = sub_1AF449CB8(&type metadata for ParticleBoxCollider), v19 = v43, (v31 & 1) == 0) || *(*(v41 + 24) + 16 * *(*(v29 + 56) + 8 * v30) + 32) != &type metadata for ParticleBoxCollider) && ((v13 & 0x80000000) != 0 || v45[1] <= v19 || (v32 = *v45 + 12 * v19, v14 != -1) && *(v32 + 8) != v14 || (v33 = *(*(*(*(a2 + 88) + 8 * *(v32 + 6) + 32) + 16) + 128), !*(v33 + 16)) || (v44 = *(*(*(a2 + 88) + 8 * *(v32 + 6) + 32) + 16), v34 = sub_1AF449CB8(&type metadata for ParticleCylinderCollider), (v35 & 1) == 0) || *(*(v44 + 24) + 16 * *(*(v33 + 56) + 8 * v34) + 32) != &type metadata for ParticleCylinderCollider))
          {
LABEL_44:
            sub_1AF443EE0(v12);

            v17 = v47;
            v5 = v48;
            goto LABEL_6;
          }
        }

        else if (BYTE4(v55[0]) == 1 && !LODWORD(v55[0]))
        {
          goto LABEL_44;
        }

        sub_1AFDFDFD8();
        result = swift_conformsToProtocol2();
        if (!result)
        {
          __break(1u);
          return result;
        }

        v5 = v48;
        if (swift_dynamicCastMetatype())
        {
          KeyPath = swift_getKeyPath();
          v17 = 0;
          v57 = 1;
          v58 = 128;
          v51 = 0x6C616353666C6168;
          v15 = 0xE900000000000065;
          v52 = MEMORY[0x1E69E6448];
        }

        else
        {
          if (swift_dynamicCastMetatype())
          {
            KeyPath = swift_getKeyPath();
            v36 = MEMORY[0x1E69E7428];
            v37 = &unk_1ED72F770;
          }

          else
          {
            if (!swift_dynamicCastMetatype())
            {

              v17 = v47;
              goto LABEL_6;
            }

            KeyPath = swift_getKeyPath();
            v36 = MEMORY[0x1E69E7450];
            v37 = &qword_1ED72F740;
          }

          sub_1AF99D3F4(0, v37, v36);
          v52 = v38;
          v17 = 0;
          v57 = 1;
          v58 = 128;
          v51 = 0x6C616353666C6168;
          v15 = 0xE900000000000065;
        }
      }

LABEL_6:
      v7 = swift_allocObject();
      *(v7 + 16) = v13;
      *(v7 + 20) = v14;
      *(v7 + 24) = v51;
      *(v7 + 32) = v15;
      *(v7 + 40) = KeyPath;
      *(v7 + 48) = v52;
      *(v7 + 56) = v17;
      v8 = v58;
      *(v7 + 64) = v57;
      *(v7 + 66) = v8;
      v9 = v7 | 0x2000000000000000;
      v10 = *(v6 + 8);
      v11 = *(v6 + 16);
      sub_1AF443F24(*v6);
      sub_1AF444AF4(v11);
      *v6 = v9;
      *(v6 + 8) = v10;
      *(v6 + 16) = xmmword_1AFE4C460;
      *(v6 + 32) = 1;
      result = sub_1AF443F24(v12);
      v3 = v49;
LABEL_7:
      *v5 = v3;
      v6 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1AFBFAD10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFBFAD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AF5B2388(0);
  v5 = (a1 + *(v4 + 60));
  v6 = *v5;
  v7 = *(*v5 + 2);
  v98 = v5;
  if (!v7)
  {
LABEL_56:
    v45 = v5[1];
    v46 = *(v45 + 2);
    if (!v46)
    {
      return;
    }

    v47 = 0;
    v92 = *(a3 + *(type metadata accessor for BundleInfo() + 24));
    v86 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1AFC0D9F4(v45);
      }

      v55 = &v45[v47];
      v56 = *&v45[v47 + 32];
      if (((v56 >> 59) & 0x1E | (v56 >> 2) & 1) != 4)
      {
        goto LABEL_60;
      }

      v57 = *((v56 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v135 = *((v56 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
      v58 = *((v56 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v100 = *((v56 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      KeyPath = *((v56 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v104 = *((v56 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v97 = *((v56 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      v102 = *((v56 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v106 = *((v56 & 0xFFFFFFFFFFFFFFBLL) + 0x42);
      if (v92 <= 2025)
      {
        break;
      }

      sub_1AF443EE0(v56);

      v48 = v97;
LABEL_59:
      v49 = swift_allocObject();
      v50 = v135;
      *(v49 + 16) = v57;
      *(v49 + 20) = v50;
      *(v49 + 24) = v100;
      *(v49 + 32) = v58;
      *(v49 + 40) = KeyPath;
      *(v49 + 48) = v104;
      *(v49 + 56) = v48;
      *(v49 + 64) = v102;
      *(v49 + 66) = v106;
      v51 = v49 | 0x2000000000000000;
      v52 = &v45[v47];
      v53 = v45[v47 + 40];
      v54 = *&v45[v47 + 48];
      sub_1AF443F24(*(v55 + 4));
      sub_1AF444AF4(v54);
      *(v55 + 4) = v51;
      v52[40] = v53;
      *(v52 + 3) = xmmword_1AFE4C460;
      v52[64] = 1;
      sub_1AF443F24(v56);
      v5 = v98;
LABEL_60:
      v5[1] = v45;
      v47 += 40;
      if (!--v46)
      {
        return;
      }
    }

    v88 = *((v56 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v90 = *((v56 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    v60 = v57;
    sub_1AF3CBEEC(v57 | (v135 << 32), &v107);
    v131 = v117;
    v132 = v118;
    v133 = v119;
    v134 = v120;
    v127 = v113;
    v128 = v114;
    v129 = v115;
    v130 = v116;
    v123 = v109;
    v124 = v110;
    v125 = v111;
    v126 = v112;
    v121 = v107;
    v122 = v108;
    v95 = v57;
    if (sub_1AF9D050C(&v121) == 1)
    {
      if (v57 != -1 || v135)
      {
        if ((v57 & 0x80000000) == 0 && v86[1] > v57)
        {
          v61 = *v86 + 12 * v57;
          if (v135 == -1 || *(v61 + 8) == v135)
          {
            v62 = *(*(*(a2 + 88) + 8 * *(v61 + 6) + 32) + 16);
            v63 = *(v62 + 128);
            if (*(v63 + 16))
            {
              v64 = sub_1AF449CB8(&type metadata for ParticlePlaneCollider);
              if ((v65 & 1) != 0 && *(*(v62 + 24) + 16 * *(*(v63 + 56) + 8 * v64) + 32) == &type metadata for ParticlePlaneCollider)
              {
                goto LABEL_101;
              }
            }
          }
        }

        if ((v95 & 0x80000000) == 0 && v86[1] > v95)
        {
          v66 = *v86 + 12 * v60;
          if (v135 == -1 || *(v66 + 8) == v135)
          {
            v67 = *(*(*(a2 + 88) + 8 * *(v66 + 6) + 32) + 16);
            v68 = *(v67 + 128);
            if (*(v68 + 16))
            {
              v69 = sub_1AF449CB8(&type metadata for ParticleSphereCollider);
              if ((v70 & 1) != 0 && *(*(v67 + 24) + 16 * *(*(v68 + 56) + 8 * v69) + 32) == &type metadata for ParticleSphereCollider)
              {
                goto LABEL_101;
              }
            }
          }
        }

        if ((v95 & 0x80000000) == 0 && v86[1] > v95)
        {
          v71 = *v86 + 12 * v60;
          if (v135 == -1 || *(v71 + 8) == v135)
          {
            v72 = *(*(*(a2 + 88) + 8 * *(v71 + 6) + 32) + 16);
            v73 = *(v72 + 128);
            if (*(v73 + 16))
            {
              v74 = sub_1AF449CB8(&type metadata for ParticleBoxCollider);
              if ((v75 & 1) != 0 && *(*(v72 + 24) + 16 * *(*(v73 + 56) + 8 * v74) + 32) == &type metadata for ParticleBoxCollider)
              {
                goto LABEL_101;
              }
            }
          }
        }

        if ((v95 & 0x80000000) == 0 && v86[1] > v95)
        {
          v76 = *v86 + 12 * v60;
          if (v135 == -1 || *(v76 + 8) == v135)
          {
            v77 = *(*(*(a2 + 88) + 8 * *(v76 + 6) + 32) + 16);
            v78 = *(v77 + 128);
            if (*(v78 + 16))
            {
              v79 = sub_1AF449CB8(&type metadata for ParticleCylinderCollider);
              if ((v80 & 1) != 0 && *(*(v77 + 24) + 16 * *(*(v78 + 56) + 8 * v79) + 32) == &type metadata for ParticleCylinderCollider)
              {
                goto LABEL_101;
              }
            }
          }
        }
      }
    }

    else if (BYTE4(v121) != 1 || v121)
    {
LABEL_101:
      KeyPath = v90;

      sub_1AFDFDFD8();
      if (!swift_conformsToProtocol2())
      {
        goto LABEL_113;
      }

      if (swift_dynamicCastMetatype())
      {
        KeyPath = swift_getKeyPath();
        v48 = 0;
        v106 = 128;
        v102 = 1;
        v100 = 0x6C616353666C6168;
        v58 = 0xE900000000000065;
        v104 = MEMORY[0x1E69E6448];
LABEL_109:
        LODWORD(v57) = v95;
        goto LABEL_59;
      }

      if (swift_dynamicCastMetatype())
      {
        KeyPath = swift_getKeyPath();
        v81 = MEMORY[0x1E69E7428];
        v82 = &unk_1ED72F770;
LABEL_108:
        sub_1AF99D3F4(0, v82, v81);
        v104 = v83;
        v48 = 0;
        v106 = 128;
        v102 = 1;
        v100 = 0x6C616353666C6168;
        v58 = 0xE900000000000065;
        goto LABEL_109;
      }

      if (swift_dynamicCastMetatype())
      {
        KeyPath = swift_getKeyPath();
        v81 = MEMORY[0x1E69E7450];
        v82 = &qword_1ED72F740;
        goto LABEL_108;
      }

      v58 = v88;

      goto LABEL_100;
    }

    sub_1AF443EE0(v56);
    v58 = v88;

    KeyPath = v90;
LABEL_100:

    LODWORD(v57) = v95;
    v48 = v97;
    goto LABEL_59;
  }

  v8 = 0;
  v91 = *(a3 + *(type metadata accessor for BundleInfo() + 24));
  v85 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  while (1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1AFC0D9F4(v6);
    }

    v16 = &v6[v8];
    v17 = *&v6[v8 + 32];
    if (((v17 >> 59) & 0x1E | (v17 >> 2) & 1) != 4)
    {
      goto LABEL_5;
    }

    v18 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v135 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
    v19 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v99 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    v20 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    v103 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    v96 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
    v101 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
    v105 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x42);
    if (v91 <= 2025)
    {
      break;
    }

    sub_1AF443EE0(v17);

    v9 = v96;
LABEL_4:
    v10 = swift_allocObject();
    v11 = v135;
    *(v10 + 16) = v18;
    *(v10 + 20) = v11;
    *(v10 + 24) = v99;
    *(v10 + 32) = v19;
    *(v10 + 40) = v20;
    *(v10 + 48) = v103;
    *(v10 + 56) = v9;
    *(v10 + 64) = v101;
    *(v10 + 66) = v105;
    v12 = v10 | 0x2000000000000000;
    v13 = &v6[v8];
    v14 = v6[v8 + 40];
    v15 = *&v6[v8 + 48];
    sub_1AF443F24(*(v16 + 4));
    sub_1AF444AF4(v15);
    *(v16 + 4) = v12;
    v13[40] = v14;
    *(v13 + 3) = xmmword_1AFE4C460;
    v13[64] = 1;
    sub_1AF443F24(v17);
    v5 = v98;
LABEL_5:
    *v5 = v6;
    v8 += 40;
    if (!--v7)
    {
      goto LABEL_56;
    }
  }

  v87 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
  v89 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
  v21 = v18;
  sub_1AF3CBEEC(v18 | (v135 << 32), &v107);
  v131 = v117;
  v132 = v118;
  v133 = v119;
  v134 = v120;
  v127 = v113;
  v128 = v114;
  v129 = v115;
  v130 = v116;
  v123 = v109;
  v124 = v110;
  v125 = v111;
  v126 = v112;
  v121 = v107;
  v122 = v108;
  v94 = v18;
  if (sub_1AF9D050C(&v121) != 1)
  {
    if (BYTE4(v121) != 1 || v121)
    {
      goto LABEL_46;
    }

LABEL_44:
    sub_1AF443EE0(v17);
    v19 = v87;

    v20 = v89;
LABEL_45:

    LODWORD(v18) = v94;
    v9 = v96;
    goto LABEL_4;
  }

  if (v18 == -1 && !v135)
  {
    goto LABEL_44;
  }

  if ((v18 & 0x80000000) != 0 || v85[1] <= v18 || (v22 = *v85 + 12 * v18, v135 != -1) && *(v22 + 8) != v135 || (v23 = *(*(*(a2 + 88) + 8 * *(v22 + 6) + 32) + 16), v24 = *(v23 + 128), !*(v24 + 16)) || (v25 = sub_1AF449CB8(&type metadata for ParticlePlaneCollider), (v26 & 1) == 0) || *(*(v23 + 24) + 16 * *(*(v24 + 56) + 8 * v25) + 32) != &type metadata for ParticlePlaneCollider)
  {
    if (v94 < 0 || v85[1] <= v94 || (v27 = *v85 + 12 * v21, v135 != -1) && *(v27 + 8) != v135 || (v28 = *(*(*(a2 + 88) + 8 * *(v27 + 6) + 32) + 16), v29 = *(v28 + 128), !*(v29 + 16)) || (v30 = sub_1AF449CB8(&type metadata for ParticleSphereCollider), (v31 & 1) == 0) || *(*(v28 + 24) + 16 * *(*(v29 + 56) + 8 * v30) + 32) != &type metadata for ParticleSphereCollider)
    {
      if (v94 < 0 || v85[1] <= v94 || (v32 = *v85 + 12 * v21, v135 != -1) && *(v32 + 8) != v135 || (v33 = *(*(*(a2 + 88) + 8 * *(v32 + 6) + 32) + 16), v34 = *(v33 + 128), !*(v34 + 16)) || (v35 = sub_1AF449CB8(&type metadata for ParticleBoxCollider), (v36 & 1) == 0) || *(*(v33 + 24) + 16 * *(*(v34 + 56) + 8 * v35) + 32) != &type metadata for ParticleBoxCollider)
      {
        if (v94 < 0)
        {
          goto LABEL_44;
        }

        if (v85[1] <= v94)
        {
          goto LABEL_44;
        }

        v37 = *v85 + 12 * v21;
        if (v135 != -1 && *(v37 + 8) != v135)
        {
          goto LABEL_44;
        }

        v38 = *(*(*(a2 + 88) + 8 * *(v37 + 6) + 32) + 16);
        v39 = *(v38 + 128);
        if (!*(v39 + 16))
        {
          goto LABEL_44;
        }

        v40 = sub_1AF449CB8(&type metadata for ParticleCylinderCollider);
        if ((v41 & 1) == 0 || *(*(v38 + 24) + 16 * *(*(v39 + 56) + 8 * v40) + 32) != &type metadata for ParticleCylinderCollider)
        {
          goto LABEL_44;
        }
      }
    }
  }

LABEL_46:
  v20 = v89;

  sub_1AFDFDFD8();
  if (swift_conformsToProtocol2())
  {
    if (swift_dynamicCastMetatype())
    {
      v20 = swift_getKeyPath();
      v9 = 0;
      v105 = 128;
      v101 = 1;
      v99 = 0x6C616353666C6168;
      v19 = 0xE900000000000065;
      v103 = MEMORY[0x1E69E6448];
      goto LABEL_54;
    }

    if (swift_dynamicCastMetatype())
    {
      v20 = swift_getKeyPath();
      v42 = MEMORY[0x1E69E7428];
      v43 = &unk_1ED72F770;
      goto LABEL_53;
    }

    if (swift_dynamicCastMetatype())
    {
      v20 = swift_getKeyPath();
      v42 = MEMORY[0x1E69E7450];
      v43 = &qword_1ED72F740;
LABEL_53:
      sub_1AF99D3F4(0, v43, v42);
      v103 = v44;
      v9 = 0;
      v105 = 128;
      v101 = 1;
      v99 = 0x6C616353666C6168;
      v19 = 0xE900000000000065;
LABEL_54:
      LODWORD(v18) = v94;
      goto LABEL_4;
    }

    v19 = v87;

    goto LABEL_45;
  }

  __break(1u);
LABEL_113:
  __break(1u);
}

void *sub_1AFBFBA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v9 = a1;
      v10 = a2 & 0xFFFFFFFFFFFFFFLL;
      sub_1AFADAE08(a3, v7);
      v3 = ecs_stack_allocator_allocate(v8, 16, 8);
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      sub_1AFADAE08(a3, v7);
      v3 = ecs_stack_allocator_allocate(v8, 16, 8);
LABEL_6:
      *v3 = sub_1AFDFD0E8();
      v3[1] = v5;
      sub_1AFABB5D8(v7);
      return v3;
    }
  }

  sub_1AFDFE1E8();
  if (!v4)
  {
    return v11;
  }

  return v3;
}

uint64_t sub_1AFBFBB68(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1AFC05D04(0, v5, 0);
  v6 = v17;
  for (i = (a3 + 32); ; ++i)
  {
    v15 = *i;

    a1(&v16, &v15);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v10 = v16;
    v17 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      v14 = v16;
      sub_1AFC05D04(v11 > 1, v12 + 1, 1);
      v10 = v14;
      v6 = v17;
    }

    *(v6 + 16) = v12 + 1;
    *(v6 + 16 * v12 + 32) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AFBFBCA0(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1AFC05E7C(0, v5, 0);
  v6 = v19;
  v8 = (a3 + 40);
  while (1)
  {
    v9 = *v8;
    v17[0] = *(v8 - 1);
    v17[1] = v9;

    a1(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1AFC05E7C(v12 > 1, v13 + 1, 1);
      v6 = v19;
    }

    v8 += 2;
    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AFBFBDC8(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1AFC074A4(0, v4, 0);
  v5 = v19;
  for (i = (a3 + 32); ; ++i)
  {
    v16 = *i;
    a1(&v17, &v16);
    if (v3)
    {
      break;
    }

    v9 = v17;
    v10 = v18;
    v19 = v5;
    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    if (v12 >= v11 >> 1)
    {
      v15 = v17;
      sub_1AFC074A4(v11 > 1, v12 + 1, 1);
      v9 = v15;
      v5 = v19;
    }

    *(v5 + 16) = v12 + 1;
    v13 = v5 + 24 * v12;
    *(v13 + 32) = v9;
    *(v13 + 48) = v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AFBFBEF0(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1AFC075E8(0, v5, 0);
  v6 = v25;
  v8 = (a3 + 48);
  while (1)
  {
    v9 = *(v8 - 1);
    v10 = *v8;
    v20[0] = *(v8 - 2);
    v20[1] = v9;
    v21 = v10;

    a1(&v22, v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v12 = v22;
    v11 = v23;
    v13 = v24;
    v25 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      v17 = v23;
      sub_1AFC075E8(v14 > 1, v15 + 1, 1);
      v11 = v17;
      v6 = v25;
    }

    v8 += 24;
    *(v6 + 16) = v15 + 1;
    v16 = v6 + 24 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = v11;
    *(v16 + 48) = v13;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AFBFC034(void (*a1)(void *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, v4, 0);
  v5 = v17;
  for (i = (a3 + 32); ; ++i)
  {
    v15 = *i;
    a1(v16, &v15);
    if (v3)
    {
      break;
    }

    v9 = v16[0];
    v10 = v16[1];
    v17 = v5;
    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1AFC05CE4(v11 > 1, v12 + 1, 1);
      v5 = v17;
    }

    *(v5 + 16) = v12 + 1;
    v13 = v5 + 16 * v12;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AFBFC148(void (*a1)(void *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v18 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, v4, 0);
  v5 = v18;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v16 = v9;
    a1(v17, &v16);
    if (v3)
    {
      break;
    }

    v10 = v17[0];
    v11 = v17[1];
    v18 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1AFC05CE4(v12 > 1, v13 + 1, 1);
      v5 = v18;
    }

    *(v5 + 16) = v13 + 1;
    v14 = v5 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AFBFC258(void (*a1)(void *__return_ptr, __int16 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v18 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, v4, 0);
  v5 = v18;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v16 = v9;
    a1(v17, &v16);
    if (v3)
    {
      break;
    }

    v10 = v17[0];
    v11 = v17[1];
    v18 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1AFC05CE4(v12 > 1, v13 + 1, 1);
      v5 = v18;
    }

    *(v5 + 16) = v13 + 1;
    v14 = v5 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AFBFC368(void (*a1)(void *__return_ptr, int *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v18 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, v4, 0);
  v5 = v18;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v16 = v9;
    a1(v17, &v16);
    if (v3)
    {
      break;
    }

    v10 = v17[0];
    v11 = v17[1];
    v18 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1AFC05CE4(v12 > 1, v13 + 1, 1);
      v5 = v18;
    }

    *(v5 + 16) = v13 + 1;
    v14 = v5 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AFBFC478(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v18 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, v4, 0);
  v5 = v18;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v16 = v9;
    a1(v17, &v16);
    if (v3)
    {
      break;
    }

    v10 = v17[0];
    v11 = v17[1];
    v18 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1AFC05CE4(v12 > 1, v13 + 1, 1);
      v5 = v18;
    }

    *(v5 + 16) = v13 + 1;
    v14 = v5 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AFBFC588(void (*a1)(void *__return_ptr, int *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, v4, 0);
  v5 = v17;
  for (i = (a3 + 32); ; ++i)
  {
    v15 = *i;
    a1(v16, &v15);
    if (v3)
    {
      break;
    }

    v9 = v16[0];
    v10 = v16[1];
    v17 = v5;
    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1AFC05CE4(v11 > 1, v12 + 1, 1);
      v5 = v17;
    }

    *(v5 + 16) = v12 + 1;
    v13 = v5 + 16 * v12;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AFBFC69C(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, v4, 0);
  v5 = v17;
  for (i = (a3 + 32); ; ++i)
  {
    v15 = *i;
    a1(v16, &v15);
    if (v3)
    {
      break;
    }

    v9 = v16[0];
    v10 = v16[1];
    v17 = v5;
    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1AFC05CE4(v11 > 1, v12 + 1, 1);
      v5 = v17;
    }

    *(v5 + 16) = v12 + 1;
    v13 = v5 + 16 * v12;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AFBFC7B0(void (*a1)(void *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, v4, 0);
  v5 = v17;
  for (i = (a3 + 32); ; ++i)
  {
    v15 = *i;
    a1(v16, &v15);
    if (v3)
    {
      break;
    }

    v9 = v16[0];
    v10 = v16[1];
    v17 = v5;
    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1AFC05CE4(v11 > 1, v12 + 1, 1);
      v5 = v17;
    }

    *(v5 + 16) = v12 + 1;
    v13 = v5 + 16 * v12;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AFBFC8C4(void (*a1)(_OWORD *__return_ptr, __int128 *), uint64_t a2, __int128 *a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7CC0];
  if (!a4)
  {
    return v5;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1AFC07ADC(0, a4 & ~(a4 >> 63), 0);
  v5 = v21;
  v18 = *a3;
  a1(v19, &v18);
  if (!v4)
  {
    v9 = a4 - 1;
    v10 = a3 + 1;
    while (1)
    {
      v21 = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1AFC07ADC(v11 > 1, v12 + 1, 1);
        v5 = v21;
      }

      *(v5 + 16) = v12 + 1;
      v13 = v5 + 40 * v12;
      v14 = v19[0];
      v15 = v19[1];
      *(v13 + 64) = v20;
      *(v13 + 32) = v14;
      *(v13 + 48) = v15;
      if (!v9)
      {
        break;
      }

      v16 = *v10++;
      v18 = v16;
      a1(v19, &v18);
      --v9;
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1AFBFCA08(void *a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1AFC0DA30(v3);
  }

  a1[1] = v3;
  return sub_1AF64BC88;
}

void sub_1AFBFCA80(float a1)
{
  v2 = *(*(v1 + 8) + 16);
  if (v2)
  {
    v3 = *v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1AFC0DB20(v3);
    }

    if (v2 > 7)
    {
      v4 = v2 & 0x7FFFFFFFFFFFFFF8;
      v5 = (v3 + 48);
      v6 = v2 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v7 = vmulq_n_f32(*v5, a1);
        v5[-1] = vmulq_n_f32(v5[-1], a1);
        *v5 = v7;
        v5 += 2;
        v6 -= 8;
      }

      while (v6);
      if (v2 == v4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = 0;
    }

    v8 = v2 - v4;
    v9 = &v3[4 * v4 + 32];
    do
    {
      *v9 = *v9 * a1;
      ++v9;
      --v8;
    }

    while (v8);
LABEL_11:
    *v1 = v3;
  }
}

float32x2_t sub_1AFBFCB44(uint64_t a1, uint64_t a2, uint64_t a3, char a4, float a5)
{
  v5 = *(a2 + 16);
  v6 = v5 - 1;
  if (v5 == 1)
  {
    result.i32[0] = *(a1 + 32);
    return result;
  }

  result = 0;
  if (v5)
  {
    v9 = fminf(fmaxf(a5, 0.0), 1.0);
    if (a5 == 0.0)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      v11 = *(a2 + 16);
      do
      {
        v12 = v11 >> 1;
        v13 = v10 + (v11 >> 1);
        v11 += ~(v11 >> 1);
        if (v9 >= *(a2 + 32 + 4 * v13))
        {
          v10 = v13 + 1;
        }

        else
        {
          v11 = v12;
        }
      }

      while (v11 > 0);
      if (v10 >= v5)
      {
        v20 = *(a1 + 16);
        if (v20)
        {
          result.i32[0] = *(a1 + 4 * v20 + 28);
        }

        else
        {
          return 0;
        }

        return result;
      }
    }

    v14 = v10 - 1;
    if (a3)
    {
      a4 = *(a3 + 24 * v14 + 49);
    }

    LOBYTE(v5) = v5 != 2;
    v15 = *(a2 + 32 + 4 * v14);
    if (a4 != 1)
    {
      LOBYTE(v5) = a4;
    }

    v16 = *(a2 + 32 + 4 * v10) - v15;
    result = 0;
    if (v16 == 0.0)
    {
      LODWORD(v5) = v5;
      if (v5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      result.f32[0] = (v9 - v15) / v16;
      LODWORD(v5) = v5;
      if (v5)
      {
LABEL_19:
        if (v5 == 1)
        {
          if (v14 <= 0)
          {
            v17 = 0;
          }

          else
          {
            v17 = v10 - 2;
          }

          v21 = v10;
          if (v10 < v6)
          {
            v21 = v10 + 1;
          }

          v22 = *(a1 + 32 + 4 * v17);
          v23 = *(a1 + 32 + 4 * v10);
          v24 = *(a1 + 32 + 4 * v21) * 0.5;
          result.f32[0] = *(a1 + 32 + 4 * v14) + ((result.f32[0] * ((v23 * 0.5) - (v22 * 0.5))) + (((result.f32[0] * result.f32[0]) * (((v22 + (v23 + v23)) + (*(a1 + 32 + 4 * v14) * -2.5)) - v24)) + ((result.f32[0] * (result.f32[0] * result.f32[0])) * (((*(a1 + 32 + 4 * v14) * 1.5) + (v24 - (v23 * 1.5))) - (v22 * 0.5)))));
        }

        else
        {
          if (a3)
          {
            v18 = *(a3 + 32 + 24 * v14 + 8);
            v19 = *(a3 + 32 + 24 * v10);
          }

          else
          {
            v19 = 0;
            v18 = 0;
          }

          v25 = *(a1 + 4 * v14 + 32);
          v26 = vadd_f32(vzip1_s32(v18, v19), 0x3F80000000000000);
          v27 = vadd_f32(vzip2_s32(v18, v19), v25);
          v28 = 20;
          __asm { FMOV            V3.2S, #3.0 }

          v34 = 1.0;
          v35 = 0.0;
          v36 = 0.5;
          while (1)
          {
            v37 = 1.0 - v36;
            v38.f32[0] = v37 * v37;
            v39 = v37 * (v37 * v37);
            v38.f32[1] = 1.0 - v36;
            v40 = vmul_f32(v38, _D3);
            v38.f32[0] = v36;
            v38.f32[1] = v36 * v36;
            v41 = vmul_f32(v38, v40);
            v42 = vmul_f32(v26, v41);
            v43 = v36 * (v36 * v36);
            v44 = v43 + (v42.f32[1] + ((v39 * 0.0) + v42.f32[0]));
            if (vabds_f32(v44, result.f32[0]) < 0.00001)
            {
              break;
            }

            if (v44 < result.f32[0])
            {
              v35 = v36;
            }

            else
            {
              v34 = v36;
            }

            v36 = (v35 + v34) * 0.5;
            if (!--v28)
            {
              v45 = 1.0 - v36;
              v46.f32[0] = v45 * v45;
              v39 = v45 * (v45 * v45);
              v46.f32[1] = 1.0 - v36;
              result = vmul_f32(v46, _D3);
              v47.f32[0] = (v35 + v34) * 0.5;
              v47.f32[1] = v36 * v36;
              v41 = vmul_f32(v47, result);
              v43 = v36 * (v36 * v36);
              break;
            }
          }

          v48 = vmul_f32(v27, v41);
          result.f32[0] = vmuls_lane_f32(v43, v25, 1) + (v48.f32[1] + ((v39 * v25.f32[0]) + v48.f32[0]));
        }

        return result;
      }
    }

    result.f32[0] = *(a1 + 32 + 4 * v14) + (result.f32[0] * (*(a1 + 32 + 4 * v10) - *(a1 + 32 + 4 * v14)));
  }

  return result;
}

double (*sub_1AFBFCE24(void *a1, int a2, uint64_t a3))()
{
  if (*(a3 + 16) <= a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a3 + 8 * a2 + 32);
  }

  result = nullsub_106;
  *a1 = v4;
  return result;
}

void sub_1AFBFCE80(unint64_t a1, __n128 a2, __n128 a3)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v5 = *(*(v3 + 144) + 8 * *v4 + 32);
      v6 = *(v4 + 2);
      os_unfair_lock_lock(*(v5 + 344));
      sub_1AFC1D424(v5, v6, v3, a1, a2, a3);
      v8 = *(v5 + 344);

      os_unfair_lock_unlock(v8);
    }
  }
}

void sub_1AFBFCF84(unint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v5 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = (*(v5 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v7 = *(*(v5 + 144) + 8 * *v6 + 32);
      v8 = *(v6 + 2);
      os_unfair_lock_lock(*(v7 + 344));
      sub_1AFC0E2F0(v7, v8, v5, a1, &type metadata for ProjectionMatrix, &off_1F2511DA0, sub_1AFC4A6C8, sub_1AFC28894, a2, a3, a4, a5, sub_1AFCBCB84);
      v10 = *(v7 + 344);

      os_unfair_lock_unlock(v10);
    }
  }
}

void sub_1AFBFD10C(unint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v4 = *(*(v2 + 144) + 8 * *v3 + 32);
      v5 = *(v3 + 2);
      os_unfair_lock_lock(*(v4 + 344));
      a2(v4, v5, v2);
      v7 = *(v4 + 344);

      os_unfair_lock_unlock(v7);
    }
  }
}

void sub_1AFBFD204(unint64_t a1, float a2)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v4 = *(*(v2 + 144) + 8 * *v3 + 32);
      v5 = *(v3 + 2);
      os_unfair_lock_lock(*(v4 + 344));
      sub_1AFC1C210(v4, v5, v2, a1, &type metadata for Opacity, &off_1F2529638, sub_1AFC4908C, sub_1AFC288DC, a2, sub_1AFCBCD58);
      v8 = *(v4 + 344);

      os_unfair_lock_unlock(v8);
    }
  }
}

void sub_1AFBFD390(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
    if (HIDWORD(a2) == 0xFFFFFFFF || v4[2] == HIDWORD(a2))
    {
      v5 = *(*(v3 + 144) + 8 * *v4 + 32);
      v6 = *(v4 + 2);
      os_unfair_lock_lock(*(v5 + 344));
      a3(v5, v6, a1, v3, a2);
      v10 = *(v5 + 344);

      os_unfair_lock_unlock(v10);
    }
  }
}

void sub_1AFBFD4F0(__int128 *a1, unint64_t a2)
{
  if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
    if (HIDWORD(a2) == 0xFFFFFFFF || v3[2] == HIDWORD(a2))
    {
      v4 = *(*(v2 + 144) + 8 * *v3 + 32);
      v5 = *(v3 + 2);
      os_unfair_lock_lock(*(v4 + 344));
      sub_1AFC19CE0(v4, v5, a1, v2, a2);
      v8 = *(v4 + 344);

      os_unfair_lock_unlock(v8);
    }
  }
}

void sub_1AFBFD600(uint64_t a1, unint64_t a2)
{
  if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
    if (HIDWORD(a2) == 0xFFFFFFFF || v3[2] == HIDWORD(a2))
    {
      v4 = *(*(v2 + 144) + 8 * *v3 + 32);
      v5 = *(v3 + 2);
      os_unfair_lock_lock(*(v4 + 344));
      sub_1AFC1A2D4(v4, v5, a1, v2, a2);
      v8 = *(v4 + 344);

      os_unfair_lock_unlock(v8);
    }
  }
}

void sub_1AFBFD7A0(unint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, __n128), __n128 a3)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v5 = *(*(v3 + 144) + 8 * *v4 + 32);
      v6 = *(v4 + 2);
      os_unfair_lock_lock(*(v5 + 344));
      a2(v5, v6, v3, a1, a3);
      v9 = *(v5 + 344);

      os_unfair_lock_unlock(v9);
    }
  }
}

void sub_1AFBFD8B8(unint64_t a1, float a2)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v4 = *(*(v2 + 144) + 8 * *v3 + 32);
      v5 = *(v3 + 2);
      os_unfair_lock_lock(*(v4 + 344));
      sub_1AFC1C210(v4, v5, v2, a1, &type metadata for AmbientLight, &off_1F252ACC0, sub_1AFC4A488, sub_1AFC2631C, a2, sub_1AFCBE338);
      v8 = *(v4 + 344);

      os_unfair_lock_unlock(v8);
    }
  }
}

void sub_1AFBFDA2C(__n128 *a1, unint64_t a2)
{
  if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
    if (HIDWORD(a2) == 0xFFFFFFFF || v3[2] == HIDWORD(a2))
    {
      v4 = *(*(v2 + 144) + 8 * *v3 + 32);
      v5 = *(v3 + 2);
      os_unfair_lock_lock(*(v4 + 344));
      sub_1AFC1B598(v4, v5, a1, v2, a2);
      v8 = *(v4 + 344);

      os_unfair_lock_unlock(v8);
    }
  }
}

void sub_1AFBFDB54(unint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, float, float, float, float), float a3, float a4, float a5, float a6)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v6 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v7 = (*(v6 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v7[2] == HIDWORD(a1))
    {
      v8 = *(*(v6 + 144) + 8 * *v7 + 32);
      v9 = *(v7 + 2);
      os_unfair_lock_lock(*(v8 + 344));
      a2(v8, v9, v6, a1, a3, a4, a5, a6);
      v16 = *(v8 + 344);

      os_unfair_lock_unlock(v16);
    }
  }
}

void sub_1AFBFDC9C(__int128 *a1, unint64_t a2)
{
  if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
    if (HIDWORD(a2) == 0xFFFFFFFF || v3[2] == HIDWORD(a2))
    {
      v4 = *(*(v2 + 144) + 8 * *v3 + 32);
      v5 = *(v3 + 2);
      os_unfair_lock_lock(*(v4 + 344));
      sub_1AFC1CE5C(v4, v5, a1, v2, a2);
      v8 = *(v4 + 344);

      os_unfair_lock_unlock(v8);
    }
  }
}

void sub_1AFBFDDAC(__n128 *a1, unint64_t a2)
{
  if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
    if (HIDWORD(a2) == 0xFFFFFFFF || v3[2] == HIDWORD(a2))
    {
      v4 = *(*(v2 + 144) + 8 * *v3 + 32);
      v5 = *(v3 + 2);
      os_unfair_lock_lock(*(v4 + 344));
      sub_1AFC1C88C(v4, v5, a1, v2, a2);
      v8 = *(v4 + 344);

      os_unfair_lock_unlock(v8);
    }
  }
}

void sub_1AFBFE21C(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
    if (HIDWORD(a2) == 0xFFFFFFFF || v4[2] == HIDWORD(a2))
    {
      v5 = *(*(v3 + 144) + 8 * *v4 + 32);
      v6 = *(v4 + 2);
      os_unfair_lock_lock(*(v5 + 344));
      a3(v5, v6, a1, v3, a2);
      v10 = *(v5 + 344);

      os_unfair_lock_unlock(v10);
    }
  }
}

void sub_1AFBFE334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5 != 0xFFFFFFFF && (a5 & 0x80000000) == 0 && a5 < *(v5 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = (*(v5 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a5);
    if (HIDWORD(a5) == 0xFFFFFFFF || v6[2] == HIDWORD(a5))
    {
      v7 = *(*(v5 + 144) + 8 * *v6 + 32);
      v8 = *(v6 + 2);
      os_unfair_lock_lock(*(v7 + 344));
      sub_1AFC1DFBC(v7, v8, a1, a2, a3, a4, v5, a5);
      v14 = *(v7 + 344);

      os_unfair_lock_unlock(v14);
    }
  }
}

void sub_1AFBFE468(__int16 a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5)
{
  if (a5 != 0xFFFFFFFF && (a5 & 0x80000000) == 0 && a5 < *(v5 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = (*(v5 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a5);
    if (HIDWORD(a5) == 0xFFFFFFFF || v6[2] == HIDWORD(a5))
    {
      v7 = *(*(v5 + 144) + 8 * *v6 + 32);
      v8 = *(v6 + 2);
      os_unfair_lock_lock(*(v7 + 344));
      sub_1AFC234A4(v7, v8, a1, a2, a3, a4 & 0x10101, v5, a5);
      v14 = *(v7 + 344);

      os_unfair_lock_unlock(v14);
    }
  }
}

void sub_1AFBFE5BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 != 0xFFFFFFFF && (a4 & 0x80000000) == 0 && a4 < *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a4);
    if (HIDWORD(a4) == 0xFFFFFFFF || v5[2] == HIDWORD(a4))
    {
      v6 = *(*(v4 + 144) + 8 * *v5 + 32);
      v7 = *(v5 + 2);
      os_unfair_lock_lock(*(v6 + 344));
      sub_1AFC1F788(v6, v7, a1, a2, a3, v4, a4);
      v12 = *(v6 + 344);

      os_unfair_lock_unlock(v12);
    }
  }
}

void sub_1AFBFE6E8(__int128 *a1, unint64_t a2)
{
  if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
    if (HIDWORD(a2) == 0xFFFFFFFF || v3[2] == HIDWORD(a2))
    {
      v4 = *(*(v2 + 144) + 8 * *v3 + 32);
      v5 = *(v3 + 2);
      os_unfair_lock_lock(*(v4 + 344));
      sub_1AFC23AAC(v4, v5, a1, v2, a2);
      v8 = *(v4 + 344);

      os_unfair_lock_unlock(v8);
    }
  }
}

void sub_1AFBFE7F8(__int128 *a1, unint64_t a2)
{
  if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
    if (HIDWORD(a2) == 0xFFFFFFFF || v3[2] == HIDWORD(a2))
    {
      v4 = *(*(v2 + 144) + 8 * *v3 + 32);
      v5 = *(v3 + 2);
      os_unfair_lock_lock(*(v4 + 344));
      sub_1AFC1E5A8(v4, v5, a1, v2, a2);
      v8 = *(v4 + 344);

      os_unfair_lock_unlock(v8);
    }
  }
}

void sub_1AFBFE920(unint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, __n128, __n128, __n128, __n128), __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v6 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v7 = (*(v6 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v7[2] == HIDWORD(a1))
    {
      v8 = *(*(v6 + 144) + 8 * *v7 + 32);
      v9 = *(v7 + 2);
      os_unfair_lock_lock(*(v8 + 344));
      a2(v8, v9, v6, a1, a3, a4, a5, a6);
      v12 = *(v8 + 344);

      os_unfair_lock_unlock(v12);
    }
  }
}

void sub_1AFBFEA88(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  if (a3 != 0xFFFFFFFF && (a3 & 0x80000000) == 0 && a3 < *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a3);
    if (HIDWORD(a3) == 0xFFFFFFFF || v5[2] == HIDWORD(a3))
    {
      v6 = *(*(v4 + 144) + 8 * *v5 + 32);
      v7 = *(v5 + 2);
      os_unfair_lock_lock(*(v6 + 344));
      a4(v6, v7, a1, a2, v4, a3);
      v12 = *(v6 + 344);

      os_unfair_lock_unlock(v12);
    }
  }
}

void sub_1AFBFEBCC(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
    if (HIDWORD(a2) == 0xFFFFFFFF || v4[2] == HIDWORD(a2))
    {
      v5 = *(*(v3 + 144) + 8 * *v4 + 32);
      v6 = *(v4 + 2);
      os_unfair_lock_lock(*(v5 + 344));
      a3(v5, v6, a1, v3, a2);
      v10 = *(v5 + 344);

      os_unfair_lock_unlock(v10);
    }
  }
}

void sub_1AFBFECFC(unint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v4 = *(*(v2 + 144) + 8 * *v3 + 32);
      v5 = *(v3 + 2);
      os_unfair_lock_lock(*(v4 + 344));
      a2(v4, v5, v2);
      v7 = *(v4 + 344);

      os_unfair_lock_unlock(v7);
    }
  }
}

uint64_t sub_1AFBFEDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = *(a1 + 96);
  v28 = *(a1 + 80);
  v29 = v7;
  v8 = *(a1 + 64);
  v27[0] = *(a1 + 48);
  v27[1] = v8;
  v9 = *(a1 + 96);
  v24 = v28;
  v25 = v9;
  v30 = *(a1 + 112);
  v26 = *(a1 + 112);
  v22 = v27[0];
  v23 = v6;
  v10 = sub_1AF64FB24(&type metadata for ParticleAngleVelocity);
  v12 = v11;
  v14 = v13;
  v31[2] = v28;
  v31[3] = v25;
  v32 = v26;
  v31[0] = v27[0];
  v31[1] = v23;
  sub_1AF5DD36C(v27, v21);
  sub_1AF5DD3C8(v31);
  if (v14)
  {
    v15 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF45D50);
    MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF4BA30);
    MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF45D70);
    v16 = v22;
    v17 = sub_1AFDFDA08();
    *&v22 = 0;
    (*(*v15 + 88))(v17, &v22, v16, *(&v16 + 1));
  }

  else
  {
    if (*(a1 + 232) <= a3 && *(a1 + 240) > a3)
    {
      return *(a1 + 128) + v10 + v12 * a3;
    }

    v19 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

    v20 = sub_1AFDFDA08();
    *&v22 = 0;
    (*(*v19 + 88))(v20, &v22, 0xD000000000000032, 0x80000001AFF4B950);
  }

  return 0;
}

uint64_t sub_1AFBFF058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = *(a1 + 96);
  v28 = *(a1 + 80);
  v29 = v7;
  v8 = *(a1 + 64);
  v27[0] = *(a1 + 48);
  v27[1] = v8;
  v9 = *(a1 + 96);
  v24 = v28;
  v25 = v9;
  v30 = *(a1 + 112);
  v26 = *(a1 + 112);
  v22 = v27[0];
  v23 = v6;
  v10 = sub_1AF64FB24(&type metadata for ParticleParentID);
  v12 = v11;
  v14 = v13;
  v31[2] = v28;
  v31[3] = v25;
  v32 = v26;
  v31[0] = v27[0];
  v31[1] = v23;
  sub_1AF5DD36C(v27, v21);
  sub_1AF5DD3C8(v31);
  if (v14)
  {
    v15 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF45D50);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF4BA10);
    MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF45D70);
    v16 = v22;
    v17 = sub_1AFDFDA08();
    *&v22 = 0;
    (*(*v15 + 88))(v17, &v22, v16, *(&v16 + 1));
  }

  else
  {
    if (*(a1 + 232) <= a3 && *(a1 + 240) > a3)
    {
      return *(a1 + 128) + v10 + v12 * a3;
    }

    v19 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

    v20 = sub_1AFDFDA08();
    *&v22 = 0;
    (*(*v19 + 88))(v20, &v22, 0xD000000000000032, 0x80000001AFF4B950);
  }

  return 0;
}

uint64_t sub_1AFBFF2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = *(a1 + 96);
  v28 = *(a1 + 80);
  v29 = v7;
  v8 = *(a1 + 64);
  v27[0] = *(a1 + 48);
  v27[1] = v8;
  v9 = *(a1 + 96);
  v24 = v28;
  v25 = v9;
  v30 = *(a1 + 112);
  v26 = *(a1 + 112);
  v22 = v27[0];
  v23 = v6;
  v10 = sub_1AF64FB24(&type metadata for ParticleTextureFrame);
  v12 = v11;
  v14 = v13;
  v31[2] = v28;
  v31[3] = v25;
  v32 = v26;
  v31[0] = v27[0];
  v31[1] = v23;
  sub_1AF5DD36C(v27, v21);
  sub_1AF5DD3C8(v31);
  if (v14)
  {
    v15 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF45D50);
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF4B9F0);
    MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF45D70);
    v16 = v22;
    v17 = sub_1AFDFDA08();
    *&v22 = 0;
    (*(*v15 + 88))(v17, &v22, v16, *(&v16 + 1));
  }

  else
  {
    if (*(a1 + 232) <= a3 && *(a1 + 240) > a3)
    {
      return *(a1 + 128) + v10 + v12 * a3;
    }

    v19 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

    v20 = sub_1AFDFDA08();
    *&v22 = 0;
    (*(*v19 + 88))(v20, &v22, 0xD000000000000032, 0x80000001AFF4B950);
  }

  return 0;
}

uint64_t sub_1AFBFF524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = *(a1 + 96);
  v28 = *(a1 + 80);
  v29 = v7;
  v8 = *(a1 + 64);
  v27[0] = *(a1 + 48);
  v27[1] = v8;
  v9 = *(a1 + 96);
  v24 = v28;
  v25 = v9;
  v30 = *(a1 + 112);
  v26 = *(a1 + 112);
  v22 = v27[0];
  v23 = v6;
  v10 = sub_1AF64FB24(&type metadata for ParticleRoughness);
  v12 = v11;
  v14 = v13;
  v31[2] = v28;
  v31[3] = v25;
  v32 = v26;
  v31[0] = v27[0];
  v31[1] = v23;
  sub_1AF5DD36C(v27, v21);
  sub_1AF5DD3C8(v31);
  if (v14)
  {
    v15 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF45D50);
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF4B9D0);
    MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF45D70);
    v16 = v22;
    v17 = sub_1AFDFDA08();
    *&v22 = 0;
    (*(*v15 + 88))(v17, &v22, v16, *(&v16 + 1));
  }

  else
  {
    if (*(a1 + 232) <= a3 && *(a1 + 240) > a3)
    {
      return *(a1 + 128) + v10 + v12 * a3;
    }

    v19 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

    v20 = sub_1AFDFDA08();
    *&v22 = 0;
    (*(*v19 + 88))(v20, &v22, 0xD000000000000032, 0x80000001AFF4B950);
  }

  return 0;
}

uint64_t sub_1AFBFF788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = *(a1 + 96);
  v28 = *(a1 + 80);
  v29 = v7;
  v8 = *(a1 + 64);
  v27[0] = *(a1 + 48);
  v27[1] = v8;
  v9 = *(a1 + 96);
  v24 = v28;
  v25 = v9;
  v30 = *(a1 + 112);
  v26 = *(a1 + 112);
  v22 = v27[0];
  v23 = v6;
  v10 = sub_1AF64FB24(&type metadata for ParticleMetalness);
  v12 = v11;
  v14 = v13;
  v31[2] = v28;
  v31[3] = v25;
  v32 = v26;
  v31[0] = v27[0];
  v31[1] = v23;
  sub_1AF5DD36C(v27, v21);
  sub_1AF5DD3C8(v31);
  if (v14)
  {
    v15 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF45D50);
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF4B9B0);
    MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF45D70);
    v16 = v22;
    v17 = sub_1AFDFDA08();
    *&v22 = 0;
    (*(*v15 + 88))(v17, &v22, v16, *(&v16 + 1));
  }

  else
  {
    if (*(a1 + 232) <= a3 && *(a1 + 240) > a3)
    {
      return *(a1 + 128) + v10 + v12 * a3;
    }

    v19 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

    v20 = sub_1AFDFDA08();
    *&v22 = 0;
    (*(*v19 + 88))(v20, &v22, 0xD000000000000032, 0x80000001AFF4B950);
  }

  return 0;
}

uint64_t sub_1AFBFF9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = *(a1 + 96);
  v28 = *(a1 + 80);
  v29 = v7;
  v8 = *(a1 + 64);
  v27[0] = *(a1 + 48);
  v27[1] = v8;
  v9 = *(a1 + 96);
  v24 = v28;
  v25 = v9;
  v30 = *(a1 + 112);
  v26 = *(a1 + 112);
  v22 = v27[0];
  v23 = v6;
  v10 = sub_1AF64FB24(&type metadata for ParticleEmission);
  v12 = v11;
  v14 = v13;
  v31[2] = v28;
  v31[3] = v25;
  v32 = v26;
  v31[0] = v27[0];
  v31[1] = v23;
  sub_1AF5DD36C(v27, v21);
  sub_1AF5DD3C8(v31);
  if (v14)
  {
    v15 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF45D50);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF4B990);
    MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF45D70);
    v16 = v22;
    v17 = sub_1AFDFDA08();
    *&v22 = 0;
    (*(*v15 + 88))(v17, &v22, v16, *(&v16 + 1));
  }

  else
  {
    if (*(a1 + 232) <= a3 && *(a1 + 240) > a3)
    {
      return *(a1 + 128) + v10 + v12 * a3;
    }

    v19 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

    v20 = sub_1AFDFDA08();
    *&v22 = 0;
    (*(*v19 + 88))(v20, &v22, 0xD000000000000032, 0x80000001AFF4B950);
  }

  return 0;
}

uint64_t sub_1AFBFFC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a1 + 64);
  v13 = *(a1 + 96);
  v34 = *(a1 + 80);
  v35 = v13;
  v14 = *(a1 + 64);
  v33[0] = *(a1 + 48);
  v33[1] = v14;
  v15 = *(a1 + 96);
  v30 = v34;
  v31 = v15;
  v36 = *(a1 + 112);
  v32 = *(a1 + 112);
  v28 = v33[0];
  v29 = v12;
  v16 = sub_1AF64FB24(a4);
  v18 = v17;
  v20 = v19;
  v37[2] = v34;
  v37[3] = v31;
  v38 = v32;
  v37[0] = v33[0];
  v37[1] = v29;
  sub_1AF5DD36C(v33, v27);
  sub_1AF5DD3C8(v37);
  if (v20)
  {
    v21 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF45D50);
    MEMORY[0x1B2718AE0](a6, a7);
    MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF45D70);
    v22 = v28;
    v23 = sub_1AFDFDA08();
    *&v28 = 0;
    (*(*v21 + 88))(v23, &v28, v22, *(&v22 + 1));
  }

  else
  {
    if (*(a1 + 232) <= a3 && *(a1 + 240) > a3)
    {
      return *(a1 + 128) + v16 + v18 * a3;
    }

    v25 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

    v26 = sub_1AFDFDA08();
    *&v28 = 0;
    (*(*v25 + 88))(v26, &v28, 0xD000000000000032, 0x80000001AFF4B950);
  }

  return 0;
}

uint64_t sub_1AFBFFEAC()
{
  v1 = *(v0 + 184);

  sub_1AF6D655C(&type metadata for IncommingTickedEventsComponent, &off_1F255D248, v1, sub_1AFAD3AC0);
}

uint64_t sub_1AFBFFF2C()
{
  v1 = *(v0 + 184);

  sub_1AF6D2ADC(&type metadata for TickedEventsComponent, &off_1F255DCF0, v1, sub_1AFC26B7C);
}

void sub_1AFBFFFAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (qword_1ED730448)
  {

    v16 = sub_1AF6DC144(a1, a2, a7, 0);

    v17 = 0uLL;
    if (!v16)
    {
      v18 = 0;
      v21 = 0;
      v19 = 0;
      v20 = 0;
      v22 = 0;
      goto LABEL_15;
    }

    v18 = swift_conformsToProtocol2();
    if (!v18)
    {
      v16 = 0;
      goto LABEL_13;
    }

    if (!a6)
    {
LABEL_7:
      sub_1AFAF6564(a3, a4, a6, a7, v16, v18, &v23);
      v19 = v24;
      if (v24)
      {
        v20 = v26;
        v17 = v25;
        v21 = v23;
        v22 = v27 & 1 | (v28 << 16);
LABEL_15:
        *a8 = v16;
        *(a8 + 8) = v18;
        *(a8 + 16) = v21;
        *(a8 + 24) = v19;
        *(a8 + 32) = v17;
        *(a8 + 48) = v20;
        *(a8 + 56) = v22;
        return;
      }

      v16 = 0;
      v18 = 0;
      v21 = 0;
LABEL_14:
      v20 = 0;
      v22 = 0;
      v17 = 0uLL;
      goto LABEL_15;
    }

    if (qword_1ED730448)
    {

      a6 = sub_1AF6DC144(a5, a6, a7, 0);

      if (a6)
      {
        goto LABEL_7;
      }

      v16 = 0;
      v18 = 0;
LABEL_13:
      v21 = 0;
      v19 = 0;
      goto LABEL_14;
    }
  }

  sub_1AFDFE518();
  __break(1u);
}

uint64_t sub_1AFC001A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (!qword_1ED730448)
  {
    goto LABEL_16;
  }

  v16 = sub_1AF6DC144(a1, a2, a7, 0);

  v18 = 0uLL;
  if (!v16)
  {
    v21 = 0;
    v19 = 0;
    v24 = 0;
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      v26 = result;
      v27 = *(v16 - 8);
      MEMORY[0x1EEE9AC00](result, v25);
      v29 = &v34[-1] - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1AF6461F4(v16, v26);
      v30 = sub_1AF64622C(a3, a4, v16, v26);
      result = (*(v27 + 8))(v29, v16);
      if (v30)
      {
        v21 = *(v30 + 16);
        v19 = *(v30 + 24);
        v33 = *(v30 + 32);
        v16 = *(v30 + 48);
        v31 = *(v30 + 56);
        v32 = *(v30 + 58);

        v18 = v33;
        v24 = v31 | (v32 << 16);
        goto LABEL_15;
      }
    }

    goto LABEL_13;
  }

  if (!a6)
  {
LABEL_13:
    v21 = 0;
    v19 = 0;
    goto LABEL_14;
  }

  *&v33 = result;
  if (qword_1ED730448)
  {

    v19 = sub_1AF6DC144(a5, a6, a7, 0);

    if (v19)
    {
      memset(v34, 0, sizeof(v34));
      v20 = sub_1AF4917E4(a3, a4, v19, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, v34, 0, v16, v33);
      sub_1AFC0DD34(v34, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AFC28788);
      v21 = *(v20 + 16);
      v19 = *(v20 + 24);
      v33 = *(v20 + 32);
      v16 = *(v20 + 48);
      v22 = *(v20 + 56);
      v23 = *(v20 + 58);

      v18 = v33;
      v24 = v22 | (v23 << 16);
LABEL_15:
      *a8 = v21;
      *(a8 + 8) = v19;
      *(a8 + 16) = v18;
      *(a8 + 32) = v16;
      *(a8 + 40) = v24;
      return result;
    }

    v21 = 0;
LABEL_14:
    v16 = 0;
    v24 = 0;
    v18 = 0uLL;
    goto LABEL_15;
  }

LABEL_16:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFC00540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  swift_getObjectType();
  result = sub_1AF92975C();
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = result;
  v9 = *(a1 + 16);

  v10 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v11 = sub_1AF6824B0(v10, result, v8);
  if (!v11)
  {

LABEL_10:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  sub_1AF6794BC(v11, v9, v10);
}

uint64_t vfx_script_get_world_renderer(_:)(uint64_t a1)
{
  sub_1AFADAE08(a1, v6);
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1AF12F4D0(Strong);
    if (v3)
    {
      v4 = v3;
      sub_1AFABB5D8(v6);
    }

    else
    {
      v4 = sub_1AF12F434(v2);

      sub_1AFABB5D8(v6);
    }

    return v4;
  }

  else
  {
    sub_1AFABB5D8(v6);
    return 0;
  }
}

uint64_t vfx_script_get_iteration_range(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v3 = *(result + 48);
  *a2 = *(result + 40);
  *a3 = v3;
  return result;
}

uint64_t vfx_script_get_iteration_range(_:_:_:)(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v3 = *(result + 48);
  *a2 = *(result + 40);
  *a3 = v3;
  return result;
}

uint64_t vfx_script_event_stream_post_custom_c()
{
  sub_1AFDFD0E8();
}

uint64_t vfx_script_event_stream_post_custom_c(_:)()
{
  sub_1AFDFD0E8();
}

uint64_t vfx_script_log(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + 8) + OBJC_IVAR____TtC3VFX13EntityManager_logger);

  v6 = sub_1AFDFDA28();
  v8 = 0;
  (*(*v5 + 88))(v6, &v8, a2, a3);
}

uint64_t vfx_script_log(uint64_t a1)
{
  v1 = *(*(a1 + 8) + OBJC_IVAR____TtC3VFX13EntityManager_logger);

  v2 = sub_1AFDFD0E8();
  v4 = v3;
  v5 = sub_1AFDFDA28();
  v7 = 0;
  (*(*v1 + 88))(v5, &v7, v2, v4);
}

uint64_t vfx_script_log(_:_:)(uint64_t a1)
{
  v1 = *(*(a1 + 8) + OBJC_IVAR____TtC3VFX13EntityManager_logger);

  v2 = sub_1AFDFD0E8();
  v4 = v3;
  v5 = sub_1AFDFDA28();
  v7 = 0;
  (*(*v1 + 88))(v5, &v7, v2, v4);
}

uint64_t vfx_script_graph_log(_:_:_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1AFADAE08(a1, v23);
  v6 = *(v23[1] + OBJC_IVAR____TtC3VFX13EntityManager_logger);

  v7 = sub_1AFDFD0E8();
  v9 = v8;
  v10 = sub_1AF9105CC(a3, v23[0], 0);
  if ((~v10 & 0xF000000000000007) != 0)
  {
    v11 = v10;
    sub_1AF90E730(v10);
    if (v12)
    {
      sub_1AFC00B84(v12, v6, v7, v9, a4, v12);
      sub_1AF914F8C(v11);

      return sub_1AFABB5D8(v23);
    }

    sub_1AF914F8C(v11);
  }

  sub_1AFDFE218();

  v21 = v7;
  v22 = v9;
  MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF4B870);
  v13 = sub_1AF9105CC(a3, 0, 1);
  v14 = v13;
  if ((~v13 & 0xF000000000000007) == 0)
  {
    v13 = 0xC000000000000000;
  }

  v15 = sub_1AF90D394(v13);
  v17 = v16;
  sub_1AF914F8C(v14);
  MEMORY[0x1B2718AE0](v15, v17);

  v18 = v21;
  v19 = sub_1AFDFDA08();
  v21 = 0;
  (*(*v6 + 88))(v19, &v21, v18, v22);

  return sub_1AFABB5D8(v23);
}

uint64_t sub_1AFC00B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  v10 = MEMORY[0x1EEE9AC00](a3, a2);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  MEMORY[0x1B2718AE0](v10);
  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  (*(v9 + 16))(v12, a5, a6);
  sub_1AFDFEDD8();
  (*(v9 + 8))(v12, a6);
  v13 = v17;
  v14 = v18;
  v15 = sub_1AFDFDA28();
  v17 = 0;
  (*(*a2 + 88))(v15, &v17, v13, v14);
}

uint64_t vfx_script_graph_record_values(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6)
{
  LODWORD(v7) = a5;
  v49 = a1;
  v50 = a2;
  v52 = sub_1AFDFC318();
  v10 = *(v52 - 8);
  v12 = MEMORY[0x1EEE9AC00](v52, v11);
  v51 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v48 = a6;
    v15 = a3;
    v56 = MEMORY[0x1E69E7CC0];
    sub_1AFC07ADC(0, a3, 0);
    v14 = v56;
    v16 = (a4 + 8);
    while (1)
    {
      v17 = *v16;
      v18 = sub_1AF9105CC(*(v16 - 1), 0, 1);
      if ((~v18 & 0xF000000000000007) != 0)
      {
        if (v17)
        {
          v19 = v17 == 1;
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          v24 = v18;
          sub_1AF90E730(v18);
          v26 = v25;
          v18 = v24;
          if (v26)
          {
            sub_1AF97687C(v24, v17, v26, v53.n128_u64);
            sub_1AF914F8C(v24);
            goto LABEL_11;
          }
        }

        sub_1AF914F8C(v18);
      }

      v55 = 0;
      v53 = 0u;
      v54 = 0u;
LABEL_11:
      v56 = v14;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1AFC07ADC(v20 > 1, v21 + 1, 1);
        v14 = v56;
      }

      v16 += 2;
      *(v14 + 16) = v21 + 1;
      v22 = v14 + 40 * v21;
      v12 = v53;
      v23 = v54;
      *(v22 + 64) = v55;
      *(v22 + 32) = v12;
      *(v22 + 48) = v23;
      if (!--v15)
      {
        a6 = v48;
        break;
      }
    }
  }

  v27 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v7 = v7;
    v56 = MEMORY[0x1E69E7CC0];
    sub_1AFC07ADC(0, v7, 0);
    v27 = v56;
    v28 = (a6 + 8);
    do
    {
      v29 = *v28;
      v30 = sub_1AF9105CC(*(v28 - 1), 0, 1);
      if ((~v30 & 0xF000000000000007) != 0)
      {
        if (v29)
        {
          v31 = v29 == 1;
        }

        else
        {
          v31 = 1;
        }

        if (!v31)
        {
          v36 = v30;
          sub_1AF90E730(v30);
          v38 = v37;
          v30 = v36;
          if (v38)
          {
            sub_1AF97687C(v36, v29, v38, v53.n128_u64);
            sub_1AF914F8C(v36);
            goto LABEL_27;
          }
        }

        sub_1AF914F8C(v30);
      }

      v55 = 0;
      v53 = 0u;
      v54 = 0u;
LABEL_27:
      v56 = v27;
      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1AFC07ADC(v32 > 1, v33 + 1, 1);
        v27 = v56;
      }

      v28 += 2;
      *(v27 + 16) = v33 + 1;
      v34 = v27 + 40 * v33;
      v12 = v53;
      v35 = v54;
      *(v34 + 64) = v55;
      *(v34 + 32) = v12;
      *(v34 + 48) = v35;
      --v7;
    }

    while (v7);
  }

  v39 = *(v49 + 8);
  v41 = v51;
  v40 = v52;
  (*(v10 + 16))(v51, v50, v52, v12);
  v42 = *(v39 + 184);

  v43 = sub_1AF6D53D4(&type metadata for DiagnosticsTrackerInstance, &off_1F2537498, v42);
  v45 = v44;

  if (v43)
  {
    ObjectType = swift_getObjectType();
    (*(v45 + 32))(v41, v14, v27, ObjectType, v45);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return (*(v10 + 8))(v41, v40);
}

BOOL vfx_script_clock_is_first_frame(uint64_t a1)
{
  v1 = *(a1 + 8) + OBJC_IVAR____TtC3VFX13EntityManager_clock;
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  return v3 == 1 && v2 == 0;
}

BOOL vfx_script_clock_is_first_frame(_:)(uint64_t a1)
{
  v1 = *(a1 + 8) + OBJC_IVAR____TtC3VFX13EntityManager_clock;
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  return v3 == 1 && v2 == 0;
}

uint64_t vfx_script_texture_sample1d(uint64_t a1)
{
  if (a1 > 1)
  {
    return sub_1AFC07AFC(a1);
  }

  return a1;
}

unint64_t vfx_script_texture_sample1d(_:_:)(unint64_t result)
{
  if (result >= 2)
  {
    return (*(result + 24))();
  }

  return result;
}

unint64_t vfx_script_texture_sample1d_curve(unint64_t result, float a2)
{
  if (result > 1)
  {
    return sub_1AFC07B04(result, a2);
  }

  return result;
}

float vfx_script_texture_sample1d_curve(_:_:)(unint64_t a1, float a2)
{
  v2 = 0.0;
  if (a1 >= 2)
  {
    v3 = (*(a1 + 24))(((a2 * (*a1 + -1.0)) + 0.5) / *a1);
    return *&v3;
  }

  return v2;
}

uint64_t vfx_script_texture_sample2d(uint64_t a1)
{
  if (a1 > 1)
  {
    return sub_1AFC07B38(a1);
  }

  return a1;
}

unint64_t vfx_script_texture_sample2d(_:_:)(unint64_t result)
{
  if (result >= 2)
  {
    return (*(result + 40))();
  }

  return result;
}

float32x2_t vfx_script_texture_sample2d_gradient_x(unint64_t a1, float32x2_t a2)
{
  if (a1 > 1)
  {
    return sub_1AFC07B40(a1, a2);
  }

  return 0;
}

double vfx_script_texture_sample2d_gradient_x(_:_:)(unint64_t a1, float32x2_t a2)
{
  v2 = 0.0;
  if (a1 >= 2)
  {
    v8 = COERCE_INT32X2_T((*(a1 + 40))(COERCE_DOUBLE(vadd_f32(a2, 1008981770))));
    v7 = COERCE_INT32X2_T((*(a1 + 40))(a1, COERCE_DOUBLE(vadd_f32(a2, 0x80000000BC23D70ALL))));
    v6 = COERCE_INT32X2_T((*(a1 + 40))(a1, COERCE_DOUBLE(vadd_f32(a2, 0x3C23D70A00000000))));
    return COERCE_DOUBLE(vsub_f32(vzip1_s32(v8, v6), vzip1_s32(v7, COERCE_INT32X2_T((*(a1 + 40))(a1, COERCE_DOUBLE(vadd_f32(a2, 0xBC23D70A80000000)))))));
  }

  return v2;
}

double vfx_script_texture_get_size2d(unint64_t a1)
{
  if (a1 > 1)
  {
    return *a1;
  }

  __asm { FMOV            V0.2S, #1.0 }

  return result;
}

double vfx_script_texture_get_size2d(_:)(unint64_t a1)
{
  if (a1 >= 2)
  {
    return *a1;
  }

  __asm { FMOV            V0.2S, #1.0 }

  return result;
}

uint64_t vfx_script_texture_sample3d(uint64_t a1)
{
  if (a1 > 1)
  {
    return sub_1AFC07BF0(a1);
  }

  return a1;
}

unint64_t vfx_script_texture_sample3d(_:_:)(unint64_t result)
{
  if (result >= 2)
  {
    return (*(result + 72))();
  }

  return result;
}

double vfx_script_texture_get_size3d(unint64_t a1)
{
  if (a1 > 1)
  {
    return nullsub_106();
  }

  __asm { FMOV            V0.4S, #1.0 }

  return *&_Q0;
}

__n128 vfx_script_texture_get_size3d(_:)(unint64_t a1)
{
  if (a1 >= 2)
  {
    return *a1;
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }
  }

  return result;
}

uint64_t vfx_script_color_ramp_copy(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t vfx_script_color_ramp_copy(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

void *vfx_script_color_ramp_create_setting_color(_:_:_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  sub_1AFADAE08(a1, v13);
  v8 = v14;

  v9 = ecs_stack_allocator_allocate(v8, 17, 8);
  *v9 = v5;
  v9[1] = v6;
  *(v9 + 16) = v7;
  if ((a3 & 0x8000000000000000) != 0 || *(v5 + 2) <= a3)
  {
    sub_1AFABB5D8(v13);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v9 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1AFC0DD00(v5);
      *v9 = v5;
    }

    sub_1AFABB5D8(v13);
    *&v5[16 * a3 + 32] = a4;
  }

  return v9;
}

void *vfx_script_curve_create(uint64_t a1, const void *a2, const void *a3, uint64_t a4)
{
  sub_1AFADAE08(a1, v11);
  v7 = ecs_stack_allocator_allocate(v11[4], 25, 8);
  v8 = sub_1AFC05AD0(a2, a4);
  v9 = sub_1AFC05AD0(a3, a4);
  *v7 = v8;
  v7[1] = v9;
  v7[2] = 0;
  *(v7 + 24) = 1;
  sub_1AFABB5D8(v11);
  return v7;
}

uint64_t vfx_script_curve_destroy(uint64_t a1, unint64_t a2)
{
  sub_1AFADAE08(a1, v4);
  sub_1AFC282F8(a2, sub_1AF8C0110);
  ecs_stack_allocator_deallocate(v4[4], a2, 0x19uLL);
  return sub_1AFABB5D8(v4);
}

uint64_t vfx_script_curve_destroy(_:_:)(uint64_t a1, unint64_t a2)
{
  sub_1AFADAE08(a1, v4);
  sub_1AFC282F8(a2, sub_1AF8C0110);
  ecs_stack_allocator_deallocate(v4[4], a2, 0x19uLL);
  return sub_1AFABB5D8(v4);
}

uint64_t vfx_script_curve_copy(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  *a1 = *a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t vfx_script_curve_copy(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  *a1 = *a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

void *vfx_script_curve_create_setting_value(_:_:_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, float a4)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_1AFADAE08(a1, v12);
  v8 = v12[4];

  v9 = ecs_stack_allocator_allocate(v8, 25, 8);
  *v9 = v6;
  v9[1] = v7;
  v9[2] = 0;
  *(v9 + 24) = 1;
  if ((a3 & 0x8000000000000000) != 0 || *(v6 + 2) <= a3)
  {
    sub_1AFABB5D8(v12);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v9 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_1AFC0DB20(v6);
      *v9 = v6;
    }

    sub_1AFABB5D8(v12);
    *&v6[4 * a3 + 32] = a4;
  }

  return v9;
}

void *vfx_script_curve_create_scaled(uint64_t a1, uint64_t *a2, float a3)
{
  v4 = *a2;
  v5 = a2[1];
  sub_1AFADAE08(a1, v9);
  v6 = v9[4];

  v7 = ecs_stack_allocator_allocate(v6, 25, 8);
  *v7 = v4;
  v7[1] = v5;
  v7[2] = 0;
  *(v7 + 24) = 1;
  sub_1AFBFCA80(a3);
  sub_1AFABB5D8(v9);
  return v7;
}

void *vfx_script_string_create(uint64_t a1)
{
  sub_1AFADAE08(a1, v4);
  v1 = ecs_stack_allocator_allocate(v4[4], 16, 8);
  *v1 = sub_1AFDFD0E8();
  v1[1] = v2;
  sub_1AFABB5D8(v4);
  return v1;
}

uint64_t sub_1AFC01A54(uint64_t a1, unint64_t a2, void (*a3)(unint64_t), unint64_t a4)
{
  sub_1AFADAE08(a1, v8);
  a3(a2);
  ecs_stack_allocator_deallocate(v8[4], a2, a4);
  return sub_1AFABB5D8(v8);
}

uint64_t vfx_script_string_copy(void *a1, void *a2)
{
  v2 = a2[1];
  *a1 = *a2;
  a1[1] = v2;
}

uint64_t vfx_script_string_copy(_:_:)(void *a1, void *a2)
{
  v2 = a2[1];
  *a1 = *a2;
  a1[1] = v2;
}

void *vfx_script_string_to_objc()
{

  v0 = sub_1AFDFCEC8();

  v1 = v0;

  return v0;
}

void *vfx_script_string_to_objc(_:_:)()
{

  v0 = sub_1AFDFCEC8();

  v1 = v0;

  return v0;
}

void *vfx_script_string_join(_:_:_:)(uint64_t a1, unsigned int a2, __int128 *a3)
{
  v5 = a1;
  sub_1AFADAE08(a1, v37);
  v27 = v37;
  v6 = sub_1AFBFC8C4(sub_1AFC0DD14, v26, a3, a2);
  v7 = *(v6 + 16);
  if (v7)
  {
    v23 = v5;
    v8 = v6 + 32;
    v25 = MEMORY[0x1E69E7CC0];
    v9 = MEMORY[0x1E69E7CA0];
    do
    {
      sub_1AFC0DD94(v8, v36, &qword_1EB6405E8, &type metadata for AnyValue);
      sub_1AFC0DD94(v36, &v32, &qword_1EB6405E8, &type metadata for AnyValue);
      if (v34)
      {
        sub_1AF0D5A54(&v32 + 8, v35);
        sub_1AF9151B0(&v32);
      }

      else
      {
        sub_1AFC0DD34(&v32, &qword_1EB6405E8, &type metadata for AnyValue, MEMORY[0x1E69E6720], sub_1AFC28788);
        memset(v35, 0, sizeof(v35));
      }

      sub_1AFC0DD94(v35, &v32, &qword_1ED726850, v9 + 8);
      if (v33)
      {
        sub_1AF449D40(&v32, &v30);
        v28 = 0;
        v29 = 0xE000000000000000;
        sub_1AF441150(&v30, v31);
        sub_1AFDFEDD8();
        v11 = v28;
        v24 = v29;
        v12 = MEMORY[0x1E69E6720];
        sub_1AFC0DD34(v35, &qword_1ED726850, v9 + 8, MEMORY[0x1E69E6720], sub_1AFC28788);
        sub_1AFC0DD34(v36, &qword_1EB6405E8, &type metadata for AnyValue, v12, sub_1AFC28788);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v30);
        v13 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1AF420554(0, *(v25 + 2) + 1, 1, v25);
        }

        v15 = *(v13 + 2);
        v14 = *(v13 + 3);
        if (v15 >= v14 >> 1)
        {
          v13 = sub_1AF420554(v14 > 1, v15 + 1, 1, v13);
        }

        *(v13 + 2) = v15 + 1;
        v25 = v13;
        v16 = &v13[16 * v15];
        *(v16 + 4) = v11;
        *(v16 + 5) = v24;
      }

      else
      {
        v10 = MEMORY[0x1E69E6720];
        sub_1AFC0DD34(v35, &qword_1ED726850, v9 + 8, MEMORY[0x1E69E6720], sub_1AFC28788);
        sub_1AFC0DD34(v36, &qword_1EB6405E8, &type metadata for AnyValue, v10, sub_1AFC28788);
      }

      v8 += 40;
      --v7;
    }

    while (v7);

    v5 = v23;
    v17 = v25;
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  v36[0] = v17;
  sub_1AFC28788(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v18 = sub_1AFDFCD98();
  v20 = v19;

  v21 = sub_1AFBFBA70(v18, v20, v5);

  sub_1AFABB5D8(v37);
  return v21;
}

double sub_1AFC01F90@<D0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v5 = sub_1AF9105CC(*a1, *a2, 0);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    return sub_1AF9767B0(v5, v4, a3);
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1AFC01FFC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_1AFADAE08(a1, v6);
  v3 = ecs_stack_allocator_allocate(v6[4], 16, 8);
  *v3 = sub_1AFDFD0E8();
  v3[1] = v4;
  result = sub_1AFABB5D8(v6);
  *a2 = v3;
  return result;
}

void *sub_1AFC02078(uint64_t a1)
{
  sub_1AFADAE08(a1, v4);
  v1 = ecs_stack_allocator_allocate(v4[4], 16, 8);
  *v1 = sub_1AFDFD0E8();
  v1[1] = v2;
  sub_1AFABB5D8(v4);
  return v1;
}

Swift::Float __swiftcall vfx_script_array_float_sample(_:_:)(Swift::OpaquePointer a1, Swift::Float a2)
{
  v3 = *(a1._rawValue + 2);
  if (!v3)
  {
    return 0.0;
  }

  v4 = truncf(a2);
  *v2.i32 = a2 - v4;
  v5.i64[0] = 0x8000000080000000;
  v5.i64[1] = 0x8000000080000000;
  v2.i32[0] = vbslq_s8(v5, v2, *&a2).i32[0];
  v6 = 1.0 - vabds_f32(a2, v4);
  if (*v2.i32 >= 0.0)
  {
    v6 = *v2.i32;
  }

  if (a2 < 0.0 || a2 > 1.0)
  {
    a2 = v6;
  }

  v8 = (v3 - 1);
  v9 = (a2 * v8);
  v10 = (a2 - (v9 / v8)) / (1.0 / v8);
  return (*(a1._rawValue + (v9 + 1) % v3 + 8) * v10) + (*(a1._rawValue + v9 + 8) * (1.0 - v10));
}

uint64_t vfx_script_particle_lookup_by_id(void *a1, unsigned int a2)
{
  sub_1AFC0225C(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v3;
  v6 = v4;
  v8 = -1;

  sub_1AF67EDB8(v5, v6, &v8, a2);

  return v8;
}

uint64_t vfx_script_particle_lookup_by_id(_:_:)(void *a1, unsigned int a2)
{
  sub_1AFC0225C(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v3;
  v6 = v4;
  v8 = -1;

  sub_1AF67EDB8(v5, v6, &v8, a2);

  return v8;
}

uint64_t sub_1AFC0225C(void *a1)
{
  if (*a1 == 238122804)
  {
    return 0;
  }

  v18 = v1;
  v19 = v2;
  j__object_getClass(a1);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v6 = sub_1AF0D4478(0, &qword_1ED72F7F0);
  result = 0;
  if (ObjCClassMetadata == v6)
  {
    v7 = a1;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {

      return 0;
    }

    v9 = v8;
    v10 = [v8 world];
    [v10 lock];
    v11 = [v9 behaviorGraph];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 opaqueEntityHelper];

      if (v13)
      {
        sub_1AFDFDFB8();
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0u;
        v15 = 0u;
      }

      v16 = v14;
      v17 = v15;
      if (*(&v15 + 1))
      {
        type metadata accessor for EntityPropertyHelper();
        if (swift_dynamicCast())
        {
          if (swift_weakLoadStrong())
          {

            [v10 unlock];
            return 1;
          }
        }

        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    sub_1AFC0DD34(&v16, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AFC28788);
LABEL_16:
    [v10 unlock];

    return 0;
  }

  return result;
}

uint64_t vfx_script_particle_count(void *a1)
{
  v2 = sub_1AFC0225C(a1);
  if (!v4)
  {
    return 0;
  }

  if ((v2 & 1) == 0)
  {
    return a1[4];
  }

  return sub_1AFC0257C(v3);
}

uint64_t vfx_script_particle_count(_:)(void *a1)
{
  v2 = sub_1AFC0225C(a1);
  if (!v4)
  {
    return 0;
  }

  if ((v2 & 1) == 0)
  {
    return a1[4];
  }

  return sub_1AFC0257C(v3);
}

uint64_t sub_1AFC0257C(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
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
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for Particle;
  *(inited + 40) = &off_1F252D7A8;
  sub_1AF5F58E4(inited, 1, v9);
  swift_setDeallocating();
  sub_1AF42B9E0(0, &qword_1ED726A10, &qword_1ED72C1D0);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  *(v4 + 56) = &type metadata for EmitterReference;
  *(v4 + 64) = &off_1F2563D20;
  *(v4 + 32) = v1;
  v5 = v4 + 32;
  *(v4 + 36) = v2;
  sub_1AF5FC13C(v4, v10);
  sub_1AF692DB0(v9);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);

  sub_1AF6B06C0(v6, v10, 0x200000000, v11);
  sub_1AF692DB0(v10);

  if (!*&v11[0])
  {
    return 0;
  }

  v7 = v12;
  sub_1AFC0DD34(v11, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFC28788);
  return v7;
}

unint64_t vfx_script_particle_find_nearest_neighbors(void *a1, uint64_t a2, unint64_t a3)
{
  v10 = 0;
  sub_1AFC0225C(a1);
  if (!v6)
  {
    return 0;
  }

  v7 = v5;
  v8 = v6;

  sub_1AF67EEB4(v7, v8, a2, a3, &v10);

  return v10;
}

unint64_t vfx_script_particle_find_nearest_neighbors(_:_:_:_:_:)(void *a1, uint64_t a2, unint64_t a3)
{
  sub_1AFC0225C(a1);
  if (v6)
  {
    v7 = v5;
    v8 = v6;

    if (v7 != 0xFFFFFFFF && (v7 & 0x80000000) == 0 && v7 < *(v8 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v9 = (*(v8 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v7);
      v10 = *(v9 + 2);
      if (HIDWORD(v7) == 0xFFFFFFFF || v9[2] == HIDWORD(v7))
      {
        v12 = *(*(v8 + 144) + 8 * *v9 + 32);
        v13 = *(v12 + 48);
        v14 = (v13 + 32);
        v15 = *(v13 + 16) + 1;
        while (--v15)
        {
          v16 = v14 + 5;
          v17 = *v14;
          v14 += 5;
          if (v17 == &type metadata for EmitterRuntime)
          {
            nearest_neighbors = vfx_uniform_grid_find_nearest_neighbors((*(&(*(v16 - 2))[53 * v10 + 35].Description + *(v12 + 128)))[2], a2, a3, 1);

            if (nearest_neighbors >= a3)
            {
              return a3;
            }

            else
            {
              return nearest_neighbors;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1AFC029A8(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1AFC0225C(a1);
  if (!v12)
  {
    return 0;
  }

  v13 = a2;
  if (a2 == 0xFFFFFFFFLL)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v14 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v30 = v14;
      swift_once();
      v14 = v30;
    }

    v42 = 0;
    sub_1AF0D4F18(v14, &v42, 0xD000000000000021, 0x80000001AFF4B920);
    return 0;
  }

  v16 = v12;
  if ((a2 & 0x8000000000000000) != 0)
  {
    a2 = HIDWORD(a2) & 0x7FFFFFFF;
  }

  else
  {
    v31 = v11;
    v17 = HIDWORD(v11);
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v49 = qword_1ED73B840;
    v50 = 0;
    v51 = 2;
    v52 = 0;
    v53 = 2;
    v54 = 0;
    sub_1AF5C52A8();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = &type metadata for Particle;
    *(inited + 40) = &off_1F252D7A8;
    sub_1AF5F58E4(inited, 1, v33);
    swift_setDeallocating();
    sub_1AF42B9E0(0, &qword_1ED726A10, &qword_1ED72C1D0);
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_1AFE431C0;
    *(v19 + 56) = &type metadata for EmitterReference;
    *(v19 + 64) = &off_1F2563D20;
    *(v19 + 32) = v31;
    v20 = v19 + 32;
    *(v19 + 36) = v17;
    sub_1AF5FC13C(v19, v34);
    sub_1AF692DB0(v33);
    swift_setDeallocating();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);

    sub_1AF6B06C0(v21, v34, 0x200000000, &v35);

    if (!v35)
    {
      sub_1AF692DB0(v34);
      return 0;
    }

    v47 = v40;
    v45 = v38;
    v46 = v39;
    v42 = v35;
    v48 = v41;
    v43 = v36;
    v44 = v37;
    if (a2 >= *(&v40 + 1))
    {
      sub_1AF692DB0(v34);
      sub_1AFC0DD34(&v35, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFC28788);
      return 0;
    }

    LODWORD(a2) = sub_1AF6BA358(a2);
    v13 = v22;
    sub_1AF692DB0(v34);
    sub_1AFC0DD34(&v35, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFC28788);
  }

  v23 = *(v16 + 144);

  v24 = sub_1AFBFCE24(v32, a2, v23);
  v26 = *v25;
  (v24)(v32, 0);

  if (!v26)
  {
    v28 = *(v16 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

    v29 = sub_1AFDFDA08();
    v32[0] = 0;
    (*(*v28 + 88))(v29, v32, 0xD000000000000031, 0x80000001AFF4B8E0);

    return 0;
  }

  v27 = sub_1AFBFFC54(v26, v16, v13, a3, a4, a5, a6);

  return v27;
}

uint64_t sub_1AFC02FC4(void *a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1AFC0225C(a1);
  if (!v6)
  {
    return 0;
  }

  v7 = a2;
  if (a2 == 0xFFFFFFFFLL)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v8 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v25 = v8;
      swift_once();
      v8 = v25;
    }

    v36 = 0;
    sub_1AF0D4F18(v8, &v36, 0xD000000000000021, 0x80000001AFF4B920);
    return 0;
  }

  v10 = v6;
  if ((a2 & 0x8000000000000000) != 0)
  {
    a2 = HIDWORD(a2) & 0x7FFFFFFF;
  }

  else
  {
    v11 = v5;
    v12 = HIDWORD(v5);
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v43 = qword_1ED73B840;
    v44 = 0;
    v45 = 2;
    v46 = 0;
    v47 = 2;
    v48 = 0;
    sub_1AF5C52A8();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = &type metadata for Particle;
    *(inited + 40) = &off_1F252D7A8;
    sub_1AF5F58E4(inited, 1, v27);
    swift_setDeallocating();
    sub_1AF42B9E0(0, &qword_1ED726A10, &qword_1ED72C1D0);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_1AFE431C0;
    *(v14 + 56) = &type metadata for EmitterReference;
    *(v14 + 64) = &off_1F2563D20;
    *(v14 + 32) = v11;
    v15 = v14 + 32;
    *(v14 + 36) = v12;
    sub_1AF5FC13C(v14, v28);
    sub_1AF692DB0(v27);
    swift_setDeallocating();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v15);

    sub_1AF6B06C0(v16, v28, 0x200000000, &v29);

    if (!v29)
    {
      sub_1AF692DB0(v28);
      return 0;
    }

    v41 = v34;
    v39 = v32;
    v40 = v33;
    v36 = v29;
    v42 = v35;
    v37 = v30;
    v38 = v31;
    if (a2 >= *(&v34 + 1))
    {
      sub_1AF692DB0(v28);
      sub_1AFC0DD34(&v29, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFC28788);
      return 0;
    }

    LODWORD(a2) = sub_1AF6BA358(a2);
    v7 = v17;
    sub_1AF692DB0(v28);
    sub_1AFC0DD34(&v29, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFC28788);
  }

  v18 = *(v10 + 144);

  v19 = sub_1AFBFCE24(v26, a2, v18);
  v21 = *v20;
  (v19)(v26, 0);

  if (!v21)
  {
    v23 = *(v10 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

    v24 = sub_1AFDFDA08();
    v26[0] = 0;
    (*(*v23 + 88))(v24, v26, 0xD000000000000031, 0x80000001AFF4B8E0);

    return 0;
  }

  v22 = a3(v21, v10, v7);

  return v22;
}

double vfx_script_particle_get_world_position(void *a1, unint64_t a2)
{
  sub_1AFC0225C(a1);
  result = 0.0;
  if (v6)
  {
    v7 = v4;

    sub_1AF3C9244(v7, v14);

    if (v15)
    {
      return 0.0;
    }

    else
    {
      v12 = v14[1];
      v13 = v14[0];
      v10 = v14[3];
      v11 = v14[2];
      v8 = sub_1AFC029A8(a1, a2, &type metadata for Position, &off_1F252EDF0, 0x6E6F697469736F50, 0xE800000000000000);
      result = 0.0;
      if (v8)
      {
        *v9.i64 = nullsub_106();
        return sub_1AFC0DE14(v13, v12, v11, v10, v9);
      }
    }
  }

  return result;
}

double vfx_script_particle_get_world_position(_:_:)(void *a1, unint64_t a2)
{
  sub_1AFC0225C(a1);
  result = 0.0;
  if (v6)
  {
    v7 = v4;

    sub_1AF3C9244(v7, v13);

    if (v14)
    {
      return 0.0;
    }

    else
    {
      v9 = v13[2];
      v10 = v13[1];
      v11 = v13[3];
      v12 = v13[0];
      v8 = sub_1AFC029A8(a1, a2, &type metadata for Position, &off_1F252EDF0, 0x6E6F697469736F50, 0xE800000000000000);
      result = 0.0;
      if (v8)
      {
        *&result = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v11, v9, *v8, 2), v10, *v8->f32, 1), v12, COERCE_FLOAT(*v8)).u64[0];
      }
    }
  }

  return result;
}

void vfx_script_particle_set_world_position(void *a1, unint64_t a2, float32x4_t a3)
{
  sub_1AFC0225C(a1);
  if (v6)
  {
    v7 = v5;

    sub_1AF3C9330(v7, v16);

    if ((v17 & 1) == 0)
    {
      v13 = v16[1];
      v14 = v16[0];
      v11 = v16[3];
      v12 = v16[2];
      v8 = sub_1AFC029A8(a1, a2, &type metadata for Position, &off_1F252EDF0, 0x6E6F697469736F50, 0xE800000000000000);
      if (v8)
      {
        v9 = v8;
        sub_1AFC0DE14(v14, v13, v12, v11, a3);
        sub_1AFC0DE28();
        *v9 = v10;
      }
    }
  }
}

float vfx_script_particle_set_world_position(_:_:_:)(void *a1, unint64_t a2, float32x4_t a3)
{
  sub_1AFC0225C(a1);
  if (v7)
  {
    v8 = v5;

    sub_1AF3C9330(v8, v16);

    if ((v17 & 1) == 0)
    {
      v12 = v16[1];
      v13 = v16[0];
      v11 = v16[2];
      v14 = v16[3];
      v9 = sub_1AFC029A8(a1, a2, &type metadata for Position, &off_1F252EDF0, 0x6E6F697469736F50, 0xE800000000000000);
      if (v9)
      {
        v10 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v14, v11, a3, 2), v12, *a3.f32, 1), v13, a3.f32[0]);
        result = 1.0;
        v10.i32[3] = 1.0;
        *v9 = v10;
      }
    }
  }

  return result;
}

uint64_t vfx_script_get_call_parameter(_:_:)(uint64_t a1)
{
  sub_1AFADAE08(a1, v9);
  v1 = sub_1AFDFD0E8();
  v3 = v10;
  if (!*(v10 + 16))
  {

    goto LABEL_5;
  }

  v4 = sub_1AF419914(v1, v2);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = *(*(v3 + 56) + 8 * v4);
LABEL_6:
  sub_1AFABB5D8(v9);
  return v7;
}

void *sub_1AFC03A70(uint64_t a1, const void *a2, const void *a3, uint64_t a4, unsigned __int8 a5)
{
  sub_1AFADAE08(a1, v14);
  v9 = ecs_stack_allocator_allocate(v14[4], 17, 8);
  if (a5 >= 3u)
  {
    v10 = 3;
  }

  else
  {
    v10 = a5;
  }

  v11 = sub_1AFC05B94(a2, a4);
  v12 = sub_1AFC05AD0(a3, a4);
  *v9 = v11;
  v9[1] = v12;
  *(v9 + 16) = v10;
  sub_1AFABB5D8(v14);
  return v9;
}

void *sub_1AFC03B18(uint64_t a1, const void *a2, const void *a3, uint64_t a4)
{
  sub_1AFADAE08(a1, v11);
  v7 = ecs_stack_allocator_allocate(v11[4], 25, 8);
  v8 = sub_1AFC05AD0(a2, a4);
  v9 = sub_1AFC05AD0(a3, a4);
  *v7 = v8;
  v7[1] = v9;
  v7[2] = 0;
  *(v7 + 24) = 1;
  sub_1AFABB5D8(v11);
  return v7;
}

void *sub_1AFC03BAC(uint64_t a1, uint64_t *a2, float a3)
{
  v4 = *a2;
  v5 = a2[1];
  sub_1AFADAE08(a1, v9);
  v6 = v9[4];

  v7 = ecs_stack_allocator_allocate(v6, 25, 8);
  *v7 = v4;
  v7[1] = v5;
  v7[2] = 0;
  *(v7 + 24) = 1;
  sub_1AFBFCA80(a3);
  sub_1AFABB5D8(v9);
  return v7;
}

id vfx_script_get_world(_:)(uint64_t a1)
{
  sub_1AFADAE08(a1, &v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = objc_opt_self();

    v4 = [v3 worldWithWorldRef_];

    sub_1AFABB5D8(&v6);
  }

  else
  {
    sub_1AFABB5D8(&v6);
    return 0;
  }

  return v4;
}

BOOL vfx_script_is_run_mode(uint64_t a1)
{
  sub_1AFADAE08(a1, v3);
  v1 = *(v3[1] + 57);
  sub_1AFABB5D8(v3);
  return (v1 & 1) == 0;
}

BOOL vfx_script_is_run_mode(_:)(uint64_t a1)
{
  sub_1AFADAE08(a1, v3);
  v1 = *(v3[1] + 57);
  sub_1AFABB5D8(v3);
  return (v1 & 1) == 0;
}

uint64_t vfx_script_get_world_renderer(uint64_t a1)
{
  sub_1AFADAE08(a1, v6);
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1AF12F4D0(Strong);
    if (v3)
    {
      v4 = v3;
      sub_1AFABB5D8(v6);
    }

    else
    {
      v4 = sub_1AF12F434(v2);

      sub_1AFABB5D8(v6);
    }

    return v4;
  }

  else
  {
    sub_1AFABB5D8(v6);
    return 0;
  }
}

void *vfx_script_get_state_by_id(_:_:)(uint64_t a1)
{
  sub_1AFADAE08(a1, v23);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_19;
  }

  v2 = Strong;
  v3 = objc_opt_self();

  v4 = [v3 worldWithWorldRef_];
  v5 = sub_1AFDFD0E8();
  v7 = v6;
  v22 = v4;
  v8 = [v4 stateManager];
  v9 = [v8 states];

  sub_1AF0D4478(0, &qword_1EB632940);
  v10 = sub_1AFDFD418();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  v11 = sub_1AFDFE108();
  if (!v11)
  {
LABEL_18:

LABEL_19:
    sub_1AFABB5D8(v23);
    return 0;
  }

LABEL_4:
  v12 = 0;
  while (1)
  {
    v13 = (v10 & 0xC000000000000001) != 0 ? MEMORY[0x1B2719C70](v12, v10) : *(v10 + 8 * v12 + 32);
    v14 = v13;
    v15 = [v13 identifier];
    v16 = sub_1AFDFCEF8();
    v18 = v17;

    if (v16 == v5 && v18 == v7)
    {
      break;
    }

    v20 = sub_1AFDFEE28();

    if (v20)
    {
      goto LABEL_16;
    }

    if (v11 == ++v12)
    {
      goto LABEL_18;
    }
  }

LABEL_16:
  sub_1AFABB5D8(v23);

  return v14;
}

uint64_t vfx_script_tick(_:_:_:)(uint64_t a1, float a2)
{
  sub_1AFADAE08(a1, v18);
  v3 = v19;
  v4 = sub_1AFDFD0E8();
  v6 = v5;
  v7 = *(v3 + 184);

  v8 = sub_1AF6D6574(&type metadata for IncommingTickedEventsComponent, &off_1F255D248, v7);

  v9 = *(v3 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 48);
  v10 = @"VFXTriggerTypeTick";
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_1AF424088(0, *(v8 + 16) + 1, 1, v8);
    v8 = isUniquelyReferenced_nonNull_native;
  }

  v14 = *(v8 + 16);
  v13 = *(v8 + 24);
  if (v14 >= v13 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_1AF424088(v13 > 1, v14 + 1, 1, v8);
    v8 = isUniquelyReferenced_nonNull_native;
  }

  *(v8 + 16) = v14 + 1;
  v15 = v8 + 48 * v14;
  *(v15 + 32) = v10;
  *(v15 + 40) = v4;
  *(v15 + 48) = v6;
  *(v15 + 56) = v9 + a2;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 76) = 0;
  v16 = *(v3 + 184);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native, v12);

  sub_1AF6D655C(&type metadata for IncommingTickedEventsComponent, &off_1F255D248, v16, sub_1AFAD0BEC);

  return sub_1AFABB5D8(v18);
}

uint64_t vfx_script_start_timer(_:_:_:_:)(uint64_t a1, float a2, uint64_t a3, char a4)
{
  sub_1AFADAE08(a1, v23);
  v6 = v24;
  v7 = sub_1AFDFD0E8();
  v9 = v8;
  v10 = *(v6 + 184);

  v11 = sub_1AF6D6574(&type metadata for IncommingTickedEventsComponent, &off_1F255D248, v10);

  v12 = *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 48);
  if (a4)
  {
    v13 = @"VFXTriggerTypeTick";
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = 0.0;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = a2;
    v22 = @"VFXTriggerTypeTick";
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  isUniquelyReferenced_nonNull_native = sub_1AF424088(0, *(v11 + 16) + 1, 1, v11);
  v11 = isUniquelyReferenced_nonNull_native;
LABEL_3:
  v18 = *(v11 + 16);
  v17 = *(v11 + 24);
  if (v18 >= v17 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_1AF424088(v17 > 1, v18 + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
  }

  *(v11 + 16) = v18 + 1;
  v19 = v11 + 48 * v18;
  *(v19 + 32) = @"VFXTriggerTypeTick";
  *(v19 + 40) = v7;
  *(v19 + 48) = v9;
  *(v19 + 56) = v12 + v16;
  *(v19 + 64) = a2;
  *(v19 + 72) = 0;
  *(v19 + 76) = 0;
  v20 = *(v6 + 184);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native, v15);

  sub_1AF6D655C(&type metadata for IncommingTickedEventsComponent, &off_1F255D248, v20, sub_1AFAD3AC0);

  return sub_1AFABB5D8(v23);
}

uint64_t vfx_script_stop_timer(_:_:)(uint64_t a1)
{
  sub_1AFADAE08(a1, v15);
  v1 = v16;
  v2 = sub_1AFDFD0E8();
  v4 = v3;
  v5 = *(v1 + 184);

  v6 = sub_1AF6D6574(&type metadata for IncommingTickedEventsComponent, &off_1F255D248, v5);

  v7 = @"VFXTriggerTypeTick";
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_1AF424088(0, *(v6 + 16) + 1, 1, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  v11 = *(v6 + 16);
  v10 = *(v6 + 24);
  if (v11 >= v10 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_1AF424088(v10 > 1, v11 + 1, 1, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  *(v6 + 16) = v11 + 1;
  v12 = v6 + 48 * v11;
  *(v12 + 32) = v7;
  *(v12 + 40) = v2;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 48) = v4;
  *(v12 + 72) = 0;
  *(v12 + 76) = 1;
  v13 = *(v1 + 184);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native, v9);

  sub_1AF6D655C(&type metadata for IncommingTickedEventsComponent, &off_1F255D248, v13, sub_1AFAD3AC0);

  return sub_1AFABB5D8(v15);
}

uint64_t vfx_script_invalidate_render_target()
{
  sub_1AFC28788(0, &qword_1ED722EE0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE431C0;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000013;
  *(v0 + 40) = 0x80000001AFF4B890;
  sub_1AFDFF258();
}

uint64_t vfx_script_invalidate_render_target(_:_:)()
{
  sub_1AFC28788(0, &qword_1ED722EE0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE431C0;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000013;
  *(v0 + 40) = 0x80000001AFF4B890;
  sub_1AFDFF258();
}

BOOL vfx_script_is_key_down(_:_:)(uint64_t a1, unsigned int a2)
{
  sub_1AFADAE08(a1, v8);
  v3 = *(v9 + 184);

  v4 = sub_1AF6D6574(&type metadata for KeyboardStateComponent, &off_1F255D228, v3);

  if (a2 == -1)
  {
    v6 = *(v4 + 16);

    v5 = v6 != 0;
  }

  else
  {
    v5 = sub_1AF702C10(a2, v4);
  }

  sub_1AFABB5D8(v8);
  return v5;
}

__n128 vfx_script_get_gaze_data(uint64_t a1, int a2)
{
  sub_1AFADAE08(a1, v7);
  v3 = *(v8 + 184);

  v4 = sub_1AF6D6574(&type metadata for ARGazeData, &off_1F254B510, v3);

  v6 = *(v4 + (a2 << 6) + 32);

  sub_1AFABB5D8(v7);
  return v6;
}

__n128 vfx_script_get_gaze_data(_:_:)(uint64_t a1, int a2)
{
  sub_1AFADAE08(a1, v7);
  v3 = *(v8 + 184);

  v4 = sub_1AF6D6574(&type metadata for ARGazeData, &off_1F254B510, v3);

  v6 = *(v4 + (a2 << 6) + 32);

  sub_1AFABB5D8(v7);
  return v6;
}

__n128 vfx_script_get_hand_data(_:_:_:)(uint64_t a1, int a2)
{
  sub_1AFADAE08(a1, v12);
  v3 = *(v13 + 184);

  v4 = sub_1AF6D6574(&type metadata for ARHandTrackingData, &off_1F254B4F0, v3);

  sub_1AFDFD0E8();
  v5 = sub_1AFBF7608();
  if (v5 != 29 && (v6 = v5, v7 = *(v4 + 8 * a2 + 32), , , *(v7 + 16)) && (v8 = sub_1AF419B48(v6), (v9 & 1) != 0))
  {
    v11 = *(*(v7 + 56) + 80 * v8);
  }

  else
  {

    v11 = xmmword_1AFE20150;
  }

  sub_1AFABB5D8(v12);
  return v11;
}

uint64_t vfx_script_get_hand_data_tracked(_:_:_:)(uint64_t a1, int a2)
{
  sub_1AFADAE08(a1, v12);
  v3 = *(v13 + 184);

  v4 = sub_1AF6D6574(&type metadata for ARHandTrackingData, &off_1F254B4F0, v3);

  sub_1AFDFD0E8();
  v5 = sub_1AFBF7608();
  if (v5 != 29 && (v6 = v5, v7 = *(v4 + 8 * a2 + 32), , , *(v7 + 16)) && (v8 = sub_1AF419B48(v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 80 * v8 + 64);
  }

  else
  {

    v10 = 0;
  }

  sub_1AFABB5D8(v12);
  return v10;
}

const void **vfx_script_create_buffer_from_array(uint64_t a1, void *a2, CFIndex *a3)
{
  v5 = a2;
  v6 = sub_1AFC24ED0(a2, a3);

  return v6;
}

void vfx_script_get_world_value(_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1AFADAE08(a1, v26);
  if (a3)
  {
    v7 = *(a2 + 16);
    v8 = a3;
    v9 = v26[0];
    v10 = sub_1AFDFD0E8();
    v12 = v11;
    v13 = sub_1AFDFD0E8();
    v15 = v14;
    if (v7)
    {
      v16 = sub_1AFDFD0E8();
      v7 = v17;
    }

    else
    {
      v16 = 0;
    }

    sub_1AFBFFFAC(v10, v12, v13, v15, v16, v7, v9, v27);

    if (!v27[0])
    {
      sub_1AFABB5D8(v26);

      return;
    }

    v18 = v27[5];
    if (sub_1AFAF6214(v27[4], v8, v27[0], v27[1]))
    {
      *&v24[0] = v8;
      sub_1AF0D4478(0, &qword_1EB633BB0);
      v19 = v8;
      swift_getAtAnyKeyPath();
    }

    else
    {
      memset(v25, 0, sizeof(v25));
    }

    v20 = MEMORY[0x1E69E7CA0];
    sub_1AFC0DD94(v25, &v22, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    if (!v23)
    {

      v21 = MEMORY[0x1E69E6720];
      sub_1AFC0DD34(v25, &qword_1ED726850, v20 + 8, MEMORY[0x1E69E6720], sub_1AFC28788);
      sub_1AFABB5D8(v26);
      sub_1AFC0DD34(&v22, &qword_1ED726850, v20 + 8, v21, sub_1AFC28788);
      return;
    }

    sub_1AF449D40(&v22, v24);
    sub_1AF871630(v24, a4, v18);

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v24);
    sub_1AFC0DD34(v25, &qword_1ED726850, v20 + 8, MEMORY[0x1E69E6720], sub_1AFC28788);
  }

  sub_1AFABB5D8(v26);
}

uint64_t vfx_script_set_world_value(_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1AFADAE08(a1, v32);
  v7 = *(a2 + 16);
  v8 = v32[0];
  v9 = sub_1AFDFD0E8();
  v11 = v10;
  v12 = sub_1AFDFD0E8();
  v14 = v13;
  if (v7)
  {
    v15 = sub_1AFDFD0E8();
    v7 = v16;
  }

  else
  {
    v15 = 0;
  }

  sub_1AFBFFFAC(v9, v11, v12, v14, v15, v7, v8, v33);

  v17 = v33[0];
  if (v33[0])
  {
    v18 = v33[4];
    if (a3)
    {
      v19 = v33[1];
      v20 = v33[5];
      v21 = a3;
      v22 = sub_1AFAF6214(v18, v21, v17, v19);

      if (v22)
      {
        sub_1AF871824(a4, v20, v31);
        ObjectType = swift_getObjectType();
        *&v26 = v21;
        v29 = &type metadata for Extensions;
        v30 = &off_1F253E6E8;
        v23 = v21;
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v28);
        sub_1AF449D40(&v26, &v28);
        v24 = v29;
        sub_1AF441150(&v28, v29);
        sub_1AF871960(v31, v22, v24);

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v31);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v28);
      }

      else
      {
      }
    }
  }

  return sub_1AFABB5D8(v32);
}

uint64_t vfx_script_get_ecs_value(_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1AFADAE08(a1, v22);
  v7 = *(a2 + 16);
  v8 = v22[0];
  v9 = sub_1AFDFD0E8();
  v11 = v10;
  v12 = sub_1AFDFD0E8();
  v14 = v13;
  if (v7)
  {
    v15 = sub_1AFDFD0E8();
    v7 = v16;
  }

  else
  {
    v15 = 0;
  }

  sub_1AFC001A0(v9, v11, v12, v14, v15, v7, v8, &v23);

  if (!*(&v23 + 1))
  {
    return sub_1AFABB5D8(v22);
  }

  v25 = v23;
  v26[0] = v24[0];
  *(v26 + 12) = *(v24 + 12);
  if (a3)
  {
    v17 = a3;
    sub_1AFC00540(&v25, v17, &v19);
    if (v20)
    {
      sub_1AF449D40(&v19, v21);
      sub_1AF871630(v21, a4, *(&v26[0] + 1));

      v19 = v25;
      sub_1AF585778(&v19);

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v21);
      return sub_1AFABB5D8(v22);
    }

    sub_1AFABB5D8(v22);

    v27 = v25;
    sub_1AF585778(&v27);

    return sub_1AFC0DD34(&v19, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AFC28788);
  }

  else
  {
    sub_1AFABB5D8(v22);
    v21[0] = v25;
    sub_1AF585778(v21);
  }
}

uint64_t vfx_script_set_ecs_value(_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1AFADAE08(a1, v23);
  v7 = *(a2 + 16);
  v8 = v23[0];
  v9 = sub_1AFDFD0E8();
  v11 = v10;
  v12 = sub_1AFDFD0E8();
  v14 = v13;
  if (v7)
  {
    v15 = sub_1AFDFD0E8();
    v7 = v16;
  }

  else
  {
    v15 = 0;
  }

  sub_1AFC001A0(v9, v11, v12, v14, v15, v7, v8, &v24);

  v17 = v25;
  if (!v25)
  {
    return sub_1AFABB5D8(v23);
  }

  v18 = v24;
  v19 = v26;
  if (a3)
  {
    v20 = v27;
    v21 = a3;
    sub_1AFC24D14(v19, v20, v21, a4);

    v28 = v18;
    v29 = v17;
    sub_1AF585778(&v28);

    return sub_1AFABB5D8(v23);
  }

  sub_1AFABB5D8(v23);
  v28 = v18;
  v29 = v17;
  sub_1AF585778(&v28);
}

uint64_t vfx_script_get_motion_data(uint64_t a1, _OWORD *a2)
{
  sub_1AFADAE08(a1, v11);
  v3 = *(v12 + 184);

  sub_1AF6D4CE0(&type metadata for VFXMotionDataComponent, &off_1F254AE48, v3, v13);

  v4 = v13[5];
  v5 = v13[7];
  v6 = v13[8];
  a2[6] = v13[6];
  a2[7] = v5;
  a2[8] = v6;
  v7 = v13[3];
  v8 = v13[4];
  a2[2] = v13[2];
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v4;
  v9 = v13[1];
  *a2 = v13[0];
  a2[1] = v9;
  return sub_1AFABB5D8(v11);
}

uint64_t vfx_script_get_motion_data(_:_:)(uint64_t a1, _OWORD *a2)
{
  sub_1AFADAE08(a1, v11);
  v3 = *(v12 + 184);

  sub_1AF6D4CE0(&type metadata for VFXMotionDataComponent, &off_1F254AE48, v3, v13);

  v4 = v13[5];
  v5 = v13[7];
  v6 = v13[8];
  a2[6] = v13[6];
  a2[7] = v5;
  a2[8] = v6;
  v7 = v13[3];
  v8 = v13[4];
  a2[2] = v13[2];
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v4;
  v9 = v13[1];
  *a2 = v13[0];
  a2[1] = v9;
  return sub_1AFABB5D8(v11);
}

uint64_t vfx_script_get_particle_collision(_:_:_:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1AFADAE08(a1, v26);
  v7 = v27;
  sub_1AFC0225C(a2);
  if (!v9)
  {
    LOBYTE(v23) = 1;
    v25 = 1;
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = xmmword_1AFE20160;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 1;
    *(a4 + 68) = 0;
    *(a4 + 72) = 1;
    return sub_1AFABB5D8(v26);
  }

  v10 = v8;

  sub_1AF3D1134(v10, &v23);

  v11 = v24;
  if (v24)
  {
    v12 = v23;
  }

  else
  {
    v11 = sub_1AF42D750(MEMORY[0x1E69E7CC0]);
    v12 = -1;
  }

  v23 = v12;
  v24 = v11;
  sub_1AF9AEF40(v7, v10);
  v15 = v14;
  v16 = v24;
  if (!v24[2] || (v17 = sub_1AF449CBC(a3), (v18 & 1) == 0))
  {
    *a4 = 0u;
    *(a4 + 16) = xmmword_1AFE20160;
    *(a4 + 32) = 0u;
LABEL_14:
    *(a4 + 48) = 0;
    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v19 = *(v16 + 56) + 80 * v17;
  v20 = *v19;
  v21 = *(v19 + 16);
  v22 = *(v19 + 32);
  LOBYTE(v19) = *(v19 + 72);
  *a4 = v20;
  *(a4 + 16) = v21;
  *(a4 + 32) = v22;
  if (v19)
  {
    goto LABEL_14;
  }

  *(a4 + 48) = 1;
  if (v15)
  {
LABEL_10:

    sub_1AFBFEA88(v23, v16, v10, sub_1AFC240E8);
  }

LABEL_11:
  sub_1AFABB5D8(v26);
}

void *sub_1AFC05718(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1AFC85430(*(v1 + 16), 0);

  sub_1AFC86558(&v5, (v3 + 4), v2);

  return v3;
}

uint64_t sub_1AFC05794(_BYTE *a1, uint64_t a2)
{
  result = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    if (a2 <= 0)
    {
      *(MEMORY[0x1E69E7CC0] + 32) = *a1 & 1;
      v7 = result + 32;
    }

    else
    {
      sub_1AFC28788(0, &qword_1EB639EE0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6F90]);
      v5 = swift_allocObject();
      v6 = j__malloc_size_0(v5);
      result = v5;
      *(v5 + 16) = a2;
      *(v5 + 24) = 2 * v6 - 64;
      *(v5 + 32) = *a1 & 1;
      v7 = v5 + 32;
      if (a2 == 1)
      {
        return result;
      }
    }

    v8 = 1;
    do
    {
      *(v7 + v8) = (*&a1[8 * (v8 >> 6)] >> v8) & 1;
      ++v8;
    }

    while (a2 != v8);
  }

  return result;
}

void *sub_1AFC0587C(const void *a1, int64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 < 1)
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1AFC28788(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    v5 = j__malloc_size_0(v4);
    v4[2] = a2;
    v4[3] = 2 * v5 - 64;
  }

  memcpy(v4 + 4, a1, a2);
  return v4;
}

void *sub_1AFC0592C(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 <= 0)
  {
    v4 = 16 * a2;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1AF5C52A8();
    v4 = 16 * a2;
    v5 = swift_allocObject();
    v6 = j__malloc_size_0(v5);
    v7 = v6 - 32;
    if (v6 < 32)
    {
      v7 = v6 - 17;
    }

    v5[2] = a2;
    v5[3] = 2 * (v7 >> 4);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

void *sub_1AFC05A14(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    v8 = -1;
  }

  else
  {
    a6(0, a3, a4, a5);
    v8 = 24 * a2;
    v9 = swift_allocObject();
    v10 = j__malloc_size_0(v9);
    v9[2] = a2;
    v9[3] = 2 * ((v10 - 32) / 24);
  }

  memcpy(v9 + 4, a1, v8);
  return v9;
}

void *sub_1AFC05AD0(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 <= 0)
  {
    v4 = 4 * a2;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1AFC28788(0, &qword_1ED726990, MEMORY[0x1E69E6448], MEMORY[0x1E69E6F90]);
    v4 = 4 * a2;
    v5 = swift_allocObject();
    v6 = j__malloc_size_0(v5);
    v7 = v6 - 32;
    if (v6 < 32)
    {
      v7 = v6 - 29;
    }

    v5[2] = a2;
    v5[3] = 2 * (v7 >> 2);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

void *sub_1AFC05B94(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 <= 0)
  {
    v4 = 16 * a2;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1AFC285A0(0, &qword_1ED726930, sub_1AF6AF6D4, MEMORY[0x1E69E6F90]);
    v4 = 16 * a2;
    v5 = swift_allocObject();
    v6 = j__malloc_size_0(v5);
    v7 = v6 - 32;
    if (v6 < 32)
    {
      v7 = v6 - 17;
    }

    v5[2] = a2;
    v5[3] = 2 * (v7 >> 4);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

void *sub_1AFC05CA0(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0B9FC(a1, a2, a3, *v3, sub_1AFC263F8, &qword_1EB6437A8);
  *v3 = result;
  return result;
}

char *sub_1AFC05CE4(char a1, int64_t a2, char a3)
{
  result = sub_1AFC07C8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AFC05D04(char a1, int64_t a2, char a3)
{
  result = sub_1AFC07EC8(a1, a2, a3, *v3, sub_1AF4444A4, &qword_1EB6323D0, &type metadata for AuthoringNode.Port);
  *v3 = result;
  return result;
}

void *sub_1AFC05D48(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0BF78(a1, a2, a3, *v3, &qword_1EB630970, sub_1AFC28540, sub_1AFC28540);
  *v3 = result;
  return result;
}

void *sub_1AFC05D98(char a1, int64_t a2, char a3)
{
  result = sub_1AFC07D98(a1, a2, a3, *v3, &unk_1EB6309F8, sub_1AFC264B0, sub_1AFC264B0);
  *v3 = result;
  return result;
}

void *sub_1AFC05DE8(char a1, int64_t a2, char a3)
{
  result = sub_1AFC07EC8(a1, a2, a3, *v3, sub_1AF441E54, &qword_1ED726CC0, MEMORY[0x1E69E6158]);
  *v3 = result;
  return result;
}

void *sub_1AFC05E2C(char a1, int64_t a2, char a3)
{
  result = sub_1AFC07D98(a1, a2, a3, *v3, &qword_1EB6309A0, sub_1AFC266A8, sub_1AFC266A8);
  *v3 = result;
  return result;
}

char *sub_1AFC05E7C(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0A8E0(a1, a2, a3, *v3, &unk_1EB6309B8, &type metadata for Node.Port);
  *v3 = result;
  return result;
}

char *sub_1AFC05EAC(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0C8C4(a1, a2, a3, *v3, &qword_1EB6309E8, &type metadata for TypeConstraint);
  *v3 = result;
  return result;
}

char *sub_1AFC05EDC(char a1, int64_t a2, char a3)
{
  result = sub_1AFC07FFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AFC05EFC(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08140(a1, a2, a3, *v3, &qword_1ED726908, sub_1AFC26070);
  *v3 = result;
  return result;
}

char *sub_1AFC05F38(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08140(a1, a2, a3, *v3, &qword_1ED726910, sub_1AFC2621C);
  *v3 = result;
  return result;
}

void *sub_1AFC05F74(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0823C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AFC05F94(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08370(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AFC05FB4(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25C80, &qword_1EB643718);
  *v3 = result;
  return result;
}

void *sub_1AFC05FF8(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC28638, &qword_1EB6439D0);
  *v3 = result;
  return result;
}

void *sub_1AFC0603C(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC28718, &qword_1EB6439F0);
  *v3 = result;
  return result;
}

void *sub_1AFC06080(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25F20, &unk_1EB633318);
  *v3 = result;
  return result;
}

void *sub_1AFC060C4(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25200, &qword_1EB633310);
  *v3 = result;
  return result;
}

void *sub_1AFC06108(char a1, int64_t a2, char a3)
{
  result = sub_1AFC087DC(a1, a2, a3, *v3, sub_1AFC25040, &qword_1EB633308);
  *v3 = result;
  return result;
}

void *sub_1AFC0614C(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08584(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AFC0616C(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25EB0, &qword_1EB643758);
  *v3 = result;
  return result;
}

void *sub_1AFC061B0(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC254A0, &qword_1EB633300);
  *v3 = result;
  return result;
}

void *sub_1AFC061F4(char a1, int64_t a2, char a3)
{
  result = sub_1AFC086B4(a1, a2, a3, *v3, sub_1AFC25270, &qword_1EB643638);
  *v3 = result;
  return result;
}

void *sub_1AFC06238(char a1, int64_t a2, char a3)
{
  result = sub_1AFC086B4(a1, a2, a3, *v3, sub_1AFC25120, &qword_1EB643628);
  *v3 = result;
  return result;
}

void *sub_1AFC0627C(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC286A8, &qword_1EB6439E0);
  *v3 = result;
  return result;
}

void *sub_1AFC062C0(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25C10, &unk_1EB632AD8);
  *v3 = result;
  return result;
}

void *sub_1AFC06304(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC26000, &qword_1EB643778);
  *v3 = result;
  return result;
}

void *sub_1AFC06348(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25F90, &qword_1EB643768);
  *v3 = result;
  return result;
}

void *sub_1AFC0638C(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25A50, &qword_1EB6436D8);
  *v3 = result;
  return result;
}

void *sub_1AFC063D0(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25900, &qword_1EB6436A8);
  *v3 = result;
  return result;
}

void *sub_1AFC06414(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25430, &qword_1EB632AD0);
  *v3 = result;
  return result;
}

void *sub_1AFC06458(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25B30, &qword_1EB6436F8);
  *v3 = result;
  return result;
}

void *sub_1AFC0649C(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25890, &qword_1EB643698);
  *v3 = result;
  return result;
}

void *sub_1AFC064E0(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25190, &qword_1EB630DE0);
  *v3 = result;
  return result;
}

void *sub_1AFC06524(char a1, int64_t a2, char a3)
{
  result = sub_1AFC087DC(a1, a2, a3, *v3, sub_1AFC250B0, &qword_1EB6332F8);
  *v3 = result;
  return result;
}

void *sub_1AFC06568(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25510, &qword_1EB6332F0);
  *v3 = result;
  return result;
}

void *sub_1AFC065AC(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC26388, &qword_1EB643788);
  *v3 = result;
  return result;
}

void *sub_1AFC065F0(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25CF0, &qword_1EB632AC8);
  *v3 = result;
  return result;
}

void *sub_1AFC06634(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25AC0, &qword_1EB6436E8);
  *v3 = result;
  return result;
}

void *sub_1AFC06678(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25580, &qword_1EB632AC0);
  *v3 = result;
  return result;
}

void *sub_1AFC066BC(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25DD0, &qword_1EB643738);
  *v3 = result;
  return result;
}

void *sub_1AFC06700(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25660, &qword_1EB632AB8);
  *v3 = result;
  return result;
}

void *sub_1AFC06744(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25740, &qword_1EB643678);
  *v3 = result;
  return result;
}

void *sub_1AFC06788(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC253C0, &qword_1EB643658);
  *v3 = result;
  return result;
}

void *sub_1AFC067CC(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC256D0, &qword_1EB632AB0);
  *v3 = result;
  return result;
}

void *sub_1AFC06810(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25BA0, &qword_1EB643708);
  *v3 = result;
  return result;
}

void *sub_1AFC06854(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC255F0, &qword_1EB643668);
  *v3 = result;
  return result;
}

void *sub_1AFC06898(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC257B0, &qword_1EB643688);
  *v3 = result;
  return result;
}

void *sub_1AFC068DC(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25970, &qword_1EB6436B8);
  *v3 = result;
  return result;
}

void *sub_1AFC06920(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC259E0, &qword_1EB6436C8);
  *v3 = result;
  return result;
}

void *sub_1AFC06964(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC252E0, &qword_1EB643648);
  *v3 = result;
  return result;
}

void *sub_1AFC069A8(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25D60, &qword_1EB643728);
  *v3 = result;
  return result;
}

void *sub_1AFC069EC(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25E40, &qword_1EB643748);
  *v3 = result;
  return result;
}

void *sub_1AFC06A30(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25820, &qword_1EB632AA8);
  *v3 = result;
  return result;
}

void *sub_1AFC06A74(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0844C(a1, a2, a3, *v3, sub_1AFC25350, &qword_1EB633C88);
  *v3 = result;
  return result;
}

void *sub_1AFC06AB8(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08914(a1, a2, a3, *v3, &qword_1EB6327E0, sub_1AFC27278, sub_1AFC27278);
  *v3 = result;
  return result;
}

void *sub_1AFC06B08(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08914(a1, a2, a3, *v3, &qword_1EB6438B0, sub_1AFC27110, sub_1AFC27110);
  *v3 = result;
  return result;
}

void *sub_1AFC06B58(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08914(a1, a2, a3, *v3, &qword_1EB630958, sub_1AFC272A0, sub_1AFC272A0);
  *v3 = result;
  return result;
}

void *sub_1AFC06BA8(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08914(a1, a2, a3, *v3, &qword_1EB6438C0, sub_1AFC27138, sub_1AFC27138);
  *v3 = result;
  return result;
}

void *sub_1AFC06BF8(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08914(a1, a2, a3, *v3, &qword_1EB643900, sub_1AFC271D8, sub_1AFC271D8);
  *v3 = result;
  return result;
}

void *sub_1AFC06C48(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08914(a1, a2, a3, *v3, &qword_1EB643920, sub_1AFC27228, sub_1AFC27228);
  *v3 = result;
  return result;
}

void *sub_1AFC06C98(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08914(a1, a2, a3, *v3, &qword_1EB643930, sub_1AFC27250, sub_1AFC27250);
  *v3 = result;
  return result;
}

void *sub_1AFC06CE8(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08914(a1, a2, a3, *v3, &qword_1EB6438A0, sub_1AFC270E8, sub_1AFC270E8);
  *v3 = result;
  return result;
}

void *sub_1AFC06D38(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08914(a1, a2, a3, *v3, &qword_1EB643890, sub_1AFC27054, sub_1AFC27054);
  *v3 = result;
  return result;
}

void *sub_1AFC06D88(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08914(a1, a2, a3, *v3, &qword_1EB6438E0, sub_1AFC27188, sub_1AFC27188);
  *v3 = result;
  return result;
}

void *sub_1AFC06DD8(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08914(a1, a2, a3, *v3, &qword_1EB6438D0, sub_1AFC27160, sub_1AFC27160);
  *v3 = result;
  return result;
}

void *sub_1AFC06E28(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08914(a1, a2, a3, *v3, &qword_1EB643910, sub_1AFC27200, sub_1AFC27200);
  *v3 = result;
  return result;
}

void *sub_1AFC06E78(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08914(a1, a2, a3, *v3, &qword_1EB6438F0, sub_1AFC271B0, sub_1AFC271B0);
  *v3 = result;
  return result;
}

void *sub_1AFC06EC8(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08A58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AFC06EE8(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08B8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AFC06F08(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08CB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AFC06F28(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08DB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AFC06F48(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08EB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AFC06F68(char a1, int64_t a2, char a3)
{
  result = sub_1AFC08FC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AFC06F88(char a1, int64_t a2, char a3)
{
  result = sub_1AFC090E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AFC06FA8(char a1, int64_t a2, char a3)
{
  result = sub_1AFC091B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AFC06FC8(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0A37C(a1, a2, a3, *v3, sub_1AF5C52A8);
  *v3 = result;
  return result;
}

char *sub_1AFC06FFC(char a1, int64_t a2, char a3)
{
  result = sub_1AFC092DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AFC0701C(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0A37C(a1, a2, a3, *v3, sub_1AFC261AC);
  *v3 = result;
  return result;
}

void *sub_1AFC07050(char a1, int64_t a2, char a3)
{
  result = sub_1AFC093EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AFC07070(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0A37C(a1, a2, a3, *v3, sub_1AF47BBFC);
  *v3 = result;
  return result;
}

char *sub_1AFC070A4(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0954C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AFC070C4(char a1, int64_t a2, char a3)
{
  result = sub_1AFC09674(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AFC070E4(char a1, int64_t a2, char a3)
{
  result = sub_1AFC097A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AFC07104(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0CB08(a1, a2, a3, *v3, &qword_1EB643978, sub_1AFC284B4, sub_1AFC284B4);
  *v3 = result;
  return result;
}

char *sub_1AFC07154(char a1, int64_t a2, char a3)
{
  result = sub_1AFC098BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AFC07174(char a1, int64_t a2, char a3)
{
  result = sub_1AFC099C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AFC07194(char a1, int64_t a2, char a3)
{
  result = sub_1AFC09AF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AFC071B4(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0D114(a1, a2, a3, *v3, &unk_1EB633A90, &type metadata for GraphScriptGroup.Reference);
  *v3 = result;
  return result;
}

char *sub_1AFC071E4(char a1, int64_t a2, char a3)
{
  result = sub_1AFC09BF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AFC07204(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0C704(a1, a2, a3, *v3, &qword_1EB638160, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

char *sub_1AFC07254(char a1, int64_t a2, char a3)
{
  result = sub_1AFC09D14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AFC07274(char a1, int64_t a2, char a3)
{
  result = sub_1AFC09E34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AFC07294(char a1, int64_t a2, char a3)
{
  result = sub_1AFC09F40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AFC072B4(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0A050(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AFC072D4(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0A168(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AFC072F4(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0A26C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AFC07314(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0A37C(a1, a2, a3, *v3, sub_1AFC26284);
  *v3 = result;
  return result;
}

char *sub_1AFC07348(char a1, int64_t a2, char a3)
{
  result = sub_1AFC0A460(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}