unint64_t sub_1AFB12344(uint64_t a1)
{
  result = 0xD00000000000007DLL;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v4 += 5;

      MEMORY[0x1B2718AE0](v7, v8);
      MEMORY[0x1B2718AE0](2570, 0xE200000000000000);
      MEMORY[0x1B2718AE0](2109231, 0xE300000000000000);

      MEMORY[0x1B2718AE0](v5, v6);

      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      --v3;
    }

    while (v3);
    return 0xD00000000000007DLL;
  }

  return result;
}

uint64_t sub_1AFB12464(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v3 = 0xD000000000000017;
  if (a2)
  {
    if (a3 <= 1u)
    {
      if (!a3)
      {
        v5 = a2;
LABEL_15:
        v7 = v3;

        MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
        MEMORY[0x1B2718AE0](a1, v5);

        return v7;
      }

      v5 = a2;
      goto LABEL_14;
    }

    v5 = a2;
    if (a3 == 2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (a3 <= 1u)
    {
      if (!a3)
      {
        v5 = 0xEB00000000657475;
        a1 = 0x706D6F635F786676;
        goto LABEL_15;
      }

      v5 = 0xEC000000746E656DLL;
      a1 = 0x676172665F786676;
LABEL_14:
      v3 = 0xD00000000000001DLL;
      goto LABEL_15;
    }

    if (a3 == 2)
    {
      v5 = 0xEA00000000007865;
      a1 = 0x747265765F786676;
      goto LABEL_14;
    }
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB125E8(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = sub_1AFB08304(0, a2, a3);
  v7 = v6;
  if (a4 > 1059)
  {
    if (a4 >= 0x7D1)
    {
      result = sub_1AFDFE518();
      __break(1u);
      return result;
    }

    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](v5, v7);
    v9 = 0xD000000000000017;
    v8 = 0x80000001AFF36410;
  }

  else
  {
    v8 = 0x80000001AFF36560;
    v9 = 0xD000000000000012;
  }

  sub_1AF4486E4();
  if (sub_1AFDFDF18())
  {
  }

  else
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x286C636564635F40, 0xE900000000000022);
    MEMORY[0x1B2718AE0](v9, v8);
    MEMORY[0x1B2718AE0](0x696C6275700A2922, 0xEF20636E75662063);
    MEMORY[0x1B2718AE0](v9, v8);

    MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF47E10);
    MEMORY[0x1B2718AE0](v5, v7);

    MEMORY[0x1B2718AE0](0xA7D0A666C65732ELL, 0xE90000000000000ALL);
    MEMORY[0x1B2718AE0](0, 0xE000000000000000);
  }
}

uint64_t sub_1AFB12858(uint64_t a1, uint64_t a2)
{
  sub_1AFB0EF20(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AFB128EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScriptIndex();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AFB12954(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 64);
  do
  {
    v3 = *(v2 - 3);
    v4 = *(v2 - 2);
    v5 = *(v2 - 1);
    v6 = *v2;
    v2 += 5;

    MEMORY[0x1B2718AE0](v5, v6);
    MEMORY[0x1B2718AE0](2570, 0xE200000000000000);
    MEMORY[0x1B2718AE0](2109231, 0xE300000000000000);

    MEMORY[0x1B2718AE0](v3, v4);

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    --v1;
  }

  while (v1);
  return 0;
}

uint64_t sub_1AFB12A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1AFB12AC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AFB12B14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFB12B74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1AFB12BD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AFB12CB4(uint64_t a1)
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

uint64_t sub_1AFB12D98()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
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
  sub_1AF5C8DA4(v3);
  v1 = v3[1];
  *(v0 + 24) = v3[0];
  *(v0 + 40) = v1;
  *(v0 + 56) = v4;
  return v0;
}

void sub_1AFB12E60(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  v6 = *(v4 + 40);

  os_unfair_lock_unlock(v6);
}

uint64_t sub_1AFB12F5C(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *__return_ptr))
{
  v4 = swift_allocObject();
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
  a3(v7);
  v5 = v7[1];
  *(v4 + 16) = v7[0];
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  return v4;
}

void sub_1AFB1302C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 64);
  v3 = *(v1 + 40);
  v76[0] = *(v1 + 24);
  v76[1] = v3;
  v77 = *(v1 + 56);
  sub_1AF6B06C0(a1, v76, 0x200000000, &v65);
  if (v65)
  {
    if (v72 >= 1)
    {
      v56 = v69;
      if (v69)
      {
        v4 = 0;
        v55 = v68;
        v5 = v71;
        v6 = *(v71 + 32);
        v7 = *(v70 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v73 = v65;
        v74 = v66;
        v75 = v67;
        v53 = v7;
        v54 = v6;
        do
        {
          v8 = (v55 + 48 * v4);
          v9 = *v8;
          v62 = v8[1];
          v10 = *(v8 + 2);
          v11 = *(v8 + 3);
          v13 = *(v8 + 4);
          v12 = *(v8 + 5);
          if (v7)
          {
            v14 = *(v12 + 376);

            os_unfair_lock_lock(v14);
            os_unfair_lock_lock(*(v12 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v6);
          v59 = *(v5 + 64);
          v60 = *(v5 + 48);
          v58 = *(v5 + 80);
          v15 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;
          *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v15, 8);
          *(v5 + 56) = v15;
          *(v5 + 72) = 0;
          *(v5 + 80) = 0;
          *(v5 + 64) = 0;
          v16 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v10, v11, v13, v5);
          v61 = v12;
          v17 = sub_1AF64B110(&type metadata for SineMoveAction, &off_1F2510728, v10, v11, v13, v5);
          v18 = v2 + *(v57 + 16);
          *(v57 + 16) = v18;
          if (v9 != v62)
          {
            v19 = v62 - v9;
            v20 = (v16 + 16 * v9);
            v21 = v17 + 32 * v9 + 8;
            do
            {
              v22 = *(v21 - 8);
              v63 = *(v21 + 8);
              v23 = v22 * sinf((v18 * *(v21 - 4)) + *v21);
              *&v24 = vmuls_lane_f32(v23, v63, 2);
              *&v25 = vmulq_n_f32(v63, v23).u64[0];
              *(&v25 + 1) = __PAIR64__(1.0, v24);
              *v20++ = v25;
              v21 += 32;
              --v19;
            }

            while (v19);
          }

          v26 = *(v5 + 48);
          v27 = *(v5 + 64);
          if (!v27)
          {
            v49 = *(v5 + 56);
            v50 = *(v5 + 32);
            v6 = v54;
            v7 = v53;
            v51 = v12;
            v52 = v58;
            goto LABEL_42;
          }

          v64 = v4;
          for (i = 0; i != v27; ++i)
          {
            v30 = (v26 + 48 * i);
            v31 = *v30;
            v32 = v30[4];
            v33 = *(v5 + 72);
            if (v33)
            {
              v34 = v31 == v33;
            }

            else
            {
              v34 = 0;
            }

            if (v34)
            {
              goto LABEL_14;
            }

            v35 = v73;
            if (!v73[11])
            {
              goto LABEL_14;
            }

            v36 = v30[2];
            v37 = v73 + 41;
            v38 = v73[9];
            if (v38 >= 0x10)
            {
              v39 = &v37[v73[8]];
              v40 = v38 >> 4;
              v41 = v73 + 41;
              while (*v39 != v31)
              {
                ++v41;
                v39 += 16;
                if (!--v40)
                {
                  goto LABEL_30;
                }
              }

              v42 = v41[v73[10]];
              v43 = v42 > 5;
              v44 = (1 << v42) & 0x23;
              if (v43 || v44 == 0)
              {
LABEL_14:

                v32(v29);

                continue;
              }
            }

LABEL_30:
            if (swift_conformsToProtocol2() && v36)
            {
              if (sub_1AF5FC8D8(v36))
              {
                goto LABEL_14;
              }

              v46 = v35[9];
              if (v46 < 0x10)
              {
                goto LABEL_14;
              }

              v47 = &v37[v35[8]];
              v48 = 16 * (v46 >> 4);
              while (*v47 != v36)
              {
                v47 += 16;
                v48 -= 16;
                if (!v48)
                {
                  goto LABEL_14;
                }
              }
            }
          }

          v49 = *(v5 + 56);
          v26 = *(v5 + 48);
          v50 = *(v5 + 32);
          v6 = v54;
          v7 = v53;
          v51 = v61;
          v52 = v58;
          if (*(v5 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v4 = v64;
LABEL_42:
          ecs_stack_allocator_deallocate(v50, v26, 48 * v49);
          *(v5 + 48) = v60;
          *(v5 + 64) = v59;
          *(v5 + 80) = v52;
          sub_1AF62D29C(v51);
          ecs_stack_allocator_pop_snapshot(v6);
          if (v7)
          {
            os_unfair_lock_unlock(*(v51 + 344));
            os_unfair_lock_unlock(*(v51 + 376));
          }

          ++v4;
        }

        while (v4 != v56);
      }
    }

    sub_1AF5D1564(&v65);
  }
}

void sub_1AFB13494(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 48);
  v3 = *(v1 + 32);
  v52[0] = *(v1 + 16);
  v52[1] = v3;
  v53 = *(v1 + 48);
  sub_1AF6B06C0(a1, v52, 0x200000000, &v39);
  if (v39)
  {
    if (v46 >= 1)
    {
      v35 = v43;
      if (v43)
      {
        v4 = 0;
        v5 = 0;
        v6 = v2;
        v34 = v42;
        v7 = v45;
        v8 = *(v45 + 32);
        v9 = *(v44 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v47 = v39;
        v48 = v40;
        v49 = v41;
        v32 = v9;
        v33 = v8;
        do
        {
          v36 = v5;
          v10 = (v34 + 48 * v4);
          v12 = *v10;
          v11 = v10[1];
          v14 = *(v10 + 2);
          v13 = *(v10 + 3);
          v15 = *(v10 + 4);
          v16 = *(v10 + 5);
          if (v9)
          {
            v17 = *(v16 + 376);

            os_unfair_lock_lock(v17);
            os_unfair_lock_lock(*(v16 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v8);
          v18 = *(v7 + 64);
          v50[0] = *(v7 + 48);
          v50[1] = v18;
          v51 = *(v7 + 80);
          v19 = *(*(*(*(v16 + 40) + 16) + 32) + 16) + 1;
          *(v7 + 48) = ecs_stack_allocator_allocate(*(v7 + 32), 48 * v19, 8);
          *(v7 + 56) = v19;
          *(v7 + 72) = 0;
          *(v7 + 80) = 0;
          *(v7 + 64) = 0;
          v20 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v14, v13, v15, v7);
          v21 = sub_1AF64B110(&type metadata for SineYAction, &off_1F2510980, v14, v13, v15, v7);
          if (v12 == v11)
          {
            v22 = v37;
          }

          else
          {
            v23 = v11 - v12;
            v24 = (v20 + 16 * v12);
            v25 = (v21 + 12 * v12 + 8);
            v26 = HIDWORD(v37);
            do
            {
              v38 = v26;
              v27 = *(v25 - 2);
              v28 = *(v25 - 1) * v6;
              v29 = *v25;
              v25 += 3;
              v30 = sinf(v28 + v29);
              v22 = *v24;
              HIDWORD(v22) = v38;
              v31 = v22;
              *(&v31 + 1) = v27 * v30;
              HIDWORD(v31) = 1.0;
              *v24++ = v31;
              v26 = v38;
              --v23;
            }

            while (v23);
          }

          v37 = v22;
          v5 = v36;
          sub_1AF630994(v7, &v47, v50);
          sub_1AF62D29C(v16);
          v8 = v33;
          ecs_stack_allocator_pop_snapshot(v33);
          v9 = v32;
          if (v32)
          {
            os_unfair_lock_unlock(*(v16 + 344));
            os_unfair_lock_unlock(*(v16 + 376));
          }

          ++v4;
        }

        while (v4 != v35);
      }
    }

    sub_1AF5D1564(&v39);
  }
}

void sub_1AFB13750(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 64);
  v3 = *(v1 + 32);
  v50[0] = *(v1 + 16);
  v50[1] = v3;
  v51 = *(v1 + 48);
  sub_1AF6B06C0(a1, v50, 0x200000000, &v37);
  if (v37)
  {
    if (v44 >= 1)
    {
      v35 = v41;
      if (v41)
      {
        v4 = 0;
        v5 = 0;
        v34 = v40;
        v6 = v43;
        v7 = *(v43 + 32);
        v8 = *(v42 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v45 = v37;
        v46 = v38;
        v47 = v39;
        v32 = v8;
        v33 = v7;
        do
        {
          v36 = v5;
          v9 = (v34 + 48 * v4);
          v11 = *v9;
          v10 = v9[1];
          v13 = *(v9 + 2);
          v12 = *(v9 + 3);
          v14 = *(v9 + 4);
          v15 = *(v9 + 5);
          if (v8)
          {
            v16 = *(v15 + 376);

            os_unfair_lock_lock(v16);
            os_unfair_lock_lock(*(v15 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v7);
          v17 = *(v6 + 64);
          v48[0] = *(v6 + 48);
          v48[1] = v17;
          v49 = *(v6 + 80);
          v18 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;
          *(v6 + 48) = ecs_stack_allocator_allocate(*(v6 + 32), 48 * v18, 8);
          *(v6 + 56) = v18;
          *(v6 + 72) = 0;
          *(v6 + 80) = 0;
          *(v6 + 64) = 0;
          v19 = sub_1AF64B110(&type metadata for RotateAction, &off_1F2510678, v13, v12, v14, v6);
          v20 = sub_1AF64B110(&type metadata for Orientation, &off_1F252C8A8, v13, v12, v14, v6);
          if (v11 != v10)
          {
            v21 = v10 - v11;
            v22 = (v20 + 16 * v11);
            v23 = (v19 + 32 * v11 + 16);
            do
            {
              v24 = v2 * v23[-1].f32[0];
              v25 = *v23;
              v23 += 2;
              v26 = __sincosf_stret(v24 * 0.5);
              v27 = vmulq_n_f32(v25, v26.__sinval);
              v27.i32[3] = LODWORD(v26.__cosval);
              v28 = vnegq_f32(v27);
              v29 = vtrn2q_s32(v27, vtrn1q_s32(v27, v28));
              v30 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v27, v28, 8uLL), *v22, 1), vextq_s8(v29, v29, 8uLL), COERCE_FLOAT(*v22->f32));
              v31 = vrev64q_s32(v27);
              v31.i32[0] = v28.i32[1];
              v31.i32[3] = v28.i32[2];
              *v22->f32 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v27, *v22->f32, 3), v31, *v22->f32, 2), v30);
              v22 += 2;
              --v21;
            }

            while (v21);
          }

          v5 = v36;
          sub_1AF630994(v6, &v45, v48);
          sub_1AF62D29C(v15);
          v7 = v33;
          ecs_stack_allocator_pop_snapshot(v33);
          v8 = v32;
          if (v32)
          {
            os_unfair_lock_unlock(*(v15 + 344));
            os_unfair_lock_unlock(*(v15 + 376));
          }

          ++v4;
        }

        while (v4 != v35);
      }
    }

    sub_1AF5D1564(&v37);
  }
}

uint64_t sub_1AFB13A40()
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
  sub_1AF704CF4(2, v3);
  v1 = v3[1];
  *(v0 + 16) = v3[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v4;
  return v0;
}

void sub_1AFB13B04(uint64_t a1)
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

uint64_t sub_1AFB13BC0(uint64_t a1)
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v15[5] = qword_1ED73B840;
  v16 = 0;
  v17 = 2;
  v18 = 0;
  v19 = 2;
  v20 = 0;
  sub_1AF8D4BEC(1, 1, 1, v12);
  v2 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v3 = sub_1AF6D6B58();
  v4 = v12[0];
  os_unfair_lock_lock(*(v2 + 40));
  sub_1AF6B1714(a1, v4);

  sub_1AF6B1B20(a1, v3, v4);
  os_unfair_lock_unlock(*(v2 + 40));
  sub_1AFB191D8(v12, sub_1AFB19238);
  sub_1AF8D4998(1, 1, 1, v13);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  v6 = v13[0];
  os_unfair_lock_lock(*(v2 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v5, v6);
  os_unfair_lock_unlock(*(v2 + 40));
  sub_1AFB190D4(v13, &unk_1ED7239A0, sub_1AF71963C, sub_1AF5C55B8, sub_1AFB19134);
  sub_1AF8D496C(1, 1, 1, v14);
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  v8 = v14[0];
  os_unfair_lock_lock(*(v2 + 40));
  sub_1AF6B1714(a1, v8);

  sub_1AF6B1B20(a1, v7, v8);
  os_unfair_lock_unlock(*(v2 + 40));
  sub_1AFB190D4(v14, &unk_1ED723998, sub_1AF71956C, sub_1AF5C5484, sub_1AFB19134);
  sub_1AF8D4940(1, 1, 1, v15);
  swift_getObjectType();
  v9 = sub_1AF6D6B58();
  v10 = v15[0];
  os_unfair_lock_lock(*(v2 + 40));
  sub_1AF6B1714(a1, v10);

  sub_1AF6B1B20(a1, v9, v10);
  os_unfair_lock_unlock(*(v2 + 40));
  return sub_1AFB190D4(v15, &unk_1ED723990, sub_1AF719438, sub_1AF5C53B4, sub_1AFB19134);
}

uint64_t sub_1AFB13F90(uint64_t a1)
{
  sub_1AFB1460C(a1);
  sub_1AFB14E78(a1);
  sub_1AFB15790(a1);

  return sub_1AFB16084(a1);
}

void sub_1AFB13FF0(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = v1[7];
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  os_unfair_lock_unlock(*(v4 + 40));
  v8 = v1[12];
  swift_getObjectType();
  v9 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v8);

  sub_1AF6B1B20(a1, v9, v8);
  os_unfair_lock_unlock(*(v4 + 40));
  v10 = v1[17];
  swift_getObjectType();
  v11 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v10);

  sub_1AF6B1B20(a1, v11, v10);
  v12 = *(v4 + 40);

  os_unfair_lock_unlock(v12);
}

uint64_t sub_1AFB14224(uint64_t a1)
{
  v3 = *(v1 + 32);
  v14[0] = *(v1 + 16);
  v14[1] = v3;
  v15 = *(v1 + 48);
  sub_1AFB16994(v14, a1);
  v4 = *(v1 + 72);
  v12[0] = *(v1 + 56);
  v12[1] = v4;
  v13 = *(v1 + 88);
  sub_1AFB17100(v12, a1);
  v5 = *(v1 + 112);
  v10[0] = *(v1 + 96);
  v10[1] = v5;
  v11 = *(v1 + 128);
  sub_1AFB1766C(v10, a1);
  v6 = *(v1 + 152);
  v8[0] = *(v1 + 136);
  v8[1] = v6;
  v9 = *(v1 + 168);
  return sub_1AFB17E54(v8, a1);
}

uint64_t sub_1AFB142C4()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v14 = qword_1ED73B840;
  v15 = 0;
  v16 = 2;
  v17 = 0;
  v18 = 2;
  v19 = 0;
  sub_1AF7049E0(1, v6);
  v1 = v6[1];
  *(v0 + 16) = v6[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v7;
  sub_1AF704C1C(1, v8);
  v2 = v8[1];
  *(v0 + 56) = v8[0];
  *(v0 + 72) = v2;
  *(v0 + 88) = v9;
  sub_1AF704C3C(1, v10);
  v3 = v10[1];
  *(v0 + 96) = v10[0];
  *(v0 + 112) = v3;
  *(v0 + 128) = v11;
  sub_1AF704C5C(1, v12);
  v4 = v12[1];
  *(v0 + 136) = v12[0];
  *(v0 + 152) = v4;
  *(v0 + 168) = v13;
  return v0;
}

void *sub_1AFB143F0(void *a1, uint64_t a2)
{
  sub_1AFB19430(0, qword_1ED72C208, type metadata accessor for BasicAnimation);
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[2];
  sub_1AF64B110(v7, &off_1F2511590, v3, v4, v5, v6);
  sub_1AFB19430(0, qword_1ED7287E0, type metadata accessor for BasicAnimationRuntime);
  v9 = sub_1AF64B110(v8, &off_1F2511570, v3, v4, v5, v6);
  v10 = sub_1AF64B110(&type metadata for AnimationTimeSource, &off_1F2510EB8, v3, v4, v5, v6);
  v12 = a1[6];
  v11 = a1[7];
  result = ecs_stack_allocator_allocate(v6[4], 8 * (v11 - v12), 8);
  if (v11 != v12)
  {
    v14 = 0;
    v15 = (v10 + 60 * v12 + 57);
    v16 = v9 + 32 * v12 + 16;
    v25 = result;
    v26 = v11;
    do
    {
      if (*(v15 - 1) == 1)
      {
        v18 = *(v16 + 8);
        v17 = *(v16 + 12);
        v19 = v18 == -1 && v17 == 0;
        if (!v19 && *(v16 - 8))
        {
          v20 = *(v15 - 5);
          v21 = *v16;
          ObjectType = swift_getObjectType();
          v22 = v20 * *(v16 - 12);
          v30 = MEMORY[0x1E69E6448];
          v29[0] = v22 + *(v16 - 16);
          v23 = *(v21 + 16);
          swift_unknownObjectRetain();
          v24 = v21;
          v11 = v26;
          v23(v18 | (v17 << 32), a2, v29, ObjectType, v24);
          swift_unknownObjectRelease();
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v29);
          result = v25;
        }
      }

      if (*v15 == 1)
      {
        result[v14++] = v12;
      }

      ++v12;
      v15 += 60;
      v16 += 32;
    }

    while (v11 != v12);
  }

  return result;
}

uint64_t sub_1AFB1460C(uint64_t a1)
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v86 = qword_1ED73B840;
  v87 = 0;
  v88 = 2;
  v89 = 0;
  v90 = 2;
  v91 = 0;
  sub_1AF704DB8(1, &v55);
  v99 = v55;
  v100 = v56;
  v101 = v57;
  v102 = v58 | 4;
  v103 = 2;
  v104 = v59;
  sub_1AF6B06C0(a1, &v99, 0x200000000, &v60);
  if (v60)
  {
    v95 = v63;
    v96 = v64;
    v97 = v65;
    v93 = v61;
    v94 = v62;
    v98 = v66;
    v92 = v60;

    sub_1AFD1E9DC(&v92, a1);

    sub_1AFB191D8(&v60, sub_1AF5C3C90);
  }

  sub_1AF8D4BEC(1, 1, 1, v67);
  v76[0] = v67[0];
  v76[1] = v67[1];
  v77 = v68;
  sub_1AF6B06C0(a1, v76, 0x200000000, v69);
  if (*v69)
  {
    v47 = v72;
    if (v72 > 0)
    {
      v46 = *(&v70 + 1);
      if (*(&v70 + 1))
      {
        v45 = *&v69[40];
        v2 = *(&v71 + 1);
        v44 = v71;
        v3 = *(v71 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v53 = *(*(&v71 + 1) + 32);
        v73 = *v69;
        v74 = *&v69[8];
        v75 = *&v69[24];
        v54[2] = *&v69[32];
        v54[3] = v70;
        v54[4] = v71;
        v54[5] = v72;
        v54[0] = *v69;
        v54[1] = *&v69[16];
        sub_1AF5DD298(v54, &v78);
        v4 = 0;
        v43 = v3;
        v42 = a1;
        while (1)
        {
          v52 = v4;
          v5 = (v45 + 48 * v4);
          v6 = *v5;
          v7 = v5[1];
          v8 = v5[2];
          v9 = *(v5 + 2);
          v10 = *(v5 + 3);
          v11 = *(v5 + 4);
          v12 = *(v5 + 5);
          if (v3)
          {
            v13 = *(v12 + 376);

            os_unfair_lock_lock(v13);
            os_unfair_lock_lock(*(v12 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v53);
          v49 = *(v2 + 64);
          v50 = *(v2 + 48);
          v48 = *(v2 + 80);
          v14 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;
          *(v2 + 48) = ecs_stack_allocator_allocate(*(v2 + 32), 48 * v14, 8);
          *(v2 + 56) = v14;
          *(v2 + 72) = 0;
          *(v2 + 80) = 0;
          *(v2 + 64) = 0;
          *&v78 = v44;
          v51 = v12;
          *(&v78 + 1) = v12;
          *&v79 = v2;
          *(&v79 + 1) = v8;
          *&v80 = (v7 - v6 + v8);
          *(&v80 + 1) = v47;
          *&v81 = v6;
          *(&v81 + 1) = v7;
          v82 = 0uLL;
          LOBYTE(v83) = 1;
          *(&v83 + 1) = v9;
          v84 = v10;
          v85 = v11;
          sub_1AFB143F0(&v78, a1);
          v15 = *(v2 + 48);
          v16 = *(v2 + 64);
          if (!v16)
          {
            v38 = *(v2 + 56);
            v39 = *(v2 + 32);
            v40 = v52;
            goto LABEL_43;
          }

          for (i = 0; i != v16; ++i)
          {
            v19 = (v15 + 48 * i);
            v20 = *v19;
            v21 = v19[4];
            v22 = *(v2 + 72);
            if (v22)
            {
              v23 = v20 == v22;
            }

            else
            {
              v23 = 0;
            }

            if (v23)
            {
              goto LABEL_15;
            }

            v24 = v73;
            if (!v73[11])
            {
              goto LABEL_15;
            }

            v25 = v19[2];
            v26 = v73 + 41;
            v27 = v73[9];
            if (v27 >= 0x10)
            {
              v28 = &v26[v73[8]];
              v29 = v27 >> 4;
              v30 = v73 + 41;
              while (*v28 != v20)
              {
                ++v30;
                v28 += 16;
                if (!--v29)
                {
                  goto LABEL_31;
                }
              }

              v31 = v30[v73[10]];
              v32 = v31 > 5;
              v33 = (1 << v31) & 0x23;
              if (v32 || v33 == 0)
              {
LABEL_15:

                v21(v18);

                continue;
              }
            }

LABEL_31:
            if (swift_conformsToProtocol2() && v25)
            {
              if (sub_1AF5FC8D8(v25))
              {
                goto LABEL_15;
              }

              v35 = v24[9];
              if (v35 < 0x10)
              {
                goto LABEL_15;
              }

              v36 = &v26[v24[8]];
              v37 = 16 * (v35 >> 4);
              while (*v36 != v25)
              {
                v36 += 16;
                v37 -= 16;
                if (!v37)
                {
                  goto LABEL_15;
                }
              }
            }
          }

          v38 = *(v2 + 56);
          v15 = *(v2 + 48);
          v39 = *(v2 + 32);
          v40 = v52;
          if (*(v2 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          a1 = v42;
LABEL_43:
          ecs_stack_allocator_deallocate(v39, v15, 48 * v38);
          *(v2 + 48) = v50;
          *(v2 + 64) = v49;
          *(v2 + 80) = v48;
          sub_1AF62D29C(v51);
          ecs_stack_allocator_pop_snapshot(v53);
          v3 = v43;
          if (v43)
          {
            os_unfair_lock_unlock(*(v51 + 344));
            os_unfair_lock_unlock(*(v51 + 376));
          }

          v4 = v40 + 1;
          if (v4 == v46)
          {
            goto LABEL_46;
          }
        }
      }
    }

    v80 = *&v69[32];
    v81 = v70;
    v82 = v71;
    v83 = v72;
    v78 = *v69;
    v79 = *&v69[16];
    sub_1AF5DD298(&v78, v54);
LABEL_46:
    sub_1AFB191D8(v67, sub_1AFB19238);
    sub_1AFB193D4(&v55, &qword_1EB642988, qword_1ED72C208, type metadata accessor for BasicAnimation);
    sub_1AFB191D8(v69, sub_1AF5C3C90);
    return sub_1AFB191D8(v69, sub_1AF5C3C90);
  }

  else
  {
    sub_1AFB191D8(v67, sub_1AFB19238);
    return sub_1AFB193D4(&v55, &qword_1EB642988, qword_1ED72C208, type metadata accessor for BasicAnimation);
  }
}

void *sub_1AFB14C68(void *a1, uint64_t a2)
{
  sub_1AF71963C();
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[2];
  sub_1AF64B110(v7, &off_1F2511590, v3, v4, v5, v6);
  sub_1AF5C55B8();
  v9 = sub_1AF64B110(v8, &off_1F2511570, v3, v4, v5, v6);
  v10 = sub_1AF64B110(&type metadata for AnimationTimeSource, &off_1F2510EB8, v3, v4, v5, v6);
  v12 = a1[6];
  v11 = a1[7];
  result = ecs_stack_allocator_allocate(v6[4], 8 * (v11 - v12), 8);
  if (v11 != v12)
  {
    v14 = 0;
    v15 = (v10 + 60 * v12 + 57);
    v16 = v9 + 40 * v12 + 24;
    v24 = v11;
    v25 = result;
    do
    {
      if (*(v15 - 1) == 1)
      {
        v18 = *(v16 + 8);
        v17 = *(v16 + 12);
        v19 = v18 == -1 && v17 == 0;
        if (!v19 && *(v16 - 8))
        {
          v27 = *(v15 - 5);
          v20 = *v16;
          ObjectType = swift_getObjectType();
          v21 = *(v16 - 16);
          sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
          v29[3] = v22;
          v29[0] = vadd_f32(vmul_n_f32(v21, v27), *(v16 - 24));
          v23 = *(v20 + 16);
          swift_unknownObjectRetain();
          v23(v18 | (v17 << 32), a2, v29, ObjectType, v20);
          v11 = v24;
          swift_unknownObjectRelease();
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v29);
          result = v25;
        }
      }

      if (*v15 == 1)
      {
        result[v14++] = v12;
      }

      ++v12;
      v15 += 60;
      v16 += 40;
    }

    while (v11 != v12);
  }

  return result;
}

uint64_t sub_1AFB14E78(uint64_t a1)
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v86 = qword_1ED73B840;
  v87 = 0;
  v88 = 2;
  v89 = 0;
  v90 = 2;
  v91 = 0;
  sub_1AF704D98(1, &v55);
  v99 = v55;
  v100 = v56;
  v101 = v57;
  v102 = v58 | 4;
  v103 = 2;
  v104 = v59;
  sub_1AF6B06C0(a1, &v99, 0x200000000, &v60);
  if (v60)
  {
    v95 = v63;
    v96 = v64;
    v97 = v65;
    v93 = v61;
    v94 = v62;
    v98 = v66;
    v92 = v60;

    sub_1AFD1E08C(&v92, a1);

    sub_1AFB191D8(&v60, sub_1AF5C3C90);
  }

  sub_1AF8D4998(1, 1, 1, v67);
  v76[0] = v67[0];
  v76[1] = v67[1];
  v77 = v68;
  sub_1AF6B06C0(a1, v76, 0x200000000, v69);
  if (*v69)
  {
    v47 = v72;
    if (v72 > 0)
    {
      v46 = *(&v70 + 1);
      if (*(&v70 + 1))
      {
        v45 = *&v69[40];
        v2 = *(&v71 + 1);
        v44 = v71;
        v3 = *(v71 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v53 = *(*(&v71 + 1) + 32);
        v73 = *v69;
        v74 = *&v69[8];
        v75 = *&v69[24];
        v54[2] = *&v69[32];
        v54[3] = v70;
        v54[4] = v71;
        v54[5] = v72;
        v54[0] = *v69;
        v54[1] = *&v69[16];
        sub_1AF5DD298(v54, &v78);
        v4 = 0;
        v43 = v3;
        v42 = a1;
        while (1)
        {
          v52 = v4;
          v5 = (v45 + 48 * v4);
          v6 = *v5;
          v7 = v5[1];
          v8 = v5[2];
          v9 = *(v5 + 2);
          v10 = *(v5 + 3);
          v11 = *(v5 + 4);
          v12 = *(v5 + 5);
          if (v3)
          {
            v13 = *(v12 + 376);

            os_unfair_lock_lock(v13);
            os_unfair_lock_lock(*(v12 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v53);
          v49 = *(v2 + 64);
          v50 = *(v2 + 48);
          v48 = *(v2 + 80);
          v14 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;
          *(v2 + 48) = ecs_stack_allocator_allocate(*(v2 + 32), 48 * v14, 8);
          *(v2 + 56) = v14;
          *(v2 + 72) = 0;
          *(v2 + 80) = 0;
          *(v2 + 64) = 0;
          *&v78 = v44;
          v51 = v12;
          *(&v78 + 1) = v12;
          *&v79 = v2;
          *(&v79 + 1) = v8;
          *&v80 = (v7 - v6 + v8);
          *(&v80 + 1) = v47;
          *&v81 = v6;
          *(&v81 + 1) = v7;
          v82 = 0uLL;
          LOBYTE(v83) = 1;
          *(&v83 + 1) = v9;
          v84 = v10;
          v85 = v11;
          sub_1AFB14C68(&v78, a1);
          v15 = *(v2 + 48);
          v16 = *(v2 + 64);
          if (!v16)
          {
            v38 = *(v2 + 56);
            v39 = *(v2 + 32);
            v40 = v52;
            goto LABEL_43;
          }

          for (i = 0; i != v16; ++i)
          {
            v19 = (v15 + 48 * i);
            v20 = *v19;
            v21 = v19[4];
            v22 = *(v2 + 72);
            if (v22)
            {
              v23 = v20 == v22;
            }

            else
            {
              v23 = 0;
            }

            if (v23)
            {
              goto LABEL_15;
            }

            v24 = v73;
            if (!v73[11])
            {
              goto LABEL_15;
            }

            v25 = v19[2];
            v26 = v73 + 41;
            v27 = v73[9];
            if (v27 >= 0x10)
            {
              v28 = &v26[v73[8]];
              v29 = v27 >> 4;
              v30 = v73 + 41;
              while (*v28 != v20)
              {
                ++v30;
                v28 += 16;
                if (!--v29)
                {
                  goto LABEL_31;
                }
              }

              v31 = v30[v73[10]];
              v32 = v31 > 5;
              v33 = (1 << v31) & 0x23;
              if (v32 || v33 == 0)
              {
LABEL_15:

                v21(v18);

                continue;
              }
            }

LABEL_31:
            if (swift_conformsToProtocol2() && v25)
            {
              if (sub_1AF5FC8D8(v25))
              {
                goto LABEL_15;
              }

              v35 = v24[9];
              if (v35 < 0x10)
              {
                goto LABEL_15;
              }

              v36 = &v26[v24[8]];
              v37 = 16 * (v35 >> 4);
              while (*v36 != v25)
              {
                v36 += 16;
                v37 -= 16;
                if (!v37)
                {
                  goto LABEL_15;
                }
              }
            }
          }

          v38 = *(v2 + 56);
          v15 = *(v2 + 48);
          v39 = *(v2 + 32);
          v40 = v52;
          if (*(v2 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          a1 = v42;
LABEL_43:
          ecs_stack_allocator_deallocate(v39, v15, 48 * v38);
          *(v2 + 48) = v50;
          *(v2 + 64) = v49;
          *(v2 + 80) = v48;
          sub_1AF62D29C(v51);
          ecs_stack_allocator_pop_snapshot(v53);
          v3 = v43;
          if (v43)
          {
            os_unfair_lock_unlock(*(v51 + 344));
            os_unfair_lock_unlock(*(v51 + 376));
          }

          v4 = v40 + 1;
          if (v4 == v46)
          {
            goto LABEL_46;
          }
        }
      }
    }

    v80 = *&v69[32];
    v81 = v70;
    v82 = v71;
    v83 = v72;
    v78 = *v69;
    v79 = *&v69[16];
    sub_1AF5DD298(&v78, v54);
LABEL_46:
    sub_1AFB190D4(v67, &unk_1ED7239A0, sub_1AF71963C, sub_1AF5C55B8, sub_1AFB19134);
    sub_1AFB190D4(&v55, &unk_1EB642980, sub_1AF71963C, &off_1F2511590, sub_1AFB19370);
    sub_1AFB191D8(v69, sub_1AF5C3C90);
    return sub_1AFB191D8(v69, sub_1AF5C3C90);
  }

  else
  {
    sub_1AFB190D4(v67, &unk_1ED7239A0, sub_1AF71963C, sub_1AF5C55B8, sub_1AFB19134);
    return sub_1AFB190D4(&v55, &unk_1EB642980, sub_1AF71963C, &off_1F2511590, sub_1AFB19370);
  }
}

void *sub_1AFB1554C(void *a1, uint64_t a2)
{
  sub_1AF71956C();
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[2];
  sub_1AF64B110(v7, &off_1F2511590, v3, v4, v5, v6);
  sub_1AF5C5484();
  v9 = sub_1AF64B110(v8, &off_1F2511570, v3, v4, v5, v6);
  v10 = sub_1AF64B110(&type metadata for AnimationTimeSource, &off_1F2510EB8, v3, v4, v5, v6);
  v12 = a1[6];
  v11 = a1[7];
  result = ecs_stack_allocator_allocate(v6[4], 8 * (v11 - v12), 8);
  if (v11 != v12)
  {
    v14 = 0;
    v15 = (v10 + 60 * v12 + 57);
    v16 = v9 + (v12 << 6) + 32;
    v24 = v11;
    v25 = result;
    do
    {
      if (*(v15 - 1) == 1)
      {
        v18 = *(v16 + 16);
        v17 = *(v16 + 20);
        v19 = v18 == -1 && v17 == 0;
        if (!v19 && *v16)
        {
          v29 = *(v15 - 5);
          v20 = *(v16 + 8);
          ObjectType = swift_getObjectType();
          v27 = *(v16 - 16);
          sub_1AF87B174(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
          v30[3] = v21;
          v30[0] = swift_allocObject();
          *&v22 = vaddq_f32(vmulq_n_f32(v27, v29), *(v16 - 32)).u64[0];
          *(&v22 + 2) = vmuls_lane_f32(v29, v27, 2) + COERCE_FLOAT(*(v16 - 24));
          HIDWORD(v22) = 0;
          *(v30[0] + 16) = v22;
          v23 = *(v20 + 16);
          swift_unknownObjectRetain();
          v23(v18 | (v17 << 32), a2, v30, ObjectType, v20);
          v11 = v24;
          swift_unknownObjectRelease();
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v30);
          result = v25;
        }
      }

      if (*v15 == 1)
      {
        result[v14++] = v12;
      }

      ++v12;
      v15 += 60;
      v16 += 64;
    }

    while (v11 != v12);
  }

  return result;
}

uint64_t sub_1AFB15790(uint64_t a1)
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v86 = qword_1ED73B840;
  v87 = 0;
  v88 = 2;
  v89 = 0;
  v90 = 2;
  v91 = 0;
  sub_1AF704D78(1, &v55);
  v99 = v55;
  v100 = v56;
  v101 = v57;
  v102 = v58 | 4;
  v103 = 2;
  v104 = v59;
  sub_1AF6B06C0(a1, &v99, 0x200000000, &v60);
  if (v60)
  {
    v95 = v63;
    v96 = v64;
    v97 = v65;
    v93 = v61;
    v94 = v62;
    v98 = v66;
    v92 = v60;

    sub_1AFD1D664(&v92, a1);

    sub_1AFB191D8(&v60, sub_1AF5C3C90);
  }

  sub_1AF8D496C(1, 1, 1, v67);
  v76[0] = v67[0];
  v76[1] = v67[1];
  v77 = v68;
  sub_1AF6B06C0(a1, v76, 0x200000000, v69);
  if (*v69)
  {
    v47 = v72;
    if (v72 > 0)
    {
      v46 = *(&v70 + 1);
      if (*(&v70 + 1))
      {
        v45 = *&v69[40];
        v2 = *(&v71 + 1);
        v44 = v71;
        v3 = *(v71 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v53 = *(*(&v71 + 1) + 32);
        v73 = *v69;
        v74 = *&v69[8];
        v75 = *&v69[24];
        v54[2] = *&v69[32];
        v54[3] = v70;
        v54[4] = v71;
        v54[5] = v72;
        v54[0] = *v69;
        v54[1] = *&v69[16];
        sub_1AF5DD298(v54, &v78);
        v4 = 0;
        v43 = v3;
        v42 = a1;
        while (1)
        {
          v52 = v4;
          v5 = (v45 + 48 * v4);
          v6 = *v5;
          v7 = v5[1];
          v8 = v5[2];
          v9 = *(v5 + 2);
          v10 = *(v5 + 3);
          v11 = *(v5 + 4);
          v12 = *(v5 + 5);
          if (v3)
          {
            v13 = *(v12 + 376);

            os_unfair_lock_lock(v13);
            os_unfair_lock_lock(*(v12 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v53);
          v49 = *(v2 + 64);
          v50 = *(v2 + 48);
          v48 = *(v2 + 80);
          v14 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;
          *(v2 + 48) = ecs_stack_allocator_allocate(*(v2 + 32), 48 * v14, 8);
          *(v2 + 56) = v14;
          *(v2 + 72) = 0;
          *(v2 + 80) = 0;
          *(v2 + 64) = 0;
          *&v78 = v44;
          v51 = v12;
          *(&v78 + 1) = v12;
          *&v79 = v2;
          *(&v79 + 1) = v8;
          *&v80 = (v7 - v6 + v8);
          *(&v80 + 1) = v47;
          *&v81 = v6;
          *(&v81 + 1) = v7;
          v82 = 0uLL;
          LOBYTE(v83) = 1;
          *(&v83 + 1) = v9;
          v84 = v10;
          v85 = v11;
          sub_1AFB1554C(&v78, a1);
          v15 = *(v2 + 48);
          v16 = *(v2 + 64);
          if (!v16)
          {
            v38 = *(v2 + 56);
            v39 = *(v2 + 32);
            v40 = v52;
            goto LABEL_43;
          }

          for (i = 0; i != v16; ++i)
          {
            v19 = (v15 + 48 * i);
            v20 = *v19;
            v21 = v19[4];
            v22 = *(v2 + 72);
            if (v22)
            {
              v23 = v20 == v22;
            }

            else
            {
              v23 = 0;
            }

            if (v23)
            {
              goto LABEL_15;
            }

            v24 = v73;
            if (!v73[11])
            {
              goto LABEL_15;
            }

            v25 = v19[2];
            v26 = v73 + 41;
            v27 = v73[9];
            if (v27 >= 0x10)
            {
              v28 = &v26[v73[8]];
              v29 = v27 >> 4;
              v30 = v73 + 41;
              while (*v28 != v20)
              {
                ++v30;
                v28 += 16;
                if (!--v29)
                {
                  goto LABEL_31;
                }
              }

              v31 = v30[v73[10]];
              v32 = v31 > 5;
              v33 = (1 << v31) & 0x23;
              if (v32 || v33 == 0)
              {
LABEL_15:

                v21(v18);

                continue;
              }
            }

LABEL_31:
            if (swift_conformsToProtocol2() && v25)
            {
              if (sub_1AF5FC8D8(v25))
              {
                goto LABEL_15;
              }

              v35 = v24[9];
              if (v35 < 0x10)
              {
                goto LABEL_15;
              }

              v36 = &v26[v24[8]];
              v37 = 16 * (v35 >> 4);
              while (*v36 != v25)
              {
                v36 += 16;
                v37 -= 16;
                if (!v37)
                {
                  goto LABEL_15;
                }
              }
            }
          }

          v38 = *(v2 + 56);
          v15 = *(v2 + 48);
          v39 = *(v2 + 32);
          v40 = v52;
          if (*(v2 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          a1 = v42;
LABEL_43:
          ecs_stack_allocator_deallocate(v39, v15, 48 * v38);
          *(v2 + 48) = v50;
          *(v2 + 64) = v49;
          *(v2 + 80) = v48;
          sub_1AF62D29C(v51);
          ecs_stack_allocator_pop_snapshot(v53);
          v3 = v43;
          if (v43)
          {
            os_unfair_lock_unlock(*(v51 + 344));
            os_unfair_lock_unlock(*(v51 + 376));
          }

          v4 = v40 + 1;
          if (v4 == v46)
          {
            goto LABEL_46;
          }
        }
      }
    }

    v80 = *&v69[32];
    v81 = v70;
    v82 = v71;
    v83 = v72;
    v78 = *v69;
    v79 = *&v69[16];
    sub_1AF5DD298(&v78, v54);
LABEL_46:
    sub_1AFB190D4(v67, &unk_1ED723998, sub_1AF71956C, sub_1AF5C5484, sub_1AFB19134);
    sub_1AFB190D4(&v55, &unk_1EB642978, sub_1AF71956C, &off_1F2511590, sub_1AFB19370);
    sub_1AFB191D8(v69, sub_1AF5C3C90);
    return sub_1AFB191D8(v69, sub_1AF5C3C90);
  }

  else
  {
    sub_1AFB190D4(v67, &unk_1ED723998, sub_1AF71956C, sub_1AF5C5484, sub_1AFB19134);
    return sub_1AFB190D4(&v55, &unk_1EB642978, sub_1AF71956C, &off_1F2511590, sub_1AFB19370);
  }
}

void *sub_1AFB15E64(void *a1, uint64_t a2)
{
  sub_1AF719438();
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[2];
  sub_1AF64B110(v7, &off_1F2511590, v3, v4, v5, v6);
  sub_1AF5C53B4();
  v9 = sub_1AF64B110(v8, &off_1F2511570, v3, v4, v5, v6);
  v10 = sub_1AF64B110(&type metadata for AnimationTimeSource, &off_1F2510EB8, v3, v4, v5, v6);
  v12 = a1[6];
  v11 = a1[7];
  result = ecs_stack_allocator_allocate(v6[4], 8 * (v11 - v12), 8);
  if (v11 != v12)
  {
    v14 = 0;
    v15 = (v10 + 60 * v12 + 57);
    v16 = v9 + (v12 << 6) + 32;
    v23 = v11;
    v24 = result;
    do
    {
      if (*(v15 - 1) == 1)
      {
        v18 = *(v16 + 16);
        v17 = *(v16 + 20);
        v19 = v18 == -1 && v17 == 0;
        if (!v19 && *v16)
        {
          v27 = *(v15 - 5);
          v20 = *(v16 + 8);
          ObjectType = swift_getObjectType();
          v26 = *(v16 - 16);
          sub_1AF87B174(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
          v29[3] = v21;
          v29[0] = swift_allocObject();
          *(v29[0] + 16) = vaddq_f32(vmulq_n_f32(v26, v27), *(v16 - 32));
          v22 = *(v20 + 16);
          swift_unknownObjectRetain();
          v22(v18 | (v17 << 32), a2, v29, ObjectType, v20);
          v11 = v23;
          swift_unknownObjectRelease();
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v29);
          result = v24;
        }
      }

      if (*v15 == 1)
      {
        result[v14++] = v12;
      }

      ++v12;
      v15 += 60;
      v16 += 64;
    }

    while (v11 != v12);
  }

  return result;
}

uint64_t sub_1AFB16084(uint64_t a1)
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v86 = qword_1ED73B840;
  v87 = 0;
  v88 = 2;
  v89 = 0;
  v90 = 2;
  v91 = 0;
  sub_1AF704D58(1, &v55);
  v99 = v55;
  v100 = v56;
  v101 = v57;
  v102 = v58 | 4;
  v103 = 2;
  v104 = v59;
  sub_1AF6B06C0(a1, &v99, 0x200000000, &v60);
  if (v60)
  {
    v95 = v63;
    v96 = v64;
    v97 = v65;
    v93 = v61;
    v94 = v62;
    v98 = v66;
    v92 = v60;

    sub_1AFD1CB4C(&v92, a1);

    sub_1AFB191D8(&v60, sub_1AF5C3C90);
  }

  sub_1AF8D4940(1, 1, 1, v67);
  v76[0] = v67[0];
  v76[1] = v67[1];
  v77 = v68;
  sub_1AF6B06C0(a1, v76, 0x200000000, v69);
  if (*v69)
  {
    v47 = v72;
    if (v72 > 0)
    {
      v46 = *(&v70 + 1);
      if (*(&v70 + 1))
      {
        v45 = *&v69[40];
        v2 = *(&v71 + 1);
        v44 = v71;
        v3 = *(v71 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v53 = *(*(&v71 + 1) + 32);
        v73 = *v69;
        v74 = *&v69[8];
        v75 = *&v69[24];
        v54[2] = *&v69[32];
        v54[3] = v70;
        v54[4] = v71;
        v54[5] = v72;
        v54[0] = *v69;
        v54[1] = *&v69[16];
        sub_1AF5DD298(v54, &v78);
        v4 = 0;
        v43 = v3;
        v42 = a1;
        while (1)
        {
          v52 = v4;
          v5 = (v45 + 48 * v4);
          v6 = *v5;
          v7 = v5[1];
          v8 = v5[2];
          v9 = *(v5 + 2);
          v10 = *(v5 + 3);
          v11 = *(v5 + 4);
          v12 = *(v5 + 5);
          if (v3)
          {
            v13 = *(v12 + 376);

            os_unfair_lock_lock(v13);
            os_unfair_lock_lock(*(v12 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v53);
          v49 = *(v2 + 64);
          v50 = *(v2 + 48);
          v48 = *(v2 + 80);
          v14 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;
          *(v2 + 48) = ecs_stack_allocator_allocate(*(v2 + 32), 48 * v14, 8);
          *(v2 + 56) = v14;
          *(v2 + 72) = 0;
          *(v2 + 80) = 0;
          *(v2 + 64) = 0;
          *&v78 = v44;
          v51 = v12;
          *(&v78 + 1) = v12;
          *&v79 = v2;
          *(&v79 + 1) = v8;
          *&v80 = (v7 - v6 + v8);
          *(&v80 + 1) = v47;
          *&v81 = v6;
          *(&v81 + 1) = v7;
          v82 = 0uLL;
          LOBYTE(v83) = 1;
          *(&v83 + 1) = v9;
          v84 = v10;
          v85 = v11;
          sub_1AFB15E64(&v78, a1);
          v15 = *(v2 + 48);
          v16 = *(v2 + 64);
          if (!v16)
          {
            v38 = *(v2 + 56);
            v39 = *(v2 + 32);
            v40 = v52;
            goto LABEL_43;
          }

          for (i = 0; i != v16; ++i)
          {
            v19 = (v15 + 48 * i);
            v20 = *v19;
            v21 = v19[4];
            v22 = *(v2 + 72);
            if (v22)
            {
              v23 = v20 == v22;
            }

            else
            {
              v23 = 0;
            }

            if (v23)
            {
              goto LABEL_15;
            }

            v24 = v73;
            if (!v73[11])
            {
              goto LABEL_15;
            }

            v25 = v19[2];
            v26 = v73 + 41;
            v27 = v73[9];
            if (v27 >= 0x10)
            {
              v28 = &v26[v73[8]];
              v29 = v27 >> 4;
              v30 = v73 + 41;
              while (*v28 != v20)
              {
                ++v30;
                v28 += 16;
                if (!--v29)
                {
                  goto LABEL_31;
                }
              }

              v31 = v30[v73[10]];
              v32 = v31 > 5;
              v33 = (1 << v31) & 0x23;
              if (v32 || v33 == 0)
              {
LABEL_15:

                v21(v18);

                continue;
              }
            }

LABEL_31:
            if (swift_conformsToProtocol2() && v25)
            {
              if (sub_1AF5FC8D8(v25))
              {
                goto LABEL_15;
              }

              v35 = v24[9];
              if (v35 < 0x10)
              {
                goto LABEL_15;
              }

              v36 = &v26[v24[8]];
              v37 = 16 * (v35 >> 4);
              while (*v36 != v25)
              {
                v36 += 16;
                v37 -= 16;
                if (!v37)
                {
                  goto LABEL_15;
                }
              }
            }
          }

          v38 = *(v2 + 56);
          v15 = *(v2 + 48);
          v39 = *(v2 + 32);
          v40 = v52;
          if (*(v2 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          a1 = v42;
LABEL_43:
          ecs_stack_allocator_deallocate(v39, v15, 48 * v38);
          *(v2 + 48) = v50;
          *(v2 + 64) = v49;
          *(v2 + 80) = v48;
          sub_1AF62D29C(v51);
          ecs_stack_allocator_pop_snapshot(v53);
          v3 = v43;
          if (v43)
          {
            os_unfair_lock_unlock(*(v51 + 344));
            os_unfair_lock_unlock(*(v51 + 376));
          }

          v4 = v40 + 1;
          if (v4 == v46)
          {
            goto LABEL_46;
          }
        }
      }
    }

    v80 = *&v69[32];
    v81 = v70;
    v82 = v71;
    v83 = v72;
    v78 = *v69;
    v79 = *&v69[16];
    sub_1AF5DD298(&v78, v54);
LABEL_46:
    sub_1AFB190D4(v67, &unk_1ED723990, sub_1AF719438, sub_1AF5C53B4, sub_1AFB19134);
    sub_1AFB190D4(&v55, &unk_1EB642970, sub_1AF719438, &off_1F2511590, sub_1AFB19370);
    sub_1AFB191D8(v69, sub_1AF5C3C90);
    return sub_1AFB191D8(v69, sub_1AF5C3C90);
  }

  else
  {
    sub_1AFB190D4(v67, &unk_1ED723990, sub_1AF719438, sub_1AF5C53B4, sub_1AFB19134);
    return sub_1AFB190D4(&v55, &unk_1EB642970, sub_1AF719438, &off_1F2511590, sub_1AFB19370);
  }
}

void *sub_1AFB16758(void *a1, uint64_t a2)
{
  sub_1AFB19430(0, qword_1ED72FDC8, type metadata accessor for KeyframeAnimation);
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[2];
  sub_1AF64B110(v7, &off_1F2510F68, v3, v4, v5, v6);
  sub_1AFB19430(0, qword_1EB633490, type metadata accessor for KeyframeAnimationRuntime);
  v9 = sub_1AF64B110(v8, &off_1F2511450, v3, v4, v5, v6);
  v10 = sub_1AF64B110(&type metadata for AnimationTimeSource, &off_1F2510EB8, v3, v4, v5, v6);
  v11 = a1[6];
  v12 = a1[7];
  result = ecs_stack_allocator_allocate(v6[4], 8 * (v12 - v11), 8);
  if (v12 != v11)
  {
    v14 = 0;
    v15 = (v10 + 60 * v11 + 57);
    v16 = v9 + 48 * v11 + 24;
    v24 = result;
    do
    {
      if (*(v15 - 1) == 1 && *(v16 - 24))
      {
        v17 = *(v16 + 16);
        v18 = *(v16 + 20);
        if (v17 != -1 || v18 != 0)
        {
          v20 = *(v15 - 5);

          sub_1AF8BEA00((v16 - 16), (v16 - 8), v20);
          if (*v16)
          {
            v21 = *(v16 + 8);
            ObjectType = swift_getObjectType();
            v26 = MEMORY[0x1E69E6448];
            v25[0] = *(v16 - 8);
            (*(v21 + 16))(v17 | (v18 << 32), a2, v25, ObjectType, v21);

            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v25);
          }

          else
          {
          }

          result = v24;
        }
      }

      if (*v15 == 1)
      {
        result[v14++] = v11;
      }

      ++v11;
      v15 += 60;
      v16 += 48;
    }

    while (v12 != v11);
  }

  return result;
}

uint64_t sub_1AFB16994(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v77 = *(a1 + 16);
  v76 = v4;
  v78 = *(a1 + 32);
  v91 = v4;
  v92 = DWORD2(v4);
  v93 = BYTE12(v4);
  v94 = v77 | 4;
  v95 = 2;
  v96 = v78;

  sub_1AF6B06C0(a2, &v91, 0x200000000, &v58);
  if (v58)
  {
    v87 = v61;
    v88 = v62;
    v89 = v63;
    v85 = v59;
    v86 = v60;
    v90 = v64;
    v84 = v58;

    sub_1AFD21330(&v84, a2);

    sub_1AFB191D8(&v58, sub_1AF5C3C90);
  }

  sub_1AF6B06C0(a2, &v76, 0x200000000, &v65);
  if (!v65)
  {
    return sub_1AFB193D4(a1, &qword_1EB6333D0, qword_1ED72FDC8, type metadata accessor for KeyframeAnimation);
  }

  v53 = v72;
  if (v72 <= 0 || (v52 = v69) == 0)
  {
    v44 = a1;
    goto LABEL_45;
  }

  v46 = a1;
  v5 = 0;
  v50 = v68;
  v6 = v71;
  v49 = v70;
  v7 = *(v70 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v8 = *(v71 + 32);
  v73 = v65;
  v74 = v66;
  v75 = v67;
  v48 = v7;
  v51 = a2;
  v47 = v8;
  while (2)
  {
    v57 = v5;
    v9 = (v50 + 48 * v5);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = *(v9 + 2);
    v14 = *(v9 + 3);
    v15 = *(v9 + 4);
    v16 = *(v9 + 5);
    if (v7)
    {
      v17 = *(v16 + 376);

      os_unfair_lock_lock(v17);
      os_unfair_lock_lock(*(v16 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v8);
    v55 = *(v6 + 64);
    v56 = *(v6 + 48);
    v54 = *(v6 + 80);
    v18 = *(*(*(*(v16 + 40) + 16) + 32) + 16) + 1;
    *(v6 + 48) = ecs_stack_allocator_allocate(*(v6 + 32), 48 * v18, 8);
    *(v6 + 56) = v18;
    *(v6 + 72) = 0;
    *(v6 + 80) = 0;
    *(v6 + 64) = 0;
    v79[0] = v49;
    v79[1] = v16;
    v79[2] = v6;
    v79[3] = v12;
    v79[4] = (v11 - v10 + v12);
    v79[5] = v53;
    v79[6] = v10;
    v79[7] = v11;
    v79[8] = 0;
    v79[9] = 0;
    v80 = 1;
    v81 = v13;
    v82 = v14;
    v83 = v15;
    sub_1AFB16758(v79, v51);
    v19 = *(v6 + 48);
    v20 = *(v6 + 64);
    if (!v20)
    {
      v42 = *(v6 + 56);
      v43 = *(v6 + 32);
      goto LABEL_40;
    }

    for (i = 0; i != v20; ++i)
    {
      v23 = (v19 + 48 * i);
      v24 = *v23;
      v25 = v23[4];
      v26 = *(v6 + 72);
      if (v26)
      {
        v27 = v24 == v26;
      }

      else
      {
        v27 = 0;
      }

      if (v27)
      {
        goto LABEL_13;
      }

      v28 = v73;
      if (!v73[11])
      {
        goto LABEL_13;
      }

      v29 = v23[2];
      v30 = v73 + 41;
      v31 = v73[9];
      if (v31 >= 0x10)
      {
        v32 = &v30[v73[8]];
        v33 = v31 >> 4;
        v34 = v73 + 41;
        while (*v32 != v24)
        {
          ++v34;
          v32 += 16;
          if (!--v33)
          {
            goto LABEL_29;
          }
        }

        v35 = v34[v73[10]];
        v36 = v35 > 5;
        v37 = (1 << v35) & 0x23;
        if (v36 || v37 == 0)
        {
LABEL_13:

          v25(v22);

          continue;
        }
      }

LABEL_29:
      if (swift_conformsToProtocol2() && v29)
      {
        if (sub_1AF5FC8D8(v29))
        {
          goto LABEL_13;
        }

        v39 = v28[9];
        if (v39 < 0x10)
        {
          goto LABEL_13;
        }

        v40 = &v30[v28[8]];
        v41 = 16 * (v39 >> 4);
        while (*v40 != v29)
        {
          v40 += 16;
          v41 -= 16;
          if (!v41)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v42 = *(v6 + 56);
    v19 = *(v6 + 48);
    v43 = *(v6 + 32);
    if (*(v6 + 64) >= 1)
    {
      swift_arrayDestroy();
    }

LABEL_40:
    ecs_stack_allocator_deallocate(v43, v19, 48 * v42);
    *(v6 + 48) = v56;
    *(v6 + 64) = v55;
    *(v6 + 80) = v54;
    sub_1AF62D29C(v16);
    v8 = v47;
    ecs_stack_allocator_pop_snapshot(v47);
    v7 = v48;
    if (v48)
    {
      os_unfair_lock_unlock(*(v16 + 344));
      os_unfair_lock_unlock(*(v16 + 376));
    }

    v5 = v57 + 1;
    if (v57 + 1 != v52)
    {
      continue;
    }

    break;
  }

  v44 = v46;
LABEL_45:
  sub_1AFB193D4(v44, &qword_1EB6333D0, qword_1ED72FDC8, type metadata accessor for KeyframeAnimation);
  return sub_1AFB191D8(&v65, sub_1AF5C3C90);
}

void *sub_1AFB16EDC(void *a1, uint64_t a2)
{
  sub_1AF71970C();
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[2];
  sub_1AF64B110(v7, &off_1F2510F68, v3, v4, v5, v6);
  sub_1AF5C5828();
  v9 = sub_1AF64B110(v8, &off_1F2511450, v3, v4, v5, v6);
  v10 = sub_1AF64B110(&type metadata for AnimationTimeSource, &off_1F2510EB8, v3, v4, v5, v6);
  v11 = a1[6];
  v12 = a1[7];
  result = ecs_stack_allocator_allocate(v6[4], 8 * (v12 - v11), 8);
  if (v12 != v11)
  {
    v14 = 0;
    v15 = (v10 + 60 * v11 + 57);
    v16 = v9 + 48 * v11 + 24;
    v24 = result;
    do
    {
      if (*(v15 - 1) == 1 && *(v16 - 24))
      {
        v17 = *(v16 + 16);
        v18 = *(v16 + 20);
        if (v17 != -1 || v18 != 0)
        {
          v20 = *(v15 - 5);

          sub_1AF8BEA00((v16 - 16), (v16 - 8), v20);
          if (*v16)
          {
            v21 = *(v16 + 8);
            ObjectType = swift_getObjectType();
            sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
            v26[3] = v22;
            v26[0] = *(v16 - 8);
            (*(v21 + 16))(v17 | (v18 << 32), a2, v26, ObjectType, v21);

            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v26);
          }

          else
          {
          }

          result = v24;
        }
      }

      if (*v15 == 1)
      {
        result[v14++] = v11;
      }

      ++v11;
      v15 += 60;
      v16 += 48;
    }

    while (v12 != v11);
  }

  return result;
}

uint64_t sub_1AFB17100(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v77 = *(a1 + 16);
  v76 = v4;
  v78 = *(a1 + 32);
  v91 = v4;
  v92 = DWORD2(v4);
  v93 = BYTE12(v4);
  v94 = v77 | 4;
  v95 = 2;
  v96 = v78;

  sub_1AF6B06C0(a2, &v91, 0x200000000, &v58);
  if (v58)
  {
    v87 = v61;
    v88 = v62;
    v89 = v63;
    v85 = v59;
    v86 = v60;
    v90 = v64;
    v84 = v58;

    sub_1AFD2086C(&v84, a2);

    sub_1AFB191D8(&v58, sub_1AF5C3C90);
  }

  sub_1AF6B06C0(a2, &v76, 0x200000000, &v65);
  if (!v65)
  {
    return sub_1AFB190D4(a1, &unk_1EB6333C8, sub_1AF71970C, &off_1F2510F68, sub_1AFB19370);
  }

  v53 = v72;
  if (v72 <= 0 || (v52 = v69) == 0)
  {
    v44 = a1;
    goto LABEL_45;
  }

  v46 = a1;
  v5 = 0;
  v50 = v68;
  v6 = v71;
  v49 = v70;
  v7 = *(v70 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v8 = *(v71 + 32);
  v73 = v65;
  v74 = v66;
  v75 = v67;
  v48 = v7;
  v51 = a2;
  v47 = v8;
  while (2)
  {
    v57 = v5;
    v9 = (v50 + 48 * v5);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = *(v9 + 2);
    v14 = *(v9 + 3);
    v15 = *(v9 + 4);
    v16 = *(v9 + 5);
    if (v7)
    {
      v17 = *(v16 + 376);

      os_unfair_lock_lock(v17);
      os_unfair_lock_lock(*(v16 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v8);
    v55 = *(v6 + 64);
    v56 = *(v6 + 48);
    v54 = *(v6 + 80);
    v18 = *(*(*(*(v16 + 40) + 16) + 32) + 16) + 1;
    *(v6 + 48) = ecs_stack_allocator_allocate(*(v6 + 32), 48 * v18, 8);
    *(v6 + 56) = v18;
    *(v6 + 72) = 0;
    *(v6 + 80) = 0;
    *(v6 + 64) = 0;
    v79[0] = v49;
    v79[1] = v16;
    v79[2] = v6;
    v79[3] = v12;
    v79[4] = (v11 - v10 + v12);
    v79[5] = v53;
    v79[6] = v10;
    v79[7] = v11;
    v79[8] = 0;
    v79[9] = 0;
    v80 = 1;
    v81 = v13;
    v82 = v14;
    v83 = v15;
    sub_1AFB16EDC(v79, v51);
    v19 = *(v6 + 48);
    v20 = *(v6 + 64);
    if (!v20)
    {
      v42 = *(v6 + 56);
      v43 = *(v6 + 32);
      goto LABEL_40;
    }

    for (i = 0; i != v20; ++i)
    {
      v23 = (v19 + 48 * i);
      v24 = *v23;
      v25 = v23[4];
      v26 = *(v6 + 72);
      if (v26)
      {
        v27 = v24 == v26;
      }

      else
      {
        v27 = 0;
      }

      if (v27)
      {
        goto LABEL_13;
      }

      v28 = v73;
      if (!v73[11])
      {
        goto LABEL_13;
      }

      v29 = v23[2];
      v30 = v73 + 41;
      v31 = v73[9];
      if (v31 >= 0x10)
      {
        v32 = &v30[v73[8]];
        v33 = v31 >> 4;
        v34 = v73 + 41;
        while (*v32 != v24)
        {
          ++v34;
          v32 += 16;
          if (!--v33)
          {
            goto LABEL_29;
          }
        }

        v35 = v34[v73[10]];
        v36 = v35 > 5;
        v37 = (1 << v35) & 0x23;
        if (v36 || v37 == 0)
        {
LABEL_13:

          v25(v22);

          continue;
        }
      }

LABEL_29:
      if (swift_conformsToProtocol2() && v29)
      {
        if (sub_1AF5FC8D8(v29))
        {
          goto LABEL_13;
        }

        v39 = v28[9];
        if (v39 < 0x10)
        {
          goto LABEL_13;
        }

        v40 = &v30[v28[8]];
        v41 = 16 * (v39 >> 4);
        while (*v40 != v29)
        {
          v40 += 16;
          v41 -= 16;
          if (!v41)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v42 = *(v6 + 56);
    v19 = *(v6 + 48);
    v43 = *(v6 + 32);
    if (*(v6 + 64) >= 1)
    {
      swift_arrayDestroy();
    }

LABEL_40:
    ecs_stack_allocator_deallocate(v43, v19, 48 * v42);
    *(v6 + 48) = v56;
    *(v6 + 64) = v55;
    *(v6 + 80) = v54;
    sub_1AF62D29C(v16);
    v8 = v47;
    ecs_stack_allocator_pop_snapshot(v47);
    v7 = v48;
    if (v48)
    {
      os_unfair_lock_unlock(*(v16 + 344));
      os_unfair_lock_unlock(*(v16 + 376));
    }

    v5 = v57 + 1;
    if (v57 + 1 != v52)
    {
      continue;
    }

    break;
  }

  v44 = v46;
LABEL_45:
  sub_1AFB190D4(v44, &unk_1EB6333C8, sub_1AF71970C, &off_1F2510F68, sub_1AFB19370);
  return sub_1AFB191D8(&v65, sub_1AF5C3C90);
}

uint64_t sub_1AFB1766C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v77 = *(a1 + 16);
  v76 = v4;
  v78 = *(a1 + 32);
  v91 = v4;
  v92 = DWORD2(v4);
  v93 = BYTE12(v4);
  v94 = v77 | 4;
  v95 = 2;
  v96 = v78;

  sub_1AF6B06C0(a2, &v91, 0x200000000, &v58);
  if (v58)
  {
    v87 = v61;
    v88 = v62;
    v89 = v63;
    v85 = v59;
    v86 = v60;
    v90 = v64;
    v84 = v58;

    sub_1AFD1FF8C(&v84, a2);

    sub_1AFB191D8(&v58, sub_1AF5C3C90);
  }

  sub_1AF6B06C0(a2, &v76, 0x200000000, &v65);
  if (!v65)
  {
    return sub_1AFB190D4(a1, &unk_1EB6333C0, sub_1AF63A530, &off_1F2510F68, sub_1AFB19370);
  }

  v50 = v72;
  if (v72 <= 0 || (v49 = v69) == 0)
  {
    v42 = a1;
    goto LABEL_45;
  }

  v44 = a1;
  v5 = 0;
  v47 = v68;
  v6 = v71;
  v7 = *(v71 + 32);
  v45 = v7;
  v46 = v70;
  v57 = *(v70 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v73 = v65;
  v74 = v66;
  v75 = v67;
  v48 = a2;
  while (2)
  {
    v56 = v5;
    v8 = (v47 + 48 * v5);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];
    v12 = *(v8 + 3);
    v51 = *(v8 + 2);
    v14 = *(v8 + 4);
    v13 = *(v8 + 5);
    if (v57)
    {
      v15 = *(v13 + 376);

      os_unfair_lock_lock(v15);
      os_unfair_lock_lock(*(v13 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v7);
    v53 = *(v6 + 64);
    v54 = *(v6 + 48);
    v52 = *(v6 + 80);
    v16 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
    *(v6 + 48) = ecs_stack_allocator_allocate(*(v6 + 32), 48 * v16, 8);
    *(v6 + 56) = v16;
    *(v6 + 72) = 0;
    *(v6 + 80) = 0;
    *(v6 + 64) = 0;
    v79[0] = v46;
    v79[1] = v13;
    v55 = v13;
    v79[2] = v6;
    v79[3] = v11;
    v79[4] = (v10 - v9 + v11);
    v79[5] = v50;
    v79[6] = v9;
    v79[7] = v10;
    v79[8] = 0;
    v79[9] = 0;
    v80 = 1;
    v81 = v51;
    v82 = v12;
    v83 = v14;
    sub_1AFB17C24(v79, a2, sub_1AF63A530, sub_1AF5C5758, &qword_1ED72F740, MEMORY[0x1E69E7450]);
    v17 = *(v6 + 48);
    v18 = *(v6 + 64);
    if (!v18)
    {
      v40 = *(v6 + 56);
      v41 = *(v6 + 32);
      goto LABEL_40;
    }

    for (i = 0; i != v18; ++i)
    {
      v21 = (v17 + 48 * i);
      v22 = *v21;
      v23 = v21[4];
      v24 = *(v6 + 72);
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
        goto LABEL_13;
      }

      v26 = v73;
      if (!v73[11])
      {
        goto LABEL_13;
      }

      v27 = v21[2];
      v28 = v73 + 41;
      v29 = v73[9];
      if (v29 >= 0x10)
      {
        v30 = &v28[v73[8]];
        v31 = v29 >> 4;
        v32 = v73 + 41;
        while (*v30 != v22)
        {
          ++v32;
          v30 += 16;
          if (!--v31)
          {
            goto LABEL_29;
          }
        }

        v33 = v32[v73[10]];
        v34 = v33 > 5;
        v35 = (1 << v33) & 0x23;
        if (v34 || v35 == 0)
        {
LABEL_13:

          v23(v20);

          continue;
        }
      }

LABEL_29:
      if (swift_conformsToProtocol2() && v27)
      {
        if (sub_1AF5FC8D8(v27))
        {
          goto LABEL_13;
        }

        v37 = v26[9];
        if (v37 < 0x10)
        {
          goto LABEL_13;
        }

        v38 = &v28[v26[8]];
        v39 = 16 * (v37 >> 4);
        while (*v38 != v27)
        {
          v38 += 16;
          v39 -= 16;
          if (!v39)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v40 = *(v6 + 56);
    v17 = *(v6 + 48);
    v41 = *(v6 + 32);
    if (*(v6 + 64) >= 1)
    {
      swift_arrayDestroy();
    }

LABEL_40:
    ecs_stack_allocator_deallocate(v41, v17, 48 * v40);
    *(v6 + 48) = v54;
    *(v6 + 64) = v53;
    *(v6 + 80) = v52;
    sub_1AF62D29C(v55);
    v7 = v45;
    ecs_stack_allocator_pop_snapshot(v45);
    if (v57)
    {
      os_unfair_lock_unlock(*(v55 + 344));
      os_unfair_lock_unlock(*(v55 + 376));
    }

    v5 = v56 + 1;
    a2 = v48;
    if (v56 + 1 != v49)
    {
      continue;
    }

    break;
  }

  v42 = v44;
LABEL_45:
  sub_1AFB190D4(v42, &unk_1EB6333C0, sub_1AF63A530, &off_1F2510F68, sub_1AFB19370);
  return sub_1AFB191D8(&v65, sub_1AF5C3C90);
}

void *sub_1AFB17C24(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t, void, unint64_t))
{
  v8 = a3(0);
  v9 = a1[11];
  v10 = a1[12];
  v11 = a1[13];
  v12 = a1[2];
  sub_1AF64B110(v8, &off_1F2510F68, v9, v10, v11, v12);
  v13 = a4(0);
  v14 = sub_1AF64B110(v13, &off_1F2511450, v9, v10, v11, v12);
  v15 = sub_1AF64B110(&type metadata for AnimationTimeSource, &off_1F2510EB8, v9, v10, v11, v12);
  v16 = a1[6];
  v17 = a1[7];
  result = ecs_stack_allocator_allocate(v12[4], 8 * (v17 - v16), 8);
  if (v17 != v16)
  {
    v19 = 0;
    v20 = (v15 + 60 * v16 + 57);
    v21 = v14 + (v16 << 6) + 32;
    v31 = result;
    do
    {
      if (*(v20 - 1) == 1 && *(v21 - 32))
      {
        v22 = *(v21 + 16);
        v23 = *(v21 + 20);
        if (v22 != -1 || v23 != 0)
        {
          v25 = *(v20 - 5);

          sub_1AF8BEA00((v21 - 24), (v21 - 16), v25);
          if (*v21)
          {
            v26 = *(v21 + 8);
            ObjectType = swift_getObjectType();
            sub_1AF87B174(0, a5, a6);
            v33[3] = v27;
            v33[0] = swift_allocObject();
            *(v33[0] + 16) = *(v21 - 16);
            (*(v26 + 16))(v22 | (v23 << 32), a2, v33, ObjectType, v26);

            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v33);
          }

          else
          {
          }

          result = v31;
        }
      }

      if (*v20 == 1)
      {
        result[v19++] = v16;
      }

      ++v16;
      v20 += 60;
      v21 += 64;
    }

    while (v17 != v16);
  }

  return result;
}

uint64_t sub_1AFB17E54(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v77 = *(a1 + 16);
  v76 = v4;
  v78 = *(a1 + 32);
  v91 = v4;
  v92 = DWORD2(v4);
  v93 = BYTE12(v4);
  v94 = v77 | 4;
  v95 = 2;
  v96 = v78;

  sub_1AF6B06C0(a2, &v91, 0x200000000, &v58);
  if (v58)
  {
    v87 = v61;
    v88 = v62;
    v89 = v63;
    v85 = v59;
    v86 = v60;
    v90 = v64;
    v84 = v58;

    sub_1AFD1F554(&v84, a2);

    sub_1AFB191D8(&v58, sub_1AF5C3C90);
  }

  sub_1AF6B06C0(a2, &v76, 0x200000000, &v65);
  if (!v65)
  {
    return sub_1AFB190D4(a1, &unk_1EB6333B8, sub_1AF63A63C, &off_1F2510F68, sub_1AFB19370);
  }

  v50 = v72;
  if (v72 <= 0 || (v49 = v69) == 0)
  {
    v42 = a1;
    goto LABEL_45;
  }

  v44 = a1;
  v5 = 0;
  v47 = v68;
  v6 = v71;
  v7 = *(v71 + 32);
  v45 = v7;
  v46 = v70;
  v57 = *(v70 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v73 = v65;
  v74 = v66;
  v75 = v67;
  v48 = a2;
  while (2)
  {
    v56 = v5;
    v8 = (v47 + 48 * v5);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];
    v12 = *(v8 + 3);
    v51 = *(v8 + 2);
    v14 = *(v8 + 4);
    v13 = *(v8 + 5);
    if (v57)
    {
      v15 = *(v13 + 376);

      os_unfair_lock_lock(v15);
      os_unfair_lock_lock(*(v13 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v7);
    v53 = *(v6 + 64);
    v54 = *(v6 + 48);
    v52 = *(v6 + 80);
    v16 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
    *(v6 + 48) = ecs_stack_allocator_allocate(*(v6 + 32), 48 * v16, 8);
    *(v6 + 56) = v16;
    *(v6 + 72) = 0;
    *(v6 + 80) = 0;
    *(v6 + 64) = 0;
    v79[0] = v46;
    v79[1] = v13;
    v55 = v13;
    v79[2] = v6;
    v79[3] = v11;
    v79[4] = (v10 - v9 + v11);
    v79[5] = v50;
    v79[6] = v9;
    v79[7] = v10;
    v79[8] = 0;
    v79[9] = 0;
    v80 = 1;
    v81 = v51;
    v82 = v12;
    v83 = v14;
    sub_1AFB17C24(v79, a2, sub_1AF63A63C, sub_1AF5C5688, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
    v17 = *(v6 + 48);
    v18 = *(v6 + 64);
    if (!v18)
    {
      v40 = *(v6 + 56);
      v41 = *(v6 + 32);
      goto LABEL_40;
    }

    for (i = 0; i != v18; ++i)
    {
      v21 = (v17 + 48 * i);
      v22 = *v21;
      v23 = v21[4];
      v24 = *(v6 + 72);
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
        goto LABEL_13;
      }

      v26 = v73;
      if (!v73[11])
      {
        goto LABEL_13;
      }

      v27 = v21[2];
      v28 = v73 + 41;
      v29 = v73[9];
      if (v29 >= 0x10)
      {
        v30 = &v28[v73[8]];
        v31 = v29 >> 4;
        v32 = v73 + 41;
        while (*v30 != v22)
        {
          ++v32;
          v30 += 16;
          if (!--v31)
          {
            goto LABEL_29;
          }
        }

        v33 = v32[v73[10]];
        v34 = v33 > 5;
        v35 = (1 << v33) & 0x23;
        if (v34 || v35 == 0)
        {
LABEL_13:

          v23(v20);

          continue;
        }
      }

LABEL_29:
      if (swift_conformsToProtocol2() && v27)
      {
        if (sub_1AF5FC8D8(v27))
        {
          goto LABEL_13;
        }

        v37 = v26[9];
        if (v37 < 0x10)
        {
          goto LABEL_13;
        }

        v38 = &v28[v26[8]];
        v39 = 16 * (v37 >> 4);
        while (*v38 != v27)
        {
          v38 += 16;
          v39 -= 16;
          if (!v39)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v40 = *(v6 + 56);
    v17 = *(v6 + 48);
    v41 = *(v6 + 32);
    if (*(v6 + 64) >= 1)
    {
      swift_arrayDestroy();
    }

LABEL_40:
    ecs_stack_allocator_deallocate(v41, v17, 48 * v40);
    *(v6 + 48) = v54;
    *(v6 + 64) = v53;
    *(v6 + 80) = v52;
    sub_1AF62D29C(v55);
    v7 = v45;
    ecs_stack_allocator_pop_snapshot(v45);
    if (v57)
    {
      os_unfair_lock_unlock(*(v55 + 344));
      os_unfair_lock_unlock(*(v55 + 376));
    }

    v5 = v56 + 1;
    a2 = v48;
    if (v56 + 1 != v49)
    {
      continue;
    }

    break;
  }

  v42 = v44;
LABEL_45:
  sub_1AFB190D4(v42, &unk_1EB6333B8, sub_1AF63A63C, &off_1F2510F68, sub_1AFB19370);
  return sub_1AFB191D8(&v65, sub_1AF5C3C90);
}

void sub_1AFB1840C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 48);
  v3 = *(v1 + 32);
  v118[0] = *(v1 + 16);
  v118[1] = v3;
  v119 = *(v1 + 48);
  sub_1AF6B06C0(a1, v118, 0x200000000, &v105);
  if (v105)
  {
    if (v112 >= 1)
    {
      v103 = v109;
      if (v109)
      {
        v4 = 0;
        v5 = v2;
        v102 = v108;
        v6 = v111;
        v104 = *(v111 + 32);
        v7 = *(v110 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v113 = v105;
        v114 = v106;
        v115 = v107;
        v101 = v7;
        do
        {
          v8 = (v102 + 48 * v4);
          v10 = *v8;
          v9 = v8[1];
          v12 = *(v8 + 2);
          v11 = *(v8 + 3);
          v14 = *(v8 + 4);
          v13 = *(v8 + 5);
          if (v7)
          {
            v15 = *(v13 + 376);

            os_unfair_lock_lock(v15);
            os_unfair_lock_lock(*(v13 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v104);
          v16 = *(v6 + 64);
          v116[0] = *(v6 + 48);
          v116[1] = v16;
          v117 = *(v6 + 80);
          v17 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
          *(v6 + 48) = ecs_stack_allocator_allocate(*(v6 + 32), 48 * v17, 8);
          *(v6 + 56) = v17;
          *(v6 + 72) = 0;
          *(v6 + 80) = 0;
          *(v6 + 64) = 0;
          v18 = sub_1AF64B110(&type metadata for AnimationTimeSource, &off_1F2510EB8, v12, v11, v14, v6);
          if (v12)
          {
            v7 = v101;
            if (v14)
            {
              v19 = v18 + 57;
              do
              {
                if (*(v19 - 9) != v5)
                {
                  *(v19 - 9) = v5;
                  v20 = ((v5 - *(v19 - 49)) * *(v19 - 53)) / *(v19 - 57);
                  *(v19 - 5) = v20;
                  if (v20 > 1.0 && v20 < (*(v19 - 41) + 1.0))
                  {
                    v20 = v20 - floorf(v20);
                    *(v19 - 5) = v20;
                  }

                  if (v20 > 1.0)
                  {
                    *(v19 - 1) = 256;
                  }

                  else
                  {
                    *(v19 - 1) = 1;
                    v21 = *(v19 - 33);
                    v22 = *(v19 - 21);
                    if (v22 > 3)
                    {
                      if (*(v19 - 21) > 5u)
                      {
                        if (v22 == 6)
                        {
                          v27 = *(v19 - 25);
                          if (v27 < 1)
                          {
                            v44 = (*&v21 - *(&v21 + 1)) - *(&v21 + 1);
                            v45 = v44 + (*&v21 * *(&v21 + 1));
                            if (v20 < *(&v21 + 1))
                            {
                              v20 = ((v20 + v20) * (*&v21 - v20)) / v45;
                            }

                            else
                            {
                              v20 = ((((*&v21 + -2.0) * *(&v21 + 1)) * *(&v21 + 1)) + ((v20 * (v20 + -2.0)) * v44)) / ((*(&v21 + 1) + -1.0) * v45);
                            }
                          }

                          else
                          {
                            v29 = (*(&v21 + 1) - *&v21) * *(&v21 + 1);
                            if (v20 >= *(&v21 + 1))
                            {
                              v46 = 1.0 - *(&v21 + 1);
                              v47 = v27;
                              v48 = v20 - *(&v21 + 1);
                              v28 = *(&v21 + 1) - *&v21;
                              v49 = sinf(((v27 * 3.1416) * v48) / (1.0 - *(&v21 + 1))) * (((1.0 - *(&v21 + 1)) * (v28 + *(&v21 + 1))) / ((v29 * v27) * 3.1416));
                              v20 = (v49 * expf((v47 / (v46 * -4.0)) * v48)) + 1.0;
                            }

                            else
                            {
                              v20 = (v20 * (v20 - *&v21)) / v29;
                            }
                          }
                        }

                        else
                        {
                          switch(v21)
                          {
                            case 1:
                              v20 = v20 * v20;
                              break;
                            case 2:
                              v20 = -(v20 * (v20 + -2.0));
                              break;
                            case 3:
                              if (v20 >= 0.5)
                              {
                                v20 = (((v20 * -2.0) + 4.0) * v20) + -1.0;
                              }

                              else
                              {
                                v20 = (v20 * v20) + (v20 * v20);
                              }

                              break;
                            case 4:
                              v20 = v20 * (v20 * v20);
                              break;
                            case 5:
                              v50 = 1.0 - v20;
                              v57 = v50 * v50;
                              goto LABEL_71;
                            case 6:
                              v52 = v20 < 0.5;
                              v53 = (((v20 + -1.0) * ((v20 * 2.0) + -2.0)) * ((v20 * 2.0) + -2.0)) + 1.0;
                              v55 = 4.0;
                              goto LABEL_64;
                            case 7:
                              v56 = v20 * v20;
                              goto LABEL_68;
                            case 8:
                              v50 = 1.0 - v20;
                              v51 = v50 * v50;
                              goto LABEL_70;
                            case 9:
                              v52 = v20 < 0.5;
                              v53 = ((((v20 * -2.0) + 2.0) * (((v20 * -2.0) + 2.0) * (((v20 * -2.0) + 2.0) * ((v20 * -2.0) + 2.0)))) * -0.5) + 1.0;
                              v54 = 8.0;
                              goto LABEL_54;
                            case 10:
                              v56 = v20 * (v20 * v20);
LABEL_68:
                              v20 = v20 * (v20 * v56);
                              break;
                            case 11:
                              v50 = 1.0 - v20;
                              v51 = v50 * (v50 * v50);
LABEL_70:
                              v57 = v50 * v51;
LABEL_71:
                              v58 = v50 * v57;
                              goto LABEL_72;
                            case 12:
                              v52 = v20 < 0.5;
                              v53 = ((((v20 * -2.0) + 2.0) * (((v20 * -2.0) + 2.0) * (((v20 * -2.0) + 2.0) * (((v20 * -2.0) + 2.0) * ((v20 * -2.0) + 2.0))))) * -0.5) + 1.0;
                              v54 = v20 * 16.0;
LABEL_54:
                              v55 = v20 * v54;
LABEL_64:
                              v59 = v20 * (v20 * (v20 * v55));
                              if (v52)
                              {
                                v20 = v59;
                              }

                              else
                              {
                                v20 = v53;
                              }

                              break;
                            case 13:
                              v58 = sqrtf(1.0 - (v20 * v20));
LABEL_72:
                              v20 = 1.0 - v58;
                              break;
                            case 14:
                              v20 = ((v20 * v20) * (3.0 - v20)) * 0.5;
                              break;
                            case 15:
                              v20 = sinf(((1.0 - v20) * -3.1416) * 0.5) + 1.0;
                              break;
                            default:
                              break;
                          }
                        }
                      }

                      else if (v22 == 4)
                      {
                        LODWORD(v23) = *(v19 - 33);
                        v24 = logf((v20 * (*&v21 + -1.0)) + 1.0);
                        v20 = v24 / logf(v23);
                      }

                      else
                      {
                        v20 = powf(v20, *&v21);
                      }
                    }

                    else if (*(v19 - 21) > 1u)
                    {
                      if (v22 == 2)
                      {
                        LODWORD(v25) = HIDWORD(*(v19 - 33));
                        if ((v21 & 0x80000000) != 0)
                        {
                          v26 = 0.25;
                        }

                        else
                        {
                          v26 = v21 + 0.25;
                        }

                        v42 = v20;
                        if (*(&v21 + 1) > 0.0)
                        {
                          v43 = 1.0 - expf(v20 * *(&v21 + 1));
                          v42 = v43 / (1.0 - expf(v25));
                        }

                        v20 = v42 * sinf(v20 * (v26 * 6.2832));
                      }

                      else
                      {
                        LODWORD(v40) = *(v19 - 33);
                        v41 = 1.0 - expf(v20 * *&v21);
                        v20 = v41 / (1.0 - expf(v40));
                      }
                    }

                    else if (*(v19 - 21))
                    {
                      if (v21 < 0)
                      {
                        v30 = 0.0;
                      }

                      else
                      {
                        v30 = v21;
                      }

                      v31 = fminf(*(&v21 + 1), 1.01);
                      v32 = powf(v31, v30);
                      v33 = 1.0 - v32;
                      v34 = v20 * ((v32 * 0.5) + (v33 / v33));
                      v35 = logf(1.0 - ((1.0 - v31) * v34));
                      v36 = floorf(v35 / logf(v31));
                      v37 = (1.0 - powf(v31, v36)) / v33;
                      v38 = powf(v31, v36 + 1.0);
                      v39 = (v34 - ((v37 + ((1.0 - v38) / v33)) * 0.5)) / (((1.0 - v38) / v33) - ((v37 + ((1.0 - v38) / v33)) * 0.5));
                      v20 = powf(1.0 / v31, v30 - v36) * (1.0 - (v39 * v39));
                    }

                    else
                    {
                      v20 = (v20 * (v20 * v20)) + (sinf(v20 * -3.1416) * (v20 * *&v21));
                    }

                    *(v19 - 5) = v20;
                  }
                }

                v19 += 60;
                --v14;
              }

              while (v14);
            }
          }

          else
          {
            v7 = v101;
            if (v10 != v9)
            {
              v60 = v9 - v10;
              v61 = v18 + 60 * v10 + 57;
              do
              {
                if (*(v61 - 9) != v5)
                {
                  *(v61 - 9) = v5;
                  v62 = ((v5 - *(v61 - 49)) * *(v61 - 53)) / *(v61 - 57);
                  *(v61 - 5) = v62;
                  if (v62 > 1.0 && v62 < (*(v61 - 41) + 1.0))
                  {
                    v62 = v62 - floorf(v62);
                    *(v61 - 5) = v62;
                  }

                  if (v62 > 1.0)
                  {
                    *(v61 - 1) = 256;
                  }

                  else
                  {
                    *(v61 - 1) = 1;
                    v63 = *(v61 - 33);
                    v64 = *(v61 - 21);
                    if (v64 > 3)
                    {
                      if (*(v61 - 21) > 5u)
                      {
                        if (v64 == 6)
                        {
                          v69 = *(v61 - 25);
                          if (v69 < 1)
                          {
                            v85 = (*&v63 - *(&v63 + 1)) - *(&v63 + 1);
                            v86 = v85 + (*&v63 * *(&v63 + 1));
                            if (v62 < *(&v63 + 1))
                            {
                              v62 = ((v62 + v62) * (*&v63 - v62)) / v86;
                            }

                            else
                            {
                              v62 = ((((*&v63 + -2.0) * *(&v63 + 1)) * *(&v63 + 1)) + ((v62 * (v62 + -2.0)) * v85)) / ((*(&v63 + 1) + -1.0) * v86);
                            }
                          }

                          else
                          {
                            v70 = *(&v63 + 1) - *&v63;
                            if (v62 >= *(&v63 + 1))
                            {
                              v87 = 1.0 - *(&v63 + 1);
                              v88 = v69;
                              v89 = v62 - *(&v63 + 1);
                              v90 = sinf(((v69 * 3.1416) * v89) / (1.0 - *(&v63 + 1))) * (((1.0 - *(&v63 + 1)) * (v70 + *(&v63 + 1))) / (((v70 * *(&v63 + 1)) * v69) * 3.1416));
                              v62 = (v90 * expf((v88 / (v87 * -4.0)) * v89)) + 1.0;
                            }

                            else
                            {
                              v62 = (v62 * (v62 - *&v63)) / (v70 * *(&v63 + 1));
                            }
                          }
                        }

                        else
                        {
                          switch(v63)
                          {
                            case 1:
                              v62 = v62 * v62;
                              break;
                            case 2:
                              v62 = -(v62 * (v62 + -2.0));
                              break;
                            case 3:
                              if (v62 >= 0.5)
                              {
                                v62 = (((v62 * -2.0) + 4.0) * v62) + -1.0;
                              }

                              else
                              {
                                v62 = (v62 * v62) + (v62 * v62);
                              }

                              break;
                            case 4:
                              v62 = v62 * (v62 * v62);
                              break;
                            case 5:
                              v91 = 1.0 - v62;
                              v98 = v91 * v91;
                              goto LABEL_137;
                            case 6:
                              v93 = v62 < 0.5;
                              v94 = (((v62 + -1.0) * ((v62 * 2.0) + -2.0)) * ((v62 * 2.0) + -2.0)) + 1.0;
                              v96 = 4.0;
                              goto LABEL_130;
                            case 7:
                              v97 = v62 * v62;
                              goto LABEL_134;
                            case 8:
                              v91 = 1.0 - v62;
                              v92 = v91 * v91;
                              goto LABEL_136;
                            case 9:
                              v93 = v62 < 0.5;
                              v94 = ((((v62 * -2.0) + 2.0) * (((v62 * -2.0) + 2.0) * (((v62 * -2.0) + 2.0) * ((v62 * -2.0) + 2.0)))) * -0.5) + 1.0;
                              v95 = 8.0;
                              goto LABEL_120;
                            case 10:
                              v97 = v62 * (v62 * v62);
LABEL_134:
                              v62 = v62 * (v62 * v97);
                              break;
                            case 11:
                              v91 = 1.0 - v62;
                              v92 = v91 * (v91 * v91);
LABEL_136:
                              v98 = v91 * v92;
LABEL_137:
                              v99 = v91 * v98;
                              goto LABEL_138;
                            case 12:
                              v93 = v62 < 0.5;
                              v94 = ((((v62 * -2.0) + 2.0) * (((v62 * -2.0) + 2.0) * (((v62 * -2.0) + 2.0) * (((v62 * -2.0) + 2.0) * ((v62 * -2.0) + 2.0))))) * -0.5) + 1.0;
                              v95 = v62 * 16.0;
LABEL_120:
                              v96 = v62 * v95;
LABEL_130:
                              v100 = v62 * (v62 * (v62 * v96));
                              if (v93)
                              {
                                v62 = v100;
                              }

                              else
                              {
                                v62 = v94;
                              }

                              break;
                            case 13:
                              v99 = sqrtf(1.0 - (v62 * v62));
LABEL_138:
                              v62 = 1.0 - v99;
                              break;
                            case 14:
                              v62 = ((v62 * v62) * (3.0 - v62)) * 0.5;
                              break;
                            case 15:
                              v62 = sinf(((1.0 - v62) * -3.1416) * 0.5) + 1.0;
                              break;
                            default:
                              break;
                          }
                        }
                      }

                      else if (v64 == 4)
                      {
                        LODWORD(v65) = *(v61 - 33);
                        v66 = logf((v62 * (*&v63 + -1.0)) + 1.0);
                        v62 = v66 / logf(v65);
                      }

                      else
                      {
                        v62 = powf(v62, *&v63);
                      }
                    }

                    else if (*(v61 - 21) > 1u)
                    {
                      if (v64 == 2)
                      {
                        LODWORD(v67) = HIDWORD(*(v61 - 33));
                        if ((v63 & 0x80000000) != 0)
                        {
                          v68 = 0.25;
                        }

                        else
                        {
                          v68 = v63 + 0.25;
                        }

                        v83 = v62;
                        if (*(&v63 + 1) > 0.0)
                        {
                          v84 = 1.0 - expf(v62 * *(&v63 + 1));
                          v83 = v84 / (1.0 - expf(v67));
                        }

                        v62 = v83 * sinf(v62 * (v68 * 6.2832));
                      }

                      else
                      {
                        LODWORD(v81) = *(v61 - 33);
                        v82 = 1.0 - expf(v62 * *&v63);
                        v62 = v82 / (1.0 - expf(v81));
                      }
                    }

                    else if (*(v61 - 21))
                    {
                      if (v63 < 0)
                      {
                        v71 = 0.0;
                      }

                      else
                      {
                        v71 = v63;
                      }

                      v72 = fminf(*(&v63 + 1), 1.01);
                      v73 = powf(v72, v71);
                      v74 = 1.0 - v73;
                      v75 = v62 * ((v73 * 0.5) + (v74 / v74));
                      v76 = logf(1.0 - ((1.0 - v72) * v75));
                      v77 = floorf(v76 / logf(v72));
                      v78 = (1.0 - powf(v72, v77)) / v74;
                      v79 = powf(v72, v77 + 1.0);
                      v80 = (v75 - ((v78 + ((1.0 - v79) / v74)) * 0.5)) / (((1.0 - v79) / v74) - ((v78 + ((1.0 - v79) / v74)) * 0.5));
                      v62 = powf(1.0 / v72, v71 - v77) * (1.0 - (v80 * v80));
                    }

                    else
                    {
                      v62 = (v62 * (v62 * v62)) + (sinf(v62 * -3.1416) * (v62 * *&v63));
                    }

                    *(v61 - 5) = v62;
                  }
                }

                v61 += 60;
                --v60;
              }

              while (v60);
            }
          }

          sub_1AF630994(v6, &v113, v116);
          sub_1AF62D29C(v13);
          ecs_stack_allocator_pop_snapshot(v104);
          if (v7)
          {
            os_unfair_lock_unlock(*(v13 + 344));
            os_unfair_lock_unlock(*(v13 + 376));
          }

          ++v4;
        }

        while (v4 != v103);
      }
    }

    sub_1AFB191D8(&v105, sub_1AF5C3C90);
  }
}

uint64_t sub_1AFB190D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1AFB19134(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for Query3();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AFB191D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFB19238()
{
  if (!qword_1ED7239A8)
  {
    sub_1AFB19430(255, qword_1ED72C208, type metadata accessor for BasicAnimation);
    sub_1AFB19430(255, qword_1ED7287E0, type metadata accessor for BasicAnimationRuntime);
    v0 = type metadata accessor for Query3();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7239A8);
    }
  }
}

void sub_1AFB19308(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, void, _UNKNOWN **))
{
  if (!*a2)
  {
    sub_1AFB19430(255, a3, a4);
    v5 = type metadata accessor for Query1();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AFB19370(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1AFB193D4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, void, _UNKNOWN **))
{
  sub_1AFB19308(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AFB19430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, _UNKNOWN **))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6448], &off_1F2532E98);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AFB19490(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result, a2);
    v3 = *(v2 + 184);
    MEMORY[0x1EEE9AC00](v2, v4);

    sub_1AF6D2ADC(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v3, sub_1AFB21170);
  }

  return result;
}

uint64_t sub_1AFB195A8(uint64_t a1, uint64_t a2)
{
  if (a2 && (v4 = *(a2 + 656), v22 = *(a2 + 640), v23 = v4, v24[0] = *(a2 + 672), v5 = *(a2 + 592), *&v21[32] = *(a2 + 576), *&v21[48] = v5, v6 = *(a2 + 624), *&v21[64] = *(a2 + 608), *&v21[80] = v6, v7 = *(a2 + 560), *v21 = *(a2 + 544), *&v21[16] = v7, *(v24 + 9) = *(a2 + 681), sub_1AF448314(v21) != 1))
  {
    v10 = *(a2 + 552);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 152);
    swift_unknownObjectRetain();
    v13 = v12(ObjectType, v10);
    swift_unknownObjectRelease();
    v9 = v13 & 0xFF00000000;
    v8 = v13;
  }

  else
  {
    v8 = 0;
    v9 = 0x200000000;
  }

  if (qword_1ED7256D8 != -1)
  {
    swift_once();
  }

  v48[0] = xmmword_1ED73B518;
  v48[1] = unk_1ED73B528;
  v49 = qword_1ED73B538;
  sub_1AF6B06C0(a1, v48, v9 | v8, &v25);
  if (v25 && (*v21 = v25, *&v21[72] = v30, *&v21[40] = v28, *&v21[56] = v29, *&v21[88] = v31, *&v21[8] = v26, *&v21[24] = v27, *(&v30 + 1)))
  {
    sub_1AF6BA358(0);
    v15 = v14;

    v16 = sub_1AF6496EC(v15);

    v17 = &v25;
  }

  else
  {
    if (qword_1EB6372F0 != -1)
    {
      swift_once();
    }

    v46[0] = xmmword_1EB6C35B8;
    v46[1] = unk_1EB6C35C8;
    v47 = qword_1EB6C35D8;
    sub_1AF6B06C0(a1, v46, v9 | v8, &v32);
    if (v32)
    {
      v44 = v37;
      v42 = v35;
      v43 = v36;
      v39 = v32;
      v45 = v38;
      v40 = v33;
      v41 = v34;
      if (*(&v37 + 1))
      {
        sub_1AF6BA358(0);
        v19 = v18;

        v16 = sub_1AF6496EC(v19);
        sub_1AFB1FF04(&v25, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF82352C);
      }

      else
      {
        sub_1AFB1FF04(&v25, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF82352C);
        v16 = 0;
      }

      v17 = &v32;
    }

    else
    {
      v16 = 0;
      v17 = &v25;
    }
  }

  sub_1AFB1FF04(v17, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF82352C);
  return v16;
}

id sub_1AFB1995C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 184);

  os_unfair_recursive_lock_lock_with_options();
  v4 = sub_1AF6D2A6C(&type metadata for FrameConstantsStorage);
  if (v5 == 2 || (v5 & 1) == 0)
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v7 = *(v3 + 16) + v4;
    v8 = 32 * v6;
    os_unfair_lock_lock(*(*(v3 + 32) + 32 * v6 + 24));
    os_unfair_recursive_lock_unlock();
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    os_unfair_lock_unlock(*(*(v3 + 32) + v8 + 24));

    if (v9)
    {

      return sub_1AF6F458C(v9, v10, 0, a2);
    }
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v12 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v13 = v12;
    swift_once();
    v12 = v13;
  }

  v14 = 0;
  return sub_1AF0D4F18(v12, &v14, 0xD00000000000002BLL, 0x80000001AFF48320);
}

double sub_1AFB19B14@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

double sub_1AFB19B24@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1AFB19B34()
{
  sub_1AFDFF308();
  sub_1AF6A8C04();
  sub_1AF6A8C04();
  sub_1AF6A8C04();
  sub_1AF6A8C04();
  sub_1AF6A8C94();
  if (*(v0 + 832) >= 2u)
  {
    sub_1AF6A8C04();
    sub_1AF6A8C04();
    sub_1AF6A8C04();
    sub_1AF6A8C04();
    sub_1AF6A8C94();
  }

  sub_1AF6A8C94();
  sub_1AF6A8C04();
  sub_1AFDFF2C8();
  return sub_1AFDFF2E8();
}

uint64_t sub_1AFB19C2C()
{
  v1 = v0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  if (*(*(v0 + 1216) + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v0 + 1216);
    sub_1AFB215BC();
    sub_1AFDFE4B8();
    *(v0 + 1216) = v31;
  }

  *(v0 + 1200) = 0u;
  bzero((v0 + 48), 0x480uLL);
  v2 = (v0 + 1280);
  *(v1 + 1272) = 0;
  *(v1 + 1256) = 0u;
  v3 = *(v1 + 1280);
  if ((v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0 || (isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(), v3 = *v2, (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0))
  {
    if (v3 >> 62)
    {
      v27 = sub_1AFDFE108();
      sub_1AFDFE108();
      sub_1AFDFE108();
      v7 = v27;
    }

    else
    {
      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    }

    v8 = sub_1AFC892CC(0, v7);

    *v2 = v8;
  }

  else
  {
    if (v3 >> 62)
    {
      v5 = sub_1AFDFE108();
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_1AF64E3CC(0, v5);
  }

  *(v1 + 1296) = 0;
  v9 = *(v1 + 1376);
  if (v9)
  {
    v10 = (v1 + 1376);
    *(v1 + 1328) = 0;
    *(v1 + 1312) = 0u;
    *(v1 + 1344) = 0u;
    *(v1 + 1360) = 0u;
    if (v9 >> 62 || (v11 = swift_isUniquelyReferenced_nonNull_bridgeObject(), v9 = *v10, (v11 & 1) == 0))
    {
      if (v9 >> 62)
      {
        v28 = sub_1AFDFE108();
        sub_1AFDFE108();
        sub_1AFDFE108();
        v13 = v28;
      }

      else
      {
        v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      }

      v14 = sub_1AFC892CC(0, v13);

      *v10 = v14;
    }

    else
    {
      if (v9 >> 62)
      {
        v12 = sub_1AFDFE108();
      }

      else
      {
        v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      result = sub_1AF64E3CC(0, v12);
    }

    *(v1 + 1392) = 0;
  }

  v15 = *(v1 + 1416);
  if (v15)
  {
    v16 = (v1 + 1416);
    *(v1 + 1400) = 0u;
    if (v15 >> 62 || (v17 = swift_isUniquelyReferenced_nonNull_bridgeObject(), v15 = *v16, (v17 & 1) == 0))
    {
      if (v15 >> 62)
      {
        v29 = sub_1AFDFE108();
        sub_1AFDFE108();
        sub_1AFDFE108();
        v19 = v29;
      }

      else
      {
        v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      }

      v20 = sub_1AFC892CC(0, v19);

      *v16 = v20;
    }

    else
    {
      if (v15 >> 62)
      {
        v18 = sub_1AFDFE108();
      }

      else
      {
        v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      result = sub_1AF64E3CC(0, v18);
    }

    *(v1 + 1432) = 0;
  }

  v21 = *(v1 + 1504);
  if (v21)
  {
    v22 = (v1 + 1504);
    *(v1 + 1488) = 0u;
    *(v1 + 1472) = 0u;
    *(v1 + 1456) = 0u;
    *(v1 + 1440) = 0u;
    if (v21 >> 62 || (v23 = swift_isUniquelyReferenced_nonNull_bridgeObject(), v21 = *v22, (v23 & 1) == 0))
    {
      if (v21 >> 62)
      {
        v30 = sub_1AFDFE108();
        sub_1AFDFE108();
        sub_1AFDFE108();
        v25 = v30;
      }

      else
      {
        v25 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      }

      v26 = sub_1AFC892CC(0, v25);

      *v22 = v26;
    }

    else
    {
      if (v21 >> 62)
      {
        v24 = sub_1AFDFE108();
      }

      else
      {
        v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      result = sub_1AF64E3CC(0, v24);
    }

    *(v1 + 1520) = 0;
  }

  *(v1 + 1541) = 0;
  return result;
}

id sub_1AFB1A01C(id result)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 1528);
  if (v2)
  {
    v3 = *(v1 + 24);
    if (v3)
    {
      v4 = result;
      v5 = *(v1 + 32);
      v6 = [swift_unknownObjectRetain() storageMode];
      result = swift_unknownObjectRelease();
      if (v6 != 2)
      {
        v7 = [swift_unknownObjectRetain() contents];
        result = v3;
        if (*(v1 + 1376) && (v8 = *(v1 + 1312)) != 0 && (v9 = *(v1 + 1320), v10 = [swift_unknownObjectRetain() storageMode], result = swift_unknownObjectRelease(), v10 != 2))
        {
          v28 = [swift_unknownObjectRetain() contents];
          result = v8;
          v11 = &v28[v9];
          v12 = *(v2 + 16);
          if (v12)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v11 = 0;
          v12 = *(v2 + 16);
          if (v12)
          {
LABEL_8:
            v29 = &v7[v5];
            v13 = v2 + 40;
            while (1)
            {
              v15 = *(v13 - 8);
              v16 = *(v13 + 16);
              if (*(v13 + 32) <= 1u)
              {
                break;
              }

              if (*(v13 + 32) == 2 || v11 == 0)
              {
                goto LABEL_12;
              }

              v17 = [v4 constantData_];
              v30 = 0;
              v31[0] = 0;
              v24 = sub_1AFDFCEC8();
              v25 = [v4 constantOffsetAndSize__:v15 :{v24, v31, &v30}];

              if (v25)
              {
                v20 = v30;
                v21 = v31[0];
                v14 = &v11[v16];
LABEL_10:
                memcpy(v14, &v17[v21], v20);
              }

LABEL_11:

LABEL_12:
              v13 += 48;
              if (!--v12)
              {
                goto LABEL_26;
              }
            }

            if (*(v13 + 32))
            {

              v17 = [v4 constantData_];
              v30 = 0;
              v31[0] = 0;
              v26 = sub_1AFDFCEC8();
              v27 = [v4 constantOffsetAndSize__:v15 :{v26, v31, &v30}];

              if (!v27)
              {
                goto LABEL_11;
              }

              v20 = v30;
              v21 = v31[0];
              v22 = (v1 + 48);
            }

            else
            {

              v17 = [v4 constantData_];
              v30 = 0;
              v31[0] = 0;
              v18 = sub_1AFDFCEC8();
              v19 = [v4 constantOffsetAndSize__:v15 :{v18, v31, &v30}];

              if (!v19)
              {
                goto LABEL_11;
              }

              v20 = v30;
              v21 = v31[0];
              v22 = v29;
            }

            v14 = &v22[v16];
            goto LABEL_10;
          }
        }

LABEL_26:
        *(v1 + 1541) = 1;
      }
    }
  }

  return result;
}

uint64_t sub_1AFB1A300(uint64_t result)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 1528);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = result;
      v5 = v2 + 40;
      do
      {
        if (*(v5 + 32) == 2)
        {
          v6 = *(v5 + 16);
          v7 = *(v5 - 8);

          v8 = [v4 constantData_];
          v10 = 0;
          v11[0] = 0;
          v9 = sub_1AFDFCEC8();
          LODWORD(v7) = [v4 constantOffsetAndSize__:v7 :{v9, v11, &v10}];

          if (v7)
          {
            memcpy((v1 + 1456 + v6), &v8[v11[0]], v10);
          }
        }

        v5 += 48;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

double sub_1AFB1A430()
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

  sub_1AF8D40F0(1, 1, 1, v1);

  result = *v1;
  xmmword_1ED73B518 = v1[0];
  unk_1ED73B528 = v1[1];
  qword_1ED73B538 = v2;
  return result;
}

double sub_1AFB1A4E8()
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

  sub_1AFCC3AF0(1, 1, v1);

  result = *v1;
  xmmword_1EB6C35B8 = v1[0];
  unk_1EB6C35C8 = v1[1];
  qword_1EB6C35D8 = v2;
  return result;
}

uint64_t sub_1AFB1A600(uint64_t result, char a2, float a3)
{
  *(result + 1536) = a3;
  *(result + 1540) = a2;
  return result;
}

uint64_t sub_1AFB1A60C()
{
  v0 = swift_allocObject();
  sub_1AFB1A644();
  return v0;
}

uint64_t sub_1AFB1A644()
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
  sub_1AF826C2C(v8);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for ProjectionMatrix;
  *(inited + 40) = &off_1F2511D20;
  sub_1AF5D1EC0(inited, v9);
  sub_1AFB1FF04(v8, &unk_1ED723D30, &type metadata for OrthographicCamera, &off_1F2511CF0, sub_1AF5DD590);
  swift_setDeallocating();
  v2 = v9[1];
  *(v0 + 16) = v9[0];
  *(v0 + 32) = v2;
  *(v0 + 48) = v10;
  sub_1AF826C40(v11);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  *(v3 + 32) = &type metadata for ProjectionMatrix;
  *(v3 + 40) = &off_1F2511D20;
  sub_1AF5D1EC0(v3, v12);
  sub_1AFB1FF04(v11, &unk_1ED723D68, &type metadata for PerspectiveCamera, &off_1F2511ED0, sub_1AF5DD590);
  swift_setDeallocating();
  v4 = v12[1];
  *(v0 + 56) = v12[0];
  *(v0 + 72) = v4;
  *(v0 + 88) = v13;
  sub_1AFCC3988(1, 2, v14);
  v5 = v14[1];
  *(v0 + 96) = v14[0];
  *(v0 + 112) = v5;
  *(v0 + 128) = v15;
  sub_1AFCC39AC(1, 2, v16);
  v6 = v16[1];
  *(v0 + 136) = v16[0];
  *(v0 + 152) = v6;
  *(v0 + 168) = v17;
  return v0;
}

void sub_1AFB1A868(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = v1[7];
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  os_unfair_lock_unlock(*(v4 + 40));
  v8 = v1[12];
  swift_getObjectType();
  v9 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v8);

  sub_1AF6B1B20(a1, v9, v8);
  os_unfair_lock_unlock(*(v4 + 40));
  v10 = v1[17];
  swift_getObjectType();
  v11 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v10);

  sub_1AF6B1B20(a1, v11, v10);
  v12 = *(v4 + 40);

  os_unfair_lock_unlock(v12);
}

void sub_1AFB1AAD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1AF0D4E74();
  v299 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v298 = &v285 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = sub_1AFDFC298();
  v11 = *(v297 - 8);
  MEMORY[0x1EEE9AC00](v297, v12);
  v296 = &v285 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    *&v289 = v4;
    if (a4)
    {
      v14 = a1;
      v15 = *(a2 + 656);
      v319 = *(a2 + 640);
      v320 = v15;
      v321[0] = *(a2 + 672);
      v16 = *(a2 + 592);
      v315[2] = *(a2 + 576);
      v316 = v16;
      v17 = *(a2 + 624);
      v317 = *(a2 + 608);
      v318 = v17;
      v18 = *(a2 + 560);
      v315[0] = *(a2 + 544);
      v315[1] = v18;
      *(v321 + 9) = *(a2 + 681);
      if (sub_1AF448314(v315) == 1)
      {
        sub_1AFDFE518();
        __break(1u);
        return;
      }

      v19 = *(&v315[0] + 1);
      v20 = *&v315[0];
      ObjectType = swift_getObjectType();
      v22 = *(v19 + 152);
      swift_unknownObjectRetain_n();

      v313 = v19;
      v23 = v22(ObjectType, v19);
      swift_unknownObjectRelease();
      v24 = v23 & 0xFFFFFFFFFFLL;
      a1 = v14;
      v4 = v289;
    }

    else
    {
      if (!*(*(a2 + 104) + 16))
      {
        return;
      }

      v20 = 0;
      v313 = 0;
      v24 = 0x200000000;
    }

    v25 = *(v4 + 112);
    v339[0] = *(v4 + 96);
    v339[1] = v25;
    v340 = *(v4 + 128);
    v287 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
    v288 = v24;
    sub_1AF6B06C0(a1, v339, v24, v325);
    v309 = a2;
    v306 = v20;
    if (*&v325[0])
    {
      if (v328 > 0)
      {
        *&v292 = *(&v326 + 1);
        if (*(&v326 + 1))
        {
          v285 = a1;
          v291 = *(&v325[2] + 1);
          v303.i64[0] = *(&v327 + 1);
          v302.i64[0] = *(*(&v327 + 1) + 32);
          v26 = *(v327 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v329 = *&v325[0];
          v330 = *(v325 + 8);
          v331 = *(&v325[1] + 8);
          v315[2] = v325[2];
          v316 = v326;
          v317 = v327;
          v318 = v328;
          v315[0] = v325[0];
          v315[1] = v325[1];
          sub_1AF5DD298(v315, v324);
          v27 = 0;
          v301 = 0;
          v286 = v11;
          v294 = (v11 + 32);
          v295 = 0x80000001AFF48470;
          *(&_Q0 + 1) = 2;
          v293 = xmmword_1AFE431C0;
          __asm { FMOV            V0.2S, #1.0 }

          v311 = _Q0;
          v310 = xmmword_1AFE201A0;
          LODWORD(v290) = v26;
          while (1)
          {
            *&v300 = v27;
            v32 = (v291 + 48 * v27);
            v33 = *v32;
            v307.i64[0] = v32[1];
            v34 = *(v32 + 2);
            v35 = *(v32 + 3);
            v36 = *(v32 + 5);
            v308.i64[0] = *(v32 + 4);
            if (v26)
            {
              v37 = *(v36 + 376);

              os_unfair_lock_lock(v37);
              os_unfair_lock_lock(*(v36 + 344));
            }

            else
            {
            }

            v38 = v36;
            v304 = v36;
            ecs_stack_allocator_push_snapshot(v302.i64[0]);
            v39 = v303.i64[0];
            v40 = *(v303.i64[0] + 64);
            v337[0] = *(v303.i64[0] + 48);
            v337[1] = v40;
            v338 = *(v303.i64[0] + 80);
            v41 = *(*(*(*(v38 + 40) + 16) + 32) + 16) + 1;
            v39[6] = ecs_stack_allocator_allocate(*(v303.i64[0] + 32), 48 * v41, 8);
            v39[7] = v41;
            v39[9] = 0;
            v39[10] = 0;
            v39[8] = 0;
            v42 = v308.i64[0];
            *&v314 = sub_1AF64B110(&type metadata for OrthographicCamera, &off_1F2511CF0, v34, v35, v308.i64[0], v39);
            v312 = sub_1AF64B110(&type metadata for ProjectionMatrix, &off_1F2511DA0, v34, v35, v42, v39);
            if (v34)
            {
              if (v42)
              {
                v43 = 0;
                while (1)
                {
                  if (v20)
                  {
                    swift_unknownObjectRetain();
                    v44 = v313;
                  }

                  else
                  {
                    v307.i64[0] = v43;
                    v45 = *(v304 + 7);
                    v46 = v304[32];
                    v47 = *(*(a2 + 104) + 16);

                    v305.i64[0] = v48;
                    if (v47)
                    {
                      v49 = (v48 + 40);
                      while (1)
                      {
                        v44 = *v49;
                        if (v46)
                        {
                          break;
                        }

                        v50 = swift_getObjectType();
                        v51 = *(v44 + 152);
                        swift_unknownObjectRetain();
                        if ((v51(v50, v44) & 0xFFFFFFFFFFLL) == 0x200000000)
                        {
                          goto LABEL_39;
                        }

                        v52 = v51(v50, v44);
                        if ((v52 & 0xFE00000000) == 0 && v45 == v52)
                        {
                          goto LABEL_39;
                        }

                        swift_unknownObjectRelease();
                        v49 += 2;
                        if (!--v47)
                        {
                          goto LABEL_29;
                        }
                      }

                      swift_unknownObjectRetain();
LABEL_39:

                      a2 = v309;
                      v20 = v306;
                      v43 = v307.i64[0];
                    }

                    else
                    {
LABEL_29:

                      a2 = v309;
                      v54 = *(v309 + 104);
                      v43 = v307.i64[0];
                      if (!*(v54 + 16))
                      {
                        if (qword_1ED730EA0 != -1)
                        {
                          swift_once();
                        }

                        v55 = sub_1AFDFDA08();
                        if (qword_1ED731058 != -1)
                        {
                          swift_once();
                        }

                        if (qword_1ED730E98 != -1)
                        {
                          swift_once();
                        }

                        sub_1AF5FD6BC(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
                        v56 = swift_allocObject();
                        *(v56 + 16) = v293;
                        *(v56 + 56) = MEMORY[0x1E69E6158];
                        *(v56 + 64) = sub_1AF0D544C();
                        v57 = v295;
                        *(v56 + 32) = 0xD000000000000035;
                        *(v56 + 40) = v57;
                        sub_1AFDFC4C8();

                        v58 = v296;
                        sub_1AFDFC288();
                        v59 = v298;
                        v60 = v299[12];
                        v61 = v299[16];
                        v62 = &v298[v299[20]];
                        (*v294)(v298, v58, v297);
                        *(v59 + v60) = v55;
                        *(v59 + v61) = 0;
                        *v62 = 0xD000000000000035;
                        *(v62 + 1) = v57;
                        sub_1AFDFC608();

                        sub_1AF0D54A0(v59);
                        v20 = v306;
                        v63 = v307.i64[0];
                        a2 = v309;
                        goto LABEL_51;
                      }

                      v44 = *(v54 + 40);
                      swift_unknownObjectRetain();
                      v20 = v306;
                    }
                  }

                  v64 = v314 + 20 * v43;
                  v65 = swift_getObjectType();
                  sub_1AF707EC4(v65, v44);
                  v67 = v66;
                  v68 = sub_1AF707F54(*(v64 + 4), v65, v44);
                  v69 = *v64;
                  if (v68)
                  {
                    v70 = v69 / v67;
                  }

                  else
                  {
                    v70 = *v64;
                    v69 = v67 * v69;
                  }

                  v63 = v43;
                  v71 = v312 + (v43 << 6);
                  v72 = *(v64 + 8);
                  v73 = *(v64 + 12);
                  v74 = *(v64 + 16);
                  swift_unknownObjectRelease();
                  *v75.i32 = fmaxf(v72, -100000.0);
                  v76 = *v75.i32 + 0.0001;
                  if (v73 > (*v75.i32 + 0.0001))
                  {
                    v76 = v73;
                  }

                  if (v74)
                  {
                    v77 = v76;
                  }

                  else
                  {
                    v77 = *v75.i32;
                  }

                  if (!v74)
                  {
                    *v75.i32 = v76;
                  }

                  *v75.i32 = v77 - *v75.i32;
                  v78 = __PAIR64__(LODWORD(v77), v311);
                  v79.i64[0] = 0;
                  v79.i32[2] = 0;
                  *&v79.i32[3] = (v69 - v69) / (-v69 - v69);
                  v80.i32[0] = 0;
                  v80.i32[2] = 0;
                  *&v80.i32[1] = 2.0 / (v70 + v70);
                  *v81.i8 = vdiv_f32(v78, vdup_lane_s32(v75, 0));
                  v81.i64[1] = v81.i64[0];
                  v82 = vzip1q_s32(v80.u64[0], 0);
                  *&v80.i32[3] = (v70 - v70) / (-v70 - v70);
                  v83 = vzip2q_s32(v79, v81);
                  v84 = vzip2q_s32(v80, v310);
                  *v80.i32 = 2.0 / (v69 + v69);
                  *v71 = v80.u32[0];
                  *(v71 + 16) = vzip2q_s32(v80.u32[0], v82);
                  *(v71 + 32) = vzip1q_s32(v83, v84);
                  *(v71 + 48) = vzip2q_s32(v83, v84);
LABEL_51:
                  v43 = v63 + 1;
                  if (v63 + 1 == v308.i64[0])
                  {
                    goto LABEL_54;
                  }
                }
              }

              goto LABEL_54;
            }

            v85 = v33;
            if (v33 != v307.i32[0])
            {
              break;
            }

LABEL_54:
            v86 = v301;
            sub_1AF630994(v303.i64[0], &v329, v337);
            v301 = v86;
            v87 = v304;
            sub_1AF62D29C(v304);
            ecs_stack_allocator_pop_snapshot(v302.i64[0]);
            v26 = v290;
            if (v290)
            {
              os_unfair_lock_unlock(*(v87 + 43));
              os_unfair_lock_unlock(*(v87 + 47));
            }

            v27 = v300 + 1;
            if (v300 + 1 == v292)
            {
              v129 = MEMORY[0x1E69E6720];
              sub_1AFB1FF04(v325, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF82352C);
              sub_1AFB1FF04(v325, &qword_1ED725EA0, &type metadata for QueryResult, v129, sub_1AF82352C);
              a1 = v285;
              v11 = v286;
LABEL_94:
              v130 = *(v289 + 152);
              v335[0] = *(v289 + 136);
              v335[1] = v130;
              v336 = *(v289 + 168);
              sub_1AF6B06C0(a1, v335, v288, v315);
              if (!*&v315[0])
              {

                swift_unknownObjectRelease();
                return;
              }

              if (v318 <= 0 || (v288 = *(&v316 + 1)) == 0)
              {

                swift_unknownObjectRelease();
LABEL_201:
                sub_1AFB1FF04(v315, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF82352C);
                return;
              }

              v287 = *(&v315[2] + 1);
              v295 = *(&v317 + 1);
              v294 = *(*(&v317 + 1) + 32);
              v131 = *(v317 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
              v332 = *&v315[0];
              v333 = *(v315 + 8);
              v334 = *(&v315[1] + 8);
              v324[2] = v315[2];
              v324[3] = v316;
              v324[4] = v317;
              v324[5] = v318;
              v324[0] = v315[0];
              v324[1] = v315[1];
              sub_1AF5DD298(v324, v322);
              v132 = 0;
              v290 = (v11 + 32);
              v291 = 0x80000001AFF48470;
              *(&v133 + 1) = 2;
              v289 = xmmword_1AFE431C0;
              *&v133 = 0;
              *&v134 = 0;
              v292 = v134;
              v300 = v133;
              LODWORD(v286) = v131;
              while (1)
              {
                *&v293 = v132;
                v135 = (v287 + 48 * v132);
                v136 = *v135;
                v308.i64[0] = v135[1];
                v138 = *(v135 + 2);
                v137 = *(v135 + 3);
                v140 = *(v135 + 4);
                v139 = *(v135 + 5);
                if (v131)
                {
                  v141 = *(v139 + 376);

                  os_unfair_lock_lock(v141);
                  os_unfair_lock_lock(*(v139 + 344));
                }

                else
                {
                }

                v142 = v139;
                v304 = v139;
                ecs_stack_allocator_push_snapshot(v294);
                v143 = v295;
                v144 = *(v295 + 4);
                v322[0] = *(v295 + 3);
                v322[1] = v144;
                v323 = v295[10];
                v145 = *(*(*(*(v142 + 40) + 16) + 32) + 16) + 1;
                v143[6] = ecs_stack_allocator_allocate(v295[4], 48 * v145, 8);
                v143[7] = v145;
                v143[9] = 0;
                v143[10] = 0;
                v143[8] = 0;
                v312 = sub_1AF64B110(&type metadata for PerspectiveCamera, &off_1F2511ED0, v138, v137, v140, v143);
                *&v311 = sub_1AF64B110(&type metadata for ProjectionMatrix, &off_1F2511DA0, v138, v137, v140, v143);
                if (v138)
                {
                  if (v140)
                  {
                    v146 = 0;
                    v305.i64[0] = v140;
                    while (1)
                    {
                      if (v20)
                      {
                        v147 = a2;
                        swift_unknownObjectRetain();
                        v148 = v313;
                      }

                      else
                      {
                        *&v314 = v146;
                        v149 = *(v304 + 7);
                        v150 = v304[32];
                        v151 = *(*(a2 + 104) + 16);

                        *&v310 = v152;
                        if (v151)
                        {
                          v153 = (v152 + 40);
                          while (1)
                          {
                            v148 = *v153;
                            if (v150)
                            {
                              break;
                            }

                            v154 = swift_getObjectType();
                            v155 = *(v148 + 152);
                            swift_unknownObjectRetain();
                            if ((v155(v154, v148) & 0xFFFFFFFFFFLL) == 0x200000000)
                            {
                              goto LABEL_126;
                            }

                            v156 = v155(v154, v148);
                            if ((v156 & 0xFE00000000) == 0 && v149 == v156)
                            {
                              goto LABEL_126;
                            }

                            swift_unknownObjectRelease();
                            v153 += 2;
                            if (!--v151)
                            {
                              goto LABEL_116;
                            }
                          }

                          swift_unknownObjectRetain();
LABEL_126:

                          v147 = v309;
                          v20 = v306;
                          v146 = v314;
                        }

                        else
                        {
LABEL_116:

                          v147 = v309;
                          v158 = *(v309 + 104);
                          v146 = v314;
                          if (!*(v158 + 16))
                          {
                            if (qword_1ED730EA0 != -1)
                            {
                              swift_once();
                            }

                            v159 = sub_1AFDFDA08();
                            if (qword_1ED731058 != -1)
                            {
                              swift_once();
                            }

                            if (qword_1ED730E98 != -1)
                            {
                              swift_once();
                            }

                            sub_1AF5FD6BC(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
                            v160 = swift_allocObject();
                            *(v160 + 16) = v289;
                            *(v160 + 56) = MEMORY[0x1E69E6158];
                            *(v160 + 64) = sub_1AF0D544C();
                            v161 = v291;
                            *(v160 + 32) = 0xD000000000000035;
                            *(v160 + 40) = v161;
                            sub_1AFDFC4C8();

                            v162 = v296;
                            sub_1AFDFC288();
                            v163 = v298;
                            v164 = v299[12];
                            v165 = v299[16];
                            v166 = &v298[v299[20]];
                            (*v290)(v298, v162, v297);
                            *(v163 + v164) = v159;
                            *(v163 + v165) = 0;
                            *v166 = 0xD000000000000035;
                            *(v166 + 1) = v161;
                            sub_1AFDFC608();

                            sub_1AF0D54A0(v163);
                            v20 = v306;
                            a2 = v309;
                            v167 = v305.i64[0];
                            v168 = v314;
                            goto LABEL_148;
                          }

                          v148 = *(v158 + 40);
                          swift_unknownObjectRetain();
                          v20 = v306;
                        }
                      }

                      v169 = v146;
                      v170 = v312 + 48 * v146;
                      v171 = swift_getObjectType();
                      v172 = sub_1AF707F54(*(v170 + 33), v171, v148);
                      v173 = *v170;
                      sub_1AF707EC4(v171, v148);
                      v175 = v174;
                      v176 = *(v170 + 24);
                      v177 = *(v170 + 28);
                      v178 = *(v170 + 32);
                      *&v179 = *(v170 + 40);
                      v314 = v179;
                      *&v180 = sub_1AF70561C(v171, v148);
                      v310 = v180;
                      v181 = v176 + 0.0001;
                      if (v176 < 0.0001)
                      {
                        v181 = 0.0002;
                      }

                      if (v177 > v181)
                      {
                        v182 = v177;
                      }

                      else
                      {
                        v182 = v181;
                      }

                      v183 = vmvn_s8(vceqz_f32(*&v314));
                      v184 = v183.i32[1] | v183.i32[0];
                      v185 = tanf(v173 * 0.5);
                      if ((v184 & 0x80000000) == 0)
                      {
                        v187 = fmaxf(v176, 0.0001);
                        v188 = 1.0 / v185;
                        v189 = (1.0 / v185) / v175;
                        v190 = v175 * (1.0 / v185);
                        if ((v172 & 1) == 0)
                        {
                          v190 = v188;
                          v188 = v189;
                        }

                        v167 = v305.i64[0];
                        if (fabsf(v182) == INFINITY)
                        {
                          v191 = -v187;
                          v314 = xmmword_1AFE62AB0;
                        }

                        else
                        {
                          *&v207 = v300;
                          *(&v207 + 2) = v182 / (v187 - v182);
                          HIDWORD(v207) = -1.0;
                          v314 = v207;
                          v191 = (v182 * v187) / (v187 - v182);
                        }

                        v168 = v169;
                        v208 = v188;
                        LODWORD(v209) = 0;
                        *(&v209 + 1) = v190;
                        v307 = LODWORD(v208);
                        v308 = v209;
                        *&v210 = 0;
                        *(&v210 + 1) = LODWORD(v191);
                        v310 = v210;
                        swift_unknownObjectRelease();
                        a2 = v147;
                        if (v178)
                        {
                          v203 = vaddq_f32(vaddq_f32(vmulq_n_f32(xmmword_1AFE20150, *v307.i32), 0), xmmword_1AFE42C40);
                          v204 = vaddq_f32(vaddq_f32(vmlaq_lane_f32(0, xmmword_1AFE20160, *v308.f32, 1), xmmword_1AFE42C40), 0);
                          v206 = vaddq_f32(vmlaq_laneq_f32(0, xmmword_1AFE206C0, v310, 2), 0);
                          v205 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, *&v314), xmmword_1AFE20160, *&v314, 1), xmmword_1AFE206C0, v314, 2), xmmword_1AFE20BF0, v314, 3);
                        }

                        else
                        {
                          v205 = v314;
                          v203 = v307;
                          v204 = v308;
                          v206 = v310;
                        }

                        goto LABEL_147;
                      }

                      v192 = v176 * v185;
                      v193 = (*&v314 + *&v314) / *&v310;
                      v194 = (*(&v314 + 1) + *(&v314 + 1)) / *(&v310 + 1);
                      v195 = -(v192 * (v193 + 1.0));
                      v196 = (1.0 - v193) * v192;
                      *v186.i32 = -(v192 * (v194 + 1.0));
                      v197 = (1.0 - v194) * v192;
                      v198 = (v176 + v176) / (v197 - *v186.i32);
                      *&v199 = (v197 + *v186.i32) / (v197 - *v186.i32);
                      *v186.i32 = v177 / (v176 - v177);
                      v310 = COERCE_UNSIGNED_INT((v176 + v176) / (v196 - v195));
                      v200 = v310;
                      *(&v200 + 2) = (v195 + v196) / (v196 - v195);
                      v314 = v200;
                      v201.i32[0] = 0;
                      v201.f32[1] = v198;
                      v307 = v201.u64[0];
                      v201.i64[1] = v199;
                      v303 = v201;
                      v202 = vdupq_lane_s32(v186, 0);
                      v302 = v202;
                      *&v202.i32[3] = (v176 * v177) / (v176 - v177);
                      v308 = v202;
                      swift_unknownObjectRelease();
                      v167 = v305.i64[0];
                      if (v178)
                      {
                        v203 = vaddq_f32(vaddq_f32(vmulq_n_f32(xmmword_1AFE20150, *&v310), 0), xmmword_1AFE42C40);
                        v204 = vaddq_f32(vaddq_f32(vmlaq_lane_f32(0, xmmword_1AFE20160, *v307.i8, 1), xmmword_1AFE42C40), 0);
                        v205 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(xmmword_1AFE20150, v314, 2), xmmword_1AFE20160, v303, 2), xmmword_1AFE206C0, v302, 2), xmmword_1AFE9A330);
                        v206 = vaddq_f32(vmlaq_laneq_f32(0, xmmword_1AFE206C0, v308, 3), 0);
                        if (v172)
                        {
                          goto LABEL_145;
                        }
                      }

                      else
                      {
                        v211 = vzip2q_s32(v303, xmmword_1AFE206C0);
                        v212 = vzip2q_s32(v314, v308);
                        v206 = vzip2q_s32(v212, v211);
                        v205 = vzip1q_s32(v212, v211);
                        v213 = vzip1q_s32(v307, 0);
                        v214 = vzip1q_s32(v310, 0);
                        v204 = vzip2q_s32(v214, v213);
                        v203 = vzip1q_s32(v214, v213);
                        if (v172)
                        {
LABEL_145:
                          v204.i32[1] = vmuls_lane_f32(v175, *v204.f32, 1);
                          goto LABEL_146;
                        }
                      }

                      v203.f32[0] = v203.f32[0] / v175;
LABEL_146:
                      v168 = v169;
                      a2 = v147;
LABEL_147:
                      v215 = (v311 + (v168 << 6));
                      *v215 = v203;
                      v215[1] = v204;
                      v215[2] = v205;
                      v215[3] = v206;
LABEL_148:
                      v146 = v168 + 1;
                      if (v146 == v167)
                      {
                        goto LABEL_151;
                      }
                    }
                  }

                  goto LABEL_151;
                }

                if (v136 != v308.i32[0])
                {
                  break;
                }

LABEL_151:
                v216 = v301;
                sub_1AF630994(v295, &v332, v322);
                v301 = v216;
                v217 = v304;
                sub_1AF62D29C(v304);
                ecs_stack_allocator_pop_snapshot(v294);
                LOBYTE(v131) = v286;
                if (v286)
                {
                  os_unfair_lock_unlock(*(v217 + 43));
                  os_unfair_lock_unlock(*(v217 + 47));
                }

                v132 = v293 + 1;
                if (v293 + 1 == v288)
                {
                  sub_1AFB1FF04(v315, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF82352C);
                  swift_unknownObjectRelease();

                  goto LABEL_201;
                }
              }

              while (1)
              {
                if (v20)
                {
                  v218 = a2;
                  swift_unknownObjectRetain();
                  v219 = v313;
                }

                else
                {
                  *&v314 = v136;
                  v220 = *(v304 + 7);
                  v221 = v304[32];
                  v222 = *(*(a2 + 104) + 16);

                  *&v310 = v223;
                  if (v222)
                  {
                    v224 = (v223 + 40);
                    while (1)
                    {
                      v219 = *v224;
                      if (v221)
                      {
                        break;
                      }

                      v225 = swift_getObjectType();
                      v226 = *(v219 + 152);
                      swift_unknownObjectRetain();
                      if ((v226(v225, v219) & 0xFFFFFFFFFFLL) == 0x200000000)
                      {
                        goto LABEL_174;
                      }

                      v227 = v226(v225, v219);
                      if ((v227 & 0xFE00000000) == 0 && v220 == v227)
                      {
                        goto LABEL_174;
                      }

                      swift_unknownObjectRelease();
                      v224 += 2;
                      if (!--v222)
                      {
                        goto LABEL_164;
                      }
                    }

                    swift_unknownObjectRetain();
LABEL_174:

                    v218 = v309;
                    v20 = v306;
                    v136 = v314;
                  }

                  else
                  {
LABEL_164:

                    v218 = v309;
                    v229 = *(v309 + 104);
                    v136 = v314;
                    if (!*(v229 + 16))
                    {
                      if (qword_1ED730EA0 != -1)
                      {
                        swift_once();
                      }

                      v230 = sub_1AFDFDA08();
                      if (qword_1ED731058 != -1)
                      {
                        swift_once();
                      }

                      if (qword_1ED730E98 != -1)
                      {
                        swift_once();
                      }

                      sub_1AF5FD6BC(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
                      v231 = swift_allocObject();
                      *(v231 + 16) = v289;
                      *(v231 + 56) = MEMORY[0x1E69E6158];
                      *(v231 + 64) = sub_1AF0D544C();
                      v232 = v291;
                      *(v231 + 32) = 0xD000000000000035;
                      *(v231 + 40) = v232;
                      sub_1AFDFC4C8();

                      v233 = v296;
                      sub_1AFDFC288();
                      v234 = v298;
                      v235 = v299[12];
                      v236 = v299[16];
                      v237 = &v298[v299[20]];
                      (*v290)(v298, v233, v297);
                      *(v234 + v235) = v230;
                      *(v234 + v236) = 0;
                      *v237 = 0xD000000000000035;
                      *(v237 + 1) = v232;
                      sub_1AFDFC608();

                      sub_1AF0D54A0(v234);
                      v20 = v306;
                      a2 = v309;
                      v238 = v314;
                      goto LABEL_196;
                    }

                    v219 = *(v229 + 40);
                    swift_unknownObjectRetain();
                    v20 = v306;
                  }
                }

                v239 = v136;
                v240 = v312 + 48 * v136;
                v241 = swift_getObjectType();
                v242 = sub_1AF707F54(*(v240 + 33), v241, v219);
                v243 = *v240;
                sub_1AF707EC4(v241, v219);
                v245 = v244;
                v246 = *(v240 + 24);
                v247 = *(v240 + 28);
                v248 = *(v240 + 32);
                *&v249 = *(v240 + 40);
                v314 = v249;
                *&v250 = sub_1AF70561C(v241, v219);
                v310 = v250;
                v251 = v246 + 0.0001;
                if (v246 < 0.0001)
                {
                  v251 = 0.0002;
                }

                v252 = v247 > v251 ? v247 : v251;
                v253 = vmvn_s8(vceqz_f32(*&v314));
                v254 = v253.i32[1] | v253.i32[0];
                v255 = tanf(v243 * 0.5);
                if (v254 < 0)
                {
                  break;
                }

                v257 = fmaxf(v246, 0.0001);
                v258 = 1.0 / v255;
                v259 = (1.0 / v255) / v245;
                v260 = v245 * (1.0 / v255);
                if ((v242 & 1) == 0)
                {
                  v260 = v258;
                  v258 = v259;
                }

                if (fabsf(v252) == INFINITY)
                {
                  v261 = -v257;
                  v314 = xmmword_1AFE62AB0;
                }

                else
                {
                  *&v277 = v292;
                  *(&v277 + 2) = v252 / (v257 - v252);
                  HIDWORD(v277) = -1.0;
                  v314 = v277;
                  v261 = (v252 * v257) / (v257 - v252);
                }

                v305 = LODWORD(v258);
                LODWORD(v278) = 0;
                *(&v278 + 1) = v260;
                v307 = v278;
                *&v279 = 0;
                *(&v279 + 1) = LODWORD(v261);
                v310 = v279;
                swift_unknownObjectRelease();
                if (v248)
                {
                  v273 = vaddq_f32(vaddq_f32(vmulq_n_f32(xmmword_1AFE20150, *v305.i32), 0), xmmword_1AFE42C40);
                  v274 = vaddq_f32(vaddq_f32(vmlaq_lane_f32(0, xmmword_1AFE20160, *v307.i8, 1), xmmword_1AFE42C40), 0);
                  v276 = vaddq_f32(vmlaq_laneq_f32(0, xmmword_1AFE206C0, v310, 2), 0);
                  v275 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, *&v314), xmmword_1AFE20160, *&v314, 1), xmmword_1AFE206C0, v314, 2), xmmword_1AFE20BF0, v314, 3);
                  v238 = v239;
                  goto LABEL_194;
                }

                v238 = v239;
                a2 = v218;
                v275 = v314;
                v273 = v305;
                v274 = v307;
                v276 = v310;
LABEL_195:
                v284 = (v311 + (v238 << 6));
                *v284 = v273;
                v284[1] = v274;
                v284[2] = v275;
                v284[3] = v276;
LABEL_196:
                v136 = v238 + 1;
                if (v136 == v308.i64[0])
                {
                  goto LABEL_151;
                }
              }

              v262 = v246 * v255;
              v263 = (*&v314 + *&v314) / *&v310;
              v264 = (*(&v314 + 1) + *(&v314 + 1)) / *(&v310 + 1);
              v265 = -(v262 * (v263 + 1.0));
              v266 = (1.0 - v263) * v262;
              *v256.i32 = -(v262 * (v264 + 1.0));
              v267 = (1.0 - v264) * v262;
              v268 = (v246 + v246) / (v267 - *v256.i32);
              *&v269 = (v267 + *v256.i32) / (v267 - *v256.i32);
              *v256.i32 = v247 / (v246 - v247);
              v310 = COERCE_UNSIGNED_INT((v246 + v246) / (v266 - v265));
              v270 = v310;
              *(&v270 + 2) = (v265 + v266) / (v266 - v265);
              v314 = v270;
              v271.i32[0] = 0;
              v271.f32[1] = v268;
              v305 = v271.u64[0];
              v271.i64[1] = v269;
              v303 = v271;
              v272 = vdupq_lane_s32(v256, 0);
              v302 = v272;
              *&v272.i32[3] = (v246 * v247) / (v246 - v247);
              v307 = v272;
              swift_unknownObjectRelease();
              if (v248)
              {
                v273 = vaddq_f32(vaddq_f32(vmulq_n_f32(xmmword_1AFE20150, *&v310), 0), xmmword_1AFE42C40);
                v274 = vaddq_f32(vaddq_f32(vmlaq_lane_f32(0, xmmword_1AFE20160, *v305.i8, 1), xmmword_1AFE42C40), 0);
                v275 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(xmmword_1AFE20150, v314, 2), xmmword_1AFE20160, v303, 2), xmmword_1AFE206C0, v302, 2), xmmword_1AFE9A330);
                v276 = vaddq_f32(vmlaq_laneq_f32(0, xmmword_1AFE206C0, v307, 3), 0);
                v238 = v239;
                if ((v242 & 1) == 0)
                {
LABEL_187:
                  v273.f32[0] = v273.f32[0] / v245;
LABEL_194:
                  a2 = v218;
                  goto LABEL_195;
                }
              }

              else
              {
                v280 = vzip2q_s32(v303, xmmword_1AFE206C0);
                v281 = vzip2q_s32(v314, v307);
                v276 = vzip2q_s32(v281, v280);
                v275 = vzip1q_s32(v281, v280);
                v282 = vzip1q_s32(v305, 0);
                v283 = vzip1q_s32(v310, 0);
                v274 = vzip2q_s32(v283, v282);
                v273 = vzip1q_s32(v283, v282);
                v238 = v239;
                if ((v242 & 1) == 0)
                {
                  goto LABEL_187;
                }
              }

              v274.i32[1] = vmuls_lane_f32(v245, *v274.f32, 1);
              goto LABEL_194;
            }
          }

          while (1)
          {
            if (v20)
            {
              swift_unknownObjectRetain();
              v88 = v313;
            }

            else
            {
              v308.i64[0] = v85;
              v89 = *(v304 + 7);
              v90 = v304[32];
              v91 = *(*(a2 + 104) + 16);

              v305.i64[0] = v92;
              if (v91)
              {
                v93 = (v92 + 40);
                while (1)
                {
                  v88 = *v93;
                  if (v90)
                  {
                    break;
                  }

                  v94 = swift_getObjectType();
                  v95 = *(v88 + 152);
                  swift_unknownObjectRetain();
                  if ((v95(v94, v88) & 0xFFFFFFFFFFLL) == 0x200000000)
                  {
                    goto LABEL_77;
                  }

                  v96 = v95(v94, v88);
                  if ((v96 & 0xFE00000000) == 0 && v89 == v96)
                  {
                    goto LABEL_77;
                  }

                  swift_unknownObjectRelease();
                  v93 += 2;
                  if (!--v91)
                  {
                    goto LABEL_67;
                  }
                }

                swift_unknownObjectRetain();
LABEL_77:

                a2 = v309;
                v20 = v306;
                v85 = v308.i64[0];
              }

              else
              {
LABEL_67:

                a2 = v309;
                v98 = *(v309 + 104);
                v85 = v308.i64[0];
                if (!*(v98 + 16))
                {
                  if (qword_1ED730EA0 != -1)
                  {
                    swift_once();
                  }

                  v99 = sub_1AFDFDA08();
                  if (qword_1ED731058 != -1)
                  {
                    swift_once();
                  }

                  if (qword_1ED730E98 != -1)
                  {
                    swift_once();
                  }

                  sub_1AF5FD6BC(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
                  v100 = swift_allocObject();
                  *(v100 + 16) = v293;
                  *(v100 + 56) = MEMORY[0x1E69E6158];
                  *(v100 + 64) = sub_1AF0D544C();
                  v101 = v295;
                  *(v100 + 32) = 0xD000000000000035;
                  *(v100 + 40) = v101;
                  sub_1AFDFC4C8();

                  v102 = v296;
                  sub_1AFDFC288();
                  v103 = v298;
                  v104 = v299[12];
                  v105 = v299[16];
                  v106 = &v298[v299[20]];
                  (*v294)(v298, v102, v297);
                  *(v103 + v104) = v99;
                  *(v103 + v105) = 0;
                  *v106 = 0xD000000000000035;
                  *(v106 + 1) = v101;
                  sub_1AFDFC608();

                  sub_1AF0D54A0(v103);
                  v20 = v306;
                  a2 = v309;
                  v107 = v308.i64[0];
                  goto LABEL_89;
                }

                v88 = *(v98 + 40);
                swift_unknownObjectRetain();
                v20 = v306;
              }
            }

            v108 = v314 + 20 * v85;
            v109 = swift_getObjectType();
            sub_1AF707EC4(v109, v88);
            v111 = v110;
            v112 = sub_1AF707F54(*(v108 + 4), v109, v88);
            v113 = *v108;
            if (v112)
            {
              v114 = v113 / v111;
            }

            else
            {
              v114 = *v108;
              v113 = v111 * v113;
            }

            v107 = v85;
            v115 = v312 + (v85 << 6);
            v116 = *(v108 + 8);
            v117 = *(v108 + 12);
            v118 = *(v108 + 16);
            swift_unknownObjectRelease();
            *v119.i32 = fmaxf(v116, -100000.0);
            v120 = *v119.i32 + 0.0001;
            if (v117 > (*v119.i32 + 0.0001))
            {
              v120 = v117;
            }

            if (v118)
            {
              v121 = v120;
            }

            else
            {
              v121 = *v119.i32;
            }

            if (!v118)
            {
              *v119.i32 = v120;
            }

            *v119.i32 = v121 - *v119.i32;
            v122 = __PAIR64__(LODWORD(v121), v311);
            v123.i64[0] = 0;
            v123.i32[2] = 0;
            *&v123.i32[3] = (v113 - v113) / (-v113 - v113);
            v124.i32[0] = 0;
            v124.i32[2] = 0;
            *&v124.i32[1] = 2.0 / (v114 + v114);
            *v125.i8 = vdiv_f32(v122, vdup_lane_s32(v119, 0));
            v125.i64[1] = v125.i64[0];
            v126 = vzip1q_s32(v124.u64[0], 0);
            *&v124.i32[3] = (v114 - v114) / (-v114 - v114);
            v127 = vzip2q_s32(v123, v125);
            v128 = vzip2q_s32(v124, v310);
            *v124.i32 = 2.0 / (v113 + v113);
            *v115 = v124.u32[0];
            *(v115 + 16) = vzip2q_s32(v124.u32[0], v126);
            *(v115 + 32) = vzip1q_s32(v127, v128);
            *(v115 + 48) = vzip2q_s32(v127, v128);
LABEL_89:
            v85 = v107 + 1;
            if (v107 + 1 == v307.i64[0])
            {
              goto LABEL_54;
            }
          }
        }
      }

      sub_1AFB1FF04(v325, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF82352C);
    }

    v301 = 0;
    goto LABEL_94;
  }
}

void sub_1AFB1CA00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(v2 + 32);
  v108[0] = *(v2 + 16);
  v108[1] = v5;
  v109 = *(v2 + 48);
  sub_1AF6B06C0(a1, v108, 0x200000000, v95);
  v69 = v4;
  v70 = v2;
  if (*&v95[0])
  {
    if (v98 >= 1 && v97)
    {
      v6 = v96;
      v7 = v96 + 48 * v97;
      v71 = v7;
      do
      {
        v8 = *(v6 + 40);
        v9 = *(v8 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v9);
        os_unfair_lock_lock(*(v8 + 344));
        v10 = *(v8 + 24);

        v101 = 0;
        v99 = 0u;
        v100 = 0u;
        v89 = 0;
        v87 = 0u;
        v88 = 0u;
        v11 = sub_1AF65A4B4(v10, &type metadata for ProjectionMatrix, &off_1F2511DA0, 0, 0, &v99, &v87);

        sub_1AF5DD41C(&v87);
        sub_1AF5DD41C(&v99);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v11);
        }

        else
        {
          v75 = v6;
          v12 = *(v8 + 232);
          v13 = *(v8 + 240);
          v73 = *(v8 + 120);
          v85 = *(v8 + 28);
          v84 = *(v8 + 32);
          v14 = *(v8 + 16);
          v15 = *(v8 + 40);
          v16 = *(v15 + 200);
          v82 = *(*(v14 + 88) + 8 * v11 + 32);

          if ((v16 & 1) != 0 || *(v82 + 200) == 1)
          {
            *(v14 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v15 = *(v8 + 40);
          }

          v17 = *(v8 + 256);
          sub_1AF5B4FCC(v15, v12, v13, 0, v8);
          v79 = v17;
          v78 = *(v8 + 256);
          v18 = v78 - v17;
          if (v78 == v17)
          {
            v19 = 0;
          }

          else
          {
            v19 = v17;
          }

          *&v87 = v19;
          v20 = *(*(v8 + 40) + 24);
          v21 = *(v20 + 16);
          if (v21)
          {
            v22 = v20 + 32;

            for (i = 0; i != v21; ++i)
            {
              v24 = v22 + 40 * i;
              if ((*(v24 + 32) & 1) == 0)
              {
                v25 = *(v82 + 24);
                v26 = *(v25 + 16);
                if (v26)
                {
                  v27 = (v25 + 32);
                  while (*v27 != *v24)
                  {
                    v27 += 5;
                    if (!--v26)
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
          }

          if (*(v14 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v14 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v8 + 72) * v18);
          }

          if (*(v8 + 184))
          {
            v28 = 0;
          }

          else
          {
            v28 = *(v8 + 168);
          }

          *&v106[0] = 0;

          MEMORY[0x1EEE9AC00](v29, v30);
          v31 = v85;
          v32 = v84;
          DWORD2(v100) = -1;
          v101 = v79;
          v102 = v78;
          v103 = v79;
          v104 = v78;
          *&v99 = v79;
          *(&v99 + 1) = v78;
          *&v100 = v28;
          if (v18 < 1)
          {

            v6 = v75;
          }

          else
          {
            v6 = v75;
            do
            {
              LOBYTE(v94[0]) = v32;
              sub_1AF6248A8(v11, v31 | (v32 << 32), v73, v14, &v99, sub_1AF5C5E08);
              v32 = v84;
              v31 = v85;
            }

            while ((*(&v99 + 1) - v99) > 0);
          }

          v33 = *(v8 + 192);
          v7 = v71;
          if (v33)
          {
            v34 = *(v8 + 208);
            sub_1AF75D364(v79, v78, v33);
            v7 = v71;
            sub_1AF75D364(v79, v78, v34);
          }
        }

        v6 += 48;
        os_unfair_lock_unlock(*(v8 + 344));
        os_unfair_lock_unlock(*(v8 + 376));
      }

      while (v6 != v7);
    }

    sub_1AFB1FF04(v95, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF82352C);
    v4 = v69;
    v3 = v70;
  }

  v35 = *(v3 + 72);
  v106[0] = *(v3 + 56);
  v106[1] = v35;
  v107 = *(v3 + 88);
  sub_1AF6B06C0(v4, v106, 0x200000000, &v99);
  if (v99)
  {
    if (v105 >= 1 && v104)
    {
      v37 = v102;
      v38 = v102 + 48 * v104;
      v72 = v38;
      do
      {
        v39 = *(v37 + 40);
        v40 = *(v39 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v40);
        os_unfair_lock_lock(*(v39 + 344));
        v41 = *(v39 + 24);

        v89 = 0;
        v87 = 0u;
        v88 = 0u;
        memset(v94, 0, 40);
        v42 = sub_1AF65A4B4(v41, &type metadata for ProjectionMatrix, &off_1F2511DA0, 0, 0, &v87, v94);

        sub_1AF5DD41C(v94);
        sub_1AF5DD41C(&v87);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v42);
        }

        else
        {
          v77 = v37;
          v43 = *(v39 + 232);
          v44 = *(v39 + 240);
          v74 = *(v39 + 120);
          v83 = *(v39 + 28);
          v45 = *(v39 + 32);
          v46 = *(v39 + 16);
          v47 = *(v39 + 40);
          v48 = *(v47 + 200);
          v86 = *(*(v46 + 88) + 8 * v42 + 32);

          if ((v48 & 1) != 0 || *(v86 + 200) == 1)
          {
            *(v46 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v47 = *(v39 + 40);
          }

          v76 = v45;
          v49 = v83;
          v50 = *(v39 + 256);
          sub_1AF5B4FCC(v47, v43, v44, 0, v39);
          v80 = *(v39 + 256);
          v51 = v80 - v50;
          v81 = v50;
          if (v80 == v50)
          {
            v52 = 0;
          }

          else
          {
            v52 = v50;
          }

          v94[0] = v52;
          v53 = *(*(v39 + 40) + 24);
          v54 = *(v53 + 16);
          if (v54)
          {
            v55 = v53 + 32;

            v56 = 0;
            v57 = v51;
            do
            {
              v58 = v55 + 40 * v56;
              if ((*(v58 + 32) & 1) == 0)
              {
                v59 = *(v86 + 24);
                v60 = *(v59 + 16);
                if (v60)
                {
                  v61 = (v59 + 32);
                  while (*v61 != *v58)
                  {
                    v61 += 5;
                    if (!--v60)
                    {
                      goto LABEL_54;
                    }
                  }
                }

                else
                {
LABEL_54:
                  sub_1AF640BC8();
                }
              }

              ++v56;
            }

            while (v56 != v54);

            v49 = v83;
          }

          else
          {
            v57 = v80 - v50;
          }

          if (*(v46 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v46 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v39 + 72) * v57);
          }

          v62 = v57;
          if (*(v39 + 184))
          {
            v63 = 0;
          }

          else
          {
            v63 = *(v39 + 168);
          }

          v93 = 0;

          MEMORY[0x1EEE9AC00](v64, v65);
          *(&v87 + 1) = v80;
          *&v88 = v63;
          DWORD2(v88) = -1;
          v89 = v81;
          v90 = v80;
          v91 = v81;
          v92 = v80;
          *&v87 = v81;
          if (v62 >= 1)
          {
            do
            {
              sub_1AF6248A8(v42, v49 | (v76 << 32), v74, v46, &v87, sub_1AF5C44B0);
            }

            while ((*(&v87 + 1) - v87) > 0);
          }

          v66 = *(v39 + 192);
          v37 = v77;
          v38 = v72;
          if (v66)
          {
            v67 = *(v39 + 208);
            sub_1AF75D364(v81, v80, v66);
            sub_1AF75D364(v81, v80, v67);
          }
        }

        v37 += 48;
        os_unfair_lock_unlock(*(v39 + 344));
        os_unfair_lock_unlock(*(v39 + 376));
      }

      while (v37 != v38);
    }

    sub_1AFB1FF04(&v99, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF82352C);
    v4 = v69;
  }

  sub_1AFB1AAD8(v4, a2, v36, 0);
}

void sub_1AFB1D3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2u)
  {
    sub_1AFB1AAD8(a1, a2, a3, 1);
  }
}

void sub_1AFB1D3E4(uint64_t a1, uint64_t a2, char a3, float32x4_t a4)
{
  v27 = *a2;
  v8 = vmlaq_f32(vmlaq_f32(vmlaq_f32(*a2, 0, v27.columns[1]), 0, v27.columns[2]), 0, v27.columns[3]);
  v9 = vmulq_f32(*a2, 0);
  v10 = vmlaq_f32(vmlaq_f32(vaddq_f32(v27.columns[1], v9), 0, v27.columns[2]), 0, v27.columns[3]);
  v11 = vmlaq_f32(vaddq_f32(v27.columns[2], vmlaq_f32(v9, 0, v27.columns[1])), 0, v27.columns[3]);
  v26 = a4;
  v12 = vaddq_f32(v27.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a2, a4.f32[0]), v27.columns[1], *a4.f32, 1), v27.columns[2], a4, 2));
  *a1 = v8;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  v13 = *(a1 + 256);
  v14 = *(a1 + 272);
  v15 = *(a1 + 288);
  v16 = *(a1 + 304);
  *(a1 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, v8.f32[0]), v14, *v8.f32, 1), v15, v8, 2), v16, v8, 3);
  *(a1 + 144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, v10.f32[0]), v14, *v10.f32, 1), v15, v10, 2), v16, v10, 3);
  *(a1 + 160) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, v11.f32[0]), v14, *v11.f32, 1), v15, v11, 2), v16, v11, 3);
  *(a1 + 176) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, v12.f32[0]), v14, *v12.f32, 1), v15, v12, 2), v16, v12, 3);
  v28 = __invert_f4(v27);
  v28.columns[0] = vsubq_f32(v28.columns[3], v26);
  v28.columns[0].i32[3] = 0;
  *(a1 + 512) = v28.columns[0];
  if (*(a1 + 832) >= 2u)
  {
    v29 = *(a2 + 64);
    v17 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v29.columns[0], 0, v29.columns[1]), 0, v29.columns[2]), 0, v29.columns[3]);
    v18 = vmulq_f32(v29.columns[0], 0);
    v19 = vmlaq_f32(vmlaq_f32(vaddq_f32(v29.columns[1], v18), 0, v29.columns[2]), 0, v29.columns[3]);
    v20 = vmlaq_f32(vaddq_f32(v29.columns[2], vmlaq_f32(v18, 0, v29.columns[1])), 0, v29.columns[3]);
    v21 = vaddq_f32(v29.columns[3], vmlaq_f32(vmlaq_f32(vmulq_n_f32(v29.columns[0], v26.f32[0]), vdupq_lane_s32(*v26.f32, 1), v29.columns[1]), vdupq_laneq_s32(v26, 2), v29.columns[2]));
    *(a1 + 64) = v17;
    *(a1 + 80) = v19;
    *(a1 + 96) = v20;
    *(a1 + 112) = v21;
    v22 = *(a1 + 320);
    v23 = *(a1 + 336);
    v24 = *(a1 + 352);
    v25 = *(a1 + 368);
    *(a1 + 192) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v17.f32[0]), v23, *v17.f32, 1), v24, v17, 2), v25, v17, 3);
    *(a1 + 208) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v19.f32[0]), v23, *v19.f32, 1), v24, v19, 2), v25, v19, 3);
    *(a1 + 224) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v20.f32[0]), v23, *v20.f32, 1), v24, v20, 2), v25, v20, 3);
    *(a1 + 240) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v21.f32[0]), v23, *v21.f32, 1), v24, v21, 2), v25, v21, 3);
    v30 = __invert_f4(v29);
    v30.columns[0] = vsubq_f32(v30.columns[3], v26);
    v30.columns[0].i32[3] = 0;
    *(a1 + 528) = v30.columns[0];
  }

  sub_1AFB1D5B4();
  sub_1AFB1D694(a3 & 1);
}

void sub_1AFB1D5B4()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 272);
  v4 = *(v0 + 288);
  v3 = *(v0 + 304);
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  v7 = *(v0 + 48);
  v8 = vmulq_f32(*v0, 0);
  v9 = vmlaq_f32(vmlaq_f32(vmlaq_f32(*v0, 0, v5), 0, v6), 0, v7);
  v10 = vmlaq_f32(vmlaq_f32(vaddq_f32(v5, v8), 0, v6), 0, v7);
  v11 = vmlaq_f32(vaddq_f32(v6, vmlaq_f32(v8, 0, v5)), 0, v7);
  v12 = vaddq_f32(v7, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*v0, 0.0 - COERCE_FLOAT(*(v0 + 800))), v5, 0.0 - COERCE_FLOAT(HIDWORD(*(v0 + 800)))), v6, 0.0 - COERCE_FLOAT(*(v0 + 808))));
  v13.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1, v9.f32[0]), v2, *v9.f32, 1), v4, v9, 2), v3, v9, 3);
  v13.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1, v10.f32[0]), v2, *v10.f32, 1), v4, v10, 2), v3, v10, 3);
  v13.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1, v11.f32[0]), v2, *v11.f32, 1), v4, v11, 2), v3, v11, 3);
  v13.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1, v12.f32[0]), v2, *v12.f32, 1), v4, v12, 2), v3, v12, 3);
  *(v0 + 544) = __invert_f4(v13);
  *(v0 + 608) = __invert_f4(*(v0 + 128));
}

void sub_1AFB1D694(char a1)
{
  v2 = *(v1 + 816);
  *&v3 = vdiv_f32(COERCE_FLOAT32X2_T(-2.00000048), vdup_lane_s32(*v2.f32, 1));
  __asm { FMOV            V1.2S, #-1.0 }

  *(&v3 + 1) = -_D1;
  *(v1 + 848) = v3;
  if (a1)
  {
    v18 = *(v1 + 960);
    LODWORD(v9) = HIDWORD(*(v1 + 960));
  }

  else
  {
    v18 = v2;
    v9 = v2.f32[1];
    *(v1 + 960) = 0u;
  }

  v19 = __invert_f4(*(v1 + 128));
  v10 = *(v1 + 928);
  v11 = vdivq_f32(v18, v10);
  v12 = vmulq_f32(v18, v10).f32[0];
  v10.f32[0] = vmuls_lane_f32(v9, *v10.f32, 1);
  v10.f32[0] = -1.0 - vmuls_lane_f32(v10.f32[0] + v10.f32[0], v11, 3);
  v13 = vmulq_f32(v19.columns[0], 0);
  *(v1 + 672) = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v19.columns[0], v11.f32[2] + v11.f32[2]), 0, v19.columns[1]), 0, v19.columns[2]), 0, v19.columns[3]);
  *(v1 + 688) = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(v13, v19.columns[1], vmuls_lane_f32(-2.0, v11, 3)), 0, v19.columns[2]), 0, v19.columns[3]);
  *(v1 + 704) = vmlaq_f32(vaddq_f32(v19.columns[2], vmlaq_f32(v13, 0, v19.columns[1])), 0, v19.columns[3]);
  *(v1 + 720) = vaddq_f32(v19.columns[3], vmlaq_f32(vmlsq_lane_f32(vmulq_n_f32(v19.columns[0], -1.0 - vmuls_lane_f32(v12 + v12, v11, 2)), v19.columns[1], *v10.f32, 0), 0, v19.columns[2]));
  if (*(v1 + 832) >= 2u)
  {
    v20 = __invert_f4(*(v1 + 192));
    v14 = *(v1 + 944);
    v15 = vdivq_f32(v18, v14);
    v16 = vmulq_f32(v18, v14).f32[0];
    v14.f32[0] = vmuls_lane_f32(v9, *v14.f32, 1);
    v14.f32[0] = -1.0 - vmuls_lane_f32(v14.f32[0] + v14.f32[0], v15, 3);
    v17 = vmulq_f32(v20.columns[0], 0);
    *(v1 + 736) = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v20.columns[0], v15.f32[2] + v15.f32[2]), 0, v20.columns[1]), 0, v20.columns[2]), 0, v20.columns[3]);
    *(v1 + 752) = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(v17, v20.columns[1], vmuls_lane_f32(-2.0, v15, 3)), 0, v20.columns[2]), 0, v20.columns[3]);
    *(v1 + 768) = vmlaq_f32(vaddq_f32(v20.columns[2], vmlaq_f32(v17, 0, v20.columns[1])), 0, v20.columns[3]);
    *(v1 + 784) = vaddq_f32(v20.columns[3], vmlaq_f32(vmlsq_lane_f32(vmulq_n_f32(v20.columns[0], -1.0 - vmuls_lane_f32(v16 + v16, v15, 2)), v20.columns[1], *v14.f32, 0), 0, v20.columns[2]));
  }
}

float sub_1AFB1D910(uint64_t a1, double a2)
{
  *(a1 + 864) = a2;
  *&v2 = *&a2 / *(&a2 + 1);
  result = (*(&a2 + 1) - *&a2) / vmuls_lane_f32(*&a2, *&a2, 1);
  *(&v2 + 1) = result;
  *(a1 + 872) = v2;
  return result;
}

uint64_t sub_1AFB1D9A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[157];
  if (!v4)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v10 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v16 = v10;
      swift_once();
      v10 = v16;
    }

    v18 = 0;
    v11 = 0xD000000000000042;
    v12 = 0x80000001AFF48280;
    return sub_1AF0D4F18(v10, &v18, v11, v12);
  }

  v8 = a1[158];
  sub_1AF6F33A8(a1[157], v8, 0, 0, a4);
  sub_1AF6F33B4(v4, v8, 0, 0, a4);
  if ((*(a3 + 24) & 4) != 0)
  {
    sub_1AF6F3440(v4, v8, 0, 0, a4);
    sub_1AF6F344C(v4, v8, 0, 0, a4);
    v9 = 27;
  }

  else
  {
    v9 = 3;
  }

  sub_1AFB41F64(a1[160], 1, v9);
  v13 = a1[150];
  if (!v13)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v10 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v17 = v10;
      swift_once();
      v10 = v17;
    }

    v18 = 0;
    v12 = 0x80000001AFF482D0;
    v11 = 0xD000000000000040;
    return sub_1AF0D4F18(v10, &v18, v11, v12);
  }

  v14 = a1[151];
  sub_1AF6F33A8(v13, v14, 0, 1, a4);
  result = sub_1AF6F33B4(v13, v14, 0, 1, a4);
  if ((*(a3 + 24) & 4) != 0)
  {
    sub_1AF6F3440(v13, v14, 0, 1, a4);
    return sub_1AF6F344C(v13, v14, 0, 1, a4);
  }

  return result;
}

void *sub_1AFB1DC30@<X0>(void *result@<X0>, float32x4_t *a2@<X8>)
{
  v3 = result[150];
  if (v3 && (v4 = *(result + 302), v5 = [swift_unknownObjectRetain() storageMode], result = swift_unknownObjectRelease(), v5 != 2))
  {
    v6 = [swift_unknownObjectRetain() contents];
    result = v3;
    v7 = *&v6[v4 + 544];
    v8 = *&v6[v4 + 560];
    v9 = *&v6[v4 + 576];
    v10 = *&v6[v4 + 592];
    v11 = vnegq_f32(v7);
    v12 = vdupq_n_s32(0x38D1B717u);
    v13 = vaddq_f32(v10, vmlaq_f32(vsubq_f32(v8, v7), v12, v9));
    v14 = vaddq_f32(v10, vmlaq_f32(vaddq_f32(v7, v8), v12, v9));
    __asm { FMOV            V7.4S, #-1.0 }

    v20 = vaddq_f32(v10, vmlaq_f32(vmlaq_f32(v11, _Q7, v8), v12, v9));
    v10.f32[0] = *&v6[v4 + 828] + *&v6[v4 + 828];
    v21 = vmulq_n_f32(vsubq_f32(v14, v13), *&v6[v4 + 824] + *&v6[v4 + 824]);
    *a2 = v13;
    a2[1] = v21;
    a2[2] = vmulq_n_f32(vsubq_f32(v20, v13), v10.f32[0]);
  }

  else
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

void sub_1AFB1DD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v68 = *MEMORY[0x1E69E9840];
  sub_1AFB19C2C();
  v8 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
  v9 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  if (*(a1 + 1288))
  {
    v10 = v9;
    goto LABEL_14;
  }

  v11 = qword_1ED72AB78;
  v12 = v9;
  if (v11 != -1)
  {
    v35 = v12;
    swift_once();
    v12 = v35;
  }

  if ((byte_1ED73B6A0 & 1) == 0)
  {
LABEL_14:
    if (!*(a1 + 1224))
    {
      if (qword_1ED72AB78 != -1)
      {
        swift_once();
      }

      if (byte_1ED73B6A0 == 1)
      {
        v58 = 0xD000000000000016;
        v59 = 0x80000001AFF48350;
        v60 = 0;
        v61 = 0;
        v62 = MEMORY[0x1E69E7CC0];

        v18 = swift_unknownObjectRetain();
        sub_1AF882DB8(v18, 0, &v49);
        if (v4)
        {

          swift_unknownObjectRelease();
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v20 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v37 = v20;
            swift_once();
            v20 = v37;
          }

          v39 = 0;
          sub_1AF0D4F18(v20, &v39, 0xD000000000000043, 0x80000001AFF48370);

          return;
        }

        swift_unknownObjectRelease();
        v19 = sub_1AF72A584(&v49, v8, v9);
        v40 = v49;
        v21 = v19;
        sub_1AF585778(&v40);
        v54 = v50;
        sub_1AF89BC64(&v54, &qword_1ED723160, &unk_1ED723170);
        v53 = v51;
        sub_1AF89BC64(&v53, &qword_1ED723180, &qword_1ED723190);
        v39 = v52;
        sub_1AFB1FF04(&v39, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8], sub_1AF82352C);

        v22 = [v21 newArgumentEncoderWithBufferIndex_];
        swift_unknownObjectRelease();
        *(a1 + 1224) = v22;
      }
    }

    v23 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);
    v24 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 16);
    v25 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 24);
    v26 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 64);
    v27 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 48);
    *(a1 + 8) = v26;
    *(a1 + 12) = v27;
    *(a1 + 20) = v25;
    v29 = v23 == 1 && v24 == 0;
    *(a1 + 16) = v29;
    v30 = *(a3 + 248);
    v42 = __PAIR64__(LODWORD(v27), v26);
    v43 = v29;
    v44 = v25;
    v31 = v30;
    v32 = CFXBufferAllocatorPerFrameAllocateWithBytes(v31, &v42, 0x10uLL);
    v34 = v33;

    *(a1 + 24) = v32;
    *(a1 + 32) = v34;
    return;
  }

  v38 = v12;
  v63 = 0xD000000000000018;
  v64 = 0x80000001AFF483C0;
  v65 = 0;
  v66 = 0;
  v67 = MEMORY[0x1E69E7CC0];

  v13 = swift_unknownObjectRetain();
  sub_1AF882DB8(v13, 0, &v45);
  if (!v3)
  {
    v4 = 0;
    swift_unknownObjectRelease();
    v14 = sub_1AF72A584(&v45, v8, v9);
    v57 = v45;
    v16 = v14;
    sub_1AF585778(&v57);
    v56 = v46;
    sub_1AF89BC64(&v56, &qword_1ED723160, &unk_1ED723170);
    v55 = v47;
    sub_1AF89BC64(&v55, &qword_1ED723180, &qword_1ED723190);
    v41 = v48;
    sub_1AFB1FF04(&v41, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8], sub_1AF82352C);

    v17 = [v16 newArgumentEncoderWithBufferIndex_];
    swift_unknownObjectRelease();
    *(a1 + 1288) = v17;
    goto LABEL_14;
  }

  swift_unknownObjectRelease();
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v15 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v36 = v15;
    swift_once();
    v15 = v36;
  }

  v42 = 0;
  sub_1AF0D4F18(v15, &v42, 0xD000000000000045, 0x80000001AFF483E0);
}

uint64_t sub_1AFB1E540(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result, a2);
    v8 = *(v7 + 184);

    sub_1AF6D2ADC(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v8, a6);
  }

  return result;
}

uint64_t sub_1AFB1E60C(uint64_t a1, _OWORD *a2)
{
  v3 = v2;
  v5 = a2[41];
  v6 = a2 + 34;
  v64[6] = a2[40];
  v64[7] = v5;
  v65[0] = a2[42];
  *(v65 + 9) = *(a2 + 681);
  v7 = a2[37];
  v64[2] = a2[36];
  v64[3] = v7;
  v8 = a2[39];
  v64[4] = a2[38];
  v64[5] = v8;
  v9 = a2[35];
  v64[0] = a2[34];
  v64[1] = v9;
  if (sub_1AF448314(v64) != 1)
  {
    v10 = *(&v64[0] + 1);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 64);
    swift_unknownObjectRetain();
    v13 = v12(ObjectType, v10);
    swift_unknownObjectRelease();
    if (v13 != 0xFFFFFFFFLL)
    {
      v25 = v13 & 0xFFFFFFFF00000000;
      return v25 | v13;
    }

    v14 = v6[7];
    v30[6] = v6[6];
    v30[7] = v14;
    v31[0] = v6[8];
    *(v31 + 9) = *(v6 + 137);
    v15 = v6[3];
    v30[2] = v6[2];
    v30[3] = v15;
    v16 = v6[5];
    v30[4] = v6[4];
    v30[5] = v16;
    v17 = v6[1];
    v30[0] = *v6;
    v30[1] = v17;
    if (sub_1AF448314(v30) != 1)
    {
      v18 = *(&v30[0] + 1);
      v19 = swift_getObjectType();
      v20 = *(v18 + 152);
      swift_unknownObjectRetain();
      v21 = v20(v19, v18);
      swift_unknownObjectRelease();
      v22 = *(v3 + 32);
      v62[0] = *(v3 + 16);
      v62[1] = v22;
      v63 = *(v3 + 48);
      sub_1AF6B06C0(a1, v62, v21 & 0xFFFFFFFFFFLL, &v32);
      if (v32)
      {
        v58 = v37;
        v56 = v35;
        v57 = v36;
        v53 = v32;
        v59 = v38;
        v54 = v33;
        v55 = v34;
        if (*(&v37 + 1))
        {
          sub_1AF6BA358(0);
          v24 = v23;

          v13 = sub_1AF6496EC(v24);

          v25 = v13 & 0xFFFFFFFF00000000;
          sub_1AFB1FF04(&v32, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF82352C);
          return v25 | v13;
        }

        sub_1AFB1FF04(&v32, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF82352C);
      }

      v26 = *(v3 + 72);
      v60[0] = *(v3 + 56);
      v60[1] = v26;
      v61 = *(v3 + 88);
      sub_1AF6B06C0(a1, v60, v21 & 0xFFFFFFFFFFLL, &v39);
      if (v39)
      {
        v51 = v44;
        v49 = v42;
        v50 = v43;
        v46 = v39;
        v52 = v45;
        v47 = v40;
        v48 = v41;
        if (*(&v44 + 1))
        {
          sub_1AF6BA358(0);
          v28 = v27;

          v13 = sub_1AF6496EC(v28);

          v25 = v13 & 0xFFFFFFFF00000000;
          sub_1AFB1FF04(&v39, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF82352C);
          return v25 | v13;
        }

        sub_1AFB1FF04(&v39, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF82352C);
      }

      v25 = 0;
      LODWORD(v13) = -1;
      return v25 | v13;
    }
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB1EA58(uint64_t result, _OWORD *a2)
{
  if (a2)
  {
    v2 = result;
    v3 = a2 + 34;
    v4 = a2[41];
    v23[6] = a2[40];
    v23[7] = v4;
    v24[0] = a2[42];
    v5 = a2[37];
    v23[2] = a2[36];
    v23[3] = v5;
    v6 = a2[39];
    v23[4] = a2[38];
    v23[5] = v6;
    v7 = a2[35];
    v23[0] = a2[34];
    v23[1] = v7;
    *(v24 + 9) = *(a2 + 681);
    if (sub_1AF448314(v23) == 1 || (v8 = *(&v23[0] + 1), v9 = swift_getObjectType(), v10 = *(v8 + 80), swift_unknownObjectRetain(), , v10(v9, v8), swift_unknownObjectRelease(), v11 = v3[7], v21[6] = v3[6], v21[7] = v11, v22[0] = v3[8], *(v22 + 9) = *(v3 + 137), v12 = v3[3], v21[2] = v3[2], v21[3] = v12, v13 = v3[5], v21[4] = v3[4], v21[5] = v13, v14 = v3[1], v21[0] = *v3, v21[1] = v14, sub_1AF448314(v21) == 1))
    {
      result = sub_1AFDFE518();
      __break(1u);
    }

    else
    {
      v15 = *(&v21[0] + 1);
      ObjectType = swift_getObjectType();
      v17 = *(v15 + 168);
      swift_unknownObjectRetain();
      v17(ObjectType, v15);
      v18 = swift_unknownObjectRelease();
      MEMORY[0x1EEE9AC00](v18, v19);
      v20 = *(v2 + 184);

      sub_1AF6D2ADC(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v20, sub_1AFB21624);
    }
  }

  return result;
}

void sub_1AFB1ECB8(uint64_t a1, float64_t a2, float64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int32 a7)
{
  v104 = *MEMORY[0x1E69E9840];
  v11 = sub_1AFB1E60C(a5, a6);
  *a1 = v11;
  v12 = sub_1AFB2164C(a5, v11);
  v90 = v13;
  v91 = v12;
  sub_1AF3C9244(v11, v98);
  if (v99)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  v15 = vdupq_n_s32(v14);
  v87 = vbslq_s8(v15, xmmword_1AFE20150, v98[0]);
  v84 = vbslq_s8(v15, xmmword_1AFE20160, v98[1]);
  v82 = vbslq_s8(v15, xmmword_1AFE20180, v98[2]);
  v95 = vbslq_s8(v15, xmmword_1AFE201A0, v98[3]);
  sub_1AF3CBE00(v11, v100);
  if (v101)
  {
    v75 = xmmword_1AFE20150;
    v72 = xmmword_1AFE20160;
    v63 = xmmword_1AFE20180;
    v16 = xmmword_1AFE201A0;
  }

  else
  {
    v75 = v100[0];
    v72 = v100[1];
    v16 = v100[3];
    v63 = v100[2];
  }

  v62 = v16;
  sub_1AF3C9AB8(v11, v102);
  v67 = v102[1];
  v69 = v102[3];
  if (v103)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  v65 = vdupq_n_s32(v17);
  v105.columns[3] = v95;
  v92 = vbslq_s8(v65, xmmword_1AFE20150, v102[0]);
  v93 = vbslq_s8(v65, xmmword_1AFE20180, v102[2]);
  v105.columns[1] = v84;
  v105.columns[0] = v87;
  v105.columns[2] = v82;
  v106 = __invert_f4(v105);
  v85 = v106.columns[1];
  v88 = v106.columns[0];
  v81 = v106.columns[3];
  v83 = v106.columns[2];
  v106.columns[0] = v75;
  v106.columns[1] = v72;
  v106.columns[3] = v62;
  v106.columns[2] = v63;
  v58 = __invert_f4(v106);
  v18.f64[0] = a2;
  v18.f64[1] = a3;
  v94 = vcvt_f32_f64(v18);
  v19 = *(a6 + 24);
  v80 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v88, 0, v85), 0, v83), 0, v81);
  *(a1 + 48) = v80;
  v20 = vmulq_f32(v88, 0);
  v78 = vmlaq_f32(vmlaq_f32(vaddq_f32(v85, v20), 0, v83), 0, v81);
  v21 = vmlaq_f32(vaddq_f32(v83, vmlaq_f32(v20, 0, v85)), 0, v81);
  v73 = vaddq_f32(v81, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v88, v95.f32[0]), v85, *v95.f32, 1), v83, v95, 2));
  v107.columns[1] = vbslq_s8(v65, xmmword_1AFE20160, v67);
  *(a1 + 64) = v78;
  *(a1 + 80) = v21;
  *(a1 + 96) = v73;
  *(a1 + 304) = v92;
  *(a1 + 320) = v107.columns[1];
  v74 = v107.columns[1];
  v76 = v21;
  v107.columns[3] = vbslq_s8(v65, xmmword_1AFE201A0, v69);
  v71 = v107.columns[3];
  v107.columns[2] = v93;
  *(a1 + 336) = v93;
  *(a1 + 352) = v107.columns[3];
  v107.columns[0] = v92;
  v108 = __invert_f4(v107);
  v56 = v108.columns[1];
  v57 = v108.columns[0];
  *(a1 + 432) = v108;
  v54 = v108.columns[3];
  v55 = v108.columns[2];
  v68 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v78.f32[0]), v74, *v78.f32, 1), v93, v78, 2), v71, v78, 3);
  v70 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v80.f32[0]), v74, *v80.f32, 1), v93, v80, 2), v71, v80, 3);
  *(a1 + 176) = v70;
  *(a1 + 192) = v68;
  v64 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v73.f32[0]), v74, *v73.f32, 1), v93, v73, 2), v71, v73, 3);
  v66 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v76.f32[0]), v74, *v76.f32, 1), v93, v76, 2), v71, v76, 3);
  *(a1 + 208) = v66;
  *(a1 + 224) = v64;
  v108.columns[0] = vmlaq_f32(vmlaq_f32(vmlaq_f32(v58.columns[0], 0, v58.columns[1]), 0, v58.columns[2]), 0, v58.columns[3]);
  v108.columns[1] = vmulq_f32(v58.columns[0], 0);
  v108.columns[2] = vmlaq_f32(vmlaq_f32(vaddq_f32(v58.columns[1], v108.columns[1]), 0, v58.columns[2]), 0, v58.columns[3]);
  v108.columns[1] = vmlaq_f32(vaddq_f32(v58.columns[2], vmlaq_f32(v108.columns[1], 0, v58.columns[1])), 0, v58.columns[3]);
  v108.columns[3] = vaddq_f32(v58.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58.columns[0], v95.f32[0]), v58.columns[1], *v95.f32, 1), v58.columns[2], v95, 2));
  v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v108.columns[0].f32[0]), v74, *v108.columns[0].f32, 1), v93, v108.columns[0], 2), v71, v108.columns[0], 3);
  v108.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v108.columns[2].f32[0]), v74, *v108.columns[2].f32, 1), v93, v108.columns[2], 2), v71, v108.columns[2], 3);
  v61 = v22;
  *(a1 + 1040) = v22;
  *(a1 + 1056) = v108.columns[0];
  v59 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v108.columns[1].f32[0]), v74, *v108.columns[1].f32, 1), v93, v108.columns[1], 2), v71, v108.columns[1], 3);
  v60 = v108.columns[0];
  *(a1 + 1072) = v59;
  v53 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v108.columns[3].f32[0]), v74, *v108.columns[3].f32, 1), v93, v108.columns[3], 2), v71, v108.columns[3], 3);
  *(a1 + 1088) = v53;
  v108.columns[1] = v85;
  v108.columns[0] = v88;
  v108.columns[3] = v81;
  v108.columns[2] = v83;
  v109 = __invert_f4(v108);
  v23 = vsubq_f32(v109.columns[3], v95);
  v23.i32[3] = 0;
  *(a1 + 560) = v23;
  v24 = 1;
  v109.columns[1].i32[0] = 1;
  v109.columns[2].i32[0] = a7;
  v29.i64[1] = 0x3F8000003F000000;
  v86 = vbslq_s8(vdupq_lane_s8(*&vceqq_s8(v109.columns[2], v109.columns[1]), 0), xmmword_1AFE72A50, xmmword_1AFE20BF0);
  *(a1 + 976) = v86;
  __asm { FMOV            V2.2S, #1.0 }

  *v29.i8 = vdiv_f32(*v109.columns[2].f32, v94);
  *v30.i8 = v94;
  v30.i64[1] = v29.i64[0];
  *(a1 + 848) = v95;
  *(a1 + 864) = v30;
  v89 = v29.i64[0];
  if (a7)
  {
    v30.i32[0] = 1;
    v29.i32[0] = a7;
    *(a1 + 112) = v80;
    *(a1 + 128) = v78;
    *(a1 + 144) = v76;
    *(a1 + 160) = v73;
    *(a1 + 368) = v92;
    *(a1 + 384) = v74;
    *(a1 + 400) = v93;
    *(a1 + 416) = v71;
    *(a1 + 496) = v57;
    *(a1 + 512) = v56;
    *(a1 + 528) = v55;
    *(a1 + 544) = v54;
    *(a1 + 240) = v70;
    *(a1 + 256) = v68;
    *(a1 + 272) = v66;
    *(a1 + 288) = v64;
    *(a1 + 1104) = v61;
    *(a1 + 1120) = v60;
    *(a1 + 1136) = v59;
    *(a1 + 1152) = v53;
    *(a1 + 576) = v23;
    *(a1 + 992) = vbslq_s8(vdupq_lane_s8(*&vceqq_s8(v29, v30), 0), xmmword_1AFE72A60, xmmword_1AFE20BF0);
    v31 = v19 & 1;
    v24 = 2;
    v32.columns[0] = v70;
    v32.columns[1] = v68;
    v32.columns[2] = v66;
    v32.columns[3] = v64;
  }

  else
  {
    v31 = 0;
    v32.columns[1] = v68;
    v32.columns[0] = v70;
    v32.columns[3] = v64;
    v32.columns[2] = v66;
  }

  *(a1 + 884) = v31;
  *(a1 + 880) = v24;
  *(a1 + 912) = __PAIR64__(LODWORD(v90), LODWORD(v91));
  *&v33 = v91 / v90;
  *(&v33 + 1) = (v90 - v91) / (v91 * v90);
  *(a1 + 920) = v33;
  *&v34 = vdiv_f32(COERCE_FLOAT32X2_T(-2.00000048), vdup_lane_s32(v94, 1));
  __asm { FMOV            V6.2S, #-1.0 }

  *(&v34 + 1) = -_D6;
  *(a1 + 896) = v34;
  *(a1 + 1008) = 0u;
  v110 = __invert_f4(v32);
  v36 = vmuls_n_f32(*v86.i32, *v94.i32);
  v37 = vmuls_lane_f32(*&v86.i32[1], v94, 1);
  v38 = -1.0 - ((*&v89 / *&v86.i32[2]) * (v36 + v36));
  v39.f32[0] = -1.0 - ((*(&v89 + 1) / *&v86.i32[3]) * (v37 + v37));
  v40 = vmulq_f32(v110.columns[0], 0);
  *(a1 + 720) = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v110.columns[0], (*&v89 / *&v86.i32[2]) + (*&v89 / *&v86.i32[2])), 0, v110.columns[1]), 0, v110.columns[2]), 0, v110.columns[3]);
  *(a1 + 736) = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(v40, v110.columns[1], (*(&v89 + 1) / *&v86.i32[3]) * -2.0), 0, v110.columns[2]), 0, v110.columns[3]);
  *(a1 + 752) = vmlaq_f32(vaddq_f32(v110.columns[2], vmlaq_f32(v40, 0, v110.columns[1])), 0, v110.columns[3]);
  *(a1 + 768) = vaddq_f32(v110.columns[3], vmlaq_f32(vmlsq_lane_f32(vmulq_n_f32(v110.columns[0], v38), v110.columns[1], v39, 0), 0, v110.columns[2]));
  if (a7)
  {
    v111 = __invert_f4(*(a1 + 240));
    v41 = *(a1 + 992);
    v42 = *&v89 / COERCE_FLOAT(*(a1 + 1000));
    v43 = *v94.i32 * *&v41;
    *&v41 = vmuls_lane_f32(*&v94.i32[1], *&v41, 1);
    *&v41 = -1.0 - ((*(&v89 + 1) / *(&v41 + 3)) * (*&v41 + *&v41));
    v44 = vmulq_f32(v111.columns[0], 0);
    *(a1 + 784) = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v111.columns[0], v42 + v42), 0, v111.columns[1]), 0, v111.columns[2]), 0, v111.columns[3]);
    *(a1 + 800) = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(v44, v111.columns[1], (*(&v89 + 1) / *(&v41 + 3)) * -2.0), 0, v111.columns[2]), 0, v111.columns[3]);
    *(a1 + 816) = vmlaq_f32(vaddq_f32(v111.columns[2], vmlaq_f32(v44, 0, v111.columns[1])), 0, v111.columns[3]);
    *(a1 + 832) = vaddq_f32(v111.columns[3], vmlaq_f32(vmlsq_lane_f32(vmulq_n_f32(v111.columns[0], -1.0 - (v42 * (v43 + v43))), v111.columns[1], *&v41, 0), 0, v111.columns[2]));
  }

  sub_1AFB1D5B4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v46 = Strong;
    v47 = sub_1AF1D0398(Strong);
    v48 = sub_1AF1D02FC(v46);
    sub_1AF1D0260(v46);
    v96 = *sub_1AF1D048C(v46);
  }

  else
  {
    v48 = 0.0;
    __asm { FMOV            V0.4S, #1.0 }

    v96 = _Q0;
    v47 = 0.0;
  }

  *&v50 = compute_fog_parameters(v47, v48);
  *(a1 + 1168) = v50;
  *(a1 + 1184) = sub_1AFB2178C(v96);
  if ((*(a6 + 393) & 1) == 0)
  {
    v51 = *(a6 + 232);
    memcpy(__dst, (a1 + 48), sizeof(__dst));
    *(a1 + 1200) = CFXBufferAllocatorPerFrameAllocateWithBytes(v51, __dst, 0x480uLL);
    *(a1 + 1208) = v52;
  }
}

uint64_t destroy for FrameConstantsStorage(void *a1)
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (a1[172])
  {

    swift_unknownObjectRelease();
  }

  if (a1[177])
  {

    swift_unknownObjectRelease();
  }

  if (a1[188])
  {

    swift_unknownObjectRelease();
  }
}

uint64_t initializeWithCopy for FrameConstantsStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  memcpy((a1 + 48), (a2 + 48), 0x480uLL);
  *(a1 + 1200) = *(a2 + 1200);
  *(a1 + 1216) = *(a2 + 1216);
  *(a1 + 1224) = *(a2 + 1224);
  *(a1 + 1232) = *(a2 + 1232);
  *(a1 + 1240) = *(a2 + 1240);
  *(a1 + 1256) = *(a2 + 1256);
  *(a1 + 1272) = *(a2 + 1272);
  *(a1 + 1280) = *(a2 + 1280);
  *(a1 + 1288) = *(a2 + 1288);
  *(a1 + 1296) = *(a2 + 1296);
  *(a1 + 1300) = *(a2 + 1300);
  v4 = (a1 + 1312);
  v5 = (a2 + 1312);
  v6 = *(a2 + 1376);

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  if (v6)
  {
    *v4 = *v5;
    *(a1 + 1328) = *(a2 + 1328);
    *(a1 + 1344) = *(a2 + 1344);
    *(a1 + 1360) = *(a2 + 1360);
    *(a1 + 1376) = v6;
    *(a1 + 1384) = *(a2 + 1384);
    *(a1 + 1392) = *(a2 + 1392);
    *(a1 + 1396) = *(a2 + 1396);

    swift_unknownObjectRetain();
  }

  else
  {
    v7 = *(a2 + 1360);
    *(a1 + 1344) = *(a2 + 1344);
    *(a1 + 1360) = v7;
    *(a1 + 1376) = *(a2 + 1376);
    *(a1 + 1392) = *(a2 + 1392);
    v8 = *(a2 + 1328);
    *v4 = *v5;
    *(a1 + 1328) = v8;
  }

  v9 = (a1 + 1400);
  v10 = (a2 + 1400);
  v11 = *(a2 + 1416);
  if (v11)
  {
    *v9 = *v10;
    *(a1 + 1416) = v11;
    *(a1 + 1424) = *(a2 + 1424);
    *(a1 + 1432) = *(a2 + 1432);
    *(a1 + 1436) = *(a2 + 1436);

    swift_unknownObjectRetain();
  }

  else
  {
    v12 = *(a2 + 1416);
    *v9 = *v10;
    *(a1 + 1416) = v12;
    *(a1 + 1432) = *(a2 + 1432);
  }

  v13 = (a1 + 1440);
  v14 = (a2 + 1440);
  v15 = *(a2 + 1504);
  if (v15)
  {
    *v13 = *v14;
    *(a1 + 1456) = *(a2 + 1456);
    *(a1 + 1472) = *(a2 + 1472);
    *(a1 + 1488) = *(a2 + 1488);
    *(a1 + 1504) = v15;
    *(a1 + 1512) = *(a2 + 1512);
    *(a1 + 1520) = *(a2 + 1520);
    *(a1 + 1524) = *(a2 + 1524);

    swift_unknownObjectRetain();
  }

  else
  {
    v16 = *(a2 + 1488);
    *(a1 + 1472) = *(a2 + 1472);
    *(a1 + 1488) = v16;
    *(a1 + 1504) = *(a2 + 1504);
    *(a1 + 1520) = *(a2 + 1520);
    v17 = *(a2 + 1456);
    *v13 = *v14;
    *(a1 + 1456) = v17;
  }

  *(a1 + 1528) = *(a2 + 1528);
  *(a1 + 1536) = *(a2 + 1536);
  *(a1 + 1540) = *(a2 + 1540);

  return a1;
}

uint64_t assignWithCopy for FrameConstantsStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 672) = *(a2 + 672);
  *(a1 + 688) = *(a2 + 688);
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 720) = *(a2 + 720);
  *(a1 + 736) = *(a2 + 736);
  *(a1 + 752) = *(a2 + 752);
  *(a1 + 768) = *(a2 + 768);
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 800) = *(a2 + 800);
  *(a1 + 816) = *(a2 + 816);
  *(a1 + 832) = *(a2 + 832);
  *(a1 + 848) = *(a2 + 848);
  *(a1 + 864) = *(a2 + 864);
  *(a1 + 880) = *(a2 + 880);
  *(a1 + 884) = *(a2 + 884);
  *(a1 + 896) = *(a2 + 896);
  *(a1 + 912) = *(a2 + 912);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);
  *(a1 + 932) = *(a2 + 932);
  *(a1 + 936) = *(a2 + 936);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 960) = *(a2 + 960);
  *(a1 + 976) = *(a2 + 976);
  *(a1 + 992) = *(a2 + 992);
  *(a1 + 1008) = *(a2 + 1008);
  *(a1 + 1024) = *(a2 + 1024);
  *(a1 + 1040) = *(a2 + 1040);
  *(a1 + 1056) = *(a2 + 1056);
  *(a1 + 1072) = *(a2 + 1072);
  *(a1 + 1088) = *(a2 + 1088);
  *(a1 + 1104) = *(a2 + 1104);
  *(a1 + 1120) = *(a2 + 1120);
  *(a1 + 1136) = *(a2 + 1136);
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1168) = *(a2 + 1168);
  *(a1 + 1184) = *(a2 + 1184);
  *(a1 + 1200) = *(a2 + 1200);
  *(a1 + 1216) = *(a2 + 1216);

  *(a1 + 1224) = *(a2 + 1224);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 1232) = *(a2 + 1232);

  *(a1 + 1240) = *(a2 + 1240);
  *(a1 + 1256) = *(a2 + 1256);
  *(a1 + 1272) = *(a2 + 1272);
  *(a1 + 1276) = *(a2 + 1276);
  *(a1 + 1280) = *(a2 + 1280);

  *(a1 + 1288) = *(a2 + 1288);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 1296) = *(a2 + 1296);
  *(a1 + 1300) = *(a2 + 1300);
  v4 = (a1 + 1312);
  v5 = (a2 + 1312);
  v6 = *(a2 + 1376);
  if (*(a1 + 1376))
  {
    if (v6)
    {
      *v4 = *v5;
      *(a1 + 1328) = *(a2 + 1328);
      *(a1 + 1332) = *(a2 + 1332);
      *(a1 + 1334) = *(a2 + 1334);
      *(a1 + 1344) = *(a2 + 1344);
      *(a1 + 1360) = *(a2 + 1360);
      *(a1 + 1376) = *(a2 + 1376);

      *(a1 + 1384) = *(a2 + 1384);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 1392) = *(a2 + 1392);
      *(a1 + 1396) = *(a2 + 1396);
    }

    else
    {
      sub_1AFB1FF04(a1 + 1312, &unk_1EB642C40, type metadata accessor for external_scene_constants, &off_1F255F100, sub_1AFB1FF64);
      v9 = *(a2 + 1328);
      *v4 = *v5;
      *(a1 + 1328) = v9;
      v11 = *(a2 + 1360);
      v10 = *(a2 + 1376);
      v12 = *(a2 + 1344);
      *(a1 + 1392) = *(a2 + 1392);
      *(a1 + 1360) = v11;
      *(a1 + 1376) = v10;
      *(a1 + 1344) = v12;
    }
  }

  else if (v6)
  {
    *v4 = *v5;
    v7 = *(a2 + 1328);
    v8 = *(a2 + 1344);
    *(a1 + 1360) = *(a2 + 1360);
    *(a1 + 1344) = v8;
    *(a1 + 1328) = v7;
    *(a1 + 1376) = *(a2 + 1376);
    *(a1 + 1384) = *(a2 + 1384);
    *(a1 + 1392) = *(a2 + 1392);
    *(a1 + 1396) = *(a2 + 1396);

    swift_unknownObjectRetain();
  }

  else
  {
    v13 = *(a2 + 1328);
    *v4 = *v5;
    *(a1 + 1328) = v13;
    v14 = *(a2 + 1344);
    v15 = *(a2 + 1360);
    v16 = *(a2 + 1376);
    *(a1 + 1392) = *(a2 + 1392);
    *(a1 + 1360) = v15;
    *(a1 + 1376) = v16;
    *(a1 + 1344) = v14;
  }

  v17 = (a1 + 1400);
  v18 = (a2 + 1400);
  v19 = *(a2 + 1416);
  if (*(a1 + 1416))
  {
    if (v19)
    {
      *v17 = *v18;
      *(a1 + 1416) = *(a2 + 1416);

      *(a1 + 1424) = *(a2 + 1424);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 1432) = *(a2 + 1432);
      *(a1 + 1436) = *(a2 + 1436);
    }

    else
    {
      sub_1AFB1FF04(a1 + 1400, &unk_1EB642990, type metadata accessor for external_scene_buffers, &off_1F255F110, sub_1AFB1FF64);
      v20 = *(a2 + 1432);
      v21 = *(a2 + 1416);
      *v17 = *v18;
      *(a1 + 1416) = v21;
      *(a1 + 1432) = v20;
    }
  }

  else if (v19)
  {
    *v17 = *v18;
    *(a1 + 1416) = *(a2 + 1416);
    *(a1 + 1424) = *(a2 + 1424);
    *(a1 + 1432) = *(a2 + 1432);
    *(a1 + 1436) = *(a2 + 1436);

    swift_unknownObjectRetain();
  }

  else
  {
    v22 = *v18;
    v23 = *(a2 + 1416);
    *(a1 + 1432) = *(a2 + 1432);
    *v17 = v22;
    *(a1 + 1416) = v23;
  }

  v24 = (a1 + 1440);
  v25 = (a2 + 1440);
  v26 = *(a2 + 1504);
  if (*(a1 + 1504))
  {
    if (v26)
    {
      *v24 = *v25;
      *(a1 + 1456) = *(a2 + 1456);
      *(a1 + 1458) = *(a2 + 1458);
      *(a1 + 1459) = *(a2 + 1459);
      *(a1 + 1460) = *(a2 + 1460);
      *(a1 + 1464) = *(a2 + 1464);
      *(a1 + 1466) = *(a2 + 1466);
      *(a1 + 1472) = *(a2 + 1472);
      *(a1 + 1488) = *(a2 + 1488);
      *(a1 + 1492) = *(a2 + 1492);
      *(a1 + 1494) = *(a2 + 1494);
      *(a1 + 1504) = *(a2 + 1504);

      *(a1 + 1512) = *(a2 + 1512);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 1520) = *(a2 + 1520);
      *(a1 + 1524) = *(a2 + 1524);
    }

    else
    {
      sub_1AFB1FF04(a1 + 1440, &unk_1EB633E80, type metadata accessor for external_entity_constants, &off_1F255F120, sub_1AFB1FF64);
      v29 = *(a2 + 1456);
      *v24 = *v25;
      *(a1 + 1456) = v29;
      v31 = *(a2 + 1488);
      v30 = *(a2 + 1504);
      v32 = *(a2 + 1472);
      *(a1 + 1520) = *(a2 + 1520);
      *(a1 + 1488) = v31;
      *(a1 + 1504) = v30;
      *(a1 + 1472) = v32;
    }
  }

  else if (v26)
  {
    *v24 = *v25;
    v27 = *(a2 + 1456);
    v28 = *(a2 + 1472);
    *(a1 + 1488) = *(a2 + 1488);
    *(a1 + 1472) = v28;
    *(a1 + 1456) = v27;
    *(a1 + 1504) = *(a2 + 1504);
    *(a1 + 1512) = *(a2 + 1512);
    *(a1 + 1520) = *(a2 + 1520);
    *(a1 + 1524) = *(a2 + 1524);

    swift_unknownObjectRetain();
  }

  else
  {
    v33 = *(a2 + 1456);
    *v24 = *v25;
    *(a1 + 1456) = v33;
    v34 = *(a2 + 1472);
    v35 = *(a2 + 1488);
    v36 = *(a2 + 1504);
    *(a1 + 1520) = *(a2 + 1520);
    *(a1 + 1488) = v35;
    *(a1 + 1504) = v36;
    *(a1 + 1472) = v34;
  }

  *(a1 + 1528) = *(a2 + 1528);

  *(a1 + 1536) = *(a2 + 1536);
  *(a1 + 1540) = *(a2 + 1540);
  *(a1 + 1541) = *(a2 + 1541);
  return a1;
}

uint64_t sub_1AFB1FF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1AFB1FF64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for FrameConstantsStorage.ConstantStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t assignWithTake for FrameConstantsStorage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  v6 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v6;
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  v8 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v8;
  v9 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v9;
  v10 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v10;
  v11 = *(a2 + 256);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = v11;
  v12 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v12;
  v13 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v13;
  v14 = *(a2 + 352);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = v14;
  v15 = *(a2 + 384);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = v15;
  v16 = *(a2 + 416);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = v16;
  v17 = *(a2 + 448);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = v17;
  v18 = *(a2 + 480);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = v18;
  v19 = *(a2 + 512);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = v19;
  v20 = *(a2 + 544);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = v20;
  v21 = *(a2 + 576);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 576) = v21;
  v22 = *(a2 + 608);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 608) = v22;
  v23 = *(a2 + 640);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 640) = v23;
  v24 = *(a2 + 672);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 672) = v24;
  v25 = *(a2 + 704);
  *(a1 + 688) = *(a2 + 688);
  *(a1 + 704) = v25;
  v26 = *(a2 + 736);
  *(a1 + 720) = *(a2 + 720);
  *(a1 + 736) = v26;
  v27 = *(a2 + 768);
  *(a1 + 752) = *(a2 + 752);
  *(a1 + 768) = v27;
  v28 = *(a2 + 800);
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 800) = v28;
  v29 = *(a2 + 832);
  *(a1 + 816) = *(a2 + 816);
  *(a1 + 832) = v29;
  v30 = *(a2 + 864);
  *(a1 + 848) = *(a2 + 848);
  *(a1 + 864) = v30;
  *(a1 + 880) = *(a2 + 880);
  *(a1 + 896) = *(a2 + 896);
  *(a1 + 912) = *(a2 + 912);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);
  *(a1 + 932) = *(a2 + 932);
  *(a1 + 936) = *(a2 + 936);
  v31 = *(a2 + 960);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 960) = v31;
  v32 = *(a2 + 992);
  *(a1 + 976) = *(a2 + 976);
  *(a1 + 992) = v32;
  v33 = *(a2 + 1024);
  *(a1 + 1008) = *(a2 + 1008);
  *(a1 + 1024) = v33;
  *(a1 + 1040) = *(a2 + 1040);
  *(a1 + 1056) = *(a2 + 1056);
  *(a1 + 1072) = *(a2 + 1072);
  *(a1 + 1088) = *(a2 + 1088);
  *(a1 + 1104) = *(a2 + 1104);
  *(a1 + 1120) = *(a2 + 1120);
  *(a1 + 1136) = *(a2 + 1136);
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1168) = *(a2 + 1168);
  *(a1 + 1184) = *(a2 + 1184);
  *(a1 + 1200) = *(a2 + 1200);
  *(a1 + 1216) = *(a2 + 1216);

  *(a1 + 1224) = *(a2 + 1224);
  swift_unknownObjectRelease();
  *(a1 + 1232) = *(a2 + 1232);

  *(a1 + 1240) = *(a2 + 1240);
  *(a1 + 1256) = *(a2 + 1256);
  *(a1 + 1272) = *(a2 + 1272);
  *(a1 + 1280) = *(a2 + 1280);

  *(a1 + 1288) = *(a2 + 1288);
  swift_unknownObjectRelease();
  *(a1 + 1296) = *(a2 + 1296);
  *(a1 + 1300) = *(a2 + 1300);
  v34 = (a1 + 1312);
  v35 = (a2 + 1312);
  if (*(a1 + 1376))
  {
    v36 = *(a2 + 1376);
    if (v36)
    {
      *v34 = *v35;
      *(a1 + 1328) = *(a2 + 1328);
      *(a1 + 1332) = *(a2 + 1332);
      *(a1 + 1344) = *(a2 + 1344);
      *(a1 + 1360) = *(a2 + 1360);
      *(a1 + 1376) = v36;

      *(a1 + 1384) = *(a2 + 1384);
      swift_unknownObjectRelease();
      *(a1 + 1392) = *(a2 + 1392);
      *(a1 + 1396) = *(a2 + 1396);
      goto LABEL_6;
    }

    sub_1AFB1FF04(a1 + 1312, &unk_1EB642C40, type metadata accessor for external_scene_constants, &off_1F255F100, sub_1AFB1FF64);
  }

  v37 = *(a2 + 1360);
  *(a1 + 1344) = *(a2 + 1344);
  *(a1 + 1360) = v37;
  *(a1 + 1376) = *(a2 + 1376);
  *(a1 + 1392) = *(a2 + 1392);
  v38 = *(a2 + 1328);
  *v34 = *v35;
  *(a1 + 1328) = v38;
LABEL_6:
  v39 = (a1 + 1400);
  v40 = (a2 + 1400);
  if (*(a1 + 1416))
  {
    v41 = *(a2 + 1416);
    if (v41)
    {
      *v39 = *v40;
      *(a1 + 1416) = v41;

      *(a1 + 1424) = *(a2 + 1424);
      swift_unknownObjectRelease();
      *(a1 + 1432) = *(a2 + 1432);
      *(a1 + 1436) = *(a2 + 1436);
      goto LABEL_11;
    }

    sub_1AFB1FF04(a1 + 1400, &unk_1EB642990, type metadata accessor for external_scene_buffers, &off_1F255F110, sub_1AFB1FF64);
  }

  v42 = *(a2 + 1416);
  *v39 = *v40;
  *(a1 + 1416) = v42;
  *(a1 + 1432) = *(a2 + 1432);
LABEL_11:
  v43 = (a1 + 1440);
  v44 = (a2 + 1440);
  if (!*(a1 + 1504))
  {
LABEL_15:
    v46 = *(a2 + 1488);
    *(a1 + 1472) = *(a2 + 1472);
    *(a1 + 1488) = v46;
    *(a1 + 1504) = *(a2 + 1504);
    *(a1 + 1520) = *(a2 + 1520);
    v47 = *(a2 + 1456);
    *v43 = *v44;
    *(a1 + 1456) = v47;
    goto LABEL_16;
  }

  v45 = *(a2 + 1504);
  if (!v45)
  {
    sub_1AFB1FF04(a1 + 1440, &unk_1EB633E80, type metadata accessor for external_entity_constants, &off_1F255F120, sub_1AFB1FF64);
    goto LABEL_15;
  }

  *v43 = *v44;
  *(a1 + 1456) = *(a2 + 1456);
  *(a1 + 1460) = *(a2 + 1460);
  *(a1 + 1464) = *(a2 + 1464);
  *(a1 + 1472) = *(a2 + 1472);
  *(a1 + 1488) = *(a2 + 1488);
  *(a1 + 1492) = *(a2 + 1492);
  *(a1 + 1494) = *(a2 + 1494);
  *(a1 + 1504) = v45;

  *(a1 + 1512) = *(a2 + 1512);
  swift_unknownObjectRelease();
  *(a1 + 1520) = *(a2 + 1520);
  *(a1 + 1524) = *(a2 + 1524);
LABEL_16:
  *(a1 + 1528) = *(a2 + 1528);

  *(a1 + 1536) = *(a2 + 1536);
  *(a1 + 1540) = *(a2 + 1540);
  *(a1 + 1541) = *(a2 + 1541);
  return a1;
}

uint64_t getEnumTagSinglePayload for FrameConstantsStorage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1542))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 1216);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FrameConstantsStorage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1528) = 0;
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
    *(result + 1540) = 0;
    *(result + 1536) = 0;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
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
      *(result + 1542) = 1;
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
      *(result + 1216) = (a2 - 1);
      return result;
    }

    *(result + 1542) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AFB206C8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1AFB20794(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + 7;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((((v6 + ((v5 + 16) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = (a1 + v5 + 16) & ~v5;
    v11 = (a2 + v5 + 16) & ~v5;
    (*(v4 + 16))(v10, v11);
    v12 = ((v6 + v10) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((v6 + v11) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
    v15 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
    *v14 = *v15;
    *(v14 + 8) = *(v15 + 8);
    *(v14 + 12) = *(v15 + 12);

    swift_unknownObjectRetain();
  }

  return v3;
}

uint64_t sub_1AFB208E4(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))((a1 + *(*(*(a2 + 16) - 8) + 80) + 16) & ~*(*(*(a2 + 16) - 8) + 80));

  return swift_unknownObjectRelease();
}

_OWORD *sub_1AFB20970(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 16;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 16) & ~v6;
  v8 = (a2 + v6 + 16) & ~v6;
  (*(v4 + 16))(v7, v8);
  v9 = *(v5 + 48) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + v8) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;
  *(v12 + 8) = *(v13 + 8);
  *(v12 + 12) = *(v13 + 12);

  swift_unknownObjectRetain();
  return a1;
}

_OWORD *sub_1AFB20A3C(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 24;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 16) & ~v6;
  v8 = (a2 + v6 + 16) & ~v6;
  (*(v4 + 24))(v7, v8);
  v9 = *(v5 + 40) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = v9 + v8;
  v12 = (v11 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v10 = *(v11 & 0xFFFFFFFFFFFFFFF8);

  v13 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 &= 0xFFFFFFFFFFFFFFF8;
  *v13 = *v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v13 + 8) = *(v12 + 8);
  *(v13 + 12) = *(v12 + 12);
  return a1;
}

_OWORD *sub_1AFB20B1C(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 16) & ~v6;
  v8 = (a2 + v6 + 16) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = v9 + v7;
  v11 = ((v9 + v8) & 0xFFFFFFFFFFFFFFF8);
  v10 &= 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;
  *(v12 + 8) = *(v13 + 8);
  *(v12 + 12) = *(v13 + 12);
  return a1;
}

_OWORD *sub_1AFB20BDC(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 40;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 16) & ~v6;
  v8 = (a2 + v6 + 16) & ~v6;
  (*(v4 + 40))(v7, v8);
  v9 = *(v5 + 24) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + v8) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;

  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;
  swift_unknownObjectRelease();
  *(v12 + 8) = *(v13 + 8);
  *(v12 + 12) = *(v13 + 12);
  return a1;
}

uint64_t sub_1AFB20CAC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 16) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_1AFB20E0C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 16] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

uint64_t sub_1AFB20FF4()
{
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
  sub_1AF8D40F0(1, 1, 1, v4);
  v1 = v4[1];
  *(v0 + 16) = v4[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v5;
  sub_1AFCC3AF0(1, 1, v6);
  v2 = v6[1];
  *(v0 + 56) = v6[0];
  *(v0 + 72) = v2;
  *(v0 + 88) = v7;
  return v0;
}

uint64_t sub_1AFB210E8(uint64_t a1)
{
  v1 = *(a1 + 184);

  sub_1AF6D2D90(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v1);
}

uint64_t sub_1AFB21198(uint64_t a1)
{
  v2 = sub_1AFB21940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB211D4(uint64_t a1)
{
  v2 = sub_1AFB21940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB21210(void *a1)
{
  sub_1AFB218E4();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF441150(a1, a1[3]);
  sub_1AFB21940();
  sub_1AFDFF3F8();
  return (*(v4 + 8))(v7, v3);
}

double sub_1AFB21338@<D0>(uint64_t a1@<X8>)
{
  bzero(&__src[8], 0x480uLL);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF42D0FC(MEMORY[0x1E69E7CC0]);
  *a1 = -1;
  *(a1 + 4) = 0;
  *(a1 + 9) = 0;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0;
  memcpy((a1 + 40), __src, 0x488uLL);
  result = 0.0;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = v3;
  *(a1 + 1224) = 0;
  *(a1 + 1232) = v2;
  *(a1 + 1240) = 0u;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0;
  *(a1 + 1280) = v2;
  *(a1 + 1288) = 0;
  *(a1 + 1296) = 0;
  *(a1 + 1300) = 0;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1360) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1408) = 0u;
  *(a1 + 1424) = 0u;
  *(a1 + 1440) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1472) = 0u;
  *(a1 + 1488) = 0u;
  *(a1 + 1504) = 0u;
  *(a1 + 1520) = 0u;
  *(a1 + 1534) = 0;
  return result;
}

__n128 sub_1AFB21428@<Q0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>)
{
  v3 = *(a1 + 184);

  os_unfair_recursive_lock_lock_with_options();
  v4 = sub_1AF6D2A6C(&type metadata for FrameConstantsStorage);
  if (v5 == 2 || (v5 & 1) == 0)
  {
    os_unfair_recursive_lock_unlock();
    v18 = xmmword_1AFE20150;
    v19 = xmmword_1AFE20150;
    v20 = xmmword_1AFE20160;
    v17 = xmmword_1AFE20160;
    v21 = xmmword_1AFE20180;
    v16 = xmmword_1AFE20180;
    v22 = xmmword_1AFE201A0;
    v15 = xmmword_1AFE201A0;
  }

  else
  {
    v7 = *(v3 + 16) + v4;
    v8 = 32 * v6;
    os_unfair_lock_lock(*(*(v3 + 32) + 32 * v6 + 24));
    os_unfair_recursive_lock_unlock();
    v9 = *(v7 + 48);
    v10 = *(v7 + 64);
    v11 = *(v7 + 80);
    v12 = *(v7 + 96);
    v19 = *(v7 + 304);
    v20 = *(v7 + 320);
    v21 = *(v7 + 336);
    v22 = *(v7 + 352);
    v13 = vmulq_f32(v9, 0);
    v18 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v9, 0, v10), 0, v11), 0, v12);
    v17 = vmlaq_f32(vmlaq_f32(vaddq_f32(v10, v13), 0, v11), 0, v12);
    v16 = vmlaq_f32(vaddq_f32(v11, vmlaq_f32(v13, 0, v10)), 0, v12);
    v15 = vaddq_f32(v12, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v9, 0.0 - COERCE_FLOAT(*(v7 + 848))), v10, 0.0 - COERCE_FLOAT(HIDWORD(*(v7 + 848)))), v11, 0.0 - COERCE_FLOAT(*(v7 + 856))));
    os_unfair_lock_unlock(*(*(v3 + 32) + v8 + 24));
  }

  *a2 = v18;
  a2[1] = v17;
  a2[2] = v16;
  a2[3] = v15;
  a2[4] = v19;
  a2[5] = v20;
  result = v22;
  a2[6] = v21;
  a2[7] = v22;
  return result;
}

void sub_1AFB215BC()
{
  if (!qword_1EB6429A0)
  {
    type metadata accessor for BufferSlice(255);
    v0 = sub_1AFDFE4C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6429A0);
    }
  }
}

float sub_1AFB2164C(uint64_t a1, unint64_t a2)
{
  sub_1AF3CEE78(a2, v11);
  if (v12.u8[0] != 2)
  {
    return *&v11[6];
  }

  if ((sub_1AF3CEF50(a2) & 0xFF00000000) != 0x200000000)
  {
    return v3;
  }

  sub_1AF3C9AB8(a2, v11);
  result = 0.0;
  if ((v14 & 1) == 0)
  {
    v6 = v12.f32[3];
    v5 = v13;
    v7 = v12.f32[2];
    if (v12.f32[2] > 0.0)
    {
      v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, *&v12), xmmword_1AFE20160, *&v12, 1), xmmword_1AFE206C0, v12, 2), xmmword_1AFE20BF0, v12, 3).i64[1];
      v6 = *(&v8 + 1);
      v7 = *&v8;
      v5 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v13.f32[0]), xmmword_1AFE20160, *v13.f32, 1), xmmword_1AFE206C0, v13, 2), xmmword_1AFE20BF0, v13, 3);
    }

    v5.f32[0] = v5.f32[2] / v7;
    v9 = v5.f32[2] / (v7 + 1.0);
    v10 = (v5.f32[2] + -1.0) / v7;
    if (v6 == 0.0)
    {
      v9 = v10;
    }

    *&v9 = v9;
    LODWORD(result) = vbsl_s8(vdup_lane_s32(vcgt_f32(*v5.f32, *&v9), 0), vrev64_s32(__PAIR64__(LODWORD(v9), v5.u32[0])), __PAIR64__(LODWORD(v9), v5.u32[0])).u32[0];
  }

  return result;
}

__n64 sub_1AFB2178C(__n128 a1)
{
  v1 = HIWORD(a1.n128_u32[0]) & 0x8000;
  v2 = (a1.n128_u32[0] >> 23);
  v3 = v2 - 112;
  v4 = v1 | 0x7BFF;
  if ((a1.n128_u32[0] & 0x7FFFFF) != 0)
  {
    LOWORD(v5) = v1 + 1;
  }

  else
  {
    v5 = HIWORD(a1.n128_u32[0]) & 0x8000;
  }

  v6 = v5 | 0x7C00;
  if (v2 == 255)
  {
    v4 = v6;
  }

  v7 = v2 - 113;
  if (v2 >= 0x71)
  {
    v8 = v4;
  }

  else
  {
    v8 = a1.n128_u16[1] & 0x8000;
  }

  v9 = HIWORD(a1.n128_u32[0]) & 0x8000 | (a1.n128_u32[0] >> 13) & 0x3FF | (v3 << 10);
  if (v7 > 0x1D)
  {
    LOWORD(v9) = v8;
  }

  v10 = HIWORD(a1.n128_u32[1]) & 0x8000;
  v11 = (a1.n128_u32[1] >> 23);
  v12 = v11 - 112;
  v13 = v10 | 0x7BFF;
  if ((a1.n128_u32[1] & 0x7FFFFF) != 0)
  {
    LOWORD(v14) = v10 + 1;
  }

  else
  {
    v14 = HIWORD(a1.n128_u32[1]) & 0x8000;
  }

  v15 = v14 | 0x7C00;
  if (v11 == 255)
  {
    v13 = v15;
  }

  v16 = v11 - 113;
  if (v11 >= 0x71)
  {
    v17 = v13;
  }

  else
  {
    v17 = a1.n128_u16[3] & 0x8000;
  }

  v18 = HIWORD(a1.n128_u32[1]) & 0x8000 | (a1.n128_u32[1] >> 13) & 0x3FF | (v12 << 10);
  if (v16 > 0x1D)
  {
    LOWORD(v18) = v17;
  }

  v19 = HIWORD(a1.n128_u32[2]) & 0x8000;
  v20 = (a1.n128_u32[2] >> 23);
  v21 = v20 - 112;
  v22 = v19 | 0x7BFF;
  if ((a1.n128_u32[2] & 0x7FFFFF) != 0)
  {
    LOWORD(v23) = v19 + 1;
  }

  else
  {
    v23 = HIWORD(a1.n128_u32[2]) & 0x8000;
  }

  v24 = v23 | 0x7C00;
  if (v20 == 255)
  {
    v22 = v24;
  }

  v25 = v20 - 113;
  if (v20 >= 0x71)
  {
    v26 = v22;
  }

  else
  {
    v26 = a1.n128_u16[5] & 0x8000;
  }

  v27 = HIWORD(a1.n128_u32[2]) & 0x8000 | (a1.n128_u32[2] >> 13) & 0x3FF | (v21 << 10);
  if (v25 > 0x1D)
  {
    LOWORD(v27) = v26;
  }

  v28 = HIWORD(a1.n128_u32[3]) & 0x8000;
  v29 = (a1.n128_u32[3] >> 23);
  v30 = v29 - 112;
  v31 = v29 - 113;
  v32 = v28 | 0x7BFF;
  if ((a1.n128_u32[3] & 0x7FFFFF) != 0)
  {
    LOWORD(v33) = v28 + 1;
  }

  else
  {
    v33 = HIWORD(a1.n128_u32[3]) & 0x8000;
  }

  v34 = v33 | 0x7C00;
  if (v29 == 255)
  {
    v32 = v34;
  }

  if (v29 >= 0x71)
  {
    v35 = v32;
  }

  else
  {
    v35 = a1.n128_u16[7] & 0x8000;
  }

  result.n64_u16[0] = v9;
  result.n64_u16[1] = v18;
  if (v31 <= 0x1D)
  {
    v37 = a1.n128_u16[7] & 0x8000 | (a1.n128_u32[3] >> 13) & 0x3FF | (v30 << 10);
  }

  else
  {
    v37 = v35;
  }

  result.n64_u16[2] = v27;
  result.n64_u16[3] = v37;
  return result;
}

void sub_1AFB218E4()
{
  if (!qword_1EB6429B0)
  {
    sub_1AFB21940();
    v0 = sub_1AFDFE9A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6429B0);
    }
  }
}

unint64_t sub_1AFB21940()
{
  result = qword_1EB6429B8;
  if (!qword_1EB6429B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6429B8);
  }

  return result;
}

unint64_t sub_1AFB219A8()
{
  result = qword_1EB6429C0;
  if (!qword_1EB6429C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6429C0);
  }

  return result;
}

unint64_t sub_1AFB21A00()
{
  result = qword_1EB6429C8;
  if (!qword_1EB6429C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6429C8);
  }

  return result;
}

uint64_t sub_1AFB21A74(void *a1, __n128 a2)
{
  v10[0] = a2;
  sub_1AFB22A84(0, &qword_1EB6429E8, sub_1AFB22A30, &type metadata for ClampBox.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB22A30();
  sub_1AFDFF3F8();
  v10[1] = v10[0];
  sub_1AFB22A84(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  sub_1AFB22AEC(&qword_1ED72F758);
  sub_1AFDFE918();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AFB21C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F69736E656D6964 && a2 == 0xEA0000000000736ELL)
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

uint64_t sub_1AFB21CF4(uint64_t a1)
{
  v2 = sub_1AFB22A30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB21D30(uint64_t a1)
{
  v2 = sub_1AFB22A30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB21D6C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1AFB21E7C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

double sub_1AFB21DB4@<D0>(_OWORD *a1@<X8>)
{
  result = 524288.127;
  *a1 = xmmword_1AFE9A6F0;
  return result;
}

double sub_1AFB21E38()
{
  v0 = swift_allocObject();
  result = 134217761.0;
  *(v0 + 16) = xmmword_1AFE9A700;
  return result;
}

uint64_t sub_1AFB21E7C(void *a1)
{
  sub_1AFB22A84(0, &qword_1EB6429D8, sub_1AFB22A30, &type metadata for ClampBox.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB22A30();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AFB22A84(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AFB22AEC(&qword_1ED72F748);
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v10[0] = v10[1];
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AFB2209C(uint64_t a1)
{
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
  sub_1AF5C80C0(v65);
  v74[0] = v65[0];
  v74[1] = v65[1];
  v75 = v66;
  sub_1AF6B06C0(a1, v74, 0x200000000, v67);
  if (*v67)
  {
    if (v70 > 0 && (v59 = *(&v68 + 1)) != 0)
    {
      v58 = *&v67[40];
      v2 = *(&v69 + 1);
      v3 = *(v69 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v4 = *(*(&v69 + 1) + 32);
      v71 = *v67;
      v72 = *&v67[8];
      v73 = *&v67[24];
      v64[2] = *&v67[32];
      v64[3] = v68;
      v64[4] = v69;
      v64[5] = v70;
      v64[0] = *v67;
      v64[1] = *&v67[16];
      sub_1AF5DD298(v64, v62);
      v5 = 0;
      v6 = 0;
      v57 = v3;
      v56 = v4;
      do
      {
        v61 = v6;
        v7 = (v58 + 48 * v5);
        v8 = *v7;
        v60 = v7[1];
        v9 = *(v7 + 2);
        v10 = *(v7 + 3);
        v12 = *(v7 + 4);
        v11 = *(v7 + 5);
        if (v3)
        {
          v13 = *(v11 + 376);

          os_unfair_lock_lock(v13);
          os_unfair_lock_lock(*(v11 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v4);
        v14 = *(v2 + 64);
        v62[0] = *(v2 + 48);
        v62[1] = v14;
        v63 = *(v2 + 80);
        v15 = *(*(*(*(v11 + 40) + 16) + 32) + 16) + 1;
        *(v2 + 48) = ecs_stack_allocator_allocate(*(v2 + 32), 48 * v15, 8);
        *(v2 + 56) = v15;
        *(v2 + 72) = 0;
        *(v2 + 80) = 0;
        *(v2 + 64) = 0;
        v16 = sub_1AF64B110(&type metadata for ClampBox, &off_1F255F6B0, v9, v10, v12, v2);
        v17 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v9, v10, v12, v2);
        v18 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v9, v10, v12, v2);
        if (v9)
        {
          v6 = v61;
          if (v12)
          {
            v20.i32[3] = v54;
            v19.i32[3] = v55;
            do
            {
              v21 = *v16++;
              v22 = v21;
              v23 = v19.i32[3];
              v24 = *v17;
              v19 = vabsq_f32(*v17);
              v19.i32[3] = v23;
              v25 = vcgtq_f32(v19, v21);
              if (vmovn_s32(v25).i32[1])
              {
                v26 = 0.0 - COERCE_FLOAT(v18->i64[1]);
              }

              else
              {
                LODWORD(v26) = v18->i64[1];
              }

              v27.i64[0] = vbslq_s8(v25, vsubq_f32(0, *v18), *v18).u64[0];
              v27.i64[1] = LODWORD(v26);
              *v18++ = v27;
              v24.i32[3] = 0;
              v28.i64[0] = vsubq_f32(0, v22).u64[0];
              v28.f32[2] = 0.0 - v22.f32[2];
              v28.i32[3] = 0;
              v29 = vmaxnmq_f32(v24, v28);
              v29.i32[3] = 0;
              v30 = v20.i32[3];
              v22.i32[3] = 0;
              v20 = vminnmq_f32(v29, v22);
              v20.i32[3] = v30;
              v31 = v20;
              v31.i32[3] = 1.0;
              *v17++ = v31;
              --v12;
            }

            while (v12);
            v54 = v30;
            v55 = v19.i32[3];
          }

          v3 = v57;
          v4 = v56;
        }

        else
        {
          v33.i32[3] = v52;
          v32.i32[3] = v53;
          if (v8 != v60)
          {
            v34 = v60 - v8;
            v35 = &v18[v8];
            v36 = &v17[v8];
            v37 = &v16[v8];
            do
            {
              v38 = *v37++;
              v39 = v38;
              v40 = v32.i32[3];
              v41 = *v36;
              v32 = vabsq_f32(*v36);
              v32.i32[3] = v40;
              v42 = vcgtq_f32(v32, v38);
              if (vmovn_s32(v42).i32[1])
              {
                v43 = 0.0 - COERCE_FLOAT(v35->i64[1]);
              }

              else
              {
                LODWORD(v43) = v35->i64[1];
              }

              v44.i64[0] = vbslq_s8(v42, vsubq_f32(0, *v35), *v35).u64[0];
              v44.i64[1] = LODWORD(v43);
              *v35++ = v44;
              v41.i32[3] = 0;
              v45.i64[0] = vsubq_f32(0, v39).u64[0];
              v45.f32[2] = 0.0 - v39.f32[2];
              v45.i32[3] = 0;
              v46 = vmaxnmq_f32(v41, v45);
              v46.i32[3] = 0;
              v47 = v33.i32[3];
              v39.i32[3] = 0;
              v33 = vminnmq_f32(v46, v39);
              v33.i32[3] = v47;
              v48 = v33;
              v48.i32[3] = 1.0;
              *v36++ = v48;
              --v34;
            }

            while (v34);
            v52 = v47;
            v53 = v32.i32[3];
          }

          v3 = v57;
          v4 = v56;
          v6 = v61;
        }

        sub_1AF630994(v2, &v71, v62);
        sub_1AF62D29C(v11);
        ecs_stack_allocator_pop_snapshot(v4);
        if (v3)
        {
          os_unfair_lock_unlock(*(v11 + 344));
          os_unfair_lock_unlock(*(v11 + 376));
        }

        ++v5;
      }

      while (v5 != v59);
      sub_1AFB229C0(v65, sub_1AFB225C0);
      sub_1AFB229C0(v67, sub_1AF5C3C90);
      v50 = v67;
      v49 = sub_1AF5C3C90;
    }

    else
    {
      sub_1AFB229C0(v65, sub_1AFB225C0);
      v49 = sub_1AF5C3C90;
      v50 = v67;
    }
  }

  else
  {
    v49 = sub_1AFB225C0;
    v50 = v65;
  }

  return sub_1AFB229C0(v50, v49);
}

void sub_1AFB225C0()
{
  if (!qword_1EB6429D0)
  {
    v0 = type metadata accessor for Query3();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6429D0);
    }
  }
}

uint64_t sub_1AFB22650(uint64_t a1)
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
  sub_1AF5C9174(v32);
  v30 = v1[1];
  v45[0] = v32[0];
  v45[1] = v32[1];
  v46 = v33;
  sub_1AF6B06C0(a1, v45, 0x200000000, &v34);
  if (v34)
  {
    if (v41 > 0)
    {
      v27 = v38;
      if (v38)
      {
        v3 = 0;
        v4 = v30;
        v4.i32[3] = 1.0;
        v31 = v4;
        v26 = v37;
        v5 = v40;
        v29 = *(v40 + 32);
        v6 = *(v39 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v42 = v34;
        v43 = v35;
        v44 = v36;
        v25 = v6;
        do
        {
          v7 = (v26 + 48 * v3);
          v8 = *v7;
          v28 = v7[1];
          v9 = *(v7 + 2);
          v10 = *(v7 + 3);
          v12 = *(v7 + 4);
          v11 = *(v7 + 5);
          if (v6)
          {
            v13 = *(v11 + 376);

            os_unfair_lock_lock(v13);
            os_unfair_lock_lock(*(v11 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v29);
          v14 = *(v5 + 64);
          v47[0] = *(v5 + 48);
          v47[1] = v14;
          v48 = *(v5 + 80);
          v15 = *(*(*(*(v11 + 40) + 16) + 32) + 16) + 1;
          *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v15, 8);
          *(v5 + 56) = v15;
          *(v5 + 72) = 0;
          *(v5 + 80) = 0;
          *(v5 + 64) = 0;
          v16 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v9, v10, v12, v5);
          v17 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v9, v10, v12, v5);
          v18 = v17;
          if (v9)
          {
            for (; v12; --v12)
            {
              globalClamp(v16++, v18++, v31);
            }
          }

          else if (v8 != v28)
          {
            v19 = v28 - v8;
            v20 = (v17 + 16 * v8);
            v21 = &v16[v8];
            do
            {
              globalClamp(v21++, v20++, v31);
              --v19;
            }

            while (v19);
          }

          sub_1AF630994(v5, &v42, v47);
          sub_1AF62D29C(v11);
          ecs_stack_allocator_pop_snapshot(v29);
          v6 = v25;
          if (v25)
          {
            os_unfair_lock_unlock(*(v11 + 344));
            os_unfair_lock_unlock(*(v11 + 376));
          }

          ++v3;
        }

        while (v3 != v27);
      }
    }

    sub_1AFB229C0(v32, sub_1AFA0D2A0);
    v22 = sub_1AF5C3C90;
    v23 = &v34;
  }

  else
  {
    v22 = sub_1AFA0D2A0;
    v23 = v32;
  }

  return sub_1AFB229C0(v23, v22);
}

uint64_t sub_1AFB229C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AFB22A30()
{
  result = qword_1EB6429E0;
  if (!qword_1EB6429E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6429E0);
  }

  return result;
}

void sub_1AFB22A84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AFB22AEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AFB22A84(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFB22B7C()
{
  result = qword_1EB6429F0;
  if (!qword_1EB6429F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6429F0);
  }

  return result;
}

unint64_t sub_1AFB22BD4()
{
  result = qword_1EB6429F8;
  if (!qword_1EB6429F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6429F8);
  }

  return result;
}

unint64_t sub_1AFB22C2C()
{
  result = qword_1EB642A00;
  if (!qword_1EB642A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642A00);
  }

  return result;
}

void sub_1AFB22C80(uint64_t a1, uint64_t a2)
{
  v3 = 1;
  if ((a2 & 1) == 0)
  {
    v3 = 2;
  }

  v177 = v3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = v2;
    v6 = a2;
    v7 = 0;
    v185 = 0;
    v8 = (v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v175 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
    v9 = a1 + 32;
    v180 = v4;
    v184 = a1 + 32;
    v176 = a2;
    v179 = (v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    while (1)
    {
      v15 = (v9 + 8 * v7);
      v16 = *v15;
      v17 = v15[1];
      if (v16 != -1 || v17 != 0)
      {
        if ((v16 & 0x80000000) != 0 || v8[1] <= v16 || ((v19 = *v8 + 12 * v16, v17 != -1) ? (v20 = *(v19 + 8) == v17) : (v20 = 1), !v20 || (v21 = *(*(*(v5 + 88) + 8 * *(v19 + 6) + 32) + 16), v22 = *(v21 + 128), !*(v22 + 16)) || (v23 = sub_1AF449CB8(&type metadata for ColorRampComponent), v9 = v184, (v24 & 1) == 0) || *(*(v21 + 24) + 16 * *(*(v22 + 56) + 8 * v23) + 32) != &type metadata for ColorRampComponent))
        {
          if ((v16 & 0x80000000) != 0 || v8[1] <= v16)
          {
            break;
          }

          v25 = *v8 + 12 * v16;
          if (v17 != -1 && *(v25 + 8) != v17)
          {
            break;
          }

          v27 = *(*(*(v5 + 88) + 8 * *(v25 + 6) + 32) + 16);
          v28 = *(v27 + 128);
          if (!*(v28 + 16))
          {
            break;
          }

          v29 = sub_1AF449CB8(&type metadata for CurveComponent);
          v9 = v184;
          if ((v30 & 1) == 0 || *(*(v27 + 24) + 16 * *(*(v28 + 56) + 8 * v29) + 32) != &type metadata for CurveComponent)
          {
            break;
          }
        }
      }

LABEL_8:
      if (++v7 == v4)
      {
        return;
      }
    }

    if ((v16 & 0x80000000) != 0 || v8[1] <= v16 || ((v31 = (*v8 + 12 * v16), v17 != -1) ? (v32 = v31[2] == v17) : (v32 = 1), !v32))
    {
LABEL_123:
      v122 = v16 >= 0 && v8[1] > v16;
      if (v6)
      {
        if (v122)
        {
          v123 = (*v8 + 12 * v16);
          if (v17 == -1 || v123[2] == v17)
          {
            v125 = *(v123 + 2);
            v126 = *(*(v5 + 144) + 8 * *v123 + 32);
            v127 = v126[6];
            v128 = (v127 + 32);
            v129 = *(v127 + 16) + 1;
            while (--v129)
            {
              v130 = v128 + 5;
              v131 = *v128;
              v128 += 5;
              if (v131 == &type metadata for TextureLoadPolicy)
              {
                if (*(&(*(v130 - 2))->Kind + 4 * v125 + v126[16]) != 1)
                {
                  goto LABEL_8;
                }

                if (v126[29] > v125 || v126[30] <= v125)
                {
                  goto LABEL_8;
                }

                v133 = v6;
                v134 = *(v5 + v175);
                v135 = *v134;
                v136 = (v126 + 43);
                v137 = v126[43];

                os_unfair_lock_lock(v137);
                v139 = *(v135 + 32);
                v138 = (v135 + 32);
                ecs_stack_allocator_push_snapshot(v139);
                v140 = *(v126[5] + 16);
                v141 = *(v140 + 128);
                if (!*(v141 + 16) || (v142 = sub_1AF449CB8(&type metadata for TextureLoadRequestCPU), (v143 & 1) == 0) || *(*(v140 + 24) + 16 * *(*(v141 + 56) + 8 * v142) + 32) != &type metadata for TextureLoadRequestCPU)
                {
                  v10 = *v138;

                  v11 = ecs_stack_allocator_allocate(v10, 8, 8);
                  *v11 = v125;
                  v12 = *v134;
                  v13 = &type metadata for TextureLoadRequestCPU;
                  v14 = &off_1F25460F8;
                  goto LABEL_6;
                }

                goto LABEL_7;
              }
            }
          }
        }
      }

      else if (v122)
      {
        v144 = (*v8 + 12 * v16);
        if (v17 == -1 || v144[2] == v17)
        {
          v146 = *(v144 + 2);
          v147 = *(*(v5 + 144) + 8 * *v144 + 32);
          v148 = v147[6];
          v149 = (v148 + 32);
          v150 = *(v148 + 16) + 1;
          while (--v150)
          {
            v151 = v149 + 5;
            v152 = *v149;
            v149 += 5;
            if (v152 == &type metadata for TextureLoadPolicy)
            {
              if (*(&(*(v151 - 2))->Kind + 4 * v146 + v147[16] + 1) == 1 && v147[29] <= v146 && v147[30] > v146)
              {
                v133 = v6;
                v154 = *(v5 + v175);
                v155 = *v154;
                v136 = (v147 + 43);
                v156 = v147[43];

                os_unfair_lock_lock(v156);
                v157 = *(v155 + 32);
                v138 = (v155 + 32);
                ecs_stack_allocator_push_snapshot(v157);
                v158 = *(v147[5] + 16);
                v159 = *(v158 + 128);
                if (!*(v159 + 16) || (v160 = sub_1AF449CB8(&type metadata for TextureLoadRequestGPU), (v161 & 1) == 0) || *(*(v158 + 24) + 16 * *(*(v159 + 56) + 8 * v160) + 32) != &type metadata for TextureLoadRequestGPU)
                {
                  v162 = *v138;

                  v11 = ecs_stack_allocator_allocate(v162, 8, 8);
                  *v11 = v146;
                  v12 = *v154;
                  v13 = &type metadata for TextureLoadRequestGPU;
                  v14 = &off_1F2544788;
LABEL_6:
                  sub_1AF648EC4(v13, v14, v11, 1, 1, v12);
                }

LABEL_7:
                v5 = v178;
                ecs_stack_allocator_pop_snapshot(*v138);
                os_unfair_lock_unlock(*v136);

                v6 = v133;
                v4 = v180;
                v8 = v179;
                v9 = v184;
              }

              goto LABEL_8;
            }
          }
        }
      }

      goto LABEL_8;
    }

    v33 = *(v31 + 2);
    v189 = *(*(v5 + 144) + 8 * *v31 + 32);
    if (v189[29] > v33 || v189[30] <= v33)
    {
      v4 = v180;
      v8 = v179;
      goto LABEL_123;
    }

    v35 = *(v5 + v175);
    v36 = *v35;
    v37 = v189;
    v38 = v189[43];

    os_unfair_lock_lock(v38);
    v181 = v36;
    ecs_stack_allocator_push_snapshot(*(v36 + 32));
    v39 = *(v37[5] + 16);
    v40 = *(v39 + 128);
    if (*(v40 + 16) && (v41 = sub_1AF449CB8(&type metadata for TextureLoadingOptions), (v42 & 1) != 0) && *(*(v39 + 24) + 16 * *(*(v40 + 56) + 8 * v41) + 32) == &type metadata for TextureLoadingOptions)
    {

      v6 = v176;
      v60 = v185;
    }

    else
    {
      v43 = *(v181 + 32);
      v44 = v189;

      v45 = ecs_stack_allocator_allocate(v43, 8, 8);
      v46 = v45;
      *v45 = v33;
      v47 = *v35;
      v48 = v44[24];
      v182 = v45;
      if (v48)
      {
        v49 = v189[27];
        v50 = v189[25];
        v164 = v189[26];
        v165 = v49;
        sub_1AF5C3A64(v45, 1, 1, &type metadata for TextureLoadingOptions, &off_1F2543FE0, 1, v48, v50, v164);
        v46 = v182;
      }

      v51 = v189;
      v52 = v189[5];
      v174 = v47;
      v53 = v47;
      v54 = v185;
      sub_1AF5C3B0C(v52, v189, v46, 1, 1, v53);
      v185 = v54;
      LODWORD(v54) = *(v51 + 6);

      v193 = 0;
      v191 = 0u;
      v192 = 0u;
      v199 = 0;
      memset(v198, 0, sizeof(v198));
      v55 = sub_1AF65A4B4(v54, &type metadata for TextureLoadingOptions, &off_1F2543FE0, 0, 0, &v191, v198);

      sub_1AFB2E634(v198, &qword_1ED72C1C0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
      sub_1AFB2E634(&v191, &qword_1ED72C1C0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
      if ((v51[30] - v51[29]) >= 2)
      {
        v168 = *(v189 + 120);
        v188 = *(v189 + 7);
        v187 = *(v189 + 32);
        v56 = v189[2];
        v57 = *(v56 + 88);
        v173 = v55;
        v58 = v189[5];
        v59 = v58[200];
        v186 = *(v57 + 8 * v55 + 32);

        if ((v59 & 1) != 0 || *(v186 + 200) == 1)
        {
          *(v56 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
          v58 = v189[5];
        }

        v60 = v185;
        v5 = v178;
        if (v58[212])
        {
          v170 = 0;
        }

        else
        {
          v170 = *(v186 + 212);
        }

        v169 = v58[208];
        v61 = v189;
        v183 = v189[16];
        v62 = v189[32];
        sub_1AF5B5880(v58, v182, 1, 1, 0, v189);
        v171 = v61[32];
        v63 = v171 - v62;
        v172 = v62;
        if (v171 == v62)
        {
          v64 = 0;
        }

        else
        {
          v64 = v62;
        }

        v182 = v64;
        *&v198[0] = v64;
        v65 = *(v61[5] + 24);
        v66 = *(v65 + 16);
        v185 = v60;
        if (v66)
        {
          v67 = v65 + 32;
          v167 = v65;

          for (i = 0; i != v66; ++i)
          {
            v69 = v67 + 40 * i;
            if ((*(v69 + 32) & 1) == 0)
            {
              v70 = *(v186 + 24);
              v71 = *(v70 + 16);
              if (v71)
              {
                v72 = (v70 + 32);
                while (*v72 != *v69)
                {
                  v72 += 5;
                  if (!--v71)
                  {
                    goto LABEL_65;
                  }
                }
              }

              else
              {
LABEL_65:
                sub_1AF640BC8();
              }
            }
          }

          v5 = v178;
          v60 = v185;
        }

        if (*(v56 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
        {
          vfx_counters.add(_:_:)(*(v56 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), v189[9] * v63);
        }

        v73 = v189;
        if (*(v189 + 184))
        {
          v74 = 0;
        }

        else
        {
          v74 = v189[21];
        }

        v197 = 0;

        MEMORY[0x1EEE9AC00](&v166, v75);
        v76 = v188;
        *(&v166 - 28) = v188;
        v77 = v187;
        *(&v166 - 108) = v187;
        v78 = v186;
        *(&v166 - 13) = v73;
        *(&v166 - 12) = v78;
        *(&v166 - 11) = 0u;
        *(&v166 - 9) = 0u;
        *(&v166 - 7) = v198;
        *(&v166 - 6) = v183;
        *(&v166 - 5) = &v197;
        *(&v166 - 32) = v169;
        *(&v166 - 7) = v173;
        *(&v166 - 24) = v170;
        v164 = v174;
        DWORD2(v192) = -1;
        v193 = v172;
        v194 = v171;
        v195 = v172;
        v196 = v171;
        *&v191 = v172;
        *(&v191 + 1) = v171;
        *&v192 = v74;
        if (v63 < 1)
        {
        }

        else
        {
          v79 = v173;
          v80 = v168;
          do
          {
            v190 = v77;
            sub_1AF6248A8(v79, v76 | (v77 << 32), v80, v56, &v191, sub_1AF5C5E08);
            v77 = v187;
            v76 = v188;
          }

          while ((*(&v191 + 1) - v191) > 0);

          v5 = v178;
        }

        v87 = v189[24];
        v6 = v176;
        if (!v87)
        {
          goto LABEL_120;
        }

        v88 = v189[26];
        v89 = v172;
        v90 = v171;
        sub_1AF75D364(v172, v171, v87);
        v91 = v89;
        v92 = v90;
        v93 = v88;
        v60 = v185;
LABEL_119:
        sub_1AF75D364(v91, v92, v93);
LABEL_120:

        goto LABEL_121;
      }

      if ((sub_1AF649CEC() & 1) == 0)
      {
        v81 = v55;
        v82 = v189[30];
        v182 = v189[29];
        v168 = *(v189 + 120);
        v188 = *(v189 + 7);
        v187 = *(v189 + 32);
        v83 = v189[2];
        v84 = *(v83 + 88);
        v173 = v81;
        v85 = v189[5];
        v86 = v85[200];
        v186 = *(v84 + 8 * v81 + 32);

        if ((v86 & 1) != 0 || *(v186 + 200) == 1)
        {
          *(v83 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
          v85 = v189[5];
        }

        if (v85[212])
        {
          v170 = 0;
        }

        else
        {
          v170 = *(v186 + 212);
        }

        v6 = v176;
        v169 = v85[208];
        v94 = v189;
        v183 = v189[16];
        v95 = v189[32];
        v96 = v85;
        v97 = v185;
        sub_1AF5B4FCC(v96, v182, v82, 0, v189);
        v185 = v97;
        v171 = v94[32];
        v98 = v171 - v95;
        v172 = v95;
        if (v171 == v95)
        {
          v99 = 0;
        }

        else
        {
          v99 = v95;
        }

        v182 = v99;
        *&v198[0] = v99;
        v100 = *(v94[5] + 24);
        v101 = *(v100 + 16);
        if (v101)
        {
          v102 = v100 + 32;
          v167 = *(v94[5] + 24);

          for (j = 0; j != v101; ++j)
          {
            v104 = v102 + 40 * j;
            if ((*(v104 + 32) & 1) == 0)
            {
              v105 = *(v186 + 24);
              v106 = *(v105 + 16);
              if (v106)
              {
                v107 = (v105 + 32);
                while (*v107 != *v104)
                {
                  v107 += 5;
                  if (!--v106)
                  {
                    goto LABEL_98;
                  }
                }
              }

              else
              {
LABEL_98:
                sub_1AF640BC8();
              }
            }
          }

          v6 = v176;
        }

        if (*(v83 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
        {
          vfx_counters.add(_:_:)(*(v83 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), v189[9] * v98);
        }

        v108 = v189;
        if (*(v189 + 184))
        {
          v109 = 0;
        }

        else
        {
          v109 = v189[21];
        }

        v197 = 0;

        v182 = &v166;
        MEMORY[0x1EEE9AC00](v110, v111);
        v112 = v188;
        *(&v166 - 28) = v188;
        v113 = v187;
        *(&v166 - 108) = v187;
        v114 = v186;
        *(&v166 - 13) = v108;
        *(&v166 - 12) = v114;
        *(&v166 - 11) = 0u;
        *(&v166 - 9) = 0u;
        *(&v166 - 7) = v198;
        *(&v166 - 6) = v183;
        *(&v166 - 5) = &v197;
        *(&v166 - 32) = v169;
        *(&v166 - 7) = v173;
        *(&v166 - 24) = v170;
        v164 = v174;
        DWORD2(v192) = -1;
        v193 = v172;
        v194 = v171;
        v195 = v172;
        v196 = v171;
        *&v191 = v172;
        *(&v191 + 1) = v171;
        *&v192 = v109;
        if (v98 < 1)
        {

          v60 = v185;
        }

        else
        {
          v60 = v185;
          v115 = v173;
          v116 = v168;
          do
          {
            v190 = v113;
            sub_1AF6248A8(v115, v112 | (v113 << 32), v116, v83, &v191, sub_1AF5C5E08);
            v113 = v187;
            v112 = v188;
          }

          while ((*(&v191 + 1) - v191) > 0);

          v6 = v176;
        }

        v117 = v189[24];
        v5 = v178;
        if (!v117)
        {
          goto LABEL_120;
        }

        v188 = v189[26];
        v118 = v172;
        v119 = v171;
        sub_1AF75D364(v172, v171, v117);
        v91 = v118;
        v92 = v119;
        v93 = v188;
        goto LABEL_119;
      }

      sub_1AF649D40(v55);
      v6 = v176;
      v60 = v185;
      v5 = v178;
    }

LABEL_121:
    sub_1AF67FD1C(v16 | (v17 << 32), v5, v177);
    v185 = v60;
    if (v60)
    {

      v163 = v189;

      os_unfair_lock_unlock(v163[43]);
      __break(1u);
      return;
    }

    v120 = v189;

    ecs_stack_allocator_pop_snapshot(*(v181 + 32));
    os_unfair_lock_unlock(v120[43]);

    v4 = v180;
    v8 = v179;
    v9 = v184;
    goto LABEL_123;
  }
}