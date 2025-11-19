uint64_t sub_25F5CF1D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7B0, &unk_25F5EAC80);
  result = sub_25F5E4914();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_25F5E4C34();
      sub_25F5E4334();
      result = sub_25F5E4C54();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25F5CF430(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_25F5CEF70(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25F5CF730();
      goto LABEL_16;
    }

    sub_25F5CF9E8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_25F5E4C34();
  sub_25F5E4334();
  result = sub_25F5E4C54();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_25F5E4B84();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_25F5E4BB4();
  __break(1u);
  return result;
}

uint64_t sub_25F5CF5B0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_25F5CF1D0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25F5CF88C();
      goto LABEL_16;
    }

    sub_25F5CFC20(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_25F5E4C34();
  sub_25F5E4334();
  result = sub_25F5E4C54();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_25F5E4B84();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_25F5E4BB4();
  __break(1u);
  return result;
}

void *sub_25F5CF730()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7A8, &qword_25F5EAC78);
  v2 = *v0;
  v3 = sub_25F5E4904();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_25F5CF88C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7B0, &unk_25F5EAC80);
  v2 = *v0;
  v3 = sub_25F5E4904();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_25F5CF9E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7A8, &qword_25F5EAC78);
  result = sub_25F5E4914();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_25F5E4C34();

      sub_25F5E4334();
      result = sub_25F5E4C54();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_25F5CFC20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7B0, &unk_25F5EAC80);
  result = sub_25F5E4914();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      sub_25F5E4C34();
      sub_25F5E4334();
      result = sub_25F5E4C54();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_25F5CFE58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v62 = a2;
  v71 = type metadata accessor for SmsMessage(0);
  v68 = *(v71 - 8);
  v8 = *(v68 + 64);
  MEMORY[0x28223BE20](v71, v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E788, &qword_25F5EAC60);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  result = MEMORY[0x28223BE20](v19, v20);
  v24 = &v58 - v23;
  v25 = a4 >> 1;
  v63 = a3;
  v26 = v25 - a3;
  if (__OFSUB__(v25, a3))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v60 = v22;
  v27 = *v4;
  v28 = *(*v4 + 16);
  v29 = v28 + v26;
  if (__OFADD__(v28, v26))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v30 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v27;
  if (result)
  {
    v31 = *(v27 + 24) >> 1;
    if (v31 >= v29)
    {
      goto LABEL_12;
    }

    if (v28 <= v29)
    {
      v32 = v28 + v26;
    }

    else
    {
      v32 = v28;
    }
  }

  else if (v28 <= v29)
  {
    v32 = v28 + v26;
  }

  else
  {
    v32 = v28;
  }

  result = sub_25F5712B0(result, v32, 1);
  v27 = *v4;
  v31 = *(*v4 + 24) >> 1;
LABEL_12:
  v67 = v11;
  v33 = v27;
  v34 = *(v27 + 16);
  v35 = v31 - v34;
  if (v25 == v63)
  {
    if (v26 <= 0)
    {
      v36 = v63;
      if (v35)
      {
LABEL_15:
        result = swift_unknownObjectRelease();
LABEL_23:
        *v4 = v33;
        return result;
      }

LABEL_21:
      v58 = a1;
      v41 = *(v27 + 16);
      v42 = v68;
      v43 = *(v68 + 56);
      v44 = v71;
      v65 = v68 + 56;
      v66 = v25;
      v64 = v43;
      v43(v24, 1, 1, v71);
      v45 = v60;
      sub_25F573B94(v24, v60, &qword_27FD9E788, &qword_25F5EAC60);
      v69 = *(v42 + 48);
      v70 = v42 + 48;
      if (v69(v45, 1, v44) != 1)
      {
        v59 = v4;
        do
        {
          sub_25F57C148(v45, &qword_27FD9E788, &qword_25F5EAC60);
          v48 = *(v33 + 24);
          if (v41 + 1 > (v48 >> 1))
          {
            sub_25F5712B0(v48 > 1, v41 + 1, 1);
          }

          v49 = *v4;
          v50 = *(*v4 + 24);
          v51 = *(v68 + 80);
          sub_25F573B94(v24, v17, &qword_27FD9E788, &qword_25F5EAC60);
          v52 = v69(v17, 1, v71);
          v61 = v49;
          if (v52 != 1)
          {
            v53 = v49 + ((v51 + 32) & ~v51);
            if (v41 <= (v50 >> 1))
            {
              v46 = v50 >> 1;
            }

            else
            {
              v46 = v41;
            }

            do
            {
              v56 = v67;
              sub_25F5D0AF8(v17, v67, type metadata accessor for SmsMessage);
              if (v46 == v41)
              {
                sub_25F5C8DE0(v56);
                v41 = v46;
                goto LABEL_26;
              }

              sub_25F57C148(v24, &qword_27FD9E788, &qword_25F5EAC60);
              v57 = *(v68 + 72);
              result = sub_25F5D0AF8(v56, v53 + v57 * v41, type metadata accessor for SmsMessage);
              if (v36 == v66)
              {
                v54 = 1;
                v36 = v66;
              }

              else
              {
                if (v36 < v63 || v36 >= v66)
                {
                  __break(1u);
                  goto LABEL_42;
                }

                sub_25F5C8D7C(v62 + v57 * v36, v24);
                v54 = 0;
                ++v36;
              }

              v55 = v71;
              v64(v24, v54, 1, v71);
              sub_25F573B94(v24, v17, &qword_27FD9E788, &qword_25F5EAC60);
              ++v41;
            }

            while (v69(v17, 1, v55) != 1);
          }

          sub_25F57C148(v17, &qword_27FD9E788, &qword_25F5EAC60);
          v46 = v41;
LABEL_26:
          v45 = v60;
          v33 = v61;
          *(v61 + 16) = v46;
          sub_25F573B94(v24, v45, &qword_27FD9E788, &qword_25F5EAC60);
          v47 = v69(v45, 1, v71);
          v4 = v59;
        }

        while (v47 != 1);
      }

      sub_25F57C148(v24, &qword_27FD9E788, &qword_25F5EAC60);
      swift_unknownObjectRelease();
      result = sub_25F57C148(v45, &qword_27FD9E788, &qword_25F5EAC60);
      goto LABEL_23;
    }

    goto LABEL_44;
  }

  if (v35 < v26)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v37 = v27 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v34;
  result = swift_arrayInitWithCopy();
  if (v26 <= 0)
  {
LABEL_20:
    v36 = v25;
    if (v26 != v35)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v38 = *(v27 + 16);
  v39 = __OFADD__(v38, v26);
  v40 = v38 + v26;
  if (!v39)
  {
    *(v27 + 16) = v40;
    goto LABEL_20;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_25F5D03B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25F8E2DC0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_25F5CECD0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_25F5D0464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25F5E3694();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F5D0524(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25F5E3694();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25F5D05C8()
{
  sub_25F5C2DB4(319, &qword_27FD9E620);
  if (v0 <= 0x3F)
  {
    sub_25F5C2DB4(319, &unk_27FD9E638);
    if (v1 <= 0x3F)
    {
      sub_25F5E3694();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_25F5D06AC(uint64_t a1, int a2)
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

uint64_t sub_25F5D06F4(uint64_t result, int a2, int a3)
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

uint64_t sub_25F5D077C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25F5D0860(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_25F5D094C()
{
  sub_25F5B2AE4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_25F5D09D4()
{
  result = qword_27FD9E768;
  if (!qword_27FD9E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E768);
  }

  return result;
}

unint64_t sub_25F5D0A2C()
{
  result = qword_27FD9E770;
  if (!qword_27FD9E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E770);
  }

  return result;
}

unint64_t sub_25F5D0A84()
{
  result = qword_27FD9E778;
  if (!qword_27FD9E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E778);
  }

  return result;
}

uint64_t sub_25F5D0AF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F5D0B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F5D0C00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1699574633 && a2 == 0xE400000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_25F5E4B84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_25F5D0E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for SmsMessage(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_25F5D0F48(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_25F5789D0(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_25F5D0E00(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_25F5D1008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmsMessage(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F5D106C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F5D10D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F5D1114()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_25F5D1160()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_25F5E35D4();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_25F5E34F4();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_25F5D1220()
{
  result = qword_27FD9E798;
  if (!qword_27FD9E798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD9E798);
  }

  return result;
}

uint64_t sub_25F5D1280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_25F5E4C34();
  sub_25F5E4334();
  v7 = sub_25F5E4C54();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_25F5E4B84() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_25F5D1378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_25F5E4C34();
  sub_25F5E4334();
  v7 = sub_25F5E4C54();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_25F5E4B84() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_25F5D1470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  v9 = sub_25F5E43C4();
  [v8 setString_];

  if (a2)
  {
    v10 = [v8 setLanguage_];
  }

  v11 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v11 = a4;
  }

  v12 = 7;
  if (((a5 >> 60) & ((a4 & 0x800000000000000) == 0)) != 0)
  {
    v12 = 11;
  }

  MEMORY[0x28223BE20](v10, v12 | (v11 << 16));
  sub_25F5E4754();

  return 0;
}

uint64_t sub_25F5D159C(uint64_t a1, unint64_t a2)
{
  v4 = sub_25F5E4444();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v7 = sub_25F5E3554();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v41 - v15;
  v17 = sub_25F5E43C4();
  v18 = [objc_opt_self() bundleWithIdentifier_];

  if (!v18)
  {
    goto LABEL_5;
  }

  v41[0] = v8;
  v19 = sub_25F5E43C4();
  v20 = sub_25F5E43C4();
  v21 = [v18 URLForResource:v19 withExtension:v20];

  if (!v21)
  {

LABEL_5:

    return a1;
  }

  sub_25F5E3534();

  (*(v41[0] + 32))(v16, v13, v7);
  v22 = sub_25F5E3574();
  v24 = v23;
  v25 = sub_25F5AD100(v22, v23);
  v28 = v27;
  v29 = v25;
  sub_25F571820(v22, v24);
  sub_25F5E4424();
  v30 = sub_25F5E4414();
  v32 = v28;
  v33 = v29;
  if (v31)
  {
    v34 = sub_25F5C82D8(v30, v31);
    v42 = 0;
    v43 = 0xE000000000000000;
    v35 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v35 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v41[1] = a1;
    v41[2] = a2;
    v41[3] = 0;
    v41[4] = v35;

    v36 = sub_25F5E4514();
    if (v37)
    {
      v38 = v36;
      v39 = v37;
      do
      {
        if (sub_25F5A3224(v38, v39) & 1) == 0 || (sub_25F5D1378(v38, v39, v34))
        {
          MEMORY[0x25F8E2BB0](v38, v39);
        }

        v38 = sub_25F5E4514();
        v39 = v40;
      }

      while (v40);
    }

    sub_25F571820(v33, v32);

    (*(v41[0] + 8))(v16, v7);
    return v42;
  }

  else
  {
    (*(v41[0] + 8))(v16, v7);

    sub_25F571820(v29, v32);
  }

  return a1;
}

id sub_25F5D199C(uint64_t a1, unint64_t a2)
{

  sub_25F5E4584();
  v4 = HIBYTE(a2) & 0xF;
  v23 = a1;
  v24 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v25 = 0;
  v26 = v4;

  v5 = sub_25F5E4514();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = 0;
    v10 = &selRef_synopsis;
    while (1)
    {
      while ((sub_25F5A3224(v7, v8) & 1) == 0)
      {
        MEMORY[0x25F8E2BB0](v7, v8);

        v7 = sub_25F5E4514();
        v8 = v11;
        if (!v11)
        {
          v22 = v9;
          goto LABEL_16;
        }
      }

      if (!v9)
      {
        v9 = [objc_allocWithZone(MEMORY[0x277D072F8]) init];
      }

      v22 = v9;

      v12 = sub_25F5E43C4();

      v13 = v10;
      v14 = [objc_opt_self() v10[38]];

      v15 = [v14 copyWithoutModifiers];
      if (!v15)
      {
        v15 = [objc_allocWithZone(MEMORY[0x277D07318]) init];
      }

      result = [v15 string];
      if (!result)
      {
        break;
      }

      v17 = result;

      v18 = sub_25F5E43F4();
      v20 = v19;

      MEMORY[0x25F8E2BC0](v18, v20);

      v7 = sub_25F5E4514();
      v8 = v21;
      v10 = v13;
      if (!v21)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v22 = 0;
LABEL_16:

    return a1;
  }

  return result;
}

BOOL sub_25F5D1BC4()
{
  v1 = *(v0 + 16);
  v2 = *v1 + 1;
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 24);
    *v1 = v2;
    return v2 < v3;
  }

  return result;
}

unint64_t sub_25F5D1BEC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_25F5D26F4(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_25F5E4944();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_25F5E49A4();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

uint64_t sub_25F5D1D38@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7E8, &qword_25F5EAD00);
  sub_25F5E3BD4();

  v2 = MEMORY[0x25F8E2B40]();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

unint64_t sub_25F5D1DDC@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7E0, &qword_25F5EACD8);
  sub_25F5E3BE4();

  v2 = v9;
  while (1)
  {
    if ((v2 ^ v10) < 0x4000)
    {

      v8 = 32;
      goto LABEL_9;
    }

    v3 = sub_25F5E4824();
    v5 = v4;
    v2 = sub_25F5E4804();
    result = sub_25F5D25A4(v3, v5);
    if ((result & 0x100000000) != 0)
    {
      break;
    }

    v7 = result;

    if ((v7 - 14) > 0xFFFFFFFB || (v7 - 8232) < 2 || v7 == 133)
    {

      v8 = 10;
LABEL_9:
      *a1 = v8;
      a1[1] = 0xE100000000000000;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F5D1F20@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7E0, &qword_25F5EACD8);
  sub_25F5E3BF4();
  sub_25F5D4F6C();
  sub_25F58C444();
  v2 = sub_25F5E4844();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_25F5D1FFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;

    do
    {
      sub_25F5D4EFC(v4, v7);
      __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
      sub_25F571874();
      sub_25F5718C8();
      sub_25F5E4734();
      __swift_destroy_boxed_opaque_existential_1Tm(v7);

      a2 = v6;
      v4 += 56;
      --v3;
    }

    while (v3);
  }

  else
  {
  }

  return a2;
}

id sub_25F5D2108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_25F5E43C4();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_25F5E34F4();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_25F5D21E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_25F5E45B4();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_25F578650(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_25F578650((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_25F5E4594();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_25F5E44D4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_25F5E44D4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_25F5E45B4();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_25F578650(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_25F5E45B4();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_25F578650(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_25F578650((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_25F5E44D4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25F5D25A4(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_25F5D26F4(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_25F5E4944();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_25F5E49A4() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_25F5D26F4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_25F5D278C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_25F5D2800(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_25F5D278C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_25F5D2924(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25F5D2800(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_25F5E49A4();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_25F5D2924(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25F5E4564();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x25F8E2C00](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_25F5D29A0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E818, &qword_25F5EAD18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F5E5EF0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7C0, &qword_25F5EACA8);
  *(inited + 56) = v3;
  v4 = sub_25F5AB824(&qword_27FD9E7C8, &qword_27FD9E7C0, &qword_25F5EACA8);
  *(inited + 64) = v4;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 32));
  sub_25F5E3BC4();
  *(inited + 72) = 10;
  *(inited + 80) = 0xE100000000000000;
  *(inited + 112) = v3;
  *(inited + 120) = v4;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 88));
  sub_25F5E3BC4();
  *(inited + 128) = 0;
  *(inited + 136) = 0xE000000000000000;
  *(inited + 168) = v3;
  *(inited + 176) = v4;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 144));
  sub_25F5E3BC4();
  *(inited + 184) = 47;
  *(inited + 192) = 0xE100000000000000;
  v5 = sub_25F5D1FFC(inited, a1);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E820, &unk_25F5EAD20);
  swift_arrayDestroy();
  return v5;
}

id sub_25F5D2B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = sub_25F5E35D4();
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_25F5D35DC();
  v7 = sub_25F5E42F4();

  v13[0] = 0;
  v8 = [v4 initWithData:v6 options:v7 documentAttributes:a4 error:v13];

  if (v8)
  {
    v9 = v13[0];
  }

  else
  {
    v10 = v13[0];
    sub_25F5E34F4();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_25F5D2C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F5E3464();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F5E4444();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F5E4424();
  v16 = sub_25F5E4404();
  v18 = v17;
  v42 = *(v11 + 8);
  v42(v15, v10);
  if (v18 >> 60 == 15)
  {
  }

  else
  {
    v37 = v9;
    v40 = a1;
    v38 = v5;
    v41 = a2;
    v39 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7F0, &qword_25F5EAD08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25F5E77E0;
    v20 = *MEMORY[0x277D74098];
    *(inited + 32) = *MEMORY[0x277D74098];
    v21 = *MEMORY[0x277D740C8];
    type metadata accessor for DocumentType(0);
    *(inited + 40) = v21;
    v22 = *MEMORY[0x277D74088];
    *(inited + 64) = v23;
    *(inited + 72) = v22;
    sub_25F5D35C8(v16, v18);
    v24 = v20;
    v25 = v21;
    v26 = v22;
    sub_25F5E4424();
    v27 = sub_25F5E4434();
    v42(v15, v10);
    *(inited + 104) = MEMORY[0x277D83E88];
    *(inited + 80) = v27;
    v28 = sub_25F5720F0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC48, &qword_25F5E68A8);
    swift_arrayDestroy();
    v29 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v30 = sub_25F5D2B74(v16, v18, v28, 0);
    sub_25F5AEEFC(v16, v18);
    if (v30)
    {
      v31 = [v30 string];
      v32 = sub_25F5E43F4();
      v34 = v33;

      v43 = v32;
      v44 = v34;
      v35 = v37;
      sub_25F5E3454();
      sub_25F58C444();
      a1 = sub_25F5E4834();

      sub_25F5AEEFC(v16, v18);
      (*(v38 + 8))(v35, v39);
    }

    else
    {
      sub_25F5AEEFC(v16, v18);

      return v40;
    }
  }

  return a1;
}

uint64_t sub_25F5D3038()
{
  sub_25F58C444();
  sub_25F5E4864();
  v0 = sub_25F5E4514();
  v2 = v1;
  if (v1)
  {
    v3 = v0;
    do
    {
      v5 = sub_25F5D1BEC(v3, v2);
      if ((v5 & 0x100000000) == 0)
      {
        v6 = dword_287194548 <= v5 && unk_28719454C >= v5;
        if (v6 || (dword_287194550 <= v5 ? (v7 = unk_287194554 >= v5) : (v7 = 0), v7 || (dword_287194558 <= v5 ? (v8 = unk_28719455C >= v5) : (v8 = 0), v8 || dword_287194560 <= v5 && dword_287194564 >= v5 || dword_287194568 <= v5 && dword_28719456C >= v5 || dword_287194570 <= v5 && dword_287194574 >= v5)))
        {
          MEMORY[0x25F8E2BB0](v3, v2);
        }
      }

      v3 = sub_25F5E4514();
      v2 = v4;
    }

    while (v4);
  }

  return sub_25F5E45A4();
}

uint64_t sub_25F5D31E8(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7B8, &qword_25F5EACA0);
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7C0, &qword_25F5EACA8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v23 - v14;
  v29 = sub_25F5D159C(a1, a2);
  v30 = v16;
  sub_25F5E3BC4();
  v27 = 32;
  v28 = 0xE100000000000000;
  sub_25F571874();
  sub_25F5718C8();
  v23[0] = sub_25F5AB824(&qword_27FD9E7C8, &qword_27FD9E7C0, &qword_25F5EACA8);
  sub_25F5E4734();
  v17 = *(v11 + 8);
  v23[1] = v11 + 8;
  v24 = v17;
  v17(v15, v10);

  v18 = sub_25F5D199C(v31, v32);
  v20 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7D0, &qword_25F5EACB0);
  sub_25F5E3BC4();
  v29 = v18;
  v30 = v20;
  sub_25F5AB824(&qword_27FD9E7D8, &qword_27FD9E7B8, &qword_25F5EACA0);
  v21 = v25;
  sub_25F5E4724();

  v29 = v31;
  v30 = v32;
  sub_25F5E3BC4();
  sub_25F5E4724();
  v24(v15, v10);

  (*(v26 + 8))(v9, v21);
  return v31;
}

uint64_t sub_25F5D35C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25F5717CC(a1, a2);
  }

  return a1;
}

unint64_t sub_25F5D35DC()
{
  result = qword_27FD9D9F0;
  if (!qword_27FD9D9F0)
  {
    type metadata accessor for DocumentReadingOptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9D9F0);
  }

  return result;
}

uint64_t sub_25F5D3634(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E818, &qword_25F5EAD18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F5EAC90;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7C0, &qword_25F5EACA8);
  *(inited + 56) = v2;
  v3 = sub_25F5AB824(&qword_27FD9E7C8, &qword_27FD9E7C0, &qword_25F5EACA8);
  *(inited + 64) = v3;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 32));
  sub_25F5E3BC4();
  *(inited + 72) = 42;
  *(inited + 80) = 0xE100000000000000;
  *(inited + 112) = v2;
  *(inited + 120) = v3;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 88));
  sub_25F5E3BC4();
  *(inited + 128) = 46;
  *(inited + 136) = 0xE100000000000000;
  *(inited + 168) = v2;
  *(inited + 176) = v3;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 144));
  sub_25F5E3BC4();
  *(inited + 184) = 43;
  *(inited + 192) = 0xE100000000000000;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7B8, &qword_25F5EACA0);
  *(inited + 224) = v4;
  v5 = sub_25F5AB824(&qword_27FD9E7D8, &qword_27FD9E7B8, &qword_25F5EACA0);
  *(inited + 232) = v5;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 200));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7D0, &qword_25F5EACB0);
  sub_25F5E3BC4();
  *(inited + 240) = 61;
  *(inited + 248) = 0xE100000000000000;
  *(inited + 280) = v4;
  *(inited + 288) = v5;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 256));
  sub_25F5E3BC4();
  *(inited + 296) = 45;
  *(inited + 304) = 0xE100000000000000;
  *(inited + 336) = v4;
  *(inited + 344) = v5;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 312));
  sub_25F5E3BC4();
  *(inited + 352) = 45;
  *(inited + 360) = 0xE100000000000000;
  *(inited + 392) = v2;
  *(inited + 400) = v3;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 368));
  sub_25F5E3BC4();
  *(inited + 408) = 61;
  *(inited + 416) = 0xE100000000000000;
  *(inited + 448) = v2;
  *(inited + 456) = v3;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 424));
  sub_25F5E3BC4();
  *(inited + 464) = 45;
  *(inited + 472) = 0xE100000000000000;
  *(inited + 504) = v2;
  *(inited + 512) = v3;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 480));
  sub_25F5E3BC4();
  *(inited + 520) = 95;
  *(inited + 528) = 0xE100000000000000;
  *(inited + 560) = v2;
  *(inited + 568) = v3;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 536));
  sub_25F5E3BC4();
  *(inited + 576) = 126;
  *(inited + 584) = 0xE100000000000000;
  *(inited + 616) = v2;
  *(inited + 624) = v3;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 592));
  sub_25F5E3BC4();
  *(inited + 632) = 60;
  *(inited + 640) = 0xE100000000000000;
  *(inited + 672) = v2;
  *(inited + 680) = v3;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 648));
  sub_25F5E3BC4();
  *(inited + 688) = 62;
  *(inited + 696) = 0xE100000000000000;
  *(inited + 728) = v2;
  *(inited + 736) = v3;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 704));
  sub_25F5E3BC4();
  *(inited + 744) = 33;
  *(inited + 752) = 0xE100000000000000;
  *(inited + 784) = v2;
  *(inited + 792) = v3;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 760));
  sub_25F5E3BC4();
  *(inited + 800) = 63;
  *(inited + 808) = 0xE100000000000000;
  *(inited + 840) = v2;
  *(inited + 848) = v3;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 816));
  sub_25F5E3BC4();
  *(inited + 856) = 36;
  *(inited + 864) = 0xE100000000000000;
  v6 = sub_25F5D1FFC(inited, a1);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E820, &unk_25F5EAD20);
  swift_arrayDestroy();
  return v6;
}

uint64_t sub_25F5D3AAC(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7C0, &qword_25F5EACA8);
  v44 = *(v4 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v43 = &v43 - v7;
  v57 = sub_25F5E3464();
  v46 = *(v57 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v57, v9);
  v56 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v12 = sub_25F5D2108(0xD00000000000001DLL, 0x800000025F5ECBB0, 0);
  v13 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1;
  }

  v14 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v14 = 11;
  }

  v65 = 15;
  v66 = v14 | (v13 << 16);
  v63 = a1;
  v64 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E800, &qword_25F5EAD10);
  sub_25F5AB824(&qword_27FD9E808, &qword_27FD9E800, &qword_25F5EAD10);
  v55 = sub_25F58C444();
  v15 = sub_25F5E47D4();
  v17 = v16;
  v65 = a1;
  v66 = a2;

  v18 = sub_25F5E43C4();
  v19 = [v12 matchesInString:v18 options:0 range:{v15, v17}];

  sub_25F5D4EB0();
  v20 = sub_25F5E4624();

  v47 = v20;
  v45 = v4;
  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_7;
    }

LABEL_22:

    v61 = v65;
    v62 = v66;
    v38 = v43;
    sub_25F5E3BC4();
    v59 = 32;
    v60 = 0xE100000000000000;
    sub_25F571874();
    sub_25F5718C8();
    sub_25F5AB824(&qword_27FD9E7C8, &qword_27FD9E7C0, &qword_25F5EACA8);
    v39 = v45;
    sub_25F5E4734();
    (*(v44 + 8))(v38, v39);

    v40 = v56;
    sub_25F5E3454();
    v41 = sub_25F5E4834();

    (*(v46 + 8))(v40, v57);

    return v41;
  }

LABEL_21:
  v21 = sub_25F5E49C4();
  if (!v21)
  {
    goto LABEL_22;
  }

LABEL_7:
  v53 = v47 & 0xFFFFFFFFFFFFFF8;
  v54 = v47 & 0xC000000000000001;
  v48 = v47 + 32;
  v49 = (v46 + 8);
  v50 = a2;
  v51 = a1;
  v52 = v12;
  while (1)
  {
    if (__OFSUB__(v21--, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v54)
    {
      v23 = MEMORY[0x25F8E3030](v21, v47);
    }

    else
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }

      if (v21 >= *(v53 + 16))
      {
        goto LABEL_20;
      }

      v23 = *(v48 + 8 * v21);
    }

    v24 = v23;
    [v23 rangeAtIndex_];
    sub_25F5E4744();
    if (v25)
    {
      break;
    }

    v58 = v24;
    v26 = sub_25F5E45B4();
    v27 = MEMORY[0x25F8E2B40](v26);
    v29 = v28;

    v63 = v27;
    v64 = v29;
    v30 = v56;
    sub_25F5E3444();
    v31 = sub_25F5E4834();
    v33 = v32;
    (*v49)(v30, v57);
    v63 = v27;
    v64 = v29;
    v61 = v31;
    v62 = v33;
    v59 = 0;
    v60 = 0xE000000000000000;
    v34 = sub_25F5E4844();
    v36 = v35;

    sub_25F5E4744();
    if ((v37 & 1) == 0)
    {
      v63 = v34;
      v64 = v36;
      sub_25F5718C8();
      sub_25F5E4494();
    }

    a1 = v51;
    v12 = v52;
    a2 = v50;
    if (!v21)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_25F5D40F8(uint64_t a1, unint64_t a2, int a3)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7C0, &qword_25F5EACA8);
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v38, v8);
  v37 = &v35 - v9;
  v43 = 32;
  v44 = 0xE100000000000000;
  v42 = &v43;

  v11 = sub_25F5D21E4(0x7FFFFFFFFFFFFFFFLL, 1, sub_25F5D4E04, v41, a1, a2, v10);
  v12 = *(v11 + 16);
  v35 = v11;
  if (v12)
  {
    v13 = a3;
    v36 = (v6 + 8);
    v14 = (v11 + 56);
    v15 = MEMORY[0x277D84F90];
    do
    {
      v23 = *(v14 - 3);
      v24 = *(v14 - 2);
      v26 = *(v14 - 1);
      v25 = *v14;

      if (sub_25F5E4814() < v13)
      {
        goto LABEL_7;
      }

      v43 = v23;
      v44 = v24;
      v45 = v26;
      v46 = v25;
      v40 = v15;
      v16 = v37;
      sub_25F5E3BC4();
      v39 = sub_25F5D4E5C();
      sub_25F5AB824(&qword_27FD9E7C8, &qword_27FD9E7C0, &qword_25F5EACA8);
      v17 = v13;
      v18 = v38;
      v19 = sub_25F5E4344();
      v20 = v16;
      v15 = v40;
      v21 = v18;
      v13 = v17;
      (*v36)(v20, v21);
      v22 = *(v19 + 16);

      if (v22)
      {
      }

      else
      {
LABEL_7:
        v27 = MEMORY[0x25F8E2B40](v23, v24, v26, v25);
        v29 = v28;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_25F578544(0, *(v15 + 2) + 1, 1, v15);
        }

        v31 = *(v15 + 2);
        v30 = *(v15 + 3);
        if (v31 >= v30 >> 1)
        {
          v15 = sub_25F578544((v30 > 1), v31 + 1, 1, v15);
        }

        *(v15 + 2) = v31 + 1;
        v32 = &v15[16 * v31];
        *(v32 + 4) = v27;
        *(v32 + 5) = v29;
      }

      v14 += 4;
      --v12;
    }

    while (v12);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v43 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
  sub_25F5AB824(&qword_27FD9E550, &qword_27FD9DB58, &qword_25F5E5F50);
  v33 = sub_25F5E4364();

  return v33;
}

uint64_t sub_25F5D4478(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7B8, &qword_25F5EACA0);
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v52 = v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7C0, &qword_25F5EACA8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v49 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v47 - v13;
  v15 = sub_25F5D29A0(a1);
  sub_25F5D2C88(v15, v16);

  v17 = sub_25F5D3038();
  v19 = v18;

  v20 = sub_25F5D31E8(v17, v19);
  v22 = v21;

  v57 = v20;
  v58 = v22;
  sub_25F5E3BC4();
  v55 = 32;
  v56 = 0xE100000000000000;
  v23 = sub_25F571874();
  v24 = sub_25F5718C8();
  sub_25F5AB824(&qword_27FD9E7C8, &qword_27FD9E7C0, &qword_25F5EACA8);
  sub_25F5E4734();
  v25 = *(v7 + 8);
  v47[1] = v7 + 8;
  v48 = v25;
  v25(v14, v6);

  v57 = 2621;
  v58 = 0xE200000000000000;
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_25F58C444();
  v26 = sub_25F5E4844();
  v28 = v27;

  v29 = v49;
  sub_25F5E3BC4();
  v57 = v26;
  v58 = v28;
  v50 = v24;
  v51 = v23;
  sub_25F5E4724();
  swift_bridgeObjectRelease_n();
  v30 = v59;

  v31 = sub_25F5E4854();
  v33 = v32;
  v48(v29, v6);

  if (v33)
  {

    v30 = v31;
  }

  v34 = sub_25F5D3634(v30);
  v36 = v35;

  v57 = v34;
  v58 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7D0, &qword_25F5EACB0);
  v37 = v52;
  sub_25F5E3BC4();
  v55 = 10;
  v56 = 0xE100000000000000;
  sub_25F5AB824(&qword_27FD9E7D8, &qword_27FD9E7B8, &qword_25F5EACA0);
  v38 = v54;
  sub_25F5E4734();
  (*(v53 + 8))(v37, v38);

  v39 = sub_25F5D29A0(v59);
  v41 = v40;

  v42 = sub_25F5D3AAC(v39, v41);
  v44 = v43;

  v45 = sub_25F5D40F8(v42, v44, 5);

  return v45;
}

uint64_t sub_25F5D49F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != 1)
  {

    return a1;
  }

  if (*(a3 + 1) == 1 && *(a3 + 8) != 0)
  {
    v6 = qword_27FD9D8B0;
    v7 = *(a3 + 8);

    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_25F5E3FB4();
    __swift_project_value_buffer(v8, qword_27FD9EA20);
    v9 = sub_25F5E3F94();
    v10 = sub_25F5E47A4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_25F56A000, v9, v10, "Use Morpheus to cleanup.", v11, 2u);
      MEMORY[0x25F8E3B70](v11, -1, -1);
    }

    sub_25F5E3C14();
    sub_25F5C7E78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E718, &qword_25F5EAA18);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_25F5E5EE0;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;

    sub_25F571A78(MEMORY[0x277D84F90]);
    sub_25F5E4004();

    *v19 = *&v19[5];
    *&v19[2] = v20;
    if (*(&v20 + 1))
    {
      if (swift_dynamicCast())
      {
        return v18;
      }
    }

    else
    {
      sub_25F575F64(v19);
    }
  }

  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v14 = sub_25F5E3FB4();
  __swift_project_value_buffer(v14, qword_27FD9EA20);
  v15 = sub_25F5E3F94();
  v16 = sub_25F5E47A4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_25F56A000, v15, v16, "Use native to cleanup.", v17, 2u);
    MEMORY[0x25F8E3B70](v17, -1, -1);
  }

  return sub_25F5D4478(a1);
}

uint64_t sub_25F5D4E04(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25F5E4B84() & 1;
  }
}

unint64_t sub_25F5D4E5C()
{
  result = qword_27FD9E7F8;
  if (!qword_27FD9E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E7F8);
  }

  return result;
}

unint64_t sub_25F5D4EB0()
{
  result = qword_27FD9E810;
  if (!qword_27FD9E810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD9E810);
  }

  return result;
}

uint64_t sub_25F5D4EFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E820, &unk_25F5EAD20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F5D4F6C()
{
  result = qword_27FD9E828;
  if (!qword_27FD9E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E828);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataProcessingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataProcessingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25F5D5110()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](v1 + 20401);
  return sub_25F5E4C54();
}

uint64_t sub_25F5D5190()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](v1 + 20401);
  return sub_25F5E4C54();
}

uint64_t sub_25F5D51D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F5D531C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_25F5D521C()
{
  result = qword_27FD9E830;
  if (!qword_27FD9E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E830);
  }

  return result;
}

uint64_t sub_25F5D5270(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F5D52C8();
  v5 = sub_25F5739D8();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

unint64_t sub_25F5D52C8()
{
  result = qword_27FD9E838;
  if (!qword_27FD9E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E838);
  }

  return result;
}

uint64_t sub_25F5D531C(uint64_t a1)
{
  if ((a1 - 20401) >= 0x11)
  {
    return 17;
  }

  else
  {
    return a1 - 20401;
  }
}

uint64_t sub_25F5D5334()
{
  v1 = *v0;
  v2 = 0x75706E4974786574;
  v3 = 0x6174744174786574;
  if (v1 != 5)
  {
    v3 = 0x614665726F6E6769;
  }

  v4 = 0x636E657265666E69;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x706E496567616D69;
  if (v1 != 1)
  {
    v5 = 0x654B74757074756FLL;
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

uint64_t sub_25F5D5454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F5D8CE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F5D547C(uint64_t a1)
{
  v2 = sub_25F5D6A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5D54B8(uint64_t a1)
{
  v2 = sub_25F5D6A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MultiModalCompletionStepConfig.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E840, &qword_25F5EAE30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v31 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v11);
  sub_25F5D6A80();
  sub_25F5E4C74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
  }

  else
  {
    v35 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
    LOBYTE(v36) = 0;
    sub_25F574164();
    v13 = v5;
    sub_25F5E4AD4();
    v34 = v48[0];
    LOBYTE(v36) = 1;
    sub_25F5E4AD4();
    v14 = v48[0];
    LOBYTE(v48[0]) = 2;
    v15 = sub_25F5E4A94();
    v17 = v16;
    v32 = v15;
    v63 = 3;
    sub_25F5D6AD4();
    sub_25F5E4AD4();
    v33 = v14;
    v80 = v70;
    v81 = v71;
    v82 = v72;
    v83 = v73;
    v76 = v66;
    v77 = v67;
    v78 = v68;
    v79 = v69;
    v74 = v64;
    v75 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB30, &qword_25F5E5F30);
    LOBYTE(v36) = 4;
    sub_25F571DEC();
    v31[1] = 0;
    sub_25F5E4A84();
    v18 = v48[0];
    LOBYTE(v36) = 5;
    sub_25F5E4A84();
    v19 = v48[0];
    v62 = 6;
    v20 = sub_25F5E4AA4();
    (*(v35 + 8))(v10, v13);
    LODWORD(v35) = v20 & 1;
    v21 = v33;
    v22 = v34;
    *&v36 = v34;
    *(&v36 + 1) = v33;
    v23 = v32;
    *&v37 = v32;
    *(&v37 + 1) = v17;
    v44 = v80;
    v45 = v81;
    v46 = v82;
    LOBYTE(v47[0]) = v83;
    v40 = v76;
    v41 = v77;
    v42 = v78;
    v43 = v79;
    v38 = v74;
    v39 = v75;
    *(&v47[0] + 1) = v18;
    *&v47[1] = v19;
    BYTE8(v47[1]) = v35;
    v24 = v79;
    a2[6] = v78;
    a2[7] = v24;
    v25 = v45;
    a2[8] = v44;
    a2[9] = v25;
    v26 = v39;
    a2[2] = v38;
    a2[3] = v26;
    v27 = v41;
    a2[4] = v40;
    a2[5] = v27;
    v28 = v37;
    *a2 = v36;
    a2[1] = v28;
    v29 = v47[0];
    a2[10] = v46;
    a2[11] = v29;
    *(a2 + 185) = *(v47 + 9);
    sub_25F5D6B28(&v36, v48);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    v48[0] = v22;
    v48[1] = v21;
    v48[2] = v23;
    v48[3] = v17;
    v55 = v80;
    v56 = v81;
    v57 = v82;
    v58 = v83;
    v51 = v76;
    v52 = v77;
    v53 = v78;
    v54 = v79;
    v49 = v74;
    v50 = v75;
    v59 = v18;
    v60 = v19;
    v61 = v35;
    return sub_25F5D6B60(v48);
  }
}

uint64_t sub_25F5D5AD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v156 = a2;
  v3 = sub_25F5E3884();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v152 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE80, &unk_25F5E7800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v148 = &v144 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v153 = &v144 - v14;
  v15 = sub_25F5E4444();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v151 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE78, &qword_25F5E77F8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v150 = &v144 - v22;
  v23 = sub_25F5E3AD4();
  v24 = *(v23 - 8);
  v162 = v23;
  v163 = v24;
  v25 = *(v24 + 64);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v159 = &v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v165 = &v144 - v30;
  v31 = *(a1 + 40);
  v167 = *(a1 + 32);
  v32 = *(a1 + 56);
  v169 = *(a1 + 64);
  v171 = *(a1 + 72);
  v170 = *(a1 + 80);
  v33 = 0.0;
  if (*(a1 + 112) & 1) != 0 || (*(a1 + 96))
  {
    LODWORD(v161) = 1;
    v34 = 0.0;
  }

  else
  {
    LODWORD(v161) = 0;
    v33 = *(a1 + 88);
    v34 = *(a1 + 104);
  }

  v164 = *(a1 + 48);
  v149 = *(a1 + 120);
  v35 = *(a1 + 136);
  v36 = *(a1 + 144);
  v157 = *(a1 + 128);
  v158 = v36;
  v155 = *(a1 + 152);
  v154 = *(a1 + 160);
  v160 = *(a1 + 168);
  v37 = *(a1 + 176);
  v38 = type metadata accessor for MultiModalLLMInference();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v168 = swift_allocObject();

  v41 = v169;
  v42 = v171;
  v43 = v170;
  sub_25F57B79C(v169, v171, v170);
  v45 = v166;
  v44 = v167;
  sub_25F580714(v167, v31);
  if (v45)
  {

    sub_25F581A78(v41, v42, v43);
    v46 = v168;
LABEL_8:
    v53 = *(*v46 + 48);
    v54 = *(*v46 + 52);
    return swift_deallocPartialClassInstance();
  }

  v147 = v37;
  static MultiModalLLMInference.getSessionConfig(modelBundleID:usecaseId:)(v44, v31, v164, v32, v165);
  v47 = v38;

  v48 = sub_25F5E3864();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  v51 = sub_25F5E3854();
  v52 = sub_25F5E3844();
  v166 = 0;
  v56 = v52;
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v57 = sub_25F5E3FB4();
  v58 = __swift_project_value_buffer(v57, qword_27FD9EA20);
  v59 = v56;
  v144 = v58;
  v60 = sub_25F5E3F94();
  v61 = sub_25F5E47A4();

  v62 = os_log_type_enabled(v60, v61);
  v164 = v51;
  if (v62)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v172 = v59;
    v173[0] = v64;
    v65 = v64;
    *v63 = 136315138;
    sub_25F5E38A4();
    v66 = v59;
    v67 = sub_25F5E4474();
    v69 = sub_25F570AF8(v67, v68, v173);

    *(v63 + 4) = v69;
    _os_log_impl(&dword_25F56A000, v60, v61, "Multimodal model's resource information: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    MEMORY[0x25F8E3B70](v65, -1, -1);
    MEMORY[0x25F8E3B70](v63, -1, -1);
  }

  v70 = sub_25F5E3894();
  if (!v70)
  {
    v72 = 0xE700000000000000;
    v76 = 0x6E776F6E6B6E75;
    goto LABEL_21;
  }

  v71 = v70;
  if (!*(v70 + 16))
  {
    v72 = 0xE700000000000000;
    goto LABEL_19;
  }

  v72 = 0xE700000000000000;
  v73 = sub_25F5709C8(0x6E6F6973726576, 0xE700000000000000);
  if ((v74 & 1) == 0)
  {
LABEL_19:
    v76 = 0x6E776F6E6B6E75;
    goto LABEL_20;
  }

  v75 = (*(v71 + 56) + 16 * v73);
  v76 = *v75;
  v72 = v75[1];

LABEL_20:

LABEL_21:
  v77 = v168;
  v78 = (v168 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference__modelVersion);
  *v78 = v76;
  v78[1] = v72;
  v79 = v77 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_imageClampSize;
  *v79 = v33;
  *(v79 + 8) = v34;
  *(v79 + 16) = v161;
  v80 = v170;
  if (v170 > 1)
  {
    v161 = v59;
    v145 = v78;
    if (v170 == 2)
    {

      v92 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
      v93 = sub_25F5E3D64();
      v86 = v168;
      (*(*(v93 - 8) + 56))(v168 + v92, 1, 1, v93);
      v94 = v171;

      v95 = v150;
      v96 = v169;
      v97 = v166;
      sub_25F5E4214();
      if (!v97)
      {
        v146 = v47;
        v166 = 0;
        sub_25F581A78(v96, v94, 2u);
        v117 = sub_25F5E4244();
        (*(*(v117 - 8) + 56))(v95, 0, 1, v117);
        sub_25F57B86C(v95, v86 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate, &qword_27FD9DE78, &qword_25F5E77F8);
        v118 = (v86 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
LABEL_37:
        *v118 = 0;
        v118[1] = 0;
        v90 = v162;
        v89 = v163;
        v91 = v165;
        v124 = v157;
        v59 = v161;
        goto LABEL_40;
      }

      v98 = 0;
    }

    else
    {

      v108 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
      v109 = sub_25F5E3D64();
      v98 = 1;
      v110 = v168;
      (*(*(v109 - 8) + 56))(v168 + v108, 1, 1, v109);
      v111 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
      v112 = sub_25F5E4244();
      v86 = v110;
      (*(*(v112 - 8) + 56))(v110 + v111, 1, 1, v112);
      sub_25F5E4424();
      v96 = v169;
      v94 = v171;
      v113 = v166;
      v114 = sub_25F5E43B4();
      v166 = v113;
      if (!v113)
      {
        v125 = v114;
        v126 = v115;
        v146 = v47;
        sub_25F581A78(v96, v94, 3u);
        v127 = (v86 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
        *v127 = v125;
        v127[1] = v126;
        v90 = v162;
        v89 = v163;
        v91 = v165;
        v59 = v161;
        goto LABEL_39;
      }

      v80 = v170;
    }

    sub_25F581A78(v96, v94, v80);
    (*(v163 + 8))(v165, v162);
    v116 = v145[1];

    sub_25F57C148(v86 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
    v46 = v86;
    if (!v98)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

  v146 = v47;
  if (v170)
  {
    v161 = v59;
    v99 = v171;

    v100 = sub_25F5E3F94();
    v101 = sub_25F5E4794();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v173[0] = v103;
      *v102 = 136315138;
      *(v102 + 4) = sub_25F570AF8(v169, v99, v173);
      _os_log_impl(&dword_25F56A000, v100, v101, "Using prompt_template_id=%s", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v103);
      MEMORY[0x25F8E3B70](v103, -1, -1);
      MEMORY[0x25F8E3B70](v102, -1, -1);
    }

    v104 = v166;
    sub_25F5E3874();
    v105 = v171;
    v106 = v169;
    if (v104)
    {

      sub_25F581A78(v106, v105, 1u);
      sub_25F581A78(v106, v105, 1u);

      (*(v163 + 8))(v165, v162);
      v107 = v78[1];

      v46 = v168;
      goto LABEL_8;
    }

    v145 = v78;
    v166 = 0;
    v119 = v148;
    sub_25F5E3D54();
    sub_25F581A78(v106, v105, 1u);
    v120 = sub_25F5E3D64();
    (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
    v121 = v168;
    sub_25F57B86C(v119, v168 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
    v122 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
    v123 = sub_25F5E4244();
    (*(*(v123 - 8) + 56))(v121 + v122, 1, 1, v123);
    v86 = v121;
    v118 = (v121 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
    goto LABEL_37;
  }

  v145 = v78;

  v81 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
  v82 = sub_25F5E3D64();
  v83 = v168;
  (*(*(v82 - 8) + 56))(v168 + v81, 1, 1, v82);
  v84 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
  v85 = sub_25F5E4244();
  (*(*(v85 - 8) + 56))(v83 + v84, 1, 1, v85);
  v86 = v83;
  v87 = (v83 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
  v88 = v171;
  *v87 = v169;
  v87[1] = v88;
  v90 = v162;
  v89 = v163;
  v91 = v165;
LABEL_39:
  v124 = v157;
LABEL_40:
  (*(v89 + 16))(v159, v91, v90);
  v128 = sub_25F5E39D4();
  v129 = *(v128 + 48);
  v130 = *(v128 + 52);
  swift_allocObject();
  *(v86 + 16) = sub_25F5E39C4();
  v131 = v160;
  if ((v124 & 1) == 0)
  {
    if (v158)
    {
      v134 = v153;
      sub_25F5E3A54();
LABEL_46:

      (*(v89 + 8))(v91, v90);
      v135 = sub_25F5E3A64();
      (*(*(v135 - 8) + 56))(v134, 0, 1, v135);
      result = sub_25F57B86C(v134, v86 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy, &qword_27FD9DE70, &qword_25F5E77F0);
      goto LABEL_47;
    }

    sub_25F581FD8();
    swift_allocError();
    *v139 = 5;
    swift_willThrow();

    (*(v89 + 8))(v91, v90);
    v140 = *(v86 + 16);

    v141 = v145[1];

    v142 = *(v86 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt + 8);

    sub_25F57C148(v86 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
    v46 = v86;
LABEL_49:
    v143 = v46;
    sub_25F57C148(v46 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate, &qword_27FD9DE78, &qword_25F5E77F8);
    v46 = v143;
    goto LABEL_8;
  }

  if ((v158 & 1) == 0)
  {
    v134 = v153;
    sub_25F5E3A44();
    goto LABEL_46;
  }

  (*(v89 + 8))(v91, v90);

  v132 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy;
  v133 = sub_25F5E3A64();
  result = (*(*(v133 - 8) + 56))(v86 + v132, 1, 1, v133);
LABEL_47:
  v136 = v86 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_temperature;
  *v136 = v155;
  *(v136 + 8) = v154;
  v137 = v86 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_seed;
  *v137 = v131;
  *(v137 + 8) = v147;
  v138 = v156;
  v156[3] = v146;
  v138[4] = &protocol witness table for MultiModalLLMInference;
  *v138 = v86;
  return result;
}

unint64_t sub_25F5D6A80()
{
  result = qword_27FD9E848;
  if (!qword_27FD9E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E848);
  }

  return result;
}

unint64_t sub_25F5D6AD4()
{
  result = qword_27FD9E850;
  if (!qword_27FD9E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E850);
  }

  return result;
}

uint64_t (*static MultiModalCompletionStep.multiModalCompleterFactory.getter())()
{
  swift_beginAccess();
  v0 = off_281E8E2A8;

  return v0;
}

uint64_t static MultiModalCompletionStep.multiModalCompleterFactory.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  off_281E8E2A8 = a1;
  qword_281E8E2B0 = a2;
}

uint64_t sub_25F5D6C98(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  swift_beginAccess();
  off_281E8E2A8 = v2;
  qword_281E8E2B0 = v1;
}

uint64_t MultiModalCompletionStep.init(config:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[9];
  v5 = a1[11];
  v44 = a1[10];
  v45[0] = v5;
  *(v45 + 9) = *(a1 + 185);
  v6 = a1[5];
  v7 = a1[7];
  v40 = a1[6];
  v8 = v40;
  v41 = v7;
  v9 = a1[7];
  v10 = a1[9];
  v42 = a1[8];
  v11 = v42;
  v43 = v10;
  v12 = a1[1];
  v13 = a1[3];
  v36 = a1[2];
  v14 = v36;
  v37 = v13;
  v15 = a1[3];
  v16 = a1[5];
  v38 = a1[4];
  v17 = v38;
  v39 = v16;
  v18 = a1[1];
  v34 = *a1;
  v19 = v34;
  v35 = v18;
  v20 = a1[11];
  a2[10] = v44;
  a2[11] = v20;
  *(a2 + 185) = *(a1 + 185);
  a2[6] = v8;
  a2[7] = v9;
  a2[8] = v11;
  a2[9] = v4;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v17;
  a2[5] = v6;
  *a2 = v19;
  a2[1] = v12;
  swift_beginAccess();
  v21 = off_281E8E2A8;
  v31[10] = v44;
  v32[0] = v45[0];
  *(v32 + 9) = *(v45 + 9);
  v31[6] = v40;
  v31[7] = v41;
  v31[8] = v42;
  v31[9] = v43;
  v31[2] = v36;
  v31[3] = v37;
  v31[4] = v38;
  v31[5] = v39;
  v31[0] = v34;
  v31[1] = v35;
  sub_25F5D6B28(&v34, v29);

  (v21)(v33, v31);

  sub_25F5D6B60(&v34);
  if (!v2)
  {
    return sub_25F573A2C(v33, (a2 + 13));
  }

  v22 = a2[11];
  v29[10] = a2[10];
  v30[0] = v22;
  *(v30 + 9) = *(a2 + 185);
  v23 = a2[7];
  v29[6] = a2[6];
  v29[7] = v23;
  v24 = a2[9];
  v29[8] = a2[8];
  v29[9] = v24;
  v25 = a2[3];
  v29[2] = a2[2];
  v29[3] = v25;
  v26 = a2[5];
  v29[4] = a2[4];
  v29[5] = v26;
  v27 = a2[1];
  v29[0] = *a2;
  v29[1] = v27;
  return sub_25F5D6B60(v29);
}

uint64_t MultiModalCompletionStep.process(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25F5D6ED8, 0, 0);
}

uint64_t sub_25F5D6ED8()
{
  v1 = v0[3];
  v2 = *(v1 + 200);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25F57CC44;
  v5 = v0[2];

  return sub_25F5A1F60(v5, v2, &unk_25F5EAE48, v3);
}

uint64_t sub_25F5D6FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[57] = a2;
  v3[58] = a3;
  v3[56] = a1;
  v4 = sub_25F5E3554();
  v3[59] = v4;
  v5 = *(v4 - 8);
  v3[60] = v5;
  v6 = *(v5 + 64) + 15;
  v3[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F5D7084, 0, 0);
}

void sub_25F5D7084()
{
  v1 = v0;
  v2 = *(v0 + 464);
  if (*(v2 + 80) - 1 > 1)
  {
    v11 = *v2;
    if (*(*v2 + 16) != 1 || (v12 = v2[1], v12[2] != 1))
    {
      sub_25F5748D4();
      swift_allocError();
      *v66 = 7;
      goto LABEL_111;
    }

    v13 = *(v0 + 456);
    if (!*(v13 + 16))
    {
      goto LABEL_110;
    }

    v14 = *(v11 + 32);
    v15 = *(v11 + 40);
    v16 = *(v0 + 456);

    v17 = sub_25F5709C8(v14, v15);
    v19 = v18;

    v20 = *(v0 + 456);
    if ((v19 & 1) == 0)
    {
      v152 = *(v0 + 456);
      goto LABEL_109;
    }

    sub_25F573A4C(*(v20 + 56) + 32 * v17, v0 + 16);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v169 = *(v0 + 456);
      goto LABEL_109;
    }

    v22 = *(v0 + 400);
    v21 = *(v0 + 408);
    *(v0 + 528) = v21;
    if (!v12[2])
    {
      goto LABEL_135;
    }

    if (!*(v13 + 16) || (v24 = v12[4], v23 = v12[5], v25 = *(v0 + 456), , v26 = sub_25F5709C8(v24, v23), LOBYTE(v24) = v27, , (v24 & 1) == 0))
    {
      v170 = *(v0 + 456);
      goto LABEL_108;
    }

    sub_25F573A4C(*(v20 + 56) + 32 * v26, v0 + 80);
    sub_25F571D88((v0 + 80), (v0 + 48));
    __swift_project_boxed_opaque_existential_1Tm((v0 + 48), *(v0 + 72));
    v28 = sub_25F5E4B74();
    v29 = CFGetTypeID(v28);
    swift_unknownObjectRelease();
    if (v29 == CGImageGetTypeID())
    {
      v30 = *(v0 + 464);
      sub_25F573A4C(v0 + 48, v0 + 112);
      type metadata accessor for CGImage(0);
      swift_dynamicCast();
      v31 = *(v0 + 432);
      *(v0 + 536) = v31;
      v32 = v30[29];
      v33 = v30[30];
      __swift_project_boxed_opaque_existential_1Tm(v30 + 26, v32);
      v34 = *(v33 + 16);
      v185 = (v34 + *v34);
      v35 = v34[1];
      v36 = swift_task_alloc();
      *(v0 + 544) = v36;
      *v36 = v0;
      v36[1] = sub_25F5D8388;

      v185(v22, v21, v31, v32, v33);
      return;
    }

LABEL_124:
    v171 = v1[57];

    sub_25F5748D4();
    swift_allocError();
    *v172 = 15;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 6);
    goto LABEL_112;
  }

  v3 = *(v0 + 456);

  v4 = MEMORY[0x277D84F90];
  v184 = sub_25F571EB0(MEMORY[0x277D84F90]);
  v181 = sub_25F572854(v4);
  v182 = v0;
  v5 = v2[23];
  if (v5)
  {
    v6 = -1;
    v7 = -1 << *(v5 + 32);
    if (-v7 < 64)
    {
      v6 = ~(-1 << -v7);
    }

    v8 = v6 & *(v5 + 64);
    v9 = (63 - v7) >> 6;
    v173 = (v1[60] + 8);

    v10 = 0;
    while (v8)
    {
      v40 = v10;
LABEL_25:
      v41 = v1[61];
      v42 = (v40 << 10) | (16 * __clz(__rbit64(v8)));
      v43 = (*(v5 + 48) + v42);
      v44 = v43[1];
      v177 = *v43;
      v45 = (*(v5 + 56) + v42);
      v46 = *v45;
      v47 = v45[1];

      sub_25F5E3504();

      v48 = sub_25F5E3514();
      v49 = CGImageSourceCreateWithURL(v48, 0);

      if (!v49)
      {

        sub_25F5748D4();
        v153 = swift_allocError();
        *v154 = 16;
        swift_willThrow();
LABEL_104:
        v1 = v182;
        v156 = v182[57];
        (*v173)(v182[61], v182[59]);

        sub_25F5748D4();
        swift_allocError();
        *v157 = 16;
        swift_willThrow();

        goto LABEL_112;
      }

      ImageAtIndex = CGImageSourceCreateImageAtIndex(v49, 0, 0);
      if (!ImageAtIndex)
      {

        sub_25F5748D4();
        v153 = swift_allocError();
        *v155 = 16;
        swift_willThrow();

        goto LABEL_104;
      }

      v51 = ImageAtIndex;
      (*v173)(v182[61], v182[59]);

      v52 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = sub_25F5709C8(v177, v44);
      v56 = v181[2];
      v57 = (v55 & 1) == 0;
      v58 = __OFADD__(v56, v57);
      v59 = v56 + v57;
      if (v58)
      {
        goto LABEL_129;
      }

      v60 = v55;
      if (v181[3] >= v59)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v65 = v54;
          sub_25F57B570();
          v54 = v65;
        }
      }

      else
      {
        sub_25F57A3C4(v59, isUniquelyReferenced_nonNull_native);
        v54 = sub_25F5709C8(v177, v44);
        if ((v60 & 1) != (v61 & 1))
        {
LABEL_98:

          sub_25F5E4BC4();
          return;
        }
      }

      v8 &= v8 - 1;
      if (v60)
      {
        v37 = v54;

        v38 = v181[7];
        v39 = *(v38 + 8 * v37);
        *(v38 + 8 * v37) = v52;
      }

      else
      {
        v181[(v54 >> 6) + 8] |= 1 << v54;
        v62 = (v181[6] + 16 * v54);
        *v62 = v177;
        v62[1] = v44;
        *(v181[7] + 8 * v54) = v52;

        v63 = v181[2];
        v58 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v58)
        {
          goto LABEL_133;
        }

        v181[2] = v64;
      }

      v10 = v40;
      v1 = v182;
    }

    while (1)
    {
      v40 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_123;
      }

      if (v40 >= v9)
      {
        break;
      }

      v8 = *(v5 + 64 + 8 * v40);
      ++v10;
      if (v8)
      {
        goto LABEL_25;
      }
    }
  }

  v67 = v1[58];
  v174 = v67[24];
  if (!v174)
  {
    goto LABEL_59;
  }

  v68 = v174 + 64;
  v69 = -1;
  v70 = -1 << *(v174 + 32);
  if (-v70 < 64)
  {
    v69 = ~(-1 << -v70);
  }

  v71 = v69 & *(v174 + 64);
  v72 = (63 - v70) >> 6;

  v73 = 0;
  while (v71)
  {
    v77 = v73;
LABEL_49:
    v78 = (v77 << 10) | (16 * __clz(__rbit64(v71)));
    v79 = (*(v174 + 48) + v78);
    v81 = *v79;
    v80 = v79[1];
    v82 = (*(v174 + 56) + v78);
    v83 = v82[1];
    v178 = *v82;

    v84 = swift_isUniquelyReferenced_nonNull_native();
    v85 = sub_25F5709C8(v81, v80);
    v87 = v184[2];
    v88 = (v86 & 1) == 0;
    v58 = __OFADD__(v87, v88);
    v89 = v87 + v88;
    if (v58)
    {
      goto LABEL_127;
    }

    v90 = v86;
    if (v184[3] >= v89)
    {
      if ((v84 & 1) == 0)
      {
        v96 = v85;
        sub_25F57ADD8();
        v85 = v96;
      }
    }

    else
    {
      sub_25F579590(v89, v84);
      v85 = sub_25F5709C8(v81, v80);
      if ((v90 & 1) != (v91 & 1))
      {
        goto LABEL_98;
      }
    }

    v71 &= v71 - 1;
    if (v90)
    {
      v74 = v85;

      v75 = (v184[7] + 16 * v74);
      v76 = v75[1];
      *v75 = v178;
      v75[1] = v83;
    }

    else
    {
      v184[(v85 >> 6) + 8] |= 1 << v85;
      v92 = (v184[6] + 16 * v85);
      *v92 = v81;
      v92[1] = v80;
      v93 = (v184[7] + 16 * v85);
      *v93 = v178;
      v93[1] = v83;
      v94 = v184[2];
      v58 = __OFADD__(v94, 1);
      v95 = v94 + 1;
      if (v58)
      {
        goto LABEL_132;
      }

      v184[2] = v95;
    }

    v73 = v77;
    v1 = v182;
    v68 = v174 + 64;
  }

  while (1)
  {
    v77 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      __break(1u);
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    if (v77 >= v72)
    {
      break;
    }

    v71 = *(v68 + 8 * v77);
    ++v73;
    if (v71)
    {
      goto LABEL_49;
    }
  }

  v67 = v1[58];
LABEL_59:
  v97 = *v67;
  v179 = *(*v67 + 16);
  if (!v179)
  {
    goto LABEL_80;
  }

  v98 = 0;
  v99 = v1[57];
  v100 = (v97 + 40);
  v175 = v99;
  while (1)
  {
    if (v98 >= *(v97 + 16))
    {
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      return;
    }

    v104 = v1[57];
    if (!*(v99 + 16))
    {
      goto LABEL_78;
    }

    v106 = *(v100 - 1);
    v105 = *v100;

    v107 = sub_25F5709C8(v106, v105);
    if ((v108 & 1) == 0)
    {
      break;
    }

    sub_25F573A4C(*(v99 + 56) + 32 * v107, (v1 + 26));
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v110 = v1[52];
    v109 = v1[53];
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v112 = sub_25F5709C8(v106, v105);
    v114 = v184[2];
    v115 = (v113 & 1) == 0;
    v58 = __OFADD__(v114, v115);
    v116 = v114 + v115;
    if (v58)
    {
      goto LABEL_126;
    }

    v117 = v113;
    if (v184[3] < v116)
    {
      sub_25F579590(v116, v111);
      v112 = sub_25F5709C8(v106, v105);
      if ((v117 & 1) != (v118 & 1))
      {
        goto LABEL_98;
      }

LABEL_72:
      v1 = v182;
      if ((v117 & 1) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_61;
    }

    if (v111)
    {
      goto LABEL_72;
    }

    v123 = v112;
    sub_25F57ADD8();
    v112 = v123;
    v1 = v182;
    if ((v117 & 1) == 0)
    {
LABEL_73:
      v184[(v112 >> 6) + 8] |= 1 << v112;
      v119 = (v184[6] + 16 * v112);
      *v119 = v106;
      v119[1] = v105;
      v120 = (v184[7] + 16 * v112);
      *v120 = v110;
      v120[1] = v109;
      v121 = v184[2];
      v58 = __OFADD__(v121, 1);
      v122 = v121 + 1;
      if (v58)
      {
        goto LABEL_131;
      }

      v184[2] = v122;
      goto LABEL_62;
    }

LABEL_61:
    v101 = v112;

    v102 = (v184[7] + 16 * v101);
    v103 = v102[1];
    *v102 = v110;
    v102[1] = v109;

LABEL_62:
    ++v98;
    v100 += 2;
    v99 = v175;
    if (v179 == v98)
    {
      v67 = v1[58];
LABEL_80:
      v1[62] = v184;
      v125 = v67[1];
      v180 = *(v125 + 16);
      if (!v180)
      {
LABEL_117:
        v1[63] = v181;
        v164 = v67[29];
        v165 = v67[30];
        __swift_project_boxed_opaque_existential_1Tm(v67 + 26, v164);
        v166 = *(v165 + 24);
        v183 = (v166 + *v166);
        v167 = v166[1];
        v168 = swift_task_alloc();
        v1[64] = v168;
        *v168 = v1;
        v168[1] = sub_25F5D7FF4;

        (v183)(v184, v181, v164, v165);
        return;
      }

      v126 = 0;
      v127 = v1[57];
      v128 = (v125 + 40);
      v176 = v127;
      while (1)
      {
        if (v126 >= *(v125 + 16))
        {
          goto LABEL_128;
        }

        if (!*(v127 + 16))
        {
          goto LABEL_107;
        }

        v133 = *(v128 - 1);
        v132 = *v128;
        v134 = v1[57];

        v135 = sub_25F5709C8(v133, v132);
        if ((v136 & 1) == 0)
        {

LABEL_107:
          v158 = v1[57];

          goto LABEL_108;
        }

        sub_25F573A4C(*(v127 + 56) + 32 * v135, (v1 + 34));
        sub_25F571D88(v1 + 17, v1 + 15);
        __swift_project_boxed_opaque_existential_1Tm(v1 + 30, v1[33]);
        v137 = sub_25F5E4B74();
        v138 = CFGetTypeID(v137);
        swift_unknownObjectRelease();
        if (v138 != CGImageGetTypeID())
        {
          v162 = v1[57];

          sub_25F5748D4();
          swift_allocError();
          *v163 = 15;
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_1Tm(v1 + 30);
          goto LABEL_112;
        }

        sub_25F573A4C((v1 + 30), (v1 + 38));
        type metadata accessor for CGImage(0);
        swift_dynamicCast();
        v139 = v1[55];
        v140 = swift_isUniquelyReferenced_nonNull_native();
        v141 = sub_25F5709C8(v133, v132);
        v143 = v181[2];
        v144 = (v142 & 1) == 0;
        v58 = __OFADD__(v143, v144);
        v145 = v143 + v144;
        if (v58)
        {
          goto LABEL_130;
        }

        v146 = v142;
        if (v181[3] < v145)
        {
          break;
        }

        if (v140)
        {
          goto LABEL_93;
        }

        v151 = v141;
        sub_25F57B570();
        v141 = v151;
        v1 = v182;
        if ((v146 & 1) == 0)
        {
LABEL_94:
          v181[(v141 >> 6) + 8] |= 1 << v141;
          v148 = (v181[6] + 16 * v141);
          *v148 = v133;
          v148[1] = v132;
          *(v181[7] + 8 * v141) = v139;

          v149 = v181[2];
          v58 = __OFADD__(v149, 1);
          v150 = v149 + 1;
          if (v58)
          {
            goto LABEL_134;
          }

          v181[2] = v150;
          goto LABEL_83;
        }

LABEL_82:
        v129 = v141;

        v130 = v181[7];
        v131 = *(v130 + 8 * v129);
        *(v130 + 8 * v129) = v139;

LABEL_83:
        ++v126;
        __swift_destroy_boxed_opaque_existential_1Tm(v1 + 30);
        v128 += 2;
        v127 = v176;
        if (v180 == v126)
        {
          v67 = v1[58];
          goto LABEL_117;
        }
      }

      sub_25F57A3C4(v145, v140);
      v141 = sub_25F5709C8(v133, v132);
      if ((v146 & 1) != (v147 & 1))
      {
        goto LABEL_98;
      }

LABEL_93:
      v1 = v182;
      if ((v146 & 1) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_82;
    }
  }

  v124 = v1[57];

LABEL_78:

LABEL_108:

LABEL_109:

LABEL_110:
  sub_25F5748D4();
  swift_allocError();
  *v159 = 0;
LABEL_111:
  swift_willThrow();
LABEL_112:
  v160 = v1[61];

  v161 = v1[1];

  v161();
}

uint64_t sub_25F5D7FF4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[42] = v3;
  v5[43] = a1;
  v5[44] = a2;
  v5[45] = v2;
  v6 = v4[64];
  v7 = *v3;
  v5[65] = v2;

  v8 = v4[63];
  v9 = v4[62];
  if (v2)
  {
    v10 = v5[57];

    v11 = sub_25F5D8700;
  }

  else
  {

    v11 = sub_25F5D8170;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_25F5D8170()
{
  v21 = v0;
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = qword_27FD9D8B0;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_25F5E3FB4();
  __swift_project_value_buffer(v4, qword_27FD9EA20);

  v5 = sub_25F5E3F94();
  v6 = sub_25F5E4794();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 448);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v10 = sub_25F570AF8(v2, v1, &v20);

    *(v8 + 14) = v10;
    _os_log_impl(&dword_25F56A000, v5, v6, "Multimodal completion for item %ld: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x25F8E3B70](v9, -1, -1);
    MEMORY[0x25F8E3B70](v8, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 488);
  v13 = *(v0 + 456);
  v12 = *(v0 + 464);
  v14 = *(v12 + 16);
  v15 = *(v12 + 24);
  *(v0 + 168) = MEMORY[0x277D837D0];
  *(v0 + 144) = v2;
  *(v0 + 152) = v1;
  sub_25F571D88((v0 + 144), (v0 + 176));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v13;
  sub_25F5710A0((v0 + 176), v14, v15, isUniquelyReferenced_nonNull_native);
  v17 = v20;

  v18 = *(v0 + 8);

  return v18(v17);
}

uint64_t sub_25F5D8388(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[46] = v3;
  v5[47] = a1;
  v5[48] = a2;
  v5[49] = v2;
  v6 = v4[68];
  v7 = *v3;
  v5[69] = v2;

  v8 = v4[66];
  if (v2)
  {
    v9 = v5[57];

    v10 = sub_25F5D8764;
  }

  else
  {

    v10 = sub_25F5D84D8;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_25F5D84D8()
{
  v21 = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = qword_27FD9D8B0;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_25F5E3FB4();
  __swift_project_value_buffer(v4, qword_27FD9EA20);

  v5 = sub_25F5E3F94();
  v6 = sub_25F5E4794();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 448);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v10 = sub_25F570AF8(v2, v1, &v20);

    *(v8 + 14) = v10;
    _os_log_impl(&dword_25F56A000, v5, v6, "Multimodal completion for item %ld: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x25F8E3B70](v9, -1, -1);
    MEMORY[0x25F8E3B70](v8, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 488);
  v13 = *(v0 + 456);
  v12 = *(v0 + 464);
  v14 = *(v12 + 16);
  v15 = *(v12 + 24);
  *(v0 + 168) = MEMORY[0x277D837D0];
  *(v0 + 144) = v2;
  *(v0 + 152) = v1;
  sub_25F571D88((v0 + 144), (v0 + 176));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v13;
  sub_25F5710A0((v0 + 176), v14, v15, isUniquelyReferenced_nonNull_native);
  v17 = v20;

  v18 = *(v0 + 8);

  return v18(v17);
}

uint64_t sub_25F5D8700()
{
  v1 = v0[65];
  v2 = v0[61];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F5D8764()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  v1 = *(v0 + 552);
  v2 = *(v0 + 488);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25F5D87D8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F57E7F4;

  return sub_25F5D6FC0(a1, a2, v6);
}

uint64_t sub_25F5D8884(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25F5D88A4, 0, 0);
}

uint64_t sub_25F5D88A4()
{
  v1 = v0[3];
  v2 = *(v1 + 200);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25F57DE74;
  v5 = v0[2];

  return sub_25F5A1F60(v5, v2, &unk_25F5EB1A0, v3);
}

uint64_t sub_25F5D898C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_281E8E2B0;
  *a1 = off_281E8E2A8;
  a1[1] = v2;
}

uint64_t sub_25F5D89E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
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

uint64_t sub_25F5D8A28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_25F5D8AF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_25F5D8B40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F5D8BE0()
{
  result = qword_27FD9E858;
  if (!qword_27FD9E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E858);
  }

  return result;
}

unint64_t sub_25F5D8C38()
{
  result = qword_27FD9E860;
  if (!qword_27FD9E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E860);
  }

  return result;
}

unint64_t sub_25F5D8C90()
{
  result = qword_27FD9E868;
  if (!qword_27FD9E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E868);
  }

  return result;
}

uint64_t sub_25F5D8CE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75706E4974786574 && a2 == 0xED00007379654B74;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x706E496567616D69 && a2 == 0xEE007379654B7475 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654B74757074756FLL && a2 == 0xE900000000000079 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x636E657265666E69 && a2 == 0xEF6769666E6F4365 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025F5ECC60 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174744174786574 && a2 == 0xEF73746E656D6863 || (sub_25F5E4B84() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x614665726F6E6769 && a2 == 0xEE00736572756C69)
  {

    return 6;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_25F5D8F64(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F57E6F8;

  return sub_25F5D6FC0(a1, a2, v6);
}

uint64_t ExecutionState.lastCompletion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F5E3694();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ExecutionState()
{
  result = qword_27FD9E8A0;
  if (!qword_27FD9E8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ExecutionState.init(lastCompletion:lastItemDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25F5E3694();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for ExecutionState() + 20);

  return sub_25F5B6F80(a2, v7);
}

uint64_t ExecutionState.init(dictionary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F5E3694();
  v49 = *(v4 - 8);
  v5 = *(v49 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v48 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v44 - v11;
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v44 - v18;
  v20 = type metadata accessor for ExecutionState();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  if (*(a1 + 16) && (v27 = sub_25F5709C8(0x706D6F437473616CLL, 0xEE006E6F6974656CLL), (v28 & 1) != 0) && (sub_25F573A4C(*(a1 + 56) + 32 * v27, v50), (swift_dynamicCast() & 1) != 0))
  {
    v46 = a2;
    v47 = v4;
    v29 = sub_25F5E43C4();

    v30 = [v26 dateFromString_];

    if (v30)
    {
      sub_25F5E3674();

      v31 = v16;
      v32 = v49;
      v33 = v47;
      v45 = *(v49 + 32);
      v45(v19, v31, v47);
      (*(v32 + 16))(v25, v19, v33);
      if (*(a1 + 16) && (v34 = sub_25F5709C8(0x6D6574497473616CLL, 0xEC00000065746144), (v35 & 1) != 0))
      {
        sub_25F573A4C(*(a1 + 56) + 32 * v34, v50);

        if (swift_dynamicCast())
        {
          v36 = sub_25F5E43C4();

          v37 = [v26 dateFromString_];

          if (v37)
          {
            sub_25F5E3674();

            v38 = v47;
            (*(v32 + 8))(v19, v47);
            v39 = v45;
            v45(v12, v48, v38);
            v40 = *(v20 + 20);
            v39(&v25[v40], v12, v38);
            (*(v32 + 56))(&v25[v40], 0, 1, v38);
            a2 = v46;
LABEL_16:
            sub_25F5DA5E0(v25, a2);
            v41 = 0;
            return (*(v21 + 56))(a2, v41, 1, v20);
          }
        }

        v43 = v47;
        (*(v32 + 8))(v19, v47);
      }

      else
      {

        v43 = v47;
        (*(v32 + 8))(v19, v47);
      }

      a2 = v46;
      (*(v32 + 56))(&v25[*(v20 + 20)], 1, 1, v43);
      goto LABEL_16;
    }

    v41 = 1;
    a2 = v46;
  }

  else
  {

    v41 = 1;
  }

  return (*(v21 + 56))(a2, v41, 1, v20);
}

uint64_t ExecutionState.asDictionary.getter()
{
  v24 = *MEMORY[0x277D85DE8];
  v0 = sub_25F5E33F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F5E3434();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_25F5E3424();
  (*(v1 + 104))(v5, *MEMORY[0x277CC8778], v0);
  sub_25F5E3404();
  type metadata accessor for ExecutionState();
  sub_25F5DAEE4(&qword_27FD9E870, type metadata accessor for ExecutionState);
  v9 = sub_25F5E3414();
  v11 = v10;
  v12 = objc_opt_self();
  v13 = sub_25F5E35D4();
  sub_25F571820(v9, v11);
  *&v22 = 0;
  v14 = [v12 JSONObjectWithData:v13 options:0 error:&v22];

  v15 = v22;
  if (v14)
  {
    sub_25F5E48C4();

    swift_unknownObjectRelease();
  }

  else
  {
    v18 = v15;
    v19 = sub_25F5E34F4();

    swift_willThrow();

    v22 = 0u;
    v23 = 0u;
  }

  v21[0] = v22;
  v21[1] = v23;
  if (*(&v23 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDF8, &unk_25F5E7220);
    if (swift_dynamicCast())
    {
      result = v20;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    sub_25F57C148(v21, &qword_27FD9DD20, &unk_25F5E6DE0);
    result = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static ExecutionState.get(forKey:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E878, &qword_25F5EB1A8);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v29[-v13];
  v15 = type metadata accessor for ExecutionState();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = [objc_opt_self() standardUserDefaults];
  v17 = sub_25F5E43C4();
  v18 = [v16 dictionaryForKey_];

  if (v18)
  {
    v19 = sub_25F5E4304();

    ExecutionState.init(dictionary:)(v19, v11);
    sub_25F5DA644(v11, v14);
  }

  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v20 = sub_25F5E3FB4();
  __swift_project_value_buffer(v20, qword_27FD9EA20);

  v21 = sub_25F5E3F94();
  v22 = sub_25F5E47A4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v30[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_25F570AF8(a1, a2, v30);
    *(v23 + 12) = 2080;
    swift_beginAccess();
    v25 = sub_25F5E47E4();
    v27 = sub_25F570AF8(v25, v26, v30);

    *(v23 + 14) = v27;
    _os_log_impl(&dword_25F56A000, v21, v22, "Execution state for %s: %s.", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8E3B70](v24, -1, -1);
    MEMORY[0x25F8E3B70](v23, -1, -1);
  }

  swift_beginAccess();
  sub_25F573B94(v14, a3, &qword_27FD9E878, &qword_25F5EB1A8);
  return sub_25F57C148(v14, &qword_27FD9E878, &qword_25F5EB1A8);
}

void static ExecutionState.set(forKey:state:)(uint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  if (ExecutionState.asDictionary.getter())
  {
    v5 = sub_25F5E42F4();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_25F5E43C4();
  [v4 setValue:v5 forKey:v6];

  swift_unknownObjectRelease();
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v7 = sub_25F5E3FB4();
  __swift_project_value_buffer(v7, qword_27FD9EA20);

  oslog = sub_25F5E3F94();
  v8 = sub_25F5E4794();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_25F570AF8(a1, a2, &v12);
    _os_log_impl(&dword_25F56A000, oslog, v8, "Execution state saved for %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x25F8E3B70](v10, -1, -1);
    MEMORY[0x25F8E3B70](v9, -1, -1);
  }
}

uint64_t sub_25F5D9E84()
{
  if (*v0)
  {
    result = 0x6D6574497473616CLL;
  }

  else
  {
    result = 0x706D6F437473616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_25F5D9ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x706D6F437473616CLL && a2 == 0xEE006E6F6974656CLL;
  if (v6 || (sub_25F5E4B84() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6574497473616CLL && a2 == 0xEC00000065746144)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25F5E4B84();

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

uint64_t sub_25F5D9FBC(uint64_t a1)
{
  v2 = sub_25F5DAA08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5D9FF8(uint64_t a1)
{
  v2 = sub_25F5DAA08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExecutionState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E880, &qword_25F5EB1B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5DAA08();
  sub_25F5E4C84();
  v12[15] = 0;
  sub_25F5E3694();
  sub_25F5DAEE4(&qword_27FD9E890, MEMORY[0x277CC9578]);
  sub_25F5E4B24();
  if (!v1)
  {
    v10 = *(type metadata accessor for ExecutionState() + 20);
    v12[14] = 1;
    sub_25F5E4B14();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t ExecutionState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v30 - v7;
  v39 = sub_25F5E3694();
  v35 = *(v39 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v39, v10);
  v36 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E898, &qword_25F5EB1B8);
  v13 = *(v12 - 8);
  v37 = v12;
  v38 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v30 - v16;
  v18 = type metadata accessor for ExecutionState();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5DAA08();
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v31 = v18;
  v32 = v8;
  v33 = v22;
  v41 = 0;
  sub_25F5DAEE4(&qword_27FD9E380, MEMORY[0x277CC9578]);
  v24 = v36;
  v25 = v37;
  v26 = v39;
  sub_25F5E4AD4();
  (*(v35 + 32))(v33, v24, v26);
  v40 = 1;
  v27 = v32;
  sub_25F5E4A84();
  (*(v38 + 8))(v17, v25);
  v28 = v33;
  sub_25F5B6F80(v27, &v33[*(v31 + 20)]);
  sub_25F5DAA5C(v28, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_25F5DAAC0(v28);
}

uint64_t sub_25F5DA5E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecutionState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F5DA644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E878, &qword_25F5EB1A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL _s8PriMLETL14ExecutionStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F5E3694();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E8C8, &qword_25F5EB370);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v27 - v18;
  if ((sub_25F5E3664() & 1) == 0)
  {
    return 0;
  }

  v28 = v9;
  v20 = *(type metadata accessor for ExecutionState() + 20);
  v21 = *(v15 + 48);
  sub_25F573B94(a1 + v20, v19, &unk_27FD9E500, &unk_25F5EA410);
  sub_25F573B94(a2 + v20, &v19[v21], &unk_27FD9E500, &unk_25F5EA410);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      sub_25F57C148(v19, &unk_27FD9E500, &unk_25F5EA410);
      return 1;
    }

    goto LABEL_7;
  }

  sub_25F573B94(v19, v14, &unk_27FD9E500, &unk_25F5EA410);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    (*(v5 + 8))(v14, v4);
LABEL_7:
    sub_25F57C148(v19, &qword_27FD9E8C8, &qword_25F5EB370);
    return 0;
  }

  v24 = v28;
  (*(v5 + 32))(v28, &v19[v21], v4);
  sub_25F5DAEE4(&qword_27FD9E8D0, MEMORY[0x277CC9578]);
  v25 = sub_25F5E4394();
  v26 = *(v5 + 8);
  v26(v24, v4);
  v26(v14, v4);
  sub_25F57C148(v19, &unk_27FD9E500, &unk_25F5EA410);
  return (v25 & 1) != 0;
}

unint64_t sub_25F5DAA08()
{
  result = qword_27FD9E888;
  if (!qword_27FD9E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E888);
  }

  return result;
}

uint64_t sub_25F5DAA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecutionState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F5DAAC0(uint64_t a1)
{
  v2 = type metadata accessor for ExecutionState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F5DAB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F5E3694();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25F5DAC40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25F5E3694();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_25F5DAD48()
{
  sub_25F5E3694();
  if (v0 <= 0x3F)
  {
    sub_25F5B2AE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_25F5DADE0()
{
  result = qword_27FD9E8B0;
  if (!qword_27FD9E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E8B0);
  }

  return result;
}

unint64_t sub_25F5DAE38()
{
  result = qword_27FD9E8B8;
  if (!qword_27FD9E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E8B8);
  }

  return result;
}

unint64_t sub_25F5DAE90()
{
  result = qword_27FD9E8C0;
  if (!qword_27FD9E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E8C0);
  }

  return result;
}

uint64_t sub_25F5DAEE4(unint64_t *a1, void (*a2)(uint64_t))
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

void TaggingStepConfig.updateProperties(from:)()
{
  v1 = v0;
  if (*(v0 + 80) == 3)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);

    v4 = sub_25F5E3D14();
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      sub_25F581A78(v2, v3, 3u);
      v2 = v6;
      v3 = v7;
    }

    sub_25F581A78(*(v1 + 64), *(v1 + 72), *(v1 + 80));
    *(v1 + 64) = v2;
    *(v1 + 72) = v3;
    *(v1 + 80) = 3;
  }
}

void sub_25F5DAFC8()
{
  v1 = v0;
  if (*(v0 + 80) == 3)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);

    v4 = sub_25F5E3D14();
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      sub_25F581A78(v2, v3, 3u);
      v2 = v6;
      v3 = v7;
    }

    sub_25F581A78(*(v1 + 64), *(v1 + 72), *(v1 + 80));
    *(v1 + 64) = v2;
    *(v1 + 72) = v3;
    *(v1 + 80) = 3;
  }
}

uint64_t PerSampleMorpheusStepConfig.updateProperties(from:)()
{
  v2 = sub_25F5E4444();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v5 = sub_25F5E3554();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5, v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 32) == 1)
  {
    v12 = *(v0 + 16);
    v13 = *(v0 + 24);
    v14 = v0;
    sub_25F5E3D14();
    if (!v15)
    {
      sub_25F5748D4();
      swift_allocError();
      v20 = 4;
      goto LABEL_6;
    }

    sub_25F5E3504();

    sub_25F5E4424();
    v16 = sub_25F5E43A4();
    v18 = (v6 + 8);
    if (v1)
    {

      (*v18)(v11, v5);
      sub_25F5748D4();
      swift_allocError();
      v20 = 5;
LABEL_6:
      *v19 = v20;
      return swift_willThrow();
    }

    v21 = v16;
    v22 = v17;
    (*v18)(v11, v5);
    v23 = *(v14 + 16);
    v24 = *(v14 + 24);
    v25 = *(v14 + 32);
    result = sub_25F5741E0();
    *(v14 + 16) = v21;
    *(v14 + 24) = v22;
    *(v14 + 32) = 0;
  }

  return result;
}

void TextCompletionStepConfig.updateProperties(from:)()
{
  v1 = v0;
  if (*(v0 + 72) == 3)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);

    v4 = sub_25F5E3D14();
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      sub_25F581A78(v2, v3, 3u);
      v2 = v6;
      v3 = v7;
    }

    sub_25F581A78(*(v1 + 56), *(v1 + 64), *(v1 + 72));
    *(v1 + 56) = v2;
    *(v1 + 64) = v3;
    *(v1 + 72) = 3;
  }
}

void sub_25F5DB320()
{
  v1 = v0;
  if (*(v0 + 72) == 3)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);

    v4 = sub_25F5E3D14();
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      sub_25F581A78(v2, v3, 3u);
      v2 = v6;
      v3 = v7;
    }

    sub_25F581A78(*(v1 + 56), *(v1 + 64), *(v1 + 72));
    *(v1 + 56) = v2;
    *(v1 + 64) = v3;
    *(v1 + 72) = 3;
  }
}

uint64_t MultiModalCompletionStepConfig.updateProperties(from:)(uint64_t result)
{
  v2 = v1;
  if (*(v1 + 80) == 3)
  {
    v3 = *(v1 + 64);
    v4 = *(v1 + 72);

    v5 = sub_25F5E3D14();
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      sub_25F581A78(v3, v4, 3u);
      v3 = v7;
      v4 = v8;
    }

    result = sub_25F581A78(*(v2 + 64), *(v2 + 72), *(v2 + 80));
    *(v2 + 64) = v3;
    *(v2 + 72) = v4;
    *(v2 + 80) = 3;
  }

  v9 = *(v2 + 184);
  if (v9)
  {
    v45 = v2;

    v10 = sub_25F571EB0(MEMORY[0x277D84F90]);
    v11 = 0;
    v12 = v9 + 64;
    v13 = 1 << *(v9 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v9 + 64);
    v16 = (v13 + 63) >> 6;
    v46 = v9 + 64;
    v47 = v16;
    v48 = v9;
    while (v15)
    {
      v19 = v11;
LABEL_16:
      v20 = (v19 << 10) | (16 * __clz(__rbit64(v15)));
      v21 = (*(v9 + 48) + v20);
      v22 = v21[1];
      v50 = *v21;
      v23 = (*(v9 + 56) + v20);
      v24 = *v23;
      v25 = v23[1];

      v26 = sub_25F5E3D14();
      if (v27)
      {
        v28 = v26;
        v29 = v27;

        v49 = v28;
        v25 = v29;
      }

      else
      {
        v49 = v24;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v22;
      v33 = sub_25F5709C8(v50, v22);
      v34 = v10[2];
      v35 = (v32 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        goto LABEL_31;
      }

      v37 = v32;
      if (v10[3] >= v36)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25F57ADD8();
        }
      }

      else
      {
        sub_25F579590(v36, isUniquelyReferenced_nonNull_native);
        v38 = sub_25F5709C8(v50, v31);
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_33;
        }

        v33 = v38;
      }

      v15 &= v15 - 1;
      if (v37)
      {

        v17 = (v10[7] + 16 * v33);
        v18 = v17[1];
        *v17 = v49;
        v17[1] = v25;
      }

      else
      {
        v10[(v33 >> 6) + 8] |= 1 << v33;
        v40 = (v10[6] + 16 * v33);
        *v40 = v50;
        v40[1] = v31;
        v41 = (v10[7] + 16 * v33);
        *v41 = v49;
        v41[1] = v25;
        v42 = v10[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_32;
        }

        v10[2] = v44;
      }

      v11 = v19;
      v16 = v47;
      v9 = v48;
      v12 = v46;
    }

    while (1)
    {
      v19 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        *(v45 + 184) = v10;
        return result;
      }

      v15 = *(v12 + 8 * v19);
      ++v11;
      if (v15)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    result = sub_25F5E4BC4();
    __break(1u);
  }

  return result;
}

uint64_t DataProcessingStepConfig.updateProperties(from:)(uint64_t a1)
{
  v3 = v1;
  v212 = a1;
  v4 = sub_25F5E4444();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v7 = sub_25F5E3554();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1[9];
  v14 = v1[11];
  v208 = v1[10];
  v209[0] = v14;
  *(v209 + 9) = *(v1 + 185);
  v15 = v1[5];
  v16 = v1[7];
  v204 = v1[6];
  v205 = v16;
  v17 = v1[7];
  v18 = v1[8];
  v207 = v1[9];
  v206 = v18;
  v19 = v1[1];
  v20 = v1[3];
  v200 = v1[2];
  v201 = v20;
  v21 = v1[3];
  v22 = v1[4];
  v203 = v1[5];
  v202 = v22;
  v23 = *v1;
  v199 = v1[1];
  v198 = v23;
  v24 = v1[11];
  v210[10] = v208;
  v211[0] = v24;
  *(v211 + 9) = *(v1 + 185);
  v210[6] = v204;
  v210[7] = v17;
  v210[9] = v13;
  v210[8] = v18;
  v210[2] = v200;
  v210[3] = v21;
  v210[5] = v15;
  v210[4] = v22;
  v210[1] = v19;
  v210[0] = v23;
  v25 = sub_25F5A9C48(v210);
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v65 = sub_25F5A9C54(v210);
      v184 = v208;
      v185[0] = v209[0];
      *(v185 + 9) = *(v209 + 9);
      v180 = v204;
      v181 = v205;
      v182 = v206;
      v183 = v207;
      v176 = v200;
      v177 = v201;
      v178 = v202;
      v179 = v203;
      v174 = v198;
      v175 = v199;
      v66 = sub_25F5A9C54(&v174);
      v67 = v3[11];
      v196 = v3[10];
      v197[0] = v67;
      *(v197 + 9) = *(v3 + 185);
      v68 = v3[7];
      v192 = v3[6];
      v193 = v68;
      v69 = v3[8];
      v195 = v3[9];
      v194 = v69;
      v70 = v3[2];
      v189 = v3[3];
      v71 = v3[4];
      v191 = v3[5];
      v190 = v71;
      v72 = *v3;
      v187 = v3[1];
      v188 = v70;
      v186 = v72;
      sub_25F57C964(v66, &v169);
      sub_25F5DC318(&v186);
      v73 = *(v65 + 16);
      v163 = *v65;
      v164 = v73;
      v165 = *(v65 + 32);
      v74 = *(v65 + 56);
      v166 = *(v65 + 48);
      v75 = *(v65 + 64);
      v76 = *(v65 + 72);
      v77 = *(v65 + 89);
      v78 = *(v65 + 121);
      v160 = *(v65 + 105);
      v161 = v78;
      v162 = *(v65 + 137);
      v158 = *(v65 + 73);
      v159 = v77;
      if (v76 == 3)
      {
        v146 = v2;

        v79 = sub_25F5E3D14();
        v81 = v74;
        v82 = v75;
        if (v80)
        {
          v83 = v79;
          v84 = v80;
          sub_25F581A78(v74, v75, 3u);
          v81 = v83;
          v82 = v84;
        }

        sub_25F581A78(v74, v75, 3u);
        v74 = v81;
        v75 = v82;
      }

      v169 = v163;
      v170 = v164;
      v171 = v165;
      *(&v173[1] + 9) = v159;
      *(&v173[2] + 9) = v160;
      *(&v173[3] + 9) = v161;
      *(&v173[4] + 9) = v162;
      *&v172 = v166;
      *(&v172 + 1) = v74;
      *&v173[0] = v75;
      BYTE8(v173[0]) = v76;
      *(v173 + 9) = v158;
      result = sub_25F5DC390(&v169);
    }

    else
    {
      if (v25 == 3)
      {
        sub_25F5A9C54(v210);
        v26 = v1[11];
        v184 = v1[10];
        v185[0] = v26;
        *(v185 + 9) = *(v1 + 185);
        v27 = v1[7];
        v180 = v1[6];
        v181 = v27;
        v28 = v1[9];
        v182 = v1[8];
        v183 = v28;
        v29 = v1[3];
        v176 = v1[2];
        v177 = v29;
        v30 = v1[5];
        v178 = v1[4];
        v179 = v30;
        v31 = v1[1];
        v174 = *v1;
        v175 = v31;
        v196 = v208;
        v197[0] = v209[0];
        *(v197 + 9) = *(v209 + 9);
        v192 = v204;
        v193 = v205;
        v195 = v207;
        v194 = v206;
        v189 = v201;
        v191 = v203;
        v190 = v202;
        v187 = v199;
        v188 = v200;
        v186 = v198;
        v32 = sub_25F5A9C54(&v186);
        v33 = *(v32 + 8);
        v34 = *(v32 + 16);

        result = sub_25F5DC318(&v174);
        v36 = v209[0];
        v1[10] = v208;
        v1[11] = v36;
        *(v1 + 185) = *(v209 + 9);
        v37 = v205;
        v1[6] = v204;
        v1[7] = v37;
        v38 = v207;
        v1[8] = v206;
        v1[9] = v38;
        v39 = v201;
        v1[2] = v200;
        v1[3] = v39;
        v40 = v203;
        v1[4] = v202;
        v1[5] = v40;
        v41 = v199;
        v42 = v198;
LABEL_26:
        *v3 = v42;
        v3[1] = v41;
        return result;
      }

      v85 = sub_25F5A9C54(v210);
      v183 = v85[9];
      v184 = v85[10];
      v185[0] = v85[11];
      *(v185 + 9) = *(v85 + 185);
      v179 = v85[5];
      v180 = v85[6];
      v181 = v85[7];
      v182 = v85[8];
      v175 = v85[1];
      v176 = v85[2];
      v177 = v85[3];
      v178 = v85[4];
      v174 = *v85;
      v189 = v201;
      v186 = v198;
      v187 = v199;
      v188 = v200;
      v193 = v205;
      v192 = v204;
      v190 = v202;
      v191 = v203;
      *(v197 + 9) = *(v209 + 9);
      v197[0] = v209[0];
      v196 = v208;
      v194 = v206;
      v195 = v207;
      v86 = sub_25F5A9C54(&v186);
      sub_25F5D6B28(v86, &v169);
      MultiModalCompletionStepConfig.updateProperties(from:)(v212);
      if (v2)
      {
        v173[6] = v184;
        v173[7] = v185[0];
        *(&v173[7] + 9) = *(v185 + 9);
        v173[2] = v180;
        v173[3] = v181;
        v173[4] = v182;
        v173[5] = v183;
        v171 = v176;
        v172 = v177;
        v173[0] = v178;
        v173[1] = v179;
        v169 = v174;
        v170 = v175;
        return sub_25F5D6B60(&v169);
      }

      v123 = v1[11];
      v167[10] = v1[10];
      v168[0] = v123;
      *(v168 + 9) = *(v1 + 185);
      v124 = v1[7];
      v167[6] = v1[6];
      v167[7] = v124;
      v125 = v1[9];
      v167[8] = v1[8];
      v167[9] = v125;
      v126 = v1[3];
      v167[2] = v1[2];
      v167[3] = v126;
      v127 = v1[5];
      v167[4] = v1[4];
      v167[5] = v127;
      v128 = v1[1];
      v167[0] = *v1;
      v167[1] = v128;
      sub_25F5DC318(v167);
      v173[6] = v184;
      v173[7] = v185[0];
      *(&v173[7] + 9) = *(v185 + 9);
      v173[2] = v180;
      v173[3] = v181;
      v173[4] = v182;
      v173[5] = v183;
      v171 = v176;
      v172 = v177;
      v173[0] = v178;
      v173[1] = v179;
      v169 = v174;
      v170 = v175;
      result = sub_25F5DC36C(&v169);
    }

LABEL_25:
    v129 = v173[7];
    v3[10] = v173[6];
    v3[11] = v129;
    *(v3 + 185) = *(&v173[7] + 9);
    v130 = v173[3];
    v3[6] = v173[2];
    v3[7] = v130;
    v131 = v173[5];
    v3[8] = v173[4];
    v3[9] = v131;
    v132 = v172;
    v3[2] = v171;
    v3[3] = v132;
    v133 = v173[1];
    v3[4] = v173[0];
    v3[5] = v133;
    v42 = v169;
    v41 = v170;
    goto LABEL_26;
  }

  if (!v25)
  {
    v43 = sub_25F5A9C54(v210);
    v184 = v208;
    v185[0] = v209[0];
    *(v185 + 9) = *(v209 + 9);
    v180 = v204;
    v181 = v205;
    v182 = v206;
    v183 = v207;
    v176 = v200;
    v177 = v201;
    v178 = v202;
    v179 = v203;
    v174 = v198;
    v175 = v199;
    v44 = sub_25F5A9C54(&v174);
    v45 = v3[11];
    v196 = v3[10];
    v197[0] = v45;
    *(v197 + 9) = *(v3 + 185);
    v46 = v3[7];
    v192 = v3[6];
    v193 = v46;
    v47 = v3[8];
    v195 = v3[9];
    v194 = v47;
    v48 = v3[2];
    v189 = v3[3];
    v49 = v3[4];
    v191 = v3[5];
    v190 = v49;
    v50 = *v3;
    v187 = v3[1];
    v188 = v48;
    v186 = v50;
    sub_25F5768F0(v44, &v169);
    sub_25F5DC318(&v186);
    v51 = *(v43 + 16);
    v154 = *v43;
    v155 = v51;
    v52 = *(v43 + 48);
    v156 = *(v43 + 32);
    v157 = v52;
    v54 = *(v43 + 64);
    v53 = *(v43 + 72);
    v55 = *(v43 + 80);
    v56 = *(v43 + 129);
    v57 = *(v43 + 161);
    v151 = *(v43 + 145);
    v152 = v57;
    v153 = *(v43 + 177);
    v58 = *(v43 + 97);
    v147 = *(v43 + 81);
    v148 = v58;
    v149 = *(v43 + 113);
    v150 = v56;
    if (v55 == 3)
    {
      v146 = v2;

      v59 = sub_25F5E3D14();
      v61 = v54;
      v62 = v53;
      if (v60)
      {
        v63 = v59;
        v64 = v60;
        sub_25F581A78(v54, v53, 3u);
        v61 = v63;
        v62 = v64;
      }

      sub_25F581A78(v54, v53, 3u);
      v53 = v62;
      v54 = v61;
    }

    v169 = v154;
    v170 = v155;
    v171 = v156;
    v172 = v157;
    *(&v173[4] + 1) = v150;
    *(&v173[5] + 1) = v151;
    *(&v173[6] + 1) = v152;
    *(&v173[1] + 1) = v147;
    *(&v173[2] + 1) = v148;
    *&v173[0] = v54;
    *(&v173[0] + 1) = v53;
    LOBYTE(v173[1]) = v55;
    BYTE1(v173[7]) = v153;
    *(&v173[3] + 1) = v149;
    result = sub_25F5DC3D8(&v169);
    goto LABEL_25;
  }

  v146 = v2;
  v87 = sub_25F5A9C54(v210);
  v88 = *v87;
  v143 = *(v87 + 8);
  v144 = v88;
  v89 = *(v87 + 24);
  v142 = *(v87 + 16);
  v145 = v89;
  v90 = *(v87 + 33);
  LOBYTE(v169) = *(v87 + 32);
  LOBYTE(v167[0]) = v90;
  if (v169 != 1)
  {
    v102 = v1[11];
    v184 = v1[10];
    v185[0] = v102;
    *(v185 + 9) = *(v1 + 185);
    v103 = v1[7];
    v180 = v1[6];
    v181 = v103;
    v104 = v1[9];
    v182 = v1[8];
    v183 = v104;
    v105 = v1[3];
    v176 = v1[2];
    v177 = v105;
    v106 = v1[5];
    v178 = v1[4];
    v179 = v106;
    v107 = v1[1];
    v174 = *v1;
    v175 = v107;
    v196 = v208;
    v197[0] = v209[0];
    *(v197 + 9) = *(v209 + 9);
    v192 = v204;
    v193 = v205;
    v195 = v207;
    v194 = v206;
    v189 = v201;
    v191 = v203;
    v190 = v202;
    v187 = v199;
    v188 = v200;
    v186 = v198;
    v108 = v90;
    v109 = sub_25F5A9C54(&v186);
    v110 = *v109;
    v111 = *(v109 + 8);
    v112 = *(v109 + 16);
    v113 = *(v109 + 24);
    v114 = *(v109 + 32);

    sub_25F57423C();
    sub_25F5DC318(&v174);
    v115 = v142;
    v116 = v145;
LABEL_23:
    *&v186 = v144;
    *(&v186 + 1) = v143;
    *&v187 = v115;
    *(&v187 + 1) = v116;
    LOBYTE(v188) = 0;
    BYTE1(v188) = v108;
    result = sub_25F5DC3B4(&v186);
    v117 = v197[0];
    v3[10] = v196;
    v3[11] = v117;
    *(v3 + 185) = *(v197 + 9);
    v118 = v193;
    v3[6] = v192;
    v3[7] = v118;
    v119 = v195;
    v3[8] = v194;
    v3[9] = v119;
    v120 = v189;
    v3[2] = v188;
    v3[3] = v120;
    v121 = v191;
    v3[4] = v190;
    v3[5] = v121;
    v122 = v187;
    *v3 = v186;
    v3[1] = v122;
    return result;
  }

  v196 = v208;
  v197[0] = v209[0];
  *(v197 + 9) = *(v209 + 9);
  v192 = v204;
  v193 = v205;
  v195 = v207;
  v194 = v206;
  v189 = v201;
  v191 = v203;
  v190 = v202;
  v187 = v199;
  v188 = v200;
  v186 = v198;
  v91 = sub_25F5A9C54(&v186);
  v92 = *v91;
  v93 = *(v91 + 8);
  v94 = *(v91 + 16);
  v95 = *(v91 + 24);
  v96 = *(v91 + 32);

  sub_25F57423C();
  sub_25F5E3D14();
  if (!v97)
  {
    v101 = 4;
    goto LABEL_28;
  }

  sub_25F5E3504();

  sub_25F5E4424();
  v98 = v146;
  v99 = sub_25F5E43A4();
  if (!v98)
  {
    v115 = v99;
    v116 = v100;
    v146 = 0;
    v135 = v3[11];
    v184 = v3[10];
    v185[0] = v135;
    *(v185 + 9) = *(v3 + 185);
    v136 = v3[7];
    v180 = v3[6];
    v181 = v136;
    v137 = v3[9];
    v182 = v3[8];
    v183 = v137;
    v138 = v3[3];
    v176 = v3[2];
    v177 = v138;
    v139 = v3[5];
    v178 = v3[4];
    v179 = v139;
    v140 = v3[1];
    v174 = *v3;
    v175 = v140;
    sub_25F5DC318(&v174);
    (*(v8 + 8))(v12, v7);
    sub_25F5741E0();
    v108 = v167[0];
    goto LABEL_23;
  }

  (*(v8 + 8))(v12, v7);
  v101 = 5;
LABEL_28:
  sub_25F5748D4();
  swift_allocError();
  *v134 = v101;
  swift_willThrow();

  return sub_25F5741E0();
}

uint64_t sub_25F5DC36C(uint64_t result)
{
  v1 = *(result + 200);
  *(result + 176) &= 0x101uLL;
  *(result + 200) = v1 & 1 | 0x80;
  return result;
}

uint64_t sub_25F5DC390(uint64_t result)
{
  v1 = *(result + 200);
  *(result + 176) &= 0x101uLL;
  *(result + 200) = v1 & 1 | 0x40;
  return result;
}

uint64_t sub_25F5DC3B4(uint64_t result)
{
  v1 = *(result + 200);
  *(result + 176) &= 0x101uLL;
  *(result + 200) = v1 & 1 | 0x20;
  return result;
}

uint64_t sub_25F5DC3D8(uint64_t result)
{
  v1 = *(result + 200) & 1;
  *(result + 176) &= 0x101uLL;
  *(result + 200) = v1;
  return result;
}

__CFData *sub_25F5DC420(CGImage *a1)
{
  v2 = sub_25F5E3CF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
  sub_25F5E3CE4();
  sub_25F5E3CD4();
  (*(v3 + 8))(v7, v2);
  v9 = sub_25F5E43C4();

  v10 = CGImageDestinationCreateWithData(v8, v9, 1uLL, 0);

  if (!v10)
  {
    sub_25F5748D4();
    swift_allocError();
    *v16 = 12;
    swift_willThrow();
    v10 = v8;
LABEL_6:

    return v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E8D8, &unk_25F5EB400);
  inited = swift_initStackObject();
  v12 = *MEMORY[0x277CD2D48];
  *(inited + 32) = *MEMORY[0x277CD2D48];
  *(inited + 16) = xmmword_25F5E5EE0;
  *(inited + 64) = MEMORY[0x277D839F8];
  *(inited + 40) = 0x3FECCCCCCCCCCCCDLL;
  v13 = v12;
  sub_25F572218(inited);
  swift_setDeallocating();
  sub_25F5DC6E0(inited + 32);
  type metadata accessor for CFString(0);
  sub_25F5DC748();
  v14 = sub_25F5E42F4();

  CGImageDestinationAddImage(v10, a1, v14);

  if (!CGImageDestinationFinalize(v10))
  {
    sub_25F5748D4();
    swift_allocError();
    *v17 = 12;
    swift_willThrow();

    goto LABEL_6;
  }

  v15 = v8;
  v8 = sub_25F5E35E4();

  return v8;
}

uint64_t sub_25F5DC6E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC30, &qword_25F5E6890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F5DC748()
{
  result = qword_27FD9D9C0;
  if (!qword_27FD9D9C0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9D9C0);
  }

  return result;
}

CGImage *sub_25F5DC7A0(CGImage *a1, double a2, double a3)
{
  v5 = a1;
  Width = CGImageGetWidth(a1);
  result = CGImageGetHeight(v5);
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (Width > a2)
  {
    goto LABEL_9;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a3 < 9.22337204e18)
  {
    if (result <= a3)
    {
      return v5;
    }

LABEL_9:
    v9 = a2 / Width;
    if (a3 / result < v9)
    {
      v9 = a3 / result;
    }

    v10 = v9 * Width;
    if (v10 > -9.22337204e18)
    {
      if (v10 < 9.22337204e18)
      {
        v11 = v9 * result;
        v12 = COERCE_UNSIGNED_INT64(fabs(v11)) > 0x7FEFFFFFFFFFFFFFLL;
        if (COERCE_UNSIGNED_INT64(fabs(v9 * Width)) <= 0x7FEFFFFFFFFFFFFFLL && !v12)
        {
          if (v11 > -9.22337204e18)
          {
            if (v11 < 9.22337204e18)
            {
              v13 = v10;
              v14 = v11;
              DeviceRGB = CGImageGetColorSpace(v5);
              if (!DeviceRGB)
              {
                DeviceRGB = CGColorSpaceCreateDeviceRGB();
              }

              BitmapInfo = CGImageGetBitmapInfo(v5);
              BitsPerComponent = CGImageGetBitsPerComponent(v5);
              v18 = __CGBitmapContextCreate(v13, v14, BitsPerComponent, DeviceRGB, BitmapInfo);
              if (v18)
              {
                v19 = v18;
                CGContextSetInterpolationQuality(v18, kCGInterpolationHigh);
                v5 = v19;
                sub_25F5E4774();
                Image = CGBitmapContextCreateImage(v19);
                if (Image)
                {
                  v5 = Image;

                  return v5;
                }

                sub_25F5748D4();
                swift_allocError();
                *v22 = 14;
                swift_willThrow();
              }

              else
              {
                sub_25F5748D4();
                swift_allocError();
                *v21 = 14;
                swift_willThrow();
                v19 = DeviceRGB;
              }

              return v5;
            }

            goto LABEL_34;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_37:
  __break(1u);
  return result;
}

unint64_t sub_25F5DCA74()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0x656C797473;
  }

  *v0;
  return result;
}

uint64_t sub_25F5DCAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v6 || (sub_25F5E4B84() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025F5ECC80 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25F5E4B84();

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

uint64_t sub_25F5DCB90(uint64_t a1)
{
  v2 = sub_25F5DCDDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5DCBCC(uint64_t a1)
{
  v2 = sub_25F5DCDDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImagePlaygroundConfig.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E8E0, &qword_25F5EB410);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5DCDDC();
  sub_25F5E4C74();
  if (!v2)
  {
    v18 = 0;
    sub_25F5DCE30();
    sub_25F5E4AD4();
    v12 = v19;
    v16 = 1;
    sub_25F5DCE84();
    sub_25F5E4AD4();
    (*(v6 + 8))(v10, v5);
    v13 = v17;
    *a2 = v12;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_25F5DCDDC()
{
  result = qword_27FD9E8E8;
  if (!qword_27FD9E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E8E8);
  }

  return result;
}

unint64_t sub_25F5DCE30()
{
  result = qword_27FD9E8F0;
  if (!qword_27FD9E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E8F0);
  }

  return result;
}

unint64_t sub_25F5DCE84()
{
  result = qword_27FD9E8F8;
  if (!qword_27FD9E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E8F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImagePlaygroundConfig(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImagePlaygroundConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F5DD064()
{
  result = qword_27FD9E900;
  if (!qword_27FD9E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E900);
  }

  return result;
}

unint64_t sub_25F5DD0BC()
{
  result = qword_27FD9E908;
  if (!qword_27FD9E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E908);
  }

  return result;
}

unint64_t sub_25F5DD114()
{
  result = qword_27FD9E910;
  if (!qword_27FD9E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E910);
  }

  return result;
}

PriMLETL::ImageStyle_optional __swiftcall ImageStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F5E4A14();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ImageStyle.rawValue.getter()
{
  v1 = 0x6F6974616D696E61;
  v2 = 0x686374656B73;
  if (*v0 != 2)
  {
    v2 = 0x696A6F6D65;
  }

  if (*v0)
  {
    v1 = 0x61727473756C6C69;
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

uint64_t sub_25F5DD25C()
{
  v1 = *v0;
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5DD324()
{
  *v0;
  *v0;
  *v0;
  sub_25F5E4334();
}

uint64_t sub_25F5DD3D8()
{
  v1 = *v0;
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

void sub_25F5DD4A8(uint64_t *a1@<X8>)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x6F6974616D696E61;
  v4 = 0xE600000000000000;
  v5 = 0x686374656B73;
  if (*v1 != 2)
  {
    v5 = 0x696A6F6D65;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x61727473756C6C69;
    v2 = 0xEC0000006E6F6974;
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

PriMLETL::PersonalizationPolicy_optional __swiftcall PersonalizationPolicy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F5E4A14();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalizationPolicy.rawValue.getter()
{
  v1 = 0x64656C62616E65;
  if (*v0 != 1)
  {
    v1 = 0x64656C6261736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

unint64_t sub_25F5DD668()
{
  result = qword_27FD9E918;
  if (!qword_27FD9E918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E918);
  }

  return result;
}

uint64_t sub_25F5DD6EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x64656C62616E65;
  if (v2 != 1)
  {
    v4 = 0x64656C6261736964;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6974616D6F747561;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000063;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64656C62616E65;
  if (*a2 != 1)
  {
    v8 = 0x64656C6261736964;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6974616D6F747561;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000063;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F5E4B84();
  }

  return v11 & 1;
}

unint64_t sub_25F5DD7F4()
{
  result = qword_27FD9E930;
  if (!qword_27FD9E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E930);
  }

  return result;
}

uint64_t sub_25F5DD848()
{
  v1 = *v0;
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5DD8F0()
{
  *v0;
  *v0;
  sub_25F5E4334();
}

uint64_t sub_25F5DD984()
{
  v1 = *v0;
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

void sub_25F5DDA34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000063;
  v4 = 0xE700000000000000;
  v5 = 0x64656C62616E65;
  if (v2 != 1)
  {
    v5 = 0x64656C6261736964;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6974616D6F747561;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F5DDB28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of ImageGenerating.generateImages(prompt:numberOfImages:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_25F57E6F8;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_25F5DDCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_25F5E3904();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v8 = sub_25F5E36D4();
  v4[22] = v8;
  v9 = *(v8 - 8);
  v4[23] = v9;
  v10 = *(v9 + 64) + 15;
  v4[24] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E968, &qword_25F5EB878) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v12 = sub_25F5E3554();
  v4[28] = v12;
  v13 = *(v12 - 8);
  v4[29] = v13;
  v14 = *(v13 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v15 = sub_25F5E38F4();
  v4[35] = v15;
  v16 = *(v15 - 8);
  v4[36] = v16;
  v17 = *(v16 + 64) + 15;
  v4[37] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E970, &qword_25F5EB880) - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E978, &qword_25F5EB888);
  v4[39] = v19;
  v20 = *(v19 - 8);
  v4[40] = v20;
  v21 = *(v20 + 64) + 15;
  v4[41] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E980, &qword_25F5EB890);
  v4[42] = v22;
  v23 = *(v22 - 8);
  v4[43] = v23;
  v24 = *(v23 + 64) + 15;
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v25 = sub_25F5E3944();
  v4[46] = v25;
  v26 = *(v25 - 8);
  v4[47] = v26;
  v27 = *(v26 + 64) + 15;
  v4[48] = swift_task_alloc();
  v28 = sub_25F5E3994();
  v4[49] = v28;
  v29 = *(v28 - 8);
  v4[50] = v29;
  v30 = *(v29 + 64) + 15;
  v4[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F5DE128, 0, 0);
}

uint64_t sub_25F5DE128()
{
  v1 = v0[51];
  if (*(v0[16] + 24) > 1u)
  {
    if (*(v0[16] + 24) == 2)
    {
      sub_25F5E3974();
    }

    else
    {
      sub_25F5E3964();
    }
  }

  else if (*(v0[16] + 24))
  {
    sub_25F5E3954();
  }

  else
  {
    MEMORY[0x25F8E2040]();
  }

  v2 = v0[16];
  v24 = v0[15];
  v23 = v0[51];
  v3 = v0[45];
  v4 = v0[43];
  v25 = v0[44];
  v5 = v0[42];
  v26 = v0[41];
  v7 = v0[13];
  v6 = v0[14];
  (*(v0[47] + 104))(v0[48], **(&unk_279A84E20 + *(v2 + 25)), v0[46]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E988, &qword_25F5EB898);
  v8 = *(sub_25F5E39B4() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_25F5E5EE0;
  sub_25F5E39A4();
  v11 = MEMORY[0x277D84F90];
  v0[9] = MEMORY[0x277D84F90];
  v12 = *(v2 + 16);
  sub_25F5E3914();

  (*(v4 + 16))(v25, v3, v5);
  v0[52] = swift_getOpaqueTypeConformance2();
  sub_25F5E46E4();
  v0[53] = OBJC_IVAR____TtC8PriMLETL24ImagePlaygroundInference_debugDirectory;
  v0[54] = v11;
  v13 = v0[52];
  v14 = v0[42];
  v15 = v0[39];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(MEMORY[0x277D856D8] + 4);
  v18 = swift_task_alloc();
  v0[55] = v18;
  *v18 = v0;
  v18[1] = sub_25F5DE3CC;
  v19 = v0[41];
  v20 = v0[38];
  v21 = v0[39];

  return MEMORY[0x282200310](v20, 0, 0, v0 + 10, v21, AssociatedConformanceWitness);
}

uint64_t sub_25F5DE3CC()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v7 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = *(v2 + 432);

    v5 = sub_25F5DF5A8;
  }

  else
  {
    v5 = sub_25F5DE4E8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F5DE4E8()
{
  v213 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 400);
    v5 = *(v0 + 408);
    v6 = *(v0 + 384);
    v7 = *(v0 + 376);
    v164 = *(v0 + 368);
    v165 = *(v0 + 392);
    v8 = *(v0 + 360);
    v10 = *(v0 + 336);
    v9 = *(v0 + 344);
    v166 = *(v0 + 352);
    v167 = *(v0 + 296);
    v168 = *(v0 + 272);
    v169 = *(v0 + 264);
    v170 = *(v0 + 256);
    v173 = *(v0 + 248);
    v176 = *(v0 + 240);
    v180 = *(v0 + 216);
    v185 = *(v0 + 208);
    v190 = *(v0 + 200);
    v195 = *(v0 + 192);
    v200 = *(v0 + 168);
    v204 = *(v0 + 160);
    v207 = *(v0 + 152);
    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    (*(v9 + 8))(v8, v10);
    (*(v7 + 8))(v6, v164);
    (*(v4 + 8))(v5, v165);

    v11 = *(v0 + 8);
    v12 = *(v0 + 432);

    return v11(v12);
  }

  (*(v3 + 32))(*(v0 + 296), v1, v2);
  v14 = sub_25F5E38E4();
  MEMORY[0x25F8E2CC0]();
  if (*((*(v0 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v163 = *((*(v0 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_25F5E4644();
  }

  v15 = *(v0 + 424);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v18 = *(v0 + 216);
  v19 = *(v0 + 128);
  sub_25F5E4664();
  v20 = *(v0 + 72);
  sub_25F5DFEF0(v19 + v15, v18);
  v21 = *(v17 + 48);
  if (v21(v18, 1, v16) == 1)
  {
    v22 = *(v0 + 216);
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));

    sub_25F57C148(v22, &qword_27FD9E968, &qword_25F5EB878);
LABEL_9:
    *(v0 + 432) = v20;
    v23 = *(v0 + 416);
    v24 = *(v0 + 336);
    v25 = *(v0 + 312);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v27 = *(MEMORY[0x277D856D8] + 4);
    v28 = swift_task_alloc();
    *(v0 + 440) = v28;
    *v28 = v0;
    v28[1] = sub_25F5DE3CC;
    v29 = *(v0 + 328);
    v30 = *(v0 + 304);
    v31 = *(v0 + 312);

    return MEMORY[0x282200310](v30, 0, 0, v0 + 80, v31, AssociatedConformanceWitness);
  }

  v186 = v21;
  v201 = v20;
  v208 = *(v0 + 448);
  v32 = *(v0 + 272);
  v34 = *(v0 + 224);
  v33 = *(v0 + 232);
  v35 = *(v0 + 216);
  v191 = v32;
  v196 = *(v0 + 208);
  v37 = *(v0 + 184);
  v36 = *(v0 + 192);
  v205 = v14;
  v38 = *(v0 + 176);
  v181 = *(v33 + 32);
  v181();
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  sub_25F5E4954();
  v39 = *(v0 + 64);

  *(v0 + 40) = 0x65746172656E6567;
  *(v0 + 48) = 0xEA00000000005F64;
  sub_25F5E36C4();
  sub_25F5E36A4();
  (*(v37 + 8))(v36, v38);
  v40 = sub_25F5C78D8(4);
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v47 = MEMORY[0x25F8E2B40](v40, v42, v44, v46);
  v49 = v48;

  MEMORY[0x25F8E2BC0](v47, v49);

  MEMORY[0x25F8E2BC0](1735420462, 0xE400000000000000);
  v50 = *(v33 + 16);
  v51 = *(v0 + 40);
  v52 = *(v0 + 48);
  v50(v196, v191, v34);
  (*(v33 + 56))(v196, 0, 1, v34);
  v53 = sub_25F5DC420(v205);
  if (!v208)
  {
    v62 = v54;
    v171 = v50;
    v193 = v53;
    v63 = *(v0 + 224);
    v64 = *(v0 + 200);
    sub_25F5DFEF0(*(v0 + 208), v64);
    v65 = v186(v64, 1, v63);
    v66 = *(v0 + 256);
    v67 = *(v0 + 224);
    v68 = *(v0 + 200);
    if (v65 == 1)
    {
      v69 = [objc_opt_self() defaultManager];
      v70 = v62;
      v71 = [v69 temporaryDirectory];

      sub_25F5E3534();
      v62 = v70;
      v72 = v181;
      if (v186(v68, 1, v67) != 1)
      {
        sub_25F57C148(*(v0 + 200), &qword_27FD9E968, &qword_25F5EB878);
      }
    }

    else
    {
      v72 = v181;
      (v181)(*(v0 + 256), *(v0 + 200), *(v0 + 224));
    }

    v73 = *(v0 + 248);
    v74 = *(v0 + 256);
    sub_25F5E3524();

    sub_25F5E35F4();
    v75 = v62;
    v138 = *(v0 + 256);
    v139 = *(v0 + 264);
    v140 = *(v0 + 248);
    v142 = *(v0 + 224);
    v141 = *(v0 + 232);
    v143 = *(v0 + 208);
    sub_25F571820(v193, v75);
    v211 = *(v141 + 8);
    v211(v138, v142);
    sub_25F57C148(v143, &qword_27FD9E968, &qword_25F5EB878);
    (v72)(v139, v140, v142);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v144 = *(v0 + 264);
    v145 = *(v0 + 240);
    v146 = *(v0 + 224);
    v147 = sub_25F5E3FB4();
    __swift_project_value_buffer(v147, qword_27FD9EA20);
    v171(v145, v144, v146);
    v148 = sub_25F5E3F94();
    v149 = sub_25F5E4794();
    v150 = os_log_type_enabled(v148, v149);
    v151 = *(v0 + 288);
    v199 = *(v0 + 296);
    v153 = *(v0 + 272);
    v152 = *(v0 + 280);
    v154 = *(v0 + 264);
    v155 = *(v0 + 240);
    v156 = *(v0 + 224);
    if (v150)
    {
      v189 = *(v0 + 280);
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v212[0] = v158;
      *v157 = 136315138;
      v179 = v153;
      v184 = v151;
      v159 = sub_25F5E3544();
      v161 = v160;
      v211(v155, v156);
      v162 = sub_25F570AF8(v159, v161, v212);

      *(v157 + 4) = v162;
      _os_log_impl(&dword_25F56A000, v148, v149, "Saved generated image: %s", v157, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v158);
      MEMORY[0x25F8E3B70](v158, -1, -1);
      MEMORY[0x25F8E3B70](v157, -1, -1);

      v211(v154, v156);
      v211(v179, v156);
      (*(v184 + 8))(v199, v189);
    }

    else
    {

      v211(v155, v156);
      v211(v154, v156);
      v211(v153, v156);
      (*(v151 + 8))(v199, v152);
    }

    v20 = v201;
    goto LABEL_9;
  }

  v55 = *(v0 + 344);
  v192 = *(v0 + 336);
  v197 = *(v0 + 360);
  v56 = *(v0 + 320);
  v182 = *(v0 + 312);
  v187 = *(v0 + 328);
  v57 = *(v0 + 288);
  v58 = *(v0 + 272);
  v174 = *(v0 + 280);
  v177 = *(v0 + 296);
  v60 = *(v0 + 224);
  v59 = *(v0 + 232);
  v61 = *(v0 + 208);

  sub_25F57C148(v61, &qword_27FD9E968, &qword_25F5EB878);
  (*(v59 + 8))(v58, v60);
  (*(v57 + 8))(v177, v174);
  (*(v56 + 8))(v187, v182);
  (*(v55 + 8))(v197, v192);

  v76 = *(v0 + 168);
  v77 = *(v0 + 136);
  *(v0 + 88) = v208;
  v78 = v208;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  if (swift_dynamicCast())
  {
    v79 = *(v0 + 160);
    v80 = *(v0 + 168);
    v81 = *(v0 + 136);
    v82 = *(v0 + 144);

    (*(v82 + 32))(v79, v80, v81);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v83 = *(v0 + 152);
    v84 = *(v0 + 160);
    v85 = *(v0 + 136);
    v86 = *(v0 + 144);
    v87 = sub_25F5E3FB4();
    __swift_project_value_buffer(v87, qword_27FD9EA20);
    v88 = *(v86 + 16);
    v88(v83, v84, v85);
    v89 = sub_25F5E3F94();
    v90 = sub_25F5E47B4();
    v91 = os_log_type_enabled(v89, v90);
    v93 = *(v0 + 144);
    v92 = *(v0 + 152);
    v94 = *(v0 + 136);
    if (v91)
    {
      v95 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      *v95 = 138412290;
      sub_25F5DFE98();
      swift_allocError();
      v88(v96, v92, v94);
      v97 = _swift_stdlib_bridgeErrorToNSError();
      v209 = *(v93 + 8);
      v209(v92, v94);
      *(v95 + 4) = v97;
      *v206 = v97;
      _os_log_impl(&dword_25F56A000, v89, v90, "Failed to generate image, type=ImageCreator.Error, reason=%@", v95, 0xCu);
      sub_25F57C148(v206, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v206, -1, -1);
      MEMORY[0x25F8E3B70](v95, -1, -1);
    }

    else
    {

      v209 = *(v93 + 8);
      v209(v92, v94);
    }

    v119 = *(v0 + 400);
    v202 = *(v0 + 408);
    v121 = *(v0 + 384);
    v120 = *(v0 + 392);
    v123 = *(v0 + 368);
    v122 = *(v0 + 376);
    v124 = *(v0 + 160);
    v125 = *(v0 + 136);
    sub_25F5A2764();
    swift_allocError();
    sub_25F5E2E34(v124, v126);
    swift_willThrow();
    v209(v124, v125);
    (*(v122 + 8))(v121, v123);
    (*(v119 + 8))(v202, v120);
  }

  else
  {

    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v98 = sub_25F5E3FB4();
    __swift_project_value_buffer(v98, qword_27FD9EA20);
    v99 = v208;
    v100 = sub_25F5E3F94();
    v101 = sub_25F5E47B4();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v212[0] = v104;
      *v102 = 138412546;
      v105 = v208;
      v106 = _swift_stdlib_bridgeErrorToNSError();
      *(v102 + 4) = v106;
      *v103 = v106;
      *(v102 + 12) = 2080;
      swift_getErrorValue();
      v107 = *(v0 + 16);
      v108 = *(v0 + 24);
      swift_getDynamicType();
      v109 = sub_25F5E4D04();
      v111 = sub_25F570AF8(v109, v110, v212);

      *(v102 + 14) = v111;
      _os_log_impl(&dword_25F56A000, v100, v101, "Failed to generate image, reason=%@, type=%s", v102, 0x16u);
      sub_25F57C148(v103, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v103, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v104);
      MEMORY[0x25F8E3B70](v104, -1, -1);
      MEMORY[0x25F8E3B70](v102, -1, -1);
    }

    v113 = *(v0 + 400);
    v112 = *(v0 + 408);
    v115 = *(v0 + 384);
    v114 = *(v0 + 392);
    v116 = *(v0 + 368);
    v117 = *(v0 + 376);
    sub_25F5A2764();
    swift_allocError();
    *v118 = 8;
    swift_willThrow();

    (*(v117 + 8))(v115, v116);
    (*(v113 + 8))(v112, v114);
  }

  v127 = *(v0 + 408);
  v128 = *(v0 + 384);
  v129 = *(v0 + 352);
  v130 = *(v0 + 360);
  v131 = *(v0 + 328);
  v133 = *(v0 + 296);
  v132 = *(v0 + 304);
  v135 = *(v0 + 264);
  v134 = *(v0 + 272);
  v136 = *(v0 + 256);
  v172 = *(v0 + 248);
  v175 = *(v0 + 240);
  v178 = *(v0 + 216);
  v183 = *(v0 + 208);
  v188 = *(v0 + 200);
  v194 = *(v0 + 192);
  v198 = *(v0 + 168);
  v203 = *(v0 + 160);
  v210 = *(v0 + 152);

  v137 = *(v0 + 8);

  return v137();
}

uint64_t sub_25F5DF5A8()
{
  v81 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 80);
  *(v0 + 88) = v4;
  v5 = *(v0 + 168);
  v6 = *(v0 + 136);
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 136);
    v11 = *(v0 + 144);

    (*(v11 + 32))(v9, v8, v10);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    v14 = *(v0 + 136);
    v15 = *(v0 + 144);
    v16 = sub_25F5E3FB4();
    __swift_project_value_buffer(v16, qword_27FD9EA20);
    v17 = *(v15 + 16);
    v17(v12, v13, v14);
    v18 = sub_25F5E3F94();
    v19 = sub_25F5E47B4();
    v20 = os_log_type_enabled(v18, v19);
    v22 = *(v0 + 144);
    v21 = *(v0 + 152);
    v23 = *(v0 + 136);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v24 = 138412290;
      sub_25F5DFE98();
      swift_allocError();
      v17(v25, v21, v23);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v77 = *(v22 + 8);
      v77(v21, v23);
      *(v24 + 4) = v26;
      *v79 = v26;
      _os_log_impl(&dword_25F56A000, v18, v19, "Failed to generate image, type=ImageCreator.Error, reason=%@", v24, 0xCu);
      sub_25F57C148(v79, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v79, -1, -1);
      MEMORY[0x25F8E3B70](v24, -1, -1);
    }

    else
    {

      v77 = *(v22 + 8);
      v77(v21, v23);
    }

    v48 = *(v0 + 400);
    v75 = *(v0 + 408);
    v50 = *(v0 + 384);
    v49 = *(v0 + 392);
    v52 = *(v0 + 368);
    v51 = *(v0 + 376);
    v53 = *(v0 + 160);
    v54 = *(v0 + 136);
    sub_25F5A2764();
    swift_allocError();
    sub_25F5E2E34(v53, v55);
    swift_willThrow();
    v77(v53, v54);
    (*(v51 + 8))(v50, v52);
    (*(v48 + 8))(v75, v49);
  }

  else
  {

    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v27 = sub_25F5E3FB4();
    __swift_project_value_buffer(v27, qword_27FD9EA20);
    v28 = v4;
    v29 = sub_25F5E3F94();
    v30 = sub_25F5E47B4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v80 = v33;
      *v31 = 138412546;
      v34 = v4;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v35;
      *v32 = v35;
      *(v31 + 12) = 2080;
      swift_getErrorValue();
      v36 = *(v0 + 16);
      v37 = *(v0 + 24);
      swift_getDynamicType();
      v38 = sub_25F5E4D04();
      v40 = sub_25F570AF8(v38, v39, &v80);

      *(v31 + 14) = v40;
      _os_log_impl(&dword_25F56A000, v29, v30, "Failed to generate image, reason=%@, type=%s", v31, 0x16u);
      sub_25F57C148(v32, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x25F8E3B70](v33, -1, -1);
      MEMORY[0x25F8E3B70](v31, -1, -1);
    }

    v41 = *(v0 + 400);
    v42 = *(v0 + 408);
    v44 = *(v0 + 384);
    v43 = *(v0 + 392);
    v45 = *(v0 + 368);
    v46 = *(v0 + 376);
    sub_25F5A2764();
    swift_allocError();
    *v47 = 8;
    swift_willThrow();

    (*(v46 + 8))(v44, v45);
    (*(v41 + 8))(v42, v43);
  }

  v56 = *(v0 + 408);
  v57 = *(v0 + 384);
  v58 = *(v0 + 352);
  v59 = *(v0 + 360);
  v60 = *(v0 + 328);
  v62 = *(v0 + 296);
  v61 = *(v0 + 304);
  v64 = *(v0 + 264);
  v63 = *(v0 + 272);
  v65 = *(v0 + 256);
  v68 = *(v0 + 248);
  v69 = *(v0 + 240);
  v70 = *(v0 + 216);
  v71 = *(v0 + 208);
  v72 = *(v0 + 200);
  v73 = *(v0 + 192);
  v74 = *(v0 + 168);
  v76 = *(v0 + 160);
  v78 = *(v0 + 152);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_25F5DFC18()
{
  v1 = v0[2];

  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL24ImagePlaygroundInference_debugDirectory, &qword_27FD9E968, &qword_25F5EB878);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ImagePlaygroundInference()
{
  result = qword_27FD9E950;
  if (!qword_27FD9E950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25F5DFCE8()
{
  sub_25F5DFD90();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_25F5DFD90()
{
  if (!qword_27FD9E960)
  {
    sub_25F5E3554();
    v0 = sub_25F5E47F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD9E960);
    }
  }
}

uint64_t sub_25F5DFDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25F575BD4;

  return sub_25F5DDCEC(a1, a2, a3);
}

unint64_t sub_25F5DFE98()
{
  result = qword_27FD9E990;
  if (!qword_27FD9E990)
  {
    sub_25F5E3904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E990);
  }

  return result;
}

uint64_t sub_25F5DFEF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E968, &qword_25F5EB878);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F5DFF60()
{
  result = qword_27FD9E998;
  if (!qword_27FD9E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E998);
  }

  return result;
}

unint64_t sub_25F5DFFB4()
{
  result = qword_27FD9E9A0;
  if (!qword_27FD9E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9A0);
  }

  return result;
}

uint64_t sub_25F5E0008(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6574656D61726150;
  }

  else
  {
    v4 = 0x79546769666E6F43;
  }

  if (v3)
  {
    v5 = 0xEA00000000006570;
  }

  else
  {
    v5 = 0xEA00000000007372;
  }

  if (*a2)
  {
    v6 = 0x6574656D61726150;
  }

  else
  {
    v6 = 0x79546769666E6F43;
  }

  if (*a2)
  {
    v7 = 0xEA00000000007372;
  }

  else
  {
    v7 = 0xEA00000000006570;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F5E4B84();
  }

  return v9 & 1;
}

uint64_t sub_25F5E00B4()
{
  v1 = *v0;
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5E013C()
{
  *v0;
  sub_25F5E4334();
}

uint64_t sub_25F5E01B0()
{
  v1 = *v0;
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5E0234@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F5E4A14();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25F5E0294(uint64_t *a1@<X8>)
{
  v2 = 0x79546769666E6F43;
  if (*v1)
  {
    v2 = 0x6574656D61726150;
  }

  v3 = 0xEA00000000006570;
  if (*v1)
  {
    v3 = 0xEA00000000007372;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F5E02D8()
{
  if (*v0)
  {
    result = 0x6574656D61726150;
  }

  else
  {
    result = 0x79546769666E6F43;
  }

  *v0;
  return result;
}

uint64_t sub_25F5E0318@<X0>(char *a1@<X8>)
{
  v2 = sub_25F5E4A14();

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

uint64_t sub_25F5E037C(uint64_t a1)
{
  v2 = sub_25F5E0D70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5E03B8(uint64_t a1)
{
  v2 = sub_25F5E0D70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F5E0400()
{
  v1 = *v0;
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5E0500()
{
  *v0;
  *v0;
  *v0;
  sub_25F5E4334();
}

uint64_t sub_25F5E05EC()
{
  v1 = *v0;
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5E06E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F5E2BF0();
  *a2 = result;
  return result;
}

void sub_25F5E0718(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x676E6967676154;
  v5 = 0xEE006E6F6974656CLL;
  v6 = 0x706D6F4374786554;
  v7 = 0xEF6E6F6974617265;
  v8 = 0x6E65476567616D49;
  if (v2 != 3)
  {
    v8 = 0xD000000000000014;
    v7 = 0x800000025F5EC0C0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7375656870726F4DLL;
    v3 = 0xE800000000000000;
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

uint64_t DataProcessingStepConfig.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E9A8, &qword_25F5EB8A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v23 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v11);
  sub_25F5E0D70();
  sub_25F5E4C74();
  if (!v2)
  {
    v56 = 0;
    sub_25F5E0DC4();
    sub_25F5E4AD4();
    if (v57 <= 1u)
    {
      v33 = 1;
      if (v57)
      {
        sub_25F5E0F38();
        sub_25F5E4AD4();
        (*(v6 + 8))(v10, v5);
        v34[0] = v23[0];
        v34[1] = v23[1];
        LOWORD(v35) = v24;
        sub_25F5DC3B4(v34);
      }

      else
      {
        sub_25F5E0F8C();
        sub_25F5E4AD4();
        (*(v6 + 8))(v10, v5);
        v41[0] = v30[0];
        v41[1] = v30[1];
        v42 = v31;
        LOWORD(v43[0]) = *v32;
        v37 = v26;
        v38 = v27;
        v39 = v28;
        v40 = v29;
        v34[0] = v23[0];
        v34[1] = v23[1];
        v35 = v24;
        v36 = v25;
        sub_25F5DC3D8(v34);
      }

      v54 = v42;
      *v55 = v43[0];
      v14 = *(v43 + 9);
    }

    else
    {
      if (v57 == 2)
      {
        v33 = 1;
        sub_25F5E0EE4();
        sub_25F5E4AD4();
        (*(v6 + 8))(v10, v5);
        v39 = v28;
        v40 = v29;
        v41[0] = v30[0];
        *(v41 + 9) = *(v30 + 9);
        v35 = v24;
        v36 = v25;
        v37 = v26;
        v38 = v27;
        v34[0] = v23[0];
        v34[1] = v23[1];
        sub_25F5DC390(v34);
      }

      else
      {
        if (v57 != 3)
        {
          v33 = 1;
          sub_25F5E0E18();
          sub_25F5E4AD4();
          (*(v6 + 8))(v10, v5);
          v31 = v42;
          *v32 = v43[0];
          *&v32[9] = *(v43 + 9);
          v28 = v39;
          v29 = v40;
          v30[0] = v41[0];
          v30[1] = v41[1];
          v24 = v35;
          v25 = v36;
          v26 = v37;
          v27 = v38;
          v23[0] = v34[0];
          v23[1] = v34[1];
          sub_25F5DC36C(v23);
          v54 = v31;
          *v55 = *v32;
          *&v55[9] = *&v32[9];
          v50 = v28;
          v51 = v29;
          v52 = v30[0];
          v53 = v30[1];
          v46 = v24;
          v47 = v25;
          v48 = v26;
          v49 = v27;
          v22 = v23[0];
          v21 = v23[1];
LABEL_16:
          v44 = v22;
          v45 = v21;
          v15 = *v55;
          a2[10] = v54;
          a2[11] = v15;
          *(a2 + 185) = *&v55[9];
          v16 = v51;
          a2[6] = v50;
          a2[7] = v16;
          v17 = v53;
          a2[8] = v52;
          a2[9] = v17;
          v18 = v47;
          a2[2] = v46;
          a2[3] = v18;
          v19 = v49;
          a2[4] = v48;
          a2[5] = v19;
          v20 = v45;
          *a2 = v44;
          a2[1] = v20;
          return __swift_destroy_boxed_opaque_existential_1Tm(v58);
        }

        v33 = 1;
        sub_25F5E0E6C();
        sub_25F5E4AD4();
        (*(v6 + 8))(v10, v5);
        *&v34[0] = *&v23[0];
        *(v34 + 8) = *(v23 + 8);
        WORD4(v34[1]) = WORD4(v23[1]);
        BYTE10(v34[1]) = BYTE10(v23[1]);
        sub_25F5E0EC0(v34);
      }

      v54 = v42;
      *v55 = v43[0];
      v14 = *(v43 + 9);
    }

    *&v55[9] = v14;
    v50 = v39;
    v51 = v40;
    v52 = v41[0];
    v53 = v41[1];
    v46 = v35;
    v47 = v36;
    v48 = v37;
    v49 = v38;
    v22 = v34[0];
    v21 = v34[1];
    goto LABEL_16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v58);
}

unint64_t sub_25F5E0D70()
{
  result = qword_27FD9E9B0;
  if (!qword_27FD9E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9B0);
  }

  return result;
}

unint64_t sub_25F5E0DC4()
{
  result = qword_27FD9E9B8;
  if (!qword_27FD9E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9B8);
  }

  return result;
}

unint64_t sub_25F5E0E18()
{
  result = qword_27FD9E9C0;
  if (!qword_27FD9E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9C0);
  }

  return result;
}

unint64_t sub_25F5E0E6C()
{
  result = qword_27FD9E9C8;
  if (!qword_27FD9E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9C8);
  }

  return result;
}

uint64_t sub_25F5E0EC0(uint64_t result)
{
  v1 = *(result + 200);
  *(result + 176) &= 0x101uLL;
  *(result + 200) = v1 & 1 | 0x60;
  return result;
}

unint64_t sub_25F5E0EE4()
{
  result = qword_27FD9E9D0;
  if (!qword_27FD9E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9D0);
  }

  return result;
}

unint64_t sub_25F5E0F38()
{
  result = qword_27FD9E9D8;
  if (!qword_27FD9E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9D8);
  }

  return result;
}

unint64_t sub_25F5E0F8C()
{
  result = qword_27FD9E9E0;
  if (!qword_27FD9E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9E0);
  }

  return result;
}

uint64_t sub_25F5E0FE0(uint64_t a1)
{
  *(v2 + 2776) = v1;
  *(v2 + 2768) = a1;
  v3 = v1[11];
  *(v2 + 632) = v1[10];
  *(v2 + 648) = v3;
  *(v2 + 657) = *(v1 + 185);
  v4 = v1[7];
  *(v2 + 568) = v1[6];
  *(v2 + 584) = v4;
  v5 = v1[9];
  *(v2 + 600) = v1[8];
  *(v2 + 616) = v5;
  v6 = v1[3];
  *(v2 + 504) = v1[2];
  *(v2 + 520) = v6;
  v7 = v1[5];
  *(v2 + 536) = v1[4];
  *(v2 + 552) = v7;
  v8 = v1[1];
  *(v2 + 472) = *v1;
  *(v2 + 488) = v8;
  return MEMORY[0x2822009F8](sub_25F5E1040, 0, 0);
}

uint64_t sub_25F5E1040()
{
  v124 = v0;
  v1 = (v0 + 472);
  v2 = *(v0 + 2776);
  *(v0 + 264) = *v2;
  v3 = v2[4];
  v5 = v2[1];
  v4 = v2[2];
  *(v0 + 312) = v2[3];
  *(v0 + 328) = v3;
  *(v0 + 280) = v5;
  *(v0 + 296) = v4;
  v6 = v2[8];
  v8 = v2[5];
  v7 = v2[6];
  *(v0 + 376) = v2[7];
  *(v0 + 392) = v6;
  *(v0 + 344) = v8;
  *(v0 + 360) = v7;
  v10 = v2[10];
  v9 = v2[11];
  v11 = v2[9];
  *(v0 + 449) = *(v2 + 185);
  *(v0 + 424) = v10;
  *(v0 + 440) = v9;
  *(v0 + 408) = v11;
  v12 = sub_25F5A9C48(v0 + 264);
  if (v12 <= 1)
  {
    v26 = *(v0 + 2768);
    if (v12)
    {
      v79 = sub_25F5A9C54(v0 + 264);
      v80 = *(v79 + 16);
      v81 = *(v79 + 24);
      v82 = *(v79 + 32);
      v83 = *(v79 + 33);
      v84 = swift_allocObject();
      v85 = *v79;
      v26[3] = &type metadata for PerSampleMorpheusStep;
      v26[4] = &off_287195448;
      *v26 = v84;
      *(v84 + 16) = v85;
      *(v84 + 32) = v80;
      *(v84 + 40) = v81;
      *(v84 + 48) = v82;
      *(v84 + 49) = v83;
      v86 = *(v0 + 520);
      *(v0 + 1544) = *(v0 + 504);
      *(v0 + 1560) = v86;
      v87 = *(v0 + 488);
      *(v0 + 1512) = *v1;
      *(v0 + 1528) = v87;
      v88 = *(v0 + 584);
      *(v0 + 1608) = *(v0 + 568);
      *(v0 + 1624) = v88;
      v89 = *(v0 + 552);
      *(v0 + 1576) = *(v0 + 536);
      *(v0 + 1592) = v89;
      *(v0 + 1697) = *(v0 + 657);
      v90 = *(v0 + 648);
      *(v0 + 1672) = *(v0 + 632);
      *(v0 + 1688) = v90;
      v91 = *(v0 + 616);
      *(v0 + 1640) = *(v0 + 600);
      *(v0 + 1656) = v91;
      v92 = sub_25F5A9C54(v0 + 1512);
      v93 = *v92;
      v94 = *(v92 + 8);
      v95 = *(v92 + 16);
      v96 = *(v92 + 24);
      v97 = *(v92 + 32);

      sub_25F57423C();
    }

    else
    {
      v27 = sub_25F5A9C54(v0 + 264);
      v26[3] = &type metadata for TaggingStep;
      v26[4] = &protocol witness table for TaggingStep;
      v28 = swift_allocObject();
      *v26 = v28;
      *(v28 + 200) = 0u;
      *(v28 + 216) = 0u;
      *(v28 + 232) = 0;
      v29 = *(v27 + 48);
      v30 = *v27;
      v31 = *(v27 + 16);
      *(v28 + 48) = *(v27 + 32);
      *(v28 + 64) = v29;
      *(v28 + 16) = v30;
      *(v28 + 32) = v31;
      v32 = *(v27 + 112);
      v33 = *(v27 + 64);
      v34 = *(v27 + 80);
      *(v28 + 112) = *(v27 + 96);
      *(v28 + 128) = v32;
      *(v28 + 80) = v33;
      *(v28 + 96) = v34;
      v36 = *(v27 + 144);
      v35 = *(v27 + 160);
      v37 = *(v27 + 128);
      *(v28 + 192) = *(v27 + 176);
      *(v28 + 160) = v36;
      *(v28 + 176) = v35;
      *(v28 + 144) = v37;
      v38 = *(v0 + 520);
      *(v0 + 1752) = *(v0 + 504);
      *(v0 + 1768) = v38;
      v39 = *(v0 + 488);
      *(v0 + 1720) = *v1;
      *(v0 + 1736) = v39;
      v40 = *(v0 + 584);
      *(v0 + 1816) = *(v0 + 568);
      *(v0 + 1832) = v40;
      v41 = *(v0 + 552);
      *(v0 + 1784) = *(v0 + 536);
      *(v0 + 1800) = v41;
      *(v0 + 1905) = *(v0 + 657);
      v42 = *(v0 + 648);
      *(v0 + 1880) = *(v0 + 632);
      *(v0 + 1896) = v42;
      v43 = *(v0 + 616);
      *(v0 + 1848) = *(v0 + 600);
      *(v0 + 1864) = v43;
      v44 = sub_25F5A9C54(v0 + 1720);
      sub_25F5768F0(v44, v0 + 2128);
    }
  }

  else if (v12 == 2)
  {
    v45 = *(v0 + 2768);
    v46 = sub_25F5A9C54(v0 + 264);
    v45[3] = &type metadata for TextCompletionStep;
    v45[4] = &protocol witness table for TextCompletionStep;
    v47 = swift_allocObject();
    *v45 = v47;
    v48 = v46[1];
    *(v0 + 1928) = *v46;
    *(v0 + 1944) = v48;
    v49 = v46[5];
    v51 = v46[2];
    v50 = v46[3];
    *(v0 + 1992) = v46[4];
    *(v0 + 2008) = v49;
    *(v0 + 1960) = v51;
    *(v0 + 1976) = v50;
    v53 = v46[7];
    v52 = v46[8];
    v54 = v46[6];
    *(v0 + 2065) = *(v46 + 137);
    *(v0 + 2040) = v53;
    *(v0 + 2056) = v52;
    *(v0 + 2024) = v54;
    swift_beginAccess();
    v55 = off_281E8DB80;
    v56 = v46[7];
    v119 = v46[6];
    v120 = v56;
    *v121 = v46[8];
    *&v121[9] = *(v46 + 137);
    v57 = v46[3];
    v115 = v46[2];
    v116 = v57;
    v58 = v46[5];
    v117 = v46[4];
    v118 = v58;
    v59 = v46[1];
    v113 = *v46;
    v114 = v59;
    sub_25F5E2784(v0 + 472, v0 + 1304);

    (v55)(&v113);

    sub_25F573A2C((v0 + 2624), v0 + 2088);
    v98 = *(v0 + 2104);
    *(v47 + 176) = *(v0 + 2088);
    *(v47 + 192) = v98;
    *(v47 + 208) = *(v0 + 2120);
    v99 = *(v0 + 2040);
    *(v47 + 112) = *(v0 + 2024);
    *(v47 + 128) = v99;
    v100 = *(v0 + 2072);
    *(v47 + 144) = *(v0 + 2056);
    *(v47 + 160) = v100;
    v101 = *(v0 + 1976);
    *(v47 + 48) = *(v0 + 1960);
    *(v47 + 64) = v101;
    v102 = *(v0 + 2008);
    *(v47 + 80) = *(v0 + 1992);
    *(v47 + 96) = v102;
    v103 = *(v0 + 1944);
    *(v47 + 16) = *(v0 + 1928);
    *(v47 + 32) = v103;
  }

  else
  {
    if (v12 == 3)
    {
      v13 = *(v0 + 2768);
      v14 = sub_25F5A9C54(v0 + 264);
      v15 = *v14;
      v16 = *(v14 + 8);
      *(v0 + 2784) = v16;
      v17 = *(v14 + 16);
      *(v0 + 2792) = v17;
      v18 = *(v14 + 24);
      v19 = *(v14 + 25);
      v20 = *(v14 + 26);
      v13[3] = &type metadata for ImageGenerationStep;
      v13[4] = &protocol witness table for ImageGenerationStep;
      v21 = swift_allocObject();
      *(v0 + 2800) = v21;
      *v13 = v21;
      *(v0 + 2472) = v15;
      *(v0 + 2480) = v16;
      *(v0 + 2488) = v17;
      *(v0 + 2496) = v18;
      *(v0 + 2497) = v19;
      *(v0 + 2498) = v20;
      swift_beginAccess();
      v22 = off_281E8DB90;
      *(v0 + 2808) = qword_281E8DB98;
      *(v0 + 2664) = v15;
      *(v0 + 2672) = v16;
      *(v0 + 2680) = v17;
      *(v0 + 2688) = v18;
      *(v0 + 2689) = v19;
      *(v0 + 2690) = v20;
      sub_25F5E2784(v0 + 472, v0 + 1096);

      v112 = (v22 + *v22);
      v23 = v22[1];
      v24 = swift_task_alloc();
      *(v0 + 2816) = v24;
      *v24 = v0;
      v24[1] = sub_25F5E17CC;

      return (v112)(v0 + 2584, v0 + 2664);
    }

    v60 = *(v0 + 2768);
    v61 = sub_25F5A9C54(v0 + 264);
    v60[3] = &type metadata for MultiModalCompletionStep;
    v60[4] = &protocol witness table for MultiModalCompletionStep;
    v62 = swift_allocObject();
    *v60 = v62;
    *(v0 + 16) = *v61;
    v63 = v61[4];
    v65 = v61[1];
    v64 = v61[2];
    *(v0 + 64) = v61[3];
    *(v0 + 80) = v63;
    *(v0 + 32) = v65;
    *(v0 + 48) = v64;
    v66 = v61[8];
    v68 = v61[5];
    v67 = v61[6];
    *(v0 + 128) = v61[7];
    *(v0 + 144) = v66;
    *(v0 + 96) = v68;
    *(v0 + 112) = v67;
    v70 = v61[10];
    v69 = v61[11];
    v71 = v61[9];
    *(v0 + 201) = *(v61 + 185);
    *(v0 + 176) = v70;
    *(v0 + 192) = v69;
    *(v0 + 160) = v71;
    swift_beginAccess();
    v72 = off_281E8E2A8;
    v73 = v61[11];
    v122 = v61[10];
    v123[0] = v73;
    *(v123 + 9) = *(v61 + 185);
    v74 = v61[7];
    v119 = v61[6];
    v120 = v74;
    v75 = v61[9];
    *v121 = v61[8];
    *&v121[16] = v75;
    v76 = v61[3];
    v115 = v61[2];
    v116 = v76;
    v77 = v61[5];
    v117 = v61[4];
    v118 = v77;
    v78 = v61[1];
    v113 = *v61;
    v114 = v78;
    sub_25F5E2784(v0 + 472, v0 + 680);

    (v72)(&v113);

    sub_25F573A2C((v0 + 2544), v0 + 224);
    v104 = *(v0 + 224);
    *(v62 + 208) = *(v0 + 208);
    *(v62 + 224) = v104;
    *(v62 + 240) = *(v0 + 240);
    *(v62 + 256) = *(v0 + 256);
    v105 = *(v0 + 160);
    *(v62 + 144) = *(v0 + 144);
    *(v62 + 160) = v105;
    v106 = *(v0 + 192);
    *(v62 + 176) = *(v0 + 176);
    *(v62 + 192) = v106;
    v107 = *(v0 + 96);
    *(v62 + 80) = *(v0 + 80);
    *(v62 + 96) = v107;
    v108 = *(v0 + 128);
    *(v62 + 112) = *(v0 + 112);
    *(v62 + 128) = v108;
    v109 = *(v0 + 32);
    *(v62 + 16) = *(v0 + 16);
    *(v62 + 32) = v109;
    v110 = *(v0 + 64);
    *(v62 + 48) = *(v0 + 48);
    *(v62 + 64) = v110;
  }

  v111 = *(v0 + 8);

  return v111();
}

uint64_t sub_25F5E17CC()
{
  v2 = *v1;
  v3 = *(*v1 + 2816);
  v7 = *v1;
  *(*v1 + 2824) = v0;

  v4 = *(v2 + 2808);

  if (v0)
  {
    v5 = sub_25F5E1980;
  }

  else
  {
    v5 = sub_25F5E18F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F5E18F0()
{
  v1 = *(v0 + 2800);
  sub_25F573A2C((v0 + 2584), v0 + 2504);
  *(v1 + 16) = *(v0 + 2472);
  v3 = *(v0 + 2504);
  v2 = *(v0 + 2520);
  v4 = *(v0 + 2488);
  *(v1 + 80) = *(v0 + 2536);
  *(v1 + 48) = v3;
  *(v1 + 64) = v2;
  *(v1 + 32) = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25F5E1980()
{
  v1 = v0[349];
  v2 = v0[348];
  v3 = v0[346];

  __swift_deallocate_boxed_opaque_existential_1(v3);
  v4 = v0[353];
  v5 = v0[1];

  return v5();
}

uint64_t runPipeline(stepsConfigs:initial:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 864) = a2;
  *(v2 + 856) = a1;
  return MEMORY[0x2822009F8](sub_25F5E1A38, 0, 0);
}

uint64_t sub_25F5E1A38()
{
  v1 = *(v0 + 856);
  v2 = *(v1 + 16);
  *(v0 + 872) = v2;
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    *(v0 + 888) = 0;
    *(v0 + 880) = v3;
    *(v0 + 16) = *(v1 + 32);
    v4 = *(v1 + 48);
    v5 = *(v1 + 64);
    v6 = *(v1 + 96);
    *(v0 + 64) = *(v1 + 80);
    *(v0 + 80) = v6;
    *(v0 + 32) = v4;
    *(v0 + 48) = v5;
    v7 = *(v1 + 112);
    v8 = *(v1 + 128);
    v9 = *(v1 + 160);
    *(v0 + 128) = *(v1 + 144);
    *(v0 + 144) = v9;
    *(v0 + 96) = v7;
    *(v0 + 112) = v8;
    v10 = *(v1 + 176);
    v11 = *(v1 + 192);
    v12 = *(v1 + 208);
    *(v0 + 201) = *(v1 + 217);
    *(v0 + 176) = v11;
    *(v0 + 192) = v12;
    *(v0 + 160) = v10;
    *(v0 + 224) = *(v1 + 32);
    v13 = *(v1 + 48);
    v14 = *(v1 + 64);
    v15 = *(v1 + 96);
    *(v0 + 272) = *(v1 + 80);
    *(v0 + 288) = v15;
    *(v0 + 240) = v13;
    *(v0 + 256) = v14;
    v16 = *(v1 + 112);
    v17 = *(v1 + 128);
    v18 = *(v1 + 160);
    *(v0 + 336) = *(v1 + 144);
    *(v0 + 352) = v18;
    *(v0 + 304) = v16;
    *(v0 + 320) = v17;
    v19 = *(v1 + 176);
    v20 = *(v1 + 192);
    v21 = *(v1 + 208);
    *(v0 + 409) = *(v1 + 217);
    *(v0 + 384) = v20;
    *(v0 + 400) = v21;
    *(v0 + 368) = v19;
    sub_25F5E2784(v0 + 16, v0 + 432);
    v22 = swift_task_alloc();
    *(v0 + 896) = v22;
    *v22 = v0;
    v22[1] = sub_25F5E1D58;

    return sub_25F5E0FE0(v0 + 736);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
    *(v0 + 912) = MEMORY[0x277D84F90];
    v25 = *(v0 + 864);
    v26 = *(v24 + 16);
    *(v0 + 920) = v26;
    *(v0 + 928) = v25;

    if (v26)
    {
      *(v0 + 688) = 0;
      sub_25F57C0E4(v24 + 32, v0 + 696);
      v27 = *(v0 + 688);
      v28 = *(v0 + 704);
      v29 = 1;
      v30 = *(v0 + 720);
    }

    else
    {
      v29 = 0;
      v27 = 0uLL;
      v28 = 0uLL;
      v30 = 0uLL;
    }

    *(v0 + 944) = v29;
    *(v0 + 936) = v27;
    *(v0 + 640) = v27;
    *(v0 + 656) = v28;
    *(v0 + 672) = v30;
    if (v30)
    {
      sub_25F573A2C((v0 + 648), v0 + 816);
      v31 = *(v0 + 840);
      v32 = *(v0 + 848);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 816), v31);
      v33 = *(v32 + 8);
      v38 = (v33 + *v33);
      v34 = v33[1];
      v35 = swift_task_alloc();
      *(v0 + 952) = v35;
      *v35 = v0;
      v35[1] = sub_25F5E2254;

      return v38(v25, v31, v32);
    }

    else
    {
      v36 = *(v0 + 912);

      v37 = *(v0 + 8);

      return v37(v25);
    }
  }
}

uint64_t sub_25F5E1D58()
{
  v2 = *v1;
  v3 = *(*v1 + 896);
  v7 = *v1;
  *(*v1 + 904) = v0;

  if (v0)
  {
    v4 = *(v2 + 880);

    v5 = sub_25F5E26BC;
  }

  else
  {
    sub_25F5DC318(v2 + 16);
    v5 = sub_25F5E1E7C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F5E1E7C()
{
  v1 = *(v0 + 880);
  sub_25F57C0E4(v0 + 736, v0 + 776);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 880);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_25F578EE8(0, v3[2] + 1, 1, *(v0 + 880));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_25F578EE8((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v0 + 872);
  v7 = *(v0 + 888) + 1;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 736));
  v3[2] = v5 + 1;
  sub_25F573A2C((v0 + 776), &v3[5 * v5 + 4]);
  if (v7 == v6)
  {
    *(v0 + 912) = v3;
    v8 = *(v0 + 864);
    v9 = v3[2];
    *(v0 + 920) = v9;
    *(v0 + 928) = v8;

    if (v9)
    {
      if (!v3[2])
      {
        __break(1u);
        return result;
      }

      *(v0 + 688) = 0;
      sub_25F57C0E4((v3 + 4), v0 + 696);
      v11 = *(v0 + 688);
      v12 = *(v0 + 704);
      v13 = 1;
      v14 = *(v0 + 720);
    }

    else
    {
      v13 = 0;
      v11 = 0uLL;
      v12 = 0uLL;
      v14 = 0uLL;
    }

    *(v0 + 944) = v13;
    *(v0 + 936) = v11;
    *(v0 + 640) = v11;
    *(v0 + 656) = v12;
    *(v0 + 672) = v14;
    if (v14)
    {
      sub_25F573A2C((v0 + 648), v0 + 816);
      v36 = *(v0 + 840);
      v37 = *(v0 + 848);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 816), v36);
      v38 = *(v37 + 8);
      v43 = (v38 + *v38);
      v39 = v38[1];
      v40 = swift_task_alloc();
      *(v0 + 952) = v40;
      *v40 = v0;
      v40[1] = sub_25F5E2254;

      return v43(v8, v36, v37);
    }

    else
    {
      v41 = *(v0 + 912);

      v42 = *(v0 + 8);

      return v42(v8);
    }
  }

  else
  {
    v15 = *(v0 + 888);
    *(v0 + 888) = v15 + 1;
    *(v0 + 880) = v3;
    v16 = (*(v0 + 856) + 208 * v15);
    *(v0 + 16) = v16[15];
    v17 = v16[19];
    v19 = v16[16];
    v18 = v16[17];
    *(v0 + 64) = v16[18];
    *(v0 + 80) = v17;
    *(v0 + 32) = v19;
    *(v0 + 48) = v18;
    v20 = v16[23];
    v22 = v16[20];
    v21 = v16[21];
    *(v0 + 128) = v16[22];
    *(v0 + 144) = v20;
    *(v0 + 96) = v22;
    *(v0 + 112) = v21;
    v24 = v16[25];
    v23 = v16[26];
    v25 = v16[24];
    *(v0 + 201) = *(v16 + 425);
    *(v0 + 176) = v24;
    *(v0 + 192) = v23;
    *(v0 + 160) = v25;
    *(v0 + 224) = v16[15];
    v26 = v16[16];
    v27 = v16[17];
    v28 = v16[19];
    *(v0 + 272) = v16[18];
    *(v0 + 288) = v28;
    *(v0 + 240) = v26;
    *(v0 + 256) = v27;
    v29 = v16[20];
    v30 = v16[21];
    v31 = v16[23];
    *(v0 + 336) = v16[22];
    *(v0 + 352) = v31;
    *(v0 + 304) = v29;
    *(v0 + 320) = v30;
    v32 = v16[24];
    v33 = v16[25];
    v34 = v16[26];
    *(v0 + 409) = *(v16 + 425);
    *(v0 + 384) = v33;
    *(v0 + 400) = v34;
    *(v0 + 368) = v32;
    sub_25F5E2784(v0 + 16, v0 + 432);
    v35 = swift_task_alloc();
    *(v0 + 896) = v35;
    *v35 = v0;
    v35[1] = sub_25F5E1D58;

    return sub_25F5E0FE0(v0 + 736);
  }
}

uint64_t sub_25F5E2254(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 952);
  v6 = *v2;
  v4[120] = a1;
  v4[121] = v1;

  v7 = v3[116];
  if (v1)
  {
    v8 = v4[114];

    v9 = sub_25F5E2720;
  }

  else
  {

    v9 = sub_25F5E23A4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_25F5E23A4()
{
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 912);
  v2 = sub_25F5E3FB4();
  __swift_project_value_buffer(v2, qword_27FD9EA20);

  v3 = sub_25F5E3F94();
  v4 = sub_25F5E4794();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 936);
    result = swift_slowAlloc();
    *result = 134218240;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v7 = *(v0 + 912);
    *(result + 4) = v5 + 1;
    *(result + 12) = 2048;
    *(result + 14) = *(v7 + 16);
    v8 = result;

    _os_log_impl(&dword_25F56A000, v3, v4, "Completed data processing step %ld/%ld", v8, 0x16u);
    MEMORY[0x25F8E3B70](v8, -1, -1);
  }

  else
  {
    v9 = *(v0 + 912);
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 816));
  v10 = *(v0 + 960);
  v11 = *(v0 + 944);
  *(v0 + 928) = v10;
  v12 = 0uLL;
  if (v11 == *(v0 + 920))
  {
    v13 = 0uLL;
    v14 = 0uLL;
    goto LABEL_11;
  }

  v15 = *(v0 + 912);
  if (v11 >= *(v15 + 16))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v16 = v11 + 1;
  *(v0 + 688) = v11;
  sub_25F57C0E4(v15 + 40 * v11 + 32, v0 + 696);
  v12 = *(v0 + 688);
  v13 = *(v0 + 704);
  v11 = v16;
  v14 = *(v0 + 720);
LABEL_11:
  *(v0 + 944) = v11;
  *(v0 + 936) = v12;
  *(v0 + 640) = v12;
  *(v0 + 656) = v13;
  *(v0 + 672) = v14;
  if (v14)
  {
    sub_25F573A2C((v0 + 648), v0 + 816);
    v17 = *(v0 + 840);
    v18 = *(v0 + 848);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 816), v17);
    v19 = *(v18 + 8);
    v24 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    *(v0 + 952) = v21;
    *v21 = v0;
    v21[1] = sub_25F5E2254;

    return v24(v10, v17, v18);
  }

  else
  {
    v22 = *(v0 + 912);

    v23 = *(v0 + 8);

    return v23(v10);
  }
}

uint64_t sub_25F5E26BC()
{
  sub_25F5DC318(v0 + 16);
  v1 = *(v0 + 904);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F5E2720()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 102);
  v1 = v0[121];
  v2 = v0[1];

  return v2();
}

uint64_t dispatch thunk of DataProcessingStep.process(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25F57E6F8;

  return v11(a1, a2, a3);
}

uint64_t sub_25F5E28F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 176) >> 2) & 0xFFFFFF80 | (*(a1 + 176) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_25F5E2944(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 200) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 201) = 1;
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
      result = 0.0;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 184) = 0;
      *(a1 + 192) = 0;
      *(a1 + 176) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 200) = 0;
      return result;
    }

    *(a1 + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F5E29E8(uint64_t result, char a2)
{
  v2 = *(result + 200) & 1 | (32 * a2);
  *(result + 176) &= 0x101uLL;
  *(result + 200) = v2;
  return result;
}

unint64_t sub_25F5E2A40()
{
  result = qword_27FD9E9E8;
  if (!qword_27FD9E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9E8);
  }

  return result;
}

unint64_t sub_25F5E2A98()
{
  result = qword_27FD9E9F0;
  if (!qword_27FD9E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9F0);
  }

  return result;
}

unint64_t sub_25F5E2AF0()
{
  result = qword_27FD9E9F8;
  if (!qword_27FD9E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9F8);
  }

  return result;
}

unint64_t sub_25F5E2B48()
{
  result = qword_27FD9EA00;
  if (!qword_27FD9EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9EA00);
  }

  return result;
}

unint64_t sub_25F5E2B9C()
{
  result = qword_27FD9EA08;
  if (!qword_27FD9EA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9EA08);
  }

  return result;
}

uint64_t sub_25F5E2BF0()
{
  v0 = sub_25F5E4A14();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F5E2C3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  sub_25F581A78(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  v6 = *(v0 + 200);

  v7 = *(v0 + 208);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 224));

  return MEMORY[0x2821FE8E8](v0, 264, 7);
}

uint64_t sub_25F5E2CB8()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_25F5E2D00()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  sub_25F581A78(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  v5 = *(v0 + 160);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));

  return MEMORY[0x2821FE8E8](v0, 216, 7);
}

uint64_t sub_25F5E2D6C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_25F5741E0();

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_25F5E2DB8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  sub_25F581A78(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  v5 = *(v0 + 168);

  v6 = *(v0 + 176);

  if (*(v0 + 224))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 200));
  }

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

uint64_t sub_25F5E2E34@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_25F5E3904();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4);
  result = (*(v5 + 88))(v9, v4);
  if (result == *MEMORY[0x277CD3740])
  {
    *a2 = 1;
  }

  else if (result == *MEMORY[0x277CD3738])
  {
    *a2 = 2;
  }

  else if (result == *MEMORY[0x277CD3750])
  {
    *a2 = 3;
  }

  else if (result == *MEMORY[0x277CD3730])
  {
    *a2 = 4;
  }

  else if (result == *MEMORY[0x277CD3758])
  {
    *a2 = 5;
  }

  else if (result == *MEMORY[0x277CD3728])
  {
    *a2 = 6;
  }

  else if (result == *MEMORY[0x277CD3760])
  {
    *a2 = 7;
  }

  else if (result == *MEMORY[0x277CD3748])
  {
    *a2 = 8;
  }

  else if (result == *MEMORY[0x277CD3768])
  {
    *a2 = 9;
  }

  else
  {
    *a2 = 10;
    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

PriMLETL::PriMLETLError_optional __swiftcall PriMLETLError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 121;
  if ((rawValue - 20601) >= 0xB)
  {
    v2 = 11;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_25F5E3090()
{
  result = qword_27FD9EA10;
  if (!qword_27FD9EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9EA10);
  }

  return result;
}

uint64_t sub_25F5E30E4()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](v1 + 20601);
  return sub_25F5E4C54();
}

uint64_t sub_25F5E3164()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](v1 + 20601);
  return sub_25F5E4C54();
}

uint64_t sub_25F5E31C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F5E3370();
  v5 = sub_25F5739D8();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for PriMLETLError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PriMLETLError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F5E3370()
{
  result = qword_27FD9EA18;
  if (!qword_27FD9EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9EA18);
  }

  return result;
}