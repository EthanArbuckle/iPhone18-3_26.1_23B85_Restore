uint64_t sub_1AFD2674C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v137 = a2;
  v6 = a1[11];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[2];
  v10 = sub_1AF64B110(&type metadata for SkinnedMeshBinding, &off_1F2543758, v6, v7, v8, v9);
  v126 = sub_1AF64B110(&type metadata for MeshModel, &off_1F2562500, v6, v7, v8, v9);
  v124 = v9;
  result = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v6, v7, v8, v9);
  if (v6)
  {
    if (v8)
    {
      v12 = 0;
      v13 = (v137 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v122 = result;
      v101 = v10;
      v102 = (v137 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      do
      {
        v17 = (v10 + 80 * v12);
        v18 = v17->i32[1];
        v19 = v17->i32[0];
        v20 = v19 == -1 && v18 == 0;
        if (!v20 && (v19 & 0x80000000) == 0 && v13[1] > v19)
        {
          v21 = (*v13 + 12 * v19);
          if (v18 == -1 || v21[2] == v18)
          {
            v23 = (result + (v12 << 6));
            v24 = *(v21 + 2);
            v25 = *(*(v137 + 144) + 8 * *v21 + 32);
            v26 = *(v25 + 48);
            v27 = (v26 + 32);
            v28 = *(v26 + 16) + 1;
            while (--v28)
            {
              v29 = v27 + 5;
              v30 = *v27;
              v27 += 5;
              if (v30 == &type metadata for Skeleton)
              {
                v116 = (v126 + 16 * v12);
                v31 = *(v29 - 2) + 40 * v24 + *(v25 + 128);
                v32 = *(v31 + 24);
                v33 = *(*(v31 + 16) + 16);
                v34 = v124[4];

                ecs_stack_allocator_push_snapshot(v34);
                v120 = v34;
                v35 = v34;
                v36 = v33;
                v37 = ecs_stack_allocator_allocate(v35, v33 << 6, 16);
                v105 = v17[1];
                v108 = v17[2];
                v112 = v17[3];
                v114 = v17[4];
                v138 = __invert_f4(*v23);
                if (v33)
                {
                  v38 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105, v138.columns[0].f32[0]), v108, *v138.columns[0].f32, 1), v112, v138.columns[0], 2), v114, v138.columns[0], 3);
                  v39 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105, v138.columns[1].f32[0]), v108, *v138.columns[1].f32, 1), v112, v138.columns[1], 2), v114, v138.columns[1], 3);
                  v40 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105, v138.columns[2].f32[0]), v108, *v138.columns[2].f32, 1), v112, v138.columns[2], 2), v114, v138.columns[2], 3);
                  v41 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105, v138.columns[3].f32[0]), v108, *v138.columns[3].f32, 1), v112, v138.columns[3], 2), v114, v138.columns[3], 3);
                  v42 = v32 + 10;
                  v43 = &v37[2];
                  v44 = v33;
                  do
                  {
                    v45 = *v42->f32;
                    v46 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v42[-4].f32)), v39, v42[-4], 1), v40, *v42[-4].f32, 2), v41, *v42[-4].f32, 3);
                    v47 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v42[-2].f32)), v39, v42[-2], 1), v40, *v42[-2].f32, 2), v41, *v42[-2].f32, 3);
                    v48 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v42->f32)), v39, *v42, 1), v40, *v42->f32, 2);
                    v43[-2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v42[-6].f32)), v39, v42[-6], 1), v40, *v42[-6].f32, 2), v41, *v42[-6].f32, 3);
                    v43[-1] = v46;
                    *v43 = v47;
                    v43[1] = vmlaq_laneq_f32(v48, v41, v45, 3);
                    v43 += 4;
                    v42 += 8;
                    --v44;
                  }

                  while (v44);
                }

                CFXBufferAllocatorPerFrameAllocateWithLength(*(a3 + 232), 48 * v33);
                v50 = v49;
                v52 = v51;
                v53 = [swift_unknownObjectRetain() storageMode];
                swift_unknownObjectRelease();
                if (v53 == 2)
                {
                  v54 = 0;
                }

                else
                {
                  v55 = [swift_unknownObjectRetain() contents];
                  v56 = v50;
                  v54 = v55 + v52;
                }

                v10 = v101;
                matrix_transpose_batch(v54, v37, v36);
                v57 = *v116;
                if (*v116)
                {
                  sub_1AF8C4ED0(0, &v127);
                  if (v127)
                  {
                    v135 = v127;
                    *v136 = v128[0];
                    *&v136[9] = *(v128 + 9);
                    sub_1AF8C4ED0(9, &v129);
                    v58 = v129;
                    if (v129)
                    {
                      v117 = v130;
                      sub_1AF8C4ED0(8, &v131);
                      if (v131)
                      {
                        v106 = v132;
                        v109 = v131;

                        sub_1AF70B434(&v135, &v133);
                        swift_getObjectType();
                        sub_1AF6F458C(v135, *v136, 0, 0);
                        sub_1AF6F458C(v133, v134, 0, 1);
                        sub_1AF6F458C(v58, v117, 0, 6);
                        sub_1AF6F458C(v50, v52, 0, 7);
                        sub_1AF6F458C(v109, v106, 0, 8);
                        sub_1AF6F4798(a5, *(v57 + 48));
                        sub_1AF718F80(&v133);
                        sub_1AFD53260(&v131, &qword_1EB63FFA8, &type metadata for MeshBuffer);
                      }

                      else
                      {
                      }

                      sub_1AFD53260(&v129, &qword_1EB63FFA8, &type metadata for MeshBuffer);
                      sub_1AFD53260(&v127, &qword_1EB63FFA8, &type metadata for MeshBuffer);
                    }

                    else
                    {
                      sub_1AFD53260(&v127, &qword_1EB63FFA8, &type metadata for MeshBuffer);
                    }
                  }
                }

                ecs_stack_allocator_pop_snapshot(v120);

                result = v122;
                v13 = v102;
                break;
              }
            }
          }
        }

        ++v12;
      }

      while (v12 != v8);
    }
  }

  else
  {
    v15 = a1[6];
    v14 = a1[7];
    if (v15 != v14)
    {
      v16 = (v137 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v123 = result;
      v103 = (v137 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v100 = a1[7];
      do
      {
        v59 = (v10 + 80 * v15);
        v60 = v59->i32[1];
        v61 = v59->i32[0];
        v62 = v61 == -1 && v60 == 0;
        if (!v62 && (v61 & 0x80000000) == 0 && v16[1] > v61)
        {
          v63 = (*v16 + 12 * v61);
          if (v60 == -1 || v63[2] == v60)
          {
            v65 = (result + (v15 << 6));
            v66 = *(v63 + 2);
            v67 = *(*(v137 + 144) + 8 * *v63 + 32);
            v68 = *(v67 + 48);
            v69 = (v68 + 32);
            v70 = *(v68 + 16) + 1;
            while (--v70)
            {
              v71 = v69 + 5;
              v72 = *v69;
              v69 += 5;
              if (v72 == &type metadata for Skeleton)
              {
                v118 = (v126 + 16 * v15);
                v73 = *(v71 - 2) + 40 * v66 + *(v67 + 128);
                v74 = *(v73 + 24);
                v75 = *(*(v73 + 16) + 16);
                v76 = v124[4];

                ecs_stack_allocator_push_snapshot(v76);
                v121 = v76;
                v77 = ecs_stack_allocator_allocate(v76, v75 << 6, 16);
                v107 = v59[1];
                v110 = v59[2];
                v113 = v59[3];
                v115 = v59[4];
                v139 = __invert_f4(*v65);
                if (v75)
                {
                  v78 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v107, v139.columns[0].f32[0]), v110, *v139.columns[0].f32, 1), v113, v139.columns[0], 2), v115, v139.columns[0], 3);
                  v79 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v107, v139.columns[1].f32[0]), v110, *v139.columns[1].f32, 1), v113, v139.columns[1], 2), v115, v139.columns[1], 3);
                  v80 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v107, v139.columns[2].f32[0]), v110, *v139.columns[2].f32, 1), v113, v139.columns[2], 2), v115, v139.columns[2], 3);
                  v81 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v107, v139.columns[3].f32[0]), v110, *v139.columns[3].f32, 1), v113, v139.columns[3], 2), v115, v139.columns[3], 3);
                  v82 = v74 + 10;
                  v83 = &v77[2];
                  v84 = v75;
                  do
                  {
                    v85 = *v82->f32;
                    v86 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*v82[-4].f32)), v79, v82[-4], 1), v80, *v82[-4].f32, 2), v81, *v82[-4].f32, 3);
                    v87 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*v82[-2].f32)), v79, v82[-2], 1), v80, *v82[-2].f32, 2), v81, *v82[-2].f32, 3);
                    v88 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*v82->f32)), v79, *v82, 1), v80, *v82->f32, 2);
                    v83[-2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*v82[-6].f32)), v79, v82[-6], 1), v80, *v82[-6].f32, 2), v81, *v82[-6].f32, 3);
                    v83[-1] = v86;
                    *v83 = v87;
                    v83[1] = vmlaq_laneq_f32(v88, v81, v85, 3);
                    v83 += 4;
                    v82 += 8;
                    --v84;
                  }

                  while (v84);
                }

                CFXBufferAllocatorPerFrameAllocateWithLength(*(a3 + 232), 48 * v75);
                v90 = v89;
                v92 = v91;
                v93 = [swift_unknownObjectRetain() storageMode];
                swift_unknownObjectRelease();
                if (v93 == 2)
                {
                  v94 = 0;
                }

                else
                {
                  v95 = [swift_unknownObjectRetain() contents];
                  v96 = v90;
                  v94 = v95 + v92;
                }

                matrix_transpose_batch(v94, v77, v75);
                v97 = *v118;
                if (*v118)
                {
                  sub_1AF8C4ED0(0, &v127);
                  if (v127)
                  {
                    v135 = v127;
                    *v136 = v128[0];
                    *&v136[9] = *(v128 + 9);
                    sub_1AF8C4ED0(9, &v129);
                    v98 = v129;
                    if (v129)
                    {
                      v119 = v130;
                      sub_1AF8C4ED0(8, &v131);
                      v99 = v131;
                      if (v131)
                      {
                        v111 = v132;

                        sub_1AF70B434(&v135, &v133);
                        swift_getObjectType();
                        sub_1AF6F458C(v135, *v136, 0, 0);
                        sub_1AF6F458C(v133, v134, 0, 1);
                        sub_1AF6F458C(v98, v119, 0, 6);
                        sub_1AF6F458C(v90, v92, 0, 7);
                        sub_1AF6F458C(v99, v111, 0, 8);
                        sub_1AF6F4798(a5, *(v97 + 48));
                        sub_1AF718F80(&v133);
                        sub_1AFD53260(&v131, &qword_1EB63FFA8, &type metadata for MeshBuffer);
                      }

                      else
                      {
                      }

                      sub_1AFD53260(&v129, &qword_1EB63FFA8, &type metadata for MeshBuffer);
                      sub_1AFD53260(&v127, &qword_1EB63FFA8, &type metadata for MeshBuffer);
                    }

                    else
                    {
                      sub_1AFD53260(&v127, &qword_1EB63FFA8, &type metadata for MeshBuffer);
                    }
                  }
                }

                ecs_stack_allocator_pop_snapshot(v121);

                result = v123;
                v16 = v103;
                v14 = v100;
                break;
              }
            }
          }
        }

        ++v15;
      }

      while (v15 != v14);
    }
  }

  return result;
}

uint64_t sub_1AFD27208(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v10 = a1[11];
  v9 = a1[12];
  v11 = a1[13];
  v12 = a1[2];
  sub_1AF64B110(&type metadata for ParticleSphereCollider, &off_1F2553488, v10, v9, v11, v12);
  v77 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v10, v9, v11, v12);
  result = sub_1AF64B110(&type metadata for LastFrameWorldTransform, &off_1F2529EB0, v10, v9, v11, v12);
  if (!v10)
  {
    v45 = a1[6];
    v46 = a1[7];
    if (v45 == v46)
    {
      return result;
    }

    v47 = a3 + 32;
    while (1)
    {
      v48 = (v77 + (v45 << 6));
      v49 = *v48;
      v50 = v48[1];
      v51 = v48[2];
      v52 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL), vnegq_f32(v50)), v51, vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL));
      v53 = vmulq_f32(*v48, vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL));
      if ((v53.f32[2] + vaddv_f32(*v53.f32)) >= 0.0)
      {
        v54 = 1.0;
      }

      else
      {
        v54 = -1.0;
      }

      v55 = vmulq_f32(v49, v49);
      v56 = vmulq_f32(v50, v50);
      v57 = vadd_f32(vzip1_s32(*v55.i8, *v56.i8), vzip2_s32(*v55.i8, *v56.i8));
      v58 = vextq_s8(v55, v55, 8uLL);
      *v58.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v58.f32, *&vextq_s8(v56, v56, 8uLL)), v57));
      v59 = vmulq_f32(v51, v51);
      v58.i32[2] = sqrtf(v59.f32[2] + vaddv_f32(*v59.f32));
      v60 = vmulq_n_f32(v58, v54);
      v61 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v48[3], 0, v51), 0, v50), 0, v49);
      v61.f32[3] = fmaxf(fmaxf(v60.f32[0], v60.f32[2]), v60.f32[1]) * 0.5;
      v79[0] = v61;
      v80 = 3;
      ecs_stack_allocator_push_snapshot(*(a2 + 32));
      v62 = *(a3 + 16);
      v63 = 2 * v62;
      v64 = ecs_stack_allocator_allocate(*(a2 + 32), 16 * v62 + 32, 8);
      *v64 = &type metadata for DebugInfoWireframePrimitive;
      v64[1] = &off_1F25604A8;
      v64[2] = &type metadata for DebugInfoColor;
      v64[3] = &off_1F2560488;
      if (!v62)
      {
        v66 = 2;
        goto LABEL_38;
      }

      if (v62 <= 3 || (v64 + 4) < v47 + v63 * 8 && v47 < &v64[v63 + 4])
      {
        break;
      }

      v65 = v62 & 0x7FFFFFFFFFFFFFFCLL;
      v66 = v62 & 0x7FFFFFFFFFFFFFFCLL | 2;
      v70 = v64 + 8;
      v71 = v62 & 0x7FFFFFFFFFFFFFFCLL;
      v72 = (a3 + 64);
      do
      {
        v74 = *(v72 - 2);
        v73 = *(v72 - 1);
        v76 = *v72;
        v75 = v72[1];
        v72 += 4;
        *(v70 - 2) = v74;
        *(v70 - 1) = v73;
        *v70 = v76;
        v70[1] = v75;
        v70 += 4;
        v71 -= 4;
      }

      while (v71);
      if (v62 != v65)
      {
        goto LABEL_34;
      }

LABEL_38:
      sub_1AF63C898(v64, v66, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a2, v79, a4);
      if (v5)
      {
LABEL_45:
        result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
        __break(1u);
        return result;
      }

      v5 = 0;
      ++v45;
      result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
      if (v45 == v46)
      {
        return result;
      }
    }

    v65 = 0;
    v66 = 2;
LABEL_34:
    v67 = v62 - v65;
    v68 = (v47 + 16 * v65);
    do
    {
      v69 = *v68++;
      *&v64[2 * v66++] = v69;
      --v67;
    }

    while (v67);
    goto LABEL_38;
  }

  if (v11)
  {
    v14 = 0;
    v15 = a3 + 32;
    do
    {
      v16 = (v77 + (v14 << 6));
      v17 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), vnegq_f32(v18)), v19, vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL));
      v21 = vmulq_f32(*v16, vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL));
      if ((v21.f32[2] + vaddv_f32(*v21.f32)) >= 0.0)
      {
        v22 = 1.0;
      }

      else
      {
        v22 = -1.0;
      }

      v23 = vmulq_f32(v17, v17);
      v24 = vmulq_f32(v18, v18);
      v25 = vadd_f32(vzip1_s32(*v23.i8, *v24.i8), vzip2_s32(*v23.i8, *v24.i8));
      v26 = vextq_s8(v23, v23, 8uLL);
      *v26.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v26.f32, *&vextq_s8(v24, v24, 8uLL)), v25));
      v27 = vmulq_f32(v19, v19);
      v26.i32[2] = sqrtf(v27.f32[2] + vaddv_f32(*v27.f32));
      v28 = vmulq_n_f32(v26, v22);
      v29 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v16[3], 0, v19), 0, v18), 0, v17);
      v29.f32[3] = fmaxf(fmaxf(v28.f32[0], v28.f32[2]), v28.f32[1]) * 0.5;
      v79[0] = v29;
      v80 = 3;
      ecs_stack_allocator_push_snapshot(*(a2 + 32));
      v30 = *(a3 + 16);
      v31 = 2 * v30;
      v32 = ecs_stack_allocator_allocate(*(a2 + 32), 16 * v30 + 32, 8);
      *v32 = &type metadata for DebugInfoWireframePrimitive;
      v32[1] = &off_1F25604A8;
      v32[2] = &type metadata for DebugInfoColor;
      v32[3] = &off_1F2560488;
      if (v30)
      {
        if (v30 > 3 && ((v32 + 4) >= v15 + v31 * 8 || v15 >= &v32[v31 + 4]))
        {
          v33 = v30 & 0x7FFFFFFFFFFFFFFCLL;
          v34 = v30 & 0x7FFFFFFFFFFFFFFCLL | 2;
          v38 = v32 + 8;
          v39 = v30 & 0x7FFFFFFFFFFFFFFCLL;
          v40 = (a3 + 64);
          do
          {
            v42 = *(v40 - 2);
            v41 = *(v40 - 1);
            v44 = *v40;
            v43 = v40[1];
            v40 += 4;
            *(v38 - 2) = v42;
            *(v38 - 1) = v41;
            *v38 = v44;
            v38[1] = v43;
            v38 += 4;
            v39 -= 4;
          }

          while (v39);
          if (v30 == v33)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v33 = 0;
          v34 = 2;
        }

        v35 = v30 - v33;
        v36 = (v15 + 16 * v33);
        do
        {
          v37 = *v36++;
          *&v32[2 * v34++] = v37;
          --v35;
        }

        while (v35);
      }

      else
      {
        v34 = 2;
      }

LABEL_16:
      sub_1AF63C898(v32, v34, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a2, v79, a4);
      if (v5)
      {
        goto LABEL_45;
      }

      v5 = 0;
      result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
      ++v14;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t sub_1AFD27734(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v69 = a4;
  v10 = a1[11];
  v9 = a1[12];
  v11 = a1[13];
  v12 = a1[2];
  sub_1AF64B110(&type metadata for ParticleBoxCollider, &off_1F2552898, v10, v9, v11, v12);
  v57 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v10, v9, v11, v12);
  result = sub_1AF64B110(&type metadata for LastFrameWorldTransform, &off_1F2529EB0, v10, v9, v11, v12);
  if (!v10)
  {
    v33 = a1[6];
    v34 = a1[7];
    if (v33 == v34)
    {
      return result;
    }

    v35 = a3 + 32;
    while (1)
    {
      v36 = (v57 + (v33 << 6));
      v63 = v36[1];
      v65 = *v36;
      v59 = v36[3];
      v61 = v36[2];
      v66 = xmmword_1AFE201A0;
      v67 = xmmword_1AFE52680;
      v68 = 6;
      ecs_stack_allocator_push_snapshot(*(a2 + 32));
      v37 = *(a3 + 16);
      v38 = 2 * v37;
      v39 = ecs_stack_allocator_allocate(*(a2 + 32), 16 * v37 + 64, 8);
      *v39 = &type metadata for DebugInfoWireframePrimitive;
      v39[1] = &off_1F25604A8;
      v39[2] = &type metadata for DebugInfoColor;
      v39[3] = &off_1F2560488;
      v39[4] = &type metadata for WorldTransform;
      v39[5] = &off_1F2529FC0;
      v39[6] = &type metadata for Beamed;
      v39[7] = &off_1F2529FA0;
      if (!v37)
      {
        v45 = 4;
        v41 = v63;
        v40 = v65;
        v43 = v59;
        v42 = v61;
        goto LABEL_35;
      }

      v41 = v63;
      v40 = v65;
      v43 = v59;
      v42 = v61;
      if (v37 <= 0xF)
      {
        break;
      }

      v44 = 0;
      v49 = 2 * (v37 - 1);
      if (&v39[v49 + 8] < v39 + 8 || &v39[v49 + 9] < v39 + 9 || (v37 - 1) >> 60)
      {
        goto LABEL_30;
      }

      if ((v39 + 8) < v35 + v38 * 8 && v35 < &v39[v38 + 8])
      {
        break;
      }

      v44 = v37 & 0x1FFFFFFFFFFFFFFCLL;
      v45 = (v37 & 0x1FFFFFFFFFFFFFFCLL) + 4;
      v50 = v39 + 12;
      v51 = v37 & 0x1FFFFFFFFFFFFFFCLL;
      v52 = (a3 + 64);
      do
      {
        v54 = *(v52 - 2);
        v53 = *(v52 - 1);
        v56 = *v52;
        v55 = v52[1];
        v52 += 4;
        *(v50 - 2) = v54;
        *(v50 - 1) = v53;
        *v50 = v56;
        v50[1] = v55;
        v50 += 4;
        v51 -= 4;
      }

      while (v51);
      if (v37 != v44)
      {
        goto LABEL_31;
      }

LABEL_35:
      v70 = 1;
      sub_1AF63D8A8(v39, v45, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a2, &v66, v69, v40, v41, v42, v43);
      if (v5)
      {
LABEL_47:
        result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
        __break(1u);
        return result;
      }

      v5 = 0;
      ++v33;
      result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
      if (v33 == v34)
      {
        return result;
      }
    }

    v44 = 0;
LABEL_30:
    v45 = 4;
LABEL_31:
    v46 = v37 - v44;
    v47 = (v35 + 16 * v44);
    do
    {
      v48 = *v47++;
      *&v39[2 * v45++] = v48;
      --v46;
    }

    while (v46);
    goto LABEL_35;
  }

  if (v11)
  {
    v14 = 0;
    v15 = a3 + 32;
    while (1)
    {
      v16 = (v57 + (v14 << 6));
      v62 = v16[1];
      v64 = *v16;
      v58 = v16[3];
      v60 = v16[2];
      v66 = xmmword_1AFE201A0;
      v67 = xmmword_1AFE52680;
      v68 = 6;
      ecs_stack_allocator_push_snapshot(*(a2 + 32));
      v17 = *(a3 + 16);
      v18 = 2 * v17;
      v19 = ecs_stack_allocator_allocate(*(a2 + 32), 16 * v17 + 64, 8);
      *v19 = &type metadata for DebugInfoWireframePrimitive;
      v19[1] = &off_1F25604A8;
      v19[2] = &type metadata for DebugInfoColor;
      v19[3] = &off_1F2560488;
      v19[4] = &type metadata for WorldTransform;
      v19[5] = &off_1F2529FC0;
      v19[6] = &type metadata for Beamed;
      v19[7] = &off_1F2529FA0;
      if (v17)
      {
        break;
      }

      v21 = 4;
LABEL_12:
      v70 = 1;
      sub_1AF63D8A8(v19, v21, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a2, &v66, v69, v64, v62, v60, v58);
      if (v5)
      {
        goto LABEL_47;
      }

      v5 = 0;
      result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
      if (++v14 == v11)
      {
        return result;
      }
    }

    if (v17 > 0xF)
    {
      v20 = 0;
      v25 = 2 * (v17 - 1);
      if (&v19[v25 + 8] < v19 + 8 || &v19[v25 + 9] < v19 + 9 || (v17 - 1) >> 60)
      {
        goto LABEL_7;
      }

      if ((v19 + 8) >= v15 + v18 * 8 || v15 >= &v19[v18 + 8])
      {
        v20 = v17 & 0x1FFFFFFFFFFFFFFCLL;
        v21 = (v17 & 0x1FFFFFFFFFFFFFFCLL) + 4;
        v26 = v19 + 12;
        v27 = v17 & 0x1FFFFFFFFFFFFFFCLL;
        v28 = (a3 + 64);
        do
        {
          v30 = *(v28 - 2);
          v29 = *(v28 - 1);
          v32 = *v28;
          v31 = v28[1];
          v28 += 4;
          *(v26 - 2) = v30;
          *(v26 - 1) = v29;
          *v26 = v32;
          v26[1] = v31;
          v26 += 4;
          v27 -= 4;
        }

        while (v27);
        if (v17 == v20)
        {
          goto LABEL_12;
        }

        goto LABEL_8;
      }
    }

    v20 = 0;
LABEL_7:
    v21 = 4;
LABEL_8:
    v22 = v17 - v20;
    v23 = (v15 + 16 * v20);
    do
    {
      v24 = *v23++;
      *&v19[2 * v21++] = v24;
      --v22;
    }

    while (v22);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1AFD27C10(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v74 = a4;
  v10 = a1[11];
  v9 = a1[12];
  v11 = a1[13];
  v12 = a1[2];
  sub_1AF64B110(&type metadata for ParticleCylinderCollider, &off_1F2552A70, v10, v9, v11, v12);
  v61 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v10, v9, v11, v12);
  result = sub_1AF64B110(&type metadata for LastFrameWorldTransform, &off_1F2529EB0, v10, v9, v11, v12);
  if (!v10)
  {
    v35 = a1[6];
    v36 = a1[7];
    if (v35 == v36)
    {
      return result;
    }

    v37 = a3 + 32;
    while (1)
    {
      v38 = (v61 + (v35 << 6));
      *&v39 = sub_1AF6DE900();
      v67 = v38[1];
      v69 = *v38;
      v63 = v38[3];
      v65 = v38[2];
      v70 = v39;
      v71 = v40;
      v72 = 4;
      v73 = 7;
      ecs_stack_allocator_push_snapshot(*(a2 + 32));
      v41 = *(a3 + 16);
      v42 = 2 * v41;
      v43 = ecs_stack_allocator_allocate(*(a2 + 32), 16 * v41 + 64, 8);
      *v43 = &type metadata for DebugInfoWireframePrimitive;
      v43[1] = &off_1F25604A8;
      v43[2] = &type metadata for DebugInfoColor;
      v43[3] = &off_1F2560488;
      v43[4] = &type metadata for WorldTransform;
      v43[5] = &off_1F2529FC0;
      v43[6] = &type metadata for Beamed;
      v43[7] = &off_1F2529FA0;
      if (!v41)
      {
        v49 = 4;
        v45 = v67;
        v44 = v69;
        v47 = v63;
        v46 = v65;
        goto LABEL_35;
      }

      v45 = v67;
      v44 = v69;
      v47 = v63;
      v46 = v65;
      if (v41 <= 0xF)
      {
        break;
      }

      v48 = 0;
      v53 = 2 * (v41 - 1);
      if (&v43[v53 + 8] < v43 + 8 || &v43[v53 + 9] < v43 + 9 || (v41 - 1) >> 60)
      {
        goto LABEL_30;
      }

      if ((v43 + 8) < v37 + v42 * 8 && v37 < &v43[v42 + 8])
      {
        break;
      }

      v48 = v41 & 0x1FFFFFFFFFFFFFFCLL;
      v49 = (v41 & 0x1FFFFFFFFFFFFFFCLL) + 4;
      v54 = v43 + 12;
      v55 = v41 & 0x1FFFFFFFFFFFFFFCLL;
      v56 = (a3 + 64);
      do
      {
        v58 = *(v56 - 2);
        v57 = *(v56 - 1);
        v60 = *v56;
        v59 = v56[1];
        v56 += 4;
        *(v54 - 2) = v58;
        *(v54 - 1) = v57;
        *v54 = v60;
        v54[1] = v59;
        v54 += 4;
        v55 -= 4;
      }

      while (v55);
      if (v41 != v48)
      {
        goto LABEL_31;
      }

LABEL_35:
      v75 = 1;
      sub_1AF63D8A8(v43, v49, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a2, &v70, v74, v44, v45, v46, v47);
      if (v5)
      {
LABEL_47:
        result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
        __break(1u);
        return result;
      }

      v5 = 0;
      ++v35;
      result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
      if (v35 == v36)
      {
        return result;
      }
    }

    v48 = 0;
LABEL_30:
    v49 = 4;
LABEL_31:
    v50 = v41 - v48;
    v51 = (v37 + 16 * v48);
    do
    {
      v52 = *v51++;
      *&v43[2 * v49++] = v52;
      --v50;
    }

    while (v50);
    goto LABEL_35;
  }

  if (v11)
  {
    v14 = 0;
    v15 = a3 + 32;
    while (1)
    {
      v16 = (v61 + (v14 << 6));
      *&v17 = sub_1AF6DE900();
      v66 = v16[1];
      v68 = *v16;
      v62 = v16[3];
      v64 = v16[2];
      v70 = v17;
      v71 = v18;
      v72 = 4;
      v73 = 7;
      ecs_stack_allocator_push_snapshot(*(a2 + 32));
      v19 = *(a3 + 16);
      v20 = 2 * v19;
      v21 = ecs_stack_allocator_allocate(*(a2 + 32), 16 * v19 + 64, 8);
      *v21 = &type metadata for DebugInfoWireframePrimitive;
      v21[1] = &off_1F25604A8;
      v21[2] = &type metadata for DebugInfoColor;
      v21[3] = &off_1F2560488;
      v21[4] = &type metadata for WorldTransform;
      v21[5] = &off_1F2529FC0;
      v21[6] = &type metadata for Beamed;
      v21[7] = &off_1F2529FA0;
      if (v19)
      {
        break;
      }

      v23 = 4;
LABEL_12:
      v75 = 1;
      sub_1AF63D8A8(v21, v23, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a2, &v70, v74, v68, v66, v64, v62);
      if (v5)
      {
        goto LABEL_47;
      }

      v5 = 0;
      result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
      if (++v14 == v11)
      {
        return result;
      }
    }

    if (v19 > 0xF)
    {
      v22 = 0;
      v27 = 2 * (v19 - 1);
      if (&v21[v27 + 8] < v21 + 8 || &v21[v27 + 9] < v21 + 9 || (v19 - 1) >> 60)
      {
        goto LABEL_7;
      }

      if ((v21 + 8) >= v15 + v20 * 8 || v15 >= &v21[v20 + 8])
      {
        v22 = v19 & 0x1FFFFFFFFFFFFFFCLL;
        v23 = (v19 & 0x1FFFFFFFFFFFFFFCLL) + 4;
        v28 = v21 + 12;
        v29 = v19 & 0x1FFFFFFFFFFFFFFCLL;
        v30 = (a3 + 64);
        do
        {
          v32 = *(v30 - 2);
          v31 = *(v30 - 1);
          v34 = *v30;
          v33 = v30[1];
          v30 += 4;
          *(v28 - 2) = v32;
          *(v28 - 1) = v31;
          *v28 = v34;
          v28[1] = v33;
          v28 += 4;
          v29 -= 4;
        }

        while (v29);
        if (v19 == v22)
        {
          goto LABEL_12;
        }

        goto LABEL_8;
      }
    }

    v22 = 0;
LABEL_7:
    v23 = 4;
LABEL_8:
    v24 = v19 - v22;
    v25 = (v15 + 16 * v22);
    do
    {
      v26 = *v25++;
      *&v21[2 * v23++] = v26;
      --v24;
    }

    while (v24);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1AFD280CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = a1[11];
  v8 = a1[12];
  v9 = a1[13];
  v10 = a1[2];
  v11 = sub_1AF64B110(&type metadata for ParticleMeshCollider, &off_1F2552EB8, v7, v8, v9, v10);
  result = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v7, v8, v9, v10);
  if (v7)
  {
    v13 = a2;
    if (v9)
    {
      v14 = 0;
      v15 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      __asm { FMOV            V0.4S, #-1.0 }

      v125 = _Q0;
      v127 = vdupq_n_s32(0x3C010204u);
      v20 = vdup_n_s32(0x37800080u);
      v141 = vdupq_n_s32(0x37800080u);
      v21 = vdup_n_s32(0x4B400000u);
      v22 = vdup_n_s32(0xCB400000);
      __asm { FMOV            V0.4S, #1.0 }

      v124 = _Q0;
      v139 = vdupq_n_s32(0x4B400000u);
      v24 = vdup_n_s32(0x38000100u);
      v135 = vdupq_n_s32(0x38000100u);
      v137 = vdupq_n_s32(0xCB400000);
      v131 = vdupq_n_s32(0xF800000u);
      v133 = vdupq_n_s32(0x7FE000u);
      v149 = result;
      v130 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      while (1)
      {
        v28 = v11 + 32 * v14;
        v30 = *(v28 + 24);
        v29 = *(v28 + 28);
        _ZF = v30 == -1 && v29 == 0;
        if (!_ZF && (v30 & 0x80000000) == 0 && v15[1] > v30)
        {
          v32 = (*v15 + 12 * v30);
          if (v29 == -1 || v32[2] == v29)
          {
            v34 = *(v32 + 2);
            v35 = *(*(v13 + 144) + 8 * *v32 + 32);
            v36 = *(v35 + 48);
            v37 = (v36 + 32);
            v38 = *(v36 + 16) + 1;
            do
            {
              if (!--v38)
              {
                goto LABEL_8;
              }

              v39 = v37 + 5;
              v40 = *v37;
              v37 += 5;
            }

            while (v40 != &type metadata for MeshModel);
            v41 = *(&(*(v39 - 2))[v34].Kind + *(v35 + 128));
            if (v41)
            {
              break;
            }
          }
        }

LABEL_8:
        if (++v14 == v9)
        {
          return result;
        }
      }

      v145 = (result + (v14 << 6));
      swift_bridgeObjectRetain_n();

      v147 = v41;
      v42 = sub_1AF8C4D20(0);
      if (v42)
      {
        v45 = v42;
        v46 = v43;
        v47 = v44;
        if (v43 == 30)
        {

          sub_1AF8C5010(v45, v47, v147, a3, a4, v145, a5);
LABEL_7:

          swift_bridgeObjectRelease_n();
          v13 = a2;
          result = v149;
          v15 = v130;
          goto LABEL_8;
        }

        v143 = a4;
        v121 = swift_slowAlloc();
        v51 = *(v147 + 48);
        if (!v51)
        {
LABEL_54:
          a4 = v143;

          sub_1AF8C5010(v121, 12, v147, a3, v143, v145, a5);
          MEMORY[0x1B271DEA0](v121, -1, -1);
          goto LABEL_7;
        }

        v52 = v46 - 9;
        if (v46 - 9) < 0x2D && ((0x1C01805FFC09uLL >> v52))
        {
          v53 = (v121 + 8);
          do
          {
            switch(v52)
            {
              case 0:
                *v48.i64 = sub_1AF57F008(v45->i32[0]);
                break;
              case 3:
                *v57.i8 = vshl_u32(vdup_n_s32(v45->i32[0]), 0x1000000018);
                v57.i32[2] = v45->i32[0] << 8;
                v57.i32[3] = v45->i32[0];
                v50.i16[1] = v127.i16[1];
                v49.i16[1] = v124.i16[1];
                v48 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(vcvtq_f32_s32(vshrq_n_s32(v57, 0x18uLL)), v127), v125), v124);
                break;
              case 10:
                v48.i16[0] = v45->i16[0];
                v61.f32[0] = v48.u32[0];
                v49.i16[0] = v45->i16[1];
                *v49.i32 = v49.u32[0];
                v61.i32[1] = v49.i32[0];
                *v48.f32 = vmul_f32(v61, v20);
                break;
              case 11:
                v48.i16[0] = v45->i16[0];
                v49.i16[0] = v45->i16[1];
                *v49.i32 = v49.u32[0];
                v50.i16[0] = v45->i16[2];
                v59.i32[3] = 0;
                v59.f32[0] = v48.u32[0];
                v59.i32[1] = v49.i32[0];
                v59.f32[2] = v50.u32[0];
                v48 = vmulq_f32(v59, v141);
                break;
              case 12:
                v49.i16[1] = v141.i16[1];
                v48 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v45)), v141);
                break;
              case 13:
                v58.i32[0] = v45->i16[0];
                v58.i32[1] = v45->i16[1];
                *v48.f32 = vmul_f32(vadd_f32(vadd_s32(v58, v21), v22), v24);
                break;
              case 14:
                v62.i32[0] = v45->i32[0];
                v62.i32[1] = v45->u16[2];
                v63 = vaddw_s16(v139, v62);
                goto LABEL_45;
              case 15:
                v63 = vaddw_s16(v139, *v45);
LABEL_45:
                v49.i16[1] = v135.i16[1];
                v50.i16[1] = v137.i16[1];
                v48 = vmulq_f32(vaddq_f32(v63, v137), v135);
                break;
              case 16:
                v119 = sub_1AF1F2AC4(v45->u16[0]);
                v49.i32[0] = sub_1AF1F2AC4(v45->u16[1]);
                v48.i32[2] = 0;
                v50.i16[1] = HIWORD(v119);
                v48.i64[0] = __PAIR64__(v49.u32[0], LODWORD(v119));
                break;
              case 17:
                v66.i32[0] = v45->u16[0];
                v66.i32[1] = v45->u16[1];
                v66.i64[1] = v45->u16[2];
                v67.i64[0] = 0x8000000080000000;
                v67.i64[1] = 0x8000000080000000;
                v68 = vandq_s8(vshlq_n_s32(v66, 0x10uLL), v67);
                v69 = vshlq_n_s32(v66, 0xDuLL);
                v49 = vorrq_s8(v68, vandq_s8(v69, v133));
                v50.i64[0] = 0x3800000038000000;
                v50.i64[1] = 0x3800000038000000;
                v48 = vaddq_s32(vaddq_s32(vandq_s8(v69, v131), v50), v49);
                break;
              case 18:
                v50.i64[0] = 0x8000000080000000;
                v50.i64[1] = 0x8000000080000000;
                v54 = vshll_n_u16(*v45, 0xDuLL);
                v55 = vorrq_s8(vandq_s8(vmovl_s16(*v45), v50), vandq_s8(v54, v133));
                v50.i16[1] = v131.i16[1];
                v56 = vorrq_s8(vandq_s8(v54, v131), v55);
                v49.i64[0] = 0x3800000038000000;
                v49.i64[1] = 0x3800000038000000;
                v48 = vaddq_s32(v56, v49);
                break;
              case 19:
                v48.i32[0] = v45->i32[0];
                break;
              case 20:
                *v48.f32 = *v45;
                break;
              case 22:
                v48 = *v45->i8;
                break;
              case 32:
                v64 = vld1q_dup_f32(v45);
                v50.i16[1] = 0;
                v49.i16[1] = 14976;
                v48 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v64, xmmword_1AFE473A0), xmmword_1AFE47360)), xmmword_1AFE473B0);
                break;
              case 42:
                v48.i16[0] = v45->i16[0];
                v48.f32[0] = v48.u32[0];
                v65 = 0.000015259;
                goto LABEL_52;
              case 43:
                v48.i16[0] = v45->i16[0];
                v48.f32[0] = vmovl_s16(*v48.f32).i32[0];
                v65 = 0.000030519;
LABEL_52:
                *v49.i32 = v48.f32[0] * v65;
                goto LABEL_53;
              case 44:
                v49.i32[0] = sub_1AF1F2AC4(v45->u16[0]);
LABEL_53:
                v48.i32[2] = 0;
                v48.i64[0] = v49.u32[0];
                break;
              default:
                v60 = vld1q_dup_f32(v45);
                v50.i16[1] = 0;
                v49.i16[1] = 15104;
                v48 = vmulq_f32(vcvtq_f32_s32(vshlq_s32(vshlq_u32(v60, xmmword_1AFE47380), xmmword_1AFE47390)), xmmword_1AFE473C0);
                break;
            }

            *(v53 - 1) = v48.i64[0];
            *v53 = v48.i32[2];
            v45 = (v45 + v47);
            v53 += 3;
            --v51;
          }

          while (v51);
          goto LABEL_54;
        }

LABEL_109:
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF395D0);
        type metadata accessor for MTLVertexFormat(0);
        sub_1AFDFE458();
      }

      else
      {
LABEL_108:
        swift_bridgeObjectRelease_n();
      }

      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    v26 = a1[6];
    v25 = a1[7];
    v27 = a2;
    if (v26 != v25)
    {
      v70 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      __asm { FMOV            V0.4S, #-1.0 }

      v128 = _Q0;
      v129 = vdupq_n_s32(0x3C010204u);
      v72 = vdup_n_s32(0x37800080u);
      v146 = vdupq_n_s32(0x37800080u);
      v73 = vdup_n_s32(0x4B400000u);
      v74 = vdup_n_s32(0xCB400000);
      __asm { FMOV            V0.4S, #1.0 }

      v126 = _Q0;
      v76 = vdup_n_s32(0x38000100u);
      v140 = vdupq_n_s32(0xCB400000);
      v142 = vdupq_n_s32(0x4B400000u);
      v136 = vdupq_n_s32(0x7FE000u);
      v138 = vdupq_n_s32(0x38000100u);
      v134 = vdupq_n_s32(0xF800000u);
      v144 = a4;
      v150 = result;
      v132 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      do
      {
LABEL_57:
        v77 = v26++;
        v78 = v11 + 32 * v77;
        v80 = *(v78 + 24);
        v79 = *(v78 + 28);
        v81 = v80 == -1 && v79 == 0;
        if (!v81 && (v80 & 0x80000000) == 0 && v70[1] > v80)
        {
          v82 = (*v70 + 12 * v80);
          if (v79 == -1 || v82[2] == v79)
          {
            v84 = *(v82 + 2);
            v85 = *(*(v27 + 144) + 8 * *v82 + 32);
            v86 = *(v85 + 48);
            v87 = (v86 + 32);
            v88 = *(v86 + 16) + 1;
            while (--v88)
            {
              v89 = v87 + 5;
              v90 = *v87;
              v87 += 5;
              if (v90 == &type metadata for MeshModel)
              {
                v148 = *(&(*(v89 - 2))[v84].Kind + *(v85 + 128));
                if (!v148)
                {
                  break;
                }

                swift_bridgeObjectRetain_n();

                v91 = sub_1AF8C4D20(0);
                if (!v91)
                {
                  goto LABEL_108;
                }

                v94 = v91;
                v95 = v92;
                v96 = v93;
                if (v92 == 30)
                {

                  sub_1AF8C5010(v94, v96, v148, a3, v144, (v150 + (v77 << 6)), a5);
                }

                else
                {
                  v120 = (v150 + (v77 << 6));
                  v123 = swift_slowAlloc();
                  v100 = *(v148 + 48);
                  if (v100)
                  {
                    v101 = v95 - 9;
                    if ((v95 - 9) >= 0x2D || ((0x1C01805FFC09uLL >> v101) & 1) == 0)
                    {
                      goto LABEL_109;
                    }

                    v102 = (v123 + 8);
                    do
                    {
                      switch(v101)
                      {
                        case 0:
                          *v97.i64 = sub_1AF57F008(v94->i32[0]);
                          break;
                        case 3:
                          *v106.i8 = vshl_u32(vdup_n_s32(v94->i32[0]), 0x1000000018);
                          v106.i32[2] = v94->i32[0] << 8;
                          v106.i32[3] = v94->i32[0];
                          v99.i16[1] = v129.i16[1];
                          v98.i16[1] = v126.i16[1];
                          v97 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(vcvtq_f32_s32(vshrq_n_s32(v106, 0x18uLL)), v129), v128), v126);
                          break;
                        case 10:
                          v97.i16[0] = v94->i16[0];
                          v110.f32[0] = v97.u32[0];
                          v98.i16[0] = v94->i16[1];
                          *v98.i32 = v98.u32[0];
                          v110.i32[1] = v98.i32[0];
                          *v97.f32 = vmul_f32(v110, v72);
                          break;
                        case 11:
                          v97.i16[0] = v94->i16[0];
                          v98.i16[0] = v94->i16[1];
                          *v98.i32 = v98.u32[0];
                          v99.i16[0] = v94->i16[2];
                          v108.i32[3] = 0;
                          v108.f32[0] = v97.u32[0];
                          v108.i32[1] = v98.i32[0];
                          v108.f32[2] = v99.u32[0];
                          v97 = vmulq_f32(v108, v146);
                          break;
                        case 12:
                          v98.i16[1] = v146.i16[1];
                          v97 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v94)), v146);
                          break;
                        case 13:
                          v107.i32[0] = v94->i16[0];
                          v107.i32[1] = v94->i16[1];
                          *v97.f32 = vmul_f32(vadd_f32(vadd_s32(v107, v73), v74), v76);
                          break;
                        case 14:
                          v111.i32[0] = v94->i32[0];
                          v111.i32[1] = v94->u16[2];
                          v112 = vaddw_s16(v142, v111);
                          goto LABEL_94;
                        case 15:
                          v112 = vaddw_s16(v142, *v94);
LABEL_94:
                          v98.i16[1] = v138.i16[1];
                          v97 = vmulq_f32(vaddq_f32(v112, v140), v138);
                          break;
                        case 16:
                          v122 = sub_1AF1F2AC4(v94->u16[0]);
                          v98.i32[0] = sub_1AF1F2AC4(v94->u16[1]);
                          v97.i32[2] = 0;
                          v99.i16[1] = HIWORD(v122);
                          v97.i64[0] = __PAIR64__(v98.u32[0], LODWORD(v122));
                          break;
                        case 17:
                          v115.i32[0] = v94->u16[0];
                          v115.i32[1] = v94->u16[1];
                          v115.i64[1] = v94->u16[2];
                          v116.i64[0] = 0x8000000080000000;
                          v116.i64[1] = 0x8000000080000000;
                          v117 = vandq_s8(vshlq_n_s32(v115, 0x10uLL), v116);
                          v118 = vshlq_n_s32(v115, 0xDuLL);
                          v98 = vorrq_s8(v117, vandq_s8(v118, v136));
                          v99.i64[0] = 0x3800000038000000;
                          v99.i64[1] = 0x3800000038000000;
                          v97 = vaddq_s32(vaddq_s32(vandq_s8(v118, v134), v99), v98);
                          break;
                        case 18:
                          v99.i64[0] = 0x8000000080000000;
                          v99.i64[1] = 0x8000000080000000;
                          v103 = vshll_n_u16(*v94, 0xDuLL);
                          v104 = vorrq_s8(vandq_s8(vmovl_s16(*v94), v99), vandq_s8(v103, v136));
                          v99.i16[1] = v134.i16[1];
                          v105 = vorrq_s8(vandq_s8(v103, v134), v104);
                          v98.i64[0] = 0x3800000038000000;
                          v98.i64[1] = 0x3800000038000000;
                          v97 = vaddq_s32(v105, v98);
                          break;
                        case 19:
                          v97.i32[0] = v94->i32[0];
                          break;
                        case 20:
                          *v97.f32 = *v94;
                          break;
                        case 22:
                          v97 = *v94->i8;
                          break;
                        case 32:
                          v113 = vld1q_dup_f32(v94);
                          v99.i16[1] = 0;
                          v98.i16[1] = 14976;
                          v97 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v113, xmmword_1AFE473A0), xmmword_1AFE47360)), xmmword_1AFE473B0);
                          break;
                        case 42:
                          v97.i16[0] = v94->i16[0];
                          v97.f32[0] = v97.u32[0];
                          v114 = 0.000015259;
                          goto LABEL_101;
                        case 43:
                          v97.i16[0] = v94->i16[0];
                          v97.f32[0] = vmovl_s16(*v97.f32).i32[0];
                          v114 = 0.000030519;
LABEL_101:
                          *v98.i32 = v97.f32[0] * v114;
                          goto LABEL_102;
                        case 44:
                          v98.i32[0] = sub_1AF1F2AC4(v94->u16[0]);
LABEL_102:
                          v97.i32[2] = 0;
                          v97.i64[0] = v98.u32[0];
                          break;
                        default:
                          v109 = vld1q_dup_f32(v94);
                          v99.i16[1] = 0;
                          v98.i16[1] = 15104;
                          v97 = vmulq_f32(vcvtq_f32_s32(vshlq_s32(vshlq_u32(v109, xmmword_1AFE47380), xmmword_1AFE47390)), xmmword_1AFE473C0);
                          break;
                      }

                      *(v102 - 1) = v97.i64[0];
                      *v102 = v97.i32[2];
                      v94 = (v94 + v96);
                      v102 += 3;
                      --v100;
                    }

                    while (v100);
                  }

                  sub_1AF8C5010(v123, 12, v148, a3, v144, v120, a5);
                  MEMORY[0x1B271DEA0](v123, -1, -1);
                }

                result = swift_bridgeObjectRelease_n();
                v27 = a2;
                v70 = v132;
                if (v26 != v25)
                {
                  goto LABEL_57;
                }

                return result;
              }
            }
          }
        }
      }

      while (v26 != v25);
    }
  }

  return result;
}

uint64_t sub_1AFD28DA8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[11];
  v50 = a1[12];
  v7 = a1[13];
  v9 = a1[1];
  v8 = a1[2];
  v10 = sub_1AF64B110(&type metadata for ForceField, &off_1F2560F10, v6, v50, v7, v8);
  result = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v6, v50, v7, v8);
  if (v6)
  {
    if (v7)
    {
      v12 = (result + 32);
      do
      {
        v14 = *(v10 + 112);
        v59 = *(v10 + 96);
        v60[0] = v14;
        *(v60 + 12) = *(v10 + 124);
        v15 = *(v10 + 48);
        v55 = *(v10 + 32);
        v56 = v15;
        v16 = *(v10 + 80);
        v57 = *(v10 + 64);
        v58 = v16;
        v17 = *(v10 + 16);
        v53 = *v10;
        v54 = v17;
        v18 = v12[-2];
        v19 = v12[-1];
        v20 = *v12;
        v21 = v12[1];
        v22 = *(*(v9 + 40) + 16);
        v23 = *(v22 + 128);
        if (*(v23 + 16))
        {
          v44 = v12[1];
          v46 = *v12;
          v48 = v12[-1];
          v51 = v12[-2];
          v24 = sub_1AF449CB8(&type metadata for Selected);
          v13 = (v25 & 1) != 0 && *(*(v22 + 24) + 16 * *(*(v23 + 56) + 8 * v24) + 32) == &type metadata for Selected;
          v19 = v48;
          v18 = v51;
          v21 = v44;
          v20 = v46;
        }

        else
        {
          v13 = 0;
        }

        v61 = v18;
        v62 = v19;
        v63 = v20;
        v64 = v21;
        v65 = 0;
        result = sub_1AFB4A474(&v53, &v61, v13, a2, a3);
        v12 += 4;
        v10 += 144;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v26 = a1[6];
    v27 = a1[7];
    v28 = v27 - v26;
    if (v27 != v26)
    {
      v29 = (result + (v26 << 6) + 32);
      v30 = v10 + 144 * v26;
      do
      {
        v32 = *(v30 + 112);
        v59 = *(v30 + 96);
        v60[0] = v32;
        *(v60 + 12) = *(v30 + 124);
        v33 = *(v30 + 48);
        v55 = *(v30 + 32);
        v56 = v33;
        v34 = *(v30 + 80);
        v57 = *(v30 + 64);
        v58 = v34;
        v35 = *(v30 + 16);
        v53 = *v30;
        v54 = v35;
        v36 = v29[-2];
        v37 = v29[-1];
        v38 = *v29;
        v39 = v29[1];
        v40 = *(*(v9 + 40) + 16);
        v41 = *(v40 + 128);
        if (*(v41 + 16))
        {
          v45 = v29[1];
          v47 = *v29;
          v49 = v29[-1];
          v52 = v29[-2];
          v42 = sub_1AF449CB8(&type metadata for Selected);
          v31 = (v43 & 1) != 0 && *(*(v40 + 24) + 16 * *(*(v41 + 56) + 8 * v42) + 32) == &type metadata for Selected;
          v37 = v49;
          v36 = v52;
          v39 = v45;
          v38 = v47;
        }

        else
        {
          v31 = 0;
        }

        v61 = v36;
        v62 = v37;
        v63 = v38;
        v64 = v39;
        v65 = 0;
        result = sub_1AFB4A474(&v53, &v61, v31, a2, a3);
        v29 += 4;
        v30 += 144;
        --v28;
      }

      while (v28);
    }
  }

  return result;
}

uint64_t sub_1AFD29024(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v5 = sub_1AF706180(v4, a1);
  result = sub_1AF7060C4(v4, a1);
  v67 = a1;
  v64 = a1[11];
  if (!v64)
  {
    v35 = a1[6];
    v36 = a1[7];
    if (v35 == v36)
    {
      return result;
    }

    v65 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v37 = type metadata accessor for GraphScript(0);
    v38 = *(v37 - 8);
    result = v37 - 8;
    v39 = *(v38 + 72);
    v69 = v5 + 41;
    while (1)
    {
      if (*(v69 + v39 * v35) == 1)
      {
        v41 = *v67;
        v42 = *(v4 + 16);

        if (*(v4 + 184))
        {
          goto LABEL_67;
        }

        v43 = *(*(v4 + 168) + 4 * v35);
        v44 = *(*(v42 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v43 + 8);

        v45 = *(v41 + 216);
        if (*(v45 + 16) && (v46 = sub_1AF449CB8(&type metadata for IsSubEntityOf), (v47 & 1) != 0))
        {
          v48 = *(*(v45 + 56) + 24 * v46);
          v49 = *(v48 + 16);

          if (v49)
          {
            v50 = (v48 + 44);
            while (*(v50 - 3) != v43 || *(v50 - 2) != v44)
            {
              v50 += 4;
              if (!--v49)
              {
                goto LABEL_50;
              }
            }

            v58 = *(v50 - 1);
            v59 = *v50;

            if ((v58 != -1 || v59 != 0) && (v58 & 0x80000000) == 0 && v65[1] > v58)
            {
              v61 = (*v65 + 12 * v58);
              if ((v59 == -1 || v61[2] == v59) && *(*(*(a2 + 144) + 8 * *v61 + 32) + 120) != 1)
              {
                goto LABEL_38;
              }
            }
          }

          else
          {
LABEL_50:
          }
        }

        else
        {
        }

        if (*(v4 + 184))
        {
LABEL_67:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        v53 = *(*(v4 + 168) + 4 * v35);
        v54 = *(*(v52 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v53 + 8);

        v55 = *a3;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v55;
        if ((result & 1) == 0)
        {
          result = sub_1AF4217DC(0, *(v55 + 16) + 1, 1, v55);
          v55 = result;
          *a3 = result;
        }

        v57 = *(v55 + 16);
        v56 = *(v55 + 24);
        if (v57 >= v56 >> 1)
        {
          result = sub_1AF4217DC(v56 > 1, v57 + 1, 1, v55);
          v55 = result;
          *a3 = result;
        }

        *(v55 + 16) = v57 + 1;
        v40 = v55 + 8 * v57;
        *(v40 + 32) = v53;
        *(v40 + 36) = v54;
      }

LABEL_38:
      if (++v35 == v36)
      {
        return result;
      }
    }
  }

  v68 = a1[13];
  if (v68)
  {
    v62 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v7 = type metadata accessor for GraphScript(0);
    v8 = 0;
    v9 = *(v7 - 8);
    result = v7 - 8;
    v10 = *(v9 + 72);
    v11 = v5 + 41;
    do
    {
      if (*(v11 + v10 * v8) == 1)
      {
        v13 = *(v64 + 8 * v8);
        v14 = *v67;
        v15 = *(v4 + 16);

        if (*(v4 + 184))
        {
          goto LABEL_67;
        }

        v16 = *(*(v4 + 168) + 4 * v13);
        v17 = *(*(v15 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v16 + 8);

        v18 = *(v14 + 216);
        if (*(v18 + 16) && (v19 = sub_1AF449CB8(&type metadata for IsSubEntityOf), (v20 & 1) != 0))
        {
          v21 = *(*(v18 + 56) + 24 * v19);
          v22 = *(v21 + 16);

          if (v22)
          {
            v23 = (v21 + 44);
            while (*(v23 - 3) != v16 || *(v23 - 2) != v17)
            {
              v23 += 4;
              if (!--v22)
              {
                goto LABEL_17;
              }
            }

            v31 = *(v23 - 1);
            v32 = *v23;

            if ((v31 != -1 || v32 != 0) && (v31 & 0x80000000) == 0 && v62[1] > v31)
            {
              v34 = (*v62 + 12 * v31);
              if ((v32 == -1 || v34[2] == v32) && *(*(*(a2 + 144) + 8 * *v34 + 32) + 120) != 1)
              {
                goto LABEL_5;
              }
            }
          }

          else
          {
LABEL_17:
          }
        }

        else
        {
        }

        if (*(v4 + 184))
        {
          goto LABEL_67;
        }

        v26 = *(*(v4 + 168) + 4 * v13);
        v27 = *(*(v25 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v26 + 8);

        v28 = *a3;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v28;
        if ((result & 1) == 0)
        {
          result = sub_1AF4217DC(0, *(v28 + 16) + 1, 1, v28);
          v28 = result;
          *a3 = result;
        }

        v30 = *(v28 + 16);
        v29 = *(v28 + 24);
        if (v30 >= v29 >> 1)
        {
          result = sub_1AF4217DC(v29 > 1, v30 + 1, 1, v28);
          v28 = result;
          *a3 = result;
        }

        *(v28 + 16) = v30 + 1;
        v12 = v28 + 8 * v30;
        *(v12 + 32) = v26;
        *(v12 + 36) = v27;
      }

LABEL_5:
      ++v8;
    }

    while (v8 != v68);
  }

  return result;
}

uint64_t sub_1AFD295C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1;
  v5 = *(a1 + 8);
  sub_1AF706090(v5, a1);
  result = sub_1AF705FD4(v5, v4);
  v7 = v4[11];
  v60 = v4;
  if (!v7)
  {
    v32 = v4[6];
    v33 = v4[7];
    if (v32 == v33)
    {
      return result;
    }

    v59 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    while (1)
    {
      v34 = *v4;
      v35 = *(v5 + 16);

      if (*(v5 + 184))
      {
LABEL_67:
        result = sub_1AFDFE518();
        __break(1u);
        return result;
      }

      v36 = *(*(v5 + 168) + 4 * v32);
      v37 = *(*(v35 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v36 + 8);

      v38 = *(v34 + 216);
      if (*(v38 + 16) && (v39 = sub_1AF449CB8(&type metadata for IsSubEntityOf), (v40 & 1) != 0))
      {
        v41 = *(*(v38 + 56) + 24 * v39);
        v42 = *(v41 + 16);

        if (v42)
        {
          v43 = (v41 + 44);
          while (*(v43 - 3) != v36 || *(v43 - 2) != v37)
          {
            v43 += 4;
            if (!--v42)
            {
              goto LABEL_47;
            }
          }

          v52 = *(v43 - 1);
          v53 = *v43;

          if ((v52 != -1 || v53 != 0) && (v52 & 0x80000000) == 0 && v59[1] > v52)
          {
            v55 = (*v59 + 12 * v52);
            if ((v53 == -1 || v55[2] == v53) && *(*(*(a2 + 144) + 8 * *v55 + 32) + 120) != 1)
            {
              goto LABEL_55;
            }
          }
        }

        else
        {
LABEL_47:
        }
      }

      else
      {
      }

      if (*(v5 + 184))
      {
        goto LABEL_67;
      }

      v46 = *(*(v5 + 168) + 4 * v32);
      v47 = *(*(v45 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v46 + 8);

      v48 = *a3;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v48;
      if ((result & 1) == 0)
      {
        result = sub_1AF4217DC(0, *(v48 + 16) + 1, 1, v48);
        v48 = result;
        *a3 = result;
      }

      v50 = *(v48 + 16);
      v49 = *(v48 + 24);
      if (v50 >= v49 >> 1)
      {
        result = sub_1AF4217DC(v49 > 1, v50 + 1, 1, v48);
        v48 = result;
        *a3 = result;
      }

      *(v48 + 16) = v50 + 1;
      v51 = v48 + 8 * v50;
      *(v51 + 32) = v46;
      *(v51 + 36) = v47;
      v4 = v60;
LABEL_55:
      if (++v32 == v33)
      {
        return result;
      }
    }
  }

  v58 = v4[13];
  if (v58)
  {
    v8 = 0;
    v56 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    while (1)
    {
      v9 = *(v7 + 8 * v8);
      v10 = *v4;
      v11 = *(v5 + 16);

      if (*(v5 + 184))
      {
        goto LABEL_67;
      }

      v12 = *(*(v5 + 168) + 4 * v9);
      v13 = *(*(v11 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v12 + 8);

      v14 = *(v10 + 216);
      if (!*(v14 + 16))
      {
        break;
      }

      v15 = sub_1AF449CB8(&type metadata for IsSubEntityOf);
      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = *(*(v14 + 56) + 24 * v15);
      v18 = *(v17 + 16);

      if (!v18)
      {
LABEL_14:

LABEL_16:

        if (*(v5 + 184))
        {
          goto LABEL_67;
        }

        v22 = *(*(v5 + 168) + 4 * v9);
        v23 = *(*(v21 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v22 + 8);

        v24 = *a3;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v24;
        if ((result & 1) == 0)
        {
          result = sub_1AF4217DC(0, *(v24 + 16) + 1, 1, v24);
          v24 = result;
          *a3 = result;
        }

        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        if (v26 >= v25 >> 1)
        {
          result = sub_1AF4217DC(v25 > 1, v26 + 1, 1, v24);
          v24 = result;
          *a3 = result;
        }

        *(v24 + 16) = v26 + 1;
        v27 = v24 + 8 * v26;
        *(v27 + 32) = v22;
        *(v27 + 36) = v23;
        goto LABEL_22;
      }

      v19 = (v17 + 44);
      while (*(v19 - 3) != v12 || *(v19 - 2) != v13)
      {
        v19 += 4;
        if (!--v18)
        {
          goto LABEL_14;
        }
      }

      v28 = *(v19 - 1);
      v29 = *v19;

      if (v28 == -1 && v29 == 0)
      {
        goto LABEL_16;
      }

      if ((v28 & 0x80000000) != 0)
      {
        goto LABEL_16;
      }

      if (v56[1] <= v28)
      {
        goto LABEL_16;
      }

      v31 = (*v56 + 12 * v28);
      if (v29 != -1 && v31[2] != v29)
      {
        goto LABEL_16;
      }

      if (*(*(*(a2 + 144) + 8 * *v31 + 32) + 120) == 1)
      {
        goto LABEL_16;
      }

LABEL_22:
      ++v8;
      v4 = v60;
      if (v8 == v58)
      {
        return result;
      }
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1AFD29AD8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[11];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[2];
  sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v6, v7, v8, v9);
  result = sub_1AF64B110(&type metadata for EmitterRuntime, &off_1F2563418, v6, v7, v8, v9);
  if (v6)
  {
    v35 = a1;
    if (v8)
    {
      v11 = 0;
      v12 = result + 336;
      do
      {
        v14 = *(v12 + 88);
        if (v14)
        {
          v15 = *(v12 + 96);
          v16 = *(v35 + 6);
          ObjectType = swift_getObjectType();
          swift_unknownObjectRetain();
          [a2 setRenderPipelineState_];
          [a2 setDepthStencilState_];
          v38 = v11 + v16;
          sub_1AF6F33C0(&v38, 8, ObjectType, MEMORY[0x1E69E72F0], v18, v19, v20, v21);
          if (*v12 == 1)
          {
            v13 = *(v12 + 176);
          }

          else
          {
            LODWORD(v13) = 0;
          }

          sub_1AF6F3458(*(v12 + 8), *(v12 + 16) + *(v12 + 32) * v13, 0, 4, 3);
          sub_1AF6F3458(v14, v15, 0, 5, 3);
          sub_1AF6F5B7C(1);
          result = swift_unknownObjectRelease();
        }

        ++v11;
        v12 += 848;
      }

      while (v8 != v11);
    }
  }

  else
  {
    v22 = a1[6];
    v23 = a1[7];
    v24 = v23 - v22;
    if (v23 != v22)
    {
      v25 = a1[3];
      v26 = result + 848 * v22 + 336;
      do
      {
        v28 = *(v26 + 88);
        if (v28)
        {
          v29 = *(v26 + 96);
          v30 = swift_getObjectType();
          swift_unknownObjectRetain();
          [a2 setRenderPipelineState_];
          [a2 setDepthStencilState_];
          v39 = v25;
          sub_1AF6F33C0(&v39, 8, v30, MEMORY[0x1E69E72F0], v31, v32, v33, v34);
          if (*v26 == 1)
          {
            v27 = *(v26 + 176);
          }

          else
          {
            LODWORD(v27) = 0;
          }

          sub_1AF6F3458(*(v26 + 8), *(v26 + 16) + *(v26 + 32) * v27, 0, 4, 3);
          sub_1AF6F3458(v28, v29, 0, 5, 3);
          sub_1AF6F5B7C(1);
          result = swift_unknownObjectRelease();
        }

        LODWORD(v25) = v25 + 1;
        v26 += 848;
        --v24;
      }

      while (v24);
    }
  }

  return result;
}

uint64_t sub_1AFD29DB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[11];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[1];
  v10 = a1[2];
  v11 = sub_1AF64B110(&type metadata for ParticleSubSpawn, &off_1F2566840, v6, v7, v8, v10);
  v12 = sub_1AF64B110(&type metadata for ParticleSubSpawn.State, &off_1F25668F8, v6, v7, v8, v10);
  v13 = v12;
  if (v6)
  {
    if (v8)
    {
      v14 = *a1;
      do
      {
        v15 = *v6++;
        sub_1AFBC7E40(v14, v9, v15, v11, v13, a2, a3);
        if (v22)
        {
          break;
        }

        v13 += 8;
        v11 += 6;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v16 = a1[6];
    v17 = a1[7];
    v18 = &v11[6 * v16];
    v19 = (v12 + (v16 << 6));
    do
    {
      if (v17 == v16)
      {
        break;
      }

      v20 = v16 + 1;
      sub_1AFBC7E40(*a1, v9, v16, v18, v19, a2, a3);
      v18 += 6;
      v19 += 8;
      v16 = v20;
    }

    while (!v22);
  }
}

uint64_t sub_1AFD29F14(void *a1, uint64_t a2, void **a3)
{
  v76 = a2;
  sub_1AF442910();
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v75 - v12;
  v14 = a1[1];
  v82 = sub_1AF70632C(v14, a1);
  result = sub_1AF706360(v14, a1);
  v77 = v3;
  v78 = a3;
  v16 = a1[11];
  v85 = a1;
  v81 = v16;
  if (!v16)
  {
    v46 = a1[6];
    v47 = a1[7];
    if (v46 == v47)
    {
      return result;
    }

    v80 = (v76 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v81 = *(*(type metadata accessor for TriggerScript(0) - 8) + 72);
    while (1)
    {
      v48 = *a1;
      v49 = *(v14 + 16);

      if (*(v14 + 184))
      {
LABEL_70:
        result = sub_1AFDFE518();
        __break(1u);
        return result;
      }

      v50 = *(*(v14 + 168) + 4 * v46);
      v51 = *(*(v49 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v50 + 8);

      v52 = *(v48 + 216);
      if (!*(v52 + 16))
      {
        break;
      }

      v53 = sub_1AF449CB8(&type metadata for IsSubEntityOf);
      if ((v54 & 1) == 0)
      {
        break;
      }

      v55 = *(*(v52 + 56) + 24 * v53);
      v56 = *(v55 + 16);

      if (!v56)
      {
LABEL_49:

LABEL_51:
        v59 = 0;
        v60 = 1;
        goto LABEL_52;
      }

      v57 = (v55 + 44);
      while (*(v57 - 3) != v50 || *(v57 - 2) != v51)
      {
        v57 += 4;
        if (!--v56)
        {
          goto LABEL_49;
        }
      }

      v72 = *(v57 - 1);
      v71 = *v57;

      v59 = v72 | (v71 << 32);
      if (v72 != -1 || v71 != 0)
      {
        v60 = 0;
        if ((v72 & 0x80000000) != 0 || v80[1] <= v72)
        {
          goto LABEL_52;
        }

        v74 = (*v80 + 12 * v72);
        if ((v71 == -1 || v74[2] == v71) && *(*(*(v76 + 144) + 8 * *v74 + 32) + 120) != 1)
        {
          goto LABEL_58;
        }
      }

      v60 = 0;
LABEL_52:

      if (*(v14 + 184))
      {
        goto LABEL_70;
      }

      v62 = *(*(v14 + 168) + 4 * v46);
      v63 = v82 + v81 * v46;
      v64 = *(*(v61 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v62 + 8);

      v65 = *(v84 + 64);
      *v9 = v62;
      *(v9 + 1) = v64;
      *(v9 + 1) = v59;
      v9[16] = v60;
      sub_1AFD531F8(v63, &v9[v65], type metadata accessor for TriggerScript);
      v66 = v78;
      v67 = *v78;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v66 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_1AF4276AC(0, v67[2] + 1, 1, v67);
        *v66 = v67;
      }

      v70 = v67[2];
      v69 = v67[3];
      if (v70 >= v69 >> 1)
      {
        v67 = sub_1AF4276AC(v69 > 1, v70 + 1, 1, v67);
        *v66 = v67;
      }

      v67[2] = v70 + 1;
      result = sub_1AFD53D8C(v9, v67 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v70, sub_1AF442910);
LABEL_58:
      ++v46;
      a1 = v85;
      if (v46 == v47)
      {
        return result;
      }
    }

    goto LABEL_51;
  }

  v80 = a1[13];
  if (v80)
  {
    v75 = (v76 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v17 = 0;
    v79 = *(*(type metadata accessor for TriggerScript(0) - 8) + 72);
    while (1)
    {
      v18 = *(v81 + 8 * v17);
      v19 = *a1;
      v20 = *(v14 + 16);

      if (*(v14 + 184))
      {
        goto LABEL_70;
      }

      v21 = *(*(v14 + 168) + 4 * v18);
      v22 = *(*(v20 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v21 + 8);

      v23 = *(v19 + 216);
      if (!*(v23 + 16))
      {
        break;
      }

      v24 = sub_1AF449CB8(&type metadata for IsSubEntityOf);
      if ((v25 & 1) == 0)
      {
        break;
      }

      v26 = *(*(v23 + 56) + 24 * v24);
      v27 = *(v26 + 16);

      if (!v27)
      {
LABEL_14:

LABEL_16:
        v30 = 0;
        v31 = 1;
LABEL_17:

        if (*(v14 + 184))
        {
          goto LABEL_70;
        }

        v33 = *(*(v14 + 168) + 4 * v18);
        v34 = v82 + v79 * v17;
        v35 = *(*(v32 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v33 + 8);

        v36 = *(v84 + 64);
        *v13 = v33;
        *(v13 + 1) = v35;
        *(v13 + 1) = v30;
        v13[16] = v31;
        sub_1AFD531F8(v34, &v13[v36], type metadata accessor for TriggerScript);
        v37 = *a3;
        v38 = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v37;
        if ((v38 & 1) == 0)
        {
          v37 = sub_1AF4276AC(0, v37[2] + 1, 1, v37);
          *a3 = v37;
        }

        v40 = v37[2];
        v39 = v37[3];
        if (v40 >= v39 >> 1)
        {
          v37 = sub_1AF4276AC(v39 > 1, v40 + 1, 1, v37);
          *a3 = v37;
        }

        v37[2] = v40 + 1;
        result = sub_1AFD53D8C(v13, v37 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v40, sub_1AF442910);
        goto LABEL_23;
      }

      v28 = (v26 + 44);
      while (*(v28 - 3) != v21 || *(v28 - 2) != v22)
      {
        v28 += 4;
        if (!--v27)
        {
          goto LABEL_14;
        }
      }

      v42 = *(v28 - 1);
      v41 = *v28;

      v30 = v42 | (v41 << 32);
      v31 = 0;
      v43 = v42 == -1 && v41 == 0;
      if (v43 || (v44 = v42, (v42 & 0x80000000) != 0))
      {
        a3 = v78;
        goto LABEL_17;
      }

      a3 = v78;
      if (v75[1] <= v44)
      {
        goto LABEL_17;
      }

      v45 = (*v75 + 12 * v44);
      if (v41 != -1 && v45[2] != v41 || *(*(*(v76 + 144) + 8 * *v45 + 32) + 120) == 1)
      {
        v31 = 0;
        goto LABEL_17;
      }

LABEL_23:
      v17 = (v17 + 1);
      a1 = v85;
      if (v17 == v80)
      {
        return result;
      }
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1AFD2A628(void *a1, uint64_t a2)
{
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  v9 = sub_1AF64B110(&type metadata for Parent, &off_1F2529C98, v5, v4, v6, v8);
  v39 = v8;
  result = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v5, v4, v6, v8);
  if (v5)
  {
    if (v6)
    {
      v11 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v12 = (v9 + 4);
      do
      {
        v18 = *v5++;
        v17 = v18;
        v19 = *(v12 - 1);
        v20 = *v12;
        if ((v19 != -1 || v20 != 0) && (v19 & 0x80000000) == 0 && v11[1] > v19)
        {
          v22 = *v11 + 12 * v19;
          if (v20 == -1 || *(v22 + 8) == v20)
          {
            v23 = *(*(*(a2 + 88) + 8 * *(v22 + 6) + 32) + 16);
            v24 = *(v23 + 128);
            if (*(v24 + 16))
            {
              result = sub_1AF449CB8(&type metadata for LastFrameWorldTransform);
              if ((v25 & 1) != 0 && *(*(v23 + 24) + 16 * *(*(v24 + 56) + 8 * result) + 32) == &type metadata for LastFrameWorldTransform)
              {
                v26 = *(*(v7 + 40) + 16);
                v27 = *(v26 + 128);
                if (!*(v27 + 16) || (result = sub_1AF449CB8(&type metadata for LastFrameWorldTransform), (v28 & 1) == 0) || *(*(v26 + 24) + 16 * *(*(v27 + 56) + 8 * result) + 32) != &type metadata for LastFrameWorldTransform)
                {
                  v40 = &type metadata for LastFrameWorldTransform;
                  v41 = &off_1F2529EB0;
                  v42 = 0;

                  sub_1AF6304E8(v39 + 104, &v40, v17, 0, v7, v39);

                  result = sub_1AF635250(&v40);
                }
              }
            }
          }
        }

        v12 += 2;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v14 = a1[6];
    v13 = a1[7];
    if (v14 != v13)
    {
      v15 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v16 = (v9 + 8 * v14 + 4);
      do
      {
        v29 = *(v16 - 1);
        v30 = *v16;
        if ((v29 != -1 || v30 != 0) && (v29 & 0x80000000) == 0 && v15[1] > v29)
        {
          v32 = *v15 + 12 * v29;
          if (v30 == -1 || *(v32 + 8) == v30)
          {
            v33 = *(*(*(a2 + 88) + 8 * *(v32 + 6) + 32) + 16);
            v34 = *(v33 + 128);
            if (*(v34 + 16))
            {
              result = sub_1AF449CB8(&type metadata for LastFrameWorldTransform);
              if ((v35 & 1) != 0 && *(*(v33 + 24) + 16 * *(*(v34 + 56) + 8 * result) + 32) == &type metadata for LastFrameWorldTransform)
              {
                v36 = *(*(v7 + 40) + 16);
                v37 = *(v36 + 128);
                if (!*(v37 + 16) || (result = sub_1AF449CB8(&type metadata for LastFrameWorldTransform), (v38 & 1) == 0) || *(*(v36 + 24) + 16 * *(*(v37 + 56) + 8 * result) + 32) != &type metadata for LastFrameWorldTransform)
                {
                  v40 = &type metadata for LastFrameWorldTransform;
                  v41 = &off_1F2529EB0;
                  v42 = 0;

                  sub_1AF6304E8(v39 + 104, &v40, v14, 0, v7, v39);

                  result = sub_1AF635250(&v40);
                }
              }
            }
          }
        }

        ++v14;
        v16 += 2;
      }

      while (v13 != v14);
    }
  }

  return result;
}

uint64_t sub_1AFD2A9A8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[11];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[2];
  v10 = sub_1AF64B110(&type metadata for ParticleFluidSolver2DSolver, &off_1F2565C50, v6, v7, v8, v9);
  result = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v6, v7, v8, v9);
  if (v6)
  {
    for (; v8; --v8)
    {
      v12 = *(a2 + 112);
      v24 = *(a2 + 96);
      v25 = v12;
      v26 = *(a2 + 128);
      v13 = *(v10 + 48);
      v29 = *(v10 + 32);
      v30 = v13;
      v31 = *(v10 + 64);
      v32 = *(v10 + 80);
      v14 = *v10;
      v15 = *(v10 + 16);
      v10 += 96;
      v27 = v14;
      v28 = v15;
      result = sub_1AFBB4A98(&v24, a3, &v27);
    }
  }

  else
  {
    v16 = a1[6];
    v17 = a1[7];
    v18 = v17 - v16;
    if (v17 != v16)
    {
      v19 = v10 + 96 * v16;
      do
      {
        v20 = *(a2 + 112);
        v24 = *(a2 + 96);
        v25 = v20;
        v26 = *(a2 + 128);
        v21 = *(v19 + 48);
        v29 = *(v19 + 32);
        v30 = v21;
        v31 = *(v19 + 64);
        v32 = *(v19 + 80);
        v22 = *v19;
        v23 = *(v19 + 16);
        v19 += 96;
        v27 = v22;
        v28 = v23;
        result = sub_1AFBB4A98(&v24, a3, &v27);
        --v18;
      }

      while (v18);
    }
  }

  return result;
}

uint64_t sub_1AFD2AB08(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v149 = a4;
  v141 = a3;
  sub_1AFD54744();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v147 = &v123 - v12;
  sub_1AFD53F14(0, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
  v142 = v13;
  v125 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v123 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v138 = (&v123 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v146 = &v123 - v26;
  sub_1AFD547D4();
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v137 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v139 = &v123 - v32;
  sub_1AFD53F14(0, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
  v172 = v33;
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v123 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v148 = &v123 - v40;
  v41 = a1[1];
  v133 = v41;
  v42 = v151;
  v129 = sub_1AF706CCC(v41, a1);
  result = sub_1AF70687C(v41, a1);
  v128 = result;
  v143 = v42;
  v44 = a1[11];
  v130 = a2;
  v124 = v44;
  if (!v44)
  {
    v146 = v20;
    v147 = v37;
    v140 = v16;
    v150 = a2 + 32;
    v83 = a1[6];
    v126 = a1[7];
    v144 = (v125 + 56);
    v145 = (v34 + 56);
    v84 = v142;
    v85 = v172;
    v148 = v9;
    v86 = v137;
    do
    {
LABEL_36:
      if (v83 == v126)
      {
        return result;
      }

      v87 = v83++;
      result = type metadata accessor for EmitterScript(0);
      v134 = result;
      v88 = *(result - 8);
      v151 = *(a2 + 16);
    }

    while (!v151);
    v127 = v83;
    v89 = 0;
    v90 = v129 + *(v88 + 72) * v87;
    v131 = v128 + *(v125 + 72) * v87;
    v132 = v87;
    while (1)
    {
      sub_1AF85ABE8(v150 + 48 * v89, v160);
      if (v161)
      {
        break;
      }

      sub_1AF616568(v160, v159);
      sub_1AF441194(v159, &v152);
      sub_1AF5C5358(0, &qword_1ED72FFF0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v159);
        (*v145)(v86, 1, 1, v85);
        v91 = sub_1AFD547D4;
        v92 = v86;
LABEL_40:
        result = sub_1AFD53198(v92, v91);
        goto LABEL_41;
      }

      (*v145)(v86, 0, 1, v85);
      sub_1AFD53F80(v86, v147, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
      sub_1AFDFF308();
      sub_1AFDFD038();
      v103 = *(v90 + 24);
      MEMORY[0x1B271ACB0](*(v103 + 16));
      v104 = *(v103 + 16);
      if (v104)
      {
        v105 = v103 + 40;
        do
        {

          sub_1AFDFD038();

          v105 += 16;
          --v104;
        }

        while (v104);
      }

      sub_1AFDFD038();

      v164 = v154;
      v165 = v155;
      v166 = v156;
      v162 = v152;
      v163 = v153;
      v106 = sub_1AFDFF2E8();
      v107 = v147;
      v9 = v148;
      v108 = &v147[*(v84 + 36)];
      if ((v108[8] & 1) != 0 || v106 != *v108)
      {
        v85 = v172;
      }

      else
      {
        v109 = v147;
        os_unfair_lock_lock(*(v141 + 72));
        v110 = v140;
        sub_1AFD53D18(v109, v140, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v90, v110, type metadata accessor for EmitterScript);
        v111 = v143;
        sub_1AFAA7344(0, 1, &v152);
        if (v111)
        {

          v138 = 0;
          v139 = 0;
          v143 = 0;
        }

        else
        {
          v143 = 0;
          v138 = v155;
          v139 = *(&v154 + 1);

          v110 = v140;
        }

        v112 = v133;

        v114 = v172;
        if (*(v112 + 184))
        {
LABEL_67:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        v115 = *(*(v112 + 168) + 4 * v132);
        v135 = *(*(v113 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v115 + 8);

        *(&v153 + 1) = v84;
        v116 = sub_1AF585714(&v152);
        v136 = type metadata accessor for EmitterScript;
        sub_1AFD53D18(v110, v116, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
        v117 = v147;
        v118 = *&v147[*(v114 + 40)];
        *&v154 = *&v147[*(v114 + 36)];
        *(&v154 + 1) = v118;
        *&v155 = *&v147[*(v172 + 44)];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v157 = v119;
        *(&v155 + 1) = v139;
        v156 = v138;
        v158 = 1;
        v120 = v115 | (v135 << 32);

        v121 = v141;
        sub_1AF825824(&v152, v134, v120);
        v85 = v172;
        v122 = v142;
        sub_1AFD53C4C(v140, &unk_1ED728DD0, v136, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v121 + 72));
        v107 = v117;
        v84 = v122;
        v9 = v148;
        v86 = v137;
      }

      sub_1AFD53C4C(v107, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v159);
      *v149 = 1;
LABEL_41:
      if (++v89 == v151)
      {
        a2 = v130;
        v83 = v127;
        goto LABEL_36;
      }
    }

    sub_1AF616568(v160, v159);
    sub_1AF441194(v159, &v152);
    sub_1AF5C5358(0, &qword_1ED72FFF0);
    if (swift_dynamicCast())
    {
      (*v144)(v9, 0, 1, v84);
      sub_1AFD53F80(v9, v146, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
      sub_1AFDFF308();
      sub_1AFDFD038();
      v93 = *(v90 + 24);
      MEMORY[0x1B271ACB0](*(v93 + 16));
      v94 = *(v93 + 16);
      if (v94)
      {
        v95 = v93 + 40;
        do
        {

          sub_1AFDFD038();

          v95 += 16;
          --v94;
        }

        while (v94);
      }

      sub_1AFDFD038();

      v169 = v154;
      v170 = v155;
      v171 = v156;
      v167 = v152;
      v168 = v153;
      v96 = sub_1AFDFF2E8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v159);
      v97 = &v146[*(v84 + 36)];
      v9 = v148;
      if ((v97[8] & 1) != 0 || v96 != *v97)
      {
        result = sub_1AFD53C4C(v146, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
      }

      else
      {
        v98 = v146;
        v99 = v90;
        v100 = v131;
        sub_1AFD53C4C(v131, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
        v101 = v98;
        v86 = v137;
        v102 = v100;
        v90 = v99;
        v84 = v142;
        result = sub_1AFD53F80(v101, v102, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
      }

      *v149 = 1;
      v85 = v172;
      goto LABEL_41;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v159);
    (*v144)(v9, 1, 1, v84);
    v91 = sub_1AFD54744;
    v92 = v9;
    goto LABEL_40;
  }

  v45 = v125;
  v126 = a1[13];
  if (v126)
  {
    result = type metadata accessor for EmitterScript(0);
    v140 = 0;
    v127 = result;
    v46 = *(result - 8);
    v150 = a2 + 32;
    v123 = *(v46 + 72);
    v144 = (v45 + 56);
    v145 = (v34 + 56);
    v125 = *(v45 + 72);
    v47 = v142;
    v48 = v172;
    v49 = v147;
    v50 = v139;
    while (1)
    {
      v151 = *(a2 + 16);
      if (v151)
      {
        break;
      }

LABEL_4:
      ++v140;
      a2 = v130;
      if (v140 == v126)
      {
        return result;
      }
    }

    v51 = 0;
    v52 = *(v124 + 8 * v140);
    v53 = v129 + v123 * v140;
    v131 = v128 + v125 * v140;
    v132 = v52;
    while (1)
    {
      sub_1AF85ABE8(v150 + 48 * v51, v160);
      if (v161)
      {
        break;
      }

      sub_1AF616568(v160, v159);
      sub_1AF441194(v159, &v152);
      sub_1AF5C5358(0, &qword_1ED72FFF0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v159);
        (*v145)(v50, 1, 1, v48);
        v54 = sub_1AFD547D4;
        v55 = v50;
LABEL_8:
        result = sub_1AFD53198(v55, v54);
        goto LABEL_9;
      }

      (*v145)(v50, 0, 1, v48);
      sub_1AFD53F80(v50, v148, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
      sub_1AFDFF308();
      sub_1AFDFD038();
      v66 = *(v53 + 24);
      MEMORY[0x1B271ACB0](*(v66 + 16));
      v67 = *(v66 + 16);
      if (v67)
      {
        v68 = v66 + 40;
        do
        {

          sub_1AFDFD038();

          v68 += 16;
          --v67;
        }

        while (v67);
      }

      sub_1AFDFD038();

      v164 = v154;
      v165 = v155;
      v166 = v156;
      v162 = v152;
      v163 = v153;
      v69 = sub_1AFDFF2E8();
      v49 = v147;
      v70 = &v148[*(v47 + 36)];
      if ((v70[8] & 1) != 0 || v69 != *v70)
      {
        v48 = v172;
      }

      else
      {
        os_unfair_lock_lock(*(v141 + 72));
        v71 = v138;
        sub_1AFD53D18(v148, v138, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v53, v71, type metadata accessor for EmitterScript);
        v72 = v143;
        sub_1AFAA7344(0, 1, &v152);
        if (v72)
        {

          v136 = 0;
          v137 = 0;
          v143 = 0;
        }

        else
        {
          v143 = 0;
          v136 = v155;
          v137 = *(&v154 + 1);
        }

        v73 = v133;

        v75 = v172;
        if (*(v73 + 184))
        {
          goto LABEL_67;
        }

        v76 = *(*(v73 + 168) + 4 * v132);
        v134 = *(*(v74 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v76 + 8);

        *(&v153 + 1) = v47;
        v77 = sub_1AF585714(&v152);
        v135 = type metadata accessor for EmitterScript;
        v78 = v138;
        sub_1AFD53D18(v138, v77, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
        v79 = *&v148[*(v75 + 40)];
        *&v154 = *&v148[*(v75 + 36)];
        *(&v154 + 1) = v79;
        *&v155 = *&v148[*(v172 + 44)];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v157 = v80;
        *(&v155 + 1) = v137;
        v156 = v136;
        v158 = 1;
        v81 = v76 | (v134 << 32);

        v82 = v141;
        sub_1AF825824(&v152, v127, v81);
        v48 = v172;
        v47 = v142;
        sub_1AFD53C4C(v78, &unk_1ED728DD0, v135, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v82 + 72));
        v49 = v147;
        v50 = v139;
      }

      sub_1AFD53C4C(v148, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v159);
      *v149 = 1;
LABEL_9:
      if (++v51 == v151)
      {
        goto LABEL_4;
      }
    }

    sub_1AF616568(v160, v159);
    sub_1AF441194(v159, &v152);
    sub_1AF5C5358(0, &qword_1ED72FFF0);
    if (swift_dynamicCast())
    {
      (*v144)(v49, 0, 1, v47);
      sub_1AFD53F80(v49, v146, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
      sub_1AFDFF308();
      sub_1AFDFD038();
      v56 = *(v53 + 24);
      MEMORY[0x1B271ACB0](*(v56 + 16));
      v57 = *(v56 + 16);
      if (v57)
      {
        v58 = v56 + 40;
        do
        {

          sub_1AFDFD038();

          v58 += 16;
          --v57;
        }

        while (v57);
      }

      sub_1AFDFD038();

      v169 = v154;
      v170 = v155;
      v171 = v156;
      v167 = v152;
      v168 = v153;
      v59 = sub_1AFDFF2E8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v159);
      v49 = v147;
      v60 = &v146[*(v47 + 36)];
      if ((v60[8] & 1) != 0 || v59 != *v60)
      {
        result = sub_1AFD53C4C(v146, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
      }

      else
      {
        v61 = v146;
        v62 = v53;
        v63 = v131;
        sub_1AFD53C4C(v131, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
        v64 = v61;
        v50 = v139;
        v65 = v63;
        v53 = v62;
        v47 = v142;
        result = sub_1AFD53F80(v64, v65, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
      }

      *v149 = 1;
      v48 = v172;
      goto LABEL_9;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v159);
    (*v144)(v49, 1, 1, v47);
    v54 = sub_1AFD54744;
    v55 = v49;
    goto LABEL_8;
  }

  return result;
}

uint64_t (*sub_1AFD2C06C(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4))(uint64_t)
{
  v164 = a4;
  v156 = a3;
  sub_1AFD54624();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v158 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v161 = (&v140 - v11);
  sub_1AFD53F14(0, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v155 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v159 = (&v140 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v157 = &v140 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v160 = &v140 - v25;
  sub_1AFD546B4();
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v162 = &v140 - v32;
  sub_1AFD53F14(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
  v167 = v33;
  v34 = *(v33 - 1);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v140 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v163 = &v140 - v40;
  v41 = a1[1];
  v42 = v166;
  v147 = sub_1AF706180(v41, a1);
  v151 = v41;
  result = sub_1AF706B6C(v41, a1);
  v146 = result;
  v140 = v42;
  v44 = a1[11];
  v148 = a2;
  v203 = v13;
  v143 = v44;
  if (!v44)
  {
    v162 = v29;
    v163 = v37;
    v165 = a2 + 32;
    v93 = a1[6];
    v144 = a1[7];
    v160 = (v14 + 56);
    v161 = (v34 + 56);
    v94 = v167;
    v95 = v158;
    v141 = v14;
    do
    {
LABEL_40:
      if (v93 == v144)
      {
        return result;
      }

      v96 = v93++;
      result = type metadata accessor for GraphScript(0);
      v152 = result;
      v97 = *(result - 1);
      v166 = *(a2 + 16);
    }

    while (!v166);
    v145 = v93;
    v98 = v96;
    v99 = 0;
    v100 = v147 + *(v97 + 72) * v98;
    v149 = v146 + *(v14 + 72) * v98;
    v150 = v98;
    v101 = v159;
    v102 = v162;
    while (1)
    {
      sub_1AF85ABE8(v165 + 48 * v99, v181);
      if (v182)
      {
        break;
      }

      sub_1AF616568(v181, v180);
      sub_1AF441194(v180, &v168);
      sub_1AF5C5358(0, &qword_1ED72FFF0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
        (*v161)(v102, 1, 1, v94);
        v103 = sub_1AFD546B4;
        v104 = v102;
LABEL_44:
        result = sub_1AFD53198(v104, v103);
        goto LABEL_45;
      }

      (*v161)(v102, 0, 1, v94);
      sub_1AFD53F80(v102, v163, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v117 = *(v100 + 32);
      MEMORY[0x1B271ACB0](*(v117 + 16));
      v118 = *(v117 + 16);
      if (v118)
      {
        v119 = v117 + 40;
        do
        {

          sub_1AFDFD038();

          v119 += 16;
          --v118;
        }

        while (v118);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v100 + 40)]);
      v120 = *v100;
      MEMORY[0x1B271ACB0](*(*v100 + 16));
      v121 = *(v120 + 16);
      if (v121)
      {
        v122 = (v120 + 48);
        do
        {
          v123 = *(v122 - 2);
          v124 = *v122;
          v122 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v123);
          sub_1AF444224(v124);
          v125 = sub_1AFAA02E0(v123);
          MEMORY[0x1B271ACB0](v125);
          v190 = v177;
          v191 = v178;
          v192 = v179;
          v188 = v175;
          v189 = v176;
          v126 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v126);
          sub_1AF443F24(v123);
          sub_1AF444AF4(v124);
          --v121;
        }

        while (v121);
      }

      v185 = v170;
      v186 = v171;
      v187 = v172;
      v183 = v168;
      v184 = v169;
      v127 = sub_1AFDFF2E8();
      v128 = v163;
      v129 = &v163[*(v203 + 36)];
      v130 = v156;
      if ((v129[8] & 1) == 0 && v127 == *v129)
      {
        os_unfair_lock_lock(*(v156 + 72));
        v131 = v155;
        sub_1AFD53D18(v128, v155, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v100, v131, type metadata accessor for GraphScript);
        v132 = *v100;
        v133 = v151;
        v134 = *(v151 + 16);

        if (*(v133 + 184))
        {
LABEL_74:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        v157 = *(*(v133 + 168) + 4 * v150);
        v154 = *(*(v134 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v157 + 8);

        *(&v169 + 1) = v203;
        v135 = sub_1AF585714(&v168);
        v153 = type metadata accessor for GraphScript;
        sub_1AFD53D18(v131, v135, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        v136 = *&v163[v167[10]];
        *&v170 = *&v163[v167[9]];
        *(&v170 + 1) = v136;
        *&v171 = *&v163[v167[11]];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v173 = v137;
        *(&v171 + 1) = v132;
        v172 = 0;
        v174 = 1;
        v138 = v157 | (v154 << 32);
        v128 = v163;

        sub_1AF825824(&v168, v152, v138);
        sub_1AFD53C4C(v155, &unk_1ED728E00, v153, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v130 + 72));
      }

      sub_1AFD53C4C(v128, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
      *v164 = 1;
      v94 = v167;
      v95 = v158;
      v101 = v159;
      v102 = v162;
LABEL_45:
      if (++v99 == v166)
      {
        a2 = v148;
        v14 = v141;
        v93 = v145;
        goto LABEL_40;
      }
    }

    sub_1AF616568(v181, v180);
    sub_1AF441194(v180, &v168);
    sub_1AF5C5358(0, &qword_1ED72FFF0);
    if (swift_dynamicCast())
    {
      (*v160)(v95, 0, 1, v203);
      sub_1AFD53F80(v95, v101, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v105 = *(v100 + 32);
      MEMORY[0x1B271ACB0](*(v105 + 16));
      v106 = *(v105 + 16);
      if (v106)
      {
        v107 = v105 + 40;
        do
        {

          sub_1AFDFD038();

          v107 += 16;
          --v106;
        }

        while (v106);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v100 + 40)]);
      v108 = *v100;
      MEMORY[0x1B271ACB0](*(*v100 + 16));
      v109 = *(v108 + 16);
      if (v109)
      {
        v110 = (v108 + 48);
        do
        {
          v111 = *(v110 - 2);
          v112 = *v110;
          v110 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v111);
          sub_1AF444224(v112);
          v113 = sub_1AFAA02E0(v111);
          MEMORY[0x1B271ACB0](v113);
          v200 = v177;
          v201 = v178;
          v202 = v179;
          v198 = v175;
          v199 = v176;
          v114 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v114);
          sub_1AF443F24(v111);
          sub_1AF444AF4(v112);
          --v109;
        }

        while (v109);
      }

      v195 = v170;
      v196 = v171;
      v197 = v172;
      v193 = v168;
      v194 = v169;
      v115 = sub_1AFDFF2E8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
      v101 = v159;
      v116 = v159 + *(v203 + 36);
      if (v116[8])
      {
        result = sub_1AFD53C4C(v159, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        v95 = v158;
      }

      else
      {
        v95 = v158;
        if (v115 == *v116)
        {
          v139 = v149;
          sub_1AFD53C4C(v149, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
          result = sub_1AFD53F80(v101, v139, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        }

        else
        {
          result = sub_1AFD53C4C(v159, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        }
      }

      v102 = v162;
      *v164 = 1;
      v94 = v167;
      goto LABEL_45;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
    (*v160)(v95, 1, 1, v203);
    v103 = sub_1AFD54624;
    v104 = v95;
    goto LABEL_44;
  }

  v45 = a1[13];
  v46 = v167;
  v48 = v160;
  v47 = v161;
  v144 = v45;
  if (v45)
  {
    result = type metadata accessor for GraphScript(0);
    v155 = 0;
    v145 = result;
    v49 = *(result - 1);
    v165 = a2 + 32;
    v142 = *(v49 + 72);
    v50 = (v34 + 56);
    v158 = (v14 + 56);
    v141 = *(v14 + 72);
    v159 = (v34 + 56);
    while (1)
    {
      v51 = v162;
      v166 = *(a2 + 16);
      if (v166)
      {
        break;
      }

LABEL_4:
      ++v155;
      a2 = v148;
      if (v155 == v144)
      {
        return result;
      }
    }

    v52 = 0;
    v53 = *(v143 + 8 * v155);
    v54 = v147 + v142 * v155;
    v149 = v146 + v141 * v155;
    v150 = v53;
    while (1)
    {
      sub_1AF85ABE8(v165 + 48 * v52, v181);
      if (v182)
      {
        break;
      }

      sub_1AF616568(v181, v180);
      sub_1AF441194(v180, &v168);
      sub_1AF5C5358(0, &qword_1ED72FFF0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
        (*v50)(v51, 1, 1, v46);
        v55 = sub_1AFD546B4;
        v56 = v51;
LABEL_8:
        result = sub_1AFD53198(v56, v55);
        goto LABEL_9;
      }

      (*v50)(v51, 0, 1, v46);
      sub_1AFD53F80(v51, v163, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v69 = *(v54 + 32);
      MEMORY[0x1B271ACB0](*(v69 + 16));
      v70 = *(v69 + 16);
      if (v70)
      {
        v71 = v69 + 40;
        do
        {

          sub_1AFDFD038();

          v71 += 16;
          --v70;
        }

        while (v70);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v54 + 40)]);
      v72 = *v54;
      MEMORY[0x1B271ACB0](*(*v54 + 16));
      v73 = *(v72 + 16);
      if (v73)
      {
        v74 = (v72 + 48);
        do
        {
          v75 = *(v74 - 2);
          v76 = *v74;
          v74 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v75);
          sub_1AF444224(v76);
          v77 = sub_1AFAA02E0(v75);
          MEMORY[0x1B271ACB0](v77);
          v190 = v177;
          v191 = v178;
          v192 = v179;
          v188 = v175;
          v189 = v176;
          v78 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v78);
          sub_1AF443F24(v75);
          sub_1AF444AF4(v76);
          --v73;
        }

        while (v73);
      }

      v185 = v170;
      v186 = v171;
      v187 = v172;
      v183 = v168;
      v184 = v169;
      v79 = sub_1AFDFF2E8();
      v80 = v163;
      v81 = &v163[*(v203 + 36)];
      v82 = v157;
      if ((v81[8] & 1) == 0 && v79 == *v81)
      {
        v83 = v156;
        os_unfair_lock_lock(*(v156 + 72));
        sub_1AFD53D18(v80, v82, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v54, v82, type metadata accessor for GraphScript);
        v84 = *v54;
        v85 = v151;
        v86 = *(v151 + 16);

        if (*(v85 + 184))
        {
          goto LABEL_74;
        }

        v87 = *(*(v85 + 168) + 4 * v150);
        v153 = *(*(v86 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v87 + 8);
        v154 = v87;

        *(&v169 + 1) = v203;
        v88 = sub_1AF585714(&v168);
        v152 = type metadata accessor for GraphScript;
        sub_1AFD53D18(v82, v88, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        v89 = *&v163[v167[10]];
        *&v170 = *&v163[v167[9]];
        *(&v170 + 1) = v89;
        *&v171 = *&v163[v167[11]];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v173 = v90;
        *(&v171 + 1) = v84;
        v172 = 0;
        v174 = 1;
        v91 = v154 | (v153 << 32);
        v80 = v163;

        sub_1AF825824(&v168, v145, v91);
        sub_1AFD53C4C(v157, &unk_1ED728E00, v152, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v83 + 72));
      }

      sub_1AFD53C4C(v80, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
      *v164 = 1;
      v46 = v167;
      v48 = v160;
      v47 = v161;
      v51 = v162;
      v50 = v159;
LABEL_9:
      if (++v52 == v166)
      {
        goto LABEL_4;
      }
    }

    sub_1AF616568(v181, v180);
    sub_1AF441194(v180, &v168);
    sub_1AF5C5358(0, &qword_1ED72FFF0);
    if (swift_dynamicCast())
    {
      (*v158)(v47, 0, 1, v203);
      sub_1AFD53F80(v47, v48, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v57 = *(v54 + 32);
      MEMORY[0x1B271ACB0](*(v57 + 16));
      v58 = *(v57 + 16);
      if (v58)
      {
        v59 = v57 + 40;
        do
        {

          sub_1AFDFD038();

          v59 += 16;
          --v58;
        }

        while (v58);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v54 + 40)]);
      v60 = *v54;
      MEMORY[0x1B271ACB0](*(*v54 + 16));
      v61 = *(v60 + 16);
      if (v61)
      {
        v62 = (v60 + 48);
        do
        {
          v63 = *(v62 - 2);
          v64 = *v62;
          v62 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v63);
          sub_1AF444224(v64);
          v65 = sub_1AFAA02E0(v63);
          MEMORY[0x1B271ACB0](v65);
          v200 = v177;
          v201 = v178;
          v202 = v179;
          v198 = v175;
          v199 = v176;
          v66 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v66);
          sub_1AF443F24(v63);
          sub_1AF444AF4(v64);
          --v61;
        }

        while (v61);
      }

      v195 = v170;
      v196 = v171;
      v197 = v172;
      v193 = v168;
      v194 = v169;
      v67 = sub_1AFDFF2E8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
      v48 = v160;
      v68 = &v160[*(v203 + 36)];
      if (v68[8])
      {
        result = sub_1AFD53C4C(v160, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        v47 = v161;
        v51 = v162;
      }

      else
      {
        v51 = v162;
        if (v67 == *v68)
        {
          v92 = v149;
          sub_1AFD53C4C(v149, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
          result = sub_1AFD53F80(v48, v92, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        }

        else
        {
          result = sub_1AFD53C4C(v160, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        }

        v47 = v161;
      }

      v50 = v159;
      *v164 = 1;
      v46 = v167;
      goto LABEL_9;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
    (*v158)(v47, 1, 1, v203);
    v55 = sub_1AFD54624;
    v56 = v47;
    goto LABEL_8;
  }

  return result;
}

uint64_t (*sub_1AFD2D80C(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4))(uint64_t)
{
  v164 = a4;
  v156 = a3;
  sub_1AFD54504();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v158 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v161 = (&v140 - v11);
  sub_1AFD53F14(0, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v155 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v159 = (&v140 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v157 = &v140 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v160 = &v140 - v25;
  sub_1AFD54594();
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v162 = &v140 - v32;
  sub_1AFD53F14(0, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
  v167 = v33;
  v34 = *(v33 - 1);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v140 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v163 = &v140 - v40;
  v41 = a1[1];
  v42 = v166;
  v147 = sub_1AF706090(v41, a1);
  v151 = v41;
  result = sub_1AF706AB0(v41, a1);
  v146 = result;
  v140 = v42;
  v44 = a1[11];
  v148 = a2;
  v203 = v13;
  v143 = v44;
  if (!v44)
  {
    v162 = v29;
    v163 = v37;
    v165 = a2 + 32;
    v93 = a1[6];
    v144 = a1[7];
    v160 = (v14 + 56);
    v161 = (v34 + 56);
    v94 = v167;
    v95 = v158;
    v141 = v14;
    do
    {
LABEL_40:
      if (v93 == v144)
      {
        return result;
      }

      v96 = v93++;
      result = type metadata accessor for SimpleScript(0);
      v152 = result;
      v97 = *(result - 1);
      v166 = *(a2 + 16);
    }

    while (!v166);
    v145 = v93;
    v98 = v96;
    v99 = 0;
    v100 = v147 + *(v97 + 72) * v98;
    v149 = v146 + *(v14 + 72) * v98;
    v150 = v98;
    v101 = v159;
    v102 = v162;
    while (1)
    {
      sub_1AF85ABE8(v165 + 48 * v99, v181);
      if (v182)
      {
        break;
      }

      sub_1AF616568(v181, v180);
      sub_1AF441194(v180, &v168);
      sub_1AF5C5358(0, &qword_1ED72FFF0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
        (*v161)(v102, 1, 1, v94);
        v103 = sub_1AFD54594;
        v104 = v102;
LABEL_44:
        result = sub_1AFD53198(v104, v103);
        goto LABEL_45;
      }

      (*v161)(v102, 0, 1, v94);
      sub_1AFD53F80(v102, v163, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v117 = *(v100 + 24);
      MEMORY[0x1B271ACB0](*(v117 + 16));
      v118 = *(v117 + 16);
      if (v118)
      {
        v119 = v117 + 40;
        do
        {

          sub_1AFDFD038();

          v119 += 16;
          --v118;
        }

        while (v118);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v100 + 56)]);
      v120 = *v100;
      MEMORY[0x1B271ACB0](*(*v100 + 16));
      v121 = *(v120 + 16);
      if (v121)
      {
        v122 = (v120 + 48);
        do
        {
          v123 = *(v122 - 2);
          v124 = *v122;
          v122 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v123);
          sub_1AF444224(v124);
          v125 = sub_1AFAA02E0(v123);
          MEMORY[0x1B271ACB0](v125);
          v190 = v177;
          v191 = v178;
          v192 = v179;
          v188 = v175;
          v189 = v176;
          v126 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v126);
          sub_1AF443F24(v123);
          sub_1AF444AF4(v124);
          --v121;
        }

        while (v121);
      }

      v185 = v170;
      v186 = v171;
      v187 = v172;
      v183 = v168;
      v184 = v169;
      v127 = sub_1AFDFF2E8();
      v128 = v163;
      v129 = &v163[*(v203 + 36)];
      v130 = v156;
      if ((v129[8] & 1) == 0 && v127 == *v129)
      {
        os_unfair_lock_lock(*(v156 + 72));
        v131 = v155;
        sub_1AFD53D18(v128, v155, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v100, v131, type metadata accessor for SimpleScript);
        v132 = *v100;
        v133 = v151;
        v134 = *(v151 + 16);

        if (*(v133 + 184))
        {
LABEL_74:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        v157 = *(*(v133 + 168) + 4 * v150);
        v154 = *(*(v134 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v157 + 8);

        *(&v169 + 1) = v203;
        v135 = sub_1AF585714(&v168);
        v153 = type metadata accessor for SimpleScript;
        sub_1AFD53D18(v131, v135, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        v136 = *&v163[v167[10]];
        *&v170 = *&v163[v167[9]];
        *(&v170 + 1) = v136;
        *&v171 = *&v163[v167[11]];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v173 = v137;
        *(&v171 + 1) = v132;
        v172 = 0;
        v174 = 1;
        v138 = v157 | (v154 << 32);
        v128 = v163;

        sub_1AF825824(&v168, v152, v138);
        sub_1AFD53C4C(v155, &unk_1ED728DE0, v153, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v130 + 72));
      }

      sub_1AFD53C4C(v128, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
      *v164 = 1;
      v94 = v167;
      v95 = v158;
      v101 = v159;
      v102 = v162;
LABEL_45:
      if (++v99 == v166)
      {
        a2 = v148;
        v14 = v141;
        v93 = v145;
        goto LABEL_40;
      }
    }

    sub_1AF616568(v181, v180);
    sub_1AF441194(v180, &v168);
    sub_1AF5C5358(0, &qword_1ED72FFF0);
    if (swift_dynamicCast())
    {
      (*v160)(v95, 0, 1, v203);
      sub_1AFD53F80(v95, v101, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v105 = *(v100 + 24);
      MEMORY[0x1B271ACB0](*(v105 + 16));
      v106 = *(v105 + 16);
      if (v106)
      {
        v107 = v105 + 40;
        do
        {

          sub_1AFDFD038();

          v107 += 16;
          --v106;
        }

        while (v106);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v100 + 56)]);
      v108 = *v100;
      MEMORY[0x1B271ACB0](*(*v100 + 16));
      v109 = *(v108 + 16);
      if (v109)
      {
        v110 = (v108 + 48);
        do
        {
          v111 = *(v110 - 2);
          v112 = *v110;
          v110 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v111);
          sub_1AF444224(v112);
          v113 = sub_1AFAA02E0(v111);
          MEMORY[0x1B271ACB0](v113);
          v200 = v177;
          v201 = v178;
          v202 = v179;
          v198 = v175;
          v199 = v176;
          v114 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v114);
          sub_1AF443F24(v111);
          sub_1AF444AF4(v112);
          --v109;
        }

        while (v109);
      }

      v195 = v170;
      v196 = v171;
      v197 = v172;
      v193 = v168;
      v194 = v169;
      v115 = sub_1AFDFF2E8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
      v101 = v159;
      v116 = v159 + *(v203 + 36);
      if (v116[8])
      {
        result = sub_1AFD53C4C(v159, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        v95 = v158;
      }

      else
      {
        v95 = v158;
        if (v115 == *v116)
        {
          v139 = v149;
          sub_1AFD53C4C(v149, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
          result = sub_1AFD53F80(v101, v139, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        }

        else
        {
          result = sub_1AFD53C4C(v159, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        }
      }

      v102 = v162;
      *v164 = 1;
      v94 = v167;
      goto LABEL_45;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
    (*v160)(v95, 1, 1, v203);
    v103 = sub_1AFD54504;
    v104 = v95;
    goto LABEL_44;
  }

  v45 = a1[13];
  v46 = v167;
  v48 = v160;
  v47 = v161;
  v144 = v45;
  if (v45)
  {
    result = type metadata accessor for SimpleScript(0);
    v155 = 0;
    v145 = result;
    v49 = *(result - 1);
    v165 = a2 + 32;
    v142 = *(v49 + 72);
    v50 = (v34 + 56);
    v158 = (v14 + 56);
    v141 = *(v14 + 72);
    v159 = (v34 + 56);
    while (1)
    {
      v51 = v162;
      v166 = *(a2 + 16);
      if (v166)
      {
        break;
      }

LABEL_4:
      ++v155;
      a2 = v148;
      if (v155 == v144)
      {
        return result;
      }
    }

    v52 = 0;
    v53 = *(v143 + 8 * v155);
    v54 = v147 + v142 * v155;
    v149 = v146 + v141 * v155;
    v150 = v53;
    while (1)
    {
      sub_1AF85ABE8(v165 + 48 * v52, v181);
      if (v182)
      {
        break;
      }

      sub_1AF616568(v181, v180);
      sub_1AF441194(v180, &v168);
      sub_1AF5C5358(0, &qword_1ED72FFF0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
        (*v50)(v51, 1, 1, v46);
        v55 = sub_1AFD54594;
        v56 = v51;
LABEL_8:
        result = sub_1AFD53198(v56, v55);
        goto LABEL_9;
      }

      (*v50)(v51, 0, 1, v46);
      sub_1AFD53F80(v51, v163, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v69 = *(v54 + 24);
      MEMORY[0x1B271ACB0](*(v69 + 16));
      v70 = *(v69 + 16);
      if (v70)
      {
        v71 = v69 + 40;
        do
        {

          sub_1AFDFD038();

          v71 += 16;
          --v70;
        }

        while (v70);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v54 + 56)]);
      v72 = *v54;
      MEMORY[0x1B271ACB0](*(*v54 + 16));
      v73 = *(v72 + 16);
      if (v73)
      {
        v74 = (v72 + 48);
        do
        {
          v75 = *(v74 - 2);
          v76 = *v74;
          v74 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v75);
          sub_1AF444224(v76);
          v77 = sub_1AFAA02E0(v75);
          MEMORY[0x1B271ACB0](v77);
          v190 = v177;
          v191 = v178;
          v192 = v179;
          v188 = v175;
          v189 = v176;
          v78 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v78);
          sub_1AF443F24(v75);
          sub_1AF444AF4(v76);
          --v73;
        }

        while (v73);
      }

      v185 = v170;
      v186 = v171;
      v187 = v172;
      v183 = v168;
      v184 = v169;
      v79 = sub_1AFDFF2E8();
      v80 = v163;
      v81 = &v163[*(v203 + 36)];
      v82 = v157;
      if ((v81[8] & 1) == 0 && v79 == *v81)
      {
        v83 = v156;
        os_unfair_lock_lock(*(v156 + 72));
        sub_1AFD53D18(v80, v82, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v54, v82, type metadata accessor for SimpleScript);
        v84 = *v54;
        v85 = v151;
        v86 = *(v151 + 16);

        if (*(v85 + 184))
        {
          goto LABEL_74;
        }

        v87 = *(*(v85 + 168) + 4 * v150);
        v153 = *(*(v86 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v87 + 8);
        v154 = v87;

        *(&v169 + 1) = v203;
        v88 = sub_1AF585714(&v168);
        v152 = type metadata accessor for SimpleScript;
        sub_1AFD53D18(v82, v88, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        v89 = *&v163[v167[10]];
        *&v170 = *&v163[v167[9]];
        *(&v170 + 1) = v89;
        *&v171 = *&v163[v167[11]];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v173 = v90;
        *(&v171 + 1) = v84;
        v172 = 0;
        v174 = 1;
        v91 = v154 | (v153 << 32);
        v80 = v163;

        sub_1AF825824(&v168, v145, v91);
        sub_1AFD53C4C(v157, &unk_1ED728DE0, v152, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v83 + 72));
      }

      sub_1AFD53C4C(v80, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
      *v164 = 1;
      v46 = v167;
      v48 = v160;
      v47 = v161;
      v51 = v162;
      v50 = v159;
LABEL_9:
      if (++v52 == v166)
      {
        goto LABEL_4;
      }
    }

    sub_1AF616568(v181, v180);
    sub_1AF441194(v180, &v168);
    sub_1AF5C5358(0, &qword_1ED72FFF0);
    if (swift_dynamicCast())
    {
      (*v158)(v47, 0, 1, v203);
      sub_1AFD53F80(v47, v48, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v57 = *(v54 + 24);
      MEMORY[0x1B271ACB0](*(v57 + 16));
      v58 = *(v57 + 16);
      if (v58)
      {
        v59 = v57 + 40;
        do
        {

          sub_1AFDFD038();

          v59 += 16;
          --v58;
        }

        while (v58);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v54 + 56)]);
      v60 = *v54;
      MEMORY[0x1B271ACB0](*(*v54 + 16));
      v61 = *(v60 + 16);
      if (v61)
      {
        v62 = (v60 + 48);
        do
        {
          v63 = *(v62 - 2);
          v64 = *v62;
          v62 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v63);
          sub_1AF444224(v64);
          v65 = sub_1AFAA02E0(v63);
          MEMORY[0x1B271ACB0](v65);
          v200 = v177;
          v201 = v178;
          v202 = v179;
          v198 = v175;
          v199 = v176;
          v66 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v66);
          sub_1AF443F24(v63);
          sub_1AF444AF4(v64);
          --v61;
        }

        while (v61);
      }

      v195 = v170;
      v196 = v171;
      v197 = v172;
      v193 = v168;
      v194 = v169;
      v67 = sub_1AFDFF2E8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
      v48 = v160;
      v68 = &v160[*(v203 + 36)];
      if (v68[8])
      {
        result = sub_1AFD53C4C(v160, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        v47 = v161;
        v51 = v162;
      }

      else
      {
        v51 = v162;
        if (v67 == *v68)
        {
          v92 = v149;
          sub_1AFD53C4C(v149, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
          result = sub_1AFD53F80(v48, v92, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        }

        else
        {
          result = sub_1AFD53C4C(v160, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        }

        v47 = v161;
      }

      v50 = v159;
      *v164 = 1;
      v46 = v167;
      goto LABEL_9;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
    (*v158)(v47, 1, 1, v203);
    v55 = sub_1AFD54504;
    v56 = v47;
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1AFD2EFAC(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v140 = a4;
  v132 = a3;
  sub_1AFD54474();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v122 = &v115 - v12;
  sub_1AFD53F14(0, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
  v164 = v13;
  v118 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v115 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v131 = (&v115 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v137 = &v115 - v26;
  sub_1AF87549C();
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v130 = (&v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30, v31);
  v139 = &v115 - v32;
  sub_1AFD53F14(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
  v143 = v33;
  v34 = *(v33 - 1);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v136 = &v115 - v40;
  v41 = a1[1];
  v42 = v142;
  v121 = sub_1AF706D00(v41, a1);
  v127 = v41;
  result = sub_1AF7069F4(v41, a1);
  v120 = result;
  v115 = v42;
  v44 = a1[11];
  v123 = a2;
  v117 = v44;
  if (!v44)
  {
    v136 = v37;
    v137 = v20;
    v129 = v16;
    v139 = (a2 + 32);
    v82 = a1[6];
    v119 = a1[7];
    v134 = (v118 + 56);
    v135 = (v34 + 56);
    v83 = v164;
    v84 = v143;
    v138 = v9;
    v85 = v130;
    do
    {
LABEL_31:
      if (v82 == v119)
      {
        return result;
      }

      v86 = v82++;
      result = type metadata accessor for MetalFunctionScript(0);
      v133 = result;
      v87 = *(result - 8);
      v141 = *(a2 + 16);
    }

    while (!v141);
    v122 = v82;
    v88 = 0;
    v142 = v121 + *(v87 + 72) * v86;
    v124 = v120 + *(v118 + 72) * v86;
    v125 = v86;
    v89 = v133;
    while (1)
    {
      sub_1AF85ABE8(&v139[48 * v88], v152);
      if (v153)
      {
        sub_1AF616568(v152, v151);
        sub_1AF441194(v151, &v144);
        sub_1AF5C5358(0, &qword_1ED72FFF0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v151);
          (*v134)(v9, 1, 1, v83);
          result = sub_1AFD53198(v9, sub_1AFD54474);
          goto LABEL_36;
        }

        (*v134)(v9, 0, 1, v83);
        sub_1AFD53F80(v9, v137, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
        sub_1AFDFF308();
        v90 = v142;
        sub_1AFDFD038();
        v91 = *(v90 + *(v89 + 32));
        MEMORY[0x1B271ACB0](*(v91 + 16));
        v92 = *(v91 + 16);
        if (v92)
        {
          v93 = v91 + 40;
          do
          {

            sub_1AFDFD038();

            v93 += 16;
            --v92;
          }

          while (v92);
        }

        sub_1AFDFD038();

        v161 = v146;
        v162 = v147;
        v163 = v148;
        v159 = v144;
        v160 = v145;
        v94 = sub_1AFDFF2E8();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v151);
        v83 = v164;
        v9 = v138;
        v95 = &v137[*(v164 + 36)];
        if ((v95[8] & 1) != 0 || v94 != *v95)
        {
          result = sub_1AFD53C4C(v137, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
        }

        else
        {
          v96 = v137;
          v97 = v124;
          sub_1AFD53C4C(v124, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
          v98 = v96;
          v89 = v133;
          v85 = v130;
          v83 = v164;
          result = sub_1AFD53F80(v98, v97, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
        }
      }

      else
      {
        sub_1AF616568(v152, v151);
        sub_1AF441194(v151, &v144);
        sub_1AF5C5358(0, &qword_1ED72FFF0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v151);
          (*v135)(v85, 1, 1, v84);
          result = sub_1AFD53198(v85, sub_1AF87549C);
          goto LABEL_36;
        }

        (*v135)(v85, 0, 1, v84);
        sub_1AFD53F80(v85, v136, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
        sub_1AFDFF308();
        v99 = v142;
        sub_1AFDFD038();
        v100 = *(v99 + *(v89 + 32));
        MEMORY[0x1B271ACB0](*(v100 + 16));
        v101 = *(v100 + 16);
        if (v101)
        {
          v102 = v100 + 40;
          do
          {

            sub_1AFDFD038();

            v102 += 16;
            --v101;
          }

          while (v101);
        }

        sub_1AFDFD038();

        v156 = v146;
        v157 = v147;
        v158 = v148;
        v154 = v144;
        v155 = v145;
        v103 = sub_1AFDFF2E8();
        v83 = v164;
        v104 = v136;
        v105 = &v136[*(v164 + 36)];
        v9 = v138;
        if ((v105[8] & 1) == 0 && v103 == *v105)
        {
          v106 = v132;
          os_unfair_lock_lock(*(v132 + 72));
          v107 = v129;
          sub_1AFD53D18(v104, v129, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
          sub_1AFD54864(v142, v107, type metadata accessor for MetalFunctionScript);
          v108 = v127;

          v110 = v143;
          if (*(v108 + 184))
          {
LABEL_57:
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v128 = *(*(v108 + 168) + 4 * v125);
          v126 = *(*(v109 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v128 + 8);

          *(&v145 + 1) = v83;
          v111 = sub_1AF585714(&v144);
          v131 = type metadata accessor for MetalFunctionScript;
          sub_1AFD53D18(v107, v111, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
          v112 = *(v104 + v110[10]);
          *&v146 = *(v104 + v110[9]);
          *(&v146 + 1) = v112;
          *&v147 = *(v104 + v110[11]);
          sub_1AFD55360(0, &qword_1EB644410, &type metadata for CodableVoid, MEMORY[0x1E69E6720]);
          v149 = v113;
          BYTE8(v147) = 0;
          v150 = 1;
          v114 = v128 | (v126 << 32);

          v89 = v133;
          sub_1AF825824(&v144, v133, v114);
          v83 = v164;
          sub_1AFD53C4C(v129, &unk_1ED728E20, v131, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
          os_unfair_lock_unlock(*(v106 + 72));
          v9 = v138;
          v85 = v130;
        }

        sub_1AFD53C4C(v104, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
        result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v151);
      }

      *v140 = 1;
      v84 = v143;
LABEL_36:
      if (++v88 == v141)
      {
        v82 = v122;
        a2 = v123;
        goto LABEL_31;
      }
    }
  }

  v45 = a1[13];
  v46 = v164;
  v47 = v143;
  v48 = v122;
  v119 = v45;
  if (v45)
  {
    result = type metadata accessor for MetalFunctionScript(0);
    v133 = 0;
    v138 = result;
    v49 = *(result - 8);
    v141 = a2 + 32;
    v116 = *(v49 + 72);
    v134 = (v118 + 56);
    v135 = (v34 + 56);
    v118 = *(v118 + 72);
    while (1)
    {
      v50 = *(a2 + 16);
      v51 = v139;
      v142 = v50;
      if (v50)
      {
        break;
      }

LABEL_4:
      ++v133;
      a2 = v123;
      if (v133 == v119)
      {
        return result;
      }
    }

    v52 = 0;
    v53 = *(v117 + 8 * v133);
    v54 = v121 + v116 * v133;
    v125 = v120 + v118 * v133;
    v126 = v53;
    v124 = v54;
    while (1)
    {
      sub_1AF85ABE8(v141 + 48 * v52, v152);
      if (v153)
      {
        sub_1AF616568(v152, v151);
        sub_1AF441194(v151, &v144);
        sub_1AF5C5358(0, &qword_1ED72FFF0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v151);
          (*v134)(v48, 1, 1, v46);
          result = sub_1AFD53198(v48, sub_1AFD54474);
          goto LABEL_9;
        }

        (*v134)(v48, 0, 1, v46);
        sub_1AFD53F80(v48, v137, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
        sub_1AFDFF308();
        sub_1AFDFD038();
        v55 = *(v54 + *(v138 + 8));
        MEMORY[0x1B271ACB0](*(v55 + 16));
        v56 = *(v55 + 16);
        if (v56)
        {
          v57 = v55 + 40;
          do
          {

            sub_1AFDFD038();

            v57 += 16;
            --v56;
          }

          while (v56);
        }

        sub_1AFDFD038();

        v161 = v146;
        v162 = v147;
        v163 = v148;
        v159 = v144;
        v160 = v145;
        v58 = sub_1AFDFF2E8();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v151);
        v46 = v164;
        v59 = &v137[*(v164 + 36)];
        v51 = v139;
        if ((v59[8] & 1) != 0 || v58 != *v59)
        {
          result = sub_1AFD53C4C(v137, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
        }

        else
        {
          v60 = v137;
          v61 = v48;
          v62 = v125;
          sub_1AFD53C4C(v125, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
          v63 = v60;
          v51 = v139;
          v64 = v62;
          v48 = v61;
          v54 = v124;
          v46 = v164;
          result = sub_1AFD53F80(v63, v64, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
        }
      }

      else
      {
        sub_1AF616568(v152, v151);
        sub_1AF441194(v151, &v144);
        sub_1AF5C5358(0, &qword_1ED72FFF0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v151);
          (*v135)(v51, 1, 1, v47);
          result = sub_1AFD53198(v51, sub_1AF87549C);
          goto LABEL_9;
        }

        (*v135)(v51, 0, 1, v47);
        sub_1AFD53F80(v51, v136, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
        sub_1AFDFF308();
        sub_1AFDFD038();
        v65 = *(v54 + *(v138 + 8));
        MEMORY[0x1B271ACB0](*(v65 + 16));
        v66 = *(v65 + 16);
        if (v66)
        {
          v67 = v65 + 40;
          do
          {

            sub_1AFDFD038();

            v67 += 16;
            --v66;
          }

          while (v66);
        }

        sub_1AFDFD038();

        v156 = v146;
        v157 = v147;
        v158 = v148;
        v154 = v144;
        v155 = v145;
        v68 = sub_1AFDFF2E8();
        v46 = v164;
        v69 = v136;
        v70 = &v136[*(v164 + 36)];
        v51 = v139;
        if ((v70[8] & 1) == 0 && v68 == *v70)
        {
          os_unfair_lock_lock(*(v132 + 72));
          v71 = v131;
          sub_1AFD53D18(v69, v131, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
          sub_1AFD54864(v54, v71, type metadata accessor for MetalFunctionScript);
          v72 = v127;

          v74 = v69;
          v75 = v143;
          if (*(v72 + 184))
          {
            goto LABEL_57;
          }

          v76 = *(*(v72 + 168) + 4 * v126);
          v128 = *(*(v73 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v76 + 8);
          v129 = v76;

          *(&v145 + 1) = v46;
          v77 = sub_1AF585714(&v144);
          v130 = type metadata accessor for MetalFunctionScript;
          sub_1AFD53D18(v71, v77, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
          v78 = *(v74 + v75[10]);
          *&v146 = *(v74 + v75[9]);
          *(&v146 + 1) = v78;
          *&v147 = *(v74 + v75[11]);
          sub_1AFD55360(0, &qword_1EB644410, &type metadata for CodableVoid, MEMORY[0x1E69E6720]);
          v149 = v79;
          BYTE8(v147) = 0;
          v150 = 1;
          v80 = v129 | (v128 << 32);

          v81 = v132;
          sub_1AF825824(&v144, v138, v80);
          v46 = v164;
          sub_1AFD53C4C(v131, &unk_1ED728E20, v130, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
          os_unfair_lock_unlock(*(v81 + 72));
          v48 = v122;
          v51 = v139;
          v69 = v74;
        }

        sub_1AFD53C4C(v69, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
        result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v151);
      }

      *v140 = 1;
      v47 = v143;
LABEL_9:
      if (++v52 == v142)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_1AFD3044C(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v140 = a4;
  v132 = a3;
  sub_1AFD54354();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v137 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v138 = &v113 - v11;
  sub_1AFD53F14(0, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
  v13 = v12;
  v117 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v113 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v129 = &v113 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v136 = &v113 - v26;
  sub_1AFD543E4();
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v131 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v130 = &v113 - v32;
  sub_1AFD53F14(0, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
  v141 = v33;
  v34 = *(v33 - 1);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v113 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v139 = &v113 - v40;
  v41 = a1[1];
  v42 = v143;
  v120 = sub_1AF705FA0(v41, a1);
  v124 = v41;
  result = sub_1AF706938(v41, a1);
  v119 = result;
  v44 = a1[11];
  v121 = a2;
  v164 = v13;
  v116 = v44;
  v133 = v42;
  if (!v44)
  {
    v138 = v37;
    v128 = v16;
    v142 = a2 + 32;
    v78 = a1[6];
    v118 = a1[7];
    v135 = (v34 + 56);
    v136 = v20;
    v134 = (v117 + 56);
    v79 = v141;
    v80 = v137;
    v81 = v131;
    while (1)
    {
      do
      {
        if (v78 == v118)
        {
          return result;
        }

        v82 = v78++;
        result = type metadata accessor for ShaderScript(0);
        v139 = result;
        v83 = *(result - 8);
        v143 = *(a2 + 16);
      }

      while (!v143);
      v84 = 0;
      v85 = v82;
      v86 = v120 + *(v83 + 72) * v82;
      v87 = *(v117 + 72);
      v125 = v85;
      v122 = v78;
      v123 = v119 + v87 * v85;
      do
      {
        sub_1AF85ABE8(v142 + 48 * v84, v152);
        if (v153)
        {
          sub_1AF616568(v152, v151);
          sub_1AF441194(v151, &v144);
          sub_1AF5C5358(0, &qword_1ED72FFF0);
          if ((swift_dynamicCast() & 1) == 0)
          {
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v151);
            (*v134)(v80, 1, 1, v164);
            v88 = sub_1AFD54354;
            v89 = v80;
            goto LABEL_39;
          }

          (*v134)(v80, 0, 1, v164);
          sub_1AFD53F80(v80, v136, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
          sub_1AFDFF308();
          sub_1AFDFD038();
          v90 = *(v86 + *(v139 + 32));
          MEMORY[0x1B271ACB0](*(v90 + 16));
          v91 = *(v90 + 16);
          if (v91)
          {
            v92 = v90 + 40;
            do
            {

              sub_1AFDFD038();

              v92 += 16;
              --v91;
            }

            while (v91);
          }

          sub_1AFDFD038();

          v161 = v146;
          v162 = v147;
          v163 = v148;
          v159 = v144;
          v160 = v145;
          v93 = sub_1AFDFF2E8();
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v151);
          v80 = v137;
          v94 = &v136[*(v164 + 36)];
          if ((v94[8] & 1) != 0 || v93 != *v94)
          {
            result = sub_1AFD53C4C(v136, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
          }

          else
          {
            v95 = v136;
            v96 = v86;
            v97 = v123;
            sub_1AFD53C4C(v123, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
            v98 = v95;
            v81 = v131;
            v99 = v97;
            v86 = v96;
            result = sub_1AFD53F80(v98, v99, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
          }

          v79 = v141;
          *v140 = 1;
        }

        else
        {
          sub_1AF616568(v152, v151);
          sub_1AF441194(v151, &v144);
          sub_1AF5C5358(0, &qword_1ED72FFF0);
          if ((swift_dynamicCast() & 1) == 0)
          {
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v151);
            (*v135)(v81, 1, 1, v79);
            v88 = sub_1AFD543E4;
            v89 = v81;
LABEL_39:
            result = sub_1AFD53198(v89, v88);
            goto LABEL_40;
          }

          (*v135)(v81, 0, 1, v79);
          sub_1AFD53F80(v81, v138, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
          sub_1AFDFF308();
          sub_1AFDFD038();
          v100 = *(v86 + *(v139 + 32));
          MEMORY[0x1B271ACB0](*(v100 + 16));
          v101 = *(v100 + 16);
          if (v101)
          {
            v102 = v100 + 40;
            do
            {

              sub_1AFDFD038();

              v102 += 16;
              --v101;
            }

            while (v101);
          }

          sub_1AFDFD038();

          v156 = v146;
          v157 = v147;
          v158 = v148;
          v154 = v144;
          v155 = v145;
          v103 = sub_1AFDFF2E8();
          v80 = v137;
          v104 = v138;
          v105 = &v138[*(v164 + 36)];
          if ((v105[8] & 1) != 0 || v103 != *v105)
          {
            v79 = v141;
          }

          else
          {
            os_unfair_lock_lock(*(v132 + 72));
            v106 = v128;
            sub_1AFD53D18(v104, v128, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
            sub_1AFD54864(v86, v106, type metadata accessor for ShaderScript);
            v107 = v133;
            sub_1AFAAADB4(0, 1uLL, &v144);
            if (v107)
            {

              v129 = 0;
              v130 = 0;
              v133 = 0;
            }

            else
            {
              v133 = 0;
              v129 = v147;
              v130 = *(&v146 + 1);
            }

            v127 = sub_1AF6496EC(v125);

            *(&v145 + 1) = v164;
            v108 = sub_1AF585714(&v144);
            v126 = type metadata accessor for ShaderScript;
            sub_1AFD53D18(v106, v108, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
            v109 = v141;
            v104 = v138;
            v110 = *&v138[v141[10]];
            *&v146 = *&v138[v141[9]];
            *(&v146 + 1) = v110;
            *&v147 = *&v138[v141[11]];
            sub_1AFD55360(0, &qword_1EB644440, &type metadata for ShaderScriptRuntime, MEMORY[0x1E69E6720]);
            v149 = v111;
            *(&v147 + 1) = v130;
            v148 = v129;
            v150 = 1;

            v112 = v132;
            sub_1AF825824(&v144, v139, v127);
            v79 = v109;
            sub_1AFD53C4C(v128, &unk_1ED728DF0, v126, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
            os_unfair_lock_unlock(*(v112 + 72));
            v80 = v137;
            v81 = v131;
          }

          sub_1AFD53C4C(v104, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
          result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v151);
          *v140 = 1;
        }

LABEL_40:
        v84 = v84 + 1;
      }

      while (v84 != v143);
      a2 = v121;
      v78 = v122;
    }
  }

  v45 = v117;
  v118 = a1[13];
  if (v118)
  {
    result = type metadata accessor for ShaderScript(0);
    v131 = 0;
    v137 = result;
    v46 = *(result - 8);
    v142 = a2 + 32;
    v115 = *(v46 + 72);
    v114 = *(v45 + 72);
    v134 = (v45 + 56);
    v135 = (v34 + 56);
    v47 = v141;
    v48 = v138;
    v49 = v130;
    while (1)
    {
      v143 = *(a2 + 16);
      if (v143)
      {
        break;
      }

LABEL_4:
      ++v131;
      a2 = v121;
      if (v131 == v118)
      {
        return result;
      }
    }

    v50 = 0;
    v51 = *(v116 + 8 * v131);
    v52 = v120 + v115 * v131;
    v122 = v119 + v114 * v131;
    v123 = v51;
    while (1)
    {
      sub_1AF85ABE8(v142 + 48 * v50, v152);
      if (v153)
      {
        sub_1AF616568(v152, v151);
        sub_1AF441194(v151, &v144);
        sub_1AF5C5358(0, &qword_1ED72FFF0);
        if (swift_dynamicCast())
        {
          (*v134)(v48, 0, 1, v164);
          sub_1AFD53F80(v48, v136, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
          sub_1AFDFF308();
          sub_1AFDFD038();
          v55 = *(v52 + *(v137 + 32));
          MEMORY[0x1B271ACB0](*(v55 + 16));
          v56 = *(v55 + 16);
          if (v56)
          {
            v57 = v55 + 40;
            do
            {

              sub_1AFDFD038();

              v57 += 16;
              --v56;
            }

            while (v56);
          }

          sub_1AFDFD038();

          v161 = v146;
          v162 = v147;
          v163 = v148;
          v159 = v144;
          v160 = v145;
          v58 = sub_1AFDFF2E8();
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v151);
          v59 = &v136[*(v164 + 36)];
          v48 = v138;
          if ((v59[8] & 1) != 0 || v58 != *v59)
          {
            result = sub_1AFD53C4C(v136, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
          }

          else
          {
            v60 = v136;
            v61 = v52;
            v62 = v122;
            sub_1AFD53C4C(v122, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
            v63 = v60;
            v49 = v130;
            v64 = v62;
            v52 = v61;
            result = sub_1AFD53F80(v63, v64, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
          }

          v47 = v141;
          *v140 = 1;
          goto LABEL_9;
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v151);
        (*v134)(v48, 1, 1, v164);
        v53 = sub_1AFD54354;
        v54 = v48;
      }

      else
      {
        sub_1AF616568(v152, v151);
        sub_1AF441194(v151, &v144);
        sub_1AF5C5358(0, &qword_1ED72FFF0);
        if (swift_dynamicCast())
        {
          (*v135)(v49, 0, 1, v47);
          sub_1AFD53F80(v49, v139, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
          sub_1AFDFF308();
          sub_1AFDFD038();
          v65 = *(v52 + *(v137 + 32));
          MEMORY[0x1B271ACB0](*(v65 + 16));
          v66 = *(v65 + 16);
          if (v66)
          {
            v67 = v65 + 40;
            do
            {

              sub_1AFDFD038();

              v67 += 16;
              --v66;
            }

            while (v66);
          }

          sub_1AFDFD038();

          v156 = v146;
          v157 = v147;
          v158 = v148;
          v154 = v144;
          v155 = v145;
          v68 = sub_1AFDFF2E8();
          v48 = v138;
          v69 = v139 + *(v164 + 36);
          if ((*(v69 + 8) & 1) != 0 || v68 != *v69)
          {
            v47 = v141;
          }

          else
          {
            os_unfair_lock_lock(*(v132 + 72));
            v70 = v129;
            sub_1AFD53D18(v139, v129, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
            sub_1AFD54864(v52, v70, type metadata accessor for ShaderScript);
            v71 = v133;
            sub_1AFAAADB4(0, 1uLL, &v144);
            if (v71)
            {

              v127 = 0;
              v128 = 0;
              v133 = 0;
            }

            else
            {
              v133 = 0;
              v127 = v147;
              v128 = *(&v146 + 1);
            }

            v126 = sub_1AF6496EC(v123);

            *(&v145 + 1) = v164;
            v72 = sub_1AF585714(&v144);
            v125 = type metadata accessor for ShaderScript;
            v73 = v129;
            sub_1AFD53D18(v129, v72, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
            v74 = v141;
            v75 = *(v139 + v141[10]);
            *&v146 = *(v139 + v141[9]);
            *(&v146 + 1) = v75;
            *&v147 = *(v139 + v141[11]);
            sub_1AFD55360(0, &qword_1EB644440, &type metadata for ShaderScriptRuntime, MEMORY[0x1E69E6720]);
            v149 = v76;
            *(&v147 + 1) = v128;
            v148 = v127;
            v150 = 1;

            v77 = v132;
            sub_1AF825824(&v144, v137, v126);
            v47 = v74;
            sub_1AFD53C4C(v73, &unk_1ED728DF0, v125, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
            os_unfair_lock_unlock(*(v77 + 72));
            v48 = v138;
            v49 = v130;
          }

          sub_1AFD53C4C(v139, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
          result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v151);
          *v140 = 1;
          goto LABEL_9;
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v151);
        (*v135)(v49, 1, 1, v47);
        v53 = sub_1AFD543E4;
        v54 = v49;
      }

      result = sub_1AFD53198(v54, v53);
LABEL_9:
      if (++v50 == v143)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_1AFD31938(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v136 = a4;
  v129 = a3;
  sub_1AFD54234();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v132 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v128 = &v109 - v11;
  sub_1AFD53F14(0, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
  v151 = v12;
  v114 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v126 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v109 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v127 = &v109 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v131 = &v109 - v24;
  sub_1AFD542C4();
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v109 - v31;
  sub_1AFD53F14(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
  v34 = v33;
  v35 = *(v33 - 1);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = &v109 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v138 = &v109 - v41;
  v42 = a1[1];
  v43 = v135;
  v118 = sub_1AF706C98(v42, a1);
  result = sub_1AF7067C0(v42, a1);
  v117 = result;
  v130 = v43;
  v45 = a1[11];
  v121 = a2;
  v137 = v34;
  v122 = v42;
  v113 = v45;
  if (!v45)
  {
    v128 = v18;
    v76 = a1[6];
    v115 = a1[7];
    v113 = a2 + 32;
    v135 = (v35 + 56);
    v134 = (v114 + 56);
    v77 = v136;
    v78 = v132;
    v133 = v38;
    v79 = v28;
    v131 = v28;
    do
    {
LABEL_31:
      if (v76 == v115)
      {
        return result;
      }

      v80 = v76++;
      result = type metadata accessor for ParticleInitScript(0);
      v123 = result;
      v81 = *(result - 8);
      v82 = *(v121 + 16);
    }

    while (!v82);
    v116 = v76;
    v138 = v118 + *(v81 + 72) * v80;
    v83 = *(v114 + 72);
    v120 = v80;
    v119 = v117 + v83 * v80;
    v84 = v113;
    while (1)
    {
      sub_1AF85ABE8(v84, &v149);
      if (v150)
      {
        break;
      }

      sub_1AF616568(&v149, v148);
      sub_1AF441194(v148, v139);
      sub_1AF5C5358(0, &qword_1ED72FFF0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v148);
        (*v135)(v79, 1, 1, v34);
        v85 = sub_1AFD542C4;
        v86 = v79;
LABEL_35:
        result = sub_1AFD53198(v86, v85);
        goto LABEL_36;
      }

      (*v135)(v79, 0, 1, v34);
      sub_1AFD53F80(v79, v38, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
      v92 = sub_1AFAA2868();
      v93 = &v38[*(v151 + 36)];
      if ((v93[8] & 1) == 0 && v92 == *v93)
      {
        os_unfair_lock_lock(*(v129 + 72));
        v94 = v126;
        sub_1AFD53D18(v38, v126, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v138, v94, type metadata accessor for ParticleInitScript);
        v95 = v130;
        sub_1AFAA2CD8(0, 1uLL, v139);
        if (v95)
        {

          v127 = 0;
          v125 = 0;
          v130 = 0;
        }

        else
        {
          v130 = 0;
          v127 = v142;
          v125 = v143;
        }

        v99 = v122;

        if (*(v99 + 184))
        {
LABEL_57:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        v101 = *(*(v99 + 168) + 4 * v120);
        v124 = *(*(v100 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v101 + 8);

        v140 = v151;
        v102 = sub_1AF585714(v139);
        v103 = v126;
        sub_1AFD53D18(v126, v102, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
        v104 = *&v38[v34[9]];
        v105 = *&v133[v34[10]];
        v141 = v104;
        v142 = v105;
        v143 = *&v133[v34[11]];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v146 = v106;
        v144 = v127;
        v145 = v125;
        v147 = 1;
        v107 = v101 | (v124 << 32);

        v38 = v133;

        v34 = v137;

        v108 = v129;
        sub_1AF825824(v139, v123, v107);
        sub_1AFD53C4C(v103, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v108 + 72));
        v77 = v136;
        v78 = v132;
        v79 = v131;
      }

      sub_1AFD53C4C(v38, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v148);
      *v77 = 1;
LABEL_36:
      v84 += 48;
      if (!--v82)
      {
        v76 = v116;
        goto LABEL_31;
      }
    }

    sub_1AF616568(&v149, v139);
    sub_1AF441194(v139, v148);
    sub_1AF5C5358(0, &qword_1ED72FFF0);
    if (swift_dynamicCast())
    {
      v87 = v151;
      (*v134)(v78, 0, 1, v151);
      v88 = v128;
      sub_1AFD53F80(v78, v128, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
      v89 = sub_1AFAA2868();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v139);
      v90 = v88 + *(v87 + 36);
      if (*(v90 + 8))
      {
        v91 = v88;
        goto LABEL_50;
      }

      if (v89 == *v90)
      {
        v96 = v34;
        v97 = v119;
        sub_1AFD53C4C(v119, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
        v98 = v97;
        v34 = v96;
        result = sub_1AFD53F80(v88, v98, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
      }

      else
      {
        v91 = v88;
LABEL_50:
        result = sub_1AFD53C4C(v91, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
      }

      v78 = v132;
      v79 = v131;
      v77 = v136;
      *v136 = 1;
      v38 = v133;
      goto LABEL_36;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v139);
    (*v134)(v78, 1, 1, v151);
    v85 = sub_1AFD54234;
    v86 = v78;
    goto LABEL_35;
  }

  v46 = v114;
  v115 = a1[13];
  if (v115)
  {
    result = type metadata accessor for ParticleInitScript(0);
    v132 = 0;
    v116 = result;
    v112 = *(*(result - 8) + 72);
    v111 = *(v46 + 72);
    v110 = a2 + 32;
    v134 = (v35 + 56);
    v133 = (v46 + 56);
    v47 = v136;
    v48 = v128;
    while (1)
    {
      v49 = *(a2 + 16);
      if (v49)
      {
        break;
      }

LABEL_4:
      ++v132;
      a2 = v121;
      if (v132 == v115)
      {
        return result;
      }
    }

    v120 = *(v113 + 8 * v132);
    v135 = (v118 + v112 * v132);
    v50 = v110;
    v119 = v117 + v111 * v132;
    while (1)
    {
      sub_1AF85ABE8(v50, &v149);
      if (v150)
      {
        break;
      }

      sub_1AF616568(&v149, v148);
      sub_1AF441194(v148, v139);
      sub_1AF5C5358(0, &qword_1ED72FFF0);
      v58 = v137;
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v148);
        (*v134)(v32, 1, 1, v58);
        v51 = sub_1AFD542C4;
        v52 = v32;
LABEL_8:
        result = sub_1AFD53198(v52, v51);
        goto LABEL_9;
      }

      (*v134)(v32, 0, 1, v58);
      v59 = v138;
      sub_1AFD53F80(v32, v138, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
      v60 = sub_1AFAA2868();
      v61 = v59 + *(v151 + 36);
      if ((*(v61 + 8) & 1) == 0 && v60 == *v61)
      {
        os_unfair_lock_lock(*(v129 + 72));
        v62 = v127;
        sub_1AFD53D18(v138, v127, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v135, v62, type metadata accessor for ParticleInitScript);
        v63 = v130;
        sub_1AFAA2CD8(0, 1uLL, v139);
        if (v63)
        {

          v126 = 0;
          v125 = 0;
        }

        else
        {
          v126 = v142;
          v125 = v143;
        }

        v67 = v122;
        v130 = 0;

        if (*(v67 + 184))
        {
          goto LABEL_57;
        }

        v69 = *(*(v67 + 168) + 4 * v120);
        v123 = *(*(v68 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v69 + 8);

        v140 = v151;
        v70 = sub_1AF585714(v139);
        v124 = type metadata accessor for ParticleInitScript;
        v71 = v127;
        sub_1AFD53D18(v127, v70, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
        v72 = *(v138 + v137[10]);
        v141 = *(v138 + v137[9]);
        v142 = v72;
        v143 = *(v138 + v137[11]);
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v146 = v73;
        v144 = v126;
        v145 = v125;
        v147 = 1;
        v74 = v69 | (v123 << 32);

        v75 = v129;
        sub_1AF825824(v139, v116, v74);
        sub_1AFD53C4C(v71, qword_1ED728E30, v124, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v75 + 72));
        v47 = v136;
        v48 = v128;
      }

      sub_1AFD53C4C(v138, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v148);
      *v47 = 1;
LABEL_9:
      v50 += 48;
      if (!--v49)
      {
        goto LABEL_4;
      }
    }

    sub_1AF616568(&v149, v139);
    sub_1AF441194(v139, v148);
    sub_1AF5C5358(0, &qword_1ED72FFF0);
    if (swift_dynamicCast())
    {
      v53 = v151;
      (*v133)(v48, 0, 1, v151);
      v54 = v131;
      sub_1AFD53F80(v48, v131, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
      v55 = sub_1AFAA2868();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v139);
      v56 = v54 + *(v53 + 36);
      if (*(v56 + 8))
      {
        v57 = v54;
        goto LABEL_23;
      }

      if (v55 == *v56)
      {
        v64 = v32;
        v65 = v119;
        sub_1AFD53C4C(v119, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
        v66 = v65;
        v32 = v64;
        v48 = v128;
        result = sub_1AFD53F80(v54, v66, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
      }

      else
      {
        v57 = v54;
LABEL_23:
        result = sub_1AFD53C4C(v57, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
      }

      v47 = v136;
      *v136 = 1;
      goto LABEL_9;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v139);
    (*v133)(v48, 1, 1, v151);
    v51 = sub_1AFD54234;
    v52 = v48;
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1AFD32D1C(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v136 = a4;
  v129 = a3;
  sub_1AFD54114();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v132 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v128 = &v109 - v11;
  sub_1AFD53F14(0, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
  v151 = v12;
  v114 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v126 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v109 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v127 = &v109 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v131 = &v109 - v24;
  sub_1AFD541A4();
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v109 - v31;
  sub_1AFD53F14(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
  v34 = v33;
  v35 = *(v33 - 1);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = &v109 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v138 = &v109 - v41;
  v42 = a1[1];
  v43 = v135;
  v118 = sub_1AF706C64(v42, a1);
  result = sub_1AF706704(v42, a1);
  v117 = result;
  v130 = v43;
  v45 = a1[11];
  v121 = a2;
  v137 = v34;
  v122 = v42;
  v113 = v45;
  if (!v45)
  {
    v128 = v18;
    v76 = a1[6];
    v115 = a1[7];
    v113 = a2 + 32;
    v135 = (v35 + 56);
    v134 = (v114 + 56);
    v77 = v136;
    v78 = v132;
    v133 = v38;
    v79 = v28;
    v131 = v28;
    do
    {
LABEL_31:
      if (v76 == v115)
      {
        return result;
      }

      v80 = v76++;
      result = type metadata accessor for ParticleUpdateScript(0);
      v123 = result;
      v81 = *(result - 8);
      v82 = *(v121 + 16);
    }

    while (!v82);
    v116 = v76;
    v138 = v118 + *(v81 + 72) * v80;
    v83 = *(v114 + 72);
    v120 = v80;
    v119 = v117 + v83 * v80;
    v84 = v113;
    while (1)
    {
      sub_1AF85ABE8(v84, &v149);
      if (v150)
      {
        break;
      }

      sub_1AF616568(&v149, v148);
      sub_1AF441194(v148, v139);
      sub_1AF5C5358(0, &qword_1ED72FFF0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v148);
        (*v135)(v79, 1, 1, v34);
        v85 = sub_1AFD541A4;
        v86 = v79;
LABEL_35:
        result = sub_1AFD53198(v86, v85);
        goto LABEL_36;
      }

      (*v135)(v79, 0, 1, v34);
      sub_1AFD53F80(v79, v38, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
      v92 = sub_1AFAA3818();
      v93 = &v38[*(v151 + 36)];
      if ((v93[8] & 1) == 0 && v92 == *v93)
      {
        os_unfair_lock_lock(*(v129 + 72));
        v94 = v126;
        sub_1AFD53D18(v38, v126, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v138, v94, type metadata accessor for ParticleUpdateScript);
        v95 = v130;
        sub_1AFAA3C54(0, 1uLL, v139);
        if (v95)
        {

          v127 = 0;
          v125 = 0;
          v130 = 0;
        }

        else
        {
          v130 = 0;
          v127 = v142;
          v125 = v143;
        }

        v99 = v122;

        if (*(v99 + 184))
        {
LABEL_57:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        v101 = *(*(v99 + 168) + 4 * v120);
        v124 = *(*(v100 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v101 + 8);

        v140 = v151;
        v102 = sub_1AF585714(v139);
        v103 = v126;
        sub_1AFD53D18(v126, v102, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
        v104 = *&v38[v34[9]];
        v105 = *&v133[v34[10]];
        v141 = v104;
        v142 = v105;
        v143 = *&v133[v34[11]];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v146 = v106;
        v144 = v127;
        v145 = v125;
        v147 = 1;
        v107 = v101 | (v124 << 32);

        v38 = v133;

        v34 = v137;

        v108 = v129;
        sub_1AF825824(v139, v123, v107);
        sub_1AFD53C4C(v103, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v108 + 72));
        v77 = v136;
        v78 = v132;
        v79 = v131;
      }

      sub_1AFD53C4C(v38, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v148);
      *v77 = 1;
LABEL_36:
      v84 += 48;
      if (!--v82)
      {
        v76 = v116;
        goto LABEL_31;
      }
    }

    sub_1AF616568(&v149, v139);
    sub_1AF441194(v139, v148);
    sub_1AF5C5358(0, &qword_1ED72FFF0);
    if (swift_dynamicCast())
    {
      v87 = v151;
      (*v134)(v78, 0, 1, v151);
      v88 = v128;
      sub_1AFD53F80(v78, v128, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
      v89 = sub_1AFAA3818();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v139);
      v90 = v88 + *(v87 + 36);
      if (*(v90 + 8))
      {
        v91 = v88;
        goto LABEL_50;
      }

      if (v89 == *v90)
      {
        v96 = v34;
        v97 = v119;
        sub_1AFD53C4C(v119, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
        v98 = v97;
        v34 = v96;
        result = sub_1AFD53F80(v88, v98, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
      }

      else
      {
        v91 = v88;
LABEL_50:
        result = sub_1AFD53C4C(v91, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
      }

      v78 = v132;
      v79 = v131;
      v77 = v136;
      *v136 = 1;
      v38 = v133;
      goto LABEL_36;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v139);
    (*v134)(v78, 1, 1, v151);
    v85 = sub_1AFD54114;
    v86 = v78;
    goto LABEL_35;
  }

  v46 = v114;
  v115 = a1[13];
  if (v115)
  {
    result = type metadata accessor for ParticleUpdateScript(0);
    v132 = 0;
    v116 = result;
    v112 = *(*(result - 8) + 72);
    v111 = *(v46 + 72);
    v110 = a2 + 32;
    v134 = (v35 + 56);
    v133 = (v46 + 56);
    v47 = v136;
    v48 = v128;
    while (1)
    {
      v49 = *(a2 + 16);
      if (v49)
      {
        break;
      }

LABEL_4:
      ++v132;
      a2 = v121;
      if (v132 == v115)
      {
        return result;
      }
    }

    v120 = *(v113 + 8 * v132);
    v135 = (v118 + v112 * v132);
    v50 = v110;
    v119 = v117 + v111 * v132;
    while (1)
    {
      sub_1AF85ABE8(v50, &v149);
      if (v150)
      {
        break;
      }

      sub_1AF616568(&v149, v148);
      sub_1AF441194(v148, v139);
      sub_1AF5C5358(0, &qword_1ED72FFF0);
      v58 = v137;
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v148);
        (*v134)(v32, 1, 1, v58);
        v51 = sub_1AFD541A4;
        v52 = v32;
LABEL_8:
        result = sub_1AFD53198(v52, v51);
        goto LABEL_9;
      }

      (*v134)(v32, 0, 1, v58);
      v59 = v138;
      sub_1AFD53F80(v32, v138, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
      v60 = sub_1AFAA3818();
      v61 = v59 + *(v151 + 36);
      if ((*(v61 + 8) & 1) == 0 && v60 == *v61)
      {
        os_unfair_lock_lock(*(v129 + 72));
        v62 = v127;
        sub_1AFD53D18(v138, v127, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v135, v62, type metadata accessor for ParticleUpdateScript);
        v63 = v130;
        sub_1AFAA3C54(0, 1uLL, v139);
        if (v63)
        {

          v126 = 0;
          v125 = 0;
        }

        else
        {
          v126 = v142;
          v125 = v143;
        }

        v67 = v122;
        v130 = 0;

        if (*(v67 + 184))
        {
          goto LABEL_57;
        }

        v69 = *(*(v67 + 168) + 4 * v120);
        v123 = *(*(v68 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v69 + 8);

        v140 = v151;
        v70 = sub_1AF585714(v139);
        v124 = type metadata accessor for ParticleUpdateScript;
        v71 = v127;
        sub_1AFD53D18(v127, v70, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
        v72 = *(v138 + v137[10]);
        v141 = *(v138 + v137[9]);
        v142 = v72;
        v143 = *(v138 + v137[11]);
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v146 = v73;
        v144 = v126;
        v145 = v125;
        v147 = 1;
        v74 = v69 | (v123 << 32);

        v75 = v129;
        sub_1AF825824(v139, v116, v74);
        sub_1AFD53C4C(v71, &unk_1ED728E10, v124, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v75 + 72));
        v47 = v136;
        v48 = v128;
      }

      sub_1AFD53C4C(v138, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v148);
      *v47 = 1;
LABEL_9:
      v50 += 48;
      if (!--v49)
      {
        goto LABEL_4;
      }
    }

    sub_1AF616568(&v149, v139);
    sub_1AF441194(v139, v148);
    sub_1AF5C5358(0, &qword_1ED72FFF0);
    if (swift_dynamicCast())
    {
      v53 = v151;
      (*v133)(v48, 0, 1, v151);
      v54 = v131;
      sub_1AFD53F80(v48, v131, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
      v55 = sub_1AFAA3818();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v139);
      v56 = v54 + *(v53 + 36);
      if (*(v56 + 8))
      {
        v57 = v54;
        goto LABEL_23;
      }

      if (v55 == *v56)
      {
        v64 = v32;
        v65 = v119;
        sub_1AFD53C4C(v119, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
        v66 = v65;
        v32 = v64;
        v48 = v128;
        result = sub_1AFD53F80(v54, v66, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
      }

      else
      {
        v57 = v54;
LABEL_23:
        result = sub_1AFD53C4C(v57, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
      }

      v47 = v136;
      *v136 = 1;
      goto LABEL_9;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v139);
    (*v133)(v48, 1, 1, v151);
    v51 = sub_1AFD54114;
    v52 = v48;
    goto LABEL_8;
  }

  return result;
}

uint64_t (*sub_1AFD34100(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4))(uint64_t)
{
  v164 = a4;
  v156 = a3;
  sub_1AFD53FF4();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v158 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v161 = (&v140 - v11);
  sub_1AFD53F14(0, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v155 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v159 = (&v140 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v157 = &v140 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v160 = &v140 - v25;
  sub_1AFD54084();
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v162 = &v140 - v32;
  sub_1AFD53F14(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
  v167 = v33;
  v34 = *(v33 - 1);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v140 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v163 = &v140 - v40;
  v41 = a1[1];
  v42 = v166;
  v147 = sub_1AF70632C(v41, a1);
  v151 = v41;
  result = sub_1AF706648(v41, a1);
  v146 = result;
  v140 = v42;
  v44 = a1[11];
  v148 = a2;
  v203 = v13;
  v143 = v44;
  if (!v44)
  {
    v162 = v29;
    v163 = v37;
    v165 = a2 + 32;
    v93 = a1[6];
    v144 = a1[7];
    v160 = (v14 + 56);
    v161 = (v34 + 56);
    v94 = v167;
    v95 = v158;
    v141 = v14;
    do
    {
LABEL_40:
      if (v93 == v144)
      {
        return result;
      }

      v96 = v93++;
      result = type metadata accessor for TriggerScript(0);
      v152 = result;
      v97 = *(result - 1);
      v166 = *(a2 + 16);
    }

    while (!v166);
    v145 = v93;
    v98 = v96;
    v99 = 0;
    v100 = v147 + *(v97 + 72) * v98;
    v149 = v146 + *(v14 + 72) * v98;
    v150 = v98;
    v101 = v159;
    v102 = v162;
    while (1)
    {
      sub_1AF85ABE8(v165 + 48 * v99, v181);
      if (v182)
      {
        break;
      }

      sub_1AF616568(v181, v180);
      sub_1AF441194(v180, &v168);
      sub_1AF5C5358(0, &qword_1ED72FFF0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
        (*v161)(v102, 1, 1, v94);
        v103 = sub_1AFD54084;
        v104 = v102;
LABEL_44:
        result = sub_1AFD53198(v104, v103);
        goto LABEL_45;
      }

      (*v161)(v102, 0, 1, v94);
      sub_1AFD53F80(v102, v163, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v117 = *(v100 + 32);
      MEMORY[0x1B271ACB0](*(v117 + 16));
      v118 = *(v117 + 16);
      if (v118)
      {
        v119 = v117 + 40;
        do
        {

          sub_1AFDFD038();

          v119 += 16;
          --v118;
        }

        while (v118);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v100 + 40)]);
      v120 = *v100;
      MEMORY[0x1B271ACB0](*(*v100 + 16));
      v121 = *(v120 + 16);
      if (v121)
      {
        v122 = (v120 + 48);
        do
        {
          v123 = *(v122 - 2);
          v124 = *v122;
          v122 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v123);
          sub_1AF444224(v124);
          v125 = sub_1AFAA02E0(v123);
          MEMORY[0x1B271ACB0](v125);
          v190 = v177;
          v191 = v178;
          v192 = v179;
          v188 = v175;
          v189 = v176;
          v126 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v126);
          sub_1AF443F24(v123);
          sub_1AF444AF4(v124);
          --v121;
        }

        while (v121);
      }

      v185 = v170;
      v186 = v171;
      v187 = v172;
      v183 = v168;
      v184 = v169;
      v127 = sub_1AFDFF2E8();
      v128 = v163;
      v129 = &v163[*(v203 + 36)];
      v130 = v156;
      if ((v129[8] & 1) == 0 && v127 == *v129)
      {
        os_unfair_lock_lock(*(v156 + 72));
        v131 = v155;
        sub_1AFD53D18(v128, v155, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v100, v131, type metadata accessor for TriggerScript);
        v132 = *v100;
        v133 = v151;
        v134 = *(v151 + 16);

        if (*(v133 + 184))
        {
LABEL_74:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        v157 = *(*(v133 + 168) + 4 * v150);
        v154 = *(*(v134 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v157 + 8);

        *(&v169 + 1) = v203;
        v135 = sub_1AF585714(&v168);
        v153 = type metadata accessor for TriggerScript;
        sub_1AFD53D18(v131, v135, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        v136 = *&v163[v167[10]];
        *&v170 = *&v163[v167[9]];
        *(&v170 + 1) = v136;
        *&v171 = *&v163[v167[11]];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v173 = v137;
        *(&v171 + 1) = v132;
        v172 = 0;
        v174 = 1;
        v138 = v157 | (v154 << 32);
        v128 = v163;

        sub_1AF825824(&v168, v152, v138);
        sub_1AFD53C4C(v155, &unk_1ED728DC0, v153, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v130 + 72));
      }

      sub_1AFD53C4C(v128, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
      *v164 = 1;
      v94 = v167;
      v95 = v158;
      v101 = v159;
      v102 = v162;
LABEL_45:
      if (++v99 == v166)
      {
        a2 = v148;
        v14 = v141;
        v93 = v145;
        goto LABEL_40;
      }
    }

    sub_1AF616568(v181, v180);
    sub_1AF441194(v180, &v168);
    sub_1AF5C5358(0, &qword_1ED72FFF0);
    if (swift_dynamicCast())
    {
      (*v160)(v95, 0, 1, v203);
      sub_1AFD53F80(v95, v101, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v105 = *(v100 + 32);
      MEMORY[0x1B271ACB0](*(v105 + 16));
      v106 = *(v105 + 16);
      if (v106)
      {
        v107 = v105 + 40;
        do
        {

          sub_1AFDFD038();

          v107 += 16;
          --v106;
        }

        while (v106);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v100 + 40)]);
      v108 = *v100;
      MEMORY[0x1B271ACB0](*(*v100 + 16));
      v109 = *(v108 + 16);
      if (v109)
      {
        v110 = (v108 + 48);
        do
        {
          v111 = *(v110 - 2);
          v112 = *v110;
          v110 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v111);
          sub_1AF444224(v112);
          v113 = sub_1AFAA02E0(v111);
          MEMORY[0x1B271ACB0](v113);
          v200 = v177;
          v201 = v178;
          v202 = v179;
          v198 = v175;
          v199 = v176;
          v114 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v114);
          sub_1AF443F24(v111);
          sub_1AF444AF4(v112);
          --v109;
        }

        while (v109);
      }

      v195 = v170;
      v196 = v171;
      v197 = v172;
      v193 = v168;
      v194 = v169;
      v115 = sub_1AFDFF2E8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
      v101 = v159;
      v116 = v159 + *(v203 + 36);
      if (v116[8])
      {
        result = sub_1AFD53C4C(v159, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        v95 = v158;
      }

      else
      {
        v95 = v158;
        if (v115 == *v116)
        {
          v139 = v149;
          sub_1AFD53C4C(v149, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
          result = sub_1AFD53F80(v101, v139, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        }

        else
        {
          result = sub_1AFD53C4C(v159, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        }
      }

      v102 = v162;
      *v164 = 1;
      v94 = v167;
      goto LABEL_45;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
    (*v160)(v95, 1, 1, v203);
    v103 = sub_1AFD53FF4;
    v104 = v95;
    goto LABEL_44;
  }

  v45 = a1[13];
  v46 = v167;
  v48 = v160;
  v47 = v161;
  v144 = v45;
  if (v45)
  {
    result = type metadata accessor for TriggerScript(0);
    v155 = 0;
    v145 = result;
    v49 = *(result - 1);
    v165 = a2 + 32;
    v142 = *(v49 + 72);
    v50 = (v34 + 56);
    v158 = (v14 + 56);
    v141 = *(v14 + 72);
    v159 = (v34 + 56);
    while (1)
    {
      v51 = v162;
      v166 = *(a2 + 16);
      if (v166)
      {
        break;
      }

LABEL_4:
      ++v155;
      a2 = v148;
      if (v155 == v144)
      {
        return result;
      }
    }

    v52 = 0;
    v53 = *(v143 + 8 * v155);
    v54 = v147 + v142 * v155;
    v149 = v146 + v141 * v155;
    v150 = v53;
    while (1)
    {
      sub_1AF85ABE8(v165 + 48 * v52, v181);
      if (v182)
      {
        break;
      }

      sub_1AF616568(v181, v180);
      sub_1AF441194(v180, &v168);
      sub_1AF5C5358(0, &qword_1ED72FFF0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
        (*v50)(v51, 1, 1, v46);
        v55 = sub_1AFD54084;
        v56 = v51;
LABEL_8:
        result = sub_1AFD53198(v56, v55);
        goto LABEL_9;
      }

      (*v50)(v51, 0, 1, v46);
      sub_1AFD53F80(v51, v163, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v69 = *(v54 + 32);
      MEMORY[0x1B271ACB0](*(v69 + 16));
      v70 = *(v69 + 16);
      if (v70)
      {
        v71 = v69 + 40;
        do
        {

          sub_1AFDFD038();

          v71 += 16;
          --v70;
        }

        while (v70);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v54 + 40)]);
      v72 = *v54;
      MEMORY[0x1B271ACB0](*(*v54 + 16));
      v73 = *(v72 + 16);
      if (v73)
      {
        v74 = (v72 + 48);
        do
        {
          v75 = *(v74 - 2);
          v76 = *v74;
          v74 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v75);
          sub_1AF444224(v76);
          v77 = sub_1AFAA02E0(v75);
          MEMORY[0x1B271ACB0](v77);
          v190 = v177;
          v191 = v178;
          v192 = v179;
          v188 = v175;
          v189 = v176;
          v78 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v78);
          sub_1AF443F24(v75);
          sub_1AF444AF4(v76);
          --v73;
        }

        while (v73);
      }

      v185 = v170;
      v186 = v171;
      v187 = v172;
      v183 = v168;
      v184 = v169;
      v79 = sub_1AFDFF2E8();
      v80 = v163;
      v81 = &v163[*(v203 + 36)];
      v82 = v157;
      if ((v81[8] & 1) == 0 && v79 == *v81)
      {
        v83 = v156;
        os_unfair_lock_lock(*(v156 + 72));
        sub_1AFD53D18(v80, v82, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v54, v82, type metadata accessor for TriggerScript);
        v84 = *v54;
        v85 = v151;
        v86 = *(v151 + 16);

        if (*(v85 + 184))
        {
          goto LABEL_74;
        }

        v87 = *(*(v85 + 168) + 4 * v150);
        v153 = *(*(v86 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v87 + 8);
        v154 = v87;

        *(&v169 + 1) = v203;
        v88 = sub_1AF585714(&v168);
        v152 = type metadata accessor for TriggerScript;
        sub_1AFD53D18(v82, v88, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        v89 = *&v163[v167[10]];
        *&v170 = *&v163[v167[9]];
        *(&v170 + 1) = v89;
        *&v171 = *&v163[v167[11]];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v173 = v90;
        *(&v171 + 1) = v84;
        v172 = 0;
        v174 = 1;
        v91 = v154 | (v153 << 32);
        v80 = v163;

        sub_1AF825824(&v168, v145, v91);
        sub_1AFD53C4C(v157, &unk_1ED728DC0, v152, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v83 + 72));
      }

      sub_1AFD53C4C(v80, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
      *v164 = 1;
      v46 = v167;
      v48 = v160;
      v47 = v161;
      v51 = v162;
      v50 = v159;
LABEL_9:
      if (++v52 == v166)
      {
        goto LABEL_4;
      }
    }

    sub_1AF616568(v181, v180);
    sub_1AF441194(v180, &v168);
    sub_1AF5C5358(0, &qword_1ED72FFF0);
    if (swift_dynamicCast())
    {
      (*v158)(v47, 0, 1, v203);
      sub_1AFD53F80(v47, v48, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v57 = *(v54 + 32);
      MEMORY[0x1B271ACB0](*(v57 + 16));
      v58 = *(v57 + 16);
      if (v58)
      {
        v59 = v57 + 40;
        do
        {

          sub_1AFDFD038();

          v59 += 16;
          --v58;
        }

        while (v58);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v54 + 40)]);
      v60 = *v54;
      MEMORY[0x1B271ACB0](*(*v54 + 16));
      v61 = *(v60 + 16);
      if (v61)
      {
        v62 = (v60 + 48);
        do
        {
          v63 = *(v62 - 2);
          v64 = *v62;
          v62 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v63);
          sub_1AF444224(v64);
          v65 = sub_1AFAA02E0(v63);
          MEMORY[0x1B271ACB0](v65);
          v200 = v177;
          v201 = v178;
          v202 = v179;
          v198 = v175;
          v199 = v176;
          v66 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v66);
          sub_1AF443F24(v63);
          sub_1AF444AF4(v64);
          --v61;
        }

        while (v61);
      }

      v195 = v170;
      v196 = v171;
      v197 = v172;
      v193 = v168;
      v194 = v169;
      v67 = sub_1AFDFF2E8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
      v48 = v160;
      v68 = &v160[*(v203 + 36)];
      if (v68[8])
      {
        result = sub_1AFD53C4C(v160, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        v47 = v161;
        v51 = v162;
      }

      else
      {
        v51 = v162;
        if (v67 == *v68)
        {
          v92 = v149;
          sub_1AFD53C4C(v149, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
          result = sub_1AFD53F80(v48, v92, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        }

        else
        {
          result = sub_1AFD53C4C(v160, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        }

        v47 = v161;
      }

      v50 = v159;
      *v164 = 1;
      v46 = v167;
      goto LABEL_9;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v180);
    (*v158)(v47, 1, 1, v203);
    v55 = sub_1AFD53FF4;
    v56 = v47;
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1AFD358A0(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v134 = a4;
  v121 = a3;
  sub_1AFD53DF4();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v117 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v131 = &v108 - v11;
  sub_1AFD53F14(0, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
  v157 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v125 = (&v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v108 - v18);
  MEMORY[0x1EEE9AC00](v20, v21);
  v126 = &v108 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v130 = (&v108 - v25);
  sub_1AFD53E84();
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v135 = &v108 - v32;
  sub_1AFD53F14(0, &unk_1ED725708, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptRuntime);
  v136 = v33;
  v34 = *(v33 - 1);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v128 = (&v108 - v40);
  v41 = a1[1];
  v42 = v133;
  v116 = sub_1AF705F6C(v41, a1);
  v120 = v41;
  v43 = v41;
  v44 = a2;
  result = sub_1AF70658C(v43, a1);
  v115 = result;
  v108 = v42;
  v46 = a1[11];
  v119 = a2;
  v112 = v46;
  if (!v46)
  {
    v129 = v19;
    v76 = a1[6];
    v113 = a1[7];
    v111 = v44 + 32;
    v77 = (v34 + 56);
    v78 = v13;
    v132 = (v13 + 56);
    v133 = v77;
    v79 = &off_1ED725B90;
    v80 = v136;
    v81 = v117;
    v112 = v78;
    v131 = v29;
    v127 = v37;
    do
    {
LABEL_28:
      v82 = v119;
      if (v76 == v113)
      {
        return result;
      }

      v83 = v76++;
      result = type metadata accessor for HeaderScript();
      v123 = result;
      v84 = *(result - 8);
      v85 = *(v82 + 16);
    }

    while (!v85);
    v114 = v76;
    v135 = v116 + *(v84 + 72) * v83;
    v86 = v111;
    v87 = *(v112 + 72);
    v122 = v83;
    v118 = v115 + v87 * v83;
    while (1)
    {
      sub_1AF85ABE8(v86, v145);
      if (v146)
      {
        break;
      }

      sub_1AF616568(v145, v144);
      sub_1AF441194(v144, &v137);
      sub_1AF5C5358(0, &qword_1ED72FFF0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v144);
        (*v133)(v29, 1, 1, v80);
        v88 = sub_1AFD53E84;
        v89 = v29;
LABEL_32:
        result = sub_1AFD53198(v89, v88);
        goto LABEL_33;
      }

      (*v133)(v29, 0, 1, v80);
      sub_1AFD53F80(v29, v37, &unk_1ED725708, type metadata accessor for HeaderScript, v79, type metadata accessor for ScriptRuntime);
      sub_1AFDFF308();
      sub_1AFDFD038();
      v149 = v139;
      v150 = v140;
      v151 = v141;
      v147 = v137;
      v148 = v138;
      v95 = sub_1AFDFF2E8();
      v96 = &v37[*(v157 + 36)];
      if ((v96[8] & 1) == 0 && v95 == *v96)
      {
        v97 = v121;
        os_unfair_lock_lock(*(v121 + 72));
        v98 = v125;
        v99 = v79;
        sub_1AFD53D18(v37, v125, &unk_1ED724F70, type metadata accessor for HeaderScript, v79, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v135, v98, type metadata accessor for HeaderScript);
        v100 = v120;

        if (*(v100 + 184))
        {
LABEL_51:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        v126 = *(*(v100 + 168) + 4 * v122);
        v124 = *(*(v101 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v126 + 8);

        *(&v138 + 1) = v157;
        v102 = sub_1AF585714(&v137);
        v130 = type metadata accessor for HeaderScript;
        v128 = type metadata accessor for ScriptCompileAttempt;
        sub_1AFD53D18(v98, v102, &unk_1ED724F70, type metadata accessor for HeaderScript, v79, type metadata accessor for ScriptCompileAttempt);
        v103 = *&v37[v136[10]];
        *&v139 = *&v37[v136[9]];
        *(&v139 + 1) = v103;
        *&v140 = *&v37[v136[11]];
        sub_1AFD55360(0, &qword_1EB644410, &type metadata for CodableVoid, MEMORY[0x1E69E6720]);
        v142 = v104;
        BYTE8(v140) = 0;
        v143 = 1;
        v105 = v126 | (v124 << 32);

        sub_1AF825824(&v137, v123, v105);
        sub_1AFD53C4C(v125, &unk_1ED724F70, v130, v99, v128);
        os_unfair_lock_unlock(*(v97 + 72));
        v81 = v117;
        v29 = v131;
        v79 = v99;
      }

      sub_1AFD53C4C(v37, &unk_1ED725708, type metadata accessor for HeaderScript, v79, type metadata accessor for ScriptRuntime);
      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v144);
      *v134 = 1;
      v80 = v136;
LABEL_33:
      v86 += 48;
      if (!--v85)
      {
        v76 = v114;
        goto LABEL_28;
      }
    }

    sub_1AF616568(v145, v144);
    sub_1AF441194(v144, &v137);
    sub_1AF5C5358(0, &qword_1ED72FFF0);
    v90 = v157;
    if (swift_dynamicCast())
    {
      (*v132)(v81, 0, 1, v90);
      v91 = v129;
      v92 = v79;
      sub_1AFD53F80(v81, v129, &unk_1ED724F70, type metadata accessor for HeaderScript, v79, type metadata accessor for ScriptCompileAttempt);
      sub_1AFDFF308();
      sub_1AFDFD038();
      v154 = v139;
      v155 = v140;
      v156 = v141;
      v152 = v137;
      v153 = v138;
      v93 = sub_1AFDFF2E8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v144);
      v94 = v91 + *(v90 + 36);
      if (*(v94 + 8))
      {
        result = sub_1AFD53C4C(v91, &unk_1ED724F70, type metadata accessor for HeaderScript, v79, type metadata accessor for ScriptCompileAttempt);
        v80 = v136;
        v37 = v127;
      }

      else
      {
        if (v93 == *v94)
        {
          v106 = v118;
          sub_1AFD53C4C(v118, &unk_1ED724F70, type metadata accessor for HeaderScript, v92, type metadata accessor for ScriptCompileAttempt);
          v107 = v106;
          v79 = v92;
          result = sub_1AFD53F80(v129, v107, &unk_1ED724F70, type metadata accessor for HeaderScript, v92, type metadata accessor for ScriptCompileAttempt);
        }

        else
        {
          result = sub_1AFD53C4C(v91, &unk_1ED724F70, type metadata accessor for HeaderScript, v79, type metadata accessor for ScriptCompileAttempt);
        }

        v80 = v136;
        v37 = v127;
      }

      *v134 = 1;
      v29 = v131;
      goto LABEL_33;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v144);
    (*v132)(v81, 1, 1, v90);
    v88 = sub_1AFD53DF4;
    v89 = v81;
    goto LABEL_32;
  }

  v47 = a1[13];
  v48 = v136;
  v113 = v47;
  if (v47)
  {
    result = type metadata accessor for HeaderScript();
    v127 = 0;
    v114 = result;
    v111 = *(*(result - 8) + 72);
    v49 = *(v13 + 72);
    v109 = a2 + 32;
    v110 = v49;
    v50 = (v34 + 56);
    v132 = (v13 + 56);
    v129 = (v34 + 56);
    while (1)
    {
      v51 = *(v44 + 16);
      v52 = v131;
      v53 = v157;
      if (v51)
      {
        break;
      }

LABEL_4:
      ++v127;
      v44 = v119;
      if (v127 == v113)
      {
        return result;
      }
    }

    v54 = *(v112 + 8 * v127);
    v133 = (v116 + v111 * v127);
    v55 = v109;
    v117 = v115 + v110 * v127;
    v118 = v54;
    while (1)
    {
      sub_1AF85ABE8(v55, v145);
      if (v146)
      {
        break;
      }

      sub_1AF616568(v145, v144);
      sub_1AF441194(v144, &v137);
      sub_1AF5C5358(0, &qword_1ED72FFF0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v144);
        v56 = v135;
        (*v50)(v135, 1, 1, v48);
        result = sub_1AFD53198(v56, sub_1AFD53E84);
LABEL_8:
        v53 = v157;
        goto LABEL_9;
      }

      v61 = v135;
      (*v50)(v135, 0, 1, v48);
      v62 = v128;
      sub_1AFD53F80(v61, v128, &unk_1ED725708, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptRuntime);
      sub_1AFDFF308();
      sub_1AFDFD038();
      v149 = v139;
      v150 = v140;
      v151 = v141;
      v147 = v137;
      v148 = v138;
      v63 = sub_1AFDFF2E8();
      v53 = v157;
      v64 = v62 + *(v157 + 36);
      if ((v64[8] & 1) == 0 && v63 == *v64)
      {
        v65 = v121;
        os_unfair_lock_lock(*(v121 + 72));
        v66 = v62;
        v67 = v126;
        sub_1AFD53D18(v62, v126, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v133, v67, type metadata accessor for HeaderScript);
        v68 = v120;

        if (*(v68 + 184))
        {
          goto LABEL_51;
        }

        v70 = *(*(v68 + 168) + 4 * v118);
        v122 = *(*(v69 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v70 + 8);
        v123 = v70;

        *(&v138 + 1) = v157;
        v71 = sub_1AF585714(&v137);
        v125 = type metadata accessor for HeaderScript;
        v124 = type metadata accessor for ScriptCompileAttempt;
        sub_1AFD53D18(v67, v71, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
        v72 = *(v62 + v136[10]);
        *&v139 = *(v66 + v136[9]);
        *(&v139 + 1) = v72;
        *&v140 = *(v66 + v136[11]);
        sub_1AFD55360(0, &qword_1EB644410, &type metadata for CodableVoid, MEMORY[0x1E69E6720]);
        v142 = v73;
        BYTE8(v140) = 0;
        v143 = 1;
        v74 = v123 | (v122 << 32);

        sub_1AF825824(&v137, v114, v74);
        sub_1AFD53C4C(v126, &unk_1ED724F70, v125, &off_1ED725B90, v124);
        os_unfair_lock_unlock(*(v65 + 72));
        v52 = v131;
        v62 = v66;
        v53 = v157;
      }

      sub_1AFD53C4C(v62, &unk_1ED725708, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptRuntime);
      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v144);
      *v134 = 1;
      v48 = v136;
      v50 = v129;
LABEL_9:
      v55 += 48;
      if (!--v51)
      {
        goto LABEL_4;
      }
    }

    sub_1AF616568(v145, v144);
    sub_1AF441194(v144, &v137);
    sub_1AF5C5358(0, &qword_1ED72FFF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v144);
      (*v132)(v52, 1, 1, v53);
      result = sub_1AFD53198(v52, sub_1AFD53DF4);
      goto LABEL_9;
    }

    (*v132)(v52, 0, 1, v53);
    v57 = v52;
    v58 = v130;
    sub_1AFD53F80(v57, v130, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
    sub_1AFDFF308();
    sub_1AFDFD038();
    v154 = v139;
    v155 = v140;
    v156 = v141;
    v152 = v137;
    v153 = v138;
    v59 = sub_1AFDFF2E8();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v144);
    v60 = v58 + *(v53 + 36);
    if (v60[8])
    {
      result = sub_1AFD53C4C(v58, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
      v48 = v136;
    }

    else
    {
      if (v59 == *v60)
      {
        v75 = v117;
        sub_1AFD53C4C(v117, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
        result = sub_1AFD53F80(v130, v75, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
      }

      else
      {
        result = sub_1AFD53C4C(v58, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
      }

      v48 = v136;
    }

    v52 = v131;
    *v134 = 1;
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1AFD36A60(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6)
{
  v199 = a5;
  v200 = a6;
  LODWORD(v202) = a4;
  v206 = a3;
  v183 = a2;
  sub_1AF0D4E74();
  v198 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v197 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_1AFDFC298();
  v191 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196, v11);
  v195 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v194 = &v166 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v166 - v22;
  v24 = type metadata accessor for ScriptIndex();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v166 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v166 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v177 = (&v166 - v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v193 = &v166 - v38;
  v39 = a1[1];
  v182 = sub_1AF706180(v39, a1);
  v181 = sub_1AF7060C4(v39, a1);
  result = sub_1AF706B6C(v39, a1);
  v167 = v6;
  v41 = a1[11];
  v178 = a1;
  v185 = v39;
  v176 = v41;
  if (v41)
  {
    v184 = v23;
    v175 = a1[13];
    if (v175)
    {
      v173 = type metadata accessor for GraphScript(0);
      v172 = *(*(v173 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
      v42 = 0;
      v180 = v43;
      v44 = *(v43 - 8);
      v179 = (v25 + 48);
      v171 = *(v44 + 72);
      v166 = 0x80000001AFF47E70;
      v189 = 0x80000001AFF4F1E0;
      v188 = (v25 + 56);
      v187 = (v191 + 32);
      v45 = &unk_1F2503F70;
      if (v206 < 1029)
      {
        v45 = &unk_1F2503F38;
      }

      v169 = v45;
      v168 = v202 | (v206 > 1032);
      v190 = xmmword_1AFE431C0;
      v201 = v24;
      while (1)
      {
        v46 = v176[v42];
        v174 = a1[2];

        if (*(v39 + 184))
        {
          break;
        }

        v48 = *(v39 + 168);
        v186 = v46;
        v49 = *(v48 + 4 * v46);
        v50 = *(*(v47 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v49 + 8);

        v51 = v183;
        if (*(v183 + 16) && (v52 = sub_1AF449D3C(v49 | (v50 << 32)), (v53 & 1) != 0))
        {
          v54 = (*(v51 + 56) + 8 * v52);
          v55 = *v54;
          v56 = v54[1];
          v57 = v177;
        }

        else
        {

          v57 = v177;
          if (*(v39 + 184))
          {
            break;
          }

          v55 = *(*(v39 + 168) + 4 * v186);
          v56 = *(*(v58 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v55 + 8);
        }

        v192 = v42;
        v59 = v182 + v172 * v42;
        v60 = v184;
        sub_1AFB12858(v59 + *(v173 + 44), v184);
        v61 = *v179;
        if ((*v179)(v60, 1, v24) == 1)
        {
          v62 = v185;

          if (*(v62 + 184))
          {
            break;
          }

          v64 = *(*(v62 + 168) + 4 * v186);
          v65 = *(*(v63 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v64 + 8);

          v66 = v193;
          *v193 = v64;
          *(v66 + 4) = v65;
          v67 = v66;
          swift_storeEnumTagMultiPayload();
          v68 = v61(v184, 1, v24);
          a1 = v178;
          if (v68 != 1)
          {
            sub_1AFD53CA8(v184, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          v69 = v60;
          v67 = v193;
          sub_1AFD53D8C(v69, v193, type metadata accessor for ScriptIndex);
        }

        sub_1AFD531F8(v67, v57, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v57, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v70 = *v57;
          v71 = *(v51 + 16);
          v202 = v70;
          if (v71)
          {
            v72 = sub_1AF449D3C(v70);
            if (v74)
            {
              *&v73 = *(*(v51 + 56) + 8 * v72);
              v202 = v73;
            }
          }

          sub_1AFD53198(v67, type metadata accessor for ScriptIndex);
          *v67 = v202;
          swift_storeEnumTagMultiPayload();
        }

        v75 = v181 + v171 * v192;
        if (!*(v75 + *(v180 + 40)) && !*(v75 + *(v180 + 44)))
        {
          v76 = v169;
          if (v168)
          {
            v76 = &unk_1F2503FA8;
            if (*(v59 + 24) == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v76 = swift_allocObject();
              v76[1] = v190;
              v203 = 0xD000000000000017;
              v204 = v166;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v77 = v204;
              *(v76 + 4) = v203;
              *(v76 + 5) = v77;
              *(v76 + 48) = 0;
            }
          }

          v170 = v76;
          v78 = *(v76 + 2);
          if (v78)
          {
            v191 = v55 | (v56 << 32);
            v79 = v170 + 5;
            do
            {
              *&v202 = v78;
              v80 = *(v79 - 1);
              v81 = *v79;
              v206 = v79;
              v82 = v194;
              sub_1AFD531F8(v67, v194, type metadata accessor for ScriptIndex);
              (*v188)(v82, 0, 1, v24);

              v83 = sub_1AFAF8B58(v80, v81, v199, v200, v191, 0x6870617267uLL, 0xE500000000000000, v82);
              v85 = v84;

              sub_1AFD53CA8(v82, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v203 = 0;
              v204 = 0xE000000000000000;
              sub_1AFDFE218();

              v203 = 0xD000000000000022;
              v204 = v189;
              MEMORY[0x1B2718AE0](v83, v85);

              v87 = v203;
              v86 = v204;
              v88 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v89 = swift_allocObject();
              *(v89 + 16) = v190;
              *(v89 + 56) = MEMORY[0x1E69E6158];
              *(v89 + 64) = sub_1AF0D544C();
              *(v89 + 32) = v87;
              *(v89 + 40) = v86;

              sub_1AFDFC4C8();

              v90 = v195;
              sub_1AFDFC288();
              v91 = v197;
              v92 = v198[12];
              v93 = v198[16];
              v94 = &v197[v198[20]];
              (*v187)(v197, v90, v196);
              *(v91 + v92) = v88;
              *(v91 + v93) = 0;
              *v94 = v87;
              *(v94 + 1) = v86;

              sub_1AFDFC608();

              sub_1AFD53198(v91, sub_1AF0D4E74);

              v79 = (v206 + 24);
              v24 = v201;
              v78 = v202 - 1;
              v67 = v193;
            }

            while (v202 != 1);
          }

          v95 = v185;
          v96 = *(*(v185 + 40) + 16);
          v97 = *(v96 + 128);
          a1 = v178;
          if (*(v97 + 16))
          {
            v98 = sub_1AF449CB8(v180);
            if ((v99 & 1) != 0 && *(*(v96 + 24) + 16 * *(*(v97 + 56) + 8 * v98) + 32) == v180)
            {
              v203 = v180;
              v204 = &off_1F2558F90;
              v205 = 1;

              sub_1AF6304E8(v174 + 104, &v203, v186, 0, v95, v174);

              sub_1AF635250(&v203);
            }
          }

          sub_1AFD53F14(0, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
          v101 = *(*(v95 + 40) + 16);
          v102 = *(v101 + 128);
          if (*(v102 + 16))
          {
            v103 = v100;
            v104 = sub_1AF449CB8(v100);
            if ((v105 & 1) != 0 && *(*(v101 + 24) + 16 * *(*(v102 + 56) + 8 * v104) + 32) == v103)
            {
              v203 = v103;
              v204 = &off_1F250F310;
              v205 = 1;
              v106 = v185;

              sub_1AF6304E8(v174 + 104, &v203, v186, 0, v106, v174);

              sub_1AF635250(&v203);
            }
          }
        }

        result = sub_1AFD53198(v67, type metadata accessor for ScriptIndex);
        v42 = (v192 + 1);
        v39 = v185;
        if ((v192 + 1) == v175)
        {
          return result;
        }
      }

LABEL_91:
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    v192 = v32;
    v186 = v16;
    v107 = a1[6];
    v179 = a1[7];
    if (v107 != v179)
    {
      v175 = type metadata accessor for GraphScript(0);
      v174 = *(*(v175 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
      v184 = v108;
      v109 = *(v108 - 8);
      v180 = v25 + 48;
      v173 = *(v109 + 72);
      v169 = 0x80000001AFF47E70;
      v189 = 0x80000001AFF4F1E0;
      v188 = (v25 + 56);
      v187 = (v191 + 32);
      v110 = &unk_1F2503F70;
      if (v206 < 1029)
      {
        v110 = &unk_1F2503F38;
      }

      v171 = v110;
      LODWORD(v170) = v202 | (v206 > 1032);
      v190 = xmmword_1AFE431C0;
      v176 = v28;
      v201 = v24;
      while (1)
      {
        v177 = a1[2];

        if (*(v39 + 184))
        {
          goto LABEL_91;
        }

        v112 = *(v39 + 168);
        v193 = v107;
        v113 = *(v112 + 4 * v107);
        v114 = *(*(v111 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v113 + 8);

        v115 = v183;
        if (*(v183 + 16) && (v116 = sub_1AF449D3C(v113 | (v114 << 32)), (v117 & 1) != 0))
        {
          v118 = (*(v115 + 56) + 8 * v116);
          v119 = *v118;
          v120 = v118[1];
          v122 = v192;
          v121 = v193;
        }

        else
        {

          if (*(v39 + 184))
          {
            goto LABEL_91;
          }

          v121 = v193;
          v119 = *(*(v39 + 168) + 4 * v193);
          v120 = *(*(v123 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v119 + 8);

          v122 = v192;
        }

        v124 = v182 + v174 * v121;
        v125 = v186;
        sub_1AFB12858(v124 + *(v175 + 44), v186);
        v126 = *v180;
        if ((*v180)(v125, 1, v24) == 1)
        {

          if (*(v39 + 184))
          {
            goto LABEL_91;
          }

          v128 = *(*(v39 + 168) + 4 * v193);
          v129 = *(*(v127 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v128 + 8);

          *v122 = v128;
          v122[1] = v129;
          v39 = v185;
          swift_storeEnumTagMultiPayload();
          if (v126(v186, 1, v24) != 1)
          {
            sub_1AFD53CA8(v186, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          sub_1AFD53D8C(v125, v122, type metadata accessor for ScriptIndex);
        }

        v130 = v176;
        sub_1AFD531F8(v122, v176, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v130, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v131 = *v130;
          v132 = *(v115 + 16);
          v202 = v131;
          if (v132)
          {
            v133 = sub_1AF449D3C(v131);
            if (v135)
            {
              *&v134 = *(*(v115 + 56) + 8 * v133);
              v202 = v134;
            }
          }

          sub_1AFD53198(v122, type metadata accessor for ScriptIndex);
          *v122 = v202;
          swift_storeEnumTagMultiPayload();
        }

        v136 = v181 + v173 * v193;
        if (!*(v136 + *(v184 + 10)) && !*(v136 + *(v184 + 11)))
        {
          v137 = v171;
          if (v170)
          {
            v137 = &unk_1F2503FA8;
            if (*(v124 + 24) == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v137 = swift_allocObject();
              v137[1] = v190;
              v203 = 0xD000000000000017;
              v204 = v169;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v138 = v204;
              *(v137 + 4) = v203;
              *(v137 + 5) = v138;
              *(v137 + 48) = 0;
            }
          }

          v172 = v137;
          v139 = *(v137 + 2);
          if (v139)
          {
            v191 = v119 | (v120 << 32);
            v140 = v172 + 5;
            do
            {
              *&v202 = v139;
              v141 = *(v140 - 1);
              v142 = *v140;
              v206 = v140;
              v143 = v194;
              sub_1AFD531F8(v122, v194, type metadata accessor for ScriptIndex);
              (*v188)(v143, 0, 1, v201);

              v144 = sub_1AFAF8B58(v141, v142, v199, v200, v191, 0x6870617267uLL, 0xE500000000000000, v143);
              v146 = v145;

              sub_1AFD53CA8(v143, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v203 = 0;
              v204 = 0xE000000000000000;
              sub_1AFDFE218();

              v203 = 0xD000000000000022;
              v204 = v189;
              MEMORY[0x1B2718AE0](v144, v146);

              v148 = v203;
              v147 = v204;
              v149 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v150 = swift_allocObject();
              *(v150 + 16) = v190;
              *(v150 + 56) = MEMORY[0x1E69E6158];
              *(v150 + 64) = sub_1AF0D544C();
              *(v150 + 32) = v148;
              *(v150 + 40) = v147;

              sub_1AFDFC4C8();

              v151 = v195;
              sub_1AFDFC288();
              v152 = v197;
              v153 = v198[12];
              v154 = v198[16];
              v155 = &v197[v198[20]];
              (*v187)(v197, v151, v196);
              *(v152 + v153) = v149;
              *(v152 + v154) = 0;
              *v155 = v148;
              *(v155 + 1) = v147;

              sub_1AFDFC608();

              sub_1AFD53198(v152, sub_1AF0D4E74);

              v140 = (v206 + 24);
              v139 = v202 - 1;
              v122 = v192;
            }

            while (v202 != 1);
          }

          v39 = v185;
          v156 = *(*(v185 + 40) + 16);
          v157 = *(v156 + 128);
          if (*(v157 + 16))
          {
            v158 = sub_1AF449CB8(v184);
            if ((v159 & 1) != 0 && *(*(v156 + 24) + 16 * *(*(v157 + 56) + 8 * v158) + 32) == v184)
            {
              v203 = v184;
              v204 = &off_1F2558F90;
              v205 = 1;

              sub_1AF6304E8((v177 + 13), &v203, v193, 0, v39, v177);

              sub_1AF635250(&v203);
            }
          }

          sub_1AFD53F14(0, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
          v161 = *(*(v39 + 40) + 16);
          v162 = *(v161 + 128);
          v24 = v201;
          if (*(v162 + 16))
          {
            v163 = v160;
            v164 = sub_1AF449CB8(v160);
            if ((v165 & 1) != 0 && *(*(v161 + 24) + 16 * *(*(v162 + 56) + 8 * v164) + 32) == v163)
            {
              v203 = v163;
              v204 = &off_1F250F310;
              v205 = 1;

              sub_1AF6304E8((v177 + 13), &v203, v193, 0, v39, v177);

              sub_1AF635250(&v203);
            }
          }
        }

        v107 = v193 + 1;
        result = sub_1AFD53198(v122, type metadata accessor for ScriptIndex);
        a1 = v178;
        if (v107 == v179)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFD38328(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6)
{
  v199 = a5;
  v200 = a6;
  LODWORD(v202) = a4;
  v206 = a3;
  v183 = a2;
  sub_1AF0D4E74();
  v198 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v197 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_1AFDFC298();
  v191 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196, v11);
  v195 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v194 = &v166 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v166 - v22;
  v24 = type metadata accessor for ScriptIndex();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v166 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v166 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v177 = (&v166 - v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v193 = &v166 - v38;
  v39 = a1[1];
  v182 = sub_1AF706090(v39, a1);
  v181 = sub_1AF705FD4(v39, a1);
  result = sub_1AF706AB0(v39, a1);
  v167 = v6;
  v41 = a1[11];
  v178 = a1;
  v185 = v39;
  v176 = v41;
  if (v41)
  {
    v184 = v23;
    v175 = a1[13];
    if (v175)
    {
      v173 = type metadata accessor for SimpleScript(0);
      v172 = *(*(v173 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      v42 = 0;
      v180 = v43;
      v44 = *(v43 - 8);
      v179 = (v25 + 48);
      v171 = *(v44 + 72);
      v166 = 0x80000001AFF47E70;
      v189 = 0x80000001AFF4F1E0;
      v188 = (v25 + 56);
      v187 = (v191 + 32);
      v45 = &unk_1F2504018;
      if (v206 < 1029)
      {
        v45 = &unk_1F2503FE0;
      }

      v169 = v45;
      v168 = v202 | (v206 > 1032);
      v190 = xmmword_1AFE431C0;
      v201 = v24;
      while (1)
      {
        v46 = v176[v42];
        v174 = a1[2];

        if (*(v39 + 184))
        {
          break;
        }

        v48 = *(v39 + 168);
        v186 = v46;
        v49 = *(v48 + 4 * v46);
        v50 = *(*(v47 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v49 + 8);

        v51 = v183;
        if (*(v183 + 16) && (v52 = sub_1AF449D3C(v49 | (v50 << 32)), (v53 & 1) != 0))
        {
          v54 = (*(v51 + 56) + 8 * v52);
          v55 = *v54;
          v56 = v54[1];
          v57 = v177;
        }

        else
        {

          v57 = v177;
          if (*(v39 + 184))
          {
            break;
          }

          v55 = *(*(v39 + 168) + 4 * v186);
          v56 = *(*(v58 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v55 + 8);
        }

        v192 = v42;
        v59 = v182 + v172 * v42;
        v60 = v184;
        sub_1AFB12858(v59 + *(v173 + 40), v184);
        v61 = *v179;
        if ((*v179)(v60, 1, v24) == 1)
        {
          v62 = v185;

          if (*(v62 + 184))
          {
            break;
          }

          v64 = *(*(v62 + 168) + 4 * v186);
          v65 = *(*(v63 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v64 + 8);

          v66 = v193;
          *v193 = v64;
          *(v66 + 4) = v65;
          v67 = v66;
          swift_storeEnumTagMultiPayload();
          v68 = v61(v184, 1, v24);
          a1 = v178;
          if (v68 != 1)
          {
            sub_1AFD53CA8(v184, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          v69 = v60;
          v67 = v193;
          sub_1AFD53D8C(v69, v193, type metadata accessor for ScriptIndex);
        }

        sub_1AFD531F8(v67, v57, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v57, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v70 = *v57;
          v71 = *(v51 + 16);
          v202 = v70;
          if (v71)
          {
            v72 = sub_1AF449D3C(v70);
            if (v74)
            {
              *&v73 = *(*(v51 + 56) + 8 * v72);
              v202 = v73;
            }
          }

          sub_1AFD53198(v67, type metadata accessor for ScriptIndex);
          *v67 = v202;
          swift_storeEnumTagMultiPayload();
        }

        v75 = v181 + v171 * v192;
        if (!*(v75 + *(v180 + 40)) && !*(v75 + *(v180 + 44)))
        {
          v76 = v169;
          if (v168)
          {
            v76 = &unk_1F2504050;
            if (*(v59 + 32) == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v76 = swift_allocObject();
              v76[1] = v190;
              v203 = 0xD000000000000017;
              v204 = v166;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v77 = v204;
              *(v76 + 4) = v203;
              *(v76 + 5) = v77;
              *(v76 + 48) = 0;
            }
          }

          v170 = v76;
          v78 = *(v76 + 2);
          if (v78)
          {
            v191 = v55 | (v56 << 32);
            v79 = v170 + 5;
            do
            {
              *&v202 = v78;
              v80 = *(v79 - 1);
              v81 = *v79;
              v206 = v79;
              v82 = v194;
              sub_1AFD531F8(v67, v194, type metadata accessor for ScriptIndex);
              (*v188)(v82, 0, 1, v24);

              v83 = sub_1AFAF8B58(v80, v81, v199, v200, v191, 0x656C706D6973uLL, 0xE600000000000000, v82);
              v85 = v84;

              sub_1AFD53CA8(v82, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v203 = 0;
              v204 = 0xE000000000000000;
              sub_1AFDFE218();

              v203 = 0xD000000000000022;
              v204 = v189;
              MEMORY[0x1B2718AE0](v83, v85);

              v87 = v203;
              v86 = v204;
              v88 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v89 = swift_allocObject();
              *(v89 + 16) = v190;
              *(v89 + 56) = MEMORY[0x1E69E6158];
              *(v89 + 64) = sub_1AF0D544C();
              *(v89 + 32) = v87;
              *(v89 + 40) = v86;

              sub_1AFDFC4C8();

              v90 = v195;
              sub_1AFDFC288();
              v91 = v197;
              v92 = v198[12];
              v93 = v198[16];
              v94 = &v197[v198[20]];
              (*v187)(v197, v90, v196);
              *(v91 + v92) = v88;
              *(v91 + v93) = 0;
              *v94 = v87;
              *(v94 + 1) = v86;

              sub_1AFDFC608();

              sub_1AFD53198(v91, sub_1AF0D4E74);

              v79 = (v206 + 24);
              v24 = v201;
              v78 = v202 - 1;
              v67 = v193;
            }

            while (v202 != 1);
          }

          v95 = v185;
          v96 = *(*(v185 + 40) + 16);
          v97 = *(v96 + 128);
          a1 = v178;
          if (*(v97 + 16))
          {
            v98 = sub_1AF449CB8(v180);
            if ((v99 & 1) != 0 && *(*(v96 + 24) + 16 * *(*(v97 + 56) + 8 * v98) + 32) == v180)
            {
              v203 = v180;
              v204 = &off_1F2558F90;
              v205 = 1;

              sub_1AF6304E8(v174 + 104, &v203, v186, 0, v95, v174);

              sub_1AF635250(&v203);
            }
          }

          sub_1AFD53F14(0, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
          v101 = *(*(v95 + 40) + 16);
          v102 = *(v101 + 128);
          if (*(v102 + 16))
          {
            v103 = v100;
            v104 = sub_1AF449CB8(v100);
            if ((v105 & 1) != 0 && *(*(v101 + 24) + 16 * *(*(v102 + 56) + 8 * v104) + 32) == v103)
            {
              v203 = v103;
              v204 = &off_1F250F310;
              v205 = 1;
              v106 = v185;

              sub_1AF6304E8(v174 + 104, &v203, v186, 0, v106, v174);

              sub_1AF635250(&v203);
            }
          }
        }

        result = sub_1AFD53198(v67, type metadata accessor for ScriptIndex);
        v42 = (v192 + 1);
        v39 = v185;
        if ((v192 + 1) == v175)
        {
          return result;
        }
      }

LABEL_91:
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    v192 = v32;
    v186 = v16;
    v107 = a1[6];
    v179 = a1[7];
    if (v107 != v179)
    {
      v175 = type metadata accessor for SimpleScript(0);
      v174 = *(*(v175 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      v184 = v108;
      v109 = *(v108 - 8);
      v180 = v25 + 48;
      v173 = *(v109 + 72);
      v169 = 0x80000001AFF47E70;
      v189 = 0x80000001AFF4F1E0;
      v188 = (v25 + 56);
      v187 = (v191 + 32);
      v110 = &unk_1F2504018;
      if (v206 < 1029)
      {
        v110 = &unk_1F2503FE0;
      }

      v171 = v110;
      LODWORD(v170) = v202 | (v206 > 1032);
      v190 = xmmword_1AFE431C0;
      v176 = v28;
      v201 = v24;
      while (1)
      {
        v177 = a1[2];

        if (*(v39 + 184))
        {
          goto LABEL_91;
        }

        v112 = *(v39 + 168);
        v193 = v107;
        v113 = *(v112 + 4 * v107);
        v114 = *(*(v111 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v113 + 8);

        v115 = v183;
        if (*(v183 + 16) && (v116 = sub_1AF449D3C(v113 | (v114 << 32)), (v117 & 1) != 0))
        {
          v118 = (*(v115 + 56) + 8 * v116);
          v119 = *v118;
          v120 = v118[1];
          v122 = v192;
          v121 = v193;
        }

        else
        {

          if (*(v39 + 184))
          {
            goto LABEL_91;
          }

          v121 = v193;
          v119 = *(*(v39 + 168) + 4 * v193);
          v120 = *(*(v123 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v119 + 8);

          v122 = v192;
        }

        v124 = v182 + v174 * v121;
        v125 = v186;
        sub_1AFB12858(v124 + *(v175 + 40), v186);
        v126 = *v180;
        if ((*v180)(v125, 1, v24) == 1)
        {

          if (*(v39 + 184))
          {
            goto LABEL_91;
          }

          v128 = *(*(v39 + 168) + 4 * v193);
          v129 = *(*(v127 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v128 + 8);

          *v122 = v128;
          v122[1] = v129;
          v39 = v185;
          swift_storeEnumTagMultiPayload();
          if (v126(v186, 1, v24) != 1)
          {
            sub_1AFD53CA8(v186, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          sub_1AFD53D8C(v125, v122, type metadata accessor for ScriptIndex);
        }

        v130 = v176;
        sub_1AFD531F8(v122, v176, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v130, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v131 = *v130;
          v132 = *(v115 + 16);
          v202 = v131;
          if (v132)
          {
            v133 = sub_1AF449D3C(v131);
            if (v135)
            {
              *&v134 = *(*(v115 + 56) + 8 * v133);
              v202 = v134;
            }
          }

          sub_1AFD53198(v122, type metadata accessor for ScriptIndex);
          *v122 = v202;
          swift_storeEnumTagMultiPayload();
        }

        v136 = v181 + v173 * v193;
        if (!*(v136 + *(v184 + 10)) && !*(v136 + *(v184 + 11)))
        {
          v137 = v171;
          if (v170)
          {
            v137 = &unk_1F2504050;
            if (*(v124 + 32) == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v137 = swift_allocObject();
              v137[1] = v190;
              v203 = 0xD000000000000017;
              v204 = v169;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v138 = v204;
              *(v137 + 4) = v203;
              *(v137 + 5) = v138;
              *(v137 + 48) = 0;
            }
          }

          v172 = v137;
          v139 = *(v137 + 2);
          if (v139)
          {
            v191 = v119 | (v120 << 32);
            v140 = v172 + 5;
            do
            {
              *&v202 = v139;
              v141 = *(v140 - 1);
              v142 = *v140;
              v206 = v140;
              v143 = v194;
              sub_1AFD531F8(v122, v194, type metadata accessor for ScriptIndex);
              (*v188)(v143, 0, 1, v201);

              v144 = sub_1AFAF8B58(v141, v142, v199, v200, v191, 0x656C706D6973uLL, 0xE600000000000000, v143);
              v146 = v145;

              sub_1AFD53CA8(v143, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v203 = 0;
              v204 = 0xE000000000000000;
              sub_1AFDFE218();

              v203 = 0xD000000000000022;
              v204 = v189;
              MEMORY[0x1B2718AE0](v144, v146);

              v148 = v203;
              v147 = v204;
              v149 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v150 = swift_allocObject();
              *(v150 + 16) = v190;
              *(v150 + 56) = MEMORY[0x1E69E6158];
              *(v150 + 64) = sub_1AF0D544C();
              *(v150 + 32) = v148;
              *(v150 + 40) = v147;

              sub_1AFDFC4C8();

              v151 = v195;
              sub_1AFDFC288();
              v152 = v197;
              v153 = v198[12];
              v154 = v198[16];
              v155 = &v197[v198[20]];
              (*v187)(v197, v151, v196);
              *(v152 + v153) = v149;
              *(v152 + v154) = 0;
              *v155 = v148;
              *(v155 + 1) = v147;

              sub_1AFDFC608();

              sub_1AFD53198(v152, sub_1AF0D4E74);

              v140 = (v206 + 24);
              v139 = v202 - 1;
              v122 = v192;
            }

            while (v202 != 1);
          }

          v39 = v185;
          v156 = *(*(v185 + 40) + 16);
          v157 = *(v156 + 128);
          if (*(v157 + 16))
          {
            v158 = sub_1AF449CB8(v184);
            if ((v159 & 1) != 0 && *(*(v156 + 24) + 16 * *(*(v157 + 56) + 8 * v158) + 32) == v184)
            {
              v203 = v184;
              v204 = &off_1F2558F90;
              v205 = 1;

              sub_1AF6304E8((v177 + 13), &v203, v193, 0, v39, v177);

              sub_1AF635250(&v203);
            }
          }

          sub_1AFD53F14(0, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
          v161 = *(*(v39 + 40) + 16);
          v162 = *(v161 + 128);
          v24 = v201;
          if (*(v162 + 16))
          {
            v163 = v160;
            v164 = sub_1AF449CB8(v160);
            if ((v165 & 1) != 0 && *(*(v161 + 24) + 16 * *(*(v162 + 56) + 8 * v164) + 32) == v163)
            {
              v203 = v163;
              v204 = &off_1F250F310;
              v205 = 1;

              sub_1AF6304E8((v177 + 13), &v203, v193, 0, v39, v177);

              sub_1AF635250(&v203);
            }
          }
        }

        v107 = v193 + 1;
        result = sub_1AFD53198(v122, type metadata accessor for ScriptIndex);
        a1 = v178;
        if (v107 == v179)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFD39AF0(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v248 = a8;
  v267 = a7;
  v261 = a5;
  v262 = a6;
  v250 = a4;
  v249 = a3;
  v231 = a12;
  v230 = a11;
  v252 = a10;
  v245 = a9;
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v221 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v263 = (&v221 - v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v238 = &v221 - v24;
  v265 = type metadata accessor for ScriptIndex();
  v25 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265, v26);
  v28 = &v221 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = (&v221 - v31);
  MEMORY[0x1EEE9AC00](v33, v34);
  v237 = &v221 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v255 = &v221 - v38;
  v39 = a1[1];
  v242 = sub_1AF706090(v39, a1);
  v229 = sub_1AF705FD4(v39, a1);
  v260 = v39;
  result = sub_1AF706AB0(v39, a1);
  v241 = result;
  v223 = v12;
  v41 = a1[11];
  v243 = a2;
  v236 = v41;
  if (!v41)
  {
    v256 = v32;
    v240 = v28;
    v132 = a1[6];
    v239 = a1[7];
    if (v132 == v239)
    {
      return result;
    }

    v133 = v18;
    v246 = type metadata accessor for SimpleScript(0);
    v237 = *(*(v246 - 8) + 72);
    sub_1AFD53F14(0, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
    v233 = v134;
    v232 = *(*(v134 - 1) + 72);
    sub_1AFD53F14(0, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
    v236 = v135;
    v235 = *(*(v135 - 1) + 72);
    v136 = (v25 + 48);
    v257 = (v25 + 56);
    v228 = "nction for script ";
    v227 = "tal library for script ";
    v225 = 0x80000001AFF4F110;
    v226 = 0x80000001AFF4F1B0;
    v238 = v18;
    v234 = (v25 + 48);
    while (1)
    {
      v147 = v241 + v235 * v132;
      sub_1AFD53C4C(v147, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);

      v148 = sub_1AF6496EC(v132);

      if (*(a2 + 16) && (v149 = sub_1AF449D3C(v148), (v150 & 1) != 0))
      {
        v151 = (*(a2 + 56) + 8 * v149);
        v153 = *v151;
        v152 = v151[1];
      }

      else
      {

        v154 = sub_1AF6496EC(v132);

        v153 = v154;
        v152 = HIDWORD(v154);
      }

      v264 = v152;
      v155 = v242 + v237 * v132;
      sub_1AFB12858(v155 + *(v246 + 40), v133);
      v156 = *v136;
      v157 = (*v136)(v133, 1, v265);
      v251 = v147;
      if (v157 == 1)
      {

        v158 = sub_1AF6496EC(v132);

        v159 = v256;
        *v256 = v158;
        v160 = v265;
        swift_storeEnumTagMultiPayload();
        v161 = v156(v133, 1, v160);
        v147 = v251;
        if (v161 != 1)
        {
          sub_1AFD53CA8(v133, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        v159 = v256;
        sub_1AFD53D8C(v133, v256, type metadata accessor for ScriptIndex);
      }

      v162 = v240;
      sub_1AFD531F8(v159, v240, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v162, type metadata accessor for ScriptIndex);
      }

      else
      {
        *&v163 = *v162;
        v164 = *(a2 + 16);
        v266 = v163;
        if (v164)
        {
          v165 = sub_1AF449D3C(v163);
          v167 = v256;
          if (v168)
          {
            *&v166 = *(*(a2 + 56) + 8 * v165);
            v266 = v166;
          }
        }

        else
        {
          v167 = v256;
        }

        sub_1AFD53198(v167, type metadata accessor for ScriptIndex);
        *v167 = v266;
        swift_storeEnumTagMultiPayload();
      }

      sub_1AFD531F8(v155, v147, type metadata accessor for SimpleScript);
      v169 = sub_1AFAA8354();
      v170 = v236;
      v171 = v147 + v236[9];
      *v171 = v169;
      *(v171 + 8) = 0;
      v172 = v170[10];
      v259 = 1;
      *(v147 + v172) = 1;
      *(v147 + v170[11]) = 0;
      v173 = v147 + v170[12];
      strcpy(v173, "<precompiled>");
      *(v173 + 14) = -4864;
      *(v147 + v170[13]) = MEMORY[0x1E69E7CC0];
      v174 = *v155;
      v273 = MEMORY[0x1E69E7CD0];
      v175 = *(v155 + 32);
      if (v175 < 4)
      {
        v259 = sub_1AFDFEE28();
      }

      v255 = v132;
      v247 = v174;

      v176 = sub_1AFD081BC(v249, v250 & 1);
      v177 = *(v176 + 2);
      if (v177)
      {
        break;
      }

      v137 = MEMORY[0x1E69E7CC0];
      v138 = MEMORY[0x1E69E7CC0];
LABEL_78:
      v139 = v255;
      v140 = v229 + v232 * v255;
      sub_1AFD53C4C(v140, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v251, v140, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
      v141 = v233;
      v142 = (v140 + v233[15]);
      *v142 = v247;
      v142[1] = 0;
      *(v140 + v141[9]) = v177;
      *(v140 + v141[10]) = v138;
      *(v140 + v141[11]) = v137;
      v143 = v139;
      *(v140 + v141[12]) = 0;
      *(v140 + v141[13]) = 0;
      v144 = v140 + v141[14];
      *v144 = v249;
      *(v144 + 8) = v250 & 1;

      v145 = sub_1AF6496EC(v139);

      v270 = v141;
      v271 = &off_1F2558F90;
      v146 = sub_1AF585714(&v268);
      sub_1AFD53D18(v140, v146, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      v272 = 0;
      sub_1AF8259D0(&v268, v246, v145);
      sub_1AF967B70(v273);
      result = sub_1AFD53198(v256, type metadata accessor for ScriptIndex);
      a2 = v243;
      v133 = v238;
LABEL_79:
      v132 = v143 + 1;
      v136 = v234;
      if (v132 == v239)
      {
        return result;
      }
    }

    *&v266 = 0;
    v244 = v176;
    v178 = (v176 + 48);
    v137 = MEMORY[0x1E69E7CC0];
    v254 = MEMORY[0x1E69E7CC0];
    v253 = v153 | (v264 << 32);
    v258 = v175;
    while (1)
    {
      v180 = *(v178 - 2);
      v181 = *(v178 - 1);
      LODWORD(v264) = *v178;
      if (v259)
      {
        swift_bridgeObjectRetain_n();

        v182 = v255;
        v183 = sub_1AF6496EC(v255);

        v184 = v182;
        v175 = v258;
        v185 = sub_1AF6496EC(v184);

        v186 = v263;
        *v263 = v185;
        v187 = v186;
        v188 = v265;
        swift_storeEnumTagMultiPayload();
        (*v257)(v187, 0, 1, v188);
      }

      else
      {
        v187 = v263;
        sub_1AFD531F8(v256, v263, type metadata accessor for ScriptIndex);
        (*v257)(v187, 0, 1, v265);
        swift_bridgeObjectRetain_n();
        v183 = v253;
      }

      v189 = sub_1AFAF8B58(v180, v181, v261, v262, v183, 0x656C706D6973uLL, 0xE600000000000000, v187);
      v191 = v190;

      sub_1AFD53CA8(v187, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v268, v189, v191);

      if (v175 >= 4)
      {
        break;
      }

      v192 = sub_1AFDFEE28();

      if (v192)
      {
        goto LABEL_108;
      }

      if (v175 == 2)
      {
        if (v252)
        {

          v199 = v137;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v199 = sub_1AF4246B0(0, *(v137 + 2) + 1, 1, v137);
          }

          v201 = *(v199 + 2);
          v200 = *(v199 + 3);
          v137 = v199;
          v202 = v252;
          if (v201 >= v200 >> 1)
          {
            v137 = sub_1AF4246B0(v200 > 1, v201 + 1, 1, v199);
          }

          *(v137 + 2) = v201 + 1;
          v203 = &v137[24 * v201];
          *(v203 + 4) = v189;
          *(v203 + 5) = v191;
          v203[48] = v264;
          *&v266 = v202;
        }

        else
        {

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v268 = 0;
          v269 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD000000000000027, v228 | 0x8000000000000000);
          MEMORY[0x1B2718AE0](v189, v191);

          MEMORY[0x1B2718AE0](0xD000000000000031, v227 | 0x8000000000000000);
          v214 = v268;
          v213 = v269;
          v215 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v216 = v215;
            swift_once();
            v215 = v216;
          }

          v268 = 0;
          sub_1AF0D4F18(v215, &v268, v214, v213);
        }

        goto LABEL_101;
      }

      v204 = v248;
      if (!*(v248 + 16) || (v205 = sub_1AF419914(v189, v191), (v206 & 1) == 0))
      {

        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v268 = 0;
        v269 = 0xE000000000000000;
        sub_1AFDFE218();

        v268 = 0xD000000000000022;
        v269 = v225;
        MEMORY[0x1B2718AE0](v189, v191);

        v218 = v268;
        v217 = v269;
        v219 = sub_1AFDFDA08();
        a2 = v243;
        v133 = v238;
        v143 = v255;
        if (qword_1ED731058 == -1)
        {
          goto LABEL_138;
        }

LABEL_145:
        v220 = v219;
        swift_once();
        v219 = v220;
LABEL_138:
        v268 = 0;
        sub_1AF0D4F18(v219, &v268, v218, v217);

        result = sub_1AFD53198(v256, type metadata accessor for ScriptIndex);
        goto LABEL_79;
      }

      v207 = v205;

      v208 = *(*(v204 + 56) + 8 * v207);
      v209 = v254;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v209 = sub_1AF42469C(0, *(v209 + 2) + 1, 1, v209);
      }

      v211 = *(v209 + 2);
      v210 = *(v209 + 3);
      v254 = v209;
      if (v211 >= v210 >> 1)
      {
        v254 = sub_1AF42469C(v210 > 1, v211 + 1, 1, v254);
      }

      v212 = v254;
      *(v254 + 2) = v211 + 1;
      *&v212[8 * v211 + 32] = v208;
LABEL_100:

LABEL_101:
      v178 += 24;
      if (!--v177)
      {

        v177 = v266;
        v138 = v254;
        goto LABEL_78;
      }
    }

LABEL_108:
    if (!v267 || (v193 = *(v267 + 96), v194 = sub_1AFDFCEC8(), v195 = [v193 objectForKeyedSubscript_], v193, v194, !v195))
    {

LABEL_135:

      v133 = v238;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v268 = 0;
      v269 = 0xE000000000000000;
      sub_1AFDFE218();

      v268 = 0xD000000000000025;
      v269 = v226;
      MEMORY[0x1B2718AE0](v189, v191);

      v218 = v268;
      v217 = v269;
      v219 = sub_1AFDFDA08();
      a2 = v243;
      v143 = v255;
      if (qword_1ED731058 != -1)
      {
        goto LABEL_145;
      }

      goto LABEL_138;
    }

    v196 = [v195 isUndefined];

    if (v196)
    {
      goto LABEL_135;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v137 = sub_1AF4246B0(0, *(v137 + 2) + 1, 1, v137);
    }

    v175 = v258;
    v198 = *(v137 + 2);
    v197 = *(v137 + 3);
    if (v198 >= v197 >> 1)
    {
      v137 = sub_1AF4246B0(v197 > 1, v198 + 1, 1, v137);
    }

    *(v137 + 2) = v198 + 1;
    v179 = &v137[24 * v198];
    *(v179 + 4) = v189;
    *(v179 + 5) = v191;
    v179[48] = v264;
    goto LABEL_100;
  }

  v42 = v238;
  v235 = a1[13];
  if (v235)
  {
    v244 = type metadata accessor for SimpleScript(0);
    v234 = *(*(v244 - 1) + 72);
    sub_1AFD53F14(0, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
    v228 = v43;
    v227 = *(*(v43 - 1) + 72);
    sub_1AFD53F14(0, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
    v44 = 0;
    v233 = v45;
    v232 = *(*(v45 - 1) + 72);
    v46 = (v25 + 48);
    v257 = (v25 + 56);
    v226 = "nction for script ";
    v225 = "tal library for script ";
    v222 = 0x80000001AFF4F110;
    v224 = 0x80000001AFF4F1B0;
    v240 = (v25 + 48);
    while (1)
    {
      v57 = *&v236[2 * v44];
      v251 = v241 + v232 * v44;
      sub_1AFD53C4C(v251, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);

      v256 = v57;
      v58 = sub_1AF6496EC(v57);

      if (*(a2 + 16) && (v59 = sub_1AF449D3C(v58), (v60 & 1) != 0))
      {
        v61 = (*(a2 + 56) + 8 * v59);
        v62 = *v61;
        v63 = v61[1];
      }

      else
      {

        v64 = sub_1AF6496EC(v256);

        v62 = v64;
        v63 = HIDWORD(v64);
      }

      v247 = v44;
      v65 = v242 + v234 * v44;
      sub_1AFB12858(v65 + v244[10], v42);
      v66 = v42;
      v67 = *v46;
      if ((*v46)(v42, 1, v265) == 1)
      {

        v68 = sub_1AF6496EC(v256);

        v69 = v255;
        *v255 = v68;
        v70 = v265;
        swift_storeEnumTagMultiPayload();
        if (v67(v66, 1, v70) != 1)
        {
          sub_1AFD53CA8(v66, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        v71 = v42;
        v69 = v255;
        sub_1AFD53D8C(v71, v255, type metadata accessor for ScriptIndex);
      }

      v72 = v69;
      v73 = v237;
      sub_1AFD531F8(v72, v237, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v73, type metadata accessor for ScriptIndex);
      }

      else
      {
        *&v74 = *v73;
        v75 = *(a2 + 16);
        v266 = v74;
        if (v75)
        {
          v76 = sub_1AF449D3C(v74);
          v78 = v255;
          if (v79)
          {
            *&v77 = *(*(a2 + 56) + 8 * v76);
            v266 = v77;
          }
        }

        else
        {
          v78 = v255;
        }

        sub_1AFD53198(v78, type metadata accessor for ScriptIndex);
        *v78 = v266;
        swift_storeEnumTagMultiPayload();
      }

      v80 = v251;
      sub_1AFD531F8(v65, v251, type metadata accessor for SimpleScript);
      v81 = sub_1AFAA8354();
      v82 = v233;
      v83 = v80 + v233[9];
      *v83 = v81;
      *(v83 + 8) = 0;
      v84 = v82[10];
      v259 = 1;
      *(v80 + v84) = 1;
      *(v80 + v82[11]) = 0;
      v85 = v80 + v82[12];
      strcpy(v85, "<precompiled>");
      *(v85 + 14) = -4864;
      *(v80 + v82[13]) = MEMORY[0x1E69E7CC0];
      v86 = *v65;
      v273 = MEMORY[0x1E69E7CD0];
      v87 = *(v65 + 32);
      if (v87 < 4)
      {
        v259 = sub_1AFDFEE28();
      }

      v246 = v86;

      v88 = sub_1AFD081BC(v249, v250 & 1);
      v89 = *(v88 + 2);
      if (v89)
      {
        break;
      }

      v47 = MEMORY[0x1E69E7CC0];
      v48 = MEMORY[0x1E69E7CC0];
LABEL_5:
      v49 = v247;
      v50 = v229 + v227 * v247;
      sub_1AFD53C4C(v50, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v251, v50, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
      v51 = v228;
      v52 = (v50 + *(v228 + 15));
      *v52 = v246;
      v52[1] = 0;
      *(v50 + v51[9]) = v89;
      *(v50 + v51[10]) = v48;
      *(v50 + v51[11]) = v47;
      v53 = v49;
      *(v50 + v51[12]) = 0;
      *(v50 + v51[13]) = 0;
      v54 = v50 + v51[14];
      *v54 = v249;
      *(v54 + 8) = v250 & 1;

      v55 = sub_1AF6496EC(v256);

      v270 = v51;
      v271 = &off_1F2558F90;
      v56 = sub_1AF585714(&v268);
      sub_1AFD53D18(v50, v56, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      v272 = 0;
      sub_1AF8259D0(&v268, v244, v55);
      sub_1AF967B70(v273);
      result = sub_1AFD53198(v255, type metadata accessor for ScriptIndex);
      a2 = v243;
      v42 = v238;
      v46 = v240;
LABEL_6:
      v44 = v53 + 1;
      if (v44 == v235)
      {
        return result;
      }
    }

    *&v266 = 0;
    v239 = v88;
    v90 = (v88 + 48);
    v47 = MEMORY[0x1E69E7CC0];
    v254 = MEMORY[0x1E69E7CC0];
    v253 = v62 | (v63 << 32);
    v258 = v87;
    while (1)
    {
      v92 = *(v90 - 2);
      v93 = *(v90 - 1);
      LODWORD(v264) = *v90;
      if (v259)
      {
        swift_bridgeObjectRetain_n();

        v94 = v256;
        v95 = sub_1AF6496EC(v256);

        v96 = v94;
        v87 = v258;
        v97 = sub_1AF6496EC(v96);

        v98 = v263;
        *v263 = v97;
        v99 = v98;
        v100 = v265;
        swift_storeEnumTagMultiPayload();
        (*v257)(v99, 0, 1, v100);
      }

      else
      {
        v99 = v263;
        sub_1AFD531F8(v255, v263, type metadata accessor for ScriptIndex);
        (*v257)(v99, 0, 1, v265);
        swift_bridgeObjectRetain_n();
        v95 = v253;
      }

      v101 = sub_1AFAF8B58(v92, v93, v261, v262, v95, 0x656C706D6973uLL, 0xE600000000000000, v99);
      v103 = v102;

      sub_1AFD53CA8(v99, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v268, v101, v103);

      if (v87 >= 4)
      {
        break;
      }

      v104 = sub_1AFDFEE28();

      if (v104)
      {
        goto LABEL_35;
      }

      if (v87 == 2)
      {
        if (v252)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_1AF4246B0(0, *(v47 + 2) + 1, 1, v47);
          }

          v112 = *(v47 + 2);
          v111 = *(v47 + 3);
          v113 = v252;
          if (v112 >= v111 >> 1)
          {
            v47 = sub_1AF4246B0(v111 > 1, v112 + 1, 1, v47);
          }

          *(v47 + 2) = v112 + 1;
          v114 = &v47[24 * v112];
          *(v114 + 4) = v101;
          *(v114 + 5) = v103;
          v114[48] = v264;
          *&v266 = v113;
        }

        else
        {

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v268 = 0;
          v269 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD000000000000027, v226 | 0x8000000000000000);
          MEMORY[0x1B2718AE0](v101, v103);

          MEMORY[0x1B2718AE0](0xD000000000000031, v225 | 0x8000000000000000);
          v125 = v268;
          v124 = v269;
          v126 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v127 = v126;
            swift_once();
            v126 = v127;
          }

          v268 = 0;
          sub_1AF0D4F18(v126, &v268, v125, v124);
        }

        goto LABEL_28;
      }

      v115 = v248;
      if (!*(v248 + 16) || (v116 = sub_1AF419914(v101, v103), (v117 & 1) == 0))
      {

        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v268 = 0;
        v269 = 0xE000000000000000;
        sub_1AFDFE218();

        v268 = 0xD000000000000022;
        v269 = v222;
        MEMORY[0x1B2718AE0](v101, v103);

        v129 = v268;
        v128 = v269;
        v130 = sub_1AFDFDA08();
        a2 = v243;
        v42 = v238;
        v53 = v247;
        v46 = v240;
        if (qword_1ED731058 == -1)
        {
          goto LABEL_65;
        }

LABEL_72:
        v131 = v130;
        swift_once();
        v130 = v131;
LABEL_65:
        v268 = 0;
        sub_1AF0D4F18(v130, &v268, v129, v128);

        result = sub_1AFD53198(v255, type metadata accessor for ScriptIndex);
        goto LABEL_6;
      }

      v118 = v116;

      v119 = *(*(v115 + 56) + 8 * v118);
      v120 = v254;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v120 = sub_1AF42469C(0, *(v120 + 2) + 1, 1, v120);
      }

      v122 = *(v120 + 2);
      v121 = *(v120 + 3);
      v254 = v120;
      if (v122 >= v121 >> 1)
      {
        v254 = sub_1AF42469C(v121 > 1, v122 + 1, 1, v254);
      }

      v123 = v254;
      *(v254 + 2) = v122 + 1;
      *&v123[8 * v122 + 32] = v119;
LABEL_27:

LABEL_28:
      v90 += 24;
      if (!--v89)
      {

        v89 = v266;
        v48 = v254;
        goto LABEL_5;
      }
    }

LABEL_35:
    if (!v267 || (v105 = *(v267 + 96), v106 = sub_1AFDFCEC8(), v107 = [v105 objectForKeyedSubscript_], v105, v106, !v107))
    {

LABEL_62:

      v42 = v238;
      v46 = v240;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v268 = 0;
      v269 = 0xE000000000000000;
      sub_1AFDFE218();

      v268 = 0xD000000000000025;
      v269 = v224;
      MEMORY[0x1B2718AE0](v101, v103);

      v129 = v268;
      v128 = v269;
      v130 = sub_1AFDFDA08();
      a2 = v243;
      v53 = v247;
      if (qword_1ED731058 != -1)
      {
        goto LABEL_72;
      }

      goto LABEL_65;
    }

    v108 = [v107 isUndefined];

    if (v108)
    {
      goto LABEL_62;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_1AF4246B0(0, *(v47 + 2) + 1, 1, v47);
    }

    v87 = v258;
    v110 = *(v47 + 2);
    v109 = *(v47 + 3);
    if (v110 >= v109 >> 1)
    {
      v47 = sub_1AF4246B0(v109 > 1, v110 + 1, 1, v47);
    }

    *(v47 + 2) = v110 + 1;
    v91 = &v47[24 * v110];
    *(v91 + 4) = v101;
    *(v91 + 5) = v103;
    v91[48] = v264;
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_1AFD3BDCC(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6)
{
  v196 = a6;
  v195 = a5;
  LODWORD(v208) = a4;
  v207 = a3;
  sub_1AF0D4E74();
  v194 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v193 = &v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_1AFDFC298();
  v203 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192, v11);
  v191 = &v183 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = (&v183 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v18);
  v190 = &v183 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v189 = &v183 - v22;
  v23 = type metadata accessor for ScriptIndex();
  *&v198 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v183 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v183 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v204 = (&v183 - v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  v218 = (&v183 - v36);
  v37 = a1[1];
  v38 = sub_1AF706D00(v37, a1);
  v39 = sub_1AF7064D0(v37, a1);
  result = sub_1AF7069F4(v37, a1);
  v41 = a1[11];
  v199 = a2;
  v212 = v23;
  v200 = v37;
  if (!v41)
  {
    v218 = v30;
    v206 = v26;
    v214 = v16;
    v109 = a1[6];
    v204 = a1[7];
    if (v109 == v204)
    {
      return result;
    }

    v210 = type metadata accessor for MetalFunctionScript(0);
    v110 = *(*(v210 - 8) + 72);
    sub_1AFD53F14(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
    v213 = v111;
    v112 = *(v111 - 8);
    v211 = v198 + 48;
    v113 = *(v112 + 72);
    LODWORD(v189) = v208 | (v207 > 3004);
    v188 = 0x80000001AFF4F1E0;
    v187 = (v198 + 56);
    v186 = (v203 + 32);
    v201 = v113;
    v114 = v39 + v109 * v113;
    v202 = v110;
    v115 = v38 + v109 * v110;
    v184 = "vfx_custom_shader_%SCRIPT_ID%";
    v185 = "%PROJECT%_%KIND%_%ORIG_ENTITY%";
    v198 = xmmword_1AFE431C0;
    v205 = a1;
    while (1)
    {
      v203 = a1[2];

      if (*(v37 + 184))
      {
        while (1)
        {
LABEL_98:
          sub_1AFDFE518();
          __break(1u);
        }
      }

      v117 = *(*(v37 + 168) + 4 * v109);
      v118 = *(*(v116 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v117 + 8);

      v119 = v214;
      if (*(a2 + 16) && (v120 = sub_1AF449D3C(v117 | (v118 << 32)), (v121 & 1) != 0))
      {
        v122 = (*(a2 + 56) + 8 * v120);
        v123 = *v122;
        v207 = v122[1];
      }

      else
      {

        if (*(v37 + 184))
        {
          goto LABEL_98;
        }

        v123 = *(*(v37 + 168) + 4 * v109);
        v207 = *(*(v124 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v123 + 8);
      }

      sub_1AFB12858(v115 + *(v210 + 24), v119);
      v125 = *v211;
      v126 = (*v211)(v119, 1, v212);
      *&v208 = v123;
      if (v126 == 1)
      {
        v127 = v200;

        if (*(v127 + 184))
        {
          goto LABEL_98;
        }

        v129 = *(*(v127 + 168) + 4 * v109);
        v130 = *(*(v128 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v129 + 8);

        v131 = v218;
        *v218 = v129;
        v131[1] = v130;
        v132 = v212;
        swift_storeEnumTagMultiPayload();
        v133 = v214;
        if (v125(v214, 1, v132) != 1)
        {
          sub_1AFD53CA8(v133, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        v131 = v218;
        sub_1AFD53D8C(v119, v218, type metadata accessor for ScriptIndex);
      }

      v134 = v131;
      v135 = v206;
      sub_1AFD531F8(v134, v206, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v135, type metadata accessor for ScriptIndex);
      }

      else
      {
        *&v136 = *v135;
        v137 = *(a2 + 16);
        v209 = v136;
        if (v137)
        {
          v138 = sub_1AF449D3C(v136);
          v140 = v218;
          if (v141)
          {
            *&v139 = *(*(a2 + 56) + 8 * v138);
            v209 = v139;
          }
        }

        else
        {
          v140 = v218;
        }

        sub_1AFD53198(v140, type metadata accessor for ScriptIndex);
        *v140 = v209;
        swift_storeEnumTagMultiPayload();
      }

      if (!*(v114 + *(v213 + 40)) && !*(v114 + *(v213 + 44)))
      {
        break;
      }

LABEL_52:
      ++v109;
      result = sub_1AFD53198(v218, type metadata accessor for ScriptIndex);
      v114 += v201;
      v115 += v202;
      v37 = v200;
      if (v204 == v109)
      {
        return result;
      }
    }

    v142 = *(v115 + *(v210 + 32));
    if (v142[2])
    {
      v144 = v142[4];
      v143 = v142[5];
    }

    else
    {
      v144 = 0;
      v143 = 0;
    }

    v145 = sub_1AFB08DA4(v144, v143, 0, 0xE000000000000000, 1, 1);
    v147 = v146;

    if ((v189 & 1) == 0)
    {
      sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
      v151 = swift_allocObject();
      *(v151 + 16) = v198;
      LOBYTE(v148) = *(v115 + *(v210 + 36));
      *(v151 + 32) = v145;
LABEL_84:
      *(v151 + 40) = v147;
      *(v151 + 48) = v148;
      v154 = v208 | (v207 << 32);
      *&v209 = v151;
      v155 = *(v151 + 32);
      v156 = v190;
      sub_1AFD531F8(v218, v190, type metadata accessor for ScriptIndex);
      (*v187)(v156, 0, 1, v212);

      v157 = sub_1AFAF8B58(v155, v147, v195, v196, v154, 0x6C656E72656BuLL, 0xE600000000000000, v156);
      v159 = v158;

      sub_1AFD53CA8(v156, qword_1ED730680, type metadata accessor for ScriptIndex);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v215 = 0;
      v216 = 0xE000000000000000;
      sub_1AFDFE218();

      v215 = 0xD000000000000022;
      v216 = v188;
      MEMORY[0x1B2718AE0](v157, v159);

      v161 = v215;
      v160 = v216;
      v162 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      if (qword_1ED730E98 != -1)
      {
        swift_once();
      }

      sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v163 = swift_allocObject();
      *(v163 + 16) = v198;
      *(v163 + 56) = MEMORY[0x1E69E6158];
      *(v163 + 64) = sub_1AF0D544C();
      *(v163 + 32) = v161;
      *(v163 + 40) = v160;

      sub_1AFDFC4C8();

      v164 = v160;
      v165 = v191;
      sub_1AFDFC288();
      v166 = v194[12];
      v207 = v194[16];
      *&v208 = v166;
      v167 = v194[20];
      LOBYTE(v163) = v162;
      v168 = v193;
      v197 = v161;
      v169 = &v193[v167];
      (*v186)(v193, v165, v192);
      v170 = v207;
      *(v168 + v208) = v163;
      *(v168 + v170) = 0;
      *v169 = v197;
      *(v169 + 1) = v164;

      sub_1AFDFC608();

      sub_1AFD53198(v168, sub_1AF0D4E74);

      v171 = v200;
      v172 = *(*(v200 + 40) + 16);
      v173 = *(v172 + 128);
      if (*(v173 + 16))
      {
        v174 = sub_1AF449CB8(v213);
        if ((v175 & 1) != 0 && *(*(v172 + 24) + 16 * *(*(v173 + 56) + 8 * v174) + 32) == v213)
        {
          v215 = v213;
          v216 = &off_1F2558F90;
          v217 = 1;

          sub_1AF6304E8(v203 + 104, &v215, v109, 0, v171, v203);

          sub_1AF635250(&v215);
        }
      }

      sub_1AFD53F14(0, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
      v177 = *(*(v171 + 40) + 16);
      v178 = *(v177 + 128);
      a2 = v199;
      a1 = v205;
      if (*(v178 + 16))
      {
        v179 = v176;
        v180 = sub_1AF449CB8(v176);
        if ((v181 & 1) != 0 && *(*(v177 + 24) + 16 * *(*(v178 + 56) + 8 * v180) + 32) == v179)
        {
          v215 = v179;
          v216 = &off_1F250F310;
          v217 = 1;
          v182 = v200;

          sub_1AF6304E8(v203 + 104, &v215, v109, 0, v182, v203);

          sub_1AF635250(&v215);
        }
      }

      goto LABEL_52;
    }

    v148 = *(v115 + *(v210 + 36));
    if (v148 > 1)
    {
      if (v148 != 2)
      {
        goto LABEL_98;
      }
    }

    else if (!*(v115 + *(v210 + 36)))
    {
      v149 = 0xD000000000000017;
      v150 = &v211;
LABEL_83:
      v152 = *(v150 - 32) | 0x8000000000000000;
      v215 = v149;
      v216 = v152;

      MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
      MEMORY[0x1B2718AE0](v145, v147);
      swift_bridgeObjectRelease_n();
      v153 = v215;
      v147 = v216;
      sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
      v151 = swift_allocObject();
      *(v151 + 16) = v198;
      *(v151 + 32) = v153;
      goto LABEL_84;
    }

    v149 = 0xD00000000000001DLL;
    v150 = &v213;
    goto LABEL_83;
  }

  v214 = v41;
  v42 = a1[13];
  v43 = v189;
  if (v42)
  {
    *&v209 = type metadata accessor for MetalFunctionScript(0);
    v202 = *(*(v209 - 8) + 72);
    sub_1AFD53F14(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
    v211 = v44;
    v45 = *(v44 - 8);
    v210 = v198 + 48;
    v201 = *(v45 + 72);
    LODWORD(v188) = v208 | (v207 > 3004);
    v187 = 0x80000001AFF4F1E0;
    v186 = (v198 + 56);
    v185 = (v203 + 32);
    v183 = "vfx_custom_shader_%SCRIPT_ID%";
    v184 = "%PROJECT%_%KIND%_%ORIG_ENTITY%";
    v198 = xmmword_1AFE431C0;
    v205 = a1;
    while (1)
    {
      v46 = *v214;
      v213 = v42;
      ++v214;
      v203 = a1[2];

      if (*(v37 + 184))
      {
        goto LABEL_98;
      }

      v48 = *(*(v37 + 168) + 4 * v46);
      v49 = *(*(v47 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v48 + 8);

      if (*(a2 + 16) && (v50 = sub_1AF449D3C(v48 | (v49 << 32)), (v51 & 1) != 0))
      {
        v52 = (*(a2 + 56) + 8 * v50);
        v53 = *v52;
        v206 = v52[1];
        v207 = v53;
      }

      else
      {

        if (*(v37 + 184))
        {
          goto LABEL_98;
        }

        v55 = *(*(v37 + 168) + 4 * v46);
        v206 = *(*(v54 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v55 + 8);
        v207 = v55;
      }

      v56 = v218;
      sub_1AFB12858(v38 + *(v209 + 24), v43);
      v57 = *v210;
      if ((*v210)(v43, 1, v23) == 1)
      {

        if (*(v37 + 184))
        {
          goto LABEL_98;
        }

        v59 = *(*(v37 + 168) + 4 * v46);
        v60 = *(*(v58 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v59 + 8);

        v61 = v218;
        *v218 = v59;
        v61[1] = v60;
        v56 = v61;
        swift_storeEnumTagMultiPayload();
        v62 = v57(v43, 1, v23);
        a2 = v199;
        if (v62 != 1)
        {
          sub_1AFD53CA8(v43, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        sub_1AFD53D8C(v43, v56, type metadata accessor for ScriptIndex);
      }

      v63 = v204;
      sub_1AFD531F8(v56, v204, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v63, type metadata accessor for ScriptIndex);
      }

      else
      {
        *&v64 = *v63;
        v65 = *(a2 + 16);
        v208 = v64;
        if (v65)
        {
          v66 = sub_1AF449D3C(v64);
          if (v68)
          {
            *&v67 = *(*(a2 + 56) + 8 * v66);
            v208 = v67;
          }
        }

        sub_1AFD53198(v56, type metadata accessor for ScriptIndex);
        *v56 = v208;
        swift_storeEnumTagMultiPayload();
      }

      if (!*(v39 + *(v211 + 40)) && !*(v39 + *(v211 + 44)))
      {
        break;
      }

LABEL_4:
      result = sub_1AFD53198(v218, type metadata accessor for ScriptIndex);
      v39 += v201;
      v38 += v202;
      v42 = v213 - 1;
      a1 = v205;
      if (v213 == 1)
      {
        return result;
      }
    }

    v69 = *(v38 + *(v209 + 32));
    if (v69[2])
    {
      v71 = v69[4];
      v70 = v69[5];
    }

    else
    {
      v71 = 0;
      v70 = 0;
    }

    v72 = sub_1AFB08DA4(v71, v70, 0, 0xE000000000000000, 1, 1);
    v74 = v73;

    if ((v188 & 1) == 0)
    {
      sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
      v78 = swift_allocObject();
      *(v78 + 16) = v198;
      LOBYTE(v75) = *(v38 + *(v209 + 36));
      *(v78 + 32) = v72;
LABEL_35:
      *(v78 + 40) = v74;
      *(v78 + 48) = v75;
      v81 = v207 | (v206 << 32);
      *&v208 = v78;
      v82 = *(v78 + 32);
      v83 = v190;
      sub_1AFD531F8(v218, v190, type metadata accessor for ScriptIndex);
      (*v186)(v83, 0, 1, v23);

      v84 = sub_1AFAF8B58(v82, v74, v195, v196, v81, 0x6C656E72656BuLL, 0xE600000000000000, v83);
      v86 = v85;

      sub_1AFD53CA8(v83, qword_1ED730680, type metadata accessor for ScriptIndex);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v215 = 0;
      v216 = 0xE000000000000000;
      sub_1AFDFE218();

      v215 = 0xD000000000000022;
      v216 = v187;
      MEMORY[0x1B2718AE0](v84, v86);

      v88 = v215;
      v87 = v216;
      v89 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      v207 = v38;
      v197 = v46;
      if (qword_1ED730E98 != -1)
      {
        swift_once();
      }

      sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v90 = swift_allocObject();
      *(v90 + 16) = v198;
      *(v90 + 56) = MEMORY[0x1E69E6158];
      *(v90 + 64) = sub_1AF0D544C();
      *(v90 + 32) = v88;
      *(v90 + 40) = v87;

      sub_1AFDFC4C8();

      v206 = v88;
      v91 = v191;
      sub_1AFDFC288();
      v92 = v194[12];
      v93 = v194[16];
      v94 = v89;
      v95 = v193;
      v96 = v87;
      v97 = &v193[v194[20]];
      (*v185)(v193, v91, v192);
      *(v95 + v92) = v94;
      *(v95 + v93) = 0;
      *v97 = v206;
      *(v97 + 1) = v96;

      sub_1AFDFC608();

      sub_1AFD53198(v95, sub_1AF0D4E74);

      v37 = v200;
      v98 = *(*(v200 + 40) + 16);
      v99 = *(v98 + 128);
      v100 = v197;
      if (*(v99 + 16))
      {
        v101 = sub_1AF449CB8(v211);
        if ((v102 & 1) != 0 && *(*(v98 + 24) + 16 * *(*(v99 + 56) + 8 * v101) + 32) == v211)
        {
          v215 = v211;
          v216 = &off_1F2558F90;
          v217 = 1;

          sub_1AF6304E8(v203 + 104, &v215, v100, 0, v37, v203);

          sub_1AF635250(&v215);
        }
      }

      sub_1AFD53F14(0, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
      v104 = *(*(v37 + 40) + 16);
      v105 = *(v104 + 128);
      a2 = v199;
      v23 = v212;
      v43 = v189;
      v38 = v207;
      if (*(v105 + 16))
      {
        v106 = v103;
        v107 = sub_1AF449CB8(v103);
        if ((v108 & 1) != 0 && *(*(v104 + 24) + 16 * *(*(v105 + 56) + 8 * v107) + 32) == v106)
        {
          v215 = v106;
          v216 = &off_1F250F310;
          v217 = 1;

          sub_1AF6304E8(v203 + 104, &v215, v197, 0, v37, v203);

          sub_1AF635250(&v215);
        }
      }

      goto LABEL_4;
    }

    v75 = *(v38 + *(v209 + 36));
    if (v75 > 1)
    {
      if (v75 != 2)
      {
        goto LABEL_98;
      }
    }

    else if (!*(v38 + *(v209 + 36)))
    {
      v76 = 0xD000000000000017;
      v77 = &v210;
LABEL_34:
      v79 = *(v77 - 32) | 0x8000000000000000;
      v215 = v76;
      v216 = v79;

      MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
      MEMORY[0x1B2718AE0](v72, v74);
      swift_bridgeObjectRelease_n();
      v80 = v215;
      v74 = v216;
      sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
      v78 = swift_allocObject();
      *(v78 + 16) = v198;
      *(v78 + 32) = v80;
      goto LABEL_35;
    }

    v76 = 0xD00000000000001DLL;
    v77 = &v211;
    goto LABEL_34;
  }

  return result;
}