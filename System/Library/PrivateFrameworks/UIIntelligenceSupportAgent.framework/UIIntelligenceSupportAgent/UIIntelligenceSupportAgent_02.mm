uint64_t sub_22BAE9B98(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_22BB1EADC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_22BB1FC1C();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_22BAC36FC(&qword_2814250E0, MEMORY[0x277D74708]);
      result = sub_22BB1F61C();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_22BAE9F74(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22BB1F2EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF028, &qword_22BB21220);
  v43 = a2;
  result = sub_22BB1FC1C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_22BAC36FC(&qword_281425070, MEMORY[0x277D74940]);
      result = sub_22BB1F61C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_22BAEA350(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF610, &qword_22BB21248);
  v38 = a2;
  result = sub_22BB1FC1C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22BB1FDDC();
      sub_22BB1F6EC();
      result = sub_22BB1FE0C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22BAEA5F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0B8, &unk_22BB21290);
  v36 = a2;
  result = sub_22BB1FC1C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_22BAEEDE4(v25, v37);
      }

      else
      {
        sub_22BABDE24(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_22BB1FDDC();
      sub_22BB1F6EC();
      result = sub_22BB1FE0C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_22BAEEDE4(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_22BAEA8A8(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_22BB1E68C();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BB1F2AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF0A8, &qword_22BB21288);
  v52 = a2;
  result = sub_22BB1FC1C();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_22BAC36FC(&qword_27D8DF0B0, MEMORY[0x277D74928]);
      result = sub_22BB1F61C();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

void sub_22BAEAD50(int64_t a1, uint64_t a2)
{
  v4 = sub_22BB1E9DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v43 = a2;
    v12 = ~v10;
    v13 = sub_22BB1FAAC();
    v14 = v12;
    a2 = v43;
    v42 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v40 = v9;
    v41 = v16;
    v17 = *(v15 + 56);
    v39 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v41(v8, *(a2 + 48) + v17 * v11, v4);
      v22 = *(a2 + 40);
      sub_22BAC36FC(&qword_281425100, MEMORY[0x277D746D8]);
      v23 = sub_22BB1F61C();
      (*v39)(v8, v4);
      v14 = v20;
      v24 = v23 & v20;
      if (a1 >= v42)
      {
        if (v24 >= v42 && a1 >= v24)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v43 + 48) + v18 * a1 >= (*(v43 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v27 = *(v43 + 56);
          v28 = *(*(sub_22BB1EA5C() - 8) + 72);
          v29 = v28 * a1;
          v30 = v27 + v28 * a1;
          v31 = v28 * v11;
          v32 = v27 + v28 * v11 + v28;
          if (v29 < v31 || v30 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v40;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v34 = v29 == v31;
            v9 = v40;
            v14 = v20;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v42 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v40;
      a2 = v43;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }
}

void sub_22BAEB094(int64_t a1, uint64_t a2)
{
  v4 = sub_22BB1F2AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v43 = a2;
    v12 = ~v10;
    v13 = sub_22BB1FAAC();
    v14 = v12;
    a2 = v43;
    v42 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v40 = v9;
    v41 = v16;
    v17 = *(v15 + 56);
    v39 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v41(v8, *(a2 + 48) + v17 * v11, v4);
      v22 = *(a2 + 40);
      sub_22BAC36FC(&qword_27D8DF0B0, MEMORY[0x277D74928]);
      v23 = sub_22BB1F61C();
      (*v39)(v8, v4);
      v14 = v20;
      v24 = v23 & v20;
      if (a1 >= v42)
      {
        if (v24 >= v42 && a1 >= v24)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v43 + 48) + v18 * a1 >= (*(v43 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v27 = *(v43 + 56);
          v28 = *(*(sub_22BB1E68C() - 8) + 72);
          v29 = v28 * a1;
          v30 = v27 + v28 * a1;
          v31 = v28 * v11;
          v32 = v27 + v28 * v11 + v28;
          if (v29 < v31 || v30 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v40;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v34 = v29 == v31;
            v9 = v40;
            v14 = v20;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v42 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v40;
      a2 = v43;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }
}

void *sub_22BAEB3D8()
{
  v1 = v0;
  v24 = *(type metadata accessor for ConnectionID() - 8);
  v2 = *(v24 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF118, &unk_22BB22070);
  v5 = *v0;
  v6 = sub_22BB1FC0C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_22BABE90C(*(v5 + 48) + v21, v4, type metadata accessor for ConnectionID);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_22BAC3614(v4, *(v7 + 48) + v21, type metadata accessor for ConnectionID);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_22BAEB618()
{
  v1 = v0;
  v2 = _s17AsyncProviderTaskVMa();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF050, &qword_22BB21240);
  v6 = *v0;
  v7 = sub_22BB1FC0C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_22BABE90C(*(v6 + 48) + v22, v5, _s17AsyncProviderTaskVMa);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_22BAC3614(v5, *(v8 + 48) + v22, _s17AsyncProviderTaskVMa);
        *(*(v8 + 56) + 8 * v21) = v23;
        result = swift_unknownObjectRetain();
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_22BAEB8A8()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionID();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF130, &qword_22BB212F0);
  v6 = *v0;
  v7 = sub_22BB1FC0C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_22BABE90C(*(v6 + 48) + v22, v5, type metadata accessor for ConnectionID);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_22BAC3614(v5, *(v8 + 48) + v22, type metadata accessor for ConnectionID);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_22BAEBAE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF018, &qword_22BB21218);
  v2 = *v0;
  v3 = sub_22BB1FC0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22BAEBC50()
{
  v1 = v0;
  v2 = type metadata accessor for FragmentCollator.WindowOcclusionInfo(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF010, &qword_22BB21210);
  v5 = *v0;
  v6 = sub_22BB1FC0C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_22BABE90C(*(v5 + 56) + v27, v31, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_22BAC3614(v26, *(v28 + 56) + v27, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_22BAEBEA8()
{
  v1 = v0;
  v36 = sub_22BB1E55C();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF008, &unk_22BB21F90);
  v4 = *v0;
  v5 = sub_22BB1FC0C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_22BAEC128(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_22BB1EADC();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_22BB1FC0C();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

char *sub_22BAEC3A0()
{
  v1 = v0;
  v34 = sub_22BB1F2EC();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF028, &qword_22BB21220);
  v4 = *v0;
  v5 = sub_22BB1FC0C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_22BAEC620()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF098, &qword_22BB21278);
  v2 = *v0;
  v3 = sub_22BB1FC0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_22BABFC10(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22BAEC790()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF0A0, &qword_22BB21280);
  v2 = *v0;
  v3 = sub_22BB1FC0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + v17) = v18;
        result = sub_22BABFC10(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22BAEC8F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF610, &qword_22BB21248);
  v2 = *v0;
  v3 = sub_22BB1FC0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22BAECA60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0B8, &unk_22BB21290);
  v2 = *v0;
  v3 = sub_22BB1FC0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_22BABDE24(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22BAEEDE4(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_22BAECC40(uint64_t (*a1)(void), uint64_t (*a2)(void, __n128), uint64_t *a3, uint64_t *a4)
{
  v8 = v4;
  v51 = a1(0);
  v54 = *(v51 - 8);
  v9 = *(v54 + 64);
  v10 = MEMORY[0x28223BE20](v51);
  v50 = &v40 - v11;
  v49 = a2(0, v10);
  v53 = *(v49 - 8);
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v40 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v14 = *v4;
  v15 = sub_22BB1FC0C();
  v16 = v15;
  if (*(v14 + 16))
  {
    result = (v15 + 64);
    v18 = (v14 + 64);
    v19 = ((1 << *(v16 + 32)) + 63) >> 6;
    v40 = v8;
    v41 = v14 + 64;
    if (v16 != v14 || result >= &v18[8 * v19])
    {
      result = memmove(result, v18, 8 * v19);
    }

    v20 = 0;
    v21 = *(v14 + 16);
    v52 = v16;
    *(v16 + 16) = v21;
    v22 = 1 << *(v14 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v14 + 64);
    v25 = (v22 + 63) >> 6;
    v45 = v53 + 16;
    v46 = v25;
    v43 = v53 + 32;
    v44 = v54 + 16;
    v42 = v54 + 32;
    v47 = v14;
    v27 = v48;
    v26 = v49;
    if (v24)
    {
      do
      {
        v28 = __clz(__rbit64(v24));
        v55 = (v24 - 1) & v24;
LABEL_14:
        v31 = v28 | (v20 << 6);
        v32 = v53;
        v33 = *(v53 + 72) * v31;
        (*(v53 + 16))(v27, *(v14 + 48) + v33, v26);
        v34 = v54;
        v35 = *(v54 + 72) * v31;
        v36 = v50;
        v37 = v51;
        (*(v54 + 16))(v50, *(v14 + 56) + v35, v51);
        v38 = v52;
        (*(v32 + 32))(*(v52 + 48) + v33, v27, v26);
        v39 = *(v38 + 56);
        v14 = v47;
        result = (*(v34 + 32))(v39 + v35, v36, v37);
        v25 = v46;
        v24 = v55;
      }

      while (v55);
    }

    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v25)
      {

        v8 = v40;
        v16 = v52;
        goto LABEL_18;
      }

      v30 = *(v41 + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v55 = (v30 - 1) & v30;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v8 = v16;
  }

  return result;
}

uint64_t sub_22BAECF9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for ConnectionID();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = v2;
  v8 = *v2;
  v9 = *(*v2 + 40);
  sub_22BB1FDDC();
  v10 = *a1;
  MEMORY[0x23189D810](*a1);
  v29 = v4;
  v11 = *(v4 + 20);
  sub_22BB1EADC();
  sub_22BAC36FC(&qword_2814250E0, MEMORY[0x277D74708]);
  v28 = a1;
  sub_22BB1F62C();
  v12 = sub_22BB1FE0C();
  v13 = -1 << *(v8 + 32);
  v14 = v12 & ~v13;
  if (((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return (*(v27 + 56))(v26, 1, 1, v29);
  }

  v15 = ~v13;
  v16 = *(v27 + 72);
  while (1)
  {
    sub_22BABE90C(*(v8 + 48) + v16 * v14, v7, type metadata accessor for ConnectionID);
    if (*v7 == v10)
    {
      break;
    }

    sub_22BAC1514(v7, type metadata accessor for ConnectionID);
LABEL_4:
    v14 = (v14 + 1) & v15;
    if (((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return (*(v27 + 56))(v26, 1, 1, v29);
    }
  }

  v17 = v7 + *(v29 + 20);
  v18 = sub_22BB1EAAC();
  sub_22BAC1514(v7, type metadata accessor for ConnectionID);
  if ((v18 & 1) == 0)
  {
    goto LABEL_4;
  }

  v19 = v25;
  v20 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v19;
  v30 = *v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22BB1C360();
    v22 = v30;
  }

  v23 = v26;
  sub_22BAC3614(*(v22 + 48) + v16 * v14, v26, type metadata accessor for ConnectionID);
  sub_22BAED510(v14);
  *v19 = v30;
  return (*(v27 + 56))(v23, 0, 1, v29);
}

uint64_t sub_22BAED268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_22BB1E9DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22BAC36FC(&qword_281425100, MEMORY[0x277D746D8]);
  v35 = a1;
  v13 = sub_22BB1F61C();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_22BAC36FC(&unk_2814250F0, MEMORY[0x277D746D8]);
      v22 = sub_22BB1F65C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22BB1C558();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_22BAED834(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

void sub_22BAED510(int64_t a1)
{
  v30 = type metadata accessor for ConnectionID();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;
    v12 = *v1;

    v13 = sub_22BB1FAAC();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v29 = (v13 + 1) & v11;
      v14 = *(v3 + 72);
      v15 = v11;
      do
      {
        v16 = v8;
        v17 = v14;
        v18 = v14 * v10;
        sub_22BABE90C(*(v7 + 48) + v14 * v10, v6, type metadata accessor for ConnectionID);
        v19 = *(v7 + 40);
        sub_22BB1FDDC();
        v20 = v15;
        MEMORY[0x23189D810](*v6);
        v21 = *(v30 + 20);
        sub_22BB1EADC();
        sub_22BAC36FC(&qword_2814250E0, MEMORY[0x277D74708]);
        sub_22BB1F62C();
        v22 = sub_22BB1FE0C();
        sub_22BAC1514(v6, type metadata accessor for ConnectionID);
        v23 = v22 & v20;
        v15 = v20;
        if (a1 >= v29)
        {
          if (v23 < v29)
          {
            v14 = v17;
            goto LABEL_5;
          }

          v14 = v17;
          if (a1 < v23)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v14 = v17;
          if (v23 < v29 && a1 < v23)
          {
            goto LABEL_5;
          }
        }

        v24 = v14 * a1;
        if (v14 * a1 < v18 || *(v7 + 48) + v14 * a1 >= (*(v7 + 48) + v18 + v14))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v10;
        if (v24 != v18)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v10;
        }

LABEL_5:
        v10 = (v10 + 1) & v15;
        v8 = v16;
      }

      while (((*(v16 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v25 = *(v7 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v27;
    ++*(v7 + 36);
  }
}

uint64_t sub_22BAED834(int64_t a1)
{
  v3 = sub_22BB1E9DC();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_22BB1FAAC();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_22BAC36FC(&qword_281425100, MEMORY[0x277D746D8]);
        v27 = sub_22BB1F61C();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

uint64_t sub_22BAEDB3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1769105779 && a2 == 0xE400000000000000 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022BB26DB0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6867696C746F7073 && a2 == 0xE900000000000074 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022BB26DD0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_22BB1FD9C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_22BAEDD08()
{
  result = qword_27D8DEF48;
  if (!qword_27D8DEF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF48);
  }

  return result;
}

uint64_t type metadata accessor for IntelligenceSupportAgent.ActiveRequest()
{
  result = qword_281424FA8;
  if (!qword_281424FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BAEDE08()
{
  result = sub_22BB1F5BC();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_22BB1F11C();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22BAEDF68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22BAEDFB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s14descr283F6AF29O14TimeoutReasonsV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr283F6AF29O14TimeoutReasonsV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22BAEE1A4()
{
  result = qword_27D8DEF50;
  if (!qword_27D8DEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF50);
  }

  return result;
}

unint64_t sub_22BAEE1FC()
{
  result = qword_27D8DEF58;
  if (!qword_27D8DEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF58);
  }

  return result;
}

unint64_t sub_22BAEE254()
{
  result = qword_27D8DEF60;
  if (!qword_27D8DEF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF60);
  }

  return result;
}

unint64_t sub_22BAEE2AC()
{
  result = qword_27D8DEF68;
  if (!qword_27D8DEF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF68);
  }

  return result;
}

unint64_t sub_22BAEE304()
{
  result = qword_27D8DEF70;
  if (!qword_27D8DEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF70);
  }

  return result;
}

unint64_t sub_22BAEE35C()
{
  result = qword_27D8DEF78;
  if (!qword_27D8DEF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF78);
  }

  return result;
}

unint64_t sub_22BAEE3B4()
{
  result = qword_27D8DEF80;
  if (!qword_27D8DEF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF80);
  }

  return result;
}

unint64_t sub_22BAEE40C()
{
  result = qword_27D8DEF88;
  if (!qword_27D8DEF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF88);
  }

  return result;
}

unint64_t sub_22BAEE464()
{
  result = qword_27D8DEF90;
  if (!qword_27D8DEF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF90);
  }

  return result;
}

unint64_t sub_22BAEE4BC()
{
  result = qword_27D8DEF98;
  if (!qword_27D8DEF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF98);
  }

  return result;
}

unint64_t sub_22BAEE514()
{
  result = qword_27D8DEFA0;
  if (!qword_27D8DEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEFA0);
  }

  return result;
}

unint64_t sub_22BAEE56C()
{
  result = qword_27D8DEFA8;
  if (!qword_27D8DEFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEFA8);
  }

  return result;
}

unint64_t sub_22BAEE5C4()
{
  result = qword_27D8DEFB0;
  if (!qword_27D8DEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEFB0);
  }

  return result;
}

uint64_t sub_22BAEE618(uint64_t *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DEFB8, &qword_22BB211C8) - 8) + 80);

  return sub_22BAE07E0(a1);
}

uint64_t sub_22BAEE694(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22BAEE72C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF0D8, &qword_22BB212A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v34 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF0E0, &qword_22BB212A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_22BB1E4CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF0E8, &qword_22BB212B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v34 - v13;
  v36 = sub_22BB1E46C();
  v15 = *(v36 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v36);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22BB1E4BC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v34 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v35 = &v34 - v25;
  (*(v7 + 104))(v10, *MEMORY[0x277CC9830], v6, v24);
  sub_22BB1E4DC();
  (*(v7 + 8))(v10, v6);
  v26 = sub_22BB1E4EC();
  (*(*(v26 - 8) + 56))(v14, 0, 1, v26);
  sub_22BB1E4FC();
  sub_22BB1E45C();
  sub_22BB1E44C();
  (*(v15 + 8))(v18, v36);
  if ((*(v20 + 48))(v3, 1, v19) == 1)
  {
    sub_22BAC81E8(v3, &qword_27D8DF0D8, &qword_22BB212A0);
    v27 = 1;
  }

  else
  {
    v28 = v35;
    (*(v20 + 32))(v35, v3, v19);
    v37[3] = &type metadata for IntelligenceFeatureFlags;
    v37[4] = sub_22BAEEDF4();
    v29 = swift_allocObject();
    v37[0] = v29;
    *(v29 + 16) = "SwiftUI";
    *(v29 + 24) = 7;
    *(v29 + 32) = 2;
    *(v29 + 40) = "Solarium";
    *(v29 + 48) = 8;
    *(v29 + 56) = 2;
    v30 = sub_22BB1E57C();
    __swift_destroy_boxed_opaque_existential_0(v37);
    if (v30)
    {
      v31 = v34;
      sub_22BB1E4AC();
      v27 = sub_22BB1E49C();
      v32 = *(v20 + 8);
      v32(v31, v19);
      v32(v28, v19);
    }

    else
    {
      (*(v20 + 8))(v28, v19);
      v27 = 0;
    }
  }

  return v27 & 1;
}

uint64_t sub_22BAEEC90(void (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);

  a1(*(v2 + 24));

  return a2(v2, 32, 7);
}

uint64_t sub_22BAEECF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22BAEED44()
{
  v1 = *(*(sub_22BB1F2EC() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_22BAE34AC();
}

_OWORD *sub_22BAEEDE4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_22BAEEDF4()
{
  result = qword_27D8DF0F0;
  if (!qword_27D8DF0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF0F0);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_22BAEEE80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22BAEEEC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_22BAEEF0C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_22BAEEFB4()
{
  result = sub_22BB1EADC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BAEF030(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF150, &qword_22BB214D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22BAEF914();
  sub_22BB1FE2C();
  v11 = *v3;
  v14[15] = 0;
  sub_22BB1FD3C();
  if (!v2)
  {
    v12 = *(type metadata accessor for ConnectionID() + 20);
    v14[14] = 1;
    sub_22BB1EADC();
    sub_22BACBEBC(&qword_27D8DF158, MEMORY[0x277D74708]);
    sub_22BB1FD4C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22BAEF1E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_22BB1EADC();
  v22 = *(v25 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF138, &qword_22BB214C8);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v19 - v8;
  v10 = type metadata accessor for ConnectionID();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22BAEF914();
  sub_22BB1FE1C();
  if (!v2)
  {
    v21 = v10;
    v15 = v24;
    v16 = v25;
    v28 = 0;
    v17 = v26;
    *v13 = sub_22BB1FCAC();
    v27 = 1;
    sub_22BACBEBC(&qword_27D8DF148, MEMORY[0x277D74708]);
    v20 = v6;
    sub_22BB1FCBC();
    (*(v15 + 8))(v9, v17);
    (*(v22 + 32))(v13 + *(v21 + 20), v20, v16);
    sub_22BAEF968(v13, v23);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22BAEF4E4()
{
  if (*v0)
  {
    result = 0x49737365636F7270;
  }

  else
  {
    result = 0x65756C6156776172;
  }

  *v0;
  return result;
}

uint64_t sub_22BAEF528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6156776172 && a2 == 0xE800000000000000;
  if (v6 || (sub_22BB1FD9C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x49737365636F7270 && a2 == 0xEB000000006F666ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22BB1FD9C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22BAEF614(uint64_t a1)
{
  v2 = sub_22BAEF914();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BAEF650(uint64_t a1)
{
  v2 = sub_22BAEF914();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BAEF68C(uint64_t a1)
{
  sub_22BB1FDDC();
  MEMORY[0x23189D810](*v1);
  v3 = *(a1 + 20);
  sub_22BB1EADC();
  sub_22BACBEBC(&qword_2814250E0, MEMORY[0x277D74708]);
  sub_22BB1F62C();
  return sub_22BB1FE0C();
}

uint64_t sub_22BAEF738(uint64_t a1, uint64_t a2)
{
  MEMORY[0x23189D810](*v2);
  v4 = *(a2 + 20);
  sub_22BB1EADC();
  sub_22BACBEBC(&qword_2814250E0, MEMORY[0x277D74708]);
  return sub_22BB1F62C();
}

uint64_t sub_22BAEF7CC(uint64_t a1, uint64_t a2)
{
  sub_22BB1FDDC();
  MEMORY[0x23189D810](*v2);
  v4 = *(a2 + 20);
  sub_22BB1EADC();
  sub_22BACBEBC(&qword_2814250E0, MEMORY[0x277D74708]);
  sub_22BB1F62C();
  return sub_22BB1FE0C();
}

uint64_t sub_22BAEF8A4(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  return sub_22BB1EAAC();
}

unint64_t sub_22BAEF914()
{
  result = qword_27D8DF140;
  if (!qword_27D8DF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF140);
  }

  return result;
}

uint64_t sub_22BAEF968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ConnectionID.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionID.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22BAEFB2C()
{
  result = qword_27D8DF160;
  if (!qword_27D8DF160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF160);
  }

  return result;
}

unint64_t sub_22BAEFB84()
{
  result = qword_27D8DF168;
  if (!qword_27D8DF168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF168);
  }

  return result;
}

unint64_t sub_22BAEFBDC()
{
  result = qword_27D8DF170;
  if (!qword_27D8DF170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF170);
  }

  return result;
}

void sub_22BAEFC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v38 - v9;
  v44 = sub_22BB1EADC();
  v11 = *(v44 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = (a4 + 40);
    v15 = *(a4 + 16) + 1;
    do
    {
      v16 = --v15 != 0;
      if (!v15)
      {
        break;
      }

      if (*(v14 - 1) == a1 && *v14 == a2)
      {
        break;
      }

      v14 += 5;
    }

    while ((sub_22BB1FD9C() & 1) == 0);
    v18 = *(a4 + 16);
    if (!v18)
    {
      return;
    }
  }

  else
  {
    v16 = 0;
    v18 = *(a4 + 16);
    if (!v18)
    {
      return;
    }
  }

  v45 = v10;
  v42 = a1;
  v49 = a2;
  LOBYTE(a1) = 0;
  v19 = (v11 + 48);
  v40 = (v11 + 32);
  v41 = (v11 + 8);
  v38[2] = *MEMORY[0x277D66F58];
  v38[1] = *MEMORY[0x277D66F50];
  v20 = (a4 + 64);
  v21 = v44;
  v39 = v19;
  v43 = v16;
  while (1)
  {
    v22 = *(v20 - 4);
    v23 = *v20;
    if (v16)
    {
      if (v49)
      {
        if (v22 == v42 && *(v20 - 3) == v49)
        {
          return;
        }

        v25 = *(v20 - 4);
        if (sub_22BB1FD9C())
        {
          return;
        }
      }

      goto LABEL_39;
    }

    v26 = *(v20 - 3);
    v27 = *(v20 - 1);
    v46 = *(v20 - 2);
    v28 = v45;
    sub_22BAF1E60(v47, v45);
    if ((*v19)(v28, 1, v21) == 1)
    {
      sub_22BAC81E8(v28, &qword_27D8DEEA0, &qword_22BB20A30);
LABEL_38:
      v16 = v43;
      goto LABEL_39;
    }

    (*v40)(v48, v28, v21);
    swift_bridgeObjectRetain_n();

    v29 = sub_22BB1EA9C();
    if (!v27)
    {
      if (!v30)
      {
        goto LABEL_52;
      }

LABEL_28:

      goto LABEL_29;
    }

    if (!v30)
    {
      goto LABEL_28;
    }

    if (v46 == v29 && v27 == v30)
    {
      break;
    }

    v31 = sub_22BB1FD9C();

    if (v31)
    {

      goto LABEL_52;
    }

LABEL_29:
    v46 = v27;
    v32 = v48;
    v33 = sub_22BB1EA7C();
    v21 = v44;
    if ((v33 & 1) == 0)
    {
      (*v41)(v32, v44);

      v19 = v39;
      goto LABEL_38;
    }

    if (v22 == sub_22BB1F68C() && v26 == v34)
    {

LABEL_49:

      (*v41)(v48, v21);
      return;
    }

    v35 = sub_22BB1FD9C();

    if (v35)
    {
      v21 = v44;
      goto LABEL_49;
    }

    if (v22 == sub_22BB1F68C() && v26 == v36)
    {

      (*v41)(v48, v44);

      return;
    }

    v37 = sub_22BB1FD9C();

    v21 = v44;
    (*v41)(v48, v44);

    v19 = v39;
    v16 = v43;
    if (v37)
    {
      return;
    }

LABEL_39:
    if (v23 <= a1)
    {
      LODWORD(a1) = a1;
    }

    else
    {
      LODWORD(a1) = v23;
    }

    if (--v18)
    {
      v20 += 40;
      if (a1 != 3)
      {
        continue;
      }
    }

    return;
  }

  swift_bridgeObjectRelease_n();
LABEL_52:

  (*v41)(v48, v44);
}

uint64_t sub_22BAF0144()
{
  v0 = sub_22BB1F8EC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_22BB1F90C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BB1F56C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22BAC83C0(0, &qword_2814240C8, 0x277D85C78);
  sub_22BB1F55C();
  (*(v3 + 104))(v6, *MEMORY[0x277D85268], v2);
  v10[1] = MEMORY[0x277D84F90];
  sub_22BAC3744(&unk_2814240D0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0C8, &qword_22BB21710);
  sub_22BAC8324(&qword_281424140, &unk_27D8DF0C8, &qword_22BB21710);
  sub_22BB1FA8C();
  result = sub_22BB1F93C();
  qword_281424270 = result;
  return result;
}

uint64_t sub_22BAF03B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BB1F5BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v17[-v10];
  *(v2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF198, &qword_22BB21718);
  v12 = swift_allocObject();
  v17[8] = 1;
  v17[0] = 1;
  *(v12 + 80) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 1;
  *(v12 + 32) = 0;
  *(v12 + 40) = 1;
  v13 = MEMORY[0x277D84F98];
  *(v12 + 48) = MEMORY[0x277D84F90];
  *(v12 + 56) = v13;
  v14 = MEMORY[0x277D84FA0];
  *(v12 + 64) = v13;
  *(v12 + 72) = v14;
  *(v2 + 24) = v12;
  sub_22BB1F0CC();
  sub_22BB1F10C();
  sub_22BB1F5DC();
  v15 = sub_22BB1F11C();
  (*(*(v15 - 8) + 8))(a1, v15);
  (*(v5 + 8))(v8, v4);
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent32EmbeddedWindowVisibilityProvider_deadline, v11, v4);
  return v2;
}

uint64_t sub_22BAF05A8()
{
  v1 = v0;
  v2 = sub_22BB1F52C();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BB1F56C();
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF048, &unk_22BB216E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  v14 = _s17AsyncProviderTaskVMa();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  sub_22BAC8A94(v0 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent32EmbeddedWindowVisibilityProvider_deadline, 0xD00000000000001DLL, 0x800000022BB272C0, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_22BAC81E8(v13, &qword_27D8DF048, &unk_22BB216E0);
  }

  sub_22BACDEBC(v13, v20);
  if (qword_281424268 != -1)
  {
    swift_once();
  }

  v26 = qword_281424270;
  sub_22BAC9EBC(v20, v17);
  v22 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  sub_22BACDEBC(v17, v23 + v22);
  aBlock[4] = sub_22BAC8248;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22BAC37D4;
  aBlock[3] = &block_descriptor_27;
  v24 = _Block_copy(aBlock);

  sub_22BB1F54C();
  v31 = MEMORY[0x277D84F90];
  sub_22BAC3744(&qword_281424180, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
  sub_22BAC8324(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0);
  v25 = v30;
  sub_22BB1FA8C();
  MEMORY[0x23189D350](0, v9, v5, v24);
  _Block_release(v24);
  (*(v29 + 8))(v5, v25);
  (*(v27 + 8))(v9, v28);
  sub_22BAC9F20(v20);
}

void sub_22BAF0A40(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_22BB1F45C();
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = *(v30 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v17 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_22BAF2C78(a1, a2);
  v18 = sub_22BAF2BB8();
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = v6;
  sub_22BAF2CCC(a1, a2);
  sub_22BAC83C0(0, &qword_2814240C0, 0x277D0ACF0);
  v19 = *MEMORY[0x277CCA308];
  sub_22BB1F68C();
  v29 = v18;
  v20 = sub_22BB1F9DC();

  if (v20)
  {
    if (([v20 isMainDisplay] & 1) == 0)
    {
      sub_22BAF0E68(v20, v25, v26);
    }

    v21 = v29;
  }

  else
  {
    sub_22BB1F43C();
    v22 = sub_22BB1F44C();
    v23 = sub_22BB1F8BC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22BABB000, v22, v23, "unable to decode FBSDisplayIdentity", v24, 2u);
      MEMORY[0x23189DF20](v24, -1, -1);
    }

    (*(v30 + 8))(v15, v31);
  }
}

void sub_22BAF0E68(void *a1, uint64_t a2, unint64_t a3)
{
  v55 = a2;
  v56 = a3;
  v51 = sub_22BB1F52C();
  v50 = *(v51 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v51);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_22BB1F56C();
  v47 = *(v49 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BB1F5BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF048, &unk_22BB216E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v54 = &v41 - v16;
  v17 = _s17AsyncProviderTaskVMa();
  v52 = *(v17 - 8);
  v53 = v17;
  v18 = *(v52 + 64);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v44 = &v41 - v20;
  v58 = a1;
  sub_22BB1EAFC();
  sub_22BB1EAEC();

  v21 = *(v3 + 24);
  v45 = a1;
  v57 = a1;
  os_unfair_lock_lock(v21 + 20);
  sub_22BAF2D48(&aBlock);
  os_unfair_lock_unlock(v21 + 20);
  if (aBlock == 1)
  {
    v42 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = *(v10 + 16);
    v43 = v3;
    v22(v13, v3 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent32EmbeddedWindowVisibilityProvider_deadline, v9);
    aBlock = 0;
    v61 = 0xE000000000000000;
    sub_22BB1FB7C();

    aBlock = 0xD000000000000022;
    v61 = 0x800000022BB271A0;
    v23 = v56;
    v24 = v55;
    if (v56)
    {
      v25 = v55;
    }

    else
    {
      v25 = 7104878;
    }

    if (v56)
    {
      v26 = v56;
    }

    else
    {
      v26 = 0xE300000000000000;
    }

    MEMORY[0x23189D130](v25, v26);

    v27 = v54;
    sub_22BAC8A94(v13, aBlock, v61, v54);

    (*(v10 + 8))(v13, v9);
    v28 = v52;
    if ((*(v52 + 48))(v27, 1, v53) == 1)
    {
      sub_22BAC81E8(v27, &qword_27D8DF048, &unk_22BB216E0);
    }

    else
    {
      v29 = v23;
      v30 = v44;
      sub_22BACDEBC(v27, v44);
      if (qword_281424268 != -1)
      {
        swift_once();
      }

      v31 = v42;
      sub_22BAC9EBC(v30, v42);
      v32 = (*(v28 + 80) + 48) & ~*(v28 + 80);
      v33 = swift_allocObject();
      v34 = v45;
      v35 = v43;
      v33[2] = v45;
      v33[3] = v35;
      v33[4] = v24;
      v33[5] = v29;
      sub_22BACDEBC(v31, v33 + v32);
      v64 = sub_22BAF2D64;
      v65 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v61 = 1107296256;
      v62 = sub_22BAC37D4;
      v63 = &block_descriptor_1;
      v36 = _Block_copy(&aBlock);

      v37 = v34;

      v38 = v46;
      sub_22BB1F54C();
      v59 = MEMORY[0x277D84F90];
      sub_22BAC3744(&qword_281424180, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
      sub_22BAC8324(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0);
      v39 = v48;
      v40 = v51;
      sub_22BB1FA8C();
      MEMORY[0x23189D350](0, v38, v39, v36);
      _Block_release(v36);
      (*(v50 + 8))(v39, v40);
      (*(v47 + 8))(v38, v49);
      sub_22BAC9F20(v30);
    }
  }
}

void sub_22BAF1548(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = sub_22BB1A088(&v4, a1);

  *a2 = v3 & 1;
}

void sub_22BAF15A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22BB1F45C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = SBSCreateLayoutServiceEndpointForExternalDisplay();
  if (v14)
  {
    v15 = v14;
    v24 = [objc_opt_self() configurationWithEndpoint_];
    sub_22BACD014(v24, a3, a4, a5, 0);

    v16 = v24;
  }

  else
  {
    sub_22BB1F43C();
    v17 = a1;
    v18 = sub_22BB1F44C();
    v19 = sub_22BB1F8BC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_22BABB000, v18, v19, "unable to create endpoint for FBSDisplayIdentity: %{public}@", v20, 0xCu);
      sub_22BAC81E8(v21, &qword_27D8DF178, &qword_22BB216F0);
      MEMORY[0x23189DF20](v21, -1, -1);
      MEMORY[0x23189DF20](v20, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
  }
}

void sub_22BAF17E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a8;
  v40 = a6;
  v41 = a7;
  v13 = sub_22BB1F51C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22BB1F45C();
  v42 = *(v18 - 8);
  v43 = v18;
  v19 = *(v42 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((a1 + 24));
  v22 = *(a1 + 16);
  if (v22)
  {
    v39 = a5;
    [v22 invalidate];

    *(a1 + 16) = 0;
    os_unfair_lock_unlock((a1 + 24));
    sub_22BB1F43C();
    (*(v14 + 16))(v17, a2, v13);
    sub_22BABFC10(a3, a4);
    v23 = sub_22BB1F44C();
    v24 = sub_22BB1F8BC();
    sub_22BABFC24(a3, a4);
    if (os_log_type_enabled(v23, v24))
    {
      v38 = v24;
      v25 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47 = v37;
      *v25 = 136446466;
      v26 = sub_22BB1F4FC();
      v28 = v27;
      (*(v14 + 8))(v17, v13);
      v29 = sub_22BABDC4C(v26, v28, &v47);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      if (a4 == 1)
      {
        v30 = 0xE400000000000000;
        v31 = 1852399981;
      }

      else
      {
        v45 = 0;
        v46 = 0xE000000000000000;

        sub_22BB1FB7C();

        v45 = 0xD000000000000015;
        v46 = 0x800000022BB27230;
        v32 = a3;
        v33 = a4;
        if (!a4)
        {
          sub_22BABFC24(a3, 0);
          v33 = 0xE300000000000000;
          v32 = 7104878;
        }

        MEMORY[0x23189D130](v32, v33);

        MEMORY[0x23189D130](41, 0xE100000000000000);
        v31 = v45;
        v30 = v46;
      }

      v34 = sub_22BABDC4C(v31, v30, &v47);

      *(v25 + 14) = v34;
      _os_log_impl(&dword_22BABB000, v23, v38, "scheduling retry after waiting %{public}s for FBSDisplayLayoutMonitor to provide window list for display: %{public}s", v25, 0x16u);
      v35 = v37;
      swift_arrayDestroy();
      MEMORY[0x23189DF20](v35, -1, -1);
      MEMORY[0x23189DF20](v25, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v17, v13);
    }

    (*(v42 + 8))(v21, v43);
    if (__OFADD__(v44, 1))
    {
      __break(1u);
    }

    else
    {
      sub_22BACD014(v40, a3, a4, v41, v44 + 1);
    }
  }

  else
  {

    os_unfair_lock_unlock((a1 + 24));
  }
}

uint64_t sub_22BAF1C00()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC26UIIntelligenceSupportAgent32EmbeddedWindowVisibilityProvider_deadline;
  v3 = sub_22BB1F5BC();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmbeddedWindowVisibilityProvider()
{
  result = qword_281424248;
  if (!qword_281424248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BAF1CF8()
{
  result = sub_22BB1F5BC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22BAF1DB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BAF1E00(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_22BAF1E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22BAF1ED0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_22BAF1F44(void ***a1, uint64_t a2, void ***a3, int64_t a4)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    v10 = 0x278720000;
    while (1)
    {
      v11 = v8++;
      if (v8 < v7)
      {
        v116 = v9;
        v118 = v11;
        v12 = *a3;
        v4 = (*a3)[v11];
        v13 = (*a3)[v8];
        v14 = v4;
        v15 = [v13 *(v10 + 2248)];
        if (v15 == [v14 *(v10 + 2248)])
        {
          v16 = [v13 layoutRole];
          if ((v16 - 1) > 9)
          {
            v4 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v4 = qword_22BB217B0[(v16 - 1)];
          }

          v21 = [v14 layoutRole];
          if ((v21 - 1) > 9)
          {
            v22 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = qword_22BB217B0[(v21 - 1)];
          }

          v20 = v4 < v22;
        }

        else
        {
          v17 = [v13 *(v10 + 2248)];
          v18 = [v14 *(v10 + 2248)];

          v19 = v18 < v17;
          v10 = 0x278720000;
          v20 = v19;
        }

        v122 = v20;
        v11 = v118;
        v8 = v118 + 2;
        if (v118 + 2 < v7)
        {
          v23 = &v12[v118 + 2];
          do
          {
            v4 = v8;
            v27 = *(v23 - 1);
            v28 = *v23;
            v29 = v27;
            v30 = [v28 *(v10 + 2248)];
            if (v30 == [v29 *(v10 + 2248)])
            {
              v31 = [v28 layoutRole];
              if ((v31 - 1) > 9)
              {
                v32 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v32 = qword_22BB217B0[(v31 - 1)];
              }

              v33 = v7;
              v34 = [v29 layoutRole];
              if ((v34 - 1) > 9)
              {
                v35 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v35 = qword_22BB217B0[(v34 - 1)];
              }

              v36 = v32 >= v35;
              v7 = v33;
              if (((v122 ^ v36) & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            else
            {
              v24 = [v28 *(v10 + 2248)];
              v25 = [v29 *(v10 + 2248)];

              v19 = v25 < v24;
              v10 = 0x278720000uLL;
              v26 = !v19;
              if (v122 == v26)
              {
LABEL_31:
                v9 = v116;
                v8 = v4;
                goto LABEL_35;
              }
            }

            v8 = v4 + 1;
            ++v23;
          }

          while (v7 != v4 + 1);
          v8 = v7;
          v9 = v116;
LABEL_35:
          v11 = v118;
          if (!v122)
          {
            goto LABEL_43;
          }

LABEL_36:
          if (v8 < v11)
          {
            goto LABEL_153;
          }

          if (v11 < v8)
          {
            v37 = 8 * v8 - 8;
            v38 = v11;
            v39 = v8;
            v40 = v11;
            while (1)
            {
              if (v40 != --v39)
              {
                v41 = *a3;
                if (!*a3)
                {
                  goto LABEL_159;
                }

                v42 = v41[v38];
                v41[v38] = *(v41 + v37);
                *(v41 + v37) = v42;
              }

              ++v40;
              v37 -= 8;
              ++v38;
              if (v40 >= v39)
              {
                goto LABEL_43;
              }
            }
          }

          goto LABEL_43;
        }

        v9 = v116;
        if (v20)
        {
          goto LABEL_36;
        }
      }

LABEL_43:
      v43 = a3[1];
      if (v8 >= v43)
      {
        goto LABEL_70;
      }

      if (__OFSUB__(v8, v11))
      {
        goto LABEL_152;
      }

      if (v8 - v11 >= a4)
      {
        goto LABEL_70;
      }

      v44 = (v11 + a4);
      if (__OFADD__(v11, a4))
      {
        goto LABEL_154;
      }

      if (v44 >= v43)
      {
        v44 = a3[1];
      }

      if (v44 < v11)
      {
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

      if (v8 == v44)
      {
        goto LABEL_70;
      }

      v117 = v9;
      v119 = v11;
      v114 = v6;
      v7 = *a3;
      v45 = &(*a3)[v8 - 1];
      v46 = v11 - v8;
      v121 = v44;
      while (2)
      {
        v123 = v8;
        v47 = *(v7 + 8 * v8);
        v48 = v46;
        v4 = v45;
        while (1)
        {
          v49 = *v4;
          v50 = v47;
          v51 = v49;
          v52 = [v50 *(v10 + 2248)];
          if (v52 == [v51 *(v10 + 2248)])
          {
            break;
          }

          v55 = [v50 *(v10 + 2248)];
          v56 = [v51 *(v10 + 2248)];

          if (v56 >= v55)
          {
            goto LABEL_52;
          }

LABEL_65:
          if (!v7)
          {
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
            goto LABEL_160;
          }

          v59 = *v4;
          v47 = *(v4 + 8);
          *v4 = v47;
          *(v4 + 8) = v59;
          v4 -= 8;
          v60 = __CFADD__(v48++, 1);
          v10 = 0x278720000;
          if (v60)
          {
            goto LABEL_53;
          }
        }

        v53 = [v50 layoutRole];
        if ((v53 - 1) > 9)
        {
          v54 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v54 = qword_22BB217B0[(v53 - 1)];
        }

        v57 = [v51 layoutRole];
        if ((v57 - 1) > 9)
        {
          v58 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v58 = qword_22BB217B0[(v57 - 1)];
        }

        if (v54 < v58)
        {
          goto LABEL_65;
        }

LABEL_52:
        v10 = 0x278720000uLL;
LABEL_53:
        v8 = v123 + 1;
        v45 += 8;
        --v46;
        if (v123 + 1 != v121)
        {
          continue;
        }

        break;
      }

      v8 = v121;
      v6 = v114;
      v9 = v117;
      v11 = v119;
LABEL_70:
      if (v8 < v11)
      {
        goto LABEL_151;
      }

      v61 = v9;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v9 = v61;
      }

      else
      {
        v9 = sub_22BAF6114(0, *(v61 + 2) + 1, 1, v61);
      }

      v4 = *(v9 + 2);
      v62 = *(v9 + 3);
      v63 = v4 + 1;
      if (v4 >= v62 >> 1)
      {
        v9 = sub_22BAF6114((v62 > 1), v4 + 1, 1, v9);
      }

      *(v9 + 2) = v63;
      v64 = &v9[16 * v4];
      *(v64 + 4) = v11;
      *(v64 + 5) = v8;
      v65 = *a1;
      if (!*a1)
      {
        goto LABEL_161;
      }

      if (v4)
      {
        while (2)
        {
          v66 = v63 - 1;
          if (v63 >= 4)
          {
            v71 = &v9[16 * v63 + 32];
            v72 = *(v71 - 64);
            v73 = *(v71 - 56);
            v77 = __OFSUB__(v73, v72);
            v74 = v73 - v72;
            if (v77)
            {
              goto LABEL_138;
            }

            v76 = *(v71 - 48);
            v75 = *(v71 - 40);
            v77 = __OFSUB__(v75, v76);
            v69 = v75 - v76;
            v70 = v77;
            if (v77)
            {
              goto LABEL_139;
            }

            v78 = &v9[16 * v63];
            v80 = *v78;
            v79 = *(v78 + 1);
            v77 = __OFSUB__(v79, v80);
            v81 = v79 - v80;
            if (v77)
            {
              goto LABEL_141;
            }

            v77 = __OFADD__(v69, v81);
            v82 = v69 + v81;
            if (v77)
            {
              goto LABEL_144;
            }

            if (v82 >= v74)
            {
              v100 = &v9[16 * v66 + 32];
              v102 = *v100;
              v101 = *(v100 + 1);
              v77 = __OFSUB__(v101, v102);
              v103 = v101 - v102;
              if (v77)
              {
                goto LABEL_148;
              }

              if (v69 < v103)
              {
                v66 = v63 - 2;
              }
            }

            else
            {
LABEL_90:
              if (v70)
              {
                goto LABEL_140;
              }

              v83 = &v9[16 * v63];
              v85 = *v83;
              v84 = *(v83 + 1);
              v86 = __OFSUB__(v84, v85);
              v87 = v84 - v85;
              v88 = v86;
              if (v86)
              {
                goto LABEL_143;
              }

              v89 = &v9[16 * v66 + 32];
              v91 = *v89;
              v90 = *(v89 + 1);
              v77 = __OFSUB__(v90, v91);
              v92 = v90 - v91;
              if (v77)
              {
                goto LABEL_146;
              }

              if (__OFADD__(v87, v92))
              {
                goto LABEL_147;
              }

              if (v87 + v92 < v69)
              {
                goto LABEL_104;
              }

              if (v69 < v92)
              {
                v66 = v63 - 2;
              }
            }
          }

          else
          {
            if (v63 == 3)
            {
              v67 = *(v9 + 4);
              v68 = *(v9 + 5);
              v77 = __OFSUB__(v68, v67);
              v69 = v68 - v67;
              v70 = v77;
              goto LABEL_90;
            }

            v93 = &v9[16 * v63];
            v95 = *v93;
            v94 = *(v93 + 1);
            v77 = __OFSUB__(v94, v95);
            v87 = v94 - v95;
            v88 = v77;
LABEL_104:
            if (v88)
            {
              goto LABEL_142;
            }

            v96 = &v9[16 * v66];
            v98 = *(v96 + 4);
            v97 = *(v96 + 5);
            v77 = __OFSUB__(v97, v98);
            v99 = v97 - v98;
            if (v77)
            {
              goto LABEL_145;
            }

            if (v99 < v87)
            {
              break;
            }
          }

          v4 = v66 - 1;
          if (v66 - 1 >= v63)
          {
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
            goto LABEL_155;
          }

          if (!*a3)
          {
            goto LABEL_158;
          }

          v7 = v8;
          v104 = v9;
          v105 = *&v9[16 * v4 + 32];
          v106 = *&v9[16 * v66 + 40];
          sub_22BAF27D0(&(*a3)[v105], &(*a3)[*&v9[16 * v66 + 32]], &(*a3)[v106], v65);
          if (v6)
          {
            goto LABEL_133;
          }

          if (v106 < v105)
          {
            goto LABEL_136;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = sub_22BB10CB4(v104);
          }

          if (v4 >= *(v104 + 2))
          {
            goto LABEL_137;
          }

          v107 = &v104[16 * v4];
          *(v107 + 4) = v105;
          *(v107 + 5) = v106;
          sub_22BB10C28(v66);
          v9 = v104;
          v63 = *(v104 + 2);
          v8 = v7;
          if (v63 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_122;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_122:
  v7 = *a1;
  if (!*a1)
  {
    goto LABEL_162;
  }

  v4 = v9;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v108 = v4;
  }

  else
  {
LABEL_156:
    v108 = sub_22BB10CB4(v4);
  }

  v109 = v6;
  v4 = *(v108 + 2);
  if (v4 < 2)
  {
LABEL_133:

    return;
  }

  while (*a3)
  {
    v6 = v4 - 1;
    v110 = *&v108[16 * v4];
    v111 = v108;
    v112 = *&v108[16 * v4 + 24];
    sub_22BAF27D0(&(*a3)[v110], &(*a3)[*&v108[16 * v4 + 16]], &(*a3)[v112], v7);
    if (v109)
    {
      goto LABEL_133;
    }

    if (v112 < v110)
    {
      goto LABEL_149;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v111 = sub_22BB10CB4(v111);
    }

    if (v4 - 2 >= *(v111 + 2))
    {
      goto LABEL_150;
    }

    v113 = &v111[16 * v4];
    *v113 = v110;
    *(v113 + 1) = v112;
    sub_22BB10C28(v4 - 1);
    v108 = v111;
    v4 = *(v111 + 2);
    if (v4 <= 1)
    {
      goto LABEL_133;
    }
  }

LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
}

uint64_t sub_22BAF27D0(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v31 = __src;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v14 = &v4[v12];
    if (v10 >= 8 && v31 > v6)
    {
      v48 = v4;
LABEL_35:
      v47 = v31;
      v32 = v31 - 1;
      --v5;
      v33 = v14;
      do
      {
        v34 = *--v33;
        v35 = v32;
        v36 = *v32;
        v37 = v34;
        v38 = v36;
        v39 = [v37 level];
        if (v39 == [v38 level])
        {
          v40 = [v37 layoutRole];
          if ((v40 - 1) > 9)
          {
            v41 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = qword_22BB217B0[(v40 - 1)];
          }

          v44 = [v38 layoutRole];
          if ((v44 - 1) > 9)
          {
            v45 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v45 = qword_22BB217B0[(v44 - 1)];
          }

          if (v41 < v45)
          {
LABEL_49:
            v4 = v48;
            if (v5 + 1 != v47)
            {
              *v5 = *v35;
            }

            if (v14 <= v48 || (v31 = v35, v35 <= v6))
            {
              v31 = v35;
              goto LABEL_55;
            }

            goto LABEL_35;
          }
        }

        else
        {
          v42 = [v37 level];
          v43 = [v38 level];

          if (v43 < v42)
          {
            goto LABEL_49;
          }
        }

        v4 = v48;
        if (v5 + 1 != v14)
        {
          *v5 = *v33;
        }

        --v5;
        v14 = v33;
        v32 = v35;
      }

      while (v33 > v48);
      v14 = v33;
      v31 = v47;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && __src < v5)
    {
      v15 = __src;
      do
      {
        v16 = v15;
        v17 = *v4;
        v18 = *v15;
        v19 = v17;
        v20 = [v18 level];
        if (v20 == [v19 level])
        {
          v21 = [v18 layoutRole];
          if ((v21 - 1) > 9)
          {
            v22 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = qword_22BB217B0[(v21 - 1)];
          }

          v28 = [v19 layoutRole];
          if ((v28 - 1) > 9)
          {
            v29 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = qword_22BB217B0[(v28 - 1)];
          }

          if (v22 >= v29)
          {
LABEL_24:
            v27 = v4;
            v30 = v6 == v4++;
            v15 = v16;
            if (v30)
            {
              goto LABEL_26;
            }

LABEL_25:
            *v6 = *v27;
            goto LABEL_26;
          }
        }

        else
        {
          v23 = [v18 level];
          v24 = v4;
          v25 = [v19 level];

          v26 = v25 < v23;
          v4 = v24;
          if (!v26)
          {
            goto LABEL_24;
          }
        }

        v27 = v16;
        v15 = v16 + 1;
        if (v6 != v16)
        {
          goto LABEL_25;
        }

LABEL_26:
        ++v6;
      }

      while (v4 < v14 && v15 < v5);
    }

    v31 = v6;
  }

LABEL_55:
  if (v31 != v4 || v31 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v31, v4, 8 * (v14 - v4));
  }

  return 1;
}

id sub_22BAF2BB8()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22BB1E48C();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_22BB1E47C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_22BAF2C78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22BAF2CCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_22BAF2D64()
{
  v1 = *(_s17AsyncProviderTaskVMa() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_22BAF15A4(v2, v3, v4, v5, v6);
}

void sub_22BAF2DCC()
{
  v1 = *(sub_22BB1F51C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(_s17AsyncProviderTaskVMa() - 8);
  v7 = (*(v6 + 80) + v5 + 8) & ~*(v6 + 80);
  v8 = *(v0 + 16);
  v9 = *(v0 + v3);
  v10 = *(v0 + v3 + 8);
  v11 = *(v0 + v4);
  v12 = *(v0 + v5);
  v13 = *(v0 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_22BAF17E8(v8, v0 + v2, v9, v10, v11, v12, v0 + v7, v13);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22BAF2F10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_22BAF2F58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22BAF2FD0()
{
  result = sub_22BB1F2EC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BAF3064()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF1A0, &qword_22BB218B8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_2814247A8 = result;
  return result;
}

uint64_t sub_22BAF30A8()
{
  sub_22BB1FDDC();
  MEMORY[0x23189D810](*v0);
  return sub_22BB1FE0C();
}

uint64_t sub_22BAF3118()
{
  sub_22BB1FDDC();
  MEMORY[0x23189D810](*v0);
  return sub_22BB1FE0C();
}

uint64_t sub_22BAF31AC()
{
  v0 = sub_22BB1F8EC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_22BB1F90C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BB1F56C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22BAC83C0(0, &qword_2814240C8, 0x277D85C78);
  sub_22BB1F55C();
  (*(v3 + 104))(v6, *MEMORY[0x277D85268], v2);
  v10[1] = MEMORY[0x277D84F90];
  sub_22BAF3A74(&unk_2814240D0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0C8, &qword_22BB21710);
  sub_22BAC836C(&qword_281424140, &unk_27D8DF0C8, &qword_22BB21710);
  sub_22BB1FA8C();
  result = sub_22BB1F93C();
  qword_2814247C0 = result;
  return result;
}

uint64_t sub_22BAF340C(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v3 = sub_22BB1F52C();
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22BB1F56C();
  v49 = *(v51 - 8);
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v48 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s17AsyncProviderTaskVMa();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v44 = v10;
  v45 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BB1F51C();
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v39 - v16;
  v18 = sub_22BB1F95C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22BB1F5BC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BB1F59C();
  sub_22BAF3A74(&qword_281424178, MEMORY[0x277D851E0]);
  v46 = a2;
  LOBYTE(a2) = sub_22BB1F64C();
  (*(v24 + 8))(v27, v23);
  v28 = 0;
  if (a2)
  {
    v40 = v3;
    v39[1] = sub_22BAC83C0(0, &qword_2814240B0, 0x277D85CA0);
    if (qword_2814247B8 != -1)
    {
      swift_once();
    }

    aBlock[0] = MEMORY[0x277D84F90];
    sub_22BAF3A74(&qword_2814240B8, MEMORY[0x277D85278]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF060, &qword_22BB21250);
    sub_22BAC836C(&qword_281424138, &unk_27D8DF060, &qword_22BB21250);
    sub_22BB1FA8C();
    v28 = sub_22BB1F96C();
    (*(v19 + 8))(v22, v18);
    ObjectType = swift_getObjectType();
    sub_22BAE33C0(v17);
    sub_22BAE3434(v14);
    MEMORY[0x23189D3F0](v46, v17, v14, ObjectType);
    v30 = v42;
    v31 = *(v41 + 8);
    v31(v14, v42);
    v31(v17, v30);
    v32 = v45;
    sub_22BAC9EBC(v47, v45);
    v33 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v34 = swift_allocObject();
    sub_22BACDEBC(v32, v34 + v33);
    aBlock[4] = sub_22BACE618;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22BAC37D4;
    aBlock[3] = &block_descriptor_2;
    v35 = _Block_copy(aBlock);
    v36 = v48;
    sub_22BAE3560();
    v37 = v50;
    sub_22BAE3564();
    sub_22BB1F97C();
    _Block_release(v35);
    (*(v52 + 8))(v37, v40);
    (*(v49 + 8))(v36, v51);

    sub_22BB1F99C();
  }

  return v28;
}

uint64_t sub_22BAF3A74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_26UIIntelligenceSupportAgent16FragmentCollatorC10DisplayKeyO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22BAF3B8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BAF3BE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_22BAF3C44(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t _s18SystemOverlayStateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s18SystemOverlayStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22BAF3DD0()
{
  result = qword_27D8DF1A8;
  if (!qword_27D8DF1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF1A8);
  }

  return result;
}

uint64_t sub_22BAF3E24(uint64_t a1, unint64_t a2)
{
  if (a2 == 1)
  {
    return 1852399981;
  }

  v3 = a2;

  sub_22BB1FB7C();

  v5 = a1;
  if (!v3)
  {
    sub_22BABFC24(a1, 0);
    v3 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x23189D130](v5, v3);

  MEMORY[0x23189D130](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t sub_22BAF3EF8()
{
  v2 = *v0;
  v1 = v0[1];
  sub_22BB1FDDC();
  if (v1 == 1)
  {
    MEMORY[0x23189D810](0);
  }

  else
  {
    MEMORY[0x23189D810](1);
    sub_22BB1FDFC();
    if (v1)
    {
      sub_22BB1F6EC();
    }
  }

  return sub_22BB1FE0C();
}

uint64_t sub_22BAF3F88()
{
  v1 = v0[1];
  if (v1 == 1)
  {
    return MEMORY[0x23189D810](0);
  }

  v3 = *v0;
  MEMORY[0x23189D810](1);
  if (!v1)
  {
    return sub_22BB1FDFC();
  }

  sub_22BB1FDFC();

  return sub_22BB1F6EC();
}

uint64_t sub_22BAF4018()
{
  v2 = *v0;
  v1 = v0[1];
  sub_22BB1FDDC();
  if (v1 == 1)
  {
    MEMORY[0x23189D810](0);
  }

  else
  {
    MEMORY[0x23189D810](1);
    sub_22BB1FDFC();
    if (v1)
    {
      sub_22BB1F6EC();
    }
  }

  return sub_22BB1FE0C();
}

BOOL sub_22BAF40AC(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 == 1)
  {
    return 0;
  }

  if (v3)
  {
    if (v4 && (*a1 == *a2 && v3 == v4 || (sub_22BB1FD9C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_22BAF4130@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BAF4210(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_22BAF41BC()
{
  result = qword_281424860[0];
  if (!qword_281424860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281424860);
  }

  return result;
}

unint64_t sub_22BAF4210(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t IntelligenceSupportAgent.TimeoutReasons.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84FA0];
  v2 = MEMORY[0x277D84F90];
  result = sub_22BAF709C(MEMORY[0x277D84F90], &qword_27D8DF2B8, &unk_22BB21F78, &unk_27D8DEFF8, &unk_22BB21200);
  *(a1 + 16) = result;
  *(a1 + 24) = v2;
  return result;
}

uint64_t IntelligenceSupportAgent.TimeoutReasons.waitingForProcesses.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.TimeoutReasons.waitingForClientTasks.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.TimeoutReasons.waitingForSystemTasks.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

unint64_t sub_22BAF43E8()
{
  v1 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000015;
  }

  v2 = 0xD00000000000001ALL;
  if (!*v0)
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_22BAF4474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BAF7F64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BAF449C(uint64_t a1)
{
  v2 = sub_22BAF727C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BAF44D8(uint64_t a1)
{
  v2 = sub_22BAF727C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceSupportAgent.TimeoutReasons.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF1B0, &qword_22BB21AE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = *v1;
  v19 = v1[1];
  v10 = *(v1 + 1);
  v17 = *(v1 + 2);
  v18 = v10;
  v16 = *(v1 + 3);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22BAF727C();
  sub_22BB1FE2C();
  LOBYTE(v21) = 0;
  sub_22BB1FD1C();
  if (!v2)
  {
    v12 = v17;
    v13 = v18;
    v14 = v16;
    LOBYTE(v21) = 1;
    sub_22BB1FD1C();
    v21 = v13;
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF1C0, &qword_22BB21AE8);
    sub_22BAF73B0(&qword_27D8DF1C8, &qword_27D8DF158);
    sub_22BB1FD4C();
    v21 = v12;
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF1D0, &unk_22BB21AF0);
    sub_22BAF72D0();
    sub_22BB1FD4C();
    v21 = v14;
    v20 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
    sub_22BAF752C(&qword_27D8DF1E0);
    sub_22BB1FD4C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t IntelligenceSupportAgent.TimeoutReasons.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF1E8, &qword_22BB21B00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v20 = sub_22BAF709C(MEMORY[0x277D84F90], &qword_27D8DF2B8, &unk_22BB21F78, &unk_27D8DEFF8, &unk_22BB21200);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22BAF727C();
  sub_22BB1FE1C();
  if (!v2)
  {
    v11 = v6;
    LOBYTE(v22) = 0;
    v19 = sub_22BB1FC8C();
    LOBYTE(v22) = 1;
    v18 = sub_22BB1FC8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF1C0, &qword_22BB21AE8);
    v21 = 2;
    sub_22BAF73B0(&qword_27D8DF1F0, &qword_27D8DF148);
    sub_22BB1FCBC();
    v13 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF1D0, &unk_22BB21AF0);
    v21 = 3;
    sub_22BAF744C();
    sub_22BB1FCBC();

    v14 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
    v21 = 4;
    sub_22BAF752C(&qword_27D8DF200);
    sub_22BB1FCBC();
    (*(v11 + 8))(v9, v5);
    v15 = v22;
    v16 = v18 & 1;
    *a2 = v19 & 1;
    *(a2 + 1) = v16;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t IntelligenceSupportAgent.ElementHierarchy.timeoutReasons.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_22BAEE694(v2, v3);
}

__n128 IntelligenceSupportAgent.ElementHierarchy.timeoutReasons.setter(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  sub_22BAEECF4(*v1, v1[1]);
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v6;
  return result;
}

uint64_t IntelligenceSupportAgent.ElementHierarchy.roots.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.ElementHierarchy.executableCommands.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 40);

  *(v1 + 40) = v2;
  return result;
}

double IntelligenceSupportAgent.ElementHierarchy.init(roots:executableCommands:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = a1;
  *(a3 + 40) = v3;
  return result;
}

uint64_t sub_22BAF4D24()
{
  v1 = 0x73746F6F72;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5274756F656D6974;
  }
}

uint64_t sub_22BAF4D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BAF8124(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BAF4DC0(uint64_t a1)
{
  v2 = sub_22BAF7598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BAF4DFC(uint64_t a1)
{
  v2 = sub_22BAF7598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceSupportAgent.ElementHierarchy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF208, &qword_22BB21B08);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  v7 = v1[3];
  v9 = v1[4];
  v20 = v1[5];
  v21 = v9;
  v11 = a1[3];
  v10 = a1[4];
  v12 = a1;
  v14 = &v20 - v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_22BAEE694(v5, v6);
  sub_22BAF7598();
  sub_22BB1FE2C();
  v24 = v5;
  v25 = v6;
  v26 = v8;
  v27 = v7;
  v15 = v3;
  v28 = 0;
  sub_22BAF75EC();
  v16 = v22;
  sub_22BB1FCFC();
  sub_22BAEECF4(v24, v25);
  if (v16)
  {
    return (*(v23 + 8))(v14, v3);
  }

  v18 = v20;
  v19 = v23;
  v24 = v21;
  v28 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF220, &qword_22BB21B10);
  sub_22BAF76E8(&qword_27D8DF228, &qword_27D8DF230);
  sub_22BB1FD4C();
  v24 = v18;
  v28 = 2;
  sub_22BAF7640();

  sub_22BB1FD4C();

  return (*(v19 + 8))(v14, v15);
}

uint64_t IntelligenceSupportAgent.ElementHierarchy.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF240, &qword_22BB21B18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22BAF7598();
  sub_22BB1FE1C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_22BAEECF4(0, 0);
  }

  else
  {
    v27 = 0;
    sub_22BAF7694();
    sub_22BB1FC6C();
    v21 = a2;
    v13 = v23;
    v12 = v24;
    v14 = v25;
    v22 = v26;
    sub_22BAEECF4(0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF220, &qword_22BB21B10);
    v27 = 1;
    sub_22BAF76E8(&qword_27D8DF250, &qword_27D8DF258);
    sub_22BB1FCBC();
    v20 = v23;
    v27 = 2;
    sub_22BAF7784();
    sub_22BB1FCBC();
    (*(v6 + 8))(v9, v5);
    v16 = v22;
    v15 = v23;
    v18 = v20;
    v17 = v21;
    *v21 = v13;
    v17[1] = v12;
    v17[2] = v14;
    v17[3] = v16;
    v17[4] = v18;
    v17[5] = v15;
    sub_22BAEE694(v13, v12);

    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_22BAEECF4(v13, v12);
  }
}

uint64_t sub_22BAF5448(char a1)
{
  v3 = sub_22BB1E96C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 32);
  if (a1)
  {
    v41 = 2651;
    v42 = 0xE200000000000000;
    v9 = *(v8 + 16);
    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      v40 = MEMORY[0x277D84F90];
      sub_22BAC8968(0, v9, 0);
      v10 = v40;
      v12 = *(v4 + 16);
      v11 = v4 + 16;
      v13 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
      v37 = *(v11 + 56);
      v38 = v12;
      v39 = v11;
      v36 = (v11 - 8);
      do
      {
        v38(v7, v13, v3);
        v14 = sub_22BB1E76C();
        v16 = v15;
        v17 = v3;
        (*v36)(v7, v3);
        v40 = v10;
        v19 = *(v10 + 16);
        v18 = *(v10 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_22BAC8968((v18 > 1), v19 + 1, 1);
          v10 = v40;
        }

        *(v10 + 16) = v19 + 1;
        v20 = v10 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v13 += v37;
        --v9;
        v3 = v17;
      }

      while (v9);
    }
  }

  else
  {
    v41 = 2651;
    v42 = 0xE200000000000000;
    v21 = *(v8 + 16);
    v10 = MEMORY[0x277D84F90];
    if (v21)
    {
      v40 = MEMORY[0x277D84F90];
      sub_22BAC8968(0, v21, 0);
      v10 = v40;
      v23 = *(v4 + 16);
      v22 = v4 + 16;
      v24 = v8 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
      v37 = *(v22 + 56);
      v38 = v23;
      v39 = v22;
      v36 = (v22 - 8);
      do
      {
        v38(v7, v24, v3);
        sub_22BACFA94(&qword_27D8DF2B0, MEMORY[0x277D746B0]);
        v25 = sub_22BB1FD7C();
        v27 = v26;
        (*v36)(v7, v3);
        v40 = v10;
        v29 = *(v10 + 16);
        v28 = *(v10 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_22BAC8968((v28 > 1), v29 + 1, 1);
          v10 = v40;
        }

        *(v10 + 16) = v29 + 1;
        v30 = v10 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        v24 += v37;
        --v21;
      }

      while (v21);
    }
  }

  v40 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
  sub_22BAF77D8();
  v31 = sub_22BB1F63C();
  v33 = v32;

  MEMORY[0x23189D130](v31, v33);

  MEMORY[0x23189D130](23818, 0xE200000000000000);
  return v41;
}

unint64_t sub_22BAF57F4(char a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[3];
  v5 = v1[5];
  v23 = v1[2];
  if (*(v1[4] + 16))
  {
    v24 = *v1;
    v25 = v1[1];
    v26 = v1[2];
    v27 = v1[3];
    v28 = v1[4];
    v29 = v1[5];
    v6 = sub_22BAF5448(a1 & 1);
    MEMORY[0x23189D130](v6);

    v7 = sub_22BACE678(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_22BACE678((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[16 * v9];
    *(v10 + 4) = 0x203A73746F6F72;
    *(v10 + 5) = 0xE700000000000000;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if ((sub_22BB17F84() & 1) == 0)
  {
    v11 = IntelligenceSupportAgent.ExecutableCommands.description.getter();
    MEMORY[0x23189D130](v11);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_22BACE678(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = sub_22BACE678((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    v14 = &v7[16 * v13];
    *(v14 + 4) = 0x73646E616D6D6F63;
    *(v14 + 5) = 0xEA0000000000203ALL;
  }

  if (v2)
  {
    sub_22BB1FB7C();

    v15 = IntelligenceSupportAgent.TimeoutReasons.description.getter();
    MEMORY[0x23189D130](v15);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_22BACE678(0, *(v7 + 2) + 1, 1, v7);
    }

    v17 = *(v7 + 2);
    v16 = *(v7 + 3);
    if (v17 >= v16 >> 1)
    {
      v7 = sub_22BACE678((v16 > 1), v17 + 1, 1, v7);
    }

    *(v7 + 2) = v17 + 1;
    v18 = &v7[16 * v17];
    *(v18 + 4) = 0xD000000000000010;
    *(v18 + 5) = 0x800000022BB27360;
  }

  sub_22BB1FB7C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
  sub_22BAF77D8();
  v19 = sub_22BB1F63C();
  v21 = v20;

  MEMORY[0x23189D130](v19, v21);

  MEMORY[0x23189D130](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t IntelligenceSupportAgent.TimeoutReasons.description.getter()
{
  v1 = *(v0 + 1);
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*v0 != 1)
  {
    v5 = MEMORY[0x277D84F90];
    if (!*(v0 + 1))
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v5 = sub_22BACE678(0, 1, 1, MEMORY[0x277D84F90]);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_22BACE678((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  *(v8 + 4) = 0xD000000000000025;
  *(v8 + 5) = 0x800000022BB27410;
  if (v1)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_22BACE678(0, *(v5 + 2) + 1, 1, v5);
    }

    v10 = *(v5 + 2);
    v9 = *(v5 + 3);
    if (v10 >= v9 >> 1)
    {
      v5 = sub_22BACE678((v9 > 1), v10 + 1, 1, v5);
    }

    *(v5 + 2) = v10 + 1;
    v11 = &v5[16 * v10];
    *(v11 + 4) = 0xD000000000000020;
    *(v11 + 5) = 0x800000022BB273E0;
  }

LABEL_12:
  if (*(v3 + 16))
  {
    sub_22BB1FB7C();

    sub_22BB1EADC();
    sub_22BACFA94(&qword_2814250E0, MEMORY[0x277D74708]);
    v12 = sub_22BB1F85C();
    MEMORY[0x23189D130](v12);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_22BACE678(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_22BACE678((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[16 * v14];
    *(v15 + 4) = 0xD000000000000015;
    *(v15 + 5) = 0x800000022BB27380;
  }

  if (*(v2 + 16))
  {
    sub_22BB1FB7C();

    sub_22BB1EADC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
    sub_22BACFA94(&qword_2814250E0, MEMORY[0x277D74708]);
    v16 = sub_22BB1F5FC();
    MEMORY[0x23189D130](v16);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_22BACE678(0, *(v5 + 2) + 1, 1, v5);
    }

    v18 = *(v5 + 2);
    v17 = *(v5 + 3);
    if (v18 >= v17 >> 1)
    {
      v5 = sub_22BACE678((v17 > 1), v18 + 1, 1, v5);
    }

    *(v5 + 2) = v18 + 1;
    v19 = &v5[16 * v18];
    *(v19 + 4) = 0xD000000000000017;
    *(v19 + 5) = 0x800000022BB273A0;
  }

  if (*(v4 + 16))
  {
    sub_22BB1FB7C();

    v20 = MEMORY[0x23189D210](v4, MEMORY[0x277D837D0]);
    MEMORY[0x23189D130](v20);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_22BACE678(0, *(v5 + 2) + 1, 1, v5);
    }

    v22 = *(v5 + 2);
    v21 = *(v5 + 3);
    if (v22 >= v21 >> 1)
    {
      v5 = sub_22BACE678((v21 > 1), v22 + 1, 1, v5);
    }

    *(v5 + 2) = v22 + 1;
    v23 = &v5[16 * v22];
    *(v23 + 4) = 0xD000000000000017;
    *(v23 + 5) = 0x800000022BB273C0;
  }

  sub_22BB1FB7C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
  sub_22BAF77D8();
  v24 = sub_22BB1F63C();
  v26 = v25;

  MEMORY[0x23189D130](v24, v26);

  MEMORY[0x23189D130](41, 0xE100000000000000);
  return 0x5274756F656D6954;
}

char *sub_22BAF6114(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF600, &unk_22BB21FA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_22BAF6240(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF2A0, &qword_22BB21F68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s26UIIntelligenceSupportAgent012IntelligencebC0C16ElementHierarchyV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v13 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    v24[0] = *a1;
    v24[1] = v3;
    v24[2] = v5;
    v24[3] = v4;
    if (v9)
    {
      v18 = v12;
      v19 = v6;
      v20 = v8 & 0x101;
      v21 = v9;
      v22 = v11;
      v23 = v10;
      sub_22BAEE694(v2, v3);
      sub_22BAEE694(v8, v9);
      sub_22BAEE694(v2, v3);
      v14 = _s26UIIntelligenceSupportAgent012IntelligencebC0C14TimeoutReasonsV2eeoiySbAE_AEtFZ_0(v24, &v20);

      sub_22BAEECF4(v2, v3);
      if ((v14 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    sub_22BAEE694(v2, v3);
    sub_22BAEE694(v8, 0);
    sub_22BAEE694(v2, v3);

LABEL_8:
    sub_22BAEECF4(v2, v3);
    sub_22BAEECF4(v8, v9);
    return 0;
  }

  v18 = a2[5];
  v19 = a1[5];
  sub_22BAEE694(v2, 0);
  if (v9)
  {
    sub_22BAEE694(v8, v9);
    goto LABEL_8;
  }

  sub_22BAEE694(v8, 0);
  sub_22BAEECF4(v2, 0);
LABEL_10:
  if (sub_22BAF9BD4(v7, v13))
  {

    sub_22BB173EC(v19, v18);
    v16 = v15;

    return v16 & 1;
  }

  return 0;
}

uint64_t _s26UIIntelligenceSupportAgent012IntelligencebC0C14TimeoutReasonsV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((a1[1] ^ a2[1]))
  {
    return 0;
  }

  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  v5 = *(a2 + 2);
  v4 = *(a2 + 3);
  sub_22BAF92BC(*(a1 + 1), *(a2 + 1));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_22BB17A90(v3, v5);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  return sub_22BAF9E14(v2, v4);
}

unint64_t sub_22BAF6664(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF360, &qword_22BB22068);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF118, &unk_22BB22070);
    v8 = sub_22BB1FC2C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22BAD6B34(v10, v6, &qword_27D8DF360, &qword_22BB22068);
      result = sub_22BABE164(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for ConnectionID();
      result = sub_22BAF8248(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for ConnectionID);
      *(v8[7] + 8 * v14) = *(v6 + v9);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22BAF6848(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF330, &unk_22BB22010);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF028, &qword_22BB21220);
    v8 = sub_22BB1FC2C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22BAD6B34(v10, v6, &qword_27D8DF330, &unk_22BB22010);
      result = sub_22BACB688(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22BB1F2EC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22BAF6A30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF338, &unk_22BB22020);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF0A8, &qword_22BB21288);
    v8 = sub_22BB1FC2C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22BAD6B34(v10, v6, &qword_27D8DF338, &unk_22BB22020);
      result = sub_22BB19350(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22BB1F2AC();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_22BB1E68C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22BAF6C50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF348, &unk_22BB22040);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF090, &qword_22BB21270);
    v8 = sub_22BB1FC2C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22BAD6B34(v10, v6, &qword_27D8DF348, &unk_22BB22040);
      result = sub_22BB19424(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22BB1E9DC();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_22BB1EA5C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22BAF6E94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF350, &unk_22BB22050);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF130, &qword_22BB212F0);
    v8 = sub_22BB1FC2C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22BAD6B34(v10, v6, &qword_27D8DF350, &unk_22BB22050);
      result = sub_22BABE164(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for ConnectionID();
      result = sub_22BAF8248(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for ConnectionID);
      *(v8[7] + 8 * v14) = *(v6 + v9);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22BAF709C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = sub_22BB1FC2C();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_22BAD6B34(v17, v13, a2, v28);
      result = sub_22BB1927C(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = sub_22BB1EADC();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
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

unint64_t sub_22BAF727C()
{
  result = qword_27D8DF1B8;
  if (!qword_27D8DF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF1B8);
  }

  return result;
}

unint64_t sub_22BAF72D0()
{
  result = qword_27D8DF1D8;
  if (!qword_27D8DF1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF1D0, &unk_22BB21AF0);
    sub_22BACFA94(&qword_27D8DF158, MEMORY[0x277D74708]);
    sub_22BAF752C(&qword_27D8DF1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF1D8);
  }

  return result;
}

uint64_t sub_22BAF73B0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF1C0, &qword_22BB21AE8);
    sub_22BACFA94(a2, MEMORY[0x277D74708]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BAF744C()
{
  result = qword_27D8DF1F8;
  if (!qword_27D8DF1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF1D0, &unk_22BB21AF0);
    sub_22BACFA94(&qword_27D8DF148, MEMORY[0x277D74708]);
    sub_22BAF752C(&qword_27D8DF200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF1F8);
  }

  return result;
}

uint64_t sub_22BAF752C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D8DF070, &qword_22BB21258);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BAF7598()
{
  result = qword_27D8DF210;
  if (!qword_27D8DF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF210);
  }

  return result;
}

unint64_t sub_22BAF75EC()
{
  result = qword_27D8DF218;
  if (!qword_27D8DF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF218);
  }

  return result;
}

unint64_t sub_22BAF7640()
{
  result = qword_27D8DF238;
  if (!qword_27D8DF238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF238);
  }

  return result;
}

unint64_t sub_22BAF7694()
{
  result = qword_27D8DF248;
  if (!qword_27D8DF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF248);
  }

  return result;
}

uint64_t sub_22BAF76E8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF220, &qword_22BB21B10);
    sub_22BACFA94(a2, MEMORY[0x277D746B0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BAF7784()
{
  result = qword_27D8DF260;
  if (!qword_27D8DF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF260);
  }

  return result;
}

unint64_t sub_22BAF77D8()
{
  result = qword_281424148;
  if (!qword_281424148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D8DF070, &qword_22BB21258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281424148);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BAF7848(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22BAF7890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26UIIntelligenceSupportAgent012IntelligencebC0C14TimeoutReasonsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22BAF78F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BAF7940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s14descr283F6AF29O16ElementHierarchyV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr283F6AF29O16ElementHierarchyV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22BAF7B00()
{
  result = qword_27D8DF268;
  if (!qword_27D8DF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF268);
  }

  return result;
}

unint64_t sub_22BAF7B58()
{
  result = qword_27D8DF270;
  if (!qword_27D8DF270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF270);
  }

  return result;
}

unint64_t sub_22BAF7BB0()
{
  result = qword_27D8DF278;
  if (!qword_27D8DF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF278);
  }

  return result;
}

unint64_t sub_22BAF7C08()
{
  result = qword_27D8DF280;
  if (!qword_27D8DF280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF280);
  }

  return result;
}

unint64_t sub_22BAF7C60()
{
  result = qword_27D8DF288;
  if (!qword_27D8DF288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF288);
  }

  return result;
}

unint64_t sub_22BAF7CB8()
{
  result = qword_27D8DF290;
  if (!qword_27D8DF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF290);
  }

  return result;
}

unint64_t sub_22BAF7D0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF310, &qword_22BB21FE8);
    v3 = sub_22BB1FC2C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22BAD6B34(v4, &v11, &qword_27D8DF318, &unk_22BB21FF0);
      v5 = v11;
      result = sub_22BB1953C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_22BAEEDE4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_22BAF7E34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0B8, &unk_22BB21290);
    v3 = sub_22BB1FC2C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22BAD6B34(v4, &v13, &qword_27D8DF320, &qword_22BB22000);
      v5 = v13;
      v6 = v14;
      result = sub_22BAD6B9C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22BAEEDE4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_22BAF7F64(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001FLL && 0x800000022BB27440 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022BB27460 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022BB27480 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022BB274A0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022BB274C0 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_22BB1FD9C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_22BAF8124(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5274756F656D6974 && a2 == 0xEE00736E6F736165;
  if (v4 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746F6F72 && a2 == 0xE500000000000000 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022BB274E0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_22BB1FD9C();

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

uint64_t sub_22BAF8248(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22BAF82B0(uint64_t a1)
{
  v37 = sub_22BB1E67C();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_22BAC8968(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22BB1FA9C();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_22BB1E66C();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_22BAC8968((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_22BADEAF4(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_22BADEAF4(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22BAF85B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v103 = a3;
  v100 = sub_22BB1EE9C();
  v98 = *(v100 - 8);
  v5 = *(v98 + 64);
  MEMORY[0x28223BE20](v100);
  v97 = v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BB1F0BC();
  v95 = *(v7 - 8);
  v96 = v7;
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v7);
  v94 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_22BB1EC7C();
  v99 = *(v101 - 8);
  v10 = *(v99 + 64);
  MEMORY[0x28223BE20](v101);
  v12 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BB1EC5C();
  v88 = *(v13 - 8);
  v89 = v13;
  v14 = *(v88 + 64);
  MEMORY[0x28223BE20](v13);
  v87 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22BB1EC9C();
  v85 = *(v16 - 8);
  v86 = v16;
  v17 = *(v85 + 64);
  MEMORY[0x28223BE20](v16);
  v84 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_22BB1EC1C();
  v82 = *(v83 - 8);
  v19 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v79 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v81 = v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v80 = v78 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF040, &unk_22BB21230);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = v78 - v28;
  v30 = sub_22BB1F5BC();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v78[1] = v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = v78 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = v78 - v38;
  v40 = sub_22BB1F2EC();
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v90 = v45;
  v91 = v44;
  v46 = *(v45 + 16);
  v102 = a1;
  v46(v78 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v42);
  (*(v31 + 16))(v39);
  v47 = *(a2 + 16);
  v92 = v31;
  v93 = v30;
  if (v47)
  {
    (*(v31 + 56))(v29, 1, 1, v30);
    v48 = *a2;
    sub_22BB1F5DC();
    if ((*(v31 + 48))(v29, 1, v30) != 1)
    {
      sub_22BAC81E8(v29, &qword_27D8DF040, &unk_22BB21230);
    }
  }

  else
  {
    v49 = *(a2 + 8);
    sub_22BB1F57C();
    (*(v31 + 56))(v29, 0, 1, v30);
    (*(v31 + 32))(v36, v29, v30);
  }

  sub_22BB1F0EC();
  v50 = *(a2 + 56);
  sub_22BB1EFCC();
  v51 = *(a2 + 57);
  sub_22BB1EF4C();
  v52 = *(a2 + 58);
  sub_22BB1F01C();
  v53 = *(a2 + 96);
  sub_22BB1F07C();
  v54 = *(a2 + 104);
  v55 = *(a2 + 112);
  sub_22BB1F04C();
  v56 = *(a2 + 113);
  sub_22BB1EEFC();
  v57 = *(a2 + 114);
  sub_22BB1EFDC();
  v58 = *(a2 + 115);
  sub_22BB1F06C();
  v59 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  v60 = v80;
  sub_22BAD6B34(a2 + v59[19], v80, &qword_27D8DF3A0, &qword_22BB220B8);
  sub_22BB1EC3C();
  v61 = v81;
  sub_22BB1EC2C();
  v62 = v82;
  v63 = v83;
  if ((*(v82 + 48))(v61, 1, v83) == 1)
  {
    sub_22BAC81E8(v61, &qword_27D8DF3A0, &qword_22BB220B8);
  }

  else
  {
    v64 = v79;
    (*(v62 + 32))(v79, v61, v63);
    sub_22BB1F0DC();
    sub_22BB1EBFC();
    (*(v62 + 16))(v60, v64, v63);
    (*(v62 + 56))(v60, 0, 1, v63);
    sub_22BB1EC3C();
    (*(v62 + 8))(v64, v63);
  }

  (*(v85 + 16))(v84, a2 + v59[20], v86);
  sub_22BB1ECAC();
  (*(v88 + 16))(v87, a2 + v59[21], v89);
  sub_22BB1EEBC();
  v65 = v99;
  v66 = *(v99 + 16);
  v67 = v101;
  v66(v12, a2 + v59[22], v101);
  sub_22BB1EECC();
  v68 = *(a2 + v59[23]);

  sub_22BB1F05C();
  v66(v12, a2 + v59[24], v67);
  sub_22BB1ECBC();
  v66(v12, a2 + v59[25], v67);
  sub_22BB1EF0C();
  v66(v12, a2 + v59[26], v67);
  sub_22BB1EFAC();
  v69 = *(a2 + v59[27]);
  sub_22BB1EFFC();
  v70 = *(a2 + v59[29]);
  sub_22BB1F03C();
  (*(v95 + 16))(v94, a2 + v59[31], v96);
  sub_22BB1F09C();
  v71 = *(a2 + v59[32]);

  sub_22BB1EF6C();
  v72 = *(a2 + v59[33]);
  sub_22BB1EEEC();
  sub_22BB1EEDC();
  (*(v98 + 16))(v97, a2 + v59[34], v100);
  sub_22BB1EEAC();
  v66(v12, a2 + v59[28], v67);
  sub_22BB1EF8C();
  v73 = *(a2 + 24);
  if (v73)
  {
    v74 = v103;
    v76 = v92;
    v75 = v93;
    if (!*(v73 + 16))
    {
      (*(v65 + 104))(v12, *MEMORY[0x277D74848], v67);
      sub_22BB1EC4C();
      (*(v65 + 8))(v12, v67);
    }
  }

  else
  {
    v74 = v103;
    v76 = v92;
    v75 = v93;
  }

  sub_22BB1EF2C();
  (*(v76 + 8))(v74, v75);
  (*(v90 + 8))(v102, v91);
  return sub_22BB04D58(a2);
}

uint64_t IntelligenceSupportAgent.RequestParameters.effectiveDeadline(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF040, &unk_22BB21230);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  if (v1[2])
  {
    v7 = sub_22BB1F5BC();
    v8 = *(v7 - 8);
    (*(v8 + 56))(v6, 1, 1, v7);
    v9 = *v1;
    sub_22BB1F5DC();
    result = (*(v8 + 48))(v6, 1, v7);
    if (result != 1)
    {
      return sub_22BAC81E8(v6, &qword_27D8DF040, &unk_22BB21230);
    }
  }

  else
  {
    v11 = v1[1];
    sub_22BB1F57C();
    v12 = sub_22BB1F5BC();
    v13 = *(v12 - 8);
    (*(v13 + 56))(v6, 0, 1, v12);
    return (*(v13 + 32))(a1, v6, v12);
  }

  return result;
}

uint64_t sub_22BAF9210(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_22BAF92BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB1EADC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v35 - v10;
  v13 = MEMORY[0x28223BE20](v11);
  v14 = &v35 - v12;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v15 = 0;
    v16 = *(a1 + 56);
    v35 = a1 + 56;
    v17 = 1 << *(a1 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v42 = v5 + 32;
    v44 = a2 + 56;
    v45 = v5 + 16;
    v21 = (v5 + 8);
    v36 = v20;
    v37 = &v35 - v12;
    v38 = v5;
    v39 = a1;
    if (v19)
    {
      while (1)
      {
        v22 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
LABEL_13:
        v25 = *(a1 + 48);
        v43 = *(v5 + 72);
        v26 = *(v5 + 16);
        v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4, v13);
        (*(v5 + 32))(v46, v14, v4);
        v27 = *(a2 + 40);
        sub_22BACFADC(&qword_2814250E0, MEMORY[0x277D74708]);
        v28 = sub_22BB1F61C();
        v29 = -1 << *(a2 + 32);
        v30 = v28 & ~v29;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          break;
        }

        v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v31 = a2;
        v32 = ~v29;
        while (1)
        {
          (v26)(v8, *(v31 + 48) + v30 * v43, v4);
          sub_22BACFADC(&unk_2814250D0, MEMORY[0x277D74708]);
          v33 = sub_22BB1F65C();
          v34 = *v21;
          (*v21)(v8, v4);
          if (v33)
          {
            break;
          }

          v30 = (v30 + 1) & v32;
          if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            v34(v46, v4);
            return;
          }
        }

        v34(v46, v4);
        a2 = v31;
        v5 = v38;
        a1 = v39;
        v20 = v36;
        v14 = v37;
        v19 = v41;
        if (!v41)
        {
          goto LABEL_8;
        }
      }

      (*v21)(v46, v4);
    }

    else
    {
LABEL_8:
      v23 = v15;
      while (1)
      {
        v15 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v15 >= v20)
        {
          return;
        }

        v24 = *(v35 + 8 * v15);
        ++v23;
        if (v24)
        {
          v22 = __clz(__rbit64(v24));
          v41 = (v24 - 1) & v24;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_22BAF966C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_22BB1FDDC();

    sub_22BB1F6EC();
    v17 = sub_22BB1FE0C();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_22BB1FD9C() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_22BAF9824(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB1E67C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v35 - v10;
  v13 = MEMORY[0x28223BE20](v11);
  v14 = &v35 - v12;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v15 = 0;
    v16 = *(a1 + 56);
    v35 = a1 + 56;
    v17 = 1 << *(a1 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v42 = v5 + 32;
    v44 = a2 + 56;
    v45 = v5 + 16;
    v21 = (v5 + 8);
    v36 = v20;
    v37 = &v35 - v12;
    v38 = v5;
    v39 = a1;
    if (v19)
    {
      while (1)
      {
        v22 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
LABEL_13:
        v25 = *(a1 + 48);
        v43 = *(v5 + 72);
        v26 = *(v5 + 16);
        v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4, v13);
        (*(v5 + 32))(v46, v14, v4);
        v27 = *(a2 + 40);
        sub_22BACFADC(&qword_281425110, MEMORY[0x277D74500]);
        v28 = sub_22BB1F61C();
        v29 = -1 << *(a2 + 32);
        v30 = v28 & ~v29;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          break;
        }

        v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v31 = a2;
        v32 = ~v29;
        while (1)
        {
          (v26)(v8, *(v31 + 48) + v30 * v43, v4);
          sub_22BACFADC(&qword_27D8DF508, MEMORY[0x277D74500]);
          v33 = sub_22BB1F65C();
          v34 = *v21;
          (*v21)(v8, v4);
          if (v33)
          {
            break;
          }

          v30 = (v30 + 1) & v32;
          if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            v34(v46, v4);
            return;
          }
        }

        v34(v46, v4);
        a2 = v31;
        v5 = v38;
        a1 = v39;
        v20 = v36;
        v14 = v37;
        v19 = v41;
        if (!v41)
        {
          goto LABEL_8;
        }
      }

      (*v21)(v46, v4);
    }

    else
    {
LABEL_8:
      v23 = v15;
      while (1)
      {
        v15 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v15 >= v20)
        {
          return;
        }

        v24 = *(v35 + 8 * v15);
        ++v23;
        if (v24)
        {
          v22 = __clz(__rbit64(v24));
          v41 = (v24 - 1) & v24;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_22BAF9C1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    v27 = 0;
    return v27 & 1;
  }

  if (!v17 || a1 == a2)
  {
    v27 = 1;
    return v27 & 1;
  }

  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v22 = *(v9 + 16);
  v21 = v9 + 16;
  v23 = (v21 - 8);
  v31 = *(v21 + 56);
  v32 = v22;
  while (1)
  {
    v24 = v32;
    result = (v32)(v16, v19, v8, v14);
    if (!v17)
    {
      break;
    }

    v26 = v21;
    v24(v12, v20, v8);
    sub_22BACFADC(v33, v34);
    v27 = sub_22BB1F65C();
    v28 = *v23;
    (*v23)(v12, v8);
    v28(v16, v8);
    if (v27)
    {
      v20 += v31;
      v19 += v31;
      v29 = v17-- == 1;
      v21 = v26;
      if (!v29)
      {
        continue;
      }
    }

    return v27 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BAF9E14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_22BB1FD9C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t IntelligenceSupportAgent.RequestParameters.deadline.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 16))
  {
    v3 = 1;
  }

  else
  {
    v4 = *(v1 + 8);
    sub_22BB1F57C();
    v3 = 0;
  }

  v5 = sub_22BB1F5BC();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v3, 1, v5);
}

uint64_t sub_22BAF9F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = 1;
  }

  else
  {
    v4 = *(a1 + 8);
    sub_22BB1F57C();
    v3 = 0;
  }

  v5 = sub_22BB1F5BC();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v3, 1, v5);
}

uint64_t sub_22BAF9FF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF040, &unk_22BB21230);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  sub_22BAD6B34(a1, &v7 - v4, &qword_27D8DF040, &unk_22BB21230);
  return IntelligenceSupportAgent.RequestParameters.deadline.setter(v5);
}

uint64_t IntelligenceSupportAgent.RequestParameters.deadline.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BB1F51C();
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF040, &unk_22BB21230);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = sub_22BB1F5BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  sub_22BAD6B34(a1, v11, &qword_27D8DF040, &unk_22BB21230);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_22BAC81E8(a1, &qword_27D8DF040, &unk_22BB21230);
    result = sub_22BAC81E8(v11, &qword_27D8DF040, &unk_22BB21230);
    *(v2 + 8) = 0;
    *(v2 + 16) = 1;
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    *(v2 + 8) = sub_22BB1F58C();
    *(v2 + 16) = 0;
    sub_22BB1F59C();
    sub_22BB1F5AC();
    v21 = *(v13 + 8);
    v21(v16, v12);
    v22 = sub_22BB1F50C();
    v24 = v23;
    sub_22BAC81E8(a1, &qword_27D8DF040, &unk_22BB21230);
    (*(v26 + 8))(v7, v27);
    result = (v21)(v19, v12);
    v25 = *&v22;
    if (v24)
    {
      v25 = 1.79769313e308;
    }

    *v2 = v25;
  }

  return result;
}

void (*IntelligenceSupportAgent.RequestParameters.deadline.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_22BB1F51C();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[3] = v8;
  v9 = sub_22BB1F5BC();
  v5[4] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[5] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v5[7] = v13;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF040, &unk_22BB21230) - 8) + 64);
  if (v3)
  {
    v5[8] = swift_coroFrameAlloc();
    v5[9] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v5[8] = malloc(v14);
    v5[9] = malloc(v14);
    v15 = malloc(v14);
  }

  v16 = v15;
  v5[10] = v15;
  if (*(v1 + 16))
  {
    v17 = 1;
  }

  else
  {
    v18 = *(v1 + 8);
    sub_22BB1F57C();
    v17 = 0;
  }

  (*(v11 + 56))(v16, v17, 1, v9);
  return sub_22BAFA5C0;
}

void sub_22BAFA5C0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[9];
  v4 = (*a1)[10];
  if (a2)
  {
    v6 = v2[7];
    v5 = v2[8];
    v7 = v2[6];
    v8 = v2[3];
    v9 = *v2;
    sub_22BAD6B34((*a1)[10], v5, &qword_27D8DF040, &unk_22BB21230);
    IntelligenceSupportAgent.RequestParameters.deadline.setter(v5);
    sub_22BAC81E8(v4, &qword_27D8DF040, &unk_22BB21230);
  }

  else
  {
    v10 = v2[4];
    v11 = v2[5];
    sub_22BAD6B34((*a1)[10], v3, &qword_27D8DF040, &unk_22BB21230);
    v12 = (*(v11 + 48))(v3, 1, v10);
    v13 = v2[9];
    if (v12 == 1)
    {
      v14 = *v2;
      sub_22BAC81E8(v2[10], &qword_27D8DF040, &unk_22BB21230);
      sub_22BAC81E8(v13, &qword_27D8DF040, &unk_22BB21230);
      *(v14 + 8) = 0;
      *(v14 + 16) = 1;
    }

    else
    {
      v16 = v2[6];
      v15 = v2[7];
      v17 = v2[4];
      v18 = v2[5];
      v20 = v2[2];
      v19 = v2[3];
      v21 = *v2;
      v26 = v2[1];
      v27 = v2[10];
      (*(v18 + 32))(v15, v13, v17);
      *(v21 + 8) = sub_22BB1F58C();
      *(v21 + 16) = 0;
      sub_22BB1F59C();
      sub_22BB1F5AC();
      v22 = *(v18 + 8);
      v22(v16, v17);
      v23 = sub_22BB1F50C();
      LOBYTE(v16) = v24;
      (*(v20 + 8))(v19, v26);
      v22(v15, v17);
      sub_22BAC81E8(v27, &qword_27D8DF040, &unk_22BB21230);
      v25 = *&v23;
      if (v16)
      {
        v25 = 1.79769313e308;
      }

      *v21 = v25;
    }

    v3 = v2[9];
    v4 = v2[10];
    v6 = v2[7];
    v5 = v2[8];
    v7 = v2[6];
    v8 = v2[3];
  }

  free(v4);
  free(v3);
  free(v5);
  free(v6);
  free(v7);
  free(v8);

  free(v2);
}

uint64_t IntelligenceSupportAgent.RequestParameters.targetedAppProcesses.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.targetedAppBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.excludedAppProcesses.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.excludedAppBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.windowFractionVisible.setter(double a1)
{
  result = sub_22BB1EAEC();
  *v1 = a1;
  return result;
}

uint64_t sub_22BAFAA84()
{
  sub_22BB1FB7C();
  MEMORY[0x23189D130](0xD000000000000016, 0x800000022BB27DA0);
  sub_22BB1F82C();
  MEMORY[0x23189D130](0xD00000000000001CLL, 0x800000022BB27D60);
  return 0;
}

uint64_t (*IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.windowFractionVisible.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_22BAFAB60;
}

uint64_t sub_22BAFAB60(uint64_t *a1)
{
  v2 = *a1;
  result = sub_22BB1EAEC();
  *a1[1] = v2;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.windowAreaVisible.setter(double a1)
{
  result = sub_22BB1EAEC();
  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_22BAFACA4()
{
  sub_22BB1FB7C();
  MEMORY[0x23189D130](0xD000000000000012, 0x800000022BB27D80);
  sub_22BB1F82C();
  MEMORY[0x23189D130](0xD000000000000026, 0x800000022BB27D10);
  return 0;
}

uint64_t (*IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.windowAreaVisible.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_22BAFAD80;
}

uint64_t sub_22BAFAD80(uint64_t *a1)
{
  v2 = *a1;
  result = sub_22BB1EAEC();
  *(a1[1] + 8) = v2;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.fractionVisible.setter(double a1)
{
  result = sub_22BB1EAEC();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_22BAFAEC4()
{
  sub_22BB1FB7C();
  MEMORY[0x23189D130](0xD000000000000010, 0x800000022BB27D40);
  sub_22BB1F82C();
  MEMORY[0x23189D130](0xD00000000000001CLL, 0x800000022BB27D60);
  return 0;
}

uint64_t (*IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.fractionVisible.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return sub_22BAFAFA0;
}

uint64_t sub_22BAFAFA0(uint64_t *a1)
{
  v2 = *a1;
  result = sub_22BB1EAEC();
  *(a1[1] + 16) = v2;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.areaVisible.setter(double a1)
{
  result = sub_22BB1EAEC();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_22BAFB0E4()
{
  sub_22BB1FB7C();
  MEMORY[0x23189D130](0x6973695661657261, 0xEC00000020656C62);
  sub_22BB1F82C();
  MEMORY[0x23189D130](0xD000000000000026, 0x800000022BB27D10);
  return 0;
}

uint64_t (*IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.areaVisible.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 24);
  return sub_22BAFB1C0;
}

uint64_t sub_22BAFB1C0(uint64_t *a1)
{
  v2 = *a1;
  result = sub_22BB1EAEC();
  *(a1[1] + 24) = v2;
  return result;
}

double sub_22BAFB280()
{
  result = 0.0;
  xmmword_27D8DF368 = 0u;
  unk_27D8DF378 = 0u;
  return result;
}

double static IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27D8DECC0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&xmmword_27D8DF368;
  v2 = unk_27D8DF378;
  *a1 = xmmword_27D8DF368;
  a1[1] = v2;
  return result;
}

unint64_t sub_22BAFB300()
{
  v1 = 0x6E6F697463617266;
  if (*v0 != 2)
  {
    v1 = 0x6973695661657261;
  }

  v2 = 0xD000000000000015;
  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22BAFB39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BB05CD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BAFB3D0(uint64_t a1)
{
  v2 = sub_22BB04358();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BAFB40C(uint64_t a1)
{
  v2 = sub_22BB04358();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF388, &qword_22BB220A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-v7];
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22BB04358();
  sub_22BB1FE2C();
  v15[15] = 0;
  sub_22BB1FD2C();
  if (!v2)
  {
    v15[14] = 1;
    sub_22BB1FD2C();
    v15[13] = 2;
    sub_22BB1FD2C();
    v15[12] = 3;
    sub_22BB1FD2C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF398, &qword_22BB220B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22BB04358();
  sub_22BB1FE1C();
  if (!v2)
  {
    v24 = 0;
    sub_22BB1FC9C();
    v12 = v11;
    v23 = 1;
    sub_22BB1FC9C();
    v14 = v13;
    v22 = 2;
    sub_22BB1FC9C();
    v17 = v16;
    v21 = 3;
    sub_22BB1FC9C();
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v17;
    a2[3] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

__n128 IntelligenceSupportAgent.RequestParameters.visibilityThresholds.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 64);
  v3 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 IntelligenceSupportAgent.RequestParameters.visibilityThresholds.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v3;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.maximumOffscreenSubelements.getter()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.maximumOffscreenSubelements.setter(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.textOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 80);
  v4 = sub_22BB1EC9C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.textOptions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 80);
  v4 = sub_22BB1EC9C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.userActivities.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 84);
  v4 = sub_22BB1EC5C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.documentContent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 88);
  v4 = sub_22BB1EC7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.documentContent.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 88);
  v4 = sub_22BB1EC7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.documentPreferredContentTypes.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 92));
}

uint64_t IntelligenceSupportAgent.RequestParameters.documentPreferredContentTypes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 92);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.imageContent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 96);
  v4 = sub_22BB1EC7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.imageContent.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 96);
  v4 = sub_22BB1EC7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.imageMediaContent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 100);
  v4 = sub_22BB1EC7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.imageMediaContent.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 100);
  v4 = sub_22BB1EC7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.windowSnapshotImages.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 104);
  v4 = sub_22BB1EC7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}