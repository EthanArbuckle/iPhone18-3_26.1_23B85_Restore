unint64_t sub_26BA50B18(int64_t a1, uint64_t a2)
{
  v40 = sub_26BA9AD5C();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_26BA9BC6C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_26BA53FB8(&qword_280435C88, MEMORY[0x277CC95F0]);
      v23 = sub_26BA9B64C();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_26BA50E38(void (**a1)(char *, uint64_t), void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CC0);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v39 - v5;
  v7 = sub_26BA9B42C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26BA9B2EC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = a2;
  v15 = *(a2 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_queue);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v16 = v15;
  LOBYTE(v15) = sub_26BA9B30C();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    goto LABEL_21;
  }

  v46[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_22:
    v17 = sub_26BA9BDBC();
    v45 = a1;
    if (v17)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = a1;
    if (v17)
    {
LABEL_4:
      v18 = 0;
      v41 = a1 & 0xC000000000000001;
      v39[1] = OBJC_IVAR____TtC10StickersUI16StickerDataCache_storeType;
      v40 = a1 & 0xFFFFFFFFFFFFFF8;
      a1 = v8 + 1;
      while (1)
      {
        if (v41)
        {
          v19 = MEMORY[0x26D68B2E0](v18, v45);
        }

        else
        {
          if (v18 >= *(v40 + 16))
          {
            goto LABEL_20;
          }

          v19 = v45[v18 + 4];
        }

        v8 = v19;
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        sub_26BA9B5CC();
        sub_26BA53FB8(&qword_280435C60, MEMORY[0x277D681A8]);
        sub_26BA9B7CC();
        sub_26BA9B7CC();
        (*a1)(v10, v7);
        if (v47 == v46[4])
        {
          v21 = sub_26BA9B56C();
          if (v21 >> 62)
          {
            v23 = sub_26BA9BDBC();

            if (v23)
            {
LABEL_14:
              sub_26BA9BD4C();
              sub_26BA9BD7C();
              sub_26BA9BD8C();
              sub_26BA9BD5C();
              goto LABEL_6;
            }
          }

          else
          {
            v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);

            if (v22)
            {
              goto LABEL_14;
            }
          }
        }

LABEL_6:
        ++v18;
        if (v20 == v17)
        {
          v24 = v46[0];
          goto LABEL_24;
        }
      }
    }
  }

  v24 = MEMORY[0x277D84F90];
LABEL_24:
  v46[0] = MEMORY[0x277D84FA0];
  v25 = 0;
  v26 = sub_26BA53014(v24);

  if (v26 >> 62)
  {
    v27 = sub_26BA9BDBC();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    v46[0] = MEMORY[0x277D84F90];
    v29 = v46;
    sub_26BA4F7D8(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      goto LABEL_42;
    }

    v41 = 0;
    v30 = 0;
    v28 = v46[0];
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x26D68B2E0](v30, v26);
      }

      else
      {
        v31 = *(v26 + 8 * v30 + 32);
      }

      v32 = v31;
      v33 = *(v43 + 48);
      MEMORY[0x26D68AA00]();
      *&v6[v33] = v32;
      v46[0] = v28;
      v35 = *(v28 + 16);
      v34 = *(v28 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_26BA4F7D8(v34 > 1, v35 + 1, 1);
        v28 = v46[0];
      }

      ++v30;
      *(v28 + 16) = v35 + 1;
      sub_26BA54000(v6, v28 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v35, &qword_280435CC0);
    }

    while (v27 != v30);
    v25 = v41;
  }

  v24 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_stickerCache;
  v29 = v44;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *(v29 + v24);
  *(v29 + v24) = 0x8000000000000000;
  sub_26BA53254(v28, isUniquelyReferenced_nonNull_native, &v47);
  if (v25)
  {
LABEL_42:

    *(v29 + v24) = v47;

    __break(1u);
    return result;
  }

  *(v29 + v24) = v47;
  swift_endAccess();

  if (sub_26BA44E00(v37) >> 62)
  {
    sub_26BA9BDBC();
  }
}

uint64_t sub_26BA51460(char *a1, char *a2, char *a3, uint64_t a4)
{
  v48 = a1;
  v49 = a4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CC0);
  v6 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v8 = &v40 - v7;
  v9 = sub_26BA9B2EC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a3 - 1);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v46 = v14;
  v21 = *(v14 + 16);
  v20 = v14 + 16;
  v47 = v21;
  v21(&v40 - v18, v48, a3);
  v48 = a2;
  v22 = *&a2[OBJC_IVAR____TtC10StickersUI16StickerDataCache_queue];
  *v13 = v22;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v23 = v22;
  v24 = sub_26BA9B30C();
  v26 = *(v10 + 8);
  v25 = v10 + 8;
  v26(v13, v9);
  if (v24)
  {
    v44 = v19;
    v47(v17, v19, a3);
    v45 = a3;
    v43 = v17;
    v13 = 0;
    v24 = sub_26BA9B7BC();
    v52 = MEMORY[0x277D84FA0];
    v25 = sub_26BA53014(v24);

    v42 = v20;
    if (!(v25 >> 62))
    {
      v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_26BA9BDBC();
LABEL_4:
  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    v52 = MEMORY[0x277D84F90];
    sub_26BA4F7D8(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      goto LABEL_21;
    }

    v41 = v13;
    v29 = 0;
    v28 = v52;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x26D68B2E0](v29, v25);
      }

      else
      {
        v30 = *(v25 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = *(v50 + 48);
      MEMORY[0x26D68AA00]();
      *&v8[v32] = v31;
      v52 = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_26BA4F7D8(v33 > 1, v34 + 1, 1);
        v28 = v52;
      }

      ++v29;
      *(v28 + 16) = v34 + 1;
      sub_26BA54000(v8, v28 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v34, &qword_280435CC0);
    }

    while (v27 != v29);
    v13 = v41;
  }

  v24 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_stickerCache;
  a3 = v48;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = *&a3[v24];
  *&a3[v24] = 0x8000000000000000;
  sub_26BA53254(v28, isUniquelyReferenced_nonNull_native, &v51);
  v36 = v45;
  v37 = v43;
  if (v13)
  {
LABEL_21:

    *&a3[v24] = v51;

    __break(1u);
    return result;
  }

  *&a3[v24] = v51;
  swift_endAccess();

  v38 = v44;
  v47(v37, v44, v36);
  sub_26BA9B61C();
  if (sub_26BA9B87C() >> 62)
  {
    sub_26BA9BDBC();
  }

  return (*(v46 + 8))(v38, v36);
}

unint64_t sub_26BA51984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CC8);
    v7 = sub_26BA9BDEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26BA53EF8(v9, v5, &qword_280435CC0);
      result = sub_26BA4F454(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_26BA9AD5C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26BA51B6C(uint64_t a1)
{
  v2 = sub_26BA9AD5C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_26BA53FB8(&qword_280435C88, MEMORY[0x277CC95F0]);
  result = MEMORY[0x26D68AEB0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_26BA4CBF4(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t sub_26BA51D08()
{
  result = qword_280435C80;
  if (!qword_280435C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280435C80);
  }

  return result;
}

void sub_26BA51D5C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_26BA9AB9C();
    if (!v2)
    {
LABEL_7:

      return;
    }

    v3 = v2;
    sub_26BA9BC9C();
    if (*(v3 + 16))
    {
      v4 = sub_26BA4F4EC(v6);
      if (v5)
      {
        sub_26BA3ED78(*(v3 + 56) + 32 * v4, v7);
        sub_26BA53728(v6);

        sub_26BA9B61C();
        if (swift_dynamicCast())
        {
          (*(*v1 + 480))(0xD000000000000019);

          return;
        }

        goto LABEL_7;
      }
    }

    sub_26BA53728(v6);
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26BA51EE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435D08);
    v3 = sub_26BA9BDEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_26BA53EF8(v4, v13, &qword_280435D00);
      result = sub_26BA4F4EC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_26BA410F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26BA52024(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BA9AD5C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v42 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v41 = &v32 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v32 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v39 = v16;
  v17 = *(v15 + 56);
  v33 = (*(v15 + 64) + 32) & ~*(v15 + 64);
  v18 = (a1 + v33);
  v36 = (v15 + 16);
  v37 = (v15 - 8);
  v43 = MEMORY[0x277D84F90];
  v34 = v15;
  v35 = a2;
  v38 = v17;
  do
  {
    v20 = v39;
    v39(v13, v18, v4);
    v21 = v41;
    v22 = v15;
    v20(v41, v13, v4);
    v23 = v13;
    v24 = v40;
    LOBYTE(v20) = sub_26BA4CBF4(v40, v21);
    v25 = *v37;
    (*v37)(v24, v4);
    if (v20)
    {
      v26 = *v36;
      (*v36)(v42, v23, v4);
      v27 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v27;
      v13 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26BA4F7B8(0, *(v27 + 16) + 1, 1);
        v27 = v44;
      }

      v30 = *(v27 + 16);
      v29 = *(v27 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_26BA4F7B8(v29 > 1, v30 + 1, 1);
        v27 = v44;
      }

      *(v27 + 16) = v30 + 1;
      v43 = v27;
      v19 = v38;
      v26((v27 + v33 + v30 * v38), v42, v4);
      v15 = v34;
    }

    else
    {
      v25(v23, v4);
      v13 = v23;
      v19 = v38;
      v15 = v22;
    }

    v18 += v19;
    --v14;
  }

  while (v14);
  return v43;
}

uint64_t sub_26BA52318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v50 = &v38 - v11;
  v39 = v12;
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  if (sub_26BA9B85C())
  {
    sub_26BA9BCDC();
    v15 = sub_26BA9BCCC();
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v43 = sub_26BA9B85C();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_26BA9B83C();
    sub_26BA9B80C();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_26BA9BD0C();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_26BA9B64C();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_26BA9B67C();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_26BA52738()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 432))(result);
  }

  return result;
}

uint64_t sub_26BA527B4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(v2, ObjectType, v1);
}

uint64_t objectdestroy_14Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

uint64_t sub_26BA52864()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_stickerCache;
  swift_beginAccess();

  v6 = sub_26BA53D2C(v5, v1, v3);

  *(v2 + v4) = v6;
}

void sub_26BA52958()
{
  v1 = *(*(sub_26BA9AD5C() - 8) + 80);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_stickerCache;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16))
  {

    v6 = sub_26BA4F454(v0 + ((v1 + 32) & ~v1));
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      v9 = v8;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *v3;
  *v3 = v8;
}

unint64_t sub_26BA52A80()
{
  result = qword_280435C98;
  if (!qword_280435C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280435C98);
  }

  return result;
}

uint64_t sub_26BA52B4C()
{
  v2 = *(v0 + 24);
  result = sub_26BA9B34C();
  if (!v1)
  {
    return sub_26BA454DC(v2);
  }

  return result;
}

unint64_t sub_26BA52BAC()
{
  result = qword_280435CA0;
  if (!qword_280435CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280435CA0);
  }

  return result;
}

uint64_t type metadata accessor for StickerDataCache()
{
  result = qword_2804371F0;
  if (!qword_2804371F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BA52C7C()
{
  sub_26BA52DC4();
  if (v0 <= 0x3F)
  {
    sub_26BA9B42C();
    if (v1 <= 0x3F)
    {
      sub_26BA52E1C();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26BA52DC4()
{
  if (!qword_280AEB7B0)
  {
    sub_26BA9AD5C();
    v0 = sub_26BA9BC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_280AEB7B0);
    }
  }
}

void sub_26BA52E1C()
{
  if (!qword_280435CA8)
  {
    sub_26BA9AD5C();
    sub_26BA51D08();
    sub_26BA53FB8(&qword_280435C88, MEMORY[0x277CC95F0]);
    v0 = sub_26BA9B0EC();
    if (!v1)
    {
      atomic_store(v0, &qword_280435CA8);
    }
  }
}

void *sub_26BA52EE4@<X0>(void *a1@<X8>)
{
  result = sub_26BA9B31C();
  if (!v1)
  {
    v4 = result;
    result = sub_26BA454DC(result);
    *a1 = v4;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26BA52F80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26BA53014(unint64_t a1)
{
  v2 = v1;
  v4 = sub_26BA9AD5C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v22 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26BA9BDBC())
  {
    v16 = v2;
    v17 = v10;
    v12 = 0;
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = a1 & 0xC000000000000001;
    v18 = (v5 + 8);
    v19 = i;
    while (1)
    {
      if (v21)
      {
        v13 = MEMORY[0x26D68B2E0](v12, a1);
      }

      else
      {
        if (v12 >= *(v20 + 16))
        {
          goto LABEL_15;
        }

        v13 = *(a1 + 8 * v12 + 32);
      }

      v2 = v13;
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      MEMORY[0x26D68AA00]();
      v5 = sub_26BA4CBF4(v10, v8);
      (*v18)(v10, v4);
      if (v5)
      {
        v5 = &v22;
        sub_26BA9BD4C();
        sub_26BA9BD7C();
        v10 = v17;
        sub_26BA9BD8C();
        sub_26BA9BD5C();
      }

      else
      {
      }

      ++v12;
      if (v14 == v19)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x277D84F90];
}

void sub_26BA53254(uint64_t a1, char a2, void (**a3)(char *, uint64_t))
{
  v58 = a3;
  v6 = sub_26BA9AD5C();
  v52 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CC0);
  v10 = MEMORY[0x28223BE20](v9);
  v57 = &v49 - v12;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return;
  }

  v14 = *(v10 + 48);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v54 = *(v11 + 72);
  v49 = v15;
  v50 = a1;
  v16 = a1 + v15;
  v17 = v57;
  sub_26BA53EF8(v16, v57, &qword_280435CC0);
  v18 = *(v52 + 32);
  v55 = (v52 + 32);
  v56 = v6;
  v18(v8, v17, v6);
  v53 = v14;
  v19 = *(v17 + v14);
  v20 = *v58;
  v22 = sub_26BA4F454(v8);
  v23 = *(v20 + 2);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    goto LABEL_24;
  }

  LOBYTE(v3) = v21;
  if (*(v20 + 3) >= v25)
  {
    v17 = v55;
    if ((a2 & 1) == 0)
    {
      goto LABEL_26;
    }

    v28 = v19;
    while (1)
    {
LABEL_8:
      v19 = *v58;
      v51 = v17 - 3;
      if (v3)
      {
        v3 = v56;
        (*(v17 - 3))(v8, v56);
        v29 = *(v19 + 7);
        v30 = *(v29 + 8 * v22);
        *(v29 + 8 * v22) = v28;
      }

      else
      {
        *(v19 + (v22 >> 6) + 8) |= 1 << v22;
        v3 = v56;
        v18((*(v19 + 6) + *(v52 + 72) * v22), v8, v56);
        *(*(v19 + 7) + 8 * v22) = v28;
        v31 = *(v19 + 2);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_25;
        }

        *(v19 + 2) = v33;
      }

      v18 = (v13 - 1);
      if (v13 == 1)
      {
        return;
      }

      v13 = v50 + v54 + v49;
      while (1)
      {
        v36 = v57;
        sub_26BA53EF8(v13, v57, &qword_280435CC0);
        v19 = *v17;
        (*v17)(v8, v36, v3);
        v37 = *(v36 + v53);
        v38 = *v58;
        v22 = sub_26BA4F454(v8);
        v40 = *(v38 + 2);
        v41 = (v39 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          break;
        }

        v43 = v39;
        if (*(v38 + 3) < v42)
        {
          sub_26BA4FBC0(v42, 1);
          v44 = sub_26BA4F454(v8);
          if ((v43 & 1) != (v45 & 1))
          {
            goto LABEL_27;
          }

          v22 = v44;
        }

        v46 = *v58;
        if (v43)
        {
          v3 = v56;
          (*v51)(v8, v56);
          v34 = *(v46 + 7);
          v35 = *(v34 + 8 * v22);
          *(v34 + 8 * v22) = v37;

          v17 = v55;
        }

        else
        {
          *(v46 + (v22 >> 6) + 8) |= 1 << v22;
          v17 = v55;
          v3 = v56;
          (v19)(*(v46 + 6) + *(v52 + 72) * v22, v8, v56);
          *(*(v46 + 7) + 8 * v22) = v37;
          v47 = *(v46 + 2);
          v32 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v32)
          {
            goto LABEL_25;
          }

          *(v46 + 2) = v48;
        }

        v13 += v54;
        v18 = (v18 - 1);
        if (!v18)
        {
          return;
        }
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v28 = v19;
      sub_26BA4FF9C();
    }
  }

  sub_26BA4FBC0(v25, a2 & 1);
  v26 = sub_26BA4F454(v8);
  if ((v3 & 1) == (v27 & 1))
  {
    v22 = v26;
    v28 = v19;
    v17 = v55;
    goto LABEL_8;
  }

LABEL_27:
  sub_26BA9BE7C();
  __break(1u);
}

unint64_t sub_26BA5377C()
{
  result = qword_280435D30;
  if (!qword_280435D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280435D30);
  }

  return result;
}

uint64_t sub_26BA537D0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BA53818()
{
  result = qword_280435D50;
  if (!qword_280435D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280435D48);
    sub_26BA538A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280435D50);
  }

  return result;
}

unint64_t sub_26BA538A4()
{
  result = qword_280435D58;
  if (!qword_280435D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280435D58);
  }

  return result;
}

uint64_t sub_26BA538F8(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v49 = a2;
  v53 = a4;
  v50 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435D60);
  v7 = MEMORY[0x28223BE20](v57);
  v64 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v63 = &v49 - v9;
  v62 = sub_26BA9AD5C();
  result = MEMORY[0x28223BE20](v62);
  v61 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = 0;
  v13 = 0;
  v59 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v55 = v11 + 16;
  v56 = v11;
  v58 = (v11 + 8);
  v54 = a5;
  while (v19)
  {
    v23 = __clz(__rbit64(v19));
    v60 = (v19 - 1) & v19;
LABEL_12:
    v26 = v23 | (v13 << 6);
    v27 = v59;
    v28 = *(v56 + 16);
    v30 = v61;
    v29 = v62;
    v28(v61, v59[6] + *(v56 + 72) * v26, v62);
    v31 = v27[7];
    v52 = v26;
    v32 = *(v31 + 8 * v26);
    v33 = v63;
    v28(v63, v30, v29);
    v34 = v57;
    *(v33 + *(v57 + 48)) = v32;
    v35 = v33;
    v36 = v64;
    sub_26BA53EF8(v35, v64, &qword_280435D60);
    v37 = *(v36 + *(v34 + 48));
    v38 = v32;
    v39 = sub_26BA9B44C();
    v41 = v40;

    if (v41)
    {
      if (v39 == v53 && v41 == v54)
      {

        sub_26BA3E6F8(v63, &qword_280435D60);
        v21 = *v58;
        v22 = v62;
        (*v58)(v64, v62);

        result = (v21)(v61, v22);
        v19 = v60;
      }

      else
      {
        v43 = sub_26BA9BE4C();

        sub_26BA3E6F8(v63, &qword_280435D60);
        v44 = *v58;
        v45 = v62;
        (*v58)(v64, v62);

        result = (v44)(v61, v45);
        v19 = v60;
        if ((v43 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_26BA3E6F8(v63, &qword_280435D60);
      v46 = *v58;
      v47 = v62;
      (*v58)(v64, v62);

      result = (v46)(v61, v47);
      v19 = v60;
LABEL_20:
      *(v50 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
      if (__OFADD__(v51++, 1))
      {
        __break(1u);
        return sub_26BA504E0(v50, v49, v51, v59);
      }
    }
  }

  v24 = v13;
  while (1)
  {
    v13 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_26BA504E0(v50, v49, v51, v59);
    }

    v25 = v15[v13];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v60 = (v25 - 1) & v25;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BA53D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_26BA5043C(v14, v9, a1, a2, a3);
      MEMORY[0x26D68BFB0](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      return v12;
    }
  }

  MEMORY[0x28223BE20](v11);
  bzero(v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_26BA538F8((v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v12;
}

uint64_t sub_26BA53EF8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_32Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_26BA53FB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BA54000(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BA540C4()
{
  result = sub_26BA9B68C();
  qword_280437208 = result;
  return result;
}

uint64_t *sub_26BA540FC()
{
  if (qword_280437200 != -1)
  {
    swift_once();
  }

  return &qword_280437208;
}

id static NSNotificationName.stickerCreationProgress.getter()
{
  if (qword_280437200 != -1)
  {
    swift_once();
  }

  v1 = qword_280437208;

  return v1;
}

uint64_t UIView.availableScrollView.getter()
{
  v1 = v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
  }

  else
  {
    v5 = [v0 subviews];
    sub_26BA3EF64(0, &qword_280435D70);
    v6 = sub_26BA9B7FC();

    if (v6 >> 62)
    {
LABEL_18:
      v7 = sub_26BA9BDBC();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v7 != i; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26D68B2E0](i, v6);
      }

      else
      {
        if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v3 = UIView.availableScrollView.getter();

      if (v3)
      {

        return v3;
      }
    }

    return 0;
  }

  return v3;
}

BOOL sub_26BA542FC()
{
  v3 = 0;
  v0 = sub_26BA54340(&v3);
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

void *sub_26BA54340(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_26BA9B56C();
  v3 = v2;
  v4 = v2 >> 62;
  if (v1 == 1)
  {
    if (v4)
    {
      goto LABEL_34;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26BA9BDBC())
    {
      v6 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x26D68B2E0](v6, v3);
        }

        else
        {
          if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v7 = *(v3 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v10 = sub_26BA9B53C();
        v12 = v11;
        if (v10 == sub_26BA9B4DC() && v12 == v13)
        {
          goto LABEL_28;
        }

        v14 = sub_26BA9BE4C();

        if (v14)
        {
          goto LABEL_29;
        }

        ++v6;
        if (v9 == i)
        {
          goto LABEL_37;
        }
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

    goto LABEL_37;
  }

  if (!v4)
  {
    v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_17;
    }

LABEL_37:

    return 0;
  }

  v15 = sub_26BA9BDBC();
  if (!v15)
  {
    goto LABEL_37;
  }

LABEL_17:
  v16 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x26D68B2E0](v16, v3);
    }

    else
    {
      if (v16 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v17 = *(v3 + 8 * v16 + 32);
    }

    v8 = v17;
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    v19 = sub_26BA9B53C();
    v21 = v20;
    if (v19 == sub_26BA9B4CC() && v21 == v22)
    {
      break;
    }

    v23 = sub_26BA9BE4C();

    if (v23)
    {
      goto LABEL_29;
    }

    ++v16;
    if (v18 == v15)
    {
      goto LABEL_37;
    }
  }

LABEL_28:

LABEL_29:

  return v8;
}

void *sub_26BA54584(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26BA9BDBC())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D68B2E0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void sub_26BA54698(char *a1@<X8>)
{
  v2 = sub_26BA9B58C();
  v4 = v2;
  if (!v2)
  {
    goto LABEL_2;
  }

  v5 = sub_26BA9B53C();
  v7 = v6;
  if (sub_26BA9B6BC() == v5 && v8 == v7)
  {

    goto LABEL_2;
  }

  v10 = sub_26BA9BE4C();

  if (v10)
  {

LABEL_2:
    v3 = 0;
    goto LABEL_3;
  }

  if (sub_26BA9B6BC() == v5 && v11 == v7)
  {

    v3 = 1;
  }

  else
  {
    v13 = sub_26BA9BE4C();

    v3 = v13 & 1;
  }

LABEL_3:
  *a1 = v3;
}

uint64_t sub_26BA5486C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x140))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_26BA54934()
{
  v1 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_canSupportMagicPocket;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26BA54978(char a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_canSupportMagicPocket;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_26BA54A28()
{
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BA54A5C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x160))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_26BA54B24()
{
  v1 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isPresentedWithNavigationTitleBar;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26BA54B68(char a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isPresentedWithNavigationTitleBar;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26BA54C18()
{
  v1 = v0;
  v2 = sub_26BA9AD5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StickerCollectionViewController.AddStickerError(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA54EA4(v1, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435D88);
  v10 = (*(*(v9 - 8) + 48))(v8, 2, v9);
  if (v10)
  {
    if (v10 == 1)
    {
      return 0xD000000000000017;
    }

    else
    {
      return 0x20676E697373694DLL;
    }
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_26BA9BCFC();

    v14 = 0xD00000000000001ALL;
    v15 = 0x800000026BA9FB40;
    sub_26BA70C0C(&unk_280435D90, MEMORY[0x277CC95F0]);
    v12 = sub_26BA9BE2C();
    MEMORY[0x26D68ACC0](v12);

    v13 = v14;
    (*(v3 + 8))(v5, v2);
    return v13;
  }
}

uint64_t sub_26BA54EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StickerCollectionViewController.AddStickerError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26BA54F18()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_26BA9B68C();
  v2 = [v0 BOOLForKey_];

  byte_280437218 = v2;
}

uint64_t sub_26BA54FA8()
{
  v0 = sub_26BA9AE2C();
  __swift_allocate_value_buffer(v0, qword_280437228);
  __swift_project_value_buffer(v0, qword_280437228);
  return MEMORY[0x26D68A3D0](1, 0);
}

uint64_t sub_26BA54FFC()
{
  v0 = sub_26BA9AF5C();
  __swift_allocate_value_buffer(v0, qword_280437248);
  __swift_project_value_buffer(v0, qword_280437248);
  return sub_26BA9AF4C();
}

uint64_t sub_26BA55078@<X0>(uint64_t a1@<X8>)
{
  if (qword_280437240 != -1)
  {
    swift_once();
  }

  v2 = sub_26BA9AF5C();
  v3 = __swift_project_value_buffer(v2, qword_280437248);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_26BA55120()
{
  v1 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController__analyticsCreationEvent;
  if (*(v0 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController__analyticsCreationEvent) || (type metadata accessor for StickersAnalyticsCreationEvent(), sub_26BA96374(), *(v0 + v1) = v2, , (result = *(v0 + v1)) != 0))
  {
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26BA55294()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_26BA55520;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BA3FE78;
    aBlock[3] = &block_descriptor_2;
    v3 = _Block_copy(aBlock);

    [v1 setPhotoPickerDidDismissClosure_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v3);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_26BA553C4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1B8))();
  *a2 = result;
  return result;
}

uint64_t sub_26BA55428(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x1C0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void sub_26BA55494()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x488))();
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*sub_26BA55540(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_delegate;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  swift_beginAccess();
  *(v4 + 48) = swift_unknownObjectWeakLoadStrong();
  return sub_26BA555D8;
}

void sub_26BA555D8(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v3[4] = sub_26BA77524;
      v3[5] = v6;
      *v3 = MEMORY[0x277D85DD0];
      v3[1] = 1107296256;
      v3[2] = sub_26BA3FE78;
      v3[3] = &block_descriptor_6;
      v7 = _Block_copy(v3);

      [v5 setPhotoPickerDidDismissClosure_];
      swift_unknownObjectRelease();
      _Block_release(v7);
    }
  }

  free(v3);
}

uint64_t sub_26BA55720@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D68198];
  v3 = sub_26BA9B42C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_26BA557F0(uint64_t a1, void **a2)
{
  v4 = sub_26BA9B42C();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x1D8))(v6);
}

uint64_t sub_26BA55900@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_storeType;
  swift_beginAccess();
  v4 = sub_26BA9B42C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_26BA55988(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_storeType;
  swift_beginAccess();
  v4 = sub_26BA9B42C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_26BA55A78()
{
  v1 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isArranging;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26BA55ABC(char a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isArranging;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26BA55B6C()
{
  v1 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_allowsAnimation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26BA55BB0(char a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_allowsAnimation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_26BA55C6C()
{
  v1 = v0 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_touchOffsetForMovingCell;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_26BA55CB4(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_touchOffsetForMovingCell);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

void *sub_26BA55D6C()
{
  v1 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_placeholderImageView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26BA55DB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_placeholderImageView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_26BA55E70@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x278))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_26BA55F38()
{
  v1 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isStickerEffectPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26BA55F7C(char a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isStickerEffectPaused;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26BA56040@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_needsMenuPresentationStickerIdentifier;
  swift_beginAccess();
  return sub_26BA53EF8(v1 + v3, a1, &qword_280435B08);
}

uint64_t sub_26BA560A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_needsMenuPresentationStickerIdentifier;
  swift_beginAccess();
  sub_26BA431E4(a1, v1 + v3);
  return swift_endAccess();
}

void *sub_26BA56174()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_26BA561A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a7;
  *(a3 + 32) = result;
  *(a3 + 40) = a2;
  return result;
}

double sub_26BA561B4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void sub_26BA561C4(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addContextToRun);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v9 = v3[4];
  v8 = v3[5];
  sub_26BA56258(v4, v5, v6, v7, v9, v8);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v9;
  a1[5] = v8;
}

void sub_26BA56258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a6)
  {
    v6 = a5;

    v7 = a6;
  }
}

void sub_26BA56298(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addContextToRun);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v10;
  *(v3 + 2) = a1[2];
  sub_26BA56300(v4, v5, v6, v7, v8, v9);
}

void sub_26BA56300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a6)
  {
  }
}

void *sub_26BA563A0()
{
  v1 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_animationContextImageView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26BA563EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_animationContextImageView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_26BA564A4()
{
  v1 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_dataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26BA564F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_dataSource;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_26BA565A8()
{
  v1 = sub_26BA9B42C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController____lazy_storage___stickerCache;
  if (*(v0 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController____lazy_storage___stickerCache))
  {
    v6 = *(v0 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController____lazy_storage___stickerCache);
  }

  else
  {
    type metadata accessor for StickerDataCache();
    v7 = v0;
    (*((*MEMORY[0x277D85000] & *v0) + 0x1D0))();
    v6 = sub_26BA413D8(v4, v0, &off_287C6F538);
    (*(v2 + 8))(v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

uint64_t (*sub_26BA5672C(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_26BA565A8();
  return sub_26BA56774;
}

uint64_t sub_26BA567BC()
{
  v1 = sub_26BA9B42C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v14 - v7;
  v9 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x3C8))(v6))
  {
    (*((*v9 & *v0) + 0x1D0))();
    (*(v2 + 104))(v5, *MEMORY[0x277D681A0], v1);
    sub_26BA70C0C(&qword_280435DA0, MEMORY[0x277D681A8]);
    v10 = sub_26BA9B67C();
    v11 = *(v2 + 8);
    v11(v5, v1);
    v11(v8, v1);
    v12 = v10 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

BOOL sub_26BA569C0()
{
  v1 = sub_26BA9B42C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  (*((*MEMORY[0x277D85000] & *v0) + 0x1D0))(v6);
  (*(v2 + 104))(v5, *MEMORY[0x277D681A0], v1);
  sub_26BA70C0C(&qword_280435DA0, MEMORY[0x277D681A8]);
  v9 = sub_26BA9B67C();
  v10 = *(v2 + 8);
  v10(v5, v1);
  v10(v8, v1);
  return (v9 & 1) == 0;
}

void *sub_26BA56B80()
{
  v1 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_collectionLayout;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26BA56BCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_collectionLayout;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_26BA56CCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_transitionAnimator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *sub_26BA56D84()
{
  v1 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_keyline;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26BA56DD0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_keyline;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_26BA56EC0(void *a1)
{
  v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_canSupportMagicPocket] = 1;
  v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isPresentedWithNavigationTitleBar] = 0;
  v3 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_lastAddedStickerIdentifier;
  v4 = sub_26BA9AD5C();
  v5 = *(*(v4 - 8) + 56);
  v5(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController__analyticsCreationEvent] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_storeType;
  v7 = *MEMORY[0x277D68198];
  v8 = sub_26BA9B42C();
  (*(*(v8 - 8) + 104))(&v1[v6], v7, v8);
  *&v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_editMenuInteraction] = 0;
  v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isArranging] = 0;
  v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_allowsAnimation] = 0;
  v9 = &v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_touchOffsetForMovingCell];
  *v9 = 0;
  v9[1] = 0;
  v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isShowingPhotosPicker] = 0;
  *&v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_placeholderImageView] = 0;
  v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isStickerEffectPaused] = 0;
  v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isPresentingEditMenu] = 0;
  v5(&v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addingStickerIdentifier], 1, 1, v4);
  v5(&v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addingRecentStickerIdentifier], 1, 1, v4);
  v5(&v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_hiddenStickerViewIdentifier], 1, 1, v4);
  v10 = &v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_hiddenStickerViewAnimationStartTime];
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = 0;
  v10[24] = 1;
  v11 = &v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_completionHandlerWaitingForStickerBound];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_completionHandlerWaitingForStickerDisplay];
  *v12 = 0;
  v12[1] = 0;
  v5(&v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_needsMenuPresentationStickerIdentifier], 1, 1, v4);
  v13 = &v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addContextToRun];
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  *&v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_animationContextImageView] = 0;
  *&v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_dataSource] = 0;
  *&v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController____lazy_storage___stickerCache] = 0;
  *&v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_insertLocationMarker] = 0;
  *&v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_collectionLayout] = 0;
  *&v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_traitChangeRegistration] = 0;
  *&v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_transitionAnimator] = 0;
  *&v1[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_keyline] = 0;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for StickerCollectionViewController(0);
  v14 = objc_msgSendSuper2(&v16, sel_initWithCoder_, a1);

  if (v14)
  {
  }

  return v14;
}

uint64_t sub_26BA571E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v32 = sub_26BA9AF5C();
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26BA9AD5C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DA8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v32 - v14;
  v16 = MEMORY[0x277D85000];
  v17 = (*((*MEMORY[0x277D85000] & *v2) + 0x380))(v13);
  if (v17)
  {
    v18 = v17;
    sub_26BA9AD3C();
    sub_26BA9B22C();

    (*(v9 + 8))(v11, v8);
    v19 = sub_26BA9AE2C();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v15, 1, v19) != 1)
    {
      v21 = v33;
      (*(v20 + 32))(v33, v15, v19);
      return (*(v20 + 56))(v21, 0, 1, v19);
    }
  }

  else
  {
    v23 = sub_26BA9AE2C();
    (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  }

  v24 = sub_26BA3E6F8(v15, &qword_280435DA8);
  (*((*v16 & *v3) + 0x178))(v24);
  v25 = a1;
  v26 = sub_26BA9AF3C();
  v27 = sub_26BA9B94C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&dword_26BA33000, v26, v27, "Could not find index path for identifier %@", v28, 0xCu);
    sub_26BA3E6F8(v29, &qword_280435DB0);
    MEMORY[0x26D68BFB0](v29, -1, -1);
    MEMORY[0x26D68BFB0](v28, -1, -1);
  }

  (*(v5 + 8))(v7, v32);
  v31 = sub_26BA9AE2C();
  return (*(*(v31 - 8) + 56))(v33, 1, 1, v31);
}

uint64_t sub_26BA57650(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_26BA9AF5C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DA8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v58 - v13;
  v15 = sub_26BA9AE2C();
  v61 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v58 - v20;
  MEMORY[0x28223BE20](v19);
  v63 = &v58 - v22;
  v64 = 0x4972656B63697473;
  v65 = 0xEA00000000007344;
  sub_26BA9BC9C();
  if (!*(a1 + 16) || (v23 = sub_26BA4F4EC(v66), (v24 & 1) == 0))
  {
    result = sub_26BA53728(v66);
    goto LABEL_8;
  }

  v60 = v6;
  sub_26BA3ED78(*(a1 + 56) + 32 * v23, v67);
  sub_26BA53728(v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DB8);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v6 = v60;
LABEL_8:
    (*((*MEMORY[0x277D85000] & *v2) + 0x178))(result);
    v29 = sub_26BA9AF3C();
    v30 = sub_26BA9B92C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v6;
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26BA33000, v29, v30, "Could not find any sticker IDs in the info dictionary", v32, 2u);
      MEMORY[0x26D68BFB0](v32, -1, -1);

      return (*(v7 + 8))(v10, v31);
    }

    else
    {

      return (*(v7 + 8))(v10, v6);
    }
  }

  v26 = v64;
  if (!*(v64 + 16))
  {
    __break(1u);
    goto LABEL_32;
  }

  sub_26BA3ED78(v64 + 32, v66);
  sub_26BA3EF64(0, &qword_280435DC0);
  result = swift_dynamicCast();
  if (!result)
  {
    if (*(v26 + 16) >= 2uLL)
    {
      sub_26BA3ED78(v26 + 64, v67);

      if (swift_dynamicCast())
      {
        v28 = v64;
      }

      else
      {
        v28 = 0;
      }

      goto LABEL_16;
    }

LABEL_32:
    __break(1u);
    return result;
  }

  v27 = v67[0];

  v28 = v27;
LABEL_16:
  v59 = v28;
  if (v28)
  {
    v33 = *((*MEMORY[0x277D85000] & *v3) + 0x450);
    v58 = v28;
    v33();
    v34 = v61;
    v35 = *(v61 + 48);
    if (v35(v14, 1, v15) == 1)
    {
      MEMORY[0x26D68A3B0](1, 0);

      v36 = v35(v14, 1, v15);
      v37 = v34;
      if (v36 != 1)
      {
        sub_26BA3E6F8(v14, &qword_280435DA8);
      }
    }

    else
    {

      (*(v34 + 32))(v21, v14, v15);
      v37 = v34;
    }

    v38 = v63;
    (*(v37 + 32))();
  }

  else
  {
    v38 = v63;
    MEMORY[0x26D68A3B0](1, 0);
    v37 = v61;
  }

  v39 = [v3 collectionView];
  if (v39)
  {
    v40 = v39;
    v41 = sub_26BA9ADCC();
    v42 = [v40 cellForItemAtIndexPath_];

    if (v42)
    {
      type metadata accessor for StickerCollectionStickerCell();
      v43 = swift_dynamicCastClass();
      if (v43)
      {
        v44 = v43;
        v45 = MEMORY[0x277D85000];
        v46 = (*((*MEMORY[0x277D85000] & *v3) + 0x1B0))();
        (*(*v46 + 168))(1);

        (*((*v45 & *v44) + 0x188))(a1, a2);

        return (*(v37 + 8))(v38, v15);
      }
    }
  }

  v47 = v62;
  (*((*MEMORY[0x277D85000] & *v3) + 0x178))();
  (*(v37 + 16))(v18, v38, v15);
  v48 = sub_26BA9AF3C();
  v49 = sub_26BA9B92C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v66[0] = v51;
    *v50 = 136315138;
    sub_26BA70C0C(&qword_280435DC8, MEMORY[0x277CC9AF8]);
    v52 = sub_26BA9BE2C();
    v54 = v53;
    v55 = *(v37 + 8);
    v55(v18, v15);
    v56 = sub_26BA3DFF8(v52, v54, v66);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_26BA33000, v48, v49, "Could not find cell for progress bar at indexPath: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x26D68BFB0](v51, -1, -1);
    MEMORY[0x26D68BFB0](v50, -1, -1);

    (*(v7 + 8))(v62, v60);
    return (v55)(v63, v15);
  }

  else
  {

    v57 = *(v37 + 8);
    v57(v18, v15);
    (*(v7 + 8))(v47, v60);
    return (v57)(v38, v15);
  }
}

id sub_26BA57F5C(uint64_t a1)
{
  v3 = sub_26BA9B42C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  (*(v4 + 32))(v7 + v6, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v8 = objc_allocWithZone(MEMORY[0x277D752B8]);
  aBlock[4] = sub_26BA71284;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BA70B38;
  aBlock[3] = &block_descriptor_16;
  v9 = _Block_copy(aBlock);
  v10 = [v8 initWithSectionProvider_];
  _Block_release(v9);

  return v10;
}

id sub_26BA58118(void *a1)
{
  v2 = sub_26BA9B42C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_msgSend(a1 container)];
  v7 = v6;
  swift_unknownObjectRelease();
  if (v7 <= 440.0)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 2.0;
  }

  (*(v3 + 104))(v5, *MEMORY[0x277D681A0], v2);
  sub_26BA70C0C(&qword_280435C60, MEMORY[0x277D681A8]);
  sub_26BA9B7CC();
  sub_26BA9B7CC();
  (*(v3 + 8))(v5, v2);
  if (v30 == v29)
  {
    v9 = 16.0;
  }

  else
  {
    v9 = 12.0;
  }

  v10 = 3.0;
  if (v30 == v29)
  {
    v10 = 4.0;
  }

  v11 = 1.0 / (v8 * v10);
  v12 = objc_opt_self();
  v13 = [v12 fractionalWidthDimension_];
  v14 = [v12 fractionalWidthDimension_];
  v15 = objc_opt_self();
  v16 = [v15 sizeWithWidthDimension:v13 heightDimension:v14];

  v17 = [objc_opt_self() itemWithLayoutSize_];
  [v17 setContentInsets_];
  v18 = [v12 fractionalWidthDimension_];
  v19 = [v12 fractionalWidthDimension_];
  v20 = [v15 sizeWithWidthDimension:v18 heightDimension:v19];

  v21 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DD0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26BA9DBD0;
  *(v22 + 32) = v17;
  sub_26BA3EF64(0, &qword_2804360F8);
  v23 = v17;
  v24 = sub_26BA9B7EC();

  v25 = [v21 horizontalGroupWithLayoutSize:v20 subitems:v24];

  v26 = [objc_opt_self() sectionWithGroup_];
  v27 = v26;
  if (v7 > 440.0)
  {
    [v26 setContentInsets_];
  }

  return v27;
}

id sub_26BA58534()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for StickerCollectionViewController(0);
  v2 = objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v0) + 0x470))(v2);
  (*((*v3 & *v0) + 0x490))(v4);
  sub_26BA586CC();
  (*((*v3 & *v0) + 0x478))();
  result = [v0 view];
  if (result)
  {
    v6 = result;
    type metadata accessor for KeylineView();
    v7 = sub_26BA84138(v6);
    return (*((*v3 & *v1) + 0x438))(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26BA586CC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D754C8]) initWithDelegate_];
  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 addInteraction_];

  v4 = *&v0[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_editMenuInteraction];
  *&v0[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_editMenuInteraction] = v1;
  v21 = v1;

  v5 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v6 = v0;
  v7 = [v5 initWithTarget:v6 action:sel_handleTap_];
  v8 = [v6 collectionView];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  [v8 addGestureRecognizer_];

  v10 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v6 action:sel_handleLongPress_];
  [v10 setDelegate_];
  [v10 setMinimumPressDuration_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DD0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26BA9D4D0;
  *(v11 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v11 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_26BA3EF64(0, &qword_280435DD8);
  v12 = sub_26BA9B7EC();

  [v10 setAllowedTouchTypes_];

  v13 = [v6 collectionView];
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  [v13 addGestureRecognizer_];

  v15 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v6 action:sel_handleLongPress_];
  v16 = v15;
  [v16 setDelegate_];
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26BA9D4D0;
  *(v17 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v17 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v18 = sub_26BA9B7EC();

  [v16 setAllowedTouchTypes_];

  v19 = [v6 collectionView];
  if (!v19)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v20 = v19;
  [v19 addGestureRecognizer_];
}

id StickerCollectionViewController.__deallocating_deinit()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x480))();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerCollectionViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26BA58F08(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for StickerCollectionViewController(0);
  v4 = objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1 & 1);
  v5 = MEMORY[0x277D85000];
  v6 = *(*((*MEMORY[0x277D85000] & *v2) + 0x398))(v4);
  (*(v6 + 416))(v2, &off_287C6F538);
  v7 = v2;

  result = [v2 collectionView];
  if (result)
  {
    v9 = result;
    [result reloadData];

    return (*((*v5 & *v7) + 0x220))(1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BA591F4(char a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = *(*((*MEMORY[0x277D85000] & *v1) + 0x398))();
  (*(v4 + 424))(v1, &off_287C6F538);

  v12.receiver = v1;
  v12.super_class = type metadata accessor for StickerCollectionViewController(0);
  objc_msgSendSuper2(&v12, sel_viewWillDisappear_, a1 & 1);
  v5 = (*((*v3 & *v1) + 0x220))(0);
  v6 = *((*v3 & *v1) + 0x1B0);
  v7 = v6(v5);
  v8 = (*(*v7 + 240))(v7);

  if (v8)
  {
    v10 = v6(v9);
    (*(*v10 + 336))(v10);
  }

  *(v1 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController__analyticsCreationEvent) = 0;
}

Swift::Void __swiftcall StickerCollectionViewController.sendAndResetAnalyticsIfNecessary()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x1B0);
  v2 = v1();
  v3 = (*(*v2 + 240))(v2);

  if (v3)
  {
    v5 = (v1)(v4);
    (*(*v5 + 336))(v5);
  }

  *(v0 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController__analyticsCreationEvent) = 0;
}

id sub_26BA59558(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for StickerCollectionViewController(0);
  return objc_msgSendSuper2(&v4, sel_viewDidDisappear_, a1 & 1);
}

void sub_26BA595EC()
{
  v1 = v0;
  v2 = sub_26BA9AF5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StickerCollectionViewController(0);
  v23.receiver = v0;
  v23.super_class = v6;
  objc_msgSendSuper2(&v23, sel_viewDidLayoutSubviews);
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = v7;
  v9 = [v7 window];

  v10 = MEMORY[0x277D85000];
  if (v9)
  {
    if ((*((*MEMORY[0x277D85000] & *v1) + 0x418))())
    {
    }

    else
    {
      (*((*v10 & *v1) + 0x468))(v9);
    }
  }

  else
  {
    (*((*MEMORY[0x277D85000] & *v1) + 0x178))();
    v12 = sub_26BA9AF3C();
    v13 = sub_26BA9B94C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_26BA33000, v12, v13, "Transition animator not configured: missing window", v14, 2u);
      MEMORY[0x26D68BFB0](v14, -1, -1);
    }

    v11 = (*(v3 + 8))(v5, v2);
  }

  v15 = (*((*v10 & *v1) + 0x350))(v24, v11);
  if (v26)
  {
    v27[0] = v24[0];
    v27[1] = v24[1];
    v28 = v25;
    v29 = v26;
    (*((*v10 & *v1) + 0x538))(v27);
    memset(v31, 0, sizeof(v31));
    (*((*v10 & *v1) + 0x358))(v31);
    v30 = v28;
    sub_26BA3E6F8(&v30, &unk_280435DE0);
  }

  v16 = (*((*v10 & *v1) + 0x418))(v15);
  if (v16)
  {
    (*(*v16 + 496))(v1);
  }

  v17 = (*((*v10 & *v1) + 0x430))(v16);
  if (v17)
  {
    v18 = v17;
    v19 = [v1 collectionView];
    if (v19)
    {
      v20 = v19;
      [v19 contentOffset];
      v22 = v21;

      (*((*v10 & *v18) + 0x58))(v22);
      return;
    }

LABEL_18:
    __break(1u);
  }
}

uint64_t sub_26BA59AE0(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x418))();
  if (v4)
  {
    (*(*v4 + 576))(v4);
  }

  type metadata accessor for StickerAddEffectTransitionAnimator();
  v5 = a1;
  v6 = v1;
  v7 = sub_26BA8DE20(v5, v6, &off_287C6F5E8);
  return (*((*v3 & *v6) + 0x420))(v7);
}

void sub_26BA59C00()
{
  v1 = v0;
  v2 = sub_26BA9B42C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - v7;
  v9 = [v0 collectionView];
  if (!v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [objc_opt_self() clearColor];
  [v10 setBackgroundColor_];

  v12 = [v1 collectionView];
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v12;
  [v12 setAlwaysBounceVertical_];

  v14 = [v1 collectionView];
  if (!v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v14;
  [v14 setPrefetchDataSource_];

  v16 = [v1 collectionView];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  [v16 setPrefetchingEnabled_];

  v18 = [v1 collectionView];
  if (!v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  [v18 setShowsVerticalScrollIndicator_];

  v20 = [v1 collectionView];
  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = v20;
  LODWORD(v21) = 1148846080;
  [v20 setContentHuggingPriority:1 forAxis:v21];

  (*((*MEMORY[0x277D85000] & *v1) + 0x1D0))();
  (*(v3 + 104))(v6, *MEMORY[0x277D681A0], v2);
  sub_26BA70C0C(&qword_280435C60, MEMORY[0x277D681A8]);
  sub_26BA9B7CC();
  sub_26BA9B7CC();
  v23 = *(v3 + 8);
  v23(v6, v2);
  v23(v8, v2);
  v25 = v29[0];
  v24 = v29[1];
  v26 = [v1 collectionView];
  if (!v26)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v27 = v26;
  v28 = 44.0;
  if (v24 == v25)
  {
    v28 = 50.0;
  }

  [v26 setContentInset_];
}

uint64_t sub_26BA59FA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435DF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26BA9D660;
  v2 = sub_26BA9AFDC();
  v3 = MEMORY[0x277D74BF0];
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for StickerCollectionViewController(0);
  v4 = sub_26BA9B99C();

  *(v0 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_traitChangeRegistration) = v4;

  return swift_unknownObjectRelease();
}

void sub_26BA5A090(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435E50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = sub_26BA9AF5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [a1 userInterfaceStyle];
    v13 = [v11 traitCollection];
    v14 = [v13 userInterfaceStyle];

    if (v12 == v14)
    {

      return;
    }

    v15 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v11) + 0x178))();
    v16 = sub_26BA9AF3C();
    v17 = sub_26BA9B92C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26BA33000, v16, v17, "Reloading for user interface style change", v18, 2u);
      v19 = v18;
      v15 = MEMORY[0x277D85000];
      MEMORY[0x26D68BFB0](v19, -1, -1);
    }

    v20 = (*(v7 + 8))(v9, v6);
    v21 = *((*v15 & *v11) + 0x380);
    v22 = v21(v20);
    if (v22)
    {
      v23 = v22;
      sub_26BA9B21C();

      sub_26BA9B0CC();
      sub_26BA9B06C();

      v25 = v21(v24);
      if (v25)
      {
        v26 = v25;
        sub_26BA9B20C();

        (*(v3 + 8))(v5, v2);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_26BA5A3E8()
{
  if (*(v0 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_traitChangeRegistration))
  {
    swift_unknownObjectRetain();
    sub_26BA9B9AC();
    swift_unknownObjectRelease();
  }

  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];
}

id sub_26BA5A478()
{
  v1 = v0;
  v2 = sub_26BA9B28C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26BA9B2BC();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26BA9AF5C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x277D85000] & *v0) + 0x178))(v10);
  v13 = sub_26BA9AF3C();
  v14 = sub_26BA9B93C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v5;
    v16 = v6;
    v17 = v2;
    v18 = v3;
    v19 = v15;
    *v15 = 0;
    _os_log_impl(&dword_26BA33000, v13, v14, "photoPickerDidDismiss", v15, 2u);
    v20 = v19;
    v3 = v18;
    v2 = v17;
    v6 = v16;
    v5 = v28;
    MEMORY[0x26D68BFB0](v20, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  result = [v1 setNeedsUpdateContentUnavailableConfiguration];
  if (*(v1 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isShowingPhotosPicker) == 1)
  {
    *(v1 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isShowingPhotosPicker) = 0;
    sub_26BA3EF64(0, &qword_280435B58);
    v22 = sub_26BA9BA0C();
    v23 = swift_allocObject();
    *(v23 + 16) = v1;
    aBlock[4] = sub_26BA71300;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BA3D478;
    aBlock[3] = &block_descriptor_23;
    v24 = _Block_copy(aBlock);
    v25 = v1;

    v26 = v29;
    sub_26BA9B2AC();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26BA70C0C(&qword_280435E00, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
    sub_26BA3EEB8();
    sub_26BA9BC5C();
    MEMORY[0x26D68AFF0](0, v26, v5, v24);
    _Block_release(v24);

    (*(v3 + 8))(v5, v2);
    return (*(v30 + 8))(v26, v6);
  }

  return result;
}

id sub_26BA5A924()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435E18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  result = [v1 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = result;
  type metadata accessor for StickerCollectionAddButtonCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_26BA9966C();

  v12 = sub_26BA9B68C();

  [v10 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v12];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for StickerCollectionStickerCell();
  sub_26BA9AD5C();
  sub_26BA9B97C();
  result = [v1 collectionView];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = *(v3 + 16);
  v29 = v8;
  v14(v6, v8, v2);
  v15 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v17 = *(v3 + 32);
  v30 = v2;
  v17(v16 + v15, v6, v2);
  v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435E20));
  v19 = sub_26BA9B1BC();
  v20 = MEMORY[0x277D85000];
  v21 = (*((*MEMORY[0x277D85000] & *v1) + 0x388))(v19);
  v22 = *((*v20 & *v1) + 0x380);
  result = (v22)(v21);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v23 = result;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = sub_26BA9B1FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435E28);
  sub_26BA9B1EC();
  v24(v31, 0);

  result = v22();
  if (result)
  {
    v25 = result;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = sub_26BA9B1FC();
    sub_26BA9B1DC();
    v26(v31, 0);

    v27 = (*((*MEMORY[0x277D85000] & *v1) + 0x398))();
    v28 = sub_26BA435FC();
    (*(*v27 + 408))(v28);

    return (*(v3 + 8))(v29, v30);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_26BA5AE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v9 = Strong, v10 = (*((*MEMORY[0x277D85000] & *Strong) + 0x4B0))(a2), v9, !v10))
  {
    v11 = sub_26BA9AD5C();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v7, a3, v11);
    (*(v12 + 56))(v7, 0, 1, v11);
    type metadata accessor for StickerCollectionStickerCell();
    v10 = sub_26BA9B98C();
    sub_26BA3E6F8(v7, &qword_280435B08);
  }

  return v10;
}

id sub_26BA5B014(uint64_t a1)
{
  v35 = a1;
  v1 = sub_26BA9AD5C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435E30);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v33 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v18 = Strong;
  v34 = v4;
  v19 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *Strong) + 0x200))() & 1) == 0)
  {
    goto LABEL_8;
  }

  v33 = v2;
  result = [v18 collectionView];
  if (result)
  {
    v21 = result;
    v22 = [result numberOfItemsInSection_];

    if (v22 >= 2)
    {
      v23 = (*((*v19 & *v18) + 0x398))();
      (*(*v23 + 216))(v23);

      v24 = v33;
      (*(v33 + 16))(v14, v35, v1);
      (*(v24 + 56))(v14, 0, 1, v1);
      v25 = *(v5 + 48);
      sub_26BA53EF8(v16, v7, &qword_280435B08);
      sub_26BA53EF8(v14, &v7[v25], &qword_280435B08);
      v26 = *(v24 + 48);
      if (v26(v7, 1, v1) == 1)
      {

        sub_26BA3E6F8(v14, &qword_280435B08);
        sub_26BA3E6F8(v16, &qword_280435B08);
        if (v26(&v7[v25], 1, v1) == 1)
        {
          sub_26BA3E6F8(v7, &qword_280435B08);
LABEL_9:
          v27 = 0;
          return (v27 & 1);
        }
      }

      else
      {
        sub_26BA53EF8(v7, v11, &qword_280435B08);
        if (v26(&v7[v25], 1, v1) != 1)
        {
          v28 = v33;
          v29 = &v7[v25];
          v30 = v34;
          (*(v33 + 32))(v34, v29, v1);
          sub_26BA70C0C(&qword_280435E40, MEMORY[0x277CC95F0]);
          v31 = sub_26BA9B67C();

          v32 = *(v28 + 8);
          v32(v30, v1);
          sub_26BA3E6F8(v14, &qword_280435B08);
          sub_26BA3E6F8(v16, &qword_280435B08);
          v32(v11, v1);
          sub_26BA3E6F8(v7, &qword_280435B08);
          v27 = v31 ^ 1;
          return (v27 & 1);
        }

        sub_26BA3E6F8(v14, &qword_280435B08);
        sub_26BA3E6F8(v16, &qword_280435B08);
        (*(v33 + 8))(v11, v1);
      }

      sub_26BA3E6F8(v7, &qword_280435E30);
      v27 = 1;
      return (v27 & 1);
    }

LABEL_8:

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BA5B5A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804360D8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804360E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804360E8);
    MEMORY[0x26D68A6C0](v10);
    v11 = sub_26BA9BDFC();
    result = (*(v5 + 8))(v7, v4);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = 0;
      while (v13 < *(v11 + 16))
      {
        sub_26BA53EF8(v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v13++, v3, &qword_2804360D8);
        sub_26BA5B7CC(v3, v9);
        result = sub_26BA3E6F8(v3, &qword_2804360D8);
        if (v12 == v13)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
    }
  }

  return result;
}

uint64_t sub_26BA5B7CC(uint64_t a1, void *a2)
{
  v4 = sub_26BA9B28C();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_26BA9B2BC();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26BA9B29C();
  v46 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26BA9AF5C();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804360D8);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  sub_26BA53EF8(a1, &v44 - v17, &qword_2804360D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804360F0) + 48);
LABEL_12:
    v43 = sub_26BA9AD5C();
    return (*(*(v43 - 8) + 8))(&v18[v19], v43);
  }

  v20 = *v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804360F0);
  v19 = *(v21 + 48);
  v22 = &v18[*(v21 + 64)];
  if (v22[8] == 1)
  {
    (*((*MEMORY[0x277D85000] & *a2) + 0x178))();
    v23 = sub_26BA9AF3C();
    v24 = sub_26BA9B94C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26BA33000, v23, v24, "Asked to move a sticker without a source location", v25, 2u);
      MEMORY[0x26D68BFB0](v25, -1, -1);
    }

    (*(v53 + 8))(v15, v54);
    goto LABEL_12;
  }

  v26 = *v22;
  v27 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *a2) + 0x3D0))();
  v29 = result << 63 >> 63;
  v45 = v26 + v29;
  if (__OFADD__(v26, v29))
  {
    __break(1u);
  }

  else
  {
    v30 = v20 + v29;
    if (!__OFADD__(v20, v29))
    {
      (*((*v27 & *a2) + 0x178))();
      v31 = sub_26BA9AF3C();
      v32 = sub_26BA9B93C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 134218240;
        *(v33 + 4) = v45;
        *(v33 + 12) = 2048;
        *(v33 + 14) = v30;
        _os_log_impl(&dword_26BA33000, v31, v32, "Moving sticker at position %ld to %ld", v33, 0x16u);
        MEMORY[0x26D68BFB0](v33, -1, -1);
      }

      (*(v53 + 8))(v13, v54);
      sub_26BA3EF64(0, &qword_280435B58);
      v34 = v46;
      (*(v46 + 104))(v9, *MEMORY[0x277D851B8], v7);
      v35 = sub_26BA9BA4C();
      (*(v34 + 8))(v9, v7);
      v36 = swift_allocObject();
      v37 = v45;
      v36[2] = a2;
      v36[3] = v37;
      v36[4] = v30;
      aBlock[4] = sub_26BA7744C;
      aBlock[5] = v36;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26BA54094;
      aBlock[3] = &block_descriptor_242;
      v38 = _Block_copy(aBlock);
      v39 = a2;
      v40 = v47;
      sub_26BA9B2AC();
      v55 = MEMORY[0x277D84F90];
      sub_26BA70C0C(&qword_280435E00, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
      sub_26BA3EEB8();
      v41 = v49;
      v42 = v52;
      sub_26BA9BC5C();
      MEMORY[0x26D68AFF0](0, v40, v41, v38);
      _Block_release(v38);

      (*(v51 + 8))(v41, v42);
      (*(v48 + 8))(v40, v50);

      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BA5BF24(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26BA9AF5C();
  v7 = MEMORY[0x28223BE20](v6);
  v8 = *(*((*MEMORY[0x277D85000] & *a1) + 0x398))(v7);
  (*(v8 + 576))(a2, a3);
}

void sub_26BA5C214(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v75 = a1;
  v68 = sub_26BA9AF5C();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26BA9AD5C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v65 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v9;
  MEMORY[0x28223BE20](v8);
  v72 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435E30);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v63 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v69 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v63 - v18;
  v20 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_hiddenStickerViewIdentifier;
  swift_beginAccess();
  v21 = *(v7 + 16);
  v73 = a2;
  v22 = a2;
  v23 = v3;
  v70 = v21;
  v71 = v7 + 16;
  v21(v19, v22, v6);
  (*(v7 + 56))(v19, 0, 1, v6);
  v24 = *(v12 + 56);
  sub_26BA53EF8(v3 + v20, v14, &qword_280435B08);
  sub_26BA53EF8(v19, &v14[v24], &qword_280435B08);
  v74 = v7;
  v25 = *(v7 + 48);
  if (v25(v14, 1, v6) == 1)
  {
    sub_26BA3E6F8(v19, &qword_280435B08);
    v26 = v25(&v14[v24], 1, v6);
    v27 = v73;
    if (v26 == 1)
    {
      sub_26BA3E6F8(v14, &qword_280435B08);
      v28 = 1;
      v29 = v75;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v30 = v69;
  sub_26BA53EF8(v14, v69, &qword_280435B08);
  if (v25(&v14[v24], 1, v6) == 1)
  {
    sub_26BA3E6F8(v19, &qword_280435B08);
    (*(v74 + 8))(v30, v6);
    v27 = v73;
LABEL_6:
    sub_26BA3E6F8(v14, &qword_280435E30);
    v28 = 0;
    v29 = v75;
    goto LABEL_8;
  }

  v31 = v74;
  v32 = v72;
  (*(v74 + 32))(v72, &v14[v24], v6);
  sub_26BA70C0C(&qword_280435E40, MEMORY[0x277CC95F0]);
  v28 = sub_26BA9B67C();
  v33 = *(v31 + 8);
  v33(v32, v6);
  sub_26BA3E6F8(v19, &qword_280435B08);
  v33(v30, v6);
  sub_26BA3E6F8(v14, &qword_280435B08);
  v29 = v75;
  v27 = v73;
LABEL_8:
  [v29 setHidden_];
  v34 = MEMORY[0x277D85000];
  v35 = (*((*MEMORY[0x277D85000] & *v29) + 0x190))(v27, v28 & 1, v23, &off_287C6F550);
  v36 = (*((*v34 & *v23) + 0x1B8))(v35);
  if (!v36)
  {
LABEL_14:
    (*((*v34 & *v29) + 0x1A8))(v27);
    return;
  }

  v37 = v36;
  v38 = *(*((*v34 & *v23) + 0x398))();
  v39 = (*(v38 + 536))(v27);

  if (!v39)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v75 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70(v72, v27, v6);
  v40 = v74;
  v41 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v42 = (v64 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = v75;
  *(v43 + 24) = v29;
  (*(v40 + 32))(v43 + v41, v72, v6);
  v44 = v43 + v42;
  *v44 = v39;
  *(v44 + 8) = v28 & 1;
  v45 = v29;
  v46 = v39;
  if (([v37 respondsToSelector_] & 1) == 0)
  {
    v80 = sub_26BA715C8;
    v81 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v77 = 1107296256;
    v78 = sub_26BA3D4BC;
    v79 = &block_descriptor_44;
    v49 = _Block_copy(&aBlock);

    [v37 stickerCollectionViewController:v23 requestsMSStickerFromSticker:v46 completionHandler:v49];

    _Block_release(v49);
LABEL_17:
    v48 = swift_unknownObjectRelease();
    goto LABEL_18;
  }

  if (([v37 respondsToSelector_] & 1) == 0)
  {

    goto LABEL_17;
  }

  v80 = sub_26BA715C8;
  v81 = v43;
  aBlock = MEMORY[0x277D85DD0];
  v77 = 1107296256;
  v78 = sub_26BA3D4BC;
  v79 = &block_descriptor_47;
  v47 = _Block_copy(&aBlock);
  [v37 stickerCollectionViewController:v23 requestsDisplayStickerFor:v46 completionHandler:v47];
  swift_unknownObjectRelease();

  _Block_release(v47);

LABEL_18:
  v50 = MEMORY[0x277D85000];
  v51 = (*((*MEMORY[0x277D85000] & *v23) + 0x200))(v48);
  v52 = (*((*v50 & *v29) + 0x100))(v51 & 1);
  v53 = (*((*v50 & *v23) + 0x278))(v52);
  (*((*v50 & *v29) + 0x130))(v53 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DD0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_26BA9DBD0;
  String.stkLocalized.getter();
  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  *(v56 + 24) = v29;
  v57 = objc_allocWithZone(MEMORY[0x277D75088]);
  v58 = v29;

  v59 = sub_26BA9B68C();

  v80 = sub_26BA714A4;
  v81 = v56;
  aBlock = MEMORY[0x277D85DD0];
  v77 = 1107296256;
  v78 = sub_26BA70BB4;
  v79 = &block_descriptor_37_0;
  v60 = _Block_copy(&aBlock);
  v61 = [v57 initWithName:v59 actionHandler:v60];

  _Block_release(v60);

  *(v54 + 32) = v61;
  sub_26BA3EF64(0, &qword_280435E38);
  v62 = sub_26BA9B7EC();

  [v58 setAccessibilityCustomActions_];
}

uint64_t sub_26BA5D024(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, int a7)
{
  v40 = a7;
  v39 = a6;
  v36 = a1;
  v37 = a2;
  v43 = sub_26BA9B28C();
  v46 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26BA9B2BC();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x28223BE20](v10);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26BA9AD5C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA3EF64(0, &qword_280435B58);
  v41 = sub_26BA9BA0C();
  v16 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v13 + 16))(v15, a5, v12);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = a4;
  (*(v13 + 32))(v20 + v18, v15, v12);
  v22 = v36;
  v21 = v37;
  *(v20 + v19) = v36;
  v23 = v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = v39;
  *v23 = v39;
  *(v23 + 8) = v40;
  *(v20 + ((v19 + 31) & 0xFFFFFFFFFFFFFFF8)) = v21;
  aBlock[4] = sub_26BA7739C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BA3D478;
  aBlock[3] = &block_descriptor_236;
  v25 = _Block_copy(aBlock);
  v26 = a4;
  v27 = v22;
  v28 = v24;
  v29 = v21;

  v30 = v38;
  sub_26BA9B2AC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26BA70C0C(&qword_280435E00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
  sub_26BA3EEB8();
  v32 = v42;
  v31 = v43;
  sub_26BA9BC5C();
  v33 = v41;
  MEMORY[0x26D68AFF0](0, v30, v32, v25);
  _Block_release(v25);

  (*(v46 + 8))(v32, v31);
  return (*(v44 + 8))(v30, v45);
}

void sub_26BA5D464(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int a6, void *a7)
{
  v67 = a7;
  v68 = a6;
  v69 = a5;
  v71 = a4;
  v9 = sub_26BA9AF5C();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x28223BE20](v9);
  v64 = &v57[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_26BA9AD5C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v63 = &v57[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v70 = &v57[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435E30);
  MEMORY[0x28223BE20](v16);
  v18 = &v57[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v57[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v57[-v24];
  MEMORY[0x28223BE20](v23);
  v27 = &v57[-v26];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v72 = Strong;
  v29 = *((*MEMORY[0x277D85000] & *a2) + 0xA8);
  v62 = a2;
  v29();
  v30 = *(v12 + 16);
  v60 = v12 + 16;
  v61 = a3;
  v59 = v30;
  v30(v25, a3, v11);
  (*(v12 + 56))(v25, 0, 1, v11);
  v31 = *(v16 + 48);
  sub_26BA53EF8(v27, v18, &qword_280435B08);
  sub_26BA53EF8(v25, &v18[v31], &qword_280435B08);
  v32 = *(v12 + 48);
  if (v32(v18, 1, v11) == 1)
  {
    sub_26BA3E6F8(v25, &qword_280435B08);
    sub_26BA3E6F8(v27, &qword_280435B08);
    if (v32(&v18[v31], 1, v11) == 1)
    {
      sub_26BA3E6F8(v18, &qword_280435B08);
      goto LABEL_10;
    }

LABEL_7:
    sub_26BA3E6F8(v18, &qword_280435E30);
    goto LABEL_8;
  }

  sub_26BA53EF8(v18, v22, &qword_280435B08);
  if (v32(&v18[v31], 1, v11) == 1)
  {
    sub_26BA3E6F8(v25, &qword_280435B08);
    sub_26BA3E6F8(v27, &qword_280435B08);
    (*(v12 + 8))(v22, v11);
    goto LABEL_7;
  }

  v33 = v70;
  (*(v12 + 32))(v70, &v18[v31], v11);
  sub_26BA70C0C(&qword_280435E40, MEMORY[0x277CC95F0]);
  v58 = sub_26BA9B67C();
  v34 = *(v12 + 8);
  v34(v33, v11);
  sub_26BA3E6F8(v25, &qword_280435B08);
  sub_26BA3E6F8(v27, &qword_280435B08);
  v34(v22, v11);
  sub_26BA3E6F8(v18, &qword_280435B08);
  if ((v58 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (v71)
  {
    v35 = *((*MEMORY[0x277D85000] & *v62) + 0x198);
    v36 = v71;
    v37 = v72;
    v35(v69, v36, v68 & 1, v37, &off_287C6F550);

    return;
  }

  v38 = v67;
  if (!v67)
  {
LABEL_8:

    return;
  }

  v39 = *((*MEMORY[0x277D85000] & *v72) + 0x178);
  v40 = v67;
  v41 = v64;
  v39(v40);
  v42 = v41;
  v43 = v63;
  v59(v63, v61, v11);
  v44 = v38;
  v45 = sub_26BA9AF3C();
  v46 = sub_26BA9B94C();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v73 = v48;
    *v47 = 136315394;
    sub_26BA70C0C(&unk_280435D90, MEMORY[0x277CC95F0]);
    v49 = sub_26BA9BE2C();
    v50 = v43;
    v52 = v51;
    (*(v12 + 8))(v50, v11);
    v53 = sub_26BA3DFF8(v49, v52, &v73);

    *(v47 + 4) = v53;
    *(v47 + 12) = 2080;
    swift_getErrorValue();
    v54 = sub_26BA9BE8C();
    v56 = sub_26BA3DFF8(v54, v55, &v73);

    *(v47 + 14) = v56;
    _os_log_impl(&dword_26BA33000, v45, v46, "Could not convert sticker %s: %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D68BFB0](v48, -1, -1);
    MEMORY[0x26D68BFB0](v47, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v43, v11);
  }

  (*(v65 + 8))(v42, v66);
  (*((*MEMORY[0x277D85000] & *v62) + 0x1A8))(v61);
}

void sub_26BA5DD08(void *a1, char *a2)
{
  v4 = *a2;
  v5 = sub_26BA37FBC();
  swift_beginAccess();
  *v5 = v4;
  v6 = *(v2 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_editMenuInteraction);
  if (v6)
  {
    sub_26BA3EF64(0, &qword_280435E48);
    v7 = *((*MEMORY[0x277D85000] & *a1) + 0xF0);
    v8 = v6;
    v7(v8, v9, v10, v11, v12);
    v13 = sub_26BA9BA7C();
    [v8 presentEditMenuWithConfiguration_];
  }
}

void *sub_26BA5DE7C(uint64_t a1)
{
  if (((*((*MEMORY[0x277D85000] & *v1) + 0x3D0))() & 1) != 0 && !sub_26BA9ADFC())
  {
    return sub_26BA5DF08(a1);
  }

  else
  {
    return 0;
  }
}

void *sub_26BA5DF08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26BA9AE2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26BA9AF5C();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 collectionView];
  if (result)
  {
    v12 = result;
    sub_26BA9966C();

    v13 = sub_26BA9B68C();

    v14 = sub_26BA9ADCC();
    v15 = [v12 dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:v14];

    type metadata accessor for StickerCollectionAddButtonCell();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      if (qword_280437210 != -1)
      {
        swift_once();
      }

      v18 = MEMORY[0x277D85000];
      if (byte_280437218 == 1)
      {
        v19 = v2;
        sub_26BA3EF64(0, &qword_2804360A8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DD0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_26BA9D4D0;
        sub_26BA3EF64(0, &qword_280436090);
        v21 = sub_26BA9B68C();
        v22 = objc_opt_self();
        v23 = [v22 _systemImageNamed_];

        swift_allocObject();
        swift_unknownObjectWeakInit();
        *(v20 + 32) = sub_26BA9BAFC();
        v24 = [objc_opt_self() mainBundle];
        sub_26BA9ABEC();

        v25 = sub_26BA9B68C();
        v26 = [v22 systemImageNamed_];

        v18 = MEMORY[0x277D85000];
        swift_allocObject();
        swift_unknownObjectWeakInit();
        *(v20 + 40) = sub_26BA9BAFC();
        v27 = sub_26BA9BA9C();
        (*((*v18 & *v17) + 0xA0))(v27);
      }

      else
      {
        v42[3] = type metadata accessor for StickerCollectionViewController(0);
        v42[0] = v2;
        v19 = v2;
        v36 = *((*v18 & *v17) + 0xB0);
        v37 = v2;
        v36(sel_makeStickerFromPhotoPicker, v42);
        sub_26BA3E6F8(v42, &qword_2804360D0);
      }

      (*((*v18 & *v17) + 0xB8))(v19, &off_287C6F5B8);
    }

    else
    {

      (*((*MEMORY[0x277D85000] & *v2) + 0x178))();
      (*(v5 + 16))(v7, a1, v4);
      v28 = sub_26BA9AF3C();
      v29 = sub_26BA9B94C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v42[0] = v38;
        *v30 = 136315138;
        sub_26BA70C0C(&qword_280435DC8, MEMORY[0x277CC9AF8]);
        v31 = sub_26BA9BE2C();
        v39 = v2;
        v33 = v32;
        (*(v5 + 8))(v7, v4);
        v34 = sub_26BA3DFF8(v31, v33, v42);
        v2 = v39;

        *(v30 + 4) = v34;
        _os_log_impl(&dword_26BA33000, v28, v29, "The add cell could not be dequeued. %s", v30, 0xCu);
        v35 = v38;
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x26D68BFB0](v35, -1, -1);
        MEMORY[0x26D68BFB0](v30, -1, -1);
      }

      else
      {

        (*(v5 + 8))(v7, v4);
      }

      (*(v40 + 8))(v10, v41);
      v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      (*((*MEMORY[0x277D85000] & *v17) + 0xB8))(v2, &off_287C6F5B8);
    }

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BA5E6C8(char a1)
{
  v2 = a1 & 1;
  v3 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x200))();
  if ((result & 1) != v2)
  {
    v5 = (*((*v3 & *v1) + 0x208))(v2);
    v6 = *(*((*v3 & *v1) + 0x398))(v5);
    (*(v6 + 592))();
  }

  return result;
}

id sub_26BA5E810(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26BA9AE2C();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26BA9AF5C();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 collectionView];
  if (result)
  {
    v11 = result;
    sub_26BA7B014();

    v12 = sub_26BA9B68C();

    v13 = sub_26BA9ADCC();
    v14 = [v11 dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:v13];

    type metadata accessor for StickerCollectionStickerCell();
    result = swift_dynamicCastClass();
    if (!result)
    {

      (*((*MEMORY[0x277D85000] & *v2) + 0x178))();
      v15 = v28;
      (*(v28 + 16))(v6, a1, v4);
      v16 = sub_26BA9AF3C();
      v17 = sub_26BA9B94C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v29 = v26;
        *v18 = 136315138;
        sub_26BA70C0C(&qword_280435DC8, MEMORY[0x277CC9AF8]);
        v19 = sub_26BA9BE2C();
        v25 = v7;
        v21 = v20;
        (*(v15 + 8))(v6, v4);
        v22 = sub_26BA3DFF8(v19, v21, &v29);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_26BA33000, v16, v17, "The sticker cell could not be dequeued. %s", v18, 0xCu);
        v23 = v26;
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x26D68BFB0](v23, -1, -1);
        MEMORY[0x26D68BFB0](v18, -1, -1);

        (*(v27 + 8))(v9, v25);
      }

      else
      {

        (*(v15 + 8))(v6, v4);
        (*(v27 + 8))(v9, v7);
      }

      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BA5EBF0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26BA9AE2C();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26BA9AF5C();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  v12 = sub_26BA9AD5C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x380))(v14);
  if (result)
  {
    v19 = result;
    sub_26BA9B1CC();

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      v20 = sub_26BA3E6F8(v11, &qword_280435B08);
      v21 = *v17 & *v2;
      v22 = v42;
      (*(v21 + 376))(v20);
      v23 = v40;
      v24 = v41;
      (*(v40 + 16))(v6, a1, v41);
      v25 = sub_26BA9AF3C();
      v26 = sub_26BA9B94C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v46 = v39;
        *v27 = 136315138;
        sub_26BA70C0C(&qword_280435DC8, MEMORY[0x277CC9AF8]);
        v28 = sub_26BA9BE2C();
        v30 = v29;
        (*(v23 + 8))(v6, v24);
        v31 = sub_26BA3DFF8(v28, v30, &v46);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_26BA33000, v25, v26, "Could not find a sticker that was expected at %s", v27, 0xCu);
        v32 = v39;
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x26D68BFB0](v32, -1, -1);
        MEMORY[0x26D68BFB0](v27, -1, -1);
      }

      else
      {

        (*(v23 + 8))(v6, v24);
      }

      (*(v43 + 8))(v22, v44);
      return 0;
    }

    else
    {
      v33 = (*(v13 + 32))(v16, v11, v12);
      v34 = *(*((*v17 & *v2) + 0x398))(v33);
      v35 = v45;
      v36 = (*(v34 + 536))(v16);
      if (v35)
      {
        (*(v13 + 8))(v16, v12);
      }

      else
      {
        v37 = v36;
        (*(v13 + 8))(v16, v12);

        return v37;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BA5F174()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DA8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_26BA9AE2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA9AD1C();
  v9 = objc_allocWithZone(MEMORY[0x277CCAD78]);
  v10 = sub_26BA9B68C();

  v11 = [v9 initWithUUIDString_];

  if (v11)
  {
    v12 = [v1 collectionView];
    if (v12)
    {
      v13 = v12;
      (*((*MEMORY[0x277D85000] & *v1) + 0x450))(v11);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {

        sub_26BA3E6F8(v4, &qword_280435DA8);
      }

      else
      {
        (*(v6 + 32))(v8, v4, v5);
        v14 = sub_26BA9ADCC();
        v15 = [v13 cellForItemAtIndexPath_];

        (*(v6 + 8))(v8, v5);
        if (v15)
        {
          type metadata accessor for StickerCollectionStickerCell();
          result = swift_dynamicCastClass();
          if (result)
          {
            return result;
          }
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_26BA5F41C(void *a1, uint64_t a2)
{
  v3 = v2;
  v40 = a1;
  v5 = sub_26BA9AE2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26BA9AF5C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v39 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v16 = *MEMORY[0x277D85000] & *v2;
  v37 = *(v16 + 0x178);
  v38 = v16 + 376;
  v37(v13);
  v17 = *(v6 + 16);
  v41 = a2;
  v17(v8, a2, v5);
  v18 = sub_26BA9AF3C();
  v19 = sub_26BA9B93C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36 = v9;
    v21 = v20;
    v34 = swift_slowAlloc();
    v42 = v34;
    *v21 = 136315138;
    sub_26BA70C0C(&qword_280435DC8, MEMORY[0x277CC9AF8]);
    v22 = sub_26BA9BE2C();
    v35 = v10;
    v24 = v23;
    (*(v6 + 8))(v8, v5);
    v25 = sub_26BA3DFF8(v22, v24, &v42);
    v10 = v35;

    *(v21 + 4) = v25;
    _os_log_impl(&dword_26BA33000, v18, v19, "did tap sticker at %s", v21, 0xCu);
    v26 = v34;
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x26D68BFB0](v26, -1, -1);
    v27 = v21;
    v9 = v36;
    MEMORY[0x26D68BFB0](v27, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  (*(v10 + 8))(v15, v9);
  v28 = v41;
  v29 = sub_26BA9ADCC();
  [v40 deselectItemAtIndexPath:v29 animated:1];

  v30 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v3) + 0x4A8))(v28) & 1) == 0)
  {
    v31 = (*((*v30 & *v3) + 0x4C8))(v28);
    if (v31)
    {
      v32 = v31;
      v33 = (*((*v30 & *v3) + 0x1B8))();
      if (v33)
      {
        [v33 stickerCollectionViewController:v3 didSelectSticker:v32];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

id sub_26BA5FAEC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26BA9AE2C();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26BA9AF5C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA9966C();

  v13 = sub_26BA9B68C();

  v14 = sub_26BA9ADCC();
  v15 = [a1 dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:v14];

  type metadata accessor for StickerCollectionStickerCell();
  result = swift_dynamicCastClass();
  if (!result)
  {
    v29 = v10;
    v30 = v9;

    v17 = v12;
    (*((*MEMORY[0x277D85000] & *v3) + 0x178))();
    v19 = v31;
    v18 = v32;
    (*(v31 + 16))(v8, a2, v32);
    v20 = sub_26BA9AF3C();
    v21 = sub_26BA9B94C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33 = v28;
      *v22 = 136315138;
      sub_26BA70C0C(&qword_280435DC8, MEMORY[0x277CC9AF8]);
      v23 = sub_26BA9BE2C();
      v25 = v24;
      (*(v19 + 8))(v8, v18);
      v26 = sub_26BA3DFF8(v23, v25, &v33);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_26BA33000, v20, v21, "The sticker cell could not be dequeued. %s", v22, 0xCu);
      v27 = v28;
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x26D68BFB0](v27, -1, -1);
      MEMORY[0x26D68BFB0](v22, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v8, v18);
    }

    (*(v29 + 8))(v17, v30);
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  return result;
}

uint64_t sub_26BA5FFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_26BA9AD5C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435E50);
  v13 = (*(*(v12 - 8) + 16))(a2, a1, v12);
  v14 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x3D0))(v13);
  if (result)
  {
    v16 = (*((*v14 & *v2) + 0x398))();
    (*(*v16 + 216))(v16);

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      return sub_26BA3E6F8(v7, &qword_280435B08);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_26BA9AFFC();
      if ((v17 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CF0);
        v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_26BA9D660;
        (*(v9 + 16))(v19 + v18, v11, v8);
        sub_26BA9B0AC();
      }

      return (*(v9 + 8))(v11, v8);
    }
  }

  return result;
}

uint64_t sub_26BA602F4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (((*((*MEMORY[0x277D85000] & *v3) + 0x3D0))() & 1) != 0 && !sub_26BA9ADFC())
  {
    a2 = a1;
  }

  v7 = sub_26BA9AE2C();
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, a2, v7);
}

BOOL sub_26BA6064C()
{
  v1 = sub_26BA9B42C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v11 - v7;
  (*((*MEMORY[0x277D85000] & *v0) + 0x1D0))(v6);
  (*(v2 + 104))(v5, *MEMORY[0x277D681A0], v1);
  sub_26BA70C0C(&qword_280435C60, MEMORY[0x277D681A8]);
  sub_26BA9B7CC();
  sub_26BA9B7CC();
  v9 = *(v2 + 8);
  v9(v5, v1);
  v9(v8, v1);
  return v11[1] != v11[0];
}

uint64_t sub_26BA60824()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x4F8))() & 1) == 0)
  {
    return 0;
  }

  v2 = *((*v1 & *v0) + 0x500);

  return v2();
}

id sub_26BA608D0()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [result numberOfSections];

    return (v3 > 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_26BA6092C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v18[-v7];
  v9 = *(*((*MEMORY[0x277D85000] & *v0) + 0x398))(v6);
  v10 = (*(v9 + 264))();

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addingStickerIdentifier;
  swift_beginAccess();
  sub_26BA53EF8(v1 + v11, v8, &qword_280435B08);
  v12 = sub_26BA9AD5C();
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v8, 1, v12);
  sub_26BA3E6F8(v8, &qword_280435B08);
  if (v14 != 1)
  {
    return 0;
  }

  v15 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_hiddenStickerViewIdentifier;
  swift_beginAccess();
  sub_26BA53EF8(v1 + v15, v5, &qword_280435B08);
  v16 = v13(v5, 1, v12) == 1;
  sub_26BA3E6F8(v5, &qword_280435B08);
  return v16;
}

uint64_t sub_26BA60B90(uint64_t a1)
{
  v3 = sub_26BA9B1AC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x4F0))(v5))
  {
    v9 = (*((*v8 & *v1) + 0x4E8))();
    v10 = CGPointMake(v9);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_26BA81C24(a1, sub_26BA71680, v11, v10);

    *(&v15 + 1) = v3;
    v16 = MEMORY[0x277D74D18];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
    (*(v4 + 16))(boxed_opaque_existential_1, v7, v3);
    sub_26BA9B9BC();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    return sub_26BA9B9BC();
  }
}

uint64_t sub_26BA60DD8()
{
  v1 = sub_26BA9B42C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x1D0))(v6);
  (*(v2 + 104))(v5, *MEMORY[0x277D68198], v1);
  sub_26BA70C0C(&qword_280435C60, MEMORY[0x277D681A8]);
  sub_26BA9B7CC();
  sub_26BA9B7CC();
  v10 = *(v2 + 8);
  v10(v5, v1);
  result = (v10)(v8, v1);
  if (v12[1] == v12[0])
  {
    return (*((*v9 & *v0) + 0x518))(result);
  }

  return result;
}

uint64_t sub_26BA60FF4()
{
  v0 = sub_26BA9B28C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26BA9B2BC();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26BA9B29C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA3EF64(0, &qword_280435B58);
  (*(v8 + 104))(v10, *MEMORY[0x277D851B8], v7);
  v11 = sub_26BA9BA4C();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  v13 = v18;
  *(v12 + 16) = v18;
  aBlock[4] = sub_26BA7176C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BA54094;
  aBlock[3] = &block_descriptor_54;
  v14 = _Block_copy(aBlock);
  v15 = v13;
  sub_26BA9B2AC();
  v20 = MEMORY[0x277D84F90];
  sub_26BA70C0C(&qword_280435E00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
  sub_26BA3EEB8();
  sub_26BA9BC5C();
  MEMORY[0x26D68AFF0](0, v6, v3, v14);
  _Block_release(v14);

  (*(v1 + 8))(v3, v0);
  (*(v4 + 8))(v6, v19);
}

uint64_t sub_26BA61374(void *a1)
{
  v2 = sub_26BA9AF5C();
  v15[1] = *(v2 - 8);
  v15[2] = v2;
  MEMORY[0x28223BE20](v2);
  v3 = sub_26BA9AD5C();
  v15[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26BA9B42C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StickerFactory();
  v10 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *a1) + 0x1D0))();
  v11 = sub_26BA82668(v9);
  result = (*(v7 + 8))(v9, v6);
  if (v11)
  {
    v13 = *(*((*v10 & *a1) + 0x398))(result);
    v14 = (*(v13 + 552))(v5, v11);

    return (*(v15[0] + 8))(v5, v3);
  }

  return result;
}

uint64_t sub_26BA617A8()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x3C8))();
  if (result)
  {
    v3 = *((*v1 & *v0) + 0x200);
    if (v3())
    {
      result = v3();
      if (result)
      {
        v4 = (*((*v1 & *v0) + 0x208))(0);
        v5 = *(*((*v1 & *v0) + 0x398))(v4);
        (*(v5 + 592))();
      }
    }

    else if (*(v0 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isPresentingEditMenu))
    {
      v6 = *(v0 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_editMenuInteraction);

      return [v6 dismissMenu];
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isShowingPhotosPicker) = 1;
      v7 = *((*v1 & *v0) + 0x1B0);
      v8 = v7();
      v9 = (*(*v8 + 240))(v8);

      if (v9)
      {
        v11 = (v7)(v10);
        (*(*v11 + 336))(v11);
      }

      *(v0 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController__analyticsCreationEvent) = 0;

      v13 = (v7)(v12);
      (*(*v13 + 248))(1);

      v15 = (v7)(v14);
      (*(*v15 + 144))(1);

      result = (*((*v1 & *v0) + 0x1B8))(v16);
      if (result)
      {
        [result stickerCollectionViewControllerPrepareForNewSticker:v0 fromPhotoPicker:1];

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_26BA61BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x528);

  v8(a1, sub_26BA71774, v7);
}

uint64_t sub_26BA61C98(void *a1, void (*a2)(void, void *, double, double, double, double), uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v8 - 8);
  v65 = &v59 - v9;
  v10 = sub_26BA9AD5C();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v69 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v59 - v13;
  v15 = sub_26BA9AF5C();
  v70 = *(v15 - 8);
  v71 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v68 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - v18;
  v20 = sub_26BA9B2EC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BA3EF64(0, &qword_280435B58);
  *v23 = sub_26BA9BA0C();
  (*(v21 + 104))(v23, *MEMORY[0x277D85200], v20);
  v24 = sub_26BA9B30C();
  result = (*(v21 + 8))(v23, v20);
  if (v24)
  {
    result = sub_26BA65790(a1, a2, a3);
    if (result)
    {
      v64 = a3;
      v26 = MEMORY[0x277D85000];
      v27 = (*MEMORY[0x277D85000] & *v4) + 376;
      v63 = *((*MEMORY[0x277D85000] & *v4) + 0x178);
      v62 = v27;
      v63();
      v28 = a1;
      v29 = sub_26BA9AF3C();
      v30 = sub_26BA9B92C();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v61 = a2;
        v32 = v31;
        v60 = swift_slowAlloc();
        v72[0] = v60;
        *v32 = 136315138;
        MEMORY[0x26D68AA00]();
        sub_26BA70C0C(&unk_280435D90, MEMORY[0x277CC95F0]);
        v33 = v28;
        v34 = v67;
        v35 = sub_26BA9BE2C();
        v37 = v36;
        v38 = v34;
        v28 = v33;
        (*(v66 + 8))(v14, v38);
        v39 = sub_26BA3DFF8(v35, v37, v72);

        *(v32 + 4) = v39;
        _os_log_impl(&dword_26BA33000, v29, v30, "Adding sticker %s", v32, 0xCu);
        v40 = v60;
        __swift_destroy_boxed_opaque_existential_0(v60);
        v26 = MEMORY[0x277D85000];
        MEMORY[0x26D68BFB0](v40, -1, -1);
        MEMORY[0x26D68BFB0](v32, -1, -1);
      }

      v41 = (*(v70 + 8))(v19, v71);
      v42 = *(*((*v26 & *v4) + 0x398))(v41);
      v43 = v69;
      v44 = (*(v42 + 552))(v69, v28);

      v45 = v66;
      v46 = v28;
      v47 = v65;
      v48 = v26;
      v49 = v67;
      (*(v66 + 16))(v65, v43, v67);
      v50 = *(v45 + 56);
      v50(v47, 0, 1, v49);
      v51 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addingRecentStickerIdentifier;
      swift_beginAccess();
      sub_26BA431E4(v47, v4 + v51);
      swift_endAccess();
      v52 = sub_26BA64A4C(v46);
      MEMORY[0x26D68AA00](v52);
      v50(v47, 0, 1, v49);
      v53 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_lastAddedStickerIdentifier;
      swift_beginAccess();
      sub_26BA431E4(v47, v4 + v53);
      v54 = swift_endAccess();
      v55 = *((*v48 & *v4) + 0x1B0);
      v56 = v55(v54);
      (*(*v56 + 248))(1);

      v58 = *v55(v57);
      (*(v58 + 296))(1);

      return (*(v45 + 8))(v43, v49);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BA62570(void *a1, void (*a2)(void, void *, double, double, double, double), void *a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435E60);
  MEMORY[0x28223BE20](v16 - 8);
  v81 = &v74 - v17;
  v85 = sub_26BA9AD5C();
  v88 = *(v85 - 8);
  v18 = MEMORY[0x28223BE20](v85);
  v83 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v74 - v20;
  v22 = sub_26BA9AF5C();
  v86 = *(v22 - 8);
  v87 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v82 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v74 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v27 - 8);
  v84 = &v74 - v28;
  v29 = sub_26BA9B2EC();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = (&v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BA3EF64(0, &qword_280435B58);
  *v32 = sub_26BA9BA0C();
  (*(v30 + 104))(v32, *MEMORY[0x277D85200], v29);
  v33 = sub_26BA9B30C();
  result = (*(v30 + 8))(v32, v29);
  if (v33)
  {

    v35 = sub_26BA717A0(a1, v8, a2, a3);

    if (v35)
    {
      v79 = a3;
      v80 = a2;
      v36 = v84;
      MEMORY[0x26D68AA00](result);
      v37 = *(v88 + 56);
      v38 = v85;
      v76 = v88 + 56;
      v75 = v37;
      v37(v36, 0, 1, v85);
      v39 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_lastAddedStickerIdentifier;
      swift_beginAccess();
      sub_26BA431E4(v36, v8 + v39);
      v40 = swift_endAccess();
      v41 = MEMORY[0x277D85000];
      v42 = *((*MEMORY[0x277D85000] & *v8) + 0x1B0);
      v43 = v42(v40);
      (*(*v43 + 248))(1);

      v45 = *v42(v44);
      (*(v45 + 296))(1);

      v47 = *((*v41 & *v8) + 0x178);
      v78 = (*v41 & *v8) + 376;
      v77 = v47;
      v47(v46);
      v48 = a1;
      v49 = sub_26BA9AF3C();
      v50 = sub_26BA9B92C();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v89[0] = v52;
        *v51 = 136315138;
        MEMORY[0x26D68AA00]();
        sub_26BA70C0C(&unk_280435D90, MEMORY[0x277CC95F0]);
        v53 = sub_26BA9BE2C();
        v74 = v26;
        v54 = v48;
        v56 = v55;
        (*(v88 + 8))(v21, v38);
        v57 = sub_26BA3DFF8(v53, v56, v89);
        v48 = v54;

        *(v51 + 4) = v57;
        _os_log_impl(&dword_26BA33000, v49, v50, "Adding sticker %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x26D68BFB0](v52, -1, -1);
        MEMORY[0x26D68BFB0](v51, -1, -1);

        v58 = (*(v86 + 8))(v74, v87);
      }

      else
      {

        v58 = (*(v86 + 8))(v26, v87);
      }

      v59 = v83;
      v60 = *(*((*MEMORY[0x277D85000] & *v8) + 0x398))(v58);
      v61 = (*(v60 + 552))(v59, v48);

      v62 = v88;
      v63 = v84;
      v64 = v85;
      (*(v88 + 16))(v84, v59, v85);
      v75(v63, 0, 1, v64);
      v65 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addingRecentStickerIdentifier;
      swift_beginAccess();
      sub_26BA431E4(v63, v8 + v65);
      swift_endAccess();
      LOBYTE(v89[0]) = 0;
      v66 = sub_26BA54340(v89);
      if (v66)
      {

        v67 = sub_26BA9B8CC();
        v68 = v81;
        (*(*(v67 - 8) + 56))(v81, 1, 1, v67);
        sub_26BA9B8AC();
        v69 = v48;
        v70 = v8;
        v71 = sub_26BA9B89C();
        v72 = swift_allocObject();
        v73 = MEMORY[0x277D85700];
        *(v72 + 16) = v71;
        *(v72 + 24) = v73;
        *(v72 + 32) = a4;
        *(v72 + 40) = a5;
        *(v72 + 48) = a6;
        *(v72 + 56) = a7;
        *(v72 + 64) = v69;
        *(v72 + 72) = v70;
        sub_26BA63F04(0, 0, v68, &unk_26BA9DE98, v72);
      }

      return (*(v62 + 8))(v59, v64);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BA62FD8(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 312) = a8;
  *(v9 + 320) = a9;
  *(v9 + 296) = a3;
  *(v9 + 304) = a4;
  *(v9 + 280) = a1;
  *(v9 + 288) = a2;
  sub_26BA9B8AC();
  *(v9 + 328) = sub_26BA9B89C();
  v11 = sub_26BA9B88C();
  *(v9 + 336) = v11;
  *(v9 + 344) = v10;

  return MEMORY[0x2822009F8](sub_26BA63078, v11, v10);
}

uint64_t sub_26BA63078()
{
  v45 = v0;
  v47 = *(v0 + 280);
  v48 = **&MEMORY[0x277CBF398];
  *(v0 + 240) = v47;
  if (CGRectEqualToRect(v47, v48) || (v44 = 0, v1 = sub_26BA54340(&v44), (*(v0 + 352) = v1) == 0))
  {
    v8 = 0;
  }

  else
  {
    v2 = v1;
    v3 = sub_26BA9B50C();
    v5 = v4;
    v6 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v7 = sub_26BA9ACDC();
    v8 = [v6 initWithData_];
    *(v0 + 360) = v8;

    sub_26BA3DF34(v3, v5);
    if (v8)
    {
      v9 = v8;
      sub_26BA9B5EC();
      if (sub_26BA9B5DC() >= 1)
      {
        sub_26BA9B5EC();
        if (sub_26BA9B5DC() <= 4)
        {
          sub_26BA9B5EC();
          v28 = sub_26BA9B5DC();
          if ((v28 & 0x8000000000000000) == 0)
          {
            v41 = [objc_opt_self() effectWithType_];
            *(v0 + 368) = v41;
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 272;
            *(v0 + 24) = sub_26BA63614;
            v42 = swift_continuation_init();
            *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804360C0);
            *(v0 + 80) = MEMORY[0x277D85DD0];
            *(v0 + 88) = 1107296256;
            *(v0 + 96) = sub_26BA63E2C;
            *(v0 + 104) = &block_descriptor_220;
            *(v0 + 112) = v42;
            [v41 applyToImage:v9 completion:v0 + 80];
            v28 = v0 + 16;

            return MEMORY[0x282200938](v28);
          }

          __break(1u);
          goto LABEL_27;
        }
      }
    }

    else
    {
      v9 = v2;
    }
  }

  v10 = *(v0 + 312);
  v11 = *(v0 + 320);
  v12 = *(v0 + 296);
  *(v0 + 192) = *(v0 + 280);
  *(v0 + 208) = v12;
  *(v0 + 224) = v8;
  *(v0 + 232) = v10;
  v13 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v43 = v8;
  v14 = v8;
  v15 = v10;
  v16 = [v13 init];
  v17 = MEMORY[0x277D85000];
  v18 = (*((*MEMORY[0x277D85000] & *v11) + 0x260))();
  if (v18)
  {
    v19 = v18;
    [v18 removeFromSuperview];
  }

  v20 = *(v0 + 240);
  v21 = *(v0 + 248);
  v22 = *(v0 + 256);
  v23 = *(v0 + 264);
  v24 = *(v0 + 320);
  v25 = *((*v17 & *v24) + 0x268);
  v26 = v16;
  v25(v16);
  [v26 setFrame_];
  [v26 setImage_];
  v27 = [v24 view];

  if (!v27)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return MEMORY[0x282200938](v28);
  }

  v29 = [v27 window];

  if (v29)
  {
    [v29 addSubview_];
  }

  v30 = *(v0 + 320);
  (*((*MEMORY[0x277D85000] & *v30) + 0x370))(v16);
  v28 = [v30 view];
  if (!v28)
  {
    goto LABEL_28;
  }

  v31 = v28;

  v32 = [v31 window];

  v33 = *(v0 + 320);
  if (v32)
  {

    v34 = *(v0 + 312);
    (*((*MEMORY[0x277D85000] & *v33) + 0x538))(v0 + 192);
  }

  else
  {
    v35 = *(v0 + 312);
    v36 = *(v0 + 296);
    *(v0 + 144) = *(v0 + 280);
    *(v0 + 160) = v36;
    *(v0 + 176) = v43;
    *(v0 + 184) = v35;
    v37 = *((*MEMORY[0x277D85000] & *v33) + 0x358);
    v34 = v35;
    v38 = v14;
    v37(v0 + 144);
  }

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_26BA63614()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 376) = v2;
  v3 = *(v1 + 344);
  v4 = *(v1 + 336);
  if (v2)
  {
    v5 = sub_26BA63AC4;
  }

  else
  {
    v5 = sub_26BA63744;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

void sub_26BA63744()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 352);

  v3 = *(v0 + 296);
  *(v0 + 192) = *(v0 + 280);
  v4 = *(v0 + 272);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  *(v0 + 208) = v3;
  *(v0 + 224) = v4;
  *(v0 + 232) = v6;
  v7 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v35 = v4;
  v8 = v4;
  v9 = v6;
  v10 = [v7 init];
  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v5) + 0x260))();
  if (v12)
  {
    v13 = v12;
    [v12 removeFromSuperview];
  }

  v14 = *(v0 + 240);
  v15 = *(v0 + 248);
  v16 = *(v0 + 256);
  v17 = *(v0 + 264);
  v18 = *(v0 + 320);
  v19 = *((*v11 & *v18) + 0x268);
  v20 = v10;
  v19(v10);
  [v20 setFrame_];
  [v20 setImage_];
  v21 = [v18 view];

  if (!v21)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v22 = [v21 window];

  if (v22)
  {
    [v22 addSubview_];
  }

  v23 = *(v0 + 320);
  v24 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v23) + 0x370))(v10);
  v25 = [v23 view];
  if (!v25)
  {
    goto LABEL_14;
  }

  v26 = v25;

  v27 = [v26 window];

  v28 = *(v0 + 320);
  if (v27)
  {

    v29 = *(v0 + 312);
    (*((*v24 & *v28) + 0x538))(v0 + 192);
  }

  else
  {
    v30 = *(v0 + 312);
    v31 = *(v0 + 296);
    *(v0 + 144) = *(v0 + 280);
    *(v0 + 160) = v31;
    *(v0 + 176) = v35;
    *(v0 + 184) = v30;
    v32 = *((*v24 & *v28) + 0x358);
    v29 = v30;
    v33 = v8;
    v32(v0 + 144);
  }

  v34 = *(v0 + 8);

  v34();
}

id sub_26BA63AC4()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v4 = *(v0 + 352);
  v3 = *(v0 + 360);
  swift_willThrow();

  v5 = *(v0 + 296);
  *(v0 + 192) = *(v0 + 280);
  v7 = *(v0 + 312);
  v6 = *(v0 + 320);
  *(v0 + 208) = v5;
  *(v0 + 224) = 0;
  *(v0 + 232) = v7;
  v8 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v9 = v7;
  v10 = [v8 init];
  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v6) + 0x260))();
  if (v12)
  {
    v13 = v12;
    [v12 removeFromSuperview];
  }

  v14 = *(v0 + 240);
  v15 = *(v0 + 248);
  v16 = *(v0 + 256);
  v17 = *(v0 + 264);
  v18 = *(v0 + 320);
  v19 = *((*v11 & *v18) + 0x268);
  v20 = v10;
  v19(v10);
  [v20 setFrame_];
  [v20 setImage_];
  result = [v18 view];
  if (!result)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v22 = result;
  v23 = [result window];

  if (v23)
  {
    [v23 addSubview_];
  }

  v24 = *(v0 + 320);
  v25 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v24) + 0x370))(v10);
  result = [v24 view];
  if (!result)
  {
    goto LABEL_14;
  }

  v26 = result;

  v27 = [v26 window];

  v28 = *(v0 + 320);
  if (v27)
  {

    v29 = *(v0 + 312);
    (*((*v25 & *v28) + 0x538))(v0 + 192);
  }

  else
  {
    v30 = *(v0 + 312);
    v31 = *(v0 + 296);
    *(v0 + 144) = *(v0 + 280);
    *(v0 + 160) = v31;
    *(v0 + 176) = 0;
    *(v0 + 184) = v30;
    v32 = *((*v25 & *v28) + 0x358);
    v29 = v30;
    v32(v0 + 144);
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_26BA63E2C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804360C8);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_26BA63F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435E60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26BA53EF8(a3, v25 - v10, &qword_280435E60);
  v12 = sub_26BA9B8CC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26BA3E6F8(v11, &qword_280435E60);
  }

  else
  {
    sub_26BA9B8BC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26BA9B88C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26BA9B6CC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_26BA3E6F8(a3, &qword_280435E60);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26BA3E6F8(a3, &qword_280435E60);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_26BA64204(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26BA9B28C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26BA9B2BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26BA9B2DC();
  v13 = MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 32);
  if (v17)
  {
    v34 = v13;
    v35 = v14;
    v36 = v9;
    v37 = v8;
    v38 = v5;
    v18 = *(a1 + 40);
    v19 = MEMORY[0x277D85000];
    v20 = *((*MEMORY[0x277D85000] & *v2) + 0x1B8);
    v39 = v17;
    v21 = v20();
    if (v21)
    {
      v22 = v21;
      v23 = (*((*v19 & *v2) + 0x260))();
      if (v23)
      {
        v24 = v23;
        sub_26BA3EF64(0, &qword_280435B58);
        v33 = sub_26BA9BA0C();
        sub_26BA9B2CC();
        v25 = swift_allocObject();
        v25[2] = v2;
        v25[3] = v18;
        v25[4] = v22;
        v25[5] = v24;
        v25[6] = v39;
        aBlock[4] = sub_26BA720D0;
        aBlock[5] = v25;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_26BA3D478;
        aBlock[3] = &block_descriptor_67;
        v26 = _Block_copy(aBlock);
        v39 = v39;
        v27 = v2;
        v28 = v18;
        swift_unknownObjectRetain();
        v29 = v24;

        sub_26BA9B2AC();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_26BA70C0C(&qword_280435E00, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
        sub_26BA3EEB8();
        sub_26BA9BC5C();
        v30 = v33;
        MEMORY[0x26D68AFB0](v16, v11, v7, v26);
        _Block_release(v26);
        swift_unknownObjectRelease();

        (*(v38 + 8))(v7, v4);
        (*(v36 + 8))(v11, v37);
        (*(v35 + 8))(v16, v34);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v31 = v39;
    }
  }
}

uint64_t sub_26BA646BC(void *a1, unsigned __int8 a2, void (*a3)(void, void *, double, double, double, double), uint64_t a4)
{
  v5 = v4;
  v30 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_26BA9B2EC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BA3EF64(0, &qword_280435B58);
  *v15 = sub_26BA9BA0C();
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v16 = sub_26BA9B30C();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v18 = *((*MEMORY[0x277D85000] & *v5) + 0x1B0);
    v19 = (v18)(result);
    v20 = v18();
    v21 = (*(*v20 + 160))(v20);

    (*(*v19 + 168))((v21 | a2) & 1);

    v23 = (v18)(v22);
    (*(*v23 + 248))(1);

    v25 = *(v18)(v24);
    (*(v25 + 296))(1);

    v26 = v30;
    result = sub_26BA65790(v30, a3, a4);
    if (result)
    {
      v27 = sub_26BA64A4C(v26);
      MEMORY[0x26D68AA00](v27);
      v28 = sub_26BA9AD5C();
      (*(*(v28 - 8) + 56))(v11, 0, 1, v28);
      v29 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_lastAddedStickerIdentifier;
      swift_beginAccess();
      sub_26BA431E4(v11, v5 + v29);
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BA64A4C(uint64_t a1)
{
  v95 = a1;
  v2 = sub_26BA9AF5C();
  v90 = *(v2 - 8);
  v91 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v89 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v85 = &v77 - v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435E50);
  v93 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v92 = &v77 - v6;
  v7 = sub_26BA9AD5C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v84 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v88 = &v77 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435E30);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v77 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v86 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v94 = &v77 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v77 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v77 - v24;
  v26 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addingStickerIdentifier;
  swift_beginAccess();
  v96 = v1;
  v27 = sub_26BA53EF8(v1 + v26, v25, &qword_280435B08);
  MEMORY[0x26D68AA00](v27);
  (*(v8 + 56))(v23, 0, 1, v7);
  v28 = *(v13 + 56);
  v29 = v8;
  sub_26BA53EF8(v25, v15, &qword_280435B08);
  sub_26BA53EF8(v23, &v15[v28], &qword_280435B08);
  v30 = *(v8 + 48);
  if (v30(v15, 1, v7) == 1)
  {
    sub_26BA3E6F8(v23, &qword_280435B08);
    sub_26BA3E6F8(v25, &qword_280435B08);
    if (v30(&v15[v28], 1, v7) == 1)
    {
      v78 = v30;
      v31 = sub_26BA3E6F8(v15, &qword_280435B08);
      v32 = v96;
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  sub_26BA53EF8(v15, v94, &qword_280435B08);
  if (v30(&v15[v28], 1, v7) == 1)
  {
    sub_26BA3E6F8(v23, &qword_280435B08);
    sub_26BA3E6F8(v25, &qword_280435B08);
    (*(v29 + 8))(v94, v7);
LABEL_6:
    v31 = sub_26BA3E6F8(v15, &qword_280435E30);
    v32 = v96;
    goto LABEL_7;
  }

  v78 = v30;
  v38 = v88;
  (*(v29 + 32))(v88, &v15[v28], v7);
  sub_26BA70C0C(&qword_280435E40, MEMORY[0x277CC95F0]);
  LODWORD(v83) = sub_26BA9B67C();
  v39 = *(v29 + 8);
  v39(v38, v7);
  sub_26BA3E6F8(v23, &qword_280435B08);
  sub_26BA3E6F8(v25, &qword_280435B08);
  v39(v94, v7);
  v31 = sub_26BA3E6F8(v15, &qword_280435B08);
  v32 = v96;
  if (v83)
  {
LABEL_11:
    v94 = v29;
    v80 = v7;
    v40 = *((*MEMORY[0x277D85000] & *v32) + 0x380);
    v81 = (*MEMORY[0x277D85000] & *v32) + 896;
    v82 = v40;
    result = v40(v31);
    if (!result)
    {
      __break(1u);
      goto LABEL_26;
    }

    v41 = result;
    v42 = v87;
    v79 = swift_allocBox();
    v44 = v43;
    sub_26BA9B21C();

    v45 = v92;
    v46 = v93;
    v47 = *(v93 + 16);
    v89 = (v93 + 16);
    v83 = v47;
    v48 = (v47)(v92, v44, v42);
    v49 = v88;
    MEMORY[0x26D68AA00](v48);
    sub_26BA9AFFC();
    v51 = v50;
    v52 = v49;
    v53 = v80;
    v77 = *(v94 + 8);
    v77(v52, v80);
    v54 = *(v46 + 8);
    v55 = v45;
    v93 = v46 + 8;
    v56 = v54;
    v57 = (v54)(v55, v42);
    if ((v51 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CF0);
      *(swift_allocObject() + 16) = xmmword_26BA9D660;
      MEMORY[0x26D68AA00]();
      sub_26BA9B0AC();

      v61 = v56;
      goto LABEL_22;
    }

    v88 = v44;
    v58 = (*((*MEMORY[0x277D85000] & *v96) + 0x398))(v57);
    v59 = v86;
    (*(*v58 + 216))(v58);

    if (v78(v59, 1, v53) == 1)
    {
      v60 = sub_26BA3E6F8(v59, &qword_280435B08);
      v42 = v87;
      v61 = v56;
    }

    else
    {
      v63 = v84;
      (*(v94 + 32))(v84, v59, v53);
      v64 = v92;
      v42 = v87;
      v83(v92, v88, v87);
      sub_26BA9AFFC();
      v66 = v65;
      v61 = v56;
      v56(v64, v42);
      if ((v66 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CF0);
        *(swift_allocObject() + 16) = xmmword_26BA9D660;
        MEMORY[0x26D68AA00]();
        v71 = v88;
        sub_26BA9B00C();

        v62 = (v77)(v63, v53);
        v44 = v71;
        goto LABEL_22;
      }

      v60 = (v77)(v63, v53);
    }

    v67 = v85;
    (*((*MEMORY[0x277D85000] & *v96) + 0x178))(v60);
    v68 = sub_26BA9AF3C();
    v69 = sub_26BA9B94C();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_26BA33000, v68, v69, "Could not find an appropriate sticker landing location.", v70, 2u);
      MEMORY[0x26D68BFB0](v70, -1, -1);
    }

    v62 = (*(v90 + 8))(v67, v91);
    v44 = v88;
LABEL_22:
    result = v82(v62);
    if (result)
    {
      v72 = result;
      v73 = v92;
      v83(v92, v44, v42);
      v74 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v75 = swift_allocObject();
      v76 = v79;
      *(v75 + 16) = v74;
      *(v75 + 24) = v76;

      sub_26BA9B20C();

      v61(v73, v42);
    }

LABEL_26:
    __break(1u);
    return result;
  }

LABEL_7:
  v33 = v89;
  (*((*MEMORY[0x277D85000] & *v32) + 0x178))(v31);
  v34 = sub_26BA9AF3C();
  v35 = sub_26BA9B94C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_26BA33000, v34, v35, "Another landing already in flight. We'll skip this one.", v36, 2u);
    MEMORY[0x26D68BFB0](v36, -1, -1);
  }

  return (*(v90 + 8))(v33, v91);
}

uint64_t sub_26BA65648()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435E50);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7[-v2];
  v4 = swift_projectBox();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    (*(v1 + 16))(v3, v4, v0);
    sub_26BA65EB8(v3);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

BOOL sub_26BA65790(void *a1, void (*a2)(void, void *, double, double, double, double), uint64_t a3)
{
  v71 = a2;
  v72 = a3;
  v69 = a1;
  v4 = sub_26BA9AF5C();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4);
  v70 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v60 - v10;
  v12 = sub_26BA9AD5C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v66 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v60 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v60 - v19;
  v21 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addingStickerIdentifier;
  swift_beginAccess();
  sub_26BA53EF8(v3 + v21, v11, &qword_280435B08);
  v22 = (*(v13 + 48))(v11, 1, v12);
  if (v22 == 1)
  {
    v23 = sub_26BA3E6F8(v11, &qword_280435B08);
    v24 = v3;
    MEMORY[0x26D68AA00](v23);
    v25 = *(v13 + 56);
    v25(v9, 0, 1, v12);
    swift_beginAccess();
    sub_26BA431E4(v9, v3 + v21);
    v26 = swift_endAccess();
    MEMORY[0x26D68AA00](v26);
    v25(v9, 0, 1, v12);
    v27 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_hiddenStickerViewIdentifier;
    swift_beginAccess();
    sub_26BA431E4(v9, v24 + v27);
    swift_endAccess();
    v28 = (v24 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_completionHandlerWaitingForStickerBound);
    v29 = *(v24 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_completionHandlerWaitingForStickerBound);
    v30 = v72;
    *v28 = v71;
    v28[1] = v30;

    sub_26BA36050(v29);
  }

  else
  {
    v31 = (*(v13 + 32))(v20, v11, v12);
    (*((*MEMORY[0x277D85000] & *v3) + 0x178))(v31);
    v64 = *(v13 + 16);
    v65 = v20;
    v63 = v13 + 16;
    v64(v18, v20, v12);
    v32 = v69;
    v33 = sub_26BA9AF3C();
    v34 = sub_26BA9B94C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v61 = v34;
      v36 = v35;
      v62 = swift_slowAlloc();
      v73[0] = v62;
      *v36 = 136315394;
      sub_26BA70C0C(&unk_280435D90, MEMORY[0x277CC95F0]);
      LODWORD(v69) = v22;
      v37 = sub_26BA9BE2C();
      v39 = v38;
      v40 = *(v13 + 8);
      v60 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v40(v18, v12);
      v41 = sub_26BA3DFF8(v37, v39, v73);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2080;
      v43 = v66;
      MEMORY[0x26D68AA00](v42);
      v22 = v69;
      v44 = sub_26BA9BE2C();
      v46 = v45;
      v40(v43, v12);
      v47 = sub_26BA3DFF8(v44, v46, v73);

      *(v36 + 14) = v47;
      _os_log_impl(&dword_26BA33000, v33, v61, "Already have sticker UUID %s in flight; cannot add %s", v36, 0x16u);
      v48 = v62;
      swift_arrayDestroy();
      MEMORY[0x26D68BFB0](v48, -1, -1);
      MEMORY[0x26D68BFB0](v36, -1, -1);
    }

    else
    {

      v40 = *(v13 + 8);
      v40(v18, v12);
    }

    (*(v67 + 8))(v70, v68);
    v49 = v71;
    v50 = *MEMORY[0x277CBF398];
    v51 = *(MEMORY[0x277CBF398] + 8);
    v52 = *(MEMORY[0x277CBF398] + 16);
    v53 = *(MEMORY[0x277CBF398] + 24);
    type metadata accessor for StickerCollectionViewController.AddStickerError(0);
    sub_26BA70C0C(&qword_280435E80, type metadata accessor for StickerCollectionViewController.AddStickerError);
    v54 = swift_allocError();
    v56 = v55;
    v57 = v65;
    v64(v55, v65, v12);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435D88);
    (*(*(v58 - 8) + 56))(v56, 0, 2, v58);
    v49(0, v54, v50, v51, v52, v53);

    v40(v57, v12);
  }

  return v22 == 1;
}

uint64_t sub_26BA65EB8(unint64_t a1)
{
  v2 = v1;
  v80 = a1;
  v3 = sub_26BA9AF5C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v76 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26BA9AE2C();
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x28223BE20](v6);
  v79 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v75 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v67 - v11;
  v13 = sub_26BA9AD5C();
  v81 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v73 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v72 = v67 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = v67 - v18;
  v20 = sub_26BA9B2EC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BA3EF64(0, &qword_280435B58);
  *v23 = sub_26BA9BA0C();
  (*(v21 + 104))(v23, *MEMORY[0x277D85200], v20);
  v24 = sub_26BA9B30C();
  result = (*(v21 + 8))(v23, v20);
  if (v24)
  {
    v74 = v4;
    v26 = (v2 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_completionHandlerWaitingForStickerBound);
    v27 = *(v2 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_completionHandlerWaitingForStickerBound);
    if (v27)
    {
      v71 = v3;
      v28 = v26[1];
      v29 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addingStickerIdentifier;
      swift_beginAccess();
      sub_26BA53EF8(v2 + v29, v12, &qword_280435B08);
      v30 = v81;
      v31 = *(v81 + 48);
      if (v31(v12, 1, v13) == 1)
      {
        return sub_26BA3E6F8(v12, &qword_280435B08);
      }

      v70 = v27;
      v32 = *(v30 + 32);
      v69 = v30 + 32;
      v68 = v32;
      v32(v19, v12, v13);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435E50);
      v33 = sub_26BA9AFFC();
      if (v34)
      {
        (*(v30 + 8))(v19, v13);
        return sub_26BA36050(v70);
      }

      v67[1] = v28;
      v67[0] = v33;
      sub_26BA9B0BC();
      if (LOBYTE(v82[0]) == 1)
      {
        (*(v81 + 8))(v19, v13);
        v35 = v70;
        return sub_26BA36050(v35);
      }

      v36 = sub_26BA9B05C();
      v37 = v70;
      if (v38)
      {
        (*(v81 + 8))(v19, v13);
        v35 = v37;
        return sub_26BA36050(v35);
      }

      MEMORY[0x26D68A3D0](v67[0], v36);
      v39 = *v26;
      *v26 = 0;
      v26[1] = 0;
      sub_26BA36050(v39);
      sub_26BA6692C(v82);
      if (v83)
      {
        v40 = v19;
        v41 = v76;
        (*((*MEMORY[0x277D85000] & *v2) + 0x178))();
        v42 = sub_26BA9AF3C();
        v43 = sub_26BA9B94C();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_26BA33000, v42, v43, "Cannot add new sticker: New sticker cell had no frame", v44, 2u);
          MEMORY[0x26D68BFB0](v44, -1, -1);
        }

        (*(v74 + 8))(v41, v71);
        sub_26BA67A0C();
        v45 = *MEMORY[0x277CBF398];
        v46 = *(MEMORY[0x277CBF398] + 8);
        v47 = *(MEMORY[0x277CBF398] + 16);
        v48 = *(MEMORY[0x277CBF398] + 24);
        type metadata accessor for StickerCollectionViewController.AddStickerError(0);
        sub_26BA70C0C(&qword_280435E80, type metadata accessor for StickerCollectionViewController.AddStickerError);
        v49 = swift_allocError();
        v51 = v50;
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435D88);
        (*(*(v52 - 8) + 56))(v51, 1, 2, v52);
        v37(0, v49, v45, v46, v47, v48);
        sub_26BA36050(v37);

        v19 = v40;
      }

      else
      {
        v53 = *v82;
        v54 = *&v82[1];
        v55 = *&v82[2];
        v56 = *&v82[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CF0);
        v57 = v81;
        v58 = (*(v81 + 80) + 32) & ~*(v81 + 80);
        v80 = v58 + *(v81 + 72);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_26BA9D660;
        v76 = *(v57 + 16);
        (v76)(v59 + v58, v19, v13);
        v60 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addingRecentStickerIdentifier;
        swift_beginAccess();
        v61 = v2 + v60;
        v62 = v75;
        sub_26BA53EF8(v61, v75, &qword_280435B08);
        if (v31(v62, 1, v13) == 1)
        {
          sub_26BA3E6F8(v62, &qword_280435B08);
        }

        else
        {
          v63 = v72;
          v64 = v68;
          v68(v72, v62, v13);
          v65 = v57;
          v66 = v73;
          (v76)(v73, v63, v13);
          v59 = sub_26BA4C898(1uLL, 2, 1, v59);
          (*(v65 + 8))(v63, v13);
          *(v59 + 16) = 2;
          v64(v59 + v80, v66, v13);
        }

        v37(v59, 0, v53, v54, v55, v56);
        sub_26BA36050(v37);
      }

      (*(v77 + 8))(v79, v78);
      return (*(v81 + 8))(v19, v13);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26BA66858(uint64_t a1@<X8>)
{
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x3D0))())
  {
    if (qword_280437220 != -1)
    {
      swift_once();
    }

    v3 = sub_26BA9AE2C();
    __swift_project_value_buffer(v3, qword_280437228);
    sub_26BA6692C(v7);
    v4 = v7[0];
    v5 = v7[1];
    v6 = v8;
  }

  else
  {
    v4 = 0uLL;
    v6 = 1;
    v5 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
}

void sub_26BA6692C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = sub_26BA9ADCC();
    v7 = [v5 layoutAttributesForItemAtIndexPath_];

    if (!v7)
    {
      v22 = 0uLL;
      v23 = 0uLL;
      goto LABEL_6;
    }

    [v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [v2 collectionView];
    if (v16)
    {
      v17 = v16;
      [v16 convertRect:0 toView:{v9, v11, v13, v15}];
      v25 = v18;
      v26 = v19;
      v24 = v20;
      v27 = v21;

      *&v23 = v24;
      *&v22 = v25;
      *(&v22 + 1) = v26;
      *(&v23 + 1) = v27;
LABEL_6:
      *a1 = v22;
      *(a1 + 16) = v23;
      *(a1 + 32) = v7 == 0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_26BA66A74(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  v89 = a1;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435E50);
  v81 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v85 = &v80 - v5;
  v6 = sub_26BA9AD5C();
  v90 = *(v6 - 8);
  v91 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v83 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v88 = &v80 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v80 - v14;
  v16 = sub_26BA9AF5C();
  v92 = *(v16 - 8);
  v93 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v82 = &v80 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v80 - v22;
  v24 = sub_26BA9B2EC();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = (&v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BA3EF64(0, &qword_280435B58);
  *v27 = sub_26BA9BA0C();
  (*(v25 + 104))(v27, *MEMORY[0x277D85200], v24);
  v28 = sub_26BA9B30C();
  result = (*(v25 + 8))(v27, v24);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v87 = a2;
  v30 = *((*MEMORY[0x277D85000] & *v3) + 0x178);
  v30(result);
  v31 = sub_26BA9AF3C();
  v32 = sub_26BA9B92C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_26BA33000, v31, v32, "Unhiding new sticker", v33, 2u);
    MEMORY[0x26D68BFB0](v33, -1, -1);
  }

  v34 = v92 + 8;
  v86 = *(v92 + 8);
  v86(v23, v93);
  v36 = v90;
  v35 = v91;
  (*(v90 + 56))(v15, 1, 1, v91);
  v37 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_hiddenStickerViewIdentifier;
  swift_beginAccess();
  v38 = v15;
  v39 = v36;
  sub_26BA431E4(v38, v3 + v37);
  swift_endAccess();
  v40 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addingStickerIdentifier;
  swift_beginAccess();
  sub_26BA53EF8(v3 + v40, v13, &qword_280435B08);
  if ((*(v36 + 48))(v13, 1, v35) != 1)
  {
    v92 = v34;
    v48 = *(v36 + 32);
    v49 = v88;
    v50 = v48(v88, v13, v35);
    v51 = (*((*MEMORY[0x277D85000] & *v3) + 0x398))(v50);
    v52 = v85;
    (*(*v51 + 192))(v51);

    v54 = v82;
    v30(v53);
    v55 = v83;
    v80 = *(v39 + 16);
    v80(v83, v49, v35);
    v56 = sub_26BA9AF3C();
    v57 = sub_26BA9B92C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v94 = v59;
      *v58 = 136315138;
      sub_26BA70C0C(&unk_280435D90, MEMORY[0x277CC95F0]);
      v60 = sub_26BA9BE2C();
      v61 = v35;
      v63 = v62;
      v64 = v55;
      v65 = *(v90 + 8);
      v65(v64, v61);
      v66 = sub_26BA3DFF8(v60, v63, &v94);

      *(v58 + 4) = v66;
      _os_log_impl(&dword_26BA33000, v56, v57, "Reconfiguring new sticker at %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      v67 = v59;
      v39 = v90;
      MEMORY[0x26D68BFB0](v67, -1, -1);
      v68 = v58;
      v52 = v85;
      MEMORY[0x26D68BFB0](v68, -1, -1);
    }

    else
    {

      v69 = v55;
      v65 = *(v39 + 8);
      v65(v69, v35);
    }

    v86(v54, v93);
    v70 = v88;
    v71 = v84;
    sub_26BA9AFFC();
    if ((v72 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CF0);
      v73 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_26BA9D660;
      v80((v74 + v73), v70, v91);
      sub_26BA9B0AC();
    }

    v75 = (v3 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_completionHandlerWaitingForStickerDisplay);
    v76 = *(v3 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_completionHandlerWaitingForStickerDisplay);
    v77 = v87;
    *v75 = v89;
    v75[1] = v77;

    v78 = sub_26BA36050(v76);
    result = (*((*MEMORY[0x277D85000] & *v3) + 0x380))(v78);
    if (result)
    {
      v79 = result;
      sub_26BA9B20C();

      (*(v81 + 8))(v52, v71);
      return (v65)(v70, v91);
    }

LABEL_17:
    __break(1u);
    return result;
  }

  v41 = sub_26BA3E6F8(v13, &qword_280435B08);
  v30(v41);
  v42 = sub_26BA9AF3C();
  v43 = sub_26BA9B92C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_26BA33000, v42, v43, "Missing new sticker identifier", v44, 2u);
    MEMORY[0x26D68BFB0](v44, -1, -1);
  }

  v86(v19, v93);
  v45 = (v3 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_completionHandlerWaitingForStickerDisplay);
  v46 = *(v3 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_completionHandlerWaitingForStickerDisplay);
  *v45 = 0;
  v45[1] = 0;
  v47 = sub_26BA36050(v46);
  return v89(v47);
}

uint64_t sub_26BA6742C()
{
  v1 = v0;
  v2 = sub_26BA9AF5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_26BA9B2EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BA3EF64(0, &qword_280435B58);
  *v12 = sub_26BA9BA0C();
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v13 = sub_26BA9B30C();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v15 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addingStickerIdentifier;
    swift_beginAccess();
    sub_26BA53EF8(v1 + v15, v8, &qword_280435B08);
    v16 = MEMORY[0x277D85000];
    v17 = (*((*MEMORY[0x277D85000] & *v1) + 0x340))(v8);
    if ((*(v1 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isShowingPhotosPicker) & 1) == 0)
    {
      (*((*v16 & *v1) + 0x5B0))(v17);
    }

    v18 = sub_26BA67A0C();
    (*((*v16 & *v1) + 0x178))(v18);
    v19 = sub_26BA9AF3C();
    v20 = sub_26BA9B92C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26BA33000, v19, v20, "Adding new sticker finished; wobbling", v21, 2u);
      MEMORY[0x26D68BFB0](v21, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26BA677C0(double a1)
{
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    if (qword_280437220 != -1)
    {
      swift_once();
    }

    v5 = sub_26BA9AE2C();
    __swift_project_value_buffer(v5, qword_280437228);
    v6 = sub_26BA9ADCC();
    [v4 stk:v6 performRippleAnimationAtIndexPath:a1 delay:?];
  }

  else
  {
    __break(1u);
  }
}

void sub_26BA67894(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = [v4 collectionView];
  if (v9)
  {
    v10 = v9;
    if (qword_280437220 != -1)
    {
      swift_once();
    }

    v11 = sub_26BA9AE2C();
    __swift_project_value_buffer(v11, qword_280437228);
    v12 = sub_26BA9ADCC();
    v14 = [v10 cellForItemAtIndexPath_];

    if (v14)
    {
      type metadata accessor for StickerCollectionStickerCell();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        (*((*MEMORY[0x277D85000] & *v13) + 0x1C8))(a1, a2, a3, a4 & 1);
      }
    }
  }
}

uint64_t sub_26BA67A0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = (v0 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_completionHandlerWaitingForStickerBound);
  v5 = *(v0 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_completionHandlerWaitingForStickerBound);
  *v4 = 0;
  v4[1] = 0;
  sub_26BA36050(v5);
  v6 = (v0 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_completionHandlerWaitingForStickerDisplay);
  v7 = *(v0 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_completionHandlerWaitingForStickerDisplay);
  *v6 = 0;
  v6[1] = 0;
  sub_26BA36050(v7);
  v8 = sub_26BA9AD5C();
  v9 = *(*(v8 - 8) + 56);
  v9(v3, 1, 1, v8);
  v10 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_hiddenStickerViewIdentifier;
  swift_beginAccess();
  sub_26BA431E4(v3, v0 + v10);
  swift_endAccess();
  v9(v3, 1, 1, v8);
  v11 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addingStickerIdentifier;
  swift_beginAccess();
  sub_26BA431E4(v3, v0 + v11);
  swift_endAccess();
  v9(v3, 1, 1, v8);
  v12 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addingRecentStickerIdentifier;
  swift_beginAccess();
  sub_26BA431E4(v3, v0 + v12);
  return swift_endAccess();
}

uint64_t sub_26BA67BC8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_26BA9B28C();
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26BA9B2BC();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26BA9ABAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA3EF64(0, &qword_280435B58);
  v20 = sub_26BA9BA0C();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  (*(v9 + 32))(v15 + v13, v11, v8);
  *(v15 + v14) = ObjectType;
  aBlock[4] = sub_26BA722C0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BA3D478;
  aBlock[3] = &block_descriptor_74;
  v16 = _Block_copy(aBlock);

  sub_26BA9B2AC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26BA70C0C(&qword_280435E00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
  sub_26BA3EEB8();
  sub_26BA9BC5C();
  v17 = v20;
  MEMORY[0x26D68AFF0](0, v7, v4, v16);
  _Block_release(v16);

  (*(v24 + 8))(v4, v2);
  return (*(v22 + 8))(v7, v23);
}

uint64_t sub_26BA67F90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435D08);
    v2 = sub_26BA9BDEC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_26BA3ED78(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_26BA410F4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_26BA410F4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_26BA410F4(v31, v32);
    result = sub_26BA9BC7C();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_26BA410F4(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_26BA68298(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t), void (*a6)(char *))
{
  v10 = a4(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  a5(a3);
  v14 = a1;
  a6(v13);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_26BA68398()
{
  v1 = v0;
  v2 = sub_26BA9AF5C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x178))(v4);
  v8 = sub_26BA9AF3C();
  v9 = sub_26BA9B92C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26BA33000, v8, v9, "Photos picker did fully resign - showMenuForCreatedStickerIfNeeded", v10, 2u);
    MEMORY[0x26D68BFB0](v10, -1, -1);
  }

  v11 = (*(v3 + 8))(v6, v2);
  return (*((*v7 & *v1) + 0x5B0))(v11);
}

id sub_26BA68564()
{
  v1 = v0;
  v42 = sub_26BA9AF5C();
  v2 = *(v42 - 8);
  v3 = MEMORY[0x28223BE20](v42);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v41 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  v13 = sub_26BA9AD5C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x338))(v15);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v19 = sub_26BA3E6F8(v12, &qword_280435B08);
    (*((*v18 & *v0) + 0x178))(v19);
    v20 = sub_26BA9AF3C();
    v21 = sub_26BA9B92C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26BA33000, v20, v21, "No lastAddedStickerIdentifier, not presenting callout menu", v22, 2u);
      MEMORY[0x26D68BFB0](v22, -1, -1);
    }

    return (*(v2 + 8))(v5, v42);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    result = [v0 collectionView];
    if (result)
    {
      v24 = result;
      v25 = [result visibleCells];

      sub_26BA3EF64(0, &qword_280435E68);
      v26 = sub_26BA9B7FC();

      MEMORY[0x28223BE20](v27);
      *(&v41 - 2) = v17;
      v28 = sub_26BA54584(sub_26BA72540, (&v41 - 4), v26);

      if (v28 && (type metadata accessor for StickerCollectionStickerCell(), (v29 = swift_dynamicCastClass()) != 0))
      {
        v30 = v29;
        v31 = sub_26BA37FBC();
        swift_beginAccess();
        *v31 = 0;
        v32 = *(v1 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_editMenuInteraction);
        v33 = MEMORY[0x277D85000];
        if (v32)
        {
          sub_26BA3EF64(0, &qword_280435E48);
          v45 = 0;
          v43 = 0u;
          v44 = 0u;
          v34 = *((*v33 & *v30) + 0xF0);
          v35 = v32;
          v34();
          v33 = MEMORY[0x277D85000];
          v36 = sub_26BA9BA7C();
          [v35 presentEditMenuWithConfiguration_];
        }

        v37 = v41;
        (*(v14 + 56))(v41, 1, 1, v13);
        (*((*v33 & *v1) + 0x340))(v37);
      }

      else
      {
        (*((*MEMORY[0x277D85000] & *v1) + 0x178))(v29);
        v38 = sub_26BA9AF3C();
        v39 = sub_26BA9B92C();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_26BA33000, v38, v39, "Sticker not yet visible that needs menu presentation", v40, 2u);
          MEMORY[0x26D68BFB0](v40, -1, -1);
        }

        (*(v2 + 8))(v7, v42);
      }

      return (*(v14 + 8))(v17, v13);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

BOOL sub_26BA68BB8(void **a1, uint64_t a2)
{
  v4 = sub_26BA9AD5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435E30);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = *a1;
  type metadata accessor for StickerCollectionStickerCell();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    return 0;
  }

  v36 = v7;
  v21 = *MEMORY[0x277D85000] & *v20;
  v37 = v8;
  v22 = v10;
  v23 = v4;
  v24 = a2;
  v25 = *(v21 + 168);
  v38 = v19;
  v25();
  v26 = v24;
  v27 = v23;
  v28 = v22;
  (*(v5 + 16))(v16, v26, v27);
  (*(v5 + 56))(v16, 0, 1, v27);
  v29 = *(v37 + 48);
  sub_26BA53EF8(v18, v28, &qword_280435B08);
  sub_26BA53EF8(v16, v28 + v29, &qword_280435B08);
  v30 = *(v5 + 48);
  if (v30(v28, 1, v27) != 1)
  {
    v31 = v39;
    sub_26BA53EF8(v28, v39, &qword_280435B08);
    if (v30(v28 + v29, 1, v27) != 1)
    {
      v33 = v36;
      (*(v5 + 32))(v36, v28 + v29, v27);
      sub_26BA70C0C(&qword_280435E40, MEMORY[0x277CC95F0]);
      v34 = sub_26BA9B67C();

      v35 = *(v5 + 8);
      v35(v33, v27);
      sub_26BA3E6F8(v16, &qword_280435B08);
      sub_26BA3E6F8(v18, &qword_280435B08);
      v35(v31, v27);
      sub_26BA3E6F8(v28, &qword_280435B08);
      return (v34 & 1) != 0;
    }

    sub_26BA3E6F8(v16, &qword_280435B08);
    sub_26BA3E6F8(v18, &qword_280435B08);
    (*(v5 + 8))(v31, v27);
LABEL_7:
    sub_26BA3E6F8(v28, &qword_280435E30);
    return 0;
  }

  sub_26BA3E6F8(v16, &qword_280435B08);
  sub_26BA3E6F8(v18, &qword_280435B08);
  if (v30(v28 + v29, 1, v27) != 1)
  {
    goto LABEL_7;
  }

  sub_26BA3E6F8(v28, &qword_280435B08);
  return 1;
}

id StickerCollectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id StickerCollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26BA9B68C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void (*sub_26BA69388(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & **v1) + 0x170))();
  return sub_26BA69434;
}

void sub_26BA69434(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

id sub_26BA6947C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26BA9AF5C();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435E50);
  v37 = *(v39 - 8);
  v6 = *(v37 + 64);
  v7 = MEMORY[0x28223BE20](v39);
  v8 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v32 - v9;
  v10 = sub_26BA9B42C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x277D85000] & *v1) + 0x1D0))(v12);
  sub_26BA70C0C(&qword_280435C60, MEMORY[0x277D681A8]);
  sub_26BA9B7CC();
  sub_26BA9B7CC();
  result = (*(v11 + 8))(v14, v10);
  if (v41 == v40)
  {
    result = [v1 collectionView];
    if (result)
    {
      v16 = result;
      v17 = [result numberOfSections];

      (*(*a1 + 192))();
      v18 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v2) + 0x4E0))(v8);
      v33 = *(v37 + 8);
      v19 = v33(v8, v39);
      v20 = v34;
      (*((*v18 & *v2) + 0x178))(v19);
      v21 = sub_26BA9AF3C();
      v22 = sub_26BA9B92C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_26BA33000, v21, v22, "Applying snapshot", v23, 2u);
        MEMORY[0x26D68BFB0](v23, -1, -1);
      }

      v24 = (*(v35 + 8))(v20, v36);
      result = (*((*v18 & *v2) + 0x380))(v24);
      if (result)
      {
        v25 = result;
        LODWORD(v36) = v17 != 0;
        v26 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v27 = v37;
        v28 = v38;
        v29 = v39;
        (*(v37 + 16))(v8, v38, v39);
        v30 = (*(v27 + 80) + 24) & ~*(v27 + 80);
        v31 = swift_allocObject();
        *(v31 + 16) = v26;
        (*(v27 + 32))(v31 + v30, v8, v29);

        sub_26BA9B20C();

        v33(v28, v29);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_26BA69A28(uint64_t a1, unint64_t a2)
{
  v3 = sub_26BA9B25C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26BA9AF5C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x178))();
    v13 = sub_26BA9AF3C();
    v14 = sub_26BA9B92C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v21 = v3;
      v16 = a2;
      v17 = v15;
      *v15 = 0;
      _os_log_impl(&dword_26BA33000, v13, v14, "Finished applying snapshot", v15, 2u);
      v18 = v17;
      a2 = v16;
      v3 = v21;
      MEMORY[0x26D68BFB0](v18, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    v19 = [v12 _bridgedContentUnavailableConfigurationState];
    sub_26BA9B24C();

    v20 = sub_26BA9B23C();
    (*(v4 + 8))(v6, v3);
    [v12 _bridgedUpdateContentUnavailableConfigurationUsingState_];

    sub_26BA65EB8(a2);
  }
}

void *sub_26BA69D20(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435E50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *((*MEMORY[0x277D85000] & *result) + 0x380);
    result = v9();
    if (result)
    {
      v10 = result;
      sub_26BA9B21C();

      v11 = sub_26BA9AFFC();
      if ((v12 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CF0);
        v13 = sub_26BA9AD5C();
        v14 = *(v13 - 8);
        v19 = a2;
        v15 = v14;
        v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_26BA9D660;
        (*(v15 + 16))(v17 + v16, v19, v13);
        sub_26BA9B0AC();
      }

      result = (v9)(v11);
      if (result)
      {
        v18 = result;
        sub_26BA9B20C();

        return (*(v4 + 8))(v6, v3);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall StickerCollectionViewController.avtStickerRecentStoreDidChange()()
{
  v0 = sub_26BA9B28C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26BA9B2BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA3EF64(0, &qword_280435B58);
  v8 = sub_26BA9BA0C();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_26BA72A48;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BA3D478;
  aBlock[3] = &block_descriptor_82;
  v10 = _Block_copy(aBlock);

  sub_26BA9B2AC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26BA70C0C(&qword_280435E00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
  sub_26BA3EEB8();
  sub_26BA9BC5C();
  MEMORY[0x26D68AFF0](0, v7, v3, v10);
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
}

Swift::Void __swiftcall StickerCollectionViewController.collectionView(_:prefetchItemsAt:)(UICollectionView *_, Swift::OpaquePointer prefetchItemsAt)
{
  v4 = *(*((*MEMORY[0x277D85000] & *v2) + 0x398))(_);
  (*(v4 + 504))(prefetchItemsAt._rawValue);
}

uint64_t sub_26BA6A604()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isPresentingEditMenu);
  if (v1 == 1)
  {
    [*(v0 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_editMenuInteraction) dismissMenu];
  }

  return v1 ^ 1u;
}

uint64_t sub_26BA6A68C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  result = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_editMenuInteraction);
  if (v7)
  {
    v8 = MEMORY[0x277D85000];
    v9 = *((*MEMORY[0x277D85000] & *v1) + 0x418);
    v10 = v7;
    v11 = v9();
    if (v11)
    {
      (*(*v11 + 576))(v11);
    }

    (*((*v8 & *a1) + 0xA8))([v10 dismissMenu]);
    sub_26BA6A818(v6);

    return sub_26BA3E6F8(v6, &qword_280435B08);
  }

  return result;
}

uint64_t sub_26BA6A818(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_26BA9AD5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA53EF8(a1, v5, &qword_280435B08);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_26BA3E6F8(v5, &qword_280435B08);
  }

  v11 = (*(v7 + 32))(v9, v5, v6);
  v12 = (*((*MEMORY[0x277D85000] & *v1) + 0x398))(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CF0);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26BA9D660;
  (*(v7 + 16))(v14 + v13, v9, v6);
  (*(*v12 + 600))(v14);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_26BA6AAA8(void *a1)
{
  v3 = sub_26BA9AF5C();
  v29[2] = *(v3 - 8);
  v29[3] = v3;
  MEMORY[0x28223BE20](v3);
  v29[1] = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26BA9AD5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v29 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_editMenuInteraction);
  v17 = MEMORY[0x277D85000];
  if (v16)
  {
    v30 = v8;
    v31 = v5;
    v18 = v6;
    v19 = *((*MEMORY[0x277D85000] & *v1) + 0x418);
    v20 = v16;
    v21 = v19();
    if (v21)
    {
      (*(*v21 + 576))(v21);
    }

    v22 = [v20 dismissMenu];
    v23 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *a1) + 0xA8))(v22);
    sub_26BA6A818(v15);

    v17 = v23;
    v13 = sub_26BA3E6F8(v15, &qword_280435B08);
    v6 = v18;
    v8 = v30;
    v5 = v31;
  }

  result = (*((*v17 & *v1) + 0x1B8))(v13);
  if (result)
  {
    v25 = result;
    (*((*v17 & *a1) + 0xA8))();
    if ((*(v6 + 48))(v12, 1, v5) == 1)
    {
      swift_unknownObjectRelease();
      return sub_26BA3E6F8(v12, &qword_280435B08);
    }

    else
    {
      v26 = (*(v6 + 32))(v8, v12, v5);
      v27 = *(*((*v17 & *v1) + 0x398))(v26);
      v28 = (*(v27 + 536))(v8);

      if (v28)
      {
        [v25 stickerCollectionViewController:v1 didSelectSticker:v28];
        swift_unknownObjectRelease();

        return (*(v6 + 8))(v8, v5);
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_26BA6B0E4(uint64_t a1)
{
  v3 = sub_26BA9AF5C();
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DA8);
  MEMORY[0x28223BE20](v6 - 8);
  v76 = &v73 - v7;
  v77 = sub_26BA9AE2C();
  v80 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v81 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v73 - v10;
  v12 = sub_26BA9AD5C();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v73 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v73 - v18;
  v20 = a1;
  v22 = v21;
  v24 = v23;
  sub_26BA53EF8(v20, v11, &qword_280435B08);
  if ((*(v24 + 48))(v11, 1, v22) == 1)
  {
    v25 = sub_26BA3E6F8(v11, &qword_280435B08);
    (*((*MEMORY[0x277D85000] & *v1) + 0x178))(v25);
    v26 = sub_26BA9AF3C();
    v27 = sub_26BA9B93C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26BA33000, v26, v27, "Attempted to remove a sticker without an identifier. Nothing to do.", v28, 2u);
      MEMORY[0x26D68BFB0](v28, -1, -1);
    }

    return (*(v78 + 8))(v5, v79);
  }

  v30 = *(v24 + 32);
  v30(v19, v11, v22);
  v78 = v24;
  v31 = v24 + 16;
  v32 = *(v24 + 16);
  v32(v17, v19, v22);
  v75 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32(v75, v17, v22);
  v33 = (*(v31 + 64) + 24) & ~*(v31 + 64);
  v34 = swift_allocObject();
  *(v34 + 16) = v1;
  v79 = v22;
  v30((v34 + v33), v17, v22);
  v35 = MEMORY[0x277D85000];
  v36 = *((*MEMORY[0x277D85000] & *v1) + 0x380);
  v37 = v1;
  v38 = v36();
  if (!v38)
  {
    (*(v78 + 8))(v75, v79);
    __break(1u);
    goto LABEL_19;
  }

  v39 = v38;
  v40 = v76;
  sub_26BA9B22C();

  v41 = v80;
  v42 = v77;
  if ((*(v80 + 48))(v40, 1, v77) == 1)
  {
    sub_26BA3E6F8(v40, &qword_280435DA8);
    v43 = v75;
    sub_26BA6B9BC(v37, v75);

    v44 = *(v78 + 8);
    v45 = v43;
    v46 = v79;
    v44(v45, v79);
    return (v44)(v19, v46);
  }

  v74 = v19;
  (*(v41 + 32))(v81, v40, v42);
  sub_26BA6692C(v82);
  if ((v83 & 1) == 0)
  {
    v47 = *v82;
    v48 = *&v82[1];
    v49 = *&v82[2];
    v50 = *&v82[3];
    v51 = [v37 view];
    if (!v51)
    {
LABEL_20:
      result = (*(v78 + 8))(v75, v79);
      __break(1u);
      return result;
    }

    v52 = v51;
    v53 = [v51 window];

    if (v53)
    {
      type metadata accessor for PoofAnimationView();
      v54 = sub_26BA91618(8, v47, v48, v49, v50);
      [v53 addSubview_];
      v55 = swift_allocObject();
      *(v55 + 16) = v54;
      v56 = *((*v35 & *v54) + 0xC0);
      v57 = v54;
      v56(sub_26BA72AF8, v55);

      v41 = v80;
    }
  }

  v58 = [v37 collectionView];
  if (!v58)
  {
LABEL_19:
    (*(v78 + 8))(v75, v79);
    __break(1u);
    goto LABEL_20;
  }

  v59 = v58;
  v60 = sub_26BA9ADCC();
  v61 = [v59 cellForItemAtIndexPath_];

  v62 = v75;
  if (v61)
  {
    type metadata accessor for StickerCollectionStickerCell();
    v63 = swift_dynamicCastClass();
    if (v63)
    {
      v64 = v63;
      v65 = *(v78 + 8);
      v66 = v62;
      v67 = v79;
      v65(v66, v79);
      v68 = swift_allocObject();
      *(v68 + 16) = sub_26BA72AE0;
      *(v68 + 24) = v34;
      v69 = *((*v35 & *v64) + 0x1B8);

      v69(sub_26BA52A38, v68);

      (*(v80 + 8))(v81, v42);
      return (v65)(v74, v67);
    }
  }

  sub_26BA6B9BC(v37, v62);

  (*(v41 + 8))(v81, v42);
  v70 = *(v78 + 8);
  v71 = v62;
  v72 = v79;
  v70(v71, v79);
  return (v70)(v74, v72);
}

uint64_t sub_26BA6B9BC(uint64_t a1, uint64_t a2)
{
  v21[1] = a1;
  v22 = a2;
  v23 = sub_26BA9B28C();
  v26 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26BA9B2BC();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26BA9AD5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_26BA9B29C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA3EF64(0, &qword_280435B58);
  (*(v11 + 104))(v13, *MEMORY[0x277D851B8], v10);
  v21[0] = sub_26BA9BA4C();
  (*(v11 + 8))(v13, v10);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v7);
  v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  (*(v8 + 32))(v16 + v15, v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  aBlock[4] = sub_26BA76CF8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BA54094;
  aBlock[3] = &block_descriptor_200;
  v17 = _Block_copy(aBlock);

  sub_26BA9B2AC();
  v27 = MEMORY[0x277D84F90];
  sub_26BA70C0C(&qword_280435E00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
  sub_26BA3EEB8();
  v18 = v23;
  sub_26BA9BC5C();
  v19 = v21[0];
  MEMORY[0x26D68AFF0](0, v6, v3, v17);
  _Block_release(v17);

  (*(v26 + 8))(v3, v18);
  (*(v24 + 8))(v6, v25);
}

void sub_26BA6BE34(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v2 = sub_26BA9AF5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26BA9AD5C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435E30);
  MEMORY[0x28223BE20](v12);
  v14 = v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v40 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v38 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v38[0] = v14;
    v38[1] = v10;
    v38[2] = v5;
    v38[3] = v3;
    v38[4] = v2;
    v22 = (*((*MEMORY[0x277D85000] & *Strong) + 0x398))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CF0);
    v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_26BA9D660;
    v25 = *(v7 + 16);
    v25(v24 + v23, v41, v6);
    (*(*v22 + 568))(v24);

    v25(v19, v41, v6);
    (*(v7 + 56))(v19, 0, 1, v6);
    v26 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_lastAddedStickerIdentifier;
    swift_beginAccess();
    v27 = *(v12 + 48);
    v28 = v38[0];
    sub_26BA53EF8(v19, v38[0], &qword_280435B08);
    sub_26BA53EF8(v21 + v26, v28 + v27, &qword_280435B08);
    v29 = *(v7 + 48);
    if (v29(v28, 1, v6) == 1)
    {
      sub_26BA3E6F8(v19, &qword_280435B08);
      v30 = v29(v28 + v27, 1, v6);
      v31 = MEMORY[0x277D85000];
      if (v30 == 1)
      {
        v32 = sub_26BA3E6F8(v28, &qword_280435B08);
LABEL_9:
        v37 = (*((*v31 & *v21) + 0x1B0))(v32);
        (*(*v37 + 224))(1);

        goto LABEL_10;
      }
    }

    else
    {
      v33 = v40;
      sub_26BA53EF8(v28, v40, &qword_280435B08);
      v34 = v29(v28 + v27, 1, v6);
      v31 = MEMORY[0x277D85000];
      if (v34 != 1)
      {
        v35 = v39;
        (*(v7 + 32))(v39, v28 + v27, v6);
        sub_26BA70C0C(&qword_280435E40, MEMORY[0x277CC95F0]);
        LODWORD(v41) = sub_26BA9B67C();
        v36 = *(v7 + 8);
        v36(v35, v6);
        sub_26BA3E6F8(v19, &qword_280435B08);
        v36(v33, v6);
        v32 = sub_26BA3E6F8(v28, &qword_280435B08);
        if (v41)
        {
          goto LABEL_9;
        }

LABEL_10:

        return;
      }

      sub_26BA3E6F8(v19, &qword_280435B08);
      (*(v7 + 8))(v33, v6);
    }

    sub_26BA3E6F8(v28, &qword_280435E30);
    goto LABEL_10;
  }
}

void *sub_26BA6C6DC(void *a1)
{
  v2 = v1;
  v4 = sub_26BA9B46C();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_26BA9AD5C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x1B8))(v12);
  if (result)
  {
    v32 = result;
    (*((*v15 & *a1) + 0xA8))();
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      swift_unknownObjectRelease();
      sub_26BA3E6F8(v9, &qword_280435B08);
    }

    else
    {
      v17 = (*(v11 + 32))(v14, v9, v10);
      v18 = *v15 & *v1;
      v19 = v10;
      v20 = v14;
      v21 = (*(v18 + 920))(v17);
      v22 = v33;
      (*(v33 + 104))(v6, *MEMORY[0x277D681C0], v4);
      v23 = (*(*v21 + 544))(v20, v6);
      v31 = v19;
      (*(v22 + 8))(v6, v4);

      if (v23)
      {
        v24 = swift_allocObject();
        *(v24 + 16) = 0;
        v25 = dispatch_semaphore_create(0);
        v26 = swift_allocObject();
        *(v26 + 16) = v24;
        *(v26 + 24) = v25;
        aBlock[4] = sub_26BA72B08;
        aBlock[5] = v26;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_26BA3D4BC;
        aBlock[3] = &block_descriptor_100;
        v27 = _Block_copy(aBlock);

        v28 = v25;

        [v32 stickerCollectionViewController:v2 requestsMSStickerFromSticker:v23 completionHandler:v27];
        _Block_release(v27);
        sub_26BA9BA5C();

        swift_unknownObjectRelease();

        (*(v11 + 8))(v20, v31);
        swift_beginAccess();
        v29 = *(v24 + 16);
        v30 = v29;

        return v29;
      }

      (*(v11 + 8))(v20, v31);
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

void sub_26BA6CC10(unsigned __int8 *a1, void *a2)
{
  v3 = v2;
  v6 = sub_26BA9B46C();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v63[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_26BA9AF5C();
  v10 = *(v9 - 8);
  v77 = v9;
  v78 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v73 = &v63[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v71 = &v63[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v63[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v69 = &v63[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v21 = &v63[-v20];
  v22 = sub_26BA9AD5C();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v63[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = *a1;
  v28 = MEMORY[0x277D85000];
  v29 = *((*MEMORY[0x277D85000] & *a2) + 0xA8);
  v72 = a2;
  v29(v24);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_26BA3E6F8(v21, &qword_280435B08);
    return;
  }

  v64 = v27;
  v68 = v23;
  v30 = *(v23 + 32);
  v70 = v22;
  v31 = v30(v26, v21, v22);
  v32 = *v28 & *v3;
  v33 = *(v32 + 0x178);
  v74 = v3;
  v65 = v33;
  v66 = v32 + 376;
  (v33)(v31);
  v34 = sub_26BA9AF3C();
  v35 = sub_26BA9B96C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_26BA33000, v34, v35, "Updating Sticker role", v36, 2u);
    MEMORY[0x26D68BFB0](v36, -1, -1);
  }

  v67 = *(v78 + 8);
  v37 = v67(v16, v77);
  v38 = *((*v28 & *v74) + 0x398);
  v39 = v38(v37);
  v40 = v75;
  v41 = v76;
  (*(v75 + 104))(v8, *MEMORY[0x277D681C0], v76);
  v42 = (*(*v39 + 544))(v26, v8);
  (*(v40 + 8))(v8, v41);

  if (!v42)
  {
LABEL_11:
    (*(v68 + 8))(v26, v70);
    return;
  }

  LOBYTE(v81[0]) = v64;
  v43 = sub_26BA54340(v81);
  if (!v43)
  {
    v48 = v71;
    v65();
    v49 = sub_26BA9AF3C();
    v50 = sub_26BA9B94C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v81[0] = v52;
      *v51 = 136315138;
      LOBYTE(v79) = v64;
      v53 = StickerRole.rawValue.getter();
      v55 = sub_26BA3DFF8(v53, v54, v81);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_26BA33000, v49, v50, "Unable to get representation for role %s)", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x26D68BFB0](v52, -1, -1);
      MEMORY[0x26D68BFB0](v51, -1, -1);

      v67(v48, v77);
      (*(v68 + 8))(v26, v70);
      return;
    }

    v67(v48, v77);
    goto LABEL_11;
  }

  v44 = v43;
  v71 = v26;
  v45 = objc_opt_self();
  v46 = *(v72 + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerView);
  [v45 clearCachedPreviewsForStickerView_];
  v47 = sub_26BA9B59C();
  v56 = v38(v47);
  (*(*v56 + 584))(v42);

  v58 = v69;
  MEMORY[0x26D68AA00](v57);
  v59 = v68;
  (*(v68 + 56))(v58, 0, 1, v70);
  sub_26BA6A818(v58);
  sub_26BA3E6F8(v58, &qword_280435B08);
  sub_26BA7FA78(v46);
  v83 = v64;
  v82 = 1;
  sub_26BA72B64();
  sub_26BA9B7CC();
  sub_26BA9B7CC();
  if (v81[0] == v79 && v81[1] == v80)
  {

    v60 = v71;
    v61 = MEMORY[0x277D85000];
LABEL_16:
    (*((*v61 & *v72) + 0x1C8))(0, 0, 0, 1);

    (*(v59 + 8))(v60, v70);
    return;
  }

  v62 = sub_26BA9BE4C();

  v60 = v71;
  v61 = MEMORY[0x277D85000];
  if (v62)
  {
    goto LABEL_16;
  }

  (*(v59 + 8))(v71, v70);
}

uint64_t sub_26BA6D690()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - v2;
  MEMORY[0x26D68AA00](v1);
  v4 = sub_26BA9AD5C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  sub_26BA6A818(v3);
  return sub_26BA3E6F8(v3, &qword_280435B08);
}

uint64_t sub_26BA6D784(void (*a1)(char *, char *, uint64_t))
{
  v52 = a1;
  v2 = sub_26BA9AF5C();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26BA9B28C();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v48 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_26BA9B2BC();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26BA9B29C();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_26BA9AD5C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - v18;
  sub_26BA53EF8(v52, v12, &qword_280435B08);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v20 = sub_26BA3E6F8(v12, &qword_280435B08);
    v21 = v43;
    (*((*MEMORY[0x277D85000] & *v1) + 0x178))(v20);
    v22 = sub_26BA9AF3C();
    v23 = sub_26BA9B93C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26BA33000, v22, v23, "Attempted to edit a sticker without an identifier. Nothing to do.", v24, 2u);
      MEMORY[0x26D68BFB0](v24, -1, -1);
    }

    return (*(v44 + 8))(v21, v45);
  }

  else
  {
    v52 = *(v14 + 32);
    v40 = v13;
    v52(v19, v12, v13);
    sub_26BA3EF64(0, &qword_280435B58);
    v26 = v41;
    v27 = v42;
    (*(v41 + 104))(v9, *MEMORY[0x277D851B8], v42);
    v45 = v1;
    v28 = sub_26BA9BA4C();
    (*(v26 + 8))(v9, v27);
    v29 = v19;
    v30 = v40;
    (*(v14 + 16))(v17, v19, v40);
    v31 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v32 = swift_allocObject();
    v33 = v45;
    *(v32 + 16) = v45;
    v52((v32 + v31), v17, v30);
    aBlock[4] = sub_26BA7326C;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BA54094;
    aBlock[3] = &block_descriptor_106;
    v34 = _Block_copy(aBlock);
    v35 = v33;
    v36 = v46;
    sub_26BA9B2AC();
    v53 = MEMORY[0x277D84F90];
    sub_26BA70C0C(&qword_280435E00, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
    sub_26BA3EEB8();
    v37 = v48;
    v38 = v51;
    sub_26BA9BC5C();
    MEMORY[0x26D68AFF0](0, v36, v37, v34);
    _Block_release(v34);

    (*(v50 + 8))(v37, v38);
    (*(v47 + 8))(v36, v49);
    (*(v14 + 8))(v29, v30);
  }
}

uint64_t sub_26BA6DE54(void *a1, uint64_t a2)
{
  v34 = sub_26BA9AD5C();
  v38 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26BA9AF5C();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_26BA9B28C();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26BA9B2BC();
  v31 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26BA9B46C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (*((*MEMORY[0x277D85000] & *a1) + 0x398))(v14);
  (*(v13 + 104))(v16, *MEMORY[0x277D681C0], v12);
  v18 = (*(*v17 + 544))(a2, v16);
  v19 = v11;
  v37 = v8;
  v38 = v9;
  v20 = v32;
  v21 = v18;
  (*(v13 + 8))(v16, v12);

  if (v21)
  {
    sub_26BA3EF64(0, &qword_280435B58);
    v23 = sub_26BA9BA0C();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v21;
    aBlock[4] = sub_26BA76CF0;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BA3D478;
    aBlock[3] = &block_descriptor_193;
    v26 = _Block_copy(aBlock);
    v27 = v21;

    sub_26BA9B2AC();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26BA70C0C(&qword_280435E00, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
    sub_26BA3EEB8();
    v28 = v37;
    sub_26BA9BC5C();
    MEMORY[0x26D68AFF0](0, v19, v28, v26);
    _Block_release(v26);

    (*(v30 + 8))(v28, v20);
    return (*(v31 + 8))(v19, v38);
  }

  return result;
}

void sub_26BA6E624(uint64_t a1, void *a2)
{
  v3 = sub_26BA9AF5C();
  MEMORY[0x28223BE20](v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    type metadata accessor for StickerEditViewController();
    v6 = sub_26BA38D54(a2);
    v7 = MEMORY[0x277D85000];
    v8 = *((*MEMORY[0x277D85000] & v6->isa) + 0x218);
    v9 = v6;
    v10 = v5;
    v8(v5, &off_287C6F5D0);
    v11 = v9;
    [v11 setModalTransitionStyle:2];
    v12 = [v11 setModalPresentationStyle:6];
    v13 = *((*v7 & *v10) + 0x418);
    v14 = v13(v12);
    v15 = (*((*v7 & v11->isa) + 0x158))(v14);
    v16 = v13(v15);
    if (v16)
    {
      (*(*v16 + 232))(1);
    }

    v17 = [v10 navigationController];
    if (v17)
    {
      v18 = v17;

      [v18 pushViewController:v11 animated:0];
    }

    else
    {
      v19 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

      v18 = v19;
      [v18 setModalTransitionStyle_];
      [v18 setModalPresentationStyle_];

      [v10 presentViewController:v18 animated:1 completion:0];
    }

    v20 = (*((*v7 & *v10) + 0x1B8))();
    if (v20)
    {
      [v20 stickerCollectionViewController:v10 isPresenting:v11];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_26BA6EBC0()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x3D0))())
  {
    v2 = *(*((*v1 & *v0) + 0x398))();
    v3 = (*(v2 + 288))();

    v4 = v3 ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_26BA6ECE4(void *a1)
{
  v2 = v1;
  v4 = sub_26BA9AE2C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v53 - v9;
  v11 = [a1 state];
  v12 = [v2 collectionView];
  v54 = v12;
  if (v11 == 3)
  {
    if (v12)
    {
      [v12 endInteractiveMovement];
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  if (v11 == 2)
  {
    [a1 locationInView_];
    v44 = v43;
    v46 = v45;

    v47 = *((*MEMORY[0x277D85000] & *v2) + 0x230);
    v48 = v47();
    v47();
    v50 = v49;
    v51 = [v2 collectionView];
    if (v51)
    {
      v54 = v51;
      [v51 updateInteractiveMovementTargetPosition_];
      goto LABEL_16;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v11 == 1)
  {
    if (v12)
    {
      v13 = [v2 collectionView];
      [a1 locationInView_];
      v15 = v14;
      v17 = v16;

      v18 = [v54 indexPathForItemAtPoint_];
      if (!v18)
      {
        return;
      }

      sub_26BA9ADDC();

      (*(v5 + 32))(v10, v8, v4);
      v19 = [v2 collectionView];
      if (v19)
      {
        v20 = v19;
        v21 = sub_26BA9ADCC();
        [v20 beginInteractiveMovementForItemAtIndexPath_];

        v22 = [v2 collectionView];
        if (v22)
        {
          v23 = v22;
          v24 = sub_26BA9ADCC();
          v25 = [v23 cellForItemAtIndexPath_];

          if (v25)
          {
            v26 = v25;
            [a1 locationInView_];
            v28 = v27;
            v30 = v29;
            [v26 frame];
            v31 = CGRectGetWidth(v56) * 0.5;
            [v26 frame];
            v33 = v32;
            v35 = v34;
            v37 = v36;
            v39 = v38;

            v57.origin.x = v33;
            v57.origin.y = v35;
            v57.size.width = v37;
            v57.size.height = v39;
            v40 = CGRectGetHeight(v57) * 0.5;
            v41.n128_f64[0] = v31 - v28;
            v42.n128_f64[0] = v40 - v30;
            (*((*MEMORY[0x277D85000] & *v2) + 0x238))(v41, v42);
          }

          else
          {
            (*((*MEMORY[0x277D85000] & *v2) + 0x238))(0.0, 0.0);
          }

          (*(v5 + 8))(v10, v4);
          return;
        }

LABEL_27:
        __break(1u);
        return;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (!v12)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v12 cancelInteractiveMovement];
LABEL_16:
  v52 = v54;
}

UIMenu_optional __swiftcall StickerCollectionViewController.editMenuInteraction(_:menuFor:suggestedActions:)(UIEditMenuInteraction _, UIEditMenuConfiguration menuFor, Swift::OpaquePointer suggestedActions)
{
  v3 = sub_26BA73284(menuFor.super.isa);
  result.value.super.super.isa = v3;
  result.is_nil = v4;
  return result;
}

uint64_t sub_26BA6F23C(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_26BA9AD5C();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a2, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  a3(v7);
  return sub_26BA3E6F8(v7, &qword_280435B08);
}

__C::CGRect __swiftcall StickerCollectionViewController.editMenuInteraction(_:targetRectFor:)(UIEditMenuInteraction _, UIEditMenuConfiguration targetRectFor)
{
  sub_26BA750D4(targetRectFor.super.isa);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

uint64_t sub_26BA6F520(void *a1)
{
  result = sub_26BA6F708(a1);
  if ((result & 1) == 0)
  {
    v3 = [*(v1 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_editMenuInteraction) dismissMenu];
    v4 = MEMORY[0x277D85000];
    v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x200))(v3);
    if (v5)
    {
      v6 = (*((*v4 & *v1) + 0x208))(0);
      v7 = *(*((*v4 & *v1) + 0x398))(v6);
      (*(v7 + 592))();
    }

    result = (*((*v4 & *v1) + 0x418))(v5);
    if (result)
    {
      (*(*result + 576))(result);
    }
  }

  return result;
}

uint64_t sub_26BA6F708(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  v10 = sub_26BA9AD5C();
  v47 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_26BA9AE2C();
  v12 = *(v48 - 8);
  v13 = MEMORY[0x28223BE20](v48);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v43 - v17;
  v19 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0x200))(v16) & 1) == 0)
  {
    return 0;
  }

  v44 = v7;
  v20 = [a1 view];
  v45 = a1;
  [a1 locationInView_];
  v22 = v21;
  v24 = v23;

  result = [v2 collectionView];
  if (!result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v26 = result;
  v27 = [result indexPathForItemAtPoint_];

  if (!v27)
  {
    return 0;
  }

  sub_26BA9ADDC();

  v28 = v12;
  v29 = v15;
  v30 = v48;
  v31 = (*(v12 + 32))(v18, v29, v48);
  if (((*((*v19 & *v2) + 0x3D0))(v31) & 1) != 0 && !sub_26BA9ADFC())
  {
    (*(v12 + 8))(v18, v30);
    return 0;
  }

  result = (*((*v19 & *v2) + 0x380))();
  if (!result)
  {
    goto LABEL_21;
  }

  v32 = result;
  sub_26BA9B1CC();

  v33 = v47;
  v34 = (*(v47 + 48))(v9, 1, v10);
  v35 = v45;
  if (v34 == 1)
  {
    (*(v28 + 8))(v18, v30);
    sub_26BA3E6F8(v9, &qword_280435B08);
    return 0;
  }

  (*(v33 + 32))(v46, v9, v10);
  result = [v2 collectionView];
  if (result)
  {
    v36 = result;
    v37 = sub_26BA9ADCC();
    v38 = [v36 cellForItemAtIndexPath_];

    if (v38)
    {
      [v35 locationInView_];
      if (v39 < 27.0 && v40 < 27.0 && v39 > -27.0 && v40 > -27.0)
      {
        v41 = v44;
        v42 = v46;
        (*(v33 + 16))(v44, v46, v10);
        (*(v33 + 56))(v41, 0, 1, v10);
        sub_26BA6B0E4(v41);

        sub_26BA3E6F8(v41, &qword_280435B08);
        (*(v33 + 8))(v42, v10);
        (*(v28 + 8))(v18, v48);
        return 1;
      }
    }

    (*(v33 + 8))(v46, v10);
    (*(v28 + 8))(v18, v48);
    return 0;
  }

LABEL_22:
  __break(1u);
  return result;
}

Swift::Void __swiftcall StickerCollectionViewController.setStickerEffectPaused(_:)(Swift::Bool a1)
{
  v2 = a1;
  v3 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0x278))() & 1) != v2)
  {
    v4 = (*((*v3 & *v1) + 0x280))(v2);
    v5 = *(*((*v3 & *v1) + 0x398))(v4);
    (*(v5 + 592))();
  }
}

uint64_t sub_26BA6FFF4(void *a1)
{
  v2 = v1;
  v4 = sub_26BA9AF5C();
  v32[2] = *(v4 - 8);
  v32[3] = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v7 - 8);
  v32[0] = v32 - v8;
  v9 = sub_26BA9AD5C();
  v33 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v1 navigationController];
  v32[1] = v6;
  if (v12)
  {
    v13 = v12;
    v14 = [v12 topViewController];
    if (v14)
    {
      v15 = v14;
      sub_26BA3EF64(0, &qword_280435E78);
      v16 = a1;
      v17 = sub_26BA9BAEC();

      if (v17)
      {
        v18 = [v13 popViewControllerAnimated_];

        goto LABEL_7;
      }
    }
  }

  v19 = [v2 dismissViewControllerAnimated:1 completion:0];
LABEL_7:
  v20 = MEMORY[0x277D85000];
  v21 = (*((*MEMORY[0x277D85000] & *v2) + 0x1B8))(v19);
  if (v21)
  {
    [v21 stickerCollectionViewController:v2 isDonePresenting:a1];
    v21 = swift_unknownObjectRelease();
  }

  v22 = *((*v20 & *a1) + 0xF0);
  v23 = (v22)(v21);
  MEMORY[0x26D68AA00]();

  v24 = (*((*v20 & *v2) + 0x4D0))(v11);
  v25 = (*(v33 + 8))(v11, v9);
  if (v24)
  {
    v26 = (v22)(v25);
    sub_26BA54698(v35);

    v34 = v35[0];
    sub_26BA6CC10(&v34, v24);
    [objc_opt_self() clearCachedPreviewsForStickerView_];
  }

  v27 = (*((*v20 & *v2) + 0x398))(v25);
  v28 = v22();
  (*(*v27 + 584))();

  v29 = v22();
  v30 = v32[0];
  MEMORY[0x26D68AA00]();
  (*(v33 + 56))(v30, 0, 1, v9);
  sub_26BA6A818(v30);

  return sub_26BA3E6F8(v30, &qword_280435B08);
}

id sub_26BA7063C()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1B8))();
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 isExpanded];
  swift_unknownObjectRelease();
  return v2;
}

id sub_26BA706C4()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x1B8))();
  if (result)
  {
    v2 = [result isExpanded];
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_26BA70744()
{
  v1 = v0;
  v23 = sub_26BA9AF5C();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DA8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_26BA9AE2C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x380))(v10);
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = result;
  sub_26BA9B22C();

  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v12, v7, v8);
    result = [v1 collectionView];
    if (result)
    {
      v20 = result;
      v21 = sub_26BA9ADCC();
      [v20 scrollToItemAtIndexPath:v21 atScrollPosition:2 animated:0];

      return (*(v9 + 8))(v12, v8);
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v16 = sub_26BA3E6F8(v7, &qword_280435DA8);
  (*((*v13 & *v1) + 0x178))(v16);
  v17 = sub_26BA9AF3C();
  v18 = sub_26BA9B94C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26BA33000, v17, v18, "Cannot update scroll position: indexPath not found", v19, 2u);
    MEMORY[0x26D68BFB0](v19, -1, -1);
  }

  return (*(v2 + 8))(v4, v23);
}

id sub_26BA70B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_26BA70BB4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_26BA70C0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BA70C54(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BA70D4C;

  return v6(a1);
}

uint64_t sub_26BA70D4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *_s10StickersUI31StickerCollectionViewControllerC4with9storeTypeACSo6CGRectV_0A00C0C0cI0Otcfc_0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_canSupportMagicPocket] = 1;
  v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isPresentedWithNavigationTitleBar] = 0;
  v5 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_lastAddedStickerIdentifier;
  v6 = sub_26BA9AD5C();
  v7 = *(*(v6 - 8) + 56);
  v7(&v2[v5], 1, 1, v6);
  *&v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController__analyticsCreationEvent] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_storeType;
  v9 = *MEMORY[0x277D68198];
  v10 = sub_26BA9B42C();
  v11 = *(v10 - 8);
  (*(v11 + 104))(&v2[v8], v9, v10);
  *&v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_editMenuInteraction] = 0;
  v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isArranging] = 0;
  v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_allowsAnimation] = 0;
  v12 = &v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_touchOffsetForMovingCell];
  *v12 = 0;
  v12[1] = 0;
  v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isShowingPhotosPicker] = 0;
  *&v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_placeholderImageView] = 0;
  v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isStickerEffectPaused] = 0;
  v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_isPresentingEditMenu] = 0;
  v7(&v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addingStickerIdentifier], 1, 1, v6);
  v7(&v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addingRecentStickerIdentifier], 1, 1, v6);
  v7(&v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_hiddenStickerViewIdentifier], 1, 1, v6);
  v13 = &v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_hiddenStickerViewAnimationStartTime];
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *v13 = 0;
  v13[24] = 1;
  v14 = &v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_completionHandlerWaitingForStickerBound];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_completionHandlerWaitingForStickerDisplay];
  *v15 = 0;
  v15[1] = 0;
  v7(&v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_needsMenuPresentationStickerIdentifier], 1, 1, v6);
  v16 = &v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addContextToRun];
  *v16 = 0u;
  v16[1] = 0u;
  v16[2] = 0u;
  *&v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_animationContextImageView] = 0;
  *&v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_dataSource] = 0;
  *&v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController____lazy_storage___stickerCache] = 0;
  *&v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_insertLocationMarker] = 0;
  *&v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_collectionLayout] = 0;
  *&v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_traitChangeRegistration] = 0;
  *&v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_transitionAnimator] = 0;
  *&v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_keyline] = 0;
  v17 = (*(ObjectType + 1120))(a1);
  v25.receiver = v2;
  v25.super_class = type metadata accessor for StickerCollectionViewController(0);
  v18 = objc_msgSendSuper2(&v25, sel_initWithCollectionViewLayout_, v17);
  v19 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_collectionLayout;
  swift_beginAccess();
  v20 = *&v18[v19];
  *&v18[v19] = v17;
  v21 = v18;
  v22 = v17;

  v23 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_storeType;
  swift_beginAccess();
  (*(v11 + 24))(&v21[v23], a1, v10);
  swift_endAccess();
  [v21 setInstallsStandardGestureForInteractiveMovement_];

  (*(v11 + 8))(a1, v10);
  return v21;
}

uint64_t sub_26BA7124C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_26BA71284(uint64_t a1, void *a2)
{
  sub_26BA9B42C();

  return sub_26BA58118(a2);
}

void sub_26BA7135C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x498))(a1, a3);
  }
}

uint64_t sub_26BA713FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435E18);

  return sub_26BA5AE38(a1, a2, a3);
}

uint64_t sub_26BA714A4()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_26BA37FBC();
    swift_beginAccess();
    *v4 = 1;
    v5 = *&v3[OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_editMenuInteraction];
    if (v5)
    {
      sub_26BA3EF64(0, &qword_280435E48);
      v6 = *((*MEMORY[0x277D85000] & *v1) + 0xF0);
      v7 = v5;
      v6(v7, v8, v9, v10, v11);
      v12 = sub_26BA9BA7C();
      [v7 presentEditMenuWithConfiguration_];
    }
  }

  return 1;
}

uint64_t sub_26BA715C8(void *a1, void *a2)
{
  v5 = *(sub_26BA9AD5C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_26BA5D024(a1, a2, v7, v8, v2 + v6, v10, v11);
}

void sub_26BA71680()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x508))();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

BOOL sub_26BA717A0(void *a1, void *a2, void (*a3)(void, void *, double, double, double, double), void *a4)
{
  v76 = a1;
  v7 = sub_26BA9AF5C();
  v73 = *(v7 - 8);
  v74 = v7;
  MEMORY[0x28223BE20](v7);
  v77 = &v63[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v63[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v63[-v13];
  v15 = sub_26BA9AD5C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v63[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v17);
  v72 = &v63[-v21];
  MEMORY[0x28223BE20](v20);
  v23 = &v63[-v22];
  v24 = swift_allocObject();
  v75 = a3;
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v25 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addingStickerIdentifier;
  swift_beginAccess();
  sub_26BA53EF8(a2 + v25, v14, &qword_280435B08);
  v78 = (*(v16 + 48))(v14, 1, v15);
  if (v78 == 1)
  {

    v26 = sub_26BA3E6F8(v14, &qword_280435B08);
    MEMORY[0x26D68AA00](v26);
    v27 = *(v16 + 56);
    v27(v12, 0, 1, v15);
    swift_beginAccess();
    sub_26BA431E4(v12, a2 + v25);
    v28 = swift_endAccess();
    MEMORY[0x26D68AA00](v28);
    v27(v12, 0, 1, v15);
    v29 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_hiddenStickerViewIdentifier;
    swift_beginAccess();
    sub_26BA431E4(v12, a2 + v29);
    swift_endAccess();
    v30 = (a2 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_completionHandlerWaitingForStickerBound);
    v31 = *(a2 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_completionHandlerWaitingForStickerBound);
    *v30 = sub_26BA76FEC;
    v30[1] = v24;

    sub_26BA36050(v31);
  }

  else
  {
    v68 = v19;
    v69 = v24;
    (*(v16 + 32))(v23, v14, v15);
    v32 = *((*MEMORY[0x277D85000] & *a2) + 0x178);

    v32(v33);
    v34 = v72;
    v35 = v15;
    v70 = *(v16 + 16);
    v71 = v16 + 16;
    v70(v72, v23, v15);
    v36 = v76;
    v37 = sub_26BA9AF3C();
    v38 = sub_26BA9B94C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v76 = a4;
      v40 = v39;
      v66 = swift_slowAlloc();
      v79[0] = v66;
      *v40 = 136315394;
      sub_26BA70C0C(&unk_280435D90, MEMORY[0x277CC95F0]);
      v67 = v23;
      v65 = v37;
      v64 = v38;
      v41 = v35;
      v42 = sub_26BA9BE2C();
      v44 = v43;
      v45 = *(v16 + 8);
      v45(v34, v41);
      v46 = sub_26BA3DFF8(v42, v44, v79);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2080;
      v48 = v68;
      MEMORY[0x26D68AA00](v47);
      v23 = v67;
      v49 = sub_26BA9BE2C();
      v51 = v50;
      v52 = v48;
      v53 = v45;
      v45(v52, v41);
      v54 = sub_26BA3DFF8(v49, v51, v79);

      *(v40 + 14) = v54;
      v55 = v65;
      _os_log_impl(&dword_26BA33000, v65, v64, "Already have sticker UUID %s in flight; cannot add %s", v40, 0x16u);
      v56 = v66;
      swift_arrayDestroy();
      MEMORY[0x26D68BFB0](v56, -1, -1);
      MEMORY[0x26D68BFB0](v40, -1, -1);
    }

    else
    {

      v53 = *(v16 + 8);
      v41 = v35;
      v53(v34, v35);
    }

    (*(v73 + 8))(v77, v74);
    type metadata accessor for StickerCollectionViewController.AddStickerError(0);
    sub_26BA70C0C(&qword_280435E80, type metadata accessor for StickerCollectionViewController.AddStickerError);
    v57 = swift_allocError();
    v59 = v58;
    v70(v58, v23, v41);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435D88);
    (*(*(v60 - 8) + 56))(v59, 0, 2, v60);
    v75(0, v57, *MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24));

    v53(v23, v41);
  }

  v61 = v78 == 1;

  return v61;
}

uint64_t sub_26BA71F1C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = *(v0 + 8);
  v7 = *(v0 + 9);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_26BA71FDC;

  return sub_26BA62FD8(v2, v3, v4, v5, v8, v9, v10, v6, v7);
}

uint64_t sub_26BA71FDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26BA720D0()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = sub_26BA64A4C(v0[3]);
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x1B0);
  v7 = v6(v5);
  (*(*v7 + 144))(0);

  v9 = v6(v8);
  (*(*v9 + 248))(1);

  v11 = *v6(v10);
  (*(v11 + 296))(1);

  [v2 stickerCollectionViewControllerPrepareForNewSticker:v1 fromPhotoPicker:0];
  result = [v2 respondsToSelector_];
  if (result)
  {
    swift_unknownObjectRetain();
    [v3 bounds];
    [v2 stickerCollectionViewController:v1 performTransitionForView:v3 withImage:v4 bounds:?];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_26BA722C0()
{
  sub_26BA9ABAC();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_26BA9AB9C();
    if (!v2)
    {

      return;
    }

    v3 = v2;
    sub_26BA9BC9C();
    if (*(v3 + 16) && (v4 = sub_26BA4F4EC(v9), (v5 & 1) != 0))
    {
      sub_26BA3ED78(*(v3 + 56) + 32 * v4, v10);
      sub_26BA53728(v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804360B0);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_13:

        return;
      }

      sub_26BA9BC9C();
      if (*(v3 + 16))
      {
        v6 = sub_26BA4F4EC(v9);
        if (v7)
        {
          sub_26BA3ED78(*(v3 + 56) + 32 * v6, v10);
          sub_26BA53728(v9);

          if (swift_dynamicCast())
          {
            v8 = sub_26BA67F90(1868983913);

            (*((*MEMORY[0x277D85000] & *v1) + 0x458))(v8, 1.35617215e248);
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
    }

    sub_26BA53728(v9);
  }
}