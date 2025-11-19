id sub_1AFD0650C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);

  v4 = sub_1AF64B03C(&type metadata for Position);
  v6 = v5;

  v7 = 16 * v3;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = (v4 + 16 * v3);
  }

  v9 = sub_1AF64B03C(&type metadata for Orientation);
  v11 = v10;

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = (v9 + v7);
  }

  v13 = sub_1AF64B03C(&type metadata for Scale3);
  v15 = v14;

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = (v13 + v7);
  }

  sub_1AFD05118(v3, type metadata accessor for VFXObjectTag);

  sub_1AF64B03C(&type metadata for WorldTransform);

  [a2 position];
  HIDWORD(v17) = 1.0;
  *v8 = v17;
  [a2 orientation];
  *v12 = v18;
  result = [a2 scale];
  *v16 = v20;
  return result;
}

uint64_t sub_1AFD066C8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 48);

  v6 = sub_1AF64B03C(&type metadata for TextureFileData);

  v7 = (v6 + 16 * v5);
  v8 = *v7;
  v9 = v7[1];
  sub_1AF43C9F0(a2, a3);
  result = sub_1AF587E7C(v8, v9);
  *v7 = a2;
  v7[1] = a3;
  return result;
}

uint64_t sub_1AFD06760(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = *(a3 + 32);
  sub_1AF43C9F0(a4, a5);
  ecs_stack_allocator_push_snapshot(v10);
  v11 = *(a1 + 16);
  v12 = 2 * v11;
  v13 = ecs_stack_allocator_allocate(*(a3 + 32), 16 * v11 + 16, 8);
  v14 = v13;
  *v13 = &type metadata for TextureFileData;
  v13[1] = &off_1F2544218;
  if (!v11)
  {
    v17 = 1;
    goto LABEL_17;
  }

  if (v11 <= 5 || ((v13 + 2) < a1 + v12 * 8 + 32 ? (v15 = a1 + 32 >= &v13[v12 + 2]) : (v15 = 1), !v15))
  {
    v16 = 0;
    v17 = 1;
LABEL_13:
    v25 = v11 - v16;
    v26 = (a1 + 16 * v16 + 32);
    do
    {
      v27 = *v26++;
      *&v13[2 * v17++] = v27;
      --v25;
    }

    while (v25);
    goto LABEL_17;
  }

  v16 = v11 & 0x7FFFFFFFFFFFFFFCLL;
  v17 = v11 & 0x7FFFFFFFFFFFFFFCLL | 1;
  v18 = v13 + 6;
  v19 = (a1 + 64);
  v20 = v11 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v22 = *(v19 - 2);
    v21 = *(v19 - 1);
    v24 = *v19;
    v23 = v19[1];
    v19 += 4;
    *(v18 - 2) = v22;
    *(v18 - 1) = v21;
    *v18 = v24;
    v18[1] = v23;
    v18 += 4;
    v20 -= 4;
  }

  while (v20);
  if (v11 != v16)
  {
    goto LABEL_13;
  }

LABEL_17:
  sub_1AF43C9F0(a4, a5);
  v28 = sub_1AF638CD8(v14, v17, MEMORY[0x1E69E7CC0], 1, a2 | ((HIDWORD(a2) & 1) << 32), a3, a4, a5);
  sub_1AF439ED8(a4, a5);
  ecs_stack_allocator_pop_snapshot(*(a3 + 32));
  sub_1AF439ED8(a4, a5);
  return v28;
}

void *sub_1AFD069E0(void *result, void (*a2)(void *, void *))
{
  v21 = result[10];
  if (v21 >= 1)
  {
    v3 = result;
    v25 = v2;
    v4 = result[5];
    v6 = result[7];
    v5 = result[8];
    v7 = result[9];
    ecs_stack_allocator_push_snapshot(v7[4]);
    v8 = v7[4];
    if (v6)
    {
      v19 = v5;
      v37 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v9 = (v4 + 24);
      v20 = v3;
      while (1)
      {
        v11 = *(v9 - 6);
        v10 = *(v9 - 5);
        v12 = *(v9 - 4);
        v13 = *(v9 - 1);
        v14 = v9[2];
        v23 = v9[1];
        v24 = *v9;
        if (v37)
        {
          v15 = *(v14 + 376);

          os_unfair_lock_lock(v15);
          os_unfair_lock_lock(*(v14 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v8);

        sub_1AF630914(v16, v7, v26);

        v36 = 1;
        v31[0] = v19;
        v31[1] = v14;
        v31[2] = v7;
        v31[3] = v12;
        v31[4] = (v10 - v11 + v12);
        v31[5] = v21;
        v31[6] = v11;
        v31[7] = v10;
        v31[8] = 0;
        v31[9] = 0;
        v32 = 1;
        v33 = v13;
        v34 = v24;
        v35 = v23;
        a2(v31, v7);
        if (v25)
        {
          break;
        }

        v17 = *(v20 + 1);
        v29[0] = *v20;
        v29[1] = v17;
        v30 = v20[4];
        sub_1AF630994(v7, v29, v26);
        v25 = 0;
        sub_1AF62D29C(v14);
        ecs_stack_allocator_pop_snapshot(v8);
        if (v37)
        {
          os_unfair_lock_unlock(*(v14 + 344));
          os_unfair_lock_unlock(*(v14 + 376));
        }

        v9 += 6;
        if (!--v6)
        {
          v8 = v7[4];
          return ecs_stack_allocator_pop_snapshot(v8);
        }
      }

      v18 = *(v20 + 1);
      v27[0] = *v20;
      v27[1] = v18;
      v28 = v20[4];
      sub_1AF630994(v7, v27, v26);
      sub_1AF62D29C(v14);
      ecs_stack_allocator_pop_snapshot(v8);
      if (v37)
      {
        os_unfair_lock_unlock(*(v14 + 344));
        os_unfair_lock_unlock(*(v14 + 376));
      }

      return ecs_stack_allocator_pop_snapshot(v7[4]);
    }

    else
    {
      return ecs_stack_allocator_pop_snapshot(v8);
    }
  }

  return result;
}

void *sub_1AFD06CD8(void *result)
{
  v21 = result[10];
  if (v21 >= 1)
  {
    v2 = result;
    v26 = v1;
    v3 = result[5];
    v5 = result[7];
    v4 = result[8];
    v6 = result[9];
    ecs_stack_allocator_push_snapshot(*(v6 + 32));
    v7 = *(v6 + 32);
    if (v5)
    {
      v19 = v4;
      v8 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v9 = (v3 + 24);
      v39 = v8;
      v20 = v2;
      while (1)
      {
        v10 = *(v9 - 6);
        v11 = *(v9 - 4);
        v24 = *v9;
        v25 = *(v9 - 1);
        v12 = v9[2];
        v22 = *(v9 - 5);
        v23 = v9[1];
        if (v8)
        {
          v13 = *(v12 + 376);

          os_unfair_lock_lock(v13);
          os_unfair_lock_lock(*(v12 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v7);
        v14 = *(v6 + 64);
        v31[0] = *(v6 + 48);
        v31[1] = v14;
        v32 = *(v6 + 80);
        v15 = *(v6 + 32);
        v16 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;

        *(v6 + 48) = ecs_stack_allocator_allocate(v15, 48 * v16, 8);
        *(v6 + 56) = v16;
        *(v6 + 72) = 0;
        *(v6 + 80) = 0;
        *(v6 + 64) = 0;

        v38 = 1;
        v33[0] = v19;
        v33[1] = v12;
        v33[2] = v6;
        v33[3] = v11;
        v33[4] = (v22 - v10 + v11);
        v33[5] = v21;
        v33[6] = v10;
        v33[7] = v22;
        v33[8] = 0;
        v33[9] = 0;
        v34 = 1;
        v35 = v25;
        v36 = v24;
        v37 = v23;
        sub_1AFD0C590(v33, v6);
        if (v26)
        {
          break;
        }

        v17 = *(v20 + 1);
        v29[0] = *v20;
        v29[1] = v17;
        v30 = v20[4];
        sub_1AF630994(v6, v29, v31);
        v26 = 0;
        sub_1AF62D29C(v12);
        ecs_stack_allocator_pop_snapshot(v7);
        v8 = v39;
        if (v39)
        {
          os_unfair_lock_unlock(*(v12 + 344));
          os_unfair_lock_unlock(*(v12 + 376));
        }

        v9 += 6;
        if (!--v5)
        {
          v7 = *(v6 + 32);
          return ecs_stack_allocator_pop_snapshot(v7);
        }
      }

      v18 = *(v20 + 1);
      v27[0] = *v20;
      v27[1] = v18;
      v28 = v20[4];
      sub_1AF630994(v6, v27, v31);
      sub_1AF62D29C(v12);
      ecs_stack_allocator_pop_snapshot(v7);
      if (v39)
      {
        os_unfair_lock_unlock(*(v12 + 344));
        os_unfair_lock_unlock(*(v12 + 376));
      }

      return ecs_stack_allocator_pop_snapshot(*(v6 + 32));
    }

    else
    {
      return ecs_stack_allocator_pop_snapshot(v7);
    }
  }

  return result;
}

void *sub_1AFD07044(void *result, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v23 = result[10];
  if (v23 >= 1)
  {
    v4 = result;
    v30 = v3;
    v5 = result[5];
    v7 = result[7];
    v6 = result[8];
    v8 = result[9];
    ecs_stack_allocator_push_snapshot(*(v8 + 32));
    v9 = *(v8 + 32);
    if (v7)
    {
      v21 = v6;
      v10 = *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v11 = (v5 + 24);
      v43 = v10;
      v22 = v4;
      while (1)
      {
        v12 = *(v11 - 6);
        v13 = *(v11 - 4);
        v28 = *v11;
        v29 = *(v11 - 1);
        v14 = v11[2];
        v26 = *(v11 - 5);
        v27 = v11[1];
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
        v35[0] = *(v8 + 48);
        v35[1] = v16;
        v36 = *(v8 + 80);
        v17 = *(v8 + 32);
        v18 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;

        *(v8 + 48) = ecs_stack_allocator_allocate(v17, 48 * v18, 8);
        *(v8 + 56) = v18;
        *(v8 + 72) = 0;
        *(v8 + 80) = 0;
        *(v8 + 64) = 0;

        v42 = 1;
        v37[0] = v21;
        v37[1] = v14;
        v37[2] = v8;
        v37[3] = v13;
        v37[4] = (v26 - v12 + v13);
        v37[5] = v23;
        v37[6] = v12;
        v37[7] = v26;
        v37[8] = 0;
        v37[9] = 0;
        v38 = 1;
        v39 = v29;
        v40 = v28;
        v41 = v27;
        a3(v37, v8, a2);
        if (v30)
        {
          break;
        }

        v19 = *(v22 + 1);
        v33[0] = *v22;
        v33[1] = v19;
        v34 = v22[4];
        sub_1AF630994(v8, v33, v35);
        v30 = 0;
        sub_1AF62D29C(v14);
        ecs_stack_allocator_pop_snapshot(v9);
        v10 = v43;
        if (v43)
        {
          os_unfair_lock_unlock(*(v14 + 344));
          os_unfair_lock_unlock(*(v14 + 376));
        }

        v11 += 6;
        if (!--v7)
        {
          v9 = *(v8 + 32);
          return ecs_stack_allocator_pop_snapshot(v9);
        }
      }

      v20 = *(v22 + 1);
      v31[0] = *v22;
      v31[1] = v20;
      v32 = v22[4];
      sub_1AF630994(v8, v31, v35);
      sub_1AF62D29C(v14);
      ecs_stack_allocator_pop_snapshot(v9);
      if (v43)
      {
        os_unfair_lock_unlock(*(v14 + 344));
        os_unfair_lock_unlock(*(v14 + 376));
      }

      return ecs_stack_allocator_pop_snapshot(*(v8 + 32));
    }

    else
    {
      return ecs_stack_allocator_pop_snapshot(v9);
    }
  }

  return result;
}

void *sub_1AFD0730C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void (*a6)(void *, void *, uint64_t, uint64_t, uint64_t, void))
{
  v25 = result[10];
  if (v25 >= 1)
  {
    v7 = result;
    v33 = v6;
    v8 = result[5];
    v10 = result[7];
    v9 = result[8];
    v11 = result[9];
    ecs_stack_allocator_push_snapshot(v11[4]);
    v12 = v11[4];
    if (v10)
    {
      v23 = v9;
      v45 = *(v9 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v13 = (v8 + 24);
      v24 = v7;
      while (1)
      {
        v15 = *(v13 - 6);
        v14 = *(v13 - 5);
        v16 = *(v13 - 4);
        v17 = *(v13 - 1);
        v18 = v13[2];
        v31 = v13[1];
        v32 = *v13;
        if (v45)
        {
          v19 = *(v18 + 376);

          os_unfair_lock_lock(v19);
          os_unfair_lock_lock(*(v18 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v12);

        sub_1AF630914(v20, v11, v34);

        v44 = 1;
        v39[0] = v23;
        v39[1] = v18;
        v39[2] = v11;
        v39[3] = v16;
        v39[4] = (v14 - v15 + v16);
        v39[5] = v25;
        v39[6] = v15;
        v39[7] = v14;
        v39[8] = 0;
        v39[9] = 0;
        v40 = 1;
        v41 = v17;
        v42 = v32;
        v43 = v31;
        a6(v39, v11, a2, a3, a4, a5 & 0xFFFFFF);
        if (v33)
        {
          break;
        }

        v21 = *(v24 + 1);
        v37[0] = *v24;
        v37[1] = v21;
        v38 = v24[4];
        sub_1AF630994(v11, v37, v34);
        v33 = 0;
        sub_1AF62D29C(v18);
        ecs_stack_allocator_pop_snapshot(v12);
        if (v45)
        {
          os_unfair_lock_unlock(*(v18 + 344));
          os_unfair_lock_unlock(*(v18 + 376));
        }

        v13 += 6;
        if (!--v10)
        {
          v12 = v11[4];
          return ecs_stack_allocator_pop_snapshot(v12);
        }
      }

      v22 = *(v24 + 1);
      v35[0] = *v24;
      v35[1] = v22;
      v36 = v24[4];
      sub_1AF630994(v11, v35, v34);
      sub_1AF62D29C(v18);
      ecs_stack_allocator_pop_snapshot(v12);
      if (v45)
      {
        os_unfair_lock_unlock(*(v18 + 344));
        os_unfair_lock_unlock(*(v18 + 376));
      }

      return ecs_stack_allocator_pop_snapshot(v11[4]);
    }

    else
    {
      return ecs_stack_allocator_pop_snapshot(v12);
    }
  }

  return result;
}

void *sub_1AFD075C0(void *result, uint64_t a2, uint64_t a3)
{
  v22 = result[10];
  if (v22 >= 1)
  {
    v4 = result;
    v27 = v3;
    v5 = result[5];
    v6 = result[7];
    v7 = result[8];
    v8 = result[9];
    ecs_stack_allocator_push_snapshot(v8[4]);
    v9 = v8[4];
    if (v6)
    {
      v20 = v7;
      v39 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v10 = (v5 + 24);
      v21 = v4;
      while (1)
      {
        v12 = *(v10 - 6);
        v11 = *(v10 - 5);
        v13 = *(v10 - 4);
        v14 = *(v10 - 1);
        v15 = v10[2];
        v25 = v10[1];
        v26 = *v10;
        if (v39)
        {
          v16 = *(v15 + 376);

          os_unfair_lock_lock(v16);
          os_unfair_lock_lock(*(v15 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v9);

        sub_1AF630914(v17, v8, v28);

        v38 = 1;
        v33[0] = v20;
        v33[1] = v15;
        v33[2] = v8;
        v33[3] = v13;
        v33[4] = (v11 - v12 + v13);
        v33[5] = v22;
        v33[6] = v12;
        v33[7] = v11;
        v33[8] = 0;
        v33[9] = 0;
        v34 = 1;
        v35 = v14;
        v36 = v26;
        v37 = v25;
        sub_1AFD0F964(v33, v8, a2, a3);
        if (v27)
        {
          break;
        }

        v18 = *(v21 + 1);
        v31[0] = *v21;
        v31[1] = v18;
        v32 = v21[4];
        sub_1AF630994(v8, v31, v28);
        v27 = 0;
        sub_1AF62D29C(v15);
        ecs_stack_allocator_pop_snapshot(v9);
        if (v39)
        {
          os_unfair_lock_unlock(*(v15 + 344));
          os_unfair_lock_unlock(*(v15 + 376));
        }

        v10 += 6;
        if (!--v6)
        {
          v9 = v8[4];
          return ecs_stack_allocator_pop_snapshot(v9);
        }
      }

      v19 = *(v21 + 1);
      v29[0] = *v21;
      v29[1] = v19;
      v30 = v21[4];
      sub_1AF630994(v8, v29, v28);
      sub_1AF62D29C(v15);
      ecs_stack_allocator_pop_snapshot(v9);
      if (v39)
      {
        os_unfair_lock_unlock(*(v15 + 344));
        os_unfair_lock_unlock(*(v15 + 376));
      }

      return ecs_stack_allocator_pop_snapshot(v8[4]);
    }

    else
    {
      return ecs_stack_allocator_pop_snapshot(v9);
    }
  }

  return result;
}

void *sub_1AFD07844(void *result, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v25 = result[10];
  if (v25 >= 1)
  {
    v5 = result;
    v33 = v4;
    v6 = result[5];
    v8 = result[7];
    v7 = result[8];
    v9 = result[9];
    ecs_stack_allocator_push_snapshot(*(v9 + 32));
    v10 = *(v9 + 32);
    if (v8)
    {
      v23 = v7;
      v11 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v12 = (v6 + 24);
      v46 = v11;
      v24 = v5;
      while (1)
      {
        v13 = *(v12 - 6);
        v14 = *(v12 - 4);
        v31 = *v12;
        v32 = *(v12 - 1);
        v15 = v12[2];
        v29 = *(v12 - 5);
        v30 = v12[1];
        if (v11)
        {
          v16 = *(v15 + 376);

          os_unfair_lock_lock(v16);
          os_unfair_lock_lock(*(v15 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v10);
        v17 = *(v9 + 64);
        v38[0] = *(v9 + 48);
        v38[1] = v17;
        v39 = *(v9 + 80);
        v18 = *(v9 + 32);
        v19 = v10;
        v20 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;

        *(v9 + 48) = ecs_stack_allocator_allocate(v18, 48 * v20, 8);
        *(v9 + 56) = v20;
        *(v9 + 72) = 0;
        *(v9 + 80) = 0;
        *(v9 + 64) = 0;

        v45 = 1;
        v40[0] = v23;
        v40[1] = v15;
        v40[2] = v9;
        v40[3] = v14;
        v40[4] = (v29 - v13 + v14);
        v40[5] = v25;
        v40[6] = v13;
        v40[7] = v29;
        v40[8] = 0;
        v40[9] = 0;
        v41 = 1;
        v42 = v32;
        v43 = v31;
        v44 = v30;
        a4(v40, v9, a2, a3);
        if (v33)
        {
          break;
        }

        v21 = *(v24 + 1);
        v36[0] = *v24;
        v36[1] = v21;
        v37 = v24[4];
        sub_1AF630994(v9, v36, v38);
        v33 = 0;
        sub_1AF62D29C(v15);
        ecs_stack_allocator_pop_snapshot(v19);
        v10 = v19;
        v11 = v46;
        if (v46)
        {
          os_unfair_lock_unlock(*(v15 + 344));
          os_unfair_lock_unlock(*(v15 + 376));
        }

        v12 += 6;
        if (!--v8)
        {
          v10 = *(v9 + 32);
          return ecs_stack_allocator_pop_snapshot(v10);
        }
      }

      v22 = *(v24 + 1);
      v34[0] = *v24;
      v34[1] = v22;
      v35 = v24[4];
      sub_1AF630994(v9, v34, v38);
      sub_1AF62D29C(v15);
      ecs_stack_allocator_pop_snapshot(v19);
      if (v46)
      {
        os_unfair_lock_unlock(*(v15 + 344));
        os_unfair_lock_unlock(*(v15 + 376));
      }

      return ecs_stack_allocator_pop_snapshot(*(v9 + 32));
    }

    else
    {
      return ecs_stack_allocator_pop_snapshot(v10);
    }
  }

  return result;
}

void *sub_1AFD07CD4(void *result, uint64_t a2)
{
  v22 = result[10];
  if (v22 >= 1)
  {
    v3 = result;
    v28 = v2;
    v4 = result[5];
    v5 = result[7];
    v6 = result[8];
    v7 = result[9];
    ecs_stack_allocator_push_snapshot(*(v7 + 32));
    v8 = *(v7 + 32);
    if (v5)
    {
      v20 = v6;
      v9 = *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v10 = (v4 + 24);
      v41 = v9;
      v21 = v3;
      while (1)
      {
        v11 = *(v10 - 6);
        v12 = *(v10 - 4);
        v26 = *v10;
        v27 = *(v10 - 1);
        v13 = v10[2];
        v24 = *(v10 - 5);
        v25 = v10[1];
        if (v9)
        {
          v14 = *(v13 + 376);

          os_unfair_lock_lock(v14);
          os_unfair_lock_lock(*(v13 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v8);
        v15 = *(v7 + 64);
        v33[0] = *(v7 + 48);
        v33[1] = v15;
        v34 = *(v7 + 80);
        v16 = *(v7 + 32);
        v17 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;

        *(v7 + 48) = ecs_stack_allocator_allocate(v16, 48 * v17, 8);
        *(v7 + 56) = v17;
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 64) = 0;

        v40 = 1;
        v35[0] = v20;
        v35[1] = v13;
        v35[2] = v7;
        v35[3] = v12;
        v35[4] = (v24 - v11 + v12);
        v35[5] = v22;
        v35[6] = v11;
        v35[7] = v24;
        v35[8] = 0;
        v35[9] = 0;
        v36 = 1;
        v37 = v27;
        v38 = v26;
        v39 = v25;
        sub_1AFD0FDB4(v35, v7, a2);
        if (v28)
        {
          break;
        }

        v18 = *(v21 + 1);
        v31[0] = *v21;
        v31[1] = v18;
        v32 = v21[4];
        sub_1AF630994(v7, v31, v33);
        v28 = 0;
        sub_1AF62D29C(v13);
        ecs_stack_allocator_pop_snapshot(v8);
        v9 = v41;
        if (v41)
        {
          os_unfair_lock_unlock(*(v13 + 344));
          os_unfair_lock_unlock(*(v13 + 376));
        }

        v10 += 6;
        if (!--v5)
        {
          v8 = *(v7 + 32);
          return ecs_stack_allocator_pop_snapshot(v8);
        }
      }

      v19 = *(v21 + 1);
      v29[0] = *v21;
      v29[1] = v19;
      v30 = v21[4];
      sub_1AF630994(v7, v29, v33);
      sub_1AF62D29C(v13);
      ecs_stack_allocator_pop_snapshot(v8);
      if (v41)
      {
        os_unfair_lock_unlock(*(v13 + 344));
        os_unfair_lock_unlock(*(v13 + 376));
      }

      return ecs_stack_allocator_pop_snapshot(*(v7 + 32));
    }

    else
    {
      return ecs_stack_allocator_pop_snapshot(v8);
    }
  }

  return result;
}

void *sub_1AFD07F64(uint64_t a1, char a2)
{
  if (a2)
  {
    goto LABEL_2;
  }

  if (a1 <= 1028)
  {
    return &unk_1F2504280;
  }

  if (a1 < 0x409)
  {
    return &unk_1F25042B8;
  }

LABEL_2:
  if (*(v2 + 24) != 2)
  {
    return &unk_1F25042F0;
  }

  sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = sub_1AFB12464(0, 0, 0);
  result = v3;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  *(v3 + 48) = 0;
  return result;
}

void *sub_1AFD0802C(uint64_t a1, char a2)
{
  if (a2)
  {
    goto LABEL_2;
  }

  if (a1 <= 1028)
  {
    return &unk_1F25041D8;
  }

  if (a1 < 0x409)
  {
    return &unk_1F2504210;
  }

LABEL_2:
  if (*(v2 + 24) != 2)
  {
    return &unk_1F2504248;
  }

  sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = sub_1AFB12464(0, 0, 0);
  result = v3;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  *(v3 + 48) = 0;
  return result;
}

void *sub_1AFD080F4(uint64_t a1, char a2)
{
  if (a2)
  {
    goto LABEL_2;
  }

  if (a1 <= 1028)
  {
    return &unk_1F2504130;
  }

  if (a1 < 0x409)
  {
    return &unk_1F2504168;
  }

LABEL_2:
  if (*v2 != 2)
  {
    return &unk_1F25041A0;
  }

  sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = sub_1AFB12464(0, 0, 0);
  result = v3;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  *(v3 + 48) = 0;
  return result;
}

void *sub_1AFD081BC(uint64_t a1, char a2)
{
  if (a2)
  {
    goto LABEL_2;
  }

  if (a1 <= 1028)
  {
    return &unk_1F2503FE0;
  }

  if (a1 < 0x409)
  {
    return &unk_1F2504018;
  }

LABEL_2:
  if (*(v2 + 32) != 2)
  {
    return &unk_1F2504050;
  }

  sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = sub_1AFB12464(0, 0, 0);
  result = v3;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  *(v3 + 48) = 0;
  return result;
}

void *sub_1AFD08284(uint64_t a1, char a2)
{
  if (a2)
  {
    goto LABEL_2;
  }

  if (a1 <= 1028)
  {
    return &unk_1F2503F38;
  }

  if (a1 < 0x409)
  {
    return &unk_1F2503F70;
  }

LABEL_2:
  if (*(v2 + 24) != 2)
  {
    return &unk_1F2503FA8;
  }

  sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = sub_1AFB12464(0, 0, 0);
  result = v3;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  *(v3 + 48) = 0;
  return result;
}

void *sub_1AFD0834C(uint64_t a1, char a2)
{
  if (a2)
  {
    goto LABEL_2;
  }

  if (a1 <= 1028)
  {
    return &unk_1F2504088;
  }

  if (a1 < 0x409)
  {
    return &unk_1F25040C0;
  }

LABEL_2:
  if (*v2 != 2)
  {
    return &unk_1F25040F8;
  }

  sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = sub_1AFB12464(0, 0, 0);
  result = v3;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  *(v3 + 48) = 0;
  return result;
}

unint64_t sub_1AFD0846C(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v68 = result;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = a3;
    v7 = 0;
    v65 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
    v8 = a3 + 32;
    v61 = OBJC_IVAR____TtC3VFX13EntityManager_logger;
    v9 = (a2 + 48);
    v67 = *(a2 + 16);
    while (1)
    {
      if (v7 == *(v6 + 16))
      {
        return result;
      }

      v10 = *(v9 - 2);
      v11 = *v9;
      v12 = *(v9 - 8);
      sub_1AF0D5A54(v8, v78);
      sub_1AF449D40(v78, v77);
      if ((v12 & 4) != 0)
      {
        break;
      }

      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v77);
LABEL_4:
      v9 += 5;
      ++v7;
      v8 += 32;
      if (v5 == v7)
      {
        return result;
      }
    }

    v13 = (v10 >> 59) & 0x1E | (v10 >> 2) & 1;
    v14 = v10;
    v70 = v10;
    if ((v13 - 4) >= 2)
    {
      if (v13 == 1)
      {
        v63 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
        v25 = v10;
        sub_1AF44596C((v10 & 0xFFFFFFFFFFFFFFBLL) + 16, v76);
        if (!swift_unknownObjectWeakLoadStrong())
        {
          sub_1AF443EE0(v10);
          sub_1AF444224(v11);
LABEL_40:
          sub_1AF4459C8(v76);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v77);
          sub_1AF443F24(v25);
          result = sub_1AF444AF4(v11);
          goto LABEL_4;
        }

        swift_getObjectType();
        v26 = swift_conformsToProtocol2();
        if (!v26)
        {
          v25 = v10;
          sub_1AF443EE0(v10);
          sub_1AF444224(v11);
          swift_unknownObjectRelease();
          v6 = a3;
          goto LABEL_40;
        }

        v27 = v26;
        ObjectType = swift_getObjectType();
        v28 = v11;
        v29 = *(v27 + 32);
        sub_1AF443EE0(v10);
        v69 = v28;
        sub_1AF444224(v28);

        v29(v75, ObjectType, v27);
        v30 = sub_1AFDFDFD8();
        v31 = swift_conformsToProtocol2();
        if (v31)
        {
          v32 = v30 == 0;
        }

        else
        {
          v32 = 1;
        }

        if (v32 || (v33 = v31, sub_1AF441150(v75, v75[3]), v34 = sub_1AFDFEE08(), v35 = sub_1AFAF6214(v63, v34, v30, v33), swift_unknownObjectRelease(), !v35))
        {
          sub_1AF4459C8(v76);
          swift_unknownObjectRelease();

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v77);
          v37 = v75;
        }

        else
        {
          v73 = &type metadata for Extensions;
          v74 = &off_1F253E6E8;
          sub_1AF60685C(&v71, v75);
          v36 = v73;
          sub_1AF441150(&v71, v73);
          sub_1AF871960(v77, v35, v36);
          swift_unknownObjectRelease();

          sub_1AF4459C8(v76);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v77);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v75);
          v37 = &v71;
        }
      }

      else
      {
        v69 = v11;
        if (v13 != 7)
        {
          goto LABEL_44;
        }

        v38 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v39 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v40 = thread_worker_index();
        if (*v40 == -1)
        {
          v42 = *(v68 + v65);
        }

        else
        {
          v42 = *(v68 + v65) + 8 * *v40 + 8;
        }

        v43 = *v42;
        v44 = *(*v42 + 32);
        sub_1AF443EE0(v41);
        sub_1AF444224(v69);
        ecs_stack_allocator_push_snapshot(v44);
        LOBYTE(v71) = 1;
        sub_1AF702248(v38, v39, v68, 0x100000000uLL, v79);
        if (!v80)
        {
          v55 = *(v68 + v61);
          v71 = 0;
          v72 = 0xE000000000000000;

          sub_1AFDFE218();

          v71 = 0xD000000000000017;
          v72 = 0x80000001AFF31000;
          MEMORY[0x1B2718AE0](v38, v39);
          v56 = v71;
          v57 = v72;
          v58 = sub_1AFDFDA08();
          v71 = 0;
          (*(*v55 + 88))(v58, &v71, v56, v57);

          ecs_stack_allocator_pop_snapshot(*(v43 + 32));
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v77);
          sub_1AF443F24(v70);
          result = sub_1AF444AF4(v69);
LABEL_38:
          v5 = v67;
          goto LABEL_4;
        }

        v45 = v81;
        v47 = v79[0];
        v46 = v79[1];
        ecs_stack_allocator_pop_snapshot(*(v43 + 32));
        v48 = sub_1AFDFDFD8();
        v49 = swift_conformsToProtocol2();
        if (!v49)
        {
          goto LABEL_43;
        }

        v50 = v49;
        v51 = v47 | (v46 << 32);
        v52 = sub_1AF6824B0(v48, v49, v51);
        if (v52)
        {
          v53 = sub_1AF67A4CC(v77, v52, v45, v48);
          if ((v53 & 1) == 0)
          {
            MEMORY[0x1EEE9AC00](v53, v54);
            sub_1AF682600(v48, v50, v51, a4);
          }
        }

        v37 = v77;
      }

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v37);
      sub_1AF443F24(v70);
      result = sub_1AF444AF4(v69);
    }

    else
    {
      v15 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v16 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v17 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
      sub_1AF443EE0(v14);
      v69 = v11;
      sub_1AF444224(v11);

      v18 = sub_1AFDFDFD8();
      v19 = swift_conformsToProtocol2();
      if (!v19)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        v71 = 0;
        v72 = 0xE000000000000000;
        v59 = v14;
        sub_1AF443EE0(v14);
        sub_1AF444224(v69);
        sub_1AFDFE218();
        v76[0] = v59;
        sub_1AFDFE458();
        MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF4F240);
        result = sub_1AFDFE518();
        __break(1u);
        return result;
      }

      v20 = v19;
      v21 = v16 | (v17 << 32);
      v22 = sub_1AF6824B0(v18, v19, v21);
      if (v22 && (v23 = sub_1AF67A4CC(v77, v22, v15, v18), (v23 & 1) == 0))
      {
        MEMORY[0x1EEE9AC00](v23, v24);
        sub_1AF682600(v18, v20, v21, a5);
        sub_1AF443F24(v70);
        sub_1AF444AF4(v69);
      }

      else
      {

        sub_1AF443F24(v70);
        sub_1AF444AF4(v69);
      }

      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v77);
    }

    v6 = a3;
    goto LABEL_38;
  }

  return result;
}

uint64_t sub_1AFD08C9C(uint64_t result, uint64_t a2, __n128 a3)
{
  v65 = result;
  v3 = *(a2 + 16);
  if (!v3)
  {
    return result;
  }

  v63 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  v60 = OBJC_IVAR____TtC3VFX13EntityManager_logger;
  for (i = (a2 + 64); ; i += 40)
  {
    v5 = *(i - 24);
    if ((~v5 & 6) != 0)
    {
      goto LABEL_4;
    }

    v6 = *(i - 4);
    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = (v6 >> 59) & 0x1E | (v6 >> 2) & 1;
    if ((v10 - 4) >= 2)
    {
      if (v10 == 1)
      {
        v64 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
        sub_1AF44596C((v6 & 0xFFFFFFFFFFFFFFBLL) + 16, v76);
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_getObjectType();
          v39 = swift_conformsToProtocol2();
          if (!v39)
          {
            sub_1AF443EE0(v6);
            sub_1AF444224(v8);
            swift_unknownObjectRelease();
            sub_1AF4459C8(v76);
LABEL_58:
            sub_1AF443F24(v6);
            result = sub_1AF444AF4(v8);
            goto LABEL_4;
          }

          v40 = v39;
          ObjectType = swift_getObjectType();
          v41 = v8;
          v42 = *(v40 + 32);
          sub_1AF443EE0(v6);
          v62 = v41;
          sub_1AF444224(v41);

          v42(&v74, ObjectType, v40);
          v43 = sub_1AFDFDFD8();
          v44 = swift_conformsToProtocol2();
          if (v44)
          {
            v45 = v43 == 0;
          }

          else
          {
            v45 = 1;
          }

          if (v45 || (v46 = v44, sub_1AF441150(&v74, v75), v47 = sub_1AFDFEE08(), v48 = sub_1AFAF6214(v64, v47, v43, v46), swift_unknownObjectRelease(), !v48))
          {
            sub_1AF4459C8(v76);
            swift_unknownObjectRelease();

            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v74);
          }

          else
          {
            v49 = MEMORY[0x1E69E7CA0];
            swift_getAtAnyKeyPath();
            if (v72)
            {
              sub_1AF449D40(&v71, v73);
              v50 = *v70;
              sub_1AF443EE0(v6);
              v8 = v62;
              sub_1AF444224(v62);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v50 = sub_1AF420C34(0, *(v50 + 2) + 1, 1, v50);
              }

              v52 = *(v50 + 2);
              v51 = *(v50 + 3);
              if (v52 >= v51 >> 1)
              {
                v50 = sub_1AF420C34(v51 > 1, v52 + 1, 1, v50);
              }

              *(v50 + 2) = v52 + 1;
              v53 = &v50[40 * v52];
              *(v53 + 4) = v6;
              v53[40] = v5;
              *(v53 + 6) = v62;
              *(v53 + 7) = v7;
              v53[64] = v9;
              *v70 = v50;
              sub_1AF0D5A54(v73, &v71);
              v54 = v70[1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v54 = sub_1AF4247CC(0, *(v54 + 2) + 1, 1, v54);
              }

              v56 = *(v54 + 2);
              v55 = *(v54 + 3);
              if (v56 >= v55 >> 1)
              {
                v54 = sub_1AF4247CC(v55 > 1, v56 + 1, 1, v54);
              }

              swift_unknownObjectRelease();
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v73);
              sub_1AF4459C8(v76);
              *(v54 + 2) = v56 + 1;
              sub_1AF449D40(&v71, &v54[32 * v56 + 32]);
              v70[1] = v54;
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v74);
              goto LABEL_58;
            }

            sub_1AF4459C8(v76);
            swift_unknownObjectRelease();

            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v74);
            sub_1AFD53260(&v71, &qword_1ED726850, v49 + 8);
          }

          sub_1AF443F24(v6);
          result = sub_1AF444AF4(v62);
        }

        else
        {
          result = sub_1AF4459C8(v76);
        }
      }

      else if (v10 == 7)
      {
        v68 = *(i - 1);
        v11 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v12 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v13 = thread_worker_index(a3);
        if (*v13 == -1)
        {
          v14 = *(v65 + v63);
        }

        else
        {
          v14 = *(v65 + v63) + 8 * *v13 + 8;
        }

        v15 = v8;
        v16 = *v14;
        v17 = *(*v14 + 32);
        sub_1AF443EE0(v6);
        sub_1AF444224(v15);
        ecs_stack_allocator_push_snapshot(v17);
        LOBYTE(v76[0]) = 1;
        sub_1AF702248(v11, v12, v65, 0x100000000uLL, v77);
        if (!v77[2])
        {
          v57 = *(v65 + v60);
          *&v76[0] = 0;
          *(&v76[0] + 1) = 0xE000000000000000;

          sub_1AFDFE218();

          *&v76[0] = 0xD000000000000017;
          *(&v76[0] + 1) = 0x80000001AFF31000;
          MEMORY[0x1B2718AE0](v11, v12);
          v58 = v76[0];
          v59 = sub_1AFDFDA08();
          *&v76[0] = 0;
          (*(*v57 + 88))(v59, v76, v58, *(&v58 + 1));

          ecs_stack_allocator_pop_snapshot(*(v16 + 32));
LABEL_60:
          sub_1AF443F24(v6);
          result = sub_1AF444AF4(v15);
          goto LABEL_4;
        }

        v66 = v9;
        v18 = v77[3];
        v19 = v77[0];
        ecs_stack_allocator_pop_snapshot(*(v16 + 32));
        v20 = sub_1AFDFDFD8();
        result = swift_conformsToProtocol2();
        if (!result)
        {
          goto LABEL_64;
        }

        v21 = sub_1AF6824B0(v20, result, v19);
        if (!v21)
        {

          goto LABEL_60;
        }

        sub_1AF6794BC(v21, v18, v20);
        sub_1AF449D40(&v74, v76);
        v22 = *v70;
        sub_1AF443EE0(v6);
        sub_1AF444224(v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1AF420C34(0, *(v22 + 2) + 1, 1, v22);
        }

        v24 = *(v22 + 2);
        v23 = *(v22 + 3);
        if (v24 >= v23 >> 1)
        {
          v22 = sub_1AF420C34(v23 > 1, v24 + 1, 1, v22);
        }

        *(v22 + 2) = v24 + 1;
        v25 = &v22[40 * v24];
        *(v25 + 4) = v6;
        v25[40] = v5;
        *(v25 + 6) = v15;
        *(v25 + 7) = v68;
        v25[64] = v66;
        *v70 = v22;
        sub_1AF0D5A54(v76, &v74);
        v26 = v70[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1AF4247CC(0, *(v26 + 2) + 1, 1, v26);
        }

        v28 = *(v26 + 2);
        v27 = *(v26 + 3);
        if (v28 >= v27 >> 1)
        {
          v26 = sub_1AF4247CC(v27 > 1, v28 + 1, 1, v26);
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v76);
        *(v26 + 2) = v28 + 1;
        sub_1AF449D40(&v74, &v26[32 * v28 + 32]);
        sub_1AF443F24(v6);
        result = sub_1AF444AF4(v15);
        goto LABEL_35;
      }

      goto LABEL_4;
    }

    v69 = *(i - 1);
    v67 = *i;
    v29 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    v30 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    sub_1AF443EE0(v6);
    sub_1AF444224(v8);

    v31 = sub_1AFDFDFD8();
    result = swift_conformsToProtocol2();
    if (!result)
    {
      break;
    }

    v32 = sub_1AF6824B0(v31, result, v30);
    if (v32)
    {
      sub_1AF6794BC(v32, v29, v31);

      sub_1AF449D40(&v74, v76);
      v33 = *v70;
      sub_1AF443EE0(v6);
      sub_1AF444224(v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AF420C34(0, *(v33 + 2) + 1, 1, v33);
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AF420C34(v34 > 1, v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      *(v36 + 4) = v6;
      v36[40] = v5;
      *(v36 + 6) = v8;
      *(v36 + 7) = v69;
      v36[64] = v67;
      *v70 = v33;
      sub_1AF0D5A54(v76, &v74);
      v26 = v70[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AF4247CC(0, *(v26 + 2) + 1, 1, v26);
      }

      v38 = *(v26 + 2);
      v37 = *(v26 + 3);
      if (v38 >= v37 >> 1)
      {
        v26 = sub_1AF4247CC(v37 > 1, v38 + 1, 1, v26);
      }

      sub_1AF443F24(v6);
      sub_1AF444AF4(v8);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v76);
      *(v26 + 2) = v38 + 1;
      result = sub_1AF449D40(&v74, &v26[32 * v38 + 32]);
LABEL_35:
      v70[1] = v26;
      goto LABEL_4;
    }

    sub_1AF443F24(v6);
    sub_1AF444AF4(v8);

LABEL_4:
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_1AFD096F4(void *a1, uint64_t *a2)
{
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];

  v9 = sub_1AF64B110(&type metadata for TextToImageGenerator, &off_1F2530868, v5, v4, v6, v8);
  v10 = v33;
  sub_1AF649C6C(v7[5], &type metadata for TextureCGImage, &v35);
  if (v35 == 1)
  {
    a2[9] = &type metadata for TextureCGImage;
    a2[10] = &off_1F2546BB8;
    v11 = sub_1AF64B110(&type metadata for TextureCGImage, &off_1F2546BB8, v5, v4, v6, v8);
    if (v5)
    {
      for (; v6; --v6)
      {
        sub_1AF6041AC(v9, v11);
        if (v33)
        {
          break;
        }

        ++v11;
        v9 += 128;
      }
    }

    else
    {
      v18 = a1[6];
      v19 = v9 + (v18 << 7);
      v20 = &v11[v18];
      v21 = a1[7] - v18 + 1;
      do
      {
        if (!--v21)
        {
          break;
        }

        v22 = v19 + 128;
        v23 = v20 + 1;
        sub_1AF6041AC(v19, v20);
        v20 = v23;
        v19 = v22;
      }

      while (!v33);
    }
  }

  else
  {
    v32 = v4;
    v34 = a2;
    v12 = v6;
    if (!v5)
    {
      v12 = a1[7] - a1[6];
    }

    v13 = ecs_stack_allocator_allocate(a2[4], 8 * v12, 8);
    v14 = v13;
    if (v12)
    {
      bzero(v13, 8 * v12);
    }

    if (v5)
    {
      v15 = v6 + 1;
      v16 = v14;
      while (--v15)
      {
        v17 = v16 + 1;
        sub_1AF6041AC(v9, v16);
        v16 = v17;
        v9 += 128;
        if (v10)
        {
          goto LABEL_23;
        }
      }

      v31 = v34;
      sub_1AF5B8A74(v5, v32, v6, v14, v12, v34);
    }

    else
    {
      v24 = a1[6];
      v25 = v9 + (v24 << 7);
      v26 = a1[7] - v24 + 1;
      v27 = v14;
      while (--v26)
      {
        v28 = v27 + 1;
        v29 = v25 + 128;
        sub_1AF6041AC(v25, v27);
        v25 = v29;
        v27 = v28;
        if (v10)
        {
LABEL_23:
          ecs_stack_allocator_deallocate(*(v34 + 32), v14, 8 * v12);
        }
      }

      v31 = a2;
      sub_1AF5B8AB8(v7[29], v7[30], v14, v12, a2);
    }

    ecs_stack_allocator_deallocate(*(v31 + 32), v14, 8 * v12);
  }
}

uint64_t sub_1AFD099A0(void *a1, uint64_t a2)
{
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[1];
  v7 = a1[2];

  v48 = sub_1AF64B110(&type metadata for ForceField, &off_1F2560F10, v3, v4, v5, v7);
  sub_1AF649C6C(v6[5], &type metadata for ForceFieldRuntime, &v49);
  if (v49 == 1)
  {
    *(a2 + 72) = &type metadata for ForceFieldRuntime;
    *(a2 + 80) = &off_1F2560FC0;
    v8 = sub_1AF64B110(&type metadata for ForceFieldRuntime, &off_1F2560FC0, v3, v4, v5, v7);
    if (v3)
    {
      if (v5)
      {
        v9 = (v48 + 24);
        v10 = (v8 + 16);
        do
        {
          v11 = *v9;
          v9 += 18;
          *(v10 - 2) = v11 + 0x76E15D3EFEFDCBBFLL;
          *(v10 - 1) = 0xC5004E441C522FB3 * v11 - 0x3AFFB1BBE3ADD04DLL;
          *v10 = 0x77710069854EE241 - v11;
          v10[1] = 0x39109BB02ACBE635 * v11;
          v10 += 4;
          --v5;
        }

        while (v5);
      }
    }

    else
    {
      v22 = a1[6];
      v23 = a1[7] - v22;
      if (v23)
      {
        v24 = (v8 + 32 * v22 + 16);
        v25 = (v48 + 144 * v22 + 24);
        do
        {
          v26 = *v25;
          v25 += 18;
          *(v24 - 2) = v26 + 0x76E15D3EFEFDCBBFLL;
          *(v24 - 1) = 0xC5004E441C522FB3 * v26 - 0x3AFFB1BBE3ADD04DLL;
          *v24 = 0x77710069854EE241 - v26;
          v24[1] = 0x39109BB02ACBE635 * v26;
          v24 += 4;
          --v23;
        }

        while (v23);
      }
    }
  }

  v46 = a2;
  v12 = v5;
  if (!v3)
  {
    v12 = a1[7] - a1[6];
  }

  v49 = 0;
  v13 = v12;
  MEMORY[0x1B271DEC0](&v49, 8);
  v14 = v49;
  v49 = 0;
  MEMORY[0x1B271DEC0](&v49, 8);
  v15 = v49;
  v49 = 0;
  MEMORY[0x1B271DEC0](&v49, 8);
  v16 = v49;
  v49 = 0;
  MEMORY[0x1B271DEC0](&v49, 8);
  v17 = v49;
  v45 = 32 * v13;
  v18 = ecs_stack_allocator_allocate(*(v46 + 32), 32 * v13, 8);
  v19 = v13;
  v20 = v18;
  if (v19)
  {
    if (v19 > 0x1B)
    {
      v21 = 0;
      v28 = 4 * (v19 - 1);
      if (&v18[v28] >= v18 && &v18[v28 + 1] >= v18 + 1 && &v18[v28 + 2] >= v18 + 2 && &v18[v28 + 3] >= v18 + 3 && !((v19 - 1) >> 59))
      {
        *&v29 = v16;
        *(&v29 + 1) = v17;
        v21 = v19 & 0xFFFFFFFFFFFFFFCLL;
        *&v30 = v14;
        *(&v30 + 1) = v15;
        v31 = v18 + 8;
        v32 = v19 & 0xFFFFFFFFFFFFFFCLL;
        do
        {
          *(v31 - 4) = v30;
          *(v31 - 3) = v29;
          *(v31 - 2) = v30;
          *(v31 - 1) = v29;
          *v31 = v30;
          v31[1] = v29;
          v31[2] = v30;
          v31[3] = v29;
          v31 += 8;
          v32 -= 4;
        }

        while (v32);
        if (v19 == v21)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v21 = 0;
    }

    v33 = v19 - v21;
    v34 = &v18[4 * v21 + 2];
    do
    {
      *(v34 - 2) = v14;
      *(v34 - 1) = v15;
      *v34 = v16;
      v34[1] = v17;
      v34 += 4;
      --v33;
    }

    while (v33);
  }

LABEL_26:
  if (v3)
  {
    v35 = v46;
    if (v5)
    {
      v36 = (v48 + 24);
      v37 = v18 + 2;
      v38 = v5;
      do
      {
        v39 = *v36;
        v36 += 18;
        *(v37 - 2) = v39 + 0x76E15D3EFEFDCBBFLL;
        *(v37 - 1) = 0xC5004E441C522FB3 * v39 - 0x3AFFB1BBE3ADD04DLL;
        *v37 = 0x77710069854EE241 - v39;
        v37[1] = 0x39109BB02ACBE635 * v39;
        v37 += 4;
        --v38;
      }

      while (v38);
    }

    sub_1AF5B9674(v3, v4, v5, v18, v19, v46);
  }

  else
  {
    v35 = v46;
    v40 = a1[6];
    v41 = a1[7] - v40;
    if (v41)
    {
      v42 = (v48 + 144 * v40 + 24);
      v43 = v18 + 2;
      do
      {
        v44 = *v42;
        v42 += 18;
        *(v43 - 2) = v44 + 0x76E15D3EFEFDCBBFLL;
        *(v43 - 1) = 0xC5004E441C522FB3 * v44 - 0x3AFFB1BBE3ADD04DLL;
        *v43 = 0x77710069854EE241 - v44;
        v43[1] = 0x39109BB02ACBE635 * v44;
        v43 += 4;
        --v41;
      }

      while (v41);
    }

    sub_1AF5B96B8(v6[29], v6[30], v18, v19, v46);
  }

  ecs_stack_allocator_deallocate(*(v35 + 32), v20, v45);
}

uint64_t sub_1AFD09E48(void *a1, uint64_t a2)
{
  v3 = v2;
  v170 = a2;
  v5 = type metadata accessor for HeaderScript();
  v192 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D4E74();
  v187 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v186 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_1AFDFC298();
  v182 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185, v12);
  v184 = &v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1AFDFC128();
  v181 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189, v14);
  v16 = &v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v176 = &v164 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v177 = &v164 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v178 = &v164 - v25;
  v27 = a1[11];
  v26 = a1[12];
  v28 = a1[13];
  v30 = a1[1];
  v29 = a1[2];

  v168 = v26;
  v180 = sub_1AF64B110(&type metadata for HeaderFileAsset, &off_1F2542470, v27, v26, v28, v29);
  sub_1AF649C6C(*(v30 + 40), v5, &v190);
  v171 = v30;
  if (v190 == 1)
  {
    v31 = v170;
    *(v170 + 72) = v5;
    *(v31 + 80) = &off_1F2542220;
    v32 = sub_1AF705F6C(v30, a1);
    if (v27)
    {
      if (v28)
      {
        v33 = v192[9];
        v175 = "rl of an asset (";
        v176 = "_TtC3VFX19MeshReferenceSystem";
        v174 = (v182 + 4);
        v182 = (v181 + 1);
        v34 = (v32 + 16);
        v35 = (v180 + 40);
        v173 = xmmword_1AFE431C0;
        v36 = v178;
        v177 = v33;
        do
        {
          v188 = v34;
          v38 = *(v35 - 3);
          v37 = *(v35 - 2);
          if (*(v35 - 1))
          {
            v39 = v3;
            v40 = v33;
            v41 = *(v35 - 2);
            v42 = *v35;
            ObjectType = swift_getObjectType();
            v44 = v41;
            v33 = v40;
            (*(v42 + 8))(v38, v44, ObjectType, v42);
          }

          else
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v190 = 0;
            v191 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000020, v176 | 0x8000000000000000);
            v180 = v37;
            MEMORY[0x1B2718AE0](v38, v37);
            MEMORY[0x1B2718AE0](0xD000000000000016, v175 | 0x8000000000000000);
            v45 = v190;
            v46 = v191;
            v47 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v181 = v38;
            v183 = v28;
            v192 = v3;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v48 = swift_allocObject();
            *(v48 + 16) = v173;
            *(v48 + 56) = MEMORY[0x1E69E6158];
            *(v48 + 64) = sub_1AF0D544C();
            *(v48 + 32) = v45;
            *(v48 + 40) = v46;

            sub_1AFDFC4C8();

            v49 = v184;
            sub_1AFDFC288();
            v179 = v187[12];
            v50 = v187[16];
            v51 = v45;
            v52 = v186;
            v53 = v47;
            v54 = &v186[v187[20]];
            (*v174)(v186, v49, v185);
            *(v52 + v179) = v53;
            *(v52 + v50) = 0;
            *v54 = v51;
            *(v54 + 1) = v46;

            sub_1AFDFC608();

            sub_1AFD53198(v52, sub_1AF0D4E74);

            v36 = v178;
            sub_1AFDFC018();
            v39 = v192;
            v28 = v183;
            v33 = v177;
          }

          v55 = sub_1AFDFCEA8();
          v3 = v39;
          v57 = v188;
          if (v39)
          {

            (*v182)(v36, v189);
            v3 = 0;
          }

          else
          {
            v58 = v55;
            v59 = v56;
            (*v182)(v36, v189);

            *(v57 - 1) = v58;
            *v57 = v59;
          }

          v34 = &v33[v57];
          v35 += 6;
          --v28;
        }

        while (v28);
      }
    }

    else
    {
      v96 = a1[6];
      v97 = a1[7];
      v98 = v97 - v96;
      if (v97 != v96)
      {
        v99 = v192[9];
        v175 = "rl of an asset (";
        v176 = "_TtC3VFX19MeshReferenceSystem";
        v174 = (v182 + 4);
        v183 = (v181 + 1);
        v100 = (v32 + v96 * v99 + 16);
        v101 = (v180 + 48 * v96 + 40);
        v173 = xmmword_1AFE431C0;
        v102 = v177;
        v178 = v99;
        do
        {
          v103 = *(v101 - 3);
          v104 = *(v101 - 2);
          v105 = *(v101 - 1);
          v188 = v101;
          if (v105)
          {
            v106 = v3;
            v107 = v100;
            v108 = v98;
            v109 = v99;
            v110 = v104;
            v111 = *v101;
            v112 = swift_getObjectType();
            v113 = v110;
            v99 = v109;
            v98 = v108;
            v100 = v107;
            (*(v111 + 8))(v103, v113, v112, v111);
          }

          else
          {
            v192 = v3;
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v190 = 0;
            v191 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000020, v176 | 0x8000000000000000);
            MEMORY[0x1B2718AE0](v103, v104);
            MEMORY[0x1B2718AE0](0xD000000000000016, v175 | 0x8000000000000000);
            v114 = v103;
            v116 = v190;
            v115 = v191;
            v117 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v181 = v104;
            v182 = v114;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v118 = swift_allocObject();
            *(v118 + 16) = v173;
            *(v118 + 56) = MEMORY[0x1E69E6158];
            *(v118 + 64) = sub_1AF0D544C();
            *(v118 + 32) = v116;
            *(v118 + 40) = v115;

            sub_1AFDFC4C8();

            v119 = v117;
            v120 = v184;
            sub_1AFDFC288();
            v121 = v187[12];
            v179 = v187[16];
            v180 = v121;
            v122 = v115;
            v123 = v186;
            v124 = v116;
            v125 = &v186[v187[20]];
            (*v174)(v186, v120, v185);
            v126 = v179;
            *(v123 + v180) = v119;
            *(v123 + v126) = 0;
            *v125 = v124;
            *(v125 + 1) = v122;

            sub_1AFDFC608();

            sub_1AFD53198(v123, sub_1AF0D4E74);

            v102 = v177;
            sub_1AFDFC018();
            v106 = v192;
            v99 = v178;
          }

          v127 = sub_1AFDFCEA8();
          v3 = v106;
          if (v106)
          {

            (*v183)(v102, v189);
            v3 = 0;
          }

          else
          {
            v129 = v127;
            v130 = v128;
            (*v183)(v102, v189);

            *(v100 - 1) = v129;
            *v100 = v130;
          }

          v100 = &v99[v100];
          v101 = v188 + 6;
          --v98;
        }

        while (v98);
      }
    }
  }

  else
  {
    v177 = v16;
    v183 = v28;
    v60 = v28;
    v169 = v27;
    if (!v27)
    {
      v60 = a1[7] - a1[6];
    }

    *v8 = 2;
    *(v8 + 1) = 0;
    *(v8 + 2) = 0xE000000000000000;
    v61 = MEMORY[0x1E69E7CC0];
    *(v8 + 4) = 0;
    *(v8 + 5) = 0;
    *(v8 + 3) = v61;
    v62 = *(v5 + 32);
    v63 = type metadata accessor for ScriptIndex();
    (*(*(v63 - 8) + 56))(&v8[v62], 1, 1, v63);
    v64 = *(v170 + 32);
    v65 = v192[9];
    v66 = *(v192 + 80) + 1;
    v165 = v65 * v60;
    v67 = ecs_stack_allocator_allocate(v64, v65 * v60, v66);
    v68 = v67;
    if (v60)
    {
      v69 = v67;
      v70 = v60;
      do
      {
        sub_1AFD531F8(v8, v69, type metadata accessor for HeaderScript);
        v69 += v65;
        --v70;
      }

      while (v70);
    }

    sub_1AFD53198(v8, type metadata accessor for HeaderScript);
    v166 = v60;
    v167 = v68;
    if (v169)
    {
      v192 = v3;
      v71 = v183;
      if (v183)
      {
        v188 = v65;
        v174 = "rl of an asset (";
        v175 = "_TtC3VFX19MeshReferenceSystem";
        *&v173 = v182 + 4;
        ++v181;
        v72 = (v68 + 16);
        v73 = (v180 + 40);
        v172 = xmmword_1AFE431C0;
        v74 = v183;
        v75 = v176;
        do
        {
          v76 = *(v73 - 3);
          v77 = *(v73 - 2);
          if (*(v73 - 1))
          {
            v78 = *v73;
            v79 = swift_getObjectType();
            (*(v78 + 8))(v76, v77, v79, v78);
          }

          else
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v190 = 0;
            v191 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000020, v175 | 0x8000000000000000);
            MEMORY[0x1B2718AE0](v76, v77);
            MEMORY[0x1B2718AE0](0xD000000000000016, v174 | 0x8000000000000000);
            v81 = v190;
            v80 = v191;
            LODWORD(v182) = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v178 = v74;
            v179 = v77;
            v180 = v76;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v82 = swift_allocObject();
            *(v82 + 16) = v172;
            *(v82 + 56) = MEMORY[0x1E69E6158];
            *(v82 + 64) = sub_1AF0D544C();
            *(v82 + 32) = v81;
            *(v82 + 40) = v80;

            sub_1AFDFC4C8();

            v177 = v81;
            v83 = v184;
            sub_1AFDFC288();
            v84 = v186;
            v85 = v187[12];
            v86 = v80;
            v87 = v187[16];
            v88 = &v186[v187[20]];
            (*v173)(v186, v83, v185);
            *(v84 + v85) = v182;
            *(v84 + v87) = 0;
            *v88 = v177;
            *(v88 + 1) = v86;

            sub_1AFDFC608();

            sub_1AFD53198(v84, sub_1AF0D4E74);

            v75 = v176;
            sub_1AFDFC018();
            v71 = v183;
            v74 = v178;
          }

          v89 = v192;
          v90 = sub_1AFDFCEA8();
          if (v89)
          {

            (*v181)(v75, v189);
            v192 = 0;
          }

          else
          {
            v92 = v90;
            v93 = v91;
            v192 = 0;
            (*v181)(v75, v189);

            *(v72 - 1) = v92;
            *v72 = v93;
          }

          v72 = (v188 + v72);
          v73 += 6;
          --v74;
        }

        while (v74);
      }

      v94 = v167;
      v95 = v170;
      sub_1AF5B96E0(v169, v168, v71, v167, v166, v170);
    }

    else
    {
      v188 = v65;
      v131 = a1[6];
      v132 = a1[7];
      v133 = v132 - v131;
      if (v132 != v131)
      {
        v175 = "rl of an asset (";
        v176 = "_TtC3VFX19MeshReferenceSystem";
        v174 = (v182 + 4);
        v135 = (v181 + 1);
        v136 = (v180 + 48 * v131 + 40);
        v137 = (v167 + 16);
        v172 = xmmword_1AFE431C0;
        v138 = v177;
        *&v173 = v181 + 1;
        do
        {
          v139 = *(v136 - 3);
          v140 = *(v136 - 2);
          v141 = *(v136 - 1);
          v183 = v136;
          if (v141)
          {
            v142 = v137;
            v143 = v133;
            v144 = v135;
            v145 = v140;
            v146 = *v136;
            v147 = swift_getObjectType();
            v148 = v145;
            v135 = v144;
            v133 = v143;
            v137 = v142;
            (*(v146 + 1))(v139, v148, v147, v146);
          }

          else
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v190 = 0;
            v191 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000020, v176 | 0x8000000000000000);
            MEMORY[0x1B2718AE0](v139, v140);
            MEMORY[0x1B2718AE0](0xD000000000000016, v175 | 0x8000000000000000);
            v149 = v191;
            v180 = v190;
            v150 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v181 = v140;
            v182 = v139;
            v192 = v3;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v151 = swift_allocObject();
            *(v151 + 16) = v172;
            *(v151 + 56) = MEMORY[0x1E69E6158];
            *(v151 + 64) = sub_1AF0D544C();
            v152 = v180;
            *(v151 + 32) = v180;
            *(v151 + 40) = v149;

            sub_1AFDFC4C8();

            v153 = v150;
            v154 = v184;
            sub_1AFDFC288();
            v155 = v186;
            v156 = v187[12];
            v178 = v187[16];
            v179 = v156;
            v157 = v149;
            v158 = &v186[v187[20]];
            (*v174)(v186, v154, v185);
            v159 = v178;
            *(v155 + v179) = v153;
            *&v159[v155] = 0;
            *v158 = v152;
            *(v158 + 1) = v157;

            sub_1AFDFC608();

            sub_1AFD53198(v155, sub_1AF0D4E74);

            v138 = v177;
            sub_1AFDFC018();
            v3 = v192;
            v135 = v173;
          }

          v160 = sub_1AFDFCEA8();
          if (v3)
          {

            (*v135)(v138, v189);
            v3 = 0;
          }

          else
          {
            v162 = v160;
            v163 = v161;
            (*v135)(v138, v189);

            *(v137 - 1) = v162;
            *v137 = v163;
          }

          v136 = v183 + 48;
          v137 = (v188 + v137);
          --v133;
        }

        while (v133);
      }

      v94 = v167;
      v95 = v170;
      sub_1AF5B9730(*(v171 + 232), *(v171 + 240), v167, v166, v170);
    }

    ecs_stack_allocator_deallocate(*(v95 + 32), v94, v165);
  }
}

uint64_t sub_1AFD0B208(void *a1, uint64_t a2)
{
  v173 = a2;
  v3 = type metadata accessor for ShaderScript(0);
  v190 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D4E74();
  v189 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v188 = &v167 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_1AFDFC298();
  v185 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187, v10);
  v186 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_1AFDFC128();
  v183 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192, v12);
  v180 = &v167 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v179 = &v167 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v178 = &v167 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v181 = &v167 - v22;
  v23 = a1[11];
  v24 = a1[12];
  v25 = a1[13];
  v27 = a1[1];
  v26 = a1[2];

  v182 = sub_1AF64B110(&type metadata for ShaderFileAsset, &off_1F25432B8, v23, v24, v25, v26);
  v28 = v3;
  v29 = v195;
  sub_1AF649C6C(*(v27 + 40), v3, &v193);
  v30 = v29;
  v174 = v27;
  if (v193 == 1)
  {
    v31 = v173;
    *(v173 + 72) = v28;
    *(v31 + 80) = &off_1F255B8D0;
    v32 = sub_1AF705FA0(v27, a1);
    v33 = v23;
    v34 = v32;
    if (v33)
    {
      if (v25)
      {
        v35 = v190[9];
        v178 = "rl of an asset (";
        v179 = "_TtC3VFX19MeshReferenceSystem";
        v177 = (v185 + 4);
        v190 = v183 + 1;
        v36 = v181;
        v37 = (v182 + 40);
        v176 = xmmword_1AFE431C0;
        v180 = v35;
        do
        {
          v191 = v25;
          v39 = *(v37 - 3);
          v38 = *(v37 - 2);
          if (*(v37 - 1))
          {
            v40 = v30;
            v41 = v35;
            v42 = *(v37 - 2);
            v43 = *v37;
            ObjectType = swift_getObjectType();
            v45 = v42;
            v35 = v41;
            (*(v43 + 8))(v39, v45, ObjectType, v43);
            v46 = v191;
          }

          else
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v193 = 0;
            v194 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000020, v179 | 0x8000000000000000);
            v184 = v38;
            MEMORY[0x1B2718AE0](v39, v38);
            MEMORY[0x1B2718AE0](0xD000000000000016, v178 | 0x8000000000000000);
            v47 = v193;
            v48 = v194;
            v49 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v183 = v34;
            v185 = v39;
            v195 = v30;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v50 = swift_allocObject();
            *(v50 + 16) = v176;
            *(v50 + 56) = MEMORY[0x1E69E6158];
            *(v50 + 64) = sub_1AF0D544C();
            *(v50 + 32) = v47;
            *(v50 + 40) = v48;

            sub_1AFDFC4C8();

            v51 = v186;
            sub_1AFDFC288();
            v52 = v189[12];
            v182 = v189[16];
            v53 = v47;
            v54 = v188;
            v55 = v48;
            v56 = &v188[v189[20]];
            (*v177)(v188, v51, v187);
            *(v54 + v52) = v49;
            *(v54 + v182) = 0;
            *v56 = v53;
            *(v56 + 1) = v55;

            sub_1AFDFC608();

            sub_1AFD53198(v54, sub_1AF0D4E74);

            v36 = v181;
            sub_1AFDFC018();
            v40 = v195;
            v46 = v191;
            v35 = v180;
            v34 = v183;
          }

          v57 = sub_1AFDFCEA8();
          v30 = v40;
          if (v40)
          {

            v30 = 0;
          }

          else
          {
            v59 = v57;
            v60 = v58;

            *v34 = v59;
            *(v34 + 8) = v60;
            sub_1AFAABA74();
          }

          (*v190)(v36, v192);
          v34 += v35;
          v37 += 6;
          v25 = v46 - 1;
        }

        while (v25);
      }
    }

    else
    {
      v109 = a1[6];
      v110 = a1[7];
      v111 = v110 - v109;
      if (v110 != v109)
      {
        v112 = v190[9];
        v179 = "rl of an asset (";
        v180 = "_TtC3VFX19MeshReferenceSystem";
        v177 = (v185 + 4);
        v190 = v183 + 1;
        v113 = (v32 + v109 * v112);
        v114 = (v182 + 48 * v109 + 40);
        v176 = xmmword_1AFE431C0;
        v115 = v178;
        v181 = v112;
        do
        {
          v191 = v113;
          v116 = *(v114 - 3);
          v117 = *(v114 - 2);
          if (*(v114 - 1))
          {
            v118 = v111;
            v119 = v112;
            v120 = *(v114 - 2);
            v121 = *v114;
            v122 = swift_getObjectType();
            v123 = v120;
            v112 = v119;
            v111 = v118;
            (*(v121 + 8))(v116, v123, v122, v121);
          }

          else
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v193 = 0;
            v194 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000020, v180 | 0x8000000000000000);
            MEMORY[0x1B2718AE0](v116, v117);
            MEMORY[0x1B2718AE0](0xD000000000000016, v179 | 0x8000000000000000);
            v124 = v116;
            v126 = v193;
            v125 = v194;
            v127 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v184 = v117;
            v185 = v124;
            v195 = v30;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v128 = swift_allocObject();
            *(v128 + 16) = v176;
            *(v128 + 56) = MEMORY[0x1E69E6158];
            *(v128 + 64) = sub_1AF0D544C();
            *(v128 + 32) = v126;
            *(v128 + 40) = v125;

            sub_1AFDFC4C8();

            v129 = v127;
            v130 = v186;
            sub_1AFDFC288();
            v131 = v189[12];
            v182 = v189[16];
            v183 = v131;
            v132 = v125;
            v133 = v188;
            v134 = v126;
            v135 = &v188[v189[20]];
            (*v177)(v188, v130, v187);
            v136 = v182;
            *(v183 + v133) = v129;
            *(v133 + v136) = 0;
            *v135 = v134;
            *(v135 + 1) = v132;

            sub_1AFDFC608();

            sub_1AFD53198(v133, sub_1AF0D4E74);

            v115 = v178;
            sub_1AFDFC018();
            v30 = v195;
            v112 = v181;
          }

          v137 = sub_1AFDFCEA8();
          v139 = v191;
          if (v30)
          {

            v30 = 0;
          }

          else
          {
            v140 = v137;
            v141 = v138;

            *v139 = v140;
            v139[1] = v141;
            sub_1AFAABA74();
          }

          (*v190)(v115, v192);
          v113 = &v112[v139];
          v114 += 6;
          --v111;
        }

        while (v111);
      }
    }
  }

  else
  {
    v61 = v28;
    v168 = v24;
    v62 = v25;
    v170 = v23;
    v63 = a1;
    if (!v23)
    {
      v62 = a1[7] - a1[6];
    }

    v6[16] = 2;
    v64 = v61;
    v65 = *(v61 + 24);
    v66 = type metadata accessor for ScriptIndex();
    (*(*(v66 - 8) + 56))(&v6[v65], 1, 1, v66);
    v67 = &v6[*(v64 + 28)];
    *v67 = 0;
    *(v67 + 1) = 0;
    *&v6[*(v64 + 32)] = &unk_1F24FF4C8;
    *v6 = 0;
    *(v6 + 1) = 0xE000000000000000;
    v68 = *(v173 + 32);
    v69 = v190[9];
    v70 = *(v190 + 80) + 1;
    v169 = v69 * v62;
    v172 = ecs_stack_allocator_allocate(v68, v69 * v62, v70);
    v171 = v62;
    if (v62)
    {
      v71 = v172;
      v72 = v171;
      do
      {
        sub_1AFD531F8(v6, v71, type metadata accessor for ShaderScript);
        v71 = (v71 + v69);
        --v72;
      }

      while (v72);
    }

    v184 = v69;
    sub_1AFD53198(v6, type metadata accessor for ShaderScript);
    if (v170)
    {
      v195 = v29;
      v73 = v184;
      if (v25)
      {
        v177 = "rl of an asset (";
        v178 = "_TtC3VFX19MeshReferenceSystem";
        *&v176 = v185 + 4;
        v185 = (v183 + 1);
        v74 = (v182 + 40);
        v175 = xmmword_1AFE431C0;
        v75 = v25;
        v76 = v172;
        v77 = v179;
        v191 = v25;
        do
        {
          v78 = *(v74 - 3);
          v79 = *(v74 - 2);
          v80 = *(v74 - 1);
          v190 = v74;
          if (v80)
          {
            v81 = v76;
            v82 = v75;
            v83 = v25;
            v84 = v73;
            v85 = v79;
            v86 = *v74;
            v87 = swift_getObjectType();
            v88 = v85;
            v73 = v84;
            v25 = v83;
            v75 = v82;
            v76 = v81;
            (*(v86 + 8))(v78, v88, v87, v86);
          }

          else
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v193 = 0;
            v194 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000020, v178 | 0x8000000000000000);
            MEMORY[0x1B2718AE0](v78, v79);
            MEMORY[0x1B2718AE0](0xD000000000000016, v177 | 0x8000000000000000);
            v89 = v78;
            v91 = v193;
            v90 = v194;
            v92 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v182 = v79;
            v183 = v89;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v93 = swift_allocObject();
            *(v93 + 16) = v175;
            *(v93 + 56) = MEMORY[0x1E69E6158];
            *(v93 + 64) = sub_1AF0D544C();
            *(v93 + 32) = v91;
            *(v93 + 40) = v90;

            sub_1AFDFC4C8();

            v94 = v186;
            sub_1AFDFC288();
            v95 = v189[12];
            v96 = v91;
            v180 = v189[16];
            v181 = v95;
            v97 = v92;
            v98 = v188;
            v99 = v90;
            v100 = &v188[v189[20]];
            (*v176)(v188, v94, v187);
            v101 = v180;
            v181[v98] = v97;
            *(v98 + v101) = 0;
            *v100 = v96;
            *(v100 + 1) = v99;

            sub_1AFDFC608();

            sub_1AFD53198(v98, sub_1AF0D4E74);

            v77 = v179;
            sub_1AFDFC018();
            v25 = v191;
            v73 = v184;
          }

          v102 = v195;
          v103 = sub_1AFDFCEA8();
          if (v102)
          {

            v195 = 0;
          }

          else
          {
            v105 = v103;
            v106 = v104;
            v195 = 0;

            *v76 = v105;
            v76[1] = v106;
            sub_1AFAABA74();
          }

          (*v185)(v77, v192);
          v76 = (v76 + v73);
          v74 = v190 + 6;
          --v75;
        }

        while (v75);
      }

      v107 = v172;
      v108 = v173;
      sub_1AF5B9764(v170, v168, v25, v172, v171, v173);
    }

    else
    {
      v142 = v63[6];
      v143 = v63[7];
      v144 = v143 - v142;
      if (v143 != v142)
      {
        v178 = "rl of an asset (";
        v179 = "_TtC3VFX19MeshReferenceSystem";
        v177 = (v185 + 4);
        v190 = v183 + 1;
        v146 = (v182 + 48 * v142 + 40);
        v176 = xmmword_1AFE431C0;
        v147 = v172;
        v148 = v180;
        do
        {
          v149 = *(v146 - 3);
          v150 = *(v146 - 2);
          if (*(v146 - 1))
          {
            v151 = *(v146 - 2);
            v152 = *v146;
            v153 = swift_getObjectType();
            (*(v152 + 8))(v149, v151, v153, v152);
          }

          else
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v193 = 0;
            v194 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000020, v179 | 0x8000000000000000);
            MEMORY[0x1B2718AE0](v149, v150);
            MEMORY[0x1B2718AE0](0xD000000000000016, v178 | 0x8000000000000000);
            v155 = v193;
            v154 = v194;
            LODWORD(v191) = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v182 = v144;
            v183 = v150;
            v185 = v149;
            v195 = v30;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v156 = swift_allocObject();
            *(v156 + 16) = v176;
            *(v156 + 56) = MEMORY[0x1E69E6158];
            *(v156 + 64) = sub_1AF0D544C();
            *(v156 + 32) = v155;
            *(v156 + 40) = v154;

            sub_1AFDFC4C8();

            v181 = v155;
            v157 = v186;
            sub_1AFDFC288();
            v158 = v188;
            v159 = v189[12];
            v160 = v189[16];
            v161 = v154;
            v162 = &v188[v189[20]];
            (*v177)(v188, v157, v187);
            *(v158 + v159) = v191;
            *(v158 + v160) = 0;
            *v162 = v181;
            *(v162 + 1) = v161;

            sub_1AFDFC608();

            sub_1AFD53198(v158, sub_1AF0D4E74);

            v148 = v180;
            sub_1AFDFC018();
            v30 = v195;
            v144 = v182;
          }

          v163 = sub_1AFDFCEA8();
          if (v30)
          {

            v30 = 0;
          }

          else
          {
            v165 = v163;
            v166 = v164;

            *v147 = v165;
            v147[1] = v166;
            sub_1AFAABA74();
          }

          (*v190)(v148, v192);
          v146 += 6;
          v147 = (v147 + v184);
          --v144;
        }

        while (v144);
      }

      v107 = v172;
      v108 = v173;
      sub_1AF5B9D28(*(v174 + 232), *(v174 + 240), v172, v171, v173);
    }

    ecs_stack_allocator_deallocate(*(v108 + 32), v107, v169);
  }
}

uint64_t sub_1AFD0C590(void *a1, uint64_t *a2)
{
  v4 = a1[11];
  v3 = a1[12];
  v5 = a1[13];
  v6 = a1[1];
  v7 = a1[2];

  v8 = sub_1AF64B110(&type metadata for VideoCaptureRuntime, &off_1F256EBB8, v4, v3, v5, v7);
  sub_1AF649C6C(v6[5], &type metadata for TextureGPURuntime, &v48);
  if (v48 == 1)
  {
    a2[9] = &type metadata for TextureGPURuntime;
    a2[10] = &off_1F2544388;
    v9 = sub_1AF64B110(&type metadata for TextureGPURuntime, &off_1F2544388, v4, v3, v5, v7);
    v10 = v9;
    if (v4)
    {
      for (; v5; --v5)
      {
        v12 = *v8;
        v8 += 6;
        v11 = v12;
        if (v12)
        {
          v13 = *(v11 + OBJC_IVAR____TtC3VFX19VideoCaptureSession_outputTexture);
          if (v13)
          {
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            *v10 = v13;
          }
        }

        v10 += 2;
      }
    }

    else
    {
      v27 = a1[6];
      v28 = a1[7];
      v29 = v28 - v27;
      if (v28 != v27)
      {
        v30 = (v9 + 16 * v27);
        v31 = &v8[6 * v27];
        do
        {
          v33 = *v31;
          v31 += 6;
          v32 = v33;
          if (v33)
          {
            v34 = *(v32 + OBJC_IVAR____TtC3VFX19VideoCaptureSession_outputTexture);
            if (v34)
            {
              swift_unknownObjectRetain();
              swift_unknownObjectRelease();
              *v30 = v34;
            }
          }

          v30 += 2;
          --v29;
        }

        while (v29);
      }
    }
  }

  else
  {
    v14 = v3;
    v15 = v5;
    v46 = v4;
    if (!v4)
    {
      v15 = a1[7] - a1[6];
    }

    v16 = a2;
    v17 = v15;
    v18 = 16 * v15;
    v19 = ecs_stack_allocator_allocate(a2[4], 16 * v15, 8);
    v20 = v19;
    if (v17)
    {
      bzero(v19, v18);
    }

    v44 = v18;
    v45 = v20;
    if (v46)
    {
      if (v5)
      {
        v21 = v5;
        v22 = v20;
        do
        {
          v24 = *v8;
          v8 += 6;
          v23 = v24;
          if (v24)
          {
            v25 = *(v23 + OBJC_IVAR____TtC3VFX19VideoCaptureSession_outputTexture);
            if (v25)
            {
              swift_unknownObjectRetain();
              swift_unknownObjectRelease();
              *v22 = v25;
            }
          }

          v22 += 2;
          --v21;
        }

        while (v21);
      }

      v26 = v45;
      v16 = a2;
      sub_1AF5B80C0(v46, v14, v5, v45, v17, a2);
    }

    else
    {
      v35 = a1[6];
      v36 = a1[7];
      v37 = v36 - v35;
      if (v36 != v35)
      {
        v39 = &v8[6 * v35];
        v40 = v45;
        do
        {
          v42 = *v39;
          v39 += 6;
          v41 = v42;
          if (v42)
          {
            v43 = *(v41 + OBJC_IVAR____TtC3VFX19VideoCaptureSession_outputTexture);
            if (v43)
            {
              swift_unknownObjectRetain();
              swift_unknownObjectRelease();
              *v40 = v43;
            }
          }

          v40 += 2;
          --v37;
        }

        while (v37);
      }

      v26 = v45;
      sub_1AF5B85AC(v6[29], v6[30], v45, v17, a2);
    }

    ecs_stack_allocator_deallocate(v16[4], v26, v44);
  }
}

uint64_t sub_1AFD0C88C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[11];
  v3 = a1[12];
  v5 = a1[13];
  v6 = a1[1];
  v7 = a1[2];

  v8 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v4, v3, v5, v7);
  sub_1AF649C6C(*(v6 + 40), &type metadata for EmitterRuntime, v34);
  v35 = v6;
  if (v34[0] != 1)
  {
    sub_1AFB7F018(v34);
  }

  *(a2 + 72) = &type metadata for EmitterRuntime;
  *(a2 + 80) = &off_1F2563418;
  v9 = sub_1AF64B110(&type metadata for EmitterRuntime, &off_1F2563418, v4, v3, v5, v7);
  v10 = v9;
  if (!v4)
  {
    v20 = a1[6];
    v33 = a1[7];
    v21 = v35;
    if (v20 != v33)
    {
      v22 = *a1;
      v23 = v9 + 848 * v20;
      for (i = v8 + 104 * v20; ; i += 104)
      {

        if (*(v21 + 184))
        {
          break;
        }

        v26 = *(*(v21 + 168) + 4 * v20);
        v27 = *(*(v25 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v26 + 8);

        v28 = *(v21 + 28);
        v29 = *(v21 + 32);

        v34[0] = v29;
        sub_1AFB7BFB0(v26 | (v27 << 32), v28 | (v29 << 32), i, v23, v22, 1);

        v23 += 848;
        if (v33 == ++v20)
        {
        }
      }

      goto LABEL_14;
    }
  }

  v11 = v5;
  v12 = v35;
  if (!v5)
  {
  }

  v32 = *a1;
  while (1)
  {
    v14 = *v4++;
    v13 = v14;

    if (*(v12 + 184))
    {
      break;
    }

    v16 = *(*(v12 + 168) + 4 * v13);
    v17 = *(*(v15 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v16 + 8);

    v18 = *(v12 + 28);
    v19 = *(v12 + 32);

    v34[0] = v19;
    sub_1AFB7BFB0(v16 | (v17 << 32), v18 | (v19 << 32), v8, v10, v32, 1);

    v10 += 848;
    v8 += 104;
    if (!--v11)
    {
    }
  }

LABEL_14:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFD0CD54(void *a1, uint64_t *a2)
{
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];

  v200 = sub_1AF64B110(&type metadata for REMeshAssetPointCache, &off_1F25683E0, v4, v5, v6, v8);
  sub_1AF649C6C(*(v7 + 40), &type metadata for PointCacheRuntime, &v207);
  v193 = v7;
  if (v207 == 1)
  {
    a2[9] = &type metadata for PointCacheRuntime;
    a2[10] = &off_1F2568CD0;
    v9 = sub_1AF64B110(&type metadata for PointCacheRuntime, &off_1F2568CD0, v4, v5, v6, v8);
    v10 = v9;
    if (v4)
    {
      v11 = v6;
      if (v6)
      {
        for (i = v200 + 16; ; i += 24)
        {
          v17 = *i;
          if (*(*i + 16))
          {
            v18 = sub_1AF419BF8(0);
            if (v19)
            {
              v204 = v11;
              v20 = *(*(v17 + 56) + 8 * v18);
              v21 = *(v20 + OBJC_IVAR___VFXREBindingMeshData_format);
              v22 = v21 - 1;
              if ((v21 - 1) >= 0x35 || ((0x1FF1FFFFFFFFFFuLL >> v22) & 1) == 0)
              {
                goto LABEL_110;
              }

              v23 = *(v20 + OBJC_IVAR___VFXREBindingMeshData_buffer);
              v197 = *(v20 + OBJC_IVAR___VFXREBindingMeshData_offset);
              v195 = *(v20 + OBJC_IVAR___VFXREBindingMeshData_length);
              v10[3] = v195 / dword_1AFEAAFE4[v22];
              v201 = v23;
              swift_unknownObjectRetain_n();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v207 = *v10;
              v25 = v207;
              v26 = sub_1AF419914(0x6E6F697469736F70, 0xE800000000000000);
              v28 = v27;
              v29 = v25[2] + ((v27 & 1) == 0);
              if (v25[3] >= v29)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1AF84FE04();
                }
              }

              else
              {
                sub_1AF841984(v29, isUniquelyReferenced_nonNull_native);
                v30 = sub_1AF419914(0x6E6F697469736F70, 0xE800000000000000);
                if ((v28 & 1) != (v31 & 1))
                {
                  goto LABEL_111;
                }

                v26 = v30;
              }

              v32 = v207;
              if (v28)
              {
                v33 = (v207[7] + 32 * v26);
                *v33 = v201;
                v33[1] = v197;
                v33[2] = v195;
                v33[3] = v21;
                swift_unknownObjectRelease();
              }

              else
              {
                v207[(v26 >> 6) + 8] |= 1 << v26;
                v34 = (v32[6] + 16 * v26);
                *v34 = 0x6E6F697469736F70;
                v34[1] = 0xE800000000000000;
                v35 = (v32[7] + 32 * v26);
                *v35 = v201;
                v35[1] = v197;
                v35[2] = v195;
                v35[3] = v21;
                ++v32[2];
              }

              *v10 = v32;
              v11 = v204;
              if (*(v17 + 16) && (v36 = sub_1AF419BF8(2u), (v37 & 1) != 0))
              {
                v38 = *(*(v17 + 56) + 8 * v36);
                v39 = *(v38 + OBJC_IVAR___VFXREBindingMeshData_buffer);
                v40 = *(v38 + OBJC_IVAR___VFXREBindingMeshData_offset);
                v41 = *(v38 + OBJC_IVAR___VFXREBindingMeshData_length);
                v42 = *(v38 + OBJC_IVAR___VFXREBindingMeshData_format);
                swift_unknownObjectRetain();
                v43 = swift_isUniquelyReferenced_nonNull_native();
                v207 = *v10;
                sub_1AF85917C(v39, v40, v41, v42, 0x6C616D726F6ELL, 0xE600000000000000, v43);
                *v10 = v207;
              }

              else
              {
                v44 = sub_1AF419914(0x6C616D726F6ELL, 0xE600000000000000);
                if (v45)
                {
                  v46 = v44;
                  v47 = swift_isUniquelyReferenced_nonNull_native();
                  v48 = *v10;
                  v207 = *v10;
                  if (!v47)
                  {
                    sub_1AF84FE04();
                    v48 = v207;
                  }

                  swift_unknownObjectRelease();
                  sub_1AF6B512C(v46, v48);
                  *v10 = v48;
                }
              }

              if (*(v17 + 16) && (v49 = sub_1AF419BF8(4u), (v50 & 1) != 0))
              {
                v51 = *(*(v17 + 56) + 8 * v49);
                v52 = *(v51 + OBJC_IVAR___VFXREBindingMeshData_offset);
                v53 = *(v51 + OBJC_IVAR___VFXREBindingMeshData_length);
                v54 = *(v51 + OBJC_IVAR___VFXREBindingMeshData_format);
                v13 = swift_unknownObjectRetain();
                v16 = v54;
                v15 = v53;
                v14 = v52;
              }

              else
              {
                v13 = 0;
                v14 = 0;
                v15 = 0;
                v16 = 0;
              }

              sub_1AF8264B8(v13, v14, v15, v16, 0x726F6C6F63, 0xE500000000000000);
              swift_unknownObjectRelease();
            }
          }

          v10 += 4;
          if (!--v11)
          {
          }
        }
      }
    }

    v61 = a1[6];
    v62 = a1[7];
    v63 = v62 - v61;
    if (v62 != v61)
    {
      v64 = (v9 + 32 * v61);
      for (j = v200 + 24 * v61 + 16; ; j += 24)
      {
        v70 = *j;
        if (*(*j + 16))
        {
          v71 = sub_1AF419BF8(0);
          if (v72)
          {
            break;
          }
        }

LABEL_41:
        v64 += 4;
        if (!--v63)
        {
        }
      }

      v73 = *(*(v70 + 56) + 8 * v71);
      v74 = *(v73 + OBJC_IVAR___VFXREBindingMeshData_format);
      v75 = v74 - 1;
      if ((v74 - 1) >= 0x35 || ((0x1FF1FFFFFFFFFFuLL >> v75) & 1) == 0)
      {
        goto LABEL_110;
      }

      v76 = *(v73 + OBJC_IVAR___VFXREBindingMeshData_buffer);
      v202 = *(v73 + OBJC_IVAR___VFXREBindingMeshData_offset);
      v198 = *(v73 + OBJC_IVAR___VFXREBindingMeshData_length);
      v64[3] = v198 / dword_1AFEAAFE4[v75];
      v206 = v76;
      swift_unknownObjectRetain_n();
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v207 = *v64;
      v78 = v207;
      v79 = sub_1AF419914(0x6E6F697469736F70, 0xE800000000000000);
      v81 = v80;
      v82 = v78[2] + ((v80 & 1) == 0);
      if (v78[3] >= v82)
      {
        if ((v77 & 1) == 0)
        {
          v86 = v79;
          sub_1AF84FE04();
          v79 = v86;
          v84 = v207;
          if (v81)
          {
            goto LABEL_51;
          }

          goto LABEL_53;
        }
      }

      else
      {
        sub_1AF841984(v82, v77);
        v79 = sub_1AF419914(0x6E6F697469736F70, 0xE800000000000000);
        if ((v81 & 1) != (v83 & 1))
        {
          goto LABEL_111;
        }
      }

      v84 = v207;
      if (v81)
      {
LABEL_51:
        v85 = (v84[7] + 32 * v79);
        *v85 = v206;
        v85[1] = v202;
        v85[2] = v198;
        v85[3] = v74;
        swift_unknownObjectRelease();
        goto LABEL_54;
      }

LABEL_53:
      v84[(v79 >> 6) + 8] |= 1 << v79;
      v87 = (v84[6] + 16 * v79);
      *v87 = 0x6E6F697469736F70;
      v87[1] = 0xE800000000000000;
      v88 = (v84[7] + 32 * v79);
      *v88 = v206;
      v88[1] = v202;
      v88[2] = v198;
      v88[3] = v74;
      ++v84[2];
LABEL_54:
      *v64 = v84;
      if (*(v70 + 16) && (v89 = sub_1AF419BF8(2u), (v90 & 1) != 0))
      {
        v91 = *(*(v70 + 56) + 8 * v89);
        v92 = *(v91 + OBJC_IVAR___VFXREBindingMeshData_buffer);
        v93 = *(v91 + OBJC_IVAR___VFXREBindingMeshData_offset);
        v94 = *(v91 + OBJC_IVAR___VFXREBindingMeshData_length);
        v95 = *(v91 + OBJC_IVAR___VFXREBindingMeshData_format);
        swift_unknownObjectRetain();
        v96 = swift_isUniquelyReferenced_nonNull_native();
        v207 = *v64;
        sub_1AF85917C(v92, v93, v94, v95, 0x6C616D726F6ELL, 0xE600000000000000, v96);
        *v64 = v207;
      }

      else
      {
        v97 = sub_1AF419914(0x6C616D726F6ELL, 0xE600000000000000);
        if (v98)
        {
          v99 = v97;
          v100 = swift_isUniquelyReferenced_nonNull_native();
          v101 = *v64;
          v207 = *v64;
          if (!v100)
          {
            sub_1AF84FE04();
            v101 = v207;
          }

          swift_unknownObjectRelease();
          sub_1AF6B512C(v99, v101);
          *v64 = v101;
        }
      }

      if (*(v70 + 16) && (v102 = sub_1AF419BF8(4u), (v103 & 1) != 0))
      {
        v104 = *(*(v70 + 56) + 8 * v102);
        v105 = *(v104 + OBJC_IVAR___VFXREBindingMeshData_offset);
        v106 = *(v104 + OBJC_IVAR___VFXREBindingMeshData_length);
        v107 = *(v104 + OBJC_IVAR___VFXREBindingMeshData_format);
        v66 = swift_unknownObjectRetain();
        v69 = v107;
        v68 = v106;
        v67 = v105;
      }

      else
      {
        v66 = 0;
        v67 = 0;
        v68 = 0;
        v69 = 0;
      }

      sub_1AF8264B8(v66, v67, v68, v69, 0x726F6C6F63, 0xE500000000000000);
      swift_unknownObjectRelease();
      goto LABEL_41;
    }
  }

  v194 = v5;
  v55 = v6;
  v190 = v4;
  if (!v4)
  {
    v55 = a1[7] - a1[6];
  }

  v205 = v6;
  v56 = sub_1AF42C7DC(MEMORY[0x1E69E7CC0]);
  v57 = a2;
  v189 = 32 * v55;
  v58 = ecs_stack_allocator_allocate(a2[4], 32 * v55, 8);
  v188 = v55;
  v191 = v58;
  if (v55)
  {
    *v58 = v56;
    v58[1] = 0x636143746E696F50;
    v58[2] = 0xEA00000000006568;
    v58[3] = 0;
    v59 = v55 - 1;
    if (v59)
    {
      v60 = v58 + 7;
      do
      {
        *(v60 - 3) = v56;
        *(v60 - 2) = 0x636143746E696F50;
        *(v60 - 1) = 0xEA00000000006568;
        *v60 = 0;

        v60 += 4;
        --v59;
      }

      while (v59);
    }
  }

  else
  {
  }

  v192 = a2;
  if (v4)
  {
    v108 = v5;
    if (v205)
    {
      v109 = v200 + 16;
      v110 = v205;
      v111 = v191;
      do
      {
        v116 = *v109;
        if (*(*v109 + 16))
        {
          v117 = sub_1AF419BF8(0);
          if (v118)
          {
            v119 = *(*(v116 + 56) + 8 * v117);
            v120 = *(v119 + OBJC_IVAR___VFXREBindingMeshData_format);
            v121 = v120 - 1;
            if ((v120 - 1) >= 0x35 || ((0x1FF1FFFFFFFFFFuLL >> v121) & 1) == 0)
            {
              goto LABEL_110;
            }

            v122 = *(v119 + OBJC_IVAR___VFXREBindingMeshData_buffer);
            v199 = *(v119 + OBJC_IVAR___VFXREBindingMeshData_offset);
            v196 = *(v119 + OBJC_IVAR___VFXREBindingMeshData_length);
            v111[3] = v196 / dword_1AFEAAFE4[v121];
            v203 = v122;
            swift_unknownObjectRetain_n();
            v123 = swift_isUniquelyReferenced_nonNull_native();
            v207 = *v111;
            v124 = v207;
            v125 = sub_1AF419914(0x6E6F697469736F70, 0xE800000000000000);
            v127 = v126;
            v128 = v124[2] + ((v126 & 1) == 0);
            if (v124[3] >= v128)
            {
              if ((v123 & 1) == 0)
              {
                sub_1AF84FE04();
              }
            }

            else
            {
              sub_1AF841984(v128, v123);
              v129 = sub_1AF419914(0x6E6F697469736F70, 0xE800000000000000);
              if ((v127 & 1) != (v130 & 1))
              {
                goto LABEL_111;
              }

              v125 = v129;
            }

            v131 = v207;
            if (v127)
            {
              v132 = (v207[7] + 32 * v125);
              *v132 = v203;
              v132[1] = v199;
              v132[2] = v196;
              v132[3] = v120;
              swift_unknownObjectRelease();
            }

            else
            {
              v207[(v125 >> 6) + 8] |= 1 << v125;
              v133 = (v131[6] + 16 * v125);
              *v133 = 0x6E6F697469736F70;
              v133[1] = 0xE800000000000000;
              v134 = (v131[7] + 32 * v125);
              *v134 = v203;
              v134[1] = v199;
              v134[2] = v196;
              v134[3] = v120;
              ++v131[2];
            }

            *v111 = v131;
            v108 = v194;
            if (*(v116 + 16) && (v135 = sub_1AF419BF8(2u), (v136 & 1) != 0))
            {
              v137 = *(*(v116 + 56) + 8 * v135);
              v138 = *(v137 + OBJC_IVAR___VFXREBindingMeshData_offset);
              v139 = *(v137 + OBJC_IVAR___VFXREBindingMeshData_length);
              v140 = *(v137 + OBJC_IVAR___VFXREBindingMeshData_format);
              v141 = swift_unknownObjectRetain();
              v142 = v140;
              v143 = v139;
              v144 = v138;
            }

            else
            {
              v141 = 0;
              v144 = 0;
              v143 = 0;
              v142 = 0;
            }

            sub_1AF8264B8(v141, v144, v143, v142, 0x6C616D726F6ELL, 0xE600000000000000);
            if (*(v116 + 16) && (v145 = sub_1AF419BF8(4u), (v146 & 1) != 0))
            {
              v147 = *(*(v116 + 56) + 8 * v145);
              v148 = *(v147 + OBJC_IVAR___VFXREBindingMeshData_offset);
              v149 = *(v147 + OBJC_IVAR___VFXREBindingMeshData_length);
              v150 = *(v147 + OBJC_IVAR___VFXREBindingMeshData_format);
              v112 = swift_unknownObjectRetain();
              v115 = v150;
              v114 = v149;
              v113 = v148;
            }

            else
            {
              v112 = 0;
              v113 = 0;
              v114 = 0;
              v115 = 0;
            }

            sub_1AF8264B8(v112, v113, v114, v115, 0x726F6C6F63, 0xE500000000000000);
            swift_unknownObjectRelease();
          }
        }

        v111 += 4;
        v109 += 24;
        --v110;
      }

      while (v110);
    }

    v151 = v191;
    v57 = v192;
    sub_1AF5BEFD0(v190, v108, v205, v191, v188, v192);
    goto LABEL_93;
  }

  v152 = a1[6];
  v153 = a1[7];
  v154 = v153 - v152;
  if (v153 == v152)
  {
LABEL_92:
    v151 = v191;
    sub_1AF5BF4BC(*(v193 + 232), *(v193 + 240), v191, v188, v57);
LABEL_93:
    ecs_stack_allocator_deallocate(*(v57 + 32), v151, v189);
  }

  v156 = v200 + 24 * v152 + 16;
  v157 = v191;
  while (1)
  {
    v162 = *v156;
    if (*(*v156 + 16))
    {
      v163 = sub_1AF419BF8(0);
      if (v164)
      {
        break;
      }
    }

LABEL_98:
    v156 += 24;
    v157 += 4;
    if (!--v154)
    {
      goto LABEL_92;
    }
  }

  v165 = *(*(v162 + 56) + 8 * v163);
  v166 = *(v165 + OBJC_IVAR___VFXREBindingMeshData_format);
  v167 = v166 - 1;
  if (v166 - 1) < 0x35 && ((0x1FF1FFFFFFFFFFuLL >> v167))
  {
    v168 = *(v165 + OBJC_IVAR___VFXREBindingMeshData_buffer);
    v169 = *(v165 + OBJC_IVAR___VFXREBindingMeshData_offset);
    v170 = *(v165 + OBJC_IVAR___VFXREBindingMeshData_length);
    v157[3] = v170 / dword_1AFEAAFE4[v167];
    swift_unknownObjectRetain_n();
    v171 = swift_isUniquelyReferenced_nonNull_native();
    v207 = *v157;
    sub_1AF85917C(v168, v169, v170, v166, 0x6E6F697469736F70, 0xE800000000000000, v171);
    *v157 = v207;
    if (*(v162 + 16) && (v172 = sub_1AF419BF8(2u), (v173 & 1) != 0))
    {
      v174 = *(*(v162 + 56) + 8 * v172);
      v175 = *(v174 + OBJC_IVAR___VFXREBindingMeshData_offset);
      v176 = *(v174 + OBJC_IVAR___VFXREBindingMeshData_length);
      v177 = *(v174 + OBJC_IVAR___VFXREBindingMeshData_format);
      v178 = swift_unknownObjectRetain();
      v179 = v177;
      v180 = v176;
      v181 = v175;
    }

    else
    {
      v178 = 0;
      v181 = 0;
      v180 = 0;
      v179 = 0;
    }

    v57 = v192;
    sub_1AF8264B8(v178, v181, v180, v179, 0x6C616D726F6ELL, 0xE600000000000000);
    if (*(v162 + 16) && (v182 = sub_1AF419BF8(4u), (v183 & 1) != 0))
    {
      v184 = *(*(v162 + 56) + 8 * v182);
      v185 = *(v184 + OBJC_IVAR___VFXREBindingMeshData_offset);
      v186 = *(v184 + OBJC_IVAR___VFXREBindingMeshData_length);
      v187 = *(v184 + OBJC_IVAR___VFXREBindingMeshData_format);
      v158 = swift_unknownObjectRetain();
      v161 = v187;
      v160 = v186;
      v159 = v185;
    }

    else
    {
      v158 = 0;
      v159 = 0;
      v160 = 0;
      v161 = 0;
    }

    sub_1AF8264B8(v158, v159, v160, v161, 0x726F6C6F63, 0xE500000000000000);
    swift_unknownObjectRelease();
    goto LABEL_98;
  }

LABEL_110:
  sub_1AFDFE518();
  __break(1u);
LABEL_111:
  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AFD0DD08(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v75 = a2;
  v9 = a1[11];
  v10 = a1[12];
  v11 = a1[13];
  v13 = a1[1];
  v12 = a1[2];

  v14 = sub_1AF64B110(&type metadata for ColorRampRuntime, &off_1F25419F8, v9, v10, v11, v12);
  sub_1AF649C6C(*(v13 + 40), &type metadata for TextureCPURuntime, &v73);
  v69 = v13;
  if (v73 != 1)
  {
    v61 = v10;
    v21 = v11;
    v65 = v9;
    if (!v9)
    {
      v21 = a1[7] - a1[6];
    }

    CFXTextureDescriptorMakeDefault(&v71);
    *&v70[7] = v71;
    *&v70[23] = v72;
    *v74 = 0;
    v73 = 0uLL;
    v74[8] = 0;
    *&v74[9] = *v70;
    *&v74[24] = *&v70[15];
    *&v74[40] = MEMORY[0x1E69E7CC0];
    v63 = v21 << 6;
    v22 = ecs_stack_allocator_allocate(*(v75 + 32), v21 << 6, 8);
    v64 = v21;
    v66 = v22;
    v23 = a4;
    if (v21)
    {
      v24 = v73;
      v25 = *v74;
      v26 = *&v74[32];
      v22[2] = *&v74[16];
      v22[3] = v26;
      *v22 = v24;
      v22[1] = v25;
      v27 = v21 - 1;
      if (v21 != 1)
      {
        v28 = v22 + 4;
        do
        {
          sub_1AF44222C(&v73, v70);
          v29 = v73;
          v30 = *v74;
          v31 = *&v74[32];
          v28[2] = *&v74[16];
          v28[3] = v31;
          *v28 = v29;
          v28[1] = v30;
          v28 += 4;
          --v27;
        }

        while (v27);
      }

      if (v65)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1AF478A6C(&v73);
      if (v65)
      {
LABEL_13:
        v32 = a6;
        v62 = v11;
        if (v11)
        {
          v33 = v11;
          v34 = v66;
          do
          {
            v35 = *v14++;
            v36 = v32;
            v38 = *a3;
            v37 = a3[1];
            v39 = a3;
            v40 = v23;
            v41 = v37 + (v35 << 11);
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            *v34 = v38;
            *(v34 + 8) = v41;
            v32 = v36;
            v23 = v40;
            a3 = v39;
            *(v34 + 16) = 2048;
            *(v34 + 32) = v23;
            *(v34 + 40) = a5;
            *(v34 + 48) = v36;
            sub_1AFD24A98(v34 + 32);
            *(v34 + 24) = 1;
            v34 += 64;
            --v33;
          }

          while (v33);
        }

        v42 = v66;
        v43 = v75;
        sub_1AF5B8C54(v65, v61, v62, v66, v64, v75);
LABEL_26:
        ecs_stack_allocator_deallocate(*(v43 + 32), v42, v63);
      }
    }

    v52 = a1[6];
    v53 = a1[7];
    v54 = v53 - v52;
    if (v53 != v52)
    {
      v55 = v66;
      v56 = &v14[v52];
      do
      {
        v57 = *v56++;
        v58 = *a3;
        v59 = a3[1] + (v57 << 11);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        *v55 = v58;
        *(v55 + 8) = v59;
        *(v55 + 16) = 2048;
        *(v55 + 32) = a4;
        *(v55 + 40) = a5;
        *(v55 + 48) = a6;
        sub_1AFD24A98(v55 + 32);
        *(v55 + 24) = 1;
        v55 += 64;
        --v54;
      }

      while (v54);
    }

    v42 = v66;
    v43 = v75;
    sub_1AF5B9140(*(v69 + 232), *(v69 + 240), v66, v64, v75);
    goto LABEL_26;
  }

  v15 = v75;
  *(v75 + 72) = &type metadata for TextureCPURuntime;
  *(v15 + 80) = &off_1F2543E80;
  v16 = sub_1AF64B110(&type metadata for TextureCPURuntime, &off_1F2543E80, v9, v10, v11, v12);
  v17 = v16;
  if (v9)
  {
    for (; v11; --v11)
    {
      v18 = *v14++;
      v19 = *a3;
      v20 = a3[1] + (v18 << 11);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *v17 = v19;
      *(v17 + 8) = v20;
      *(v17 + 16) = 2048;
      *(v17 + 32) = a4;
      *(v17 + 40) = a5;
      *(v17 + 48) = a6;
      sub_1AFD24A98(v17 + 32);
      *(v17 + 24) = 1;
      v17 += 64;
    }
  }

  else
  {
    v44 = a1[6];
    v45 = a1[7];
    v46 = v45 - v44;
    if (v45 != v44)
    {
      v47 = v16 + (v44 << 6);
      v48 = &v14[v44];
      do
      {
        v49 = *v48++;
        v50 = *a3;
        v51 = a3[1] + (v49 << 11);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        *v47 = v50;
        *(v47 + 8) = v51;
        *(v47 + 16) = 2048;
        *(v47 + 32) = a4;
        *(v47 + 40) = a5;
        *(v47 + 48) = a6;
        sub_1AFD24A98(v47 + 32);
        *(v47 + 24) = 1;
        v47 += 64;
        --v46;
      }

      while (v46);
    }
  }
}

uint64_t sub_1AFD0E138(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[11];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[1];
  v10 = a1[2];

  sub_1AF64B110(&type metadata for ColorRampComponent, &off_1F2541AA8, v6, v7, v8, v10);
  sub_1AF649C6C(v9[5], &type metadata for ColorRampRuntime, &v81);
  if (v81 != 1)
  {
    v17 = v8;
    if (!v6)
    {
      v17 = a1[7] - a1[6];
    }

    v18 = ecs_stack_allocator_allocate(a2[4], 4 * v17, 4);
    v19 = v18;
    if (v17)
    {
      memset(v18, 255, 4 * v17);
    }

    if (v6)
    {
      if (v8)
      {
        v20 = a1[3];
        if (v8 > 7 && (v19 >= (a3 + 1) || v19 + 4 * v8 <= a3))
        {
          v21 = v8 & 0xFFFFFFFFFFFFFFF8;
          v63 = vdupq_n_s64(v20);
          v64 = xmmword_1AFE21100;
          v65 = xmmword_1AFE21110;
          v66 = (v19 + 16);
          v67.i64[0] = 0x400000004;
          v67.i64[1] = 0x400000004;
          v68 = vdupq_n_s64(8uLL);
          v69 = v8 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v70 = vdupq_lane_s64(*a3, 0);
            v71 = vuzp1q_s32(vaddq_s64(vaddq_s64(v63, v65), v70), vaddq_s64(vaddq_s64(v63, v64), v70));
            v66[-1] = v71;
            *v66 = vaddq_s32(v71, v67);
            v64 = vaddq_s64(v64, v68);
            v65 = vaddq_s64(v65, v68);
            v66 += 2;
            v69 -= 8;
          }

          while (v69);
          if (v8 == v21)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v21 = 0;
        }

        v22 = (v19 + 4 * v21);
        v23 = v8 - v21;
        v24 = v21 + v20;
        do
        {
          *v22++ = v24 + *a3;
          ++v24;
          --v23;
        }

        while (v23);
      }

LABEL_23:
      sub_1AF5C1094(v6, v7, v8, v19, v17, a2);
LABEL_44:
      ecs_stack_allocator_deallocate(a2[4], v19, 4 * v17);
    }

    v45 = a1[6];
    v46 = a1[7];
    v47 = v46 - v45;
    if (v46 != v45)
    {
      v48 = a1[3];
      if (v47 > 7 && (v19 >= (a3 + 1) || v19 + 4 * v47 <= a3))
      {
        v49 = v47 & 0xFFFFFFFFFFFFFFF8;
        v45 += v47 & 0xFFFFFFFFFFFFFFF8;
        v72 = vdupq_n_s64(v48);
        v73 = xmmword_1AFE21100;
        v74 = xmmword_1AFE21110;
        v75 = (v19 + 16);
        v76.i64[0] = 0x400000004;
        v76.i64[1] = 0x400000004;
        v77 = vdupq_n_s64(8uLL);
        v78 = v47 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v79 = vdupq_lane_s64(*a3, 0);
          v80 = vuzp1q_s32(vaddq_s64(vaddq_s64(v72, v74), v79), vaddq_s64(vaddq_s64(v72, v73), v79));
          v75[-1] = v80;
          *v75 = vaddq_s32(v80, v76);
          v73 = vaddq_s64(v73, v77);
          v74 = vaddq_s64(v74, v77);
          v75 += 2;
          v78 -= 8;
        }

        while (v78);
        if (v47 == v49)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v49 = 0;
      }

      v50 = v46 - v45;
      v51 = (v19 + 4 * v49);
      v52 = v49 + v48;
      do
      {
        *v51++ = v52 + *a3;
        ++v52;
        --v50;
      }

      while (v50);
    }

LABEL_43:
    sub_1AF5C10D8(v9[29], v9[30], v19, v17, a2);
    goto LABEL_44;
  }

  a2[9] = &type metadata for ColorRampRuntime;
  a2[10] = &off_1F25419F8;
  v11 = sub_1AF64B110(&type metadata for ColorRampRuntime, &off_1F25419F8, v6, v7, v8, v10);
  if (v6)
  {
    if (!v8)
    {
    }

    v12 = a1[3];
    if (v8 <= 7 || (a3 + 1) > v11 && v11 + 4 * v8 > a3)
    {
      v13 = 0;
LABEL_8:
      v14 = (v11 + 4 * v13);
      v15 = v13 + v12;
      v16 = v8 - v13;
      do
      {
        *v14++ = v15 + *a3;
        ++v15;
        --v16;
      }

      while (v16);
    }

    v13 = v8 & 0xFFFFFFFFFFFFFFF8;
    v54 = vdupq_n_s64(v12);
    v55 = xmmword_1AFE21100;
    v56 = xmmword_1AFE21110;
    v57 = (v11 + 16);
    v58.i64[0] = 0x400000004;
    v58.i64[1] = 0x400000004;
    v59 = vdupq_n_s64(8uLL);
    v60 = v8 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v61 = vdupq_lane_s64(*a3, 0);
      v62 = vuzp1q_s32(vaddq_s64(vaddq_s64(v54, v56), v61), vaddq_s64(vaddq_s64(v54, v55), v61));
      v57[-1] = v62;
      *v57 = vaddq_s32(v62, v58);
      v55 = vaddq_s64(v55, v59);
      v56 = vaddq_s64(v56, v59);
      v57 += 2;
      v60 -= 8;
    }

    while (v60);
    if (v8 != v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v25 = *(a1 + 3);
    v26 = v25;
    v27 = *(&v25 + 1) - v25;
    if (*(&v25 + 1) != v25)
    {
      v28 = a1[3];
      v29 = v25;
      if (v27 <= 7)
      {
        goto LABEL_33;
      }

      v30 = v11 + 4 * v25;
      v31 = v30 < (a3 + 1) && v11 + 4 * *(&v25 + 1) > a3;
      v29 = v25;
      if (v31)
      {
        goto LABEL_33;
      }

      v29 = v25 + (v27 & 0xFFFFFFFFFFFFFFF8);
      v32 = vdupq_lane_s64(v25, 0);
      v33 = vaddq_s64(v32, xmmword_1AFE21100);
      v34 = vaddq_s64(v32, xmmword_1AFE21110);
      v35 = vdupq_n_s64(v28 - v26);
      v36 = (v30 + 16);
      v37.i64[0] = 0x400000004;
      v37.i64[1] = 0x400000004;
      v38 = vdupq_n_s64(8uLL);
      v39 = v27 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v40 = vdupq_lane_s64(*a3, 0);
        v41 = vuzp1q_s32(vaddq_s64(vaddq_s64(v35, v34), v40), vaddq_s64(vaddq_s64(v35, v33), v40));
        v36[-1] = v41;
        *v36 = vaddq_s32(v41, v37);
        v33 = vaddq_s64(v33, v38);
        v34 = vaddq_s64(v34, v38);
        v36 += 2;
        v39 -= 8;
      }

      while (v39);
      if (v27 != (v27 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_33:
        v42 = (v11 + 4 * v29);
        v43 = *(&v26 + 1) - v29;
        v44 = v29 + v28 - v26;
        do
        {
          *v42++ = v44 + *a3;
          ++v44;
          --v43;
        }

        while (v43);
      }
    }
  }
}

uint64_t sub_1AFD0E614(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6)
{
  v81 = a6;
  v9 = a1[11];
  v10 = a1[12];
  v11 = a1[13];
  v13 = a1[1];
  v12 = a1[2];

  v14 = sub_1AF64B110(&type metadata for CurveRuntime, &off_1F2541EC8, v9, v10, v11, v12);
  sub_1AF649C6C(*(v13 + 40), &type metadata for TextureCPURuntime, &v79);
  v74 = v13;
  if (v79 == 1)
  {
    a2[9] = &type metadata for TextureCPURuntime;
    a2[10] = &off_1F2543E80;
    v15 = sub_1AF64B110(&type metadata for TextureCPURuntime, &off_1F2543E80, v9, v10, v11, v12);
    v16 = v15;
    if (v9)
    {
      for (; v11; --v11)
      {
        v17 = *v14++;
        v18 = *a3;
        v19 = v17 << 9;
        if (!*a3)
        {
          v19 = 0;
        }

        v20 = v19 + a3[1];
        if (*a3)
        {
          v21 = 512;
        }

        else
        {
          v21 = a3[2];
        }

        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        *v16 = v18;
        *(v16 + 8) = v20;
        *(v16 + 16) = v21;
        *(v16 + 32) = a4;
        *(v16 + 40) = a5;
        *(v16 + 48) = v81;
        sub_1AFD24A98(v16 + 32);
        *(v16 + 24) = 1;
        v16 += 64;
      }
    }

    else
    {
      v33 = a1[6];
      v34 = a1[7];
      v35 = v34 - v33;
      if (v34 != v33)
      {
        v36 = v15 + (v33 << 6);
        v37 = &v14[v33];
        do
        {
          v38 = *v37++;
          v39 = *a3;
          v40 = v38 << 9;
          if (!*a3)
          {
            v40 = 0;
          }

          v41 = v40 + a3[1];
          if (*a3)
          {
            v42 = 512;
          }

          else
          {
            v42 = a3[2];
          }

          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          *v36 = v39;
          *(v36 + 8) = v41;
          *(v36 + 16) = v42;
          *(v36 + 32) = a4;
          *(v36 + 40) = a5;
          *(v36 + 48) = v81;
          sub_1AFD24A98(v36 + 32);
          *(v36 + 24) = 1;
          v36 += 64;
          --v35;
        }

        while (v35);
      }
    }
  }

  else
  {
    v67 = v10;
    v22 = v11;
    v72 = v9;
    if (!v9)
    {
      v22 = a1[7] - a1[6];
    }

    CFXTextureDescriptorMakeDefault(&v77);
    *&v76[7] = v77;
    *&v76[23] = v78;
    *v80 = 0;
    v79 = 0uLL;
    v80[8] = 0;
    *&v80[9] = *v76;
    *&v80[24] = *&v76[15];
    *&v80[40] = MEMORY[0x1E69E7CC0];
    v69 = v22 << 6;
    v23 = ecs_stack_allocator_allocate(a2[4], v22 << 6, 8);
    v24 = v23;
    v70 = v22;
    if (v22)
    {
      v25 = v79;
      v26 = *v80;
      v27 = *&v80[32];
      v23[2] = *&v80[16];
      v23[3] = v27;
      *v23 = v25;
      v23[1] = v26;
      v28 = v22 - 1;
      if (v22 != 1)
      {
        v29 = v23 + 4;
        do
        {
          sub_1AF44222C(&v79, v76);
          v30 = v79;
          v31 = *v80;
          v32 = *&v80[32];
          v29[2] = *&v80[16];
          v29[3] = v32;
          *v29 = v30;
          v29[1] = v31;
          v29 += 4;
          --v28;
        }

        while (v28);
      }
    }

    else
    {
      sub_1AF478A6C(&v79);
    }

    v71 = v24;
    if (v72)
    {
      v43 = a5;
      v68 = v11;
      if (v11)
      {
        v44 = a3;
        v45 = v68;
        v46 = v24;
        do
        {
          v47 = *v14++;
          v48 = a4;
          v49 = v43;
          v50 = *v44;
          v51 = v47 << 9;
          if (!*v44)
          {
            v51 = 0;
          }

          v52 = v51 + v44[1];
          if (*v44)
          {
            v53 = 512;
          }

          else
          {
            v53 = v44[2];
          }

          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          *v46 = v50;
          *(v46 + 1) = v52;
          v43 = v49;
          a4 = v48;
          *(v46 + 2) = v53;
          *(v46 + 4) = v48;
          *(v46 + 5) = v43;
          *(v46 + 12) = v81;
          sub_1AFD24A98((v46 + 2));
          *(v46 + 24) = 1;
          v46 += 4;
          --v45;
        }

        while (v45);
      }

      v54 = v71;
      v55 = a2;
      sub_1AF5B8C54(v72, v67, v68, v71, v70, a2);
    }

    else
    {
      v56 = a1[6];
      v57 = a1[7];
      v58 = v57 - v56;
      if (v57 != v56)
      {
        v59 = v24;
        v60 = &v14[v56];
        do
        {
          v61 = *v60++;
          v62 = *a3;
          v63 = v61 << 9;
          if (!*a3)
          {
            v63 = 0;
          }

          v64 = v63 + a3[1];
          if (*a3)
          {
            v65 = 512;
          }

          else
          {
            v65 = a3[2];
          }

          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          *v59 = v62;
          *(v59 + 1) = v64;
          *(v59 + 2) = v65;
          *(v59 + 4) = a4;
          *(v59 + 5) = a5;
          *(v59 + 12) = v81;
          sub_1AFD24A98((v59 + 2));
          *(v59 + 24) = 1;
          v59 += 4;
          --v58;
        }

        while (v58);
      }

      v55 = a2;
      v54 = v71;
      sub_1AF5B9140(*(v74 + 232), *(v74 + 240), v71, v70, a2);
    }

    ecs_stack_allocator_deallocate(v55[4], v54, v69);
  }
}

uint64_t sub_1AFD0EA70(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[11];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[1];
  v10 = a1[2];

  sub_1AF64B110(&type metadata for CurveComponent, &off_1F2541E18, v6, v7, v8, v10);
  sub_1AF649C6C(v9[5], &type metadata for CurveRuntime, &v81);
  if (v81 != 1)
  {
    v17 = v8;
    if (!v6)
    {
      v17 = a1[7] - a1[6];
    }

    v18 = ecs_stack_allocator_allocate(a2[4], 4 * v17, 4);
    v19 = v18;
    if (v17)
    {
      memset(v18, 255, 4 * v17);
    }

    if (v6)
    {
      if (v8)
      {
        v20 = a1[3];
        if (v8 > 7 && (v19 >= (a3 + 1) || v19 + 4 * v8 <= a3))
        {
          v21 = v8 & 0xFFFFFFFFFFFFFFF8;
          v63 = vdupq_n_s64(v20);
          v64 = xmmword_1AFE21100;
          v65 = xmmword_1AFE21110;
          v66 = (v19 + 16);
          v67.i64[0] = 0x400000004;
          v67.i64[1] = 0x400000004;
          v68 = vdupq_n_s64(8uLL);
          v69 = v8 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v70 = vdupq_lane_s64(*a3, 0);
            v71 = vuzp1q_s32(vaddq_s64(vaddq_s64(v63, v65), v70), vaddq_s64(vaddq_s64(v63, v64), v70));
            v66[-1] = v71;
            *v66 = vaddq_s32(v71, v67);
            v64 = vaddq_s64(v64, v68);
            v65 = vaddq_s64(v65, v68);
            v66 += 2;
            v69 -= 8;
          }

          while (v69);
          if (v8 == v21)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v21 = 0;
        }

        v22 = (v19 + 4 * v21);
        v23 = v8 - v21;
        v24 = v21 + v20;
        do
        {
          *v22++ = v24 + *a3;
          ++v24;
          --v23;
        }

        while (v23);
      }

LABEL_23:
      sub_1AF5C1100(v6, v7, v8, v19, v17, a2);
LABEL_44:
      ecs_stack_allocator_deallocate(a2[4], v19, 4 * v17);
    }

    v45 = a1[6];
    v46 = a1[7];
    v47 = v46 - v45;
    if (v46 != v45)
    {
      v48 = a1[3];
      if (v47 > 7 && (v19 >= (a3 + 1) || v19 + 4 * v47 <= a3))
      {
        v49 = v47 & 0xFFFFFFFFFFFFFFF8;
        v45 += v47 & 0xFFFFFFFFFFFFFFF8;
        v72 = vdupq_n_s64(v48);
        v73 = xmmword_1AFE21100;
        v74 = xmmword_1AFE21110;
        v75 = (v19 + 16);
        v76.i64[0] = 0x400000004;
        v76.i64[1] = 0x400000004;
        v77 = vdupq_n_s64(8uLL);
        v78 = v47 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v79 = vdupq_lane_s64(*a3, 0);
          v80 = vuzp1q_s32(vaddq_s64(vaddq_s64(v72, v74), v79), vaddq_s64(vaddq_s64(v72, v73), v79));
          v75[-1] = v80;
          *v75 = vaddq_s32(v80, v76);
          v73 = vaddq_s64(v73, v77);
          v74 = vaddq_s64(v74, v77);
          v75 += 2;
          v78 -= 8;
        }

        while (v78);
        if (v47 == v49)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v49 = 0;
      }

      v50 = v46 - v45;
      v51 = (v19 + 4 * v49);
      v52 = v49 + v48;
      do
      {
        *v51++ = v52 + *a3;
        ++v52;
        --v50;
      }

      while (v50);
    }

LABEL_43:
    sub_1AF5C15EC(v9[29], v9[30], v19, v17, a2);
    goto LABEL_44;
  }

  a2[9] = &type metadata for CurveRuntime;
  a2[10] = &off_1F2541EC8;
  v11 = sub_1AF64B110(&type metadata for CurveRuntime, &off_1F2541EC8, v6, v7, v8, v10);
  if (v6)
  {
    if (!v8)
    {
    }

    v12 = a1[3];
    if (v8 <= 7 || (a3 + 1) > v11 && v11 + 4 * v8 > a3)
    {
      v13 = 0;
LABEL_8:
      v14 = (v11 + 4 * v13);
      v15 = v13 + v12;
      v16 = v8 - v13;
      do
      {
        *v14++ = v15 + *a3;
        ++v15;
        --v16;
      }

      while (v16);
    }

    v13 = v8 & 0xFFFFFFFFFFFFFFF8;
    v54 = vdupq_n_s64(v12);
    v55 = xmmword_1AFE21100;
    v56 = xmmword_1AFE21110;
    v57 = (v11 + 16);
    v58.i64[0] = 0x400000004;
    v58.i64[1] = 0x400000004;
    v59 = vdupq_n_s64(8uLL);
    v60 = v8 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v61 = vdupq_lane_s64(*a3, 0);
      v62 = vuzp1q_s32(vaddq_s64(vaddq_s64(v54, v56), v61), vaddq_s64(vaddq_s64(v54, v55), v61));
      v57[-1] = v62;
      *v57 = vaddq_s32(v62, v58);
      v55 = vaddq_s64(v55, v59);
      v56 = vaddq_s64(v56, v59);
      v57 += 2;
      v60 -= 8;
    }

    while (v60);
    if (v8 != v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v25 = *(a1 + 3);
    v26 = v25;
    v27 = *(&v25 + 1) - v25;
    if (*(&v25 + 1) != v25)
    {
      v28 = a1[3];
      v29 = v25;
      if (v27 <= 7)
      {
        goto LABEL_33;
      }

      v30 = v11 + 4 * v25;
      v31 = v30 < (a3 + 1) && v11 + 4 * *(&v25 + 1) > a3;
      v29 = v25;
      if (v31)
      {
        goto LABEL_33;
      }

      v29 = v25 + (v27 & 0xFFFFFFFFFFFFFFF8);
      v32 = vdupq_lane_s64(v25, 0);
      v33 = vaddq_s64(v32, xmmword_1AFE21100);
      v34 = vaddq_s64(v32, xmmword_1AFE21110);
      v35 = vdupq_n_s64(v28 - v26);
      v36 = (v30 + 16);
      v37.i64[0] = 0x400000004;
      v37.i64[1] = 0x400000004;
      v38 = vdupq_n_s64(8uLL);
      v39 = v27 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v40 = vdupq_lane_s64(*a3, 0);
        v41 = vuzp1q_s32(vaddq_s64(vaddq_s64(v35, v34), v40), vaddq_s64(vaddq_s64(v35, v33), v40));
        v36[-1] = v41;
        *v36 = vaddq_s32(v41, v37);
        v33 = vaddq_s64(v33, v38);
        v34 = vaddq_s64(v34, v38);
        v36 += 2;
        v39 -= 8;
      }

      while (v39);
      if (v27 != (v27 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_33:
        v42 = (v11 + 4 * v29);
        v43 = *(&v26 + 1) - v29;
        v44 = v29 + v28 - v26;
        do
        {
          *v42++ = v44 + *a3;
          ++v44;
          --v43;
        }

        while (v43);
      }
    }
  }
}

uint64_t sub_1AFD0EF4C(void *a1, uint64_t *a2)
{
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];

  v33 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v4, v5, v6, v8);
  sub_1AF649C6C(v7[5], &type metadata for Seed, &v34);
  if (v34 == 1)
  {
    a2[9] = &type metadata for Seed;
    a2[10] = &off_1F2563E60;
    v9 = sub_1AF64B110(&type metadata for Seed, &off_1F2563E60, v4, v5, v6, v8);
    if (v4)
    {
      if (v6)
      {
        v10 = (v33 + 88);
        v11 = (v9 + 4);
        do
        {
          *(v11 - 1) = *(v10 - 1);
          v12 = *v10;
          v10 += 104;
          *v11 = v12;
          v11 += 8;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v22 = a1[6];
      v23 = a1[7] - v22;
      if (v23)
      {
        v24 = (v33 + 104 * v22 + 88);
        v25 = (v9 + 8 * v22 + 4);
        do
        {
          *(v25 - 1) = *(v24 - 1);
          v26 = *v24;
          v24 += 104;
          *v25 = v26;
          v25 += 8;
          --v23;
        }

        while (v23);
      }
    }
  }

  else
  {
    v13 = v6;
    if (!v4)
    {
      v13 = a1[7] - a1[6];
    }

    v14 = ecs_stack_allocator_allocate(a2[4], 8 * v13, 4);
    v15 = v14;
    if (v13)
    {
      v16 = v14 + 4;
      v17 = v13;
      do
      {
        *(v16 - 1) = 0;
        *v16 = 0;
        v16 += 8;
        --v17;
      }

      while (v17);
    }

    if (v4)
    {
      if (v6)
      {
        v18 = (v33 + 88);
        v19 = v14 + 4;
        v20 = v6;
        do
        {
          *(v19 - 1) = *(v18 - 1);
          v21 = *v18;
          v18 += 104;
          *v19 = v21;
          v19 += 8;
          --v20;
        }

        while (v20);
      }

      sub_1AF5C1AB4(v4, v5, v6, v14, v13, a2);
    }

    else
    {
      v27 = a1[6];
      v28 = a1[7] - v27;
      if (v28)
      {
        v29 = (v33 + 104 * v27 + 88);
        v30 = v14 + 4;
        do
        {
          *(v30 - 1) = *(v29 - 1);
          v31 = *v29;
          v29 += 104;
          *v30 = v31;
          v30 += 8;
          --v28;
        }

        while (v28);
      }

      sub_1AF5C1AF8(v7[29], v7[30], v14, v13, a2);
    }

    ecs_stack_allocator_deallocate(a2[4], v15, 8 * v13);
  }
}

uint64_t sub_1AFD0F19C(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[11];
  v8 = a1[12];
  v9 = a1[13];
  v10 = a1[1];
  v11 = a1[2];

  sub_1AF64B110(a3, a4, v7, v8, v9, v11);
  sub_1AF649C6C(v10[5], &type metadata for TextureLoadPolicy, &v53);
  if (v53 != 1)
  {
    v51 = v8;
    v14 = v9;
    if (!v7)
    {
      v9 = a1[7] - a1[6];
    }

    v15 = ecs_stack_allocator_allocate(a2[4], 4 * v9, 1);
    if (v9)
    {
      if (v9 < 8)
      {
        v16 = 0;
        goto LABEL_11;
      }

      v16 = 0;
      v32 = 4 * (v9 - 1);
      if ((v15 + v32) < v15 || v15 + v32 + 1 < v15 + 1 || v15 + v32 + 2 < v15 + 2 || v15 + v32 + 3 < v15 + 3 || (v9 - 1) >> 62)
      {
        goto LABEL_11;
      }

      if (v9 >= 0x20)
      {
        v16 = v9 & 0x7FFFFFFFFFFFFFE0;
        v46 = v15 + 8;
        v47 = v9 & 0x7FFFFFFFFFFFFFE0;
        do
        {
          *(v46 - 2) = xmmword_1AFEAAE30;
          *(v46 - 1) = xmmword_1AFEAAE30;
          *(v46 - 4) = xmmword_1AFEAAE30;
          *(v46 - 3) = xmmword_1AFEAAE30;
          v46[2] = xmmword_1AFEAAE30;
          v46[3] = xmmword_1AFEAAE30;
          *v46 = xmmword_1AFEAAE30;
          v46[1] = xmmword_1AFEAAE30;
          v46 += 8;
          v47 -= 32;
        }

        while (v47);
        if (v9 == v16)
        {
          goto LABEL_13;
        }

        if ((v9 & 0x18) == 0)
        {
LABEL_11:
          v17 = v9 - v16;
          v18 = v15 + v16;
          do
          {
            *v18++ = 16842752;
            --v17;
          }

          while (v17);
          goto LABEL_13;
        }
      }

      else
      {
        v16 = 0;
      }

      v48 = v16;
      v16 = v9 & 0x7FFFFFFFFFFFFFF8;
      v49 = (v15 + 4 * v48);
      v50 = v48 - (v9 & 0x7FFFFFFFFFFFFFF8);
      do
      {
        *v49 = xmmword_1AFEAAE30;
        v49[1] = xmmword_1AFEAAE30;
        v49 += 2;
        v50 += 8;
      }

      while (v50);
      if (v9 != v16)
      {
        goto LABEL_11;
      }
    }

LABEL_13:
    if (v7)
    {
      if (v14)
      {
        if (v14 == 1)
        {
          v19 = 0;
        }

        else
        {
          v19 = v14 & 0xFFFFFFFFFFFFFFFELL;
          v37 = v15 + 5;
          v38 = v14 & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            *(v37 - 4) = 1;
            *v37 = 1;
            v37 += 8;
            v38 -= 2;
          }

          while (v38);
          if (v14 == v19)
          {
            goto LABEL_46;
          }
        }

        v39 = v14 - v19;
        v40 = v15 + 4 * v19 + 1;
        do
        {
          *v40 = 1;
          v40 += 4;
          --v39;
        }

        while (v39);
      }

LABEL_46:
      sub_1AF5C2558(v7, v51, v14, v15, v9, a2);
LABEL_53:
      ecs_stack_allocator_deallocate(a2[4], v15, 4 * v9);
    }

    v28 = a1[6];
    v29 = a1[7];
    v30 = v29 - v28;
    if (v29 != v28)
    {
      if (v30 > 1)
      {
        v31 = v30 & 0xFFFFFFFFFFFFFFFELL;
        v28 += v30 & 0xFFFFFFFFFFFFFFFELL;
        v41 = v15 + 5;
        v42 = v30 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          *(v41 - 4) = 1;
          *v41 = 1;
          v41 += 8;
          v42 -= 2;
        }

        while (v42);
        if (v30 == v31)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v31 = 0;
      }

      v43 = v29 - v28;
      v44 = v15 + 4 * v31 + 1;
      do
      {
        *v44 = 1;
        v44 += 4;
        --v43;
      }

      while (v43);
    }

LABEL_52:
    sub_1AF5C2A84(v10[29], v10[30]);
    goto LABEL_53;
  }

  a2[9] = &type metadata for TextureLoadPolicy;
  a2[10] = &off_1F2543D30;
  v12 = sub_1AF64B110(&type metadata for TextureLoadPolicy, &off_1F2543D30, v7, v8, v9, v11);
  if (v7)
  {
    if (!v9)
    {
    }

    if (v9 == 1)
    {
      v13 = 0;
LABEL_38:
      v35 = (v12 + 4 * v13 + 1);
      v36 = v9 - v13;
      do
      {
        *v35 = 1;
        v35 += 4;
        --v36;
      }

      while (v36);
    }

    v13 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v33 = (v12 + 5);
    v34 = v9 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v33 - 4) = 1;
      *v33 = 1;
      v33 += 8;
      v34 -= 2;
    }

    while (v34);
    if (v9 != v13)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v21 = a1[6];
    v20 = a1[7];
    v22 = v20 - v21;
    if (v20 != v21)
    {
      v23 = a1[6];
      if (v22 <= 1)
      {
        goto LABEL_22;
      }

      v23 = v21 + (v22 & 0xFFFFFFFFFFFFFFFELL);
      v24 = (v12 + 4 * v21 + 5);
      v25 = v22 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        *(v24 - 4) = 1;
        *v24 = 1;
        v24 += 8;
        v25 -= 2;
      }

      while (v25);
      if (v22 != (v22 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_22:
        v26 = v20 - v23;
        v27 = (v12 + 4 * v23 + 1);
        do
        {
          *v27 = 1;
          v27 += 4;
          --v26;
        }

        while (v26);
      }
    }
  }
}

uint64_t sub_1AFD0F588(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[11];
  v8 = a1[12];
  v9 = a1[13];
  v10 = a1[1];
  v11 = a1[2];

  sub_1AF64B110(a3, a4, v7, v8, v9, v11);
  sub_1AF649C6C(v10[5], &type metadata for TextureLoadPolicy, &v53);
  if (v53 != 1)
  {
    v51 = v8;
    v14 = v9;
    if (!v7)
    {
      v9 = a1[7] - a1[6];
    }

    v15 = ecs_stack_allocator_allocate(a2[4], 4 * v9, 1);
    if (v9)
    {
      if (v9 < 8)
      {
        v16 = 0;
        goto LABEL_11;
      }

      v16 = 0;
      v32 = 4 * (v9 - 1);
      if ((v15 + v32) < v15 || v15 + v32 + 1 < v15 + 1 || v15 + v32 + 2 < v15 + 2 || v15 + v32 + 3 < v15 + 3 || (v9 - 1) >> 62)
      {
        goto LABEL_11;
      }

      if (v9 >= 0x20)
      {
        v16 = v9 & 0x7FFFFFFFFFFFFFE0;
        v46 = v15 + 8;
        v47 = v9 & 0x7FFFFFFFFFFFFFE0;
        do
        {
          *(v46 - 2) = xmmword_1AFEAAE30;
          *(v46 - 1) = xmmword_1AFEAAE30;
          *(v46 - 4) = xmmword_1AFEAAE30;
          *(v46 - 3) = xmmword_1AFEAAE30;
          v46[2] = xmmword_1AFEAAE30;
          v46[3] = xmmword_1AFEAAE30;
          *v46 = xmmword_1AFEAAE30;
          v46[1] = xmmword_1AFEAAE30;
          v46 += 8;
          v47 -= 32;
        }

        while (v47);
        if (v9 == v16)
        {
          goto LABEL_13;
        }

        if ((v9 & 0x18) == 0)
        {
LABEL_11:
          v17 = v9 - v16;
          v18 = v15 + v16;
          do
          {
            *v18++ = 16842752;
            --v17;
          }

          while (v17);
          goto LABEL_13;
        }
      }

      else
      {
        v16 = 0;
      }

      v48 = v16;
      v16 = v9 & 0x7FFFFFFFFFFFFFF8;
      v49 = (v15 + 4 * v48);
      v50 = v48 - (v9 & 0x7FFFFFFFFFFFFFF8);
      do
      {
        *v49 = xmmword_1AFEAAE30;
        v49[1] = xmmword_1AFEAAE30;
        v49 += 2;
        v50 += 8;
      }

      while (v50);
      if (v9 != v16)
      {
        goto LABEL_11;
      }
    }

LABEL_13:
    if (v7)
    {
      if (v14)
      {
        if (v14 == 1)
        {
          v19 = 0;
        }

        else
        {
          v19 = v14 & 0xFFFFFFFFFFFFFFFELL;
          v37 = v15 + 4;
          v38 = v14 & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            *(v37 - 4) = 1;
            *v37 = 1;
            v37 += 8;
            v38 -= 2;
          }

          while (v38);
          if (v14 == v19)
          {
            goto LABEL_46;
          }
        }

        v39 = v15 + 4 * v19;
        v40 = v14 - v19;
        do
        {
          *v39 = 1;
          v39 += 4;
          --v40;
        }

        while (v40);
      }

LABEL_46:
      sub_1AF5C2558(v7, v51, v14, v15, v9, a2);
LABEL_53:
      ecs_stack_allocator_deallocate(a2[4], v15, 4 * v9);
    }

    v28 = a1[6];
    v29 = a1[7];
    v30 = v29 - v28;
    if (v29 != v28)
    {
      if (v30 > 1)
      {
        v31 = v30 & 0xFFFFFFFFFFFFFFFELL;
        v28 += v30 & 0xFFFFFFFFFFFFFFFELL;
        v41 = v15 + 4;
        v42 = v30 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          *(v41 - 4) = 1;
          *v41 = 1;
          v41 += 8;
          v42 -= 2;
        }

        while (v42);
        if (v30 == v31)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v31 = 0;
      }

      v43 = v29 - v28;
      v44 = v15 + 4 * v31;
      do
      {
        *v44 = 1;
        v44 += 4;
        --v43;
      }

      while (v43);
    }

LABEL_52:
    sub_1AF5C2A84(v10[29], v10[30]);
    goto LABEL_53;
  }

  a2[9] = &type metadata for TextureLoadPolicy;
  a2[10] = &off_1F2543D30;
  v12 = sub_1AF64B110(&type metadata for TextureLoadPolicy, &off_1F2543D30, v7, v8, v9, v11);
  if (v7)
  {
    if (!v9)
    {
    }

    if (v9 == 1)
    {
      v13 = 0;
LABEL_38:
      v35 = (v12 + 4 * v13);
      v36 = v9 - v13;
      do
      {
        *v35 = 1;
        v35 += 4;
        --v36;
      }

      while (v36);
    }

    v13 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v33 = (v12 + 4);
    v34 = v9 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v33 - 4) = 1;
      *v33 = 1;
      v33 += 8;
      v34 -= 2;
    }

    while (v34);
    if (v9 != v13)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v21 = a1[6];
    v20 = a1[7];
    v22 = v20 - v21;
    if (v20 != v21)
    {
      v23 = a1[6];
      if (v22 <= 1)
      {
        goto LABEL_22;
      }

      v23 = v21 + (v22 & 0xFFFFFFFFFFFFFFFELL);
      v24 = (v12 + 4 * v21 + 4);
      v25 = v22 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        *(v24 - 4) = 1;
        *v24 = 1;
        v24 += 8;
        v25 -= 2;
      }

      while (v25);
      if (v22 != (v22 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_22:
        v26 = (v12 + 4 * v23);
        v27 = v20 - v23;
        do
        {
          *v26 = 1;
          v26 += 4;
          --v27;
        }

        while (v27);
      }
    }
  }
}

uint64_t sub_1AFD0F964(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[11];
  v9 = a1[12];
  v10 = a1[13];
  v11 = a1[1];
  v12 = a1[2];

  sub_1AF64B110(a3, a4, v8, v9, v10, v12);
  sub_1AF649C6C(v11[5], &type metadata for TextureLoadingOptions, v63);
  if (v63[0] == 1)
  {
    a2[9] = &type metadata for TextureLoadingOptions;
    a2[10] = &off_1F2543FE0;
    v13 = sub_1AF64B110(&type metadata for TextureLoadingOptions, &off_1F2543FE0, v8, v9, v10, v12);
    v14 = v13;
    if (v8)
    {
      if (v10)
      {
        v15 = a1[3];
        v16 = *a1;
        do
        {
          v17 = *v8++;
          v64 = v16;
          v65 = v11;
          v66 = v12;
          v67 = v15;
          v68 = v17;
          v18 = *(v11[5] + 16);
          v19 = *(v18 + 128);
          if (!*(v19 + 16) || (v20 = sub_1AF449CB8(&type metadata for TextureLoadingOptions), (v21 & 1) == 0) || *(*(v18 + 24) + 16 * *(*(v19 + 56) + 8 * v20) + 32) != &type metadata for TextureLoadingOptions)
          {
            *v14 = 0;
          }

          sub_1AF8DE828(v63);
          *v14 |= *v63;
          v14 += 8;
          ++v15;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v38 = a1[6];
      v39 = a1[7];
      if (v38 != v39)
      {
        v40 = a1[3];
        v41 = *a1;
        v42 = (v13 + (v38 << 6));
        do
        {
          v64 = v41;
          v65 = v11;
          v66 = v12;
          v67 = v40;
          v68 = v38;
          v43 = *(v11[5] + 16);
          v44 = *(v43 + 128);
          if (!*(v44 + 16) || (v45 = sub_1AF449CB8(&type metadata for TextureLoadingOptions), (v46 & 1) == 0) || *(*(v43 + 24) + 16 * *(*(v44 + 56) + 8 * v45) + 32) != &type metadata for TextureLoadingOptions)
          {
            *v42 = 0;
          }

          ++v38;
          sub_1AF8DE828(v63);
          *v42 |= *v63;
          v42 += 8;
          ++v40;
        }

        while (v39 != v38);
      }
    }
  }

  else
  {
    v57 = v9;
    v22 = v10;
    if (!v8)
    {
      v22 = a1[7] - a1[6];
    }

    v60 = v22 << 6;
    v23 = ecs_stack_allocator_allocate(a2[4], v22 << 6, 8);
    if (v22)
    {
      v24 = v23 + 4;
      v25 = v22;
      do
      {
        *(v24 - 3) = 0;
        *(v24 - 2) = 0;
        *(v24 - 4) = 98;
        *(v24 - 8) = -2;
        v24[1] = 0;
        v24[2] = 0;
        *v24 = 0;
        *(v24 + 12) = 768;
        v24 += 8;
        --v25;
      }

      while (v25);
    }

    v61 = a2;
    v62 = v23;
    v59 = v22;
    v69 = v12;
    if (v8)
    {
      v58 = v8;
      if (v10)
      {
        v26 = a1[3];
        v27 = *a1;
        v28 = v23;
        v29 = v10;
        v30 = v8;
        do
        {
          v31 = *v30++;
          v64 = v27;
          v65 = v11;
          v66 = v69;
          v67 = v26;
          v68 = v31;
          v32 = *(v11[5] + 16);
          v33 = *(v32 + 128);
          if (!*(v33 + 16) || (v34 = sub_1AF449CB8(&type metadata for TextureLoadingOptions), (v35 & 1) == 0) || *(*(v32 + 24) + 16 * *(*(v33 + 56) + 8 * v34) + 32) != &type metadata for TextureLoadingOptions)
          {
            *v28 = 0;
          }

          sub_1AF8DE828(v63);
          *v28 |= *v63;
          v28 += 8;
          ++v26;
          --v29;
        }

        while (v29);
      }

      v36 = v61;
      v37 = v62;
      sub_1AF5C1B20(v58, v57, v10, v62, v59, v61);
    }

    else
    {
      v47 = a1[6];
      v48 = a1[7];
      if (v47 != v48)
      {
        v50 = a1[3];
        v51 = *a1;
        v52 = v23;
        do
        {
          v64 = v51;
          v65 = v11;
          v66 = v69;
          v67 = v50;
          v68 = v47;
          v53 = *(v11[5] + 16);
          v54 = *(v53 + 128);
          if (!*(v54 + 16) || (v55 = sub_1AF449CB8(&type metadata for TextureLoadingOptions), (v56 & 1) == 0) || *(*(v53 + 24) + 16 * *(*(v54 + 56) + 8 * v55) + 32) != &type metadata for TextureLoadingOptions)
          {
            *v52 = 0;
          }

          ++v47;
          sub_1AF8DE828(v63);
          *v52 |= *v63;
          v52 += 8;
          ++v50;
        }

        while (v48 != v47);
      }

      v36 = v61;
      v37 = v62;
      sub_1AF5C204C(v11[29], v11[30]);
    }

    ecs_stack_allocator_deallocate(*(v36 + 32), v37, v60);
  }
}

uint64_t sub_1AFD0FDB4(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[11];
  v6 = a1[12];
  v7 = a1[13];
  v8 = a1[1];
  v9 = a1[2];

  sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v5, v6, v7, v9);
  sub_1AF649C6C(*(v8 + 40), &type metadata for Parent, &v74);
  if (v74 != 1)
  {
    v19 = v8;
    v20 = v7;
    if (!v5)
    {
      v7 = a1[7] - a1[6];
    }

    v21 = ecs_stack_allocator_allocate(a2[4], 8 * v7, 4);
    v22 = v21;
    if (v7)
    {
      if (v7 <= 0x17 || ((v23 = v7 - 1, v24 = &v21[v23], v25 = &v21[v23] + 4, v24 >= v21) ? (v26 = v25 >= v21 + 4) : (v26 = 0), v26 ? (v27 = (v7 - 1) >> 61 == 0) : (v27 = 0), !v27))
      {
        v28 = 0;
LABEL_28:
        v29 = v7 - v28;
        v30 = &v21[v28];
        do
        {
          *v30++ = 0xFFFFFFFFLL;
          --v29;
        }

        while (v29);
        goto LABEL_30;
      }

      v28 = v7 & 0x3FFFFFFFFFFFFFF8;
      v54 = v21 + 4;
      *&v55 = 0xFFFFFFFFLL;
      *(&v55 + 1) = 0xFFFFFFFFLL;
      v56 = v7 & 0x3FFFFFFFFFFFFFF8;
      do
      {
        *(v54 - 2) = v55;
        *(v54 - 1) = v55;
        *v54 = v55;
        v54[1] = v55;
        v54 += 4;
        v56 -= 8;
      }

      while (v56);
      if (v7 != v28)
      {
        goto LABEL_28;
      }
    }

LABEL_30:
    if (v5)
    {
      if (v20)
      {
        if (v20 > 0x17)
        {
          v31 = 0;
          v50 = v20 - 1;
          if (&v21[v50] >= v21 && &v21[v50] + 4 >= v21 + 4 && !((v20 - 1) >> 61))
          {
            v31 = v20 & 0x3FFFFFFFFFFFFFF8;
            *&v51 = a3;
            *(&v51 + 1) = a3;
            v52 = v21 + 4;
            v53 = v20 & 0x3FFFFFFFFFFFFFF8;
            do
            {
              *(v52 - 2) = v51;
              *(v52 - 1) = v51;
              *v52 = v51;
              v52[1] = v51;
              v52 += 4;
              v53 -= 8;
            }

            while (v53);
            if (v20 == v31)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          v31 = 0;
        }

        v32 = &v21[v31];
        v33 = v20 - v31;
        do
        {
          *v32++ = a3;
          --v33;
        }

        while (v33);
      }

LABEL_36:
      sub_1AF5C2F90(v5, v6, v20, v21, v7, a2);
LABEL_55:
      ecs_stack_allocator_deallocate(a2[4], v22, 8 * v7);
    }

    v39 = a1[6];
    v40 = a1[7];
    v41 = v40 - v39;
    if (v40 != v39)
    {
      if (v41 > 0x17 && ((v42 = v40 + ~v39, &v21[v42] >= v21) ? (v43 = &v21[v42] + 4 >= v21 + 4) : (v43 = 0), (v44 = v42 >> 61, v43) ? (v45 = v44 == 0) : (v45 = 0), v45))
      {
        v46 = v41 & 0xFFFFFFFFFFFFFFF8;
        v39 += v41 & 0xFFFFFFFFFFFFFFF8;
        *&v70 = a3;
        *(&v70 + 1) = a3;
        v71 = v21 + 4;
        v72 = v41 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          *(v71 - 2) = v70;
          *(v71 - 1) = v70;
          *v71 = v70;
          v71[1] = v70;
          v71 += 4;
          v72 -= 8;
        }

        while (v72);
        if (v41 == v46)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v46 = 0;
      }

      v47 = v40 - v39;
      v48 = &v21[v46];
      do
      {
        *v48++ = a3;
        --v47;
      }

      while (v47);
    }

LABEL_54:
    sub_1AF5C3510(*(v19 + 232), *(v19 + 240), v21, v7, a2);
    goto LABEL_55;
  }

  a2[9] = &type metadata for Parent;
  a2[10] = &off_1F2529C98;
  v10 = sub_1AF64B110(&type metadata for Parent, &off_1F2529C98, v5, v6, v7, v9);
  if (v5)
  {
    if (!v7)
    {
    }

    if (v7 <= 0x17 || ((v11 = 8 * (v7 - 1), v12 = v10 + v11, v13 = v10 + 4 + v11, v12 >= v10) ? (v14 = v13 >= v10 + 4) : (v14 = 0), v14 ? (v15 = (v7 - 1) >> 61 == 0) : (v15 = 0), !v15))
    {
      v16 = 0;
LABEL_13:
      v17 = (v10 + 8 * v16);
      v18 = v7 - v16;
      do
      {
        *v17++ = a3;
        --v18;
      }

      while (v18);
    }

    v16 = v7 & 0x3FFFFFFFFFFFFFF8;
    *&v57 = a3;
    *(&v57 + 1) = a3;
    v58 = (v10 + 32);
    v59 = v7 & 0x3FFFFFFFFFFFFFF8;
    do
    {
      *(v58 - 2) = v57;
      *(v58 - 1) = v57;
      *v58 = v57;
      v58[1] = v57;
      v58 += 4;
      v59 -= 8;
    }

    while (v59);
    if (v7 != v16)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v34 = a1[6];
    v35 = a1[7];
    v36 = v35 - v34;
    if (v35 != v34)
    {
      if (v36 <= 0x1F)
      {
        goto LABEL_39;
      }

      v60 = v35 + ~v34;
      v61 = 8 * v34;
      v62 = v10 + 8 * v34;
      if (v62 + 8 * v60 < v62)
      {
        goto LABEL_39;
      }

      v63 = v62 + 4;
      v64 = v63 + 8 * v60;
      v65 = v60 >> 61;
      if (v64 < v63 || v65 != 0)
      {
        goto LABEL_39;
      }

      v34 += v36 & 0xFFFFFFFFFFFFFFF8;
      *&v67 = a3;
      *(&v67 + 1) = a3;
      v68 = (v61 + v10 + 32);
      v69 = v36 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        *(v68 - 2) = v67;
        *(v68 - 1) = v67;
        *v68 = v67;
        v68[1] = v67;
        v68 += 4;
        v69 -= 8;
      }

      while (v69);
      if (v36 != (v36 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_39:
        v37 = (v10 + 8 * v34);
        v38 = v35 - v34;
        do
        {
          *v37++ = a3;
          --v38;
        }

        while (v38);
      }
    }
  }
}

uint64_t sub_1AFD101E0(void *a1, uint64_t *a2)
{
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  sub_1AF64B110(&type metadata for Material, &off_1F253F848, v5, v4, v6, v8);
  result = sub_1AF64B110(&type metadata for VertexLayoutCollection, &off_1F252BDA8, v5, v4, v6, v8);
  v10 = result;
  if (v5)
  {
    if (v6)
    {
      while (1)
      {
        v12 = *v5++;
        v11 = v12;

        if (*(v7 + 184))
        {
          break;
        }

        v14 = *(*(v7 + 168) + 4 * v11);
        v15 = *(*(v13 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v14 + 8);

        v16 = *a2;
        if (*(*a2 + 16))
        {
          result = sub_1AF449D3C(v14 | (v15 << 32));
          if (v17)
          {
            v18 = *(*(v16 + 56) + 8 * result);

            v19 = *(v18 + 16);
            if (v19)
            {
              sub_1AFD55360(0, &qword_1EB630A38, &type metadata for VertexLayout, MEMORY[0x1E69E6F90]);
              v20 = swift_allocObject();
              v21 = j__malloc_size_0(v20);
              v22 = v21 - 32;
              if (v21 < 32)
              {
                v22 = v21 - 17;
              }

              v20[2] = v19;
              v20[3] = 2 * (v22 >> 4);
              sub_1AFC86B0C(&v35, v20 + 4, v19, v18);
              result = sub_1AF0FBB14();
              *v10 = v20;
            }

            else
            {

              *v10 = MEMORY[0x1E69E7CC0];
            }
          }
        }

        ++v10;
        if (!--v6)
        {
          return result;
        }
      }

LABEL_26:
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    v24 = a1[6];
    v23 = a1[7];
    if (v24 != v23)
    {
      while (1)
      {

        if (*(v7 + 184))
        {
          break;
        }

        v29 = *(*(v7 + 168) + 4 * v24);
        v30 = *(*(v28 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v29 + 8);

        v31 = *a2;
        if (*(*a2 + 16))
        {
          result = sub_1AF449D3C(v29 | (v30 << 32));
          if (v32)
          {
            v33 = *(*(v31 + 56) + 8 * result);

            v34 = *(v33 + 16);
            if (v34)
            {
              sub_1AFD55360(0, &qword_1EB630A38, &type metadata for VertexLayout, MEMORY[0x1E69E6F90]);
              v25 = swift_allocObject();
              v26 = j__malloc_size_0(v25);
              v27 = v26 - 32;
              if (v26 < 32)
              {
                v27 = v26 - 17;
              }

              v25[2] = v34;
              v25[3] = 2 * (v27 >> 4);
              sub_1AFC86B0C(&v35, v25 + 4, v34, v33);
              result = sub_1AF0FBB14();
            }

            else
            {

              v25 = MEMORY[0x1E69E7CC0];
            }

            v10[v24] = v25;
          }
        }

        if (v23 == ++v24)
        {
          return result;
        }
      }

      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1AFD10528(void *a1, uint64_t *a2)
{
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[1];
  v7 = a1[2];
  v8 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v3, v4, v5, v7);
  result = sub_1AF64B110(&type metadata for EmitterRuntime, &off_1F2563418, v3, v4, v5, v7);
  v34 = v6;
  if (v3)
  {
    if (v5)
    {
      v10 = (result + 162);
      v11 = (v8 + 64);
      do
      {
        v14 = *v3++;
        v13 = v14;
        if ((*v10 & 1) == 0)
        {
          *v10 = 1;
          v15 = *v11;
          if (*v11 > 0.0)
          {

            if (*(v6 + 184))
            {
              goto LABEL_25;
            }

            v17 = *(*(v6 + 168) + 4 * v13);
            v18 = *(*(v16 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v17 + 8);

            v19 = *a2;
            result = swift_isUniquelyReferenced_nonNull_native();
            *a2 = v19;
            if ((result & 1) == 0)
            {
              result = sub_1AF427ADC(0, *(v19 + 16) + 1, 1, v19);
              v19 = result;
              *a2 = result;
            }

            v21 = *(v19 + 16);
            v20 = *(v19 + 24);
            if (v21 >= v20 >> 1)
            {
              result = sub_1AF427ADC(v20 > 1, v21 + 1, 1, v19);
              v19 = result;
              *a2 = result;
            }

            *(v19 + 16) = v21 + 1;
            v12 = (v19 + 12 * v21);
            *(v12 + 8) = v17;
            *(v12 + 9) = v18;
            v12[10] = v15;
            v6 = v34;
          }
        }

        v10 += 848;
        v11 += 26;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v23 = a1[6];
    v22 = a1[7];
    if (v23 != v22)
    {
      v24 = (result + 848 * v23 + 162);
      v25 = (v8 + 104 * v23 + 64);
      do
      {
        if ((*v24 & 1) == 0)
        {
          *v24 = 1;
          v27 = *v25;
          if (*v25 > 0.0)
          {

            if (*(v6 + 184))
            {
LABEL_25:
              result = sub_1AFDFE518();
              __break(1u);
              return result;
            }

            v29 = *(*(v6 + 168) + 4 * v23);
            v30 = *(*(v28 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v29 + 8);

            v31 = *a2;
            result = swift_isUniquelyReferenced_nonNull_native();
            *a2 = v31;
            if ((result & 1) == 0)
            {
              result = sub_1AF427ADC(0, *(v31 + 16) + 1, 1, v31);
              v31 = result;
              *a2 = result;
            }

            v33 = *(v31 + 16);
            v32 = *(v31 + 24);
            if (v33 >= v32 >> 1)
            {
              result = sub_1AF427ADC(v32 > 1, v33 + 1, 1, v31);
              v31 = result;
              *a2 = result;
            }

            *(v31 + 16) = v33 + 1;
            v26 = (v31 + 12 * v33);
            *(v26 + 8) = v29;
            *(v26 + 9) = v30;
            v26[10] = v27;
            v6 = v34;
          }
        }

        ++v23;
        v24 += 848;
        v25 += 26;
      }

      while (v22 != v23);
    }
  }

  return result;
}

uint64_t sub_1AFD10858(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a1[11];
  v20 = a1[12];
  v9 = a1[13];
  v10 = a1[2];
  v11 = sub_1AF64B110(&type metadata for ParticlePlaneCollider, &off_1F25530C8, v8, v20, v9, v10);
  v12 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v8, v20, v9, v10);
  if (v8)
  {
    for (; v9; --v9)
    {
      sub_1AFB372F8(v11, v12, a2, a3, a4);
      if (v21)
      {
        break;
      }

      v12 += 4;
      v11 += 28;
    }
  }

  else
  {
    v13 = a1[6];
    v14 = v11 + 28 * v13;
    v15 = &v12[4 * v13];
    v16 = a1[7] - v13 + 1;
    do
    {
      if (!--v16)
      {
        break;
      }

      v17 = v14 + 28;
      v18 = v15 + 4;
      sub_1AFB372F8(v14, v15, a2, a3, a4);
      v15 = v18;
      v14 = v17;
    }

    while (!v21);
  }
}

uint64_t sub_1AFD109B4(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a1[11];
  v20 = a1[12];
  v9 = a1[13];
  v10 = a1[2];
  v11 = sub_1AF64B110(&type metadata for KillShape, &off_1F2561EB0, v8, v20, v9, v10);
  v12 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v8, v20, v9, v10);
  if (v8)
  {
    for (; v9; --v9)
    {
      sub_1AFB38684(v11, v12, a2, a3, a4);
      if (v21)
      {
        break;
      }

      v12 += 4;
      v11 += 2;
    }
  }

  else
  {
    v13 = a1[6];
    v14 = &v11[2 * v13];
    v15 = &v12[4 * v13];
    v16 = a1[7] - v13 + 1;
    do
    {
      if (!--v16)
      {
        break;
      }

      v17 = v14 + 2;
      v18 = v15 + 4;
      sub_1AFB38684(v14, v15, a2, a3, a4);
      v15 = v18;
      v14 = v17;
    }

    while (!v21);
  }
}

uint64_t sub_1AFD10B0C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[11];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[2];
  v10 = sub_1AF64B110(&type metadata for EmitterShape, &off_1F254C2E8, v6, v7, v8, v9);
  v11 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v6, v7, v8, v9);
  if (v6)
  {
    for (; v8; --v8)
    {
      sub_1AFB38B80(v10, v11, a2, a3);
      if (v19)
      {
        break;
      }

      v11 += 4;
      v10 += 224;
    }
  }

  else
  {
    v12 = a1[6];
    v13 = v10 + 224 * v12;
    v14 = &v11[4 * v12];
    v15 = a1[7] - v12 + 1;
    do
    {
      if (!--v15)
      {
        break;
      }

      v16 = v13 + 224;
      v17 = v14 + 4;
      sub_1AFB38B80(v13, v14, a2, a3);
      v14 = v17;
      v13 = v16;
    }

    while (!v19);
  }
}

uint64_t sub_1AFD10C58(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[11];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[2];
  v10 = sub_1AF64B110(&type metadata for Skeleton, &off_1F25436A8, v6, v7, v8, v9);
  v11 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v6, v7, v8, v9);
  if (v6)
  {
    for (; v8; --v8)
    {
      sub_1AFB396B0(v10, v11, a2, a3);
      if (v19)
      {
        break;
      }

      v11 += 64;
      v10 += 5;
    }
  }

  else
  {
    v12 = a1[6];
    v13 = &v10[5 * v12];
    v14 = v11 + (v12 << 6);
    v15 = a1[7] - v12 + 1;
    do
    {
      if (!--v15)
      {
        break;
      }

      v16 = v13 + 5;
      v17 = v14 + 64;
      sub_1AFB396B0(v13, v14, a2, a3);
      v14 = v17;
      v13 = v16;
    }

    while (!v19);
  }
}

uint64_t sub_1AFD10DA4(void *a1, uint64_t a2)
{
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[2];
  v8 = sub_1AF64B110(&type metadata for ParticleCollisionEvent, &off_1F2553660, v4, v5, v6, v7);
  result = sub_1AF64B110(&type metadata for OldEvent, &off_1F2534568, v4, v5, v6, v7);
  if (v4)
  {
    if (v6)
    {
      v10 = (v8 + 72);
      do
      {
        if ((*v10 & 1) == 0)
        {
          v12 = *(v10 - 1);
          v41 = *(v10 - 72);
          v43 = *(v10 - 56);
          v45 = *(v10 - 40);
          v13 = *(v10 - 3);
          v47 = *(v10 - 2);
          v14 = *(v10 - 8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v16 = *(a2 + 8);
          *(a2 + 8) = 0x8000000000000000;
          v17 = sub_1AF449CBC(v12);
          v19 = v18;
          v20 = v16[2] + ((v18 & 1) == 0);
          if (v16[3] >= v20)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v23 = v17;
              sub_1AF84ED34();
              v17 = v23;
            }
          }

          else
          {
            sub_1AF83FECC(v20, isUniquelyReferenced_nonNull_native);
            v17 = sub_1AF449CBC(v12);
            if ((v19 & 1) != (v21 & 1))
            {
              goto LABEL_29;
            }
          }

          if (v19)
          {
            v22 = v16[7] + 80 * v17;
            *v22 = v41;
            *(v22 + 16) = v43;
            *(v22 + 32) = v45;
            *(v22 + 48) = v13;
            *(v22 + 56) = v47;
            *(v22 + 64) = v14;
            *(v22 + 68) = v12;
            *(v22 + 72) = 0;
          }

          else
          {
            v16[(v17 >> 6) + 8] |= 1 << v17;
            *(v16[6] + 4 * v17) = v12;
            v11 = v16[7] + 80 * v17;
            *v11 = v41;
            *(v11 + 16) = v43;
            *(v11 + 32) = v45;
            *(v11 + 48) = v13;
            *(v11 + 56) = v47;
            *(v11 + 64) = v14;
            *(v11 + 68) = v12;
            *(v11 + 72) = 0;
            ++v16[2];
          }

          *(a2 + 8) = v16;
        }

        v10 += 80;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v24 = a1[6];
    v25 = a1[7];
    v26 = v25 - v24;
    if (v25 != v24)
    {
      v27 = (v8 + 80 * v24 + 72);
      do
      {
        if ((*v27 & 1) == 0)
        {
          v29 = *(v27 - 1);
          v42 = *(v27 - 72);
          v44 = *(v27 - 56);
          v46 = *(v27 - 40);
          v30 = *(v27 - 3);
          v48 = *(v27 - 2);
          v31 = *(v27 - 8);
          v32 = swift_isUniquelyReferenced_nonNull_native();
          v33 = *(a2 + 8);
          *(a2 + 8) = 0x8000000000000000;
          v34 = sub_1AF449CBC(v29);
          v36 = v35;
          v37 = v33[2] + ((v35 & 1) == 0);
          if (v33[3] >= v37)
          {
            if ((v32 & 1) == 0)
            {
              v40 = v34;
              sub_1AF84ED34();
              v34 = v40;
            }
          }

          else
          {
            sub_1AF83FECC(v37, v32);
            v34 = sub_1AF449CBC(v29);
            if ((v36 & 1) != (v38 & 1))
            {
LABEL_29:
              result = sub_1AFDFF1A8();
              __break(1u);
              return result;
            }
          }

          if (v36)
          {
            v39 = v33[7] + 80 * v34;
            *v39 = v42;
            *(v39 + 16) = v44;
            *(v39 + 32) = v46;
            *(v39 + 48) = v30;
            *(v39 + 56) = v48;
            *(v39 + 64) = v31;
            *(v39 + 68) = v29;
            *(v39 + 72) = 0;
          }

          else
          {
            v33[(v34 >> 6) + 8] |= 1 << v34;
            *(v33[6] + 4 * v34) = v29;
            v28 = v33[7] + 80 * v34;
            *v28 = v42;
            *(v28 + 16) = v44;
            *(v28 + 32) = v46;
            *(v28 + 48) = v30;
            *(v28 + 56) = v48;
            *(v28 + 64) = v31;
            *(v28 + 68) = v29;
            *(v28 + 72) = 0;
            ++v33[2];
          }

          *(a2 + 8) = v33;
        }

        v27 += 80;
        --v26;
      }

      while (v26);
    }
  }

  return result;
}

void sub_1AFD1118C(void *a1, char **a2, uint64_t a3, float a4)
{
  v8 = a1[11];
  v9 = a1[12];
  v10 = a1[13];
  v11 = a1[2];
  v12 = sub_1AF64B110(&type metadata for ParticleCollisionEvent, &off_1F2553660, v8, v9, v10, v11);
  sub_1AF64B110(&type metadata for OldEvent, &off_1F2534568, v8, v9, v10, v11);
  if (v8)
  {
    if (v10)
    {
      v13 = (v12 + 64);
      v14 = 1.0;
      do
      {
        if (a4 > 0.0)
        {
          if (a4 >= v14 || (v16 = drand48(), v14 = 1.0, *&v16 = v16, *&v16 < a4))
          {
            v114 = *(v13 - 4);
            v17 = *a2;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a2 = v17;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v17 = sub_1AF42250C(0, *(v17 + 2) + 1, 1, v17);
              *a2 = v17;
            }

            v20 = *(v17 + 2);
            v19 = *(v17 + 3);
            if (v20 >= v19 >> 1)
            {
              v17 = sub_1AF42250C(v19 > 1, v20 + 1, 1, v17);
              *a2 = v17;
            }

            *(v17 + 2) = v20 + 1;
            *&v17[16 * v20 + 32] = v114;
            if (*(a3 + 14) == 1)
            {
              v115 = *(v13 - 3);
              v21 = a2[1];
              v22 = swift_isUniquelyReferenced_nonNull_native();
              a2[1] = v21;
              if ((v22 & 1) == 0)
              {
                v21 = sub_1AF42458C(0, *(v21 + 2) + 1, 1, v21);
                a2[1] = v21;
              }

              v25 = *(v21 + 2);
              v24 = *(v21 + 3);
              v23.i32[0] = 1.0;
              if (v25 >= v24 >> 1)
              {
                v61 = sub_1AF42458C(v24 > 1, v25 + 1, 1, v21);
                v23.i32[0] = 1.0;
                v21 = v61;
                a2[1] = v61;
              }

              v26 = v115;
              v27 = vmulq_f32(v26, v26);
              v27.f32[0] = v27.f32[2] + vaddv_f32(*v27.f32);
              v28 = vdupq_lane_s32(*v27.f32, 0);
              v28.i32[3] = 0;
              v29 = vrsqrteq_f32(v28);
              v30 = vmulq_f32(v29, vrsqrtsq_f32(v28, vmulq_f32(v29, v29)));
              v31 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v27.f32[0] != 0.0)), 0x1FuLL));
              v31.i32[3] = 0;
              v32 = vbslq_s8(vcltzq_s32(v31), vmulq_f32(vmulq_f32(v30, vrsqrtsq_f32(v28, vmulq_f32(v30, v30))), v115), v115);
              v26.i32[0] = v32.i32[2];
              v28.i64[0] = 0x8000000080000000;
              v28.i64[1] = 0x8000000080000000;
              v28.f32[0] = *vbslq_s8(v28, v23, v26).i32;
              v30.f32[0] = v32.f32[1] / (fabsf(v32.f32[2]) + *v23.i32);
              v33 = vmuls_lane_f32(v30.f32[0], *v32.f32, 1);
              v34 = -(v32.f32[0] * v30.f32[0]);
              v35 = v32.f32[2] + (v28.f32[0] * v33);
              v36 = v28.f32[0] * v34;
              v37 = *v23.i32 - v33;
              v38 = vmuls_lane_f32(-v28.f32[0], *v32.f32, 1);
              v39 = v32.f32[2] + (v35 + v37);
              if (v39 <= 0.0)
              {
                if (v35 < v37 || v35 < v32.f32[2])
                {
                  if (v37 <= v32.f32[2])
                  {
                    v48 = sqrtf(((v32.f32[2] + *v23.i32) - v35) - v37);
                    v32.i32[0] = vsubq_f32(v32, v32).u32[0];
                    v32.f32[1] = v32.f32[1] + v38;
                    v32.f32[2] = v48 * v48;
                    v32.f32[3] = v36 - v34;
                    v42 = vmulq_n_f32(v32, 0.5 / v48);
                  }

                  else
                  {
                    v44 = sqrtf(((v37 + *v23.i32) - v35) - v32.f32[2]);
                    v45.f32[0] = v34 + v36;
                    v45.f32[1] = v44 * v44;
                    *&v45.u32[2] = vrev64_s32(vadd_f32(*v32.f32, __PAIR64__(LODWORD(v38), v32.u32[0])));
                    v42 = vmulq_n_f32(v45, 0.5 / v44);
                  }
                }

                else
                {
                  v46 = sqrtf(((v35 + *v23.i32) - v37) - v32.f32[2]);
                  v47.f32[0] = v46 * v46;
                  v47.f32[1] = v34 + v36;
                  *&v47.u32[2] = vsub_f32(__PAIR64__(LODWORD(v38), v32.u32[0]), *v32.f32);
                  v42 = vmulq_n_f32(v47, 0.5 / v46);
                }
              }

              else
              {
                v40 = sqrtf(v39 + *v23.i32);
                v41.f32[0] = v38 - v32.f32[1];
                v41.i32[1] = vaddq_f32(v32, v32).u32[0];
                v41.f32[2] = v36 - v34;
                v41.f32[3] = v40 * v40;
                v42 = vmulq_n_f32(v41, 0.5 / v40);
              }

              *(v21 + 2) = v25 + 1;
              *&v21[16 * v25 + 32] = v42;
            }

            v116 = *(v13 - 2);
            v49 = a2[2];
            v50 = swift_isUniquelyReferenced_nonNull_native();
            a2[2] = v49;
            if ((v50 & 1) == 0)
            {
              v49 = sub_1AF42250C(0, *(v49 + 2) + 1, 1, v49);
              a2[2] = v49;
            }

            v52 = *(v49 + 2);
            v51 = *(v49 + 3);
            v14 = 1.0;
            if (v52 >= v51 >> 1)
            {
              v60 = sub_1AF42250C(v51 > 1, v52 + 1, 1, v49);
              v14 = 1.0;
              v49 = v60;
              a2[2] = v60;
            }

            *(v49 + 2) = v52 + 1;
            *&v49[16 * v52 + 32] = v116;
            if ((*v13 & 1) == 0 && *(a3 + 12) == 1)
            {
              v53 = *(v13 - 2);
              v54 = *(v13 - 1);
              v55 = a2[3];
              v56 = swift_isUniquelyReferenced_nonNull_native();
              a2[3] = v55;
              if ((v56 & 1) == 0)
              {
                v55 = sub_1AF42053C(0, *(v55 + 2) + 1, 1, v55);
                a2[3] = v55;
              }

              v58 = *(v55 + 2);
              v57 = *(v55 + 3);
              v14 = 1.0;
              if (v58 >= v57 >> 1)
              {
                v59 = sub_1AF42053C(v57 > 1, v58 + 1, 1, v55);
                v14 = 1.0;
                v55 = v59;
                a2[3] = v59;
              }

              *(v55 + 2) = v58 + 1;
              v15 = &v55[16 * v58];
              *(v15 + 4) = v53;
              *(v15 + 5) = v54;
            }
          }
        }

        v13 += 80;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    v62 = a1[6];
    v63 = a1[7];
    if (v62 != v63)
    {
      v64 = (v12 + 80 * v62 + 64);
      v65 = ~v62 + v63;
      v66 = 1.0;
      if (a4 <= 0.0)
      {
        goto LABEL_75;
      }

LABEL_42:
      if (a4 >= v66 || (v67 = drand48(), v66 = 1.0, *&v67 = v67, *&v67 < a4))
      {
        v117 = *(v64 - 4);
        v68 = *a2;
        v69 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v68;
        if ((v69 & 1) == 0)
        {
          v68 = sub_1AF42250C(0, *(v68 + 2) + 1, 1, v68);
          *a2 = v68;
        }

        v71 = *(v68 + 2);
        v70 = *(v68 + 3);
        if (v71 >= v70 >> 1)
        {
          v68 = sub_1AF42250C(v70 > 1, v71 + 1, 1, v68);
          *a2 = v68;
        }

        *(v68 + 2) = v71 + 1;
        *&v68[16 * v71 + 32] = v117;
        if (*(a3 + 14) == 1)
        {
          v118 = *(v64 - 3);
          v72 = a2[1];
          v73 = swift_isUniquelyReferenced_nonNull_native();
          a2[1] = v72;
          if ((v73 & 1) == 0)
          {
            v72 = sub_1AF42458C(0, *(v72 + 2) + 1, 1, v72);
            a2[1] = v72;
          }

          v76 = *(v72 + 2);
          v75 = *(v72 + 3);
          v74.i32[0] = 1.0;
          if (v76 >= v75 >> 1)
          {
            v112 = sub_1AF42458C(v75 > 1, v76 + 1, 1, v72);
            v74.i32[0] = 1.0;
            v72 = v112;
            a2[1] = v112;
          }

          v77 = v118;
          v78 = vmulq_f32(v77, v77);
          v78.f32[0] = v78.f32[2] + vaddv_f32(*v78.f32);
          v79 = vdupq_lane_s32(*v78.f32, 0);
          v79.i32[3] = 0;
          v80 = vrsqrteq_f32(v79);
          v81 = vmulq_f32(v80, vrsqrtsq_f32(v79, vmulq_f32(v80, v80)));
          v82 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v78.f32[0] != 0.0)), 0x1FuLL));
          v82.i32[3] = 0;
          v83 = vbslq_s8(vcltzq_s32(v82), vmulq_f32(vmulq_f32(v81, vrsqrtsq_f32(v79, vmulq_f32(v81, v81))), v118), v118);
          v77.i32[0] = v83.i32[2];
          v79.i64[0] = 0x8000000080000000;
          v79.i64[1] = 0x8000000080000000;
          v79.f32[0] = *vbslq_s8(v79, v74, v77).i32;
          v81.f32[0] = v83.f32[1] / (fabsf(v83.f32[2]) + *v74.i32);
          v84 = vmuls_lane_f32(v81.f32[0], *v83.f32, 1);
          v85 = -(v83.f32[0] * v81.f32[0]);
          v86 = v83.f32[2] + (v79.f32[0] * v84);
          v87 = v79.f32[0] * v85;
          v88 = *v74.i32 - v84;
          v89 = vmuls_lane_f32(-v79.f32[0], *v83.f32, 1);
          v90 = v83.f32[2] + (v86 + v88);
          if (v90 <= 0.0)
          {
            if (v86 < v88 || v86 < v83.f32[2])
            {
              if (v88 <= v83.f32[2])
              {
                v99 = sqrtf(((v83.f32[2] + *v74.i32) - v86) - v88);
                v83.i32[0] = vsubq_f32(v83, v83).u32[0];
                v83.f32[1] = v83.f32[1] + v89;
                v83.f32[2] = v99 * v99;
                v83.f32[3] = v87 - v85;
                v93 = vmulq_n_f32(v83, 0.5 / v99);
              }

              else
              {
                v95 = sqrtf(((v88 + *v74.i32) - v86) - v83.f32[2]);
                v96.f32[0] = v85 + v87;
                v96.f32[1] = v95 * v95;
                *&v96.u32[2] = vrev64_s32(vadd_f32(*v83.f32, __PAIR64__(LODWORD(v89), v83.u32[0])));
                v93 = vmulq_n_f32(v96, 0.5 / v95);
              }
            }

            else
            {
              v97 = sqrtf(((v86 + *v74.i32) - v88) - v83.f32[2]);
              v98.f32[0] = v97 * v97;
              v98.f32[1] = v85 + v87;
              *&v98.u32[2] = vsub_f32(__PAIR64__(LODWORD(v89), v83.u32[0]), *v83.f32);
              v93 = vmulq_n_f32(v98, 0.5 / v97);
            }
          }

          else
          {
            v91 = sqrtf(v90 + *v74.i32);
            v92.f32[0] = v89 - v83.f32[1];
            v92.i32[1] = vaddq_f32(v83, v83).u32[0];
            v92.f32[2] = v87 - v85;
            v92.f32[3] = v91 * v91;
            v93 = vmulq_n_f32(v92, 0.5 / v91);
          }

          *(v72 + 2) = v76 + 1;
          *&v72[16 * v76 + 32] = v93;
        }

        v119 = *(v64 - 2);
        v100 = a2[2];
        v101 = swift_isUniquelyReferenced_nonNull_native();
        a2[2] = v100;
        if ((v101 & 1) == 0)
        {
          v100 = sub_1AF42250C(0, *(v100 + 2) + 1, 1, v100);
          a2[2] = v100;
        }

        v103 = *(v100 + 2);
        v102 = *(v100 + 3);
        v66 = 1.0;
        if (v103 >= v102 >> 1)
        {
          v111 = sub_1AF42250C(v102 > 1, v103 + 1, 1, v100);
          v66 = 1.0;
          v100 = v111;
          a2[2] = v111;
        }

        *(v100 + 2) = v103 + 1;
        *&v100[16 * v103 + 32] = v119;
        if (*v64 != 1 && *(a3 + 12) == 1)
        {
          v104 = *(v64 - 2);
          v105 = *(v64 - 1);
          v106 = a2[3];
          v107 = swift_isUniquelyReferenced_nonNull_native();
          a2[3] = v106;
          if ((v107 & 1) == 0)
          {
            v106 = sub_1AF42053C(0, *(v106 + 2) + 1, 1, v106);
            a2[3] = v106;
          }

          v109 = *(v106 + 2);
          v108 = *(v106 + 3);
          v66 = 1.0;
          if (v109 >= v108 >> 1)
          {
            v113 = sub_1AF42053C(v108 > 1, v109 + 1, 1, v106);
            v66 = 1.0;
            v106 = v113;
            a2[3] = v113;
          }

          *(v106 + 2) = v109 + 1;
          v110 = &v106[16 * v109];
          *(v110 + 4) = v104;
          *(v110 + 5) = v105;
        }
      }

LABEL_75:
      while (v65)
      {
        v64 += 80;
        --v65;
        if (a4 > 0.0)
        {
          goto LABEL_42;
        }
      }
    }
  }
}

uint64_t sub_1AFD11A90(void *a1, uint64_t a2)
{
  v5 = a1[11];
  v6 = a1[12];
  v7 = a1[13];
  v8 = a1[2];
  v9 = sub_1AF64B110(&type metadata for ColorRampComponent, &off_1F2541AA8, v5, v6, v7, v8);
  result = sub_1AF64B110(&type metadata for ColorRampRuntime, &off_1F25419F8, v5, v6, v7, v8);
  v11 = result;
  if (v5)
  {
    for (; v7; --v7)
    {
      result = sub_1AF8B53A8(v9, v11, a2);
      if (v2)
      {
        break;
      }

      ++v11;
      v9 += 24;
    }
  }

  else
  {
    v12 = a1[6];
    result = v9 + 24 * v12;
    v13 = &v11[v12];
    v14 = a1[7] - v12 + 1;
    do
    {
      if (!--v14)
      {
        break;
      }

      v15 = result + 24;
      v16 = v13 + 1;
      sub_1AF8B53A8(result, v13, a2);
      v13 = v16;
      result = v15;
    }

    while (!v2);
  }

  return result;
}

uint64_t sub_1AFD11BA8(void *a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[2];
  v46 = sub_1AF64B110(&type metadata for CurveComponent, &off_1F2541E18, v4, v5, v6, v7);
  result = sub_1AF64B110(&type metadata for CurveRuntime, &off_1F2541EC8, v4, v5, v6, v7);
  v47 = a2;
  v48 = result;
  if (v4)
  {
    if (v6)
    {
      v9 = 0;
      v10 = &selRef_shadingModel;
      v44 = v6;
      do
      {
        v11 = *a2;
        if (*a2)
        {
          v12 = *(a2 + 8);
          v13 = *(v48 + 4 * v9);
          swift_unknownObjectRetain();
          if ([swift_unknownObjectRetain_n() v10[108]] == 2)
          {
            swift_unknownObjectRelease();
            result = swift_unknownObjectRelease_n();
          }

          else
          {
            v14 = v46 + 32 * v9;
            v15 = [v11 contents];
            v16 = v11;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v17 = *(v14 + 8);
            v18 = *(v17 + 16);
            if (v18)
            {
              v19 = *(v17 + 4 * v18 + 28);
            }

            else
            {
              v19 = 1.0;
            }

            v20 = 0;
            v21 = &v15[512 * v13 + v12];
            v22 = *v14;
            v23 = *(v14 + 16);
            v24 = *(v14 + 24);
            v25 = v19 / 127.0;
            do
            {
              __src[v20] = sub_1AFBFCB44(v22, v17, v23, v24, v25 * v20).u32[0];
              ++v20;
            }

            while (v20 != 128);
            result = memcpy(v21, __src, 0x200uLL);
            a2 = v47;
            v6 = v44;
            v10 = &selRef_shadingModel;
          }
        }

        ++v9;
      }

      while (v9 != v6);
    }
  }

  else
  {
    v27 = a1[6];
    v26 = a1[7];
    if (v27 != v26)
    {
      v28 = &selRef_shadingModel;
      v45 = a1[7];
      do
      {
        v29 = *a2;
        if (*a2)
        {
          v30 = *(a2 + 8);
          v31 = *(v48 + 4 * v27);
          swift_unknownObjectRetain();
          if ([swift_unknownObjectRetain_n() v28[108]] == 2)
          {
            swift_unknownObjectRelease();
            result = swift_unknownObjectRelease_n();
          }

          else
          {
            v32 = v46 + 32 * v27;
            v33 = [v29 contents];
            v34 = v29;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v35 = *(v32 + 8);
            v36 = *(v35 + 16);
            if (v36)
            {
              v37 = *(v35 + 4 * v36 + 28);
            }

            else
            {
              v37 = 1.0;
            }

            v38 = 0;
            v39 = &v33[512 * v31 + v30];
            v40 = *v32;
            v41 = *(v32 + 16);
            v42 = *(v32 + 24);
            v43 = v37 / 127.0;
            do
            {
              v50[v38] = sub_1AFBFCB44(v40, v35, v41, v42, v43 * v38).u32[0];
              ++v38;
            }

            while (v38 != 128);
            result = memcpy(v39, v50, 0x200uLL);
            a2 = v47;
            v26 = v45;
            v28 = &selRef_shadingModel;
          }
        }

        ++v27;
      }

      while (v27 != v26);
    }
  }

  return result;
}

uint64_t sub_1AFD11F0C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[11];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[2];
  v10 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v6, v7, v8, v9);
  v11 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v6, v7, v8, v9);
  if (v6)
  {
    for (; v8; --v8)
    {
      sub_1AFB3D078(v10, v11, a2, a3);
      if (v19)
      {
        break;
      }

      ++v11;
      ++v10;
    }
  }

  else
  {
    v12 = a1[6];
    v13 = &v10[v12];
    v14 = &v11[v12];
    v15 = a1[7] - v12 + 1;
    do
    {
      if (!--v15)
      {
        break;
      }

      v16 = v13 + 1;
      v17 = v14 + 1;
      sub_1AFB3D078(v13, v14, a2, a3);
      v14 = v17;
      v13 = v16;
    }

    while (!v19);
  }
}

uint64_t sub_1AFD120B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v8 = a1[11];
  v20 = a1[12];
  v9 = a1[13];
  v10 = a1[2];
  v11 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v8, v20, v9, v10);
  v12 = sub_1AF64B110(&type metadata for Orientation, &off_1F252C8A8, v8, v20, v9, v10);
  if (v8)
  {
    for (; v9; --v9)
    {
      (a4)(v11, v12, a2, a3);
      if (v21)
      {
        break;
      }

      v12 += 16;
      v11 += 16;
    }
  }

  else
  {
    v13 = a1[6];
    v14 = v11 + 16 * v13;
    v15 = v12 + 16 * v13;
    v16 = a1[7] - v13 + 1;
    do
    {
      if (!--v16)
      {
        break;
      }

      v17 = v14 + 16;
      v18 = v15 + 16;
      a4();
      v15 = v18;
      v14 = v17;
    }

    while (!v21);
  }
}

uint64_t sub_1AFD1220C(void *a1, void *a2)
{
  v53 = a2;
  v4 = a1[11];
  v3 = a1[12];
  v5 = a1[13];
  v7 = a1[1];
  v6 = a1[2];
  sub_1AF64B110(&type metadata for Name, &off_1F2535068, v4, v3, v5, v6);
  result = sub_1AF64B110(&type metadata for Bindings, &off_1F25117D8, v4, v3, v5, v6);
  v47 = v7;
  if (v4)
  {
    if (!v5)
    {
      return result;
    }

    v9 = (result + 16);
    while (1)
    {
      v12 = *v4++;
      v11 = v12;

      if (*(v7 + 184))
      {
        goto LABEL_40;
      }

      v48 = *(*(v13 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v7 + 168) + 4 * v11) + 8);
      v50 = *(*(v7 + 168) + 4 * v11);

      v14 = *v9;
      v15 = *(*v9 + 16);
      if (v15)
      {
        sub_1AFD55360(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v16 = swift_allocObject();
        v17 = j__malloc_size_0(v16);
        v18 = v17 - 32;
        if (v17 < 32)
        {
          v18 = v17 - 25;
        }

        v16[2] = v15;
        v16[3] = (2 * (v18 >> 3)) | 1;
        sub_1AFC869B0(&v52, v16 + 4, v15, v14);

        sub_1AF0FBB14();
      }

      else
      {
        v16 = MEMORY[0x1E69E7CC0];
      }

      v19 = v53;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *v19;
      v21 = v52;
      *v19 = 0x8000000000000000;
      v22 = v50 | (v48 << 32);
      v24 = sub_1AF449D3C(v22);
      v25 = v23;
      result = v21[2] + ((v23 & 1) == 0);
      if (v21[3] >= result)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v27 = v52;
          if (v23)
          {
            goto LABEL_18;
          }
        }

        else
        {
          result = sub_1AF85060C();
          v27 = v52;
          if (v25)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        sub_1AF84287C(result, isUniquelyReferenced_nonNull_native);
        result = sub_1AF449D3C(v22);
        if ((v25 & 1) != (v26 & 1))
        {
          goto LABEL_41;
        }

        v24 = result;
        v27 = v52;
        if (v25)
        {
LABEL_18:
          *(v27[7] + 8 * v24) = v16;

          goto LABEL_5;
        }
      }

      v27[(v24 >> 6) + 8] |= 1 << v24;
      v10 = (v27[6] + 8 * v24);
      *v10 = v50;
      v10[1] = v48;
      *(v27[7] + 8 * v24) = v16;
      ++v27[2];
LABEL_5:
      *v53 = v27;
      v9 += 3;
      --v5;
      v7 = v47;
      if (!v5)
      {
        return result;
      }
    }
  }

  v28 = a1[6];
  v49 = a1[7];
  if (v28 == v49)
  {
    return result;
  }

  for (i = result + 24 * v28 + 16; ; i += 24)
  {

    if (*(v7 + 184))
    {
      break;
    }

    v32 = *(*(v7 + 168) + 4 * v28);
    v51 = *(*(v31 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v32 + 8);

    v33 = *i;
    v34 = *(*i + 16);
    if (v34)
    {
      sub_1AFD55360(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v35 = swift_allocObject();
      v36 = j__malloc_size_0(v35);
      v37 = v36 - 32;
      if (v36 < 32)
      {
        v37 = v36 - 25;
      }

      v35[2] = v34;
      v35[3] = (2 * (v37 >> 3)) | 1;
      sub_1AFC869B0(&v52, v35 + 4, v34, v33);

      sub_1AF0FBB14();
    }

    else
    {
      v35 = MEMORY[0x1E69E7CC0];
    }

    v38 = v53;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v52 = *v38;
    v40 = v52;
    *v38 = 0x8000000000000000;
    result = sub_1AF449D3C(v32 | (v51 << 32));
    v42 = v41;
    v43 = v40[2] + ((v41 & 1) == 0);
    if (v40[3] < v43)
    {
      sub_1AF84287C(v43, v39);
      result = sub_1AF449D3C(v32 | (v51 << 32));
      v7 = v47;
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_41;
      }

LABEL_36:
      v45 = v52;
      if (v42)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    v7 = v47;
    if (v39)
    {
      goto LABEL_36;
    }

    v46 = result;
    sub_1AF85060C();
    result = v46;
    v45 = v52;
    if (v42)
    {
LABEL_37:
      *(v45[7] + 8 * result) = v35;

      goto LABEL_25;
    }

LABEL_24:
    v45[(result >> 6) + 8] |= 1 << result;
    v30 = (v45[6] + 8 * result);
    *v30 = v32;
    v30[1] = v51;
    *(v45[7] + 8 * result) = v35;
    ++v45[2];
LABEL_25:
    ++v28;
    *v53 = v45;
    if (v49 == v28)
    {
      return result;
    }
  }

LABEL_40:
  sub_1AFDFE518();
  __break(1u);
LABEL_41:
  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AFD1277C(void *a1, uint64_t *a2)
{
  v4 = a1[1];

  v6 = sub_1AF705B18(v5, a1);
  v7 = a1[11];
  v8 = a1[12];
  v9 = a1[13];
  v10 = a1[2];
  v11 = sub_1AF64B110(&type metadata for AudioAnalyzer, &off_1F256F038, v7, v8, v9, v10);
  sub_1AF649C6C(*(v4 + 40), &type metadata for AudioSpectrum, &v51);
  if (v51 == 1)
  {
    a2[9] = &type metadata for AudioSpectrum;
    a2[10] = &off_1F256F878;
    v12 = sub_1AF64B110(&type metadata for AudioSpectrum, &off_1F256F878, v7, v8, v9, v10);
    v13 = v12;
    if (v7)
    {
      if (v9)
      {
        v14 = *(*(type metadata accessor for AudioPlayerComponent(0) - 8) + 72);
        do
        {
          sub_1AFD003D8(v6, v11, v13);
          if (v2)
          {
            break;
          }

          v11 += 4;
          v6 = (v6 + v14);
          v13 += 64;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v34 = a1[6];
      v33 = a1[7];
      v35 = v12 + (v34 << 6);
      v36 = &v11[4 * v34];
      do
      {
        if (v33 == v34)
        {
          break;
        }

        v37 = type metadata accessor for AudioPlayerComponent(0);
        sub_1AFD003D8((v6 + *(*(v37 - 8) + 72) * v34), v36, v35);
        v35 += 64;
        v36 += 4;
        ++v34;
      }

      while (!v2);
    }
  }

  v44 = v8;
  v46 = v4;
  v47 = v7;
  v15 = v9;
  if (!v7)
  {
    v15 = a1[7] - a1[6];
  }

  v48 = v15;
  v16 = sub_1AFDFD488();
  *(v16 + 16) = 2048;
  bzero((v16 + 32), 0x2000uLL);
  v17 = sub_1AFDFD488();
  *(v17 + 16) = 2048;
  bzero((v17 + 32), 0x2000uLL);
  v54 = 1;
  *&v51 = MEMORY[0x1E69E7CC0];
  *(&v51 + 1) = MEMORY[0x1E69E7CC0];
  *&v52 = MEMORY[0x1E69E7CC0];
  DWORD2(v52) = 0;
  *v53 = v16;
  *&v53[8] = v17;
  v18 = a2;
  *&v53[16] = 0;
  v53[24] = 1;
  v45 = v48 << 6;
  v19 = ecs_stack_allocator_allocate(a2[4], v48 << 6, 8);
  v20 = v19;
  if (v48)
  {
    v21 = v51;
    v22 = v52;
    v23 = *v53;
    *(v19 + 41) = *&v53[9];
    v19[1] = v22;
    v19[2] = v23;
    *v19 = v21;
    v24 = v48 - 1;
    if (v48 != 1)
    {
      v25 = v19 + 4;
      do
      {
        sub_1AF58715C(&v51, v50);
        v26 = v51;
        v27 = v52;
        v28 = *v53;
        *(v25 + 41) = *&v53[9];
        v25[1] = v27;
        v25[2] = v28;
        *v25 = v26;
        v25 += 4;
        --v24;
      }

      while (v24);
    }

    if (v47)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_1AF5871B8(&v51);
    if (v47)
    {
LABEL_15:
      v29 = 0;
      v30 = v20;
      while (v9 != v29)
      {
        v31 = type metadata accessor for AudioPlayerComponent(0);
        sub_1AFD003D8((v6 + *(*(v31 - 8) + 72) * v29), v11, v30);
        v30 += 64;
        v11 += 4;
        ++v29;
        if (v2)
        {
          v32 = a2[4];
          goto LABEL_28;
        }
      }

      sub_1AF5B8AE0(v47, v44, v9, v20, v48, a2);
LABEL_31:
      ecs_stack_allocator_deallocate(v18[4], v20, v45);
    }
  }

  v39 = a1[6];
  v38 = a1[7];
  v40 = &v11[4 * v39];
  v41 = v20;
  do
  {
    if (v38 == v39)
    {
      v18 = a2;
      sub_1AF5B8B24(*(v46 + 232), *(v46 + 240), v20, v48, a2);
      goto LABEL_31;
    }

    v42 = type metadata accessor for AudioPlayerComponent(0);
    sub_1AFD003D8((v6 + *(*(v42 - 8) + 72) * v39), v40, v41);
    v41 += 64;
    v40 += 4;
    ++v39;
  }

  while (!v2);
  v32 = a2[4];
LABEL_28:
  ecs_stack_allocator_deallocate(v32, v20, v45);
}

uint64_t sub_1AFD12B88(void *a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for AudioPlayerComponent(0);
  v56 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[11];
  v8 = a1[12];
  v9 = a1[13];
  v10 = a1[1];
  v11 = a1[2];

  v12 = sub_1AF64B110(&type metadata for AudioFileAsset, &off_1F256EDF8, v7, v8, v9, v11);
  v55 = v8;
  v13 = sub_1AF64B110(&type metadata for AudioController, &off_1F256EED0, v7, v8, v9, v11);
  v14 = v57;
  sub_1AF649C6C(*(v10 + 40), v3, &v59);
  if (v59 == 1)
  {
    v15 = v58;
    *(v58 + 72) = v3;
    *(v15 + 80) = &off_1F256EF88;
    v16 = sub_1AF705B18(v10, a1);
    if (v7)
    {
      if (v9)
      {
        v17 = *(v56 + 72);
        do
        {
          sub_1AFCFFCCC(v12, v13, v16);
          if (v14)
          {
            break;
          }

          v16 = (v16 + v17);
          v13 += 3;
          v12 += 6;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v34 = a1[6];
      v35 = a1[7];
      v36 = &v12[6 * v34];
      v37 = v13 + 3 * v34;
      v38 = v56;
      do
      {
        if (v35 == v34)
        {
          break;
        }

        v39 = v34 + 1;
        sub_1AFCFFCCC(v36, v37, (v16 + *(v38 + 72) * v34));
        v36 += 6;
        v37 += 3;
        v34 = v39;
      }

      while (!v14);
    }
  }

  else
  {
    v18 = v58;
    v53 = v10;
    v54 = v14;
    v19 = v9;
    v57 = v7;
    if (!v7)
    {
      v19 = a1[7] - a1[6];
    }

    *v6 = 0;
    v20 = v19;
    v21 = *(v3 + 20);
    v22 = sub_1AFDFC128();
    (*(*(v22 - 8) + 56))(&v6[v21], 1, 1, v22);
    v23 = *(v18 + 32);
    v24 = *(v56 + 72);
    v25 = *(v56 + 80) + 1;
    v52 = v24 * v20;
    v26 = ecs_stack_allocator_allocate(v23, v24 * v20, v25);
    v27 = v26;
    v56 = v20;
    if (v20)
    {
      v28 = v26;
      v29 = v56;
      do
      {
        sub_1AFD531F8(v6, v28, type metadata accessor for AudioPlayerComponent);
        v28 += v24;
        --v29;
      }

      while (v29);
    }

    sub_1AFD53198(v6, type metadata accessor for AudioPlayerComponent);
    if (v57)
    {
      v30 = v9 + 1;
      v31 = v27;
      v32 = v54;
      while (--v30)
      {
        v33 = (v31 + v24);
        sub_1AFCFFCCC(v12, v13, v31);
        v31 = v33;
        v13 += 3;
        v12 += 6;
        if (v32)
        {
          goto LABEL_25;
        }
      }

      v49 = v58;
      sub_1AF5B8B4C(v57, v55, v9, v27, v56, v58);
    }

    else
    {
      v40 = a1[6];
      v41 = &v12[6 * v40];
      v42 = v13 + 3 * v40;
      v43 = a1[7] - v40 + 1;
      v44 = v27;
      v45 = v54;
      while (--v43)
      {
        v46 = (v44 + v24);
        v47 = v41 + 6;
        v48 = v42 + 3;
        sub_1AFCFFCCC(v41, v42, v44);
        v42 = v48;
        v41 = v47;
        v44 = v46;
        if (v45)
        {
LABEL_25:
          ecs_stack_allocator_deallocate(*(v58 + 32), v27, v52);
        }
      }

      v49 = v58;
      sub_1AF5B8B9C(*(v53 + 232), *(v53 + 240), v27, v56, v58);
    }

    ecs_stack_allocator_deallocate(*(v49 + 32), v27, v52);
  }
}

uint64_t sub_1AFD12F8C(void *a1, uint64_t a2, uint64_t a3)
{
  v245 = a3;
  v249 = a2;
  v264 = *MEMORY[0x1E69E9840];
  sub_1AF0D4E74();
  v241 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v240 = &v221 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_1AFDFC298();
  v254 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239, v7);
  v238 = &v221 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[11];
  v10 = a1[12];
  v11 = a1[13];
  v13 = a1[1];
  v12 = a1[2];

  v250 = sub_1AF64B110(&type metadata for MovieFileAsset, &off_1F256EC68, v9, v10, v11, v12);
  v14 = sub_1AF705BDC(v13, a1);
  sub_1AF649C6C(*(v13 + 40), &type metadata for TextureGPURuntime, &v263);
  v251 = v13;
  if (LOBYTE(v263.value) == 1)
  {
    v15 = v249;
    *(v249 + 72) = &type metadata for TextureGPURuntime;
    *(v15 + 80) = &off_1F2544388;
    v16 = sub_1AF64B110(&type metadata for TextureGPURuntime, &off_1F2544388, v9, v10, v11, v12);
    if (v9)
    {
      if (v11)
      {
        v17 = v9;
        v246 = (v245 + OBJC_IVAR____TtC3VFX13EntityManager_clock);
        v18 = type metadata accessor for MovieRuntime(0);
        v19 = *(v18 - 1);
        v236 = 0x80000001AFF4F0F0;
        v20 = *(v19 + 72);
        *&v233 = v254 + 4;
        v21 = v250 + 50;
        v244 = *MEMORY[0x1E6960CC0];
        LODWORD(v243) = *(MEMORY[0x1E6960CC0] + 8);
        LODWORD(v242) = *(MEMORY[0x1E6960CC0] + 12);
        v237 = *(MEMORY[0x1E6960CC0] + 16);
        v234 = *MEMORY[0x1E695E480];
        v232 = xmmword_1AFE431C0;
        v247 = v20;
        v248 = v18;
        do
        {
          v23 = *v17++;
          v22 = v23;
          v24 = *(v14 + v18[6]);
          if (!v24 || (*(v14 + v18[5]) & 1) != 0)
          {
            goto LABEL_6;
          }

          v249 = v22;
          v25 = *(v21 - 1);
          v26 = v24;
          if (v25 != [v26 isMuted])
          {
            [v26 setMuted_];
          }

          v27 = *(v14 + v18[7]);
          if (v27)
          {
            v252 = v11;
            v253 = v17;
            v28 = v27;
            [v28 duration];
            sub_1AFDFDC08();
            if (*(v21 - 2) == 1)
            {
              v30 = v29;
              if (v29 > 0.0)
              {
                v31 = *(v246 + 6);
                if (*v21 == 1)
                {
                  v31 = fmod(v31, v30);
                }

                else if (v30 < v31)
                {
                  v31 = v30;
                }

                CMTimeMake(&v263, (v31 * 1000.0), 1000);
                v260 = v243;
                v261 = v242;
                v262 = v237;
                v255 = v244;
                v256 = v243;
                v257 = v242;
                v258 = v237;
                v259 = v244;
                [v26 seekToTime:&v263 toleranceBefore:&v259 toleranceAfter:&v255];
              }
            }

            v254 = v26;
            [v28 currentTime];
            value = v263.value;
            timescale = v263.timescale;
            flags = v263.flags;
            epoch = v263.epoch;
            v250 = v28;
            v36 = sub_1AFCFA364();
            v263.value = value;
            v263.timescale = timescale;
            v263.flags = flags;
            v263.epoch = epoch;
            v37 = [v36 hasNewPixelBufferForItemTime_];

            if (v37 && (v38 = sub_1AFCFA364(), v263.value = value, v263.timescale = timescale, v263.flags = flags, v263.epoch = epoch, v39 = [v38 copyPixelBufferForItemTime:&v263 itemTimeForDisplay:0], v38, v39))
            {
              v18 = v248;
              v40 = *(v14 + v248[11]);
              v17 = v253;
              if (!v40)
              {

                goto LABEL_34;
              }

              v41 = v40;
              Width = CVPixelBufferGetWidth(v39);
              Height = CVPixelBufferGetHeight(v39);
              v263.value = 0;
              v235 = v41;
              CVMetalTextureCacheCreateTextureFromImage(v234, v41, v39, 0, MTLPixelFormatBGRA8Unorm_sRGB, Width, Height, 0, &v263);
              v44 = v251;
              if (v263.value)
              {
                v45 = v263.value;
                v46 = CVMetalTextureGetTexture(v45);
                if (v46)
                {
                  v47 = v46;
                  v231 = v45;
                  swift_unknownObjectRelease();
                  *v16 = v47;
                  v48 = [v47 iosurface];
                  if (v48)
                  {
                    v49 = v48;
                    v50 = *(v14 + v18[12]);
                    v51 = *(v50 + 16);
                    *(v50 + 16) = v48;
                    v230 = v51;
                    if (v51)
                    {
                      v52 = v48;
                      IOSurfaceDecrementUseCount(v51);
                      v53 = *(v50 + 16);
                      v44 = v251;
                      if (v53)
                      {
                        goto LABEL_27;
                      }
                    }

                    else
                    {
                      v66 = v48;
                      v53 = v49;
                      v44 = v251;
LABEL_27:
                      v54 = v53;
                      IOSurfaceIncrementUseCount(v54);
                    }
                  }

                  if (*(v44 + 184))
                  {
                    goto LABEL_177;
                  }

                  v56 = *(*(v44 + 168) + 4 * v249);
                  v57 = *(*(v55 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v56 + 8);

                  sub_1AF678B44(v56 | (v57 << 32));

LABEL_34:
                  v11 = v252;
                  v20 = v247;
                  goto LABEL_6;
                }
              }

              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v59 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              v249 = v39;
              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v60 = swift_allocObject();
              *(v60 + 16) = v232;
              *(v60 + 56) = MEMORY[0x1E69E6158];
              *(v60 + 64) = sub_1AF0D544C();
              *(v60 + 32) = 0xD00000000000001ELL;
              *(v60 + 40) = v236;
              sub_1AFDFC4C8();

              LODWORD(v231) = v59;
              v61 = v238;
              sub_1AFDFC288();
              v62 = v241[12];
              v63 = v241[16];
              v64 = v240;
              v65 = &v240[v241[20]];
              (*v233)(v240, v61, v239);
              *(v64 + v62) = v231;
              *(v64 + v63) = 0;
              *v65 = 0xD00000000000001ELL;
              *(v65 + 1) = v236;
              sub_1AFDFC608();

              sub_1AFD53198(v64, sub_1AF0D4E74);

              v58 = v263.value;
            }

            else
            {

              v58 = v254;
            }

            v11 = v252;
            v17 = v253;
            v20 = v247;
            v18 = v248;
          }

          else
          {
          }

LABEL_6:
          v16 += 2;
          v14 += v20;
          v21 += 56;
          v11 = (v11 - 1);
        }

        while (v11);
      }
    }

    v125 = a1[6];
    v124 = a1[7];
    if (v125 == v124)
    {
    }

    v246 = (v245 + OBJC_IVAR____TtC3VFX13EntityManager_clock);
    v126 = type metadata accessor for MovieRuntime(0);
    v127 = *(v126 - 1);
    v237 = 0x80000001AFF4F0F0;
    v128 = *(v127 + 72);
    v234 = v254 + 4;
    v244 = *MEMORY[0x1E6960CC0];
    v129 = &v16[2 * v125];
    v130 = v14 + v125 * v128;
    LODWORD(v243) = *(MEMORY[0x1E6960CC0] + 8);
    LODWORD(v242) = *(MEMORY[0x1E6960CC0] + 12);
    v131 = &v250[56 * v125 + 50];
    v250 = *(MEMORY[0x1E6960CC0] + 16);
    v235 = *MEMORY[0x1E695E480];
    v233 = xmmword_1AFE431C0;
    v247 = v124;
    v248 = v126;
    v249 = v128;
    while (1)
    {
      v132 = *(v130 + v126[6]);
      if (!v132 || (*(v130 + v126[5]) & 1) != 0)
      {
        goto LABEL_95;
      }

      v133 = *(v131 - 1);
      v134 = v132;
      if (v133 != [v134 isMuted])
      {
        [v134 setMuted_];
      }

      v135 = *(v130 + v126[7]);
      if (v135)
      {
        v136 = v135;
        [v136 duration];
        sub_1AFDFDC08();
        if (*(v131 - 2) == 1)
        {
          v138 = v137;
          if (v137 > 0.0)
          {
            v139 = *(v246 + 6);
            if (*v131 == 1)
            {
              v139 = fmod(v139, v138);
            }

            else if (v138 < v139)
            {
              v139 = v138;
            }

            CMTimeMake(&v263, (v139 * 1000.0), 1000);
            v260 = v243;
            v261 = v242;
            v262 = v250;
            v255 = v244;
            v256 = v243;
            v257 = v242;
            v258 = v250;
            v259 = v244;
            [v134 seekToTime:&v263 toleranceBefore:&v259 toleranceAfter:&v255];
          }
        }

        v254 = v134;
        [v136 currentTime];
        v140 = v263.value;
        v142 = v263.timescale;
        v141 = v263.flags;
        v143 = v263.epoch;
        v253 = v136;
        v144 = sub_1AFCFA364();
        v263.value = v140;
        v263.timescale = v142;
        v263.flags = v141;
        v252 = v143;
        v263.epoch = v143;
        LODWORD(v143) = [v144 hasNewPixelBufferForItemTime_];

        if (!v143 || (v145 = sub_1AFCFA364(), v263.value = v140, v263.timescale = v142, v263.flags = v141, v263.epoch = v252, v146 = [v145 copyPixelBufferForItemTime:&v263 itemTimeForDisplay:0], v145, !v146))
        {

          v161 = v254;
          goto LABEL_117;
        }

        v126 = v248;
        v128 = v249;
        v147 = *(v130 + v248[11]);
        if (!v147)
        {

          v124 = v247;
          goto LABEL_95;
        }

        v148 = v147;
        v149 = CVPixelBufferGetWidth(v146);
        v150 = CVPixelBufferGetHeight(v146);
        v263.value = 0;
        v236 = v148;
        v252 = v146;
        CVMetalTextureCacheCreateTextureFromImage(v235, v148, v146, 0, MTLPixelFormatBGRA8Unorm_sRGB, v149, v150, 0, &v263);
        v151 = v251;
        if (!v263.value)
        {
          goto LABEL_120;
        }

        v152 = v263.value;
        v153 = CVMetalTextureGetTexture(v152);
        if (!v153)
        {

LABEL_120:
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

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
          *(v163 + 16) = v233;
          *(v163 + 56) = MEMORY[0x1E69E6158];
          *(v163 + 64) = sub_1AF0D544C();
          *(v163 + 32) = 0xD00000000000001ELL;
          *(v163 + 40) = v237;
          sub_1AFDFC4C8();

          LODWORD(v232) = v162;
          v164 = v238;
          sub_1AFDFC288();
          v231 = v241[12];
          v165 = v241[16];
          v166 = v240;
          v167 = &v240[v241[20]];
          (*v234)(v240, v164, v239);
          *(v231 + v166) = v232;
          *(v166 + v165) = 0;
          *v167 = 0xD00000000000001ELL;
          *(v167 + 1) = v237;
          sub_1AFDFC608();

          sub_1AFD53198(v166, sub_1AF0D4E74);

          v161 = v263.value;
LABEL_117:

          v124 = v247;
          v126 = v248;
          v128 = v249;
          goto LABEL_95;
        }

        v154 = v153;
        swift_unknownObjectRelease();
        *v129 = v154;
        v155 = [v154 iosurface];
        if (v155)
        {
          v156 = v155;
          v231 = v152;
          v157 = *(v130 + v126[12]);
          v158 = *(v157 + 16);
          *(v157 + 16) = v155;
          *&v232 = v158;
          v159 = v155;
          if (v158)
          {
            IOSurfaceDecrementUseCount(v158);
            v160 = *(v157 + 16);
          }

          else
          {
            v160 = v156;
          }

          v151 = v251;
          v152 = v231;
          if (v160)
          {
            v168 = v160;
            IOSurfaceIncrementUseCount(v168);

            v128 = v249;
          }
        }

        if (*(v151 + 184))
        {
          goto LABEL_177;
        }

        v170 = *(*(v151 + 168) + 4 * v125);
        v171 = *(*(v169 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v170 + 8);

        sub_1AF678B44(v170 | (v171 << 32));

        v124 = v247;
      }

      else
      {
      }

LABEL_95:
      ++v125;
      v129 += 2;
      v130 += v128;
      v131 += 56;
      if (v124 == v125)
      {
      }
    }
  }

  v247 = v10;
  v67 = v11;
  if (!v9)
  {
    v67 = (a1[7] - a1[6]);
  }

  v68 = ecs_stack_allocator_allocate(*(v249 + 32), 16 * v67, 8);
  v69 = v68;
  if (v67)
  {
    bzero(v68, 16 * v67);
  }

  v237 = v69;
  v235 = v67;
  v236 = (16 * v67);
  if (v9)
  {
    v252 = v11;
    v253 = v9;
    v70 = v247;
    if (v11)
    {
      v234 = (v245 + OBJC_IVAR____TtC3VFX13EntityManager_clock);
      v71 = type metadata accessor for MovieRuntime(0);
      v72 = *(v71 - 1);
      *&v229 = 0x80000001AFF4F0F0;
      v73 = *(v72 + 72);
      v226 = (v254 + 4);
      v74 = v250 + 50;
      *&v233 = *MEMORY[0x1E6960CC0];
      LODWORD(v232) = *(MEMORY[0x1E6960CC0] + 8);
      LODWORD(v231) = *(MEMORY[0x1E6960CC0] + 12);
      v230 = *(MEMORY[0x1E6960CC0] + 16);
      v227 = *MEMORY[0x1E695E480];
      v225 = xmmword_1AFE431C0;
      v76 = v252;
      v75 = v253;
      v77 = v237;
      v243 = v71;
      v242 = v73;
      do
      {
        v80 = *v75++;
        v79 = v80;
        v81 = *(v14 + v71[6]);
        if (!v81 || (*(v14 + v71[5]) & 1) != 0)
        {
          goto LABEL_53;
        }

        v246 = v79;
        v82 = *(v74 - 1);
        v254 = v81;
        if (v82 != [v254 isMuted])
        {
          [v254 setMuted_];
        }

        v83 = *(v14 + v71[7]);
        if (v83)
        {
          v250 = v75;
          v84 = v83;
          [v84 duration];
          sub_1AFDFDC08();
          if (*(v74 - 2) == 1)
          {
            v86 = v85;
            if (v85 > 0.0)
            {
              v87 = v234[6];
              if (*v74 == 1)
              {
                v87 = fmod(v87, v86);
              }

              else if (v86 < v87)
              {
                v87 = v86;
              }

              CMTimeMake(&v263, (v87 * 1000.0), 1000);
              v260 = v232;
              v261 = v231;
              v262 = v230;
              v255 = v233;
              v256 = v232;
              v257 = v231;
              v258 = v230;
              v259 = v233;
              [v254 seekToTime:&v263 toleranceBefore:&v259 toleranceAfter:&v255];
            }
          }

          [v84 currentTime];
          v88 = v263.value;
          v89 = v263.timescale;
          v90 = v263.flags;
          v91 = v263.epoch;
          v248 = v84;
          v92 = sub_1AFCFA364();
          v263.value = v88;
          v263.timescale = v89;
          v263.flags = v90;
          v244 = v91;
          v263.epoch = v91;
          LODWORD(v91) = [v92 hasNewPixelBufferForItemTime_];

          if (!v91 || (v93 = sub_1AFCFA364(), v263.value = v88, v263.timescale = v89, v263.flags = v90, v263.epoch = v244, v94 = [v93 copyPixelBufferForItemTime:&v263 itemTimeForDisplay:0], v93, (v244 = v94) == 0))
          {

            v113 = v254;
            goto LABEL_79;
          }

          v71 = v243;
          v95 = *(v14 + v243[11]);
          v70 = v247;
          v73 = v242;
          v75 = v250;
          if (v95)
          {
            v96 = v95;
            v97 = v244;
            v98 = CVPixelBufferGetWidth(v244);
            v99 = CVPixelBufferGetHeight(v97);
            v263.value = 0;
            v228 = v96;
            CVMetalTextureCacheCreateTextureFromImage(v227, v96, v97, 0, MTLPixelFormatBGRA8Unorm_sRGB, v98, v99, 0, &v263);
            if (v263.value)
            {
              v100 = v263.value;
              v101 = CVMetalTextureGetTexture(v100);
              if (v101)
              {
                v102 = v101;
                v224 = v100;
                swift_unknownObjectRelease();
                *v77 = v102;
                v103 = [v102 iosurface];
                v70 = v247;
                if (v103)
                {
                  v104 = *(v14 + v71[12]);
                  v105 = *(v104 + 16);
                  *(v104 + 16) = v103;
                  v223 = v105;
                  v222 = v103;
                  if (v105)
                  {
                    v106 = v103;
                    IOSurfaceDecrementUseCount(v105);
                    v107 = *(v104 + 16);
                    if (v107)
                    {
                      goto LABEL_74;
                    }
                  }

                  else
                  {
                    v120 = v103;
                    v121 = v103;
                    v107 = v120;
LABEL_74:
                    v108 = v107;
                    IOSurfaceIncrementUseCount(v108);
                  }
                }

                v109 = v251;

                if (*(v109 + 184))
                {
                  goto LABEL_177;
                }

                v111 = *(*(v109 + 168) + 4 * v246);
                v112 = *(*(v110 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v111 + 8);

                sub_1AF678B44(v111 | (v112 << 32));

LABEL_80:
                v75 = v250;
                goto LABEL_53;
              }
            }

            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v114 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v115 = swift_allocObject();
            *(v115 + 16) = v225;
            *(v115 + 56) = MEMORY[0x1E69E6158];
            *(v115 + 64) = sub_1AF0D544C();
            *(v115 + 32) = 0xD00000000000001ELL;
            *(v115 + 40) = v229;
            sub_1AFDFC4C8();

            LODWORD(v246) = v114;
            v116 = v238;
            sub_1AFDFC288();
            v224 = v241[12];
            v117 = v241[16];
            v118 = v240;
            v119 = &v240[v241[20]];
            (*v226)(v240, v116, v239);
            *(v224 + v118) = v246;
            *(v118 + v117) = 0;
            *v119 = 0xD00000000000001ELL;
            *(v119 + 1) = v229;
            sub_1AFDFC608();

            sub_1AFD53198(v118, sub_1AF0D4E74);

            v113 = v263.value;
LABEL_79:

            v70 = v247;
            v71 = v243;
            v73 = v242;
            goto LABEL_80;
          }

          v78 = v244;
        }

        else
        {
          v78 = v254;
        }

LABEL_53:
        v77 = (v77 + 16);
        v14 += v73;
        v74 += 56;
        --v76;
      }

      while (v76);
    }

    v122 = v237;
    v123 = v249;
    sub_1AF5B80C0(v253, v70, v252, v237, v235, v249);
LABEL_135:
    ecs_stack_allocator_deallocate(*(v123 + 32), v122, v236);
  }

  v173 = a1[6];
  v172 = a1[7];
  if (v173 == v172)
  {
LABEL_134:
    v122 = v237;
    v123 = v249;
    sub_1AF5B85AC(*(v251 + 232), *(v251 + 240), v237, v235, v249);
    goto LABEL_135;
  }

  v244 = (v245 + OBJC_IVAR____TtC3VFX13EntityManager_clock);
  v175 = type metadata accessor for MovieRuntime(0);
  v176 = *(v175 - 1);
  *&v233 = 0x80000001AFF4F0F0;
  v177 = *(v176 + 72);
  v230 = (v254 + 4);
  v178 = v14 + v173 * v177;
  v243 = *MEMORY[0x1E6960CC0];
  v179 = &v250[56 * v173 + 50];
  v180 = *(MEMORY[0x1E6960CC0] + 12);
  LODWORD(v250) = *(MEMORY[0x1E6960CC0] + 8);
  LODWORD(v242) = v180;
  v234 = *(MEMORY[0x1E6960CC0] + 16);
  v231 = *MEMORY[0x1E695E480];
  v229 = xmmword_1AFE431C0;
  v181 = v237;
  v246 = v175;
  v247 = v172;
  v248 = v177;
  while (1)
  {
    v182 = *(v178 + v175[6]);
    if (!v182 || (*(v178 + v175[5]) & 1) != 0)
    {
      goto LABEL_140;
    }

    v183 = *(v179 - 1);
    v184 = v182;
    if (v183 != [v184 isMuted])
    {
      [v184 setMuted_];
    }

    v185 = *(v178 + v175[7]);
    if (!v185)
    {
      goto LABEL_139;
    }

    v186 = v185;
    [v186 duration];
    sub_1AFDFDC08();
    if (*(v179 - 2) == 1)
    {
      v188 = v187;
      if (v187 > 0.0)
      {
        v189 = *(v244 + 6);
        if (*v179 == 1)
        {
          v189 = fmod(v189, v188);
        }

        else if (v188 < v189)
        {
          v189 = v188;
        }

        CMTimeMake(&v263, (v189 * 1000.0), 1000);
        v260 = v250;
        v261 = v242;
        v262 = v234;
        v255 = v243;
        v256 = v250;
        v257 = v242;
        v258 = v234;
        v259 = v243;
        [v184 seekToTime:&v263 toleranceBefore:&v259 toleranceAfter:&v255];
      }
    }

    v254 = v184;
    [v186 currentTime];
    v190 = v263.value;
    v192 = v263.timescale;
    v191 = v263.flags;
    v193 = v263.epoch;
    v253 = v186;
    v194 = sub_1AFCFA364();
    v263.value = v190;
    v263.timescale = v192;
    v263.flags = v191;
    v252 = v193;
    v263.epoch = v193;
    LODWORD(v193) = [v194 hasNewPixelBufferForItemTime_];

    if (!v193 || (v195 = sub_1AFCFA364(), v263.value = v190, v263.timescale = v192, v263.flags = v191, v263.epoch = v252, v184 = [v195 copyPixelBufferForItemTime:&v263 itemTimeForDisplay:0], v195, !v184))
    {

      v207 = v254;
LABEL_162:

      v175 = v246;
      v172 = v247;
      v177 = v248;
      goto LABEL_140;
    }

    v175 = v246;
    v172 = v247;
    v196 = *(v178 + v246[11]);
    v177 = v248;
    if (v196)
    {
      break;
    }

LABEL_139:
LABEL_140:
    ++v173;
    v178 += v177;
    v181 = (v181 + 16);
    v179 += 56;
    if (v172 == v173)
    {
      goto LABEL_134;
    }
  }

  v197 = v196;
  v252 = CVPixelBufferGetWidth(v184);
  v198 = CVPixelBufferGetHeight(v184);
  v263.value = 0;
  *&v232 = v197;
  CVMetalTextureCacheCreateTextureFromImage(v231, v197, v184, 0, MTLPixelFormatBGRA8Unorm_sRGB, v252, v198, 0, &v263);
  v252 = v184;
  if (!v263.value)
  {
LABEL_164:
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v208 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    if (qword_1ED730E98 != -1)
    {
      swift_once();
    }

    sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v209 = swift_allocObject();
    *(v209 + 16) = v229;
    *(v209 + 56) = MEMORY[0x1E69E6158];
    *(v209 + 64) = sub_1AF0D544C();
    *(v209 + 32) = 0xD00000000000001ELL;
    *(v209 + 40) = v233;
    sub_1AFDFC4C8();

    LODWORD(v228) = v208;
    v210 = v238;
    sub_1AFDFC288();
    v227 = v241[12];
    v211 = v241[16];
    v212 = v240;
    v213 = &v240[v241[20]];
    (*v230)(v240, v210, v239);
    *(v227 + v212) = v228;
    *(v212 + v211) = 0;
    *v213 = 0xD00000000000001ELL;
    *(v213 + 1) = v233;
    sub_1AFDFC608();

    sub_1AFD53198(v212, sub_1AF0D4E74);

    v207 = v263.value;
    goto LABEL_162;
  }

  v199 = v263.value;
  v200 = CVMetalTextureGetTexture(v199);
  if (!v200)
  {

    goto LABEL_164;
  }

  v201 = v200;
  swift_unknownObjectRelease();
  *v181 = v201;
  v202 = [v201 iosurface];
  v228 = v199;
  if (v202)
  {
    v203 = *(v178 + v175[12]);
    v204 = *(v203 + 16);
    *(v203 + 16) = v202;
    v227 = v204;
    v226 = v202;
    if (v204)
    {
      v205 = v202;
      IOSurfaceDecrementUseCount(v204);
      v206 = *(v203 + 16);
    }

    else
    {
      v214 = v202;
      v215 = v202;
      v206 = v214;
    }

    if (v206)
    {
      v216 = v206;
      IOSurfaceIncrementUseCount(v216);

      v177 = v248;
    }
  }

  v217 = v251;

  if ((*(v217 + 184) & 1) == 0)
  {
    v219 = *(*(v217 + 168) + 4 * v173);
    v220 = *(*(v218 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v219 + 8);

    sub_1AF678B44(v219 | (v220 << 32));

    goto LABEL_140;
  }

LABEL_177:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFD14FF0(uint64_t *a1, uint64_t *a2, char **a3, uint64_t a4)
{
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  v102 = a1;

  v9 = sub_1AF64B110(&type metadata for TextureCPURuntime, &off_1F2543E80, v4, v5, v6, v8);
  sub_1AF64B110(&type metadata for TextureRequireGPURepresentation, &off_1F25442D0, v4, v5, v6, v8);
  sub_1AF649C6C(*(v7 + 40), &type metadata for TextureGPURuntime, &v93);
  v88 = v6;
  v89 = v8;
  if (v93 != 1)
  {
    v79 = v5;
    v26 = v6;
    if (!v4)
    {
      v26 = v102[7] - v102[6];
    }

    v27 = ecs_stack_allocator_allocate(a2[4], 16 * v26, 8);
    v28 = v27;
    if (v26)
    {
      bzero(v27, 16 * v26);
    }

    v81 = 16 * v26;
    v82 = v28;
    v80 = v26;
    if (v4)
    {
      v85 = v4;
      if (v6)
      {
        v29 = 0;
        v30 = v28;
        do
        {
          v31 = v85[v29];
          v32 = v29 + v102[3];
          v97 = *v102;
          v98 = v7;
          v99 = v8;
          v100 = v32;
          v101 = v31;
          sub_1AF8DE828(v92);

          if (*(v7 + 184))
          {
            goto LABEL_47;
          }

          v34 = *(*(v7 + 168) + 4 * v31);
          v35 = *(*(v33 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v34 + 8);

          v36 = *a3;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a3 = v36;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v36 = sub_1AF4217DC(0, *(v36 + 2) + 1, 1, v36);
            *a3 = v36;
          }

          v39 = *(v36 + 2);
          v38 = *(v36 + 3);
          if (v39 >= v38 >> 1)
          {
            v36 = sub_1AF4217DC(v38 > 1, v39 + 1, 1, v36);
            *a3 = v36;
          }

          ++v29;
          *(v36 + 2) = v39 + 1;
          v40 = &v36[8 * v39];
          *(v40 + 8) = v34;
          *(v40 + 9) = v35;
          v41 = v9[1];
          v93 = *v9;
          v94 = v41;
          v42 = v9[3];
          v95 = v9[2];
          v96 = v42;
          v43 = sub_1AF8E9A5C(&v93, v92, a4, *v30, *(a4 + 528));
          swift_unknownObjectRelease();
          *v30 = v43;
          v30 += 2;
          v9 += 4;
          v6 = v88;
          v8 = v89;
        }

        while (v88 != v29);
      }

      v44 = a2;
      v45 = v6;
      v46 = v82;
      sub_1AF5B80C0(v85, v79, v45, v82, v80, a2);
    }

    else
    {
      v62 = v102[6];
      v87 = v102[7];
      if (v62 != v87)
      {
        v64 = 0;
        v65 = v82;
        v66 = &v9[4 * v62];
        do
        {
          v67 = v64 + v102[3];
          v97 = *v102;
          v98 = v7;
          v99 = v8;
          v100 = v67;
          v101 = v62;
          sub_1AF8DE828(v92);

          if (*(v7 + 184))
          {
            goto LABEL_47;
          }

          v69 = *(*(v7 + 168) + 4 * v62);
          v70 = *(*(v68 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v69 + 8);

          v71 = *a3;
          v72 = swift_isUniquelyReferenced_nonNull_native();
          *a3 = v71;
          if ((v72 & 1) == 0)
          {
            v71 = sub_1AF4217DC(0, *(v71 + 2) + 1, 1, v71);
            *a3 = v71;
          }

          v74 = *(v71 + 2);
          v73 = *(v71 + 3);
          if (v74 >= v73 >> 1)
          {
            v71 = sub_1AF4217DC(v73 > 1, v74 + 1, 1, v71);
            *a3 = v71;
          }

          ++v62;
          *(v71 + 2) = v74 + 1;
          v75 = &v71[8 * v74];
          *(v75 + 8) = v69;
          *(v75 + 9) = v70;
          v76 = v66[1];
          v93 = *v66;
          v94 = v76;
          v77 = v66[3];
          v95 = v66[2];
          v96 = v77;
          v78 = sub_1AF8E9A5C(&v93, v92, a4, *v65, *(a4 + 528));
          swift_unknownObjectRelease();
          *v65 = v78;
          v65 += 2;
          v66 += 4;
          ++v64;
          v8 = v89;
        }

        while (v87 != v62);
      }

      v46 = v82;
      v44 = a2;
      sub_1AF5B85AC(*(v7 + 232), *(v7 + 240), v82, v80, a2);
    }

    ecs_stack_allocator_deallocate(v44[4], v46, v81);
  }

  a2[9] = &type metadata for TextureGPURuntime;
  a2[10] = &off_1F2544388;
  v10 = sub_1AF64B110(&type metadata for TextureGPURuntime, &off_1F2544388, v4, v5, v6, v8);
  v11 = v10;
  if (!v4)
  {
    v47 = v102[6];
    v86 = v102[7];
    if (v47 != v86)
    {
      v48 = v102[3];
      v49 = (v10 + 16 * v47);
      v50 = &v9[4 * v47];
      while (1)
      {
        v97 = *v102;
        v98 = v7;
        v99 = v8;
        v100 = v48;
        v101 = v47;
        sub_1AF8DE828(v92);

        if (*(v7 + 184))
        {
          break;
        }

        v52 = *(*(v7 + 168) + 4 * v47);
        v53 = *(*(v51 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v52 + 8);

        v54 = *a3;
        v55 = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v54;
        if ((v55 & 1) == 0)
        {
          v54 = sub_1AF4217DC(0, *(v54 + 2) + 1, 1, v54);
          *a3 = v54;
        }

        v57 = *(v54 + 2);
        v56 = *(v54 + 3);
        if (v57 >= v56 >> 1)
        {
          v54 = sub_1AF4217DC(v56 > 1, v57 + 1, 1, v54);
          *a3 = v54;
        }

        ++v47;
        *(v54 + 2) = v57 + 1;
        v58 = &v54[8 * v57];
        *(v58 + 8) = v52;
        *(v58 + 9) = v53;
        v59 = v50[1];
        v93 = *v50;
        v94 = v59;
        v60 = v50[3];
        v95 = v50[2];
        v96 = v60;
        v61 = sub_1AF8E9A5C(&v93, v92, a4, *v49, *(a4 + 528));
        swift_unknownObjectRelease();
        *v49 = v61;
        v49 += 2;
        v50 += 4;
        ++v48;
        v8 = v89;
        if (v86 == v47)
        {
        }
      }

      goto LABEL_47;
    }
  }

  v84 = v4;
  if (!v6)
  {
  }

  v12 = 0;
  while (1)
  {
    v13 = v84[v12];
    v14 = v12 + v102[3];
    v97 = *v102;
    v98 = v7;
    v99 = v8;
    v100 = v14;
    v101 = v13;
    sub_1AF8DE828(v92);

    if (*(v7 + 184))
    {
      break;
    }

    v16 = *(*(v7 + 168) + 4 * v13);
    v17 = *(*(v15 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v16 + 8);

    v18 = *a3;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v18;
    if ((v19 & 1) == 0)
    {
      v18 = sub_1AF4217DC(0, *(v18 + 2) + 1, 1, v18);
      *a3 = v18;
    }

    v21 = *(v18 + 2);
    v20 = *(v18 + 3);
    if (v21 >= v20 >> 1)
    {
      v18 = sub_1AF4217DC(v20 > 1, v21 + 1, 1, v18);
      *a3 = v18;
    }

    *(v18 + 2) = v21 + 1;
    v22 = &v18[8 * v21];
    *(v22 + 8) = v16;
    *(v22 + 9) = v17;
    v23 = v9[1];
    v93 = *v9;
    v94 = v23;
    v24 = v9[3];
    v95 = v9[2];
    v96 = v24;
    v25 = sub_1AF8E9A5C(&v93, v92, a4, *v11, *(a4 + 528));
    swift_unknownObjectRelease();
    *v11 = v25;
    v11 += 2;
    ++v12;
    v9 += 4;
    v8 = v89;
    if (v88 == v12)
    {
    }
  }

LABEL_47:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFD15768(uint64_t result, char **a2, uint64_t a3)
{
  v4 = v3;
  v33 = *result;
  v34 = *(result + 16);
  v35 = *(result + 32);
  v27 = *(result + 80);
  if (v27 >= 1)
  {
    v6 = *(result + 40);
    v8 = *(result + 56);
    v7 = *(result + 64);
    v9 = *(result + 72);
    v10 = *(v9 + 32);

    ecs_stack_allocator_push_snapshot(v10);
    v11 = *(v9 + 32);
    if (v8)
    {
      v24 = v7;
      v12 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v13 = (v6 + 24);
      v25 = v12;
      v26 = a3;
      while (1)
      {
        v14 = *(v13 - 6);
        v15 = *(v13 - 5);
        v16 = *(v13 - 4);
        v31 = *v13;
        v32 = *(v13 - 1);
        v29 = v8;
        v30 = v13[1];
        v17 = v13[2];
        v47 = v4;
        if (v12)
        {
          v18 = *(v17 + 376);

          os_unfair_lock_lock(v18);
          os_unfair_lock_lock(*(v17 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v11);
        v19 = *(v9 + 64);
        v40[0] = *(v9 + 48);
        v40[1] = v19;
        v41 = *(v9 + 80);
        v20 = *(v9 + 32);
        v21 = *(*(*(*(v17 + 40) + 16) + 32) + 16) + 1;

        *(v9 + 48) = ecs_stack_allocator_allocate(v20, 48 * v21, 8);
        *(v9 + 56) = v21;
        *(v9 + 72) = 0;
        *(v9 + 80) = 0;
        *(v9 + 64) = 0;

        v42[0] = v24;
        v42[1] = v17;
        v42[2] = v9;
        v42[3] = v16;
        v42[4] = (v15 - v14 + v16);
        v42[5] = v27;
        v42[6] = v14;
        v42[7] = v15;
        v42[8] = 0;
        v42[9] = 0;
        v43 = 1;
        v44 = v32;
        v45 = v31;
        v46 = v30;

        v22 = v47;
        sub_1AFD14FF0(v42, v9, a2, v26);
        v4 = v22;
        if (v22)
        {
          break;
        }

        v38[0] = v33;
        v38[1] = v34;
        v39 = v35;
        sub_1AF630994(v9, v38, v40);
        sub_1AF62D29C(v17);
        ecs_stack_allocator_pop_snapshot(v11);
        v12 = v25;
        if (v25)
        {
          os_unfair_lock_unlock(*(v17 + 344));
          os_unfair_lock_unlock(*(v17 + 376));
        }

        v13 += 6;
        v8 = v29 - 1;
        if (v29 == 1)
        {
          v11 = *(v9 + 32);
          goto LABEL_15;
        }
      }

      v36[0] = v33;
      v36[1] = v34;
      v37 = v35;
      sub_1AF630994(v9, v36, v40);
      sub_1AF62D29C(v17);
      ecs_stack_allocator_pop_snapshot(v11);
      if (v25)
      {
        os_unfair_lock_unlock(*(v17 + 344));
        os_unfair_lock_unlock(*(v17 + 376));
      }

      v23 = *(v9 + 32);
    }

    else
    {
LABEL_15:
      v23 = v11;
    }

    ecs_stack_allocator_pop_snapshot(v23);
  }

  return result;
}