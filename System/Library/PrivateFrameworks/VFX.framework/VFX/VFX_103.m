uint64_t sub_1AF8EEB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1AFDFC128();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a2 & 0x100) != 0)
  {
    v18 = 0;
    v14 = *a2 & 0x104;
    v17 = 0uLL;
    v19 = 768;
    v16 = -2;
    v15 = 0uLL;
  }

  else
  {
    v14 = *a2 & 0xFCLL;
    v15 = *(a2 + 8);
    v16 = *(a2 + 24);
    v17 = *(a2 + 32);
    v18 = *(a2 + 48);
    v19 = *(a2 + 56);
  }

  v56 = v14;
  v57 = v15;
  v58 = v16;
  v59 = v17;
  v60 = v18;
  v61 = v19;
  if (v14 >= 0x100)
  {
    *&v43 = v12;
    v41 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    result = sub_1AF8EDB38(a1, &v56, a3);
    if (!v4)
    {
      return result;
    }

    v42 = a4;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    swift_getErrorValue();
    v21 = sub_1AFDFF1D8();
    v23 = v22;
    v24 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v40 = v24;
      swift_once();
      v24 = v40;
    }

    v62 = a2;
    v45 = 0;
    sub_1AF0D4F18(v24, &v45, v21, v23);

    *&v44 = 0;
    v13 = v41;
    v12 = v43;
  }

  else
  {
    v62 = a2;
    v42 = a4;
    *&v44 = v4;
  }

  v25 = v12;
  (*(v12 + 16))(v13, a1, v9);
  v26 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v27 = (v10 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  *&v43 = a1;
  v28 = swift_allocObject();
  (*(v25 + 32))(v28 + v26, v13, v9);
  v29 = (v28 + v27);
  v30 = v62;
  v31 = v62[1];
  *v29 = *v62;
  v29[1] = v31;
  v29[2] = v30[2];
  *(v29 + 42) = *(v30 + 42);
  *(v28 + ((v27 + 65) & 0xFFFFFFFFFFFFFFF8)) = a3;

  v32 = v44;
  sub_1AF74D574(0, &v56, sub_1AF9070A0, v28, 0, 0, v46);
  if (v32)
  {
  }

  else
  {
    v44 = v46[1];
    v43 = v46[0];
    v33 = v47;
    v34 = v48;
    v36 = v49;
    v35 = v50;

    if (v36 < 0)
    {
      v51[0] = v43;
      v51[1] = v44;
      v52 = v33;
      v53 = v34;
      v54 = v36 & 0x7FFFFFFFFFFFFFFFLL;
      v55 = v35;
      v37 = sub_1AF8E9A5C(v51, v30, a3, 0, v42);
      if (v37)
      {
        v38 = v37;
        sub_1AF8FE1E4(v46, &unk_1ED725A60, &type metadata for TextureCache.Texture, MEMORY[0x1E69E6720], sub_1AF90540C);
        return v38;
      }

      else
      {
        sub_1AF902768();
        swift_allocError();
        *v39 = 0xD000000000000017;
        *(v39 + 8) = 0x80000001AFF39CB0;
        *(v39 + 16) = 1;
        swift_willThrow();
        return sub_1AF8FE1E4(v46, &unk_1ED725A60, &type metadata for TextureCache.Texture, MEMORY[0x1E69E6720], sub_1AF90540C);
      }
    }

    else
    {
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  return result;
}

double sub_1AF8EF03C@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF8EE67C(a1, a2, *(a3 + 16), &v11);
  if (!v4)
  {
    v7 = v12;
    v8 = v16;
    v9 = v13 & 1;
    v10 = v15 & 0xFFFFFF | 0x8000000000000000;
    *a4 = v11;
    *(a4 + 16) = v7;
    *(a4 + 24) = v9;
    result = *&v14;
    *(a4 + 32) = v14;
    *(a4 + 48) = v10;
    *(a4 + 56) = v8;
  }

  return result;
}

uint64_t sub_1AF8EF0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for CommandBufferHelper();
  swift_initStackObject();
  v9 = swift_unknownObjectRetain();
  v10 = sub_1AF0D82B4(v9, 0xD000000000000013, 0x80000001AFF39C90);
  swift_unknownObjectRelease();
  v11 = sub_1AF8EEB08(a1, a2, a3, v10);

  if (!v4)
  {
    *a4 = v11;
    a4[3] = 0;
    a4[6] = 0;
  }

  return result;
}

void sub_1AF8EF174(uint64_t a1)
{
  v3 = v1[5];
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = v1[20];
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
  v16 = v1[40];
  swift_getObjectType();
  v17 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v16);

  sub_1AF6B1B20(a1, v17, v16);
  os_unfair_lock_unlock(*(v4 + 40));
  v18 = v1[45];
  swift_getObjectType();
  v19 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v18);

  sub_1AF6B1B20(a1, v19, v18);
  os_unfair_lock_unlock(*(v4 + 40));
  v20 = v1[50];
  swift_getObjectType();
  v21 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v20);

  sub_1AF6B1B20(a1, v21, v20);
  os_unfair_lock_unlock(*(v4 + 40));
  v22 = v1[55];
  swift_getObjectType();
  v23 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v22);

  sub_1AF6B1B20(a1, v23, v22);
  os_unfair_lock_unlock(*(v4 + 40));
  v24 = v1[60];
  swift_getObjectType();
  v25 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v24);

  sub_1AF6B1B20(a1, v25, v24);
  os_unfair_lock_unlock(*(v4 + 40));
  v26 = v1[65];
  swift_getObjectType();
  v27 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v26);

  sub_1AF6B1B20(a1, v27, v26);
  os_unfair_lock_unlock(*(v4 + 40));
  v28 = v1[70];
  swift_getObjectType();
  v29 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v28);

  sub_1AF6B1B20(a1, v29, v28);
  os_unfair_lock_unlock(*(v4 + 40));
  v30 = v1[75];
  swift_getObjectType();
  v31 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v30);

  sub_1AF6B1B20(a1, v31, v30);
  os_unfair_lock_unlock(*(v4 + 40));
  v32 = v1[80];
  swift_getObjectType();
  v33 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v32);

  sub_1AF6B1B20(a1, v33, v32);
  os_unfair_lock_unlock(*(v4 + 40));
  v34 = v1[85];
  swift_getObjectType();
  v35 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v34);

  sub_1AF6B1B20(a1, v35, v34);
  os_unfair_lock_unlock(*(v4 + 40));
  v36 = v1[10];
  swift_getObjectType();
  v37 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v36);

  sub_1AF6B1B20(a1, v37, v36);
  v38 = *(v4 + 40);

  os_unfair_lock_unlock(v38);
}

void sub_1AF8EF900(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == 1 && a2 != 0)
  {
    v4 = *(a2 + 112);
    v5 = a2;
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = v4 + OBJC_IVAR____TtC3VFX11ShaderCache_lock;
    v8 = *(v4 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);

    os_unfair_lock_lock(v8);
    v9 = (v4 + OBJC_IVAR____TtC3VFX11ShaderCache_reloadCallback);
    *v9 = sub_1AF8FF534;
    v9[1] = v6;

    os_unfair_lock_unlock(*(v7 + 24));

    a2 = v5;
  }

  sub_1AF8EFD18(a1, a2);
}

uint64_t sub_1AF8EFA0C()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = swift_allocObject();
    swift_weakInit();
    v3 = v1 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocksLock;
    v4 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocksLock + 24);

    os_unfair_lock_lock(v4);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1AF8FF53C;
    *(v5 + 24) = v2;
    v6 = OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocks;
    v7 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocks);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v6) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1AF4221DC(0, v7[2] + 1, 1, v7);
      *(v1 + v6) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_1AF4221DC(v9 > 1, v10 + 1, 1, v7);
    }

    v7[2] = v10 + 1;
    v11 = &v7[2 * v10];
    v11[4] = sub_1AF464154;
    v11[5] = v5;
    *(v1 + v6) = v7;
    os_unfair_lock_unlock(*(v3 + 24));
  }

  return result;
}

uint64_t sub_1AF8EFB74()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v20 = qword_1ED73B840;
    v21 = 0;
    v22 = 2;
    v23 = 0;
    v24 = 2;
    v25 = 0;
    sub_1AF703280(3, v2);
    v18[0] = v2[0];
    v18[1] = v2[1];
    v19 = v3;
    sub_1AF6B06C0(v1, v18, 0x200000000, &v4);
    if (v4)
    {
      v14 = v7;
      v15 = v8;
      v16 = v9;
      v11 = v4;
      v17 = v10;
      v12 = v5;
      v13 = v6;
      sub_1AF6B9BF4();
      sub_1AF8FE1E4(&v4, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
    }

    sub_1AF885E08(v1);
    sub_1AF8FE1E4(v2, &unk_1ED723D18, &type metadata for TextureShaderAsset, &off_1F2543F30, sub_1AF5DD590);
  }

  return result;
}

void sub_1AF8EFD18(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v314 = v5;
  if (!v5)
  {
    return;
  }

  v6 = v3;
  LODWORD(v313) = v4;

  CACurrentMediaTime();
  v7 = *(v2 + 136);
  v599[0] = *(v2 + 120);
  v599[1] = v7;
  v307 = v2;
  v600 = *(v2 + 152);
  v304 = *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(v6, v599, 0x200000000, &v338);
  if (v338)
  {
    v444 = v341;
    v445 = v342;
    v446 = v343;
    v441 = v338;
    v447 = v344;
    v442 = v339;
    v443 = v340;
    sub_1AF8DAFC8(0);
    sub_1AF8FE1E4(&v338, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

  v8 = *(v307 + 176);
  v597[0] = *(v307 + 160);
  v597[1] = v8;
  v598 = *(v307 + 192);
  sub_1AF6B06C0(v6, v597, 0x200000000, &v345);
  v312 = v6;
  if (!v345)
  {
    goto LABEL_21;
  }

  if (v352 <= 0 || (v315 = v349) == 0)
  {
    sub_1AF8FE1E4(&v345, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
LABEL_21:
    v13 = 0;
    v25 = v307;
    goto LABEL_23;
  }

  v311 = v348;
  v9 = v350;
  v10 = v351;
  i = *(v350 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v317 = *(v351 + 32);
  v448 = v345;
  v449 = v346;
  v450 = v347;

  v12 = 0;
  v13 = 0;
  LODWORD(v310) = i;
  do
  {
    v318 = v13;
    v316 = v12;
    v14 = (v311 + 48 * v12);
    v16 = *v14;
    v15 = v14[1];
    v17 = v14[2];
    v18 = *(v14 + 2);
    v20 = *(v14 + 4);
    v19 = *(v14 + 5);
    if (i)
    {
      v21 = *(v19 + 376);

      os_unfair_lock_lock(v21);
      os_unfair_lock_lock(*(v19 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v317);
    v22 = *(v10 + 64);
    v593[0] = *(v10 + 48);
    v593[1] = v22;
    v594 = *(v10 + 80);
    v23 = *(*(*(*(v19 + 40) + 16) + 32) + 16) + 1;
    *(v10 + 48) = ecs_stack_allocator_allocate(*(v10 + 32), 48 * v23, 8);
    *(v10 + 56) = v23;
    *(v10 + 72) = 0;
    *(v10 + 80) = 0;
    *(v10 + 64) = 0;
    if (v18)
    {
      for (i = v310; v20; --v20)
      {
        v24 = *v18++;
        v595[0] = v9;
        v595[1] = v19;
        v595[2] = v10;
        v595[3] = v17;
        v595[4] = v24;
        sub_1AF901CCC(v595);
        ++v17;
      }
    }

    else
    {
      i = v310;
      if (v16 != v15)
      {
        do
        {
          v596[0] = v9;
          v596[1] = v19;
          v596[2] = v10;
          v596[3] = v17;
          v596[4] = v16;
          sub_1AF901CCC(v596);
          ++v17;
          ++v16;
        }

        while (v15 != v16);
      }
    }

    v13 = v318;
    sub_1AF630994(v10, &v448, v593);
    sub_1AF62D29C(v19);
    ecs_stack_allocator_pop_snapshot(v317);
    if (i)
    {
      os_unfair_lock_unlock(*(v19 + 344));
      os_unfair_lock_unlock(*(v19 + 376));
    }

    v12 = (v316 + 1);
  }

  while (v316 + 1 != v315);
  sub_1AF8FE1E4(&v345, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  v25 = v307;

  v6 = v312;
LABEL_23:
  v592 = *(v25 + 312);
  v26 = *(v25 + 296);
  v591[0] = *(v25 + 280);
  v591[1] = v26;
  sub_1AF6B06C0(v6, v591, 0x200000000, &v353);
  if (v353)
  {
    if (v360 > 0)
    {
      v311 = v357;
      if (v357)
      {
        v310 = v356;
        v27 = v358;
        v28 = v359;
        LODWORD(v317) = *(v358 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v316 = *(v359 + 32);
        v451 = v353;
        v452 = v354;
        v453 = v355;

        v29 = 0;
        do
        {
          v315 = v29;
          v30 = &v310[24 * v29];
          v31 = *v30;
          v32 = *(v30 + 1);
          v33 = *(v30 + 2);
          v34 = *(v30 + 2);
          v36 = *(v30 + 4);
          v35 = *(v30 + 5);
          v318 = v13;
          if (v317)
          {
            v37 = *(v35 + 376);

            os_unfair_lock_lock(v37);
            os_unfair_lock_lock(*(v35 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v316);
          v38 = *(v28 + 64);
          v587[0] = *(v28 + 48);
          v587[1] = v38;
          v588 = *(v28 + 80);
          v39 = *(*(*(*(v35 + 40) + 16) + 32) + 16) + 1;
          *(v28 + 48) = ecs_stack_allocator_allocate(*(v28 + 32), 48 * v39, 8);
          *(v28 + 56) = v39;
          *(v28 + 72) = 0;
          *(v28 + 80) = 0;
          *(v28 + 64) = 0;
          if (v34)
          {
            for (; v36; --v36)
            {
              v40 = *v34++;
              v589[0] = v27;
              v589[1] = v35;
              v589[2] = v28;
              v589[3] = v33;
              v589[4] = v40;
              sub_1AF901CCC(v589);
              ++v33;
            }
          }

          else if (v31 != v32)
          {
            do
            {
              v590[0] = v27;
              v590[1] = v35;
              v590[2] = v28;
              v590[3] = v33;
              v590[4] = v31;
              sub_1AF901CCC(v590);
              ++v33;
              ++v31;
            }

            while (v32 != v31);
          }

          v13 = v318;
          sub_1AF630994(v28, &v451, v587);
          sub_1AF62D29C(v35);
          ecs_stack_allocator_pop_snapshot(v316);
          if (v317)
          {
            os_unfair_lock_unlock(*(v35 + 344));
            os_unfair_lock_unlock(*(v35 + 376));
          }

          v29 = v315 + 1;
        }

        while (v315 + 1 != v311);
        sub_1AF8FE1E4(&v353, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
        v41 = v307;

        v6 = v312;
        goto LABEL_42;
      }
    }

    sub_1AF8FE1E4(&v353, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

  v41 = v307;
LABEL_42:
  v42 = *(v41 + 56);
  v585[0] = *(v41 + 40);
  v585[1] = v42;
  v586 = *(v41 + 72);
  sub_1AF6B06C0(v6, v585, 0x200000000, v361);
  v311 = *&v361[0];
  if (!*&v361[0])
  {
    v45 = v307;
    goto LABEL_66;
  }

  v310 = *(&v361[2] + 1);
  v43 = *(&v362 + 1);
  v44 = *(&v363 + 1);
  v318 = v363;
  v439 = *(v361 + 8);
  v440 = *(&v361[1] + 8);
  v45 = v307;
  if (v364 <= 0 || !*(&v362 + 1))
  {
    sub_1AF8FE1E4(v361, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
    goto LABEL_66;
  }

  v317 = *(*(&v363 + 1) + 32);
  v46 = v318[OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach];
  v560 = v361[2];
  v561 = v362;
  v562 = v363;
  v563 = v364;
  v558 = v361[0];
  v559 = v361[1];
  sub_1AF5DD298(&v558, v540);
  v47 = 0;
  LODWORD(v308) = v46;
  v309 = v43;
  do
  {
    v316 = v47;
    v48 = &v310[24 * v47];
    v49 = *v48;
    v50 = *(v48 + 1);
    v51 = *(v48 + 2);
    v52 = *(v48 + 2);
    v315 = *(v48 + 3);
    v53 = *(v48 + 4);
    v6 = *(v48 + 5);
    if (v46)
    {
      v54 = *(v6 + 376);

      os_unfair_lock_lock(v54);
      os_unfair_lock_lock(*(v6 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v317);
    v55 = *(v44 + 64);
    v581[0] = *(v44 + 48);
    v581[1] = v55;
    v582 = *(v44 + 80);
    v56 = *(*(*(*(v6 + 40) + 16) + 32) + 16) + 1;
    *(v44 + 48) = ecs_stack_allocator_allocate(*(v44 + 32), 48 * v56, 8);
    *(v44 + 56) = v56;
    *(v44 + 72) = 0;
    *(v44 + 80) = 0;
    *(v44 + 64) = 0;
    v57 = sub_1AF64B110(&type metadata for TextureLoadingOptions, &off_1F2543FE0, v52, v315, v53, v44);
    v58 = v57;
    if (!v52)
    {
      v61 = (v57 + (v49 << 6));
      while (v50 != v49)
      {
        v52 = v49 + 1;
        v584[0] = v318;
        v584[1] = v6;
        v584[2] = v44;
        v584[3] = v51;
        v584[4] = v49;
        sub_1AF901FA0(v584, v61);
        v61 += 8;
        ++v51;
        ++v49;
        if (v13)
        {
          goto LABEL_274;
        }
      }

LABEL_60:
      v59 = v309;
      goto LABEL_61;
    }

    if (!v53)
    {
      goto LABEL_60;
    }

    v59 = v309;
    do
    {
      v60 = *v52;
      v52 += 8;
      v583[0] = v318;
      v583[1] = v6;
      v583[2] = v44;
      v583[3] = v51;
      v583[4] = v60;
      sub_1AF901FA0(v583, v58);
      if (v13)
      {
        goto LABEL_274;
      }

      ++v51;
      v58 += 8;
      --v53;
    }

    while (v53);
LABEL_61:
    v454 = v311;
    v455 = v439;
    v456 = v440;
    sub_1AF630994(v44, &v454, v581);
    sub_1AF62D29C(v6);
    ecs_stack_allocator_pop_snapshot(v317);
    v46 = v308;
    if (v308)
    {
      os_unfair_lock_unlock(*(v6 + 344));
      os_unfair_lock_unlock(*(v6 + 376));
    }

    v47 = (v316 + 1);
  }

  while (v316 + 1 != v59);
  v62 = MEMORY[0x1E69E6720];
  sub_1AF8FE1E4(v361, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  sub_1AF8FE1E4(v361, &qword_1ED725EA0, &type metadata for QueryResult, v62, sub_1AF90540C);
  v6 = v312;
  v45 = v307;
LABEL_66:
  if (*(v6 + 56) == 1)
  {
    v63 = *(v45 + 96);
    v579[0] = *(v45 + 80);
    v579[1] = v63;
    v580 = *(v45 + 112);
    sub_1AF6B06C0(v6, v579, 0x200000000, &v365);
    if (v365)
    {
      v575 = v368;
      v576 = v369;
      v577 = v370;
      v573 = v366;
      v574 = v367;
      v578 = v371;
      v572 = v365;

      sub_1AFD1A5E4(&v572, v6, v314);

      sub_1AF8FE1E4(&v365, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
    }

    v45 = v307;
  }

  v64 = *(v45 + 216);
  v570[0] = *(v45 + 200);
  v570[1] = v64;
  v571 = *(v45 + 232);
  sub_1AF6B06C0(v6, v570, 0x200000000, v372);
  if (*&v372[0])
  {
    if (v376 >= 1 && v374)
    {
      v65 = v373;
      v309 = v375;
      v66 = v373 + 48 * v374;
      v300 = v66;
      do
      {
        v67 = *(v65 + 40);
        v68 = *(v67 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v68);
        os_unfair_lock_lock(*(v67 + 344));
        v69 = *(v67 + 24);

        *&v560 = 0;
        v558 = 0u;
        v559 = 0u;
        memset(v540, 0, 40);
        v70 = sub_1AF65A4B4(v69, &type metadata for TextureGPURepresentationDoNotUpload, &off_1F25461B8, 0, 0, &v558, v540);

        sub_1AF5DD41C(v540);
        sub_1AF5DD41C(&v558);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v70);
          v6 = v312;
        }

        else
        {
          v71 = v13;
          v73 = *(v67 + 232);
          v72 = *(v67 + 240);
          LODWORD(v303) = *(v67 + 120);
          v317 = *(v67 + 28);
          LODWORD(v316) = *(v67 + 32);
          v74 = *(v67 + 16);
          v75 = *(v67 + 40);
          v76 = v75[200];
          v315 = *(*(v74 + 88) + 8 * v70 + 32);

          if ((v76 & 1) != 0 || *(v315 + 200) == 1)
          {
            *(v74 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v75 = *(v67 + 40);
          }

          v77 = v75[212];
          v308 = v65;
          if (v77)
          {
            LODWORD(v306) = 0;
          }

          else
          {
            LODWORD(v306) = *(v315 + 212);
          }

          v78 = v71;
          LODWORD(v305) = v75[208];
          v311 = *(v67 + 128);
          v79 = *(v67 + 256);
          sub_1AF5B4FCC(v75, v73, v72, 0, v67);
          v80 = v78;
          v81 = *(v67 + 256);
          v82 = v81 - v79;
          v310 = v79;
          if (v81 == v79)
          {
            v83 = 0;
          }

          else
          {
            v83 = v79;
          }

          *&v540[0] = v83;
          v84 = *(*(v67 + 40) + 24);
          v85 = *(v84 + 16);
          if (v85)
          {
            v318 = v80;
            v301 = v84;
            v302 = v81;
            v86 = v84 + 32;

            for (j = 0; j != v85; ++j)
            {
              v88 = v86 + 40 * j;
              if ((*(v88 + 32) & 1) == 0)
              {
                v89 = *(v315 + 24);
                v90 = *(v89 + 16);
                if (v90)
                {
                  v91 = (v89 + 32);
                  while (*v91 != *v88)
                  {
                    v91 += 5;
                    if (!--v90)
                    {
                      goto LABEL_88;
                    }
                  }
                }

                else
                {
LABEL_88:
                  sub_1AF640BC8();
                }
              }
            }

            v81 = v302;
            v80 = v318;
          }

          v65 = v308;
          if (*(v74 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v74 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v67 + 72) * v82);
          }

          if (*(v67 + 184))
          {
            v92 = 0;
          }

          else
          {
            v92 = *(v67 + 168);
          }

          *&v524 = 0;

          MEMORY[0x1EEE9AC00](v93, v94);
          v95 = v317;
          v96 = v316;
          v290 = 0u;
          v291 = v540;
          v292 = v311;
          v293 = &v524;
          LOBYTE(v294) = v305;
          HIDWORD(v294) = v70;
          LOBYTE(v295) = v306;
          v296 = v309;
          *&v559 = v92;
          DWORD2(v559) = -1;
          *&v560 = v310;
          *(&v560 + 1) = v81;
          *&v561 = v310;
          *(&v561 + 1) = v81;
          *&v558 = v310;
          *(&v558 + 1) = v81;
          if (v82 >= 1)
          {
            do
            {
              LOBYTE(v483) = v96;
              sub_1AF6248A8(v70, v95 | (v96 << 32), v303, v74, &v558, sub_1AF5C5E08);
              v96 = v316;
              v95 = v317;
            }

            while ((*(&v558 + 1) - v558) > 0);
          }

          v13 = v80;
          v97 = *(v67 + 192);
          v6 = v312;
          v66 = v300;
          if (v97)
          {
            v98 = *(v67 + 208);
            sub_1AF75D364(v310, v81, v97);
            sub_1AF75D364(v310, v81, v98);
          }
        }

        v65 += 48;
        os_unfair_lock_unlock(*(v67 + 344));
        os_unfair_lock_unlock(*(v67 + 376));
      }

      while (v65 != v66);
    }

    sub_1AF8FE1E4(v372, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

  v99 = *(v307 + 256);
  v568[0] = *(v307 + 240);
  v568[1] = v99;
  v569 = *(v307 + 272);
  sub_1AF6B06C0(v6, v568, 0x200000000, v377);
  if (*&v377[0])
  {
    if (v381 >= 1 && v379)
    {
      v100 = v378;
      v101 = &v378[24 * v379];
      v300 = v101;
      v301 = v380;
      do
      {
        v102 = *(v100 + 5);
        v103 = *(v102 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v103);
        os_unfair_lock_lock(*(v102 + 344));
        v104 = *(v102 + 24);

        *&v560 = 0;
        v558 = 0u;
        v559 = 0u;
        memset(v540, 0, 40);
        v105 = sub_1AF65A4B4(v104, &type metadata for TextureGPURepresentationDoNotDownload, &off_1F2546118, 0, 0, &v558, v540);

        sub_1AF5DD41C(v540);
        sub_1AF5DD41C(&v558);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v105);
          v6 = v312;
        }

        else
        {
          v106 = v13;
          v108 = *(v102 + 232);
          v107 = *(v102 + 240);
          LODWORD(v305) = *(v102 + 120);
          v317 = *(v102 + 28);
          LODWORD(v316) = *(v102 + 32);
          v109 = *(v102 + 16);
          v110 = *(v102 + 40);
          v111 = v110[200];
          v315 = *(*(v109 + 88) + 8 * v105 + 32);

          if ((v111 & 1) != 0 || *(v315 + 200) == 1)
          {
            *(v109 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v110 = *(v102 + 40);
          }

          v112 = v110[212];
          v309 = v100;
          if (v112)
          {
            LODWORD(v308) = 0;
          }

          else
          {
            LODWORD(v308) = *(v315 + 212);
          }

          v113 = v106;
          LODWORD(v306) = v110[208];
          v311 = *(v102 + 128);
          v114 = *(v102 + 256);
          sub_1AF5B4FCC(v110, v108, v107, 0, v102);
          v115 = *(v102 + 256);
          v116 = v115 - v114;
          v310 = v114;
          if (v115 == v114)
          {
            v117 = 0;
          }

          else
          {
            v117 = v114;
          }

          *&v540[0] = v117;
          v118 = *(*(v102 + 40) + 24);
          v119 = *(v118 + 16);
          v318 = v113;
          if (v119)
          {
            v302 = v118;
            v303 = v115;
            v120 = v118 + 32;

            for (k = 0; k != v119; ++k)
            {
              v122 = v120 + 40 * k;
              if ((*(v122 + 32) & 1) == 0)
              {
                v123 = *(v315 + 24);
                v124 = *(v123 + 16);
                if (v124)
                {
                  v125 = (v123 + 32);
                  while (*v125 != *v122)
                  {
                    v125 += 5;
                    if (!--v124)
                    {
                      goto LABEL_126;
                    }
                  }
                }

                else
                {
LABEL_126:
                  sub_1AF640BC8();
                }
              }
            }

            v115 = v303;
          }

          v100 = v309;
          if (*(v109 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v109 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v102 + 72) * v116);
          }

          if (*(v102 + 184))
          {
            v126 = 0;
          }

          else
          {
            v126 = *(v102 + 168);
          }

          *&v524 = 0;

          MEMORY[0x1EEE9AC00](v127, v128);
          v129 = v317;
          v130 = v316;
          v290 = 0u;
          v291 = v540;
          v292 = v311;
          v293 = &v524;
          LOBYTE(v294) = v306;
          HIDWORD(v294) = v105;
          LOBYTE(v295) = v308;
          v296 = v301;
          *&v559 = v126;
          DWORD2(v559) = -1;
          *&v560 = v310;
          *(&v560 + 1) = v115;
          *&v561 = v310;
          *(&v561 + 1) = v115;
          *&v558 = v310;
          *(&v558 + 1) = v115;
          if (v116 >= 1)
          {
            do
            {
              LOBYTE(v483) = v130;
              sub_1AF6248A8(v105, v129 | (v130 << 32), v305, v109, &v558, sub_1AF5C5E08);
              v130 = v316;
              v129 = v317;
            }

            while ((*(&v558 + 1) - v558) > 0);
          }

          v13 = v318;
          v131 = *(v102 + 192);
          v6 = v312;
          v101 = v300;
          if (v131)
          {
            v132 = *(v102 + 208);
            v317 = *(v102 + 216);
            sub_1AF75D364(v310, v115, v131);
            v101 = v300;
            sub_1AF75D364(v310, v115, v132);
          }
        }

        v100 += 24;
        os_unfair_lock_unlock(*(v102 + 344));
        os_unfair_lock_unlock(*(v102 + 376));
      }

      while (v100 != v101);
    }

    sub_1AF8FE1E4(v377, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

  v133 = *(v307 + 336);
  v566[0] = *(v307 + 320);
  v566[1] = v133;
  v567 = *(v307 + 352);
  sub_1AF6B06C0(v6, v566, 0x200000000, v382);
  v334 = v382[2];
  v335 = v382[3];
  v336 = v382[4];
  v337 = v382[5];
  v332 = v382[0];
  v333 = v382[1];
  if (*&v382[0])
  {
    v435 = *(&v382[2] + 8);
    v436 = *(&v382[3] + 8);
    v437 = *(&v382[4] + 8);
    *v434 = *&v382[0];
    v438 = *(&v382[5] + 1);
    *&v434[8] = *(v382 + 8);
    *&v434[24] = *(&v382[1] + 8);
    v134 = *(v314 + 120);
    v135 = *(v134 + 48);

    os_unfair_lock_lock(v135);
    v136 = *(v134 + 96) + 1;
    *(v134 + 96) = v136;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v558 = *(v134 + 64);
    *(v134 + 64) = 0x8000000000000000;
    sub_1AF8556AC(MEMORY[0x1E69E7CC8], v136, isUniquelyReferenced_nonNull_native);
    *(v134 + 64) = v558;
    v311 = *(v134 + 96);
    os_unfair_lock_unlock(*(v134 + 48));

    v308 = *(&v437 + 1);
    if (*(&v437 + 1) >= 1)
    {
      v303 = v436;
      if (v436)
      {
        v306 = v437;
        v138 = *(v437 + 32);
        v301 = v435;
        v302 = *(&v436 + 1);
        v139 = *(*(&v436 + 1) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v540[2] = v334;
        v541 = v335;
        v542 = v336;
        v543 = v337;
        v540[0] = v332;
        v540[1] = v333;
        sub_1AF5DD298(v540, &v558);
        v140 = 0;
        v299 = v139;
        v300 = v138;
        while (1)
        {
          v141 = (v301 + 48 * v140);
          v142 = *v141;
          v143 = v141[1];
          v50 = v141[2];
          v51 = *(v141 + 2);
          v144 = *(v141 + 3);
          v145 = *(v141 + 4);
          v146 = *(v141 + 5);
          v305 = v140;
          v317 = v145;
          v318 = v144;
          if (v139)
          {
            v147 = *(v146 + 376);

            os_unfair_lock_lock(v147);
            os_unfair_lock_lock(*(v146 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v138);
          v148 = v306;
          v149 = *(v306 + 4);
          v44 = v540;
          v546[0] = *(v306 + 3);
          v546[1] = v149;
          v547 = v306[10];
          v150 = *(*(*(*(v146 + 40) + 16) + 32) + 16) + 1;
          v148[6] = ecs_stack_allocator_allocate(v306[4], 48 * v150, 8);
          v148[7] = v150;
          v148[9] = 0;
          v148[10] = 0;
          v148[8] = 0;
          LOBYTE(v524) = 1;
          *&v558 = v302;
          *(&v558 + 1) = v146;
          *&v559 = v148;
          *(&v559 + 1) = v50;
          *&v560 = (v143 - v142 + v50);
          *(&v560 + 1) = v308;
          *&v561 = v142;
          *(&v561 + 1) = v143;
          v562 = 0uLL;
          LOBYTE(v563) = 1;
          *(&v563 + 1) = v51;
          v564 = v318;
          v565 = v317;
          v151 = sub_1AF705C60(v146, &v558);
          v52 = v151;
          v152 = *(&v563 + 1);
          v318 = v146;
          if (*(&v563 + 1))
          {
            v153 = v565;
            v6 = v312;
            if (v565)
            {
              v154 = *(&v559 + 1);
              v310 = v558;
              v309 = v559;
              do
              {
                v155 = *v152;
                v316 = v153;
                v317 = v152 + 1;
                v548 = v310;
                v549 = v146;
                v550 = v309;
                v315 = v154;
                v551 = v154;
                v552 = v155;
                sub_1AF8DE828(v383);

                if (*(v146 + 184))
                {
                  goto LABEL_273;
                }

                v157 = *(*(v146 + 168) + 4 * v155);
                v158 = *(*(v156 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v157 + 8);

                v44 = v298;
                MEMORY[0x1EEE9AC00](v159, v160);
                v51 = v311;
                *(&v290 + 1) = v52;
                v291 = v383;
                v292 = v311;
                LOBYTE(v293) = 0;
                v50 = v314;
                v294 = v312;
                v295 = v314;
                v161 = v157 | (v158 << 32);
                v162 = v312;
                v6 = v313;
                LOBYTE(v296) = v313;
                sub_1AFC3F950(v161, sub_1AF907070);

                if (*(v146 + 184))
                {
                  goto LABEL_273;
                }

                v164 = *(*(v146 + 168) + 4 * v155);
                v44 = *(*(v163 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v164 + 8);

                MEMORY[0x1EEE9AC00](v165, v166);
                *(&v290 + 1) = v52;
                v291 = v383;
                v292 = v51;
                LOBYTE(v293) = 0;
                v294 = v162;
                v295 = v50;
                LOBYTE(v296) = v6;
                v167 = v164 | (v44 << 32);
                v146 = v318;
                v297 = v50;
                sub_1AFC3F3D8(v167, sub_1AF907088);
                v52 += 48;
                v154 = v315 + 1;
                v153 = (v316 - 1);
                v6 = v162;
                v152 = v317;
              }

              while (v316 != 1);
            }
          }

          else
          {
            v315 = *(&v561 + 1);
            v50 = v561;
            v6 = v312;
            if (v561 != *(&v561 + 1))
            {
              v168 = *(&v559 + 1);
              v52 = v151 + 48 * v561;
              v309 = v559;
              v310 = v558;
              while (1)
              {
                v553 = v310;
                v554 = v146;
                v555 = v309;
                v317 = v168;
                v556 = v168;
                v557 = v50;
                sub_1AF8DE828(v384);

                if (*(v146 + 184))
                {
                  break;
                }

                v170 = *(*(v146 + 168) + 4 * v50);
                v44 = *(*(v169 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v170 + 8);

                v316 = v298;
                MEMORY[0x1EEE9AC00](v171, v172);
                *(&v290 + 1) = v52;
                v291 = v384;
                v173 = v311;
                v292 = v311;
                LOBYTE(v293) = 0;
                v294 = v6;
                v174 = v6;
                v6 = v314;
                v295 = v314;
                v175 = v170 | (v44 << 32);
                v176 = v318;
                v51 = v313;
                LOBYTE(v296) = v313;
                sub_1AFC3F950(v175, sub_1AF902698);

                if (v176[184])
                {
                  break;
                }

                v178 = *(*(v176 + 21) + 4 * v50);
                v44 = v50 + 1;
                v179 = *(*(v177 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v178 + 8);

                v316 = v298;
                MEMORY[0x1EEE9AC00](v180, v181);
                *(&v290 + 1) = v52;
                v291 = v384;
                v292 = v173;
                LOBYTE(v293) = 0;
                v294 = v174;
                v295 = v6;
                LOBYTE(v296) = v51;
                v182 = v178 | (v179 << 32);
                v146 = v318;
                v297 = v6;
                sub_1AFC3F3D8(v182, sub_1AF9026B0);
                v52 += 48;
                v168 = v317 + 1;
                v50 = v44;
                v6 = v174;
                if (v315 == v44)
                {
                  goto LABEL_166;
                }
              }

LABEL_273:
              LODWORD(v297) = 0;
              v296 = 204;
              sub_1AFDFE518();
              __break(1u);
LABEL_274:

              *&v540[0] = v311;
              *(v540 + 8) = v439;
              *(&v540[1] + 8) = v440;
              v13 = 0;
              sub_1AF630994(v44, v540, v581);
              v191 = v44;
              sub_1AF62D29C(v6);
              ecs_stack_allocator_pop_snapshot(v317);
              os_unfair_lock_unlock(*(v6 + 344));
              os_unfair_lock_unlock(*(v6 + 376));
              __break(1u);
LABEL_275:

              v524 = *v434;
              v525 = *&v434[16];
              v526 = *&v434[32];
              v288 = &v524;
              v289 = v538;
LABEL_278:
              v13 = 0;
              sub_1AF630994(v191, v288, v289);
              sub_1AF62D29C(v51);
              ecs_stack_allocator_pop_snapshot(v50);
              os_unfair_lock_unlock(*(v51 + 344));
              os_unfair_lock_unlock(*(v51 + 376));
              __break(1u);
LABEL_279:

              v467 = v310;
              v468 = v428;
              v469 = v429;
              sub_1AF630994(v191, &v467, v473);
              sub_1AF62D29C(v52);
              ecs_stack_allocator_pop_snapshot(v44);
              os_unfair_lock_unlock(*(v52 + 344));
              os_unfair_lock_unlock(*(v52 + 376));
              __break(1u);
              return;
            }
          }

LABEL_166:
          v459[0] = *v434;
          v459[1] = *&v434[16];
          v460 = *&v434[32];
          sub_1AF630994(v306, v459, v546);
          sub_1AF62D29C(v146);
          v138 = v300;
          ecs_stack_allocator_pop_snapshot(v300);
          v139 = v299;
          if (v299)
          {
            os_unfair_lock_unlock(*(v146 + 344));
            os_unfair_lock_unlock(*(v146 + 376));
          }

          v140 = v305 + 1;
          if ((v305 + 1) == v303)
          {
            sub_1AF8FE1E4(v382, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
            break;
          }
        }
      }
    }

    v183 = v314;

    sub_1AF74C154(v311);

    v184 = sub_1AF6B9944();
    sub_1AF9024D0(v6, v183, v184);

    v187 = *(v183 + 528);
    v188 = *(v187 + 16);
    if (v188)
    {
      swift_unknownObjectRetain();
      sub_1AF6F37F0();
      [v188 commit];
      swift_unknownObjectRelease();
      *(v187 + 16) = 0;
      v185 = swift_unknownObjectRelease();
    }

    MEMORY[0x1EEE9AC00](v185, v186);
    v306 = &v290 + 1;
    v292 = v6;
    v293 = v6;
    v294 = v314;
    LOBYTE(v295) = v313;
    v296 = v307;
    v297 = v314;
    if (v308 >= 1)
    {
      v190 = v436;
      if (v436)
      {
        v303 = v189;
        v191 = v437;
        v50 = *(v437 + 32);
        v192 = v13;
        v193 = v435;
        v305 = *(&v436 + 1);
        LODWORD(v317) = *(*(&v436 + 1) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        sub_1AF8FF144(v382, v540, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
        v194 = (v193 + 24);
        v13 = v192;
        while (1)
        {
          v316 = v190;
          v52 = *(v194 - 6);
          v44 = *(v194 - 5);
          v195 = *(v194 - 4);
          v196 = *v194;
          v315 = *(v194 - 1);
          v51 = v194[2];
          v309 = v194[1];
          v310 = v196;
          v318 = v13;
          if (v317)
          {
            v197 = *(v51 + 376);

            os_unfair_lock_lock(v197);
            os_unfair_lock_lock(*(v51 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v50);
          v198 = *(v191 + 64);
          v538[0] = *(v191 + 48);
          v538[1] = v198;
          v539 = *(v191 + 80);
          v199 = *(*(*(*(v51 + 40) + 16) + 32) + 16) + 1;
          *(v191 + 48) = ecs_stack_allocator_allocate(*(v191 + 32), 48 * v199, 8);
          *(v191 + 56) = v199;
          *(v191 + 72) = 0;
          *(v191 + 80) = 0;
          *(v191 + 64) = 0;
          LOBYTE(v524) = 1;
          *&v540[0] = v305;
          *(&v540[0] + 1) = v51;
          *&v540[1] = v191;
          *(&v540[1] + 1) = v195;
          *&v540[2] = (v44 - v52 + v195);
          *(&v540[2] + 1) = v308;
          *&v541 = v52;
          *(&v541 + 1) = v44;
          v542 = 0uLL;
          LOBYTE(v543) = 1;
          *(&v543 + 1) = v315;
          v544 = v310;
          v545 = v309;
          v13 = v318;
          sub_1AF8F9DC8(v540, sub_1AF902670, v306);
          if (v13)
          {
            goto LABEL_275;
          }

          v457[0] = *v434;
          v457[1] = *&v434[16];
          v458 = *&v434[32];
          sub_1AF630994(v191, v457, v538);
          sub_1AF62D29C(v51);
          ecs_stack_allocator_pop_snapshot(v50);
          v6 = v312;
          v200 = v316;
          if (v317)
          {
            os_unfair_lock_unlock(*(v51 + 344));
            os_unfair_lock_unlock(*(v51 + 376));
          }

          v194 += 6;
          v190 = v200 - 1;
          if (!v190)
          {
            sub_1AF8FE1E4(v382, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
            v201 = v311;
            goto LABEL_183;
          }
        }
      }
    }

    v201 = v311;
LABEL_183:

    sub_1AF74C750(v201);
    sub_1AF8FE1E4(v382, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

  v325 = MEMORY[0x1E69E7CC0];
  v202 = *(v307 + 376);
  v536[0] = *(v307 + 360);
  v536[1] = v202;
  v537 = *(v307 + 392);
  sub_1AF6B06C0(v6, v536, 0x200000000, v385);
  v329 = v386;
  v330 = v387;
  v331 = v388;
  v326 = v385[0];
  v327 = v385[1];
  v328 = v385[2];
  v309 = *&v385[0];
  if (*&v385[0])
  {
    v205 = *(&v385[2] + 1);
    v206 = *(&v386 + 1);
    v191 = *(&v387 + 1);
    v308 = v387;
    v432 = *(v385 + 8);
    v433 = *(&v385[1] + 8);
    MEMORY[0x1EEE9AC00](v203, v204);
    v305 = &v290 + 8;
    v306 = v207;
    v292 = &v325;
    v293 = v6;
    v294 = v6;
    v295 = v314;
    LOBYTE(v296) = v313;
    v297 = v314;
    if (v207 > 0 && v206)
    {
      v303 = v298;
      v208 = *(v191 + 32);
      LODWORD(v317) = *(v308 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v485 = v328;
      v486 = v329;
      v487 = v330;
      v488 = v331;
      v483 = v326;
      v484 = v327;
      sub_1AF5DD298(&v483, &v524);
      v209 = (v205 + 24);
      while (1)
      {
        v316 = v206;
        v50 = v208;
        v52 = *(v209 - 6);
        v210 = *(v209 - 5);
        v44 = *(v209 - 4);
        v211 = *v209;
        v315 = *(v209 - 1);
        v51 = v209[2];
        v310 = v209[1];
        v311 = v211;
        v318 = v13;
        if (v317)
        {
          v212 = *(v51 + 376);

          os_unfair_lock_lock(v212);
          os_unfair_lock_lock(*(v51 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v50);
        v213 = *(v191 + 64);
        v522[0] = *(v191 + 48);
        v522[1] = v213;
        v523 = *(v191 + 80);
        v214 = *(*(*(*(v51 + 40) + 16) + 32) + 16) + 1;
        *(v191 + 48) = ecs_stack_allocator_allocate(*(v191 + 32), 48 * v214, 8);
        *(v191 + 56) = v214;
        *(v191 + 72) = 0;
        *(v191 + 80) = 0;
        *(v191 + 64) = 0;
        LOBYTE(v475[0]) = 1;
        *&v524 = v308;
        *(&v524 + 1) = v51;
        *&v525 = v191;
        *(&v525 + 1) = v44;
        v526 = (v210 - v52 + v44);
        v527 = v306;
        v528 = v52;
        v529 = v210;
        v530 = 0;
        v531 = 0;
        v532 = 1;
        v533 = v315;
        v534 = v311;
        v535 = v310;
        v13 = v318;
        sub_1AF8F9EFC(&v524, sub_1AF902648, v305);
        if (v13)
        {
          break;
        }

        v461 = v309;
        v462 = v432;
        v463 = v433;
        sub_1AF630994(v191, &v461, v522);
        sub_1AF62D29C(v51);
        ecs_stack_allocator_pop_snapshot(v50);
        v208 = v50;
        v215 = v316;
        if (v317)
        {
          os_unfair_lock_unlock(*(v51 + 344));
          os_unfair_lock_unlock(*(v51 + 376));
        }

        v209 += 6;
        v206 = v215 - 1;
        if (!v206)
        {
          v217 = MEMORY[0x1E69E6720];
          sub_1AF8FE1E4(v385, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
          sub_1AF8FE1E4(v385, &qword_1ED725EA0, &type metadata for QueryResult, v217, sub_1AF90540C);
          v6 = v312;
          goto LABEL_198;
        }
      }

      *&v475[0] = v309;
      *(v475 + 8) = v432;
      *(&v475[1] + 8) = v433;
      v288 = v475;
      v289 = v522;
      goto LABEL_278;
    }

    sub_1AF8FE1E4(v385, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
LABEL_198:
    v216 = v307;
  }

  else
  {
    v216 = v307;
  }

  v218 = *(v216 + 496);
  v520[0] = *(v216 + 480);
  v520[1] = v218;
  v521 = *(v216 + 512);
  sub_1AF6B06C0(v6, v520, 0x200000000, &v389);
  if (v389)
  {
    v516 = v392;
    v517 = v393;
    v518 = v394;
    v514 = v390;
    v515 = v391;
    v519 = v395;
    v513 = v389;
    v219 = v314;

    sub_1AFD1B464(&v513, v219);

    sub_1AF8FE1E4(&v389, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

  v512 = *(v307 + 472);
  v220 = *(v307 + 456);
  v511[0] = *(v307 + 440);
  v511[1] = v220;
  sub_1AF6B06C0(v6, v511, 0x200000000, &v396);
  if (v396)
  {
    v507 = v399;
    v508 = v400;
    v509 = v401;
    v505 = v397;
    v506 = v398;
    v510 = v402;
    v504 = v396;
    v221 = v314;

    sub_1AFD1C044(&v504, v221);

    sub_1AF8FE1E4(&v396, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

  v503 = *(v307 + 712);
  v222 = *(v307 + 696);
  v502[0] = *(v307 + 680);
  v502[1] = v222;
  sub_1AF6B06C0(v6, v502, 0x200000000, &v403);
  if (v403)
  {
    v498 = v406;
    v499 = v407;
    v500 = v408;
    v496 = v404;
    v497 = v405;
    v501 = v409;
    v495 = v403;
    v223 = v314;

    sub_1AFD15768(&v495, &v325, v223);

    sub_1AF8FE1E4(&v403, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

  v224 = *(v307 + 576);
  v493[0] = *(v307 + 560);
  v493[1] = v224;
  v494 = *(v307 + 592);
  sub_1AF6B06C0(v6, v493, 0x200000000, v410);
  if (*&v410[0])
  {
    if (v414 >= 1 && v412)
    {
      v225 = v411;
      v309 = v413;
      v226 = v411 + 48 * v412;
      v300 = v226;
      do
      {
        v227 = *(v225 + 40);
        v228 = *(v227 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v228);
        os_unfair_lock_lock(*(v227 + 344));
        v229 = *(v227 + 24);

        *&v485 = 0;
        v483 = 0u;
        v484 = 0u;
        memset(v475, 0, 40);
        v230 = sub_1AF65A4B4(v229, &type metadata for TextureGPURuntime, &off_1F2544388, 0, 0, &v483, v475);

        sub_1AF5DD41C(v475);
        sub_1AF5DD41C(&v483);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v230);
          v6 = v312;
        }

        else
        {
          v308 = v225;
          v231 = v13;
          v233 = *(v227 + 232);
          v232 = *(v227 + 240);
          LODWORD(v303) = *(v227 + 120);
          v317 = *(v227 + 28);
          LODWORD(v316) = *(v227 + 32);
          v234 = *(v227 + 16);
          v235 = *(v227 + 40);
          v236 = v235[200];
          v315 = *(*(v234 + 88) + 8 * v230 + 32);

          if ((v236 & 1) != 0 || *(v315 + 200) == 1)
          {
            *(v234 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v235 = *(v227 + 40);
          }

          if (v235[212])
          {
            LODWORD(v306) = 0;
          }

          else
          {
            LODWORD(v306) = *(v315 + 212);
          }

          LODWORD(v305) = v235[208];
          v311 = *(v227 + 128);
          v237 = *(v227 + 256);
          sub_1AF5B4FCC(v235, v233, v232, 0, v227);
          v238 = v231;
          v310 = *(v227 + 256);
          v239 = v310 - v237;
          if (v310 == v237)
          {
            v240 = 0;
          }

          else
          {
            v240 = v237;
          }

          *&v475[0] = v240;
          v241 = *(*(v227 + 40) + 24);
          v242 = *(v241 + 16);
          if (v242)
          {
            v318 = v231;
            v301 = v241;
            v302 = v237;
            v243 = v241 + 32;

            for (m = 0; m != v242; ++m)
            {
              v245 = v243 + 40 * m;
              if ((*(v245 + 32) & 1) == 0)
              {
                v246 = *(v315 + 24);
                v247 = *(v246 + 16);
                if (v247)
                {
                  v248 = (v246 + 32);
                  while (*v248 != *v245)
                  {
                    v248 += 5;
                    if (!--v247)
                    {
                      goto LABEL_223;
                    }
                  }
                }

                else
                {
LABEL_223:
                  sub_1AF640BC8();
                }
              }
            }

            v237 = v302;
            v238 = v318;
          }

          v225 = v308;
          if (*(v234 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v234 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v227 + 72) * v239);
          }

          if (*(v227 + 184))
          {
            v249 = 0;
          }

          else
          {
            v249 = *(v227 + 168);
          }

          v420 = 0;

          MEMORY[0x1EEE9AC00](v250, v251);
          v252 = v317;
          v253 = v316;
          v290 = 0u;
          v291 = v475;
          v292 = v311;
          v293 = &v420;
          LOBYTE(v294) = v305;
          HIDWORD(v294) = v230;
          LOBYTE(v295) = v306;
          v296 = v309;
          *&v484 = v249;
          DWORD2(v484) = -1;
          *&v485 = v237;
          *(&v485 + 1) = v310;
          *&v486 = v237;
          *(&v486 + 1) = v310;
          *&v483 = v237;
          *(&v483 + 1) = v310;
          if (v239 >= 1)
          {
            v254 = v303;
            do
            {
              LOBYTE(v415[0]) = v253;
              sub_1AF6248A8(v230, v252 | (v253 << 32), v254, v234, &v483, sub_1AF5C44B0);
              v253 = v316;
              v252 = v317;
            }

            while ((*(&v483 + 1) - v483) > 0);
          }

          v13 = v238;
          v255 = *(v227 + 192);
          v6 = v312;
          v226 = v300;
          if (v255)
          {
            v256 = *(v227 + 208);
            v257 = v310;
            sub_1AF75D364(v237, v310, v255);
            sub_1AF75D364(v237, v257, v256);
          }
        }

        v225 += 48;
        os_unfair_lock_unlock(*(v227 + 344));
        os_unfair_lock_unlock(*(v227 + 376));
      }

      while (v225 != v226);
    }

    sub_1AF8FE1E4(v410, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

  v492 = *(v307 + 632);
  v258 = *(v307 + 616);
  v491[0] = *(v307 + 600);
  v491[1] = v258;
  sub_1AF6B06C0(v6, v491, 0x200000000, v415);
  v321 = v415[2];
  v322 = v416;
  v323 = v417;
  v324 = v418;
  v319 = v415[0];
  v320 = v415[1];
  v311 = *&v415[0];
  if (*&v415[0])
  {
    v261 = *(&v415[2] + 1);
    v262 = *(&v416 + 1);
    v263 = *(&v417 + 1);
    v310 = v417;
    v430 = *(v415 + 8);
    v431 = *(&v415[1] + 8);
    MEMORY[0x1EEE9AC00](v259, v260);
    v308 = &v290 + 8;
    v309 = v264;
    v292 = v6;
    v293 = &v325;
    v294 = v6;
    v295 = v314;
    LOBYTE(v296) = v313;
    v297 = v314;
    v265 = v307;
    if (v264 > 0 && v262)
    {
      v306 = v298;
      v50 = *(v263 + 32);
      LODWORD(v318) = *(v310 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v475[2] = v321;
      v476 = v322;
      v477 = v323;
      v478 = v324;
      v475[0] = v319;
      v475[1] = v320;
      sub_1AF5DD298(v475, &v483);
      v266 = (v261 + 24);
      while (1)
      {
        v191 = v263;
        v44 = *(v266 - 6);
        v52 = *(v266 - 5);
        v267 = *(v266 - 4);
        v268 = *v266;
        v316 = *(v266 - 1);
        v317 = v262;
        v315 = v268;
        v51 = v266[2];
        v313 = v266[1];
        if (v318)
        {
          v269 = *(v51 + 376);

          os_unfair_lock_lock(v269);
          os_unfair_lock_lock(*(v51 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v50);

        sub_1AF630914(v270, v191, v419);

        LOBYTE(v420) = 1;
        *&v483 = v310;
        *(&v483 + 1) = v51;
        *&v484 = v191;
        *(&v484 + 1) = v267;
        *&v485 = (v52 - v44 + v267);
        *(&v485 + 1) = v309;
        *&v486 = v44;
        *(&v486 + 1) = v52;
        v487 = 0uLL;
        LOBYTE(v488) = 1;
        *(&v488 + 1) = v316;
        v489 = v315;
        v490 = v313;
        sub_1AF889804(&v483, sub_1AF902614, v308);
        if (v13)
        {
          break;
        }

        v464 = v311;
        v465 = v430;
        v466 = v431;
        sub_1AF630994(v191, &v464, v419);
        sub_1AF62D29C(v51);
        ecs_stack_allocator_pop_snapshot(v50);
        v263 = v191;
        if (v318)
        {
          os_unfair_lock_unlock(*(v51 + 344));
          os_unfair_lock_unlock(*(v51 + 376));
        }

        v266 += 6;
        v262 = v317 - 1;
        if (v317 == 1)
        {
          v271 = MEMORY[0x1E69E6720];
          sub_1AF8FE1E4(v415, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
          sub_1AF8FE1E4(v415, &qword_1ED725EA0, &type metadata for QueryResult, v271, sub_1AF90540C);
          v6 = v312;
          v265 = v307;
          goto LABEL_258;
        }
      }

      v420 = v311;
      v421 = v430;
      v422 = v431;
      v288 = &v420;
      v289 = v419;
      goto LABEL_278;
    }

    sub_1AF8FE1E4(v415, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

  else
  {
    v265 = v307;
  }

LABEL_258:
  v272 = *(v265 + 656);
  v481[0] = *(v265 + 640);
  v481[1] = v272;
  v482 = *(v265 + 672);
  sub_1AF6B06C0(v6, v481, 0x200000000, &v420);
  v310 = v420;
  if (v420)
  {
    v273 = v423;
    v274 = v424;
    v191 = v426;
    v428 = v421;
    v429 = v422;
    v308 = v427;
    v309 = v425;
    if (v427 > 0 && v424)
    {
      v275 = *(v426 + 32);
      v276 = *(v309 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

      sub_1AF8FF144(&v420, v475, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
      v277 = (v273 + 24);
      LODWORD(v307) = v276;
      while (1)
      {
        v278 = *(v277 - 5);
        v311 = *(v277 - 6);
        v279 = *(v277 - 4);
        v280 = *(v277 - 1);
        v315 = *v277;
        v316 = v280;
        v52 = v277[2];
        v313 = v277[1];
        v317 = v274;
        v318 = v13;
        if (v276)
        {
          v281 = *(v52 + 376);

          os_unfair_lock_lock(v281);
          os_unfair_lock_lock(*(v52 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v275);
        v282 = *(v191 + 64);
        v473[0] = *(v191 + 48);
        v473[1] = v282;
        v474 = *(v191 + 80);
        v283 = *(v191 + 32);
        v284 = *(*(*(*(v52 + 40) + 16) + 32) + 16) + 1;
        v44 = v275;

        *(v191 + 48) = ecs_stack_allocator_allocate(v283, 48 * v284, 8);
        *(v191 + 56) = v284;
        *(v191 + 72) = 0;
        *(v191 + 80) = 0;
        *(v191 + 64) = 0;

        LOBYTE(v467) = 1;
        *&v475[0] = v309;
        *(&v475[0] + 1) = v52;
        *&v475[1] = v191;
        *(&v475[1] + 1) = v279;
        *&v475[2] = (v278 - v311 + v279);
        *(&v475[2] + 1) = v308;
        *&v476 = v311;
        *(&v476 + 1) = v278;
        v477 = 0uLL;
        LOBYTE(v478) = 1;
        *(&v478 + 1) = v316;
        v479 = v315;
        v285 = v314;
        v480 = v313;

        v286 = v285;
        v13 = v318;
        sub_1AFD26420(v475, &v325, v286);
        if (v13)
        {
          goto LABEL_279;
        }

        v470 = v310;
        v471 = v428;
        v472 = v429;
        sub_1AF630994(v191, &v470, v473);
        sub_1AF62D29C(v52);
        ecs_stack_allocator_pop_snapshot(v275);
        v6 = v312;
        v276 = v307;
        if (v307)
        {
          os_unfair_lock_unlock(*(v52 + 344));
          os_unfair_lock_unlock(*(v52 + 376));
        }

        v277 += 6;
        v274 = v317 - 1;
        if (v317 == 1)
        {
          v287 = MEMORY[0x1E69E6720];
          sub_1AF8FE1E4(&v420, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
          sub_1AF8FE1E4(&v420, &qword_1ED725EA0, &type metadata for QueryResult, v287, sub_1AF90540C);

          goto LABEL_271;
        }
      }
    }

    sub_1AF8FE1E4(&v420, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }

LABEL_271:
  sub_1AF9024D0(v6, v314, v325);
}

unint64_t sub_1AF8F3060(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 32);
  if (*(v6 + 16) && (result = sub_1AF41A390(a1), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * result);
    if (v9 > 2)
    {
      return result;
    }
  }

  else
  {
    v9 = 0;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v3 + 32);
  *(v3 + 32) = 0x8000000000000000;
  sub_1AF858034(v9 + 1, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + 32) = v15;

  v11 = *(a2 + 32);
  v12 = *(a2 + 8);
  v13 = *(v12 + 192);

  if (v13)
  {
    v14 = *(v12 + 208);
    *(v13 + 8 * (v11 >> 6)) |= 1 << v11;
    *(v14 + 8 * (v11 >> 6)) &= ~(1 << v11);
  }

  sub_1AF705804(v11);
}

id sub_1AF8F3174(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 1) != 0 || (result = [a1 status], result == 5))
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v9 = swift_allocObject();
      v9[2] = a4;
      v9[3] = a3;
      v9[4] = a5;

      sub_1AF66D948(sub_1AF90427C, v9);
    }
  }

  return result;
}

void sub_1AF8F325C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = a3;
  v4 = sub_1AFDFC128();
  MEMORY[0x1EEE9AC00](v4, v5);
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_61:
    byte_1EB6C31AB = 0;
    return;
  }

  v9 = 0;
  v94 = 0;
  v10 = a1 + 32;
  v84 = "rl of an asset (";
  v85 = "_TtC3VFX19MeshReferenceSystem";
  v90 = "atus clear texture ";
  v91 = "equirectangularToCubeMipGen";
  v89 = (v6 + 8);
  v11 = &unk_1ED72C000;
  v95 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v4;
  while (1)
  {
    v12 = (v10 + 8 * v9);
    v13 = v12[1];
    v14 = *v12;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      break;
    }

LABEL_28:
    v33 = swift_weakLoadStrong();
    if (v33)
    {
      if ((v14 != -1 || v13 != 0) && (v14 & 0x80000000) == 0)
      {
        v35 = (v33 + v11[284]);
        if (v35[1] > v14)
        {
          v36 = (*v35 + 12 * v14);
          v37 = *(v36 + 2);
          if (v13 == -1 || v36[2] == v13)
          {
            v38 = *(*(v33 + 144) + 8 * *v36 + 32);
            v39 = *(v38 + 48);
            v40 = (v39 + 32);
            v41 = *(v39 + 16) + 1;
            while (--v41)
            {
              v42 = v40 + 5;
              v43 = *v40;
              v40 += 5;
              if (v43 == &type metadata for TextureFileAsset)
              {
                v44 = (&(*(v42 - 2))[3 * v37].Kind + *(v38 + 128));
                v45 = v44[1];
                v86 = v44[2];
                v46 = v44[3];
                v47 = v44[4];
                v88 = v44[5];
                v92 = v33;
                v48 = v47;

                v97 = v46;

                v92 = v45;
                v87 = v48;
                if (v47)
                {
                  ObjectType = swift_getObjectType();
                  v82 = *(v88 + 8);
                  v83 = ObjectType;

                  v50 = v97;

                  v51 = v48;
                  v82(v86, v50, v83, v88);
                }

                else
                {
                  v61 = qword_1ED730EA0;

                  v62 = v97;

                  if (v61 != -1)
                  {
                    swift_once();
                  }

                  v98 = 0;
                  v99 = 0xE000000000000000;
                  sub_1AFDFE218();
                  MEMORY[0x1B2718AE0](0xD000000000000020, v85 | 0x8000000000000000);
                  MEMORY[0x1B2718AE0](v86, v62);
                  MEMORY[0x1B2718AE0](0xD000000000000016, v84 | 0x8000000000000000);
                  v63 = v99;
                  v88 = v98;
                  v64 = sub_1AFDFDA08();
                  if (qword_1ED731058 != -1)
                  {
                    v79 = v64;
                    swift_once();
                    v64 = v79;
                  }

                  v98 = 0;
                  sub_1AF0D4F18(v64, &v98, v88, v63);

                  sub_1AFDFC018();
                }

                if (qword_1ED730EA0 != -1)
                {
                  swift_once();
                }

                v98 = 0;
                v99 = 0xE000000000000000;
                sub_1AFDFE218();
                MEMORY[0x1B2718AE0](0xD000000000000033, v91 | 0x8000000000000000);
                v65 = sub_1AF656F38();
                MEMORY[0x1B2718AE0](v65);

                MEMORY[0x1B2718AE0](0xD000000000000012, v90 | 0x8000000000000000);
                sub_1AF9027C4(&qword_1EB632790, MEMORY[0x1E6968FB0]);
                v66 = v95;
                v67 = sub_1AFDFEA08();
                MEMORY[0x1B2718AE0](v67);

                v69 = v98;
                v68 = v99;
                v70 = sub_1AFDFDA08();
                if (qword_1ED731058 != -1)
                {
                  v78 = v70;
                  swift_once();
                  v70 = v78;
                }

                v98 = 0;
                sub_1AF0D4F18(v70, &v98, v69, v68);

                v71 = *(v93 + 120);
                v72 = *(v71 + 48);

                os_unfair_lock_lock(v72);
                v73 = *(v71 + 72);
                MEMORY[0x1EEE9AC00](v74, v75);
                v80 = v66;

                v76 = v94;
                v77 = sub_1AF8FA484(sub_1AF751E78, (&v82 - 4), v73);
                v94 = v76;

                *(v71 + 72) = v77;

                os_unfair_lock_unlock(*(v71 + 48));

                (*v89)(v66, v96);
                v11 = &unk_1ED72C000;
                goto LABEL_4;
              }
            }
          }
        }
      }
    }

LABEL_4:
    if (++v9 == v8)
    {
      goto LABEL_61;
    }
  }

  if (v14 == -1 && v13 == 0)
  {
    goto LABEL_27;
  }

  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  v18 = (Strong + v11[284]);
  if (v18[1] <= v14)
  {
    goto LABEL_27;
  }

  v19 = (*v18 + 12 * v14);
  if (v13 != -1 && v19[2] != v13)
  {
    goto LABEL_27;
  }

  v21 = *(v19 + 2);
  v22 = *(*(Strong + 144) + 8 * *v19 + 32);
  v97 = Strong;
  v23 = thread_worker_index(v16);
  if (*v23 == -1)
  {
    v24 = *(v97 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  }

  else
  {
    v24 = (*(v97 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *v23 + 8);
  }

  v25 = *v24;
  v26 = *(v22 + 192);
  if (v26)
  {
    v27 = *(v22 + 208);
    *(v26 + 8 * (v21 >> 6)) |= 1 << v21;
    *(v27 + 8 * (v21 >> 6)) &= ~(1 << v21);
  }

  if (*(*(v22 + 40) + 213) != 1)
  {
LABEL_27:

    goto LABEL_28;
  }

  v28 = *(v22 + 48);
  v29 = (v28 + 32);
  v30 = *(v28 + 16) + 1;
  v88 = v25;
  while (--v30)
  {
    v31 = v29 + 5;
    v32 = *v29;
    v29 += 5;
    if (v32 == &type metadata for PropagateDirtiness)
    {
      v92 = *(v31 - 2);
      goto LABEL_44;
    }
  }

  v92 = 0;
LABEL_44:
  v52 = *(v22 + 128);
  v53 = *(v22 + 184);

  if ((v53 & 1) == 0)
  {
    v55 = *(*(v22 + 168) + 4 * v21);
    v56 = (v52 + v92 + 8 * v21);
    v57 = *(*(v54 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v55 + 8);

    v58 = *v56;
    v59 = v56[1];
    if (v58 != -1 || v59 != 0)
    {
      sub_1AF70D248(&v98, v55 | (v57 << 32), v58 | (v59 << 32));
    }

    v11 = &unk_1ED72C000;
    goto LABEL_28;
  }

  v81 = 0;
  v80 = 204;
  sub_1AFDFE518();
  __break(1u);
}

uint64_t sub_1AF8F3A5C(__n128 *a1, uint64_t a2, unint64_t a3, void *a4, _OWORD *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v54 = a7;
  v55 = a6;
  v56 = a5;
  v59.n128_u64[0] = a3;
  v53 = a1;
  v57 = a9;
  v61 = sub_1AFDFC128();
  v60 = *(v61 - 8);
  v11 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61, v12);
  v13 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v52 - v16;
  v19 = a4[2];
  v18 = a4[3];
  v20 = a4[4];
  v58.n128_u64[0] = v9;
  if (v20)
  {
    v21 = a4[5];
    ObjectType = swift_getObjectType();
    (*(v21 + 8))(v19, v18, ObjectType, v21);
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v64.n128_u64[0] = 0;
    v64.n128_u64[1] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF2C630);
    MEMORY[0x1B2718AE0](v19, v18);
    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2C660);
    v23 = v64;
    v24 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v64.n128_u64[0] = 0;
    sub_1AF0D4F18(v24, &v64, v23.n128_i64[0], v23.n128_i64[1]);

    sub_1AFDFC018();
  }

  v62 = v17;
  if (*(*(v59.n128_u64[0] + 8) + 32) == 1)
  {
    v64.n128_u8[0] = 0;
    sub_1AF80F414(0);
  }

  v25 = v57;
  if (!v57)
  {
    return (*(v60 + 8))(v62, v61);
  }

  v59.n128_u64[0] = *(v57 + 120);
  v26 = v60;
  v27 = v61;
  (*(v60 + 16))(v13, v62, v61);
  v28 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v29 = (v11 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v26 + 32))(v30 + v28, v13, v27);
  v31 = (v30 + v29);
  v32 = v56;
  v33 = v56[1];
  *v31 = *v56;
  v31[1] = v33;
  v31[2] = v32[2];
  *(v31 + 42) = *(v32 + 42);
  *(v30 + ((v29 + 65) & 0xFFFFFFFFFFFFFFF8)) = v25;
  if (v54)
  {
    v34 = v58.n128_u64[0];
    if (v55)
    {
      v35 = 2;
      swift_retain_n();

      v36 = 0;
      v30 = 0;
      v37 = 0;
    }

    else
    {
      swift_retain_n();

      v37 = 0;
      v35 = 0;
      v36 = sub_1AF903EE0;
    }
  }

  else
  {
    swift_retain_n();

    v35 = 1;
    v36 = sub_1AF903EE0;
    v34 = v58.n128_u64[0];
    v37 = v55;
  }

  sub_1AF74D574(0, v32, v36, v30, v37, v35, &v64);
  if (v34)
  {
    sub_1AF74E888(v36, v30, v37, v35);

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    swift_getErrorValue();
    v39 = sub_1AFDFF1D8();
    v41 = v40;
    v42 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v51 = v42;
      swift_once();
      v42 = v51;
    }

    *&v63[0] = 0;
    sub_1AF0D4F18(v42, v63, v39, v41);

    return (*(v60 + 8))(v62, v61);
  }

  else
  {
    sub_1AF74E888(v36, v30, v37, v35);

    v43 = v66;
    v44 = v67;
    v45 = v69;
    if (v65.n128_u64[1] >> 1 != 0xFFFFFFFF || v68 >> 24)
    {
      v58 = v65;
      v59 = v64;
      if ((v68 & 0x8000000000000000) != 0)
      {
        v46 = v68 & 0x7FFFFFFFFFFFFFFFLL;
        (*(v60 + 8))(v62, v61);

        v47 = v53;
        v48 = v53[1];
        v63[0] = *v53;
        v63[1] = v48;
        v49 = v53[3];
        v63[2] = v53[2];
        v63[3] = v49;
        result = sub_1AF478A6C(v63);
        v50 = v58;
        *v47 = v59;
        v47[1] = v50;
        v47[2].n128_u64[0] = v43;
        v47[2].n128_u64[1] = v44;
        v47[3].n128_u64[0] = v46;
        v47[3].n128_u64[1] = v45;
      }

      else
      {
        result = sub_1AFDFE518();
        __break(1u);
      }
    }

    else
    {
      (*(v60 + 8))(v62, v61, v64);
    }
  }

  return result;
}

uint64_t sub_1AF8F4120(void *a1, uint64_t a2, uint64_t a3, void *a4, _OWORD *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v54 = a7;
  v55 = a6;
  v56 = a5;
  v57 = a3;
  v59 = a1;
  v62 = a9;
  v13 = sub_1AFDFC128();
  v60 = *(v13 - 8);
  v14 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v53 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = a4[2];
  v18 = a4[3];
  v20 = a4[4];
  v58 = v11;
  v61 = &v52 - v21;
  if (v20)
  {
    v22 = a4[5];
    ObjectType = swift_getObjectType();
    (*(v22 + 8))(v19, v18, ObjectType, v22);
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v64 = 0;
    *(&v64 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF2C630);
    MEMORY[0x1B2718AE0](v19, v18);
    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2C660);
    v24 = v64;
    v25 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    *&v64 = 0;
    sub_1AF0D4F18(v25, &v64, v24, *(&v24 + 1));

    sub_1AFDFC018();
  }

  v26 = v62;
  if (*(*(v57 + 8) + 32) == 1)
  {
    LOBYTE(v64) = 0;
    sub_1AF80F414(0);
  }

  if (!v26)
  {
    (*(v60 + 8))(v61, v13);
LABEL_27:
    v48 = 0;
LABEL_28:
    v49 = v59;
    result = swift_unknownObjectRelease();
    *v49 = v48;
    return result;
  }

  v27 = *(a11 + 264);
  v52 = *(v26 + 120);
  v28 = v60;
  v29 = v53;
  (*(v60 + 16))(v53, v61, v13);
  v30 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v31 = (v14 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 65) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = *(v28 + 32);
  v57 = v13;
  v34(v33 + v30, v29, v13);
  v35 = (v33 + v31);
  v36 = v56;
  v37 = v56[1];
  *v35 = *v56;
  v35[1] = v37;
  v35[2] = v36[2];
  *(v35 + 42) = *(v36 + 42);
  *(v33 + v32) = v62;
  *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;
  if (v54)
  {
    v38 = v58;
    if (v55)
    {
      v39 = 2;
      swift_retain_n();

      swift_unknownObjectRetain();

      v40 = 0;
      v33 = 0;
      v41 = 0;
    }

    else
    {
      swift_retain_n();

      swift_unknownObjectRetain();
      v41 = 0;
      v39 = 0;
      v40 = sub_1AF902750;
    }

    v42 = v57;
    v43 = v61;
  }

  else
  {
    swift_retain_n();

    swift_unknownObjectRetain();
    v39 = 1;
    v40 = sub_1AF902750;
    v42 = v57;
    v38 = v58;
    v43 = v61;
    v41 = v55;
  }

  sub_1AF74D574(1, v36, v40, v33, v41, v39, &v64);
  if (v38)
  {
    sub_1AF74E888(v40, v33, v41, v39);

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    swift_getErrorValue();
    v44 = sub_1AFDFF1D8();
    v46 = v45;
    v47 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v51 = v47;
      swift_once();
      v47 = v51;
    }

    v63 = 0;
    sub_1AF0D4F18(v47, &v63, v44, v46);

    (*(v60 + 8))(v43, v42);
    v48 = 0;
    goto LABEL_28;
  }

  sub_1AF74E888(v40, v33, v41, v39);

  v48 = v64;
  if (v65 >> 1 == 0xFFFFFFFF && !(v66 >> 24))
  {

    (*(v60 + 8))(v43, v42);
    goto LABEL_27;
  }

  if ((v66 & 0x8000000000000000) == 0)
  {

    (*(v60 + 8))(v43, v42);
    goto LABEL_28;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF8F4788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a8;
  sub_1AF8DE828(v13);
  v9 = *(a1 + 32);

  v10 = sub_1AF6496EC(v9);

  sub_1AFC3F950(v10, sub_1AF903F9C);

  v11 = sub_1AF6496EC(v9);

  return sub_1AFC3F3D8(v11, sub_1AF903FC8);
}

uint64_t sub_1AF8F48E0(_OWORD *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v40 = a8;
  v41 = a6;
  *&v39 = a4;
  v38 = a1;
  v11 = sub_1AFDFC128();
  v42 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2[2];
  v16 = a2[3];
  if (a2[4])
  {
    v17 = a2[5];
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(v15, v16, ObjectType, v17);
  }

  else
  {
    v37 = v11;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF2C630);
    MEMORY[0x1B2718AE0](v15, v16);
    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2C660);
    v19 = v44;
    v20 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    *&v44 = 0;
    sub_1AF0D4F18(v20, &v44, v19, *(&v19 + 1));

    sub_1AFDFC018();
    v11 = v37;
  }

  if (*(*(a3 + 8) + 32) == 1)
  {
    LOBYTE(v44) = 0;
    sub_1AF80F414(0);
  }

  if (!v41)
  {
    goto LABEL_24;
  }

  sub_1AF74D574(0, v39, 0, 0, 0, 2, &v44);
  if (v8)
  {

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    swift_getErrorValue();
    v21 = sub_1AFDFF1D8();
    v23 = v22;
    v24 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v36 = v24;
      swift_once();
      v24 = v36;
    }

    *&v43[0] = 0;
    sub_1AF0D4F18(v24, v43, v21, v23);

    goto LABEL_24;
  }

  v25 = v48;
  if (*(&v45 + 1) >> 1 == 0xFFFFFFFFLL && v48 >> 24 == 0)
  {

LABEL_24:
    sub_1AF8F3060(v14, a3);
    return (*(v42 + 8))(v14, v11);
  }

  v40 = v45;
  if ((v48 & 0x8000000000000000) != 0)
  {
    v27 = v11;
    v39 = v44;
    v28 = v46;
    v29 = v47;
    v30 = v49;

    v31 = v38;
    v32 = v38[1];
    v43[0] = *v38;
    v43[1] = v32;
    v33 = v38[3];
    v43[2] = v38[2];
    v43[3] = v33;
    sub_1AF478A6C(v43);
    result = (*(v42 + 8))(v14, v27);
    v35 = v40;
    *v31 = v39;
    v31[1] = v35;
    *(v31 + 4) = v28;
    *(v31 + 5) = v29;
    *(v31 + 6) = v25 & 0x7FFFFFFFFFFFFFFFLL;
    *(v31 + 7) = v30;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF8F4DAC(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v30 = a4;
  v31 = a6;
  v32 = a1;
  v9 = sub_1AFDFC128();
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[2];
  v13 = a2[3];
  if (a2[4])
  {
    v15 = a2[5];
    ObjectType = swift_getObjectType();
    (*(v15 + 8))(v14, v13, ObjectType, v15);
  }

  else
  {
    v29 = v9;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v35 = 0;
    *(&v35 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF2C630);
    MEMORY[0x1B2718AE0](v14, v13);
    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2C660);
    v17 = v35;
    v18 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    *&v35 = 0;
    sub_1AF0D4F18(v18, &v35, v17, *(&v17 + 1));

    sub_1AFDFC018();
    v9 = v29;
  }

  if (*(*(a3 + 8) + 32) == 1)
  {
    LOBYTE(v35) = 0;
    sub_1AF80F414(0);
  }

  if (!v31)
  {
    goto LABEL_20;
  }

  sub_1AF74D574(1, v30, 0, 0, 0, 2, &v35);
  if (v6)
  {

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    swift_getErrorValue();
    v19 = sub_1AFDFF1D8();
    v21 = v20;
    v22 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v27 = v22;
      swift_once();
      v22 = v27;
    }

    v34 = 0;
    sub_1AF0D4F18(v22, &v34, v19, v21);

    goto LABEL_20;
  }

  v23 = v35;
  if (v36 >> 1 == 0xFFFFFFFF && !(v37 >> 24))
  {

LABEL_20:
    v24 = v32;
    swift_unknownObjectRelease();
    *v24 = 0;
    sub_1AF8F3060(v12, a3);
    return (*(v33 + 8))(v12, v9);
  }

  if ((v37 & 0x8000000000000000) == 0)
  {

    v26 = v32;
    swift_unknownObjectRelease();
    *v26 = v23;
    return (*(v33 + 8))(v12, v9);
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF8F51F8(uint64_t a1, uint64_t a2, char **a3)
{
  sub_1AF8DE828(v15);
  v5 = *(a1 + 32);

  v6 = sub_1AF6496EC(v5);

  v7 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1AF4217DC(0, *(v7 + 2) + 1, 1, v7);
    *a3 = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1AF4217DC(v9 > 1, v10 + 1, 1, v7);
    *a3 = v7;
  }

  *(v7 + 2) = v10 + 1;
  *&v7[8 * v10 + 32] = v6;

  v11 = sub_1AF6496EC(v5);

  MEMORY[0x1EEE9AC00](v12, v13);
  return sub_1AFC3F3D8(v11, sub_1AF904000);
}

uint64_t sub_1AF8F538C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v132 = a6;
  sub_1AF0D4E74();
  v113 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v112 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1AFDFC298();
  v18 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v19);
  v110 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1AFDFC128();
  v21 = *(v124 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v124, v23);
  v121 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v126 = &v104 - v26;
  v27 = sub_1AF8D9EB0(*a2);
  v28 = v27[2];
  if (!v28)
  {
  }

  v104 = a1;
  v145 = MEMORY[0x1E69E7CC0];
  v29 = v27;
  v151 = v28;
  sub_1AFDFE368();
  v122 = 0uLL;
  v123 = 0;
  v31 = *(v21 + 16);
  v30 = v21 + 16;
  v134 = v31;
  v32 = *(v30 + 64);
  v129 = *(a4 + 8);
  v107 = v29;
  v33 = v29 + ((v32 + 32) & ~v32);
  v105 = a8;
  v119 = *(a8 + 264);
  v120 = v32;
  v128 = *(v30 + 56);
  v118 = (v32 + 16) & ~v32;
  v117 = (v22 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
  v116 = (v117 + 65) & 0xFFFFFFFFFFFFFFF8;
  v115 = (v116 + 15) & 0xFFFFFFFFFFFFFFF8;
  v114 = (v30 + 16);
  v109 = (v18 + 32);
  v127 = (v30 - 8);
  v106 = 0x80000001AFF3A370;
  LODWORD(v133) = 1;
  v108 = xmmword_1AFE431C0;
  v34 = v132;
  v130 = a3;
  v35 = v124;
  v131 = v30;
  v36 = v126;
  do
  {
    v137 = v33;
    v134(v36);
    v38 = *a3;
    if (v133)
    {
      v39 = a3[2];
      v136 = a3[1];
      v40 = *(a3 + 24);
    }

    else
    {
      v41 = v122;
      v141 = v122;
      v42 = v122 >> 8;
      v43 = v122 >> 16;
      v44 = v122 >> 24;
      v45 = DWORD1(v122);
      v46 = DWORD2(v122);
      v47 = HIDWORD(*(&v122 + 1));
      v125 = v38;
      v48 = v123;
      LOWORD(v142) = v123;
      v135 = v9;
      v49 = BYTE2(v123);
      BYTE2(v142) = BYTE2(v123);
      v136 = sub_1AF445CA8(&v141);
      LOBYTE(v141) = v41;
      BYTE1(v141) = v42;
      BYTE2(v141) = v43;
      BYTE3(v141) = v44;
      v30 = v131;
      *(&v141 + 4) = __PAIR64__(v46, v45);
      v36 = v126;
      HIDWORD(v141) = v47;
      a3 = v130;
      BYTE2(v142) = v49;
      v9 = v135;
      v35 = v124;
      v34 = v132;
      LOWORD(v142) = v48;
      v38 = v125;
      v39 = sub_1AF445CB0(&v141);
      v40 = 0x80;
    }

    if (*(v129 + 32) == 1)
    {
      LOBYTE(v141) = 0;
      sub_1AF80F414(0);
    }

    *&v149 = v38;
    *(&v149 + 1) = v136;
    *v150 = v39;
    v150[8] = v40;
    *&v150[9] = *(a3 + 25);
    *&v150[25] = *(a3 + 41);
    v150[41] = *(a3 + 57);
    if (!v34)
    {
      v37 = v30;
      (*v127)(v36, v35);
      goto LABEL_4;
    }

    v50 = v121;
    (v134)(v121, v36, v35);
    v51 = v9;
    v52 = v115;
    v53 = swift_allocObject();
    (*v114)(v53 + v118, v50, v35);
    v54 = (v53 + v117);
    v55 = *v150;
    *v54 = v149;
    v54[1] = v55;
    v54[2] = *&v150[16];
    *(v54 + 42) = *&v150[26];
    *(v53 + v116) = v34;
    *(v53 + v52) = v119;
    swift_retain_n();

    swift_unknownObjectRetain();
    sub_1AF74D574(1, &v149, sub_1AF9070B8, v53, 0, 0, &v146);
    v9 = v51;
    if (v51)
    {

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      swift_getErrorValue();
      v56 = sub_1AFDFF1D8();
      v58 = v57;
      v59 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      v135 = v51;
      if (qword_1ED730E98 != -1)
      {
        swift_once();
      }

      sub_1AF8FE14C(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v60 = swift_allocObject();
      *(v60 + 16) = v108;
      *(v60 + 56) = MEMORY[0x1E69E6158];
      *(v60 + 64) = sub_1AF0D544C();
      *(v60 + 32) = v56;
      *(v60 + 40) = v58;

      sub_1AFDFC4C8();

      v61 = v110;
      sub_1AFDFC288();
      v62 = v113[12];
      v63 = v113[16];
      v64 = v112;
      v65 = &v112[v113[20]];
      (*v109)(v112, v61, v111);
      *(v64 + v62) = v59;
      *(v64 + v63) = 0;
      *v65 = v56;
      v65[1] = v58;
      sub_1AFDFC608();

      v34 = v132;

      sub_1AF904B7C(v64, sub_1AF0D4E74);
      v36 = v126;
      v35 = v124;
      (*v127)(v126, v124);
      v9 = 0;
      a3 = v130;
      v37 = v131;
    }

    else
    {
      v37 = v131;

      v66 = v146;
      if (v147 >> 1 == 0xFFFFFFFF && !(v148 >> 24))
      {
        v34 = v132;

        (*v127)(v36, v35);
        a3 = v130;
        goto LABEL_4;
      }

      v34 = v132;
      if ((v148 & 0x8000000000000000) != 0)
      {
        sub_1AFDFE518();
        __break(1u);
        goto LABEL_53;
      }

      a3 = v130;
      if (v133)
      {
        goto LABEL_26;
      }

      v141 = v122;
      v70 = v122 >> 8;
      v136 = v122 >> 16;
      v135 = (v122 >> 24);
      v71 = DWORD1(v122);
      v72 = HIDWORD(*(&v122 + 1));
      LOWORD(v142) = v123;
      BYTE2(v142) = BYTE2(v123);
      v73 = sub_1AF467494(&v141);
      if (v73 == [v66 pixelFormat])
      {
        v37 = v131;
        v34 = v132;
LABEL_26:
        CFXTextureDescriptorFromMTLTexture(v66, v67, v68, v69, &v141);
        v122 = v141;
        v123 = v142;
        (*v127)(v36, v35);
        LODWORD(v133) = 0;
        goto LABEL_4;
      }

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v141 = 0;
      *(&v141 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v140 = 0xD000000000000026;
      *(&v140 + 1) = v106;
      v74 = [v66 label];
      if (v74)
      {
        v75 = v74;
        v76 = sub_1AFDFCEF8();
        v133 = v71;
        v77 = v72;
        v78 = v70;
        v70 = v76;
        v80 = v79;

        v81 = v70;
        LOBYTE(v70) = v78;
        LODWORD(v72) = v77;
        LODWORD(v71) = v133;
      }

      else
      {
        v80 = 0xE300000000000000;
        v81 = 4271950;
      }

      MEMORY[0x1B2718AE0](v81, v80);

      MEMORY[0x1B2718AE0](10272, 0xE200000000000000);
      LOBYTE(v141) = v122;
      BYTE1(v141) = v70;
      BYTE2(v141) = v136;
      BYTE3(v141) = v135;
      *(&v141 + 4) = __PAIR64__(DWORD2(v122), v71);
      HIDWORD(v141) = v72;
      BYTE2(v142) = BYTE2(v123);
      LOWORD(v142) = v123;
      *(&v142 + 3) = v138;
      HIBYTE(v142) = v139;
      v82 = sub_1AF467494(&v141);
      v83 = sub_1AF4720E8(v82);
      MEMORY[0x1B2718AE0](v83);

      MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
      v84 = sub_1AF4720E8([v66 pixelFormat]);
      MEMORY[0x1B2718AE0](v84);

      v85 = v140;
      v86 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v87 = v86;
        swift_once();
        v86 = v87;
      }

      *&v141 = 0;
      sub_1AF0D4F18(v86, &v141, v85, *(&v85 + 1));

      sub_1AF8FE1E4(&v146, &unk_1ED725A60, &type metadata for TextureCache.Texture, MEMORY[0x1E69E6720], sub_1AF90540C);
      v36 = v126;
      (*v127)(v126, v35);
      LODWORD(v133) = 0;
      v37 = v131;
      v34 = v132;
    }

LABEL_4:
    sub_1AFDFE328();
    sub_1AFDFE398();
    sub_1AFDFE3A8();
    sub_1AFDFE348();
    v33 = &v137[v128];
    --v151;
    v30 = v37;
  }

  while (v151);

  v88 = v145;
  if (v133)
  {
  }

  v143 = v122;
  LOWORD(v144) = v123;
  BYTE2(v144) = BYTE2(v123);
  v89 = *(v145 + 16);
  if (!v89)
  {
  }

  sub_1AF466BDC(3, &v143);
  sub_1AF4674C8(v89, &v143);
  v90 = *(v105 + 16);
  v141 = v143;
  v142 = v144;
  v91 = CFXGPUDeviceCreateTexture(v90, &v141);
  if (!v91)
  {

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v141 = 0;
    *(&v141 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    v140 = v141;
    MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF3A330);
    v141 = v143;
    v142 = v144;
    type metadata accessor for TextureDescriptor(0);
    sub_1AFDFE458();
    v101 = v140;
    v102 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v103 = v102;
      swift_once();
      v102 = v103;
    }

    *&v141 = 0;
    sub_1AF0D4F18(v102, &v141, v101, *(&v101 + 1));
  }

  v92 = v91;
  v93 = sub_1AF6F3F0C();
  v135 = v9;
  if (v9)
  {
LABEL_53:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v94 = v93;
  v95 = sub_1AFDFCEC8();
  [v94 pushDebugGroup_];

  sub_1AF6F3BD8();
  v96 = *(v88 + 16);
  if (v96)
  {
    for (i = 0; i != v96; ++i)
    {
      v98 = *(v88 + 32 + 8 * i);
      if (v98)
      {
        [v94 copyFromTexture:v98 sourceSlice:0 sourceLevel:0 toTexture:v92 destinationSlice:i destinationLevel:0 sliceCount:1 levelCount:1];
      }
    }
  }

  swift_unknownObjectRelease();

  [v94 popDebugGroup];
  swift_unknownObjectRelease();
  v100 = v104;
  result = swift_unknownObjectRelease();
  *v100 = v92;
  return result;
}

uint64_t sub_1AF8F6528(uint64_t a1, unsigned int *a2, void *a3, uint64_t a4, char **a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v14 = *(a1 + 32);

  v15 = sub_1AF64F35C(v14, 2);

  if (v15 & 1) != 0 || (result = sub_1AF679254(*a2), (result))
  {
    v24 = a8;

    v17 = sub_1AF6496EC(v14);

    v18 = *a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v18;
    v23 = a6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_1AF4217DC(0, *(v18 + 2) + 1, 1, v18);
      *a5 = v18;
    }

    v21 = *(v18 + 2);
    v20 = *(v18 + 3);
    if (v21 >= v20 >> 1)
    {
      v18 = sub_1AF4217DC(v20 > 1, v21 + 1, 1, v18);
      *a5 = v18;
    }

    *(v18 + 2) = v21 + 1;
    *&v18[8 * v21 + 32] = v17;

    v22 = sub_1AF6496EC(v14);

    return sub_1AF8EB9E8(a3, a2, v22, a4, v23, a7, v24, *(a9 + 528));
  }

  return result;
}

uint64_t sub_1AF8F66D4()
{

  return v0;
}

uint64_t sub_1AF8F6784()
{
  sub_1AF8F66D4();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF8F67DC()
{
  v1 = v0;
  v2 = sub_1AFDFDAF8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AFDFDAC8();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1AFDFCAC8();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  sub_1AF615168();
  sub_1AFDFCAB8();
  sub_1AFDFDAB8();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v2);
  *(v1 + 16) = sub_1AFDFDB28();
  *(v1 + 24) = 3;
  *(v1 + 32) = MEMORY[0x1E69E7CC8];
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v167 = qword_1ED73B840;
  v168 = 0;
  v169 = 2;
  v170 = 0;
  v171 = 2;
  v172 = 0;
  sub_1AF703208(1, &v84);
  v11 = v85;
  v12 = v86;
  v13 = v88;
  v14 = v87 | 4;
  *(v1 + 40) = v84;
  *(v1 + 48) = v11;
  *(v1 + 52) = v12;
  *(v1 + 56) = v14;
  *(v1 + 64) = 2;
  *(v1 + 72) = v13;
  sub_1AF70321C(1, v89);
  sub_1AF0D0F04(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  v83 = xmmword_1AFE431C0;
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = &type metadata for FileWatcher;
  *(v15 + 40) = &off_1F2545FD8;
  sub_1AF5D1EC0(v15, v90);
  sub_1AF8FE1E4(v89, &unk_1ED723D88, &type metadata for TextureFileAsset, &off_1F2544090, sub_1AF5DD590);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v16 = v90[1];
  *(v1 + 80) = v90[0];
  *(v1 + 96) = v16;
  *(v1 + 112) = v91;
  v17 = swift_allocObject();
  *(v17 + 16) = v83;
  *(v17 + 32) = &type metadata for TextureFileAsset;
  *(v17 + 40) = &off_1F2544010;
  sub_1AF5F58E4(v17, 1, v92);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v18 = swift_allocObject();
  *(v18 + 16) = v83;
  *(v18 + 32) = &type metadata for TextureLoadingOptions;
  *(v18 + 40) = &off_1F2543F60;
  sub_1AF5C5EFC(v18, v93);
  sub_1AF692DB0(v92);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v19 = v93[1];
  *(v1 + 120) = v93[0];
  *(v1 + 136) = v19;
  *(v1 + 152) = v94;
  v20 = swift_allocObject();
  *(v20 + 16) = v83;
  *(v20 + 32) = &type metadata for TextureFileAsset;
  *(v20 + 40) = &off_1F2544010;
  sub_1AF5F58E4(v20, 1, &v95);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v21 = v99;
  v22 = v98 | 4;
  v23 = v96;
  v24 = v97;
  *(v1 + 160) = v95;
  *(v1 + 168) = v23;
  *(v1 + 172) = v24;
  *(v1 + 176) = v22;
  *(v1 + 184) = 2;
  *(v1 + 192) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = v83;
  *(v25 + 32) = &type metadata for TextureFileAsset;
  *(v25 + 40) = &off_1F2544010;
  sub_1AF5F58E4(v25, 1, v100);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v26 = swift_allocObject();
  *(v26 + 16) = v83;
  *(v26 + 32) = &type metadata for TextureGPURepresentationDoNotUpload;
  *(v26 + 40) = &off_1F2546138;
  sub_1AF5C5EFC(v26, &v101);
  sub_1AF692DB0(v100);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v27 = v105;
  v28 = v104 | 4;
  v29 = v102;
  v30 = v103;
  *(v1 + 200) = v101;
  *(v1 + 208) = v29;
  *(v1 + 212) = v30;
  *(v1 + 216) = v28;
  *(v1 + 224) = 2;
  *(v1 + 232) = v27;
  v31 = swift_allocObject();
  *(v31 + 16) = v83;
  *(v31 + 32) = &type metadata for TextureFileAsset;
  *(v31 + 40) = &off_1F2544010;
  sub_1AF5F58E4(v31, 1, v106);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v32 = swift_allocObject();
  *(v32 + 16) = v83;
  *(v32 + 32) = &type metadata for TextureGPURepresentationDoNotDownload;
  *(v32 + 40) = &off_1F2545F58;
  sub_1AF5C5EFC(v32, &v107);
  sub_1AF692DB0(v106);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v33 = v111;
  v34 = v110 | 4;
  v35 = v108;
  v36 = v109;
  *(v1 + 240) = v107;
  *(v1 + 248) = v35;
  *(v1 + 252) = v36;
  *(v1 + 256) = v34;
  *(v1 + 264) = 2;
  *(v1 + 272) = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = v83;
  *(v37 + 32) = &type metadata for TextureArrayFileAsset;
  *(v37 + 40) = &off_1F25440E8;
  sub_1AF5F58E4(v37, 1, &v112);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v38 = v116;
  v39 = v115 | 4;
  v40 = v113;
  v41 = v114;
  *(v1 + 280) = v112;
  *(v1 + 288) = v40;
  *(v1 + 292) = v41;
  *(v1 + 296) = v39;
  *(v1 + 304) = 2;
  *(v1 + 312) = v38;
  sub_1AF70321C(1, &v117);
  v42 = v118;
  v43 = v119;
  v44 = v121;
  v45 = v120 | 4;
  *(v1 + 320) = v117;
  *(v1 + 328) = v42;
  *(v1 + 332) = v43;
  *(v1 + 336) = v45;
  *(v1 + 344) = 2;
  *(v1 + 352) = v44;
  sub_1AF703230(1, &v122);
  v46 = v123;
  v47 = v124;
  v48 = v126;
  v49 = v125 | 4;
  *(v1 + 360) = v122;
  *(v1 + 368) = v46;
  *(v1 + 372) = v47;
  *(v1 + 376) = v49;
  *(v1 + 384) = 2;
  *(v1 + 392) = v48;
  sub_1AFCC39F4(1, 2, &v127);
  v50 = v128;
  v51 = v129;
  v52 = v131;
  v53 = v130 | 4;
  *(v1 + 400) = v127;
  *(v1 + 408) = v50;
  *(v1 + 412) = v51;
  *(v1 + 416) = v53;
  *(v1 + 424) = 2;
  *(v1 + 432) = v52;
  sub_1AF703244(1, &v132);
  v54 = v133;
  v55 = v134;
  v56 = v136;
  v57 = v135 | 4;
  *(v1 + 440) = v132;
  *(v1 + 448) = v54;
  *(v1 + 452) = v55;
  *(v1 + 456) = v57;
  *(v1 + 464) = 2;
  *(v1 + 472) = v56;
  sub_1AF703258(1, &v137);
  v58 = v138;
  v59 = v139;
  v60 = v141;
  v61 = v140 | 4;
  *(v1 + 480) = v137;
  *(v1 + 488) = v58;
  *(v1 + 492) = v59;
  *(v1 + 496) = v61;
  *(v1 + 504) = 2;
  *(v1 + 512) = v60;
  sub_1AF70326C(1, &v142);
  v62 = v143;
  v63 = v144;
  v64 = v146;
  v65 = v145 | 4;
  *(v1 + 520) = v142;
  *(v1 + 528) = v62;
  *(v1 + 532) = v63;
  *(v1 + 536) = v65;
  *(v1 + 544) = 2;
  *(v1 + 552) = v64;
  sub_1AF703280(1, v147);
  v66 = swift_allocObject();
  *(v66 + 16) = v83;
  *(v66 + 32) = &type metadata for TextureGPURuntime;
  *(v66 + 40) = &off_1F2544300;
  sub_1AF5D1EC0(v66, v148);
  sub_1AF8FE1E4(v147, &unk_1ED723D18, &type metadata for TextureShaderAsset, &off_1F2543F30, sub_1AF5DD590);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v67 = v148[1];
  *(v1 + 560) = v148[0];
  *(v1 + 576) = v67;
  *(v1 + 592) = v149;
  sub_1AFCC3A18(4, 2, &v150);
  v68 = v151;
  v69 = v152;
  v70 = v154;
  v71 = v153 | 4;
  *(v1 + 600) = v150;
  *(v1 + 608) = v68;
  *(v1 + 612) = v69;
  *(v1 + 616) = v71;
  *(v1 + 624) = 2;
  *(v1 + 632) = v70;
  sub_1AF703294(2, v155);
  v72 = swift_allocObject();
  *(v72 + 16) = v83;
  *(v72 + 32) = &type metadata for TextureRequireCubemap;
  *(v72 + 40) = &off_1F2545ED8;
  sub_1AF5F9038(&v156);
  sub_1AF8FE1E4(v155, &qword_1ED723D50, &type metadata for TextureGPURuntime, &off_1F2544388, sub_1AF5DD590);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v73 = v157;
  v74 = v158;
  v75 = v160;
  v76 = v159 | 4;
  *(v1 + 640) = v156;
  *(v1 + 648) = v73;
  *(v1 + 652) = v74;
  *(v1 + 656) = v76;
  *(v1 + 664) = 2;
  *(v1 + 672) = v75;
  sub_1AFCC3A3C(1, 1, v161);
  v77 = swift_allocObject();
  *(v77 + 16) = v83;
  *(v77 + 32) = &type metadata for TextureGPURepresentationDoNotUpload;
  *(v77 + 40) = &off_1F2546138;
  sub_1AF5D1EC0(v77, &v162);
  sub_1AF904B7C(v161, sub_1AF904288);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v78 = v163;
  v79 = v164;
  v80 = v166;
  v81 = v165 | 4;
  *(v1 + 680) = v162;
  *(v1 + 688) = v78;
  *(v1 + 692) = v79;
  *(v1 + 696) = v81;
  *(v1 + 704) = 2;
  *(v1 + 712) = v80;
  return v1;
}

uint64_t sub_1AF8F7240()
{
  v0 = swift_allocObject();
  sub_1AF8F67DC();
  return v0;
}

uint64_t sub_1AF8F7290(uint64_t a1, const char *a2)
{
  v20 = a2;
  v2 = sub_1AFDFC548();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AFDFC4F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v12 = sub_1AFDFC538();
  sub_1AF477C68(v12, qword_1ED73B608);
  v13 = sub_1AFDFC528();
  sub_1AFDFC558();
  v14 = sub_1AFDFDB78();
  if (sub_1AFDFDCE8())
  {

    sub_1AFDFC588();

    if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v13, v14, v17, v20, v15, v16, 2u);
    MEMORY[0x1B271DEA0](v16, -1, -1);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1AF8F7520(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v4 = result;
    v5 = *(a2 + 528);
    v6 = *(v2 + 32);
    v38[0] = *(v2 + 16);
    v38[1] = v6;
    v39 = *(v2 + 48);

    sub_1AF6B06C0(v4, v38, 0x200000000, &v8);
    if (v8)
    {
      v25 = v11;
      v26 = v12;
      v27 = v13;
      v22 = v8;
      v28 = v14;
      v23 = v9;
      v24 = v10;
      sub_1AF6B9BF4();
      sub_1AF8FE1E4(&v8, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
    }

    v7 = *(v2 + 72);
    v36[0] = *(v2 + 56);
    v36[1] = v7;
    v37 = *(v2 + 88);
    sub_1AF6B06C0(v4, v36, 0x200000000, &v15);
    if (v15)
    {
      v32 = v18;
      v33 = v19;
      v34 = v20;
      v30 = v16;
      v31 = v17;
      v35 = v21;
      v29 = v15;

      sub_1AFD1616C(&v29, v4, v5, a2);

      return sub_1AF8FE1E4(&v15, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AF8F7758(uint64_t a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a2;
    v7 = v4 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocksLock;
    v8 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocksLock + 24);

    os_unfair_lock_lock(v8);
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1AF904304;
    *(v9 + 24) = v6;
    v10 = OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocks;
    v11 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocks);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1AF4221DC(0, v11[2] + 1, 1, v11);
      *(v4 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1AF4221DC(v13 > 1, v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1AF6D25EC;
    v15[5] = v9;
    *(v4 + v10) = v11;
    os_unfair_lock_unlock(*(v7 + 24));
  }

  return result;
}

uint64_t sub_1AF8F791C(uint64_t a1, unint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1AF67F7C0(a2, result);
  }

  return result;
}

uint64_t sub_1AF8F79B8()
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
  sub_1AFCC515C(1, 1, v9);
  sub_1AF0D0F04(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = &type metadata for TextureCPURuntime;
  *(inited + 40) = &off_1F2543DF8;
  *(inited + 48) = &type metadata for TextureGPURepresentationDoNotDownload;
  *(inited + 56) = &off_1F2545F58;
  sub_1AF5D1EC0(inited, v10);
  sub_1AF904B7C(v9, sub_1AF90430C);
  swift_setDeallocating();
  v2 = v10[1];
  *(v0 + 16) = v10[0];
  *(v0 + 32) = v2;
  *(v0 + 48) = v11;
  sub_1AFCC515C(1, 1, v12);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  *(v3 + 32) = &type metadata for TextureGPURepresentationDoNotDownload;
  *(v3 + 40) = &off_1F2545F58;
  *(v3 + 48) = &type metadata for ColorRampComponent;
  *(v3 + 56) = &off_1F2541A28;
  *(v3 + 64) = &type metadata for CurveComponent;
  *(v3 + 72) = &off_1F2541D98;
  sub_1AF5D1EC0(v3, &v13);
  sub_1AF904B7C(v12, sub_1AF90430C);
  swift_setDeallocating();
  v4 = v14;
  v5 = v15;
  v6 = v17;
  v7 = v16 | 4;
  *(v0 + 56) = v13;
  *(v0 + 64) = v4;
  *(v0 + 68) = v5;
  *(v0 + 72) = v7;
  *(v0 + 80) = 2;
  *(v0 + 88) = v6;
  return v0;
}

uint64_t sub_1AF8F7BDC()
{
  v0 = swift_allocObject();
  sub_1AF8F79B8();
  return v0;
}

void sub_1AF8F7C48(uint64_t a1)
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

uint64_t sub_1AF8F7DA4()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v28 = qword_1ED73B840;
  v29 = 0;
  v30 = 2;
  v31 = 0;
  v32 = 2;
  v33 = 0;
  sub_1AF7049A4(1, v14);
  sub_1AF0D0F04(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for TextureRequireCPURepresentation;
  *(inited + 40) = &off_1F25443B8;
  sub_1AF5D1EC0(inited, &v15);
  sub_1AF8FE1E4(v14, &unk_1ED723D58, &type metadata for TextureCPURuntime, &off_1F2543E80, sub_1AF5DD590);
  swift_setDeallocating();
  v2 = v16;
  v3 = v17;
  v4 = v19;
  v5 = v20;
  v6 = v18 | 0x20;
  *(v0 + 16) = v15;
  *(v0 + 24) = v2;
  *(v0 + 28) = v3;
  *(v0 + 32) = v6;
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  sub_1AF703294(1, v21);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = &type metadata for TextureRequireGPURepresentation;
  *(v7 + 40) = &off_1F2544248;
  sub_1AF5D1EC0(v7, &v22);
  sub_1AF8FE1E4(v21, &qword_1ED723D50, &type metadata for TextureGPURuntime, &off_1F2544388, sub_1AF5DD590);
  swift_setDeallocating();
  v8 = v23;
  v9 = v24;
  v10 = v26;
  v11 = v27;
  v12 = v25 | 0x20;
  *(v0 + 56) = v22;
  *(v0 + 64) = v8;
  *(v0 + 68) = v9;
  *(v0 + 72) = v12;
  *(v0 + 80) = v10;
  *(v0 + 88) = v11;
  return v0;
}

uint64_t sub_1AF8F7FDC()
{
  v0 = swift_allocObject();
  sub_1AF8F7DA4();
  return v0;
}

void sub_1AF8F8048(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = *(v1 + 16);
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  v8 = *(v4 + 40);

  os_unfair_lock_unlock(v8);
}

void sub_1AF8F8180(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a1;
  v7 = 0;
  v52 = *v3;
  v8 = *(v3 + 2);
  v83[0] = *(v3 + 1);
  v83[1] = v8;
  v54 = v3;
  v84 = v3[6];
  v53 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(a1, v83, 0x200000000, v70);
  if (*&v70[0])
  {
    v51 = a3;
    v49 = v6;
    v50 = a2;
    if (v74 >= 1 && v72)
    {
      v9 = v71;
      v62 = v71 + 48 * v72;
      v55 = v73;
      do
      {
        v10 = *(v9 + 40);
        v11 = *(v10 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v11);
        os_unfair_lock_lock(*(v10 + 344));
        v12 = *(v10 + 232);
        v13 = *(v10 + 240);
        if (v13 != v12)
        {
          v14 = *(v10 + 192);
          if (v14)
          {
            v15 = *(v10 + 208);
            sub_1AF75D408(*(v10 + 232), *(v10 + 240), v14);
            sub_1AF75D364(v12, v13, v15);
          }

          sub_1AF705690(v12, v13);
        }

        v16 = *(v10 + 24);

        memset(v76, 0, sizeof(v76));
        memset(v75, 0, 40);
        v17 = sub_1AF65A4B4(v16, &type metadata for TextureRequireGPURepresentation, &off_1F25442D0, 0, 0, v76, v75);

        sub_1AF5DD41C(v75);
        sub_1AF5DD41C(v76);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v17);
        }

        else
        {
          v61 = v9;
          v18 = *(v10 + 232);
          v19 = *(v10 + 240);
          v58 = *(v10 + 120);
          v68 = *(v10 + 28);
          v67 = *(v10 + 32);
          v20 = *(v10 + 16);
          v21 = *(v10 + 40);
          v22 = v21[200];
          v66 = *(*(v20 + 88) + 8 * v17 + 32);

          if ((v22 & 1) != 0 || *(v66 + 200) == 1)
          {
            *(v20 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v21 = *(v10 + 40);
          }

          if (v21[212])
          {
            v60 = 0;
          }

          else
          {
            v60 = *(v66 + 212);
          }

          v59 = v21[208];
          v63 = *(v10 + 128);
          v23 = *(v10 + 256);
          sub_1AF5B4FCC(v21, v18, v19, 0, v10);
          *&v64 = *(v10 + 256);
          *(&v64 + 1) = v23;
          v24 = v64 - v23;
          if (v64 == v23)
          {
            v25 = 0;
          }

          else
          {
            v25 = v23;
          }

          v65 = v25;
          v75[0] = v25;
          v26 = *(*(v10 + 40) + 24);
          v27 = *(v26 + 16);
          if (v27)
          {
            v56 = *(*(v10 + 40) + 24);
            v57 = v7;
            v28 = v26 + 32;

            for (i = 0; i != v27; ++i)
            {
              v30 = v28 + 40 * i;
              if ((*(v30 + 32) & 1) == 0)
              {
                v31 = *(v66 + 24);
                v32 = *(v31 + 16);
                if (v32)
                {
                  v33 = (v31 + 32);
                  while (*v33 != *v30)
                  {
                    v33 += 5;
                    if (!--v32)
                    {
                      goto LABEL_23;
                    }
                  }
                }

                else
                {
LABEL_23:
                  sub_1AF640BC8();
                }
              }
            }

            v7 = v57;
          }

          if (*(v20 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v20 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v10 + 72) * v24);
          }

          if (*(v10 + 184))
          {
            v34 = 0;
          }

          else
          {
            v34 = *(v10 + 168);
          }

          *&v81[0] = 0;

          MEMORY[0x1EEE9AC00](v35, v36);
          v37 = v68;
          v38 = v67;
          v44[0] = v63;
          v44[1] = v81;
          LOBYTE(v45) = v59;
          HIDWORD(v45) = v17;
          LOBYTE(v46) = v60;
          v47 = v55;
          LODWORD(v76[3]) = -1;
          v76[4] = *(&v64 + 1);
          v77 = v64;
          v76[0] = *(&v64 + 1);
          *&v78 = v64;
          v76[1] = v64;
          v76[2] = v34;
          if (v24 >= 1)
          {
            do
            {
              v69 = v38;
              sub_1AF6248A8(v17, v37 | (v38 << 32), v58, v20, v76, sub_1AF5C5E08);
              v38 = v67;
              v37 = v68;
            }

            while ((v76[1] - v76[0]) > 0);
          }

          v39 = *(v10 + 192);
          if (v39)
          {
            v40 = *(v10 + 208);
            sub_1AF75D364(*(&v64 + 1), v64, v39);
            sub_1AF75D364(*(&v64 + 1), v64, v40);
          }

          v9 = v61;
        }

        v9 += 48;
        os_unfair_lock_unlock(*(v10 + 344));
        os_unfair_lock_unlock(*(v10 + 376));
      }

      while (v9 != v62);
    }

    sub_1AF8FE1E4(v70, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
    LOBYTE(a3) = v51;
    v6 = v49;
    a2 = v50;
  }

  v41 = *(v54 + 9);
  v81[0] = *(v54 + 7);
  v81[1] = v41;
  v82 = v54[11];
  sub_1AF6B06C0(v6, v81, 0x200000000, v75);
  if (v75[0])
  {
    v77 = *&v75[5];
    v78 = *&v75[7];
    v79 = *&v75[9];
    v80 = v75[11];
    *&v76[1] = *&v75[1];
    *&v76[3] = *&v75[3];
    v76[0] = v75[0];
    MEMORY[0x1EEE9AC00](v42, v43);
    v45 = v6;
    v46 = a2;
    LOBYTE(v47) = a3;
    v48 = v52;
    sub_1AF5D5DF8(sub_1AF904388, v44);
    sub_1AF8FE1E4(v75, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
  }
}

void sub_1AF8F87F4(uint64_t a1, unsigned int *a2, void **a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  if (*a3)
  {
    v11 = [swift_unknownObjectRetain() label];
    if (!v11)
    {
      swift_unknownObjectRelease();
      return;
    }

    v12 = v11;
    v13 = sub_1AFDFCEF8();
    v15 = v14;

    if (v13 == 0xD00000000000001BLL && 0x80000001AFF3A580 == v15)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v17 = sub_1AFDFEE28();

      swift_unknownObjectRelease();
      if ((v17 & 1) == 0)
      {
        return;
      }
    }
  }

  v18 = *a2;
  v19 = a2[1];
  if (v18 == -1 && v19 == 0)
  {
LABEL_24:
    swift_unknownObjectRelease();
    *a3 = 0;
    return;
  }

  v27 = 1;
  v21 = sub_1AF8D93C8(v18 | (v19 << 32), &v27, a4, a5);
  if (v27 == 1)
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 8);
    v24 = *(v23 + 192);

    if (v24)
    {
      v25 = *(v23 + 208);
      *(v24 + 8 * (v22 >> 6)) |= 1 << v22;
      *(v25 + 8 * (v22 >> 6)) &= ~(1 << v22);
    }

    sub_1AF705804(v22);
  }

  if (!v21)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v10 && v21 == v10)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
    v26 = sub_1AFDFCEC8();
    [v21 setLabel_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *a3 = v21;
  }
}

__n128 initializeWithCopy for TextureRequireAnimationRepresentation(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TextureRequireAnimationRepresentation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 26))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureRequireAnimationRepresentation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 2;
    }
  }

  return result;
}

void *sub_1AF8F8B18(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return a1;
}

void *assignWithCopy for TextureGPURuntime(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

_OWORD *assignWithTake for TextureGPURuntime(_OWORD *a1, _OWORD *a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t getEnumTagSinglePayload for TextureGPURuntime(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureGPURuntime(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t *destroy for TextureFileData(uint64_t *result)
{
  v1 = result[1];
  if (v1 >> 60 != 15)
  {
    return sub_1AF439ED8(*result, v1);
  }

  return result;
}

_OWORD *sub_1AF8F8CD8(_OWORD *result, uint64_t *a2)
{
  v2 = a2[1];
  if (v2 >> 60 == 15)
  {
    *result = *a2;
  }

  else
  {
    v3 = *a2;
    v4 = result;
    sub_1AF43C9F0(*a2, a2[1]);
    *v4 = v3;
    v4[1] = v2;
    return v4;
  }

  return result;
}

uint64_t *assignWithCopy for TextureFileData(uint64_t *a1, __int128 *a2)
{
  v3 = *(a2 + 1);
  if (a1[1] >> 60 == 15)
  {
    if (v3 >> 60 != 15)
    {
      v6 = *a2;
      sub_1AF43C9F0(*a2, *(a2 + 1));
      *a1 = v6;
      a1[1] = v3;
      return a1;
    }

    v4 = *a2;
  }

  else
  {
    if (v3 >> 60 != 15)
    {
      v7 = *a2;
      sub_1AF43C9F0(*a2, *(a2 + 1));
      v8 = *a1;
      v9 = a1[1];
      *a1 = v7;
      a1[1] = v3;
      sub_1AF439ED8(v8, v9);
      return a1;
    }

    sub_1AF8F8DE0(a1);
    v4 = *a2;
  }

  *a1 = v4;
  return a1;
}

uint64_t assignWithTake for TextureFileData(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 8);
  if (v3 >> 60 == 15)
  {
    *result = *a2;
  }

  else
  {
    v4 = a2[1];
    if (v4 >> 60 == 15)
    {
      v5 = result;
      v6 = a2;
      sub_1AF8F8DE0(result);
      *v5 = *v6;
    }

    else
    {
      v7 = *a2;
      v8 = *result;
      *result = v7;
      *(result + 8) = v4;
      v5 = result;
      sub_1AF439ED8(v8, v3);
    }

    return v5;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextureFileData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureFileData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

__n128 initializeWithCopy for TextureOptions(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t destroy for TextureShaderAsset()
{
}

uint64_t initializeWithCopy for TextureShaderAsset(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  v5 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v5;
  v6 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v6;
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t assignWithCopy for TextureShaderAsset(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 27) = *(a2 + 27);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  v4 = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t assignWithTake for TextureShaderAsset(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  v5 = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t getEnumTagSinglePayload for TextureShaderAsset(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureShaderAsset(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TextureCPURuntime()
{
  swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for TextureCPURuntime(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  swift_unknownObjectRetain();

  return a1;
}

uint64_t assignWithCopy for TextureCPURuntime(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 35) = *(a2 + 35);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  v4 = *(a2 + 48);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 48) = v4;
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for TextureCPURuntime(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 44) = *(a2 + 44);
  v4 = *(a2 + 48);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 48) = v4;
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t getEnumTagSinglePayload for TextureCPURuntime(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for TextureCPURuntime(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextureLoadPolicy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 4))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 3);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureLoadPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *(result + 3) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AF8F970C()
{
  result = qword_1EB640120;
  if (!qword_1EB640120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640120);
  }

  return result;
}

uint64_t sub_1AF8F9760()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v16 = qword_1ED73B840;
  v17 = 0;
  v18 = 2;
  v19 = 0;
  v20 = 2;
  v21 = 0;
  sub_1AF704CE0(1, v8);
  sub_1AF0D0F04(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for TextureRequireGPURepresentation;
  *(inited + 40) = &off_1F2544248;
  sub_1AF5D1EC0(inited, v9);
  sub_1AF8FE1E4(v8, &unk_1ED723D20, &type metadata for TexturePlaceholder, &off_1F2546C68, sub_1AF5DD590);
  swift_setDeallocating();
  v2 = v9[1];
  *(v0 + 16) = v9[0];
  *(v0 + 32) = v2;
  *(v0 + 48) = v10;
  sub_1AF704CE0(1, &v11);
  v3 = v12;
  v4 = v13;
  v5 = v15;
  v6 = v14 | 4;
  *(v0 + 56) = v11;
  *(v0 + 64) = v3;
  *(v0 + 68) = v4;
  *(v0 + 72) = v6;
  *(v0 + 80) = 2;
  *(v0 + 88) = v5;
  return v0;
}

uint64_t sub_1AF8F9900()
{
  v0 = swift_allocObject();
  sub_1AF8F9760();
  return v0;
}

uint64_t sub_1AF8F9950(__n128 a1)
{

  return sub_1AF8F9AC0(2, a1);
}

uint64_t sub_1AF8F99AC(__n128 a1)
{

  return sub_1AF8F9AC0(3, a1);
}

uint64_t sub_1AF8F9A08(__n128 a1)
{

  return sub_1AF8F9AC0(0, a1);
}

uint64_t sub_1AF8F9A64(__n128 a1)
{

  return sub_1AF8F9AC0(1, a1);
}

uint64_t sub_1AF8F9AC0(char a1, __n128 a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v5 = *(v2 + 8);
  if ([swift_unknownObjectRetain() storageMode] == 2)
  {
    swift_unknownObjectRelease();
    v6 = 0;
  }

  else
  {
    v7 = [v4 contents];
    v8 = v4;
    v6 = v7 + v5;
  }

  v22 = *(v2 + 32);
  v23 = *(v2 + 48);
  v24 = *(v2 + 32);
  v25 = *(v2 + 48);
  v9 = sub_1AF445CA8(&v24);
  v24 = *(v2 + 32);
  v25 = *(v2 + 48);
  v10 = sub_1AF445CB0(&v24);
  v24 = *(v2 + 32);
  v25 = *(v2 + 48);
  v11 = sub_1AF478AC0(&v24);
  v12 = sub_1AF467494(&v22);
  if (v12 > 0x46u)
  {
    if (v12 <= 0x50u)
    {
      if (v12 == 71)
      {
        v14 = 7;
        goto LABEL_32;
      }

      if (v12 == 80)
      {
        v14 = 8;
        goto LABEL_32;
      }
    }

    else
    {
      switch(v12)
      {
        case 'Q':
          v14 = 9;
          goto LABEL_32;
        case 's':
          v14 = 2;
          goto LABEL_32;
        case '}':
          v14 = 3;
          goto LABEL_32;
      }
    }

    goto LABEL_26;
  }

  if (v12 <= 0x18u)
  {
    if (v12 == 10)
    {
      v14 = 4;
      goto LABEL_32;
    }

    if (v12 == 11)
    {
      v14 = 5;
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (v12 == 25)
  {
LABEL_31:
    v14 = 0;
    goto LABEL_32;
  }

  if (v12 == 55)
  {
    v14 = 1;
    goto LABEL_32;
  }

  if (v12 != 70)
  {
LABEL_26:
    v15 = v12;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v24 = 0;
    *(&v24 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v24 = 0xD00000000000001ALL;
    *(&v24 + 1) = 0x80000001AFF29870;
    v16 = sub_1AF4720E8(v15);
    MEMORY[0x1B2718AE0](v16);

    v17 = v24;
    v18 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v20 = v18;
      swift_once();
      v18 = v20;
    }

    *&v24 = 0;
    sub_1AF0D4F18(v18, &v24, v17, *(&v17 + 1));

    goto LABEL_31;
  }

  v14 = 6;
LABEL_32:
  v13.i64[0] = __PAIR64__(v10, v9);
  v13.i32[2] = v11;
  vfx_sampler3d_make(v6, v14, a1, 1, &v24, v13);
  return v26(&v24, a2);
}

uint64_t sub_1AF8F9DC8(uint64_t *a1, uint64_t (*a2)(void *, uint64_t), uint64_t a3)
{
  v21[6] = a3;
  v5 = a1[11];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  result = sub_1AF64B110(&type metadata for TextureFileAsset, &off_1F2544090, v5, a1[12], v6, v8);
  v10 = result;
  if (v5)
  {
    if (v6)
    {
      v11 = a1[3];
      v12 = *a1;
      do
      {
        v13 = *v5++;
        v20[0] = v12;
        v20[1] = v7;
        v20[2] = v8;
        v20[3] = v11;
        v20[4] = v13;
        result = a2(v20, v10);
        if (v19)
        {
          break;
        }

        v10 += 48;
        ++v11;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v14 = a1[3];
    v15 = a1[6];
    v16 = a1[7];
    v17 = result + 48 * v15;
    do
    {
      if (v16 == v15)
      {
        break;
      }

      v18 = v15 + 1;
      v21[0] = *a1;
      v21[1] = v7;
      v21[2] = v8;
      v21[3] = v14;
      v21[4] = v15;
      result = a2(v21, v17);
      ++v14;
      v17 += 48;
      v15 = v18;
    }

    while (!v19);
  }

  return result;
}

uint64_t sub_1AF8F9EFC(uint64_t *a1, uint64_t (*a2)(void *, uint64_t), uint64_t a3)
{
  v21[6] = a3;
  v5 = a1[11];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  result = sub_1AF64B110(&type metadata for TextureArrayFileAsset, &off_1F2544168, v5, a1[12], v6, v8);
  v10 = result;
  if (v5)
  {
    if (v6)
    {
      v11 = a1[3];
      v12 = *a1;
      do
      {
        v13 = *v5++;
        v20[0] = v12;
        v20[1] = v7;
        v20[2] = v8;
        v20[3] = v11;
        v20[4] = v13;
        result = a2(v20, v10);
        if (v19)
        {
          break;
        }

        v10 += 8;
        ++v11;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v14 = a1[3];
    v15 = a1[6];
    v16 = a1[7];
    v17 = result + 8 * v15;
    do
    {
      if (v16 == v15)
      {
        break;
      }

      v18 = v15 + 1;
      v21[0] = *a1;
      v21[1] = v7;
      v21[2] = v8;
      v21[3] = v14;
      v21[4] = v15;
      result = a2(v21, v17);
      ++v14;
      v17 += 8;
      v15 = v18;
    }

    while (!v19);
  }

  return result;
}

uint64_t sub_1AF8FA02C(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](*a1);
  v5 = type metadata accessor for TextureCache.TextureKey();
  sub_1AFDFC128();
  sub_1AF9027C4(&qword_1ED725EE0, MEMORY[0x1E6968FB0]);
  sub_1AFDFCD08();
  v6 = &a1[*(v5 + 24)];
  v7 = *(v6 + 1);
  v8 = *(v6 + 2);
  v9 = v6[24];
  v11 = *(v6 + 4);
  v10 = *(v6 + 5);
  v15 = *(v6 + 6);
  v12 = *(v6 + 28);
  MEMORY[0x1B271ACB0](*v6);
  if (v9 < 0xFE)
  {
    sub_1AFDFF2A8();
    if ((v9 & 0x80) != 0)
    {
      MEMORY[0x1B271ACB0](1);
      MEMORY[0x1B271ACB0](v7);
      MEMORY[0x1B271ACB0](v8);
    }

    else
    {
      MEMORY[0x1B271ACB0](0);
      MEMORY[0x1B271ACB0](v7);
      MEMORY[0x1B271ACB0](v8);
      sub_1AFDFF2A8();
    }
  }

  else
  {
    sub_1AFDFF2A8();
  }

  if ((v12 & 0xFF00) != 0x300)
  {
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v11);
    MEMORY[0x1B271ACB0](v10);
    sub_1AFDFF2A8();
    if ((v12 & 1) == 0)
    {
      MEMORY[0x1B271ACB0](v15);
    }
  }

  sub_1AFDFF2A8();
  sub_1AFDFF2F8();
  v13 = sub_1AFDFE088();
  *(a3 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
  sub_1AF0D6DF0(a1, a3[6] + *(*(v5 - 8) + 72) * v13, type metadata accessor for TextureCache.TextureKey);
  result = sub_1AF446690(a2, a3[7] + 104 * v13);
  ++a3[2];
  return result;
}

void sub_1AF8FA2AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v18[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v18, 0, 14);
      v7 = v18;
      v6 = v18;
      goto LABEL_19;
    }

    v8 = a3;
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    v11 = sub_1AFDFBDB8();
    if (v11)
    {
      v11 = v11 + v9 - sub_1AFDFBDE8();
    }

    v12 = v10 - v9;
  }

  else
  {
    if (!v5)
    {
      v18[0] = a1;
      LOWORD(v18[1]) = a2;
      BYTE2(v18[1]) = BYTE2(a2);
      BYTE3(v18[1]) = BYTE3(a2);
      BYTE4(v18[1]) = BYTE4(a2);
      BYTE5(v18[1]) = BYTE5(a2);
      v6 = v18 + BYTE6(a2);
      v7 = v18;
      goto LABEL_19;
    }

    v8 = a3;
    v14 = a1;
    v11 = sub_1AFDFBDB8();
    if (v11)
    {
      v11 = v11 + v14 - sub_1AFDFBDE8();
    }

    v12 = (a1 >> 32) - v14;
  }

  v15 = sub_1AFDFBDD8();
  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = (v16 + v11);
  if (v11)
  {
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  v7 = v11;
  a3 = v8;
  a4 = v4;
LABEL_19:
  sub_1AF6052A4(v7, v6, a3, a4);
}

void *sub_1AF8FA484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1;
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 32);
  v8 = v7 & 0x3F;
  v9 = (1 << v7) + 63;
  v10 = v9 >> 6;
  v11 = 8 * (v9 >> 6);
  if (v8 <= 0xD)
  {
    goto LABEL_2;
  }

  v15 = 8 * (v9 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v11 = v15;
LABEL_2:
    MEMORY[0x1EEE9AC00](a1, v11);
    v13 = v19 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = sub_1AF8FA9C8(v13, v10, a3, v6);
    if (v4)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = v4;
  v18 = sub_1AF8FABF0(v16, v10, a3, v6);
  result = MEMORY[0x1B271DEA0](v16, -1, -1);
  if (!v17)
  {
    return v18;
  }

  return result;
}

uint64_t sub_1AF8FA604(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *))
{
  v26 = 0;
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
    v30 = (v9 - 1) & v9;
    v11 = __clz(__rbit64(v9)) | (v6 << 6);
LABEL_10:
    v15 = v11;
    v16 = 16 * v11;
    v17 = *(a3 + 56);
    v18 = (*(a3 + 48) + v16);
    v19 = v18[1];
    v29[0] = *v18;
    v29[1] = v19;
    v20 = (v17 + v16);
    v21 = v20[1];
    v28[0] = *v20;
    v28[1] = v21;

    v22 = a4(v29, v28);

    if (v4)
    {
      return result;
    }

    v9 = v30;
    if (v22)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      ++v26;
    }
  }

  v12 = v6 << 6;
  while (1)
  {
    v13 = v6 + 1;
    if (v6 + 1 >= v10)
    {
      return sub_1AF8FB190(a1, a2, v26, a3);
    }

    v14 = *(a3 + 8 * v6 + 72);
    v12 += 64;
    ++v6;
    if (v14)
    {
      v30 = (v14 - 1) & v14;
      v11 = __clz(__rbit64(v14)) + v12;
      v6 = v13;
      goto LABEL_10;
    }
  }
}

void *sub_1AF8FA7A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(int *, char *))
{
  v30 = a4;
  v26 = a2;
  v27 = a1;
  v6 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v16 = v15 | (v10 << 6);
LABEL_10:
    v20 = *(a3 + 56);
    v21 = *(a3 + 48) + 8 * v16;
    v22 = *v21;
    LOBYTE(v21) = *(v21 + 4);
    v31 = v22;
    v32 = v21;
    sub_1AF904B14(v20 + *(v29 + 72) * v16, v9, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    v23 = v30(&v31, v9);
    result = sub_1AF904B7C(v9, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    if (v4)
    {
      return result;
    }

    if (v23)
    {
      *(v27 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      ++v28;
    }
  }

  v17 = v10 << 6;
  while (1)
  {
    v18 = v10 + 1;
    if (v10 + 1 >= v14)
    {
      return sub_1AF8FB3D0(v27, v26, v28, a3);
    }

    v19 = *(a3 + 8 * v10 + 72);
    v17 += 64;
    ++v10;
    if (v19)
    {
      v13 = (v19 - 1) & v19;
      v16 = __clz(__rbit64(v19)) + v17;
      v10 = v18;
      goto LABEL_10;
    }
  }
}

void *sub_1AF8FA9C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, _BYTE *))
{
  v28 = a4;
  v23 = a2;
  v24 = a1;
  v6 = type metadata accessor for TextureCache.TextureKey();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v16 = v15 | (v10 << 6);
LABEL_10:
    sub_1AF904B14(*(a3 + 48) + *(v26 + 72) * v16, v9, type metadata accessor for TextureCache.TextureKey);
    sub_1AF74EA6C(*(a3 + 56) + 104 * v16, v27);
    v20 = v28(v9, v27);
    sub_1AF74EA3C(v27);
    result = sub_1AF904B7C(v9, type metadata accessor for TextureCache.TextureKey);
    if (v4)
    {
      return result;
    }

    if (v20)
    {
      *(v24 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      ++v25;
    }
  }

  v17 = v10 << 6;
  while (1)
  {
    v18 = v10 + 1;
    if (v10 + 1 >= v14)
    {
      return sub_1AF8FB9A8(v24, v23, v25, a3);
    }

    v19 = *(a3 + 8 * v10 + 72);
    v17 += 64;
    ++v10;
    if (v19)
    {
      v13 = (v19 - 1) & v19;
      v16 = __clz(__rbit64(v19)) + v17;
      v10 = v18;
      goto LABEL_10;
    }
  }
}

void *sub_1AF8FABF0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, _BYTE *))
{
  if (a2)
  {
    v5 = a1;
    v6 = a2;
    v7 = a4;
    bzero(a1, 8 * a2);
    a1 = v5;
    a2 = v6;
    a4 = v7;
  }

  v8 = sub_1AF8FA9C8(a1, a2, a3, a4);

  return v8;
}

uint64_t sub_1AF8FAC78(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
  }

  else
  {
    sub_1AF444C24();
    v8 = sub_1AFDFE5C8();
    v9 = a2;
    v10 = v8;
    if (a2 < 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = *a1;
    }

    v12 = 0;
    v13 = v8 + 64;
    v14 = a1 + 1;
    v40 = a2;
    v41 = v4;
    while (v11)
    {
      v42 = v5;
      v47 = (v11 - 1) & v11;
      v19 = __clz(__rbit64(v11)) | (v12 << 6);
LABEL_17:
      v23 = (*(v4 + 48) + 16 * v19);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v4 + 56) + 56 * v19);
      v27 = v26[1];
      v28 = v26[3];
      v44 = v26[2];
      v45 = *v26;
      v29 = v26[5];
      v43 = v26[4];
      v30 = v26[6];
      v31 = v10;
      sub_1AFDFF288();
      v46 = v30;
      v32 = v24;

      sub_1AFDFD038();
      v33 = sub_1AFDFF2F8();
      v10 = v31;
      v34 = -1 << *(v31 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v13 + 8 * (v35 >> 6))) != 0)
      {
        v15 = __clz(__rbit64((-1 << v35) & ~*(v13 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
        v16 = v42;
      }

      else
      {
        v37 = (63 - v34) >> 6;
        v16 = v42;
        do
        {
          if (v36 + 1 == v37)
          {
            v36 = 0;
          }

          else
          {
            ++v36;
          }

          v38 = *(v13 + 8 * v36);
        }

        while (v38 == -1);
        v15 = __clz(__rbit64(~v38)) + (v36 << 6);
      }

      v9 = v40;
      *(v13 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = (*(v31 + 48) + 16 * v15);
      *v17 = v32;
      v17[1] = v25;
      v18 = (*(v31 + 56) + 56 * v15);
      *v18 = v45;
      v18[1] = v27;
      v18[2] = v44;
      v18[3] = v28;
      v18[4] = v43;
      v18[5] = v29;
      v18[6] = v46;
      ++*(v31 + 16);
      v5 = v16 - 1;
      v4 = v41;
      v11 = v47;
      if (!v5)
      {
        return v10;
      }
    }

    v20 = v12 << 6;
    while (1)
    {
      v21 = v12 + 1;
      if (v12 + 1 >= v9)
      {
        return v10;
      }

      v22 = v14[v12];
      v20 += 64;
      ++v12;
      if (v22)
      {
        v42 = v5;
        v47 = (v22 - 1) & v22;
        v19 = __clz(__rbit64(v22)) + v20;
        v12 = v21;
        goto LABEL_17;
      }
    }
  }

  return v4;
}

uint64_t sub_1AF8FAF28(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
  }

  else
  {
    sub_1AF445010();
    v8 = sub_1AFDFE5C8();
    v9 = v8;
    if (a2 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = *a1;
    }

    v11 = 0;
    v12 = v8 + 64;
    v13 = a1 + 1;
    v33 = v4;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v18 = v17 | (v11 << 6);
LABEL_17:
      v22 = *(v4 + 56);
      v23 = (*(v4 + 48) + 16 * v18);
      v24 = *v23;
      v25 = v23[1];
      sub_1AF4455CC(v22 + 88 * v18, v40);
      v36 = v40[2];
      v37 = v40[3];
      v38 = v40[4];
      v39 = v41;
      v34 = v40[0];
      v35 = v40[1];
      sub_1AFDFF288();

      sub_1AFDFD038();
      v26 = sub_1AFDFF2F8();
      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = (63 - v27) >> 6;
        do
        {
          if (v29 + 1 == v30)
          {
            v29 = 0;
          }

          else
          {
            ++v29;
          }

          v31 = *(v12 + 8 * v29);
        }

        while (v31 == -1);
        v14 = __clz(__rbit64(~v31)) + (v29 << 6);
      }

      *(v12 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v9 + 48) + 16 * v14);
      *v15 = v24;
      v15[1] = v25;
      v16 = *(v9 + 56) + 88 * v14;
      *(v16 + 32) = v36;
      *(v16 + 48) = v37;
      *(v16 + 64) = v38;
      *(v16 + 80) = v39;
      *v16 = v34;
      *(v16 + 16) = v35;
      ++*(v9 + 16);
      --v5;
      v4 = v33;
      if (!v5)
      {
        return v9;
      }
    }

    v19 = v11 << 6;
    while (1)
    {
      v20 = v11 + 1;
      if (v11 + 1 >= a2)
      {
        return v9;
      }

      v21 = v13[v11];
      v19 += 64;
      ++v11;
      if (v21)
      {
        v10 = (v21 - 1) & v21;
        v18 = __clz(__rbit64(v21)) + v19;
        v11 = v20;
        goto LABEL_17;
      }
    }
  }

  return v4;
}

uint64_t sub_1AF8FB190(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
  }

  else
  {
    sub_1AF4437DC();
    v8 = sub_1AFDFE5C8();
    v9 = v8;
    if (a2 < 1)
    {
      v11 = 0;
      v10 = a1;
    }

    else
    {
      v10 = a1;
      v11 = *a1;
    }

    v12 = 0;
    v13 = v8 + 64;
    v14 = v10 + 1;
    v37 = v4;
    while (v11)
    {
      v38 = (v11 - 1) & v11;
      v19 = __clz(__rbit64(v11)) | (v12 << 6);
LABEL_17:
      v23 = 16 * v19;
      v24 = (*(v4 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v4 + 56) + v23);
      v28 = *v27;
      v29 = v27[1];
      sub_1AFDFF288();

      sub_1AFDFD038();
      v30 = sub_1AFDFF2F8();
      v31 = -1 << *(v9 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v13 + 8 * (v32 >> 6))) != 0)
      {
        v15 = __clz(__rbit64((-1 << v32) & ~*(v13 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = (63 - v31) >> 6;
        do
        {
          if (v33 + 1 == v34)
          {
            v33 = 0;
          }

          else
          {
            ++v33;
          }

          v35 = *(v13 + 8 * v33);
        }

        while (v35 == -1);
        v15 = __clz(__rbit64(~v35)) + (v33 << 6);
      }

      *(v13 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v9 + 48) + v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = (*(v9 + 56) + v16);
      *v18 = v28;
      v18[1] = v29;
      ++*(v9 + 16);
      --v5;
      v4 = v37;
      v11 = v38;
      if (!v5)
      {
        return v9;
      }
    }

    v20 = v12 << 6;
    while (1)
    {
      v21 = v12 + 1;
      if (v12 + 1 >= a2)
      {
        return v9;
      }

      v22 = v14[v12];
      v20 += 64;
      ++v12;
      if (v22)
      {
        v38 = (v22 - 1) & v22;
        v19 = __clz(__rbit64(v22)) + v20;
        v12 = v21;
        goto LABEL_17;
      }
    }
  }

  return v4;
}

void *sub_1AF8FB3D0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
  v47 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v46 = &v42 - v13;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {
  }

  else
  {
    v45 = v12;
    sub_1AF68B08C();
    v14 = sub_1AFDFE5C8();
    v15 = v14;
    if (a2 < 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = *a1;
    }

    v17 = v45;
    v18 = 0;
    v19 = v14 + 64;
    v20 = a1 + 1;
    v43 = v14;
    v44 = a4;
    while (v16)
    {
      v23 = v17;
      v48 = (v16 - 1) & v16;
      v24 = __clz(__rbit64(v16)) | (v18 << 6);
LABEL_17:
      v28 = a4[7];
      v29 = a4[6] + 8 * v24;
      v30 = *v29;
      v31 = *(v29 + 4);
      v32 = v46;
      v33 = *(v47 + 72);
      sub_1AF904B14(v28 + v33 * v24, v46, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      sub_1AF0D6DF0(v32, v23, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      v15 = v43;
      sub_1AFDFF288();
      if (v31 == 1)
      {
        if (v30)
        {
          if (v30 == 1)
          {
            v34 = 1;
          }

          else
          {
            v34 = 3;
          }
        }

        else
        {
          v34 = 0;
        }

        MEMORY[0x1B271ACB0](v34);
      }

      else
      {
        MEMORY[0x1B271ACB0](2);
        sub_1AFDFF2C8();
      }

      v35 = sub_1AFDFF2F8();
      v36 = -1 << *(v15 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v19 + 8 * (v37 >> 6))) != 0)
      {
        v21 = __clz(__rbit64((-1 << v37) & ~*(v19 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
        v17 = v45;
      }

      else
      {
        v39 = (63 - v36) >> 6;
        v17 = v45;
        do
        {
          if (v38 + 1 == v39)
          {
            v38 = 0;
          }

          else
          {
            ++v38;
          }

          v40 = *(v19 + 8 * v38);
        }

        while (v40 == -1);
        v21 = __clz(__rbit64(~v40)) + (v38 << 6);
      }

      *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = *(v15 + 48) + 8 * v21;
      *v22 = v30;
      *(v22 + 4) = v31;
      sub_1AF0D6DF0(v17, *(v15 + 56) + v21 * v33, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      ++*(v15 + 16);
      --a3;
      a4 = v44;
      v16 = v48;
      if (!a3)
      {
        return v15;
      }
    }

    v25 = v18 << 6;
    while (1)
    {
      v26 = v18 + 1;
      if (v18 + 1 >= a2)
      {
        return v15;
      }

      v27 = v20[v18];
      v25 += 64;
      ++v18;
      if (v27)
      {
        v23 = v17;
        v48 = (v27 - 1) & v27;
        v24 = __clz(__rbit64(v27)) + v25;
        v18 = v26;
        goto LABEL_17;
      }
    }
  }

  return a4;
}

uint64_t sub_1AF8FB72C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
  }

  else
  {
    sub_1AF446DE8();
    v8 = sub_1AFDFE5C8();
    v9 = v8;
    if (a2 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = *a1;
    }

    v11 = 0;
    v12 = v8 + 64;
    v13 = a1 + 1;
    v33 = v4;
    while (v10)
    {
      v34 = (v10 - 1) & v10;
      v17 = __clz(__rbit64(v10)) | (v11 << 6);
LABEL_17:
      v21 = *(v4 + 56);
      v22 = *(v4 + 48) + 16 * v17;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 12);
      sub_1AF85B3D4(v21 + 96 * v17, v40);
      v37 = v40[2];
      v38 = v40[3];
      *v39 = v41[0];
      *&v39[9] = *(v41 + 9);
      v35 = v40[0];
      v36 = v40[1];
      sub_1AFDFF288();
      MEMORY[0x1B271ACB0](v23);
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      v26 = sub_1AFDFF2F8();
      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = (63 - v27) >> 6;
        do
        {
          if (v29 + 1 == v30)
          {
            v29 = 0;
          }

          else
          {
            ++v29;
          }

          v31 = *(v12 + 8 * v29);
        }

        while (v31 == -1);
        v14 = __clz(__rbit64(~v31)) + (v29 << 6);
      }

      *(v12 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v9 + 48) + 16 * v14;
      *v15 = v23;
      *(v15 + 8) = v24;
      *(v15 + 12) = v25;
      v16 = (*(v9 + 56) + 96 * v14);
      v16[2] = v37;
      v16[3] = v38;
      v16[4] = *v39;
      *(v16 + 73) = *&v39[9];
      *v16 = v35;
      v16[1] = v36;
      ++*(v9 + 16);
      --v5;
      v4 = v33;
      v10 = v34;
      if (!v5)
      {
        return v9;
      }
    }

    v18 = v11 << 6;
    while (1)
    {
      v19 = v11 + 1;
      if (v11 + 1 >= a2)
      {
        return v9;
      }

      v20 = v13[v11];
      v18 += 64;
      ++v11;
      if (v20)
      {
        v34 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) + v18;
        v11 = v19;
        goto LABEL_17;
      }
    }
  }

  return v4;
}

void *sub_1AF8FB9A8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for TextureCache.TextureKey();
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v27[-v14 - 8];
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {
  }

  else
  {
    sub_1AF4465F4();
    v16 = sub_1AFDFE5C8();
    if (a2 < 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = *a1;
    }

    v18 = 0;
    v19 = a1 + 1;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v21 = v20 | (v18 << 6);
LABEL_15:
      sub_1AF904B14(a4[6] + *(v26 + 72) * v21, v15, type metadata accessor for TextureCache.TextureKey);
      sub_1AF74EA6C(a4[7] + 104 * v21, v28);
      sub_1AF0D6DF0(v15, v11, type metadata accessor for TextureCache.TextureKey);
      sub_1AF446690(v28, v27);
      sub_1AF8FA02C(v11, v27, v16);
      if (!--a3)
      {
        return v16;
      }
    }

    v22 = v18 << 6;
    while (1)
    {
      v23 = v18 + 1;
      if (v18 + 1 >= a2)
      {
        return v16;
      }

      v24 = v19[v18];
      v22 += 64;
      ++v18;
      if (v24)
      {
        v17 = (v24 - 1) & v24;
        v21 = __clz(__rbit64(v24)) + v22;
        v18 = v23;
        goto LABEL_15;
      }
    }
  }

  return a4;
}

uint64_t sub_1AF8FBBD0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
  }

  else
  {
    sub_1AF904AA0(0, &unk_1EB63F530, sub_1AF444CB4, MEMORY[0x1E69E6EC8]);
    v8 = sub_1AFDFE5C8();
    v9 = v8;
    if (a2 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = *a1;
    }

    v11 = 0;
    v12 = v8 + 64;
    v13 = a1 + 1;
    v34 = v4;
    while (v10)
    {
      v36 = (v10 - 1) & v10;
      v17 = __clz(__rbit64(v10)) | (v11 << 6);
LABEL_17:
      v21 = (*(v4 + 48) + 16 * v17);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v4 + 56) + 24 * v17);
      v25 = v24[1];
      v35 = *v24;
      v26 = v24[2];
      sub_1AFDFF288();

      sub_1AFDFD038();
      v27 = sub_1AFDFF2F8();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = (63 - v28) >> 6;
        do
        {
          if (v30 + 1 == v31)
          {
            v30 = 0;
          }

          else
          {
            ++v30;
          }

          v32 = *(v12 + 8 * v30);
        }

        while (v32 == -1);
        v14 = __clz(__rbit64(~v32)) + (v30 << 6);
      }

      *(v12 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v9 + 48) + 16 * v14);
      *v15 = v22;
      v15[1] = v23;
      v16 = (*(v9 + 56) + 24 * v14);
      *v16 = v35;
      v16[1] = v25;
      v16[2] = v26;
      ++*(v9 + 16);
      --v5;
      v4 = v34;
      v10 = v36;
      if (!v5)
      {
        return v9;
      }
    }

    v18 = v11 << 6;
    while (1)
    {
      v19 = v11 + 1;
      if (v11 + 1 >= a2)
      {
        return v9;
      }

      v20 = v13[v11];
      v18 += 64;
      ++v11;
      if (v20)
      {
        v36 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) + v18;
        v11 = v19;
        goto LABEL_17;
      }
    }
  }

  return v4;
}

uint64_t sub_1AF8FBE88(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v6 = a4;
  v7 = a3;
  if (*(a4 + 16) == a3)
  {
  }

  else
  {
    sub_1AF904AA0(0, a5, a6, MEMORY[0x1E69E6EC8]);
    v10 = sub_1AFDFE5C8();
    v11 = v10;
    if (a2 < 1)
    {
      v13 = 0;
      v12 = a1;
    }

    else
    {
      v12 = a1;
      v13 = *a1;
    }

    v14 = 0;
    v15 = v10 + 64;
    v16 = v12 + 1;
    v34 = v6;
    while (v13)
    {
      v35 = (v13 - 1) & v13;
      v19 = __clz(__rbit64(v13)) | (v14 << 6);
LABEL_17:
      v23 = (*(v6 + 48) + 16 * v19);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v6 + 56) + 8 * v19);
      sub_1AFDFF288();

      sub_1AFDFD038();
      v27 = sub_1AFDFF2F8();
      v28 = -1 << *(v11 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) != 0)
      {
        v17 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = (63 - v28) >> 6;
        do
        {
          if (v30 + 1 == v31)
          {
            v30 = 0;
          }

          else
          {
            ++v30;
          }

          v32 = *(v15 + 8 * v30);
        }

        while (v32 == -1);
        v17 = __clz(__rbit64(~v32)) + (v30 << 6);
      }

      *(v15 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v11 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v11 + 56) + 8 * v17) = v26;
      ++*(v11 + 16);
      --v7;
      v6 = v34;
      v13 = v35;
      if (!v7)
      {
        return v11;
      }
    }

    v20 = v14 << 6;
    while (1)
    {
      v21 = v14 + 1;
      if (v14 + 1 >= a2)
      {
        return v11;
      }

      v22 = v16[v14];
      v20 += 64;
      ++v14;
      if (v22)
      {
        v35 = (v22 - 1) & v22;
        v19 = __clz(__rbit64(v22)) + v20;
        v14 = v21;
        goto LABEL_17;
      }
    }
  }

  return v6;
}

uint64_t sub_1AF8FC1E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
  }

  else
  {
    sub_1AF43D0F8();
    v8 = sub_1AFDFE5C8();
    v9 = v8;
    if (a2 < 1)
    {
      v11 = 0;
      v10 = a1;
    }

    else
    {
      v10 = a1;
      v11 = *a1;
    }

    v12 = 0;
    v13 = v8 + 64;
    v14 = v10 + 1;
    v36 = v4;
    while (v11)
    {
      v38 = (v11 - 1) & v11;
      v19 = __clz(__rbit64(v11)) | (v12 << 6);
LABEL_17:
      v23 = 16 * v19;
      v24 = (*(v4 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v4 + 56) + v23);
      v28 = v27[1];
      v37 = *v27;
      sub_1AFDFF288();

      sub_1AFDFD038();
      v29 = sub_1AFDFF2F8();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v13 + 8 * (v31 >> 6))) != 0)
      {
        v15 = __clz(__rbit64((-1 << v31) & ~*(v13 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = (63 - v30) >> 6;
        do
        {
          if (v32 + 1 == v33)
          {
            v32 = 0;
          }

          else
          {
            ++v32;
          }

          v34 = *(v13 + 8 * v32);
        }

        while (v34 == -1);
        v15 = __clz(__rbit64(~v34)) + (v32 << 6);
      }

      *(v13 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v9 + 48) + v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = (*(v9 + 56) + v16);
      v11 = v38;
      *v18 = v37;
      v18[1] = v28;
      ++*(v9 + 16);
      --v5;
      v4 = v36;
      if (!v5)
      {
        return v9;
      }
    }

    v20 = v12 << 6;
    while (1)
    {
      v21 = v12 + 1;
      if (v12 + 1 >= a2)
      {
        return v9;
      }

      v22 = v14[v12];
      v20 += 64;
      ++v12;
      if (v22)
      {
        v38 = (v22 - 1) & v22;
        v19 = __clz(__rbit64(v22)) + v20;
        v12 = v21;
        goto LABEL_17;
      }
    }
  }

  return v4;
}

unint64_t sub_1AF8FC41C(int a1)
{
  v3 = *v1;
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  v4 = sub_1AFDFF2F8();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (*(*(v3 + 48) + 4 * v6) != a1)
    {
      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    v13 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AF714348();
      v11 = v13;
    }

    v8 = *(*(v11 + 48) + 4 * v6);
    sub_1AF8FC724(v6);
    v9 = 0;
    *v1 = v13;
  }

  else
  {
LABEL_5:
    v8 = 0;
    v9 = 1;
  }

  return v8 | (v9 << 32);
}

uint64_t sub_1AF8FC530(uint64_t a1)
{
  v3 = *v1;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](a1);
  v4 = sub_1AFDFF2F8();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AF7141C8();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_1AF8FC8C4(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_1AF8FC634(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1AFDFF278();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AF713788();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_1AF8FCA64(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_1AF8FC724(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1AFDFE078();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1AFDFF288();
        sub_1AFDFF2C8();
        v10 = sub_1AFDFF2F8() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + 4 * v2);
          v13 = (v11 + 4 * v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  --*(v3 + 16);
  ++*(v3 + 36);
  return result;
}

unint64_t sub_1AF8FC8C4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1AFDFE078();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_1AFDFF288();
        MEMORY[0x1B271ACB0](v10);
        v11 = sub_1AFDFF2F8() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  --*(v3 + 16);
  ++*(v3 + 36);
  return result;
}

unint64_t sub_1AF8FCA64(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1AFDFE078();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1AFDFF278() & v7;
        if (v2 >= v9)
        {
          if (v12 < v9 || v2 < v12)
          {
            goto LABEL_5;
          }
        }

        else if (v12 < v9 && v2 < v12)
        {
          goto LABEL_5;
        }

        v15 = (v10 + 8 * v2);
        if (v2 != v6 || v15 >= v11 + 1)
        {
          *v15 = *v11;
          v2 = v6;
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  --*(v3 + 16);
  ++*(v3 + 36);
  return result;
}

uint64_t sub_1AF8FCBE0@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF52C850(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF8FCC08(unint64_t result)
{
  if (HIDWORD(result) || result != -1)
  {

    MEMORY[0x1EEE9AC00](v1, v2);
    sub_1AFC75668(0, sub_1AF8FF330);
  }

  return result;
}

uint64_t sub_1AF8FCCC8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1AF5AA598();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1AF8FCD00@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF52C94C(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

unint64_t sub_1AF8FCD2C(unint64_t result)
{
  if (HIDWORD(result) || result != -1)
  {

    MEMORY[0x1EEE9AC00](v1, v2);
    sub_1AFC75668(0, sub_1AF8FF36C);
  }

  return result;
}

uint64_t sub_1AF8FCDEC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52CA48(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF8FCE2C@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF52CB58(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1AF8FCE54(unint64_t result)
{
  if (HIDWORD(result) || result != -1)
  {

    MEMORY[0x1EEE9AC00](v1, v2);
    sub_1AFC75668(0, sub_1AF8FF3AC);
  }

  return result;
}

uint64_t sub_1AF8FCF14@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52CC48(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

unint64_t sub_1AF8FCF40(unint64_t result)
{
  if (HIDWORD(result) || result != -1)
  {

    MEMORY[0x1EEE9AC00](v1, v2);
    sub_1AFC75668(0, sub_1AF8FF3E8);
  }

  return result;
}

uint64_t sub_1AF8FD008(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2 <= 0xFD)
  {
    if (v3 > 0xFD)
    {
      return 0;
    }

    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v12 = *(a2 + 8);
    v11 = *(a2 + 16);
    if ((v2 & 0x80) != 0)
    {
      if ((v3 & 0x80) == 0)
      {
        return 0;
      }

      v7 = 0;
      if (v10 != v12 || v9 != v11)
      {
        return v7;
      }
    }

    else
    {
      if ((v3 & 0x80) != 0)
      {
        return 0;
      }

      v7 = 0;
      if (v10 != v12 || v9 != v11 || ((v3 ^ v2) & 1) != 0)
      {
        return v7;
      }
    }
  }

  else if (v3 <= 0xFD)
  {
    return 0;
  }

  v4 = *(a1 + 56);
  v5 = *(a2 + 56);
  v6 = v5 & 0xFF00;
  if ((v4 & 0xFF00) == 0x300)
  {
    if (v6 == 768)
    {
      return 1;
    }
  }

  else if (v6 != 768 && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    v13 = v4 >> 8;
    v14 = v5 >> 8;
    if (v4)
    {
      if (v13 == v14 && (v5 & 1) != 0)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && *(a1 + 48) == *(a2 + 48) && v13 == v14)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_1AF8FD11C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = a1 == a4 && a2 == a5 && a6 < 0;
  v9 = a6 ^ a3 ^ 1;
  if (a2 != a5)
  {
    v9 = 0;
  }

  if (a1 != a4)
  {
    v9 = 0;
  }

  if (a6 < 0)
  {
    v9 = 0;
  }

  if ((a3 & 0x80) == 0)
  {
    return v9;
  }

  return v8;
}

BOOL sub_1AF8FD160(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      return !a6 && *&a1 == *&a4;
    }

    if (a6 == 1)
    {
      v11 = 0;
      while (1)
      {
        v21 = a1;
        v18 = *(&v21 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v11 & 1)));
        v22 = a4;
        v13 = v18 == *(&v22 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v11 & 1)));
        result = v13;
        if (v11 == 1)
        {
          break;
        }

        while (1)
        {
          ++v11;
          if (v13)
          {
            break;
          }

          v13 = 0;
          result = 0;
          if (v11 == 1)
          {
            return result;
          }
        }
      }

      return result;
    }

    return 0;
  }

  if (a3 == 2)
  {
    if (a6 != 2)
    {
      return 0;
    }

    v7 = 0;
    *&v8 = a1;
    *(&v8 + 1) = a2;
    *&v9 = a4;
    *(&v9 + 1) = a5;
    while (1)
    {
      v23 = v8;
      v19 = *(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)));
      v24 = v9;
      v10 = v19 == *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)));
      result = v10;
      if (v7 == 2)
      {
        break;
      }

      while (1)
      {
        ++v7;
        if (v10)
        {
          break;
        }

        v10 = 0;
        result = 0;
        if (v7 == 2)
        {
          return result;
        }
      }
    }
  }

  else
  {
    if (a6 != 3)
    {
      return 0;
    }

    v14 = 0;
    *&v15 = a1;
    *(&v15 + 1) = a2;
    *&v16 = a4;
    *(&v16 + 1) = a5;
    while (1)
    {
      v25 = v15;
      v20 = *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3)));
      v26 = v16;
      v17 = v20 == *(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3)));
      result = v17;
      if (v14 == 3)
      {
        break;
      }

      while (1)
      {
        ++v14;
        if (v17)
        {
          break;
        }

        v17 = 0;
        result = 0;
        if (v14 == 3)
        {
          return result;
        }
      }
    }
  }

  return result;
}

BOOL sub_1AF8FD320(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  result = 0;
  if (a1 == a5 && a2 == a6)
  {
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
        return 0;
      }

      return (a8 ^ a4) < 0x100u;
    }

    result = 0;
    if ((a8 & 1) == 0 && a3 == a7)
    {
      return (a8 ^ a4) < 0x100u;
    }
  }

  return result;
}

uint64_t sub_1AF8FD36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 == a5 && a2 == a6 || (v9 = sub_1AFDFEE28(), result = 0, (v9 & 1) != 0))
  {
    if (a7)
    {
      v11 = a3 == a7;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    if (a3)
    {
      return v12;
    }

    else
    {
      return a7 == 0;
    }
  }

  return result;
}

uint64_t sub_1AF8FD3D4()
{
  sub_1AFDFD048();
  sub_1AFDFD078();

  return sub_1AFDFD1F8();
}

uint64_t sub_1AF8FD490(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v52 = a1[4];
  v53 = v2;
  v54 = a1[6];
  v3 = a1[1];
  *v49 = *a1;
  *&v49[16] = v3;
  v4 = a1[3];
  v50 = a1[2];
  v51 = v4;
  v5 = a2[1];
  v55 = *a2;
  v56 = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[6];
  v60 = a2[5];
  v61 = v8;
  v9 = a2[4];
  v58 = v7;
  v59 = v9;
  v57 = v6;
  v10 = v49[24];
  v11 = v49[25];
  v12 = v49[26];
  v13 = v49[27];
  v14 = *&v49[28];
  v15 = v50;
  v16 = DWORD1(v50);
  v17 = BYTE10(v50);
  v18 = WORD4(v50);
  sub_1AF5A57D8(v49, &v45);
  sub_1AF5A57D8(&v55, &v45);
  v43 = v11;
  v44 = v10;
  LOBYTE(v45) = v10;
  BYTE1(v45) = v11;
  v41 = v14;
  v42 = v12;
  BYTE2(v45) = v12;
  v38 = v13;
  v39 = v16;
  BYTE3(v45) = v13;
  HIDWORD(v45) = v14;
  v46 = __PAIR64__(v16, v15);
  v40 = v15;
  v48 = v17;
  v47 = v18;
  v19 = sub_1AF467494(&v45);
  v20 = BYTE10(v57);
  v21 = WORD4(v57);
  v22 = BYTE8(v56);
  v45 = *(&v56 + 1);
  v23 = BYTE9(v56);
  v24 = BYTE10(v56);
  v25 = BYTE11(v56);
  v26 = HIDWORD(v56);
  v46 = v57;
  v37 = v57;
  v48 = BYTE10(v57);
  v47 = WORD4(v57);
  if (v19 == sub_1AF467494(&v45) && (LOBYTE(v45) = v44, BYTE1(v45) = v43, BYTE2(v45) = v42, BYTE3(v45) = v38, v27 = v21 | (v20 << 16), HIDWORD(v45) = v41, v46 = __PAIR64__(v39, v40), v47 = v18, v36 = v18 | (v17 << 16), v48 = BYTE2(v36), v28 = sub_1AF445CA8(&v45), LOBYTE(v45) = v22, BYTE1(v45) = v23, BYTE2(v45) = v24, BYTE3(v45) = v25, HIDWORD(v45) = v26, v46 = v37, v48 = BYTE2(v27), v47 = v27, v28 == sub_1AF445CA8(&v45)) && (LOBYTE(v45) = v44, BYTE1(v45) = v43, BYTE2(v45) = v42, BYTE3(v45) = v38, HIDWORD(v45) = v41, v46 = __PAIR64__(v39, v40), v47 = v36, v48 = BYTE2(v36), v29 = sub_1AF445CB0(&v45), LOBYTE(v45) = v22, BYTE1(v45) = v23, BYTE2(v45) = v24, BYTE3(v45) = v25, HIDWORD(v45) = v26, v46 = v37, v48 = BYTE2(v27), v47 = v27, v29 == sub_1AF445CB0(&v45)) && (LOBYTE(v45) = v44, BYTE1(v45) = v43, BYTE2(v45) = v42, BYTE3(v45) = v38, HIDWORD(v45) = v41, v46 = __PAIR64__(v39, v40), v47 = v36, v48 = BYTE2(v36), v30 = sub_1AF478AC0(&v45), LOBYTE(v45) = v22, BYTE1(v45) = v23, BYTE2(v45) = v24, BYTE3(v45) = v25, HIDWORD(v45) = v26, v46 = v37, v48 = BYTE2(v27), v47 = v27, v30 == sub_1AF478AC0(&v45)) && (LOBYTE(v45) = v44, BYTE1(v45) = v43, BYTE2(v45) = v42, BYTE3(v45) = v38, HIDWORD(v45) = v41, v46 = __PAIR64__(v39, v40), v47 = v36, v48 = BYTE2(v36), v31 = sub_1AF8FE1D8(&v45), LOBYTE(v45) = v22, BYTE1(v45) = v23, BYTE2(v45) = v24, BYTE3(v45) = v25, HIDWORD(v45) = v26, v46 = v37, v48 = BYTE2(v27), v47 = v27, v31 == sub_1AF8FE1D8(&v45)) && (LOBYTE(v45) = v44, BYTE1(v45) = v43, BYTE2(v45) = v42, BYTE3(v45) = v38, HIDWORD(v45) = v41, v46 = __PAIR64__(v39, v40), v47 = v36, v48 = BYTE2(v36), v32 = sub_1AF467494(&v45), LOBYTE(v45) = v22, BYTE1(v45) = v23, BYTE2(v45) = v24, BYTE3(v45) = v25, HIDWORD(v45) = v26, v46 = v37, v48 = BYTE2(v27), v47 = v27, v32 == sub_1AF467494(&v45)) && *v49 == v55 && (*&v49[8] == __PAIR128__(v56, *(&v55 + 1)) || (sub_1AFDFEE28() & 1) != 0) && (sub_1AF776548(v53, v60) & 1) != 0)
  {
    v33 = sub_1AF7766FC(*(&v53 + 1), *(&v60 + 1));
    sub_1AF5A5834(&v55);
    sub_1AF5A5834(v49);
    v34 = v33 ^ 1;
  }

  else
  {
    sub_1AF5A5834(&v55);
    sub_1AF5A5834(v49);
    v34 = 1;
  }

  return v34 & 1;
}

uint64_t sub_1AF8FD90C()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF8FD958()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF8FD9A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5465727574786574 && a2 == 0xEB00000000657079 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F466C65786970 && a2 == 0xEB0000000074616DLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6874706564 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AFF242F0 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F43656C706D6173 && a2 == 0xEB00000000746E75 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E654C7961727261 && a2 == 0xEB00000000687467 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001AFF24330 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656C7A7A697773 && a2 == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4D656761726F7473 && a2 == 0xEB0000000065646FLL)
  {

    return 11;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    if (v5)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1AF8FDD7C()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF8FDDC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x687464695778616DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x686769654878616DLL && a2 == 0xE900000000000074 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657073417065656BLL && a2 == 0xEF6F697461527463)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1AF8FDEF0()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF8FDF3C(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return 12;
  }

  else
  {
    return byte_1AFE849E8[a1];
  }
}

double sub_1AF8FDF5C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF0D5A54(a1, v19);
  if (swift_dynamicCast())
  {
    *&v4 = v18;
    v17 = v4;
    v5 = 0x80;
  }

  else
  {
    v6 = a1[3];
    v7 = sub_1AF441150(a1, v6);
    MEMORY[0x1EEE9AC00](v7, v7);
    v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v9);
    sub_1AF879030(v9, v6, v19);
    if (v20 == 255)
    {
      v16 = 0u;
      v17 = 0u;
      v5 = -16;
      v14 = 0u;
      v15 = 0u;
    }

    else
    {
      v15 = v19[3];
      v16 = v19[2];
      v5 = v20 & 0xF;
      v14 = v19[1];
      v17 = v19[0];
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v11 = v14;
  *a2 = v17;
  *(a2 + 16) = v11;
  v13 = v15;
  result = *&v16;
  *(a2 + 32) = v16;
  *(a2 + 48) = v13;
  *(a2 + 64) = v5;
  return result;
}

void sub_1AF8FE0E0()
{
  if (!qword_1EB632E50)
  {
    sub_1AF4498F4(255, &qword_1EB632E60);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB632E50);
    }
  }
}

void sub_1AF8FE14C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1AF4498F4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AF8FE1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AF8FE244@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9061B8(0, &qword_1EB633B20, sub_1AF905D9C, &type metadata for TextureOptions.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v14 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF905D9C();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v11 = v14;
  sub_1AF905DF0();
  sub_1AFDFE768();
  (*(v11 + 8))(v9, v6);
  v12 = v15;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = v12;
  *(a2 + 24) = -2;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  *(a2 + 56) = 768;
  return result;
}

uint64_t sub_1AF8FE43C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9061B8(0, &qword_1ED721F00, sub_1AF8FF428, &_s10CodingKeysON_0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v21 - v11;
  v13 = a1[3];
  v14 = a1[4];
  sub_1AF441150(a1, v13);
  if (!sub_1AF694FF8(1077, v13, v14))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v2)
    {
      v16 = *(&v25 + 1);
      sub_1AF441150(&v24, *(&v25 + 1));
      sub_1AFDFEE58();
      v23 = v18;
      v17 = 0;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v24);
      goto LABEL_7;
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v31 = a2;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8FF428();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  LOBYTE(v30) = 0;
  sub_1AF882388();
  sub_1AFDFE768();
  (*(v7 + 8))(v12, v6);
  v23 = v24;
  v21 = v26;
  v22 = v25;
  v7 = v27;
  v16 = v28;
  v17 = v29 & 0xF;
  a2 = v31;
LABEL_7:
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v19 = v21;
  v20 = v22;
  *a2 = v23;
  *(a2 + 16) = v20;
  *(a2 + 32) = v19;
  *(a2 + 48) = v7;
  *(a2 + 56) = v16;
  *(a2 + 64) = v17;
  return result;
}

void *sub_1AF8FEAE4(void *a1)
{
  sub_1AF9061B8(0, &qword_1EB640210, sub_1AF90455C, &type metadata for TextureFileData.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  v9 = sub_1AF441150(a1, a1[3]);
  sub_1AF90455C();
  v10 = v9;
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF8710A0();
    sub_1AFDFE6E8();
    (*(v5 + 8))(v8, v4);
    v10 = v12;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v10;
}

uint64_t sub_1AF8FECA8(void *a1)
{
  sub_1AF9061B8(0, &qword_1ED722FD0, sub_1AF8FEFA0, &type metadata for TextureLoadPolicy.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v17[-v7];
  sub_1AF441150(a1, a1[3]);
  sub_1AF8FEFA0();
  sub_1AFDFF3B8();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  if (sub_1AF69504C(2040, v9, v10))
  {
    v17[15] = 0;
    sub_1AF8FEFF4();
    sub_1AFDFE768();
    v11 = v18;
    v12 = v18;
  }

  else
  {
    v24 = 1;
    sub_1AF8FEFF4();
    sub_1AFDFE768();
    v12 = v25;
    v22 = 2;
    sub_1AFDFE768();
    v11 = v23;
  }

  v20 = 3;
  sub_1AF8FF048();
  sub_1AFDFE768();
  v13 = v21;
  v19 = 4;
  v15 = sub_1AFDFE718();
  (*(v5 + 8))(v8, v4);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  if (v15)
  {
    v16 = 0x1000000;
  }

  else
  {
    v16 = 0;
  }

  return v16 | (v13 << 16) | (v11 << 8) | v12;
}

unint64_t sub_1AF8FEFA0()
{
  result = qword_1ED725418;
  if (!qword_1ED725418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725418);
  }

  return result;
}

unint64_t sub_1AF8FEFF4()
{
  result = qword_1ED725610;
  if (!qword_1ED725610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725610);
  }

  return result;
}

unint64_t sub_1AF8FF048()
{
  result = qword_1ED72B2A8;
  if (!qword_1ED72B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72B2A8);
  }

  return result;
}

unint64_t sub_1AF8FF09C()
{
  result = qword_1EB640138;
  if (!qword_1EB640138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640138);
  }

  return result;
}

unint64_t sub_1AF8FF0F0()
{
  result = qword_1EB640140;
  if (!qword_1EB640140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640140);
  }

  return result;
}

uint64_t sub_1AF8FF144(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AF90540C(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AF8FF1B4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52CC48(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1AF8FF1EC@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF52CB58(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AF8FF220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5AA598(a1, a2, v3);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1AF8FF268@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52CA48(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF8FF2B0@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF52C94C(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_1AF8FF2FC@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF52C850(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF8FF428()
{
  result = qword_1ED7229B8;
  if (!qword_1ED7229B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7229B8);
  }

  return result;
}

uint64_t sub_1AF8FF47C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AF9061B8(255, a2, sub_1AF43A0C8, MEMORY[0x1E69E6448], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF8FF4E0()
{
  result = qword_1EB640158;
  if (!qword_1EB640158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640158);
  }

  return result;
}

float sub_1AF8FF544(void *a1)
{
  sub_1AF9061B8(0, &qword_1EB640418, sub_1AF906164, &type metadata for TextureRequireMask.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12[-v8];
  sub_1AF441150(a1, a1[3]);
  sub_1AF906164();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v12[14] = 0;
    sub_1AF51CA04();
    sub_1AFDFE768();
    v12[13] = 1;
    sub_1AFDFE738();
    v2 = v11;
    (*(v6 + 8))(v9, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AF8FF740(void *a1)
{
  v3 = a1[3];
  sub_1AF441150(a1, v3);
  sub_1AFDFF398();
  if (v1)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    sub_1AF441150(v6, v6[3]);
    sub_1AFDFEE58();
    v3 = v4;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v3;
}

uint64_t sub_1AF8FFAD0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v89 = a2;
  sub_1AF9061B8(0, &qword_1EB632878, sub_1AF9047C4, &type metadata for TextureShaderAsset.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v90 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v82 - v7;
  CFXTextureDescriptorMakeDefault(&v117);
  v9 = MEMORY[0x1E69E7CC0];
  *&v94 = sub_1AF42CC94(MEMORY[0x1E69E7CC0]);
  v93 = sub_1AF42C520(v9);
  v91 = sub_1AF42CA3C(v9);
  v92 = v10;
  v11 = a1[3];
  v134 = a1;
  sub_1AF441150(a1, v11);
  sub_1AF9047C4();
  sub_1AFDFF3B8();
  if (v2)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v134);
    v104 = 0xFFFFFFFFLL;
    v105 = 0;
    v106 = 0xE000000000000000;
    v107 = v117;
    v108 = v118;
    v109 = MEMORY[0x1E69E7CC8];
    v110 = MEMORY[0x1E69E7CC0];
    v111 = MEMORY[0x1E69E7CC0];
    v112 = MEMORY[0x1E69E7CC0];
    v113 = v94;
    v114 = v93;
    v115 = v91;
    v116 = v92;
    return sub_1AF5A5834(&v104);
  }

  LOBYTE(v104) = 0;
  v13 = sub_1AFDFE708();
  v15 = v14;
  v88 = v8;
  v16 = v134[3];
  v17 = v134[4];
  sub_1AF441150(v134, v16);
  if (sub_1AF694FF8(1048, v16, v17))
  {
    LOBYTE(v95) = 3;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    v87 = v104;
  }

  else
  {
    v87 = 0xFFFFFFFFLL;
  }

  v18 = v134[3];
  v19 = v134[4];
  sub_1AF441150(v134, v18);
  if (sub_1AF694FF8(1081, v18, v19))
  {
    sub_1AF5A56DC();
    LOBYTE(v95) = 2;
    sub_1AF90492C(&qword_1EB632AF8, sub_1AF5A56DC, sub_1AF8AB790);
    sub_1AFDFE6E8();
    v20 = v90;
    v21 = v104;
    if (!v104)
    {
      v21 = sub_1AF42CC94(MEMORY[0x1E69E7CC0]);
    }

    *&v94 = v21;
    goto LABEL_60;
  }

  sub_1AF904818();
  LOBYTE(v95) = 2;
  sub_1AF90492C(&qword_1EB640290, sub_1AF904818, sub_1AF904878);
  sub_1AFDFE6E8();
  v22 = v104;
  v84 = v13;
  if (!v104)
  {
    v22 = sub_1AF43DE28(MEMORY[0x1E69E7CC0]);
  }

  v23 = 0;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v22[8];
  v27 = (v24 + 63) >> 6;
  v28 = v94;
  v85 = v27;
  v86 = v22;
  while (v26)
  {
    v31 = v23;
LABEL_24:
    v32 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v33 = v32 | (v31 << 6);
    v34 = *(v22[6] + 8 * v33);
    v35 = v22[7] + 32 * v33;
    v94 = *v35;
    v36 = *(v35 + 16);
    if (v36 > 1)
    {
      if (v36 == 2)
      {
        LODWORD(v83) = swift_isUniquelyReferenced_nonNull_native();
        v104 = v28;
        v43 = sub_1AF449CB8(v34);
        v44 = v28[2] + ((v42 & 1) == 0);
        if (v28[3] >= v44)
        {
          if ((v83 & 1) == 0)
          {
            v83 = v43;
            v65 = v42;
            sub_1AF846FA0();
            LOBYTE(v42) = v65;
            v43 = v83;
          }
        }

        else
        {
          HIDWORD(v82) = v42;
          sub_1AF830CA0(v44, v83);
          v45 = sub_1AF449CB8(v34);
          v46 = v42 & 1;
          LOBYTE(v42) = BYTE4(v82);
          if ((BYTE4(v82) & 1) != v46)
          {
            goto LABEL_63;
          }

          v43 = v45;
        }

        v22 = v86;
        v28 = v104;
        if ((v42 & 1) == 0)
        {
          *(v104 + 8 * (v43 >> 6) + 64) |= 1 << v43;
          *(v28[6] + 8 * v43) = v34;
          v29 = v28[7] + 80 * v43;
          *v29 = v94;
          v30 = 2;
          goto LABEL_17;
        }

        v59 = *(v104 + 56) + 80 * v43;
        *v59 = v94;
        v60 = 2;
      }

      else
      {
        LODWORD(v83) = swift_isUniquelyReferenced_nonNull_native();
        v104 = v28;
        v53 = sub_1AF449CB8(v34);
        v54 = v28[2] + ((v52 & 1) == 0);
        if (v28[3] >= v54)
        {
          if ((v83 & 1) == 0)
          {
            v83 = v53;
            v67 = v52;
            sub_1AF846FA0();
            LOBYTE(v52) = v67;
            v53 = v83;
          }
        }

        else
        {
          HIDWORD(v82) = v52;
          sub_1AF830CA0(v54, v83);
          v55 = sub_1AF449CB8(v34);
          v56 = v52 & 1;
          LOBYTE(v52) = BYTE4(v82);
          if ((BYTE4(v82) & 1) != v56)
          {
LABEL_63:
            result = sub_1AFDFF1A8();
            __break(1u);
            return result;
          }

          v53 = v55;
        }

        v22 = v86;
        v28 = v104;
        if ((v52 & 1) == 0)
        {
          *(v104 + 8 * (v53 >> 6) + 64) |= 1 << v53;
          *(v28[6] + 8 * v53) = v34;
          v29 = v28[7] + 80 * v53;
          *v29 = v94;
          v30 = 3;
LABEL_17:
          *(v29 + 64) = v30;
LABEL_18:
          ++v28[2];
          goto LABEL_19;
        }

        v59 = *(v104 + 56) + 80 * v53;
        *v59 = v94;
        v60 = 3;
      }

      *(v59 + 64) = v60;
    }

    else if (v36)
    {
      LODWORD(v83) = swift_isUniquelyReferenced_nonNull_native();
      v104 = v28;
      v48 = sub_1AF449CB8(v34);
      v49 = v28[2] + ((v47 & 1) == 0);
      if (v28[3] >= v49)
      {
        if ((v83 & 1) == 0)
        {
          v83 = v48;
          v66 = v47;
          sub_1AF846FA0();
          LOBYTE(v47) = v66;
          v48 = v83;
        }
      }

      else
      {
        HIDWORD(v82) = v47;
        sub_1AF830CA0(v49, v83);
        v50 = sub_1AF449CB8(v34);
        v51 = v47 & 1;
        LOBYTE(v47) = BYTE4(v82);
        if ((BYTE4(v82) & 1) != v51)
        {
          goto LABEL_63;
        }

        v48 = v50;
      }

      v22 = v86;
      v28 = v104;
      if ((v47 & 1) == 0)
      {
        *(v104 + 8 * (v48 >> 6) + 64) |= 1 << v48;
        *(v28[6] + 8 * v48) = v34;
        v63 = v28[7] + 80 * v48;
        *v63 = v94;
        *(v63 + 64) = 1;
        goto LABEL_18;
      }

      v61 = *(v104 + 56) + 80 * v48;
      *v61 = v94;
      *(v61 + 64) = 1;
    }

    else
    {
      LODWORD(v83) = swift_isUniquelyReferenced_nonNull_native();
      v104 = v28;
      v38 = sub_1AF449CB8(v34);
      v39 = v28[2] + ((v37 & 1) == 0);
      if (v28[3] >= v39)
      {
        if ((v83 & 1) == 0)
        {
          v83 = v38;
          v64 = v37;
          sub_1AF846FA0();
          LOBYTE(v37) = v64;
          v38 = v83;
        }
      }

      else
      {
        HIDWORD(v82) = v37;
        sub_1AF830CA0(v39, v83);
        v40 = sub_1AF449CB8(v34);
        v41 = v37 & 1;
        LOBYTE(v37) = BYTE4(v82);
        if ((BYTE4(v82) & 1) != v41)
        {
          goto LABEL_63;
        }

        v38 = v40;
      }

      v22 = v86;
      v57 = v94;
      v28 = v104;
      if ((v37 & 1) == 0)
      {
        *(v104 + 8 * (v38 >> 6) + 64) |= 1 << v38;
        *(v28[6] + 8 * v38) = v34;
        v62 = v28[7] + 80 * v38;
        *v62 = v57;
        *(v62 + 64) = 0;
        goto LABEL_18;
      }

      v58 = *(v104 + 56) + 80 * v38;
      *v58 = v94;
      *(v58 + 64) = 0;
    }

LABEL_19:
    v23 = v31;
    v27 = v85;
  }

  while (1)
  {
    v31 = v23 + 1;
    if (v23 + 1 >= v27)
    {
      break;
    }

    v26 = v22[v23++ + 9];
    if (v26)
    {
      goto LABEL_24;
    }
  }

  *&v94 = v28;

  v13 = v84;
  v20 = v90;
LABEL_60:
  sub_1AF9048CC();
  LOBYTE(v95) = 4;
  sub_1AF90492C(&qword_1EB632AE8, sub_1AF9048CC, sub_1AF47FEB4);
  sub_1AFDFE6E8();
  v68 = v104;
  if (!v104)
  {
    v68 = sub_1AF42C520(MEMORY[0x1E69E7CC0]);
  }

  v93 = v68;
  v101 = 1;
  sub_1AF6086F8();
  v69 = v88;
  sub_1AFDFE768();
  v117 = v102;
  v118 = v103;
  v119 = v87;
  v120 = v13;
  v121 = v15;
  v122 = v102;
  v123 = v103;
  v124 = MEMORY[0x1E69E7CC8];
  v90 = v5;
  v70 = v20;
  v71 = MEMORY[0x1E69E7CC0];
  v125 = MEMORY[0x1E69E7CC0];
  v126 = MEMORY[0x1E69E7CC0];
  v127 = MEMORY[0x1E69E7CC0];
  v128 = v94;
  v72 = v13;
  v84 = v13;
  v73 = v93;
  v129 = v93;
  v130 = v91;
  v131 = v92;
  v132 = v92;
  v133[0] = v91;
  v74 = sub_1AF8E5418();
  v92 = v75;
  (*(v70 + 8))(v69, v90);
  sub_1AF8FE1E4(v133, &qword_1ED722050, type metadata accessor for PropertyDescription, MEMORY[0x1E69E5E28], sub_1AF904AA0);
  sub_1AF8FE1E4(&v132, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8], sub_1AF90540C);
  LODWORD(v69) = v87;
  LODWORD(v70) = HIDWORD(v87);
  *&v95 = v87;
  *(&v95 + 1) = v72;
  *&v96[0] = v15;
  *(v96 + 8) = v117;
  *(&v96[1] + 1) = v118;
  *&v97 = MEMORY[0x1E69E7CC8];
  *(&v97 + 1) = v71;
  *&v98 = v71;
  *(&v98 + 1) = v71;
  v76 = v94;
  *&v99 = v94;
  *(&v99 + 1) = v73;
  v77 = v92;
  *&v100 = v74;
  *(&v100 + 1) = v92;
  sub_1AF5A57D8(&v95, &v104);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v134);
  v104 = __PAIR64__(v70, v69);
  v105 = v84;
  v106 = v15;
  v107 = v117;
  v108 = v118;
  v109 = MEMORY[0x1E69E7CC8];
  v110 = v71;
  v111 = v71;
  v112 = v71;
  v113 = v76;
  v114 = v93;
  v115 = v74;
  v116 = v77;
  result = sub_1AF5A5834(&v104);
  v78 = v99;
  v79 = v89;
  v89[4] = v98;
  v79[5] = v78;
  v79[6] = v100;
  v80 = v96[0];
  *v79 = v95;
  v79[1] = v80;
  v81 = v97;
  v79[2] = v96[1];
  v79[3] = v81;
  return result;
}

void *sub_1AF9006C8(void *a1)
{
  sub_1AF9061B8(0, &qword_1EB640238, sub_1AF9045B0, &type metadata for TextureArrayFileAsset.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v13 = MEMORY[0x1E69E7CC0];
  v9 = sub_1AF441150(a1, a1[3]);
  sub_1AF9045B0();
  v10 = v9;
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF8D9EB0(MEMORY[0x1E69E7CC0]);

    sub_1AF0D0F04(0, &qword_1EB63A870, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
    sub_1AF904604(&unk_1EB640250, &qword_1EB633060);
    sub_1AFDFE768();
    sub_1AF8DA164(v12[1]);
    (*(v5 + 8))(v8, v4);
    v10 = v13;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v10;
}

uint64_t sub_1AF900920@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v17 = a2;
  sub_1AF9061B8(0, &qword_1EB633AD0, sub_1AF9046C8, &type metadata for TextureLoadingOptions.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9046C8();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v17;
  sub_1AF90471C();
  sub_1AFDFE768();
  (*(v6 + 8))(v9, v5);
  v13 = v15[2];
  v14 = v15[3];
  v15[0] = v16[0];
  *(v15 + 10) = *(v16 + 10);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v12 = v14;
  *v10 = v13;
  v10[1] = v12;
  v10[2] = v15[0];
  *(v10 + 42) = *(v15 + 10);
  return result;
}

uint64_t sub_1AF900B10(void *a1)
{
  v3 = MEMORY[0x1E69E6F48];
  sub_1AF9061B8(0, &qword_1EB632868, sub_1AF905E98, &type metadata for TextureDescriptorCoder.CodingKeys, MEMORY[0x1E69E6F48]);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v33 - v6;
  sub_1AF9061B8(0, &unk_1EB632858, sub_1AF905EEC, &type metadata for TextureDescriptorCoder.CodingKeys_pre2019, v3);
  v9 = v8;
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33 - v11;
  CFXTextureDescriptorMakeDefault(&v38);
  v13 = a1[3];
  v14 = a1[4];
  sub_1AF441150(a1, v13);
  v15 = sub_1AF69504C(2019, v13, v14);
  sub_1AF441150(a1, a1[3]);
  if (v15)
  {
    sub_1AF905EEC();
    sub_1AFDFF3B8();
    if (!v1)
    {
      type metadata accessor for MTLTextureType(0);
      v37 = 0;
      sub_1AF9027C4(&unk_1ED721FB0, type metadata accessor for MTLTextureType);
      sub_1AFDFE768();
      sub_1AF466BDC(v39, &v38);
      type metadata accessor for MTLPixelFormat(0);
      v37 = 1;
      sub_1AF9027C4(&qword_1EB632A40, type metadata accessor for MTLPixelFormat);
      sub_1AFDFE768();
      sub_1AF46748C(v39, &v38);
      LOBYTE(v39) = 2;
      v16 = sub_1AFDFE748();
      sub_1AF46749C(v16, &v38);
      LOBYTE(v39) = 3;
      v17 = sub_1AFDFE748();
      sub_1AF4674A4(v17, &v38);
      LOBYTE(v39) = 4;
      v18 = sub_1AFDFE748();
      sub_1AF4674AC(v18, &v38);
      LOBYTE(v39) = 5;
      v19 = sub_1AFDFE748();
      sub_1AF4674B4(v19, &v38);
      LOBYTE(v39) = 6;
      v20 = sub_1AFDFE748();
      sub_1AF9027BC(v20, &v38);
      LOBYTE(v39) = 7;
      v21 = sub_1AFDFE748();
      sub_1AF4674C8(v21, &v38);
      type metadata accessor for MTLTextureUsage(0);
      v37 = 9;
      sub_1AF9027C4(&unk_1EB6329F8, type metadata accessor for MTLTextureUsage);
      sub_1AFDFE768();
      sub_1AF5F7484(v39, &v38);
      LOBYTE(v39) = 10;
      v22 = sub_1AFDFE718();
      sub_1AF905F40(v22 & 1, &v38);
      type metadata accessor for MTLTextureSwizzleChannels(0);
      v37 = 11;
      sub_1AF9027C4(&qword_1EB632970, type metadata accessor for MTLTextureSwizzleChannels);
      sub_1AFDFE768();
      LODWORD(v38) = v39;
      type metadata accessor for MTLResourceOptions(0);
      v37 = 8;
      sub_1AF9027C4(&qword_1EB640378, type metadata accessor for MTLResourceOptions);
      sub_1AFDFE768();
      sub_1AF5F7474((v39 >> 4) & 2, &v38);
      (*(v34 + 8))(v12, v9);
LABEL_12:
      v9 = v38;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      return v9;
    }
  }

  else
  {
    sub_1AF905E98();
    sub_1AFDFF3B8();
    if (!v1)
    {
      type metadata accessor for MTLTextureType(0);
      v37 = 0;
      sub_1AF9027C4(&unk_1ED721FB0, type metadata accessor for MTLTextureType);
      sub_1AFDFE768();
      sub_1AF466BDC(v39, &v38);
      type metadata accessor for MTLPixelFormat(0);
      v37 = 1;
      sub_1AF9027C4(&qword_1EB632A40, type metadata accessor for MTLPixelFormat);
      sub_1AFDFE768();
      sub_1AF46748C(v39, &v38);
      LOBYTE(v39) = 2;
      v23 = sub_1AFDFE748();
      sub_1AF46749C(v23, &v38);
      LOBYTE(v39) = 3;
      v24 = sub_1AFDFE748();
      sub_1AF4674A4(v24, &v38);
      LOBYTE(v39) = 4;
      v25 = sub_1AFDFE748();
      sub_1AF4674AC(v25, &v38);
      LOBYTE(v39) = 5;
      v26 = sub_1AFDFE748();
      sub_1AF4674B4(v26, &v38);
      LOBYTE(v39) = 6;
      v27 = sub_1AFDFE748();
      sub_1AF9027BC(v27, &v38);
      LOBYTE(v39) = 7;
      v28 = sub_1AFDFE748();
      sub_1AF4674C8(v28, &v38);
      type metadata accessor for MTLTextureUsage(0);
      v37 = 8;
      sub_1AF9027C4(&unk_1EB6329F8, type metadata accessor for MTLTextureUsage);
      sub_1AFDFE768();
      sub_1AF5F7484(v39, &v38);
      LOBYTE(v39) = 9;
      v30 = sub_1AFDFE718();
      sub_1AF905F40(v30 & 1, &v38);
      type metadata accessor for MTLTextureSwizzleChannels(0);
      v37 = 10;
      sub_1AF9027C4(&qword_1EB632970, type metadata accessor for MTLTextureSwizzleChannels);
      sub_1AFDFE768();
      LODWORD(v38) = v39;
      LOBYTE(v39) = 11;
      v31 = sub_1AFDFE7B8();
      if (v31 == 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = v31;
      }

      sub_1AF5F7474(v32, &v38);
      (*(v35 + 8))(v7, v36);
      goto LABEL_12;
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

uint64_t sub_1AF901518(void *a1)
{
  sub_1AF9061B8(0, &qword_1EB6403D8, sub_1AF906068, &type metadata for TextureRequireSizeLimit.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[3];
  sub_1AF441150(a1, v9);
  sub_1AF906068();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v14 = 0;
    v9 = sub_1AFDFE748();
    v13 = 1;
    sub_1AFDFE748();
    v12 = 2;
    sub_1AFDFE718();
    (*(v5 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

uint64_t sub_1AF90171C(void *a1)
{
  sub_1AF9061B8(0, &qword_1EB640400, sub_1AF906110, &type metadata for RenderGraphTextureTarget.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13 - v7;
  v9 = a1[3];
  sub_1AF441150(a1, v9);
  sub_1AF906110();
  sub_1AFDFF3B8();
  if (v1)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    v15 = 0;
    sub_1AF8FF048();
    sub_1AFDFE768();
    v10 = v16;
    v14 = 1;
    v12 = sub_1AFDFE6A8();
    (*(v5 + 8))(v8, v4);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return v10 & 0xFFFFFEFF | ((v12 & 1) << 8);
  }

  return v9;
}

uint64_t sub_1AF90190C(void *a1)
{
  sub_1AF9061B8(0, &qword_1EB633AC0, sub_1AF9043DC, &type metadata for TextureRequireAnimationRepresentation.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - v7;
  v9 = a1[4];
  sub_1AF441150(a1, a1[3]);
  sub_1AF9043DC();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF90540C(0, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v19 = 0;
    sub_1AF904484(&qword_1ED7231B0);
    sub_1AFDFE768();
    v10 = v18;
    LOBYTE(v17) = 1;
    v9 = sub_1AFDFE748();
    v16 = v10;
    v12 = a1[3];
    v13 = a1[4];
    sub_1AF441150(a1, v12);
    if (!sub_1AF69504C(1009, v12, v13))
    {
      LOBYTE(v17) = 2;
      sub_1AFDFE748();
    }

    v14 = a1[3];
    v15 = a1[4];
    sub_1AF441150(a1, v14);
    if (sub_1AF69504C(2011, v14, v15))
    {
      LOBYTE(v17) = 4;
      sub_1AFDFE718();
    }

    else
    {
      v19 = 3;
      sub_1AF904430();
      sub_1AFDFE768();
    }

    (*(v5 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

uint64_t sub_1AF901CCC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 32);

  v3 = sub_1AF64B03C(&type metadata for TextureLoadPolicy);
  v5 = v4;

  if ((v5 & 1) != 0 || !*(v3 + 4 * v2))
  {

    v6 = sub_1AF64B03C(&type metadata for TextureLoadingOptions);
    v8 = v7;

    if (v8)
    {
      goto LABEL_22;
    }

    v9 = *(v6 + (v2 << 6));
    if ((v9 & 1) == 0)
    {
      *(v6 + (v2 << 6)) = v9 | 1;
    }
  }

  else
  {
    if (*(v3 + 4 * v2) != 1)
    {
      sub_1AF8DAED8(0, &type metadata for TextureCPURuntime, &off_1F2543E80, sub_1AF6AFAF8);
      goto LABEL_10;
    }

    sub_1AF649C6C(*(v1 + 40), &type metadata for TextureLoadRequestCPU, v18);
    if (v18[0] != 1)
    {
      goto LABEL_10;
    }
  }

  sub_1AF8DB780(0, &type metadata for TextureCPURuntime, &off_1F2543E80, sub_1AF90705C);
LABEL_10:

  v10 = sub_1AF64B03C(&type metadata for TextureLoadPolicy);
  v12 = v11;

  if ((v12 & 1) != 0 || !*(v10 + 4 * v2 + 1))
  {

    v14 = sub_1AF64B03C(&type metadata for TextureLoadingOptions);
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      v17 = *(v14 + (v2 << 6));
      if ((v17 & 2) == 0)
      {
        *(v14 + (v2 << 6)) = v17 | 2;
      }

      return sub_1AF8DB780(0, &type metadata for TextureGPURuntime, &off_1F2544388, sub_1AF90705C);
    }

LABEL_22:
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  if (*(v10 + 4 * v2 + 1) != 1)
  {
    return sub_1AF8DAED8(0, &type metadata for TextureGPURuntime, &off_1F2544388, sub_1AF90705C);
  }

  result = sub_1AF649C6C(*(v1 + 40), &type metadata for TextureLoadRequestGPU, &v19);
  if (v19 == 1)
  {
    return sub_1AF8DB780(0, &type metadata for TextureGPURuntime, &off_1F2544388, sub_1AF90705C);
  }

  return result;
}

void sub_1AF901FA0(uint64_t a1, uint64_t *a2)
{
  sub_1AF0D4E74();
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v37 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1AFDFC298();
  MEMORY[0x1EEE9AC00](v36, v7);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v39 = 0x80000001AFF39BE0;
  v32 = (v10 + 32);
  v11 = 0x20u;
  v31 = xmmword_1AFE431C0;
  v33 = a1;
  v34 = v9;
  do
  {
    v12 = *(&unk_1F24FEB28 + v11);
    if (v12 <= 15)
    {
      if (v12 > 3)
      {
        if (v12 == 4)
        {
          v13 = &type metadata for TextureRequireNonSRGB;
          v14 = &off_1F25461D8;
          goto LABEL_32;
        }

        if (v12 == 8)
        {
          v13 = &type metadata for TextureRequireUnpremultiply;
          v14 = &off_1F25461F8;
          goto LABEL_32;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v13 = &type metadata for TextureRequireCPURepresentation;
          v14 = &off_1F2544440;
          goto LABEL_32;
        }

        if (v12 == 2)
        {
          v13 = &type metadata for TextureRequireGPURepresentation;
          v14 = &off_1F25442D0;
          goto LABEL_32;
        }
      }
    }

    else if (v12 <= 63)
    {
      if (v12 == 16)
      {
        v13 = &type metadata for TextureRequireCubemap;
        v14 = &off_1F2546218;
        goto LABEL_32;
      }

      if (v12 == 32)
      {
        v13 = &type metadata for TextureRequireMipmap;
        v14 = &off_1F2546458;
        goto LABEL_32;
      }
    }

    else
    {
      switch(v12)
      {
        case 64:
          v13 = &type metadata for TextureRequireMipmapGeneration;
          v14 = &off_1F2546238;
          goto LABEL_32;
        case 128:
          v13 = &type metadata for TextureRequirePremultiplyWithLinearAlpha;
          v14 = &off_1F2546258;
          goto LABEL_32;
        case 256:
          v13 = &type metadata for TextureRequireIOSurface;
          v14 = &off_1F2546278;
          goto LABEL_32;
      }
    }

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v15 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    if (qword_1ED730E98 != -1)
    {
      swift_once();
    }

    sub_1AF8FE14C(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = v31;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1AF0D544C();
    *(v16 + 32) = 0xD000000000000016;
    *(v16 + 40) = v39;
    sub_1AFDFC4C8();

    v17 = v35;
    sub_1AFDFC288();
    v18 = v38[12];
    v19 = v38[16];
    v20 = v15;
    v21 = v37;
    v22 = &v37[v38[20]];
    (*v32)(v37, v17, v36);
    *(v21 + v18) = v20;
    *(v21 + v19) = 0;
    *v22 = 0xD000000000000016;
    *(v22 + 1) = v39;
    sub_1AFDFC608();

    sub_1AF904B7C(v21, sub_1AF0D4E74);
    v13 = &type metadata for NullEntityComponent;
    v14 = &off_1F2532748;
    a1 = v33;
    v9 = v34;
LABEL_32:
    v23 = *(*(*(a1 + 8) + 40) + 16);
    v24 = *(v23 + 128);
    v25 = *(v24 + 16);
    if ((v12 & ~v9) != 0)
    {
      if (v25)
      {
        v28 = sub_1AF449CB8(v13);
        if ((v29 & 1) != 0 && *(*(v23 + 24) + 16 * *(*(v24 + 56) + 8 * v28) + 32) == v13)
        {
          sub_1AF6AF8F4(v13, 0, v13, v14);
        }
      }
    }

    else if (!v25 || (v26 = sub_1AF449CB8(v13), (v27 & 1) == 0) || *(*(v23 + 24) + 16 * *(*(v24 + 56) + 8 * v26) + 32) != v13)
    {
      sub_1AF6AF9F8(v13, 0, v13, v14);
    }

    v11 += 8;
  }

  while (v11 != 104);
}