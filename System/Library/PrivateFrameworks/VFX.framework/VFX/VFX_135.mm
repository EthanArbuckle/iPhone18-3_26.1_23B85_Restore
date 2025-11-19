uint64_t sub_1AFB66FF4(uint64_t a1, char a2, float32x4_t a3)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 16);
  v8 = ecs_stack_allocator_allocate(v7[4], 8 * (v6 - v5), 8);
  v9 = *(a1 + 8);
  v10 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, *(a1 + 88), *(a1 + 96), *(a1 + 104), v7);
  v11 = 0;
  v12 = v6 - v5;
  if (v6 != v5)
  {
    v13 = vmulq_f32(a3, a3);
    do
    {
      v14 = vsubq_f32(a3, *(v10 + 16 * v5));
      v15 = vmulq_f32(v14, v14);
      if ((v15.f32[2] + vaddv_f32(*v15.f32)) <= v13.f32[3] != (a2 & 1))
      {
        v8[v11++] = v5;
      }

      ++v5;
    }

    while (v6 != v5);
  }

  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v32 = 5;
  if (v11 >= 1)
  {
    if (v11 == *(v9 + 240) - *(v9 + 232))
    {
      sub_1AF63515C(v30, v27);
      v29 = 0;
      v28 = 0uLL;
    }

    else
    {
      sub_1AF63515C(v30, v27);
      *&v28 = v8;
      *(&v28 + 1) = v12;
      v29 = v11;
    }

    v16 = v7[13];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7[13] = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1AF420EA0(0, v16[2] + 1, 1, v16);
      v7[13] = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v7[13] = sub_1AF420EA0(v18 > 1, v19 + 1, 1, v16);
    }

    v20 = v7[13];
    *(v20 + 16) = v19 + 1;
    v21 = v20 + 72 * v19;
    *(v21 + 32) = v27[0];
    v22 = v27[1];
    v23 = v27[2];
    v24 = v28;
    *(v21 + 96) = v29;
    *(v21 + 64) = v23;
    *(v21 + 80) = v24;
    *(v21 + 48) = v22;
    v7[13] = v20;
  }

  return sub_1AF635250(v30);
}

void sub_1AFB671E8(char a1, uint64_t a2, uint64_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, double a8, double a9, __n128 a10)
{
  v11 = vmulq_f32(a4, a4);
  v12 = vmulq_f32(a5, a5);
  a10.n128_u64[0] = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *&vextq_s8(v12, v12, 8uLL)), vadd_f32(vzip1_s32(*v11.i8, *v12.i8), vzip2_s32(*v11.i8, *v12.i8))));
  v13 = vmulq_f32(a6, a6);
  v14 = sqrtf(v13.f32[2] + vaddv_f32(*v13.f32));
  if (vabds_f32(fmaxf(fmaxf(a10.n128_f32[0], v14), a10.n128_f32[1]), fminf(fminf(a10.n128_f32[0], v14), a10.n128_f32[1])) <= 0.00001)
  {
    v80 = a4;
    v76 = v14;
    v78 = a10;
    *v18.i64 = sub_1AF6DE29C();
    v72 = v18;
    v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a6, a6), a6, 0xCuLL), vnegq_f32(a5)), a6, vextq_s8(vuzp1q_s32(a5, a5), a5, 0xCuLL));
    v20 = vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v80);
    v21 = (v20.f32[2] + vaddv_f32(*v20.f32)) < 0.0;
    v22 = 1.0;
    if (v21)
    {
      v22 = -1.0;
    }

    v67 = v22;
    v23 = *(a3 + 32);
    v102[0] = *(a3 + 16);
    v102[1] = v23;
    v103 = *(a3 + 48);
    sub_1AF6B06C0(a2, v102, 0x200000000, &v86);
    v24 = v78;
    if (v86)
    {
      v71 = v93;
      if (v93 >= 1)
      {
        v70 = v90;
        if (v90)
        {
          v25 = 0;
          v24.f32[2] = v76;
          v26 = vmulq_n_f32(v24, v67);
          v27 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a7, a6, v72, 2), a5, *v72.f32, 1), v80, v72.f32[0]);
          v27.i32[3] = vmuls_lane_f32(fmaxf(fmaxf(v26.f32[0], v26.f32[2]), v26.f32[1]), v72, 3);
          v75 = v27;
          v68 = v89;
          v28 = v92;
          v66 = v91;
          v29 = *(v91 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v85 = *(v92 + 32);
          v94 = v86;
          v95 = v87;
          v96 = v88;
          v65 = v29;
          v69 = a1;
          do
          {
            v30 = (v68 + 48 * v25);
            v31 = *v30;
            v32 = v30[1];
            v33 = v30[2];
            v34 = *(v30 + 2);
            v35 = *(v30 + 3);
            v36 = *(v30 + 4);
            v37 = *(v30 + 5);
            if (v29)
            {
              v38 = *(v37 + 376);

              os_unfair_lock_lock(v38);
              os_unfair_lock_lock(*(v37 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v85);
            v79 = *(v28 + 64);
            v81 = *(v28 + 48);
            v77 = *(v28 + 80);
            v39 = *(*(*(*(v37 + 40) + 16) + 32) + 16) + 1;
            *(v28 + 48) = ecs_stack_allocator_allocate(*(v28 + 32), 48 * v39, 8);
            *(v28 + 56) = v39;
            *(v28 + 72) = 0;
            *(v28 + 80) = 0;
            *(v28 + 64) = 0;
            v97[0] = v66;
            v97[1] = v37;
            v83 = v37;
            v97[2] = v28;
            v97[3] = v33;
            v97[4] = (v32 - v31 + v33);
            v97[5] = v71;
            v97[6] = v31;
            v97[7] = v32;
            v97[8] = 0;
            v97[9] = 0;
            v98 = 1;
            v99 = v34;
            v100 = v35;
            v101 = v36;
            sub_1AFB66FF4(v97, v69 & 1, v75);
            v40 = *(v28 + 48);
            v41 = *(v28 + 64);
            if (!v41)
            {
              v63 = *(v28 + 56);
              v64 = *(v28 + 32);
              goto LABEL_42;
            }

            v73 = v25;
            for (i = 0; i != v41; ++i)
            {
              v44 = (v40 + 48 * i);
              v45 = *v44;
              v46 = v44[4];
              v47 = *(v28 + 72);
              if (v47)
              {
                v48 = v45 == v47;
              }

              else
              {
                v48 = 0;
              }

              if (v48)
              {
                goto LABEL_14;
              }

              v49 = v94;
              if (!v94[11])
              {
                goto LABEL_14;
              }

              v50 = v44[2];
              v51 = v94 + 41;
              v52 = v94[9];
              if (v52 >= 0x10)
              {
                v53 = &v51[v94[8]];
                v54 = v52 >> 4;
                v55 = v94 + 41;
                while (*v53 != v45)
                {
                  ++v55;
                  v53 += 16;
                  if (!--v54)
                  {
                    goto LABEL_30;
                  }
                }

                v56 = v55[v94[10]];
                v57 = v56 > 5;
                v58 = (1 << v56) & 0x23;
                if (v57 || v58 == 0)
                {
LABEL_14:

                  v46(v43);

                  continue;
                }
              }

LABEL_30:
              if (swift_conformsToProtocol2() && v50)
              {
                if (sub_1AF5FC8D8(v50))
                {
                  goto LABEL_14;
                }

                v60 = v49[9];
                if (v60 < 0x10)
                {
                  goto LABEL_14;
                }

                v61 = &v51[v49[8]];
                v62 = 16 * (v60 >> 4);
                while (*v61 != v50)
                {
                  v61 += 16;
                  v62 -= 16;
                  if (!v62)
                  {
                    goto LABEL_14;
                  }
                }
              }
            }

            v63 = *(v28 + 56);
            v40 = *(v28 + 48);
            v64 = *(v28 + 32);
            if (*(v28 + 64) >= 1)
            {
              swift_arrayDestroy();
            }

            v25 = v73;
LABEL_42:
            ecs_stack_allocator_deallocate(v64, v40, 48 * v63);
            *(v28 + 48) = v81;
            *(v28 + 64) = v79;
            *(v28 + 80) = v77;
            sub_1AF62D29C(v83);
            ecs_stack_allocator_pop_snapshot(v85);
            v29 = v65;
            if (v65)
            {
              os_unfair_lock_unlock(*(v83 + 344));
              os_unfair_lock_unlock(*(v83 + 376));
            }

            ++v25;
          }

          while (v25 != v70);
        }
      }

      sub_1AF5D1564(&v86);
    }
  }
}

void sub_1AFB676E8(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = qword_1EB6372F8;

  if (v5 != -1)
  {
    swift_once();
  }

  v52[0] = xmmword_1EB6C35E0;
  v52[1] = *algn_1EB6C35F0;
  v53 = qword_1EB6C3600;
  sub_1AF6B06C0(v4, v52, 0x200000000, &v32);
  v26 = v32;
  if (v32)
  {
    v6 = v35;
    v7 = v36;
    v8 = v38;
    v40 = v33;
    v41 = v34;
    v24 = v39;
    v25 = v37;
    if (v39 > 0)
    {
      if (v36)
      {
        v9 = *(v38 + 32);
        v10 = *(v37 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        sub_1AF68A8E0(a1, &v31);

        sub_1AF5D15C0(&v32, &v31);
        v11 = (v6 + 24);
        v22 = v4;
        v23 = v2;
        v20 = v10;
        v21 = a1;
        do
        {
          v12 = *(v11 - 6);
          v13 = *(v11 - 5);
          v14 = *(v11 - 4);
          v29 = *(v11 - 1);
          v30 = v7;
          v15 = v11[2];
          v27 = v11[1];
          v28 = *v11;
          if (v10)
          {
            v16 = *(v15 + 376);

            os_unfair_lock_lock(v16);
            os_unfair_lock_lock(*(v15 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v9);
          v17 = *(v8 + 64);
          v45[0] = *(v8 + 48);
          v45[1] = v17;
          v46 = *(v8 + 80);
          v18 = *(v8 + 32);
          v19 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;

          *(v8 + 48) = ecs_stack_allocator_allocate(v18, 48 * v19, 8);
          *(v8 + 56) = v19;
          *(v8 + 72) = 0;
          *(v8 + 80) = 0;
          *(v8 + 64) = 0;

          LOBYTE(v31) = 1;
          v47[0] = v25;
          v47[1] = v15;
          v47[2] = v8;
          v47[3] = v14;
          v47[4] = (v13 - v12 + v14);
          v47[5] = v24;
          v47[6] = v12;
          v47[7] = v13;
          v47[8] = 0;
          v47[9] = 0;
          v48 = 1;
          v49 = v29;
          v50 = v28;
          v51 = v27;
          sub_1AF68A8E0(v21, &v31);

          sub_1AFD53904(v47, v21, v22, v23);

          sub_1AF688940(v21);
          v42 = v26;
          v43 = v40;
          v44 = v41;
          sub_1AF630994(v8, &v42, v45);
          sub_1AF62D29C(v15);
          ecs_stack_allocator_pop_snapshot(v9);
          v10 = v20;
          if (v20)
          {
            os_unfair_lock_unlock(*(v15 + 344));
            os_unfair_lock_unlock(*(v15 + 376));
          }

          v11 += 6;
          v7 = v30 - 1;
        }

        while (v30 != 1);

        sub_1AF5D1564(&v32);
        sub_1AF688940(v21);
      }

      else
      {
      }
    }

    sub_1AF5D1564(&v32);
  }

  else
  {
  }
}

unint64_t sub_1AFB67B50()
{
  result = qword_1EB642C60;
  if (!qword_1EB642C60)
  {
    sub_1AF82352C(255, &qword_1EB642C68, &type metadata for KillShape.Shape, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642C60);
  }

  return result;
}

unint64_t sub_1AFB67BD0()
{
  result = qword_1EB642C70;
  if (!qword_1EB642C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642C70);
  }

  return result;
}

unint64_t sub_1AFB67C24()
{
  result = qword_1EB642C80;
  if (!qword_1EB642C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642C80);
  }

  return result;
}

void sub_1AFB67C78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AFB67CE0()
{
  result = qword_1EB642C98;
  if (!qword_1EB642C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642C98);
  }

  return result;
}

unint64_t sub_1AFB67D58()
{
  result = qword_1EB642CA0;
  if (!qword_1EB642CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642CA0);
  }

  return result;
}

unint64_t sub_1AFB67DB0()
{
  result = qword_1EB642CA8;
  if (!qword_1EB642CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642CA8);
  }

  return result;
}

unint64_t sub_1AFB67E08()
{
  result = qword_1EB642CB0;
  if (!qword_1EB642CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642CB0);
  }

  return result;
}

unint64_t sub_1AFB67E60()
{
  result = qword_1EB642CB8;
  if (!qword_1EB642CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642CB8);
  }

  return result;
}

unint64_t sub_1AFB67EB8()
{
  result = qword_1EB642CC0;
  if (!qword_1EB642CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642CC0);
  }

  return result;
}

uint64_t sub_1AFB67F0C(uint64_t a1, char a2)
{
  result = sub_1AF649C6C(*(a1 + 40), &type metadata for LODCulled, v6);
  if ((v6[0] & 1) == 0)
  {
    v6[0] = &type metadata for LODCulled;
    v6[1] = &off_1F252B720;
    v7 = 0;
    MEMORY[0x1EEE9AC00](result, v5);
    sub_1AF63023C(a2 & 1, a1, sub_1AFB6A994);
    return sub_1AF635250(v6);
  }

  return result;
}

uint64_t sub_1AFB67FF4@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v11 = *v5;
  v12 = *v5 + 41;
  v13 = (*v5)[8];
  v14 = v11[9];
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C6B0;
  inited[4] = &type metadata for Position;
  inited[5] = &off_1F252EDF0;
  inited[6] = &type metadata for LODRenderer;
  inited[7] = &off_1F252B368;
  inited[8] = &type metadata for LODState;
  inited[9] = &off_1F252B420;
  inited[10] = &type metadata for ModelRenderer;
  inited[11] = &off_1F25623D0;
  if (v14 > 0xF)
  {
    v33 = sub_1AFC0592C((v12 + v13), v14 >> 4);
    sub_1AF48FC80(inited);
    inited = v33;
  }

  v16 = v11[10];
  v17 = v11[11];
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1AFE4C6B0;
  *(v18 + 32) = a1;
  *(v18 + 33) = a2;
  *(v18 + 34) = a3;
  *(v18 + 35) = a4;
  if (v17)
  {
    v33 = sub_1AFC0587C((v12 + v16), v17);
    sub_1AF48FBC0(v18);
    v18 = v33;
    v19 = v33[2];
  }

  else
  {
    v19 = 4;
  }

  v20 = *v6 + 41;
  v21 = (*v6)[12];
  v22 = (*v6)[13] >> 4;
  v23 = (*v6)[14];
  v24 = (*v6)[15] / 0x18u;
  v25 = *(v6 + 2);
  v26 = *(v6 + 12);
  v27 = v6[4];
  v28 = v6[2];
  v29 = *(v6 + 24);
  v30 = sub_1AF6B7F4C(inited + 4, inited[2], (v18 + 32), v19, (v20 + v21), v22, (v20 + v23), v24);

  *a5 = v30;
  *(a5 + 8) = v25;
  *(a5 + 12) = v26;
  *(a5 + 13) = v34;
  *(a5 + 15) = v35;
  *(a5 + 16) = v28;
  *(a5 + 24) = v29;
  *(a5 + 25) = v33;
  *(a5 + 28) = *(&v33 + 3);
  *(a5 + 32) = v27;
  return result;
}

void sub_1AFB68228(uint64_t a1, float32x4_t a2)
{
  v3 = *(v2 + 112);
  v70[0] = *(v2 + 96);
  v70[1] = v3;
  v71 = *(v2 + 128);
  sub_1AF6B06C0(a1, v70, 0x200000000, &v54);
  if (v54)
  {
    v46 = v61;
    if (v61 >= 1)
    {
      v45 = v58;
      if (v58)
      {
        v4 = 0;
        v44 = v57;
        v5 = v60;
        v43 = v59;
        v6 = *(v59 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v53 = *(v60 + 32);
        v62 = v54;
        v63 = v55;
        v64 = v56;
        v42 = v6;
        do
        {
          v7 = (v44 + 48 * v4);
          v8 = *v7;
          v9 = v7[1];
          v10 = v7[2];
          v11 = *(v7 + 2);
          v12 = *(v7 + 3);
          v13 = *(v7 + 4);
          v14 = *(v7 + 5);
          if (v6)
          {
            v15 = *(v14 + 376);

            os_unfair_lock_lock(v15);
            os_unfair_lock_lock(*(v14 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v53);
          v50 = *(v5 + 64);
          v51 = *(v5 + 48);
          v49 = *(v5 + 80);
          v16 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
          *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v16, 8);
          *(v5 + 56) = v16;
          *(v5 + 72) = 0;
          *(v5 + 80) = 0;
          *(v5 + 64) = 0;
          v65[0] = v43;
          v65[1] = v14;
          v52 = v14;
          v65[2] = v5;
          v65[3] = v10;
          v65[4] = (v9 - v8 + v10);
          v65[5] = v46;
          v65[6] = v8;
          v65[7] = v9;
          v65[8] = 0;
          v65[9] = 0;
          v66 = 1;
          v67 = v11;
          v68 = v12;
          v69 = v13;
          sub_1AFB685E8(v65, a2);
          v17 = *(v5 + 48);
          v18 = *(v5 + 64);
          if (!v18)
          {
            v40 = *(v5 + 56);
            v41 = *(v5 + 32);
            goto LABEL_39;
          }

          v48 = v4;
          for (i = 0; i != v18; ++i)
          {
            v21 = (v17 + 48 * i);
            v22 = *v21;
            v23 = v21[4];
            v24 = *(v5 + 72);
            if (v24)
            {
              v25 = v22 == v24;
            }

            else
            {
              v25 = 0;
            }

            if (v25)
            {
              goto LABEL_11;
            }

            v26 = v62;
            if (!v62[11])
            {
              goto LABEL_11;
            }

            v27 = v21[2];
            v28 = v62 + 41;
            v29 = v62[9];
            if (v29 >= 0x10)
            {
              v30 = &v28[v62[8]];
              v31 = v29 >> 4;
              v32 = v62 + 41;
              while (*v30 != v22)
              {
                ++v32;
                v30 += 16;
                if (!--v31)
                {
                  goto LABEL_27;
                }
              }

              v33 = v32[v62[10]];
              v34 = v33 > 5;
              v35 = (1 << v33) & 0x23;
              if (v34 || v35 == 0)
              {
LABEL_11:

                v23(v20);

                continue;
              }
            }

LABEL_27:
            if (swift_conformsToProtocol2() && v27)
            {
              if (sub_1AF5FC8D8(v27))
              {
                goto LABEL_11;
              }

              v37 = v26[9];
              if (v37 < 0x10)
              {
                goto LABEL_11;
              }

              v38 = &v28[v26[8]];
              v39 = 16 * (v37 >> 4);
              while (*v38 != v27)
              {
                v38 += 16;
                v39 -= 16;
                if (!v39)
                {
                  goto LABEL_11;
                }
              }
            }
          }

          v40 = *(v5 + 56);
          v17 = *(v5 + 48);
          v41 = *(v5 + 32);
          if (*(v5 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v4 = v48;
LABEL_39:
          ecs_stack_allocator_deallocate(v41, v17, 48 * v40);
          *(v5 + 48) = v51;
          *(v5 + 64) = v50;
          *(v5 + 80) = v49;
          sub_1AF62D29C(v52);
          ecs_stack_allocator_pop_snapshot(v53);
          v6 = v42;
          if (v42)
          {
            os_unfair_lock_unlock(*(v52 + 344));
            os_unfair_lock_unlock(*(v52 + 376));
          }

          ++v4;
        }

        while (v4 != v45);
      }
    }

    sub_1AF5D1564(&v54);
  }
}

uint64_t sub_1AFB685E8(void *a1, float32x4_t a2)
{
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v7 = a1[1];
  v6 = a1[2];

  v78 = sub_1AF64B110(&type metadata for LODRenderer, &off_1F252B3F0, v3, v4, v5, v6);
  v8 = sub_1AF64B110(&type metadata for LODState, &off_1F252B4A0, v3, v4, v5, v6);
  v79 = v6;
  v9 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v3, v4, v5, v6);
  v10 = v7[7].i32[1];
  if (v7[19].i32[2] != v10)
  {
    v11 = a1[6];
    v12 = 0.0;
    v13 = a1[7] - v11;
    if (v13)
    {
      v27 = (v78 + 8 * v11);
      do
      {
        v30 = *v27++;
        v29 = v30;
        if (v30)
        {
          v31 = *(v29 + 40);
          v28 = v31 ? *(*(v29 + 32) + 4 * v31 - 4) : 0.0;
          if (v12 <= v28)
          {
            v12 = v28;
          }
        }

        --v13;
      }

      while (v13);
    }

    v7[19].f32[1] = v12;
    v7[19].i32[2] = v10;
  }

  sub_1AF649C6C(v7[2].i64[1], &type metadata for LODCulled, &v81);
  if (v7[19].i32[0] == v7[7].i32[1])
  {
    v14 = vsubq_f32(vabdq_f32(a2, v7[17]), v7[18]);
    v14.i32[3] = 0;
    v15 = vmaxnmq_f32(v14, 0);
    v16 = vmulq_f32(v15, v15);
    if (v7[19].f32[1] < (v16.f32[2] + vaddv_f32(*v16.f32)))
    {
      if ((v81 & 1) == 0)
      {
        sub_1AFB67F0C(v7, 0);
      }

      goto LABEL_9;
    }
  }

  v18 = a1[6];
  v17 = a1[7];
  if (v17 == v18)
  {
LABEL_9:
  }

  v20 = ~v18 + v17;
  v21 = (v8 + 12 * v18 + 4);
  v22 = (v9 + 16 * v18);
  v23 = 1;
  while (1)
  {
    if (v23)
    {
      v24 = vsubq_f32(a2, *v22);
      v25 = vmulq_f32(v24, v24);
      v26 = v25.f32[2] + vaddv_f32(*v25.f32);
      if (*(v21 - 1) <= v26)
      {
        break;
      }
    }

    if (!v20)
    {
      goto LABEL_28;
    }

    v23 = 0;
LABEL_14:
    --v20;
    v21 += 3;
    ++v22;
  }

  v23 = v26 < *v21;
  if (v20)
  {
    goto LABEL_14;
  }

  if (v26 < *v21)
  {
    goto LABEL_9;
  }

LABEL_28:
  v32 = v4;
  v33 = v17 - v18;
  v34 = v81;
  v77 = sub_1AF64B110(&type metadata for ModelRenderer, &off_1F2562450, v3, v32, v5, v79);
  v76 = 8 * (v17 - v18);
  v35 = ecs_stack_allocator_allocate(v79[4], v76, 8);
  v36 = v35;
  v37 = 0;
  v89 = v35;
  v90 = v17 - v18;
  while (2)
  {
    v38 = vsubq_f32(a2, *(v9 + 16 * v18));
    v39 = vmulq_f32(v38, v38);
    v40 = v39.f32[2] + vaddv_f32(*v39.f32);
    v41 = v8 + 12 * v18;
    if (*v41 > v40 || v40 >= *(v41 + 4))
    {
      v43 = *(v78 + 8 * v18);
      if (v43)
      {
        v44 = v43[5];
        if (v44)
        {
          v45 = v43[4];
          v46 = v45[v44 - 1];
          if (v40 < v46 && v45 != 0)
          {
            v48 = *v45;
            if (v40 < *v45)
            {
              v49 = 0;
              v50 = 0.0;
LABEL_49:
              *(v41 + 8) = v49;
              *v41 = v50;
              *(v41 + 4) = v48;
              *(v77 + 16 * v18) = *(v43[2] + 16 * v49);
              goto LABEL_30;
            }

            v51 = 0;
            v52 = v45 + 1;
            v53 = 4 * v44 - 4;
            v54 = v48;
            while (v53)
            {
              v48 = v52[v51];
              v49 = v51 + 1;
              v53 -= 4;
              v50 = v54;
              v54 = v48;
              ++v51;
              if (v40 < v48)
              {
                goto LABEL_49;
              }
            }
          }
        }

        else
        {
          v46 = INFINITY;
        }

        if ((v34 & 1) == 0)
        {
          v35[v37++] = v18;
        }

        *v41 = v46;
        *(v41 + 4) = -2155872256;
      }
    }

LABEL_30:
    if (++v18 != v17)
    {
      continue;
    }

    break;
  }

  v91 = v37;
  sub_1AF649C6C(v7[2].i64[1], &type metadata for LODCulled, &v81);
  if ((v81 & 1) == 0)
  {
    v86 = &type metadata for LODCulled;
    v87 = &off_1F252B720;
    v88 = 0;
    if (v37 < 1)
    {
    }

    else
    {
      if (v37 == v7[15].i64[0] - v7[14].i64[1])
      {
        sub_1AF63515C(&v86, &v81);
        v85 = 0;
        v84 = 0uLL;
      }

      else
      {
        sub_1AF63515C(&v86, &v81);
        *&v84 = v36;
        *(&v84 + 1) = v33;
        v85 = v37;
      }

      v56 = v79;
      v57 = v79[13];

LABEL_71:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56[13] = v57;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v57 = sub_1AF420EA0(0, v57[2] + 1, 1, v57);
        v79[13] = v57;
      }

      v70 = v57[2];
      v69 = v57[3];
      if (v70 >= v69 >> 1)
      {
        v79[13] = sub_1AF420EA0(v69 > 1, v70 + 1, 1, v57);
      }

      v71 = v79[13];
      *(v71 + 16) = v70 + 1;
      v72 = v71 + 72 * v70;
      *(v72 + 32) = v81;
      v73 = v82;
      v74 = v83;
      v75 = v84;
      *(v72 + 96) = v85;
      *(v72 + 64) = v74;
      *(v72 + 80) = v75;
      *(v72 + 48) = v73;
      v79[13] = v71;
    }

    return sub_1AF635250(&v86);
  }

  if (v37 >= v33)
  {
    ecs_stack_allocator_deallocate(v79[4], v36, v76);
    goto LABEL_9;
  }

  if (v37)
  {

    sub_1AF6490A8();
    v86 = &type metadata for LODCulled;
    v87 = &off_1F252B720;
    v88 = 1;
    v55 = v91;
    if (v91 >= 1)
    {
      if (v91 == v7[15].i64[0] - v7[14].i64[1])
      {
        sub_1AF63515C(&v86, &v81);
        v85 = 0;
        v84 = 0uLL;
      }

      else
      {
        v66 = v89;
        v67 = v90;
        sub_1AF63515C(&v86, &v81);
        *&v84 = v66;
        *(&v84 + 1) = v67;
        v85 = v55;
      }

      v56 = v79;
      v57 = v79[13];
      goto LABEL_71;
    }

    return sub_1AF635250(&v86);
  }

  else
  {
    v86 = &type metadata for LODCulled;
    v87 = &off_1F252B720;
    v88 = 1;
    sub_1AF63515C(&v86, &v81);
    v85 = 0;
    v84 = 0uLL;
    v58 = v79[13];

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v79[13] = v58;
    if ((v59 & 1) == 0)
    {
      v58 = sub_1AF420EA0(0, v58[2] + 1, 1, v58);
      v79[13] = v58;
    }

    v61 = v58[2];
    v60 = v58[3];
    if (v61 >= v60 >> 1)
    {
      v58 = sub_1AF420EA0(v60 > 1, v61 + 1, 1, v58);
    }

    v58[2] = v61 + 1;
    v62 = &v58[9 * v61];
    *(v62 + 2) = v81;
    v63 = v82;
    v64 = v83;
    v65 = v84;
    v62[12] = v85;
    *(v62 + 4) = v64;
    *(v62 + 5) = v65;
    *(v62 + 3) = v63;
    v79[13] = v58;
    sub_1AF635250(&v86);
    ecs_stack_allocator_deallocate(v79[4], v36, v76);
  }
}

void sub_1AFB68CB8(uint64_t a1, float32x4_t a2)
{
  v3 = *(v2 + 152);
  v70[0] = *(v2 + 136);
  v70[1] = v3;
  v71 = *(v2 + 168);
  sub_1AF6B06C0(a1, v70, 0x200000000, &v54);
  if (v54)
  {
    v46 = v61;
    if (v61 >= 1)
    {
      v45 = v58;
      if (v58)
      {
        v4 = 0;
        v44 = v57;
        v5 = v60;
        v43 = v59;
        v6 = *(v59 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v53 = *(v60 + 32);
        v62 = v54;
        v63 = v55;
        v64 = v56;
        v42 = v6;
        do
        {
          v7 = (v44 + 48 * v4);
          v8 = *v7;
          v9 = v7[1];
          v10 = v7[2];
          v11 = *(v7 + 2);
          v12 = *(v7 + 3);
          v13 = *(v7 + 4);
          v14 = *(v7 + 5);
          if (v6)
          {
            v15 = *(v14 + 376);

            os_unfair_lock_lock(v15);
            os_unfair_lock_lock(*(v14 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v53);
          v50 = *(v5 + 64);
          v51 = *(v5 + 48);
          v49 = *(v5 + 80);
          v16 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
          *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v16, 8);
          *(v5 + 56) = v16;
          *(v5 + 72) = 0;
          *(v5 + 80) = 0;
          *(v5 + 64) = 0;
          v65[0] = v43;
          v65[1] = v14;
          v52 = v14;
          v65[2] = v5;
          v65[3] = v10;
          v65[4] = (v9 - v8 + v10);
          v65[5] = v46;
          v65[6] = v8;
          v65[7] = v9;
          v65[8] = 0;
          v65[9] = 0;
          v66 = 1;
          v67 = v11;
          v68 = v12;
          v69 = v13;
          sub_1AFB6907C(v65, a2);
          v17 = *(v5 + 48);
          v18 = *(v5 + 64);
          if (!v18)
          {
            v40 = *(v5 + 56);
            v41 = *(v5 + 32);
            goto LABEL_39;
          }

          v48 = v4;
          for (i = 0; i != v18; ++i)
          {
            v21 = (v17 + 48 * i);
            v22 = *v21;
            v23 = v21[4];
            v24 = *(v5 + 72);
            if (v24)
            {
              v25 = v22 == v24;
            }

            else
            {
              v25 = 0;
            }

            if (v25)
            {
              goto LABEL_11;
            }

            v26 = v62;
            if (!v62[11])
            {
              goto LABEL_11;
            }

            v27 = v21[2];
            v28 = v62 + 41;
            v29 = v62[9];
            if (v29 >= 0x10)
            {
              v30 = &v28[v62[8]];
              v31 = v29 >> 4;
              v32 = v62 + 41;
              while (*v30 != v22)
              {
                ++v32;
                v30 += 16;
                if (!--v31)
                {
                  goto LABEL_27;
                }
              }

              v33 = v32[v62[10]];
              v34 = v33 > 5;
              v35 = (1 << v33) & 0x23;
              if (v34 || v35 == 0)
              {
LABEL_11:

                v23(v20);

                continue;
              }
            }

LABEL_27:
            if (swift_conformsToProtocol2() && v27)
            {
              if (sub_1AF5FC8D8(v27))
              {
                goto LABEL_11;
              }

              v37 = v26[9];
              if (v37 < 0x10)
              {
                goto LABEL_11;
              }

              v38 = &v28[v26[8]];
              v39 = 16 * (v37 >> 4);
              while (*v38 != v27)
              {
                v38 += 16;
                v39 -= 16;
                if (!v39)
                {
                  goto LABEL_11;
                }
              }
            }
          }

          v40 = *(v5 + 56);
          v17 = *(v5 + 48);
          v41 = *(v5 + 32);
          if (*(v5 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v4 = v48;
LABEL_39:
          ecs_stack_allocator_deallocate(v41, v17, 48 * v40);
          *(v5 + 48) = v51;
          *(v5 + 64) = v50;
          *(v5 + 80) = v49;
          sub_1AF62D29C(v52);
          ecs_stack_allocator_pop_snapshot(v53);
          v6 = v42;
          if (v42)
          {
            os_unfair_lock_unlock(*(v52 + 344));
            os_unfair_lock_unlock(*(v52 + 376));
          }

          ++v4;
        }

        while (v4 != v45);
      }
    }

    sub_1AF5D1564(&v54);
  }
}

void *sub_1AFB6907C(void *a1, float32x4_t a2)
{
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[1];
  v7 = a1[2];
  v8 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v3, v4, v5, v7);
  v9 = sub_1AF64B110(&type metadata for LODRenderer, &off_1F252B3F0, v3, v4, v5, v7);
  v10 = sub_1AF64B110(&type metadata for LODState, &off_1F252B4A0, v3, v4, v5, v7);
  v55 = v6;
  v11 = sub_1AF64B110(&type metadata for ModelRenderer, &off_1F2562450, v3, v4, v5, v7);
  v12 = a1[6];
  v13 = a1[7];
  v54 = v7;
  v14 = v7[4];
  v15 = 8 * (v13 - v12);
  v16 = ecs_stack_allocator_allocate(v14, v15, 8);
  v17 = v16;
  v18 = 0;
  v19 = v13 - v12;
  v64 = v16;
  v65 = v13 - v12;
  v66 = 0;
  if (v13 != v12)
  {
    v18 = 0;
    do
    {
      v20 = *(v9 + 8 * v12);
      if (v20)
      {
        v21 = 0;
        v22 = vsubq_f32(a2, *(v8 + (v12 << 6) + 48));
        v23 = vmulq_f32(v22, v22);
        v24 = v23.f32[2] + vaddv_f32(*v23.f32);
        v25 = -1;
        do
        {
          if (v25 - v20[5] == -1)
          {
            v16[v18++] = v12;
            goto LABEL_4;
          }

          v26 = *(v20[4] + v21);
          ++v25;
          v21 += 4;
        }

        while (v24 >= v26);
        v27 = v10 + 12 * v12;
        v29 = *(v27 + 8);
        v28 = (v27 + 8);
        if (v29 != v25)
        {
          *v28 = v25;
          *(v11 + 16 * v12) = *(v20[2] + 16 * v25);
        }
      }

LABEL_4:
      ++v12;
    }

    while (v12 != v13);
    v66 = v18;
  }

  sub_1AF649C6C(v55[5], &type metadata for LODCulled, &v56);
  if (v56 != 1)
  {
    v61 = &type metadata for LODCulled;
    v62 = &off_1F252B720;
    v63 = 0;
    if (v18 >= 1)
    {
      if (v18 == v55[30] - v55[29])
      {
        sub_1AF63515C(&v61, &v56);
        v60 = 0;
        v59 = 0uLL;
      }

      else
      {
        sub_1AF63515C(&v61, &v56);
        *&v59 = v17;
        *(&v59 + 1) = v19;
        v60 = v18;
      }

      v33 = v54;
      v34 = v54[13];

      goto LABEL_34;
    }

    return sub_1AF635250(&v61);
  }

  if (v18 >= v19)
  {
    v31 = v54[4];

    return ecs_stack_allocator_deallocate(v31, v17, v15);
  }

  else
  {
    if (v18)
    {

      sub_1AF6490A8();
      v61 = &type metadata for LODCulled;
      v62 = &off_1F252B720;
      v63 = 1;
      v30 = v66;
      if (v66 >= 1)
      {
        if (v66 == v55[30] - v55[29])
        {
          sub_1AF63515C(&v61, &v56);
          v60 = 0;
          v59 = 0uLL;
        }

        else
        {
          v43 = v64;
          v44 = v65;
          sub_1AF63515C(&v61, &v56);
          *&v59 = v43;
          *(&v59 + 1) = v44;
          v60 = v30;
        }

        v33 = v54;
        v34 = v54[13];
LABEL_34:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33[13] = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = sub_1AF420EA0(0, v34[2] + 1, 1, v34);
          v33[13] = v34;
        }

        v47 = v34[2];
        v46 = v34[3];
        if (v47 >= v46 >> 1)
        {
          v33[13] = sub_1AF420EA0(v46 > 1, v47 + 1, 1, v34);
        }

        v48 = v33[13];
        *(v48 + 16) = v47 + 1;
        v49 = v48 + 72 * v47;
        *(v49 + 32) = v56;
        v50 = v57;
        v51 = v58;
        v52 = v59;
        *(v49 + 96) = v60;
        *(v49 + 64) = v51;
        *(v49 + 80) = v52;
        *(v49 + 48) = v50;
        v33[13] = v48;
        return sub_1AF635250(&v61);
      }

      return sub_1AF635250(&v61);
    }

    v61 = &type metadata for LODCulled;
    v62 = &off_1F252B720;
    v63 = 1;
    sub_1AF63515C(&v61, &v56);
    v60 = 0;
    v59 = 0uLL;
    v35 = v54[13];

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v54[13] = v35;
    if ((v36 & 1) == 0)
    {
      v35 = sub_1AF420EA0(0, v35[2] + 1, 1, v35);
      v54[13] = v35;
    }

    v38 = v35[2];
    v37 = v35[3];
    if (v38 >= v37 >> 1)
    {
      v35 = sub_1AF420EA0(v37 > 1, v38 + 1, 1, v35);
    }

    v35[2] = v38 + 1;
    v39 = &v35[9 * v38];
    *(v39 + 2) = v56;
    v40 = v57;
    v41 = v58;
    v42 = v59;
    v39[12] = v60;
    *(v39 + 4) = v41;
    *(v39 + 5) = v42;
    *(v39 + 3) = v40;
    v54[13] = v35;
    sub_1AF635250(&v61);
    ecs_stack_allocator_deallocate(v54[4], v17, v15);
  }
}

uint64_t sub_1AFB69564()
{
  v1 = v0;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED73B840;
  v31 = qword_1ED73B840;
  v32 = 0;
  v33 = 2;
  v34 = 0;
  v35 = 2;
  v36 = 0;
  sub_1AF5C9108(v21);
  v3 = v21[1];
  *(v0 + 16) = v21[0];
  *(v0 + 32) = v3;
  *(v0 + 48) = v22;
  sub_1AF8290F0(v23);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for LODState;
  *(inited + 40) = &off_1F252B420;
  sub_1AF5D1EC0(inited, v24);
  sub_1AFB6A934(v23, sub_1AFB6A9AC);
  swift_setDeallocating();
  v5 = v24[1];
  *(v0 + 56) = v24[0];
  *(v0 + 72) = v5;
  *(v0 + 88) = v25;
  sub_1AFB67FF4(1, 1, 2, 2, v26);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  *(v6 + 32) = &type metadata for Parent;
  *(v6 + 40) = &off_1F2529C18;
  sub_1AF5D1EC0(v6, v27);
  sub_1AFB6A934(v26, sub_1AFB6AA04);
  swift_setDeallocating();
  v7 = v27[1];
  *(v0 + 96) = v27[0];
  *(v0 + 112) = v7;
  *(v0 + 128) = v28;
  v8 = v2 + 41;
  v9 = v2[8];
  v10 = v2[9];
  v11 = swift_initStackObject();
  *(v11 + 1) = xmmword_1AFE4C6A0;
  v11[4] = &type metadata for WorldTransform;
  v11[5] = &off_1F2529AF8;
  v11[6] = &type metadata for LODRenderer;
  v11[7] = &off_1F252B368;
  v11[8] = &type metadata for LODState;
  v11[9] = &off_1F252B420;
  v11[10] = &type metadata for ModelRenderer;
  v11[11] = &off_1F25623D0;
  v11[12] = &type metadata for Parent;
  v11[13] = &off_1F2529C18;
  if (v10 > 0xF)
  {
    v20 = sub_1AFC0592C(&v8[v9], v10 >> 4);
    sub_1AF48FC80(v11);
    v11 = v20;
  }

  if (v2[11])
  {
    v20 = sub_1AFC0587C(&v8[v2[10]], v2[11]);
    sub_1AF48FBC0(&unk_1F2500970);
    v12 = v20;
  }

  else
  {
    v12 = &unk_1F2500970;
  }

  v13 = v32;
  v14 = v33;
  v15 = v36;
  v16 = v34;
  v17 = v35;
  v18 = sub_1AF6B7F4C(v11 + 4, v11[2], v12 + 32, v12[2], (v31 + v31[12] + 41), v31[13] >> 4, v31 + v31[14] + 41, v31[15] / 0x18u);

  *(v1 + 136) = v18;
  *(v1 + 144) = v13;
  *(v1 + 148) = v14;
  *(v1 + 149) = v29;
  *(v1 + 151) = v30;
  *(v1 + 152) = v16;
  *(v1 + 160) = v17;
  *(v1 + 161) = v20;
  *(v1 + 164) = *(&v20 + 3);
  *(v1 + 168) = v15;
  return v1;
}

uint64_t sub_1AFB698B0()
{
  v0 = swift_allocObject();
  sub_1AFB69564();
  return v0;
}

void *sub_1AFB698FC(void *a1, float32x4_t a2)
{
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v7 = a1[1];
  v6 = a1[2];
  v8 = sub_1AF64B110(&type metadata for GenericLOD, &off_1F252B700, v3, v4, v5, v6);
  v9 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v3, v4, v5, v6);
  v10 = a1[6];
  v11 = a1[7];
  v12 = 8 * (v11 - v10);
  v13 = ecs_stack_allocator_allocate(v6[4], v12, 8);
  v14 = v13;
  v15 = 0;
  v16 = v11 - v10;
  v53 = v13;
  v54 = v11 - v10;
  v55 = 0;
  if (v11 != v10)
  {
    v15 = 0;
    v17 = (v8 + 8 * v10 + 4);
    do
    {
      v18 = vsubq_f32(a2, *(v9 + 16 * v10));
      v19 = vmulq_f32(v18, v18);
      v20 = v19.f32[2] + vaddv_f32(*v19.f32);
      if (*(v17 - 1) > v20 || v20 >= *v17)
      {
        v13[v15++] = v10;
      }

      ++v10;
      v17 += 2;
    }

    while (v11 != v10);
    v55 = v15;
  }

  sub_1AF649C6C(v7[5], &type metadata for LODCulled, &v45);
  if (v45 != 1)
  {
    v50 = &type metadata for LODCulled;
    v51 = &off_1F252B720;
    v52 = 0;
    if (v15 >= 1)
    {
      if (v15 == v7[30] - v7[29])
      {
        sub_1AF63515C(&v50, &v45);
        v49 = 0;
        v48 = 0uLL;
      }

      else
      {
        sub_1AF63515C(&v50, &v45);
        *&v48 = v14;
        *(&v48 + 1) = v16;
        v49 = v15;
      }

      v23 = v6[13];

      goto LABEL_25;
    }

    return sub_1AF635250(&v50);
  }

  if (v15 >= v16)
  {
    v24 = v6[4];

    return ecs_stack_allocator_deallocate(v24, v14, v12);
  }

  else
  {
    if (v15)
    {

      sub_1AF6490A8();
      v50 = &type metadata for LODCulled;
      v51 = &off_1F252B720;
      v52 = 1;
      v22 = v55;
      if (v55 >= 1)
      {
        if (v55 == v7[30] - v7[29])
        {
          sub_1AF63515C(&v50, &v45);
          v49 = 0;
          v48 = 0uLL;
        }

        else
        {
          v42 = v53;
          v43 = v54;
          sub_1AF63515C(&v50, &v45);
          *&v48 = v42;
          *(&v48 + 1) = v43;
          v49 = v22;
        }

        v23 = v6[13];
LABEL_25:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v6[13] = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_1AF420EA0(0, v23[2] + 1, 1, v23);
          v6[13] = v23;
        }

        v28 = v23[2];
        v27 = v23[3];
        if (v28 >= v27 >> 1)
        {
          v6[13] = sub_1AF420EA0(v27 > 1, v28 + 1, 1, v23);
        }

        v29 = v6[13];
        *(v29 + 16) = v28 + 1;
        v30 = v29 + 72 * v28;
        *(v30 + 32) = v45;
        v31 = v46;
        v32 = v47;
        v33 = v48;
        *(v30 + 96) = v49;
        *(v30 + 64) = v32;
        *(v30 + 80) = v33;
        *(v30 + 48) = v31;
        v6[13] = v29;
        return sub_1AF635250(&v50);
      }

      return sub_1AF635250(&v50);
    }

    v50 = &type metadata for LODCulled;
    v51 = &off_1F252B720;
    v52 = 1;
    sub_1AF63515C(&v50, &v45);
    v49 = 0;
    v48 = 0uLL;
    v34 = v6[13];

    v35 = swift_isUniquelyReferenced_nonNull_native();
    v6[13] = v34;
    if ((v35 & 1) == 0)
    {
      v34 = sub_1AF420EA0(0, v34[2] + 1, 1, v34);
      v6[13] = v34;
    }

    v37 = v34[2];
    v36 = v34[3];
    if (v37 >= v36 >> 1)
    {
      v34 = sub_1AF420EA0(v36 > 1, v37 + 1, 1, v34);
    }

    v34[2] = v37 + 1;
    v38 = &v34[9 * v37];
    *(v38 + 2) = v45;
    v39 = v46;
    v40 = v47;
    v41 = v48;
    v38[12] = v49;
    *(v38 + 4) = v40;
    *(v38 + 5) = v41;
    *(v38 + 3) = v39;
    v6[13] = v34;
    sub_1AF635250(&v50);
    ecs_stack_allocator_deallocate(v6[4], v14, v12);
  }
}

uint64_t sub_1AFB69D34()
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
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = &type metadata for PointOfCulling;
  *(inited + 40) = &off_1F252B2B8;
  *(inited + 48) = &type metadata for Position;
  *(inited + 56) = &off_1F252EDF0;
  sub_1AF5B4630(inited, v6);
  swift_setDeallocating();
  v2 = v6[1];
  *(v0 + 16) = v6[0];
  *(v0 + 32) = v2;
  *(v0 + 48) = v7;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1AFE4C620;
  *(v3 + 32) = &type metadata for GenericLOD;
  *(v3 + 40) = &off_1F252B680;
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

uint64_t sub_1AFB69EA0()
{
  v0 = swift_allocObject();
  sub_1AFB69D34();
  return v0;
}

uint64_t sub_1AFB69ED8(uint64_t a1)
{
  v3 = *(v1 + 32);
  v89[0] = *(v1 + 16);
  v89[1] = v3;
  v90 = *(v1 + 48);
  v4 = v60;
  sub_1AF6B06C0(a1, v89, 0x200000000, v60);
  v82 = v60[0];
  v83 = v60[1];
  v84 = v60[2];
  v85 = v60[3];
  v87 = v62;
  v88 = v63;
  v86 = v61;
  sub_1AF6BA358(0);
  v6 = v5;

  v7 = sub_1AF64B03C(&type metadata for Position);

  v53 = *(v7 + 16 * v6);
  v8 = *(v1 + 72);
  v80[0] = *(v1 + 56);
  v80[1] = v8;
  v81 = *(v1 + 88);
  sub_1AF6B06C0(a1, v80, 0x200000000, &v64);
  if (v64)
  {
    v52 = v71;
    if (v71 >= 1)
    {
      v51 = v68;
      if (v68)
      {
        v9 = 0;
        v50 = v67;
        v10 = v70;
        v49 = v69;
        v11 = *(v69 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v59 = *(v70 + 32);
        v72 = v64;
        v73 = v65;
        v74 = v66;
        v48 = v11;
        do
        {
          v12 = (v50 + 48 * v9);
          v13 = *v12;
          v14 = v12[1];
          v15 = v12[2];
          v16 = *(v12 + 2);
          v17 = *(v12 + 3);
          v18 = *(v12 + 4);
          v19 = *(v12 + 5);
          if (v11)
          {
            v20 = *(v19 + 376);

            os_unfair_lock_lock(v20);
            os_unfair_lock_lock(*(v19 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v59);
          v56 = *(v10 + 64);
          v57 = *(v10 + 48);
          v55 = *(v10 + 80);
          v21 = *(*(*(*(v19 + 40) + 16) + 32) + 16) + 1;
          *(v10 + 48) = ecs_stack_allocator_allocate(*(v10 + 32), 48 * v21, 8);
          *(v10 + 56) = v21;
          *(v10 + 72) = 0;
          *(v10 + 80) = 0;
          *(v10 + 64) = 0;
          v75[0] = v49;
          v75[1] = v19;
          v58 = v19;
          v75[2] = v10;
          v75[3] = v15;
          v75[4] = (v14 - v13 + v15);
          v75[5] = v52;
          v75[6] = v13;
          v75[7] = v14;
          v75[8] = 0;
          v75[9] = 0;
          v76 = 1;
          v77 = v16;
          v78 = v17;
          v79 = v18;
          sub_1AFB698FC(v75, v53);
          v22 = *(v10 + 48);
          v23 = *(v10 + 64);
          if (!v23)
          {
            v45 = *(v10 + 56);
            v46 = *(v10 + 32);
            goto LABEL_39;
          }

          v54 = v9;
          for (i = 0; i != v23; ++i)
          {
            v26 = (v22 + 48 * i);
            v27 = *v26;
            v28 = v26[4];
            v29 = *(v10 + 72);
            if (v29)
            {
              v30 = v27 == v29;
            }

            else
            {
              v30 = 0;
            }

            if (v30)
            {
              goto LABEL_11;
            }

            v31 = v72;
            if (!v72[11])
            {
              goto LABEL_11;
            }

            v32 = v26[2];
            v33 = v72 + 41;
            v34 = v72[9];
            if (v34 >= 0x10)
            {
              v35 = &v33[v72[8]];
              v36 = v34 >> 4;
              v37 = v72 + 41;
              while (*v35 != v27)
              {
                ++v37;
                v35 += 16;
                if (!--v36)
                {
                  goto LABEL_27;
                }
              }

              v38 = v37[v72[10]];
              v39 = v38 > 5;
              v40 = (1 << v38) & 0x23;
              if (v39 || v40 == 0)
              {
LABEL_11:

                v28(v25);

                continue;
              }
            }

LABEL_27:
            if (swift_conformsToProtocol2() && v32)
            {
              if (sub_1AF5FC8D8(v32))
              {
                goto LABEL_11;
              }

              v42 = v31[9];
              if (v42 < 0x10)
              {
                goto LABEL_11;
              }

              v43 = &v33[v31[8]];
              v44 = 16 * (v42 >> 4);
              while (*v43 != v32)
              {
                v43 += 16;
                v44 -= 16;
                if (!v44)
                {
                  goto LABEL_11;
                }
              }
            }
          }

          v45 = *(v10 + 56);
          v22 = *(v10 + 48);
          v46 = *(v10 + 32);
          if (*(v10 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v9 = v54;
LABEL_39:
          ecs_stack_allocator_deallocate(v46, v22, 48 * v45);
          *(v10 + 48) = v57;
          *(v10 + 64) = v56;
          *(v10 + 80) = v55;
          sub_1AF62D29C(v58);
          ecs_stack_allocator_pop_snapshot(v59);
          v11 = v48;
          if (v48)
          {
            os_unfair_lock_unlock(*(v58 + 344));
            os_unfair_lock_unlock(*(v58 + 376));
          }

          ++v9;
        }

        while (v9 != v51);
      }
    }

    sub_1AF5D1564(v60);
    v4 = &v64;
  }

  return sub_1AF5D1564(v4);
}

void sub_1AFB6A360(uint64_t a1)
{
  v2 = a1;
  v3 = *(v1 + 32);
  v76[0] = *(v1 + 16);
  v76[1] = v3;
  v77 = *(v1 + 48);
  sub_1AF6B06C0(a1, v76, 0x200000000, &v56);
  if (v56)
  {
    v67 = v56;
    v70 = v59;
    v71 = v60;
    v72 = v61;
    v73 = v62;
    v68 = v57;
    v69 = v58;
    sub_1AF6BA358(0);
    v5 = v4;

    v6 = sub_1AF64B03C(&type metadata for Position);

    v40 = *(v6 + 16 * v5);
    v7 = *(v1 + 72);
    v74[0] = *(v1 + 56);
    v74[1] = v7;
    v75 = *(v1 + 88);
    sub_1AF6B06C0(v2, v74, 0x200000000, v63);
    if (*&v63[0])
    {
      v39 = v2;
      if (v66 >= 1 && v65)
      {
        v8 = v64;
        v9 = v64 + 48 * v65;
        v41 = v9;
        do
        {
          v10 = *(v8 + 40);
          v11 = *(v10 + 376);
          swift_retain_n();
          os_unfair_lock_lock(v11);
          os_unfair_lock_lock(*(v10 + 344));
          v12 = *(v10 + 24);

          v50 = 0;
          v48 = 0u;
          v49 = 0u;
          memset(v55, 0, 40);
          v13 = sub_1AF65A4B4(v12, &type metadata for LODState, &off_1F252B4A0, 0, 0, &v48, v55);

          sub_1AFB6A934(v55, sub_1AF5C4448);
          sub_1AFB6A934(&v48, sub_1AF5C4448);
          if (sub_1AF649CEC())
          {
            sub_1AF649D40(v13);
          }

          else
          {
            v15 = *(v10 + 232);
            v14 = *(v10 + 240);
            v44 = *(v10 + 120);
            v47 = *(v10 + 28);
            v46 = *(v10 + 32);
            v16 = *(v10 + 16);
            v17 = *(v10 + 40);
            v18 = *(v17 + 200);
            v45 = *(*(v16 + 88) + 8 * v13 + 32);

            if ((v18 & 1) != 0 || *(v45 + 200) == 1)
            {
              *(v16 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
              v17 = *(v10 + 40);
            }

            v19 = v44;
            v20 = *(v10 + 256);
            sub_1AF5B4FCC(v17, v15, v14, 0, v10);
            v43 = *(v10 + 256);
            v21 = v43 - v20;
            if (v43 == v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v20;
            }

            v55[0] = v22;
            v23 = *(*(v10 + 40) + 24);
            v24 = *(v23 + 16);
            if (v24)
            {
              v42 = v8;
              v25 = v23 + 32;

              v26 = 0;
              v27 = v43 - v20;
              do
              {
                v28 = v25 + 40 * v26;
                if ((*(v28 + 32) & 1) == 0)
                {
                  v29 = *(v45 + 24);
                  v30 = *(v29 + 16);
                  if (v30)
                  {
                    v31 = (v29 + 32);
                    while (*v31 != *v28)
                    {
                      v31 += 5;
                      if (!--v30)
                      {
                        goto LABEL_17;
                      }
                    }
                  }

                  else
                  {
LABEL_17:
                    sub_1AF640BC8();
                    v27 = v43 - v20;
                  }
                }

                ++v26;
              }

              while (v26 != v24);
              v21 = v27;

              v8 = v42;
              v19 = v44;
            }

            if (*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
            {
              vfx_counters.add(_:_:)(*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v10 + 72) * v21);
            }

            if (*(v10 + 184))
            {
              v32 = 0;
            }

            else
            {
              v32 = *(v10 + 168);
            }

            v54 = 0;

            MEMORY[0x1EEE9AC00](v33, v34);
            v35 = v47;
            v36 = v46;
            DWORD2(v49) = -1;
            v50 = v20;
            v51 = v43;
            v52 = v20;
            v53 = v43;
            *&v48 = v20;
            *(&v48 + 1) = v43;
            *&v49 = v32;
            if (v21 < 1)
            {

              v9 = v41;
            }

            else
            {
              v9 = v41;
              do
              {
                sub_1AF6248A8(v13, v35 | (v36 << 32), v19, v16, &v48, sub_1AF5C5ACC);
                v36 = v46;
                v35 = v47;
              }

              while ((*(&v48 + 1) - v48) > 0);
            }

            v37 = *(v10 + 192);
            if (v37)
            {
              v38 = *(v10 + 208);
              sub_1AF75D364(v20, v43, v37);
              sub_1AF75D364(v20, v43, v38);
            }
          }

          v8 += 48;
          os_unfair_lock_unlock(*(v10 + 344));
          os_unfair_lock_unlock(*(v10 + 376));
        }

        while (v8 != v9);
      }

      sub_1AF5D1564(v63);
      v2 = v39;
    }

    sub_1AFB68228(v2, v40);
    sub_1AFB68CB8(v2, v40);
    sub_1AF5D1564(&v56);
  }
}

uint64_t sub_1AFB6A934(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFB6A9AC()
{
  if (!qword_1ED723E78)
  {
    v0 = type metadata accessor for Query1();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723E78);
    }
  }
}

void sub_1AFB6AA04()
{
  if (!qword_1ED7238D8[0])
  {
    v0 = type metadata accessor for Query4();
    if (!v1)
    {
      atomic_store(v0, qword_1ED7238D8);
    }
  }
}

uint64_t sub_1AFB6AAAC(void *a1, uint64_t a2)
{
  sub_1AFB6B5C0(0, &qword_1EB642CD8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB6B56C();
  sub_1AFDFF3F8();
  v11[1] = a2;
  sub_1AF480018();
  sub_1AFDFE918();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1AFB6AC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AFB6AC9C(uint64_t a1)
{
  v2 = sub_1AFB6B56C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB6ACD8(uint64_t a1)
{
  v2 = sub_1AFB6B56C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1AFB6AD14@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AFB6AF10(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AFB6AD94()
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
  sub_1AF5C7CD0(v3);
  v1 = v3[1];
  *(v0 + 16) = v3[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v4;
  return v0;
}

void sub_1AFB6AE54(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  v6 = *(v4 + 40);

  os_unfair_lock_unlock(v6);
}

void *sub_1AFB6AF10(void *a1)
{
  sub_1AFB6B5C0(0, &qword_1EB642CC8, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = sub_1AF441150(a1, a1[3]);
  sub_1AFB6B56C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF47FEB4();
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v9 = v11[1];
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

void sub_1AFB6B0A8(uint64_t a1)
{
  v2 = *(v1 + 32);
  v80[0] = *(v1 + 16);
  v80[1] = v2;
  v81 = *(v1 + 48);
  sub_1AF6B06C0(a1, v80, 0x200000000, &v67);
  if (v67)
  {
    if (v74 >= 1)
    {
      v60 = v71;
      if (v71)
      {
        v3 = 0;
        v4 = 0;
        v59 = v70;
        v5 = v73;
        v64 = *(v73 + 32);
        v6 = *(v72 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v75 = v67;
        v76 = v68;
        v77 = v69;
        v7 = (v72 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
        v58 = v6;
        v56 = v72;
        do
        {
          v62 = v4;
          v8 = (v59 + 48 * v3);
          v9 = *v8;
          v10 = v8[1];
          v12 = *(v8 + 2);
          v11 = *(v8 + 3);
          v14 = *(v8 + 4);
          v13 = *(v8 + 5);
          v63 = v3;
          if (v6)
          {
            v15 = *(v13 + 376);

            os_unfair_lock_lock(v15);
            os_unfair_lock_lock(*(v13 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v64);
          v16 = *(v5 + 64);
          v78[0] = *(v5 + 48);
          v78[1] = v16;
          v79 = *(v5 + 80);
          v17 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
          *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v17, 8);
          *(v5 + 56) = v17;
          *(v5 + 72) = 0;
          *(v5 + 80) = 0;
          *(v5 + 64) = 0;
          v66 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v12, v11, v14, v5);
          v65 = sub_1AF64B110(&type metadata for Orientation, &off_1F252C8A8, v12, v11, v14, v5);
          v18 = sub_1AF64B110(&type metadata for LookAt, &off_1F2562130, v12, v11, v14, v5);
          if (v12)
          {
            v4 = v62;
            if (v14)
            {
              for (i = 0; i != v14; ++i)
              {
                v25 = (v18 + 8 * i);
                v27 = *v25;
                v26 = v25[1];
                v28 = v27 == -1 && v26 == 0;
                if (!v28 && (v27 & 0x80000000) == 0 && v7[1] > v27)
                {
                  v29 = (*v7 + 12 * v27);
                  if (v26 == -1 || v29[2] == v26)
                  {
                    v31 = *(v29 + 2);
                    v32 = *(*(v56 + 144) + 8 * *v29 + 32);
                    v33 = *(v32 + 48);
                    v34 = (v33 + 32);
                    v35 = *(v33 + 16) + 1;
                    while (--v35)
                    {
                      v36 = v34 + 5;
                      v37 = *v34;
                      v34 += 5;
                      if (v37 == &type metadata for Position)
                      {
                        v20 = vsubq_f32(*(&(*(v36 - 2))[v31] + *(v32 + 128)), *(v66 + 16 * i));
                        v21 = vmulq_f32(v20, v20);
                        v20.i32[3] = 0;
                        *&v22 = v21.f32[2] + vaddv_f32(*v21.f32);
                        *v21.f32 = vrsqrte_f32(v22);
                        *v21.f32 = vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32)));
                        v23 = vmulq_n_f32(v20, vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32))).f32[0]);
                        v23.i32[3] = v61;
                        *&v24 = sub_1AF1555CC(xmmword_1AFE206C0, v23);
                        *(v65 + 16 * i) = v24;
                        break;
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (v9 != v10)
            {
              do
              {
                v43 = (v18 + 8 * v9);
                v45 = *v43;
                v44 = v43[1];
                v46 = v45 == -1 && v44 == 0;
                if (!v46 && (v45 & 0x80000000) == 0 && v7[1] > v45)
                {
                  v47 = (*v7 + 12 * v45);
                  if (v44 == -1 || v47[2] == v44)
                  {
                    v49 = *(v47 + 2);
                    v50 = *(*(v56 + 144) + 8 * *v47 + 32);
                    v51 = *(v50 + 48);
                    v52 = (v51 + 32);
                    v53 = *(v51 + 16) + 1;
                    while (--v53)
                    {
                      v54 = v52 + 5;
                      v55 = *v52;
                      v52 += 5;
                      if (v55 == &type metadata for Position)
                      {
                        v38 = vsubq_f32(*(&(*(v54 - 2))[v49] + *(v50 + 128)), *(v66 + 16 * v9));
                        v39 = vmulq_f32(v38, v38);
                        v38.i32[3] = 0;
                        *&v40 = v39.f32[2] + vaddv_f32(*v39.f32);
                        *v39.f32 = vrsqrte_f32(v40);
                        *v39.f32 = vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32)));
                        v41 = vmulq_n_f32(v38, vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32))).f32[0]);
                        v41.i32[3] = v57;
                        *&v42 = sub_1AF1555CC(xmmword_1AFE206C0, v41);
                        *(v65 + 16 * v9) = v42;
                        break;
                      }
                    }
                  }
                }

                ++v9;
              }

              while (v9 != v10);
            }

            v4 = v62;
          }

          sub_1AF630994(v5, &v75, v78);
          sub_1AF62D29C(v13);
          ecs_stack_allocator_pop_snapshot(v64);
          v6 = v58;
          if (v58)
          {
            os_unfair_lock_unlock(*(v13 + 344));
            os_unfair_lock_unlock(*(v13 + 376));
          }

          v3 = v63 + 1;
        }

        while (v63 + 1 != v60);
      }
    }

    sub_1AF5D1564(&v67);
  }
}

unint64_t sub_1AFB6B56C()
{
  result = qword_1EB642CD0;
  if (!qword_1EB642CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642CD0);
  }

  return result;
}

void sub_1AFB6B5C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFB6B56C();
    v7 = a3(a1, &type metadata for LookAt.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFB6B638()
{
  result = qword_1EB642CE0;
  if (!qword_1EB642CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642CE0);
  }

  return result;
}

unint64_t sub_1AFB6B690()
{
  result = qword_1EB642CE8;
  if (!qword_1EB642CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642CE8);
  }

  return result;
}

unint64_t sub_1AFB6B6E8()
{
  result = qword_1EB642CF0;
  if (!qword_1EB642CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642CF0);
  }

  return result;
}

uint64_t sub_1AFB6B73C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AFC0DCB0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1AFB6F9F8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AFB6B7AC(uint64_t a1)
{
  while (1)
  {
    v2 = *(v1 + 8);
    v3 = *(v1 + 40);
    v4 = v2 - 1;
    if (v2 >= 1)
    {
      break;
    }

LABEL_7:
    v8 = -__clz(v2);
    if (v2 == -1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 1 << v8;
    }

    *(v1 + 8) = v9;
    v11 = *(v1 + 24);
    v10 = *(v1 + 32);
    *(v1 + 24) = aligned_alloc(8uLL, 80 << v8);
    *(v1 + 32) = aligned_alloc(8uLL, 8 * v9);
    v12 = aligned_alloc(8uLL, 2 * v9);
    bzero(v12, 2 * v9);
    *(v1 + 40) = v12;
    *(v1 + 16) = 0;
    v13 = v3;
    v14 = v10;
    for (i = v11; v2; --v2)
    {
      v16 = *v13++;
      if (v16)
      {
        v17 = (*(v1 + 24) + 80 * sub_1AFB6B7AC(*v14));
        if (i != v17)
        {
          memmove(v17, i, 0x50uLL);
        }
      }

      i += 80;
      ++v14;
    }

    free(v11);
    free(v10);
    free(v3);
  }

  v5 = 0;
  v6 = v4 & a1;
  while (1)
  {
    result = (v6 + v5) & v4;
    if ((v3[result] & 1) == 0)
    {
      break;
    }

    if (v2 == ++v5)
    {
      goto LABEL_7;
    }
  }

  if (v5 >= 0xF)
  {
    v18 = v6 - 14;
    while (1)
    {
      v19 = v18 + v5;
      v20 = v3[(v18 + v5) & v4];
      v21 = v20 >> 1;
      v22 = __clz(__rbit32((v20 >> 1) | 0x10000));
      v23 = v20 >= 2 ? v22 : 15;
      if (v23 >= 0xE)
      {
        break;
      }

      v24 = v19 + v23;
      v25 = 14;
LABEL_33:
      v31 = (v5 + v6) & v4;
      v3[v19 & v4] = (2 * (((1 << v25) | v21) ^ (1 << (v23 & 0xF)))) | 1;
      v32 = v24 & v4;
      v3[v32] = v3[v24 & v4] ^ 1;
      v3[v31] |= 1u;
      v33 = *(v1 + 32);
      *(v33 + 8 * v31) = *(v33 + 8 * v32);
      *(v33 + 8 * v32) = 0;
      v34 = *(v1 + 24);
      v35 = (v34 + 80 * v31);
      v36 = (v34 + 80 * v32);
      if (v31 != v32 || v35 >= v36 + 80)
      {
        memmove(v35, v36, 0x50uLL);
      }

      v5 = v19 - v6 + v23;
      if (v5 < 15)
      {
        result = (v19 + v23) & v4;
        goto LABEL_17;
      }
    }

    v26 = 15;
    while (v26)
    {
      v27 = v3[++v19 & v4];
      v21 = v27 >> 1;
      v28 = __clz(__rbit32((v27 >> 1) | 0x10000));
      if (v27 >= 2)
      {
        v23 = v28;
      }

      else
      {
        v23 = 15;
      }

      v29 = v26 - 1;
      v30 = v26 - 2;
      --v26;
      if (v30 > v23)
      {
        if (v29)
        {
          v24 = v23 + v19;
          v25 = v29 - 1;
          goto LABEL_33;
        }

        break;
      }
    }

    v38 = __clz(v2);
    v39 = -v38;
    *(v1 + 8) = 1 << -v38;
    v41 = *(v1 + 24);
    v40 = *(v1 + 32);
    *(v1 + 24) = aligned_alloc(8uLL, 80 << -v38);
    *(v1 + 32) = aligned_alloc(8uLL, 8 << v39);
    v42 = 2 << v39;
    v43 = aligned_alloc(8uLL, v42);
    bzero(v43, v42);
    v44 = 0;
    *(v1 + 40) = v43;
    *(v1 + 16) = 0;
    v45 = v41;
    do
    {
      if (v3[v44])
      {
        v46 = (*(v1 + 24) + 80 * sub_1AFB6B7AC(v40[v44]));
        if (v45 != v46)
        {
          memmove(v46, v45, 0x50uLL);
        }
      }

      ++v44;
      v45 += 80;
    }

    while (v2 != v44);
    free(v41);
    free(v40);
    free(v3);
    if (*v1 == 1)
    {
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000065, 0x80000001AFF49870);
      v47 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v47);

      MEMORY[0x1B2718AE0](0x73696C6C6F632029, 0xEC000000736E6F69);
      result = sub_1AFDFE518();
      __break(1u);
    }

    else
    {
      *v1 = 1;
      result = sub_1AFB6B7AC(a1);
      *v1 = 0;
    }
  }

  else
  {
LABEL_17:
    v3[v6] |= 1 << ((v5 + 1) & 0xF);
    v3[result] |= 1u;
    *(*(v1 + 32) + 8 * result) = a1;
    ++*(v1 + 16);
  }

  return result;
}

void *sub_1AFB6BC3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v9 = a2 - a1;
  }

  else
  {
    v9 = 0;
  }

  ecs_stack_allocator_deallocate(a5, a1, v9);
  result = ecs_stack_allocator_allocate(a5, a3, a4);
  if (result != a1)
  {
    v11 = result;
    memcpy(result, a1, v9);
    return v11;
  }

  return result;
}

uint64_t sub_1AFB6BCC4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(v3 + 16);
  if (v4)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1AFC07194(0, v4, 0);
    v6 = v15;
    ObjectType = swift_getObjectType();
    v8 = 32;
    do
    {
      v9 = *(v3 + v8);
      sub_1AF62BFF0(v9, 0, ObjectType, a2);
      v16 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        v12 = v9;
        sub_1AFC07194(v10 > 1, v11 + 1, 1);
        v9 = v12;
        v6 = v16;
      }

      *(v6 + 16) = v11 + 1;
      *(v6 + 8 * v11 + 32) = v9;
      v8 += 8;
      --v4;
    }

    while (v4);

    v2 = v14;
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  *(v2 + 8) = v6;
  return result;
}

void sub_1AFB6BDF4(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = v1;
}

uint64_t sub_1AFB6BE04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6169726574616DLL;
  }

  else
  {
    v3 = 1752393069;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (*a2)
  {
    v5 = 0x6C6169726574616DLL;
  }

  else
  {
    v5 = 1752393069;
  }

  if (*a2)
  {
    v6 = 0xE900000000000073;
  }

  else
  {
    v6 = 0xE400000000000000;
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

uint64_t sub_1AFB6BEA8()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB6BF28()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFB6BF94()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

void sub_1AFB6C01C(uint64_t *a1@<X8>)
{
  v2 = 1752393069;
  if (*v1)
  {
    v2 = 0x6C6169726574616DLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AFB6C058()
{
  if (*v0)
  {
    return 0x6C6169726574616DLL;
  }

  else
  {
    return 1752393069;
  }
}

uint64_t sub_1AFB6C09C(uint64_t a1)
{
  v2 = sub_1AFB70810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB6C0D8(uint64_t a1)
{
  v2 = sub_1AFB70810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB6C114@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AFB70590(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1AFB6C15C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x6C65646F6DLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0x80000001AFF22E00;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x6C65646F6DLL;
  }

  if (*a2)
  {
    v6 = 0x80000001AFF22E00;
  }

  else
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_1AFB6C204()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB6C288()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFB6C2F8()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

void sub_1AFB6C384(unint64_t *a1@<X8>)
{
  v2 = 0x80000001AFF22E00;
  v3 = 0x6C65646F6DLL;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1AFB6C3C4()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6C65646F6DLL;
  }
}

uint64_t sub_1AFB6C40C(uint64_t a1)
{
  v2 = sub_1AFB708F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB6C448(uint64_t a1)
{
  v2 = sub_1AFB708F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB6C484(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  sub_1AFB70948(0, &qword_1EB642D00, sub_1AFB708F4, &type metadata for ModelRenderer.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB708F4();
  sub_1AFDFF3F8();
  v15 = a2;
  v14 = 0;
  sub_1AF480018();
  sub_1AFDFE918();
  if (!v3)
  {
    v15 = v13;
    v14 = 1;
    sub_1AFDFE918();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1AFB6C644@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AFB70330(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

__n128 sub_1AFB6C6BC(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = *(v5 + 56);
  v7 = *(v5 + 32);
  if (v6 != v7)
  {
    v8 = 2 * v6;
    __asm { FMOV            V0.4S, #1.0 }

    v29 = _Q0;
    do
    {
      v14 = *(v5 + 40);
      if (v6 == *(v5 + 48))
      {
        if (v8 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v8;
        }

        *(v5 + 48) = v15;
        v14 = reallocf(v14, 16 * v15);
        _Q0 = v29;
        *(v5 + 40) = v14;
      }

      *(v14 + v6++) = _Q0;
      v8 += 2;
    }

    while (v7 != v6);
    *(v5 + 56) = v7;
    v6 = v7;
  }

  v16 = *(v5 + 16);
  if (v7 == *(v5 + 24))
  {
    v17 = 2 * v7;
    if (2 * v7 <= 1)
    {
      v17 = 1;
    }

    *(v5 + 24) = v17;
    v16 = reallocf(v16, v17 << 6);
    *(v5 + 16) = v16;
  }

  v18 = *(v5 + 32);
  v19 = &v16[64 * v18];
  *v19 = a1;
  v19[1] = a2;
  v19[2] = a3;
  v19[3] = a4;
  *(v5 + 32) = v18 + 1;
  v20 = *(v5 + 40);
  if (v6 == *(v5 + 48))
  {
    v21 = 2 * v6;
    if (2 * v6 <= 1)
    {
      v21 = 1;
    }

    *(v5 + 48) = v21;
    v20 = reallocf(v20, 16 * v21);
    *(v5 + 40) = v20;
  }

  v22 = *(v5 + 56);
  result = a5;
  v20[v22] = a5;
  *(v5 + 56) = v22 + 1;
  *(v5 + 64) = 1;
  return result;
}

void *sub_1AFB6C7E8()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  if (v1)
  {
    v4 = v2 + 5;
    do
    {
      v5 = *v3++;
      if (v5)
      {
        v6 = *v4;
        free(*(v4 - 3));
        free(v6);
      }

      v4 += 10;
      --v1;
    }

    while (v1);
    v2 = v0[5];
    v3 = v0[7];
  }

  v7 = v0[6];
  free(v2);
  free(v7);
  free(v3);
  return v0;
}

uint64_t sub_1AFB6C87C()
{
  sub_1AFB6C7E8();

  return swift_deallocClassInstance();
}

void sub_1AFB6C8D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4[3];
  if (v5)
  {
    v6 = 0;
    v46 = 0;
    v7 = v4[7];
    v8 = &unk_1ED72C000;
    v9 = 12;
    v10 = &type metadata for MeshModel;
    do
    {
      v11 = *v7++;
      if (v11)
      {
        v12 = (v4[5] + v6);
        v13 = *(v12 + 4);
        if (v13 >= 1)
        {
          if (a3)
          {
            v15 = *v12;
            v14 = v12[1];
            if ((*v12 != -1 || v14 != 0) && (v15 & 0x80000000) == 0)
            {
              v17 = (a2 + v8[284]);
              if (v17[1] > v15)
              {
                v18 = *v17 + v15 * v9;
                if (v14 == -1 || *(v18 + 8) == v14)
                {
                  v20 = *(*(*(*(a2 + 88) + 8 * *(v18 + 6) + 32) + 16) + 128);
                  if (*(v20 + 16))
                  {
                    v40 = *(*(*(a2 + 88) + 8 * *(v18 + 6) + 32) + 16);
                    v41 = v4;
                    v42 = a2;
                    v43 = a1;
                    v45 = a3;
                    v44 = a4;
                    v21 = *(v12 + 1);
                    v22 = *(v12 + 2);
                    v38 = *(v12 + 5);
                    v23 = *(v12 + 7);
                    v36 = v22;
                    v37 = v23;
                    v39 = *(*(a2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * v4[8] + 8);
                    v24 = sub_1AF449CB8(v10);
                    if (v25)
                    {
                      v26 = *(*(v40 + 24) + 16 * *(*(v20 + 56) + 8 * v24) + 32);
                      v10 = &type metadata for MeshModel;
                      a4 = v44;
                      a3 = v45;
                      a1 = v43;
                      v8 = &unk_1ED72C000;
                      v9 = 12;
                      if (v26 == &type metadata for MeshModel)
                      {
                        MEMORY[0x1EEE9AC00](v43, v25);
                        a2 = v42;
                        *(&v36 - 16) = v42;
                        *(&v36 - 15) = v21;
                        v27 = v36;
                        *(&v36 - 14) = a3;
                        *(&v36 - 13) = v27;
                        v28 = v37;
                        v29 = v38;
                        *(&v36 - 12) = v13;
                        *(&v36 - 11) = v29;
                        *(&v36 - 10) = v28;
                        *(&v36 - 72) = 0;
                        *(&v36 - 8) = a2;
                        *(&v36 - 7) = a3;
                        *(&v36 - 48) = a4;
                        *(&v36 - 11) = v15;
                        *(&v36 - 10) = v14;
                        v30 = v39;
                        *(&v36 - 4) = v13;
                        *(&v36 - 3) = v30;
                        *(&v36 - 4) = a1;
                        *(&v36 - 12) = BYTE4(a1) & 1;
                        v4 = v41;
                        if (v17[1] > v15)
                        {
                          v31 = (*v17 + v15 * v9);
                          if (v14 == -1 || v31[2] == v14)
                          {
                            v32 = *(*(a2 + 144) + 8 * *v31 + 32);
                            v33 = *(v31 + 2);
                            v34 = v10;

                            v35 = v46;
                            sub_1AFA022C8(v32, v33, 16, sub_1AFB714B0);
                            v46 = v35;

                            v10 = v34;
                            v9 = 12;
                            v8 = &unk_1ED72C000;
                            a2 = v42;
                            a1 = v43;
                            a3 = v45;
                            a4 = v44;
                          }
                        }
                      }

                      else
                      {
                        v4 = v41;
                        a2 = v42;
                      }
                    }

                    else
                    {
                      v4 = v41;
                      a2 = v42;
                      a4 = v44;
                      a3 = v45;
                      a1 = v43;
                      v8 = &unk_1ED72C000;
                      v9 = 12;
                      v10 = &type metadata for MeshModel;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v6 += 80;
      --v5;
    }

    while (v5);
  }
}

void *sub_1AFB6CBC8(void *a1)
{
  v2 = v1[4];
  v3 = ecs_stack_allocator_allocate(a1, 8 * v2, 8);
  v4 = v1[3];
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = v1[7];
    v8 = 72;
    do
    {
      if (*(v7 + 2 * v6))
      {
        v10 = v1[5];
        v11 = *(v1[6] + 8 * v6);
        v12 = *(v10 + v8);
        if ((*(v10 + v8 - 8) & 1) == 0)
        {
          *(v10 + v8) = ++v12;
        }

        if (v12 < 61)
        {
          *(v10 + v8 - 8) = 0;
          v9 = v10 + v8;
          *(v9 - 40) = 0;
          *(v9 - 16) = 0;
        }

        else
        {
          v13 = v10 + v8;
          v14 = *(v13 - 32);
          free(*(v13 - 56));
          free(v14);
          if (v5 == v2)
          {
            if (2 * v2 <= 1)
            {
              v15 = 1;
            }

            else
            {
              v15 = 2 * v2;
            }

            v3 = sub_1AFB6BC3C(v3, &v3[v2], 8 * v15, 8, a1);
            v2 = v15;
          }

          v3[v5++] = v11;
        }
      }

      ++v6;
      v8 += 80;
    }

    while (v4 != v6);
    if (v5)
    {
      v16 = 0;
      v17 = v1[3] - 1;
      do
      {
        v18 = v3[v16];
        v19 = v18 & v17;
        v20 = v1[7];
        v21 = *(v20 + 2 * (v18 & v17));
        if (v21 >= 2)
        {
          v22 = 0;
          v23 = *(v20 + 2 * (v18 & v17));
          while (1)
          {
            if ((v23 & 2) != 0)
            {
              v25 = (v19 + v22) & v17;
              if (*(v1[6] + 8 * v25) == v18)
              {
                break;
              }
            }

            v24 = v23;
            v23 >>= 1;
            ++v22;
            if (v24 <= 3)
            {
              goto LABEL_17;
            }
          }

          *(v20 + 2 * v19) = (1 << ((v22 + 1) & 0xF)) ^ v21;
          *(v20 + 2 * v25) ^= 1u;
          --v1[4];
        }

LABEL_17:
        ++v16;
      }

      while (v16 != v5);
    }
  }

  return ecs_stack_allocator_deallocate(a1, v3, 8 * v2);
}

void sub_1AFB6CDAC()
{
  v1 = *v0;
  type metadata accessor for RenderBuckets();
  swift_arrayDestroy();

  free(v1);
}

double sub_1AFB6CDF8@<D0>(uint64_t a1@<X8>)
{
  *a1 = aligned_alloc(8uLL, 8uLL);
  *&result = 1;
  *(a1 + 8) = xmmword_1AFE22A20;
  return result;
}

double sub_1AFB6CE34()
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

  sub_1AFCC53FC(1, 1, v2);

  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = &type metadata for FrustumCulled;
  *(inited + 40) = &off_1F252B7C0;
  *(inited + 48) = &type metadata for LODCulled;
  *(inited + 56) = &off_1F252B740;
  sub_1AF5D1EC0(inited, v3);
  sub_1AFB712F4(v2, sub_1AFB71354);
  swift_setDeallocating();
  result = *v3;
  xmmword_1ED73B6D0 = v3[0];
  *&qword_1ED73B6E0 = v3[1];
  qword_1ED73B6F0 = v4;
  return result;
}

double sub_1AFB6CF60()
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

  sub_1AFCC53FC(1, 1, v2);

  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = &type metadata for LODCulled;
  *(inited + 40) = &off_1F252B740;
  *(inited + 48) = &type metadata for WorldAABB;
  *(inited + 56) = &off_1F2510390;
  sub_1AF5D1EC0(inited, v3);
  sub_1AFB712F4(v2, sub_1AFB71354);
  swift_setDeallocating();
  result = *v3;
  xmmword_1ED73B6A8 = v3[0];
  unk_1ED73B6B8 = v3[1];
  qword_1ED73B6C8 = v4;
  return result;
}

uint64_t sub_1AFB6D08C(uint64_t a1)
{
  v2 = *(a1 + 184);

  sub_1AF6D2D90(&type metadata for MeshRenderSystemState, &off_1F2562848, v2);

  if (qword_1ED72B140 != -1)
  {
    swift_once();
  }

  v3 = xmmword_1ED73B6D0;
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  if (qword_1ED72B138 != -1)
  {
    swift_once();
  }

  v6 = xmmword_1ED73B6A8;
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  os_unfair_lock_unlock(*(v4 + 40));
  swift_getObjectType();
  return sub_1AF6D6B58();
}

uint64_t sub_1AFB6D270(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 184);

  os_unfair_recursive_lock_lock_with_options();
  v3 = sub_1AF6D2A6C(&type metadata for MainCullGroup);
  if (v4 == 2 || (v4 & 1) == 0)
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v6 = *(v2 + 16);
    v7 = 32 * v5;
    v8 = v3;
    os_unfair_lock_lock(*(*(v2 + 32) + 32 * v5 + 24));
    os_unfair_recursive_lock_unlock();
    v9 = *(v6 + v8);
    os_unfair_lock_unlock(*(*(v2 + 32) + v7 + 24));

    if (qword_1ED72B138 != -1)
    {
      swift_once();
    }

    v74[0] = xmmword_1ED73B6A8;
    v74[1] = unk_1ED73B6B8;
    v75 = qword_1ED73B6C8;
    sub_1AF6B06C0(v1, v74, 0x200000000, v67);
    if (*&v67[0])
    {
      if (v70 > 0)
      {
        v58 = *(&v68 + 1);
        if (*(&v68 + 1))
        {
          v57 = *(&v67[2] + 1);
          v12 = *(&v69 + 1);
          v13 = *(v69 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v14 = *(*(&v69 + 1) + 32);
          v71 = *&v67[0];
          v72 = *(v67 + 8);
          v73 = *(&v67[1] + 8);
          v66[2] = v67[2];
          v66[3] = v68;
          v66[4] = v69;
          v66[5] = v70;
          v66[0] = v67[0];
          v66[1] = v67[1];
          sub_1AF5DD298(v66, &v65);
          v15 = 0;
          v55 = v9;
          v56 = v1;
          v54 = v13;
          v53 = v14;
          while (1)
          {
            v16 = *(v57 + 48 * v15 + 40);
            if (v13)
            {
              v17 = *(v16 + 376);

              os_unfair_lock_lock(v17);
              os_unfair_lock_lock(*(v16 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v14);
            v61 = *(v12 + 4);
            v62 = *(v12 + 3);
            v60 = v12[10];
            v18 = *(*(*(*(v16 + 40) + 16) + 32) + 16) + 1;
            v12[6] = ecs_stack_allocator_allocate(v12[4], 48 * v18, 8);
            v12[7] = v18;
            v12[9] = 0;
            v12[10] = 0;
            v12[8] = 0;
            v19 = *(v1 + 136);

            os_unfair_lock_lock(v19);
            v63 = v16;
            v20 = *(v16 + 188);
            v21 = *(v1 + 104);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v1 + 104) = v21;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              *(v1 + 104) = sub_1AFC0D9B8(v21);
            }

            sub_1AF6211D0(v20, 0, 0, v9);
            os_unfair_lock_unlock(*(v1 + 136));
            v23 = v63;

            v24 = v12[6];
            v64 = v12[8];
            if (!v64)
            {
              v48 = v12[7];
              v49 = v12[4];
              goto LABEL_45;
            }

            v59 = v15;
            for (i = 0; i != v64; ++i)
            {
              v27 = v24;
              v28 = (v24 + 48 * i);
              v29 = *v28;
              v30 = v28[4];
              v31 = v12;
              v32 = v12[9];
              if (v32)
              {
                v33 = v29 == v32;
              }

              else
              {
                v33 = 0;
              }

              if (v33)
              {
                goto LABEL_17;
              }

              v34 = v71;
              if (!v71[11])
              {
                goto LABEL_17;
              }

              v35 = v28[2];
              v36 = v71 + 41;
              v37 = v71[9];
              if (v37 >= 0x10)
              {
                v38 = &v36[v71[8]];
                v39 = v37 >> 4;
                v40 = v71 + 41;
                while (*v38 != v29)
                {
                  ++v40;
                  v38 += 16;
                  if (!--v39)
                  {
                    goto LABEL_33;
                  }
                }

                v41 = v40[v71[10]];
                v42 = v41 > 5;
                v43 = (1 << v41) & 0x23;
                if (v42 || v43 == 0)
                {
LABEL_17:

                  v30(v26);

                  goto LABEL_18;
                }
              }

LABEL_33:
              if (swift_conformsToProtocol2() && v35)
              {
                if (sub_1AF5FC8D8(v35))
                {
                  goto LABEL_17;
                }

                v45 = v34[9];
                if (v45 < 0x10)
                {
                  goto LABEL_17;
                }

                v46 = &v36[v34[8]];
                v47 = 16 * (v45 >> 4);
                while (*v46 != v35)
                {
                  v46 += 16;
                  v47 -= 16;
                  if (!v47)
                  {
                    goto LABEL_17;
                  }
                }
              }

LABEL_18:
              v12 = v31;
              v24 = v27;
            }

            v48 = v31[7];
            v24 = v31[6];
            v49 = v31[4];
            if (v31[8] >= 1)
            {
              v50 = v31[6];
              swift_arrayDestroy();
              v24 = v50;
            }

            v9 = v55;
            v1 = v56;
            v13 = v54;
            v14 = v53;
            v15 = v59;
            v23 = v63;
LABEL_45:
            ecs_stack_allocator_deallocate(v49, v24, 48 * v48);
            *(v12 + 3) = v62;
            *(v12 + 4) = v61;
            v12[10] = v60;
            sub_1AF62D29C(v23);
            ecs_stack_allocator_pop_snapshot(v14);
            if (v13)
            {
              os_unfair_lock_unlock(*(v23 + 344));
              os_unfair_lock_unlock(*(v23 + 376));
            }

            if (++v15 == v58)
            {
              sub_1AF5D1564(v67);
              break;
            }
          }
        }
      }

      v10 = sub_1AF5D1564(v67);
    }

    MEMORY[0x1EEE9AC00](v10, v11);
    v52 = *(v1 + 184);

    sub_1AF6D655C(&type metadata for MeshRenderSystemState, &off_1F2562848, v52, sub_1AFB709B0);
  }
}

uint64_t sub_1AFB6D864(void **a1, uint64_t a2, unint64_t a3, uint64_t a4, _OWORD *a5, int a6)
{
  if (qword_1ED72B140 != -1)
  {
    v68 = a3;
    swift_once();
    a3 = v68;
  }

  v8 = 1 << a3;
  if (a3 >= 0x40)
  {
    v8 = 0;
  }

  if (a3 > 0x40)
  {
    v8 = 0;
  }

  v112 = xmmword_1ED73B6D0;
  v113 = DWORD2(xmmword_1ED73B6D0);
  v114 = BYTE12(xmmword_1ED73B6D0);
  v115 = qword_1ED73B6E0;
  v116 = byte_1ED73B6E8;
  v117 = v8;

  sub_1AF6B06C0(a2, &v112, 0x200000000, v100);
  v96 = *&v100[32];
  v97 = v101;
  v98 = v102;
  v99 = v103;
  v94 = *v100;
  v95 = *&v100[16];

  v71 = a2;
  if (a1[2])
  {
    v9 = *a1;
    v10 = *(*(*(a2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8) + 32);

    sub_1AFB6CBC8(v10);
  }

  else
  {
    type metadata accessor for RenderBuckets();
    v11 = swift_allocObject();
    v12 = aligned_alloc(8uLL, 0xA00uLL);
    v13 = aligned_alloc(8uLL, 0x100uLL);
    v14 = aligned_alloc(8uLL, 0x40uLL);
    *v14 = 0u;
    v14[1] = 0u;
    v14[2] = 0u;
    v14[3] = 0u;
    *(v11 + 16) = 0;
    *(v11 + 24) = xmmword_1AFE9D470;
    *(v11 + 40) = v12;
    *(v11 + 48) = v13;
    *(v11 + 56) = v14;
    *(v11 + 64) = 0;
    if (!a1[1])
    {
      a1[1] = 1;
      v15 = *a1;
      *a1 = aligned_alloc(8uLL, 8uLL);
      free(v15);
    }

    v16 = *a1;
    *v16 = v11;
    v9 = v16;
    a1[2] = 1;
  }

  *(*v9 + 64) = 0;
  if (*v100)
  {
    v78 = v103;
    if (v103 >= 1)
    {
      v77 = *(&v101 + 1);
      if (*(&v101 + 1))
      {
        v75 = *&v100[40];
        v17 = *(&v102 + 1);
        v74 = v102;
        v18 = *(v102 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v84 = *(*(&v102 + 1) + 32);
        v104 = *v100;
        v105 = *&v100[8];
        v106 = *&v100[24];
        v87 = v96;
        v88 = v97;
        v89 = v98;
        v90 = v99;
        v85 = v94;
        v86 = v95;
        sub_1AF5DD298(&v85, v107);
        v19 = 0;
        v73 = v18;
        v76 = a1;
        v118 = v17;
        while (1)
        {
          v83 = v19;
          v20 = (v75 + 48 * v19);
          v21 = *v20;
          v22 = v20[1];
          v23 = v20[2];
          v24 = *(v20 + 2);
          v25 = *(v20 + 3);
          v26 = *(v20 + 4);
          v27 = *(v20 + 5);
          if (v18)
          {
            v28 = *(v27 + 376);

            os_unfair_lock_lock(v28);
            os_unfair_lock_lock(*(v27 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v84);
          v80 = *(v17 + 4);
          v81 = *(v17 + 3);
          v79 = v17[10];
          v29 = *(*(*(*(v27 + 40) + 16) + 32) + 16) + 1;
          v17[6] = ecs_stack_allocator_allocate(v17[4], 48 * v29, 8);
          v17[7] = v29;
          v17[9] = 0;
          v17[10] = 0;
          v17[8] = 0;
          v107[0] = v74;
          v107[1] = v27;
          v82 = v27;
          v107[2] = v17;
          v107[3] = v23;
          v107[4] = (v22 - v21 + v23);
          v107[5] = v78;
          v107[6] = v21;
          v107[7] = v22;
          v107[8] = 0;
          v107[9] = 0;
          v108 = 1;
          v109 = v24;
          v110 = v25;
          v111 = v26;
          sub_1AFB70E50(v107, v76);
          v30 = v17[6];
          v31 = v17[8];
          if (!v31)
          {
            v54 = v17[7];
            v55 = v17[4];
            goto LABEL_49;
          }

          for (i = 0; i != v31; ++i)
          {
            v34 = v30;
            v35 = (v30 + 48 * i);
            v36 = *v35;
            v37 = v35[4];
            v38 = v118[9];
            if (v38)
            {
              v39 = v36 == v38;
            }

            else
            {
              v39 = 0;
            }

            if (v39)
            {
              goto LABEL_22;
            }

            v40 = v104;
            if (!v104[11])
            {
              goto LABEL_22;
            }

            v41 = v35[2];
            v42 = v104 + 41;
            v43 = v104[9];
            if (v43 >= 0x10)
            {
              v44 = &v42[v104[8]];
              v45 = v43 >> 4;
              v46 = v104 + 41;
              while (*v44 != v36)
              {
                ++v46;
                v44 += 16;
                if (!--v45)
                {
                  goto LABEL_38;
                }
              }

              v47 = v46[v104[10]];
              v48 = v47 > 5;
              v49 = (1 << v47) & 0x23;
              if (v48 || v49 == 0)
              {
LABEL_22:

                v37(v33);

                goto LABEL_23;
              }
            }

LABEL_38:
            if (swift_conformsToProtocol2() && v41)
            {
              if (sub_1AF5FC8D8(v41))
              {
                goto LABEL_22;
              }

              v51 = v40[9];
              if (v51 < 0x10)
              {
                goto LABEL_22;
              }

              v52 = &v42[v40[8]];
              v53 = 16 * (v51 >> 4);
              while (*v52 != v41)
              {
                v52 += 16;
                v53 -= 16;
                if (!v53)
                {
                  goto LABEL_22;
                }
              }
            }

LABEL_23:
            v30 = v34;
          }

          v17 = v118;
          v54 = v118[7];
          v30 = v118[6];
          v55 = v118[4];
          if (v118[8] >= 1)
          {
            v56 = v118[6];
            swift_arrayDestroy();
            v30 = v56;
          }

LABEL_49:
          v18 = v73;
          ecs_stack_allocator_deallocate(v55, v30, 48 * v54);
          *(v17 + 3) = v81;
          *(v17 + 4) = v80;
          v17[10] = v79;
          sub_1AF62D29C(v82);
          ecs_stack_allocator_pop_snapshot(v84);
          if (v73)
          {
            os_unfair_lock_unlock(*(v82 + 344));
            os_unfair_lock_unlock(*(v82 + 376));
          }

          v19 = v83 + 1;
          if (v83 + 1 == v77)
          {
            sub_1AF5D1564(v100);
            break;
          }
        }
      }
    }
  }

  v57 = a5[41];
  v91 = a5[40];
  v92 = v57;
  v93[0] = a5[42];
  v58 = a5[37];
  v87 = a5[36];
  v88 = v58;
  v59 = a5[39];
  v89 = a5[38];
  v90 = v59;
  v60 = a5[35];
  v85 = a5[34];
  v86 = v60;
  *(v93 + 9) = *(a5 + 681);
  if (sub_1AF448314(&v85) == 1)
  {
    goto LABEL_60;
  }

  v61 = *(&v85 + 1);
  ObjectType = swift_getObjectType();
  v63 = *(v61 + 152);
  swift_unknownObjectRetain();
  v64 = v63(ObjectType, v61);
  swift_unknownObjectRelease();
  if (BYTE4(v64))
  {
    if (BYTE4(v64) == 2)
    {
      v65 = 0;
      v66 = 1;
      goto LABEL_57;
    }

LABEL_60:
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  v65 = v64;
  v66 = v64 == 0;
LABEL_57:
  if ((*(v71 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare) & 1) == 0)
  {

    sub_1AFB6C8D4(v65 | (v66 << 32), a4, a5, a6);
  }

  return sub_1AF5D1564(v100);
}

uint64_t sub_1AFB6E000(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  v3 = *(*(a2 + 200) + 24);
  if (v3 == 2)
  {
    goto LABEL_105;
  }

  if ((v3 & 1) == 0)
  {
    return result;
  }

  v4 = result;
  v5 = *(result + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);
  v6 = *(a2 + 392) ? 0 : 0x4000;

  sub_1AF0D8CC8(&v179);

  *&v185[4] = v179;
  *&v185[20] = v180;
  *&v185[36] = v181;
  *&v185[52] = v182;
  *&v185[68] = v183;
  *&v185[84] = v184;
  v156 = v6;
  v197 = v6;
  v198 = *v185;
  v199 = *&v185[16];
  *&v202[12] = *&v185[76];
  *v202 = *&v185[64];
  v201 = *&v185[48];
  v200 = *&v185[32];
  v8 = *(a2 + 560);
  v186[0] = *(a2 + 544);
  v186[1] = v8;
  v9 = *(a2 + 576);
  v10 = *(a2 + 592);
  v11 = *(a2 + 608);
  v186[5] = *(a2 + 624);
  v186[4] = v11;
  v186[3] = v10;
  v186[2] = v9;
  v12 = *(a2 + 640);
  v13 = *(a2 + 656);
  v137 = a2;
  v14 = *(a2 + 672);
  *(v187 + 9) = *(a2 + 681);
  v187[0] = v14;
  v186[7] = v13;
  v186[6] = v12;
  if (sub_1AF448314(v186) == 1)
  {
LABEL_105:
    sub_1AFDFE518();
    __break(1u);

    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v15 = *(&v186[0] + 1);
  ObjectType = swift_getObjectType();
  v17 = *(v15 + 152);
  swift_unknownObjectRetain();
  v18 = v17(ObjectType, v15);
  swift_unknownObjectRelease();
  v19 = *(v2 + 32);
  v218[0] = *(v2 + 16);
  v218[1] = v19;
  v219 = *(v2 + 48);
  v142 = v4;
  sub_1AF6B06C0(v4, v218, v18 & 0xFFFFFFFFFFLL, v188);
  v175 = *&v188[32];
  v176 = v189;
  v177 = v190;
  v178 = v191;
  v173 = *v188;
  v174 = *&v188[16];
  v20 = *v188;
  if (!*v188)
  {
  }

  v144 = *&v188[40];
  v145 = *(&v189 + 1);
  v21 = *(&v190 + 1);
  v138 = v190;
  v140 = v191;
  v192 = *&v188[8];
  v193 = *&v188[24];

  v22 = sub_1AFBE502C(v5);

  v23 = sub_1AFDFE238();
  v25 = v24;

  v26 = v137;
  sub_1AF7180FC();

  v27 = 0;
  v28 = sub_1AF6F3D60(v22, v23, v25);
  swift_bridgeObjectRelease_n();
  sub_1AF709E8C(v28);
  swift_unknownObjectRelease();

  sub_1AFBE5ADC(v4, v137);
  if (!*(*(v137 + 280) + 64))
  {
    v67 = sub_1AF6F3FF4(0);
    if (v67)
    {
      v69 = v67;
      v70 = thread_worker_index(v68);
      if (*v70 == -1)
      {
        v72 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
      }

      else
      {
        v72 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *v70 + 8);
      }

      v73 = *v72;
      *&v207 = 0;
      v206 = 0u;
      v205 = 0u;
      *(v71 + 228) = 0u;
      *(v71 + 244) = 0u;
      *&v170[8] = 0u;
      *&v170[24] = xmmword_1AFE22A20;
      v171 = xmmword_1AFE22A20;
      v172 = xmmword_1AFE22A20;
      LOBYTE(v168) = 0;
      *&v166 = v4;
      *(&v166 + 1) = v137;
      *(&v167 + 1) = 1;
      *&v167 = v73;

      sub_1AF5FD5D8(&v205, &v168 + 8);
      if (v140 <= 0)
      {

        sub_1AF5D1564(v188);

        swift_unknownObjectRelease();
      }

      else
      {
        if (v145)
        {
          v128 = v22;
          v149 = *(v21 + 32);
          v147 = *(v138 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v194 = v20;
          v195 = v192;
          v196 = v193;
          v165[2] = v175;
          v165[3] = v176;
          v165[4] = v177;
          v165[5] = v178;
          v165[0] = v173;
          v165[1] = v174;
          sub_1AF5DD298(v165, &v205);
          v74 = 0;
          do
          {
            v141 = v74;
            v143 = v27;
            v75 = (v144 + 48 * v74);
            v76 = *v75;
            v77 = v75[1];
            v78 = *(v75 + 3);
            v155 = *(v75 + 2);
            v80 = *(v75 + 4);
            v79 = *(v75 + 5);
            if (v147)
            {
              v81 = *(v79 + 376);

              os_unfair_lock_lock(v81);
              os_unfair_lock_lock(*(v79 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v149);
            v82 = *(v21 + 64);
            v203[0] = *(v21 + 48);
            v203[1] = v82;
            v204 = *(v21 + 80);
            v83 = *(*(*(*(v79 + 40) + 16) + 32) + 16) + 1;
            *(v21 + 48) = ecs_stack_allocator_allocate(*(v21 + 32), 48 * v83, 8);
            *(v21 + 56) = v83;
            *(v21 + 72) = 0;
            *(v21 + 80) = 0;
            *(v21 + 64) = 0;
            v139 = v79;
            v84 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, v155, v78, v80, v21);
            if (v76 != v77)
            {
              v85 = v77 - v76;
              v86 = v84 + 8 * v76;
              do
              {
                v88 = *v86;
                v89 = *(*v86 + 232);
                if (*(v89 + 16))
                {
                  *&v164[36] = v181;
                  *&v164[52] = v182;
                  *&v164[68] = v183;
                  *&v164[84] = v184;
                  *&v164[4] = v179;
                  *&v164[20] = v180;
                  v212 = v156;
                  v213 = *v164;
                  v214 = *&v164[16];
                  *&v217[12] = *&v164[76];
                  v216 = *&v164[48];
                  *v217 = *&v164[64];
                  v215 = *&v164[32];
                  v90 = sub_1AF419A14(&v212);
                  if (v91)
                  {
                    v92 = (*(v89 + 56) + 24 * v90);
                    v93 = *v92;
                    v94 = v92[1];
                    v95 = swift_getObjectType();

                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                    [v69 setRenderPipelineState_];
                    [v69 setDepthStencilState_];
                    if (*(v88 + 152))
                    {
                      v96 = *(v88 + 120) == 0;
                    }

                    else
                    {
                      v96 = *(v88 + 120);
                    }

                    [v69 setFrontFacingWinding_];
                    [v69 setCullMode_];
                    [v69 setTriangleFillMode_];
                    if ((*(*(&v166 + 1) + 24) & 8) != 0)
                    {
                      [v69 setDepthClipMode_];
                    }

                    [v69 setStencilFrontReferenceValue:*(v88 + 112) backReferenceValue:*(v88 + 116)];
                    v97 = *(v88 + 320);
                    v209 = *(v88 + 304);
                    v210 = v97;
                    v211 = *(v88 + 336);
                    v98 = *(v88 + 256);
                    v205 = *(v88 + 240);
                    v206 = v98;
                    v99 = *(v88 + 272);
                    if (*(v88 + 208) <= 0)
                    {
                      v100 = 3;
                    }

                    else
                    {
                      v100 = 26;
                    }

                    v208 = *(v88 + 288);
                    v207 = v99;
                    sub_1AF5FD904(&v205, v162);
                    sub_1AFB488A0(&v205, v69, &v166, v100);
                    sub_1AF5FD960(&v205);
                    v101 = *(v88 + 160);
                    if (v101)
                    {
                      v102 = *(v88 + 168);
                      swift_unknownObjectRetain();
                      [v69 setTessellationFactorBuffer:v101 offset:v102 instanceStride:0];
                      swift_unknownObjectRelease();
                      v103 = *(v88 + 80);
                      v104 = *(v88 + 88);
                      v105 = *(v88 + 32);
                      if (v105)
                      {
                        v87 = *(v88 + 40);
                        swift_unknownObjectRetain();
                      }

                      else
                      {
                        v87 = 0;
                      }

                      [v69 drawPatches:0 patchStart:v104 patchCount:v103 patchIndexBuffer:v105 patchIndexBufferOffset:v87 instanceCount:*(v88 + 96) baseInstance:*(v88 + 104)];
                      swift_unknownObjectRelease();

                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v106 = *(v88 + 352);
                      if (v106)
                      {
                        v107 = *(v88 + 208);
                        v108 = v107;
                        v151 = *(v88 + 360);
                        if (v107 <= 0)
                        {
                          v122 = *(v88 + 32);
                          if (v122)
                          {
                            v136 = *(v88 + 40);
                            v132 = *(v88 + 16);
                            v123 = *(v88 + 48);
                            swift_unknownObjectRetain();
                            swift_unknownObjectRetain();
                            [v69 drawIndexedPrimitives:v132 indexType:v123 indexBuffer:v122 indexBufferOffset:v136 indirectBuffer:v106 indirectBufferOffset:v151];
                            swift_unknownObjectRelease();
                          }

                          else
                          {
                            v125 = *(v88 + 16);
                            swift_unknownObjectRetain();
                            [v69 drawPrimitives:v125 indirectBuffer:v106 indirectBufferOffset:v151];
                          }
                        }

                        else
                        {
                          v134 = *(v88 + 208);
                          v109 = *(v88 + 192);
                          v110 = v109;
                          v111 = SDWORD1(v109);
                          v129 = SDWORD2(v109);
                          swift_unknownObjectRetain();
                          sub_1AF4674F0(v110, v111, v129, v162);
                          v130 = *v162;
                          v112 = *&v162[16];
                          sub_1AF4674F0(v108, SDWORD1(v134), SDWORD2(v134), v162);
                          v113 = *&v162[16];
                          v114 = *v162;
                          *v162 = v130;
                          *&v162[16] = v112;
                          v160 = v114;
                          v161 = v113;
                          [v69 drawMeshThreadgroupsWithIndirectBuffer:v106 indirectBufferOffset:v151 threadsPerObjectThreadgroup:v162 threadsPerMeshThreadgroup:&v160];
                        }

                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        v115 = *(v88 + 208);
                        v116 = v115.u32[0];
                        if (v115.i32[0] <= 0)
                        {
                          v124 = *(v88 + 32);
                          if (v124)
                          {
                            v126 = v95;
                            sub_1AF6F5C4C(*(v88 + 16), *(v88 + 56), *(v88 + 48), v124, *(v88 + 40), *(v88 + 96), *(v88 + 88), *(v88 + 104));
                          }

                          else
                          {
                            [v69 drawPrimitives:*(v88 + 16) vertexStart:*(v88 + 88) vertexCount:*(v88 + 80) instanceCount:*(v88 + 96) baseInstance:*(v88 + 104)];
                          }
                        }

                        else
                        {
                          v117 = vaddq_s32(*(v88 + 176), v115);
                          v135 = *(v88 + 208);
                          sub_1AF4674F0((v117.i32[0] - 1) / v115.i32[0], (v117.i32[1] - 1) / v115.i32[1], (v117.i32[2] - 1) / v115.i32[2], v162);
                          v152 = *v162;
                          v118 = *&v162[16];
                          sub_1AF4674F0(*(v88 + 192), HIDWORD(*(v88 + 192)), *(v88 + 200), v162);
                          v131 = *v162;
                          v119 = *&v162[16];
                          sub_1AF4674F0(v116, SDWORD1(v135), SDWORD2(v135), v162);
                          v120 = *&v162[16];
                          v121 = *v162;
                          *v162 = v152;
                          *&v162[16] = v118;
                          v160 = v131;
                          v161 = v119;
                          v158 = v121;
                          v159 = v120;
                          [v69 drawMeshThreadgroups:v162 threadsPerObjectThreadgroup:&v160 threadsPerMeshThreadgroup:&v158];
                        }
                      }

                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                    }
                  }
                }

                v86 += 8;
                --v85;
              }

              while (v85);
            }

            v27 = v143;
            sub_1AF630994(v21, &v194, v203);
            sub_1AF62D29C(v139);
            ecs_stack_allocator_pop_snapshot(v149);
            if (v147)
            {
              os_unfair_lock_unlock(*(v139 + 344));
              os_unfair_lock_unlock(*(v139 + 376));
            }

            v74 = v141 + 1;
          }

          while (v141 + 1 != v145);
          swift_unknownObjectRelease();

          sub_1AF5D1564(v188);
          sub_1AF5D1564(v188);
        }

        else
        {
          v207 = v175;
          v208 = v176;
          v209 = v177;
          v210 = v178;
          v205 = v173;
          v206 = v174;
          sub_1AF5DD298(&v205, v162);
          swift_unknownObjectRelease();

          sub_1AF5D1564(v188);
          sub_1AF5D1564(v188);
        }
      }

      return sub_1AF5FD668(&v166);
    }

    goto LABEL_94;
  }

  if (v140 <= 0)
  {
LABEL_94:

    sub_1AF5D1564(v188);
  }

  if (v145)
  {
    v127 = v22;
    v29 = *(v138 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v157 = *(v21 + 32);
    *v162 = v20;
    *&v162[8] = v192;
    v163 = v193;
    v207 = v175;
    v208 = v176;
    v209 = v177;
    v210 = v178;
    v205 = v173;
    v206 = v174;
    sub_1AF5DD298(&v205, &v166);
    v30 = 0;
    v133 = v29;
    while (1)
    {
      v31 = v26;
      v154 = v30;
      v32 = (v144 + 48 * v30);
      v33 = *v32;
      v34 = v32[1];
      v35 = v32[2];
      v36 = *(v32 + 2);
      v37 = *(v32 + 3);
      v38 = *(v32 + 4);
      v39 = *(v32 + 5);
      if (v29)
      {
        v40 = *(v39 + 376);

        os_unfair_lock_lock(v40);
        os_unfair_lock_lock(*(v39 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v157);
      v148 = *(v21 + 64);
      v150 = *(v21 + 48);
      v146 = *(v21 + 80);
      v41 = *(*(*(*(v39 + 40) + 16) + 32) + 16) + 1;
      *(v21 + 48) = ecs_stack_allocator_allocate(*(v21 + 32), 48 * v41, 8);
      *(v21 + 56) = v41;
      *(v21 + 72) = 0;
      *(v21 + 80) = 0;
      *(v21 + 64) = 0;
      LOBYTE(v212) = 1;
      *&v166 = v138;
      v153 = v39;
      *(&v166 + 1) = v39;
      *&v167 = v21;
      *(&v167 + 1) = v35;
      *&v168 = (v34 - v33 + v35);
      *(&v168 + 1) = v140;
      *&v169 = v33;
      *(&v169 + 1) = v34;
      *v170 = 0uLL;
      v170[16] = 1;
      *&v170[24] = v36;
      *&v170[32] = v37;
      *&v171 = v38;
      v26 = v31;
      sub_1AFB6F038(&v166, v31, v142, &v197);
      v42 = *(v21 + 48);
      v43 = *(v21 + 64);
      if (!v43)
      {
        v64 = *(v21 + 56);
        v65 = *(v21 + 32);
        v66 = v154;
        goto LABEL_47;
      }

      for (i = 0; i != v43; ++i)
      {
        v46 = (v42 + 48 * i);
        v47 = *v46;
        v48 = v46[4];
        v49 = *(v21 + 72);
        if (v49)
        {
          v50 = v47 == v49;
        }

        else
        {
          v50 = 0;
        }

        if (v50 || !*(*v162 + 22))
        {
          goto LABEL_19;
        }

        v51 = v46[2];
        v52 = *v162 + 41;
        v53 = *(*v162 + 18);
        if (v53 >= 0x10)
        {
          v54 = (v52 + *(*v162 + 16));
          v55 = v53 >> 4;
          v56 = *v162 + 41;
          while (*v54 != v47)
          {
            ++v56;
            v54 += 2;
            if (!--v55)
            {
              goto LABEL_35;
            }
          }

          v57 = *(v56 + *(*v162 + 20));
          v58 = v57 > 5;
          v59 = (1 << v57) & 0x23;
          if (v58 || v59 == 0)
          {
LABEL_19:

            v48(v45);

            continue;
          }
        }

LABEL_35:
        if (swift_conformsToProtocol2() && v51)
        {
          if (sub_1AF5FC8D8(v51))
          {
            goto LABEL_19;
          }

          v61 = *(*v162 + 18);
          if (v61 < 0x10)
          {
            goto LABEL_19;
          }

          v62 = (v52 + *(*v162 + 16));
          v63 = 16 * (v61 >> 4);
          while (*v62 != v51)
          {
            v62 += 2;
            v63 -= 16;
            if (!v63)
            {
              goto LABEL_19;
            }
          }
        }
      }

      v64 = *(v21 + 56);
      v42 = *(v21 + 48);
      v65 = *(v21 + 32);
      v66 = v154;
      if (*(v21 + 64) >= 1)
      {
        swift_arrayDestroy();
      }

      v26 = v137;
LABEL_47:
      ecs_stack_allocator_deallocate(v65, v42, 48 * v64);
      *(v21 + 48) = v150;
      *(v21 + 64) = v148;
      *(v21 + 80) = v146;
      sub_1AF62D29C(v153);
      ecs_stack_allocator_pop_snapshot(v157);
      v29 = v133;
      if (v133)
      {
        os_unfair_lock_unlock(*(v153 + 344));
        os_unfair_lock_unlock(*(v153 + 376));
      }

      v30 = v66 + 1;
      if (v30 == v145)
      {

        goto LABEL_98;
      }
    }
  }

  v168 = v175;
  v169 = v176;
  *v170 = v177;
  *&v170[16] = v178;
  v166 = v173;
  v167 = v174;
  sub_1AF5DD298(&v166, &v205);

LABEL_98:
  sub_1AF5D1564(v188);

  return sub_1AF5D1564(v188);
}

uint64_t sub_1AFB6F038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  result = sub_1AF6F3FF4(v8[3]);
  if (result)
  {
    v10 = result;
    v18 = 0;
    v19[0] = a3;
    memset(v17, 0, sizeof(v17));
    memset(v21, 0, 48);
    v21[3] = xmmword_1AFE22A20;
    v21[4] = xmmword_1AFE22A20;
    v21[5] = xmmword_1AFE22A20;
    v20 = 0;
    v19[1] = a2;
    v19[2] = v8;
    v19[3] = 1;

    sub_1AF5FD5D8(v17, v21);
    v11 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, *(a1 + 88), *(a1 + 96), *(a1 + 104), v8);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = v13 - v12;
    if (v13 != v12)
    {
      v15 = v11 + 8 * v12;
      do
      {
        v15 += 8;

        sub_1AFB416F0(v16, a4, 0, 0, 0, v10, v19, 0);

        --v14;
      }

      while (v14);
    }

    swift_unknownObjectRelease();
    return sub_1AF5FD668(v19);
  }

  return result;
}

uint64_t sub_1AFB6F1C8(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >= 2u && a2 != 0)
  {
    v6 = *(*(a2 + 200) + 24);
    if (v6 == 2)
    {
      goto LABEL_32;
    }

    if ((v6 & 0x100) == 0)
    {
      return result;
    }

    v7 = result;
    v8 = *(result + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);

    v9 = sub_1AFBE5C9C(v8);

    sub_1AFDFE238();

    sub_1AF7180FC();

    v10 = sub_1AF6F3D60(v9, 0, 0);
    v42 = v9;
    sub_1AF709E8C(v10);

    sub_1AF0D879C(&v51);
    sub_1AF0D879C(&v54);
    v11 = v53;
    v12 = v52;
    sub_1AF0D879C(&v56);
    sub_1AF0D8F38(&v51);
    sub_1AF0D8F38(&v56);
    sub_1AF0D8F38(&v54);
    v13 = v55 == 260 ? 260 : 0;
    v14 = v11 <= 1 ? 1 : v11;
    v72 = 0;
    v73 = v12;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = v57;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = v55;
    v82 = v13;
    v83 = v14;
    sub_1AFBE5ADC(v7, a2);
    v15 = *(a2 + 656);
    v49[6] = *(a2 + 640);
    v49[7] = v15;
    v50[0] = *(a2 + 672);
    *(v50 + 9) = *(a2 + 681);
    v16 = *(a2 + 592);
    v49[2] = *(a2 + 576);
    v49[3] = v16;
    v17 = *(a2 + 624);
    v49[4] = *(a2 + 608);
    v49[5] = v17;
    v18 = *(a2 + 560);
    v49[0] = *(a2 + 544);
    v49[1] = v18;
    if (sub_1AF448314(v49) == 1)
    {
LABEL_32:
      while (1)
      {
        sub_1AFDFE518();
        __break(1u);
      }
    }

    v19 = *(&v49[0] + 1);
    ObjectType = swift_getObjectType();
    v21 = *(v19 + 152);
    swift_unknownObjectRetain();
    v22 = v21(ObjectType, v19);
    swift_unknownObjectRelease();
    v23 = *(v3 + 32);
    v84[0] = *(v3 + 16);
    v84[1] = v23;
    v85 = *(v3 + 48);
    sub_1AF6B06C0(v7, v84, v22 & 0xFFFFFFFFFFLL, &v58);
    if (v58)
    {
      v70 = v63;
      v68 = v61;
      v69 = v62;
      v65 = v58;
      v71 = v64;
      v66 = v59;
      v67 = v60;
      v24 = *(&v63 + 1);
      sub_1AFB21428(v7, &v45);
      v48 = MEMORY[0x1E69E7CC0];
      sub_1AF6B9E2C(&v65, v24, &v48, v45, v46, *v47, *&v47[2]);
      v25 = v48;
      v26 = *(v48 + 2);
      v28 = thread_worker_index(v27);
      v29 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
      if (*v28 != -1)
      {
        v29 += *v28 + 1;
      }

      v30 = *v29;
      v44 = 0;
      memset(v43, 0, sizeof(v43));
      memset(&v47[1], 0, 48);
      *&v47[7] = xmmword_1AFE22A20;
      *&v47[9] = xmmword_1AFE22A20;
      *&v47[11] = xmmword_1AFE22A20;
      LOBYTE(v47[0]) = 1;
      v45.i64[0] = v7;
      v45.i64[1] = a2;
      v46.i64[0] = v30;
      v46.i64[1] = 1;

      sub_1AF5FD5D8(v43, &v47[1]);
      if (v26)
      {
        v31 = 0;
        v32 = v68;
        v33 = v69;
        do
        {
          if (v33)
          {
            v34 = *&v25[16 * v31 + 32];
            v35 = v32;
            v36 = v33;
            while (1)
            {
              v37 = *(v35 + 8);
              if (v34 >= v37 && v34 < (v37 - *v35 + *(v35 + 4)))
              {
                break;
              }

              v35 += 48;
              if (!--v36)
              {
                goto LABEL_26;
              }
            }

            v38 = *(*(v35 + 40) + 188);
          }

          else
          {
LABEL_26:
            v38 = -1;
          }

          ++v31;
          v39 = (*(*(*(*(&v33 + 1) + 144) + 8 * v38 + 32) + 48) + 32);
          do
          {
            v40 = *v39;
            v39 += 5;
          }

          while (v40 != &type metadata for DrawCallComponent);

          sub_1AFB416F0(v41, &v72, 0, 0, 0, v10, &v45, 0);
        }

        while (v31 != v26);
      }

      swift_unknownObjectRelease();

      sub_1AF5D1564(&v58);

      sub_1AF5FD668(&v45);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t destroy for MeshModel()
{
}

void *sub_1AFB6F800(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *assignWithCopy for MeshModel(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

_OWORD *assignWithTake for MeshModel(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

uint64_t sub_1AFB6F928(uint64_t a1)
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

uint64_t sub_1AFB6F9F8(void *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2 >= 2)
    {
      v7 = *a1 + 16;
      v8 = -1;
      for (i = 1; i != v2; ++i)
      {
        v10 = v8;
        v11 = v7;
        do
        {
          v12 = *(v11 + 8);
          if (*(v11 - 8) >= v12)
          {
            break;
          }

          v13 = *v11;
          *v11 = *(v11 - 16);
          *(v11 - 8) = v12;
          *(v11 - 16) = v13;
          v11 -= 16;
        }

        while (!__CFADD__(v10++, 1));
        v7 += 16;
        --v8;
      }
    }
  }

  else
  {
    v4 = result;
    v5 = v2 / 2;
    if (v2 <= 1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1AFB713D0();
      v6 = sub_1AFDFD488();
      *(v6 + 16) = v5;
    }

    v15[0] = (v6 + 32);
    v15[1] = v5;
    sub_1AFB6FB24(v15, v16, a1, v4);
    *(v6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AFB6FB24(float **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v61 = *a1;
    v8 = MEMORY[0x1E69E7CC0];
    v60 = a4;
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *(*a3 + 16 * v7 + 8);
        v11 = 16 * v9;
        v12 = *a3 + 16 * v9;
        v13 = *(v12 + 8);
        v14 = v9 + 2;
        v15 = (v12 + 40);
        while (v6 != v14)
        {
          v16 = *(v15 - 4) >= *v15;
          ++v14;
          v15 += 4;
          if ((((v13 < v10) ^ v16) & 1) == 0)
          {
            v7 = v14 - 1;
            goto LABEL_10;
          }
        }

        v7 = v6;
LABEL_10:
        if (v13 < v10 && v9 < v7)
        {
          v18 = 0;
          v19 = 16 * v7;
          v20 = v9;
          do
          {
            if (v20 != v7 + v18 - 1)
            {
              v21 = *a3 + v11;
              v22 = *a3 + v19;
              v23 = *v21;
              v24 = *(v21 + 8);
              *v21 = *(v22 - 16);
              *(v22 - 16) = v23;
              *(v22 - 8) = v24;
            }

            ++v20;
            v19 -= 16;
            --v18;
            v11 += 16;
          }

          while (v20 < v7 + v18);
          v6 = a3[1];
        }
      }

      if (v7 < v6 && v7 - v9 < a4)
      {
        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v9 + a4 != v7)
        {
          v44 = *a3 + 16 * v7;
          v45 = v9 - v7;
          do
          {
            v46 = v45;
            v47 = v44;
            do
            {
              v48 = *(v47 + 8);
              if (*(v47 - 8) >= v48)
              {
                break;
              }

              v49 = *v47;
              *v47 = *(v47 - 16);
              *(v47 - 8) = v48;
              *(v47 - 16) = v49;
              v47 -= 16;
            }

            while (!__CFADD__(v46++, 1));
            ++v7;
            v44 += 16;
            --v45;
          }

          while (v7 != v6);
        }

        v7 = v6;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1AF4209A4(0, *(v8 + 2) + 1, 1, v8);
      }

      v26 = *(v8 + 2);
      v25 = *(v8 + 3);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v8 = sub_1AF4209A4(v25 > 1, v26 + 1, 1, v8);
      }

      *(v8 + 2) = v27;
      v28 = v8 + 32;
      v29 = &v8[16 * v26 + 32];
      *v29 = v9;
      *(v29 + 1) = v7;
      if (v26)
      {
        break;
      }

LABEL_3:
      v6 = a3[1];
      a4 = v60;
      if (v7 >= v6)
      {
        goto LABEL_54;
      }
    }

    while (1)
    {
      v30 = v27 - 1;
      if (v27 >= 4)
      {
        v34 = &v28[16 * v27];
        v35 = *(v34 - 7) - *(v34 - 8);
        v33 = *(v34 - 5) - *(v34 - 6);
        v36 = &v8[16 * v27];
        v31 = *v36;
        v32 = *(v36 + 1);
        if (v33 - v31 + v32 >= v35)
        {
          v39 = v27 - 2;
          v38 = *&v28[16 * v30 + 8] - *&v28[16 * v30];
          goto LABEL_41;
        }
      }

      else
      {
        if (v27 != 3)
        {
          v37 = *&v8[16 * v27 + 8] - *&v8[16 * v27];
          v38 = *&v28[16 * v30 + 8] - *&v28[16 * v30];
LABEL_38:
          if (v38 < v37)
          {
            goto LABEL_3;
          }

          goto LABEL_43;
        }

        v31 = *(v8 + 6);
        v32 = *(v8 + 7);
        v33 = *(v8 + 5) - *(v8 + 4);
      }

      v37 = v32 - v31;
      v38 = *&v28[16 * v30 + 8] - *&v28[16 * v30];
      if (v37 + v38 < v33)
      {
        goto LABEL_38;
      }

      v39 = v27 - 2;
LABEL_41:
      if (v33 < v38)
      {
        v30 = v39;
      }

LABEL_43:
      v40 = &v28[16 * v30];
      v41 = *(v40 - 2);
      v42 = *(v40 + 1);
      sub_1AFB6FF50((*a3 + 16 * v41), (*a3 + 16 * *v40), (*a3 + 16 * v42), v61);
      if (v4)
      {
      }

      *(v40 - 2) = v41;
      *(v40 - 1) = v42;
      v43 = *(v8 + 2);
      v27 = v43 - 1;
      memmove(&v28[16 * v30], v40 + 16, 16 * (v43 - 1 - v30));
      *(v8 + 2) = v43 - 1;
      if (v43 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_54:
  v62 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AF650C88(v8);
  }

  v51 = v8 + 16;
  v52 = *(v8 + 2);
  if (v52 >= 2)
  {
    do
    {
      v53 = &v8[16 * v52];
      v54 = *v53;
      v55 = &v51[2 * v52];
      v56 = v55[1];
      sub_1AFB6FF50((*a3 + 16 * *v53), (*a3 + 16 * *v55), (*a3 + 16 * v56), v62);
      if (v4)
      {
        break;
      }

      *v53 = v54;
      *(v53 + 1) = v56;
      v57 = *v51 - 1;
      memmove(&v51[2 * v52], v55 + 2, 16 * (*v51 - v52));
      *v51 = v57;
      v52 = v57;
    }

    while (v57 > 1);
  }
}

uint64_t sub_1AFB6FF50(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 4 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 4);
    }

    v15 = &v4[v14];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 4;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 4;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 4 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v19 = v5 + 4;
      if (*(v6 - 2) < *(v15 - 2))
      {
        v21 = v6 - 4;
        if (v19 != v6)
        {
          *v5 = *v21;
        }

        if (v15 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v20 = v15 - 4;
      if (v19 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 4;
      v15 -= 4;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v22 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= (v4 + v22))
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

uint64_t sub_1AFB7014C(void *a1, uint64_t a2)
{
  sub_1AFB70948(0, &qword_1EB642CF8, sub_1AFB70810, &type metadata for MeshModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11[-v8];
  sub_1AF441150(a1, a1[3]);
  sub_1AFB70810();
  sub_1AFDFF3F8();
  v12 = a2;
  v11[15] = 1;
  sub_1AF7021F8(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
  sub_1AFB70864(&qword_1EB642E80, sub_1AF480018);
  sub_1AFDFE918();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1AFB70330(void *a1)
{
  sub_1AFB70948(0, &qword_1EB633148, sub_1AFB708F4, &type metadata for ModelRenderer.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13 - v7;
  v9 = a1[3];
  sub_1AF441150(a1, v9);
  sub_1AFB708F4();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v14 = 0;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    v9 = v15;
    v11 = a1[3];
    v12 = a1[4];
    sub_1AF441150(a1, v11);
    if (sub_1AF694FF8(1099, v11, v12))
    {
      v14 = 1;
      sub_1AFDFE768();
    }

    (*(v5 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

uint64_t sub_1AFB70590(void *a1)
{
  sub_1AFB70948(0, &qword_1EB630A40, sub_1AFB70810, &type metadata for MeshModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12[-v7];
  sub_1AF441150(a1, a1[3]);
  sub_1AFB70810();
  sub_1AFDFF3B8();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = a1[3];
  v11 = a1[4];
  sub_1AF441150(a1, v10);
  if (sub_1AF694FF8(1099, v10, v11))
  {
    sub_1AF7021F8(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    v12[15] = 1;
    sub_1AFB70864(&qword_1ED723220, sub_1AF47FEB4);
    sub_1AFDFE768();
  }

  (*(v5 + 8))(v8, v4);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return 0;
}

unint64_t sub_1AFB70810()
{
  result = qword_1EB630E80;
  if (!qword_1EB630E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB630E80);
  }

  return result;
}

uint64_t sub_1AFB70864(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1AF7021F8(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFB708F4()
{
  result = qword_1EB633820;
  if (!qword_1EB633820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633820);
  }

  return result;
}

void sub_1AFB70948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AFB709D8(float32x4_t *a1, uint64_t a2, char **a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  if (a2)
  {
    v10 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1AF427A00(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = 0;
    *a3 = v10;
    v21 = vabsq_f32(a5);
    v22 = vabsq_f32(a4);
    v20 = vabsq_f32(a6);
    v13 = a1 + 1;
    do
    {
      v27 = v13[-1];
      v28 = *v13;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v10;
      if ((v14 & 1) == 0)
      {
        v10 = sub_1AF427A00(0, *(v10 + 2) + 1, 1, v10);
        *a3 = v10;
      }

      v16 = *(v10 + 2);
      v15 = *(v10 + 3);
      if (v16 >= v15 >> 1)
      {
        v10 = sub_1AF427A00(v15 > 1, v16 + 1, 1, v10);
        *a3 = v10;
      }

      v17 = &v10[16 * v16];
      *(v17 + 4) = v12;
      v18 = v28;
      v18.i32[1] = v28.i32[0];
      v18.i32[2] = v28.i32[0];
      *(v10 + 2) = v16 + 1;
      *(v17 + 10) = -COERCE_FLOAT(vaddq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a7, a6, v27, 2), a5, *&v27, 1), a4, *&v27), vmlaq_f32(vmlaq_f32(vmulq_f32(v21, vuzp2q_s32(vdupq_lane_s32(*&v28, 1), v28)), v18, v22), vzip2q_s32(vtrn1q_s32(v28, v28), v28), v20)).i32[2]);
      v10 = *a3;
      v13 += 2;
      ++v12;
    }

    while (a2 != v12);
  }

  return sub_1AFB6B73C(a3);
}

uint64_t sub_1AFB70B90()
{
  type metadata accessor for OpaqueRenderPass();
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
  sub_1AF702F3C(1, v5);
  sub_1AF5DD4A4(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 56) = &type metadata for DrawCallLayer;
  *(inited + 64) = &off_1F2560C28;
  *(inited + 32) = 0;
  v2 = inited + 32;
  sub_1AF5FC330(inited, v6);
  sub_1AFB712F4(v5, sub_1AF5FD780);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
  v3 = v6[1];
  *(v0 + 16) = v6[0];
  *(v0 + 32) = v3;
  *(v0 + 48) = v7;
  return v0;
}

uint64_t sub_1AFB70CE8()
{
  type metadata accessor for TransparentRenderPass();
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
  sub_1AFCC5180(1, 1, v5);
  sub_1AF5DD4A4(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 56) = &type metadata for DrawCallLayer;
  *(inited + 64) = &off_1F2560C28;
  *(inited + 32) = 1;
  v2 = inited + 32;
  sub_1AF5FDBF0(v6);
  sub_1AFB712F4(v5, sub_1AFB71434);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
  v3 = v6[1];
  *(v0 + 16) = v6[0];
  *(v0 + 32) = v3;
  *(v0 + 48) = v7;
  return v0;
}

uint64_t sub_1AFB70E50(void *a1, void *a2)
{
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  v86 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v4, v5, v6, v8);
  v9 = sub_1AF64B110(&type metadata for ModelRenderer, &off_1F2562450, v4, v5, v6, v8);
  v10 = *(*a2 + 8 * v8[3]);
  result = sub_1AF649C6C(*(v7 + 40), &type metadata for Color, &v87);
  if (v87 == 1)
  {

    v12 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v4, v5, v6, v8);
    v13 = a1[6];
    v14 = a1[7];
    if (v13 != v14)
    {
      v17 = v12;
      do
      {
        v28 = v9 + 16 * v13;
        v30 = *v28;
        v29 = *(v28 + 4);
        if (*v28 != -1 || v29 != 0)
        {
          v32 = *(v28 + 8);
          v33 = (v86 + (v13 << 6));
          v23 = *v33;
          v24 = v33[1];
          v25 = v33[2];
          v26 = v33[3];
          v27 = *(v17 + 16 * v13);
          v34 = v30 | (v32 << 32);
          v35 = v10[3] - 1;
          v36 = v35 & v34;
          v37 = *(v10[7] + 2 * (v35 & v34));
          if (v37 < 2)
          {
            goto LABEL_9;
          }

          while ((v37 & 2) == 0 || *(v10[6] + 8 * (v36 & v35)) != v34)
          {
            ++v36;
            _CF = v37 >= 4;
            v37 >>= 1;
            if (!_CF)
            {
              goto LABEL_9;
            }
          }

          if ((v36 & v35) == 0xFFFFFFFFFFFFFFFFLL)
          {
LABEL_9:
            v82 = v26;
            v84 = *(v17 + 16 * v13);
            v78 = v24;
            v80 = v25;
            v75 = v32;
            v76 = v23;
            v18 = sub_1AFB6B7AC(v34);
            v19 = v10[5];
            v20 = aligned_alloc(0x10uLL, 0x1000uLL);
            v21 = aligned_alloc(0x10uLL, 0x400uLL);
            v22 = v19 + 80 * v18;
            *v22 = v30;
            *(v22 + 4) = v29;
            *(v22 + 8) = v75;
            *(v22 + 16) = v20;
            *(v22 + 24) = xmmword_1AFE9D480;
            *(v22 + 40) = v21;
            *(v22 + 48) = xmmword_1AFE9D480;
            *(v22 + 64) = 0;
            *(v22 + 72) = 0;
            v23 = v76;
            v24 = v78;
            v25 = v80;
            v26 = v82;
            v27 = v84;
          }

          sub_1AFB6C6BC(v23, v24, v25, v26, v27);
        }

        ++v13;
      }

      while (v13 != v14);
    }
  }

  else
  {
    v16 = a1[6];
    v15 = a1[7];
    if (v16 == v15)
    {
      return result;
    }

    __asm { FMOV            V0.4S, #1.0 }

    v74 = _Q0;
    do
    {
      v42 = v9 + 16 * v16;
      v44 = *v42;
      v43 = *(v42 + 4);
      if (*v42 != -1 || v43 != 0)
      {
        v46 = *(v42 + 8);
        v47 = (v86 + (v16 << 6));
        v49 = *v47;
        v48 = v47[1];
        v51 = v47[2];
        v50 = v47[3];
        v52 = v44 | (v46 << 32);
        v53 = v10[3] - 1;
        v54 = v53 & v52;
        v55 = *(v10[7] + 2 * (v53 & v52));
        v83 = v51;
        v85 = v50;
        v79 = v49;
        v81 = v48;
        if (v55 < 2)
        {
          goto LABEL_33;
        }

        while (1)
        {
          if ((v55 & 2) != 0)
          {
            v65 = v54 & v53;
            if (*(v10[6] + 8 * (v54 & v53)) == v52)
            {
              break;
            }
          }

          ++v54;
          _CF = v55 >= 4;
          v55 >>= 1;
          if (!_CF)
          {
            goto LABEL_33;
          }
        }

        if (v65 == -1)
        {
LABEL_33:
          v77 = v46;
          v56 = sub_1AFB6B7AC(v52);
          v57 = v10[5];
          v58 = aligned_alloc(0x10uLL, 0x1000uLL);
          v59 = aligned_alloc(0x10uLL, 0x400uLL);
          v60 = v57 + 80 * v56;
          *v60 = v44;
          *(v60 + 4) = v43;
          *(v60 + 8) = v77;
          *(v60 + 16) = v58;
          *(v60 + 24) = 64;
          *(v60 + 40) = v59;
          *(v60 + 48) = xmmword_1AFE9D480;
          *(v60 + 64) = 0;
          v61 = (v60 + 64);
          *(v60 + 72) = 0;
          *v58 = v79;
          v58[1] = v81;
          v58[2] = v83;
          v58[3] = v85;
          *(v60 + 32) = 1;
          v62 = *(v60 + 56);
          if (v62)
          {
            v63 = *(v60 + 40);
            if (v62 == *(v60 + 48))
            {
              v64 = 2 * v62;
              if (v64 <= 1)
              {
                v64 = 1;
              }

              *(v60 + 48) = v64;
              v63 = reallocf(v63, 16 * v64);
              *(v60 + 40) = v63;
              v62 = *(v60 + 56);
            }

            *(v63 + v62) = v74;
            *(v60 + 56) = v62 + 1;
          }
        }

        else
        {
          v66 = (v10[5] + 80 * v65);
          v67 = v66[4];
          v68 = v66[2];
          if (v67 == v66[3])
          {
            v69 = 2 * v67;
            if (v69 <= 1)
            {
              v69 = 1;
            }

            v66[3] = v69;
            v68 = reallocf(v68, v69 << 6);
            v49 = v79;
            v48 = v81;
            v51 = v83;
            v50 = v85;
            v66[2] = v68;
            v67 = v66[4];
          }

          v70 = &v68[64 * v67];
          *v70 = v49;
          *(v70 + 1) = v48;
          *(v70 + 2) = v51;
          *(v70 + 3) = v50;
          v66[4] = v67 + 1;
          v71 = v66[7];
          if (v71)
          {
            v72 = v66[5];
            if (v71 == v66[6])
            {
              v73 = 2 * v71;
              if (v73 <= 1)
              {
                v73 = 1;
              }

              v66[6] = v73;
              v72 = reallocf(v72, 16 * v73);
              v66[5] = v72;
              v71 = v66[7];
            }

            *(v72 + v71) = v74;
            v66[7] = v71 + 1;
          }

          v61 = v66 + 8;
        }

        *v61 = 1;
      }

      ++v16;
    }

    while (v16 != v15);
  }
}

uint64_t sub_1AFB712F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFB71354()
{
  if (!qword_1ED723AD8)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723AD8);
    }
  }
}

void sub_1AFB713D0()
{
  if (!qword_1EB632A80)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB632A80);
    }
  }
}

void sub_1AFB71434()
{
  if (!qword_1ED723AD0)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723AD0);
    }
  }
}

unint64_t sub_1AFB71550()
{
  result = qword_1EB642D08;
  if (!qword_1EB642D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642D08);
  }

  return result;
}

unint64_t sub_1AFB715A8()
{
  result = qword_1EB642D10;
  if (!qword_1EB642D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642D10);
  }

  return result;
}

unint64_t sub_1AFB71600()
{
  result = qword_1EB633810;
  if (!qword_1EB633810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633810);
  }

  return result;
}

unint64_t sub_1AFB71658()
{
  result = qword_1EB633818;
  if (!qword_1EB633818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633818);
  }

  return result;
}

unint64_t sub_1AFB716B0()
{
  result = qword_1EB630E70;
  if (!qword_1EB630E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB630E70);
  }

  return result;
}

unint64_t sub_1AFB71708()
{
  result = qword_1EB630E78;
  if (!qword_1EB630E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB630E78);
  }

  return result;
}

uint64_t sub_1AFB71760(uint64_t a1)
{
  v2 = sub_1AFB73670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB7179C(uint64_t a1)
{
  v2 = sub_1AFB73670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFB71828@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AFE20670;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 16) = 0xFFFFFFFFLL;
  return result;
}

uint64_t sub_1AFB71840(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    v4 = v3;
    v6 = result;
    v7 = *(v3 + 64);
    v106[0] = *(v3 + 48);
    v106[1] = v7;
    v107 = *(v3 + 80);

    sub_1AF6B06C0(v6, v106, 0x200000000, &v77);
    v8 = v77;
    if (v77)
    {
      v75 = DWORD2(v77);
      v73 = BYTE12(v77);
      v71 = v78;
      v69 = v79;
      v67 = v80;
      v58 = v81;
      v59 = v6;
      v60 = v83;
      v61 = v82;
      v9 = v84;
      v62 = v85;
      v10 = *(v3 + 32);

      v11 = sub_1AFBE5C9C(v10);

      v12 = sub_1AFDFE238();
      v14 = v13;
      v56 = v4;

      sub_1AF7180FC();

      v15 = sub_1AF6F3D60(v11, v12, v14);

      v55 = v11;
      sub_1AF709E8C(v15);
      swift_unknownObjectRelease();

      sub_1AF0D879C(&v86);
      sub_1AF0D879C(&v89);
      v16 = v87;
      v17 = v88;
      sub_1AF0D879C(&v91);
      sub_1AF0D8F38(&v86);
      sub_1AF0D8F38(&v91);
      sub_1AF0D8F38(&v89);
      if (v62 > 0)
      {
        v18 = v17;
        if ((v17 & 0xFE) == 0)
        {
          v18 = 1;
        }

        v19 = v90 == 260 ? 260 : 0;
        v104[0] = v16;
        memset(&v104[1], 0, 24);
        v104[4] = v92;
        memset(&v104[5], 0, 24);
        v104[8] = v90;
        v104[9] = v19;
        v105 = v18;
        v93 = v8;
        v94 = v75;
        v95 = v73;
        v96 = v71;
        v97 = v69;
        v98 = v67;
        if (v61)
        {
          v20 = 0;
          v74 = *(v9 + 32);
          v21 = *(v60 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v76 = v8 + 41;
          v57 = v21;
          do
          {
            v72 = v20;
            v22 = (v58 + 48 * v20);
            v23 = *v22;
            v24 = v22[1];
            v25 = v22[2];
            v26 = *(v22 + 3);
            v64 = *(v22 + 2);
            v28 = *(v22 + 4);
            v27 = *(v22 + 5);
            if (v21)
            {
              v29 = *(v27 + 376);

              os_unfair_lock_lock(v29);
              os_unfair_lock_lock(*(v27 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v74);
            v66 = *(v9 + 64);
            v68 = *(v9 + 48);
            v65 = *(v9 + 80);
            v30 = *(*(*(*(v27 + 40) + 16) + 32) + 16) + 1;
            *(v9 + 48) = ecs_stack_allocator_allocate(*(v9 + 32), 48 * v30, 8);
            *(v9 + 56) = v30;
            *(v9 + 72) = 0;
            *(v9 + 80) = 0;
            *(v9 + 64) = 0;
            v99[0] = v60;
            v70 = v27;
            v99[1] = v27;
            v99[2] = v9;
            v99[3] = v25;
            v99[4] = (v24 - v23 + v25);
            v99[5] = v62;
            v99[6] = v23;
            v99[7] = v24;
            v99[8] = 0;
            v99[9] = 0;
            v100 = 1;
            v101 = v64;
            v102 = v26;
            v103 = v28;
            sub_1AFB72AAC(v99, a2, v59, a2, a3, v59, v104);
            v31 = *(v9 + 48);
            v32 = *(v9 + 64);
            if (!v32)
            {
              v52 = *(v9 + 56);
              v53 = *(v9 + 32);
              v54 = v72;
              goto LABEL_44;
            }

            for (i = 0; i != v32; ++i)
            {
              v35 = (v31 + 48 * i);
              v36 = *v35;
              v37 = v35[4];
              v38 = *(v9 + 72);
              if (v38)
              {
                v39 = v36 == v38;
              }

              else
              {
                v39 = 0;
              }

              if (v39 || !v8[11])
              {
                goto LABEL_17;
              }

              v40 = v35[2];
              v41 = v8[9];
              if (v41 >= 0x10)
              {
                v42 = v8 + 41;
                v43 = &v76[v8[8]];
                v44 = v41 >> 4;
                while (*v43 != v36)
                {
                  ++v42;
                  v43 += 16;
                  if (!--v44)
                  {
                    goto LABEL_33;
                  }
                }

                v45 = v42[v8[10]];
                v46 = v45 > 5;
                v47 = (1 << v45) & 0x23;
                if (v46 || v47 == 0)
                {
LABEL_17:

                  v37(v34);

                  continue;
                }
              }

LABEL_33:
              if (swift_conformsToProtocol2() && v40)
              {
                if (sub_1AF5FC8D8(v40))
                {
                  goto LABEL_17;
                }

                v49 = v8[9];
                if (v49 < 0x10)
                {
                  goto LABEL_17;
                }

                v50 = &v76[v8[8]];
                v51 = 16 * (v49 >> 4);
                while (*v50 != v40)
                {
                  v50 += 16;
                  v51 -= 16;
                  if (!v51)
                  {
                    goto LABEL_17;
                  }
                }
              }
            }

            v52 = *(v9 + 56);
            v31 = *(v9 + 48);
            v53 = *(v9 + 32);
            v54 = v72;
            if (*(v9 + 64) >= 1)
            {
              swift_arrayDestroy();
            }

LABEL_44:
            ecs_stack_allocator_deallocate(v53, v31, 48 * v52);
            *(v9 + 48) = v68;
            *(v9 + 64) = v66;
            *(v9 + 80) = v65;
            sub_1AF62D29C(v70);
            ecs_stack_allocator_pop_snapshot(v74);
            v21 = v57;
            if (v57)
            {
              os_unfair_lock_unlock(*(v70 + 344));
              os_unfair_lock_unlock(*(v70 + 376));
            }

            v20 = v54 + 1;
          }

          while (v20 != v61);
        }
      }

      result = sub_1AF0D9DB0(&v77, &qword_1ED725EA0);
      ++*(v56 + 32);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AFB71E3C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AFB71E98()
{
  *(v0 + 16) = xmmword_1AFE9D9B0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED73B840;
  v7 = 0;
  v8 = 2;
  v9 = 0;
  v10 = 2;
  v11 = 0;
  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C6A0;
  *(inited + 32) = &type metadata for Position;
  *(inited + 40) = &off_1F252EDF0;
  *(inited + 48) = &type metadata for ParticleLegacyRenderer;
  *(inited + 56) = &off_1F2562D70;
  *(inited + 64) = &type metadata for ParticleAngle;
  *(inited + 72) = &off_1F252E068;
  *(inited + 80) = &type metadata for Color;
  *(inited + 88) = &off_1F252CA08;
  *(inited + 96) = &type metadata for Scale;
  *(inited + 104) = &off_1F252F868;
  sub_1AF5B4630(inited, v4);
  swift_setDeallocating();
  v2 = v4[1];
  *(v0 + 48) = v4[0];
  *(v0 + 64) = v2;
  *(v0 + 80) = v5;
  return v0;
}

uint64_t sub_1AFB71FFC()
{
  v0 = swift_allocObject();
  sub_1AFB71E98();
  return v0;
}

uint64_t sub_1AFB72084(uint64_t a1)
{
  v2 = sub_1AFB73718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB720C0(uint64_t a1)
{
  v2 = sub_1AFB73718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB7214C(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, void (*a7)(void))
{
  sub_1AFB7376C(0, a4, a5, a6, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v16 - v13;
  sub_1AF441150(a1, a1[3]);
  a7();
  sub_1AFDFF3F8();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1AFB72288(uint64_t a1)
{
  v2 = sub_1AFB737D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB722C4(uint64_t a1)
{
  v2 = sub_1AFB737D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFB72350()
{
  sub_1AFA1CFD4(0, &qword_1ED72F7D0, &qword_1ED72FFE0, &qword_1ED72FFF0);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1AFE431C0;
  *(v0 + 32) = &type metadata for ParticleAffectedByGlobalForce;
  *(v0 + 40) = &off_1F2562B50;
  return result;
}

uint64_t sub_1AFB723B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AFB727E8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AFB723E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4572657474696D65;
  }

  else
  {
    v3 = 0x746E65726170;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xED0000797469746ELL;
  }

  if (*a2)
  {
    v5 = 0x4572657474696D65;
  }

  else
  {
    v5 = 0x746E65726170;
  }

  if (*a2)
  {
    v6 = 0xED0000797469746ELL;
  }

  else
  {
    v6 = 0xE600000000000000;
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

uint64_t sub_1AFB72494()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB72520()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFB72598()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB72620@<X0>(char *a1@<X8>)
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

void sub_1AFB72680(uint64_t *a1@<X8>)
{
  v2 = 0x746E65726170;
  if (*v1)
  {
    v2 = 0x4572657474696D65;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xED0000797469746ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AFB726C8()
{
  if (*v0)
  {
    return 0x4572657474696D65;
  }

  else
  {
    return 0x746E65726170;
  }
}

uint64_t sub_1AFB7270C@<X0>(char *a1@<X8>)
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

uint64_t sub_1AFB72770(uint64_t a1)
{
  v2 = sub_1AFB736C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB727AC(uint64_t a1)
{
  v2 = sub_1AFB736C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB727E8(void *a1)
{
  sub_1AFB7376C(0, &qword_1EB642D30, sub_1AFB736C4, &type metadata for SubEntity.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v16 - v7;
  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  if (!sub_1AF694FF8(2000, v9, v10))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFB736C4();
    sub_1AFDFF3B8();
    if (!v1)
    {
      v11 = a1[3];
      v12 = a1[4];
      sub_1AF441150(a1, v11);
      LOBYTE(v17) = sub_1AF69504C(1036, v11, v12);
      sub_1AF47FEB4();
      sub_1AFDFE768();
      v15 = (*(v5 + 8))(v8, v4);
      v15.n128_u64[0] = v18[0];
      v16 = v15;
      goto LABEL_7;
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(v18, v18[3]);
  sub_1AF47FEB4();
  sub_1AFDFEE88();
  v14.n128_u64[0] = v17;
  v16 = v14;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
LABEL_7:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v16.n128_u64[0];
}

uint64_t sub_1AFB72AAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a1[2];
  result = sub_1AF6F3FF4(v11[3]);
  if (result)
  {
    v13 = result;
    v78 = a4;
    v14 = a1[7] - a1[6];
    CFXBufferAllocatorPerFrameAllocateWithLength(*(a2 + 232), 48 * v14);
    v16 = v15;
    v18 = v17;
    v19 = [swift_unknownObjectRetain() storageMode];
    swift_unknownObjectRelease();
    v83 = v18;
    if (v19 == 2)
    {
      v82 = 0;
    }

    else
    {
      v20 = [swift_unknownObjectRetain() contents];
      v21 = v16;
      v82 = &v20[v18];
    }

    v76 = a2;
    CFXBufferAllocatorPerFrameAllocateWithLength(*(a2 + 232), 16 * v14);
    v23 = v22;
    v25 = v24;
    v26 = [swift_unknownObjectRetain() storageMode];
    swift_unknownObjectRelease();
    if (v26 == 2)
    {
      v81 = 0;
      v69 = v25;
    }

    else
    {
      v27 = [swift_unknownObjectRetain() contents];
      v28 = v23;
      v69 = v25;
      v81 = &v27[v25];
    }

    ObjectType = swift_getObjectType();
    sub_1AFB19490(a3, v78);
    sub_1AF6F33A8(v16, v83, 0, 4, ObjectType);
    sub_1AF6F33A8(v23, v25, 0, 5, ObjectType);
    v31 = a1[11];
    v30 = a1[12];
    v32 = a1[13];
    v33 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v31, v30, v32, v11);
    v35 = v33;
    if (v33)
    {
      v36 = (v34 - v33) / 16;
    }

    else
    {
      v36 = 0;
    }

    v73 = sub_1AF64B110(&type metadata for ParticleLegacyRenderer, &off_1F2562DF0, v31, v30, v32, v11);
    v72 = sub_1AF64B110(&type metadata for ParticleAngle, &off_1F252E0E8, v31, v30, v32, v11);
    v80 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v31, v30, v32, v11);
    v79 = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, v31, v30, v32, v11);
    v37 = *(*(a6 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * v11[3] + 8);
    *&v124 = 0;
    v122 = 0u;
    v123 = 0u;
    memset(v118, 0, sizeof(v118));
    v119 = xmmword_1AFE22A20;
    v120 = xmmword_1AFE22A20;
    v121 = xmmword_1AFE22A20;
    v117 = 3;
    v116[0] = a6;
    v116[1] = v76;
    v116[3] = 1;
    v116[2] = v37;

    sub_1AF5FD5D8(&v122, v118);
    if (v36)
    {
      v38 = 0;
      v39 = 0;
      v68 = v83;
      v77 = v36 - 1;
      v40 = 0x1FB97D000uLL;
      v42 = v72;
      v41 = v73;
      v70 = v35;
      v71 = v36;
      while (1)
      {
        while (1)
        {
          v43 = v39 + 1;
          v44 = *(v35 + 16 * v39);
          v45 = v41 + 32 * v39;
          v46 = *v45;
          v47 = *(v79 + 16 * v39);
          LODWORD(v48) = HIDWORD(*(v79 + 16 * v39));
          if ((LODWORD(v48) & 0x7FFFFF) != 0)
          {
            LODWORD(v49) = *(v79 + 16 * v39);
          }

          else
          {
            LODWORD(v49) = HIDWORD(*(v79 + 16 * v39));
          }

          if ((~LODWORD(v48) & 0x7F800000) != 0)
          {
            LODWORD(v49) = HIDWORD(*(v79 + 16 * v39));
          }

          if (v48 >= *&v47)
          {
            v50 = v49;
          }

          else
          {
            LODWORD(v50) = *(v79 + 16 * v39);
          }

          if ((DWORD2(v47) & 0x7FFFFF) != 0)
          {
            v51 = v50;
          }

          else
          {
            LODWORD(v51) = *(v79 + 16 * v39 + 8);
          }

          if ((~DWORD2(v47) & 0x7F800000) != 0)
          {
            LODWORD(v51) = *(v79 + 16 * v39 + 8);
          }

          v52 = *(&v47 + 2) >= v50 ? v51 : v50;
          HIDWORD(v44) = *(v42 + 4 * v39);
          v53 = &v82[48 * v39];
          *v53 = v44;
          *(v53 + 1) = v46;
          *(v53 + 8) = v52;
          *(v42 + 4 * v39) = *(v42 + 4 * v39) + 0.01;
          *&v81[16 * v39] = *(v80 + 16 * v39);
          v54 = v38 + 1;
          v56 = *(v45 + 16);
          v55 = *(v45 + 20);
          if (v39 == v77)
          {
            break;
          }

          v57 = v41 + 32 * v43;
          v59 = *(v57 + 16);
          v58 = *(v57 + 20);
          if (v56 != v59 || v55 != v58)
          {
            break;
          }

          ++v38;
          v39 = v43;
          if (v43 == v36)
          {
            goto LABEL_44;
          }
        }

        sub_1AF3CA6C0(v56 | (v55 << 32), &v85);
        v100[12] = v97;
        v100[13] = v98;
        v100[14] = v99;
        v100[8] = v93;
        v100[9] = v94;
        v100[10] = v95;
        v100[11] = v96;
        v100[4] = v89;
        v100[5] = v90;
        v100[6] = v91;
        v100[7] = v92;
        v100[0] = v85;
        v100[1] = v86;
        v100[2] = v87;
        v100[3] = v88;
        v113 = v97;
        v114 = v98;
        v115 = v99;
        v109 = v93;
        v110 = v94;
        v111 = v95;
        v112 = v96;
        v105 = v89;
        v106 = v90;
        v107 = v91;
        v108 = v92;
        v101 = v85;
        v102 = v86;
        v103 = v87;
        v104 = v88;
        if (sub_1AF448314(&v101) == 1)
        {
          break;
        }

        v84 = v43;
        v134 = v113;
        v135 = v114;
        v136 = v115;
        v130 = v109;
        v131 = v110;
        v133 = v112;
        v132 = v111;
        v126 = v105;
        v127 = v106;
        v129 = v108;
        v128 = v107;
        v122 = v101;
        v123 = v102;
        v124 = v103;
        v125 = v104;
        sub_1AF88E748(&v122, a7, 0, 0, v116);
        v61 = v40;
        if (v38 <= 0xFFFFFFFFFFFF15A0)
        {
          v62 = 0;
          v63 = (v38 + 30000) / 30000;
          v64 = v68;
          v65 = v69;
          v66 = 30000;
          do
          {
            if (v66 >= v54)
            {
              v67 = v54;
            }

            else
            {
              v67 = v66;
            }

            [v13 (v61 + 2140)];
            [v13 (v61 + 2140)];
            sub_1AF6F5C0C(v67 + v62);
            v66 += 30000;
            v62 -= 30000;
            v65 += 480000;
            v64 += 1440000;
            --v63;
          }

          while (v63);
        }

        sub_1AF0D9DB0(v100, &qword_1ED7255C8);
        v36 = v71;
        v39 = v84;
        if (v84 == v71)
        {
          goto LABEL_44;
        }

        v38 = 0;
        v35 = v70;
        v42 = v72;
        v41 = v73;
        v40 = v61;
      }

      sub_1AF5FD668(v116);
      return swift_unknownObjectRelease();
    }

    else
    {
LABEL_44:
      swift_unknownObjectRelease();
      return sub_1AF5FD668(v116);
    }
  }

  return result;
}

uint64_t sub_1AFB73130(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 64);
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
  sub_1AF5C91BC(v39);
  v52[0] = v39[0];
  v52[1] = v39[1];
  v53 = v40;
  sub_1AF6B06C0(a1, v52, 0x200000000, &v41);
  if (!v41)
  {
    return sub_1AFB73534(v39);
  }

  if (v48 > 0)
  {
    v34 = v45;
    if (v45)
    {
      v3 = 0;
      v4 = 0;
      v33 = v44;
      v5 = v47;
      v36 = *(v47 + 32);
      v6 = *(v46 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v49 = v41;
      v50 = v42;
      v51 = v43;
      v32 = v6;
      do
      {
        v35 = v4;
        v7 = (v33 + 48 * v3);
        v9 = *v7;
        v8 = v7[1];
        v10 = *(v7 + 2);
        v11 = *(v7 + 3);
        v13 = *(v7 + 4);
        v12 = *(v7 + 5);
        if (v6)
        {
          v14 = *(v12 + 376);

          os_unfair_lock_lock(v14);
          os_unfair_lock_lock(*(v12 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v36);
        v15 = *(v5 + 64);
        v54[0] = *(v5 + 48);
        v54[1] = v15;
        v55 = *(v5 + 80);
        v16 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;
        *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v16, 8);
        *(v5 + 56) = v16;
        *(v5 + 72) = 0;
        *(v5 + 80) = 0;
        *(v5 + 64) = 0;
        v17 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v10, v11, v13, v5);
        v18 = sub_1AF64B110(&type metadata for ParticleCustomEmitter, &off_1F252D768, v10, v11, v13, v5);
        if (v10)
        {
          v4 = v35;
          v19 = v31;
          if (v13)
          {
            v20 = (v18 + 16);
            do
            {
              v21 = *(v20 - 2) + (*(v20 - 3) + (v2 * *(v20 - 4)));
              *(v20 - 2) = v21;
              v22 = v21;
              if (v21 >= 1)
              {
                v23 = *v17;
                HIDWORD(v23) = HIDWORD(v19);
                v38 = v23;
                (*v20)(v5, v22);
                *(v20 - 2) = *(v20 - 2) - v22;
                v19 = v38;
              }

              v20 += 8;
              ++v17;
              --v13;
            }

            while (v13);
            v31 = v19;
          }
        }

        else
        {
          if (v9 != v8)
          {
            v24 = v8 - v9;
            v25 = &v17[v9];
            v26 = (v18 + 32 * v9 + 16);
            do
            {
              v27 = *(v26 - 2) + (*(v26 - 3) + (v2 * *(v26 - 4)));
              *(v26 - 2) = v27;
              v28 = v27;
              if (v27 >= 1)
              {
                v29 = *v25;
                v29.n128_u32[3] = v37;
                (*v26)(v5, v27, v29);
                *(v26 - 2) = *(v26 - 2) - v28;
              }

              ++v25;
              v26 += 8;
              --v24;
            }

            while (v24);
          }

          v4 = v35;
        }

        sub_1AF630994(v5, &v49, v54);
        sub_1AF62D29C(v12);
        ecs_stack_allocator_pop_snapshot(v36);
        v6 = v32;
        if (v32)
        {
          os_unfair_lock_unlock(*(v12 + 344));
          os_unfair_lock_unlock(*(v12 + 376));
        }

        ++v3;
      }

      while (v3 != v34);
    }
  }

  sub_1AFB73534(v39);
  return sub_1AF0D9DB0(&v41, &qword_1ED725EA0);
}

uint64_t sub_1AFB73534(uint64_t a1)
{
  sub_1AFB73590();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AFB73590()
{
  if (!qword_1EB642D18)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB642D18);
    }
  }
}

__n128 initializeWithCopy for ParticleLegacyRenderer(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_1AFB73670()
{
  result = qword_1EB642D28;
  if (!qword_1EB642D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642D28);
  }

  return result;
}

unint64_t sub_1AFB736C4()
{
  result = qword_1EB642D38;
  if (!qword_1EB642D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642D38);
  }

  return result;
}

unint64_t sub_1AFB73718()
{
  result = qword_1EB642D48;
  if (!qword_1EB642D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642D48);
  }

  return result;
}

void sub_1AFB7376C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AFB737D4()
{
  result = qword_1EB642D58;
  if (!qword_1EB642D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642D58);
  }

  return result;
}

unint64_t sub_1AFB7386C()
{
  result = qword_1EB642D60;
  if (!qword_1EB642D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642D60);
  }

  return result;
}

unint64_t sub_1AFB738C4()
{
  result = qword_1EB642D68;
  if (!qword_1EB642D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642D68);
  }

  return result;
}

unint64_t sub_1AFB7391C()
{
  result = qword_1EB642D70;
  if (!qword_1EB642D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642D70);
  }

  return result;
}

unint64_t sub_1AFB73974()
{
  result = qword_1EB642D78;
  if (!qword_1EB642D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642D78);
  }

  return result;
}

unint64_t sub_1AFB739CC()
{
  result = qword_1EB642D80;
  if (!qword_1EB642D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642D80);
  }

  return result;
}

unint64_t sub_1AFB73A24()
{
  result = qword_1EB642D88;
  if (!qword_1EB642D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642D88);
  }

  return result;
}

unint64_t sub_1AFB73A7C()
{
  result = qword_1EB642D90;
  if (!qword_1EB642D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642D90);
  }

  return result;
}

unint64_t sub_1AFB73AD4()
{
  result = qword_1EB642D98;
  if (!qword_1EB642D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642D98);
  }

  return result;
}

unint64_t sub_1AFB73B2C()
{
  result = qword_1EB642DA0;
  if (!qword_1EB642DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642DA0);
  }

  return result;
}

uint64_t sub_1AFB73B80()
{
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB73C20()
{
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

BOOL sub_1AFB73D64(unsigned __int8 a1)
{
  v2 = 1 << a1;
  if ((a1 & 0xC0) != 0)
  {
    v2 = 0;
  }

  v3 = 1uLL >> -a1;
  if (a1 <= 0xC0u)
  {
    v3 = 0;
  }

  if ((a1 & 0x80) == 0)
  {
    v3 = v2;
  }

  if ((a1 - 65) <= 0x7Eu)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = *v1 & v4;
  if (v5 != v4)
  {
    *v1 |= v4;
  }

  return v5 != v4;
}

uint64_t sub_1AFB73DCC(uint64_t a1)
{
  if (*(v1 + 80) < 1)
  {
    return 0;
  }

  v25 = *(v1 + 56);
  if (!v25)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = *(v1 + 72);
  v29 = *(v6 + 32);
  v7 = *(*(v1 + 64) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v8 = *(v1 + 16);
  v30[0] = *v1;
  v30[1] = v8;
  v23 = *(v1 + 40);
  v31 = *(v1 + 32);
  v24 = v7;
  do
  {
    v28 = v5;
    v9 = (v23 + 48 * v4);
    v10 = *v9;
    v11 = v9[2];
    v12 = *(v9 + 2);
    v13 = *(v9 + 3);
    v14 = *(v9 + 5);
    v26 = v9[1];
    v27 = *(v9 + 4);
    if (v7)
    {
      v15 = *(v14 + 376);

      os_unfair_lock_lock(v15);
      os_unfair_lock_lock(*(v14 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v29);
    v16 = *(v6 + 64);
    v32[0] = *(v6 + 48);
    v32[1] = v16;
    v33 = *(v6 + 80);
    v17 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
    *(v6 + 48) = ecs_stack_allocator_allocate(*(v6 + 32), 48 * v17, 8);
    *(v6 + 56) = v17;
    *(v6 + 72) = 0;
    *(v6 + 80) = 0;
    *(v6 + 64) = 0;
    v18 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v12, v13, v27, v6);
    if (v19)
    {
      v5 = v28;
      v7 = v24;
    }

    else
    {
      v7 = v24;
      if (v10 == v26)
      {
        v5 = v28;
      }

      else
      {
        v20 = (v18 + 16 * v10 + 12);
        v21 = v26 - v10;
        v5 = v28;
        do
        {
          if (*v20 > 0.00000011921)
          {
            *(a1 + 4 * v3++) = v11;
          }

          v20 += 4;
          ++v11;
          --v21;
        }

        while (v21);
      }
    }

    sub_1AF630994(v6, v30, v32);
    sub_1AF62D29C(v14);
    ecs_stack_allocator_pop_snapshot(v29);
    if (v7)
    {
      os_unfair_lock_unlock(*(v14 + 344));
      os_unfair_lock_unlock(*(v14 + 376));
    }

    ++v4;
  }

  while (v4 != v25);
  return v3;
}

void sub_1AFB73FFC(uint64_t a1, float a2, uint64_t a3, float32x4_t *a4, unsigned int *a5, uint64_t a6, char a7)
{
  v8 = v7;
  v38 = 0;
  if (a7)
  {
    v35 = v7[10];
    if (v35 >= 1)
    {
      v12 = v7[7];
      if (v12)
      {
        v13 = v7[8];
        v14 = v7[9];
        v15 = *(v14 + 32);
        v31 = v13;
        v16 = *(v13 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v17 = (*(v8 + 40) + 24);
        v34 = v8;
        v30 = v16;
        do
        {
          v18 = *(v17 - 6);
          v19 = *(v17 - 5);
          v20 = *(v17 - 4);
          v21 = *v17;
          v22 = v17[2];
          v36 = v17[1];
          v37 = *(v17 - 1);
          if (v16)
          {
            v23 = *(v22 + 376);

            os_unfair_lock_lock(v23);
            os_unfair_lock_lock(*(v22 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v15);
          v24 = *(v14 + 64);
          v42[0] = *(v14 + 48);
          v42[1] = v24;
          v43 = *(v14 + 80);
          v25 = *(*(*(*(v22 + 40) + 16) + 32) + 16) + 1;
          *(v14 + 48) = ecs_stack_allocator_allocate(*(v14 + 32), 48 * v25, 8);
          *(v14 + 56) = v25;
          *(v14 + 72) = 0;
          *(v14 + 80) = 0;
          *(v14 + 64) = 0;
          LOBYTE(v41) = 1;
          v44[0] = v31;
          v44[1] = v22;
          v44[2] = v14;
          v44[3] = v20;
          v44[4] = (v19 - v18 + v20);
          v44[5] = v35;
          v44[6] = v18;
          v44[7] = v19;
          v44[8] = 0;
          v44[9] = 0;
          v45 = 1;
          v46 = v37;
          v47 = v21;
          v48 = v36;
          v26.n128_f32[0] = a2;
          sub_1AFB78760(v44, a4, a1, &v38, v26);
          v27 = *(v34 + 16);
          v39[0] = *v34;
          v39[1] = v27;
          v40 = *(v34 + 32);
          sub_1AF630994(v14, v39, v42);
          sub_1AF62D29C(v22);
          ecs_stack_allocator_pop_snapshot(v15);
          v16 = v30;
          if (v30)
          {
            os_unfair_lock_unlock(*(v22 + 344));
            os_unfair_lock_unlock(*(v22 + 376));
          }

          v17 += 6;
          --v12;
        }

        while (v12);
      }
    }
  }

  else
  {
    sub_1AF5DD298(v8, v44);
    sub_1AF6BD1F0(v8, v8, a5, a6, a4, a1, &v38, a2);
    sub_1AF63B864(v8);
  }
}

uint64_t sub_1AFB74298(uint64_t result, float *a2, float32x4_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, char a7)
{
  v120 = result;
  v9 = 1.0;
  if ((result - 2) <= 4u)
  {
    v9 = flt_1AFE9E438[(result - 2)];
  }

  a3.i32[3] = 0;
  if (a7)
  {
    v111 = a3;
    v112 = v9;
    v119 = *(v121 + 80);
    if (v119 >= 1)
    {
      v118 = *(v121 + 56);
      if (v118)
      {
        v10 = 0;
        v11 = 0;
        v12 = *(v121 + 72);
        v117 = *(v121 + 64);
        v13 = *(v117 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v124 = *(v12 + 32);
        v115 = *(v121 + 40);
        v110 = a2 + 4;
        __asm { FMOV            V0.4S, #1.0 }

        v109 = _Q0;
        v116 = v13;
        do
        {
          v122 = v10;
          v123 = v11;
          v19 = (v115 + 48 * v10);
          v21 = *v19;
          v20 = v19[1];
          v22 = v19[2];
          v24 = *(v19 + 2);
          v23 = *(v19 + 3);
          v26 = *(v19 + 4);
          v25 = *(v19 + 5);
          if (v13)
          {
            v27 = *(v25 + 376);

            os_unfair_lock_lock(v27);
            os_unfair_lock_lock(*(v25 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v124);
          v28 = *(v12 + 64);
          v127[0] = *(v12 + 48);
          v127[1] = v28;
          v128 = *(v12 + 80);
          v29 = *(*(*(*(v25 + 40) + 16) + 32) + 16) + 1;
          *(v12 + 48) = ecs_stack_allocator_allocate(*(v12 + 32), 48 * v29, 8);
          *(v12 + 56) = v29;
          *(v12 + 72) = 0;
          *(v12 + 80) = 0;
          *(v12 + 64) = 0;
          v129[0] = v117;
          v129[1] = v25;
          v129[2] = v12;
          v129[3] = v22;
          v129[4] = (v20 - v21 + v22);
          v129[5] = v119;
          v129[6] = v21;
          v129[7] = v20;
          v129[8] = 0;
          v129[9] = 0;
          v130 = 1;
          v131 = v24;
          v132 = v23;
          v133 = v26;
          if (v120 > 6u)
          {
            goto LABEL_79;
          }

          v30 = v20;
          v31 = 1 << v120;
          if (((1 << v120) & 6) != 0)
          {
            v38 = sub_1AF64B110(&type metadata for ParticleAge, &off_1F252CBE8, v24, v23, v26, v12);
            if (v41 & 1) != 0 || (v42 = v38, v43 = sub_1AF64B110(&type metadata for ParticleLifetime, &off_1F252CB38, v24, v23, v26, v12), (v44))
            {
              if (v21 == v30)
              {
                goto LABEL_31;
              }

              v45 = v30 - v21;
              v46 = a2;
              v47 = v22 - v21;
              if ((v30 - v21) >= 8)
              {
                v48 = (v45 & 0xFFFFFFFFFFFFFFF8) + v21;
                v63 = &v110[v22];
                v64 = v21;
                v65 = v45 & 0xFFFFFFFFFFFFFFF8;
                v66 = v22;
                do
                {
                  v40.i64[0] = v64;
                  v39.i64[0] = v22 - v21;
                  v67 = vdupq_lane_s64(vaddq_s64(v39, v40).i64[0], 0);
                  v68 = vaddq_s64(v67, xmmword_1AFE21100);
                  v69.i64[0] = v66;
                  v69.i64[1] = v66 + 1;
                  v40 = vmulq_n_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(vaddq_s64(v67, xmmword_1AFE22910))), vcvtq_f64_s64(vaddq_s64(v67, xmmword_1AFE22900))), v112);
                  v63[-1] = vmulq_n_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(v69)), vcvtq_f64_s64(v68)), v112);
                  *v63 = v40;
                  v63 += 2;
                  v66 += 8;
                  v64 += 8;
                  v65 -= 8;
                }

                while (v65);
                if (v45 == (v45 & 0xFFFFFFFFFFFFFFF8))
                {
                  goto LABEL_54;
                }
              }

              else
              {
                v48 = v21;
              }

              v70 = v48 + v22 - v21;
              v71 = v30 - v48;
              do
              {
                a2[v70] = v112 * v70;
                ++v70;
                --v71;
              }

              while (v71);
            }

            else
            {
              if (v21 == v30)
              {
LABEL_31:
                v46 = a2;
                v47 = v22 - v21;
                goto LABEL_54;
              }

              v72 = v30 - v21;
              v46 = a2;
              v47 = v22 - v21;
              if ((v30 - v21) <= 7 || (v92 = &a2[v22], v93 = 4 * v21, v92 - v42 + -4 * v21 < 0x20) || v92 - v43 - v93 < 0x20)
              {
                v73 = v21;
              }

              else
              {
                v73 = (v72 & 0xFFFFFFFFFFFFFFF8) + v21;
                v94 = &v110[v22];
                v95 = (v42 + v93 + 16);
                v96 = (v43 + v93 + 16);
                v97 = v72 & 0xFFFFFFFFFFFFFFF8;
                do
                {
                  v98 = vmulq_f32(vmulq_n_f32(*v95, v112), vdivq_f32(v109, *v96));
                  v94[-1] = vmulq_f32(vmulq_n_f32(v95[-1], v112), vdivq_f32(v109, v96[-1]));
                  *v94 = v98;
                  v94 += 2;
                  v95 += 2;
                  v96 += 2;
                  v97 -= 8;
                }

                while (v97);
                if (v72 == (v72 & 0xFFFFFFFFFFFFFFF8))
                {
                  goto LABEL_54;
                }
              }

              v74 = 4 * v73;
              v75 = (a2 + 4 * v73 + 4 * v22 - 4 * v21);
              v76 = v30 - v73;
              v77 = (v43 + v74);
              v78 = (v42 + v74);
              do
              {
                v79 = *v78++;
                v80 = v79;
                v81 = *v77++;
                *v75++ = (v112 * v80) * (1.0 / v81);
                --v76;
              }

              while (v76);
            }
          }

          else
          {
            if ((v31 & 0x18) != 0)
            {
              v32 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v24, v23, v26, v12);
              if (v21 != v20)
              {
                v33 = &a2[v22];
                v34 = v20 - v21;
                v35 = (v32 + 16 * v21);
                do
                {
                  v36 = *v35++;
                  v37 = vmulq_f32(v111, v36);
                  *v33++ = v112 * vaddv_f32(vadd_f32(*v37.i8, *&vextq_s8(v37, v37, 8uLL)));
                  --v34;
                }

                while (v34);
              }

              goto LABEL_55;
            }

            if ((v31 & 0x60) == 0)
            {
              goto LABEL_79;
            }

            v49 = sub_1AF64B110(&type metadata for ParticleID, &off_1F252DFA8, v24, v23, v26, v12);
            if (v52)
            {
              v46 = a2;
              if (v21 == v20)
              {
                goto LABEL_29;
              }

              v53 = v20 - v21;
              v47 = v22 - v21;
              if ((v20 - v21) > 7)
              {
                v54 = (v53 & 0xFFFFFFFFFFFFFFF8) + v21;
                v82 = &v110[v22];
                v83 = v21;
                v84 = v53 & 0xFFFFFFFFFFFFFFF8;
                v85 = v22;
                do
                {
                  v51.i64[0] = v83;
                  v50.i64[0] = v22 - v21;
                  v86 = vdupq_lane_s64(vaddq_s64(v50, v51).i64[0], 0);
                  v87 = vaddq_s64(v86, xmmword_1AFE21100);
                  v88.i64[0] = v85;
                  v88.i64[1] = v85 + 1;
                  v51 = vmulq_n_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(vaddq_s64(v86, xmmword_1AFE22910))), vcvtq_f64_s64(vaddq_s64(v86, xmmword_1AFE22900))), v112);
                  v82[-1] = vmulq_n_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(v88)), vcvtq_f64_s64(v87)), v112);
                  *v82 = v51;
                  v82 += 2;
                  v85 += 8;
                  v83 += 8;
                  v84 -= 8;
                }

                while (v84);
                if (v53 == (v53 & 0xFFFFFFFFFFFFFFF8))
                {
                  goto LABEL_54;
                }
              }

              else
              {
                v54 = v21;
              }

              v89 = v54 + v22 - v21;
              v90 = v20 - v54;
              do
              {
                a2[v89] = v112 * v89;
                ++v89;
                --v90;
              }

              while (v90);
            }

            else
            {
              v46 = a2;
              if (v21 == v20)
              {
LABEL_29:
                v47 = v22 - v21;
                goto LABEL_54;
              }

              v55 = v20 - v21;
              v47 = v22 - v21;
              if ((v20 - v21) >= 8 && (v56 = (v49 + 4 * v21), (&a2[v22] - v56) >= 0x20))
              {
                v57 = (v55 & 0xFFFFFFFFFFFFFFF8) + v21;
                v99 = v56 + 1;
                v100 = &v110[v22];
                v101 = v55 & 0xFFFFFFFFFFFFFFF8;
                do
                {
                  v102 = vmulq_n_f32(vcvtq_f32_u32(*v99), v112);
                  v100[-1] = vmulq_n_f32(vcvtq_f32_u32(v99[-1]), v112);
                  *v100 = v102;
                  v99 += 2;
                  v100 += 2;
                  v101 -= 8;
                }

                while (v101);
                if (v55 == (v55 & 0xFFFFFFFFFFFFFFF8))
                {
                  goto LABEL_54;
                }
              }

              else
              {
                v57 = v21;
              }

              v58 = 4 * v57;
              v59 = (a2 + 4 * v57 + 4 * v22 - 4 * v21);
              v60 = v20 - v57;
              v61 = (v49 + v58);
              do
              {
                v62 = *v61++;
                *v59++ = v112 * v62;
                --v60;
              }

              while (v60);
            }
          }

LABEL_54:
          sub_1AFB78D38(v129, v46, v47);
LABEL_55:
          v91 = *(v121 + 16);
          v125[0] = *v121;
          v125[1] = v91;
          v126 = *(v121 + 32);
          v11 = v123;
          sub_1AF630994(v12, v125, v127);
          sub_1AF62D29C(v25);
          ecs_stack_allocator_pop_snapshot(v124);
          v13 = v116;
          if (v116)
          {
            os_unfair_lock_unlock(*(v25 + 344));
            os_unfair_lock_unlock(*(v25 + 376));
          }

          v10 = v122 + 1;
        }

        while (v122 + 1 != v118);
      }
    }
  }

  else
  {
    if (result > 6u)
    {
      goto LABEL_83;
    }

    if (((1 << result) & 6) != 0)
    {
      v103 = v121;
      v113 = v9;
      sub_1AF5DD298(v121, v129);
      sub_1AF6BFAE0(v103, v103, a5, a6, a2, v113);
      sub_1AF63B864(v121);
      return sub_1AF6C0508(v103, a5, a6, a2, *(v103 + 80));
    }

    if (((1 << result) & 0x18) != 0)
    {

      return sub_1AF6BD724(v121, a5, a6, a2, v9, a3);
    }

    if (((1 << result) & 0x60) == 0)
    {
LABEL_83:
      while (1)
      {
LABEL_79:
        sub_1AFDFE518();
        __break(1u);
      }
    }

    sub_1AF6BFFEC(v121, a5, a6, a2, v9);
    v108 = *(v121 + 80);

    return sub_1AF6C0508(v121, a5, a6, a2, v108);
  }

  return result;
}

void *sub_1AFB74B88(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 80);
  v63 = 8 * v8;
  CFXBufferAllocatorPerFrameAllocateWithLength(*(a3 + 232), 8 * v8);
  v10 = v9;
  v12 = v11;
  v13 = [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v14 = 0;
  if (v13 != 2)
  {
    v15 = [swift_unknownObjectRetain() contents];
    v16 = v10;
    v14 = &v15[v12];
  }

  ecs_stack_allocator_push_snapshot(a4);
  v68 = ecs_stack_allocator_allocate(a4, 4 * v8, 8);
  v17 = [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v67 = a4;
  v65 = v10;
  v64 = v14;
  if (v17 == 2)
  {
    v18 = 0;
  }

  else
  {
    v19 = [swift_unknownObjectRetain() contents];
    v20 = a1;
    v18 = &v19[a2];
  }

  v66 = v8;
  v62 = v8 - 1;
  if (v8 >= 1)
  {
    v71 = *(v4 + 56);
    if (v71)
    {
      v21 = 0;
      v22 = *(v4 + 72);
      v74 = *(v22 + 32);
      v23 = *(*(v4 + 64) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v24 = *(v4 + 16);
      v75[0] = *v4;
      v75[1] = v24;
      v69 = *(v4 + 40);
      v76 = *(v4 + 32);
      v70 = v23;
      while (1)
      {
        v25 = (v69 + 48 * v21);
        v26 = v25[1];
        v72 = v25[2];
        v73 = *v25;
        v27 = *(v25 + 2);
        v28 = *(v25 + 3);
        v30 = *(v25 + 4);
        v29 = *(v25 + 5);
        if (v23)
        {
          v31 = *(v29 + 376);

          os_unfair_lock_lock(v31);
          os_unfair_lock_lock(*(v29 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v74);
        v32 = *(v22 + 64);
        v77[0] = *(v22 + 48);
        v77[1] = v32;
        v78 = *(v22 + 80);
        v33 = *(*(*(*(v29 + 40) + 16) + 32) + 16) + 1;
        *(v22 + 48) = ecs_stack_allocator_allocate(*(v22 + 32), 48 * v33, 8);
        *(v22 + 56) = v33;
        *(v22 + 72) = 0;
        *(v22 + 80) = 0;
        *(v22 + 64) = 0;
        v34 = sub_1AF64B110(&type metadata for ParticleParentID, &off_1F252D8C8, v27, v28, v30, v22);
        if (v35)
        {
          v23 = v70;
          if (v73 != v26)
          {
            bzero(v68 + 4 * v72, 4 * (v26 - v73));
          }

          goto LABEL_26;
        }

        v23 = v70;
        if (v73 != v26)
        {
          v36 = v26 - v73;
          if ((v26 - v73) > 7)
          {
            v38 = v72;
            v39 = v34 + 4 * v73;
            if (v68 + 4 * v72 - v39 >= 0x20)
            {
              v37 = (v36 & 0xFFFFFFFFFFFFFFF8) + v73;
              v40 = (v39 + 16);
              v41 = (v68 + 4 * v72 + 16);
              v42 = v36 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v43 = *v40;
                *(v41 - 1) = *(v40 - 1);
                *v41 = v43;
                v40 += 2;
                v41 += 2;
                v42 -= 8;
              }

              while (v42);
              if (v36 == (v36 & 0xFFFFFFFFFFFFFFF8))
              {
                goto LABEL_26;
              }
            }

            else
            {
              v37 = v73;
            }
          }

          else
          {
            v37 = v73;
            v38 = v72;
          }

          v44 = 4 * v37;
          v45 = (v68 + 4 * v37 + 4 * v38 - 4 * v73);
          v46 = v26 - v37;
          v47 = (v34 + v44);
          do
          {
            v48 = *v47++;
            *v45++ = v48;
            --v46;
          }

          while (v46);
        }

LABEL_26:
        sub_1AF630994(v22, v75, v77);
        sub_1AF62D29C(v29);
        ecs_stack_allocator_pop_snapshot(v74);
        if (v23)
        {
          os_unfair_lock_unlock(*(v29 + 344));
          os_unfair_lock_unlock(*(v29 + 376));
        }

        if (++v21 == v71)
        {
          goto LABEL_28;
        }
      }
    }

    v49 = v14;
    bzero(v14, v63);
    v51 = v8;
    v50 = v67;
    v52 = v10;
    v53 = v68;
    v54 = v8 - 1;
    goto LABEL_31;
  }

LABEL_28:
  v49 = v64;
  bzero(v64, v63);
  v51 = v66;
  v50 = v67;
  v52 = v65;
  v53 = v68;
  v54 = v62;
  if (v66)
  {
LABEL_31:
    v56 = 0;
    do
    {
      v59 = *v18;
      v60 = *(v53 + v59);
      if (v56 < 1)
      {
        LODWORD(v61) = -1;
        if (v56 < v54)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v61 = *(v18 - 1);
        if (*(v53 + v61) != v60)
        {
          LODWORD(v61) = -1;
        }

        if (v56 < v54)
        {
LABEL_32:
          if (*(v53 + *(v18 + 1)) == v60)
          {
            v57 = *(v18 + 1);
          }

          else
          {
            v57 = -1;
          }

          goto LABEL_35;
        }
      }

      v57 = -1;
LABEL_35:
      ++v56;
      v58 = &v49[8 * v59];
      *v58 = v61;
      *(v58 + 1) = v57;
      v18 += 4;
    }

    while (v51 != v56);
  }

  ecs_stack_allocator_pop_snapshot(v50);
  return v52;
}

uint64_t sub_1AFB74FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 728);
  v6 = ceilf(log2f(a3)) + -9.0;
  if (v6 + 1 > 1)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(a1 + 232);
  swift_unknownObjectRetain();
  CFXBufferAllocatorPerFrameAllocateWithLength(v8, 12 * v7);
  v10 = v9;
  v12 = v11;
  v18 = v7;
  v19 = 512;
  sub_1AF7180FC();

  v13 = sub_1AF6F4158();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1AFDFCEC8();
  [v13 pushDebugGroup_];

  sub_1AF6F3BD8();
  swift_unknownObjectRelease();
  sub_1AF6F458C(v10, v12, 0, 1);
  [v13 setBytes:&v19 length:4 atIndex:2];
  [v13 setBytes:&v18 length:4 atIndex:3];
  sub_1AF442324(a2, v20);
  v15 = v21;
  v16 = v22;
  sub_1AF58D38C(v20);
  sub_1AF6F458C(v15, v16, 0, 4);
  sub_1AF6F466C(v5);
  [v13 popDebugGroup];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_1AFB7520C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a7)
  {
    goto LABEL_12;
  }

  v11 = sub_1AFB2EB3C(a6, a7);
  if (v12)
  {
    goto LABEL_12;
  }

  v13 = v11;
  sub_1AFB7CC3C(a6);
  v15 = v14;
  CFXBufferAllocatorPerFrameAllocateWithLength(*(a7 + 232), 4 * *(a2 + 528));
  v17 = v16;
  v43 = v18;
  sub_1AFB2F7B0(v13, v45);
  v19 = *(a1 + 56);
  v20 = *(a1 + 57);
  v46[0] = v45[0];
  v46[1] = v45[1];
  v46[2] = v45[2];
  v46[3] = v45[3];
  v46[4] = v45[4];
  v46[5] = v45[5];
  v47 = v15;
  v48 = v19;
  v49 = v20;
  CFXBufferAllocatorPerFrameAllocateWithLength(*(a7 + 232), 4);
  v22 = v21;
  v24 = v23;
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v25 = [swift_unknownObjectRetain() contents];
  v26 = v22;
  *&v25[v24] = 0;
  sub_1AF7180FC();

  v27 = sub_1AF6F4158();
  v39 = v24;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v29 = sub_1AFDFCEC8();
  [v27 pushDebugGroup_];

  sub_1AF6F3BD8();
  v30 = *(a2 + 784);
  if (!v30)
  {
    goto LABEL_12;
  }

  v31 = *(a2 + 424);
  v42 = *(a2 + 432);
  if (v31)
  {
    v38 = v17;
    v32 = *(a2 + 440);
    if (*(a2 + 336))
    {
      v33 = *(a2 + 512);
    }

    else
    {
      LODWORD(v33) = 0;
    }

    v34 = *(a2 + 344);
    v35 = (*(a2 + 352) + *(a2 + 368) * v33) | (*(a2 + 368) << 32);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1AF6F34C4(v34, v35, 0, 4, ObjectType);
    sub_1AF6F353C(v31, v42, v32, 0);
    swift_unknownObjectRelease();
    v17 = v38;
  }

  else
  {
    swift_unknownObjectRetain();
  }

  [v27 setBytes:v46 length:112 atIndex:1];
  sub_1AF6F458C(v17, v43, 0, 2);
  sub_1AF6F458C(v22, v39, 0, 3);
  [v27 setComputePipelineState_];
  sub_1AFB78748(v44);
  sub_1AF6F4960(a3, a4, 0, v44[0], v44[1], v44[2]);
  v36 = *(a2 + 792);
  if (v36)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_1AF6F458C(v31, v42 + 28, 0, 0);
    sub_1AF6F458C(v22, v39, 0, 1);
    sub_1AF6F466C(v36);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    [v27 popDebugGroup];

    swift_unknownObjectRelease();
    return v17;
  }

  else
  {
LABEL_12:
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFB756C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, char a8, uint64_t a9, unsigned int a10)
{
  v59 = *MEMORY[0x1E69E9840];
  v13 = *(a3 + 528);
  CFXBufferAllocatorPerFrameAllocateWithLength(*(a1 + 232), 4 * v13);
  v37 = v15;
  v38 = v14;
  CFXBufferAllocatorPerFrameAllocateWithLength(*(a1 + 232), 4 * v13);
  v43 = v17;
  v44 = v16;
  CFXBufferAllocatorPerFrameAllocateWithLength(*(a1 + 232), 4 * v13);
  v49 = v19;
  v50 = v18;
  v39 = a8;
  if (a8)
  {
    v20 = 8 * v13;
  }

  else
  {
    v20 = 4 * v13;
  }

  CFXBufferAllocatorPerFrameAllocateWithLength(*(a1 + 232), v20);
  v45 = v22;
  v46 = v21;
  v23 = *(a3 + 432);
  if (a9)
  {
    v23 += 28;
  }

  v51 = v23;
  v52 = *(a3 + 424);
  v58 = 0;
  sub_1AF7180FC();

  v24 = sub_1AF6F4158();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v25 = sub_1AFDFCEC8();
  [v24 pushDebugGroup_];

  sub_1AF6F3BD8();
  swift_unknownObjectRelease();
  v26 = 736;
  if (a8)
  {
    v26 = 744;
  }

  v27 = *(a3 + v26);
  if (v27)
  {
    swift_unknownObjectRetain();
    sub_1AF6F458C(a4, a5, 0, 1);
    sub_1AF6F458C(v50, v49, 0, 2);
    sub_1AF6F458C(v46, v45, 0, 3);
    sub_1AF6F458C(v52, v51, 0, 4);
    if (v39)
    {
      v28 = 4096;
    }

    else
    {
      v28 = 2048;
    }

    [v24 setThreadgroupMemoryLength:2048 atIndex:0];
    [v24 setThreadgroupMemoryLength:v28 atIndex:1];
    [v24 setComputePipelineState_];
    sub_1AFB78748(&v55);
    sub_1AF6F4960(a6, a7, 0, v55, v56, v57);
    swift_unknownObjectRelease();
  }

  [v24 popDebugGroup];

  swift_unknownObjectRelease();
  sub_1AFB78748(&v55);
  v41 = v56;
  v42 = v55;
  v40 = v57;
  sub_1AF7180FC();

  v29 = sub_1AF6F4158();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v30 = sub_1AFDFCEC8();
  [v29 pushDebugGroup_];

  sub_1AF6F3BD8();
  swift_unknownObjectRelease();
  v31 = 752;
  if (v39)
  {
    v31 = 760;
  }

  v32 = *(a3 + v31);
  v33 = v38;
  if (v32)
  {
    swift_unknownObjectRetain();
    v34 = 776;
    if (!a9)
    {
      v34 = 768;
    }

    v33 = v38;
    v35 = *(a3 + v34);
    if (v35)
    {
      swift_unknownObjectRetain();
      sub_1AF6F458C(v44, v43, 0, 1);
      sub_1AF6F458C(v50, v49, 0, 2);
      sub_1AF6F458C(v38, v37, 0, 3);
      sub_1AF6F458C(v52, v51, 0, 4);
      sub_1AF6F458C(a9, a10, 0, 5);
      [v29 setComputePipelineState_];
      sub_1AF6F4960(a6, a7, 0, v42, v41, v40);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  [v29 popDebugGroup];

  swift_unknownObjectRelease();
  return v33;
}

uint64_t sub_1AFB75C78(uint64_t result, uint64_t a2, char a3)
{
  if (a2)
  {
    v4 = v3;
    v7 = result;
    v8 = *(result + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);
    v9 = *(result + 184);

    os_unfair_recursive_lock_lock_with_options();
    v10 = sub_1AF6D2A6C(&type metadata for FrameConstantsStorage);
    if (v11 == 2 || (v11 & 1) == 0)
    {
      os_unfair_recursive_lock_unlock();
      v51 = xmmword_1AFE20180;
    }

    else
    {
      v13 = (*(v9 + 16) + v10);
      v14 = 32 * v12;
      os_unfair_lock_lock(*(*(v9 + 32) + 32 * v12 + 24));
      os_unfair_recursive_lock_unlock();
      v15 = vzip2q_s32(v13[3], v13[4]);
      v15.i32[2] = v13[5].i32[2];
      v51 = v15;
      os_unfair_lock_unlock(*(*(v9 + 32) + v14 + 24));
    }

    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    v17 = *(v4 + 32);
    v71[0] = *(v4 + 16);
    v71[1] = v17;
    v72 = *(v4 + 48);
    sub_1AF6B06C0(v7, v71, 0x200000000, v53);
    v46 = *&v53[0];
    if (*&v53[0])
    {
      v20 = *(&v53[2] + 1);
      v21 = *(&v54 + 1);
      v42 = *(&v55 + 1);
      v45 = v55;
      v58 = *(v53 + 8);
      v59 = *(&v53[1] + 8);
      MEMORY[0x1EEE9AC00](v18, v19);
      v43 = v34;
      v44 = v22;
      v34[2] = v7;
      v34[3] = v16;
      v35 = v51;
      v36 = a2;
      v37 = v8;
      v38 = v7;
      v39 = a2;
      v40 = a3;
      if (v22 > 0 && v21)
      {
        v41[0] = v41;
        v41[1] = v16;
        v41[2] = a2;
        v23 = v42;
        v24 = v42[4];
        LODWORD(v51) = *(v45 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v52[2] = v53[2];
        v52[3] = v54;
        v52[4] = v55;
        v52[5] = v56;
        v52[0] = v53[0];
        v52[1] = v53[1];
        sub_1AF5DD298(v52, v66);
        for (i = (v20 + 24); ; i += 6)
        {
          v50 = 0;
          v27 = *(i - 6);
          v26 = *(i - 5);
          v28 = *(i - 4);
          v29 = *(i - 1);
          v48 = *i;
          v49 = v29;
          v30 = i[2];
          v47 = i[1];
          if (v51)
          {
            v31 = *(v30 + 376);

            v23 = v42;
            os_unfair_lock_lock(v31);
            os_unfair_lock_lock(*(v30 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v24);

          sub_1AF630914(v32, v23, v57);

          LOBYTE(v60) = 1;
          v66[0] = v45;
          v66[1] = v30;
          v66[2] = v23;
          v66[3] = v28;
          v66[4] = (v26 - v27 + v28);
          v66[5] = v44;
          v66[6] = v27;
          v66[7] = v26;
          v66[8] = 0;
          v66[9] = 0;
          v67 = 1;
          v68 = v49;
          v69 = v48;
          v70 = v47;
          v33 = v50;
          sub_1AF889684(v66, sub_1AFB7870C, v43);
          if (v33)
          {
            break;
          }

          v63 = v46;
          v64 = v58;
          v65 = v59;
          sub_1AF630994(v23, &v63, v57);
          sub_1AF62D29C(v30);
          ecs_stack_allocator_pop_snapshot(v24);
          if (v51)
          {
            os_unfair_lock_unlock(*(v30 + 344));
            os_unfair_lock_unlock(*(v30 + 376));
          }

          if (!--v21)
          {

            sub_1AF5D1564(v53);
            sub_1AF5D1564(v53);
          }
        }

        v60 = v46;
        v61 = v58;
        v62 = v59;
        sub_1AF630994(v23, &v60, v57);
        sub_1AF62D29C(v30);
        ecs_stack_allocator_pop_snapshot(v24);
        if (v51)
        {
          os_unfair_lock_unlock(*(v30 + 344));
          os_unfair_lock_unlock(*(v30 + 376));
        }

        __break(1u);
      }

      else
      {

        sub_1AF5D1564(v53);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1AFB7611C(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4, float32x4_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10)
{
  v12 = a3;
  v465 = *MEMORY[0x1E69E9840];
  *(a3 + 304) = 0;
  *(a3 + 312) = 1;
  v379 = a2[3].u8[9];
  v375 = a2[3].u8[8];
  v13 = *(a3 + 240);
  if (v13 == 1)
  {
    if (((v379 | v375) & 1) == 0)
    {
      return;
    }

LABEL_8:
    if ((*(a3 + 248) & 0x18) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!v13)
  {
    if (!*(a3 + 248))
    {
      return;
    }

    goto LABEL_8;
  }

  if ((v13 & 0x18) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v14 = *(a1 + 32);
  v386 = a9;

  v15 = sub_1AF6496EC(v14);

  sub_1AFB95040(v15, &v420);
  v16 = v386;
  if ((v421 & 1) == 0)
  {
    a9 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v420.columns[2], v386, 2), v420.columns[1], *v386.f32, 1), v420.columns[0], v386.f32[0]);
    v16 = a9;
  }

  a5[1] = v16;
LABEL_12:
  v17 = a10;
  v345 = v12;
  v342 = a8;
  if (a2[3].i8[13] != 1)
  {
    v85 = *(*(*(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *thread_worker_index(a9) + 8) + 32);
    v86 = *(v12 + 72);
    v400[0] = *(v12 + 56);
    v400[1] = v86;
    v401 = *(v12 + 88);
    sub_1AF6B06C0(a4, v400, 0x200000000, &v422);
    if (!v422)
    {
      return;
    }

    v389 = v422;
    v392 = v425;
    v393 = v426;
    v394 = v427;
    v395 = v428;
    v390 = v423;
    v391 = v424;
    v388 = v85;
    if (v13)
    {
      while (1)
      {
        v89 = __clz(__rbit64(v13));
        if (v89 > 6)
        {
          goto LABEL_116;
        }

        v384 = v89;
        v90 = 1 << v89;
        v91 = (v90 & v13) != 0 ? ~v90 : -1;
        ecs_stack_allocator_push_snapshot(v85);
        v92 = *(&v394 + 1);
        if (v379)
        {
          v93 = (4 * *(&v394 + 1)) >> 2;
          __srca = ecs_stack_allocator_allocate(v85, 4 * *(&v394 + 1), 4);
          v92 = sub_1AFB73DCC(__srca);
        }

        else
        {
          __srca = 0;
          v93 = 0;
        }

        v344 = v13;
        if (!v375)
        {
          break;
        }

        if (qword_1ED7256E8 != -1)
        {
          swift_once();
        }

        v398[0] = xmmword_1ED73B540;
        v398[1] = *algn_1ED73B550;
        v399 = qword_1ED73B560;
        sub_1AF6B06C0(a8, v398, 0x200000000, v429);
        if (*&v429[0])
        {
          v94 = v431;
          v366 = v93;
          if (v431)
          {
            v95 = v430;
            while (1)
            {
              if (!v95[2])
              {
                v96 = *v95;
                if (v95[1] != v96)
                {
                  break;
                }
              }

              v95 += 12;
              if (!--v94)
              {
                goto LABEL_86;
              }
            }

            v97 = *(v95 + 2);
            if (v97)
            {
              v96 = *v97;
            }

            v98 = *(*(v95 + 5) + 188);
          }

          else
          {
LABEL_86:
            v98 = -1;
            v96 = -1;
          }

          v99 = *(*(v432 + 144) + 8 * v98 + 32);
          v100 = *(v99 + 184);

          if (v100)
          {
            goto LABEL_234;
          }

          v102 = *(*(v99 + 168) + 4 * v96);
          v103 = *(*(v101 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v102 + 8);

          sub_1AF5D1564(v429);
        }

        else
        {
          v104 = sub_1AFB195A8(a8, a10);
          if (v105)
          {
            break;
          }

          v366 = v93;
          v103 = HIDWORD(v104);
          v102 = v104;
        }

        v107 = v102 | (v103 << 32);
        sub_1AF3C9244(v107, v433);
        if (v434)
        {
          v108 = -1;
        }

        else
        {
          v108 = 0;
        }

        v109 = vdupq_n_s32(v108);
        v466.columns[0] = vbslq_s8(v109, xmmword_1AFE20150, v433[0]);
        v466.columns[1] = vbslq_s8(v109, xmmword_1AFE20160, v433[1]);
        v466.columns[2] = vbslq_s8(v109, xmmword_1AFE20180, v433[2]);
        v466.columns[3] = vbslq_s8(v109, xmmword_1AFE201A0, v433[3]);
        v467 = __invert_f4(v466);
        v352 = v467.columns[0];
        v354 = v467.columns[1];
        v357 = v467.columns[2];
        v362 = v467.columns[3];
        sub_1AF3C9AB8(v107, v435);
        if (v436)
        {
          v113 = xmmword_1AFE20160;
          v112 = xmmword_1AFE20150;
          v115 = xmmword_1AFE201A0;
          v114 = xmmword_1AFE20180;
        }

        else
        {
          v112 = v435[0];
          v113 = v435[1];
          v114 = v435[2];
          v115 = v435[3];
        }

        v116 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v112, v352.f32[0]), v113, *v352.f32, 1), v114, v352, 2), v115, v352, 3);
        v117 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v112, v354.f32[0]), v113, *v354.f32, 1), v114, v354, 2), v115, v354, 3);
        v118 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v112, v357.f32[0]), v113, *v357.f32, 1), v114, v357, 2), v115, v357, 3);
        v119.i32[3] = v362.i32[3];
        v120 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v112, v362.f32[0]), v113, *v362.f32, 1), v114, v362, 2), v115, v362, 3);
        v119.f32[0] = *&v116.i32[3] - *v116.i32;
        v119.f32[1] = *&v117.i32[3] - *v117.i32;
        v119.f32[2] = v118.f32[3] - v118.f32[0];
        v121 = vmulq_f32(v119, v119);
        v119.f32[3] = v120.f32[3] - v120.f32[0];
        v110.f32[0] = *&v116.i32[3] + *v116.i32;
        v110.f32[1] = *&v117.i32[3] + *v117.i32;
        v110.f32[2] = v118.f32[3] + v118.f32[0];
        v122 = vmulq_f32(v110, v110);
        v110.f32[3] = v120.f32[3] + v120.f32[0];
        v111.f32[0] = *&v116.i32[3] + *&v116.i32[1];
        v111.f32[1] = *&v117.i32[3] + *&v117.i32[1];
        v111.f32[2] = v118.f32[3] + v118.f32[1];
        v123 = vmulq_f32(v111, v111);
        v111.f32[3] = v120.f32[3] + v120.f32[1];
        v115.f32[0] = *&v116.i32[3] - *&v116.i32[1];
        v115.f32[1] = *&v117.i32[3] - *&v117.i32[1];
        v115.f32[2] = v118.f32[3] - v118.f32[1];
        v124 = vmulq_f32(v115, v115);
        v115.f32[3] = v120.f32[3] - v120.f32[1];
        v125 = vextq_s8(v117, v117, 8uLL);
        v126 = vextq_s8(v116, v116, 8uLL).u64[0];
        *v125.f32 = vsub_f32(vzip2_s32(v126, *v125.f32), vzip1_s32(v126, *v125.f32));
        v125.f32[2] = v118.f32[3] - v118.f32[2];
        v127 = vmulq_f32(v125, v125);
        v128 = v125;
        v128.f32[3] = v120.f32[3] - v120.f32[2];
        v129 = vzip2q_s32(v116, v117);
        v129.i32[2] = v118.i32[2];
        v130 = vmulq_f32(v129, v129);
        v129.i32[3] = v120.i32[2];
        v120.f32[0] = v121.f32[2] + vaddv_f32(*v121.f32);
        *v116.i8 = vrsqrte_f32(v120.u32[0]);
        *v116.i8 = vmul_f32(*v116.i8, vrsqrts_f32(v120.u32[0], vmul_f32(*v116.i8, *v116.i8)));
        v131 = vmulq_n_f32(v119, vmul_f32(*v116.i8, vrsqrts_f32(v120.u32[0], vmul_f32(*v116.i8, *v116.i8))).f32[0]);
        v119.f32[0] = v122.f32[2] + vaddv_f32(*v122.f32);
        *v120.f32 = vrsqrte_f32(v119.u32[0]);
        *v120.f32 = vmul_f32(*v120.f32, vrsqrts_f32(v119.u32[0], vmul_f32(*v120.f32, *v120.f32)));
        v132 = vmulq_n_f32(v110, vmul_f32(*v120.f32, vrsqrts_f32(v119.u32[0], vmul_f32(*v120.f32, *v120.f32))).f32[0]);
        v121.f32[0] = v123.f32[2] + vaddv_f32(*v123.f32);
        *v119.f32 = vrsqrte_f32(v121.u32[0]);
        *v119.f32 = vmul_f32(*v119.f32, vrsqrts_f32(v121.u32[0], vmul_f32(*v119.f32, *v119.f32)));
        v133 = vmulq_n_f32(v111, vmul_f32(*v119.f32, vrsqrts_f32(v121.u32[0], vmul_f32(*v119.f32, *v119.f32))).f32[0]);
        v121.f32[0] = v124.f32[2] + vaddv_f32(*v124.f32);
        *v124.f32 = vrsqrte_f32(v121.u32[0]);
        *v124.f32 = vmul_f32(*v124.f32, vrsqrts_f32(v121.u32[0], vmul_f32(*v124.f32, *v124.f32)));
        v134 = vmulq_n_f32(v115, vmul_f32(*v124.f32, vrsqrts_f32(v121.u32[0], vmul_f32(*v124.f32, *v124.f32))).f32[0]);
        v124.f32[0] = v130.f32[2] + vaddv_f32(*v130.f32);
        *v130.f32 = vrsqrte_f32(v124.u32[0]);
        *v130.f32 = vmul_f32(*v130.f32, vrsqrts_f32(v124.u32[0], vmul_f32(*v130.f32, *v130.f32)));
        v135 = vmulq_n_f32(v129, vmul_f32(*v130.f32, vrsqrts_f32(v124.u32[0], vmul_f32(*v130.f32, *v130.f32))).f32[0]);
        v127.f32[0] = v127.f32[2] + vaddv_f32(*v127.f32);
        *v130.f32 = vrsqrte_f32(v127.u32[0]);
        *v130.f32 = vmul_f32(*v130.f32, vrsqrts_f32(v127.u32[0], vmul_f32(*v130.f32, *v130.f32)));
        v445 = v131;
        v446 = v132;
        v447 = v133;
        v448 = v134;
        v449 = v135;
        v450 = vmulq_n_f32(v128, vmul_f32(*v130.f32, vrsqrts_f32(v127.u32[0], vmul_f32(*v130.f32, *v130.f32))).f32[0]);
        v136 = a2[5];
        v406 = a2[4];
        v407 = v136;
        v408 = a2[6].i32[0];
        v137 = a2[1];
        v402 = *a2;
        v403 = v137;
        v138 = a2[3];
        v404 = a2[2];
        v405 = v138;
        sub_1AFB7CC3C(a8);
        v140 = v139;
        v141 = ecs_stack_allocator_allocate(v85, 4 * v92, 4);
        v142 = (4 * v92) >> 2;
        sub_1AFB73FFC(v141, v140, v142, &v445, __srca, v366, v379 ^ 1);
        v92 = v143;
        v106 = 0;
        __srca = v141;
        v93 = v142;
LABEL_99:
        v144 = 4 * v92;
        CFXBufferAllocatorPerFrameAllocateWithLength(*(a6 + 232), 4 * v92);
        v146 = v145;
        v148 = v147;
        v149 = [swift_unknownObjectRetain() storageMode];
        swift_unknownObjectRelease();
        v358 = v148;
        if (v149 == 2)
        {
          v150 = 0;
        }

        else
        {
          v151 = [swift_unknownObjectRetain() contents];
          v152 = v146;
          v150 = &v151[v148];
        }

        v367 = v91;
        if (v384)
        {
          v153 = ecs_stack_allocator_allocate(v388, v144, 4);
          sub_1AFB74298(v384, v153, a5[1], v144 >> 2, __srca, v93, v106);
          ecs_stack_allocator_push_snapshot(v388);
          ecs_stack_allocator_allocate(v388, v144, 8);
          if (v106)
          {
            radix_sort_float(v153, v150);
          }

          else
          {
            radix_sort_float_with_input_indices(v153, v150);
          }

          ecs_stack_allocator_pop_snapshot(v388);
          v12 = v345;
          goto LABEL_109;
        }

        v12 = v345;
        if ((v106 & 1) == 0)
        {
          memcpy(v150, __srca, v144);
LABEL_109:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v458.i64[0] = *(v12 + 256);
          v155 = v458.i64[0];
          v156 = sub_1AF41B2A8(v384);
          v158 = v157;
          v159 = *(v155 + 16) + ((v157 & 1) == 0);
          if (*(v155 + 24) >= v159)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v163 = v156;
              sub_1AF84FC9C();
              v156 = v163;
            }
          }

          else
          {
            sub_1AF8416F0(v159, isUniquelyReferenced_nonNull_native);
            v156 = sub_1AF41B2A8(v384);
            if ((v158 & 1) != (v160 & 1))
            {
              goto LABEL_232;
            }
          }

          v161 = v458.i64[0];
          if (v158)
          {
            v162 = (*(v458.i64[0] + 56) + 16 * v156);
            *v162 = v146;
            v162[1] = v358;
          }

          else
          {
            *(v458.i64[0] + 8 * (v156 >> 6) + 64) |= 1 << v156;
            v87 = (v161[6] + 2 * v156);
            *v87 = v384;
            v87[1] = 0;
            v88 = (v161[7] + 16 * v156);
            *v88 = v146;
            v88[1] = v358;
            ++v161[2];
          }

          *(v12 + 256) = v161;
          *(v12 + 304) = v92;
          *(v12 + 312) = 0;
        }

        v13 = v367 & v344;
        v85 = v388;
        ecs_stack_allocator_pop_snapshot(v388);
        a8 = v342;
        if ((v367 & v344) == 0)
        {
          goto LABEL_116;
        }
      }

      v106 = v379 ^ 1;
      goto LABEL_99;
    }

LABEL_116:
    v164 = *(v12 + 248);
    if (v164)
    {
      while (1)
      {
        v167 = __clz(__rbit64(v164));
        if (v167 > 6)
        {
          goto LABEL_170;
        }

        v385 = v167;
        v168 = 1 << v167;
        v169 = (v168 & v164) != 0 ? ~v168 : -1;
        ecs_stack_allocator_push_snapshot(v85);
        v170 = *(&v394 + 1);
        if (v379)
        {
          v171 = (4 * *(&v394 + 1)) >> 2;
          __srcb = ecs_stack_allocator_allocate(v85, 4 * *(&v394 + 1), 4);
          v170 = sub_1AFB73DCC(__srcb);
        }

        else
        {
          __srcb = 0;
          v171 = 0;
        }

        v363 = v169;
        v359 = v164;
        if (!v375)
        {
          break;
        }

        if (qword_1ED7256E8 != -1)
        {
          swift_once();
        }

        v396[0] = xmmword_1ED73B540;
        v396[1] = *algn_1ED73B550;
        v397 = qword_1ED73B560;
        sub_1AF6B06C0(a8, v396, 0x200000000, v437);
        if (*&v437[0])
        {
          v172 = v439;
          if (v439)
          {
            v173 = v438;
            while (1)
            {
              if (!v173[2])
              {
                v174 = *v173;
                if (v173[1] != v174)
                {
                  break;
                }
              }

              v173 += 12;
              if (!--v172)
              {
                goto LABEL_140;
              }
            }

            v175 = *(v173 + 2);
            if (v175)
            {
              v174 = *v175;
            }

            v176 = *(*(v173 + 5) + 188);
          }

          else
          {
LABEL_140:
            v176 = -1;
            v174 = -1;
          }

          v177 = *(*(v440 + 144) + 8 * v176 + 32);
          v178 = *(v177 + 184);

          if (v178)
          {
            goto LABEL_234;
          }

          v180 = *(*(v177 + 168) + 4 * v174);
          v181 = *(*(v179 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v180 + 8);

          sub_1AF5D1564(v437);
        }

        else
        {
          v182 = sub_1AFB195A8(a8, a10);
          if (v183)
          {
            break;
          }

          v181 = HIDWORD(v182);
          v180 = v182;
        }

        v185 = v180 | (v181 << 32);
        sub_1AF3C9244(v185, v441);
        if (v442)
        {
          v186 = -1;
        }

        else
        {
          v186 = 0;
        }

        v187 = vdupq_n_s32(v186);
        v468.columns[0] = vbslq_s8(v187, xmmword_1AFE20150, v441[0]);
        v468.columns[1] = vbslq_s8(v187, xmmword_1AFE20160, v441[1]);
        v468.columns[2] = vbslq_s8(v187, xmmword_1AFE20180, v441[2]);
        v468.columns[3] = vbslq_s8(v187, xmmword_1AFE201A0, v441[3]);
        v469 = __invert_f4(v468);
        v350 = v469.columns[0];
        v353 = v469.columns[1];
        v355 = v469.columns[2];
        v368 = v469.columns[3];
        sub_1AF3C9AB8(v185, v443);
        if (v444)
        {
          v191 = xmmword_1AFE20160;
          v190 = xmmword_1AFE20150;
          v192 = xmmword_1AFE20180;
          v193 = xmmword_1AFE201A0;
        }

        else
        {
          v190 = v443[0];
          v191 = v443[1];
          v192 = v443[2];
          v193 = v443[3];
        }

        v194 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v190, v350.f32[0]), v191, *v350.f32, 1), v192, v350, 2), v193, v350, 3);
        v195 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v190, v353.f32[0]), v191, *v353.f32, 1), v192, v353, 2), v193, v353, 3);
        v196 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v190, v355.f32[0]), v191, *v355.f32, 1), v192, v355, 2), v193, v355, 3);
        v197.i32[3] = v368.i32[3];
        v198 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v190, v368.f32[0]), v191, *v368.f32, 1), v192, v368, 2), v193, v368, 3);
        v197.f32[0] = *&v194.i32[3] - *v194.i32;
        v197.f32[1] = *&v195.i32[3] - *v195.i32;
        v197.f32[2] = v196.f32[3] - v196.f32[0];
        v199 = vmulq_f32(v197, v197);
        v197.f32[3] = v198.f32[3] - v198.f32[0];
        v188.f32[0] = *&v194.i32[3] + *v194.i32;
        v188.f32[1] = *&v195.i32[3] + *v195.i32;
        v188.f32[2] = v196.f32[3] + v196.f32[0];
        v200 = vmulq_f32(v188, v188);
        v188.f32[3] = v198.f32[3] + v198.f32[0];
        v189.f32[0] = *&v194.i32[3] + *&v194.i32[1];
        v189.f32[1] = *&v195.i32[3] + *&v195.i32[1];
        v189.f32[2] = v196.f32[3] + v196.f32[1];
        v201 = vmulq_f32(v189, v189);
        v189.f32[3] = v198.f32[3] + v198.f32[1];
        v193.f32[0] = *&v194.i32[3] - *&v194.i32[1];
        v193.f32[1] = *&v195.i32[3] - *&v195.i32[1];
        v193.f32[2] = v196.f32[3] - v196.f32[1];
        v202 = vmulq_f32(v193, v193);
        v193.f32[3] = v198.f32[3] - v198.f32[1];
        v203 = vextq_s8(v195, v195, 8uLL);
        v204 = vextq_s8(v194, v194, 8uLL).u64[0];
        *v203.f32 = vsub_f32(vzip2_s32(v204, *v203.f32), vzip1_s32(v204, *v203.f32));
        v203.f32[2] = v196.f32[3] - v196.f32[2];
        v205 = vmulq_f32(v203, v203);
        v206 = v203;
        v206.f32[3] = v198.f32[3] - v198.f32[2];
        v207 = vzip2q_s32(v194, v195);
        v207.i32[2] = v196.i32[2];
        v208 = vmulq_f32(v207, v207);
        v207.i32[3] = v198.i32[2];
        v198.f32[0] = v199.f32[2] + vaddv_f32(*v199.f32);
        *v194.i8 = vrsqrte_f32(v198.u32[0]);
        *v194.i8 = vmul_f32(*v194.i8, vrsqrts_f32(v198.u32[0], vmul_f32(*v194.i8, *v194.i8)));
        v209 = vmulq_n_f32(v197, vmul_f32(*v194.i8, vrsqrts_f32(v198.u32[0], vmul_f32(*v194.i8, *v194.i8))).f32[0]);
        v197.f32[0] = v200.f32[2] + vaddv_f32(*v200.f32);
        *v198.f32 = vrsqrte_f32(v197.u32[0]);
        *v198.f32 = vmul_f32(*v198.f32, vrsqrts_f32(v197.u32[0], vmul_f32(*v198.f32, *v198.f32)));
        v210 = vmulq_n_f32(v188, vmul_f32(*v198.f32, vrsqrts_f32(v197.u32[0], vmul_f32(*v198.f32, *v198.f32))).f32[0]);
        v199.f32[0] = v201.f32[2] + vaddv_f32(*v201.f32);
        *v197.f32 = vrsqrte_f32(v199.u32[0]);
        *v197.f32 = vmul_f32(*v197.f32, vrsqrts_f32(v199.u32[0], vmul_f32(*v197.f32, *v197.f32)));
        v211 = vmulq_n_f32(v189, vmul_f32(*v197.f32, vrsqrts_f32(v199.u32[0], vmul_f32(*v197.f32, *v197.f32))).f32[0]);
        v199.f32[0] = v202.f32[2] + vaddv_f32(*v202.f32);
        *v202.f32 = vrsqrte_f32(v199.u32[0]);
        *v202.f32 = vmul_f32(*v202.f32, vrsqrts_f32(v199.u32[0], vmul_f32(*v202.f32, *v202.f32)));
        v212 = vmulq_n_f32(v193, vmul_f32(*v202.f32, vrsqrts_f32(v199.u32[0], vmul_f32(*v202.f32, *v202.f32))).f32[0]);
        v202.f32[0] = v208.f32[2] + vaddv_f32(*v208.f32);
        *v208.f32 = vrsqrte_f32(v202.u32[0]);
        *v208.f32 = vmul_f32(*v208.f32, vrsqrts_f32(v202.u32[0], vmul_f32(*v208.f32, *v208.f32)));
        v213 = vmulq_n_f32(v207, vmul_f32(*v208.f32, vrsqrts_f32(v202.u32[0], vmul_f32(*v208.f32, *v208.f32))).f32[0]);
        v205.f32[0] = v205.f32[2] + vaddv_f32(*v205.f32);
        *v208.f32 = vrsqrte_f32(v205.u32[0]);
        *v208.f32 = vmul_f32(*v208.f32, vrsqrts_f32(v205.u32[0], vmul_f32(*v208.f32, *v208.f32)));
        v452 = v209;
        v453 = v210;
        v454 = v211;
        v455 = v212;
        v456 = v213;
        v457 = vmulq_n_f32(v206, vmul_f32(*v208.f32, vrsqrts_f32(v205.u32[0], vmul_f32(*v208.f32, *v208.f32))).f32[0]);
        v214 = a2[5];
        v462 = a2[4];
        v463 = v214;
        v464 = a2[6].i32[0];
        v215 = a2[1];
        v458 = *a2;
        v459 = v215;
        v216 = a2[3];
        v460 = a2[2];
        v461 = v216;
        sub_1AFB7CC3C(a8);
        v218 = v217;
        v219 = ecs_stack_allocator_allocate(v85, 4 * v170, 4);
        v220 = (4 * v170) >> 2;
        sub_1AFB73FFC(v219, v218, v220, &v452, __srcb, v171, v379 ^ 1);
        v170 = v221;
        v184 = 0;
        __srcb = v219;
        v171 = v220;
LABEL_153:
        v369 = v170;
        v222 = 4 * v170;
        CFXBufferAllocatorPerFrameAllocateWithLength(*(a6 + 232), 4 * v170);
        v224 = v223;
        v226 = v225;
        v227 = [swift_unknownObjectRetain() storageMode];
        swift_unknownObjectRelease();
        if (v227 == 2)
        {
          v228 = 0;
          v229 = v385;
          if (v385)
          {
            goto LABEL_155;
          }
        }

        else
        {
          v233 = [swift_unknownObjectRetain() contents];
          v234 = v224;
          v228 = &v233[v226];
          v229 = v385;
          if (v385)
          {
LABEL_155:
            v230 = ecs_stack_allocator_allocate(v388, v222, 4);
            v231 = v171;
            v232 = v230;
            sub_1AFB74298(v229, v230, a5[1], v222 >> 2, __srcb, v231, v184);
            ecs_stack_allocator_push_snapshot(v388);
            ecs_stack_allocator_allocate(v388, v222, 8);
            if (v184)
            {
              radix_sort_float(v232, v228);
            }

            else
            {
              radix_sort_float_with_input_indices(v232, v228);
            }

            ecs_stack_allocator_pop_snapshot(v388);
            v12 = v345;
            goto LABEL_162;
          }
        }

        v12 = v345;
        if ((v184 & 1) == 0)
        {
          memcpy(v228, __srcb, v222);
LABEL_162:
          v235 = swift_isUniquelyReferenced_nonNull_native();
          v236 = *(v12 + 256);
          v237 = v385;
          v238 = sub_1AF41B2A8(v385 | 0x100u);
          v240 = v239;
          v241 = v236[2] + ((v239 & 1) == 0);
          if (v236[3] >= v241)
          {
            if ((v235 & 1) == 0)
            {
              v244 = v238;
              sub_1AF84FC9C();
              v238 = v244;
            }

            v237 = v385;
          }

          else
          {
            sub_1AF8416F0(v241, v235);
            v238 = sub_1AF41B2A8(v385 | 0x100u);
            if ((v240 & 1) != (v242 & 1))
            {
              goto LABEL_232;
            }
          }

          if (v240)
          {
            v243 = (v236[7] + 16 * v238);
            *v243 = v224;
            v243[1] = v226;
          }

          else
          {
            v236[(v238 >> 6) + 8] |= 1 << v238;
            v165 = (v236[6] + 2 * v238);
            *v165 = v237;
            v165[1] = 1;
            v166 = (v236[7] + 16 * v238);
            *v166 = v224;
            v166[1] = v226;
            ++v236[2];
          }

          *(v12 + 256) = v236;
          *(v12 + 304) = v369;
          *(v12 + 312) = 0;
        }

        v164 = v363 & v359;
        v85 = v388;
        ecs_stack_allocator_pop_snapshot(v388);
        a8 = v342;
        if ((v363 & v359) == 0)
        {
          goto LABEL_170;
        }
      }

      v184 = v379 ^ 1;
      goto LABEL_153;
    }

LABEL_170:
    if ((*(v12 + 264) & 1) == 0)
    {
      goto LABEL_228;
    }

    v245 = *(v12 + 256);
    if (!*(v245 + 16))
    {
      goto LABEL_218;
    }

    v246 = sub_1AF41B2A8(5);
    if (v247)
    {
      *(v12 + 272) = sub_1AFB74B88(*(*(v245 + 56) + 16 * v246), *(*(v245 + 56) + 16 * v246 + 8), a6, v85);
      *(v12 + 280) = v248;
    }

    if (!*(v245 + 16) || (v249 = sub_1AF41B2A8(*(v12 + 288)), (v250 & 1) == 0))
    {
LABEL_218:
      sub_1AF5D1564(&v422);
      *(v12 + 292) = (DWORD2(v394) - 1);
      return;
    }

    v251 = *(v245 + 56) + 16 * v249;
    v252 = *v251;
    v253 = *(v251 + 8);
    v254 = *(&v394 + 1);
    v255 = [swift_unknownObjectRetain() storageMode];
    swift_unknownObjectRelease();
    if (v255 == 2)
    {
      v256 = 0;
    }

    else
    {
      v318 = [swift_unknownObjectRetain() contents];
      v319 = v252;
      v256 = &v318[v253];
    }

    if (!*(&v394 + 1))
    {
LABEL_228:
      sub_1AF5D1564(&v422);
      return;
    }

    v320 = 0;
    v321 = *(&v394 + 1) - 1;
    while (1)
    {
      v322 = *&v256[4 * v320];
      if (v322)
      {
        if (v321 == v322)
        {
          goto LABEL_227;
        }
      }

      else
      {
        *(v12 + 296) = v320;
        if (v321 == v322)
        {
LABEL_227:
          *(v12 + 292) = v320;
        }
      }

      if (v254 == ++v320)
      {
        goto LABEL_228;
      }
    }
  }

  if (!*(v12 + 424))
  {
    return;
  }

  v18 = *(v12 + 528);
  if (v18 < 1)
  {
    return;
  }

  v348 = *(v12 + 424);
  v19 = *(v12 + 432);
  v326 = *(v12 + 440);
  v383 = sub_1AFB74FD4(a6, v12, v18);
  v21 = v20;
  v336 = v375 | v379;
  v325 = v18;
  v328 = 4 * v18;
  v329 = v19;
  v327 = v19 + 28;
  v347 = 1 << -__clz(v18 - 1);
  v387 = v20;
  while (v13)
  {
    v23 = __clz(__rbit64(v13));
    if (v23 > 6)
    {
      break;
    }

    if (((1 << v23) & v13) != 0)
    {
      v24 = ~(1 << v23);
    }

    else
    {
      v24 = -1;
    }

    if (v336)
    {
      v25 = a2[5];
      v462 = a2[4];
      v463 = v25;
      v464 = a2[6].i32[0];
      v26 = a2[1];
      v458 = *a2;
      v459 = v26;
      v27 = a2[3];
      v460 = a2[2];
      v461 = v27;
      v28 = sub_1AFB7520C(&v458, v12, v383, v21, 0, a8, v17);
      v13 &= v24;
      if (!v23)
      {
        goto LABEL_34;
      }

LABEL_24:
      v332 = v29;
      v343 = v13;
      v30 = v28;
      sub_1AF442324(v12, &v402);
      v380 = a5[1];
      v31 = *(v17 + 232);
      v32 = 4 * v417;

      CFXBufferAllocatorPerFrameAllocateWithLength(v31, v32);
      v34 = v33;
      v36 = v35;
      v337 = v23;
      v445.i32[0] = v23;
      v446 = v380;
      v447.i8[0] = 0;
      v333 = v30;
      v447.i8[1] = v30 != 0;
      sub_1AF7180FC();

      v37 = sub_1AF6F4158();
      if (v341)
      {
        goto LABEL_233;
      }

      v38 = v37;
      v376 = v36;
      v381 = v34;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v40 = sub_1AFDFCEC8();
      [v38 pushDebugGroup_];

      sub_1AF6F3BD8();
      v41 = v418;
      if (!v418)
      {
        goto LABEL_234;
      }

      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v42 = v413;
      if (v413)
      {
        v43 = v415;
        v44 = v410;
        v45 = v414;
        if (v409)
        {
          v46 = v416;
        }

        else
        {
          v46 = 0;
        }

        v47 = v411 + v412 * v46;
        swift_unknownObjectRetain();
        sub_1AF6F34C4(v44, v47, 0, 4, ObjectType);
        v48 = v43;
        v12 = v345;
        sub_1AF6F353C(v42, v45, v48, 0);
        swift_unknownObjectRelease();
      }

      sub_1AF6F458C(v381, v376, 0, 1);
      [v38 setBytes:&v445 length:48 atIndex:2];
      if (v447.u8[1] == 1)
      {
        v49 = v333;
        sub_1AF6F458C(v333, v332, 0, 3);
      }

      else
      {
        sub_1AF6F458C(*(a10 + 208), *(a10 + 216), 0, 3);
        v49 = v333;
      }

      [v38 setComputePipelineState_];
      sub_1AFB78748(&v452);
      sub_1AF6F4960(v383, v387, 0, v452.i64[0], v452.i64[1], v453.i64[0]);
      swift_unknownObjectRelease();
      [v38 popDebugGroup];

      swift_unknownObjectRelease();
      sub_1AF58D38C(&v402);
      CFXBufferAllocatorPerFrameAllocateWithLength(*(a6 + 232), v328);
      v334 = v52;
      v335 = v51;
      CFXBufferAllocatorPerFrameAllocateWithLength(*(a6 + 232), v328);
      v330 = v54;
      v331 = v53;
      CFXBufferAllocatorPerFrameAllocateWithLength(*(a6 + 232), v328);
      __src = v55;
      v365 = v56;
      CFXBufferAllocatorPerFrameAllocateWithLength(*(a6 + 232), v328);
      v361 = v57;
      v356 = v58;
      if (v49)
      {
        v59 = v327;
      }

      else
      {
        v59 = v329;
      }

      v445.i32[0] = 0;
      sub_1AF7180FC();

      v60 = sub_1AF6F4158();
      swift_getObjectType();
      swift_unknownObjectRetain();
      v61 = sub_1AFDFCEC8();
      [v60 pushDebugGroup_];

      sub_1AF6F3BD8();
      swift_unknownObjectRelease();
      v62 = *(v12 + 736);
      if (v62)
      {
        swift_unknownObjectRetain();
        sub_1AF6F458C(v381, v376, 0, 1);
        sub_1AF6F458C(__src, v365, 0, 2);
        sub_1AF6F458C(v361, v356, 0, 3);
        sub_1AF6F458C(v348, v59, 0, 4);
        [v60 setThreadgroupMemoryLength:2048 atIndex:0];
        [v60 setThreadgroupMemoryLength:2048 atIndex:1];
        [v60 setComputePipelineState_];
        sub_1AFB78748(&v402);
        sub_1AF6F4960(v383, v387, 0, v402.i64[0], v402.i64[1], v403.i64[0]);
        swift_unknownObjectRelease();
      }

      [v60 popDebugGroup];

      swift_unknownObjectRelease();
      sub_1AFB78748(&v402);
      v63 = v402;
      v351 = v403.i64[0];
      sub_1AF7180FC();

      v341 = 0;
      v64 = sub_1AF6F4158();
      swift_getObjectType();
      swift_unknownObjectRetain();
      v65 = sub_1AFDFCEC8();
      [v64 pushDebugGroup_];

      sub_1AF6F3BD8();
      swift_unknownObjectRelease();
      v17 = a10;
      v21 = v387;
      if (*(v12 + 752))
      {
        v349 = *(v12 + 752);
        swift_unknownObjectRetain();
        if (v347 >= 1024)
        {
          v66 = 12;
          v67 = 2;
          v68 = 1;
          v69 = 1024;
          do
          {
            v70 = v67;
            v445.i32[0] = v69;
            sub_1AF6F458C(v331, v330, 0, v67);
            sub_1AF6F458C(v381, v376, 0, v70 + 5);
            sub_1AF6F458C(__src, v365, 0, v68);
            sub_1AF6F458C(v361, v356, 0, v68 + 5);
            sub_1AF6F458C(v348, v59, 0, 4);
            [v64 setBytes:&v445 length:4 atIndex:8];
            [v64 setComputePipelineState_];
            sub_1AF6F4960(v383, v387, v66, v63.i64[0], v63.i64[1], v351);
            v69 *= 2;
            v66 += 12;
            v67 = v68;
            v68 = v70;
          }

          while (v347 >= v69);
        }

        v71 = 768;
        if (v333)
        {
          v71 = 776;
        }

        v12 = v345;
        v72 = *(v345 + v71);
        v21 = v387;
        if (v72)
        {
          swift_unknownObjectRetain();
          sub_1AF6F458C(v331, v330, 0, 1);
          sub_1AF6F458C(__src, v365, 0, 2);
          sub_1AF6F458C(v335, v334, 0, 3);
          sub_1AF6F458C(v348, v59, 0, 4);
          sub_1AF6F458C(v333, v332, 0, 5);
          [v64 0x1FB662C25];
          sub_1AF6F4960(v383, v387, 0, v63.i64[0], v63.i64[1], v351);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        v17 = a10;
      }

      [v64 popDebugGroup];

      swift_unknownObjectRelease();
      v50 = v337;
      a8 = v342;
LABEL_52:
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v402.i64[0] = *(v12 + 256);
      v74 = v402.i64[0];
      v75 = sub_1AF41B2A8(v50);
      v77 = v76;
      v78 = *(v74 + 16) + ((v76 & 1) == 0);
      if (*(v74 + 24) >= v78)
      {
        v80 = v337;
        if ((v73 & 1) == 0)
        {
          v84 = v75;
          sub_1AF84FC9C();
          v75 = v84;
          v80 = v337;
        }

        v13 = v343;
      }

      else
      {
        sub_1AF8416F0(v78, v73);
        v75 = sub_1AF41B2A8(v50);
        if ((v77 & 1) != (v79 & 1))
        {
          goto LABEL_232;
        }

        v13 = v343;
        v80 = v337;
      }

      v81 = v402.i64[0];
      if (v77)
      {
        v22 = (*(v402.i64[0] + 56) + 16 * v75);
        *v22 = v335;
        v22[1] = v334;
      }

      else
      {
        *(v402.i64[0] + 8 * (v75 >> 6) + 64) |= 1 << v75;
        v82 = (v81[6] + 2 * v75);
        *v82 = v80;
        v82[1] = 0;
        v83 = (v81[7] + 16 * v75);
        *v83 = v335;
        v83[1] = v334;
        ++v81[2];
      }

      *(v12 + 256) = v81;
    }

    else
    {
      v28 = 0;
      v29 = 0;
      v13 &= v24;
      if (v23)
      {
        goto LABEL_24;
      }

LABEL_34:
      if (v28)
      {
        LOBYTE(v337) = v23;
        v343 = v13;
        v50 = 0;
        v334 = v29;
        v335 = v28;
        goto LABEL_52;
      }
    }
  }

  v257 = *(v12 + 248);
LABEL_180:
  v259 = &selRef_setAnimationTimingFunction_;
  while (v257)
  {
    v260 = __clz(__rbit64(v257));
    if (v260 > 6)
    {
      break;
    }

    if (((1 << v260) & v257) != 0)
    {
      v261 = ~(1 << v260);
    }

    else
    {
      v261 = -1;
    }

    if (v336)
    {
      v262 = a2[5];
      v449 = a2[4];
      v450 = v262;
      v451 = a2[6].i32[0];
      v263 = a2[1];
      v445 = *a2;
      v446 = v263;
      v264 = a2[3];
      v447 = a2[2];
      v448 = v264;
      v265 = v260;
      v266 = sub_1AFB7520C(&v445, v12, v383, v387, 1, a8, v17);
      v260 = v265;
      v268 = v266;
      v257 &= v261;
      if (v260)
      {
        goto LABEL_192;
      }
    }

    else
    {
      v268 = 0;
      v267 = 0;
      v257 &= v261;
      if (v260)
      {
LABEL_192:
        v360 = v267;
        v370 = v257;
        v271 = v260;
        sub_1AF442324(v12, &v402);
        v364 = a5[1];
        v272 = *(v17 + 232);
        v273 = 8 * v417;

        CFXBufferAllocatorPerFrameAllocateWithLength(v272, v273);
        __srcc = v275;
        v377 = v274;
        v382 = v271;
        v452.i32[0] = v271;
        v453 = v364;
        v454.i8[0] = 0;
        v454.i8[1] = v268 != 0;
        sub_1AF7180FC();

        v276 = sub_1AF6F4158();
        if (v341)
        {
          goto LABEL_233;
        }

        v277 = v276;
        v278 = swift_getObjectType();
        swift_unknownObjectRetain();
        v279 = sub_1AFDFCEC8();
        [v277 pushDebugGroup_];

        sub_1AF6F3BD8();
        v280 = v419;
        if (!v419)
        {
          goto LABEL_234;
        }

        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v281 = v413;
        if (v413)
        {
          v282 = v415;
          v283 = v410;
          v284 = v414;
          if (v409)
          {
            v285 = v416;
          }

          else
          {
            v285 = 0;
          }

          v286 = v411 + v412 * v285;
          swift_unknownObjectRetain();
          sub_1AF6F34C4(v283, v286, 0, 4, v278);
          v287 = v284;
          v259 = &selRef_setAnimationTimingFunction_;
          v288 = v282;
          v17 = a10;
          sub_1AF6F353C(v281, v287, v288, 0);
          swift_unknownObjectRelease();
        }

        sub_1AF6F458C(v377, __srcc, 0, 1);
        [v277 v259[91]];
        if (v454.u8[1] == 1)
        {
          v289 = v268;
          v290 = v360;
          sub_1AF6F458C(v268, v360, 0, 3);
        }

        else
        {
          sub_1AF6F458C(*(v17 + 208), *(v17 + 216), 0, 3);
          v289 = v268;
          v290 = v360;
        }

        [v277 setComputePipelineState_];
        sub_1AFB78748(&v389);
        sub_1AF6F4960(v383, v387, 0, v389, v390, *(&v390 + 1));
        swift_unknownObjectRelease();
        [v277 popDebugGroup];

        swift_unknownObjectRelease();
        sub_1AF58D38C(&v402);
        v12 = v345;
        v268 = sub_1AFB756C4(a6, a7, v345, v377, __srcc, v383, v387, 1, v289, v290);
        v269 = v291;
        v270 = v382 | 0x100;
        a8 = v342;
LABEL_203:
        v292 = swift_isUniquelyReferenced_nonNull_native();
        v402.i64[0] = *(v12 + 256);
        v293 = v402.i64[0];
        v294 = sub_1AF41B2A8(v270);
        v296 = v295;
        v297 = *(v293 + 16) + ((v295 & 1) == 0);
        if (*(v293 + 24) < v297)
        {
          sub_1AF8416F0(v297, v292);
          v294 = sub_1AF41B2A8(v270);
          if ((v296 & 1) == (v298 & 1))
          {
            v17 = a10;
            goto LABEL_208;
          }

LABEL_232:
          sub_1AFDFF1A8();
          __break(1u);
LABEL_233:
          swift_unexpectedError();
          __break(1u);
          goto LABEL_234;
        }

        v17 = a10;
        if ((v292 & 1) == 0)
        {
          v302 = v294;
          sub_1AF84FC9C();
          v294 = v302;
        }

LABEL_208:
        v257 = v370;
        v299 = v402.i64[0];
        if (v296)
        {
          v258 = (*(v402.i64[0] + 56) + 16 * v294);
          *v258 = v268;
          v258[1] = v269;
        }

        else
        {
          *(v402.i64[0] + 8 * (v294 >> 6) + 64) |= 1 << v294;
          v300 = (v299[6] + 2 * v294);
          *v300 = v382;
          v300[1] = 1;
          v301 = (v299[7] + 16 * v294);
          *v301 = v268;
          v301[1] = v269;
          ++v299[2];
        }

        *(v12 + 256) = v299;
        goto LABEL_180;
      }
    }

    if (v268)
    {
      v269 = v267;
      LOBYTE(v382) = v260;
      v370 = v257;
      v270 = 256;
      goto LABEL_203;
    }
  }

  if (*(v12 + 264))
  {
    v303 = *(v12 + 256);
    if (*(v303 + 16))
    {
      v304 = sub_1AF41B2A8(5);
      if (v305)
      {
        v306 = (*(v303 + 56) + 16 * v304);
        v307 = *v306;
        v378 = v306[1];
        CFXBufferAllocatorPerFrameAllocateWithLength(*(a6 + 232), 8 * v325);
        v309 = v308;
        v311 = v310;
        sub_1AF7180FC();

        v312 = sub_1AF6F4158();
        if (v341)
        {
          goto LABEL_233;
        }

        v313 = v312;
        v314 = swift_getObjectType();
        swift_unknownObjectRetain();
        v315 = sub_1AFDFCEC8();
        [v313 pushDebugGroup_];

        sub_1AF6F3BD8();
        v316 = *(v345 + 816);
        if (!v316)
        {
          while (1)
          {
LABEL_234:
            sub_1AFDFE518();
            __break(1u);
          }
        }

        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        if (*(v345 + 336))
        {
          v317 = *(v345 + 512);
        }

        else
        {
          LODWORD(v317) = 0;
        }

        v323 = *(v345 + 344);
        v324 = (*(v345 + 352) + *(v345 + 368) * v317) | (*(v345 + 368) << 32);
        swift_unknownObjectRetain();
        sub_1AF6F34C4(v323, v324, 0, 4, v314);
        sub_1AF6F353C(v348, v329, v326, 0);
        swift_unknownObjectRelease();
        sub_1AF6F458C(v307, v378, 0, 0);
        sub_1AF6F458C(v309, v311, 0, 1);
        [v313 setComputePipelineState_];
        sub_1AFB78748(&v402);
        sub_1AF6F4960(v383, v387, 0, v402.i64[0], v402.i64[1], v403.i64[0]);
        swift_unknownObjectRelease();
        [v313 popDebugGroup];

        swift_unknownObjectRelease();
        *(v345 + 272) = v309;
        *(v345 + 280) = v311;
      }
    }
  }
}