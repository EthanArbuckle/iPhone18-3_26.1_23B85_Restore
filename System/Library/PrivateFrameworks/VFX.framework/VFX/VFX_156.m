id sub_1AFCEDC50(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  result = [a1 asset];
  if (result)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8 && (v9 = v8, (v10 = [v8 entityObject]) != 0) && (v12 = *&v10[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity], v11 = *&v10[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity + 4], v10, __PAIR64__(v11, v12) == a3))
    {
      v13[3] = sub_1AF0D4478(0, &unk_1EB644058);
      v13[0] = v9;
      swift_unknownObjectRetain();
      sub_1AF7E8BCC(v13, a4);
      *a2 = 1;
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1AFCEDD8C(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
    v6 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v7 = *(v5 + 4);

    sub_1AFCF26B8(&v69);
    v8 = v73;
    if (v73)
    {
      v9 = v69;
      v10 = v74;
      v11 = v75;
      v13 = v76;
      v12 = v77;
      if (v69)
      {
        v66 = v72;
        v67 = v71;
        v64 = v70;
        v14 = v6 == -1 && v7 == 0;
        if (v14 || (v15 = v6 | (v7 << 32), , v16 = sub_1AF67CACC(&type metadata for EmitterDescription, &off_1F2563548, v15), , !v16))
        {
        }

        else
        {
          v57 = v13;
          v58 = v11;
          v59 = v10;
          v60 = a1;
          v61 = v12;
          v56 = sub_1AF80E468(v9, v15, v4);
          v18 = v66;
          v17 = v67;
          v63 = *(v56 + 16);
          if (v63)
          {
            v19 = 0;
            v62 = v8;
            while (1)
            {
              if (!qword_1ED730448)
              {
                result = sub_1AFDFE518();
                __break(1u);
                return result;
              }

              v65 = v19;
              v20 = v56 + 32 + 16 * v19;
              v22 = *v20;
              v21 = *(v20 + 4);
              v23 = *v20;
              v24 = *(v20 + 8);

              v25 = MEMORY[0x1B27189E0](v64, v17, v18, v8);
              v27 = sub_1AF6DC144(v25, v26, 0, 1);

              if (!v27)
              {
                break;
              }

              v28 = swift_conformsToProtocol2();
              if (!v28)
              {
                break;
              }

              v29 = v28;

              if (v22 == -1 && !v21 || v22 < 0 || *(v24 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v22 || (v30 = *(v24 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v23, v21 != -1) && *(v30 + 8) != v21 || (v31 = *(*(*(v24 + 88) + 8 * *(v30 + 6) + 32) + 16), v32 = *(v31 + 128), !*(v32 + 16)) || (v33 = sub_1AF449CB8(v27), (v34 & 1) == 0))
              {

                goto LABEL_12;
              }

              v35 = *(*(v31 + 24) + 16 * *(*(v32 + 56) + 8 * v33) + 32);

              if (v35 == v27)
              {
                v36 = *(v29 + 8);
                type metadata accessor for VFXAttribute();
                v37 = swift_allocObject();

                swift_unownedRetain();

                *(v37 + 16) = v24;
                *(v37 + 24) = v22;
                *(v37 + 28) = v21;
                *(v37 + 32) = v27;
                *(v37 + 40) = v36;
LABEL_54:
                v53 = sub_1AFCF1B84(v60, v37, v59, v58, v57, v61);

                if (v53)
                {

                  return 1;
                }
              }

LABEL_12:
              v19 = v65 + 1;
              if (v65 + 1 == v63)
              {
                goto LABEL_61;
              }
            }

            v38 = v22 == -1 && v21 == 0;
            if (!v38 && (v22 & 0x80000000) == 0 && *(v24 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v22 && ((v39 = *(v24 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v23, v21 == -1) || *(v39 + 8) == v21))
            {
              v40 = *(*(*(*(v24 + 88) + 8 * *(v39 + 6) + 32) + 16) + 32);

              v41 = *(v40 + 16);
              if (v41)
              {
LABEL_35:
                v68 = MEMORY[0x1E69E7CC0];
                sub_1AFDFE368();
                type metadata accessor for VFXAttribute();
                v42 = v40 + 40;
                do
                {
                  v43 = *(v42 - 8);
                  v44 = *(*v42 + 8);
                  v45 = swift_allocObject();
                  *(v45 + 16) = v24;
                  *(v45 + 24) = v22;
                  *(v45 + 28) = v21;
                  *(v45 + 32) = v43;
                  *(v45 + 40) = v44;

                  swift_unownedRetain();

                  sub_1AFDFE328();
                  sub_1AFDFE398();
                  sub_1AFDFE3A8();
                  sub_1AFDFE348();
                  v42 += 16;
                  --v41;
                }

                while (v41);

                v46 = v68;
                v8 = v62;
                v18 = v66;
                v17 = v67;
                goto LABEL_41;
              }
            }

            else
            {

              v40 = MEMORY[0x1E69E7CC0];
              v41 = *(MEMORY[0x1E69E7CC0] + 16);
              if (v41)
              {
                goto LABEL_35;
              }
            }

            v46 = MEMORY[0x1E69E7CC0];
LABEL_41:
            if (v46 >> 62)
            {
              v47 = sub_1AFDFE108();
              if (!v47)
              {
LABEL_11:

                goto LABEL_12;
              }
            }

            else
            {
              v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v47)
              {
                goto LABEL_11;
              }
            }

            v48 = 0;
            while (1)
            {
              if ((v46 & 0xC000000000000001) != 0)
              {
                v37 = MEMORY[0x1B2719C70](v48, v46);
              }

              else
              {
                v37 = *(v46 + 8 * v48 + 32);
              }

              v49 = *(v37 + 32);
              v50 = swift_conformsToProtocol2();
              if (v50 && v49 != 0)
              {
                (*(v50 + 16))(v49, v50);
                sub_1AF6DC518();
                sub_1AF4486E4();
                v18 = v66;
                v52 = sub_1AFDFDEC8();
                v17 = v67;

                if (!v52)
                {
                  break;
                }
              }

              ++v48;

              if (v47 == v48)
              {
                goto LABEL_11;
              }
            }

            goto LABEL_54;
          }

LABEL_61:
        }
      }

      else
      {
        v54 = sub_1AF822474(v70, v71, v72, v73, v6 | (v7 << 32), v4);

        if (v54)
        {
          v55 = sub_1AFCF1B84(a1, v54, v10, v11, v13, v12);

          return v55 & 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFCEE474(uint64_t a1, uint64_t a2, void *a3)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = v3 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
    v8 = *(v3 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v9 = *(v7 + 4);

    sub_1AFCF26B8(&v71);
    v10 = v75;
    if (!v75)
    {
      return 0;
    }

    v11 = v71;
    v12 = v76;
    v13 = v77;
    v15 = v78;
    v14 = v79;
    if (v71)
    {
      v68 = v74;
      v69 = v73;
      v66 = v72;
      v16 = v8 == -1 && v9 == 0;
      if (v16 || (v17 = v8 | (v9 << 32), , v18 = sub_1AF67CACC(&type metadata for EmitterDescription, &off_1F2563548, v17), , !v18))
      {
      }

      else
      {
        v59 = v15;
        v60 = v13;
        v61 = v12;
        v62 = a3;
        v63 = v14;
        v58 = sub_1AF80E468(v11, v17, v6);
        v20 = v68;
        v19 = v69;
        v65 = *(v58 + 16);
        if (v65)
        {
          v21 = 0;
          v64 = v10;
          while (1)
          {
            if (!qword_1ED730448)
            {
              result = sub_1AFDFE518();
              __break(1u);
              return result;
            }

            v67 = v21;
            v22 = v58 + 32 + 16 * v21;
            v24 = *v22;
            v23 = *(v22 + 4);
            v25 = *v22;
            v26 = *(v22 + 8);

            v27 = MEMORY[0x1B27189E0](v66, v19, v20, v10);
            v29 = sub_1AF6DC144(v27, v28, 0, 1);

            if (!v29)
            {
              break;
            }

            v30 = swift_conformsToProtocol2();
            if (!v30)
            {
              break;
            }

            v31 = v30;

            if (v24 == -1 && !v23 || v24 < 0 || *(v26 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v24 || (v32 = *(v26 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v25, v23 != -1) && *(v32 + 8) != v23 || (v33 = *(*(*(v26 + 88) + 8 * *(v32 + 6) + 32) + 16), v34 = *(v33 + 128), !*(v34 + 16)) || (v35 = sub_1AF449CB8(v29), (v36 & 1) == 0))
            {

              goto LABEL_12;
            }

            v37 = *(*(v33 + 24) + 16 * *(*(v34 + 56) + 8 * v35) + 32);

            if (v37 == v29)
            {
              v38 = *(v31 + 8);
              type metadata accessor for VFXAttribute();
              v39 = swift_allocObject();

              swift_unownedRetain();

              *(v39 + 16) = v26;
              *(v39 + 24) = v24;
              *(v39 + 28) = v23;
              *(v39 + 32) = v29;
              *(v39 + 40) = v38;
LABEL_54:
              v55 = sub_1AFCF20C8(v39, v61, v60, v59, v63, v62);

              if (v55 != 1)
              {

                return v55;
              }
            }

LABEL_12:
            v21 = v67 + 1;
            if (v67 + 1 == v65)
            {
              goto LABEL_63;
            }
          }

          v40 = v24 == -1 && v23 == 0;
          if (!v40 && (v24 & 0x80000000) == 0 && *(v26 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v24 && ((v41 = *(v26 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v25, v23 == -1) || *(v41 + 8) == v23))
          {
            v42 = *(*(*(*(v26 + 88) + 8 * *(v41 + 6) + 32) + 16) + 32);

            v43 = *(v42 + 16);
            if (v43)
            {
LABEL_35:
              v70 = MEMORY[0x1E69E7CC0];
              sub_1AFDFE368();
              type metadata accessor for VFXAttribute();
              v44 = v42 + 40;
              do
              {
                v45 = *(v44 - 8);
                v46 = *(*v44 + 8);
                v47 = swift_allocObject();
                *(v47 + 16) = v26;
                *(v47 + 24) = v24;
                *(v47 + 28) = v23;
                *(v47 + 32) = v45;
                *(v47 + 40) = v46;

                swift_unownedRetain();

                sub_1AFDFE328();
                sub_1AFDFE398();
                sub_1AFDFE3A8();
                sub_1AFDFE348();
                v44 += 16;
                --v43;
              }

              while (v43);

              v48 = v70;
              v10 = v64;
              v20 = v68;
              v19 = v69;
              goto LABEL_41;
            }
          }

          else
          {

            v42 = MEMORY[0x1E69E7CC0];
            v43 = *(MEMORY[0x1E69E7CC0] + 16);
            if (v43)
            {
              goto LABEL_35;
            }
          }

          v48 = MEMORY[0x1E69E7CC0];
LABEL_41:
          if (v48 >> 62)
          {
            v49 = sub_1AFDFE108();
            if (!v49)
            {
LABEL_11:

              goto LABEL_12;
            }
          }

          else
          {
            v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v49)
            {
              goto LABEL_11;
            }
          }

          v50 = 0;
          while (1)
          {
            if ((v48 & 0xC000000000000001) != 0)
            {
              v39 = MEMORY[0x1B2719C70](v50, v48);
            }

            else
            {
              v39 = *(v48 + 8 * v50 + 32);
            }

            v51 = *(v39 + 32);
            v52 = swift_conformsToProtocol2();
            if (v52 && v51 != 0)
            {
              (*(v52 + 16))(v51, v52);
              sub_1AF6DC518();
              sub_1AF4486E4();
              v20 = v68;
              v54 = sub_1AFDFDEC8();
              v19 = v69;

              if (!v54)
              {
                break;
              }
            }

            ++v50;

            if (v49 == v50)
            {
              goto LABEL_11;
            }
          }

          goto LABEL_54;
        }

LABEL_63:
      }

      goto LABEL_64;
    }

    v56 = sub_1AF822474(v72, v73, v74, v75, v8 | (v9 << 32), v6);

    if (!v56)
    {
LABEL_64:

      return 0;
    }

    v57 = sub_1AFCF20C8(v56, v12, v13, v15, v14, a3);

    if (v57 == 1)
    {
      return 0;
    }

    else
    {
      return v57;
    }
  }

  return result;
}

id EntityPropertyHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1AFCEEC1C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1AFCEEC98()
{
  v0 = sub_1AF92975C();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  if (v0 == 0xFFFFFFFF)
  {
    type metadata accessor for HeaderScript();
    return 0;
  }

  v4 = sub_1AF67CACC(&type metadata for HeaderFileAsset, &off_1F25423F0, v2);

  if (v4)
  {
    return 1;
  }

  v5 = type metadata accessor for HeaderScript();

  v6 = sub_1AF67CACC(v5, &off_1F25421A0, v2);

  return v6;
}

uint64_t sub_1AFCEEF50(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, __n128 a5)
{
  v6 = *(v5 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v7 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  ecs_stack_allocator_push_snapshot(*(**(v6 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));
  v8 = sub_1AFD04DDC(0x100000000uLL, **(v6 + v7), a2, a3, a4, a5, a1);
  if (v8 == 0xFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  ecs_stack_allocator_pop_snapshot(*(**(v6 + v7) + 32));
  return v9;
}

uint64_t sub_1AFCEF054(uint64_t a1, __n128 a2, __n128 a3, __n128 a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v7 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  ecs_stack_allocator_push_snapshot(*(**(v6 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));
  v8 = a1 & 0xFFFFFFFF00000000;
  if (a1)
  {
    a1 = a1;
  }

  else
  {
    a1 = 0xFFFFFFFFLL;
  }

  sub_1AF68B2F4(a1 | v8, v6, a2);
  sub_1AF68B2D8(a1 | v8, v6, a3);
  sub_1AF68B310(a1 | v8, v6, a4);
  v9 = *(**(v6 + v7) + 32);

  return ecs_stack_allocator_pop_snapshot(v9);
}

uint64_t sub_1AFCEF188(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v4 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  ecs_stack_allocator_push_snapshot(*(**(v3 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));
  v5 = HIDWORD(a1);
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = -1;
  }

  if ((v6 != -1 || v5) && (v6 & 0x80000000) == 0 && *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v6)
  {
    v9 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v6);
    if (v5 == 0xFFFFFFFF || v9[2] == HIDWORD(a1))
    {
      v10 = *(v9 + 2);
      v11 = *(*(v3 + 144) + 8 * *v9 + 32);
      if (*(v11 + 232) <= v10 && *(v11 + 240) > v10)
      {
        v13 = **(v3 + v4);
        v14 = *(v11 + 344);

        os_unfair_lock_lock(v14);
        ecs_stack_allocator_push_snapshot(*(v13 + 32));

        sub_1AF65CFA0(v13, v11, v10);

        ecs_stack_allocator_pop_snapshot(*(v13 + 32));
        os_unfair_lock_unlock(*(v11 + 344));
      }
    }
  }

  v7 = *(**(v3 + v4) + 32);

  return ecs_stack_allocator_pop_snapshot(v7);
}

uint64_t sub_1AFCEF350(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  ecs_stack_allocator_push_snapshot(*(**(v5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));
  v7 = a1;
  if (!a1)
  {
    v7 = 0xFFFFFFFFLL;
  }

  sub_1AF67F350(v7 | a1 & 0xFFFFFFFF00000000, v5, a2);
  v8 = *(**(v5 + v6) + 32);

  return ecs_stack_allocator_pop_snapshot(v8);
}

void sub_1AFCEF474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1AFCEF528(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1AFCEF5B4(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1AFDFD458();
  }

  return result;
}

uint64_t sub_1AFCEF628(uint64_t result, uint64_t (*a2)(BOOL, uint64_t, uint64_t))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1, result + 1, 1);
    *v2 = result;
  }

  return result;
}

void sub_1AFCEF678(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(*(a2 + 88));
  *(a2 + 96) = MEMORY[0x1E69E7CC0];

  v4 = *(a2 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 96) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1AF424C70(0, v4[2] + 1, 1, v4);
    *(a2 + 96) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1AF424C70(v6 > 1, v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v8 = &v4[2 * v7];
  v8[4] = a1;
  v8[5] = &off_1F25378D8;
  *(a2 + 96) = v4;
  v9 = *(a2 + 88);

  os_unfair_lock_unlock(v9);
}

void sub_1AFCEF768(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = *a4;
  v9 = sub_1AF449D3C(a2);
  v11 = v10;
  v12 = v8[3];
  v13 = v8[2] + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF83F150(v13, a3 & 1);
      v9 = sub_1AF449D3C(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        sub_1AFDFF1A8();
        __break(1u);
        return;
      }
    }

    else
    {
      v14 = v9;
      sub_1AF84E614();
      v9 = v14;
    }
  }

  v16 = *a4;
  if (v11)
  {
    v17 = v16[7] + 16 * v9;
    v18 = *v17;
    *v17 = a1;
    *(v17 + 8) = &off_1F256A548;
  }

  else
  {
    v16[(v9 >> 6) + 8] |= 1 << v9;
    *(v16[6] + 8 * v9) = a2;
    v19 = (v16[7] + 16 * v9);
    *v19 = a1;
    v19[1] = &off_1F256A548;
    ++v16[2];
  }
}

uint64_t sub_1AFCEF8B4(uint64_t result, char a2, uint64_t *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = result;
    sub_1AFCF4770(result + 32, v28, sub_1AFCF47D8);
    sub_1AF640200(v28, v27);
    sub_1AF640200(v29, v26);
    v7 = *a3;
    v8 = sub_1AF419F60(v27);
    LOBYTE(v10) = v9;
    v11 = *(v7 + 16) + ((v9 & 1) == 0);
    if (*(v7 + 24) >= v11)
    {
      goto LABEL_5;
    }

    sub_1AF8425F0(v11, a2 & 1);
    v8 = sub_1AF419F60(v27);
    if ((v10 & 1) == (v12 & 1))
    {
      goto LABEL_6;
    }

    while (1)
    {
      v8 = sub_1AFDFF1A8();
      __break(1u);
LABEL_5:
      if (a2)
      {
LABEL_6:
        if (v10)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v15 = v8;
        sub_1AF85048C();
        v8 = v15;
        if (v10)
        {
LABEL_7:
          v13 = *a3;
          v14 = 32 * v8;
          sub_1AF44596C(*(*a3 + 56) + 32 * v8, v25);
          sub_1AF4459C8(v26);
          sub_1AF4459C8(v27);
          result = sub_1AF9B3A74(v25, *(v13 + 56) + v14);
          v10 = v3 - 1;
          if (v3 == 1)
          {
            return result;
          }

          goto LABEL_12;
        }
      }

      v16 = *a3;
      *(*a3 + 8 * (v8 >> 6) + 64) |= 1 << v8;
      v17 = 32 * v8;
      sub_1AF640200(v27, v16[6] + 32 * v8);
      result = sub_1AF640200(v26, v16[7] + v17);
      ++v16[2];
      v10 = v3 - 1;
      if (v3 == 1)
      {
        return result;
      }

LABEL_12:
      v6 += 96;
      v3 = 1;
      while (1)
      {
        sub_1AFCF4770(v6, v28, sub_1AFCF47D8);
        sub_1AF640200(v28, v27);
        sub_1AF640200(v29, v26);
        v19 = *a3;
        v20 = sub_1AF419F60(v27);
        a2 = v21;
        if (*(v19 + 24) < (*(v19 + 16) + ((v21 & 1) == 0)))
        {
          sub_1AF8425F0(*(v19 + 16) + ((v21 & 1) == 0), 1);
          v20 = sub_1AF419F60(v27);
          if ((a2 & 1) != (v22 & 1))
          {
            break;
          }
        }

        v23 = 32 * v20;
        if (a2)
        {
          v24 = *a3;
          sub_1AF44596C(*(*a3 + 56) + v23, v25);
          sub_1AF4459C8(v26);
          sub_1AF4459C8(v27);
          result = sub_1AF9B3A74(v25, *(v24 + 56) + v23);
        }

        else
        {
          v18 = *a3;
          *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
          sub_1AF640200(v27, v18[6] + v23);
          result = sub_1AF640200(v26, v18[7] + v23);
          ++v18[2];
        }

        v6 += 64;
        if (!--v10)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t _s3VFX8VFXSceneC22updateVFX2RenderOutput11pointOfView13commandBuffer8renderer24particleMaterialOverrideyAA13VFXCoreCameraC_So010MTLCommandK0_pyXls6UInt64VtF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AF719C8C();
  v7[2] = *(a1 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v7[17] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (a4 != -1)
  {
    v7[3] = a4;
  }

  type metadata accessor for Renderer();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;

    sub_1AFCEF678(v10, v9);

    *(v9 + 276) = 0;

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

void sub_1AFCEFCC0()
{
  if (!qword_1EB644010)
  {
    sub_1AF4498F4(255, &qword_1EB644008);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB644010);
    }
  }
}

uint64_t sub_1AFCEFD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AFCEFDCC(int a1, int32x4_t a2, float32x4_t a3, __n128 a4, float a5, float a6)
{
  v169 = a5;
  v171 = a4;
  v172 = a2;
  v167 = a3;
  v262 = *MEMORY[0x1E69E9840];
  sub_1AF0D4E74();
  v195 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v194 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_1AFDFC298();
  v12 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193, v13);
  v192 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v6 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v216 = qword_1ED73B840;
  v217 = 0;
  v218 = 2;
  v219 = 0;
  v220 = 2;
  v221 = 0;
  sub_1AF5C7EC8(v209);
  v214[0] = v209[0];
  v214[1] = v209[1];
  v215 = v210;
  sub_1AF6B06C0(v15, v214, 0x200000000, v229);
  v177 = *&v229[0];
  if (!*&v229[0])
  {
    return sub_1AFCF466C(v209, sub_1AFB53AE0);
  }

  v176 = *(&v229[2] + 1);
  v16 = *(&v230 + 1);
  v183 = *(&v231 + 1);
  v250 = *(v229 + 8);
  v251 = *(&v229[1] + 8);
  if (v232 <= 0 || !*(&v230 + 1))
  {
    sub_1AFCF466C(v209, sub_1AFB53AE0);
    return sub_1AFCEFD2C(v229, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCF4720);
  }

  v197 = v15;
  v17 = v183[4];
  v18 = *(v231 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v228[2] = v229[2];
  v228[3] = v230;
  v228[4] = v231;
  v228[5] = v232;
  v228[0] = v229[0];
  v228[1] = v229[1];
  sub_1AF5DD298(v228, &v254);
  v19 = 0;
  v20 = 0;
  v188 = vdupq_lane_s32(*v172.i8, 1);
  v189 = vdupq_lane_s32(*v172.i8, 0);
  v187 = vdupq_laneq_s32(v172, 2);
  v21 = *&v172.i32[2];
  v22 = v167;
  v23 = vmulq_f32(v22, v22);
  v24 = sqrtf(v23.f32[2] + vaddv_f32(*v23.f32));
  v25 = v171;
  v25.n128_f32[0] = v24 * v171.n128_f32[0];
  v164 = v25;
  v165 = v24;
  v166 = v172.i32[1];
  v25.n128_f32[0] = fmaxf(v24, 0.00001);
  v162 = vdiv_f32(*v167.f32, vdup_lane_s32(v25.n128_u64[0], 0));
  v163 = v167.f32[2];
  v160 = a6 + a6;
  v161 = v167.f32[2] / v25.n128_f32[0];
  v158 = vnegq_f32(v167);
  v159 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
  v198 = 0x80000001AFF48D10;
  v190 = (v12 + 32);
  v204 = 0u;
  v191 = a1;
  v174 = v17;
  v175 = v16;
  v173 = v18;
  while (2)
  {
    v181 = v20;
    v182 = v19;
    v26 = (v176 + 48 * v19);
    v203.i64[0] = *v26;
    v200.i64[0] = v26[1];
    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    v29 = *(v26 + 4);
    v196 = *(v26 + 5);
    if (v18)
    {
      v30 = *(v196 + 47);

      v31 = v30;
      v32 = v196;
      os_unfair_lock_lock(v31);
      os_unfair_lock_lock(*(v32 + 43));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v17);

    v34 = v183;
    sub_1AF630914(v33, v183, v233);

    v35 = sub_1AF64B110(&type metadata for ForceField, &off_1F2560F10, v28, v27, v29, v34);
    v36 = sub_1AF64B110(&type metadata for ForceFieldRuntime, &off_1F2560FC0, v28, v27, v29, v34);
    v37 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v28, v27, v29, v34);
    if (v28)
    {
      if (!v29)
      {
        goto LABEL_122;
      }

      v38 = v37 + 32;
      v39 = (v36 + 16);
      v40 = v206;
      while (1)
      {
        if ((*(v35 + 32) & a1) == 0 || (*(v35 + 8) & 1) == 0)
        {
          goto LABEL_76;
        }

        v206 = v40;
        v265.columns[0] = *(v38 - 32);
        v265.columns[2] = *v38;
        v265.columns[3] = *(v38 + 16);
        v202 = *(v38 - 16);
        v265.columns[1] = v202;
        v203 = v265.columns[0];
        v200 = v265.columns[3];
        v201 = v265.columns[2];
        v266 = __invert_f4(v265);
        v108 = v266.columns[0];
        v199 = *(v35 + 96);
        v224 = 0u;
        v225 = 0u;
        v222 = 0u;
        v223 = 0u;
        *&v226 = 0;
        *(&v226 + 1) = 1;
        v227 = 0uLL;
        if (*v35 == 9)
        {
          v184 = v266.columns[2];
          v185 = v266.columns[1];
          v186 = v266.columns[0];
          v205 = v266.columns[3];
          sub_1AF8E60EC(*(v35 + 132), 1, v234);
          if (!v237)
          {
            goto LABEL_92;
          }

          v244[0] = v234[0];
          v244[1] = v234[1];
          v244[2] = v235;
          v245 = v236;
          v246 = v237;
          v207 = v235;
          v208 = v236;
          if (sub_1AF8FE1C4(&v207) != 7)
          {
            sub_1AFCEFD2C(v234, &unk_1ED725420, &type metadata for TextureCPURuntime, MEMORY[0x1E69E6720], sub_1AFCF4720);
LABEL_92:
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v136 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AF6EFB60();
            v137 = swift_allocObject();
            *(v137 + 16) = xmmword_1AFE431C0;
            *(v137 + 56) = MEMORY[0x1E69E6158];
            *(v137 + 64) = sub_1AF0D544C();
            *(v137 + 32) = 0xD00000000000001ELL;
            *(v137 + 40) = v198;
            sub_1AFDFC4C8();

            v205.i32[0] = v136;
            v138 = v192;
            sub_1AFDFC288();
            v139 = v194;
            v203.i64[0] = v195[12];
            v140 = v195[16];
            v141 = &v194[v195[20]];
            (*v190)(v194, v138, v193);
            *(v139 + v203.i64[0]) = v205.i8[0];
            *(v139 + v140) = 0;
            *v141 = 0xD00000000000001ELL;
            *(v141 + 1) = v198;
            sub_1AFDFC608();

            sub_1AFCF466C(v139, sub_1AF0D4E74);
            v40 = v206;
            a1 = v191;
            goto LABEL_76;
          }

          sub_1AF478ACC(v244, 2, 1, v238);
          v224 = v238[2];
          v225 = v238[3];
          v226 = v238[4];
          v227 = v238[5];
          v222 = v238[0];
          v223 = v238[1];
          v266.columns[3] = v205;
          v266.columns[1] = v185;
          v108 = v186;
          v266.columns[2] = v184;
        }

        v109 = *(v35 + 16);
        v110 = *(v35 + 96);
        v252[5] = *(v35 + 80);
        v252[6] = v110;
        v253[0] = *(v35 + 112);
        *(v253 + 12) = *(v35 + 124);
        v111 = *(v35 + 16);
        v113 = *(v35 + 48);
        v112 = *(v35 + 64);
        v252[2] = *(v35 + 32);
        v252[3] = v113;
        v252[4] = v112;
        v252[0] = *v35;
        v252[1] = v111;
        v114 = *&v252[0];
        v115 = *(v252 + 3);
        v116 = *(v252 + 3);
        v117 = *&v253[0];
        if (*(&v111 + 1) > 0.0)
        {
          v119 = *(v39 - 2);
          v118 = *(v39 - 1);
          v120 = *v39 ^ v119;
          v121 = v39[1] ^ v118;
          *(v39 - 2) = v121 ^ v119;
          *(v39 - 1) = v120 ^ v118;
          *v39 = v120 ^ (v118 << 17);
          v39[1] = __ROR8__(v121, 19);
          v122 = vcvts_n_f32_u64((9 * ((((5 * v118) >> 32) >> 25) | (640 * v118))) & 0xFFFFFFLL, 0x18uLL);
          v116 = v115 + (*(&v111 + 1) * ((v122 + v122) + -1.0));
        }

        v123 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v266.columns[3], v266.columns[2], v187), v266.columns[1], v188), v108, v189);
        v124 = v123;
        v124.i32[3] = v206.i32[3];
        v205 = v123;
        v206 = v124;
        sub_1AFB4EB3C(v252, v124);
        v105 = 0uLL;
        if ((v116 * v125.n128_f32[0]) == 0.0)
        {
          goto LABEL_74;
        }

        v126 = vmulq_f32(v201, v201);
        *&v127 = v126.f32[2] + vaddv_f32(*v126.f32);
        *v126.f32 = vrsqrte_f32(v127);
        *v126.f32 = vmul_f32(*v126.f32, vrsqrts_f32(v127, vmul_f32(*v126.f32, *v126.f32)));
        v128 = vmulq_n_f32(v201, vmul_f32(*v126.f32, vrsqrts_f32(v127, vmul_f32(*v126.f32, *v126.f32))).f32[0]);
        v129 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(xmmword_1AFE20180, v128, 2), xmmword_1AFE20160, *v128.f32, 1), xmmword_1AFE20150, v128.f32[0]);
        v130 = v203;
        v130.f32[0] = (v116 * v125.n128_f32[0]) * a6;
        v131 = vaddq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(0, xmmword_1AFE20180, v200, 2), xmmword_1AFE20160, *v200.f32, 1), xmmword_1AFE20150, v200.f32[0]), vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v201, v199, 2), v202, *v199.f32, 1), v203, v199.f32[0]));
        if (v114 <= 4)
        {
          break;
        }

        if (v114 <= 6)
        {
          if (v114 == 5)
          {
            v146 = vsub_f32(*v172.i8, *v131.f32);
            v147 = sqrtf(((v21 - v131.f32[2]) * (v21 - v131.f32[2])) + vaddv_f32(vmul_f32(v146, v146)));
            *v105.f32 = vmul_n_f32(vmul_n_f32(vmul_n_f32(vsub_f32(0, v146), v147), v171.n128_f32[0]), v130.f32[0]);
            v106 = (((0.0 - (v21 - v131.f32[2])) * v147) * v171.n128_f32[0]) * v130.f32[0];
          }

          else
          {
            v151 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v129, v129), v129, 0xCuLL), v158), v129, v159);
            v152 = vsub_f32(*v172.i8, *v131.f32);
            v153 = (1.0 / sqrtf(((v21 - v131.f32[2]) * (v21 - v131.f32[2])) + vaddv_f32(vmul_f32(v152, v152)))) * v130.f32[0];
            v152.i32[0] = vextq_s8(v151, v151, 8uLL).u32[0];
            v152.i32[1] = v151.i32[0];
            *v105.f32 = vmul_n_f32(v152, v153);
            v106 = vmuls_lane_f32(v153, *v151.i8, 1);
          }

          goto LABEL_73;
        }

        v142 = v109 * a6;
        if (v114 != 7)
        {
          if (v114 != 8)
          {
            if (v114 != 9)
            {
              goto LABEL_127;
            }

            v40 = v206;
            if (*(&v226 + 1) != 1)
            {
              v125.n128_u64[0] = vadd_f32(vmul_f32(*v205.f32, 0x3F0000003F000000), 0x3F0000003F000000);
              v125.n128_f32[2] = vmuls_lane_f32(0.5, v205, 2) + 0.5;
              v205 = v130;
              *v150.i64 = (*(&v226 + 1))(&v222, v125);
              v40 = v206;
              v105.i64[0] = vmulq_n_f32(v150, v205.f32[0]).u64[0];
              v105.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v205.f32[0], v150, 2));
            }

            goto LABEL_75;
          }

          v143 = v115 * a6;
          if (v115 > 2.0)
          {
            v143 = v160;
          }

          if (v142 > 2.0)
          {
            v142 = 2.0;
          }

          v135 = -(v125.n128_f32[0] * v165) * (v142 + (v165 * v143));
          *v105.f32 = vmul_n_f32(v162, v135);
          v133 = v161;
LABEL_107:
          v106 = v133 * v135;
          goto LABEL_73;
        }

        v103 = (v142 * -2.0) * sqrtf(fabsf(v115));
        v104 = v163 * v103;
        *v105.f32 = vsub_f32(vmul_n_f32(*v167.f32, v103), vmul_n_f32(vsub_f32(*v172.i8, *v131.f32), v130.f32[0]));
        v106 = v104 - ((v21 - v131.f32[2]) * v130.f32[0]);
LABEL_73:
        v105.i64[1] = LODWORD(v106);
LABEL_74:
        v40 = v206;
LABEL_75:
        v107 = vaddq_f32(v204, v105);
        v107.i32[3] = 0;
        v204 = v107;
LABEL_76:
        v35 += 144;
        v38 += 64;
        v39 += 4;
        if (!--v29)
        {
          v206 = v40;
          goto LABEL_122;
        }
      }

      if (v114 > 2)
      {
        v144 = 0.0;
        if (*&v117 >= 0.0)
        {
          v144 = *&v117;
        }

        v207 = 0uLL;
        v205 = v130;
        v145 = srdnoise3(&v207, *v172.i32 * ((1.25 / (v144 + 0.083333)) + -1.0), *&v166 * ((1.25 / (v144 + 0.083333)) + -1.0), v21 * ((1.25 / (v144 + 0.083333)) + -1.0), *(&v117 + 1) * v169);
        *v105.f32 = vmul_n_f32(vmul_n_f32(*v207.f32, v145), v205.f32[0]);
        v106 = v205.f32[0] * vmuls_lane_f32(v145, v207, 2);
        if (v114 == 4)
        {
          *v105.f32 = vmul_n_f32(*v105.f32, v164.n128_f32[0]);
          v106 = v164.n128_f32[0] * v106;
        }

        goto LABEL_73;
      }

      v132 = v130.f32[0] * v171.n128_f32[0];
      if (!v114)
      {
        *v105.f32 = vmul_n_f32(*v129.f32, v132);
        v106 = vmuls_lane_f32(v132, v129, 2);
        goto LABEL_73;
      }

      if (v114 != 1)
      {
        if (v114 != 2)
        {
          goto LABEL_127;
        }

        v148.i32[3] = v172.i32[3];
        *v148.i8 = vsub_f32(*v172.i8, *v131.f32);
        *&v148.i32[2] = v21 - v131.f32[2];
        v149 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v148, v148), v148, 0xCuLL), vnegq_f32(v129)), v148, vextq_s8(vuzp1q_s32(v129, v129), v129, 0xCuLL));
        v148.i32[0] = vextq_s8(v149, v149, 8uLL).u32[0];
        v148.i32[1] = v149.i32[0];
        *v105.f32 = vmul_n_f32(*v148.i8, v130.f32[0]);
        v106 = vmuls_lane_f32(v130.f32[0], *v149.i8, 1);
        goto LABEL_73;
      }

      v133 = v21 - v131.f32[2];
      v134 = vsub_f32(*v172.i8, *v131.f32);
      v135 = v132 / fmaxf(sqrtf((v133 * v133) + vaddv_f32(vmul_f32(v134, v134))), 0.00001);
      *v105.f32 = vmul_n_f32(v134, v135);
      goto LABEL_107;
    }

    v41 = v200.i64[0];
    v42 = v203.i64[0];
    if (v203.i32[0] == v200.i32[0])
    {
      goto LABEL_122;
    }

    v43 = v36 + 16;
    v44 = v37 + 32;
    v45 = v180;
    v168 = v43;
    v185.i64[0] = v37 + 32;
    while (2)
    {
      v170 = v45;
      v46 = v35 + 144 * v42;
      v47 = (v43 + 32 * v42);
      v48 = v44 + (v42++ << 6);
      while ((*(v46 + 32) & a1) == 0 || *(v46 + 8) != 1)
      {
        if (v41 == v42)
        {
          goto LABEL_70;
        }

LABEL_18:
        ++v42;
        v46 += 144;
        v47 += 4;
        v48 += 64;
      }

      v263.columns[0] = *(v48 - 32);
      v263.columns[2] = *v48;
      v263.columns[3] = *(v48 + 16);
      v201 = *(v48 - 16);
      v263.columns[1] = v201;
      v202 = v263.columns[0];
      v199 = v263.columns[2];
      v186 = v263.columns[3];
      v205.i64[0] = v46;
      v264 = __invert_f4(v263);
      v49 = v205.i64[0];
      v50 = v264.columns[0];
      v51 = *(v205.i64[0] + 96);
      v224 = 0u;
      v225 = 0u;
      v222 = 0u;
      v223 = 0u;
      *&v226 = 0;
      *(&v226 + 1) = 1;
      v227 = 0uLL;
      if (*v205.i64[0] != 9)
      {
        v61 = vmulq_f32(v199, v199);
        *&v62 = v61.f32[2] + vaddv_f32(*v61.f32);
        *v61.f32 = vrsqrte_f32(v62);
        *v61.f32 = vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32)));
        v63 = vmulq_n_f32(v199, vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32))).f32[0]);
        v157 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(xmmword_1AFE20180, v63, 2), xmmword_1AFE20160, *v63.f32, 1), xmmword_1AFE20150, v63.f32[0]);
        v186 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(0, xmmword_1AFE20180, v186, 2), xmmword_1AFE20160, *v186.f32, 1), xmmword_1AFE20150, v186.f32[0]);
        v202 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v199, v51, 2), v201, *v51.f32, 1), v202, v51.f32[0]);
        goto LABEL_35;
      }

      v178 = v51;
      v179 = v264.columns[2];
      v180 = v264.columns[1];
      v184 = v264.columns[0];
      v203 = v264.columns[3];
      sub_1AF8E60EC(*(v205.i64[0] + 132), 1, v239);
      if (!v242)
      {
        goto LABEL_25;
      }

      v247[0] = v239[0];
      v247[1] = v239[1];
      v247[2] = v240;
      v248 = v241;
      v249 = v242;
      v207 = v240;
      v208 = v241;
      if (sub_1AF8FE1C4(&v207) == 7)
      {
        v64 = vmulq_f32(v199, v199);
        *&v65 = v64.f32[2] + vaddv_f32(*v64.f32);
        *v64.f32 = vrsqrte_f32(v65);
        *v64.f32 = vmul_f32(*v64.f32, vrsqrts_f32(v65, vmul_f32(*v64.f32, *v64.f32)));
        v66 = vmulq_n_f32(v199, vmul_f32(*v64.f32, vrsqrts_f32(v65, vmul_f32(*v64.f32, *v64.f32))).f32[0]);
        v157 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(xmmword_1AFE20180, v66, 2), xmmword_1AFE20160, *v66.f32, 1), xmmword_1AFE20150, v66.f32[0]);
        v186 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(0, xmmword_1AFE20180, v186, 2), xmmword_1AFE20160, *v186.f32, 1), xmmword_1AFE20150, v186.f32[0]);
        v202 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v199, v178, 2), v201, *v178.f32, 1), v202, v178.f32[0]);
        sub_1AF478ACC(v247, 2, 1, v243);
        v224 = v243[2];
        v225 = v243[3];
        v226 = v243[4];
        v227 = v243[5];
        v222 = v243[0];
        v223 = v243[1];
        v49 = v205.i64[0];
        v264.columns[3] = v203;
        v50 = v184;
        v264.columns[2] = v179;
        v264.columns[1] = v180;
LABEL_35:
        v67 = *(v49 + 16);
        v259 = *(v49 + 80);
        v260 = *(v49 + 96);
        v261[0] = *(v49 + 112);
        *(v261 + 12) = *(v49 + 124);
        v255 = *(v49 + 16);
        v256 = *(v49 + 32);
        v257 = *(v49 + 48);
        v258 = *(v49 + 64);
        v254 = *v49;
        v68 = v254;
        v69 = *(&v254 + 3);
        v70 = *(&v255 + 1);
        v71 = *&v261[0];
        v72 = *(&v254 + 3);
        if (*(&v255 + 1) > 0.0)
        {
          v74 = *(v47 - 2);
          v73 = *(v47 - 1);
          v75 = *v47 ^ v74;
          v76 = v47[1] ^ v73;
          *(v47 - 2) = v76 ^ v74;
          *(v47 - 1) = v75 ^ v73;
          *v47 = v75 ^ (v73 << 17);
          v47[1] = __ROR8__(v76, 19);
          v77 = vcvts_n_f32_u64((9 * ((((5 * v73) >> 32) >> 25) | (640 * v73))) & 0xFFFFFFLL, 0x18uLL);
          v72 = v69 + (v70 * ((v77 + v77) + -1.0));
        }

        v203 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v264.columns[3], v264.columns[2], v187), v264.columns[1], v188), v50, v189);
        v78 = v203;
        v78.i32[3] = v170.i32[3];
        v180 = v78;
        sub_1AFB4EB3C(&v254, v78);
        v81 = 0uLL;
        if ((v72 * v79.n128_f32[0]) != 0.0)
        {
          v80.f32[0] = (v72 * v79.n128_f32[0]) * a6;
          v82 = vaddq_f32(v186, v202);
          if (v68 > 4)
          {
            if (v68 <= 6)
            {
              if (v68 == 5)
              {
                v93 = vsub_f32(*v172.i8, *v82.f32);
                v82.f32[0] = sqrtf(((v21 - v82.f32[2]) * (v21 - v82.f32[2])) + vaddv_f32(vmul_f32(v93, v93)));
                *v81.f32 = vmul_n_f32(vmul_n_f32(vmul_n_f32(vsub_f32(0, v93), v82.f32[0]), v171.n128_f32[0]), v80.f32[0]);
                v86 = (((0.0 - (v21 - v82.f32[2])) * v82.f32[0]) * v171.n128_f32[0]) * v80.f32[0];
              }

              else
              {
                v99 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v157, v157), v157, 0xCuLL), v158), v157, v159);
                v100 = vsub_f32(*v172.i8, *v82.f32);
                v101 = (1.0 / sqrtf(((v21 - v82.f32[2]) * (v21 - v82.f32[2])) + vaddv_f32(vmul_f32(v100, v100)))) * v80.f32[0];
                v100.i32[0] = vextq_s8(v99, v99, 8uLL).u32[0];
                v100.i32[1] = v99.i32[0];
                *v81.f32 = vmul_n_f32(v100, v101);
                v86 = vmuls_lane_f32(v101, *v99.i8, 1);
              }
            }

            else
            {
              v87 = v67 * a6;
              switch(v68)
              {
                case 7:
                  v94 = (v87 * -2.0) * sqrtf(fabsf(v69));
                  v95 = v163 * v94;
                  *v81.f32 = vsub_f32(vmul_n_f32(*v167.f32, v94), vmul_n_f32(vsub_f32(*v172.i8, *v82.f32), v80.f32[0]));
                  v86 = v95 - ((v21 - v82.f32[2]) * v80.f32[0]);
                  break;
                case 8:
                  v88 = v69 * a6;
                  if (v69 > 2.0)
                  {
                    v88 = v160;
                  }

                  if (v87 <= 2.0)
                  {
                    v89 = v67 * a6;
                  }

                  else
                  {
                    v89 = 2.0;
                  }

                  v90 = -(v79.n128_f32[0] * v165) * (v89 + (v165 * v88));
                  *v81.f32 = vmul_n_f32(v162, v90);
                  v86 = v161 * v90;
                  break;
                case 9:
                  v45 = v180;
                  v43 = v168;
                  if (*(&v226 + 1) != 1)
                  {
                    v79.n128_u64[0] = vadd_f32(vmul_f32(*v203.f32, 0x3F0000003F000000), 0x3F0000003F000000);
                    v79.n128_f32[2] = vmuls_lane_f32(0.5, v203, 2) + 0.5;
                    v205 = v80;
                    *v98.i64 = (*(&v226 + 1))(&v222, v79);
                    v45 = v180;
                    v81.i64[0] = vmulq_n_f32(v98, v205.f32[0]).u64[0];
                    v81.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v205.f32[0], v98, 2));
                  }

                  goto LABEL_68;
                default:
LABEL_127:
                  result = sub_1AFDFE518();
                  __break(1u);
                  return result;
              }
            }
          }

          else if (v68 > 2)
          {
            v91 = 0.0;
            if (*&v71 >= 0.0)
            {
              v91 = *&v71;
            }

            v207 = 0uLL;
            v205 = v80;
            v92 = srdnoise3(&v207, *v172.i32 * ((1.25 / (v91 + 0.083333)) + -1.0), *&v166 * ((1.25 / (v91 + 0.083333)) + -1.0), v21 * ((1.25 / (v91 + 0.083333)) + -1.0), *(&v71 + 1) * v169);
            *v81.f32 = vmul_n_f32(vmul_n_f32(*v207.f32, v92), v205.f32[0]);
            v86 = v205.f32[0] * vmuls_lane_f32(v92, v207, 2);
            if (v68 == 4)
            {
              *v81.f32 = vmul_n_f32(*v81.f32, v164.n128_f32[0]);
              v86 = v164.n128_f32[0] * v86;
            }
          }

          else
          {
            v83 = v80.f32[0] * v171.n128_f32[0];
            if (v68)
            {
              if (v68 == 1)
              {
                v84 = vsub_f32(*v172.i8, *v82.f32);
                v85 = v83 / fmaxf(sqrtf(((v21 - v82.f32[2]) * (v21 - v82.f32[2])) + vaddv_f32(vmul_f32(v84, v84))), 0.00001);
                *v81.f32 = vmul_n_f32(v84, v85);
                v86 = (v21 - v82.f32[2]) * v85;
              }

              else
              {
                if (v68 != 2)
                {
                  goto LABEL_127;
                }

                v96.i32[3] = v172.i32[3];
                *v96.i8 = vsub_f32(*v172.i8, *v82.f32);
                *&v96.i32[2] = v21 - v82.f32[2];
                v97 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v96, v96), v96, 0xCuLL), vnegq_f32(v157)), v96, vextq_s8(vuzp1q_s32(v157, v157), v157, 0xCuLL));
                v96.i32[0] = vextq_s8(v97, v97, 8uLL).u32[0];
                v96.i32[1] = v97.i32[0];
                *v81.f32 = vmul_n_f32(*v96.i8, v80.f32[0]);
                v86 = vmuls_lane_f32(v80.f32[0], *v97.i8, 1);
              }
            }

            else
            {
              *v81.f32 = vmul_n_f32(*v157.f32, v83);
              v86 = vmuls_lane_f32(v83, v157, 2);
            }
          }

          v81.i64[1] = LODWORD(v86);
        }

        v45 = v180;
        v43 = v168;
LABEL_68:
        v102 = vaddq_f32(v204, v81);
        v102.i32[3] = 0;
        v204 = v102;
        if (v41 == v42)
        {
          goto LABEL_122;
        }

        continue;
      }

      break;
    }

    sub_1AFCEFD2C(v239, &unk_1ED725420, &type metadata for TextureCPURuntime, MEMORY[0x1E69E6720], sub_1AFCF4720);
LABEL_25:
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v52 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v201.i64[0] = v48;
    v202.i64[0] = v47;
    v203.i64[0] = v42;
    if (qword_1ED730E98 != -1)
    {
      swift_once();
    }

    sub_1AF6EFB60();
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1AFE431C0;
    *(v53 + 56) = MEMORY[0x1E69E6158];
    *(v53 + 64) = sub_1AF0D544C();
    v54 = v198;
    *(v53 + 32) = 0xD00000000000001ELL;
    *(v53 + 40) = v54;
    sub_1AFDFC4C8();

    v55 = v52;
    v56 = v192;
    sub_1AFDFC288();
    v57 = v194;
    v58 = v195[12];
    v59 = v195[16];
    v60 = &v194[v195[20]];
    (*v190)(v194, v56, v193);
    *(v57 + v58) = v55;
    *(v57 + v59) = 0;
    *v60 = 0xD00000000000001ELL;
    *(v60 + 1) = v54;
    sub_1AFDFC608();

    sub_1AFCF466C(v57, sub_1AF0D4E74);
    v41 = v200.i64[0];
    v42 = v203.i64[0];
    a1 = v191;
    v44 = v185.i64[0];
    v47 = v202.i64[0];
    v46 = v205.i64[0];
    v48 = v201.i64[0];
    if (v200.i64[0] != v203.i64[0])
    {
      goto LABEL_18;
    }

LABEL_70:
    v180 = v170;
LABEL_122:
    v211 = v177;
    v212 = v250;
    v213 = v251;
    v20 = v181;
    sub_1AF630994(v183, &v211, v233);
    v154 = v196;
    sub_1AF62D29C(v196);
    v17 = v174;
    ecs_stack_allocator_pop_snapshot(v174);
    v18 = v173;
    if (v173)
    {
      os_unfair_lock_unlock(*(v154 + 43));
      os_unfair_lock_unlock(*(v154 + 47));
    }

    v19 = v182 + 1;
    if (v182 + 1 != v175)
    {
      continue;
    }

    break;
  }

  sub_1AFCF466C(v209, sub_1AFB53AE0);
  v156 = MEMORY[0x1E69E6720];
  sub_1AFCEFD2C(v229, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCF4720);
  return sub_1AFCEFD2C(v229, &qword_1ED725EA0, &type metadata for QueryResult, v156, sub_1AFCF4720);
}

id _s3VFX8VFXSceneC24cloneAndSetupReplication10modelWorldAA26VFXBidirectionalRemapTableCSo8VFXWorldC_tFZ_0(void *a1)
{
  v42 = [objc_allocWithZone(type metadata accessor for VFXBidirectionalRemapTable()) init];
  v2 = [a1 scene];
  v37 = [a1 worldRef];
  v3 = sub_1AF1CF878(v37);
  v40 = OBJC_IVAR____TtC3VFX8VFXScene_entityManager;
  v38 = v3;
  v4 = *&v3[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
  *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2Presentation) = 1;
  v5 = **(v4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  v41 = v2;
  v39 = OBJC_IVAR____TtC3VFX8VFXScene_entityManager;
  v6 = *&v2[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
  v7 = MEMORY[0x1E69E7CC0];
  v8 = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for RemapContext();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = sub_1AF42B4D0(v7);

  v10 = sub_1AF42B590(v7);
  *(v9 + 24) = v8;
  *(v9 + 32) = v10;

  *(v9 + 16) = 0;
  v11 = v6 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  os_unfair_lock_lock(*(v6 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24));
  v12 = (v6 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v13 = *(v6 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);
  if (v13)
  {
    v14 = 0;
    for (i = 0; i != v13; ++i)
    {
      v16 = *v12 + v14;
      if ((*(v16 + 6) & 0x80000000) == 0)
      {
        sub_1AF65B02C(i | (*(v16 + 8) << 32), v9);
      }

      v14 += 12;
    }
  }

  os_unfair_lock_unlock(*(v11 + 24));
  v45 = 1;
  sub_1AF630BA4(v9, v6, 0x100000000uLL, 0, v5);

  sub_1AF6C8EC8(v17);

  v36 = [a1 worldRef];
  v18 = *&v38[v40];
  v19 = type metadata accessor for DefaultRemapper();
  v20 = objc_allocWithZone(v19);
  swift_weakInit();
  swift_weakAssign();
  v20[OBJC_IVAR____TtC3VFX15DefaultRemapper_isReversed] = 0;
  *&v20[OBJC_IVAR____TtC3VFX15DefaultRemapper_destinationEntityManager] = v18;

  swift_unownedRetain();
  v44.receiver = v20;
  v44.super_class = v19;
  v21 = objc_msgSendSuper2(&v44, sel_init);
  v22 = *&v41[v39];
  v23 = OBJC_IVAR____TtC3VFX13EntityManager_replicationStream;
  v24 = *(v22 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
  if (v24 || (type metadata accessor for ReplicationStream(), v25 = swift_allocObject(), *(v25 + 32) = 0, *(v25 + 16) = MEMORY[0x1E69E7CC0], *(v25 + 24) = 0, swift_weakInit(), *(v25 + 56) = 0, swift_unknownObjectWeakInit(), *(v25 + 72) = 0, swift_unknownObjectWeakInit(), *(v25 + 80) = 0, swift_unknownObjectWeakInit(), *(v22 + v23) = v25, , (v24 = *(v22 + v23)) != 0))
  {
    swift_weakAssign();
    *(v24 + 24) = v21;
    *(v24 + 32) = &off_1F2535DF0;

    swift_unknownObjectRelease();
    *(v24 + 80) = 1;
    *(v24 + 56) = 0;
    swift_unknownObjectWeakAssign();
    *(v24 + 72) = &off_1F255E0C0;
    swift_unknownObjectWeakAssign();

    *(v24 + 81) = 1;
    v26 = v36;
    swift_unknownObjectWeakAssign();
  }

  else
  {

    v26 = v36;
  }

  v27 = *&v41[v39];
  v28 = objc_allocWithZone(v19);
  swift_weakInit();
  swift_weakAssign();
  v28[OBJC_IVAR____TtC3VFX15DefaultRemapper_isReversed] = 1;
  *&v28[OBJC_IVAR____TtC3VFX15DefaultRemapper_destinationEntityManager] = v27;
  swift_unownedRetain();
  v43.receiver = v28;
  v43.super_class = v19;
  v29 = objc_msgSendSuper2(&v43, sel_init);
  v30 = *&v38[v40];
  v31 = OBJC_IVAR____TtC3VFX13EntityManager_replicationStream;
  if (!*(v30 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream))
  {
    type metadata accessor for ReplicationStream();
    v33 = swift_allocObject();
    *(v33 + 32) = 0;
    *(v33 + 16) = MEMORY[0x1E69E7CC0];
    *(v33 + 24) = 0;
    swift_weakInit();
    *(v33 + 56) = 0;
    swift_unknownObjectWeakInit();
    *(v33 + 72) = 0;
    swift_unknownObjectWeakInit();
    *(v33 + 80) = 0;
    swift_unknownObjectWeakInit();

    *(v30 + v31) = v33;

    v32 = *(v30 + v31);
    if (v32)
    {
      goto LABEL_11;
    }

LABEL_13:

    goto LABEL_14;
  }

  v32 = *(v30 + v31);
  if (!v32)
  {
    goto LABEL_13;
  }

LABEL_11:
  swift_weakAssign();
  *(v32 + 24) = v29;
  *(v32 + 32) = &off_1F2535DF0;

  swift_unknownObjectRelease();
  *(v32 + 80) = 0;
  *(v32 + 56) = 0;
  swift_unknownObjectWeakAssign();
  *(v32 + 72) = 0;
  swift_unknownObjectWeakAssign();
  *(v32 + 81) = 1;
  swift_unknownObjectWeakAssign();

LABEL_14:
  v34 = *&v38[v40];

  swift_unknownObjectRelease();
  *(v34 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;

  return v42;
}

uint64_t sub_1AFCF1B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a2 + 32);
  v13 = swift_conformsToProtocol2();
  if (v13)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    goto LABEL_14;
  }

  v15 = v13;
  swift_unownedRetainStrong();
  sub_1AF67E3AC(v12, v15, *(a2 + 24), v40);

  v16 = v41;
  if (!v41)
  {
    sub_1AFCF466C(v40, sub_1AF80E170);
LABEL_14:
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    goto LABEL_15;
  }

  v17 = v42;
  v18 = sub_1AF441150(v40, v41);
  *(&v47 + 1) = v16;
  v48 = *(v17 + 8);
  v19 = sub_1AF585714(&v46);
  (*(*(v16 - 8) + 16))(v19, v18, v16);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v40);
  if (!*(&v47 + 1))
  {
LABEL_15:
    sub_1AFCF466C(&v46, sub_1AF645A60);
    v43 = 0u;
    v44 = 0u;
    v45 = 0;
    goto LABEL_16;
  }

  sub_1AF4498F4(0, &qword_1ED7270D0);
  sub_1AF4498F4(0, &unk_1ED7259B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    goto LABEL_16;
  }

  if (!*(&v44 + 1))
  {
LABEL_16:
    sub_1AFCF466C(&v43, sub_1AFCF4480);
    return 0;
  }

  sub_1AF0FBA54(&v43, &v46);
  v20 = *(&v47 + 1);
  v21 = v48;
  sub_1AF441150(&v46, *(&v47 + 1));
  v22 = (*(*(v21 + 8) + 40))(a3, a4, a5, a6, v20);
  if (!v22)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v46);
    return 0;
  }

  v23 = v22;
  v24 = *(a2 + 24);
  v25 = *(a2 + 28);
  v26 = *(a2 + 16);
  swift_unownedRetainStrong();

  if (*(v23 + 40) == &type metadata for Entity)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (!v31)
    {
      swift_unknownObjectRelease();
      if (*(v23 + 80))
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }

    v32 = [v31 entityObject];
    if (!v32)
    {
      if (*(v23 + 80))
      {
        v35 = *(v23 + 88);
        ObjectType = swift_getObjectType();
        *(&v44 + 1) = &type metadata for Entity;
        *&v43 = 0xFFFFFFFFLL;
LABEL_31:
        v37 = *(v35 + 16);
        swift_unknownObjectRetain();
        v37(v24 | (v25 << 32), v26, &v43, ObjectType, v35);

        swift_unknownObjectRelease();
        goto LABEL_32;
      }

LABEL_34:

      swift_unknownObjectRelease();
      goto LABEL_33;
    }

    v33 = v32;
    v34 = *&v32[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
    if (!swift_weakLoadStrong())
    {
      if (*&v33[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager])
      {
LABEL_29:

        if (*(v23 + 80))
        {
          v35 = *(v23 + 88);
          ObjectType = swift_getObjectType();
          *(&v44 + 1) = &type metadata for Entity;
          *&v43 = v34;
          goto LABEL_31;
        }

        goto LABEL_34;
      }

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v38 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v39 = v38;
        swift_once();
        v38 = v39;
      }

      *&v43 = 0;
      sub_1AF0D4F18(v38, &v43, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }

    goto LABEL_29;
  }

  if (*(v23 + 80))
  {
LABEL_12:
    v27 = *(v23 + 88);
    v28 = swift_getObjectType();
    *(&v44 + 1) = swift_getObjectType();
    *&v43 = a1;
    v29 = *(v27 + 16);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v29(v24 | (v25 << 32), v26, &v43, v28, v27);

LABEL_32:
    swift_unknownObjectRelease();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v43);
    goto LABEL_33;
  }

LABEL_25:

LABEL_33:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v46);
  return 1;
}

uint64_t sub_1AFCF20C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = a1[4];
  v13 = swift_conformsToProtocol2();
  if (v13)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    goto LABEL_13;
  }

  v15 = v13;
  swift_unownedRetainStrong();
  sub_1AF67E3AC(v12, v15, a1[3], &v46);

  v16 = *(&v47 + 1);
  if (!*(&v47 + 1))
  {
    sub_1AFCF466C(&v46, sub_1AF80E170);
LABEL_13:
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    goto LABEL_14;
  }

  v17 = v48;
  v18 = sub_1AF441150(&v46, *(&v47 + 1));
  *(&v50 + 1) = v16;
  v51 = *(v17 + 8);
  v19 = sub_1AF585714(&v49);
  (*(*(v16 - 8) + 16))(v19, v18, v16);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v46);
  if (!*(&v50 + 1))
  {
LABEL_14:
    sub_1AFCF466C(&v49, sub_1AF645A60);
    v41 = 0u;
    v42 = 0u;
    v43 = 0;
    goto LABEL_15;
  }

  sub_1AF4498F4(0, &qword_1ED7270D0);
  sub_1AF4498F4(0, &unk_1ED7259B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    goto LABEL_15;
  }

  if (!*(&v42 + 1))
  {
LABEL_15:
    sub_1AFCF466C(&v41, sub_1AFCF4480);
    return 1;
  }

  sub_1AF0FBA54(&v41, &v49);
  v20 = *(&v50 + 1);
  v21 = v51;
  sub_1AF441150(&v49, *(&v50 + 1));
  v22 = (*(*(v21 + 8) + 40))(a2, a3, a4, a5, v20);
  if (!v22)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v49);
    return 1;
  }

  v23 = v22;
  v26 = a1 + 2;
  v25 = a1[2];
  v24 = v26[1];
  swift_unownedRetainStrong();

  if (*(v23 + 80))
  {
    v27 = *(v23 + 88);
    ObjectType = swift_getObjectType();
    v29 = *(v27 + 8);
    swift_unknownObjectRetain();
    v29(&v46, v24, v25, ObjectType, v27);
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v31 = MEMORY[0x1E69E7CA0];
  if (*(v23 + 40) == &type metadata for Entity)
  {
    sub_1AFCF415C(&v46, &v41, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    if (!*(&v42 + 1))
    {

      sub_1AFCEFD2C(&v41, &qword_1ED726850, v31 + 8, MEMORY[0x1E69E6720], sub_1AFCF4720);
      goto LABEL_22;
    }

    if (swift_dynamicCast())
    {
      v35 = v45;
      sub_1AFCEFD2C(&v46, &qword_1ED726850, v31 + 8, MEMORY[0x1E69E6720], sub_1AFCF4720);
      v46 = 0u;
      v47 = 0u;
      v36 = [a6 assetRegistry];
      v37 = [v36 rootNode];

      v38 = swift_allocObject();
      *(v38 + 16) = v35;
      *(v38 + 24) = &v46;
      v39 = swift_allocObject();
      v32 = sub_1AFCF44EC;
      *(v39 + 16) = sub_1AFCF44EC;
      *(v39 + 24) = v38;
      v43 = sub_1AFBF7FC8;
      v44 = v39;
      *&v41 = MEMORY[0x1E69E9820];
      *(&v41 + 1) = 1107296256;
      *&v42 = sub_1AF92EF7C;
      *(&v42 + 1) = &unk_1F256E130;
      v40 = _Block_copy(&v41);

      [v37 enumerateHierarchyUsingBlock_];

      _Block_release(v40);
      swift_isEscapingClosureAtFileLocation();

      goto LABEL_23;
    }
  }

LABEL_22:
  v32 = 0;
LABEL_23:
  sub_1AFCF415C(&v46, &v41, &qword_1ED726850, v31 + 8);
  v33 = MEMORY[0x1E69E6720];
  sub_1AFCF4720(0, &qword_1ED726850, v31 + 8, MEMORY[0x1E69E6720]);
  if (swift_dynamicCast())
  {
    v34 = v45;
  }

  else
  {
    v34 = 0;
  }

  sub_1AFCEFD2C(&v46, &qword_1ED726850, v31 + 8, v33, sub_1AFCF4720);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v49);
  sub_1AF0FB8EC(v32);
  return v34;
}

uint64_t sub_1AFCF26B8@<X0>(void *a1@<X8>)
{
  sub_1AF4486E4();
  v2 = sub_1AFDFDF28();
  if (v2[2] == 3)
  {
    v3 = v2[4];
    v4 = v2[5];
    v5 = v2[6];
    v6 = v2[7];
    v7 = v2;

    v8 = sub_1AF48F460(v3, v4, v5, v6);
    if (v8 == 5)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v20 = v9;
    v10 = v7[8];
    v11 = v7[9];
    v13 = v7[10];
    v12 = v7[11];
    v14 = v7[12];
    v15 = v7[13];
    v17 = v7[14];
    v16 = v7[15];

    v19 = v20;
  }

  else
  {

    v10 = 0;
    v11 = 0;
    v13 = 0;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v17 = 0;
    v16 = 0;
    v19 = 0;
  }

  *a1 = v19;
  a1[1] = v10;
  a1[2] = v11;
  a1[3] = v13;
  a1[4] = v12;
  a1[5] = v14;
  a1[6] = v15;
  a1[7] = v17;
  a1[8] = v16;
  return result;
}

unint64_t sub_1AFCF27E4()
{
  result = qword_1EB644020;
  if (!qword_1EB644020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB644020);
  }

  return result;
}

uint64_t sub_1AFCF33B0()
{
  v106 = sub_1AFDFCA88();
  v1 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v2);
  v105 = v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1AFDFCAC8();
  v4 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v0 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
  if (!v7)
  {
    goto LABEL_42;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_42;
  }

  if (!*(v7 + 24))
  {

LABEL_42:
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v76 = sub_1AFDFDA28();
    if (qword_1ED731058 != -1)
    {
      v86 = v76;
      swift_once();
      v76 = v86;
    }

    v135[0] = 0;
    return sub_1AF0D4F18(v76, v135, 0xD000000000000029, 0x80000001AFF4E950);
  }

  v88 = Strong;

  swift_unknownObjectRetain();
  v9 = sub_1AF9A30B4();
  v136 = &type metadata for Entity;
  v137 = &off_1F2535EA8;
  v135[0] = v9;
  v10 = sub_1AF441150(v135, &type metadata for Entity);
  *(&v122[1] + 1) = &type metadata for Entity;
  *&v122[2] = &off_1F2535EA8;
  v11 = sub_1AF585714(v122);
  *v11 = sub_1AF6C97E0(*v10);
  swift_unknownObjectRelease();
  sub_1AF4498F4(0, &qword_1ED722510);
  swift_dynamicCast();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v135);
  v102 = v119[0];
  v12 = DWORD1(v119[0]);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v147 = qword_1ED73B840;
  v148 = 0;
  v149 = 2;
  v150 = 0;
  v151 = 2;
  v152 = 0;
  sub_1AF705294(2, v120);
  v131[0] = v120[0];
  v131[1] = v120[1];
  v132 = v121;
  sub_1AF6B06C0(v88, v131, 0x200000000, v122);
  v93 = *&v122[0];
  if (!*&v122[0])
  {

    v78 = &unk_1EB644030;
    v79 = &off_1F256EF88;
    v80 = type metadata accessor for AudioPlayerComponent;
    v81 = sub_1AFCF42B0;
    v82 = v120;
LABEL_50:
    sub_1AFCEFD2C(v82, v78, v80, v79, v81);
  }

  v13 = *(&v123 + 1);
  v91 = *(&v122[2] + 1);
  v98 = *(&v124 + 1);
  v92 = v124;
  v126 = *(v122 + 8);
  v127 = *(&v122[1] + 8);
  v90 = v125;
  if (v125 <= 0)
  {
    sub_1AFCF415C(v122, v135, &qword_1ED725EA0, &type metadata for QueryResult);

    sub_1AFCEFD2C(v120, &unk_1EB644030, type metadata accessor for AudioPlayerComponent, &off_1F256EF88, sub_1AFCF42B0);
    v85 = MEMORY[0x1E69E6720];
    sub_1AFCEFD2C(v122, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCF4720);
    v82 = v122;
    v78 = &qword_1ED725EA0;
    v80 = &type metadata for QueryResult;
    v79 = v85;
    v81 = sub_1AFCF4720;
    goto LABEL_50;
  }

  if (!*(&v123 + 1))
  {

    sub_1AFCEFD2C(v120, &unk_1EB644030, type metadata accessor for AudioPlayerComponent, &off_1F256EF88, sub_1AFCF42B0);

    v84 = MEMORY[0x1E69E6720];
    return sub_1AFCEFD2C(v122, &qword_1ED725EA0, &type metadata for QueryResult, v84, sub_1AFCF4720);
  }

  v87[1] = v7;
  v97 = v98[4];
  v96 = *(v92 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v119[2] = v122[2];
  v119[3] = v123;
  v119[4] = v124;
  v119[5] = v125;
  v119[0] = v122[0];
  v119[1] = v122[1];
  sub_1AF5DD298(v119, v135);
  v14 = 0;
  v15 = 0;
  v100 = (v1 + 8);
  v101 = &v115;
  v99 = (v4 + 8);
  v16 = v102;
  v89 = v13;
  v107 = v12;
  while (1)
  {
    v111 = v15;
    v95 = v14;
    v17 = (v91 + 48 * v14);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = *(v17 + 2);
    v110 = *(v17 + 3);
    v23 = *(v17 + 4);
    v22 = *(v17 + 5);
    if (v96)
    {
      v24 = *(v22 + 376);

      os_unfair_lock_lock(v24);
      os_unfair_lock_lock(*(v22 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v97);
    v25 = v98;
    v26 = *(v98 + 4);
    v133[0] = *(v98 + 3);
    v133[1] = v26;
    v134 = v98[10];
    v27 = *(*(*(*(v22 + 40) + 16) + 32) + 16) + 1;
    v25[6] = ecs_stack_allocator_allocate(v98[4], 48 * v27, 8);
    v25[7] = v27;
    v25[9] = 0;
    v25[10] = 0;
    v25[8] = 0;
    LOBYTE(v113) = 1;
    v135[0] = v92;
    v135[1] = v22;
    v135[2] = v25;
    v136 = v20;
    v137 = (v19 - v18 + v20);
    v138 = v90;
    v139 = v18;
    v140 = v19;
    v141 = 0;
    v142 = 0;
    v143 = 1;
    v144 = v21;
    v28 = v111;
    v145 = v110;
    v146 = v23;
    v29 = sub_1AF705B18(v22, v135);
    v30 = v144;
    v31 = v22;
    v110 = v22;
    v94 = v28;
    if (!v144)
    {
      break;
    }

    v32 = v146;
    v33 = v107;
    v34 = &unk_1ED72C000;
    if (v146)
    {
      v111 = *(*(type metadata accessor for AudioPlayerComponent(0) - 8) + 72);
      do
      {
        v36 = *v30++;
        v35 = v36;

        if (*(v31 + 184))
        {
          goto LABEL_53;
        }

        v38 = *(*(v31 + 168) + 4 * v35);
        v39 = *(*(v37 + v34[284]) + 12 * v38 + 8);

        if (v38 == v16 && v39 == v33)
        {
          v41 = *v29;
          if (*v29)
          {
            v42 = *&v41[OBJC_IVAR____TtC3VFX11AudioPlayer_player];
            sub_1AF0D4478(0, &qword_1ED72F8A0);
            v43 = v42;
            v109 = sub_1AFDFDB08();
            v44 = swift_allocObject();
            *(v44 + 16) = v43;
            v117 = sub_1AFCF49A4;
            v118 = v44;
            v113 = MEMORY[0x1E69E9820];
            v114 = 1107296256;
            v115 = sub_1AFCDA044;
            v116 = &unk_1F256DF78;
            v45 = _Block_copy(&v113);
            v108 = v43;
            v46 = v103;
            sub_1AFDFCAA8();
            v112 = MEMORY[0x1E69E7CC0];
            sub_1AF6CB338(&qword_1ED72F9D0, MEMORY[0x1E69E7F60]);
            sub_1AF6CB2E0();
            sub_1AF6CB338(&qword_1ED72F990, sub_1AF6CB2E0);
            v47 = v105;
            v48 = v106;
            v34 = &unk_1ED72C000;
            sub_1AFDFE058();
            v49 = v109;
            MEMORY[0x1B2719530](0, v46, v47, v45);
            v50 = v45;
            v31 = v110;
            _Block_release(v50);

            v51 = v48;
            v33 = v107;
            (*v100)(v47, v51);
            v52 = v46;
            v16 = v102;
            (*v99)(v52, v104);

            v41 = *v29;
          }

          *v29 = 0;
        }

        v29 = &v111[v29];
      }

      while (--v32);
    }

LABEL_28:
    v15 = v94;
    v128 = v93;
    v129 = v126;
    v130 = v127;
    sub_1AF630994(v98, &v128, v133);
    sub_1AF62D29C(v31);
    ecs_stack_allocator_pop_snapshot(v97);
    if (v96)
    {
      os_unfair_lock_unlock(*(v31 + 344));
      os_unfair_lock_unlock(*(v31 + 376));
    }

    v14 = v95 + 1;
    if (v95 + 1 == v89)
    {
      v83 = MEMORY[0x1E69E6720];
      sub_1AFCEFD2C(v122, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCF4720);

      sub_1AFCEFD2C(v120, &unk_1EB644030, type metadata accessor for AudioPlayerComponent, &off_1F256EF88, sub_1AFCF42B0);

      v84 = v83;
      return sub_1AFCEFD2C(v122, &qword_1ED725EA0, &type metadata for QueryResult, v84, sub_1AFCF4720);
    }
  }

  v53 = v139;
  v54 = v140;
  v55 = v107;
  v56 = &unk_1ED72C000;
  if (v139 == v140)
  {
    goto LABEL_28;
  }

  v57 = type metadata accessor for AudioPlayerComponent(0);
  v58 = (v29 + *(*(v57 - 8) + 72) * v53);
  v59 = *(*(v57 - 8) + 72);
  v108 = v59;
  v109 = v54;
  while (1)
  {

    if (*(v31 + 184))
    {
      break;
    }

    v61 = *(*(v31 + 168) + 4 * v53);
    v62 = *(*(v60 + v56[284]) + 12 * v61 + 8);

    if (v61 == v16 && v62 == v55)
    {
      v64 = *v58;
      if (*v58)
      {
        v65 = *&v64[OBJC_IVAR____TtC3VFX11AudioPlayer_player];
        sub_1AF0D4478(0, &qword_1ED72F8A0);
        v66 = v65;
        v67 = sub_1AFDFDB08();
        v68 = swift_allocObject();
        *(v68 + 16) = v66;
        v117 = sub_1AFCF41DC;
        v118 = v68;
        v113 = MEMORY[0x1E69E9820];
        v114 = 1107296256;
        v115 = sub_1AFCDA044;
        v116 = &unk_1F24E6370;
        v69 = _Block_copy(&v113);
        v111 = v66;
        v70 = v103;
        sub_1AFDFCAA8();
        v112 = MEMORY[0x1E69E7CC0];
        sub_1AF6CB338(&qword_1ED72F9D0, MEMORY[0x1E69E7F60]);
        sub_1AF6CB2E0();
        sub_1AF6CB338(&qword_1ED72F990, sub_1AF6CB2E0);
        v71 = v105;
        v72 = v106;
        v56 = &unk_1ED72C000;
        sub_1AFDFE058();
        MEMORY[0x1B2719530](0, v70, v71, v69);
        v73 = v69;
        v54 = v109;
        _Block_release(v73);

        v59 = v108;
        v74 = v72;
        v55 = v107;
        (*v100)(v71, v74);
        v75 = v70;
        v16 = v102;
        (*v99)(v75, v104);

        v64 = *v58;
      }

      *v58 = 0;
    }

    ++v53;
    v58 = &v59[v58];
    v31 = v110;
    if (v54 == v53)
    {
      goto LABEL_28;
    }
  }

LABEL_53:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCF415C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AFCF4720(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AFCF41E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AFCF4228(unsigned __int16 *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  result = (*(v1 + 16))();
  *v3 = 1;
  if (*(v4 + 24) == 1)
  {
    if (*(a1 + 3))
    {
      v7 = 0x1000000;
    }

    else
    {
      v7 = 0;
    }

    *v5 = *a1 | (*(a1 + 2) << 16) | v7;
  }

  return result;
}

void sub_1AFCF42B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1AFCF4314(uint64_t a1)
{
  sub_1AFCF46CC(0, &qword_1EB632BF0, &type metadata for Seed, &off_1F2563E60, type metadata accessor for Query1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1AFCF43A8@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1AFCF43EC(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v8 = a1;
  v7 = a2;
  v6 = a3;
  return v4(&v8, &v7, &v6);
}

void sub_1AFCF4480()
{
  if (!qword_1EB63D018)
  {
    sub_1AF4498F4(255, &unk_1ED7259B0);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63D018);
    }
  }
}

uint64_t sub_1AFCF44F4(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  result = (*(v1 + 16))();
  *v3 = 1;
  if (*(v4 + 24) == 1)
  {
    sub_1AFCEFD2C(v5, &qword_1ED722AC0, &type metadata for EmitterRuntime, MEMORY[0x1E69E6720], sub_1AFCF4720);
    return sub_1AF442324(a1, v5);
  }

  return result;
}

void sub_1AFCF45A4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  if (!*a2)
  {
    sub_1AFC260D8(255, a3, a4);
    v5 = sub_1AFDFEA18();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AFCF4600()
{
  if (!qword_1EB644078)
  {
    sub_1AF4498F4(255, &qword_1EB644070);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB644078);
    }
  }
}

uint64_t sub_1AFCF466C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFCF46CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1AFCF4720(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AFCF4770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AFCF47D8()
{
  if (!qword_1EB634108)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB634108);
    }
  }
}

uint64_t sub_1AFCF4834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ResizingMode.init(rawValue:)(unsigned __int8 a1)
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

unint64_t sub_1AFCF4A2C()
{
  result = qword_1EB644090;
  if (!qword_1EB644090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB644090);
  }

  return result;
}

void sub_1AFCF4AC8()
{
  if (!qword_1EB6440A0)
  {
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6440A0);
    }
  }
}

void sub_1AFCF4B90(uint64_t a1, char a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC3VFX13VFXViewLegacy_effect);
    v7 = Strong;
    v11 = v6;

    if (v6)
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {

        sub_1AFC7C4B8();
        v9 = swift_allocObject();
        *(v9 + 16) = v11;
        *(v9 + 24) = a2;
        v10 = v11;
        sub_1AF66D948(a3, v9);
      }
    }
  }
}

uint64_t sub_1AFCF4C94()
{
  MEMORY[0x1B271E060](v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1AFCF566C(void *a1)
{
  v2 = v1;
  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      sub_1AFC7C4B8();
      v5 = swift_allocObject();
      *(v5 + 16) = a1;
      *(v5 + 24) = 0;
      v6 = a1;
      sub_1AF66D948(sub_1AFCF7CF8, v5);
    }
  }

  v7 = OBJC_IVAR____TtC3VFX13VFXViewLegacy_effect;
  if (*(v2 + OBJC_IVAR____TtC3VFX13VFXViewLegacy_effect))
  {
    v8 = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v2 + OBJC_IVAR____TtC3VFX13VFXViewLegacy_scene);
  *(v2 + OBJC_IVAR____TtC3VFX13VFXViewLegacy_scene) = v8;
  v10 = v8;

  sub_1AFCF6DBC();
  v11 = *(v2 + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView);
  v12 = *(v2 + v7);
  if (v12 && (v13 = (v12 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID), (v13[1] & 1) == 0))
  {
    v16 = *v13;
    v17 = v11;
    v15 = v16;
  }

  else
  {
    v14 = v11;
    v15 = sub_1AF80F414(0);
  }

  sub_1AF752E24(v15);

  v18 = *(v2 + v7);
  if (v18)
  {
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      v21 = v18;

      sub_1AFC7C4B8();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = 1;
      v23 = v21;
      sub_1AF66D948(sub_1AFCF7CF8, v22);
    }
  }
}

id sub_1AFCF5890(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *a4);

  return v6;
}

void sub_1AFCF5A1C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC3VFX13VFXViewLegacy_pointOfView;
  v3 = *(v1 + OBJC_IVAR____TtC3VFX13VFXViewLegacy_pointOfView);
  *(v1 + OBJC_IVAR____TtC3VFX13VFXViewLegacy_pointOfView) = a1;

  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v1 + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView) + OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput);
  if (v6)
  {
    v7 = v4 == 0;
    if (v4)
    {
      v8 = v5;
    }

    else
    {
      v8 = -1;
    }

    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = HIDWORD(v5);
    }

    *(v6 + 24) = v8;
    *(v6 + 28) = v9;
  }
}

void sub_1AFCF5C14(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView);
  v2[OBJC_IVAR____TtC3VFX11VFXCoreView_resizingMode] = a1;
  if (*&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer])
  {
    v3 = *&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_renderer];
    if (v3)
    {
      v4 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput;
      v5 = *&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput];
      if (v5)
      {
        v6 = *(v3 + 88);
        v7 = v2;

        os_unfair_lock_lock(v6);
        MEMORY[0x1EEE9AC00](v8, v9);
        v13[2] = v5;
        v13[3] = &off_1F2537A78;
        v10 = sub_1AF66DE98(sub_1AF755B70, v13);
        sub_1AF64DF20(v10, *(*(v3 + 96) + 16));
        os_unfair_lock_unlock(*(v3 + 88));

        *&v2[v4] = 0;
      }

      else
      {
        v11 = v2;
      }

      v12 = sub_1AF7525A8();
      *&v2[v4] = v12;
      swift_retain_n();

      sub_1AFCF7B3C(v12, v3, &off_1F2537A78);
    }
  }
}

void sub_1AFCF6220(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView);
  v3 = OBJC_IVAR____TtC3VFX11VFXCoreView_scaleFactor;
  *&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_scaleFactor] = a1;
  v22 = v2;
  v4 = [v22 window];
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    [v6 begin];
    [v6 setDisableActions_];
    v7 = *&v2[v3];
    v8 = [v5 screen];
    [v8 nativeScale];
    v10 = v9;

    [v22 setContentScaleFactor_];
    [v22 bounds];
    v12 = v11;
    v14 = v13;
    [v22 contentScaleFactor];
    v16 = v12 * v15;
    [v22 contentScaleFactor];
    v18 = v14 * v17;
    v19 = ceil(v16);
    v20 = ceil(v18);
    if (*&v22[OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize] != v19 || *&v22[OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize + 8] != v20)
    {
      sub_1AF753FAC(v19, v20);
    }

    [v6 commit];
  }
}

void sub_1AFCF6524(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView);
  v3 = &v2[OBJC_IVAR____TtC3VFX11VFXCoreView_preferredFramesPerSecond];
  if (a1 < 1)
  {
    *v3 = 0;
    v3[8] = 1;
    if (*&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer])
    {
      v4 = *&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_renderer];
      if (v4)
      {
        v5 = &v2[OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput];
        v12 = *&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput];
        if (v12)
        {
          v13 = *(v4 + 88);
          v14 = v2;

          os_unfair_lock_lock(v13);
          MEMORY[0x1EEE9AC00](v15, v16);
          v21 = v12;
          v22 = &off_1F2537A78;
          v11 = sub_1AF755B40;
          goto LABEL_10;
        }

LABEL_11:
        v18 = v2;

        goto LABEL_12;
      }
    }
  }

  else
  {
    *v3 = a1;
    v3[8] = 0;
    if (*&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer])
    {
      v4 = *&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_renderer];
      if (v4)
      {
        v5 = &v2[OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput];
        v6 = *&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput];
        if (v6)
        {
          v7 = *(v4 + 88);
          v8 = v2;

          os_unfair_lock_lock(v7);
          MEMORY[0x1EEE9AC00](v9, v10);
          v21 = v6;
          v22 = &off_1F2537A78;
          v11 = sub_1AF755B70;
LABEL_10:
          v17 = sub_1AF66DE98(v11, &v20);
          sub_1AF64DF20(v17, *(*(v4 + 96) + 16));
          os_unfair_lock_unlock(*(v4 + 88));

          *v5 = 0;

LABEL_12:
          v19 = sub_1AF7525A8();
          *v5 = v19;
          swift_retain_n();

          sub_1AFCF7B3C(v19, v4, &off_1F2537A78);

          return;
        }

        goto LABEL_11;
      }
    }
  }
}

char *sub_1AFCF6900(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC3VFX13VFXViewLegacy_delegateImpl;
  type metadata accessor for VFXViewLegacy.VFXViewDelagate();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView;
  v13 = objc_allocWithZone(type metadata accessor for VFXCoreView());
  *&v5[v12] = sub_1AF753390(0, 0.0, 0.0, 0.0, 0.0);
  *&v5[OBJC_IVAR____TtC3VFX13VFXViewLegacy_scene] = 0;
  *&v5[OBJC_IVAR____TtC3VFX13VFXViewLegacy_effect] = 0;
  *&v5[OBJC_IVAR____TtC3VFX13VFXViewLegacy_pointOfView] = 0;
  v20.receiver = v5;
  v20.super_class = type metadata accessor for VFXViewLegacy();
  v14 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView;
  v16 = *&v14[OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView];
  v17 = v14;
  v18 = v16;
  [v17 bounds];
  [v18 setFrame_];

  [v17 addSubview_];
  swift_unknownObjectWeakAssign();
  *(*&v14[v15] + OBJC_IVAR____TtC3VFX11VFXCoreView_delegate + 8) = &off_1F256E4B0;
  swift_unknownObjectWeakAssign();
  [*&v14[v15] setAutoresizingMask_];

  return v17;
}

char *sub_1AFCF6B7C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC3VFX13VFXViewLegacy_delegateImpl;
  type metadata accessor for VFXViewLegacy.VFXViewDelagate();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v2[v4] = v5;
  v6 = OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView;
  v7 = objc_allocWithZone(type metadata accessor for VFXCoreView());
  *&v2[v6] = sub_1AF753390(0, 0.0, 0.0, 0.0, 0.0);
  *&v2[OBJC_IVAR____TtC3VFX13VFXViewLegacy_scene] = 0;
  *&v2[OBJC_IVAR____TtC3VFX13VFXViewLegacy_effect] = 0;
  *&v2[OBJC_IVAR____TtC3VFX13VFXViewLegacy_pointOfView] = 0;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for VFXViewLegacy();
  v8 = objc_msgSendSuper2(&v15, sel_initWithCoder_, a1);
  v9 = v8;
  if (v8)
  {
    v10 = OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView;
    v11 = *&v8[OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView];
    [v9 bounds];
    [v11 setFrame_];

    [v9 addSubview_];
    swift_unknownObjectWeakAssign();
    *(*&v9[v10] + OBJC_IVAR____TtC3VFX11VFXCoreView_delegate + 8) = &off_1F256E4B0;
    swift_unknownObjectWeakAssign();
    v12 = *&v9[v10];
    v13 = v9;
    [v12 setAutoresizingMask_];
  }

  return v9;
}

void sub_1AFCF6DBC()
{
  v1 = *&v0[OBJC_IVAR____TtC3VFX13VFXViewLegacy_scene];
  if (v1)
  {
    v2 = v0;
    v3 = *&v1[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
    v4 = OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView;
    swift_weakAssign();
    v5 = *&v1[OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer];
    if (v5)
    {
      v6 = *&v0[v4];
      swift_retain_n();
      v7 = v1;

      v8 = v6;
      sub_1AF7553D0();
      *&v8[OBJC_IVAR____TtC3VFX11VFXCoreView_renderer] = v5;

      sub_1AF751F94();
    }

    else
    {
      v9 = v1;
    }

    if (*(*&v2[v4] + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer))
    {

      sub_1AFCD1FAC(v10);
    }

    v11 = *(v3 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v11 != 0;
    *(v13 + 32) = v2;
    if (v11)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1AFCF7B14;
      *(v14 + 24) = v13;
      v15 = v2;

      sub_1AF66D814(sub_1AF6FC894, v14);
    }

    else
    {
      v16 = v2;

      sub_1AF66C204(v3, sub_1AFCF7B14, v13);
    }
  }
}

void sub_1AFCF7030(uint64_t a1, char a2, void *a3)
{
  v5 = sub_1AFDFCA88();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AFDFCAC8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v34 = v11;
    v35 = v6;
    v17 = *(Strong + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
    v18 = v17 + OBJC_IVAR____TtC3VFX13EntityManager_clock;
    v19 = (v17 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);
    if (*v19)
    {

      if (a2)
      {
LABEL_8:
        v24 = swift_allocObject();
        *(v24 + 16) = a3;
        *(v24 + 24) = v17;
        v25 = objc_opt_self();

        v26 = a3;
        if ([v25 isMainThread])
        {
          v27 = sub_1AFDFD638();
          MEMORY[0x1EEE9AC00](v27, v28);
          *(&v32 - 2) = v26;
          *(&v32 - 1) = v17;
          sub_1AFCF7640(sub_1AFCF7C84, (&v32 - 4));
        }

        else
        {
          sub_1AF615168();
          v33 = sub_1AFDFDB08();
          v29 = swift_allocObject();
          *(v29 + 16) = sub_1AFCF7C14;
          *(v29 + 24) = v24;
          aBlock[4] = sub_1AFCF7C1C;
          aBlock[5] = v29;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1AFCDA044;
          aBlock[3] = &unk_1F24E6398;
          v30 = _Block_copy(aBlock);

          sub_1AFDFCAA8();
          v36 = MEMORY[0x1E69E7CC0];
          sub_1AFCF7C3C(&qword_1ED72F9D0, MEMORY[0x1E69E7F60]);
          sub_1AF6CB2E0();
          sub_1AFCF7C3C(&qword_1ED72F990, sub_1AF6CB2E0);
          sub_1AFDFE058();
          v31 = v33;
          MEMORY[0x1B2719530](0, v14, v9, v30);
          _Block_release(v30);

          (*(v35 + 8))(v9, v5);
          (*(v34 + 8))(v14, v10);
        }

        return;
      }
    }

    else
    {
      v20 = *(v18 + 88);
      *(v18 + 68) = v20;
      *(v18 + 83) = 0;
      ++*v18;
      v19[1] = 0;
      v19[2] = 0;
      *v19 = 0;

      *(v18 + 32) = CACurrentMediaTime();
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 40) = 0;
      *(v18 + 64) = 0;
      *(v18 + 72) = 1;
      if (a2)
      {
        goto LABEL_8;
      }
    }

    v21 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
    if (!*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread))
    {
      type metadata accessor for RuntimeThread();
      swift_allocObject();

      v23 = sub_1AF6D1E38(v22, 0, 0);

      *(v17 + v21) = v23;
    }

    goto LABEL_8;
  }
}

uint64_t sub_1AFCF7504(uint64_t a1, uint64_t a2)
{
  sub_1AFDFD638();
  v5[2] = a1;
  v5[3] = a2;
  return sub_1AFCF7640(sub_1AFCF7CDC, v5);
}

uint64_t sub_1AFCF7580()
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_weakAssign();
}

uint64_t sub_1AFCF7640(uint64_t a1, uint64_t a2)
{
  sub_1AFDFD628();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    sub_1AFCF7CA0();
    swift_isEscapingClosureAtFileLocation();
  }

  else
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000003FLL, 0x80000001AFF4EB70);
    v6 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v6);

    MEMORY[0x1B2718AE0](46, 0xE100000000000000);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCF77B0(void (*a1)(uint64_t))
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

id sub_1AFCF7A10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VFXViewLegacy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1AFCF7B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(*(a2 + 88));
  v6 = *(a2 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 96) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1AF424C70(0, v6[2] + 1, 1, v6);
    *(a2 + 96) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1AF424C70(v8 > 1, v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = a1;
  v10[5] = a3;
  *(a2 + 96) = v6;
  v11 = *(a2 + 88);

  os_unfair_lock_unlock(v11);
}

uint64_t sub_1AFCF7C24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AFCF7C3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AFCF7D04()
{
  sub_1AF0FBDE0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1AFCF7D60(void *a1)
{
  v3 = sub_1AFDFC128();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD04A54(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v9 = v8;
  *&v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23 - v11;
  v13 = a1[3];
  v14 = a1[4];
  sub_1AF441150(a1, v13);
  if (sub_1AF69504C(2031, v13, v14))
  {
    *&v23 = v4;
    sub_1AF441150(a1, a1[3]);
    sub_1AF445B90();
    result = sub_1AFDFF3B8();
    if (!v1)
    {
      *&v25 = 0;
      BYTE8(v25) = 1;
      *&v26 = 0x7465737361;
      *(&v26 + 1) = 0xE500000000000000;
      sub_1AFD040A0(&qword_1EB633060, MEMORY[0x1E6968FB0]);
      sub_1AFDFE768();
      v16 = sub_1AFDFC028();
      v18 = v17;
      (*(v23 + 8))(v7, v3);
      sub_1AF8DA36C(v16, v18);
      return (*(v24 + 8))(v12, v9);
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    result = sub_1AFDFF398();
    if (!v1)
    {
      sub_1AF441150(v29, v29[3]);
      sub_1AF5DE134();
      sub_1AFDFEE88();
      v23 = v26;
      v24 = v25;
      v19 = v27;
      v20 = v28;
      v21 = v29[6];

      v22 = v23;
      *v21 = v24;
      *(v21 + 16) = v22;
      *(v21 + 32) = v19;
      *(v21 + 40) = v20;
      return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v29);
    }
  }

  return result;
}

char *sub_1AFCF819C(void *a1, void *a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  v6 = &v3[OBJC_IVAR____TtC3VFX19VideoCaptureSession_frameTime];
  v7 = MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E6960C70] + 16);
  *v6 = *MEMORY[0x1E6960C70];
  *(v6 + 1) = *(v7 + 8);
  *(v6 + 2) = v8;
  *&v3[OBJC_IVAR____TtC3VFX19VideoCaptureSession_outputTexture] = 0;
  *&v3[OBJC_IVAR____TtC3VFX19VideoCaptureSession_sampleBuffer] = 0;
  v9 = [objc_allocWithZone(MEMORY[0x1E6987110]) init];
  *&v3[OBJC_IVAR____TtC3VFX19VideoCaptureSession_session] = v9;
  cacheOut = 0;
  CVMetalTextureCacheCreate(0, 0, a1, 0, &cacheOut);
  v10 = cacheOut;
  *&v3[OBJC_IVAR____TtC3VFX19VideoCaptureSession_metalTextureCache] = cacheOut;
  v79.receiver = v3;
  v79.super_class = type metadata accessor for VideoCaptureSession();
  v11 = v10;
  v12 = objc_msgSendSuper2(&v79, sel_init);
  v77 = OBJC_IVAR____TtC3VFX19VideoCaptureSession_session;
  v78 = v12;
  v13 = *&v12[OBJC_IVAR____TtC3VFX19VideoCaptureSession_session];
  v73 = v12;
  [v13 beginConfiguration];
  v14 = objc_opt_self();
  v72 = *MEMORY[0x1E6987608];
  v76 = [v14 defaultDeviceWithMediaType_];
  v74 = a3;
  v83 = *(a3 + 24);
  v15 = *(&v83 + 1);
  v16 = &unk_1ED731000;
  if (*(&v83 + 1))
  {
    v17 = v83;
    sub_1AFA9C3FC(&v83, v81, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1AFD04A04);
    v18 = sub_1AFCFF70C();
    v19 = v18;
    if (v18 >> 62)
    {
      v20 = sub_1AFDFE108();
      if (v20)
      {
LABEL_4:
        v21 = 0;
        while (1)
        {
          v22 = (v19 & 0xC000000000000001) != 0 ? MEMORY[0x1B2719C70](v21, v19) : *(v19 + 8 * v21 + 32);
          v23 = v22;
          v24 = [v22 uniqueID];
          v25 = sub_1AFDFCEF8();
          v27 = v26;

          if (v25 == v17 && v15 == v27)
          {
            break;
          }

          v29 = sub_1AFDFEE28();

          if (v29)
          {
            goto LABEL_16;
          }

          if (v20 == ++v21)
          {
            goto LABEL_18;
          }
        }

LABEL_16:

        sub_1AFD03C74(&v83, &qword_1ED726CC0, MEMORY[0x1E69E6158]);

        v16 = &unk_1ED731000;
        v30 = off_1ED730000;
        v31 = v23;
        goto LABEL_21;
      }
    }

    else
    {
      v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_4;
      }
    }

LABEL_18:

    sub_1AFD03C74(&v83, &qword_1ED726CC0, MEMORY[0x1E69E6158]);
    v16 = &unk_1ED731000;
  }

  v30 = off_1ED730000;
  if (v76)
  {
    v31 = v76;
LABEL_21:
    v32 = v31;
    v33 = objc_allocWithZone(MEMORY[0x1E69870B0]);
    v81[0] = 0;
    v34 = v32;
    v35 = [v33 initWithDevice:v34 error:v81];
    if (v35)
    {
      v36 = v35;
      v37 = v81[0];

      v38 = *&v78[v77];
      [v38 addInput_];
    }

    else
    {
      v40 = v81[0];
      v41 = sub_1AFDFBF58();

      swift_willThrow();
      v30 = off_1ED730000;

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v42 = sub_1AFDFDA08();
      if (v16[11] != -1)
      {
        v71 = v42;
        swift_once();
        v42 = v71;
      }

      v81[0] = 0;
      sub_1AF0D4F18(v42, v81, 0xD000000000000019, 0x80000001AFF4EF60);
    }

    goto LABEL_34;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v39 = sub_1AFDFDA08();
  if (v16[11] != -1)
  {
    v70 = v39;
    swift_once();
    v39 = v70;
  }

  v81[0] = 0;
  sub_1AF0D4F18(v39, v81, 0xD000000000000019, 0x80000001AFF4EE70);
  v32 = 0;
LABEL_34:
  if (v30[468] != -1)
  {
    swift_once();
  }

  strcpy(v81, "videoDevice ");
  BYTE5(v81[1]) = 0;
  HIWORD(v81[1]) = -5120;
  v80 = v32;
  sub_1AFD03B24();
  v43 = v32;
  v44 = sub_1AFDFCF88();
  MEMORY[0x1B2718AE0](v44);

  v46 = v81[0];
  v45 = v81[1];
  v47 = sub_1AFDFDA28();
  if (v16[11] != -1)
  {
    v69 = v47;
    swift_once();
    v47 = v69;
  }

  v81[0] = 0;
  sub_1AF0D4F18(v47, v81, v46, v45);

  v48 = [objc_allocWithZone(MEMORY[0x1E6987178]) init];
  [v48 setAlwaysDiscardsLateVideoFrames_];
  sub_1AFD03B8C(0, &qword_1ED722F10, &qword_1ED7232A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = sub_1AFDFCEF8();
  *(inited + 40) = v50;
  *(inited + 72) = MEMORY[0x1E69E7668];
  *(inited + 48) = 1111970369;
  sub_1AF440858(inited);
  swift_setDeallocating();
  sub_1AFD03BE4(inited + 32, &qword_1ED7232A0);
  v51 = sub_1AFDFCBE8();

  [v48 setVideoSettings_];

  v52 = a2;
  [v48 setSampleBufferDelegate:v73 queue:a2];
  if ([*&v78[v77] canAddOutput_])
  {
    [*&v78[v77] addOutput_];
    v53 = "mirroring not supported";
    v54 = sub_1AFDFDA28();
    v81[0] = 0;
    v55 = 0xD00000000000001BLL;
  }

  else
  {
    v53 = "failed to create a device";
    v54 = sub_1AFDFDA08();
    v81[0] = 0;
    v55 = 0xD00000000000002ELL;
  }

  sub_1AF0D4F18(v54, v81, v55, v53 | 0x8000000000000000);
  [*&v78[v77] commitConfiguration];
  v56 = [v48 connectionWithMediaType_];
  if (v56)
  {
    v57 = v56;
    v58 = sub_1AFDFDA28();
    v81[0] = 0;
    sub_1AF0D4F18(v58, v81, 0xD00000000000001CLL, 0x80000001AFF4EF00);
    if ([v57 isVideoOrientationSupported])
    {
      [v57 setVideoOrientation_];
    }

    if ([v57 isVideoMirroringSupported])
    {
      strcpy(v81, "mirroring : ");
      BYTE5(v81[1]) = 0;
      HIWORD(v81[1]) = -5120;
      v59 = *(v74 + 2);
      if (*(v74 + 2))
      {
        v60 = 1702195828;
      }

      else
      {
        v60 = 0x65736C6166;
      }

      if (*(v74 + 2))
      {
        v61 = 0xE400000000000000;
      }

      else
      {
        v61 = 0xE500000000000000;
      }

      MEMORY[0x1B2718AE0](v60, v61);
      sub_1AFD03C40(v74);

      v62 = v81[0];
      v63 = v81[1];
      v64 = sub_1AFDFDA28();
      v81[0] = 0;
      sub_1AF0D4F18(v64, v81, v62, v63);
      v52 = a2;

      [v57 setAutomaticallyAdjustsVideoMirroring_];
      [v57 setVideoMirrored_];
    }

    else
    {
      sub_1AFD03C40(v74);
      v66 = sub_1AFDFDA28();
      v81[0] = 0;
      sub_1AF0D4F18(v66, v81, 0xD000000000000017, 0x80000001AFF4EF20);
    }
  }

  else
  {
    sub_1AFD03C40(v74);
    v65 = sub_1AFDFDA08();
    v81[0] = 0;
    sub_1AF0D4F18(v65, v81, 0xD000000000000032, 0x80000001AFF4EEC0);
  }

  [*&v78[v77] startRunning];
  v67 = sub_1AFDFDA28();
  v81[0] = 0;
  sub_1AF0D4F18(v67, v81, 0x6E75527472617473, 0xEC000000676E696ELL);

  swift_unknownObjectRelease();
  return v73;
}

uint64_t sub_1AFCF8D54()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFCF8E4C()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFCF8F30()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFCF9024@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFCFF968();
  *a1 = result;
  return result;
}

void sub_1AFCF9054(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x65727574706163;
  v5 = 0xE800000000000000;
  v6 = 0x6465726F7272696DLL;
  v7 = 0xEA00000000007265;
  v8 = 0x696669746E656469;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x80000001AFF22DC0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7461746E6569726FLL;
    v3 = 0xEF65646F4D6E6F69;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1AFCF9108()
{
  v1 = *v0;
  v2 = 0x65727574706163;
  v3 = 0x6465726F7272696DLL;
  v4 = 0x696669746E656469;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7461746E6569726FLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AFCF91B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFCFF968();
  *a1 = result;
  return result;
}

uint64_t sub_1AFCF91E0(uint64_t a1)
{
  v2 = sub_1AFD0413C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFCF921C(uint64_t a1)
{
  v2 = sub_1AFD0413C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFCF9258(void *a1)
{
  v3 = v1;
  sub_1AFD04A54(0, &unk_1EB6442B0, sub_1AFD0413C, &type metadata for VideoCapture.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFD0413C();
  sub_1AFDFF3F8();
  LOBYTE(v12) = 0;
  sub_1AFDFE8C8();
  if (!v2)
  {
    LOBYTE(v12) = *(v3 + 1);
    v13 = 1;
    sub_1AF51C608();
    sub_1AFDFE918();
    LOBYTE(v12) = 2;
    sub_1AFDFE8C8();
    LOBYTE(v12) = 3;
    sub_1AFDFE8B8();
    v12 = *(v3 + 24);
    v13 = 4;
    sub_1AFD04A04(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1AFD04190();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

double sub_1AFCF94C4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFD016F4(a1, v6);
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

uint64_t sub_1AFCF9524(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1AFCFF528(v5, v7) & 1;
}

uint64_t sub_1AFCF9570@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1AFDFC318();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  BYTE6(v12) = 1;
  sub_1AFDFC308();
  v7 = sub_1AFDFC2B8();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  v11 = BYTE6(v12);
  *a1 = v13;
  *(a1 + 2) = v11;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

void sub_1AFCF9674(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  if (!*v4)
  {
    goto LABEL_8;
  }

  v9 = *(v4 + 8) == (*a3 & 1) && *(v4 + 9) == *(a3 + 1);
  if (!v9 || *(v4 + 10) != (*(a3 + 2) & 1))
  {
    goto LABEL_8;
  }

  v13 = *(v4 + 32);
  v12 = *(v4 + 40);
  if ((*(v4 + 16) != *(a3 + 8) || *(v4 + 24) != *(a3 + 16)) && (sub_1AFDFEE28() & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = *(a3 + 32);
  if (!v12)
  {
    if (!v14)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v14 || (v13 != *(a3 + 24) || v12 != v14) && (sub_1AFDFEE28() & 1) == 0)
  {
LABEL_8:
    sub_1AFC4AEA8(a3, v15);

    v10 = *(a3 + 16);
    *(v4 + 8) = *a3;
    *(v4 + 24) = v10;
    *(v4 + 40) = *(a3 + 32);
    objc_allocWithZone(type metadata accessor for VideoCaptureSession());
    sub_1AFC4AEA8(a3, v15);
    swift_unknownObjectRetain();
    v11 = sub_1AFCF819C(a1, a2, a3);

    *v4 = v11;
  }
}

double sub_1AFCF97E8@<D0>(_OWORD *a1@<X8>)
{
  sub_1AFCFF604(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void sub_1AFCF9828(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 32);
  v45[0] = *(v3 + 16);
  v45[1] = v7;
  v46 = *(v3 + 48);
  sub_1AF6B06C0(a1, v45, 0x200000000, &v15);
  if (v15)
  {
    v14 = &v14;
    v41 = v18;
    v42 = v19;
    v43 = v20;
    v39 = v16;
    v40 = v17;
    v44 = v21;
    v38 = v15;
    MEMORY[0x1EEE9AC00](v8, v9);
    v11[2] = a1;
    v11[3] = a2;
    v12 = a3;
    v13 = a1;
    sub_1AF5D5D48(sub_1AFD03B00, v11);
    sub_1AFD03C74(&v15, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  v10 = *(v3 + 72);
  v36[0] = *(v3 + 56);
  v36[1] = v10;
  v37 = *(v3 + 88);
  sub_1AF6B06C0(a1, v36, 0x200000000, &v22);
  if (v22)
  {
    v32 = v25;
    v33 = v26;
    v34 = v27;
    v30 = v23;
    v31 = v24;
    v35 = v28;
    v29 = v22;
    sub_1AFD06CD8(&v29);
    sub_1AFD03C74(&v22, &qword_1ED725EA0, &type metadata for QueryResult);
  }
}

void sub_1AFCF99F4(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v10 = CFXGPUDeviceGetMTLDevice(*(a5 + 16));
    if (*a2 == 1)
    {
      v11 = *(a7 + OBJC_IVAR____TtC3VFX13EntityManager_updateQueue);
      v12 = *(a2 + 16);
      v14[0] = *a2;
      v14[1] = v12;
      v15 = *(a2 + 32);
      sub_1AFCF9674(v10, v11, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = *a3;
      if (*a3)
      {
        [*&v13[OBJC_IVAR____TtC3VFX19VideoCaptureSession_session] stopRunning];
      }

      swift_unknownObjectRelease();
      *a3 = 0;
    }
  }
}

uint64_t sub_1AFCF9AE8()
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
  sub_1AF7033B8(1, &v7);
  v1 = v8;
  v2 = v9;
  v3 = v11;
  v4 = v10 | 4;
  *(v0 + 16) = v7;
  *(v0 + 24) = v1;
  *(v0 + 28) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = 2;
  *(v0 + 48) = v3;
  sub_1AF7033CC(1, v12);
  v5 = v12[1];
  *(v0 + 56) = v12[0];
  *(v0 + 72) = v5;
  *(v0 + 88) = v13;
  return v0;
}

uint64_t sub_1AFCF9C20()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFCF9CCC()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFCF9D64()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFCF9E0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFCFFB6C();
  *a1 = result;
  return result;
}

void sub_1AFCF9E3C(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7465737361;
  v4 = 0xE400000000000000;
  v5 = 1702131053;
  if (*v1 != 2)
  {
    v5 = 0x73706F6F6CLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 2036427888;
    v2 = 0xE400000000000000;
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

uint64_t sub_1AFCF9EA4()
{
  v1 = 0x7465737361;
  v2 = 1702131053;
  if (*v0 != 2)
  {
    v2 = 0x73706F6F6CLL;
  }

  if (*v0)
  {
    v1 = 2036427888;
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

uint64_t sub_1AFCF9F08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFCFFB6C();
  *a1 = result;
  return result;
}

uint64_t sub_1AFCF9F30(uint64_t a1)
{
  v2 = sub_1AFD040E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFCF9F6C(uint64_t a1)
{
  v2 = sub_1AFD040E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFCF9FA8(void *a1)
{
  v3 = v1;
  sub_1AFD04A54(0, &qword_1EB644290, sub_1AFD040E8, &type metadata for MovieFileAsset.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFD040E8();
  sub_1AFDFF3F8();
  v11 = v3[1];
  v13[0] = *v3;
  v13[1] = v11;
  v13[2] = v3[2];
  v14 = 0;
  sub_1AF5DE27C();
  sub_1AFDFE918();
  if (!v2)
  {
    LOBYTE(v13[0]) = 1;
    sub_1AFDFE8C8();
    LOBYTE(v13[0]) = 2;
    sub_1AFDFE8C8();
    LOBYTE(v13[0]) = 3;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v10, v6);
}

double sub_1AFCFA198@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AFD0209C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = v7[0];
    *(a2 + 32) = *v7;
    *(a2 + 47) = *(&v7[1] + 7);
  }

  return result;
}

void sub_1AFCFA200(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 49) = 257;
}

uint64_t sub_1AFCFA220()
{
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;

  return swift_deallocClassInstance();
}

uint64_t sub_1AFCFA288@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1AFDFC128();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for MovieRuntime(0);
  *(a1 + v3[5]) = 0;
  *(a1 + v3[6]) = 0;
  *(a1 + v3[7]) = 0;
  v4 = a1 + v3[8];
  *v4 = 0;
  *(v4 + 8) = 1;
  *(a1 + v3[9]) = 0;
  *(a1 + v3[10]) = 0;
  *(a1 + v3[11]) = 0;
  v5 = v3[12];
  type metadata accessor for IOSurfaceWrapper();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(a1 + v5) = result;
  *(a1 + v3[13]) = 0;
  return result;
}

id sub_1AFCFA364()
{
  v1 = *(type metadata accessor for MovieRuntime(0) + 52);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    sub_1AFD03B8C(0, &qword_1EB644230, &unk_1EB644238);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = sub_1AFDFCEF8();
    *(inited + 40) = v5;
    *(inited + 48) = 1111970369;
    v6 = sub_1AF43F7A8(inited);
    swift_setDeallocating();
    sub_1AFD03BE4(inited + 32, &unk_1EB644238);
    sub_1AF3DA2E8(v6);

    v7 = objc_allocWithZone(MEMORY[0x1E69880D8]);
    sub_1AF4436C4();
    v8 = sub_1AFDFCBE8();

    v9 = [v7 initWithPixelBufferAttributes_];

    *(v0 + v1) = v9;
    v3 = v9;
    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_1AFCFA4D0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v4 = result;
    v5 = *(v2 + 32);
    v37[0] = *(v2 + 16);
    v37[1] = v5;
    v38 = *(v2 + 48);

    sub_1AF6B06C0(v4, v37, 0x200000000, &v7);
    if (v7)
    {
      v33 = v10;
      v34 = v11;
      v35 = v12;
      v31 = v8;
      v32 = v9;
      v36 = v13;
      v30 = v7;

      sub_1AFD17C54(&v30, v4, a2);

      sub_1AFD03C74(&v7, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v6 = *(v2 + 72);
    v28[0] = *(v2 + 56);
    v28[1] = v6;
    v29 = *(v2 + 88);
    sub_1AF6B06C0(v4, v28, 0x200000000, &v14);
    if (v14)
    {
      v24 = v17;
      v25 = v18;
      v26 = v19;
      v22 = v15;
      v23 = v16;
      v27 = v20;
      v21 = v14;

      sub_1AFD14FC4(&v21, v4);

      return sub_1AFD03C74(&v14, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AFCFA694(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, uint64_t a6)
{
  v39 = a3;
  v40 = a6;
  v36 = a4;
  sub_1AF0D1094(0, &qword_1ED726C10, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v38 = &v33 - v11;
  v12 = sub_1AFDFC128();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v16 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFD638();
  v37 = sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = HIDWORD(a5);
  v17 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v18 = sub_1AFDFC048();
  v19 = [v17 initWithURL:v18 options:0];
  v35 = v19;

  v20 = [objc_allocWithZone(MEMORY[0x1E69880B0]) initWithAsset_];
  [v20 addOutput_];
  (*(v13 + 16))(&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v22 = (v21 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v21 + v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v39;
  *(v24 + 16) = v39;
  v26 = v34;
  *(v24 + 24) = a5;
  *(v24 + 28) = v26;
  (*(v13 + 32))(v24 + v21, v16, v12);
  v27 = v24 + v22;
  *v27 = v20;
  *(v27 + 8) = v36 & 1;
  *(v24 + v23) = v40;
  v28 = sub_1AFDFD668();
  v29 = v38;
  (*(*(v28 - 8) + 56))(v38, 1, 1, v28);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v25;
  v30[5] = sub_1AFD03E08;
  v30[6] = v24;
  swift_retain_n();
  v31 = v20;

  sub_1AF727F34(0, 0, v29, &unk_1AFEAA638, v30);
}

void sub_1AFCFAA38(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v54 = a3;
  v55 = a5;
  v53 = a4;
  v60 = a2;
  cacheOut[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1AFDFC128();
  v7 = *(v6 - 8);
  v58 = v6;
  v59 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v52 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF90C24C();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E6968FB0];
  v16 = MEMORY[0x1E69E6720];
  sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v57 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v51 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v51 - v26;
  v56 = a1;
  v28 = v59;
  sub_1AFA9C3FC(a1, &v51 - v26, &qword_1ED7315E0, v15, v16, sub_1AF0D1094);
  v29 = v58;
  (*(v28 + 16))(v23, v60, v58);
  (*(v28 + 56))(v23, 0, 1, v29);
  v30 = *(v11 + 56);
  sub_1AFA9C3FC(v27, v14, &qword_1ED7315E0, v15, v16, sub_1AF0D1094);
  sub_1AFA9C3FC(v23, &v14[v30], &qword_1ED7315E0, v15, v16, sub_1AF0D1094);
  v31 = *(v28 + 48);
  if (v31(v14, 1, v29) != 1)
  {
    v60 = v27;
    v32 = v57;
    sub_1AFA9C3FC(v14, v57, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1AF0D1094);
    if (v31(&v14[v30], 1, v29) != 1)
    {
      v33 = v52;
      (*(v28 + 32))(v52, &v14[v30], v29);
      sub_1AFD040A0(&qword_1EB6327A0, MEMORY[0x1E6968FB0]);
      v34 = sub_1AFDFCE58();
      v35 = *(v28 + 8);
      v35(v33, v29);
      sub_1AF456B8C(v23);
      sub_1AF456B8C(v60);
      v35(v32, v29);
      sub_1AF456B8C(v14);
      if ((v34 & 1) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

    sub_1AF456B8C(v23);
    sub_1AF456B8C(v60);
    (*(v28 + 8))(v32, v29);
LABEL_6:
    sub_1AFD03CE4(v14);
    return;
  }

  sub_1AF456B8C(v23);
  sub_1AF456B8C(v27);
  if (v31(&v14[v30], 1, v29) != 1)
  {
    goto LABEL_6;
  }

  sub_1AF456B8C(v14);
LABEL_8:
  v36 = objc_allocWithZone(MEMORY[0x1E6988098]);
  v37 = v54;
  v38 = [v36 initWithPlayerItem_];
  [v38 setMuted_];
  v39 = type metadata accessor for MovieRuntime(0);
  v40 = v56;
  *(v56 + v39[5]) = 0;
  v41 = v39[6];

  *(v40 + v41) = v38;
  v42 = v39[7];

  *(v40 + v42) = v37;
  cacheOut[0] = 0;
  v43 = *MEMORY[0x1E695E480];
  v44 = CFXGPUDeviceGetMTLDevice(*(v55 + 16));
  LODWORD(v43) = CVMetalTextureCacheCreate(v43, 0, v44, 0, cacheOut);
  swift_unknownObjectRelease();
  if (v43)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v45 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v50 = v45;
      swift_once();
      v45 = v50;
    }

    v61 = 0;
    sub_1AF0D4F18(v45, &v61, 0xD000000000000021, 0x80000001AFF4EFA0);
  }

  else
  {
    v46 = cacheOut[0];
    v47 = v39[11];
    v48 = *(v40 + v47);
    v49 = cacheOut[0];

    *(v40 + v47) = v46;
  }
}

uint64_t sub_1AFCFB088()
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
  sub_1AF7031CC(1, &v7);
  v1 = v8;
  v2 = v9;
  v3 = v11;
  v4 = v10 | 4;
  *(v0 + 16) = v7;
  *(v0 + 24) = v1;
  *(v0 + 28) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = 2;
  *(v0 + 48) = v3;
  sub_1AFCC3958(1, 1, v12);
  v5 = v12[1];
  *(v0 + 56) = v12[0];
  *(v0 + 72) = v5;
  *(v0 + 88) = v13;
  return v0;
}

void sub_1AFCFB1B8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC3VFX11AudioPlayer_player);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v9[4] = sub_1AFD04224;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1AFCDA044;
  v9[3] = &unk_1F256F320;
  v6 = _Block_copy(v9);
  v7 = v3;
  v8 = a1;

  [v7 scheduleFile:v8 atTime:0 completionHandler:v6];
  _Block_release(v6);
}

void sub_1AFCFB2D8(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR____TtC3VFX11AudioPlayer_loops) == 1)
    {
      v5 = Strong;
      sub_1AFCFB1B8(a2);
      v4 = v5;
    }
  }
}

id sub_1AFCFB384(void *a1, SEL *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  [*&v4[*a1] *a2];
  v8.receiver = v4;
  v8.super_class = a4(a3);
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

id sub_1AFCFB414(char *a1, uint64_t a2, void *a3, SEL *a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v9 = *&a1[*a3];
  v10 = a1;
  [v9 *a4];
  v12.receiver = v10;
  v12.super_class = a6(a5);
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

char *sub_1AFCFB564(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v3 = sub_1AFDFC128();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC3VFX11AudioPlayer_loops] = 1;
  v37 = OBJC_IVAR____TtC3VFX11AudioPlayer_isValid;
  v1[OBJC_IVAR____TtC3VFX11AudioPlayer_isValid] = 1;
  v38 = OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRaw;
  *&v1[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRaw] = 0;
  v7 = OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawCount;
  *&v1[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawCount] = 0;
  v8 = OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawTime;
  *&v1[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawTime] = 0;
  v9 = OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawSampleRate;
  *&v1[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawSampleRate] = 0x40E5888000000000;
  v10 = OBJC_IVAR____TtC3VFX11AudioPlayer__lock;
  v11 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v12 = sub_1AFDFCEC8();
  [v11 setName_];

  *&v2[v10] = v11;
  v42 = v4;
  v13 = *(v4 + 16);
  v39 = v3;
  v40 = v13;
  v13(&v2[OBJC_IVAR____TtC3VFX11AudioPlayer_url], v43, v3);
  v14 = [objc_allocWithZone(MEMORY[0x1E69583F8]) init];
  v15 = OBJC_IVAR____TtC3VFX11AudioPlayer_engine;
  *&v2[OBJC_IVAR____TtC3VFX11AudioPlayer_engine] = v14;
  v16 = [v14 mainMixerNode];
  *&v2[OBJC_IVAR____TtC3VFX11AudioPlayer_mixer] = v16;
  *&v2[v38] = 0;
  *&v2[v7] = 0;
  *&v2[v8] = 0;
  *&v2[v9] = 0x40E5888000000000;
  [*&v2[v15] prepare];
  v17 = *&v2[v15];
  v45 = 0;
  if ([v17 startAndReturnError_])
  {
    v18 = v45;
    v19 = v43;
  }

  else
  {
    v20 = v45;
    v21 = sub_1AFDFBF58();

    swift_willThrow();
    v2[v37] = 0;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001ELL, 0x80000001AFF4F020);
    swift_getErrorValue();
    sub_1AFDFEDD8();
    v23 = v45;
    v22 = v46;
    v24 = sub_1AFDFDA08();
    v19 = v43;
    if (qword_1ED731058 != -1)
    {
      v36 = v24;
      swift_once();
      v24 = v36;
    }

    v45 = 0;
    sub_1AF0D4F18(v24, &v45, v23, v22);
  }

  v25 = [objc_allocWithZone(MEMORY[0x1E6958458]) init];
  *&v2[OBJC_IVAR____TtC3VFX11AudioPlayer_player] = v25;
  v26 = type metadata accessor for AudioPlayer(0);
  v44.receiver = v2;
  v44.super_class = v26;
  v27 = objc_msgSendSuper2(&v44, sel_init);
  v28 = v41;
  v29 = v39;
  v40(v41, v19, v39);
  objc_allocWithZone(MEMORY[0x1E6958408]);
  v30 = v27;
  v31 = sub_1AFCFF258(v28);
  v32 = [v31 processingFormat];
  v33 = OBJC_IVAR____TtC3VFX11AudioPlayer_engine;
  v34 = OBJC_IVAR____TtC3VFX11AudioPlayer_player;
  [*&v30[OBJC_IVAR____TtC3VFX11AudioPlayer_engine] attachNode_];
  [*&v30[v33] connect:*&v30[v34] to:*&v30[OBJC_IVAR____TtC3VFX11AudioPlayer_mixer] format:v32];
  sub_1AFCFB1B8(v31);

  (*(v42 + 8))(v19, v29);
  return v30;
}

void sub_1AFCFBB50(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v5 = [a1 floatChannelData];
    if (v5)
    {
      v6 = *v5;
      v7 = [a1 frameLength];
      v8 = OBJC_IVAR____TtC3VFX11AudioPlayer__lock;
      [*&v12[OBJC_IVAR____TtC3VFX11AudioPlayer__lock] lock];
      *&v12[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRaw] = v6;
      *&v12[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawCount] = v7;
      info = 0;
      v9 = mach_timebase_info(&info);
      v10 = -1.0;
      if (!v9)
      {
        v10 = (mach_absolute_time() * info.numer / info.denom) * 0.000000001;
      }

      *&v12[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawTime] = v10;
      [a2 sampleRate];
      *&v12[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawSampleRate] = v11;
      [*&v12[v8] unlock];
    }

    else
    {
    }
  }
}

void sub_1AFCFBCE4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t sub_1AFCFBD98()
{
  result = sub_1AFDFC128();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AFCFBE5C(void *a1)
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 stop];
}

uint64_t sub_1AFCFBF00@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v3 = *(a1 + 20);
  v4 = sub_1AFDFC128();
  v5 = *(*(v4 - 8) + 56);

  return v5(&a2[v3], 1, 1, v4);
}

uint64_t sub_1AFCFBF74(void *a1)
{
  sub_1AFD04A54(0, &unk_1EB644270, sub_1AFD0404C, &type metadata for AudioController.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFD0404C();
  sub_1AFDFF3F8();
  v13 = 0;
  sub_1AFDFE8C8();
  if (!v1)
  {
    v12 = 1;
    sub_1AFDFE8C8();
    v11 = 2;
    sub_1AFDFE8C8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AFCFC120(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1702131053;
  if (v2 != 1)
  {
    v5 = 0x73706F6F6CLL;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 2036427888;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1702131053;
  if (*a2 != 1)
  {
    v8 = 0x73706F6F6CLL;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 2036427888;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AFCFC200()
{
  v1 = 1702131053;
  if (*v0 != 1)
  {
    v1 = 0x73706F6F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2036427888;
  }
}

uint64_t sub_1AFCFC248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFCFFBB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFCFC270(uint64_t a1)
{
  v2 = sub_1AFD0404C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFCFC2AC(uint64_t a1)
{
  v2 = sub_1AFD0404C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFCFC2E8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFD025E0(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
    a2[2] = BYTE2(result) & 1;
  }

  return result;
}

uint64_t sub_1AFCFC37C(void *a1)
{
  sub_1AFD04A54(0, &qword_1EB644258, sub_1AFD03FF8, &type metadata for AudioAnalyzer.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFD03FF8();
  sub_1AFDFF3F8();
  v14 = 0;
  sub_1AFDFE8C8();
  if (!v1)
  {
    v13 = 1;
    sub_1AFDFE8C8();
    v12 = 2;
    sub_1AFDFE8C8();
    v11 = 3;
    sub_1AFDFE8C8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AFCFC554()
{
  v1 = 0x6D726F6665766177;
  v2 = 0x6D75727463657073;
  if (*v0 != 2)
  {
    v2 = 7564658;
  }

  if (*v0)
  {
    v1 = 0x6D75727463657073;
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

uint64_t sub_1AFCFC5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFCFF9B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFCFC5FC(uint64_t a1)
{
  v2 = sub_1AFD03FF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFCFC638(uint64_t a1)
{
  v2 = sub_1AFD03FF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFCFC674@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFD01AA8(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
    a2[2] = BYTE2(result) & 1;
    a2[3] = BYTE3(result) & 1;
  }

  return result;
}

vDSP_DFT_Setup sub_1AFCFC720()
{
  if (*(v0 + 56) != 1)
  {
    return *(v0 + 48);
  }

  result = vDSP_DFT_zop_CreateSetup(0, 0x800uLL, vDSP_DFT_FORWARD);
  *(v0 + 48) = result;
  *(v0 + 56) = 0;
  return result;
}

uint64_t sub_1AFCFC764(const vDSP_DFT_SetupStruct *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = sub_1AFDFD488();
  *(v3 + 16) = 2048;
  v4 = (v3 + 32);
  bzero((v3 + 32), 0x2000uLL);
  v5 = sub_1AFDFD488();
  *(v5 + 16) = 2048;
  bzero((v5 + 32), 0x2000uLL);
  v6 = *v1;
  if ((v3 - *v1) >= 0x20)
  {
    v9 = (v6 + 48);
    v10 = (v3 + 48);
    v11 = 2048;
    do
    {
      v12 = *v9;
      *(v10 - 1) = *(v9 - 1);
      *v10 = v12;
      v9 += 2;
      v10 += 2;
      v11 -= 8;
    }

    while (v11);
  }

  else
  {
    v7 = 0;
    v8 = v6 + 32;
    do
    {
      v4[v7] = *(v8 + v7 * 4);
      ++v7;
    }

    while (v7 != 2048);
  }

  v13 = v1[5];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1AF41FDF8(0, *(v13 + 2), 0, v13);
  }

  v14 = v1[4];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1AF41FDF8(0, *(v14 + 2), 0, v14);
  }

  v1[4] = v14;
  vDSP_DFT_Execute(a1, v4, (v5 + 32), v13 + 8, v14 + 8);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[5] = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1AFC0DB20(v13);
    v1[5] = v13;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1AFC0DB20(v14);
  }

  v1[4] = v14;
  v1[5] = v13;
  __A.realp = (v13 + 32);
  __A.imagp = (v14 + 32);

  v16 = sub_1AFDFD488();
  *(v16 + 16) = 1024;
  bzero((v16 + 32), 0x1000uLL);
  vDSP_zvabs(&__A, 1, (v16 + 32), 1, 0x400uLL);
  v17 = sub_1AFDFD488();
  *(v17 + 16) = 720;
  bzero((v17 + 32), 0xB40uLL);
  if ((v17 - v16 - 24) >= 0x20)
  {
    v19 = (v16 + 72);
    v20 = (v17 + 48);
    v21 = 720;
    v22 = vdupq_n_s32(0x3CC80000u);
    do
    {
      v23 = vmulq_f32(*v19, v22);
      v20[-1] = vmulq_f32(v19[-1], v22);
      *v20 = v23;
      v19 += 2;
      v20 += 2;
      v21 -= 8;
    }

    while (v21);
  }

  else
  {
    for (i = 0; i != 2880; i += 4)
    {
      *(v17 + 32 + i) = *(v16 + 56 + i) * 0.024414;
    }
  }

  return v17;
}

uint64_t sub_1AFCFCA54()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFCFCB18()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFCFCBC8()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFCFCC88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFCFFB20();
  *a1 = result;
  return result;
}

void sub_1AFCFCCB8(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6D726F6665766177;
  v4 = 0x80000001AFF22450;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 7564658;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 0x647574696E67616DLL;
    v2 = 0xEA00000000007365;
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

unint64_t sub_1AFCFCD38()
{
  v1 = 0x6D726F6665766177;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 7564658;
  }

  if (*v0)
  {
    v1 = 0x647574696E67616DLL;
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

uint64_t sub_1AFCFCDB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFCFFB20();
  *a1 = result;
  return result;
}

uint64_t sub_1AFCFCDDC(uint64_t a1)
{
  v2 = sub_1AFD049B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFCFCE18(uint64_t a1)
{
  v2 = sub_1AFD049B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFCFCE54(void *a1)
{
  v3 = v1;
  sub_1AFD04A54(0, &unk_1EB644350, sub_1AFD049B0, &type metadata for AudioSpectrum.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFD049B0();
  sub_1AFDFF3F8();
  v14 = *v3;
  v13 = 0;
  sub_1AFD04A04(0, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
  sub_1AFD04ABC(&qword_1EB63D188);
  sub_1AFDFE918();
  if (!v2)
  {
    v14 = v3[1];
    v13 = 1;
    sub_1AFDFE918();
    v14 = v3[2];
    v13 = 2;
    sub_1AFDFE918();
    LOBYTE(v14) = 3;
    sub_1AFDFE8E8();
  }

  return (*(v7 + 8))(v10, v6);
}

double sub_1AFCFD0B0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFD01CF8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

void sub_1AFCFD114(uint64_t a1@<X8>)
{
  v2 = sub_1AFDFD488();
  *(v2 + 16) = 2048;
  bzero((v2 + 32), 0x2000uLL);
  v3 = sub_1AFDFD488();
  *(v3 + 16) = 2048;
  bzero((v3 + 32), 0x2000uLL);
  v4 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v4;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
}

void sub_1AFCFD1B8(uint64_t a1)
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
  v10 = *(v4 + 40);

  os_unfair_lock_unlock(v10);
}

uint64_t getEnumTagSinglePayload for AudioAnalyzer(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioAnalyzer(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

void **sub_1AFCFD424(void **a1, void **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v8 = sub_1AFDFC128();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    v11 = v4;
    if (v10(a2 + v7, 1, v8))
    {
      sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      memcpy(v6 + v7, a2 + v7, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(v6 + v7, a2 + v7, v8);
      (*(v9 + 56))(v6 + v7, 0, 1, v8);
    }
  }

  return v6;
}

uint64_t sub_1AFCFD5C8(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1AFDFC128();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

void **sub_1AFCFD69C(void **a1, void **a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_1AFDFC128();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v5;
  if (v9(a2 + v6, 1, v7))
  {
    sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1 + v6, a2 + v6, *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  return a1;
}

void **sub_1AFCFD7E0(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *a2;
  *a1 = *a2;
  v8 = v7;

  v9 = *(a3 + 20);
  v10 = sub_1AFDFC128();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  LODWORD(v6) = v12(a1 + v9, 1, v10);
  v13 = v12(a2 + v9, 1, v10);
  if (!v6)
  {
    if (!v13)
    {
      (*(v11 + 24))(a1 + v9, a2 + v9, v10);
      return a1;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1 + v9, a2 + v9, *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v11 + 16))(a1 + v9, a2 + v9, v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
  return a1;
}

char *sub_1AFCFD98C(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_1AFDFC128();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

void **sub_1AFCFDAC4(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = sub_1AFDFC128();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(a1 + v7, a2 + v7, v8);
      return a1;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1 + v7, a2 + v7, *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 32))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
  return a1;
}

void sub_1AFCFDCB4()
{
  sub_1AF0D1094(319, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t *sub_1AFCFDD9C(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1AFDFC128();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v12 = *(a2 + v11);
    *(a1 + v11) = v12;
    v13 = a3[7];
    v14 = a3[8];
    v15 = *(a2 + v13);
    *(a1 + v13) = v15;
    v16 = a1 + v14;
    v17 = a2 + v14;
    *v16 = *v17;
    v16[8] = v17[8];
    v18 = a3[10];
    *(a1 + a3[9]) = *(a2 + a3[9]);
    v19 = *(a2 + v18);
    *(a1 + v18) = v19;
    v20 = a3[11];
    v21 = a3[12];
    v22 = *(a2 + v20);
    *(a1 + v20) = v22;
    *(a1 + v21) = *(a2 + v21);
    v23 = a3[13];
    v24 = *(a2 + v23);
    *(a1 + v23) = v24;
    v25 = v12;
    v26 = v15;
    v27 = v19;
    v28 = v22;

    v29 = v24;
  }

  return a1;
}

void sub_1AFCFDFC0(uint64_t a1, int *a2)
{
  v4 = sub_1AFDFC128();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(a1 + a2[13]);
}

char *sub_1AFCFE0C8(char *a1, char *a2, int *a3)
{
  v6 = sub_1AFDFC128();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  v10 = *&a2[v9];
  *&a1[v9] = v10;
  v11 = a3[7];
  v12 = a3[8];
  v13 = *&a2[v11];
  *&a1[v11] = v13;
  v14 = &a1[v12];
  v15 = &a2[v12];
  *v14 = *v15;
  v14[8] = v15[8];
  v16 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  v17 = *&a2[v16];
  *&a1[v16] = v17;
  v18 = a3[11];
  v19 = a3[12];
  v20 = *&a2[v18];
  *&a1[v18] = v20;
  *&a1[v19] = *&a2[v19];
  v21 = a3[13];
  v22 = *&a2[v21];
  *&a1[v21] = v22;
  v23 = v10;
  v24 = v13;
  v25 = v17;
  v26 = v20;

  v27 = v22;
  return a1;
}

char *sub_1AFCFE2A0(char *a1, char *a2, int *a3)
{
  v6 = sub_1AFDFC128();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  a1[a3[5]] = a2[a3[5]];
  v12 = a3[6];
  v13 = *&a1[v12];
  v14 = *&a2[v12];
  *&a1[v12] = v14;
  v15 = v14;

  v16 = a3[7];
  v17 = *&a1[v16];
  v18 = *&a2[v16];
  *&a1[v16] = v18;
  v19 = v18;

  v20 = a3[8];
  v21 = &a1[v20];
  v22 = &a2[v20];
  v23 = *v22;
  v21[8] = v22[8];
  *v21 = v23;
  a1[a3[9]] = a2[a3[9]];
  v24 = a3[10];
  v25 = *&a1[v24];
  v26 = *&a2[v24];
  *&a1[v24] = v26;
  v27 = v26;

  v28 = a3[11];
  v29 = *&a1[v28];
  v30 = *&a2[v28];
  *&a1[v28] = v30;
  v31 = v30;

  *&a1[a3[12]] = *&a2[a3[12]];

  v32 = a3[13];
  v33 = *&a1[v32];
  v34 = *&a2[v32];
  *&a1[v32] = v34;
  v35 = v34;

  return a1;
}

char *sub_1AFCFE514(char *a1, char *a2, int *a3)
{
  v6 = sub_1AFDFC128();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  *&a1[v9] = *&a2[v9];
  v10 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  v11 = &a1[v10];
  v12 = &a2[v10];
  *v11 = *v12;
  v11[8] = v12[8];
  v13 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  *&a1[v13] = *&a2[v13];
  v14 = a3[12];
  *&a1[a3[11]] = *&a2[a3[11]];
  *&a1[v14] = *&a2[v14];
  *&a1[a3[13]] = *&a2[a3[13]];
  return a1;
}

char *sub_1AFCFE6C8(char *a1, char *a2, int *a3)
{
  v6 = sub_1AFDFC128();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  v13 = *&a1[v12];
  *&a1[v12] = *&a2[v12];

  v14 = a3[7];
  v15 = *&a1[v14];
  *&a1[v14] = *&a2[v14];

  v16 = a3[8];
  v17 = a3[9];
  v18 = &a1[v16];
  v19 = &a2[v16];
  *v18 = *v19;
  v18[8] = v19[8];
  a1[v17] = a2[v17];
  v20 = a3[10];
  v21 = *&a1[v20];
  *&a1[v20] = *&a2[v20];

  v22 = a3[11];
  v23 = *&a1[v22];
  *&a1[v22] = *&a2[v22];

  *&a1[a3[12]] = *&a2[a3[12]];

  v24 = a3[13];
  v25 = *&a1[v24];
  *&a1[v24] = *&a2[v24];

  return a1;
}

void sub_1AFCFE960()
{
  sub_1AF0D1094(319, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t initializeWithCopy for MovieFileAsset(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v7 = *(a2 + 32);
  *(a1 + 32) = v7;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);

  v5 = v7;
  return a1;
}

uint64_t assignWithCopy for MovieFileAsset(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a1 + 32);
  *(a1 + 32) = v4;
  v7 = v4;

  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 50) = *(a2 + 50);
  return a1;
}

__n128 initializeWithTake for MovieFileAsset(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for MovieFileAsset(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  v5 = *(a2 + 40);
  v6 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 50) = *(a2 + 50);
  return a1;
}

uint64_t getEnumTagSinglePayload for MovieFileAsset(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
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

uint64_t storeEnumTagSinglePayload for MovieFileAsset(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for VideoCaptureRuntime(id *a1)
{
}

uint64_t initializeWithCopy for VideoCaptureRuntime(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v6 = v3;

  return a1;
}

uint64_t assignWithCopy for VideoCaptureRuntime(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for VideoCaptureRuntime(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  return a1;
}

uint64_t initializeWithCopy for VideoCapture(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  return a1;
}

uint64_t assignWithCopy for VideoCapture(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for VideoCapture(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for VideoCapture(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for VideoCapture(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AFCFF048()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v23 = qword_1ED73B840;
  v24 = 0;
  v25 = 2;
  v26 = 0;
  v27 = 2;
  v28 = 0;
  sub_1AFCC34C4(1, 1, &v11);
  v1 = v12;
  v2 = v13;
  v3 = v15;
  v4 = v14 | 4;
  *(v0 + 16) = v11;
  *(v0 + 24) = v1;
  *(v0 + 28) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = 2;
  *(v0 + 48) = v3;
  sub_1AFCC34E8(2, 1, &v16);
  v5 = v17;
  v6 = v18;
  v7 = v20;
  v8 = v19 | 4;
  *(v0 + 56) = v16;
  *(v0 + 64) = v5;
  *(v0 + 68) = v6;
  *(v0 + 72) = v8;
  *(v0 + 80) = 2;
  *(v0 + 88) = v7;
  sub_1AFCC3518(1, 1, v21);
  v9 = v21[1];
  *(v0 + 96) = v21[0];
  *(v0 + 112) = v9;
  *(v0 + 128) = v22;
  return v0;
}

uint64_t sub_1AFCFF174()
{
  v0 = swift_allocObject();
  sub_1AFCFF048();
  return v0;
}

double sub_1AFCFF1C4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *&v6 = 0;
  *(&v6 + 1) = 0xE000000000000000;
  sub_1AFCF7D60(a1);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  if (v2)
  {
  }

  else
  {
    result = *&v6;
    *a2 = v6;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0xE000000000000000;
    *(a2 + 32) = 0uLL;
  }

  return result;
}

id sub_1AFCFF258(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1AFDFC048();
  v13[0] = 0;
  v5 = [v2 initForReading:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1AFDFC128();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1AFDFBF58();

    swift_willThrow();
    v11 = sub_1AFDFC128();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_1AFCFF3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AFCFF3C8, 0, 0);
}

uint64_t sub_1AFCFF3C8()
{
  v1 = *(v0 + 24);
  type metadata accessor for EntityManagerActor();
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 16) = v1;
  sub_1AFD040A0(&qword_1EB644228, type metadata accessor for EntityManagerActor);
  v4 = sub_1AFDFD5B8();

  return MEMORY[0x1EEE6DFA0](sub_1AFCFF4A0, v4, v3);
}

uint64_t sub_1AFCFF4A0()
{
  v1 = *(v0 + 16);
  (*(v0 + 32))();

  *v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AFCFF528(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || a1[1] != a2[1] || ((a1[2] ^ a2[2]))
  {
    return 0;
  }

  v3 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (v3 || (v4 = a1, v5 = a2, v6 = sub_1AFDFEE28(), a2 = v5, v7 = v6, a1 = v4, (v7 & 1) != 0))
  {
    v8 = *(a1 + 4);
    v9 = *(a2 + 4);
    if (v8)
    {
      if (v9 && (*(a1 + 3) == *(a2 + 3) && v8 == v9 || (sub_1AFDFEE28() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v9)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1AFCFF604@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1AFDFC318();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  BYTE6(v13) = 1;
  sub_1AFDFC308();
  v7 = sub_1AFDFC2B8();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  v11 = v14;
  v12 = BYTE6(v13);
  *a1 = 0;
  *(a1 + 8) = v11;
  *(a1 + 10) = v12;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1AFCFF70C()
{
  sub_1AF0D1094(0, &qword_1EB638150, type metadata accessor for DeviceType, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C5E0;
  v1 = *MEMORY[0x1E6986950];
  v2 = *MEMORY[0x1E6986948];
  v3 = MEMORY[0x1E6986900];
  *(inited + 32) = *MEMORY[0x1E6986950];
  *(inited + 40) = v2;
  v4 = *v3;
  v5 = *MEMORY[0x1E6986938];
  *(inited + 48) = *v3;
  *(inited + 56) = v5;
  v6 = *MEMORY[0x1E6986928];
  v7 = *MEMORY[0x1E6986940];
  *(inited + 64) = *MEMORY[0x1E6986928];
  *(inited + 72) = v7;
  v8 = *MEMORY[0x1E6986918];
  v9 = *MEMORY[0x1E6986960];
  v10 = MEMORY[0x1E6986968];
  *(inited + 80) = *MEMORY[0x1E6986918];
  *(inited + 88) = v9;
  v11 = *v10;
  *(inited + 96) = *v10;
  v12 = *MEMORY[0x1E6986958];
  v13 = v1;
  v14 = v2;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v11;
  v22 = v12;
  v23 = sub_1AF420764(1, 10, 1, inited);
  v23[2] = 10;
  v23[13] = v22;
  v24 = *MEMORY[0x1E6987608];
  type metadata accessor for DeviceType(0);
  v25 = v24;
  v26 = sub_1AFDFD3F8();

  v27 = [objc_opt_self() discoverySessionWithDeviceTypes:v26 mediaType:v25 position:0];

  v28 = [v27 devices];
  sub_1AF0D4478(0, &qword_1EB6441F8);
  v29 = sub_1AFDFD418();

  return v29;
}

uint64_t sub_1AFCFF968()
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

uint64_t sub_1AFCFF9B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D726F6665766177 && a2 == 0xE800000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D75727463657073 && a2 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D75727463657073 && a2 == 0xEE00736552776F4CLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7564658 && a2 == 0xE300000000000000)
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

uint64_t sub_1AFCFFB20()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFCFFB6C()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFCFFBB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2036427888 && a2 == 0xE400000000000000;
  if (v3 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702131053 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73706F6F6CLL && a2 == 0xE500000000000000)
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

void sub_1AFCFFCCC(void *a1, uint64_t a2, id *a3)
{
  sub_1AF90C24C();
  v69 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v70 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v68 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v61 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v61 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v76 = &v61 - v21;
  v73 = sub_1AFDFC128();
  v22 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v23);
  v63 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v61 - v27;
  v30 = a1[2];
  v29 = a1[3];
  v31 = a1[4];
  v72 = a3;
  v64 = v14;
  if (v31)
  {
    v32 = a1[5];
    ObjectType = swift_getObjectType();
    (*(v32 + 8))(v30, v29, ObjectType, v32);
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v74 = 0;
    v75 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF2C630);
    MEMORY[0x1B2718AE0](v30, v29);
    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2C660);
    v35 = v74;
    v34 = v75;
    v36 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v74 = 0;
    sub_1AF0D4F18(v36, &v74, v35, v34);

    sub_1AFDFC018();
    a3 = v72;
  }

  v37 = type metadata accessor for AudioPlayerComponent(0);
  v38 = MEMORY[0x1E6968FB0];
  v39 = MEMORY[0x1E69E6720];
  v67 = *(v37 + 20);
  v40 = v76;
  sub_1AFA9C3FC(a3 + v67, v76, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1AF0D1094);
  v41 = *(v22 + 16);
  v42 = v18;
  v71 = v28;
  v43 = v22;
  v44 = v18;
  v45 = v73;
  v41(v42, v28, v73);
  v65 = *(v43 + 56);
  v66 = v43 + 56;
  v65(v44, 0, 1, v45);
  v46 = *(v69 + 48);
  v47 = v40;
  v48 = v70;
  sub_1AFA9C3FC(v47, v70, &qword_1ED7315E0, v38, v39, sub_1AF0D1094);
  v69 = v46;
  sub_1AFA9C3FC(v44, v48 + v46, &qword_1ED7315E0, v38, v39, sub_1AF0D1094);
  v49 = *(v43 + 48);
  if (v49(v48, 1, v45) == 1)
  {
    sub_1AF456B8C(v44);
    sub_1AF456B8C(v76);
    v50 = v43;
    if (v49(v48 + v69, 1, v45) == 1)
    {
      sub_1AF456B8C(v48);
      (*(v43 + 8))(v71, v45);
      return;
    }

    goto LABEL_13;
  }

  v62 = v44;
  v51 = v64;
  sub_1AFA9C3FC(v48, v64, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1AF0D1094);
  v52 = v69;
  if (v49(v48 + v69, 1, v45) == 1)
  {
    sub_1AF456B8C(v62);
    sub_1AF456B8C(v76);
    v50 = v43;
    (*(v43 + 8))(v51, v45);
LABEL_13:
    sub_1AFD03CE4(v48);
    v53 = *(v50 + 32);
    v54 = v71;
LABEL_14:
    v55 = v68;
    v53(v68, v54, v45);
    v65(v55, 0, 1, v45);
    v56 = v72;
    sub_1AF456BE8(v55, v72 + v67);

    *v56 = 0;
    return;
  }

  v57 = v43;
  v53 = *(v43 + 32);
  v58 = v63;
  v53(v63, (v48 + v52), v45);
  sub_1AFD040A0(&qword_1EB6327A0, MEMORY[0x1E6968FB0]);
  v59 = sub_1AFDFCE58();
  v60 = *(v57 + 8);
  v60(v58, v45);
  sub_1AF456B8C(v62);
  sub_1AF456B8C(v76);
  v60(v51, v45);
  sub_1AF456B8C(v48);
  if ((v59 & 1) == 0)
  {
    v54 = v71;
    v45 = v73;
    goto LABEL_14;
  }

  v60(v71, v73);
}

void sub_1AFD003D8(void **a1, _BYTE *a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (!*a1)
  {

    v18 = MEMORY[0x1E69E7CC0];
    *a3 = MEMORY[0x1E69E7CC0];

    *(a3 + 8) = v18;

    *(a3 + 16) = v18;
    *(a3 + 24) = 0;
    return;
  }

  v6 = OBJC_IVAR____TtC3VFX11AudioPlayer__lock;
  v7 = *&v4[OBJC_IVAR____TtC3VFX11AudioPlayer__lock];
  v8 = v4;
  [v7 lock];
  v9 = *&v8[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRaw];
  if (v9)
  {
    if ((*a2 & 1) == 0 && (a2[1] & 1) == 0 && a2[2] != 1)
    {
LABEL_26:
      if (a2[2] != 1)
      {
        goto LABEL_35;
      }

LABEL_27:
      v29 = sub_1AFCFC720();
      v30 = sub_1AFCFC764(v29);

      *(a3 + 8) = v30;
      if (a2[2] != 1)
      {
        goto LABEL_35;
      }

      if (*(v30 + 16) >= 0x14uLL)
      {
        v32 = *(v30 + 16) / 0x14uLL;
        v31 = sub_1AFDFD488();
        *(v31 + 16) = v32;
        bzero((v31 + 32), 4 * v32);
      }

      else
      {
        v31 = MEMORY[0x1E69E7CC0];
        v32 = *(MEMORY[0x1E69E7CC0] + 16);
        if (!v32)
        {
LABEL_34:

          *(a3 + 16) = v31;
LABEL_35:
          if (a2[3] == 1)
          {
            v35 = *&v8[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawCount];
            info.numer = 0;
            vDSP_measqv(v9, 1, &info, v35);
            v36 = ((log10f(*&info.numer) * 10.0) + 40.0) * 0.0075;
            if (v36 <= 0.0)
            {
              v36 = 0.0;
            }

            if (v36 > 1.0)
            {
              v36 = 1.0;
            }

            *(a3 + 24) = v36;
          }

          goto LABEL_41;
        }
      }

      v33 = (v30 + 56);
      v34 = 32;
      do
      {
        *(v31 + v34) = ((((((((((((((((((((*(v33 - 6) + 0.0) + *(v33 - 5)) + *(v33 - 4)) + *(v33 - 3)) + *(v33 - 2)) + *(v33 - 1)) + *v33) + v33[1]) + v33[2]) + v33[3]) + v33[4]) + v33[5]) + v33[6]) + v33[7]) + v33[8]) + v33[9]) + v33[10]) + v33[11]) + v33[12]) + v33[13]) * 0.05;
        v34 += 4;
        v33 += 20;
        --v32;
      }

      while (v32);
      goto LABEL_34;
    }

    v10 = *&v8[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawCount];
    info = 0;
    v11 = -1.0;
    if (!mach_timebase_info(&info))
    {
      v11 = (mach_absolute_time() * info.numer / info.denom) * 0.000000001;
    }

    v12 = *&v8[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawTime];
    v13 = *&v8[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawSampleRate];
    v14 = sub_1AFDFD488();
    *(v14 + 16) = 2048;
    bzero((v14 + 32), 0x2000uLL);
    if (v10 >= 2049)
    {
      v15 = ((v11 - v12) * v13);
      if (v10 - 2048 < v15)
      {
        v15 = v10 - 2048;
      }

      v16 = &v9[v15 & ~(v15 >> 63)];
      if ((v14 - v16) < 0xFFFFFFFFFFFFFFE0)
      {
        v25 = (v16 + 4);
        v26 = (v14 + 48);
        v27 = 2048;
        do
        {
          v28 = *v25;
          *(v26 - 1) = *(v25 - 1);
          *v26 = v28;
          v25 += 2;
          v26 += 2;
          v27 -= 8;
        }

        while (v27);
      }

      else
      {
        for (i = 0; i != 2048; ++i)
        {
          *(v14 + 32 + i * 4) = v16[i];
        }
      }

LABEL_25:

      *a3 = v14;
      if (a2[1])
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (!v10)
    {
      goto LABEL_25;
    }

    if (v10 > 7 && (v14 - v9) < 0xFFFFFFFFFFFFFFE0)
    {
      v19 = v10 & 0xFFFFFFFFFFFFFFF8;
      v37 = (v9 + 4);
      v38 = (v14 + 48);
      v39 = v10 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v40 = *v37;
        *(v38 - 1) = *(v37 - 1);
        *v38 = v40;
        v37 += 2;
        v38 += 2;
        v39 -= 8;
      }

      while (v39);
      if (v10 == v19)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = v10 - v19;
    v21 = v19;
    v22 = (4 * v19 + v14 + 32);
    v23 = &v9[v21];
    do
    {
      v24 = *v23++;
      *v22++ = v24;
      --v20;
    }

    while (v20);
    goto LABEL_25;
  }

LABEL_41:
  [*&v4[v6] unlock];
}

uint64_t sub_1AFD00848(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v115 = a6;
  v114 = a5;
  v121 = sub_1AFDFCA88();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121, v9);
  v118 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1AFDFCAC8();
  v117 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v11);
  v116 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF90C24C();
  v130 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v108 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v124 = &v106 - v18;
  sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v107 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = &v106 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v106 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v109 = &v106 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v106 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v132 = &v106 - v38;
  v133 = sub_1AFDFC128();
  v135 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v39);
  v122 = &v106 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v106 - v43;

  v129 = sub_1AF6496EC(a2);

  v46 = a3[2];
  v45 = a3[3];
  v47 = a3[4];
  v131 = a4;
  v113 = a3;
  v111 = v28;
  if (v47)
  {
    v48 = a3[5];
    ObjectType = swift_getObjectType();
    (*(v48 + 8))(v46, v45, ObjectType, v48);
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    aBlock = 0;
    v137 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF2C630);
    MEMORY[0x1B2718AE0](v46, v45);
    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2C660);
    v50 = aBlock;
    v51 = v137;
    v52 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    aBlock = 0;
    sub_1AF0D4F18(v52, &aBlock, v50, v51);

    sub_1AFDFC018();
    a4 = v131;
  }

  v53 = MEMORY[0x1E6968FB0];
  v54 = MEMORY[0x1E69E6720];
  v55 = v132;
  sub_1AFA9C3FC(a4, v132, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1AF0D1094);
  v56 = v135;
  v57 = *(v135 + 16);
  v134 = v44;
  v58 = v44;
  v59 = v133;
  v127 = v57;
  v128 = v135 + 16;
  v57(v35, v58, v133);
  v125 = *(v56 + 56);
  v126 = v56 + 56;
  v125(v35, 0, 1, v59);
  v60 = *(v130 + 48);
  v61 = v55;
  v62 = v124;
  sub_1AFA9C3FC(v61, v124, &qword_1ED7315E0, v53, v54, sub_1AF0D1094);
  v123 = v60;
  sub_1AFA9C3FC(v35, &v60[v62], &qword_1ED7315E0, v53, v54, sub_1AF0D1094);
  v63 = *(v56 + 48);
  if ((v63)(v62, 1, v59) != 1)
  {
    v65 = v109;
    sub_1AFA9C3FC(v62, v109, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1AF0D1094);
    v66 = v123;
    if ((v63)(&v123[v62], 1, v59) != 1)
    {
      v67 = v135;
      v68 = &v66[v62];
      v69 = v122;
      (*(v135 + 32))(v122, v68, v133);
      sub_1AFD040A0(&qword_1EB6327A0, MEMORY[0x1E6968FB0]);
      v123 = v63;
      v70 = v62;
      v71 = sub_1AFDFCE58();
      v72 = v67;
      v59 = v133;
      v73 = *(v72 + 8);
      v73(v69, v133);
      sub_1AF456B8C(v35);
      sub_1AF456B8C(v132);
      v73(v65, v59);
      v63 = v123;
      sub_1AF456B8C(v70);
      v64 = v131;
      if ((v71 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    sub_1AF456B8C(v35);
    sub_1AF456B8C(v132);
    (*(v135 + 8))(v65, v59);
LABEL_13:
    sub_1AFD03CE4(v62);
    v64 = v131;
    goto LABEL_17;
  }

  sub_1AF456B8C(v35);
  sub_1AF456B8C(v132);
  if ((v63)(&v123[v62], 1, v59) != 1)
  {
    goto LABEL_13;
  }

  sub_1AF456B8C(v62);
  v64 = v131;
LABEL_15:
  if (*(v64 + *(type metadata accessor for MovieRuntime(0) + 24)))
  {
    return (*(v135 + 8))(v134, v59);
  }

LABEL_17:
  v75 = *(type metadata accessor for MovieRuntime(0) + 20);
  if (*(v64 + v75) != 1)
  {
LABEL_24:
    v130 = HIDWORD(v129);
    sub_1AF456B8C(v64);
    v85 = v134;
    v86 = v127;
    v127(v64, v134, v59);
    v125(v64, 0, 1, v59);
    *(v64 + v75) = 1;
    sub_1AF0D4478(0, &qword_1ED72F8A0);
    v132 = sub_1AFDFDB08();
    LODWORD(v126) = *(v113 + 49);
    v87 = sub_1AFCFA364();
    v88 = v122;
    v86(v122, v85, v59);
    v89 = v135;
    v90 = (*(v135 + 80) + 16) & ~*(v135 + 80);
    v91 = (v112 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
    v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
    v93 = swift_allocObject();
    (*(v89 + 32))(v93 + v90, v88, v59);
    *(v93 + v91) = v87;
    v94 = v93 + v92;
    *v94 = v114;
    *(v94 + 8) = v126;
    v95 = v130;
    *(v94 + 12) = v129;
    *(v94 + 16) = v95;
    *(v93 + ((v92 + 27) & 0xFFFFFFFFFFFFFFF8)) = v115;
    v140 = sub_1AFD03D40;
    v141 = v93;
    aBlock = MEMORY[0x1E69E9820];
    v137 = 1107296256;
    v138 = sub_1AFCDA044;
    v139 = &unk_1F24E63C0;
    v96 = _Block_copy(&aBlock);
    v97 = v87;

    v98 = v116;
    sub_1AFDFCAA8();
    v142 = MEMORY[0x1E69E7CC0];
    sub_1AFD040A0(&qword_1ED72F9D0, MEMORY[0x1E69E7F60]);
    sub_1AF0D1094(0, &qword_1ED72F9A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1AF6FD510();
    v99 = v118;
    v100 = v121;
    sub_1AFDFE058();
    v101 = v132;
    MEMORY[0x1B2719530](0, v98, v99, v96);
    _Block_release(v96);

    (*(v120 + 8))(v99, v100);
    (*(v117 + 8))(v98, v119);
    (*(v89 + 8))(v134, v59);
  }

  v132 = v75;
  v123 = v63;
  v76 = MEMORY[0x1E6968FB0];
  v77 = MEMORY[0x1E69E6720];
  v78 = v111;
  sub_1AFA9C3FC(v64, v111, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1AF0D1094);
  v79 = v110;
  v127(v110, v134, v59);
  v125(v79, 0, 1, v59);
  v80 = *(v130 + 48);
  v81 = v108;
  sub_1AFA9C3FC(v78, v108, &qword_1ED7315E0, v76, v77, sub_1AF0D1094);
  v82 = v76;
  v83 = v123;
  sub_1AFA9C3FC(v79, v81 + v80, &qword_1ED7315E0, v82, v77, sub_1AF0D1094);
  if (v83(v81, 1, v59) == 1)
  {
    sub_1AF456B8C(v79);
    sub_1AF456B8C(v78);
    if (v83(v81 + v80, 1, v59) == 1)
    {
      sub_1AF456B8C(v81);
      return (*(v135 + 8))(v134, v59);
    }

    goto LABEL_23;
  }

  v84 = v107;
  sub_1AFA9C3FC(v81, v107, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1AF0D1094);
  if (v83(v81 + v80, 1, v59) == 1)
  {
    sub_1AF456B8C(v110);
    sub_1AF456B8C(v111);
    (*(v135 + 8))(v84, v59);
LABEL_23:
    sub_1AFD03CE4(v81);
    v64 = v131;
    v75 = v132;
    goto LABEL_24;
  }

  v102 = v135;
  v103 = v122;
  (*(v135 + 32))(v122, v81 + v80, v59);
  sub_1AFD040A0(&qword_1EB6327A0, MEMORY[0x1E6968FB0]);
  v104 = sub_1AFDFCE58();
  v105 = *(v102 + 8);
  v105(v103, v59);
  sub_1AF456B8C(v110);
  sub_1AF456B8C(v111);
  v105(v84, v59);
  sub_1AF456B8C(v81);
  v64 = v131;
  v75 = v132;
  if ((v104 & 1) == 0)
  {
    goto LABEL_24;
  }

  return (v105)(v134, v59);
}

uint64_t sub_1AFD016F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_1AFD04A54(0, &qword_1EB644298, sub_1AFD0413C, &type metadata for VideoCapture.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - v8;
  v10 = sub_1AFDFC318();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v36 = 1;
  sub_1AFDFC308();
  sub_1AFDFC2B8();
  v29 = v15;
  (*(v11 + 8))(v14, v10);
  sub_1AF441150(a1, a1[3]);
  sub_1AFD0413C();
  sub_1AFDFF3B8();
  if (v2)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    v16 = v28;
    v37 = 0;
    v30 = sub_1AFDFE718() & 1;
    v34 = 1;
    sub_1AF51C5B4();
    sub_1AFDFE768();
    v17 = v35;
    v33 = 2;
    v36 = sub_1AFDFE718() & 1;
    v32 = 3;
    v18 = sub_1AFDFE708();
    v20 = v19;
    v27 = v18;

    v31 = 4;
    v29 = sub_1AFDFE698();
    v22 = v21;
    (*(v6 + 8))(v9, v5);
    v23 = v30;
    v24 = v36;

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);

    *v16 = v23;
    *(v16 + 1) = v17;
    *(v16 + 2) = v24;
    *(v16 + 8) = v27;
    *(v16 + 16) = v20;
    *(v16 + 24) = v29;
    *(v16 + 32) = v22;
  }

  return result;
}

uint64_t sub_1AFD01AA8(void *a1)
{
  sub_1AFD04A54(0, &qword_1EB644248, sub_1AFD03FF8, &type metadata for AudioAnalyzer.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v17 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFD03FF8();
  sub_1AFDFF3B8();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v21 = 0;
  v9 = sub_1AFDFE718();
  v20 = 1;
  v10 = sub_1AFDFE718();
  v19 = 2;
  v11 = sub_1AFDFE718();
  v18 = 3;
  v13 = sub_1AFDFE718();
  (*(v5 + 8))(v8, v4);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  if (v13)
  {
    v14 = 0x1000000;
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 0x10000;
  }

  else
  {
    v15 = 0;
  }

  if (v10)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 0xFFFFFFFE | v9 & 1 | v15 | v14;
}

uint64_t sub_1AFD01CF8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v17 = a2;
  sub_1AFD04A54(0, &qword_1EB644340, sub_1AFD049B0, &type metadata for AudioSpectrum.CodingKeys, MEMORY[0x1E69E6F48]);
  v18 = *(v4 - 8);
  v19 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v16 - v6;
  v8 = sub_1AFDFD488();
  *(v8 + 16) = 2048;
  bzero((v8 + 32), 0x2000uLL);
  v9 = sub_1AFDFD488();
  *(v9 + 16) = 2048;
  bzero((v9 + 32), 0x2000uLL);
  v31 = 1;
  sub_1AF441150(a1, a1[3]);
  sub_1AFD049B0();
  sub_1AFDFF3B8();
  if (v2)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    v23 = MEMORY[0x1E69E7CC0];
    v24 = MEMORY[0x1E69E7CC0];
    v25 = MEMORY[0x1E69E7CC0];
    v26 = 0;
    v27 = v8;
    v28 = v9;
    v29 = 0;
    v30 = v31;
    return sub_1AF5871B8(&v23);
  }

  else
  {
    v10 = v18;
    sub_1AFD04A04(0, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    LOBYTE(v20) = 0;
    sub_1AFD04ABC(&qword_1ED723208);
    sub_1AFDFE768();

    LOBYTE(v20) = 1;
    sub_1AFDFE768();

    LOBYTE(v20) = 2;
    sub_1AFDFE768();

    v32 = 3;
    sub_1AFDFE738();
    (*(v10 + 8))(v7, v19);
    v11 = MEMORY[0x1E69E7CC0];
    *&v20 = MEMORY[0x1E69E7CC0];
    *(&v20 + 1) = MEMORY[0x1E69E7CC0];
    *&v21 = MEMORY[0x1E69E7CC0];
    DWORD2(v21) = 0;
    *v22 = v8;
    *&v22[8] = v9;
    *&v22[16] = 0;
    v12 = v31;
    v22[24] = v31;
    sub_1AF58715C(&v20, &v23);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    v23 = v11;
    v24 = v11;
    v25 = v11;
    v26 = 0;
    v27 = v8;
    v28 = v9;
    v29 = 0;
    v30 = v12;
    result = sub_1AF5871B8(&v23);
    v14 = v21;
    v15 = v17;
    *v17 = v20;
    v15[1] = v14;
    v15[2] = *v22;
    *(v15 + 41) = *&v22[9];
  }

  return result;
}

double sub_1AFD0209C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v41 = a2;
  v3 = sub_1AFDFC128();
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD04A54(0, &qword_1EB644280, sub_1AFD040E8, &type metadata for MovieFileAsset.CodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v43 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v39 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AFD040E8();
  v12 = v44;
  sub_1AFDFF3B8();
  v45 = a1;
  if (v12)
  {
    v44 = v12;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v45);
    v49 = 0;
    v50 = 0xE000000000000000;
    v51 = 0;
    v52 = 0xE000000000000000;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 1;
    v57 = 1;
    sub_1AF586868(&v49);
  }

  else
  {
    v13 = v42;
    v14 = a1[3];
    v15 = a1[4];
    sub_1AF441150(a1, v14);
    if (sub_1AF69504C(2031, v14, v15))
    {
      LOBYTE(v49) = 0;
      sub_1AFD040A0(&qword_1EB633060, MEMORY[0x1E6968FB0]);
      v16 = v6;
      v17 = v8;
      v18 = v11;
      sub_1AFDFE768();
      v19 = sub_1AFDFC028();
      v21 = v20;
      (*(v13 + 8))(v16, v3);

      v22 = 0;
      v23 = v21;
      v24 = v19;
      v25 = v18;
      v26 = 0;
    }

    else
    {
      LOBYTE(v46) = 0;
      sub_1AF5DE134();
      v17 = v8;
      v25 = v11;
      sub_1AFDFE768();
      v24 = v49;
      v23 = v50;
      v19 = v51;
      v21 = v52;
      v22 = v53;
      v26 = v54;
    }

    v42 = v22;
    LOBYTE(v49) = 1;
    v27 = sub_1AFDFE718() & 1;
    LOBYTE(v49) = 2;
    v28 = sub_1AFDFE718();
    v40 = v26;
    v30 = v17;
    v31 = v28 & 1;
    v59 = 3;
    v58 = sub_1AFDFE718();
    v44 = 0;
    (*(v43 + 8))(v25, v30);
    v32 = v58 & 1;
    *&v46 = v24;
    *(&v46 + 1) = v23;
    *&v47 = v19;
    *(&v47 + 1) = v21;
    v33 = v24;
    v34 = v19;
    v35 = v42;
    v36 = v40;
    *v48 = v42;
    *&v48[8] = v40;
    v48[16] = v27;
    v48[17] = v31;
    v48[18] = v58 & 1;
    sub_1AF58680C(&v46, &v49);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v45);
    v49 = v33;
    v50 = v23;
    v51 = v34;
    v52 = v21;
    v53 = v35;
    v54 = v36;
    v55 = v27;
    v56 = v31;
    v57 = v32;
    sub_1AF586868(&v49);
    v37 = v47;
    v38 = v41;
    *v41 = v46;
    v38[1] = v37;
    result = *v48;
    v38[2] = *v48;
    *(v38 + 47) = *&v48[15];
  }

  return result;
}

uint64_t sub_1AFD025E0(void *a1)
{
  sub_1AFD04A54(0, &qword_1EB644260, sub_1AFD0404C, &type metadata for AudioController.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFD0404C();
  sub_1AFDFF3B8();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v18 = 0;
  v9 = sub_1AFDFE718();
  v17 = 1;
  v10 = sub_1AFDFE718();
  v16 = 2;
  v12 = sub_1AFDFE718();
  (*(v5 + 8))(v8, v4);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  if (v12)
  {
    v13 = 0x10000;
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 0xFFFFFFFE | v9 & 1 | v13;
}

void sub_1AFD027F8(uint64_t a1)
{
  v2 = v1;
  v4 = 0;
  v131 = sub_1AFDFCA88();
  v5 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131, v6);
  v130 = v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1AFDFCAC8();
  v8 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v9);
  v128 = v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v111 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v121 = v102 - v16;
  v123 = sub_1AFDFC128();
  v17 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123, v18);
  v110 = v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v115 = v102 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v120 = v102 - v25;
  v26 = *(v1 + 32);
  v170[0] = *(v1 + 16);
  v170[1] = v26;
  v171 = *(v1 + 48);
  v27 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(a1, v170, 0x200000000, &v135);
  if (v135)
  {
    v166 = v138;
    v167 = v139;
    v168 = v140;
    v164 = v136;
    v165 = v137;
    v169 = v141;
    v163 = v135;
    sub_1AFD06988(&v163);
    sub_1AFD03C74(&v135, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  v28 = *(v2 + 72);
  v161[0] = *(v2 + 56);
  v161[1] = v28;
  v162 = *(v2 + 88);
  sub_1AF6B06C0(a1, v161, 0x200000000, v142);
  if (*&v142[0])
  {
    if (v145 <= 0 || (v109 = *(&v143 + 1)) == 0)
    {
      sub_1AFD03C74(v142, &qword_1ED725EA0, &type metadata for QueryResult);
      goto LABEL_58;
    }

    v102[1] = v27;
    v103 = v2;
    v104 = a1;
    v108 = *(&v142[2] + 1);
    v29 = *(&v144 + 1);
    v30 = *(v144 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v119 = *(*(&v144 + 1) + 32);
    v153 = *&v142[0];
    v154 = *(v142 + 8);
    v155 = *(&v142[1] + 8);
    v31 = type metadata accessor for AudioPlayerComponent(0);
    v156[2] = v142[2];
    v156[3] = v143;
    v156[4] = v144;
    v156[5] = v145;
    v156[0] = v142[0];
    v156[1] = v142[1];
    sub_1AF5DD298(v156, &v146);
    v32 = 0;
    v124 = v31;
    v105 = v31 - 8;
    v132 = &v147 + 8;
    v126 = (v8 + 8);
    v127 = (v5 + 8);
    v122 = (v17 + 48);
    v113 = (v17 + 16);
    v114 = (v17 + 32);
    v112 = (v17 + 8);
    v107 = v29;
    v106 = v30;
    while (1)
    {
      v117 = v32;
      v118 = v4;
      v33 = (v108 + 48 * v32);
      v34 = *v33;
      v134 = v33[1];
      v35 = *(v33 + 2);
      v36 = *(v33 + 3);
      v37 = *(v33 + 4);
      v38 = *(v33 + 5);
      if (v30)
      {
        v39 = *(v38 + 376);

        os_unfair_lock_lock(v39);
        os_unfair_lock_lock(*(v38 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v119);
      v40 = *(v29 + 4);
      v159[0] = *(v29 + 3);
      v159[1] = v40;
      v160 = v29[10];
      v41 = v29[4];
      v42 = *(*(*(*(v38 + 40) + 16) + 32) + 16) + 1;
      v43 = v38;

      v29[6] = ecs_stack_allocator_allocate(v41, 48 * v42, 8);
      v29[7] = v42;
      v29[9] = 0;
      v29[10] = 0;
      v29[8] = 0;

      v44 = sub_1AF64B110(v124, &off_1F256EF88, v35, v36, v37, v29);
      v116 = v43;
      v45 = sub_1AF64B110(&type metadata for AudioController, &off_1F256EED0, v35, v36, v37, v29);
      if (!v35)
      {
        break;
      }

      if (v37)
      {
        v47 = *(*v105 + 72);
        v48 = (v45 + 1);
        v125 = v47;
        while (1)
        {
          v49 = *v44;
          if (*(v48 - 1) != 1)
          {
            if (v49)
            {
              v50 = *&v49[OBJC_IVAR____TtC3VFX11AudioPlayer_player];
              sub_1AF0D4478(0, &qword_1ED72F8A0);
              v51 = v50;
              v134 = sub_1AFDFDB08();
              v52 = swift_allocObject();
              *(v52 + 16) = v51;
              *(&v148 + 1) = sub_1AFCF49A4;
              *&v149 = v52;
              v146 = MEMORY[0x1E69E9820];
              *&v147 = 1107296256;
              *(&v147 + 1) = sub_1AFCDA044;
              *&v148 = &unk_1F256F2A8;
              v53 = _Block_copy(&v146);
              v133 = v51;
              v54 = v128;
              sub_1AFDFCAA8();
              *&v157[0] = MEMORY[0x1E69E7CC0];
              sub_1AFD040A0(&qword_1ED72F9D0, MEMORY[0x1E69E7F60]);
              sub_1AF0D1094(0, &qword_1ED72F9A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
              sub_1AF6FD510();
              v56 = v130;
              v55 = v131;
              sub_1AFDFE058();
              v57 = v134;
              MEMORY[0x1B2719530](0, v54, v56, v53);
              _Block_release(v53);

              (*v127)(v56, v55);
              v58 = v54;
              v47 = v125;
              (*v126)(v58, v129);

              v49 = *v44;
            }

            *v44 = 0;

            goto LABEL_16;
          }

          if (v49)
          {
            goto LABEL_19;
          }

          v59 = v121;
          sub_1AFA9C3FC(v44 + *(v124 + 20), v121, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1AF0D1094);
          v60 = v123;
          if ((*v122)(v59, 1, v123) != 1)
          {
            break;
          }

          sub_1AF456B8C(v59);
          v49 = *v44;
          if (*v44)
          {
            goto LABEL_19;
          }

LABEL_16:
          v48 += 3;
          v44 = &v47[v44];
          if (!--v37)
          {
            goto LABEL_34;
          }
        }

        v61 = v120;
        (*v114)(v120, v59, v60);
        v62 = v115;
        (*v113)(v115, v61, v60);
        v63 = objc_allocWithZone(type metadata accessor for AudioPlayer(0));
        v64 = sub_1AFCFB564(v62);
        v65 = *v44;
        *v44 = v64;

        v66 = *v44;
        if (*v44)
        {
          v134 = OBJC_IVAR____TtC3VFX11AudioPlayer_player;
          v67 = *&v66[OBJC_IVAR____TtC3VFX11AudioPlayer_player];
          v68 = swift_allocObject();
          swift_unknownObjectWeakInit();
          *(&v148 + 1) = sub_1AFD04CF0;
          *&v149 = v68;
          v146 = MEMORY[0x1E69E9820];
          *&v147 = 1107296256;
          *(&v147 + 1) = sub_1AFCFBCE4;
          *&v148 = &unk_1F256F2D0;
          v69 = _Block_copy(&v146);
          v70 = v66;
          v71 = v67;

          [v71 installTapOnBus:0 bufferSize:4192 format:0 block:v69];
          _Block_release(v69);

          if (v70[OBJC_IVAR____TtC3VFX11AudioPlayer_isValid] == 1)
          {
            [*&v66[v134] play];
          }

          v47 = v125;
        }

        (*v112)(v120, v60);
        v49 = *v44;
        if (!*v44)
        {
          goto LABEL_16;
        }

LABEL_19:
        v49[OBJC_IVAR____TtC3VFX11AudioPlayer_loops] = v48[1];
        if (*v48 == 1)
        {
          v46 = 0.0;
        }

        else
        {
          LODWORD(v46) = 1.0;
        }

        [*&v49[OBJC_IVAR____TtC3VFX11AudioPlayer_mixer] setOutputVolume_];
        goto LABEL_16;
      }

LABEL_34:
      v29 = v107;
      v4 = v118;
      sub_1AF630994(v107, &v153, v159);
      v72 = v116;
      sub_1AF62D29C(v116);
      ecs_stack_allocator_pop_snapshot(v119);
      v30 = v106;
      if (v106)
      {
        os_unfair_lock_unlock(*(v72 + 43));
        os_unfair_lock_unlock(*(v72 + 47));
      }

      v32 = v117 + 1;
      if (v117 + 1 == v109)
      {
        sub_1AFD03C74(v142, &qword_1ED725EA0, &type metadata for QueryResult);
        sub_1AFD03C74(v142, &qword_1ED725EA0, &type metadata for QueryResult);
        v2 = v103;
        a1 = v104;
        goto LABEL_58;
      }
    }

    if (v34 == v134)
    {
      goto LABEL_34;
    }

    v73 = *(*v105 + 72);
    v74 = v134 - v34;
    v75 = (v45 + 3 * v34 + 1);
    v76 = (v44 + v73 * v34);
    while (1)
    {
      v77 = *v76;
      if (*(v75 - 1) != 1)
      {
        if (v77)
        {
          v78 = *&v77[OBJC_IVAR____TtC3VFX11AudioPlayer_player];
          sub_1AF0D4478(0, &qword_1ED72F8A0);
          v79 = v78;
          v134 = sub_1AFDFDB08();
          v80 = swift_allocObject();
          *(v80 + 16) = v79;
          *(&v148 + 1) = sub_1AFCF41DC;
          *&v149 = v80;
          v146 = MEMORY[0x1E69E9820];
          *&v147 = 1107296256;
          *(&v147 + 1) = sub_1AFCDA044;
          *&v148 = &unk_1F256F208;
          v125 = _Block_copy(&v146);
          v133 = v79;
          v81 = v128;
          sub_1AFDFCAA8();
          *&v157[0] = MEMORY[0x1E69E7CC0];
          sub_1AFD040A0(&qword_1ED72F9D0, MEMORY[0x1E69E7F60]);
          sub_1AF0D1094(0, &qword_1ED72F9A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
          sub_1AF6FD510();
          v82 = v130;
          v83 = v73;
          v84 = v131;
          sub_1AFDFE058();
          v85 = v125;
          v86 = v134;
          MEMORY[0x1B2719530](0, v81, v82, v125);
          _Block_release(v85);

          v87 = v84;
          v73 = v83;
          (*v127)(v82, v87);
          (*v126)(v81, v129);

          v77 = *v76;
        }

        *v76 = 0;

        goto LABEL_39;
      }

      if (v77)
      {
        goto LABEL_42;
      }

      v88 = v111;
      sub_1AFA9C3FC(v76 + *(v124 + 20), v111, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1AF0D1094);
      v89 = v123;
      if ((*v122)(v88, 1, v123) != 1)
      {
        break;
      }

      sub_1AF456B8C(v88);
      v77 = *v76;
      if (*v76)
      {
        goto LABEL_42;
      }

LABEL_39:
      v75 += 3;
      v76 = (v76 + v73);
      if (!--v74)
      {
        goto LABEL_34;
      }
    }

    v90 = v110;
    (*v114)(v110, v88, v89);
    v91 = v115;
    (*v113)(v115, v90, v89);
    v92 = objc_allocWithZone(type metadata accessor for AudioPlayer(0));
    v93 = sub_1AFCFB564(v91);
    v94 = *v76;
    *v76 = v93;

    v95 = *v76;
    if (*v76)
    {
      v134 = OBJC_IVAR____TtC3VFX11AudioPlayer_player;
      v96 = *&v95[OBJC_IVAR____TtC3VFX11AudioPlayer_player];
      v97 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *(&v148 + 1) = sub_1AFD03FF0;
      *&v149 = v97;
      v146 = MEMORY[0x1E69E9820];
      *&v147 = 1107296256;
      *(&v147 + 1) = sub_1AFCFBCE4;
      *&v148 = &unk_1F256F258;
      v98 = _Block_copy(&v146);
      v99 = v95;
      v100 = v96;

      [v100 installTapOnBus:0 bufferSize:4192 format:0 block:v98];
      _Block_release(v98);

      if (v99[OBJC_IVAR____TtC3VFX11AudioPlayer_isValid] == 1)
      {
        [*&v95[v134] play];
      }
    }

    (*v112)(v110, v123);
    v77 = *v76;
    if (!*v76)
    {
      goto LABEL_39;
    }

LABEL_42:
    v77[OBJC_IVAR____TtC3VFX11AudioPlayer_loops] = v75[1];
    if (*v75 == 1)
    {
      v46 = 0.0;
    }

    else
    {
      LODWORD(v46) = 1.0;
    }

    [*&v77[OBJC_IVAR____TtC3VFX11AudioPlayer_mixer] setOutputVolume_];
    goto LABEL_39;
  }

LABEL_58:
  v101 = *(v2 + 112);
  v157[0] = *(v2 + 96);
  v157[1] = v101;
  v158 = *(v2 + 128);
  sub_1AF6B06C0(a1, v157, 0x200000000, &v146);
  if (v146)
  {
    *(&v156[2] + 8) = v149;
    *(&v156[3] + 8) = v150;
    *(&v156[4] + 8) = v151;
    *(v156 + 8) = v147;
    *(&v156[1] + 8) = v148;
    *(&v156[5] + 1) = v152;
    *&v156[0] = v146;
    sub_1AFD069B4(v156);
    sub_1AFD03C74(&v146, &qword_1ED725EA0, &type metadata for QueryResult);
  }
}

void sub_1AFD03840(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  image[1] = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v5 = CMSampleBufferGetImageBuffer(a2);
    if (v5)
    {
      v6 = v5;
      v7 = *(v2 + OBJC_IVAR____TtC3VFX19VideoCaptureSession_metalTextureCache);
      if (v7)
      {
        v8 = v7;
        Width = CVPixelBufferGetWidth(v6);
        Height = CVPixelBufferGetHeight(v6);
        image[0] = 0;
        if (CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x1E695E480], v8, v6, 0, MTLPixelFormatBGRA8Unorm_sRGB, Width, Height, 0, image))
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v11 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v19 = v11;
            swift_once();
            v11 = v19;
          }

          v20.value = 0;
          sub_1AF0D4F18(v11, &v20.value, 0xD00000000000002DLL, 0x80000001AFF4F080);
        }

        else
        {
          v12 = CVMetalTextureGetTexture(image[0]);
          v13 = *(v2 + OBJC_IVAR____TtC3VFX19VideoCaptureSession_sampleBuffer);
          *(v2 + OBJC_IVAR____TtC3VFX19VideoCaptureSession_sampleBuffer) = a2;
          v14 = a2;

          *(v2 + OBJC_IVAR____TtC3VFX19VideoCaptureSession_outputTexture) = v12;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          CMSampleBufferGetPresentationTimeStamp(&v20, v14);
          value = v20.value;
          epoch = v20.epoch;
          v17 = *&v20.timescale;

          swift_unknownObjectRelease();
          v18 = (v2 + OBJC_IVAR____TtC3VFX19VideoCaptureSession_frameTime);
          *v18 = value;
          v18[1] = v17;
          v18[2] = epoch;
        }
      }

      else
      {
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

unint64_t sub_1AFD03AAC()
{
  result = qword_1EB644200;
  if (!qword_1EB644200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB644200);
  }

  return result;
}

void sub_1AFD03B24()
{
  if (!qword_1EB644210)
  {
    sub_1AF0D4478(255, &qword_1EB6441F8);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB644210);
    }
  }
}

void sub_1AFD03B8C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1AF0D8160(255, a3);
    v4 = sub_1AFDFEA18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AFD03BE4(uint64_t a1, unint64_t *a2)
{
  sub_1AF0D8160(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AFD03C40(uint64_t a1)
{

  return a1;
}

uint64_t sub_1AFD03C74(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AFD04A04(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AFD03CE4(uint64_t a1)
{
  sub_1AF90C24C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AFD03D40()
{
  v1 = *(sub_1AFDFC128() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = *(v0 + v4 + 12);
  v9 = *(v0 + ((v4 + 27) & 0xFFFFFFFFFFFFFFF8));

  return sub_1AFCFA694(v0 + v2, v5, v6, v7, v8, v9);
}

uint64_t sub_1AFD03DF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AFD03E08@<X0>(_BYTE *a1@<X8>)
{
  sub_1AFDFC128();
  result = sub_1AFC419BC(*(v1 + 24), sub_1AFD03FCC);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1AFD03EF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AF7401F8;

  return sub_1AFCFF3A4(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1AFD03FF8()
{
  result = qword_1EB644250;
  if (!qword_1EB644250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB644250);
  }

  return result;
}

unint64_t sub_1AFD0404C()
{
  result = qword_1EB644268;
  if (!qword_1EB644268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB644268);
  }

  return result;
}

uint64_t sub_1AFD040A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1AFD040E8()
{
  result = qword_1EB644288;
  if (!qword_1EB644288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB644288);
  }

  return result;
}

unint64_t sub_1AFD0413C()
{
  result = qword_1EB6442A0;
  if (!qword_1EB6442A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6442A0);
  }

  return result;
}

unint64_t sub_1AFD04190()
{
  result = qword_1EB6442C0;
  if (!qword_1EB6442C0)
  {
    sub_1AFD04A04(255, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6442C0);
  }

  return result;
}

uint64_t destroy for AudioSpectrum()
{
}

uint64_t initializeWithCopy for AudioSpectrum(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for AudioSpectrum(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  v4 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v4;
  return a1;
}

uint64_t assignWithTake for AudioSpectrum(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

unint64_t sub_1AFD044BC()
{
  result = qword_1EB6442C8;
  if (!qword_1EB6442C8)
  {
    sub_1AFD04A04(255, &qword_1EB6442D0, &type metadata for VideoCapture.OrientationMode, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6442C8);
  }

  return result;
}

unint64_t sub_1AFD0453C()
{
  result = qword_1EB6442D8;
  if (!qword_1EB6442D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6442D8);
  }

  return result;
}

unint64_t sub_1AFD04594()
{
  result = qword_1EB6442E0;
  if (!qword_1EB6442E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6442E0);
  }

  return result;
}

unint64_t sub_1AFD045EC()
{
  result = qword_1EB6442E8;
  if (!qword_1EB6442E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6442E8);
  }

  return result;
}

unint64_t sub_1AFD04644()
{
  result = qword_1EB6442F0;
  if (!qword_1EB6442F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6442F0);
  }

  return result;
}

unint64_t sub_1AFD0469C()
{
  result = qword_1EB6442F8;
  if (!qword_1EB6442F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6442F8);
  }

  return result;
}

unint64_t sub_1AFD046F4()
{
  result = qword_1EB644300;
  if (!qword_1EB644300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB644300);
  }

  return result;
}

unint64_t sub_1AFD0474C()
{
  result = qword_1EB644308;
  if (!qword_1EB644308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB644308);
  }

  return result;
}

unint64_t sub_1AFD047A4()
{
  result = qword_1EB644310;
  if (!qword_1EB644310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB644310);
  }

  return result;
}

unint64_t sub_1AFD047FC()
{
  result = qword_1EB644318;
  if (!qword_1EB644318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB644318);
  }

  return result;
}

unint64_t sub_1AFD04854()
{
  result = qword_1EB644320;
  if (!qword_1EB644320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB644320);
  }

  return result;
}

unint64_t sub_1AFD048AC()
{
  result = qword_1EB644328;
  if (!qword_1EB644328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB644328);
  }

  return result;
}

unint64_t sub_1AFD04904()
{
  result = qword_1EB644330;
  if (!qword_1EB644330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB644330);
  }

  return result;
}

unint64_t sub_1AFD0495C()
{
  result = qword_1EB644338;
  if (!qword_1EB644338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB644338);
  }

  return result;
}

unint64_t sub_1AFD049B0()
{
  result = qword_1EB644348;
  if (!qword_1EB644348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB644348);
  }

  return result;
}

void sub_1AFD04A04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AFD04A54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AFD04ABC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AFD04A04(255, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFD04B64()
{
  result = qword_1EB644360;
  if (!qword_1EB644360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB644360);
  }

  return result;
}

unint64_t sub_1AFD04BBC()
{
  result = qword_1EB644368;
  if (!qword_1EB644368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB644368);
  }

  return result;
}

unint64_t sub_1AFD04C14()
{
  result = qword_1EB644370;
  if (!qword_1EB644370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB644370);
  }

  return result;
}

uint64_t sub_1AFD04D04(unint64_t a1, uint64_t a2)
{
  ecs_stack_allocator_push_snapshot(*(a2 + 32));
  v4 = ecs_stack_allocator_allocate(*(a2 + 32), 64, 8);
  *v4 = &type metadata for Position;
  v4[1] = &off_1F252EE70;
  v4[2] = &type metadata for Orientation;
  v4[3] = &off_1F252C8A8;
  v4[4] = &type metadata for Scale3;
  v4[5] = &off_1F252F998;
  v4[6] = &type metadata for Name;
  v4[7] = &off_1F2535068;
  v5 = sub_1AF63A844(v4, 4, MEMORY[0x1E69E7CC0], 1, a1 | ((HIDWORD(a1) & 1) << 32), a2);
  ecs_stack_allocator_pop_snapshot(*(a2 + 32));
  return v5;
}

uint64_t sub_1AFD04DDC(unint64_t a1, uint64_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, __n128 a6, float32x4_t a7)
{
  ecs_stack_allocator_push_snapshot(*(a2 + 32));
  v9 = ecs_stack_allocator_allocate(*(a2 + 32), 96, 8);
  *v9 = &type metadata for Position;
  v9[1] = &off_1F252EE70;
  v9[2] = &type metadata for Orientation;
  v9[3] = &off_1F252C8A8;
  v9[4] = &type metadata for Scale3;
  v9[5] = &off_1F252F998;
  v9[6] = &type metadata for WorldTransform;
  v9[7] = &off_1F2529FC0;
  v9[8] = &type metadata for ParticlePlaneCollider;
  v9[9] = &off_1F25530C8;
  v9[10] = &type metadata for NotInHierarchy;
  v9[11] = &off_1F252A400;
  v10 = sub_1AF63A870(v9, 6, MEMORY[0x1E69E7CC0], 1, a1 | ((HIDWORD(a1) & 1) << 32), a2, a3, a4, a5, a6, a7);
  ecs_stack_allocator_pop_snapshot(*(a2 + 32));
  return v10;
}

uint64_t sub_1AFD04EFC(unint64_t a1, uint64_t a2)
{
  ecs_stack_allocator_push_snapshot(*(a2 + 32));
  v4 = ecs_stack_allocator_allocate(*(a2 + 32), 96, 8);
  *v4 = &type metadata for Name;
  v4[1] = &off_1F2535068;
  v4[2] = &type metadata for PointOfView;
  v4[3] = &off_1F2511E50;
  v4[4] = &type metadata for WorldTransform;
  v4[5] = &off_1F2529FC0;
  v4[6] = &type metadata for ProjectionMatrix;
  v4[7] = &off_1F2511DA0;
  v4[8] = &type metadata for LastFrameWorldTransform;
  v4[9] = &off_1F2529EB0;
  v4[10] = &type metadata for Beamed;
  v4[11] = &off_1F2529FA0;
  v5 = sub_1AF63B068(v4, 6, MEMORY[0x1E69E7CC0], 1, a1 | ((HIDWORD(a1) & 1) << 32), a2);
  ecs_stack_allocator_pop_snapshot(*(a2 + 32));
  return v5;
}

uint64_t sub_1AFD04FFC(unint64_t a1, uint64_t a2)
{
  ecs_stack_allocator_push_snapshot(*(a2 + 32));
  v4 = ecs_stack_allocator_allocate(*(a2 + 32), 48, 8);
  *v4 = &type metadata for VFXTag;
  v4[1] = &off_1F253D538;
  v4[2] = type metadata accessor for VFXObjectTag();
  v4[3] = &off_1F253D658;
  v4[4] = &type metadata for WorldTransform;
  v4[5] = &off_1F2529FC0;
  v5 = sub_1AF63C0AC(v4, 3, MEMORY[0x1E69E7CC0], 1, a1 | ((HIDWORD(a1) & 1) << 32), a2);
  ecs_stack_allocator_pop_snapshot(*(a2 + 32));
  return v5;
}

uint64_t sub_1AFD05118(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  v4 = sub_1AF64B03C(v3);
  v5 = 0;
  if ((v6 & 1) == 0)
  {
    v7 = *(v3 - 8);
    if (*(v7 + 64))
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 0;
    }

    return v4 + v8 * a1;
  }

  return v5;
}

uint64_t sub_1AFD051BC(unint64_t a1, uint64_t a2)
{
  ecs_stack_allocator_push_snapshot(*(a2 + 32));
  v4 = ecs_stack_allocator_allocate(*(a2 + 32), 112, 8);
  *v4 = &type metadata for Position;
  v4[1] = &off_1F252EE70;
  v4[2] = &type metadata for Orientation;
  v4[3] = &off_1F252C8A8;
  v4[4] = &type metadata for Scale3;
  v4[5] = &off_1F252F998;
  v4[6] = &type metadata for Name;
  v4[7] = &off_1F2535068;
  v4[8] = &type metadata for PointOfView;
  v4[9] = &off_1F2511E50;
  v4[10] = &type metadata for WorldTransform;
  v4[11] = &off_1F2529FC0;
  v4[12] = &type metadata for ProjectionMatrix;
  v4[13] = &off_1F2511DA0;
  v5 = sub_1AF63E1F8(v4, 7, MEMORY[0x1E69E7CC0], 1, a1 | ((HIDWORD(a1) & 1) << 32), a2);
  ecs_stack_allocator_pop_snapshot(*(a2 + 32));
  return v5;
}

double sub_1AFD052D0(uint64_t a1)
{
  v1 = *(a1 + 48);

  v2 = sub_1AF64B03C(&type metadata for WorldTransform);
  v4 = v3;

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = (v2 + (v1 << 6));
  }

  sub_1AF64B03C(&type metadata for Beamed);

  *v5 = xmmword_1AFE20150;
  v5[1] = xmmword_1AFE20160;
  result = 0.0;
  v5[2] = xmmword_1AFE20180;
  v5[3] = xmmword_1AFE201A0;
  return result;
}

__n128 sub_1AFD053A0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 48);

  v6 = sub_1AF64B03C(&type metadata for DebugInfoWireframePrimitive);
  v8 = v7;

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6 + 112 * v5;
  }

  v10 = sub_1AF64B03C(&type metadata for DebugInfoColor);

  v11 = *(a2 + 80);
  *(v9 + 64) = *(a2 + 64);
  *(v9 + 80) = v11;
  *(v9 + 96) = *(a2 + 96);
  v12 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v12;
  result = *(a2 + 48);
  *(v9 + 32) = *(a2 + 32);
  *(v9 + 48) = result;
  *(v10 + 4 * v5) = a3;
  return result;
}

__n128 sub_1AFD05484(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = *(a1 + 48);

  v8 = sub_1AF64B03C(&type metadata for DebugInfoWireframePrimitive);
  v10 = v9;

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8 + 112 * v7;
  }

  v12 = sub_1AF64B03C(&type metadata for WorldTransform);
  v14 = v13;

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = (v12 + (v7 << 6));
  }

  sub_1AF64B03C(&type metadata for Beamed);

  v16 = *(a2 + 80);
  *(v11 + 64) = *(a2 + 64);
  *(v11 + 80) = v16;
  *(v11 + 96) = *(a2 + 96);
  v17 = *(a2 + 16);
  *v11 = *a2;
  *(v11 + 16) = v17;
  v18 = *(a2 + 48);
  *(v11 + 32) = *(a2 + 32);
  *(v11 + 48) = v18;
  *v15 = a3;
  v15[1] = a4;
  result = a6;
  v15[2] = a5;
  v15[3] = a6;
  return result;
}

__n128 sub_1AFD055BC(uint64_t a1, __n128 a2, __n128 a3, float a4)
{
  v5 = *(a1 + 48);

  v6 = sub_1AF64B03C(&type metadata for Position);
  v8 = v7;

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = (v6 + 16 * v5);
  }

  v10 = sub_1AF64B03C(&type metadata for Orientation);
  v12 = v11;

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = (v10 + 16 * v5);
  }

  v14 = sub_1AF64B03C(&type metadata for Scale1);
  v16 = v15;

  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = (v14 + 4 * v5);
  }

  sub_1AF64B03C(&type metadata for WorldTransform);

  v18 = a2;
  v18.n128_u32[3] = 1.0;
  *v9 = v18;
  result = a3;
  *v13 = a3;
  *v17 = a4;
  return result;
}

double sub_1AFD05724(uint64_t a1)
{
  v1 = *(a1 + 48);

  v2 = sub_1AF64B03C(&type metadata for Position);
  v4 = v3;

  v5 = 16 * v1;
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = (v2 + 16 * v1);
  }

  v7 = sub_1AF64B03C(&type metadata for Orientation);
  v9 = v8;

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = (v7 + v5);
  }

  v11 = sub_1AF64B03C(&type metadata for Scale3);
  v13 = v12;

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = (v11 + v5);
  }

  v15 = sub_1AF64B03C(&type metadata for Name);

  v16 = (v15 + v5);

  result = 0.0;
  *v6 = xmmword_1AFE201A0;
  __asm { FMOV            V1.4S, #1.0 }

  *v14 = _Q1;
  *v10 = xmmword_1AFE201A0;
  *v16 = 0x746F6F72656874;
  v16[1] = 0xE700000000000000;
  return result;
}

__n128 sub_1AFD05898(uint64_t a1, uint64_t a2, int a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v9 = *(a1 + 48);

  v10 = sub_1AF64B03C(&type metadata for DebugInfoWireframePrimitive);
  v12 = v11;

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10 + 112 * v9;
  }

  v14 = sub_1AF64B03C(&type metadata for DebugInfoColor);
  v16 = v15;

  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = (v14 + 4 * v9);
  }

  v18 = sub_1AF64B03C(&type metadata for WorldTransform);
  v20 = v19;

  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = (v18 + (v9 << 6));
  }

  sub_1AF64B03C(&type metadata for Beamed);

  v22 = *(a2 + 80);
  *(v13 + 64) = *(a2 + 64);
  *(v13 + 80) = v22;
  *(v13 + 96) = *(a2 + 96);
  v23 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v23;
  v24 = *(a2 + 48);
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = v24;
  *v17 = a3;
  *v21 = a4;
  v21[1] = a5;
  result = a7;
  v21[2] = a6;
  v21[3] = a7;
  return result;
}

double sub_1AFD05A20(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, __n128 a5, float32x4_t a6)
{
  v6 = *(a1 + 48);

  v7 = sub_1AF64B03C(&type metadata for Position);
  v9 = v8;

  v10 = 16 * v6;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (v7 + 16 * v6);
  }

  v12 = sub_1AF64B03C(&type metadata for Orientation);
  v14 = v13;

  v15 = sub_1AF64B03C(&type metadata for Scale3);
  v17 = v16;

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = (v15 + v10);
  }

  sub_1AF64B03C(&type metadata for WorldTransform);

  v19 = sub_1AF64B03C(&type metadata for ParticlePlaneCollider);
  v21 = v20;

  sub_1AF64B03C(&type metadata for NotInHierarchy);

  v22 = a5;
  v22.n128_u32[3] = 1.0;
  v23 = vmulq_f32(a2, a2);
  v24 = vmulq_f32(a3, a3);
  v25 = vmulq_f32(a4, a4);
  *&v26 = vmul_f32(*a6.f32, vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v23, v23, 8uLL), *&vextq_s8(v24, v24, 8uLL)), vadd_f32(vzip1_s32(*v23.i8, *v24.f32), vzip2_s32(*v23.i8, *v24.f32)))));
  *(&v26 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(sqrtf(*&v25.i32[2] + vaddv_f32(*v25.i8)), a6, 2));
  *v11 = v22;
  *v18 = v26;
  v27 = vzip2q_s32(v23, v25);
  v28 = vzip1q_s32(vzip1q_s32(v23, v25), v24);
  v29 = vtrn2q_s32(v23, v24);
  v29.i32[2] = v25.i32[1];
  v30 = vaddq_f32(vzip1q_s32(v27, vdupq_laneq_s32(v24, 2)), vaddq_f32(v28, v29));
  v24.i64[0] = 0x80000000800000;
  v24.i64[1] = 0x80000000800000;
  v31 = vcgeq_f32(v24, v30);
  v30.i32[3] = 0;
  v32 = vrsqrteq_f32(v30);
  v33 = vmulq_f32(v32, vrsqrtsq_f32(v30, vmulq_f32(v32, v32)));
  v34 = v31;
  v34.i32[3] = 0;
  v35 = vbslq_s8(vcltzq_s32(v34), v30, vmulq_f32(v33, vrsqrtsq_f32(v30, vmulq_f32(v33, v33))));
  v36 = vmulq_n_f32(a2, v35.f32[0]);
  v37 = vmulq_lane_f32(a3, *v35.f32, 1);
  v38 = vmulq_laneq_f32(a4, v35, 2);
  v39 = vuzp1q_s32(v38, v38);
  v40 = vuzp1q_s32(v37, v37);
  v41 = v36;
  if (v31.i32[0])
  {
    v42 = vmlaq_f32(vmulq_f32(vextq_s8(v39, v38, 0xCuLL), vnegq_f32(v37)), v38, vextq_s8(v40, v37, 0xCuLL));
    v41 = vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL);
  }

  v43 = vuzp1q_s32(v36, v36);
  v44 = v37;
  if (v31.i32[1])
  {
    v45 = vmlaq_f32(vmulq_f32(vextq_s8(v43, v36, 0xCuLL), vnegq_f32(v38)), v36, vextq_s8(v39, v38, 0xCuLL));
    v44 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
  }

  if (v31.i32[2])
  {
    v46 = vmlaq_f32(vmulq_f32(vextq_s8(v40, v37, 0xCuLL), vnegq_f32(v36)), v37, vextq_s8(v43, v36, 0xCuLL));
    v38 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
  }

  v47 = (*v41.i32 + *&v44.i32[1]) + v38.f32[2];
  if (v47 > 0.0)
  {
    v48 = sqrtf(v47 + 1.0);
    *v49.f32 = vsub_f32(*&vzip2q_s32(v44, vuzp1q_s32(v44, v38)), *&vtrn2q_s32(v38, vzip2q_s32(v38, v41)));
    v49.f32[2] = *&v41.i32[1] - *v44.i32;
    v49.f32[3] = v48 * v48;
    v50 = 0.5 / v48;
LABEL_15:
    v51 = vmulq_n_f32(v49, v50);
    goto LABEL_24;
  }

  if (*v41.i32 < *&v44.i32[1] || *v41.i32 < v38.f32[2])
  {
    if (*&v44.i32[1] <= v38.f32[2])
    {
      v62 = vzip2q_s32(v41, v44).u64[0];
      v63 = __PAIR64__(v41.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v38.f32[2] + 1.0) - *v41.i32) - *&v44.i32[1])));
      v64 = vdup_lane_s32(*v44.i8, 0);
      v65 = vsub_f32(*v41.i8, v64);
      v64.i32[0] = v63.i32[0];
      v64.i32[0] = vmul_f32(v63, v64).u32[0];
      v64.i32[1] = v65.i32[1];
      *v49.f32 = vadd_f32(v62, *v38.f32);
      *&v49.u32[2] = v64;
      v50 = 0.5 / v63.f32[0];
      goto LABEL_15;
    }

    v54 = sqrtf(((*&v44.i32[1] + 1.0) - *v41.i32) - v38.f32[2]);
    v58.f32[0] = *&v41.i32[1] + *v44.i32;
    v53 = vzip2q_s32(v41, v44).u64[0];
    v58.f32[1] = v54 * v54;
    *&v58.u32[2] = vext_s8(vadd_f32(*v38.f32, v53), vsub_f32(*v38.f32, v53), 4uLL);
  }

  else
  {
    v54 = sqrtf(((*v41.i32 + 1.0) - *&v44.i32[1]) - v38.f32[2]);
    v58.f32[0] = v54 * v54;
    v55 = *&v41.i32[1] + *v44.i32;
    v56 = vzip2q_s32(v41, v44).u64[0];
    LODWORD(v57) = vadd_f32(v56, *v38.f32).u32[0];
    HIDWORD(v57) = vsub_f32(v56, *&v38).i32[1];
    v58.f32[1] = v55;
    v58.i64[1] = v57;
  }

  v51 = vmulq_n_f32(v58, 0.5 / v54);
LABEL_24:
  v59 = v19 + 28 * v6;
  if (v21)
  {
    v59 = 0;
  }

  v60 = (v12 + v10);
  if (v14)
  {
    v60 = 0;
  }

  *v60 = v51;
  *v59 = 0;
  *&result = 1065353216;
  *(v59 + 12) = 1065353216;
  return result;
}

uint64_t sub_1AFD05E78()
{

  sub_1AF64B03C(&type metadata for Name);

  sub_1AF64B03C(&type metadata for PointOfView);

  sub_1AF64B03C(&type metadata for WorldTransform);

  sub_1AF64B03C(&type metadata for ProjectionMatrix);

  sub_1AF64B03C(&type metadata for LastFrameWorldTransform);

  sub_1AF64B03C(&type metadata for Beamed);
}

double sub_1AFD05FA8(uint64_t a1)
{
  v1 = *(a1 + 48);

  v2 = sub_1AF64B03C(&type metadata for Position);
  v4 = v3;

  v5 = 16 * v1;
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = (v2 + 16 * v1);
  }

  v7 = sub_1AF64B03C(&type metadata for Orientation);
  v9 = v8;

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = (v7 + v5);
  }

  v11 = sub_1AF64B03C(&type metadata for Scale3);
  v13 = v12;

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = (v11 + v5);
  }

  v15 = sub_1AF64B03C(&type metadata for Name);
  v17 = v16;

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = (v15 + v5);
  }

  sub_1AF64B03C(&type metadata for PointOfView);

  sub_1AF64B03C(&type metadata for WorldTransform);

  sub_1AF64B03C(&type metadata for ProjectionMatrix);

  *v18 = 0x6172656D6143;
  v18[1] = 0xE600000000000000;
  result = 0.0;
  *v6 = xmmword_1AFE201A0;
  __asm { FMOV            V1.4S, #1.0 }

  *v14 = _Q1;
  *v10 = xmmword_1AFE201A0;
  return result;
}

uint64_t sub_1AFD061A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);

  v4 = sub_1AF64B03C(&type metadata for TextureGPURuntime);
  v6 = v5;

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v4 + 16 * v3);
  }

  sub_1AF64B03C(&type metadata for TextureRequireGPURepresentation);

  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  *v7 = a2;
  return result;
}

uint64_t sub_1AFD0626C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 48);

  v10 = sub_1AF64B03C(&type metadata for MeshModel);
  v12 = v11;

  v13 = 16 * v9;
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = (v10 + v13);
  }

  v15 = sub_1AF64B03C(&type metadata for Name);
  v17 = v16;

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = (v15 + v13);
  }

  *v14 = a2;

  v14[1] = a3;

  *v18 = a4;
  v18[1] = a5;
  return result;
}

uint64_t sub_1AFD06394(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);

  v4 = sub_1AF64B03C(&type metadata for Name);
  v6 = v5;

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v4 + 16 * v3);
  }

  sub_1AF64B03C(&type metadata for WorldTransform);

  v8 = [a2 name];
  v9 = sub_1AFDFCEF8();
  v11 = v10;

  *v7 = v9;
  v7[1] = v11;
  return result;
}

uint64_t sub_1AFD06478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 48);

  v6 = sub_1AF64B03C(&type metadata for SkeletalAnimationPlayer);

  v7 = (v6 + 16 * v5);
  *v7 = a2;

  v7[1] = a3;
  return result;
}