uint64_t sub_2747DC978(id *a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_274772FC4(a1, a2 - a1, a4);
    v10 = &v4[v8];
    v52 = v5;
    v50 = v10;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_63;
      }

      v48 = v4;
      v12 = *v4;
      v13 = *v6;
      v14 = v12;
      v15 = sub_2747DE030([v13 contentDestination], &selRef_localizedTitle);
      v17 = v16 ? v15 : 0;
      v18 = v16 ? v16 : 0xE000000000000000;
      v19 = sub_2747DE030([v14 contentDestination], &selRef_localizedTitle);
      v21 = v20 ? v19 : 0;
      v22 = v20 ? v20 : 0xE000000000000000;
      v23 = v17 == v21 && v18 == v22;
      if (v23)
      {
        break;
      }

      v24 = sub_2749FDCC4();

      if ((v24 & 1) == 0)
      {
        goto LABEL_28;
      }

      v25 = v6;
      v23 = v7 == v6++;
      v5 = v52;
      v10 = v50;
      if (!v23)
      {
        goto LABEL_29;
      }

LABEL_30:
      ++v7;
    }

LABEL_28:
    v10 = v50;
    v25 = v4++;
    v5 = v52;
    if (v7 == v48)
    {
      goto LABEL_30;
    }

LABEL_29:
    *v7 = *v25;
    goto LABEL_30;
  }

  sub_274772FC4(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v46 = v7;
LABEL_32:
  v26 = v6 - 1;
  v27 = v5 - 1;
  v47 = v6 - 1;
  v49 = v6;
  while (v10 > v4 && v6 > v7)
  {
    v53 = v27;
    v51 = v10;
    v29 = v10 - 1;
    v30 = *v26;
    v31 = *(v10 - 1);
    v32 = v30;
    v33 = sub_2747DE030([v31 contentDestination], &selRef_localizedTitle);
    if (v34)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0;
    }

    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0xE000000000000000;
    }

    v37 = sub_2747DE030([v32 contentDestination], &selRef_localizedTitle);
    if (v38)
    {
      v39 = v37;
    }

    else
    {
      v39 = 0;
    }

    if (v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = 0xE000000000000000;
    }

    if (v35 == v39 && v36 == v40)
    {
      v42 = 0;
    }

    else
    {
      v42 = sub_2749FDCC4();
    }

    v26 = v47;
    if (v42)
    {
      v5 = v53;
      v10 = v51;
      v6 = v47;
      v7 = v46;
      if (v53 + 1 != v49)
      {
        *v53 = *v47;
        v6 = v47;
      }

      goto LABEL_32;
    }

    if (v51 != v53 + 1)
    {
      *v53 = *v29;
    }

    v27 = v53 - 1;
    v10 = v29;
    v6 = v49;
    v7 = v46;
  }

LABEL_63:
  v43 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v43])
  {
    memmove(v6, v4, 8 * v43);
  }

  return 1;
}

uint64_t sub_2747DCCC4(id *a1, id *a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_274772FC4(a1, a2 - a1, a4);
    v10 = &v4[v8];
    v51 = v10;
    v53 = v5;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      v55 = v7;
      v12 = *v4;
      v13 = *v6;
      v14 = v12;
      v15 = [v13 actionUUID];
      v16 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v18 = v17;

      v19 = [v14 actionUUID];
      v20 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v22 = v21;

      if (v16 == v20 && v18 == v22)
      {

        v25 = v55;
      }

      else
      {
        v24 = sub_2749FDCC4();

        v25 = v55;
        if (v24)
        {
          v26 = v6;
          v27 = v55 == v6++;
          goto LABEL_15;
        }
      }

      v26 = v4;
      v27 = v25 == v4++;
LABEL_15:
      v10 = v51;
      v5 = v53;
      if (!v27)
      {
        *v25 = *v26;
      }

      v7 = v25 + 1;
    }
  }

  sub_274772FC4(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v49 = v4;
  v56 = v7;
LABEL_19:
  v28 = v6 - 1;
  v29 = v5 - 1;
  for (i = v6; v10 > v4 && v6 > v7; v6 = i)
  {
    v52 = v10;
    v54 = v29;
    v31 = v10 - 1;
    v32 = v28;
    v33 = *v28;
    v34 = *(v10 - 1);
    v35 = v33;
    v36 = [v34 actionUUID];
    v37 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v39 = v38;

    v40 = [v35 actionUUID];
    v41 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v43 = v42;

    if (v37 == v41 && v39 == v43)
    {
      v45 = 0;
    }

    else
    {
      v45 = sub_2749FDCC4();
    }

    v7 = v56;
    v10 = v52;
    v28 = v32;
    if (v45)
    {
      v5 = v54;
      v4 = v49;
      v6 = v28;
      if (v54 + 1 != i)
      {
        *v54 = *v28;
        v6 = v28;
      }

      goto LABEL_19;
    }

    v4 = v49;
    if (v52 != v54 + 1)
    {
      *v54 = *v31;
    }

    v29 = v54 - 1;
    v10 = v31;
  }

LABEL_38:
  v46 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v46])
  {
    memmove(v6, v4, 8 * v46);
  }

  return 1;
}

char *sub_2747DD010(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_2747DD110(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v28 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = sub_274797CC0(v7, v6);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v9[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969150);
        sub_2749FDA94();
      }
    }

    else
    {
      sub_27493484C(v15, a2 & 1);
      v17 = sub_274797CC0(v7, v6);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v12 = v17;
    }

    v19 = *a3;
    if (v16)
    {
      v20 = *(v19[7] + 8 * v12);

      v21 = v19[7];
      v22 = *(v21 + 8 * v12);
      *(v21 + 8 * v12) = v20;
    }

    else
    {
      v19[(v12 >> 6) + 8] |= 1 << v12;
      v23 = (v19[6] + 16 * v12);
      *v23 = v7;
      v23[1] = v6;
      *(v19[7] + 8 * v12) = v10;
      v24 = v19[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v19[2] = v26;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2749FDD54();
  __break(1u);
  return result;
}

uint64_t sub_2747DD2E8(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v6 = *(i - 2);
    v7 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_274797CC0(v6, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_17;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969140);
        sub_2749FDA94();
      }
    }

    else
    {
      sub_274934874(v14, a2 & 1);
      v16 = sub_274797CC0(v6, v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

      v11 = v16;
    }

    v18 = *a3;
    if (v15)
    {
      v19 = *(v18[7] + 8 * v11);

      sub_2747D7128(v8, v19, &qword_28096EE00, 0x277D7C8F8, &qword_2809688B0, sub_2747655A0);
      v21 = v20;

      *(v18[7] + 8 * v11) = v21;
    }

    else
    {
      v18[(v11 >> 6) + 8] |= 1 << v11;
      v22 = (v18[6] + 16 * v11);
      *v22 = v6;
      v22[1] = v7;
      *(v18[7] + 8 * v11) = v8;
      v23 = v18[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_18;
      }

      v18[2] = v25;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2749FDD54();
  __break(1u);
  return result;
}

uint64_t sub_2747DD4F8(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_2747DD858(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v30 = MEMORY[0x277D84FA0];
  sub_2749FD804();
  v27 = v2;
  while (1)
  {
    while (1)
    {
      v4 = sub_2749FD874();
      if (!v4)
      {

        return v3;
      }

      v28 = v4;
      sub_27471CF08(0, &qword_28096EE00);
      swift_dynamicCast();
      v5 = [v29 sourceContentAttribution];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 origin];

        if (v7)
        {
          break;
        }
      }

LABEL_14:
    }

    v8 = *v2;
    if ((*v2 & 0xC000000000000001) != 0)
    {

      v9 = v7;
      v10 = sub_2749FD884();

      if (v10)
      {

        goto LABEL_14;
      }
    }

    else if (*(v8 + 16))
    {
      sub_27471CF08(0, &qword_2809679B0);

      v11 = sub_2749FD5F4();
      v12 = ~(-1 << *(v8 + 32));
      while (1)
      {
        v13 = v11 & v12;
        if (((*(v8 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
        {
          break;
        }

        v14 = *(*(v8 + 48) + 8 * v13);
        v15 = sub_2749FD604();

        v11 = v13 + 1;
        if (v15)
        {

          v2 = v27;
          goto LABEL_14;
        }
      }

      v2 = v27;
    }

    sub_2747655C4(&v28, v7);

    v16 = v29;
    if (*(v3 + 24) <= *(v3 + 16))
    {
      sub_274767810();
    }

    v3 = v30;
    result = sub_2749FD5F4();
    v18 = v3 + 56;
    v19 = -1 << *(v3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v3 + 56 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v3 + 56 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v3 + 48) + 8 * v22) = v16;
    ++*(v3 + 16);
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v18 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

void *sub_2747DD858(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = a1;
  v45[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  v8 = 8 * v7;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v36 = &v33;
    v37 = v3;
    MEMORY[0x28223BE20](a1);
    v38 = &v33 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_27476A4B0(0, v7, v38);
    v9 = 0;
    v10 = v5 + 56;
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v39 = v5 + 56;
    v40 = v14;
    v41 = 0;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_13:
      v18 = v15 | (v9 << 6);
      v19 = *(v5 + 48);
      v42 = v18;
      v3 = *(v19 + 8 * v18);
      v20 = [v3 sourceContentAttribution];
      if (v20)
      {
        v8 = v20;
        v43 = v3;
        v44 = v13;
        v21 = [v20 origin];

        if (v21)
        {
          v8 = *a2;
          if ((*a2 & 0xC000000000000001) != 0)
          {

            v22 = v21;
            v23 = sub_2749FD884();

            if ((v23 & 1) == 0)
            {
              goto LABEL_27;
            }

LABEL_25:
            v10 = v39;
            v14 = v40;
            v13 = v44;
          }

          else
          {
            if (*(v8 + 16))
            {
              v33 = v7;
              v34 = a2;
              v35 = v5;
              sub_27471CF08(0, &qword_2809679B0);

              v24 = sub_2749FD5F4();
              v25 = ~(-1 << *(v8 + 32));
              while (1)
              {
                v3 = v24 & v25;
                if (((*(v8 + 56 + (((v24 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v25)) & 1) == 0)
                {
                  break;
                }

                v26 = *(*(v8 + 48) + 8 * v3);
                v27 = sub_2749FD604();

                v24 = v3 + 1;
                if (v27)
                {

                  a2 = v34;
                  v5 = v35;
                  v7 = v33;
                  goto LABEL_25;
                }
              }

              a2 = v34;
              v5 = v35;
              v7 = v33;
LABEL_27:
              v10 = v39;
            }

            sub_2747655C4(v45, v21);
            v8 = v45[0];

            *(v38 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
            v14 = v40;
            v28 = __OFADD__(v41++, 1);
            v13 = v44;
            if (v28)
            {
              __break(1u);
LABEL_31:
              sub_274975BCC();
              return v29;
            }
          }
        }

        else
        {

          v13 = v44;
        }
      }

      else
      {
      }
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_31;
      }

      v17 = *(v10 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_34:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v32 = swift_slowAlloc();
  v30 = sub_2747DDF40(v32, v7, v5, a2);

  MEMORY[0x277C61040](v32, -1, -1);
  return v30;
}

void sub_2747DDC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  v33 = a3 + 56;
  v34 = v12;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v36 = v13 | (v7 << 6);
    v16 = *(*(v4 + 48) + 8 * v36);
    v17 = [v16 sourceContentAttribution];
    if (v17)
    {
      v18 = v17;
      v37 = v16;
      v38 = v11;
      v19 = [v17 origin];

      if (v19)
      {
        v20 = *a4;
        if ((*a4 & 0xC000000000000001) != 0)
        {

          v21 = v19;
          v22 = sub_2749FD884();

          if ((v22 & 1) == 0)
          {
            goto LABEL_26;
          }

LABEL_24:
          v8 = v33;
          v12 = v34;
          v11 = v38;
        }

        else
        {
          if (*(v20 + 16))
          {
            v30 = a2;
            v31 = v4;
            sub_27471CF08(0, &qword_2809679B0);

            v23 = sub_2749FD5F4();
            v24 = ~(-1 << *(v20 + 32));
            while (1)
            {
              v25 = v23 & v24;
              if (((*(v20 + 56 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
              {
                break;
              }

              v26 = *(*(v20 + 48) + 8 * v25);
              v27 = sub_2749FD604();

              v23 = v25 + 1;
              if (v27)
              {

                a2 = v30;
                v4 = v31;
                goto LABEL_24;
              }
            }

            a2 = v30;
            v4 = v31;
LABEL_26:
            v8 = v33;
          }

          sub_2747655C4(&v39, v19);
          v28 = v39;

          *(a1 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
          v29 = __OFADD__(v6++, 1);
          v12 = v34;
          v11 = v38;
          if (v29)
          {
            __break(1u);
LABEL_30:

            sub_274975BCC();
            return;
          }
        }
      }

      else
      {

        v11 = v38;
      }
    }

    else
    {
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_30;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_2747DDF40(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_2747DDC4C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_2747DDFD4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_2747DE030(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v4;
}

uint64_t sub_2747DE0B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_2749FD844();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_27472D918(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_27471CF08(0, &qword_28096EE00);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2747DE674(&qword_280969130, &qword_280969110);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969110);
          v9 = sub_2747A35F4(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2747DE234()
{
  OUTLINED_FUNCTION_4_12();
  if (v2)
  {
    v5 = sub_2749FD844();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      OUTLINED_FUNCTION_44();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_27472D918(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        sub_27471CF08(0, &unk_2809708B0);
        OUTLINED_FUNCTION_9_8();
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v24 = v6;
        sub_2747DE674(&qword_280969180, &qword_280969178);
        do
        {
          v7 = OUTLINED_FUNCTION_42();
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v7);
          v16 = OUTLINED_FUNCTION_3_25(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25[0]);
          v19 = sub_2747A3660(v16, v17, v18);
          v21 = *v20;
          v19(v25, 0);
          OUTLINED_FUNCTION_5_13();
        }

        while (!v22);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_2747DE374()
{
  OUTLINED_FUNCTION_4_12();
  if (v2)
  {
    v5 = sub_2749FD844();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      OUTLINED_FUNCTION_44();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_27472D918(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        sub_27471CF08(0, &qword_280968930);
        OUTLINED_FUNCTION_9_8();
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v24 = v6;
        sub_2747DE674(&qword_280969190, &qword_280969188);
        do
        {
          v7 = OUTLINED_FUNCTION_42();
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v7);
          v16 = OUTLINED_FUNCTION_3_25(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25[0]);
          v19 = sub_2747A3660(v16, v17, v18);
          v21 = *v20;
          v19(v25, 0);
          OUTLINED_FUNCTION_5_13();
        }

        while (!v22);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t objectdestroy_7Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2747DE510(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_27471CF08(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_26Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_29Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2747DE674(unint64_t *a1, uint64_t *a2)
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

uint64_t WFGlyphCategory.init(localizedTitle:glyphs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2749F9154();
  result = type metadata accessor for WFGlyphCategory();
  v9 = (a4 + *(result + 20));
  *v9 = a1;
  v9[1] = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for WFGlyphCategory()
{
  result = qword_28159FCC8;
  if (!qword_28159FCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WFGlyphCategory.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749F9164();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WFGlyphCategory.localizedTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for WFGlyphCategory() + 20));

  return v1;
}

uint64_t WFGlyphCategory.glyphs.getter()
{
  type metadata accessor for WFGlyphCategory();
}

uint64_t WFGlyphCategory.hash(into:)()
{
  sub_2749F9164();
  OUTLINED_FUNCTION_0_17();
  sub_2747DEAF0(v0, v1);

  return sub_2749FCD04();
}

uint64_t static WFGlyphCategory.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2749F9134() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WFGlyphCategory();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_2749FDCC4() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);

  return sub_274785420(v11, v12);
}

uint64_t WFGlyphCategory.hashValue.getter()
{
  sub_2749FDDF4();
  sub_2749F9164();
  OUTLINED_FUNCTION_0_17();
  sub_2747DEAF0(v0, v1);
  sub_2749FCD04();
  return sub_2749FDE44();
}

uint64_t sub_2747DE9DC()
{
  sub_2749FDDF4();
  sub_2749F9164();
  sub_2747DEAF0(&qword_2809707C0, MEMORY[0x277CC95F0]);
  sub_2749FCD04();
  return sub_2749FDE44();
}

uint64_t sub_2747DEAF0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2747DEB64()
{
  sub_2749F9164();
  if (v0 <= 0x3F)
  {
    sub_2747DEBF0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2747DEBF0()
{
  if (!qword_28159E528)
  {
    type metadata accessor for WFGlyphCharacter(255);
    v0 = sub_2749FD014();
    if (!v1)
    {
      atomic_store(v0, &qword_28159E528);
    }
  }
}

id sub_2747DEC58(uint64_t a1, const void *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  memcpy(__dst, a2, 0x59uLL);
  v10 = *a3;
  v5[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_hasScrolledToEntry] = 0;
  v11 = OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView;
  v12 = [objc_allocWithZone(MEMORY[0x277D752F0]) init];
  v13 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v12 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&v5[v11] = v13;
  *&v5[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_lastLayoutOrientation] = 0;
  *&v5[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_dataSource] = a1;
  memcpy(&v5[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_style], a2, 0x59uLL);
  *&v5[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_layout] = v10;
  memcpy(aBlock, a2, 0x59uLL);
  v27 = v10;
  type metadata accessor for SmartShortcutPickerCollectionViewDataSource(0);
  swift_allocObject();
  swift_retain_n();
  v14 = v13;
  sub_2747D2AC8(__dst, v26);

  SmartShortcutPickerCollectionViewDataSource.init(collectionView:dataSource:style:layout:)();
  *&v5[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_smartShortcutPickerDataSource] = v15;
  *&v5[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_selectionCoordinator] = a4;
  v25.receiver = v5;
  v25.super_class = type metadata accessor for SmartShortcutPickerBaseViewController();

  v16 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 defaultCenter];
  v20 = *MEMORY[0x277CCA0D0];
  OUTLINED_FUNCTION_86();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_2747E2A30;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2747DF484;
  aBlock[3] = &block_descriptor_13;
  v22 = _Block_copy(aBlock);

  v23 = [v19 addObserverForName:v20 object:0 queue:0 usingBlock:v22];
  _Block_release(v22);

  swift_unknownObjectRelease();

  return v18;
}

uint64_t sub_2747DEF3C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_274832938(0, 0, v5, &unk_274A14AA8, v7);
}

uint64_t sub_2747DF024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_2749FA4E4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2747DF0E4, 0, 0);
}

uint64_t sub_2747DF0E4()
{
  sub_2749FA3D4();
  v1 = sub_2749FA4D4();
  v2 = sub_2749FD2E4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_274719000, v1, v2, "User returned to staccato configuration, reloading data source", v3, 2u);
    MEMORY[0x277C61040](v3, -1, -1);
  }

  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  (*(v5 + 8))(v4, v6);
  if (qword_280966BA8 != -1)
  {
    swift_once();
  }

  sub_27477DD74();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = Strong;
  if (Strong)
  {
    v0[9] = *(Strong + OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_dataSource);

    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_2747DF2DC;

    return SmartShortcutPickerDataSource.load()();
  }

  else
  {

    OUTLINED_FUNCTION_48_0();

    return v11();
  }
}

uint64_t sub_2747DF2DC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2747DF41C, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_48_0();

    return v2();
  }
}

uint64_t sub_2747DF41C()
{

  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t sub_2747DF484(uint64_t a1)
{
  v2 = sub_2749F8EB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_2749F8EA4();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

id SmartShortcutPickerBaseViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SmartShortcutPickerBaseViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_hasScrolledToEntry) = 0;
  v1 = OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView;
  v2 = [objc_allocWithZone(MEMORY[0x277D752F0]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v2 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *(v0 + v1) = v3;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_lastLayoutOrientation) = 0;
  sub_2749FDAE4();
  __break(1u);
}

id SmartShortcutPickerBaseViewController.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SmartShortcutPickerBaseViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2747DF82C()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 clearColor];
  [v3 setBackgroundColor_];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = *&v1[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView];
  [v6 addSubview_];

  v9 = sub_2747CBE58();
  [v8 setDataSource_];

  type metadata accessor for CollectionViewHeaderView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = *MEMORY[0x277D767D8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969288);
  sub_2749FCDC4();
  v12 = sub_2749FCD64();

  [v8 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v11 withReuseIdentifier:v12];

  v13 = *&v1[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_layout];

  v14 = [v1 interfaceOrientation];
  OUTLINED_FUNCTION_86();
  v15 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_32_2();
  if (v13)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v14;
    v17 = objc_allocWithZone(MEMORY[0x277D752B8]);
    v18 = sub_2747E2930(sub_2747E2DEC, v16);
  }

  else
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v15;
    *(v19 + 24) = v14;
    v20 = objc_allocWithZone(MEMORY[0x277D752B8]);
    v18 = sub_2747E2930(sub_2747E2DF0, v19);
  }

  [v8 setCollectionViewLayout_];

  v21 = [v4 clearColor];
  [v8 setBackgroundColor_];

  [v8 setKeyboardDismissMode_];
  sub_2747CE740();
}

id sub_2747DFBEC()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for SmartShortcutPickerBaseViewController();
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v2 = OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_lastLayoutOrientation;
  v3 = *&v0[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_lastLayoutOrientation];
  result = [v1 interfaceOrientation];
  if (v3 != result)
  {
    v5 = *&v1[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView];
    v6 = *&v1[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_layout];

    v7 = [v1 interfaceOrientation];
    OUTLINED_FUNCTION_86();
    v8 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_32_2();
    if (v6)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v7;
      v10 = objc_allocWithZone(MEMORY[0x277D752B8]);
      v11 = sub_2747E2930(sub_2747E29D4, v9);
    }

    else
    {
      v12 = swift_allocObject();
      *(v12 + 16) = v8;
      *(v12 + 24) = v7;
      v13 = objc_allocWithZone(MEMORY[0x277D752B8]);
      v11 = sub_2747E2930(sub_2747E29DC, v12);
    }

    [v5 setCollectionViewLayout_];

    result = [v1 interfaceOrientation];
    *&v1[v2] = result;
  }

  return result;
}

void sub_2747DFDD4(void *a1)
{
  v21.receiver = v1;
  v21.super_class = type metadata accessor for SmartShortcutPickerBaseViewController();
  objc_msgSendSuper2(&v21, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_9:
    v12 = *&v1[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView];
    v13 = *&v1[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_layout];

    v14 = [v1 interfaceOrientation];
    OUTLINED_FUNCTION_86();
    v15 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_32_2();
    if (v13)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = v14;
      v17 = objc_allocWithZone(MEMORY[0x277D752B8]);
      v18 = sub_2747E2930(sub_2747E2DEC, v16);
    }

    else
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v15;
      *(v19 + 24) = v14;
      v20 = objc_allocWithZone(MEMORY[0x277D752B8]);
      v18 = sub_2747E2930(sub_2747E2DF0, v19);
    }

    [v12 setCollectionViewLayout_];

    return;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;
  if (v6 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v8 == v9)
  {

    return;
  }

  v11 = sub_2749FDCC4();

  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }
}

void sub_2747E0084(char a1)
{
  v3 = sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  v629 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_1();
  v628 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v607 - v8;
  sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v626 = v11;
  v627 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_1();
  v630 = v12;
  v13 = type metadata accessor for SmartShortcutPickerEntry();
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_20_1();
  v632 = v14;
  v642 = type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item(0);
  OUTLINED_FUNCTION_43();
  v637 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_20_1();
  v647 = v17;
  v644 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969250);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  v636 = (&v607 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969258);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_5_1();
  v643 = v21;
  MEMORY[0x28223BE20](v22);
  v649 = &v607 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969260);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v607 - v25;
  v27 = type metadata accessor for SmartShortcutPickerSelectedEntry();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_20_1();
  v633 = v1;
  v634 = v29;
  v30 = OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_hasScrolledToEntry;
  if (v1[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_hasScrolledToEntry] == 1 && (a1 & 1) == 0)
  {
    return;
  }

  v622 = v9;
  v624 = v3;
  v31 = v633;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_27472ECBC(v26, &unk_280969260);
    return;
  }

  v32 = v26;
  v33 = v634;
  sub_2747E2CFC(v32, v634, type metadata accessor for SmartShortcutPickerSelectedEntry);
  v34 = *&v31[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_smartShortcutPickerDataSource];
  v35 = *(v33 + 200);
  v36 = *(v33 + 208);
  v656[0] = *(v33 + 192);
  v656[1] = v35;
  LOBYTE(v656[2]) = v36;
  sub_27477D408(v656[0], v35, v36);
  sub_2747CF564(v656);
  sub_27478C4DC(v656[0], v656[1], v656[2]);
  v674 = v671[0];
  v675 = v671[1];
  *v676 = v671[2];
  *&v676[9] = *(&v671[2] + 9);
  if (!*&v671[2])
  {
    OUTLINED_FUNCTION_14_5();
    v601 = v33;
LABEL_317:
    sub_2747E2D5C(v601, v600);
    return;
  }

  v38 = *(&v674 + 1);
  v37 = v674;
  v39 = v675;
  v31[v30] = 1;
  swift_beginAccess();
  v40 = *(v34 + 16);
  v648 = *(v40 + 16);
  v645 = v39;
  v41 = v39 != 3;
  v42 = v39 == 3;
  if (__PAIR128__(v38, v37) != 0)
  {
    v42 = 0;
  }

  v621 = v42;
  v646 = v38;
  v43 = v37 == 1 && v38 == 0;
  v44 = v40;
  if (!v43)
  {
    v41 = 1;
  }

  v625 = v41;

  v640 = 0;
  v641 = 0;
  LODWORD(v623) = 0;
  v638 = 0.0;
  v639 = v44;
  v46 = 0;
  v47 = v647;
  v48 = v649;
  while (1)
  {
    v49 = 40 * v46;
LABEL_15:
    if (v648 == v46)
    {

      v562 = v633;
      v563 = *&v633[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView];
      v564 = [v563 numberOfSections];
      v565 = v638;
      if (*&v638 >= v564 || (v623 & 1) == 0)
      {
        v602 = v628;
        sub_2749FA3D4();
        v603 = sub_2749FA4D4();
        v604 = sub_2749FD2C4();
        v605 = os_log_type_enabled(v603, v604);
        v576 = v634;
        if (v605)
        {
          v606 = swift_slowAlloc();
          *v606 = 134217984;
          *(v606 + 4) = v565;
          _os_log_impl(&dword_274719000, v603, v604, "Attempted to scroll to a section %ld that does not exist!", v606, 0xCu);
          MEMORY[0x277C61040](v606, -1, -1);

          sub_27472ECBC(&v674, &qword_280969280);
        }

        else
        {
          sub_27472ECBC(&v674, &qword_280969280);
        }

        (*(v629 + 8))(v602, v624);
        goto LABEL_316;
      }

      v566 = v630;
      MEMORY[0x277C5AFB0](v640, *&v638);
      v567 = sub_2749F9224();
      [v563 scrollToItemAtIndexPath:v567 atScrollPosition:4 animated:0];

      [v563 adjustedContentInset];
      v651 = v568;
      v570 = v569;
      v572 = v571;
      v574 = v573;
      v575 = [v562 view];
      v576 = v634;
      if (!v575)
      {
        goto LABEL_322;
      }

      v577 = v575;
      [v575 safeAreaInsets];
      v579 = v578;

      [v563 bounds];
      v581 = v580;
      v583 = v582;
      v585 = v584;
      v587 = v586;
      v588 = sub_2749F9224();
      v589 = [v563 layoutAttributesForItemAtIndexPath_];

      if (v589)
      {
        if (v572 > v579)
        {
          v590 = v572;
        }

        else
        {
          v590 = v579;
        }

        v591 = UIEdgeInsetsInsetRect(v581, v583, v585, v587, v651, v570, v590, v574);
        v593 = v592;
        [v589 frame];
        if (v593 < v594)
        {
          sub_2749FA3D4();
          v595 = sub_2749FA4D4();
          v596 = sub_2749FD2C4();
          if (os_log_type_enabled(v595, v596))
          {
            v597 = swift_slowAlloc();
            *v597 = 0;
            _os_log_impl(&dword_274719000, v595, v596, "Adding extra", v597, 2u);
            MEMORY[0x277C61040](v597, -1, -1);
          }

          (*(v629 + 8))(v622, v624);
          v598 = [v633 view];
          v576 = v634;
          if (!v598)
          {
            goto LABEL_323;
          }

          v599 = v598;
          [v598 safeAreaInsets];

          [v563 contentOffset];
          [v563 setContentOffset_];

          sub_27472ECBC(&v674, &qword_280969280);
          (*(v626 + 8))(v630, v627);
LABEL_316:
          OUTLINED_FUNCTION_14_5();
          v601 = v576;
          goto LABEL_317;
        }

        (*(v626 + 8))(v630, v627);
      }

      else
      {
        (*(v626 + 8))(v566, v627);
      }

      sub_27472ECBC(&v674, &qword_280969280);
      goto LABEL_316;
    }

    if (v46 >= *(v44 + 16))
    {
      break;
    }

    v50 = *(v44 + v49 + 32);
    v51 = *(v44 + v49 + 40);
    v52 = *(v44 + v49 + 48);
    v53 = *(v44 + v49 + 48);
    v54 = *(v44 + v49 + 56);
    v651 = *&v46;
    if ((v52 & 0x80000000) == 0)
    {
      v650 = v54;
      switch(v53)
      {
        case 1:
          v79 = v645;
          if (v645 != 1)
          {
            v133 = OUTLINED_FUNCTION_4_13();
            sub_2747CB3A4(v133, v134, v135);

            v121 = v49;
            OUTLINED_FUNCTION_36_5();
            sub_27477D408(v136, v137, v79);
            v138 = OUTLINED_FUNCTION_4_13();
            sub_2747CB3A4(v138, v139, v140);
            v141 = OUTLINED_FUNCTION_4_13();
            sub_2747CB3B0(v141, v142, v143);

            v130 = OUTLINED_FUNCTION_4_13();
            goto LABEL_43;
          }

          v635 = v53;
          if (v50 == v37 && v51 == v646)
          {
            v55 = v646;
            sub_2747CB3A4(v37, v646, 1u);

            v174 = OUTLINED_FUNCTION_18_11();
            sub_27477D408(v174, v175, v176);
            v177 = OUTLINED_FUNCTION_18_11();
            sub_2747CB3A4(v177, v178, v179);
            v180 = OUTLINED_FUNCTION_18_11();
            sub_27478C4DC(v180, v181, v182);
            v183 = OUTLINED_FUNCTION_18_11();
            goto LABEL_57;
          }

          v55 = v51;
          v81 = v49;
          OUTLINED_FUNCTION_42();
          v104 = sub_2749FDCC4();
          v105 = OUTLINED_FUNCTION_4_13();
          sub_2747CB3A4(v105, v106, v107);

          v108 = OUTLINED_FUNCTION_22_7();
          sub_27477D408(v108, v109, 1u);
          v110 = OUTLINED_FUNCTION_4_13();
          sub_2747CB3A4(v110, v111, v112);
          v113 = OUTLINED_FUNCTION_4_13();
          sub_27478C4DC(v113, v114, v115);
          v116 = OUTLINED_FUNCTION_22_7();
          sub_27478C4DC(v116, v117, 1u);
          if (v104)
          {
LABEL_54:
            v631 = v50;
            v612 = v37;
            v48 = v649;
            goto LABEL_58;
          }

          v96 = v50;
          v97 = v51;
          v98 = 1;
          goto LABEL_40;
        case 2:
          v79 = v645;
          if (v645 != 2)
          {
            v118 = OUTLINED_FUNCTION_5_14();
            sub_2747CB3A4(v118, v119, v120);

            v121 = v49;
            OUTLINED_FUNCTION_36_5();
            sub_27477D408(v122, v123, v79);
            v124 = OUTLINED_FUNCTION_5_14();
            sub_2747CB3A4(v124, v125, v126);
            v127 = OUTLINED_FUNCTION_5_14();
            sub_2747CB3B0(v127, v128, v129);

            v130 = OUTLINED_FUNCTION_5_14();
LABEL_43:
            sub_27478C4DC(v130, v131, v132);
            v144 = OUTLINED_FUNCTION_22_7();
            v49 = v121;
            v45 = sub_27478C4DC(v144, v145, v79);
            v44 = v639;
LABEL_44:
            v47 = v647;
            goto LABEL_48;
          }

          v635 = v53;
          if (v50 != v37 || v51 != v646)
          {
            v55 = v51;
            v81 = v49;
            OUTLINED_FUNCTION_42();
            v82 = sub_2749FDCC4();
            v83 = OUTLINED_FUNCTION_5_14();
            sub_2747CB3A4(v83, v84, v85);

            v86 = OUTLINED_FUNCTION_22_7();
            sub_27477D408(v86, v87, 2u);
            v88 = OUTLINED_FUNCTION_5_14();
            sub_2747CB3A4(v88, v89, v90);
            v91 = OUTLINED_FUNCTION_5_14();
            sub_27478C4DC(v91, v92, v93);
            v94 = OUTLINED_FUNCTION_22_7();
            sub_27478C4DC(v94, v95, 2u);
            if (v82)
            {
              goto LABEL_54;
            }

            v96 = v50;
            v97 = v51;
            v98 = 2;
LABEL_40:
            sub_2747CB3B0(v96, v97, v98);

            v48 = v649;
            v44 = v639;
            v49 = v81;
            goto LABEL_44;
          }

          v55 = v646;
          sub_2747CB3A4(v37, v646, 2u);

          v186 = OUTLINED_FUNCTION_19_6();
          sub_27477D408(v186, v187, v188);
          v189 = OUTLINED_FUNCTION_19_6();
          sub_2747CB3A4(v189, v190, v191);
          v192 = OUTLINED_FUNCTION_19_6();
          sub_27478C4DC(v192, v193, v194);
          v183 = OUTLINED_FUNCTION_19_6();
LABEL_57:
          sub_27478C4DC(v183, v184, v185);
          v612 = v37;
          v631 = v37;
LABEL_58:
          v47 = v647;
LABEL_61:
          v198 = v650[2];

          v199 = *&v198;
          v200 = 0;
          v201 = v634;
          v202 = v632;
          v638 = v199;
LABEL_62:
          v613 = v640;
          while (1)
          {
LABEL_63:
            if (v200 == *&v199)
            {
              v203 = 1;
              v200 = *&v199;
              v205 = v643;
              v204 = v644;
            }

            else
            {
              v204 = v644;
              if ((v200 & 0x8000000000000000) != 0)
              {
                goto LABEL_320;
              }

              if (v200 >= v650[2])
              {
                goto LABEL_321;
              }

              v206 = v636;
              v207 = v650 + ((*(v637 + 80) + 32) & ~*(v637 + 80)) + *(v637 + 72) * v200;
              v208 = *(v644 + 48);
              *v636 = v200;
              sub_2747E2C38(v207, v206 + v208);
              v209 = v206;
              v205 = v643;
              sub_2747E2C9C(v209, v643, &qword_280969250);
              v203 = 0;
              ++v200;
              v48 = v649;
            }

            __swift_storeEnumTagSinglePayload(v205, v203, 1, v204);
            sub_2747E2C9C(v205, v48, &qword_280969258);
            if (__swift_getEnumTagSinglePayload(v48, 1, v204) == 1)
            {
              sub_2747CB3B0(v631, v55, v635);
              v45 = swift_bridgeObjectRelease_n();
              v37 = v612;
              v166 = v613;
              goto LABEL_296;
            }

            v640 = *v48;
            sub_2747E2CFC(v48 + *(v204 + 48), v47, type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              break;
            }

            sub_2747E2D5C(v47, type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item);
            v199 = v638;
          }

          break;
        case 3:
          v635 = v53;
          v55 = v51;
          v631 = v50;
          v99 = OUTLINED_FUNCTION_42();
          sub_2747CB3A4(v99, v100, 3u);

          if (v50 | v51)
          {
            v101 = v646;
            v102 = v645;
            if (!v625)
            {
              v612 = v37;
              OUTLINED_FUNCTION_35_3();
              sub_27478C4DC(v170, v171, v172);
              v173 = 1;
LABEL_60:
              sub_27478C4DC(v173, 0, 3u);
              v48 = v649;
              goto LABEL_61;
            }
          }

          else
          {
            v101 = v646;
            v102 = v645;
            if (v621)
            {
              v612 = v37;
              OUTLINED_FUNCTION_35_3();
              sub_27478C4DC(v195, v196, v197);
              v173 = 0;
              goto LABEL_60;
            }
          }

          sub_27477D408(v37, v101, v102);
          OUTLINED_FUNCTION_35_3();
          sub_2747CB3B0(v146, v147, v148);

          OUTLINED_FUNCTION_35_3();
          sub_27478C4DC(v149, v150, v151);
          v45 = sub_27478C4DC(v37, v101, v102);
          v48 = v649;
LABEL_47:
          v44 = v639;
LABEL_48:
          v49 += 40;
          v46 = *&v651 + 1;
          goto LABEL_15;
        default:
          v635 = v53;
          v55 = v51;
          sub_2747CB3A4(v50, v51, 0);

          v56 = v645;
          if (!v645)
          {
            v631 = v50;
            v167 = OUTLINED_FUNCTION_27_5();
            sub_27478C4DC(v167, v168, v169);
            v612 = v37;
            sub_27478C4DC(v37, v646, 0);
            goto LABEL_61;
          }

          OUTLINED_FUNCTION_36_5();
          sub_27477D408(v57, v58, v56);
          v59 = OUTLINED_FUNCTION_27_5();
          sub_2747CB3B0(v59, v60, v61);

          v62 = OUTLINED_FUNCTION_27_5();
          sub_27478C4DC(v62, v63, v64);
          v65 = OUTLINED_FUNCTION_22_7();
          v45 = sub_27478C4DC(v65, v66, v56);
          goto LABEL_47;
      }

      v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968E90);
      sub_27478C4DC(*(v47 + *(v210 + 48)), *(v47 + *(v210 + 48) + 8), *(v47 + *(v210 + 48) + 16));
      sub_2747E2CFC(v47, v202, type metadata accessor for SmartShortcutPickerEntry);
      memcpy(v669, v202, 0xB9uLL);
      memcpy(v670, v201, 0xB9uLL);
      memcpy(v671, v202, 0xB9uLL);
      memcpy(v672, v201, sizeof(v672));
      memcpy(v673, v202, 0xB9uLL);
      switch(sub_274772AD0(v673))
      {
        case 1u:
          sub_274721C98(v673);
          OUTLINED_FUNCTION_29_6();
          OUTLINED_FUNCTION_0_18();
          sub_2747E2D5C(v202, v263);
          OUTLINED_FUNCTION_30_4();
          if (sub_274772AD0(v656) != 1)
          {
            sub_27472ECBC(v671, &unk_280969270);
            goto LABEL_123;
          }

          sub_274721C98(v656);
          sub_27472ECBC(v671, &unk_280969270);
          goto LABEL_289;
        case 2u:
          v219 = *sub_274721C98(v673);
          OUTLINED_FUNCTION_30_4();
          if (sub_274772AD0(v656) != 2)
          {
            OUTLINED_FUNCTION_29_6();
            v264 = OUTLINED_FUNCTION_24_7();
            goto LABEL_100;
          }

          v220 = *sub_274721C98(v656);
          OUTLINED_FUNCTION_29_6();
          v221 = OUTLINED_FUNCTION_24_7();
          sub_274772ADC(v221, v222);
          OUTLINED_FUNCTION_29_6();
          v223 = OUTLINED_FUNCTION_24_7();
          sub_274772ADC(v223, v224);
          v225 = [v219 identifier];
          v226 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          v228 = v227;

          v229 = [v220 identifier];
          v230 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          v202 = v231;

          if (v226 == v230 && v228 == v202)
          {

            sub_27472ECBC(v671, &unk_280969270);
            OUTLINED_FUNCTION_0_18();
            OUTLINED_FUNCTION_32_5(v554, v555);
            sub_274772BE8(v670);
            sub_274772BE8(v669);
            v47 = v647;
          }

          else
          {
            v233 = sub_2749FDCC4();

            sub_27472ECBC(v671, &unk_280969270);
            OUTLINED_FUNCTION_0_18();
            OUTLINED_FUNCTION_32_5(v234, v235);
            sub_274772BE8(v670);
            sub_274772BE8(v669);
            v47 = v647;
            if ((v233 & 1) == 0)
            {
              v201 = v634;
              goto LABEL_123;
            }
          }

          v201 = v634;
          goto LABEL_289;
        case 3u:
          v623 = sub_274721C98(v673);
          memcpy(v668, v670, 0xB9uLL);
          if (sub_274772AD0(v668) != 3)
          {
            OUTLINED_FUNCTION_26_4();
            v264 = OUTLINED_FUNCTION_13_10();
LABEL_100:
            sub_274772ADC(v264, v265);
            v266 = v671;
            v267 = &unk_280969270;
            goto LABEL_101;
          }

          v236 = sub_274721C98(v668);
          v238 = *v623;
          v237 = *(v623 + 8);
          v239 = *(v623 + 16);
          v240 = *(v623 + 24);
          v242 = *(v623 + 32);
          v241 = *(v623 + 40);
          v243 = *(v623 + 48);
          v244 = *v236;
          v245 = *(v236 + 8);
          v246 = *(v236 + 16);
          v247 = *(v236 + 24);
          v249 = *(v236 + 32);
          v248 = *(v236 + 40);
          v250 = *(v236 + 48);
          v659[0] = *v623;
          v659[1] = v237;
          v617 = v242;
          v618 = v239;
          v659[2] = v239;
          v619 = v246;
          v620 = v240;
          v659[3] = v240;
          v659[4] = v242;
          v615 = v248;
          v616 = v241;
          v659[5] = v241;
          v660 = v243;
          v661 = v244;
          v662 = v245;
          v663 = v246;
          v251 = v247;
          v664 = v247;
          v614 = v249;
          v665 = v249;
          v666 = v248;
          v667 = v250;
          if (v243)
          {
            if ((v250 & 1) == 0)
            {
              OUTLINED_FUNCTION_26_4();
              v293 = OUTLINED_FUNCTION_13_10();
              sub_274772ADC(v293, v294);
              v295 = OUTLINED_FUNCTION_1_22();
              sub_27477C094(v295, v296, v297, v298, v299, v300, 0);
              v286 = OUTLINED_FUNCTION_11_10();
              v292 = 1;
              goto LABEL_118;
            }

            v611 = v236;
            v610 = sub_2747949D8();
            OUTLINED_FUNCTION_26_4();
            v252 = OUTLINED_FUNCTION_13_10();
            sub_274772ADC(v252, v253);
            v254 = OUTLINED_FUNCTION_1_22();
            sub_27477C094(v254, v255, v256, v257, v258, v259, 1);
            v260 = v618;
            sub_27477C094(v238, v237, v618, v620, v617, v616, 1);
            if ((sub_2749FD604() & 1) == 0)
            {
              sub_27472ECBC(v671, &unk_280969270);
              sub_27472ECBC(v659, &unk_2809707D0);
              v202 = v632;
              goto LABEL_120;
            }

            if (v260)
            {
              v201 = v634;
              if (!v619)
              {

                sub_27472ECBC(v671, &unk_280969270);
                sub_27472ECBC(v659, &unk_2809707D0);
                goto LABEL_159;
              }

              if (v237 != v245 || v260 != v619)
              {
                v262 = sub_2749FDCC4();
                sub_27472ECBC(v659, &unk_2809707D0);
                if ((v262 & 1) == 0)
                {
                  goto LABEL_150;
                }

                goto LABEL_165;
              }

LABEL_164:
              sub_27472ECBC(v659, &unk_2809707D0);
              goto LABEL_165;
            }

            v361 = v619;

            sub_27472ECBC(v659, &unk_2809707D0);
            v201 = v634;
            if (v361)
            {
              goto LABEL_154;
            }
          }

          else
          {
            if (v250)
            {
              OUTLINED_FUNCTION_26_4();
              v278 = OUTLINED_FUNCTION_13_10();
              sub_274772ADC(v278, v279);
              v280 = OUTLINED_FUNCTION_1_22();
              sub_27477C094(v280, v281, v282, v283, v284, v285, 1);
              v286 = OUTLINED_FUNCTION_11_10();
              goto LABEL_116;
            }

            v611 = v236;
            v304 = v238 == v244 && v237 == v245;
            if (!v304 && (sub_2749FDCC4() & 1) == 0)
            {
              OUTLINED_FUNCTION_26_4();
              v347 = OUTLINED_FUNCTION_13_10();
              sub_274772ADC(v347, v348);
              v349 = OUTLINED_FUNCTION_1_22();
              sub_27477C094(v349, v350, v351, v352, v353, v354, 0);
              v355 = OUTLINED_FUNCTION_11_10();
              sub_27477C094(v355, v356, v357, v358, v359, v360, 0);
              sub_27472ECBC(v659, &unk_2809707D0);
              v301 = v671;
              v302 = &unk_280969270;
LABEL_119:
              sub_27472ECBC(v301, v302);
LABEL_120:
              v201 = v634;
LABEL_121:
              v303 = type metadata accessor for SmartShortcutPickerEntry;
LABEL_122:
              sub_2747E2D5C(v202, v303);
              goto LABEL_123;
            }

            v607 = v244;
            v608 = v245;
            v609 = v238;
            v610 = v237;
            if (v620)
            {
              v305 = v616;
              v306 = v614;
              if (!v251)
              {
                OUTLINED_FUNCTION_26_4();
                v362 = OUTLINED_FUNCTION_13_10();
                sub_274772ADC(v362, v363);
                sub_27477C094(v607, v608, v619, 0, v306, v615, 0);
                OUTLINED_FUNCTION_31_8(v609, v610, v618, v620, v617);

                sub_27472ECBC(v671, &unk_280969270);
                sub_27472ECBC(v659, &unk_2809707D0);
                goto LABEL_162;
              }

              v307 = v251;
              v308 = v618 == v619 && v620 == v251;
              v309 = v617;
              v310 = v615;
              if (!v308 && (sub_2749FDCC4() & 1) == 0)
              {
                OUTLINED_FUNCTION_26_4();
                v311 = OUTLINED_FUNCTION_13_10();
                sub_274772ADC(v311, v312);
                v313 = OUTLINED_FUNCTION_3_26();
                OUTLINED_FUNCTION_38_3(v313, v314, v315, v316, v317);
                v286 = OUTLINED_FUNCTION_2_19();
                v291 = v305;
LABEL_116:
                v292 = 0;
LABEL_118:
                sub_27477C094(v286, v287, v288, v289, v290, v291, v292);
                sub_27472ECBC(v671, &unk_280969270);
                v301 = v659;
                v302 = &unk_2809707D0;
                goto LABEL_119;
              }
            }

            else
            {
              v305 = v616;
              v309 = v617;
              v307 = v251;
              v306 = v614;
              v310 = v615;
              if (v307)
              {
                OUTLINED_FUNCTION_26_4();
                v324 = OUTLINED_FUNCTION_13_10();
                sub_274772ADC(v324, v325);
                v326 = OUTLINED_FUNCTION_3_26();
                OUTLINED_FUNCTION_38_3(v326, v327, v328, v329, v330);
                OUTLINED_FUNCTION_31_8(v609, v610, v618, 0, v309);

                sub_27472ECBC(v671, &unk_280969270);
                sub_27472ECBC(v659, &unk_2809707D0);
LABEL_162:

                goto LABEL_120;
              }
            }

            if (v305)
            {
              if (!v310)
              {
                OUTLINED_FUNCTION_26_4();
                v376 = OUTLINED_FUNCTION_13_10();
                sub_274772ADC(v376, v377);
                v378 = OUTLINED_FUNCTION_3_26();
                sub_27477C094(v378, v379, v380, v381, v382, 0, 0);
                v383 = OUTLINED_FUNCTION_2_19();
                OUTLINED_FUNCTION_31_8(v383, v384, v385, v386, v387);

                sub_27472ECBC(v671, &unk_280969270);
                sub_27472ECBC(v659, &unk_2809707D0);
                goto LABEL_162;
              }

              if (v309 == v306 && v305 == v310)
              {
                OUTLINED_FUNCTION_26_4();
                v388 = OUTLINED_FUNCTION_13_10();
                sub_274772ADC(v388, v389);
                OUTLINED_FUNCTION_31_8(v607, v608, v619, v307, v309);
                v390 = OUTLINED_FUNCTION_2_19();
                OUTLINED_FUNCTION_31_8(v390, v391, v392, v393, v394);
                v201 = v634;
                goto LABEL_164;
              }

              v332 = sub_2749FDCC4();
              OUTLINED_FUNCTION_26_4();
              v333 = OUTLINED_FUNCTION_13_10();
              sub_274772ADC(v333, v334);
              v335 = OUTLINED_FUNCTION_3_26();
              OUTLINED_FUNCTION_38_3(v335, v336, v337, v338, v339);
              v340 = OUTLINED_FUNCTION_2_19();
              OUTLINED_FUNCTION_31_8(v340, v341, v342, v343, v344);
              sub_27472ECBC(v659, &unk_2809707D0);
              v201 = v634;
              if ((v332 & 1) == 0)
              {
LABEL_150:
                v345 = v671;
                v346 = &unk_280969270;
                goto LABEL_151;
              }
            }

            else
            {
              OUTLINED_FUNCTION_26_4();
              v364 = OUTLINED_FUNCTION_13_10();
              sub_274772ADC(v364, v365);
              v366 = OUTLINED_FUNCTION_3_26();
              OUTLINED_FUNCTION_38_3(v366, v367, v368, v369, v370);
              v371 = OUTLINED_FUNCTION_2_19();
              sub_27477C094(v371, v372, v373, v374, v375, 0, 0);

              sub_27472ECBC(v659, &unk_2809707D0);
              v201 = v634;
              if (v310)
              {
LABEL_154:
                sub_27472ECBC(v671, &unk_280969270);
LABEL_159:

                goto LABEL_160;
              }
            }
          }

LABEL_165:
          memcpy(v656, (v623 + 56), 0x81uLL);
          memcpy(v657, (v611 + 56), sizeof(v657));
          memcpy(v658, (v623 + 56), 0x81uLL);
          v395 = sub_274772C3C(v658);
          if (!v395)
          {
            CGSizeMake(v658);
            v416 = *v415;
            v202 = v415[1];
            v417 = v415[2];
            memcpy(v655, (v611 + 56), 0x81uLL);
            if (!sub_274772C3C(v655))
            {
              CGSizeMake(v655);
              v47 = v477[2];
              v478 = v416 == *v477 && v202 == v477[1];
              if (v478 || (sub_2749FDCC4() & 1) != 0)
              {
                v479 = v417[2];
                if (v479 != v47[2])
                {
                  v491 = OUTLINED_FUNCTION_12_11();
                  sub_274772B38(v491, v654);
                  OUTLINED_FUNCTION_8_11();
LABEL_251:
                  sub_27472ECBC(v671, &unk_280969270);
                  sub_27472ECBC(v656, &qword_280970170);
                  v201 = v634;
                  v202 = v632;
                  v47 = v647;
                  goto LABEL_121;
                }

                if (!v479 || v417 == v47)
                {
                  sub_274772B38(v611 + 56, v654);
                  OUTLINED_FUNCTION_8_11();
                  sub_27472ECBC(v671, &unk_280969270);
                  sub_27472ECBC(v656, &qword_280970170);
                  v201 = v634;
                  v202 = v632;
                  v47 = v647;
                  goto LABEL_294;
                }

                v480 = (v417 + 4);
                v481 = (v47 + 4);
                sub_274772B38(v611 + 56, v654);
                OUTLINED_FUNCTION_8_11();
                v482 = v479 - 1;
                OUTLINED_FUNCTION_33_5();
                while (2)
                {
                  memcpy(v653, v480, sizeof(v653));
                  memcpy(v654, v481, 0x58uLL);
                  v483 = v653[0] == v654[0] && v653[1] == v654[1];
                  if (!v483 && (sub_2749FDCC4() & 1) == 0)
                  {
                    goto LABEL_280;
                  }

                  v484 = v653[2] == v654[2] && v653[3] == v654[3];
                  if (!v484 && (sub_2749FDCC4() & 1) == 0)
                  {
                    goto LABEL_280;
                  }

                  v485 = v653[5];
                  if (!v653[5])
                  {
                    if (v654[5])
                    {
                      goto LABEL_280;
                    }

                    sub_27478C42C(v653, v652);
                    sub_27478C42C(v654, v652);
                    goto LABEL_239;
                  }

                  v619 = v482;
                  v620 = v481;
                  v623 = v480;
                  v486 = v654[8];
                  v47 = v653[8];
                  v487 = v653[4];
                  v201 = v654[5];
                  sub_27478C42C(v653, v652);
                  sub_27478C42C(v654, v652);
                  sub_274772C44(v487, v485);

                  if (!v201)
                  {
                    swift_unknownObjectRelease();
                    sub_27478C488(v654);
                    sub_27478C488(v653);
                    goto LABEL_251;
                  }

                  swift_unknownObjectRetain();

                  v488 = [v47 isEqual_];
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  OUTLINED_FUNCTION_33_5();
                  v480 = v623;
                  v482 = v619;
                  v481 = v620;
                  if ((v488 & 1) == 0)
                  {
                    sub_27478C488(v654);
                    sub_27478C488(v653);
LABEL_280:
                    sub_27472ECBC(v671, &unk_280969270);
                    v345 = v656;
                    v346 = &qword_280970170;
LABEL_151:
                    sub_27472ECBC(v345, v346);
LABEL_160:
                    v202 = v632;
                    goto LABEL_121;
                  }

LABEL_239:
                  if (v653[9] == v654[9] && v653[10] == v654[10])
                  {
                    sub_27478C488(v654);
                    sub_27478C488(v653);
                    v202 = v632;
                  }

                  else
                  {
                    v490 = sub_2749FDCC4();
                    sub_27478C488(v654);
                    sub_27478C488(v653);
                    v202 = v632;
                    if ((v490 & 1) == 0)
                    {
                      sub_27472ECBC(v671, &unk_280969270);
                      v266 = v656;
                      v267 = &qword_280970170;
LABEL_101:
                      sub_27472ECBC(v266, v267);
                      goto LABEL_121;
                    }
                  }

                  if (v482)
                  {
                    --v482;
                    v480 += 88;
                    v481 += 88;
                    continue;
                  }

                  break;
                }

                sub_27472ECBC(v671, &unk_280969270);
                sub_27472ECBC(v656, &qword_280970170);
LABEL_294:
                OUTLINED_FUNCTION_0_18();
                sub_2747E2D5C(v202, v561);
LABEL_289:
                v199 = v638;
LABEL_290:
                v48 = v649;
                goto LABEL_62;
              }
            }

            v418 = OUTLINED_FUNCTION_12_11();
            sub_274772B38(v418, v654);
            OUTLINED_FUNCTION_8_11();
            sub_27472ECBC(v671, &unk_280969270);
            v320 = v656;
            v321 = &qword_280970170;
LABEL_139:
            sub_27472ECBC(v320, v321);
            OUTLINED_FUNCTION_0_18();
            OUTLINED_FUNCTION_32_5(v322, v323);
            v201 = v634;
            goto LABEL_76;
          }

          if (v395 == 1)
          {
            CGSizeMake(v658);
            v397 = v396;
            v398 = v611;
            memcpy(v655, (v611 + 56), 0x81uLL);
            if (sub_274772C3C(v655) == 1)
            {
              CGSizeMake(v655);
              v400 = v399;
              v402 = v397[2];
              v401 = v397[3];
              v403 = v399[2];
              v404 = v399[3];
              v405 = *v397 == *v399 && v397[1] == v399[1];
              if (v405 || (sub_2749FDCC4() & 1) != 0)
              {
                v406 = v402 == v403 && v401 == v404;
                if (v406 || (sub_2749FDCC4() & 1) != 0)
                {
                  v407 = v397[4] == v400[4] && v397[5] == v400[5];
                  if (!v407 && (sub_2749FDCC4() & 1) == 0 || (v397[6] == v400[6] ? (v408 = v397[7] == v400[7]) : (v408 = 0), !v408 && (sub_2749FDCC4() & 1) == 0))
                  {
LABEL_259:
                    v511 = OUTLINED_FUNCTION_12_11();
                    sub_274772B38(v511, v654);
                    OUTLINED_FUNCTION_8_11();
LABEL_260:
                    sub_27472ECBC(v671, &unk_280969270);
LABEL_261:
                    v47 = v647;
LABEL_262:
                    sub_27472ECBC(v656, &qword_280970170);
                    OUTLINED_FUNCTION_0_18();
                    v202 = v632;
                    goto LABEL_122;
                  }

                  v202 = v397[9];
                  v409 = v400[9];
                  if (v202)
                  {
                    v410 = v397[12];
                    v411 = v397[10];
                    v619 = v400[12];
                    v620 = v411;
                    v412 = v397[8];
                    v413 = OUTLINED_FUNCTION_12_11();
                    sub_274772B38(v413, v654);
                    OUTLINED_FUNCTION_8_11();
                    sub_274772C44(v412, v202);

                    if (!v409)
                    {
                      sub_27472ECBC(v671, &unk_280969270);
                      swift_unknownObjectRelease();
                      v201 = v634;
                      goto LABEL_261;
                    }

                    v414 = v619;
                    swift_unknownObjectRetain();

                    v202 = [v410 isEqual_];
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    v201 = v634;
                    if ((v202 & 1) == 0)
                    {
                      goto LABEL_260;
                    }
                  }

                  else
                  {
                    if (v409)
                    {
                      goto LABEL_259;
                    }

                    v528 = OUTLINED_FUNCTION_12_11();
                    sub_274772B38(v528, v654);
                    OUTLINED_FUNCTION_8_11();
                  }

                  v529 = v397[13] == v400[13] && v397[14] == v400[14];
                  v47 = v647;
                  if (!v529 && (sub_2749FDCC4() & 1) == 0)
                  {
                    sub_27472ECBC(v671, &unk_280969270);
                    goto LABEL_262;
                  }

                  v273 = sub_2747843DC(v397[15], v400[15]);
                  sub_27472ECBC(v671, &unk_280969270);
                  sub_27472ECBC(v656, &qword_280970170);
                  OUTLINED_FUNCTION_0_18();
                  OUTLINED_FUNCTION_32_5(v530, v531);
LABEL_112:
                  v199 = v638;
                  if (v273)
                  {
                    goto LABEL_290;
                  }

                  goto LABEL_124;
                }
              }

              v473 = OUTLINED_FUNCTION_12_11();
            }

            else
            {
              v473 = v398 + 56;
            }

            sub_274772B38(v473, v654);
            OUTLINED_FUNCTION_8_11();
            sub_27472ECBC(v671, &unk_280969270);
            v216 = v656;
            v217 = &qword_280970170;
LABEL_74:
            sub_27472ECBC(v216, v217);
            OUTLINED_FUNCTION_0_18();
            v202 = v632;
            goto LABEL_75;
          }

          CGSizeMake(v658);
          v421 = *v419;
          v420 = v419[1];
          v423 = v419[2];
          v422 = v419[3];
          v424 = v419[5];
          v618 = v419[4];
          v620 = v424;
          LODWORD(v619) = *(v419 + 48);
          v425 = v611;
          memcpy(v655, (v611 + 56), 0x81uLL);
          v426 = sub_274772C3C(v655);
          v202 = v632;
          if (v426 == 2)
          {
            v611 = v425;
            CGSizeMake(v655);
            v428 = *v427;
            v429 = v427[1];
            v430 = v427[2];
            v431 = v427[3];
            v432 = v427[4];
            v616 = v427[5];
            v617 = v432;
            v433 = *(v427 + 48);
            v434 = v421 == v428 && v420 == v429;
            if (v434 || (v435 = v430, v436 = v431, v437 = sub_2749FDCC4(), v431 = v436, v430 = v435, (v437 & 1) != 0))
            {
              v438 = v423 == v430 && v422 == v431;
              if (v438 || (sub_2749FDCC4() & 1) != 0)
              {
                v47 = v647;
                if (v619)
                {
                  v439 = v617;
                  if (v619 == 1)
                  {
                    if (v433 == 1)
                    {
                      v619 = sub_2747949D8();
                      v440 = OUTLINED_FUNCTION_6_10();
                      sub_2747E2DB4(v440, v441, v442);
                      v443 = OUTLINED_FUNCTION_16_7();
                      sub_2747E2DB4(v443, v444, 1);
                      v445 = OUTLINED_FUNCTION_6_10();
                      sub_2747E2DB4(v445, v446, v447);
                      v448 = OUTLINED_FUNCTION_20_9();
                      sub_2747E2DB4(v448, v449, v450);
                      v451 = OUTLINED_FUNCTION_12_11();
                      sub_274772B38(v451, v654);
                      OUTLINED_FUNCTION_8_11();
                      v452 = OUTLINED_FUNCTION_6_10();
                      sub_2747E2DB4(v452, v453, v454);
                      v455 = OUTLINED_FUNCTION_20_9();
                      sub_2747E2DB4(v455, v456, v457);
                      LODWORD(v623) = sub_2749FD604();
                      v458 = OUTLINED_FUNCTION_6_10();
                      sub_2747D2EB8(v458, v459, v460);
                      sub_2747D2EB8(v439, v616, 1);
                      sub_27472ECBC(v656, &qword_280970170);
                      sub_27472ECBC(v671, &unk_280969270);
                      v461 = OUTLINED_FUNCTION_20_9();
                      sub_2747D2EB8(v461, v462, v463);
                      v464 = OUTLINED_FUNCTION_6_10();
                      sub_2747D2EB8(v464, v465, v466);
                      v467 = OUTLINED_FUNCTION_20_9();
                      sub_2747D2EB8(v467, v468, v469);
                      v470 = OUTLINED_FUNCTION_6_10();
                      sub_2747D2EB8(v470, v471, v472);
                      if (v623)
                      {
                        goto LABEL_294;
                      }

                      goto LABEL_121;
                    }

                    v493 = v618;
                    v512 = OUTLINED_FUNCTION_6_10();
                    sub_2747E2DB4(v512, v513, v514);
                    v515 = OUTLINED_FUNCTION_16_7();
                    sub_2747E2DB4(v515, v516, v433);
                    v517 = OUTLINED_FUNCTION_12_11();
                    sub_274772B38(v517, v654);
                    OUTLINED_FUNCTION_8_11();
                    sub_2747E2DB4(v493, v620, 1);
                    v518 = OUTLINED_FUNCTION_17_5();
                    sub_2747E2DB4(v518, v519, v520);
                    sub_27472ECBC(v656, &qword_280970170);
                    sub_27472ECBC(v671, &unk_280969270);
                    v521 = OUTLINED_FUNCTION_17_5();
                    sub_2747D2EB8(v521, v522, v523);
                    sub_2747D2EB8(v493, v620, 1);
                  }

                  else
                  {
                    if (v433 == 2)
                    {
                      v560 = OUTLINED_FUNCTION_12_11();
                      sub_274772B38(v560, v654);
                      OUTLINED_FUNCTION_8_11();
                      sub_27472ECBC(v656, &qword_280970170);
                      sub_27472ECBC(v671, &unk_280969270);
                      sub_2747D2EB8(v618, v620, 2);
                      sub_2747D2EB8(v439, v616, 2);
                      goto LABEL_294;
                    }

                    v506 = OUTLINED_FUNCTION_16_7();
                    sub_2747E2DB4(v506, v507, v433);
                    v508 = OUTLINED_FUNCTION_12_11();
                    v509 = v439;
                    v510 = v617;
                    sub_274772B38(v508, v654);
                    OUTLINED_FUNCTION_8_11();
                    sub_2747E2DB4(v510, v509, v433);
                    sub_27472ECBC(v656, &qword_280970170);
                    sub_27472ECBC(v671, &unk_280969270);
                    sub_2747D2EB8(v510, v509, v433);
                    v493 = v618;
                  }

                  v504 = v620;
                }

                else
                {
                  v492 = v617;
                  if (!v433)
                  {
                    if (v618 == v617 && v620 == v616)
                    {
                      LODWORD(v619) = 1;
                    }

                    else
                    {
                      LODWORD(v619) = sub_2749FDCC4();
                    }

                    sub_2747E2DB4(v618, v620, 0);
                    v532 = OUTLINED_FUNCTION_15_8();
                    sub_2747E2DB4(v532, v533, v534);
                    v535 = OUTLINED_FUNCTION_12_11();
                    sub_274772B38(v535, v654);
                    OUTLINED_FUNCTION_8_11();
                    v536 = OUTLINED_FUNCTION_28_5();
                    sub_2747E2DB4(v536, v537, v538);
                    v539 = OUTLINED_FUNCTION_15_8();
                    sub_2747E2DB4(v539, v540, v541);
                    sub_27472ECBC(v656, &qword_280970170);
                    sub_27472ECBC(v671, &unk_280969270);
                    v542 = OUTLINED_FUNCTION_15_8();
                    sub_2747D2EB8(v542, v543, v544);
                    v545 = OUTLINED_FUNCTION_28_5();
                    sub_2747D2EB8(v545, v546, v547);
                    v548 = OUTLINED_FUNCTION_28_5();
                    sub_2747D2EB8(v548, v549, v550);
                    v551 = OUTLINED_FUNCTION_15_8();
                    sub_2747D2EB8(v551, v552, v553);
                    if (v619)
                    {
                      goto LABEL_294;
                    }

                    goto LABEL_121;
                  }

                  v493 = v618;
                  v494 = v620;
                  sub_2747E2DB4(v618, v620, 0);
                  v495 = OUTLINED_FUNCTION_16_7();
                  sub_2747E2DB4(v495, v496, v433);
                  v497 = OUTLINED_FUNCTION_12_11();
                  LODWORD(v640) = v433;
                  v498 = v492;
                  v499 = v617;
                  sub_274772B38(v497, v654);
                  OUTLINED_FUNCTION_8_11();
                  sub_2747E2DB4(v493, v494, 0);
                  sub_2747E2DB4(v499, v498, v640);
                  sub_27472ECBC(v656, &qword_280970170);
                  sub_27472ECBC(v671, &unk_280969270);
                  v500 = OUTLINED_FUNCTION_17_5();
                  sub_2747D2EB8(v500, v501, v502);
                  v503 = v620;
                  sub_2747D2EB8(v493, v620, 0);
                  v504 = v503;
                }

                sub_2747D2EB8(v493, v504, v619);
                v524 = OUTLINED_FUNCTION_17_5();
                sub_2747D2EB8(v524, v525, v526);
                goto LABEL_121;
              }

              v505 = OUTLINED_FUNCTION_12_11();
              sub_274772B38(v505, v654);
              OUTLINED_FUNCTION_8_11();
              sub_27472ECBC(v656, &qword_280970170);
              v475 = v671;
              v476 = &unk_280969270;
              goto LABEL_213;
            }

            v474 = OUTLINED_FUNCTION_12_11();
          }

          else
          {
            v474 = v425 + 56;
          }

          sub_274772B38(v474, v654);
          OUTLINED_FUNCTION_8_11();
          sub_27472ECBC(v671, &unk_280969270);
          v475 = v656;
          v476 = &qword_280970170;
LABEL_213:
          sub_27472ECBC(v475, v476);
          OUTLINED_FUNCTION_0_18();
LABEL_75:
          sub_2747E2D5C(v202, v218);
LABEL_76:
          v47 = v647;
LABEL_123:
          v199 = v638;
LABEL_124:
          v48 = v649;
          goto LABEL_63;
        default:
          v211 = sub_274721C98(v673);
          v212 = *v211;
          v202 = v211[1];
          v213 = v211[2];
          v47 = v211[3];
          OUTLINED_FUNCTION_30_4();
          if (sub_274772AD0(v656))
          {
            OUTLINED_FUNCTION_29_6();
            v214 = OUTLINED_FUNCTION_24_7();
            sub_274772ADC(v214, v215);
            v216 = v671;
            v217 = &unk_280969270;
            goto LABEL_74;
          }

          v268 = sub_274721C98(v656);
          v269 = v268[2];
          v270 = v268[3];
          v271 = v212 == *v268 && v202 == v268[1];
          if (!v271 && (sub_2749FDCC4() & 1) == 0)
          {
            OUTLINED_FUNCTION_29_6();
            v318 = OUTLINED_FUNCTION_24_7();
            sub_274772ADC(v318, v319);
            v320 = v671;
            v321 = &unk_280969270;
            goto LABEL_139;
          }

          if (v213 != v269 || v47 != v270)
          {
            v273 = sub_2749FDCC4();
            OUTLINED_FUNCTION_29_6();
            v274 = OUTLINED_FUNCTION_24_7();
            sub_274772ADC(v274, v275);
            sub_27472ECBC(v671, &unk_280969270);
            OUTLINED_FUNCTION_0_18();
            OUTLINED_FUNCTION_32_5(v276, v277);
            OUTLINED_FUNCTION_33_5();
            goto LABEL_112;
          }

          OUTLINED_FUNCTION_29_6();
          v556 = OUTLINED_FUNCTION_24_7();
          sub_274772ADC(v556, v557);
          sub_27472ECBC(v671, &unk_280969270);
          OUTLINED_FUNCTION_0_18();
          OUTLINED_FUNCTION_32_5(v558, v559);
          OUTLINED_FUNCTION_33_5();
          goto LABEL_289;
      }
    }

    v67 = v49;
    v650 = &v607;
    v68 = v37;
    *&v671[0] = v37;
    *(&v671[0] + 1) = v646;
    LOBYTE(v671[1]) = v645;
    MEMORY[0x28223BE20](v45);
    *(&v607 - 2) = v671;
    v69 = OUTLINED_FUNCTION_42();
    sub_2747CB3A4(v69, v70, v53);

    v71 = OUTLINED_FUNCTION_42();
    sub_2747CB3A4(v71, v72, v53);
    v73 = v641;
    v74 = sub_274947E70();
    v641 = v73;
    if (!v74)
    {
      v75 = OUTLINED_FUNCTION_42();
      sub_2747CB3B0(v75, v76, v53);

      v77 = OUTLINED_FUNCTION_42();
      v45 = sub_2747CB3B0(v77, v78, v53);
      v48 = v649;
      v37 = v68;
      v49 = v67;
      v47 = v647;
      goto LABEL_48;
    }

    v37 = v68;
    OUTLINED_FUNCTION_36_5();
    v152 = v645;
    sub_27477D408(v153, v154, v645);
    v155 = OUTLINED_FUNCTION_22_7();
    v157 = sub_27484F734(v155, v156, v152, v50);
    v159 = v158;
    v160 = OUTLINED_FUNCTION_42();
    sub_2747CB3B0(v160, v161, v53);

    v162 = OUTLINED_FUNCTION_22_7();
    sub_27478C4DC(v162, v163, v152);
    v164 = OUTLINED_FUNCTION_42();
    v45 = sub_2747CB3B0(v164, v165, v53);
    if (v159)
    {
      v166 = 0;
    }

    else
    {
      v166 = v157;
    }

    v47 = v647;
    v48 = v649;
LABEL_296:
    v638 = v651;
    LODWORD(v623) = 1;
    v640 = v166;
    v46 = *&v651 + 1;
    v44 = v639;
  }

  __break(1u);
LABEL_320:
  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
LABEL_323:
  __break(1u);
}

uint64_t sub_2747E281C()
{
  if (*(v0 + OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_style + 88) != 1)
  {
    return 0;
  }

  if (_UISolariumEnabled())
  {
    return 0;
  }

  return 2;
}

id SmartShortcutPickerBaseViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2749FCD64();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_2747E2930(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2747F94FC;
  v6[3] = &block_descriptor_49;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithSectionProvider_];
  _Block_release(v3);

  return v4;
}

uint64_t sub_2747E2A40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2747E2AF4;

  return sub_2747DF024(a1, v4, v5, v6);
}

uint64_t sub_2747E2AF4()
{

  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t sub_2747E2C38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2747E2C9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_9();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2747E2CFC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2747E2D5C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

id sub_2747E2DB4(id result, id a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

id OUTLINED_FUNCTION_38_3(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_27477C094(a1, a2, a3, a4, a5, v5, 0);
}

uint64_t sub_2747E2E30()
{
  type metadata accessor for WFGridSectionContainerView();
  result = sub_2749F95A4();
  if (v1 <= 0x3F)
  {
    sub_2749FD014();
    result = sub_2749F95A4();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2747E2F84()
{
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_15_0();
}

uint64_t sub_2747E2FD4()
{
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_15_0();
}

uint64_t sub_2747E3024@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  swift_beginAccess();
  type metadata accessor for WFGridSectionContainerView();
  sub_2749F95A4();
  OUTLINED_FUNCTION_9();
  return (*(v4 + 16))(a1, &v1[v3]);
}

uint64_t sub_2747E3100()
{
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_15_0();
}

uint64_t sub_2747E3150@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_59_2();
  v5 = *((v4 & v3) + 0x98);
  swift_beginAccess();
  OUTLINED_FUNCTION_17_6();
  type metadata accessor for WFSectionedItemsSnapshot();
  OUTLINED_FUNCTION_9();
  return (*(v6 + 16))(a1, v1 + v5);
}

uint64_t sub_2747E32F8()
{
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_15_0();
}

id sub_2747E33E4(double a1, double a2, double a3, double a4)
{
  v9 = MEMORY[0x277D85000];
  OUTLINED_FUNCTION_59_2();
  v11 = MEMORY[0x277D84F98];
  *(v4 + *(v10 + 112)) = MEMORY[0x277D84F98];
  v12 = *((*v9 & *v4) + 0x78);
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_54_4();
  type metadata accessor for WFGridView.CellRegistrationEntry();
  *(v4 + v12) = sub_2749FCC84();
  OUTLINED_FUNCTION_7_9();
  *(v4 + *(v13 + 128)) = v11;
  OUTLINED_FUNCTION_7_9();
  type metadata accessor for WFGridSectionContainerView();
  sub_2749F9594();
  OUTLINED_FUNCTION_7_9();
  v15 = *(v14 + 144);
  type metadata accessor for WFDrawerSearchControlsView();
  *(v4 + v15) = sub_2749FCC74();
  OUTLINED_FUNCTION_7_9();
  sub_2747CA960();
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_98_1(*(v16 + 160));
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_98_1(*(v17 + 168));
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_98_1(*(v18 + 176));
  OUTLINED_FUNCTION_7_9();
  v20 = *(v19 + 184);
  sub_2749F9284();
  OUTLINED_FUNCTION_38_4();
  *(v4 + v20) = sub_2749FCC74();
  OUTLINED_FUNCTION_7_9();
  v22 = *(v21 + 192);
  *(v4 + v22) = [objc_allocWithZone(MEMORY[0x277D75B80]) init];
  OUTLINED_FUNCTION_7_9();
  *(v4 + *(v23 + 200)) = 0;
  OUTLINED_FUNCTION_7_9();
  *(v4 + *(v24 + 208)) = 0;
  OUTLINED_FUNCTION_7_9();
  *(v4 + *(v25 + 216)) = 0;
  OUTLINED_FUNCTION_54_4();
  v28.receiver = v4;
  v28.super_class = type metadata accessor for WFGridView();
  v26 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  [v26 setDelegate_];
  return v26;
}

void sub_2747E36B0()
{
  OUTLINED_FUNCTION_17_6();
  v1.receiver = v0;
  v1.super_class = type metadata accessor for WFGridView();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  sub_2747E48DC();
  sub_2747E3D44();
}

void sub_2747E3728(void *a1)
{
  v1 = a1;
  sub_2747E36B0();
}

uint64_t sub_2747E3770@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v44 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_1();
  v47 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v46 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0);
  OUTLINED_FUNCTION_34(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v45 = &v44 - v12;
  v48 = v3;
  v13 = sub_2747E2F84();
  v14 = v13 + 64;
  OUTLINED_FUNCTION_22_8();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;

  v21 = 0;
  if (v17)
  {
    while (1)
    {
      v22 = v21;
LABEL_6:
      v23 = __clz(__rbit64(v17)) | (v22 << 6);
      v24 = *(v13 + 48);
      sub_2749F9284();
      OUTLINED_FUNCTION_9();
      v26 = v46;
      (*(v25 + 16))(v46, v24 + *(v25 + 72) * v23);
      v27 = v13;
      v28 = *(*(v13 + 56) + 8 * v23);
      v29 = v49;
      *(v26 + *(v49 + 48)) = v28;
      v30 = v47;
      sub_2747E2C9C(v26, v47, &qword_280968420);
      v31 = *(v30 + *(v29 + 48));
      v32 = v28;
      if (sub_2747E3AAC(v30, v31, v48, a2, a3))
      {
        break;
      }

      v17 &= v17 - 1;
      result = sub_27472ECBC(v30, &qword_280968420);
      v21 = v22;
      v13 = v27;
      if (!v17)
      {
        goto LABEL_3;
      }
    }

    v33 = v45;
    sub_2747E2C9C(v30, v45, &qword_280968420);
    v34 = v33;
    v35 = 0;
LABEL_10:
    v36 = v49;
    __swift_storeEnumTagSinglePayload(v34, v35, 1, v49);

    OUTLINED_FUNCTION_14_6(v33);
    if (v37)
    {
      sub_27472ECBC(v33, &unk_280968DD0);
      v43 = sub_2749F9284();
      v40 = v44;
      v41 = 1;
      v42 = 1;
    }

    else
    {

      v38 = sub_2749F9284();
      OUTLINED_FUNCTION_9();
      (*(v39 + 32))(v44, v33, v38);
      OUTLINED_FUNCTION_143();
      v43 = v38;
    }

    return __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        v33 = v45;
        v34 = v45;
        v35 = 1;
        goto LABEL_10;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_2747E3AAC(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  v29[1] = a1;
  v30 = a2;
  v8 = *((*MEMORY[0x277D85000] & *a3) + 0x50);
  type metadata accessor for WFGridSectionContainerView();
  v29[0] = v8;
  v9 = sub_2749F95A4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v29 - v15;
  v17 = *(v8 - 8);
  MEMORY[0x28223BE20](v14);
  v19 = v29 - v18;
  sub_2747E3024(v16);
  sub_2749F9524();
  v20 = *(v10 + 8);
  v20(v16, v9);
  sub_2749F9274();
  v21 = v29[0];
  sub_2749FD024();

  sub_2747E3024(v13);
  sub_2749F95D4();
  v20(v13, v9);
  v22 = v31;
  [a3 convertPoint:v31 toView:{a4, a5}];
  v24 = v23;
  v26 = v25;

  [v30 frame];
  v32.x = v24;
  v32.y = v26;
  v27 = CGRectContainsPoint(v33, v32);
  (*(v17 + 8))(v19, v21);
  return v27;
}

void sub_2747E3D44()
{
  v1 = sub_2747E3348();
  [v0 addGestureRecognizer_];

  v2 = sub_2747E3348();
  [v2 addTarget:v0 action:sel_handleTap_];
}

void sub_2747E3DBC()
{
  OUTLINED_FUNCTION_48();
  v2 = v0;
  v4 = v3;
  v5 = *v2;
  v6 = *MEMORY[0x277D85000];
  v7 = *MEMORY[0x277D85000] & *v2;
  sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  v110 = v9;
  v111 = v8;
  MEMORY[0x28223BE20](v8);
  v109 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2749F9284();
  v12 = *((v6 & v5) + 0x58);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v98 = sub_2749FD6C4();
  OUTLINED_FUNCTION_43();
  v97 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v16);
  OUTLINED_FUNCTION_3_0();
  v106 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15();
  v107 = v21;
  v22 = *((v6 & v5) + 0x50);
  OUTLINED_FUNCTION_3_0();
  v112 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15();
  v113 = v26;
  *&v27 = v22;
  *(&v27 + 1) = v12;
  v114 = *(v7 + 96);
  v118 = v27;
  v119 = v114;
  v28 = type metadata accessor for WFSectionedItemsSnapshot();
  v29 = OUTLINED_FUNCTION_34(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_1();
  v108 = v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v89 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969498);
  OUTLINED_FUNCTION_34(v34);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_26_5();
  OUTLINED_FUNCTION_3_0();
  v37 = v36;
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v89 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = &v89 - v42;
  [v4 locationInView_];
  sub_2747E3770(v1, v44, v45);
  if (__swift_getEnumTagSinglePayload(v1, 1, v11) == 1)
  {
    sub_27472ECBC(v1, &qword_280969498);
  }

  else
  {
    v94 = v41;
    v102 = v37;
    v46 = *(v37 + 32);
    v104 = v11;
    v93 = v37 + 32;
    v92 = v46;
    v46(v43, v1, v11);
    sub_2747E3150(v33);
    v96 = v12;
    sub_2749FD014();
    v95 = *(v114 + 8);
    v47 = sub_2749F95A4();
    v48 = sub_2749F9524();
    v49 = *(*(v47 - 8) + 8);
    v50 = OUTLINED_FUNCTION_105_0();
    v49(v50);
    v117 = v48;
    sub_2749FD014();
    OUTLINED_FUNCTION_12_12();
    swift_getWitnessTable();
    sub_2749FD194();

    v116 = v118;
    v115 = sub_2749F9274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969460);
    if (sub_2749FD224())
    {
      sub_2747E3150(v33);
      sub_2749F9524();
      v51 = OUTLINED_FUNCTION_105_0();
      v49(v51);
      sub_2749F9274();
      v52 = v113;
      sub_2749FD024();

      v53 = v108;
      sub_2747E3150(v108);
      OUTLINED_FUNCTION_105_0();
      sub_2749F95D4();
      (v49)(v53, v47);
      if (v118)
      {
        v91 = v22;
        sub_2749F9264();
        OUTLINED_FUNCTION_33_6();
        v54 = v96;
        sub_2749FD024();

        v56 = v106;
        v55 = v107;
        v57 = *(v106 + 32);
        v57(v107, v53, v54);
        if ((*(*(&v114 + 1) + 24))(v54))
        {
          sub_2747E32F8();
          v58 = v100;
          v59 = TupleTypeMetadata2;
          sub_2749FCCD4();
          v60 = v58;

          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, 1, v59);
          v62 = v104;
          if (EnumTagSinglePayload == 1)
          {
            OUTLINED_FUNCTION_40_5();
            v63(v60, v98);
            v64 = v102;
            v65 = v91;
            v66 = v112;
          }

          else
          {
            v72 = *(v59 + 48);
            v73 = v94;
            v92(v94, v60, v104);
            v74 = v60 + v72;
            v75 = v99;
            v57(v99, v74, v54);
            v76 = v73;
            if (sub_2747E3260())
            {
              swift_getObjectType();
              v77 = OUTLINED_FUNCTION_45();
              v78(v77);
              swift_unknownObjectRelease();
            }

            (*(v56 + 8))(v75, v54);
            v64 = v102;
            v62 = v104;
            (*(v102 + 8))(v76, v104);
            v65 = v91;
            v66 = v112;
            v59 = TupleTypeMetadata2;
          }

          v90 = v43;
          (*(v66 + 16))(v105, v113, v65);
          v79 = *(v59 + 48);
          v80 = *(v64 + 16);
          v81 = v101;
          v80(v101, v43, v62);
          v82 = v107;
          (*(v56 + 16))(v81 + v79, v107, v54);
          OUTLINED_FUNCTION_143();
          __swift_storeEnumTagSinglePayload(v83, v84, v85, v59);
          swift_beginAccess();
          sub_2749FCCC4();
          v86 = v82;
          v43 = v90;
          sub_2749FCCE4();
          swift_endAccess();
          if (sub_2747E3260())
          {
            swift_getObjectType();
            v87 = OUTLINED_FUNCTION_45();
            v88(v87);
            swift_unknownObjectRelease();
          }

          (*(v56 + 8))(v86, v54);
          (*(v66 + 8))(v113, v91);
        }

        else
        {
          (*(v56 + 8))(v55, v54);
          (*(v112 + 8))(v113, v91);
        }
      }

      else
      {
        (*(v112 + 8))(v52, v22);
      }
    }

    else
    {
      v67 = v109;
      sub_2749FA3D4();
      v68 = sub_2749FA4D4();
      v69 = sub_2749FD2D4();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_274719000, v68, v69, "Invalid section index", v70, 2u);
        OUTLINED_FUNCTION_31();
      }

      (*(v110 + 8))(v67, v111);
    }

    OUTLINED_FUNCTION_40_5();
    v71(v43, v104);
  }

  OUTLINED_FUNCTION_46();
}

void sub_2747E4874(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2747E3DBC();
}

uint64_t sub_2747E48DC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v375 = sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  v342[2] = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0);
  v9 = OUTLINED_FUNCTION_34(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v11);
  v406 = sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v386 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v16);
  v17 = type metadata accessor for WFGridSectionContainerView();
  v18 = *((v3 & v2) + 0x50);
  v19 = *((v3 & v2) + 0x60);
  v20 = *(v19 + 8);
  v346 = v17;
  v395 = sub_2749F95A4();
  OUTLINED_FUNCTION_43();
  v342[4] = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v26);
  v27 = *((v3 & v2) + 0x58);
  v359 = sub_2749FD6C4();
  OUTLINED_FUNCTION_43();
  v419 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v30);
  v32 = v342 - v31;
  OUTLINED_FUNCTION_3_0();
  v417 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = v342 - v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v39);
  OUTLINED_FUNCTION_3_0();
  v413 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v43);
  v44.n128_u64[0] = v18;
  v44.n128_u64[1] = v27;
  v45 = *((v3 & v2) + 0x68);
  v396 = v19;
  *&v46 = v19;
  *&v407 = v45;
  *(&v46 + 1) = v45;
  v371 = v46;
  v425 = v46;
  v372 = v44;
  v424 = v44;
  v47 = type metadata accessor for WFSectionedItemsSnapshot();
  v48 = OUTLINED_FUNCTION_34(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v49);
  v51 = v342 - v50;
  [v1 bounds];
  Width = CGRectGetWidth(v436);
  v53 = &selRef_colorWithAlphaComponent_;
  [v1 contentSize];
  [v1 setContentSize_];
  v435 = 0.0;
  v54 = sub_2747E3214();
  if (v54)
  {
    v56 = v54;
    v421 = v55;
    [v1 contentOffset];
    v58 = 0.0;
    if (v57 + -70.0 < 0.0)
    {
      v59 = 0.0;
    }

    else
    {
      v59 = v57 + -70.0;
    }

    [v1 frame];
    v61 = v60 + v59 + 70.0;
    [v1 contentSize];
    if (v62 >= v61)
    {
      v63 = v61;
    }

    else
    {
      v63 = v62;
    }

    v412 = v63;
    v420 = [v1 effectiveUserInterfaceLayoutDirection];
    v434 = 0;
    sub_2747E3150(v51);
    v414 = v27;
    v64 = sub_2749FD014();
    v357 = v20;
    v65 = sub_2749F95A4();
    v66 = sub_2749F9524();
    v67 = *(v65 - 8);
    v68 = *(v67 + 8);
    v381 = v65;
    v380 = v68;
    v379 = v67 + 8;
    v68(v51, v65);
    v383 = v66;
    v69 = sub_2749FD004();
    if ((v69 & 0x8000000000000000) == 0)
    {
      v416 = v1;
      v399 = v18;
      v422 = v56;
      if (v69)
      {
        v368 = v64;
        OUTLINED_FUNCTION_47_2();
        v70 = 0;
        v389 = 0;
        OUTLINED_FUNCTION_50_5();
        v342[1] = *(v71 + 144);
        OUTLINED_FUNCTION_50_5();
        v393 = *(v72 + 112);
        v367 = v417 + 32;
        v358 = v419 + 8;
        v366 = v396 + 16;
        v342[3] = *((v74 & v73) + 0x88);
        v354 = v396 + 32;
        v402 = (v421 + 11);
        v405 = (v421 + 10);
        OUTLINED_FUNCTION_53();
        v365 = v75;
        v353 = v76 + 56;
        v364 = v76 + 40;
        v347 = v413 + 16;
        v385 = v76 + 24;
        v411 = (v407 + 16);
        v415 = v77 + 8;
        OUTLINED_FUNCTION_53();
        v392 = v78;
        v349 = &v425;
        v345 = "ontainerView";
        v352 = v79 + 48;
        v378 = v80 + 8;
        v348 = 1107296256;
        v344 = 0.9;
        v343 = 0.45;
        OUTLINED_FUNCTION_23_8();
        OUTLINED_FUNCTION_41_6();
        v369 = v32;
        v377 = v81;
        v400 = v38;
        while (1)
        {
          v82 = v53;
          v419 = v70;
          sub_2749FD024();
          v83 = v18;
          OUTLINED_FUNCTION_33_6();
          sub_2747E3150(v84);
          v85 = v381;
          sub_2749F95D4();
          v86 = v380(v56, v85);
          v87 = v424.n128_u64[0];
          if (v424.n128_u64[0])
          {
            MEMORY[0x28223BE20](v86);
            v88 = OUTLINED_FUNCTION_35_4();
            *(v89 - 32) = v88;
            *(v89 - 16) = v90;
            OUTLINED_FUNCTION_13_11();
            swift_getWitnessTable();
            OUTLINED_FUNCTION_33_6();
            v91 = v389;
            sub_2749FCED4();
            v389 = v91;
            v92 = v414;
            OUTLINED_FUNCTION_58_1(v56);
            v413 = v87;
            if (v93)
            {
              v424.n128_u64[0] = v87;
              swift_getWitnessTable();
              v97 = v369;
              sub_2749FD1D4();
              OUTLINED_FUNCTION_58_1(v56);
              v56 = v422;
              v53 = v82;
              if (!v93)
              {
                OUTLINED_FUNCTION_8_2();
                v94(v376, v359);
              }
            }

            else
            {
              OUTLINED_FUNCTION_8_2();
              v97 = v369;
              OUTLINED_FUNCTION_68();
              v98();
              OUTLINED_FUNCTION_143();
              __swift_storeEnumTagSinglePayload(v99, v100, v101, v92);
              v56 = v422;
              v53 = v82;
            }

            OUTLINED_FUNCTION_58_1(v97);
            if (v93)
            {
              OUTLINED_FUNCTION_8_2();
              v102 = OUTLINED_FUNCTION_51_3();
              v103(v102, v18);

              OUTLINED_FUNCTION_8_2();
              v104(v97, v359);
              v96 = v419;
            }

            else
            {
              v105 = v58;
              OUTLINED_FUNCTION_8_2();
              v106 = v370;
              v107(v370, v97, v92);
              v108 = v396;
              OUTLINED_FUNCTION_42_3();
              v362 = v109;
              v110 = v109(v83, v108);
              v111 = (*(v108 + 32))(v83, v108);
              [v1 contentSize];
              v113 = v112 - (v110 + v111 + v110 + v111);
              ObjectType = swift_getObjectType();
              v115 = v421;
              v401 = v421[11];
              v116 = v401(v106, ObjectType, v421, v113);
              v117 = v115[10];
              v417 = ObjectType;
              v404 = v117;
              v410 = v111 + v111 + v117(v106, ObjectType, v115);
              v430.n128_f64[0] = v410;
              v118 = trunc(v113 / v116);
              v119 = 0.0;
              if (v118 > 1.0)
              {
                v119 = fmod(v113, v116) / (v118 + -1.0);
              }

              if (v419 || (OUTLINED_FUNCTION_50_5(), *(v1 + *(v120 + 208)) == 1))
              {
                v105 = v105 + v110;
                v435 = v105;
              }

              sub_2747E3024(v356);
              sub_2749F95D4();
              v121 = *v365;
              v122 = OUTLINED_FUNCTION_45();
              v121(v122);
              v123 = v424.n128_u64[0];
              v363 = v105;
              v361 = v121;
              if (!v424.n128_u64[0])
              {
                v124 = objc_allocWithZone(v346);
                v123 = sub_2747E99D8(v111);
              }

              v125 = v396;
              v126 = *(v396 + 56);
              v127 = v123;
              OUTLINED_FUNCTION_42_3();
              v126(v83, v125);
              v128 = sub_2749FCD64();

              v398 = v127;
              [v127 setAccessibilityLabel_];

              v433 = MEMORY[0x277D84F90];
              v129 = v111;
              OUTLINED_FUNCTION_30_5();
              if (v93)
              {
                [v1 contentSize];
                v129 = v130 - (v110 + v110) - v111;
              }

              v432 = *&v129;
              v429 = v111;
              OUTLINED_FUNCTION_49_4();
              v132 = v418;
              v360 = *(v131 + 40);
              (v360)(v83);
              if (v133)
              {
                sub_2747E3100();
                v134 = v1;
                v135 = v83;
                type metadata accessor for WFDrawerSearchControlsView();
                sub_2749FCCD4();

                v136 = v424.n128_u64[0];
                if (v424.n128_u64[0])
                {

                  v137 = v136;
                }

                else
                {
                  v140 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
                  *&v140[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarHorizontalEdgeInsets] = 0x4020000000000000;
                  *&v140[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarTopInset] = 0;
                  v141 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
                  v142 = *&v140[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar];
                  v409 = v140;
                  v143 = [v142 searchTextField];
                  v144 = sub_2749FCD64();

                  [v143 setPlaceholder_];

                  v145 = *&v140[v141];
                  v137 = v409;
                  [v145 setDelegate_];
                  OUTLINED_FUNCTION_8_2();
                  v146 = OUTLINED_FUNCTION_51_3();
                  v147(v146, v132, v135);
                  v423 = v137;
                  OUTLINED_FUNCTION_21_9();
                  sub_2749FCCC4();
                  sub_2749FCCE4();
                  swift_endAccess();
                  v136 = 0;
                }

                v1 = v134;
                v148 = v136;
                v149 = [v137 superview];

                if (v149)
                {
                }

                else
                {
                  [*&v398[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView] addSubview_];
                }

                v150 = v399;
                [v134 contentSize];
                v152 = v151 - (v110 + v110);
                v153 = objc_opt_self();
                v154 = v137;
                [v153 begin];
                [v153 setDisableActions_];
                [v154 setFrame_];
                [v153 commit];
                v155 = v396;
                v139 = *(v396 + 24);
                OUTLINED_FUNCTION_42_3();
                v429 = v111 + (v139)(v150, v155) + 46.0;
                v156 = (v139)(v150, v155);
                v430.n128_f64[0] = v410 + v156 + 46.0;
                MEMORY[0x277C5ECC0]();
                if (*((v433 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v433 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_2749FCFB4();
                }

                sub_2749FCFF4();
                v138 = v433;

                OUTLINED_FUNCTION_41_6();
              }

              else
              {
                v138 = MEMORY[0x277D84F90];
                v139 = v132;
              }

              v157 = v414;
              *&v158 = COERCE_DOUBLE(sub_2749FD004());
              if (v158 < 0)
              {
                goto LABEL_115;
              }

              v159 = *&v158;
              v403 = v138;
              if (*&v158 != 0.0)
              {
                v409 = *v411;
                v408 = objc_opt_self();
                v160 = 0;
                v394 = OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView;
                v410 = v159;
                do
                {
                  sub_2749FD024();
                  if (((v409)(v157, v407) & 1) != 0 && (v434 & 1) == 0)
                  {
                    v432 = *&v129;
                    if (v160)
                    {
                      v161 = v1;
                      v162 = v382;
                      sub_2749FD024();
                      OUTLINED_FUNCTION_48_3();
                      OUTLINED_FUNCTION_45_3();
                      v164 = v163();
                      OUTLINED_FUNCTION_8_2();
                      v165 = v162;
                      v1 = v161;
                      v139 = v418;
                      v166(v165, v157);
                      OUTLINED_FUNCTION_49_4();
                      v168 = (*(v167 + 24))(v399);
                      v429 = v429 + v164 + v168;
                    }
                  }

                  v434 = 0;
                  v169 = v408;
                  [v408 begin];
                  [v169 setDisableActions:1];
                  v428 = 0;
                  v170 = v421;
                  v171 = sub_2747E7718(v160, v419, v1, &v435, &v429, v59, v412, v422, v421, v38, &v428, v139);
                  v139 = v38;
                  [v169 commit];
                  if (v171)
                  {
                    v172 = v401(v38, v417, v170, v113);
                    OUTLINED_FUNCTION_30_5();
                    [v169 begin];
                    [v169 setDisableActions:1];
                    v173 = v171;
                    [v173 layoutIfNeeded];
                    v174 = [v1 traitCollection];
                    [v174 displayScale];

                    BSFloatRoundForScale();
                    v176 = v175;
                    v177 = [v1 traitCollection];
                    [v177 displayScale];

                    BSFloatRoundForScale();
                    v179 = v178;
                    OUTLINED_FUNCTION_48_3();
                    OUTLINED_FUNCTION_45_3();
                    [v173 setFrame_];

                    v181 = [v169 commit];
                    if (v428 == 1)
                    {
                      OUTLINED_FUNCTION_33_6();
                      MEMORY[0x277C5AFB0](v160, v419);
                      v182 = v416;
                      v183 = v393;
                      OUTLINED_FUNCTION_21_9();
                      v184 = v173;
                      swift_isUniquelyReferenced_nonNull_native();
                      v423 = *(v182 + v183);
                      sub_2748F9C64(v184, v38);
                      *(v182 + v183) = v423;
                      OUTLINED_FUNCTION_8_2();
                      v185 = OUTLINED_FUNCTION_27_6();
                      v186(v185);
                      swift_endAccess();
                      v181 = [*&v398[v394] addSubview_];
                    }

                    MEMORY[0x277C5ECC0](v181);
                    v187 = v410;
                    if (*((v433 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v433 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_2749FCFB4();
                    }

                    sub_2749FCFF4();
                    v403 = v433;

                    v1 = v416;
                    v38 = v400;
                    OUTLINED_FUNCTION_41_6();
                    v188 = v413;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_41_6();
                    v188 = v413;
                    v187 = v410;
                  }

                  v189 = v160 + 1;
                  OUTLINED_FUNCTION_30_5();
                  if (v93)
                  {
                    v190 = 1;
                  }

                  else
                  {
                    v190 = 0;
                  }

                  sub_2747E72E0(v160, v188, v38, v422, v421, v190, &v432, v1, v113, v119, v129, &v429, v139, &v430, &v434);
                  OUTLINED_FUNCTION_8_2();
                  v157 = v414;
                  v191(v38, v414);
                  ++v160;
                }

                while (*&v187 != v189);
              }

              sub_27479BB64();
              v192 = sub_2749FCF74();

              v193 = v398;
              [v398 setAccessibilityElements_];

              v194 = v399;
              v195 = v396;
              v196 = v362;
              v197 = v362(v399, v396);
              [v1 contentSize];
              v199 = v198;
              v200 = v196(v194, v195);
              v201 = v199 - (v200 + v200);
              v202 = v430.n128_f64[0];
              sub_2747E3024(v355);
              sub_2749F95D4();
              v203 = OUTLINED_FUNCTION_45();
              v361(v203);
              v204 = v424.n128_u64[0];
              if (v424.n128_u64[0])
              {

                v205 = v363;
                v206 = v193;
              }

              else
              {
                v207 = objc_opt_self();
                v208 = swift_allocObject();
                *(v208 + 16) = v193;
                v205 = v363;
                *(v208 + 24) = v197;
                *(v208 + 32) = v205;
                *(v208 + 40) = v201;
                *(v208 + 48) = v202;
                *(v208 + 56) = v1;
                v209 = v193;
                v210 = v1;
                OUTLINED_FUNCTION_57_1();
                v211 = swift_allocObject();
                *(v211 + 16) = sub_2747EA0F0;
                *(v211 + 24) = v208;
                v426 = sub_2747B6980;
                v427 = v211;
                OUTLINED_FUNCTION_10_8();
                *(v212 - 256) = v213;
                v424.n128_u64[1] = v348;
                *&v425 = sub_274963064;
                v214 = OUTLINED_FUNCTION_36_6(&block_descriptor_17);

                [v207 performWithoutAnimation_];
                _Block_release(v214);
                LOBYTE(v207) = swift_isEscapingClosureAtFileLocation();

                if (v207)
                {
                  goto LABEL_116;
                }

                v215 = v209;
                [v210 insertSubview:v215 atIndex:0];
                [v215 setAlpha_];
                MEMORY[8] = 0;
                MEMORY[0x10] = 0;
                v424.n128_u64[0] = 0x3FF0000000000000;
                *(&v425 + 1) = 0x3FF0000000000000;
                MEMORY[0x20] = 0;
                MEMORY[0x28] = 0;
                [v215 setTransform_];

                OUTLINED_FUNCTION_8_2();
                v216 = OUTLINED_FUNCTION_51_3();
                v217(v216, v418, v399);
                v423 = v215;
                OUTLINED_FUNCTION_21_9();
                v218 = v215;
                v219 = sub_2749F95E4();
                MEMORY[0x28223BE20](v219);
                v220 = v389;
                sub_2749F9554();
                v389 = v220;

                swift_endAccess();
                v351 = sub_2747EA0F0;
                v350 = v208;
                v206 = v398;
              }

              OUTLINED_FUNCTION_50_5();
              v53 = v391;
              if (*(v1 + *(v221 + 200)) == 1)
              {
                v222 = [v206 layer];
                v223 = sub_2749F9884();
                v224 = sub_2749FCD64();
                [v222 setValue:v223 forKeyPath:v224];

                v225 = objc_opt_self();
                v226 = swift_allocObject();
                *(v226 + 16) = v398;
                v426 = sub_2747EA124;
                v427 = v226;
                OUTLINED_FUNCTION_10_8();
                *(v227 - 256) = v228;
                v229 = v348;
                v424.n128_u64[1] = v348;
                *&v425 = sub_274760264;
                v230 = OUTLINED_FUNCTION_36_6(&block_descriptor_23);
                v231 = v398;

                v426 = CGSizeMake;
                v427 = 0;
                v424.n128_u64[0] = MEMORY[0x277D85DD0];
                v424.n128_u64[1] = v229;
                *&v425 = sub_27480D7B8;
                v232 = OUTLINED_FUNCTION_36_6(&block_descriptor_26);
                [v225 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
                v1 = v416;
                _Block_release(v232);
                v233 = v230;
                v206 = v398;
                _Block_release(v233);
              }

              [v206 setFrame_];
              OUTLINED_FUNCTION_49_4();
              v18 = v399;
              *&v235 = COERCE_DOUBLE((*(v234 + 48))(v399));
              v56 = v414;
              if ((v236 & 1) == 0)
              {
                v237 = *&v235;
                v238 = [*&v206[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView] layer];
                [v238 setCornerRadius_];
              }

              OUTLINED_FUNCTION_42_3();
              OUTLINED_FUNCTION_49_4();
              v360();
              if (v239)
              {

                v240 = [*&v206[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView] layer];
                [v240 setCornerRadius_];

                v206 = v240;
              }

              v96 = v419;

              OUTLINED_FUNCTION_8_2();
              v241(v370, v56);
              OUTLINED_FUNCTION_8_2();
              v242 = OUTLINED_FUNCTION_51_3();
              v243(v242, v18);
              v58 = v205 + v202;
              v435 = v58;
            }
          }

          else
          {
            OUTLINED_FUNCTION_8_2();
            v95(v56, v18);
            v96 = v419;
            v53 = v82;
          }

          v70 = v96 + 1;
          if (v70 == v377)
          {
            goto LABEL_74;
          }
        }
      }

      OUTLINED_FUNCTION_47_2();
      v389 = 0;
      OUTLINED_FUNCTION_23_8();
LABEL_74:
      [v1 contentSize];
      [v1 setContentSize_];
      v246 = sub_2747E2F84();
      v405 = 0;
      v247 = 0;
      v413 = v246;
      OUTLINED_FUNCTION_22_8();
      v250 = v249 & v248;
      v251 = *MEMORY[0x277D85000] & *v1;
      v403 = *(v251 + 0x80);
      v404 = *(v251 + 112);
      v419 = v386 + 16;
      v420 = (v386 + 32);
      OUTLINED_FUNCTION_53();
      v418 = v252;
      v411 = *MEMORY[0x277D7A490];
      v414 = (v253 + 8);
      OUTLINED_FUNCTION_53();
      v410 = v256;
      *&v257 = 136315138;
      v407 = v257;
      v417 = v255;
      v415 = v254;
      if (!v250)
      {
        goto LABEL_76;
      }

      do
      {
        v258 = v53;
        v259 = v406;
        v260 = v247;
LABEL_80:
        v261 = __clz(__rbit64(v250));
        v250 &= v250 - 1;
        v262 = v261 | (v260 << 6);
        v263 = v413;
        (*(v386 + 16))(v397, *(v413 + 48) + *(v386 + 72) * v262, v259);
        v264 = *(*(v263 + 56) + 8 * v262);
        v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
        v266 = *(v265 + 48);
        v53 = v258;
        v267 = OUTLINED_FUNCTION_105_0();
        v268(v267);
        *(v258 + v266) = v264;
        OUTLINED_FUNCTION_143();
        __swift_storeEnumTagSinglePayload(v269, v270, v271, v265);
        v272 = v264;
LABEL_81:
        v273 = v388;
        sub_2747E2C9C(v53, v388, &unk_280968DD0);
        v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
        OUTLINED_FUNCTION_14_6(v273);
        if (v93)
        {
          swift_unknownObjectRelease();

          OUTLINED_FUNCTION_57_1();
          return sub_27471F8A4(v405);
        }

        v421 = *(v273 + *(v274 + 48));
        OUTLINED_FUNCTION_8_2();
        v275 = v390;
        v276(v390, v273, v406);
        v277 = v387;
        v53 = v416;
        sub_2747E3024(v387);
        v278 = v395;
        v279 = sub_2749F9524();
        v280 = v418;
        v281 = *v418;
        (*v418)(v277, v278);
        v433 = v279;
        sub_2749FD014();
        OUTLINED_FUNCTION_12_12();
        swift_getWitnessTable();
        sub_2749FD194();

        v430 = v424;
        v432 = sub_2749F9274();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969460);
        if (sub_2749FD224())
        {
          v282 = v373;
          sub_2747E3024(v373);
          v283 = sub_2749F9534();
          v281(v282, v278);
          v284 = sub_2749F9274();
          if ((v283 & 0xC000000000000001) != 0)
          {
            v286 = MEMORY[0x277C5F6D0](v284, v283);
            OUTLINED_FUNCTION_23_8();
            OUTLINED_FUNCTION_44_2();
          }

          else
          {
            OUTLINED_FUNCTION_23_8();
            OUTLINED_FUNCTION_44_2();
            if ((v285 & 0x8000000000000000) != 0)
            {
              goto LABEL_113;
            }

            if (v285 >= *((v283 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_114;
            }

            v286 = *(v283 + 8 * v285 + 32);
          }

          [v280 frame];
          [v286 convertRect:v416 toCoordinateSpace:?];
          x = v437.origin.x;
          y = v437.origin.y;
          v289 = v437.size.width;
          height = v437.size.height;
          if (CGRectGetMaxY(v437) < v59 || (v438.origin.x = x, v438.origin.y = y, v438.size.width = v289, v438.size.height = height, v412 < CGRectGetMinY(v438)))
          {
            [v280 removeFromSuperview];
            v310 = v416;
            v433 = sub_2747E2FD4();
            MEMORY[0x28223BE20](v433);
            v311 = OUTLINED_FUNCTION_35_4();
            *(v312 - 48) = v311;
            *(v312 - 32) = v313;
            *(v312 - 16) = v280;
            v425 = v313;
            v424 = v311;
            type metadata accessor for WFGridView.CellRegistrationEntry();
            v53 = sub_2749FD014();
            OUTLINED_FUNCTION_13_11();
            swift_getWitnessTable();
            v314 = v389;
            sub_2749FCED4();
            v389 = v314;

            if (v430.n128_u64[0])
            {
              v315 = v430.n128_u64[1];
              v408 = v430.n128_u64[0];
              v316 = v431;
              v317 = v403;
              OUTLINED_FUNCTION_21_9();
              sub_27471F8A4(v405);
              swift_isUniquelyReferenced_nonNull_native();
              v430.n128_u64[0] = *(v310 + v317);
              v318 = v430.n128_u64[0];
              *(v310 + v317) = 0x8000000000000000;
              v409 = v315;
              v319 = v315;
              v320 = v316;
              v321 = sub_274797CC0(v319, v316);
              v323 = *(v318 + 16);
              v324 = (v322 & 1) == 0;
              v53 = (v323 + v324);
              if (__OFADD__(v323, v324))
              {
                goto LABEL_118;
              }

              v280 = v321;
              v325 = v322;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969478);
              v326 = sub_2749FDA84();
              v327 = v430.n128_u64[0];
              if (v326)
              {
                v328 = sub_274797CC0(v409, v320);
                if ((v325 & 1) != (v329 & 1))
                {
                  goto LABEL_119;
                }

                v280 = v328;
              }

              *(v416 + v317) = v327;
              if (v325)
              {
                sub_2747EA090(v408);
              }

              else
              {
                sub_274972654(&v430);
                sub_2748FB298(v280, v409, v320, v430.n128_u64[0], v327);
              }

              OUTLINED_FUNCTION_44_2();
              v337 = v280;
              sub_274765168(&v430);
              v338 = v430.n128_u64[0];
              swift_endAccess();

              v405 = sub_274972654;
            }

            else
            {
              OUTLINED_FUNCTION_33_6();
              sub_2749FA3D4();
              v330 = v280;
              v331 = sub_2749FA4D4();
              v332 = sub_2749FD2D4();

              if (os_log_type_enabled(v331, v332))
              {
                v333 = swift_slowAlloc();
                v280 = swift_slowAlloc();
                OUTLINED_FUNCTION_31_9(v280);
                v430.n128_u64[0] = swift_getObjectType();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969470);
                v334 = sub_2749FCDC4();
                v53 = sub_2747AF460(v334, v335, &v424);

                *(v333 + 4) = v53;
                _os_log_impl(&dword_274719000, v331, v332, "Recycled cell without a reuse identifier, cell is of type: %s", v333, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v280);
                OUTLINED_FUNCTION_31();
                OUTLINED_FUNCTION_44_2();
                OUTLINED_FUNCTION_31();
              }

              OUTLINED_FUNCTION_8_2();
              v336(v342, v375);
            }

            OUTLINED_FUNCTION_23_8();
            OUTLINED_FUNCTION_21_9();
            v339 = sub_274973FF0();
            swift_endAccess();

            OUTLINED_FUNCTION_8_2();
            v340 = OUTLINED_FUNCTION_27_6();
            v341(v340);
          }

          else
          {
            OUTLINED_FUNCTION_8_2();
            v291 = OUTLINED_FUNCTION_27_6();
            v292(v291);
          }
        }

        else
        {
          v53 = v384;
          sub_2749FA3D4();
          OUTLINED_FUNCTION_8_2();
          v293 = v374;
          v294 = v406;
          v295(v374, v275, v406);
          v296 = sub_2749FA4D4();
          v297 = sub_2749FD2D4();
          if (os_log_type_enabled(v296, v297))
          {
            v298 = v293;
            v299 = swift_slowAlloc();
            v409 = swift_slowAlloc();
            OUTLINED_FUNCTION_31_9(v409);
            sub_2747E9FF4();
            v300 = sub_2749FDC74();
            v408 = v296;
            v301 = v300;
            v303 = v302;
            v53 = *v414;
            (*v414)(v298, v294);
            v304 = sub_2747AF460(v301, v303, &v424);

            *(v299 + 4) = v304;
            v305 = v408;
            _os_log_impl(&dword_274719000, v408, v297, "Invalid on screen cell index path %s", v299, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v409);
            OUTLINED_FUNCTION_31();
            OUTLINED_FUNCTION_31();

            OUTLINED_FUNCTION_8_2();
            v306(v384, v375);
            (v53)(v390, v294);
          }

          else
          {

            v307 = *v414;
            (*v414)(v293, v294);
            OUTLINED_FUNCTION_8_2();
            v308(v53, v375);
            (v307)(v275, v294);
          }

          OUTLINED_FUNCTION_23_8();
        }

        v255 = v417;
        v254 = v415;
      }

      while (v250);
LABEL_76:
      while (1)
      {
        v260 = v247 + 1;
        if (__OFADD__(v247, 1))
        {
          break;
        }

        if (v260 >= v254)
        {
          v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
          __swift_storeEnumTagSinglePayload(v53, 1, 1, v309);
          v250 = 0;
          goto LABEL_81;
        }

        v250 = *(v255 + 8 * v260);
        ++v247;
        if (v250)
        {
          v258 = v53;
          v259 = v406;
          v247 = v260;
          goto LABEL_80;
        }
      }

      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
    }

    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    result = sub_2749FDD54();
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00);
    v244 = swift_allocObject();
    *(v244 + 16) = xmmword_274A0EF10;
    *(v244 + 56) = MEMORY[0x277D837D0];
    *(v244 + 32) = 0xD000000000000043;
    *(v244 + 40) = 0x8000000274A2DC30;
    sub_2749FD8A4();
  }

  return result;
}

void sub_2747E72E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double *a7, void *a8, double a9, double a10, double a11, double *a12, uint64_t a13, uint64_t a14, _BYTE *a15)
{
  v55 = a7;
  v56 = a4;
  LODWORD(v54) = a6;
  v57 = a5;
  v58 = a3;
  v21 = (*MEMORY[0x277D85000] & *a8);
  v22 = v21[11];
  v53 = *(v22 - 8);
  MEMORY[0x28223BE20](a1);
  v24 = &v51 - v23;
  v63 = v25;
  sub_2749FD014();
  swift_getWitnessTable();
  sub_2749FD194();
  v61 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969460);
  sub_2747EA12C();
  sub_2749FCD14();
  if ((v60 & 1) != 0 || v59 != a1)
  {
    if ((*(v21[13] + 16))(v22))
    {
LABEL_4:
      v53 = a14;
      v54 = a15;
      v51 = a13;
      v52 = a12;
      *v55 = a11;
      v26 = v21;
      v27 = v21[12];
      v28 = v57;
      v55 = *(v27 + 24);
      v29 = v26[10];
      v30 = (v55)(v29, v27);
      ObjectType = swift_getObjectType();
      v32 = *(v28 + 80);
      v33 = v58;
      v34 = v32(v58, ObjectType, v28);
      *v52 = *v52 + v30 + v34;
      v35 = (v55)(v29, v27);
      v36 = v32(v33, ObjectType, v28);
      v37 = v54;
      *v53 = *v53 + v35 + v36;
      *v37 = 1;
      return;
    }

    v38 = __OFADD__(a1, 1);
    v39 = a1 + 1;
    if (v38)
    {
      __break(1u);
      return;
    }

    v59 = a2;
    sub_2749FD194();
    v61 = v62;
    v63 = v39;
    if (sub_2749FD224())
    {
      v40 = swift_getObjectType();
      sub_2749FD024();
      v41 = *(v57 + 88);
      v42 = v41(v24, v40, a9);
      (*(v53 + 8))(v24, v22);
    }

    else
    {
      v41 = *(v57 + 88);
      v42 = 0.0;
    }

    if (v54)
    {
      v43 = swift_getObjectType();
      v44 = (v41)(v58, v43, v57, a9);
      v45 = *v55 - (v44 + a10);
      *v55 = v45;
      if (v45 - v42 <= 0.0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v46 = swift_getObjectType();
      v47 = (v41)(v58, v46, v57, a9);
      v48 = *v55 + v47 + a10;
      *v55 = v48;
      v49 = v42 + v48;
      [a8 contentSize];
      if (v50 <= v49)
      {
        goto LABEL_4;
      }
    }
  }
}

void *sub_2747E7718(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double *a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, _BYTE *a11, uint64_t a12)
{
  v31 = a10;
  v20 = sub_2749F9284();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x277C5AFB0](a1, a2);
  v24 = sub_2747E2F84();
  v25 = sub_27494F9EC(v23, v24);

  if (!v25)
  {
    v26 = *a4 + *a5;
    ObjectType = swift_getObjectType();
    if (v26 + (*(a9 + 80))(v31, ObjectType, a9) > a6 && *a4 + *a5 < a7)
    {
      *a11 = 1;
      v25 = (*(a9 + 48))(a3, v31, a12, ObjectType, a9);
    }

    else
    {
      v25 = 0;
    }
  }

  (*(v21 + 8))(v23, v20);
  return v25;
}

void sub_2747E78F8(void *a1, void *a2)
{
  [a1 setFrame_];
  if (*(a2 + *((*MEMORY[0x277D85000] & *a2) + 0xC8)) == 1)
  {
    [a1 setAlpha_];
    CGAffineTransformMakeScale(&v21, 0.5, 0.5);
    tx = v21.tx;
    ty = v21.ty;
    v18 = *&v21.c;
    v19 = *&v21.a;
    [a1 bounds];
    Height = CGRectGetHeight(v22);
    *&v21.a = v19;
    *&v21.c = v18;
    v21.tx = tx;
    v21.ty = ty;
    CGAffineTransformTranslate(&v20, &v21, 0.0, Height * -0.175);
    v21 = v20;
    [a1 setTransform_];
    v7 = sub_27471CF08(0, &qword_280969480);
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v8 = sub_27480D818();
    v9 = sub_2749FD184();
    [v8 setValue:v9 forKey:*MEMORY[0x277CDA4F0]];

    v10 = sub_2749FD034();
    [v8 setValue:v10 forKey:*MEMORY[0x277CDA4C8]];

    v11 = sub_2749FD034();
    [v8 setValue:v11 forKey:*MEMORY[0x277CDA4A0]];

    v12 = sub_2749FCD64();
    [v8 setValue:v12 forKey:*MEMORY[0x277CDA4E8]];

    v13 = sub_2749FCD64();
    [v8 setValue:v13 forKey:*MEMORY[0x277CDA4B8]];

    v14 = [a1 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_274A0EF10;
    *(v15 + 56) = v7;
    *(v15 + 32) = v8;
    v16 = v8;
    v17 = sub_2749FCF74();

    [v14 setFilters_];
  }
}

BOOL sub_2747E7BD0(char *a1, id *a2, uint64_t a3, void **a4, void *a5)
{
  v55 = a3;
  v53 = a1;
  v54 = a4;
  v57 = a5;
  v6 = *MEMORY[0x277D85000] & *a5;
  v7 = *(v6 + 0x50);
  v51 = *(v6 + 0x58);
  v61 = v7;
  v62 = v51;
  v52 = *(v6 + 96);
  v63 = v52;
  v8 = type metadata accessor for WFSectionedItemsSnapshot();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v56 = &v48 - v10;
  v60 = *(v7 - 1);
  v11 = v60;
  v12 = MEMORY[0x28223BE20](v9);
  v58 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v59 = &v48 - v14;
  type metadata accessor for WFGridSectionContainerView();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v48 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = (&v48 - v23);
  v49 = *a2;
  v25 = v49;
  v50 = v7;
  v26 = *(v11 + 16);
  v26(&v48 - v23, v53, v7);
  *(v24 + *(TupleTypeMetadata2 + 48)) = v25;
  v27 = *v54;
  v26(v22, v55, v7);
  *&v22[*(TupleTypeMetadata2 + 48)] = v27;
  v54 = v24;
  v55 = v16;
  v28 = *(v16 + 16);
  v28(v19, v24, TupleTypeMetadata2);
  v29 = *&v19[*(TupleTypeMetadata2 + 48)];
  v30 = v49;
  v31 = v27;

  v32 = *(v60 + 32);
  v33 = v50;
  v32(v59, v19, v50);
  v53 = v22;
  v28(v19, v22, TupleTypeMetadata2);

  v32(v58, v19, v33);
  v34 = v56;
  sub_2747E3150(v56);
  sub_2749FD014();
  v35 = sub_2749F95A4();
  v36 = v34;
  v37 = sub_2749F9524();
  v38 = *(v35 - 8);
  v39 = *(v38 + 8);
  v51 = v38 + 8;
  *&v52 = v39;
  v39(v36, v35);
  v64 = v37;
  sub_2749FD014();
  swift_getWitnessTable();
  sub_2749FD1E4();

  if (v62 == 1)
  {
    v40 = *(v60 + 8);
    v40(v58, v33);
    v40(v59, v33);
    v41 = *(v55 + 8);
    v41(v53, TupleTypeMetadata2);
    v41(v54, TupleTypeMetadata2);
    return 0;
  }

  v49 = v61;
  v42 = v56;
  sub_2747E3150(v56);
  v43 = sub_2749F9524();
  (v52)(v42, v35);
  v64 = v43;
  v44 = v58;
  sub_2749FD1E4();

  v45 = *(v60 + 8);
  v45(v44, v33);
  v45(v59, v33);
  v46 = *(v55 + 8);
  v46(v53, TupleTypeMetadata2);
  v46(v54, TupleTypeMetadata2);
  if (v62 == 1)
  {
    return 0;
  }

  return v49 < v61;
}

uint64_t sub_2747E817C(void *a1)
{
  v2 = objc_opt_self();
  sub_2749FD314();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2747E9F74;
  *(v10 + 24) = v9;
  v17[4] = sub_27475D1DC;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_274963064;
  v17[3] = &block_descriptor_14;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_2747E832C(void *a1)
{
  v1 = [a1 layer];
  v2 = sub_2749FD184();
  v3 = sub_2749FCD64();
  [v1 setValue:v2 forKeyPath:v3];
}

uint64_t sub_2747E83C8()
{
  if (sub_2747E32AC())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0xC8)), ObjectType, v2);
    swift_unknownObjectRelease();
  }

  return sub_2747E48DC();
}

void sub_2747E8464(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2747E83C8();
}

uint64_t sub_2747E84C4()
{
  result = sub_2747E32AC();
  if (result)
  {
    swift_getObjectType();
    v1 = OUTLINED_FUNCTION_25_4();
    v2(v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2747E8530(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2747E84C4();
}

void sub_2747E8590(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && sub_2747E32AC())
  {
    swift_getObjectType();
    v2 = OUTLINED_FUNCTION_25_4();
    v3(v2);

    swift_unknownObjectRelease();
  }
}

void sub_2747E8600(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_2747E8590(v7, a4);
}

void sub_2747E8670()
{
  v1 = MEMORY[0x277D85000];
  OUTLINED_FUNCTION_7_9();
  v3 = MEMORY[0x277D84F98];
  *(v0 + *(v2 + 112)) = MEMORY[0x277D84F98];
  v4 = *((*v1 & *v0) + 0x78);
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_59_2();
  type metadata accessor for WFGridView.CellRegistrationEntry();
  *(v0 + v4) = sub_2749FCC84();
  OUTLINED_FUNCTION_7_9();
  *(v0 + *(v5 + 128)) = v3;
  OUTLINED_FUNCTION_7_9();
  type metadata accessor for WFGridSectionContainerView();
  sub_2749F9594();
  OUTLINED_FUNCTION_7_9();
  v7 = *(v6 + 144);
  type metadata accessor for WFDrawerSearchControlsView();
  *(v0 + v7) = sub_2749FCC74();
  OUTLINED_FUNCTION_7_9();
  sub_2747CA960();
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_98_1(*(v8 + 160));
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_98_1(*(v9 + 168));
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_98_1(*(v10 + 176));
  OUTLINED_FUNCTION_7_9();
  v12 = *(v11 + 184);
  sub_2749F9284();
  OUTLINED_FUNCTION_38_4();
  *(v0 + v12) = sub_2749FCC74();
  OUTLINED_FUNCTION_7_9();
  v14 = *(v13 + 192);
  *(v0 + v14) = [objc_allocWithZone(MEMORY[0x277D75B80]) init];
  OUTLINED_FUNCTION_7_9();
  *(v0 + *(v15 + 200)) = 0;
  OUTLINED_FUNCTION_7_9();
  *(v0 + *(v16 + 208)) = 0;
  OUTLINED_FUNCTION_7_9();
  *(v0 + *(v17 + 216)) = 0;
  OUTLINED_FUNCTION_24_8();
  __break(1u);
}

void sub_2747E8960()
{
  OUTLINED_FUNCTION_48();
  v43 = v1;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000] & *v0;
  type metadata accessor for WFDrawerSearchControlsView();
  v5 = *((v3 & v2) + 0x50);
  OUTLINED_FUNCTION_68();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_2749FD6C4();
  OUTLINED_FUNCTION_43();
  v41 = v7;
  v42 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  OUTLINED_FUNCTION_9_9();
  v39 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  OUTLINED_FUNCTION_3_0();
  v40 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_1(&v37 - v16);
  v48[8] = sub_2747E3100();
  v17 = *((v3 & v2) + 0x68);
  v18.i64[0] = v5;
  v48[6] = v43;
  v45 = v5;
  OUTLINED_FUNCTION_28_6(v17, vzip1q_s64(v18, *(v4 + 88)), *(v4 + 88), *(v4 + 96));
  v46 = sub_2747EA224;
  v47 = v48;
  OUTLINED_FUNCTION_9_9();
  sub_2749FCCC4();
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_29_7();
  sub_2749FCED4();
  v19 = TupleTypeMetadata2;

  OUTLINED_FUNCTION_14_6(v10);
  if (v20)
  {
    (*(v41 + 8))(v10, v42);
  }

  else
  {
    v21 = *&v10[*(v19 + 48)];
    v22 = v39;
    v23 = *(v39 + 48);
    v24 = v40;
    v25 = *(v40 + 32);
    v25(v13, v10, v5);
    *&v13[v23] = v21;
    v26 = *&v13[*(v22 + 48)];
    v27 = v38;
    v25(v38, v13, v5);
    sub_2749585BC(1);
    v28 = sub_2747E3214();
    v30 = v24;
    if (v28)
    {
      v31 = v29;
      ObjectType = swift_getObjectType();
      v33 = [*&v26[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar] searchTextField];
      (*(v31 + 64))(v27, v33, ObjectType, v31);

      swift_unknownObjectRelease();
    }

    if (sub_2747E32AC())
    {
      v35 = v34;
      v36 = swift_getObjectType();
      (*(v35 + 24))(v36, v35);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    (*(v30 + 8))(v27, v5);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747E8D34(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  type metadata accessor for WFDrawerSearchControlsView();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48))) & 1;
}

void sub_2747E8DB8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2747E8960();
}

void sub_2747E8E20()
{
  OUTLINED_FUNCTION_48();
  v35 = v2;
  v3 = *v0;
  v4 = *MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000] & *v0;
  type metadata accessor for WFDrawerSearchControlsView();
  v6 = *((v4 & v3) + 0x50);
  OUTLINED_FUNCTION_68();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v33 = sub_2749FD6C4();
  OUTLINED_FUNCTION_43();
  v31 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26_5();
  OUTLINED_FUNCTION_3_0();
  v32 = v9;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  v34 = v14;
  v40[8] = sub_2747E3100();
  v15 = v4 & v3;
  v16 = v35;
  v17 = *(v15 + 104);
  v18.i64[0] = v6;
  v40[6] = v35;
  v37 = v6;
  OUTLINED_FUNCTION_28_6(v17, vzip1q_s64(v18, *(v5 + 88)), *(v5 + 88), *(v5 + 96));
  v38 = sub_2747EA224;
  v39 = v40;
  OUTLINED_FUNCTION_9_9();
  sub_2749FCCC4();
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_29_7();
  sub_2749FCED4();
  v19 = TupleTypeMetadata2;

  OUTLINED_FUNCTION_14_6(v1);
  if (v20)
  {
    OUTLINED_FUNCTION_40_5();
    v21(v1, v33);
  }

  else
  {

    v22 = v32;
    v23 = *(v32 + 32);
    v24 = OUTLINED_FUNCTION_105_0();
    v23(v24);
    v25 = v34;
    (v23)(v34, v13, v6);
    if (sub_2747E3214())
    {
      v28 = v27;
      ObjectType = swift_getObjectType();
      v30 = [v16 searchTextField];
      (*(v28 + 56))(v25, v30, ObjectType, v28);
      swift_unknownObjectRelease();
    }

    (*(v22 + 8))(v25, v6);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747E91B4(void *a1, uint64_t a2, void *a3)
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v5 = a3;
  v6 = a1;
  sub_2747E8E20();
}

void sub_2747E9220()
{
  OUTLINED_FUNCTION_48();
  v42 = v2;
  v3 = *v0;
  v4 = *MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000] & *v0;
  type metadata accessor for WFDrawerSearchControlsView();
  v6 = *((v4 & v3) + 0x50);
  OUTLINED_FUNCTION_68();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = sub_2749FD6C4();
  OUTLINED_FUNCTION_43();
  v37 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26_5();
  OUTLINED_FUNCTION_9_9();
  v36 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  OUTLINED_FUNCTION_3_0();
  v40 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v39 = &v35 - v14;
  v46[8] = sub_2747E3100();
  v15 = *((v4 & v3) + 0x68);
  v16.i64[0] = v6;
  v46[6] = v42;
  v43 = v6;
  OUTLINED_FUNCTION_28_6(v15, vzip1q_s64(v16, *(v5 + 88)), *(v5 + 88), *(v5 + 96));
  v44 = sub_2747E9F84;
  v45 = v46;
  OUTLINED_FUNCTION_9_9();
  sub_2749FCCC4();
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_29_7();
  sub_2749FCED4();
  v17 = TupleTypeMetadata2;

  OUTLINED_FUNCTION_14_6(v1);
  if (v18)
  {
    OUTLINED_FUNCTION_40_5();
    v19(v1, v38);
  }

  else
  {
    v20 = *(v1 + *(v17 + 48));
    v21 = v36;
    v22 = *(v36 + 48);
    v23 = v40;
    v24 = *(v40 + 32);
    v24(v11, v1, v6);
    *&v11[v22] = v20;
    v25 = *&v11[*(v21 + 48)];
    v26 = v39;
    v24(v39, v11, v6);
    v27 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
    v28 = *&v25[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar];
    v29 = sub_2749FCD64();
    [v28 setText_];

    sub_2749585BC(0);
    [*&v25[v27] endEditing_];
    if (sub_2747E3214())
    {
      v32 = v31;
      ObjectType = swift_getObjectType();
      v34 = [v42 searchTextField];
      (*(v32 + 72))(v26, v34, ObjectType, v32);

      swift_unknownObjectRelease();
      v25 = v34;
    }

    (*(v23 + 8))(v26, v6);
  }

  OUTLINED_FUNCTION_46();
}

void sub_2747E9604(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2747E9220();
}

id sub_2747E966C()
{
  OUTLINED_FUNCTION_17_6();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFGridView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2747E96DC(uint64_t a1)
{

  OUTLINED_FUNCTION_1_23();

  OUTLINED_FUNCTION_1_23();

  OUTLINED_FUNCTION_1_23();
  v3 = *(v2 + 136);
  type metadata accessor for WFGridSectionContainerView();
  sub_2749F95A4();
  OUTLINED_FUNCTION_9();
  (*(v4 + 8))(a1 + v3);
  OUTLINED_FUNCTION_1_23();

  OUTLINED_FUNCTION_1_23();
  v6 = *(v5 + 152);
  OUTLINED_FUNCTION_17_6();
  type metadata accessor for WFSectionedItemsSnapshot();
  OUTLINED_FUNCTION_9();
  (*(v7 + 8))(a1 + v6);
  OUTLINED_FUNCTION_1_23();
  sub_2747545BC(a1 + *(v8 + 160));
  OUTLINED_FUNCTION_1_23();
  sub_2747545BC(a1 + *(v9 + 168));
  OUTLINED_FUNCTION_1_23();
  sub_2747545BC(a1 + *(v10 + 176));
  OUTLINED_FUNCTION_1_23();

  OUTLINED_FUNCTION_1_23();
}

void sub_2747E993C()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_2749FDAE4();
  __break(1u);
}

char *sub_2747E99D8(double a1)
{
  v3 = OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v16.receiver = v1;
  v16.super_class = type metadata accessor for WFGridSectionContainerView();
  v4 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView;
  v6 = *&v4[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView];
  v7 = v4;
  [v7 addSubview_];
  v8 = *&v4[v5];
  v9 = objc_allocWithZone(MEMORY[0x277D75348]);
  v10 = v8;
  v11 = sub_2747CA0C4(sub_2747E9B98, 0);
  [v10 setBackgroundColor_];

  v12 = [*&v4[v5] layer];
  [v12 setCornerCurve_];

  v13 = [*&v4[v5] layer];
  [v13 setMasksToBounds_];

  v14 = [*&v4[v5] layer];
  [v14 setCornerRadius_];

  [v7 setAccessibilityContainerType_];
  return v7;
}

id sub_2747E9B98(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = objc_allocWithZone(MEMORY[0x277D75348]);

    return [v1 initWithRed:0.212 green:0.212 blue:0.22 alpha:1.0];
  }

  else
  {
    v3 = [objc_opt_self() whiteColor];

    return v3;
  }
}

void sub_2747E9C2C()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for WFGridSectionContainerView();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = OUTLINED_FUNCTION_37_4();
  v3 = [v1 layer];
  [v3 cornerRadius];
  v5 = v4;

  [v2 setCornerRadius_];
  v6 = OUTLINED_FUNCTION_37_4();
  [v6 setCornerCurve_];

  v7 = OUTLINED_FUNCTION_37_4();
  v8 = [objc_opt_self() blackColor];
  v9 = [v8 CGColor];

  [v7 setShadowColor_];
  v10 = OUTLINED_FUNCTION_37_4();
  LODWORD(v11) = *"\nף<";
  [v10 setShadowOpacity_];

  v12 = OUTLINED_FUNCTION_37_4();
  [v12 setShadowOffset_];

  v13 = OUTLINED_FUNCTION_37_4();
  [v13 setShadowRadius_];
}

void sub_2747E9E58()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  OUTLINED_FUNCTION_24_8();
  __break(1u);
}

id sub_2747E9EDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFGridSectionContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2747E9F20()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_2747E9FF4()
{
  result = qword_280968FC8;
  if (!qword_280968FC8)
  {
    sub_2749F9284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968FC8);
  }

  return result;
}

uint64_t sub_2747EA090(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2747EA12C()
{
  result = qword_280969488;
  if (!qword_280969488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280969460);
    sub_2747EA1B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969488);
  }

  return result;
}

unint64_t sub_2747EA1B8()
{
  result = qword_280969490;
  if (!qword_280969490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969490);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_38_4()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t sub_2747EA338()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_2747EA380(void *a1)
{
  v2 = v1;
  v3 = [a1 integerValue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C9A0);
  if (v3 == 2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_274A11F50;
    v5 = [objc_opt_self() defaultDatabase];
    type metadata accessor for SmartShortcutPickerUserLibraryDataSource();
    OUTLINED_FUNCTION_132();
    v6 = SmartShortcutPickerUserLibraryDataSource.init(database:)(v5);
    OUTLINED_FUNCTION_0_19();
    v9 = sub_2747EC14C(v7, v8);
    *(v4 + 32) = v6;
    *(v4 + 40) = v9;
    type metadata accessor for SmartShortcutPickerPromotedActionsDataSource();
    OUTLINED_FUNCTION_132();
    v10 = SmartShortcutPickerPromotedActionsDataSource.init()();
    OUTLINED_FUNCTION_2_20();
    v13 = sub_2747EC14C(v11, v12);
    *(v4 + 48) = v10;
    *(v4 + 56) = v13;
    [objc_allocWithZone(MEMORY[0x277D23B70]) init];
    OUTLINED_FUNCTION_10_9();
    v14 = OUTLINED_FUNCTION_132();
    v22 = OUTLINED_FUNCTION_5_15(v14, v15, v16, v17, v18, v19, v20, v21, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], __src[0]);
    OUTLINED_FUNCTION_1_24();
    v25 = sub_2747EC14C(v23, v24);
    *(v4 + 64) = v22;
    *(v4 + 72) = v25;
    v26 = *MEMORY[0x277D7D818];
  }

  else
  {
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_274A0F610;
    v28 = [objc_opt_self() defaultDatabase];
    type metadata accessor for SmartShortcutPickerUserLibraryDataSource();
    OUTLINED_FUNCTION_132();
    v29 = SmartShortcutPickerUserLibraryDataSource.init(database:)(v28);
    OUTLINED_FUNCTION_0_19();
    v32 = sub_2747EC14C(v30, v31);
    *(v27 + 32) = v29;
    *(v27 + 40) = v32;
    type metadata accessor for SmartShortcutPickerPromotedActionsDataSource();
    OUTLINED_FUNCTION_132();
    v33 = SmartShortcutPickerPromotedActionsDataSource.init()();
    OUTLINED_FUNCTION_2_20();
    v36 = sub_2747EC14C(v34, v35);
    *(v27 + 48) = v33;
    *(v27 + 56) = v36;
    __src[0] = *MEMORY[0x277D7D818];
    LOBYTE(__src[11]) = 1;
    type metadata accessor for SmartShortcutPickerStaccatoSuggestionsDataSource();
    OUTLINED_FUNCTION_132();
    v26 = __src[0];
    v37 = SmartShortcutPickerStaccatoSuggestionsDataSource.init(style:)(__src);
    v38 = sub_2747EC14C(&qword_280969518, type metadata accessor for SmartShortcutPickerStaccatoSuggestionsDataSource);
    *(v27 + 64) = v37;
    *(v27 + 72) = v38;
    [objc_allocWithZone(MEMORY[0x277D23B70]) init];
    OUTLINED_FUNCTION_10_9();
    v39 = OUTLINED_FUNCTION_132();
    v47 = OUTLINED_FUNCTION_5_15(v39, v40, v41, v42, v43, v44, v45, v46, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], __src[0]);
    OUTLINED_FUNCTION_1_24();
    v50 = sub_2747EC14C(v48, v49);
    *(v27 + 80) = v47;
    *(v27 + 88) = v50;
  }

  v51 = *MEMORY[0x277D7D828];
  SmartShortcutPickerAppAvailabilityChecker.Availability.init(configurationContext:)(v51, &v93);
  SmartShortcutPickerAppAvailabilityChecker.Strategy.init(configurationContext:)(v51, &__dst[191]);
  __dst[190] = __dst[191];
  sub_2747B9A5C(__src);
  memcpy(__dst, __src, 0xB9uLL);
  type metadata accessor for SmartShortcutPickerDataSource();
  OUTLINED_FUNCTION_132();
  SmartShortcutPickerDataSource.init(dataSources:appAvailabilityContext:appAvailabilityStrategy:selectedEntry:)();
  v53 = v52;
  *__dst = v26;
  __dst[88] = 1;
  v54 = *MEMORY[0x277D7D830];

  v55 = v26;
  SmartShortcutPickerViewStyle.init(with:)(v54, &v93);
  OUTLINED_FUNCTION_86();
  v56 = swift_allocObject();
  *(v56 + 16) = v2;
  OUTLINED_FUNCTION_86();
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for SmartShortcutPickerSelectionCoordinator();
  swift_allocObject();
  v58 = v2;
  v59 = SmartShortcutPickerSelectionCoordinator.init(style:selectionHandler:errorHandler:)(&v93, sub_2747EC194, v56, sub_2747EC1B8, v57);
  v60 = objc_allocWithZone(type metadata accessor for SmartShortcutPickerViewController());
  v61 = SmartShortcutPickerViewController.init(dataSource:style:selectionCoordinator:)(v53, __dst, v59);
  v62 = _UISolariumEnabled();
  v63 = v61;
  v64 = [v63 sheetPresentationController];
  v65 = v64;
  if (!v62)
  {
    if (v64)
    {
      [v64 setPrefersGrabberVisible_];
    }

    v87 = [v63 sheetPresentationController];

    if (!v87)
    {
      goto LABEL_16;
    }

    [v87 _setGrabberTopSpacing_];
LABEL_15:

LABEL_16:
    v88 = v63;
    v89 = [v88 view];
    if (v89)
    {
      v90 = v89;
      v91 = [objc_opt_self() systemGroupedBackgroundColor];
      OUTLINED_FUNCTION_11_11(v91);

      return;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v64)
  {
    [v64 setPrefersGrabberVisible_];
  }

  v66 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v67 = [objc_opt_self() systemGray3Color];
  OUTLINED_FUNCTION_11_11(v67);

  v68 = [v66 layer];
  [v68 setCornerRadius_];

  v69 = [v66 layer];
  [v69 setMasksToBounds_];

  [v66 setTranslatesAutoresizingMaskIntoConstraints_];
  v70 = [v63 view];
  if (!v70)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v71 = v70;
  [v70 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_274A108E0;
  v72 = [v66 centerXAnchor];
  v73 = [v63 view];
  if (!v73)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v74 = v73;
  v75 = [v73 centerXAnchor];

  v76 = [v72 constraintEqualToAnchor_];
  *(v62 + 32) = v76;
  v77 = [v66 topAnchor];
  v78 = [v63 view];

  if (v78)
  {
    v79 = objc_opt_self();
    v80 = [v78 safeAreaLayoutGuide];

    v81 = [v80 topAnchor];
    v82 = [v77 constraintEqualToAnchor:v81 constant:6.0];

    *(v62 + 40) = v82;
    v83 = [v66 heightAnchor];
    v84 = [v83 constraintEqualToConstant_];

    *(v62 + 48) = v84;
    v85 = [v66 widthAnchor];
    v86 = [v85 constraintEqualToConstant_];

    *(v62 + 56) = v86;
    sub_27478069C();
    v87 = sub_2749FCF74();

    [v79 activateConstraints_];

    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
}

void sub_2747EAC14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      v3 = sub_2749F8FD4();
      [v2 smartShortcutPickerViewControllerDidFinishWithSystemActionWithSystemAction:0 error:v3];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_2747EAD18(const void *a1, uint64_t a2)
{
  v5 = type metadata accessor for SmartShortcutPickerSelectedEntry();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20[-v10];
  memcpy(v21, a1, 0xB9uLL);
  v12 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  sub_2747EBB34(a2, v8);
  sub_2749FD0A4();
  sub_2747EBB98(v21, v20);
  v13 = v2;
  v14 = sub_2749FD094();
  v15 = (*(v6 + 80) + 217) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v14;
  v17[3] = v18;
  memcpy(v17 + 4, v21, 0xB9uLL);
  sub_2747EBD84(v8, v17 + v15);
  *(v17 + v16) = v13;
  sub_27479930C();
}

uint64_t sub_2747EAF10(int a1, int a2, int a3, void *__src, uint64_t a5, uint64_t a6)
{
  v6[182] = a6;
  v6[181] = a5;
  v6[180] = __src;
  memcpy(v6 + 2, __src, 0xB9uLL);
  v7 = sub_2749FA4E4();
  v6[183] = v7;
  v6[184] = *(v7 - 8);
  v6[185] = swift_task_alloc();
  sub_2749FD0A4();
  v6[186] = sub_2749FD094();
  v9 = sub_2749FD044();
  v6[187] = v9;
  v6[188] = v8;

  return MEMORY[0x2822009F8](sub_2747EB020, v9, v8);
}

uint64_t sub_2747EB020()
{
  memcpy((v0 + 208), *(v0 + 1440), 0xB9uLL);
  v1 = sub_274772AD0(v0 + 208);
  if (v1 == 1)
  {
    v10 = *(v0 + 1448);
    v11 = *sub_274721C98(v0 + 208);

    memcpy((v0 + 400), (v0 + 16), 0xB9uLL);
    v12 = *sub_274721C98(v0 + 400);
    v13 = [v11 name];
    v14 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v16 = v15;

    *(v0 + 1080) = v14;
    *(v0 + 1088) = v16;
    *(v0 + 1096) = MEMORY[0x277D84F90];
    sub_2747EBF0C(v0 + 1080);
    v17 = *(v10 + 192);
    v18 = *(v10 + 200);
    LOBYTE(v16) = *(v10 + 208);
    memcpy((v0 + 592), (v0 + 1080), 0x81uLL);
    *(v0 + 728) = 0u;
    *(v0 + 744) = v17;
    *(v0 + 752) = v18;
    *(v0 + 760) = v16;
    sub_2749F8F54();
    OUTLINED_FUNCTION_132();
    sub_27477D408(v17, v18, v16);
    sub_2749F8F44();
    memcpy((v0 + 768), (v0 + 592), 0xA9uLL);
    sub_27477C9A8();
    v20 = sub_2749F8F34();
    v22 = v21;
    swift_allocObject();
    sub_2749F8F44();
    type metadata accessor for SmartShortcutPickerSelectedEntry();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A30);
    sub_2747EC040();
    v23 = sub_2749F8F34();
    v25 = v24;
    v26 = objc_allocWithZone(MEMORY[0x277D79E78]);
    v27 = OUTLINED_FUNCTION_99();
    sub_2747EC0F4(v27, v28);
    sub_2747EC0F4(v23, v25);
    v29 = sub_2747EBF68(v11, v20, v22, v23, v25);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong smartShortcutPickerViewControllerDidFinishWithSystemActionWithSystemAction:v29 error:0];
      v31 = OUTLINED_FUNCTION_99();
      sub_2747BD02C(v31, v32);
      sub_2747BD02C(v23, v25);
      swift_unknownObjectRelease();

      sub_27477C9FC(v0 + 592);
    }

    else
    {
      v33 = OUTLINED_FUNCTION_99();
      sub_2747BD02C(v33, v34);
      sub_2747BD02C(v23, v25);

      sub_27477C9FC(v0 + 592);
    }
  }

  else
  {
    if (v1 == 2)
    {
      v2 = *(v0 + 1448);
      v3 = sub_274721C98(v0 + 208);
      v4 = *(v3 + 48);
      v37 = *(v3 + 16);
      v38 = *v3;
      v36 = *(v3 + 32);
      memcpy((v0 + 944), (v3 + 49), 0x88uLL);
      *(v0 + 1352) = v38;
      *(v0 + 1368) = v37;
      *(v0 + 1384) = v36;
      *(v0 + 1400) = v4 & 1;
      memcpy((v0 + 1216), (v0 + 951), 0x81uLL);
      v5 = *(v2 + 192);
      v6 = *(v2 + 200);
      v7 = *(v2 + 208);
      *(v0 + 1408) = v5;
      *(v0 + 1416) = v6;
      *(v0 + 1424) = v7;
      type metadata accessor for SmartShortcutPickerSelectedEntry();
      sub_27477D408(v5, v6, v7);
      v8 = swift_task_alloc();
      *(v0 + 1512) = v8;
      *v8 = v0;
      v8[1] = sub_2747EB650;

      return SmartShortcutPickerActionTemplate.asSystemAction(with:sectionIdentifier:iconOverride:colorScheme:)();
    }

    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      [v19 smartShortcutPickerViewControllerDidFinishWithSystemActionWithSystemAction:0 error:0];
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_48_0();

  return v35();
}

uint64_t sub_2747EB650(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1520) = a1;
  *(v3 + 1528) = v1;

  sub_27478C4DC(*(v3 + 1408), *(v3 + 1416), *(v3 + 1424));
  v4 = *(v3 + 1504);
  v5 = *(v3 + 1496);
  if (v1)
  {
    v6 = sub_2747EB834;
  }

  else
  {
    v6 = sub_2747EB790;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2747EB790()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 1520);
  if (Strong)
  {
    [Strong smartShortcutPickerViewControllerDidFinishWithSystemActionWithSystemAction:*(v0 + 1520) error:0];
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_48_0();

  return v3();
}

uint64_t sub_2747EB834()
{
  v25 = v0;

  v1 = v0[191];
  sub_2749FA3D4();
  v2 = v1;
  v3 = sub_2749FA4D4();
  v4 = sub_2749FD2C4();

  if (os_log_type_enabled(v3, v4))
  {
    v23 = v0[185];
    v5 = v0[184];
    v6 = v0[183];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    v0[179] = v1;
    v9 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C18);
    v10 = sub_2749FCDC4();
    v12 = sub_2747AF460(v10, v11, &v24);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_9_10(&dword_274719000, v13, v14, "Failed to construct selected action due to: %s");
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();

    (*(v5 + 8))(v23, v6);
  }

  else
  {
    v15 = v0[185];
    v16 = v0[184];
    v17 = v0[183];

    (*(v16 + 8))(v15, v17);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = sub_2749F8FD4();
    [v19 smartShortcutPickerViewControllerDidFinishWithSystemActionWithSystemAction:0 error:v20];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  OUTLINED_FUNCTION_48_0();

  return v21();
}

id sub_2747EBA60()
{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartShortcutPickerViewControllerManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2747EBACC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartShortcutPickerViewControllerManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2747EBB34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartShortcutPickerSelectedEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2747EBBF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 a24)
{
  switch(a24 >> 6)
  {
    case 1:

      break;
    case 2:
      sub_27477CABC(a1, a2, a3, a4, a5, a6, a7 & 1);

      sub_2747D2D7C(a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24 & 0x3F);
      break;
    case 3:
      return;
    default:

      break;
  }
}

uint64_t sub_2747EBD84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartShortcutPickerSelectedEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2747EBDE8(int a1)
{
  v4 = *(type metadata accessor for SmartShortcutPickerSelectedEntry() - 8);
  v5 = (*(v4 + 80) + 217) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2747E2AF4;

  return sub_2747EAF10(a1, v6, v7, v1 + 4, v1 + v5, v8);
}

id sub_2747EBF68(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_2749F9074();
    sub_2747BD018(a2, a3);
  }

  if (a5 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_2749F9074();
    sub_2747BD018(a4, a5);
  }

  v13 = [v5 initWithWorkflow:a1 shortcutsMetadata:v9 colorScheme:v12];

  return v13;
}

unint64_t sub_2747EC040()
{
  result = qword_280970700;
  if (!qword_280970700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968A30);
    sub_2747EC14C(&qword_280969508, MEMORY[0x277D7D618]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970700);
  }

  return result;
}

uint64_t sub_2747EC0F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2747EC14C(unint64_t *a1, void (*a2)(uint64_t))
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

void LinkSnippetDialogView.init(request:snippetEnvironmentProvider:snippetResultValueUpdated:)()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  OUTLINED_FUNCTION_34(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = v23 - v14;
  if (v7)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v7;
    *(v16 + 24) = v5;
  }

  v23[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969528);
  swift_allocObject();
  sub_27473A658(v7);
  v17 = v9;
  v18 = sub_2749FCC64();
  v19 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v19);
  sub_2749FD0A4();

  v20 = sub_2749FD094();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v18;
  sub_27479930C();

  *v11 = v18;
  v11[1] = v7;
  v11[2] = v5;
  v11[3] = v3;
  v11[4] = v1;
  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747EC380(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_2747EC3E4()
{
  v0[2] = sub_2749FD0A4();
  v0[3] = sub_2749FD094();
  v3 = (*MEMORY[0x277D63DA0] + MEMORY[0x277D63DA0]);
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2747EC4A8;

  return v3();
}

uint64_t sub_2747EC4A8()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v1 = *v0;
  OUTLINED_FUNCTION_8_1();
  *v2 = v1;

  v4 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_2747EC5D4, v4, v3);
}

uint64_t sub_2747EC5D4()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t sub_2747EC62C()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_22_9(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_7(v1);

  return sub_2747EC3E4();
}

uint64_t sub_2747EC6C4()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_22_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_12(v1);

  return v4(v3);
}

void LinkSnippetDialogView.body.getter()
{
  OUTLINED_FUNCTION_48();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969530);
  OUTLINED_FUNCTION_43();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  v7 = v0[1];
  v13 = *v0;
  v14 = v7;
  v15 = *(v0 + 4);

  sub_2749FCC44();
  v8 = sub_2749FCC54();
  v12[5] = v8;
  v9 = swift_allocObject();
  v10 = v14;
  *(v9 + 16) = v13;
  *(v9 + 32) = v10;
  *(v9 + 48) = v15;
  sub_2747EC934(&v13, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969538);
  OUTLINED_FUNCTION_4_14();
  sub_27472AB6C(v11, &qword_280969530);
  sub_2747EC96C();
  sub_2749FC304();

  (*(v3 + 8))(v6, v1);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747EC900(uint64_t a1, void *a2)
{
  v3 = *(v2 + 40);
  if (v3)
  {
    return v3(*a2);
  }

  return result;
}

unint64_t sub_2747EC96C()
{
  result = qword_280969548;
  if (!qword_280969548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969538);
    sub_2747EC9F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969548);
  }

  return result;
}

unint64_t sub_2747EC9F0()
{
  result = qword_280969550;
  if (!qword_280969550)
  {
    sub_27471CF08(255, &qword_280969558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969550);
  }

  return result;
}

uint64_t sub_2747ECA94(void *a1, uint64_t (*a2)(void))
{
  v5 = v2;
  v6 = [v2 snippetAction];
  if (!v6 || (v7 = v6, sub_274916A5C(a1), v9 = v8, v11 = v10, v7, !v11))
  {
    v12 = [v5 viewSnippet];
    if (v12)
    {
      v13 = v12;
      v9 = a2();
    }

    else
    {

      return 0;
    }
  }

  return v9;
}

uint64_t WFLinkSnippetDialogRequest.fetchArchive(snippetEnvironmentProvider:)()
{
  OUTLINED_FUNCTION_79();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_2749F8E44();
  v1[6] = v5;
  v1[7] = *(v5 - 8);
  v1[8] = swift_task_alloc();
  sub_2749FD0A4();
  v1[9] = sub_2749FD094();
  v7 = sub_2749FD044();
  v1[10] = v7;
  v1[11] = v6;

  return MEMORY[0x2822009F8](sub_2747ECC54, v7, v6);
}

uint64_t sub_2747ECC54()
{
  v1 = [*(v0 + 40) snippetAction];
  *(v0 + 96) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v3 = OUTLINED_FUNCTION_24_9(v2);

    return MEMORY[0x2821CBF08](v3);
  }

  else
  {
    v4 = [*(v0 + 40) viewSnippet];
    *(v0 + 120) = v4;
    if (v4)
    {
      v5 = swift_task_alloc();
      *(v0 + 128) = v5;
      *v5 = v0;
      v6 = OUTLINED_FUNCTION_24_9(v5);

      return MEMORY[0x2821CBED8](v6);
    }

    else
    {
      v7 = *(v0 + 64);
      v8 = *(v0 + 48);
      v9 = *(v0 + 56);

      *(v0 + 144) = 22;
      sub_2747F1734(MEMORY[0x277D84F90]);
      sub_2747F1888(&qword_280969560, MEMORY[0x277CC8658]);
      sub_2749F8FC4();
      sub_2749F8E34();
      (*(v9 + 8))(v7, v8);
      swift_willThrow();

      OUTLINED_FUNCTION_48_0();

      return v10();
    }
  }
}

uint64_t sub_2747ECE8C()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_2747ED1D4;
  }

  else
  {
    v5 = sub_2747ECFC4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2747ECFC4()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_48_0();

  return v2();
}

uint64_t sub_2747ED030()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_2747ED240;
  }

  else
  {
    v5 = sub_2747ED168;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2747ED168()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 120);

  OUTLINED_FUNCTION_48_0();

  return v2();
}

uint64_t sub_2747ED1D4()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_48_0();

  return v2();
}

uint64_t sub_2747ED240()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 120);

  OUTLINED_FUNCTION_48_0();

  return v2();
}

uint64_t sub_2747ED2F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2747ED3A8;

  return WFLinkSnippetDialogRequest.fetchArchive(snippetEnvironmentProvider:)();
}

uint64_t sub_2747ED3A8()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v1 = *v0;
  OUTLINED_FUNCTION_8_1();
  *v2 = v1;

  OUTLINED_FUNCTION_48_0();

  return v3();
}

void sub_2747ED488()
{
  OUTLINED_FUNCTION_48();
  v41 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v44 = sub_2749FBC04();
  OUTLINED_FUNCTION_43();
  v42 = v12;
  MEMORY[0x28223BE20](v13);
  v43 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  OUTLINED_FUNCTION_34(v15);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  if (v11)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v11;
    *(v19 + 24) = v9;
  }

  v45 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969528);
  swift_allocObject();
  v20 = OUTLINED_FUNCTION_63();
  sub_27473A658(v20);
  v21 = OUTLINED_FUNCTION_63();
  sub_27473A658(v21);
  v22 = v0;
  v23 = OUTLINED_FUNCTION_45();
  sub_27473A658(v23);
  v24 = sub_2749FCC64();
  v25 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v25);
  sub_2749FD0A4();

  v26 = sub_2749FD094();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v24;
  sub_27479930C();

  if (v3)
  {
    v45 = v24;
    v46 = v11;
    v47 = v9;
    v48 = v7;
    v49 = v5;
    v50 = v3;
    v51 = v41;
    sub_27473A658(v3);

    v29 = OUTLINED_FUNCTION_63();
    sub_27473A658(v29);
    v30 = OUTLINED_FUNCTION_45();
    sub_27473A658(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969720);
    sub_2747F25F8();
  }

  else
  {
    v45 = v24;
    v46 = v11;
    v47 = v9;
    v48 = v7;
    v49 = v5;

    v31 = OUTLINED_FUNCTION_63();
    sub_27473A658(v31);
    v32 = OUTLINED_FUNCTION_45();
    sub_27473A658(v32);
    sub_2747F25A4();
  }

  v45 = sub_2749FC6A4();
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809696F8));
  v33 = sub_2749F9F34();
  v34 = [v33 view];
  if (v34)
  {
    v35 = v34;
    v36 = [objc_opt_self() clearColor];
    [v35 setBackgroundColor_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969700);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_274A0F620;
    sub_2749FBBF4();
    sub_2749FBBE4();
    v45 = v37;
    sub_2747F1888(&qword_280969708, MEMORY[0x277CDE4B0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969710);
    sub_27472AB6C(&qword_280969718, &qword_280969710);
    sub_2749FD7B4();
    sub_2749FB6A4();

    v38 = OUTLINED_FUNCTION_63();
    sub_27471F8A4(v38);
    v39 = OUTLINED_FUNCTION_45();
    sub_27471F8A4(v39);

    OUTLINED_FUNCTION_46();
  }

  else
  {
    __break(1u);
  }
}

uint64_t View.onSnippetTapped(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x277C5E040](v4, a3, &type metadata for SnippetTapHandlingModifier);
}

id sub_2747ED93C(void *a1, int a2, void *aBlock, const void *a4, const void *a5)
{
  v8 = _Block_copy(aBlock);
  v9 = _Block_copy(a4);
  v10 = _Block_copy(a5);
  if (v8)
  {
    *(swift_allocObject() + 16) = v8;
    v8 = sub_2747F2504;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_3:
  *(swift_allocObject() + 16) = v9;
  v9 = sub_2747F24F0;
  if (v10)
  {
LABEL_4:
    *(swift_allocObject() + 16) = v10;
    v11 = sub_2747F24E8;
    goto LABEL_8;
  }

LABEL_7:
  v11 = 0;
LABEL_8:
  v12 = a1;
  sub_2747ED488();
  v14 = v13;
  sub_27471F8A4(v11);
  sub_27471F8A4(v9);
  sub_27471F8A4(v8);

  return v14;
}

id sub_2747EDABC(uint64_t a1)
{
  v1 = (*(a1 + 16))();

  return v1;
}

void sub_2747EDAF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967618);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_2747B97A0(a1, &v9 - v5, &qword_280967618);
  v7 = sub_2749F9064();
  v8 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    v8 = sub_2749F9024();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  (*(a2 + 16))(a2, v8);
}

void View.observeSnippetEnvironment(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = type metadata accessor for SnippetEnvironmentModifier();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v33);
  v35 = (&a9 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_2747EDCDC(v31, v29, v27, v35);
  MEMORY[0x277C5E040](v35, v25, v32, v23);
  sub_2747F191C(v35);
  OUTLINED_FUNCTION_46();
}

void sub_2747EDCDC(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for SnippetEnvironmentModifier();
  v9 = v8[6];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969650);
  swift_storeEnumTagMultiPayload();
  v10 = v8[7];
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200);
  swift_storeEnumTagMultiPayload();
  v11 = v8[8];
  *(a4 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969658);
  swift_storeEnumTagMultiPayload();
  v12 = v8[9];
  *(a4 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AA8);
  swift_storeEnumTagMultiPayload();
  v13 = v8[10];
  *(a4 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  swift_storeEnumTagMultiPayload();
  v14 = v8[11];
  *(a4 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60);
  swift_storeEnumTagMultiPayload();
  v15 = a4 + v8[12];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = v8[13];
  *(a4 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969660);
  swift_storeEnumTagMultiPayload();
  v17 = a4 + v8[14];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = a4 + v8[15];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = a4 + v8[16];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = a4 + v8[17];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v25[1] = a1;
  v25[2] = a2;
  v25[3] = a3;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809696C0);
  MEMORY[0x277C5E410](v25, v21);
  v22 = v25[0];
  [v25[0] size];
  v24 = v23;

  a4[3] = v24;
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
}

uint64_t sub_2747EDF98@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809696C8);
  sub_27472AB6C(&qword_2809696D0, &qword_2809696C8);
  sub_2749FC074();

  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809696D8) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809696E0);

  sub_2749FACB4();
  *v9 = KeyPath;
  v10 = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809696E8) + 36));

  result = sub_2749FACB4();
  *v12 = v10;
  return result;
}

uint64_t sub_2747EE184(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967618);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_2749F9064();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  a1(v4);
  return sub_2747359D0(v4, &qword_280967618);
}

uint64_t sub_2747EE248(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967618);
  OUTLINED_FUNCTION_34(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  v8 = sub_2749F9064();
  OUTLINED_FUNCTION_9();
  (*(v9 + 16))(v7, a1, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  a2(v7);
  sub_2747359D0(v7, &qword_280967618);
  return sub_2749FACA4();
}

uint64_t sub_2747EE34C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969650);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SnippetEnvironmentModifier();
  sub_2747B97A0(v1 + *(v10 + 24), v9, &qword_280969650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749F91B4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2747EE554@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SnippetEnvironmentModifier();
  sub_2747B97A0(v1 + *(v10 + 28), v9, &unk_28096C200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749FAE14();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2747EE75C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969658);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SnippetEnvironmentModifier();
  sub_2747B97A0(v1 + *(v10 + 32), v9, &qword_280969658);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2747F2454(v9, a1);
  }

  sub_2749FD2D4();
  v12 = sub_2749FBC14();
  sub_2749FA424();

  sub_2749FB4B4();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2747EE934@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AA8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SnippetEnvironmentModifier();
  sub_2747B97A0(v1 + *(v10 + 36), v9, &qword_280968AA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749FAE34();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2747EEB3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SnippetEnvironmentModifier();
  sub_2747B97A0(v1 + *(v10 + 40), v9, &qword_28096D850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749FAA94();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2747EED44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SnippetEnvironmentModifier();
  sub_2747B97A0(v1 + *(v10 + 44), v9, &qword_28096DA60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749FB614();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_2747EEF4C()
{
  v1 = sub_2749FB4C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SnippetEnvironmentModifier() + 48));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_2749FD2D4();
  v8 = sub_2749FBC14();
  sub_2749FA424();

  sub_2749FB4B4();
  swift_getAtKeyPath();
  sub_27471F620(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_2747EF0A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969660);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SnippetEnvironmentModifier();
  sub_2747B97A0(v1 + *(v10 + 52), v9, &qword_280969660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749FAB54();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2747EF2B0()
{
  v1 = sub_2749FB4C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SnippetEnvironmentModifier() + 56);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2749FD2D4();
    v7 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_27471F620(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_2747EF408()
{
  v1 = sub_2749FB4C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SnippetEnvironmentModifier() + 60);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2749FD2D4();
    v7 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_27471F620(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_2747EF560()
{
  v1 = sub_2749FB4C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SnippetEnvironmentModifier() + 64);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2749FD2D4();
    v7 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_27471F620(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_2747EF6B8()
{
  v1 = sub_2749FB4C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SnippetEnvironmentModifier() + 68);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2749FD2D4();
    v7 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_27471F620(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_2747EF818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v187 = a1;
  v178 = a2;
  v3 = sub_2749FAB54();
  v4 = *(v3 - 8);
  v176 = v3;
  v177 = v4;
  MEMORY[0x28223BE20](v3);
  v175 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_2749FB614();
  v172 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v165 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_2749FAA94();
  v164 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v157 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_2749FAE34();
  v156 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v150 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809695C8);
  MEMORY[0x28223BE20](v148);
  v145 = &v132 - v9;
  v142 = sub_2749FAE14();
  v143 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v137 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SnippetEnvironmentModifier();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v13;
  v15 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_2749F91B4();
  v135 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v17 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809695F8);
  v139 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v133 = &v132 - v18;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969600);
  v141 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v136 = &v132 - v19;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969608);
  v146 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v179 = &v132 - v20;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969610);
  v149 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v181 = &v132 - v21;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969618);
  v152 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v180 = &v132 - v22;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969620);
  v155 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v182 = &v132 - v23;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969628);
  v159 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v183 = &v132 - v24;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969630);
  v163 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v184 = &v132 - v25;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969638);
  v168 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v185 = &v132 - v26;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969640);
  v170 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v160 = &v132 - v27;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969648);
  v174 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v166 = &v132 - v28;
  v191 = v2;
  sub_2747EE34C(v17);
  sub_2747F1E88(v2, v15);
  v188 = *(v12 + 80);
  v29 = (v188 + 16) & ~v188;
  v190 = v14;
  v30 = swift_allocObject();
  sub_2747F1EEC(v15, v30 + v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969668);
  v32 = sub_27472AB6C(&qword_280969670, &qword_280969668);
  v33 = sub_2747F1888(&qword_280969678, MEMORY[0x277CC9788]);
  v34 = v134;
  sub_2749FC314();

  v35 = v17;
  v36 = v34;
  (*(v135 + 8))(v35, v34);
  v37 = v137;
  v38 = v191;
  sub_2747EE554(v137);
  v186 = v15;
  sub_2747F1E88(v38, v15);
  v39 = swift_allocObject();
  sub_2747F1EEC(v15, v39 + v29);
  v193 = v31;
  v194 = v36;
  v195 = v32;
  v196 = v33;
  v187 = MEMORY[0x277CE0E40];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_2747F1888(&qword_280969680, MEMORY[0x277CDFA28]);
  v42 = v136;
  v43 = v37;
  v44 = v138;
  v45 = v142;
  v46 = v133;
  sub_2749FC314();

  v47 = v45;
  (*(v143 + 8))(v43, v45);
  (*(v139 + 8))(v46, v44);
  v48 = v145;
  v49 = v191;
  sub_2747EE75C(v145);
  v50 = v186;
  sub_2747F1E88(v49, v186);
  v189 = v29;
  v51 = swift_allocObject();
  sub_2747F1EEC(v50, v51 + v29);
  v193 = v44;
  v194 = v47;
  v195 = OpaqueTypeConformance2;
  v196 = v41;
  v143 = swift_getOpaqueTypeConformance2();
  v52 = sub_2747F1F54();
  v53 = v48;
  v54 = v140;
  v55 = v148;
  sub_2749FC314();

  sub_2747359D0(v53, &qword_2809695C8);
  (*(v141 + 8))(v42, v54);
  v56 = v150;
  v57 = v191;
  sub_2747EE934(v150);
  v58 = v186;
  sub_2747F1E88(v57, v186);
  v59 = v189;
  v60 = swift_allocObject();
  sub_2747F1EEC(v58, v60 + v59);
  v193 = v54;
  v194 = v55;
  v195 = v143;
  v196 = v52;
  v148 = swift_getOpaqueTypeConformance2();
  v61 = sub_2747F1888(&qword_280969698, MEMORY[0x277CDFAA0]);
  v62 = v144;
  v63 = v154;
  v64 = v179;
  sub_2749FC314();

  (*(v156 + 8))(v56, v63);
  (*(v146 + 8))(v64, v62);
  v65 = v157;
  v66 = v191;
  sub_2747EEB3C(v157);
  v67 = v66;
  v68 = v186;
  sub_2747F1E88(v67, v186);
  v69 = v189;
  v70 = swift_allocObject();
  sub_2747F1EEC(v68, v70 + v69);
  v193 = v62;
  v194 = v63;
  v195 = v148;
  v196 = v61;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = sub_2747F1888(&qword_280968A80, MEMORY[0x277CDF3E0]);
  v73 = v181;
  v74 = v147;
  v75 = v162;
  sub_2749FC314();

  v76 = v65;
  v77 = v75;
  (*(v164 + 8))(v76, v75);
  (*(v149 + 8))(v73, v74);
  v78 = v165;
  v79 = v191;
  sub_2747EED44(v165);
  v80 = v186;
  sub_2747F1E88(v79, v186);
  v81 = v189;
  v82 = swift_allocObject();
  sub_2747F1EEC(v80, v82 + v81);
  v193 = v74;
  v194 = v77;
  v195 = v71;
  v196 = v72;
  v181 = swift_getOpaqueTypeConformance2();
  v83 = sub_2747F1888(&qword_2809696A0, MEMORY[0x277CE0228]);
  v84 = v78;
  v85 = v151;
  v86 = v171;
  v87 = v180;
  sub_2749FC314();

  (*(v172 + 8))(v84, v86);
  (*(v152 + 8))(v87, v85);
  v88 = v191;
  v192 = sub_2747EEF4C();
  sub_2747F1E88(v88, v80);
  v89 = v189;
  v90 = swift_allocObject();
  sub_2747F1EEC(v80, v90 + v89);
  v193 = v85;
  v194 = v86;
  v195 = v181;
  v196 = v83;
  v91 = swift_getOpaqueTypeConformance2();
  v92 = sub_2747F2008();
  v93 = v182;
  v94 = v153;
  sub_2749FC314();

  (*(v155 + 8))(v93, v94);
  v95 = v175;
  v96 = v191;
  sub_2747EF0A8(v175);
  sub_2747F1E88(v96, v80);
  v97 = v189;
  v98 = swift_allocObject();
  sub_2747F1EEC(v80, v98 + v97);
  v193 = v94;
  v194 = MEMORY[0x277D85048];
  v195 = v91;
  v196 = v92;
  v99 = swift_getOpaqueTypeConformance2();
  v100 = sub_2747F1888(&qword_2809696B0, MEMORY[0x277CDF548]);
  v101 = v183;
  v102 = v158;
  v103 = v176;
  sub_2749FC314();

  (*(v177 + 8))(v95, v103);
  (*(v159 + 8))(v101, v102);
  v104 = v191;
  LOBYTE(v192) = sub_2747EF2B0() & 1;
  v105 = v80;
  sub_2747F1E88(v104, v80);
  v106 = v189;
  v107 = swift_allocObject();
  sub_2747F1EEC(v105, v107 + v106);
  v193 = v102;
  v194 = v103;
  v195 = v99;
  v196 = v100;
  v108 = swift_getOpaqueTypeConformance2();
  v109 = v184;
  v110 = v161;
  sub_2749FC314();

  (*(v163 + 8))(v109, v110);
  v111 = v191;
  LOBYTE(v192) = sub_2747EF408() & 1;
  sub_2747F1E88(v111, v105);
  v112 = swift_allocObject();
  sub_2747F1EEC(v105, v112 + v106);
  v193 = v110;
  v194 = MEMORY[0x277D839B0];
  v195 = v108;
  v196 = MEMORY[0x277D839C8];
  v113 = swift_getOpaqueTypeConformance2();
  v114 = v160;
  v115 = v167;
  v116 = v185;
  sub_2749FC314();

  (*(v168 + 8))(v116, v115);
  v117 = v191;
  LOBYTE(v192) = sub_2747EF560() & 1;
  v118 = v186;
  sub_2747F1E88(v117, v186);
  v119 = swift_allocObject();
  sub_2747F1EEC(v118, v119 + v106);
  v193 = v115;
  v194 = MEMORY[0x277D839B0];
  v195 = v113;
  v120 = MEMORY[0x277D839C8];
  v196 = MEMORY[0x277D839C8];
  v121 = swift_getOpaqueTypeConformance2();
  v122 = v166;
  v123 = v169;
  v124 = v120;
  sub_2749FC314();

  (*(v170 + 8))(v114, v123);
  v125 = v191;
  LOBYTE(v192) = sub_2747EF6B8() & 1;
  sub_2747F1E88(v125, v118);
  v126 = swift_allocObject();
  sub_2747F1EEC(v118, v126 + v106);
  v193 = v123;
  v194 = MEMORY[0x277D839B0];
  v195 = v121;
  v196 = v124;
  swift_getOpaqueTypeConformance2();
  v127 = v178;
  v128 = v173;
  sub_2749FC314();

  (*(v174 + 8))(v122, v128);
  sub_2747F1E88(v191, v118);
  v129 = swift_allocObject();
  sub_2747F1EEC(v118, v129 + v106);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809696B8);
  v131 = (v127 + *(result + 36));
  *v131 = sub_2747F2F10;
  v131[1] = v129;
  v131[2] = 0;
  v131[3] = 0;
  return result;
}

uint64_t sub_2747F0FE8()
{
  v1 = v0;
  v2 = sub_2749FAB54();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2749FB614();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2749FAA94();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2749FAE34();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809695C8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40 - v13;
  v15 = sub_2749FAE14();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F960);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v40 - v20;
  v22 = *v0;
  v23 = *(v0 + 1);
  v24 = *(v0 + 2);
  v56 = v22;
  v57 = v23;
  v58 = v24;
  v25 = v1[3];
  v48 = v22;

  v47 = v23;

  v44 = v24;
  sub_2747EE34C(v21);
  v26 = sub_2749F91B4();
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v26);
  sub_2747EE554(v18);
  v41 = DynamicTypeSize.snippetEnvironmentDynamicTypeSize.getter();
  (*(v16 + 8))(v18, v15);
  sub_2747EE75C(v14);
  v27 = sub_2749FAF44();
  if (__swift_getEnumTagSinglePayload(v14, 1, v27) == 1)
  {
    sub_2747359D0(v14, &qword_2809695C8);
    v40 = -1;
  }

  else
  {
    v40 = LegibilityWeight.snippetEnvironmentLegibilityWeight.getter();
    (*(*(v27 - 8) + 8))(v14, v27);
  }

  sub_2747EE934(v11);
  v28 = LayoutDirection.snippetEnvironmentLayoutDirection.getter();
  (*(v42 + 8))(v11, v43);
  sub_2747EEB3C(v8);
  v29 = ColorScheme.snippetEnvironmentColorScheme.getter();
  (*(v45 + 8))(v8, v46);
  v30 = v49;
  sub_2747EED44(v49);
  v31 = ColorSchemeContrast.snippetEnvironmentColorSchemeContrast.getter();
  (*(v50 + 8))(v30, v51);
  v32 = sub_2747EEF4C();
  v33 = v52;
  sub_2747EF0A8(v52);
  v34 = DisplayGamut.snippetEnvironmentDisplayGamut.getter();
  (*(v53 + 8))(v33, v54);
  LOBYTE(v33) = sub_2747EF2B0();
  v35 = sub_2747EF408();
  v36 = sub_2747EF560();
  v37 = sub_2747EF6B8();
  v38 = objc_allocWithZone(MEMORY[0x277D23C88]);
  v55 = sub_27483C520(v21, v41, v40, v28, v29, v31, v34, v33 & 1, v25, 1.79769313e308, v32, v35 & 1, v36 & 1, v37 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809696C0);
  sub_2749FC6C4();
}

uint64_t sub_2747F15CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809695C8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2747B97A0(a1, &v5 - v3, &qword_2809695C8);
  return sub_2749FB1D4();
}

uint64_t sub_2747F1674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_2747F1734(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84F98];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969730);
  v2 = sub_2749FDB54();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_2747B97A0(v6, &v15, &qword_280969738);
    v7 = v15;
    v8 = v16;
    result = sub_274797CC0(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_2747A42D8(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2747F1888(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SnippetEnvironmentModifier()
{
  result = qword_280969598;
  if (!qword_280969598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2747F191C(uint64_t a1)
{
  v2 = type metadata accessor for SnippetEnvironmentModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2747F19A8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2747F19E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2747F1A40()
{
  result = qword_280969570;
  if (!qword_280969570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969570);
  }

  return result;
}

void sub_2747F1ABC()
{
  sub_2747F1CD4();
  if (v0 <= 0x3F)
  {
    sub_2747F1D3C(319, &qword_2809695B8, MEMORY[0x277CC9788]);
    if (v1 <= 0x3F)
    {
      sub_2747F1D3C(319, &qword_28096CB80, MEMORY[0x277CDFA28]);
      if (v2 <= 0x3F)
      {
        sub_2747F1D90();
        if (v3 <= 0x3F)
        {
          sub_2747F1D3C(319, &qword_2809695D0, MEMORY[0x277CDFAA0]);
          if (v4 <= 0x3F)
          {
            sub_2747F1D3C(319, &qword_280968A60, MEMORY[0x277CDF3E0]);
            if (v5 <= 0x3F)
            {
              sub_2747F1D3C(319, &qword_2809695D8, MEMORY[0x277CE0228]);
              if (v6 <= 0x3F)
              {
                sub_2747F1DF4(319, &qword_2809695E0);
                if (v7 <= 0x3F)
                {
                  sub_2747F1D3C(319, &qword_2809695E8, MEMORY[0x277CDF548]);
                  if (v8 <= 0x3F)
                  {
                    sub_2747F1DF4(319, &qword_2809695F0);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2747F1CD4()
{
  if (!qword_2809695A8)
  {
    sub_27471CF08(255, &qword_2809695B0);
    v0 = sub_2749FC714();
    if (!v1)
    {
      atomic_store(v0, &qword_2809695A8);
    }
  }
}

void sub_2747F1D3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2749FAAB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2747F1D90()
{
  if (!qword_2809695C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809695C8);
    v0 = sub_2749FAAB4();
    if (!v1)
    {
      atomic_store(v0, &qword_2809695C0);
    }
  }
}

void sub_2747F1DF4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2749FAAB4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2747F1E88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetEnvironmentModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2747F1EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetEnvironmentModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2747F1F54()
{
  result = qword_280969688;
  if (!qword_280969688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809695C8);
    sub_2747F1888(&qword_280969690, MEMORY[0x277CDFB80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969688);
  }

  return result;
}

unint64_t sub_2747F2008()
{
  result = qword_2809696A8;
  if (!qword_2809696A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809696A8);
  }

  return result;
}

uint64_t objectdestroy_28Tm()
{
  v1 = type metadata accessor for SnippetEnvironmentModifier();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969650);
  if (OUTLINED_FUNCTION_17_7() == 1)
  {
    sub_2749F91B4();
    OUTLINED_FUNCTION_1_2();
    (*(v7 + 8))(v5 + v6);
  }

  else
  {
  }

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200);
  if (OUTLINED_FUNCTION_17_7() == 1)
  {
    sub_2749FAE14();
    OUTLINED_FUNCTION_1_2();
    (*(v9 + 8))(v5 + v8);
  }

  else
  {
  }

  v10 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969658);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749FAF44();
    if (!__swift_getEnumTagSinglePayload(v5 + v10, 1, v11))
    {
      (*(*(v11 - 8) + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  v12 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AA8);
  if (OUTLINED_FUNCTION_17_7() == 1)
  {
    sub_2749FAE34();
    OUTLINED_FUNCTION_1_2();
    (*(v13 + 8))(v5 + v12);
  }

  else
  {
  }

  v14 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  if (OUTLINED_FUNCTION_17_7() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_1_2();
    (*(v15 + 8))(v5 + v14);
  }

  else
  {
  }

  v16 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60);
  if (OUTLINED_FUNCTION_17_7() == 1)
  {
    sub_2749FB614();
    OUTLINED_FUNCTION_1_2();
    (*(v17 + 8))(v5 + v16);
  }

  else
  {
  }

  OUTLINED_FUNCTION_10_10(v1[12]);
  v18 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969660);
  if (OUTLINED_FUNCTION_17_7() == 1)
  {
    sub_2749FAB54();
    OUTLINED_FUNCTION_1_2();
    (*(v19 + 8))(v5 + v18);
  }

  else
  {
  }

  OUTLINED_FUNCTION_10_10(v1[14]);
  OUTLINED_FUNCTION_10_10(v1[15]);
  OUTLINED_FUNCTION_10_10(v1[16]);
  OUTLINED_FUNCTION_10_10(v1[17]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2747F23FC()
{
  v0 = type metadata accessor for SnippetEnvironmentModifier();
  OUTLINED_FUNCTION_34(v0);
  return sub_2747F0FE8();
}

uint64_t sub_2747F2454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809695C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2747F250C()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_22_9(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_7(v1);

  return sub_2747EC3E4();
}

unint64_t sub_2747F25A4()
{
  result = qword_2809696F0;
  if (!qword_2809696F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809696F0);
  }

  return result;
}

unint64_t sub_2747F25F8()
{
  result = qword_280969728;
  if (!qword_280969728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969720);
    sub_2747F25A4();
    sub_2747F1A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969728);
  }

  return result;
}

uint64_t sub_2747F2684()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_22_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_12(v1);

  return v4(v3);
}

uint64_t sub_2747F2714()
{
  OUTLINED_FUNCTION_79();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  v3 = *v0;
  OUTLINED_FUNCTION_8_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

unint64_t sub_2747F2800()
{
  result = qword_280969740;
  if (!qword_280969740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809696B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969640);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969638);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969630);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969628);
    sub_2749FAB54();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969620);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969618);
    sub_2749FB614();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969610);
    sub_2749FAA94();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969608);
    sub_2749FAE34();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809695C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809695F8);
    sub_2749FAE14();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969668);
    sub_2749F91B4();
    sub_27472AB6C(&qword_280969670, &qword_280969668);
    sub_2747F1888(&qword_280969678, MEMORY[0x277CC9788]);
    swift_getOpaqueTypeConformance2();
    sub_2747F1888(&qword_280969680, MEMORY[0x277CDFA28]);
    swift_getOpaqueTypeConformance2();
    sub_2747F1F54();
    swift_getOpaqueTypeConformance2();
    sub_2747F1888(&qword_280969698, MEMORY[0x277CDFAA0]);
    swift_getOpaqueTypeConformance2();
    sub_2747F1888(&qword_280968A80, MEMORY[0x277CDF3E0]);
    swift_getOpaqueTypeConformance2();
    sub_2747F1888(&qword_2809696A0, MEMORY[0x277CE0228]);
    swift_getOpaqueTypeConformance2();
    sub_2747F2008();
    swift_getOpaqueTypeConformance2();
    sub_2747F1888(&qword_2809696B0, MEMORY[0x277CDF548]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969740);
  }

  return result;
}

unint64_t sub_2747F2D24()
{
  result = qword_280969748;
  if (!qword_280969748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809696E8);
    sub_2747F2DDC();
    sub_27472AB6C(&qword_280969758, &qword_2809696E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969748);
  }

  return result;
}

unint64_t sub_2747F2DDC()
{
  result = qword_280969750;
  if (!qword_280969750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809696D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809696C8);
    sub_27472AB6C(&qword_2809696D0, &qword_2809696C8);
    swift_getOpaqueTypeConformance2();
    sub_27472AB6C(&qword_280969758, &qword_2809696E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969750);
  }

  return result;
}

char *sub_2747F2F2C(void *a1)
{
  v3 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_undoButton;
  *&v1[v3] = [objc_opt_self() buttonWithType_];
  v4 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_redoButton;
  *&v1[v4] = OUTLINED_FUNCTION_5_17();
  v5 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_infoButton;
  *&v1[v5] = OUTLINED_FUNCTION_5_17();
  v6 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_shareButton;
  *&v1[v6] = OUTLINED_FUNCTION_5_17();
  v7 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_playButton;
  *&v1[v7] = OUTLINED_FUNCTION_5_17();
  v8 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_stopButton;
  *&v1[v8] = OUTLINED_FUNCTION_5_17();
  *&v1[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingWorkItem] = 0;
  v1[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning] = 0;
  v1[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingRunningStateValue] = 2;
  *&v1[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingRunningStateValueTimeoutWorkItem] = 0;
  *&v1[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_toolbar] = a1;
  v9 = *MEMORY[0x277CBF3A0];
  v10 = *(MEMORY[0x277CBF3A0] + 8);
  v11 = *(MEMORY[0x277CBF3A0] + 16);
  v12 = *(MEMORY[0x277CBF3A0] + 24);
  v100.receiver = v1;
  v100.super_class = type metadata accessor for WFDrawerEmbeddedToolbarView();
  v99 = a1;
  v13 = objc_msgSendSuper2(&v100, sel_initWithFrame_, v9, v10, v11, v12);
  v14 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_undoButton;
  v15 = *&v13[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_undoButton];
  sub_27471CF08(0, &qword_28096D750);
  OUTLINED_FUNCTION_86();
  *(swift_allocObject() + 16) = v13;
  v16 = v13;
  v17 = v15;
  OUTLINED_FUNCTION_0_20();
  v18 = sub_2749FD644();
  [v17 addAction:v18 forControlEvents:{64, 0, 0}];

  v19 = *&v13[v14];
  sub_27471CF08(0, &qword_280968030);
  objc_opt_self();
  v20 = v19;
  v21 = OUTLINED_FUNCTION_2_21(v20, sel_configurationWithPointSize_weight_scale_);
  v22 = sub_2747F3934(0xD000000000000014, 0x8000000274A2DE80, v21);
  [v20 setImage:v22 forState:0];

  v23 = *&v13[v14];
  v24 = v16;
  [v24 addSubview_];
  v25 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_redoButton;
  v26 = *&v24[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_redoButton];
  OUTLINED_FUNCTION_86();
  *(swift_allocObject() + 16) = v24;
  v27 = v24;
  v28 = v26;
  OUTLINED_FUNCTION_0_20();
  v29 = sub_2749FD644();
  [v28 addAction:v29 forControlEvents:{64, 0, 0}];

  v30 = *&v24[v25];
  v31 = OUTLINED_FUNCTION_2_21(v30, sel_configurationWithPointSize_weight_scale_);
  v32 = OUTLINED_FUNCTION_9_11();
  v35 = sub_2747F3934(v32, v33, v34);
  [v30 setImage:v35 forState:0];

  [v27 &selRef_actingAsNumberField];
  v36 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_infoButton;
  v37 = *&v27[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_infoButton];
  OUTLINED_FUNCTION_86();
  *(swift_allocObject() + 16) = v27;
  v38 = v27;
  v39 = v37;
  OUTLINED_FUNCTION_0_20();
  v40 = sub_2749FD644();
  [v39 addAction:v40 forControlEvents:{64, 0, 0}];

  v41 = *&v27[v36];
  v42 = OUTLINED_FUNCTION_2_21(v41, sel_configurationWithPointSize_weight_scale_);
  v43 = sub_2747F3934(0x7269632E6F666E69, 0xEB00000000656C63, v42);
  OUTLINED_FUNCTION_6_12(v43, sel_setImage_forState_);

  [v38 addSubview_];
  v44 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_shareButton;
  v45 = *&v38[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_shareButton];
  OUTLINED_FUNCTION_86();
  *(swift_allocObject() + 16) = v38;
  v46 = v38;
  v47 = v45;
  OUTLINED_FUNCTION_0_20();
  v48 = sub_2749FD644();
  OUTLINED_FUNCTION_7_10(v48, sel_addAction_forControlEvents_);

  v49 = *&v38[v44];
  v50 = OUTLINED_FUNCTION_2_21(v49, sel_configurationWithPointSize_weight_scale_);
  v51 = OUTLINED_FUNCTION_9_11();
  v54 = sub_2747F3934(v51, v52, v53);
  OUTLINED_FUNCTION_6_12(v54, sel_setImage_forState_);

  [v46 addSubview_];
  v55 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_playButton;
  v56 = *&v46[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_playButton];
  OUTLINED_FUNCTION_86();
  *(swift_allocObject() + 16) = v46;
  v57 = v46;
  v58 = v56;
  OUTLINED_FUNCTION_0_20();
  v59 = sub_2749FD644();
  OUTLINED_FUNCTION_7_10(v59, sel_addAction_forControlEvents_);

  v60 = *&v46[v55];
  v61 = OUTLINED_FUNCTION_10_11(v60, sel_configurationWithPointSize_weight_scale_);
  v63 = OUTLINED_FUNCTION_8_12(0x79616C70u, v62, v61);
  OUTLINED_FUNCTION_6_12(v63, sel_setImage_forState_);

  [v57 addSubview_];
  v64 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_stopButton;
  v65 = *&v57[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_stopButton];
  OUTLINED_FUNCTION_86();
  *(swift_allocObject() + 16) = v57;
  v66 = v65;
  OUTLINED_FUNCTION_0_20();
  v67 = sub_2749FD644();
  OUTLINED_FUNCTION_7_10(v67, sel_addAction_forControlEvents_);

  v68 = *&v57[v64];
  v69 = OUTLINED_FUNCTION_10_11(v68, sel_configurationWithPointSize_weight_scale_);
  v71 = OUTLINED_FUNCTION_8_12(0x706F7473u, v70, v69);
  OUTLINED_FUNCTION_6_12(v71, sel_setImage_forState_);

  [*&v57[v64] setAlpha_];
  [v57 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274A15450;
  v73 = *&v46[v55];
  *(inited + 32) = v73;
  v98 = v57;
  v74 = *&v57[v64];
  *(inited + 40) = v74;
  v75 = sub_27471CF08(0, &qword_280969480);
  sub_2747B2790(0, (inited & 0xC000000000000001) == 0, inited);
  sub_2747B2790(1, (inited & 0xC000000000000001) == 0, inited);
  v76 = v73;
  v77 = v74;
  v78 = 0;
  v79 = 0;
  do
  {
    v80 = v78;
    if ((inited & 0xC000000000000001) != 0)
    {
      v81 = MEMORY[0x277C5F6D0](v79, inited);
    }

    else
    {
      v81 = *(inited + 32 + 8 * v79);
    }

    v82 = v81;
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v83 = sub_27480D818();
    sub_2747D57FC(0x6E61697373756167, 0xEC00000072756C42, v83);
    sub_2749F9884();
    v84 = OUTLINED_FUNCTION_1_25();
    [v84 v85];

    sub_2749FD034();
    v86 = OUTLINED_FUNCTION_1_25();
    [v86 v87];

    sub_2749FD034();
    v88 = OUTLINED_FUNCTION_1_25();
    [v88 v89];

    sub_2749FCD64();
    v90 = OUTLINED_FUNCTION_1_25();
    [v90 v91];

    sub_2749FCD64();
    v92 = OUTLINED_FUNCTION_1_25();
    [v92 v93];

    v73 = [v82 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_274A0EF10;
    *(v94 + 56) = v75;
    *(v94 + 32) = v83;
    v95 = v83;
    sub_27480FF3C(v94, v73);

    v78 = 1;
    v79 = 1;
  }

  while ((v80 & 1) == 0);
  swift_setDeallocating();
  sub_2747A3418();
  v96 = [objc_opt_self() labelColor];
  [v98 setTintColor_];

  return v98;
}

id sub_2747F3934(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();

  v5 = [swift_getObjCClassFromMetadata() systemImageNamed:v4 withConfiguration:a3];

  return v5;
}

id sub_2747F39A4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *(a2 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_toolbar);
  result = [v4 delegate];
  if (result)
  {
    v6 = result;
    if ([result respondsToSelector_])
    {
      [v6 *a3];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_2747F3A40(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_toolbar);
  result = [v3 delegate];
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 runToolbarShareTapped:v3 sender:*(a2 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_shareButton)];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2747F3AEC(uint64_t a1, uint64_t a2, SEL *a3, char a4)
{
  v6 = *(a2 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_toolbar);
  v7 = [v6 delegate];
  if (v7)
  {
    v8 = v7;
    if ([v7 respondsToSelector_])
    {
      [v8 *a3];
    }

    swift_unknownObjectRelease();
  }

  sub_2747F5344(a4 & 1);
  return sub_2747F535C(a4 & 1);
}

uint64_t sub_2747F3B8C()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for WFDrawerEmbeddedToolbarView();
  objc_msgSendSuper2(&v30, sel_layoutSubviews);
  [v0 bounds];
  CGRectGetWidth(v31);
  CGSizeMake(v1);
  v2 = OUTLINED_FUNCTION_11_13();
  [v2 displayScale];

  BSFloatRoundForScale();
  v3 = [v0 effectiveUserInterfaceLayoutDirection];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v4 = swift_allocObject();
  v5 = v4;
  *(v4 + 16) = xmmword_274A15460;
  if (v3 == 1)
  {
    v6 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_playButton];
    v7 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_shareButton];
    *(v4 + 32) = v6;
    *(v4 + 40) = v7;
    v8 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_infoButton];
    v9 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_redoButton];
    v10 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_undoButton];
    *(v4 + 48) = v8;
    *(v4 + 56) = v9;
    v27 = v9;
    v29 = v7;
    v11 = v10;
    v12 = v6;
  }

  else
  {
    v6 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_undoButton];
    v7 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_redoButton];
    *(v4 + 32) = v6;
    *(v4 + 40) = v7;
    v8 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_infoButton];
    v9 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_shareButton];
    v10 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_playButton];
    *(v4 + 48) = v8;
    *(v4 + 56) = v9;
    v27 = v7;
    v29 = v9;
    v11 = v6;
    v12 = v10;
  }

  *(v4 + 64) = v10;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  result = sub_27472D918(v5);
  if (!result)
  {
LABEL_11:

    v23 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_stopButton];
    [v12 frame];
    [v23 setFrame_];
    v24 = OUTLINED_FUNCTION_11_13();
    [v24 displayScale];

    [v11 frame];
    [v11 setFrame_];
    v25 = OUTLINED_FUNCTION_11_13();
    [v25 displayScale];

    [v28 frame];
    [v28 setFrame_];
    v26 = OUTLINED_FUNCTION_11_13();
    [v26 displayScale];

    [v29 frame];
    return [v29 setFrame_];
  }

  v19 = result;
  if (result >= 1)
  {
    v20 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x277C5F6D0](v20, v5);
      }

      else
      {
        v21 = *(v5 + 8 * v20 + 32);
      }

      v22 = v21;
      ++v20;
      CGRectMake();
      [v22 setFrame_];
      [v22 frame];
      CGRectGetMaxX(v32);
    }

    while (v19 != v20);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_2747F3FC8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingRunningStateValue;
  v3 = *(v1 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingRunningStateValue);
  if (v3 != 2)
  {
    if (([*(v1 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_toolbar) isRunning] ^ v3))
    {
      return;
    }

    *(v1 + v2) = 2;
    v4 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingRunningStateValueTimeoutWorkItem;
    if (*(v1 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingRunningStateValueTimeoutWorkItem))
    {

      sub_2749FCAE4();
    }

    *(v1 + v4) = 0;
  }

  sub_2747F5344([*(v1 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_toolbar) isRunning]);

  sub_2747F40A8();
}

void sub_2747F40A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_undoButton);
  v2 = *(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_toolbar);
  v3 = [v2 workflowUndoManager];
  if (v3 && (v4 = v3, v5 = [v3 canUndo], v4, v5))
  {
    v6 = *(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  sub_2747F4230(v1, v6 & 1);
  v7 = *(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_redoButton);
  v8 = [v2 workflowUndoManager];
  if (v8 && (v9 = v8, v10 = [v8 canRedo], v9, v10))
  {
    v11 = *(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  sub_2747F4230(v7, v11 & 1);
  v12 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning;
  sub_2747F4230(*(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_infoButton), (*(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning) & 1) == 0);
  v13 = *(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_shareButton);
  if (*(v0 + v12))
  {
    v14 = 0;
  }

  else
  {
    v14 = [v2 shareEnabled];
  }

  sub_2747F4230(v13, v14);
  sub_2747F4230(*(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_playButton), [v2 playEnabled]);
}

void sub_2747F4230(void *a1, char a2)
{
  [a1 setUserInteractionEnabled_];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v6 = a1;
  v7 = sub_27480FE78(sub_2747F59D8, v4, 0.3, 1.0);
  [v7 startAnimation];
}

uint64_t sub_2747F42F8(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_2749FCA74();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2749FCAA4();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2749FCAC4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v24 - v16;
  v18 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning;
  if (v2[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning] != v3)
  {
    sub_2747F40A8();
    v19 = v2[v18];
    sub_27471CF08(0, &qword_28159E4E0);
    v25 = sub_2749FD404();
    sub_2749FCAB4();
    sub_2749FCB14();
    v26 = *(v11 + 8);
    v26(v14, v10);
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    *(v20 + 24) = v19;
    aBlock[4] = sub_2747F5994;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274760264;
    aBlock[3] = &block_descriptor_18;
    v21 = _Block_copy(aBlock);
    v22 = v2;

    sub_2749FCA94();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_27473FC78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
    sub_27473FCD0();
    sub_2749FD7B4();
    v23 = v25;
    MEMORY[0x277C5F120](v17, v9, v6, v21);
    _Block_release(v21);

    (*(v29 + 8))(v6, v4);
    (*(v27 + 8))(v9, v28);
    return (v26)(v17, v10);
  }

  return result;
}

uint64_t sub_2747F469C(uint64_t a1, char a2)
{
  v3 = a2 & 1;
  v4 = sub_2749FCAC4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v11 = sub_2749FCA74();
  result = MEMORY[0x28223BE20](v11);
  v13 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning;
  if (*(a1 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning) == v3)
  {
    v14 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingWorkItem;
    v15 = *(a1 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingWorkItem);
    v51 = v5;
    v52 = v4;
    v50 = v10;
    v48 = v8;
    if (v15)
    {

      sub_2749FCAE4();
    }

    *(a1 + v14) = 0;

    v16 = *(a1 + v13) == 0;
    if (*(a1 + v13))
    {
      v17 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_stopButton;
    }

    else
    {
      v17 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_playButton;
    }

    v18 = *(a1 + v17);
    if (v16)
    {
      v19 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_stopButton;
    }

    else
    {
      v19 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_playButton;
    }

    v20 = *(a1 + v19);
    CGAffineTransformMakeScale(&v58, 0.75, 0.75);
    tx = v58.tx;
    ty = v58.ty;
    v49 = *&v58.a;
    v47 = *&v58.c;
    CGAffineTransformMakeScale(&v58, 0.65, 0.65);
    v23 = v18;
    v24 = v20;
    v55 = v47;
    aBlock = v49;
    v56 = tx;
    v57 = ty;
    [v23 setTransform_];
    v25 = objc_opt_self();
    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    *(v26 + 24) = v24;
    v27 = *&v58.c;
    *(v26 + 32) = *&v58.a;
    *(v26 + 48) = v27;
    *(v26 + 64) = *&v58.tx;
    v56 = COERCE_DOUBLE(sub_2747F59A0);
    v57 = *&v26;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v55 = sub_274760264;
    *(&v55 + 1) = &block_descriptor_24_0;
    v28 = _Block_copy(&aBlock);
    *&v49 = v14;
    v29 = v28;
    v30 = v23;
    v31 = v24;

    v56 = COERCE_DOUBLE(CGSizeMake);
    v57 = 0.0;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v55 = sub_27480D7B8;
    *(&v55 + 1) = &block_descriptor_27;
    v32 = _Block_copy(&aBlock);
    [v25 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
    _Block_release(v32);
    _Block_release(v29);
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    v56 = COERCE_DOUBLE(sub_2747F59AC);
    v57 = *&v33;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v55 = sub_274760264;
    *(&v55 + 1) = &block_descriptor_33_0;
    v34 = _Block_copy(&aBlock);
    v35 = v31;

    v56 = COERCE_DOUBLE(CGSizeMake);
    v57 = 0.0;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v55 = sub_27480D7B8;
    *(&v55 + 1) = &block_descriptor_36;
    v36 = _Block_copy(&aBlock);
    [v25 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
    _Block_release(v36);
    _Block_release(v34);
    v37 = swift_allocObject();
    *(v37 + 16) = v30;
    *(v37 + 24) = v35;
    v56 = COERCE_DOUBLE(sub_2747F59C0);
    v57 = *&v37;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v55 = sub_274760264;
    *(&v55 + 1) = &block_descriptor_42;
    _Block_copy(&aBlock);
    v53 = MEMORY[0x277D84F90];
    sub_27473FC78();
    v38 = v30;
    v39 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
    sub_27473FCD0();
    sub_2749FD7B4();
    sub_2749FCAF4();
    swift_allocObject();
    v40 = sub_2749FCAD4();

    *(a1 + v49) = v40;

    sub_27471CF08(0, &qword_28159E4E0);
    v41 = sub_2749FD404();
    v42 = v48;
    sub_2749FCAB4();
    v43 = v50;
    sub_2749FCB14();
    v44 = *(v51 + 8);
    v45 = v42;
    v46 = v52;
    v44(v45, v52);
    sub_2749FD3D4();

    return (v44)(v43, v46);
  }

  return result;
}

id sub_2747F4D04(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 40);
  v7 = [a1 layer];
  v8 = sub_2749F9884();
  v9 = sub_2749FCD64();
  [v7 setValue:v8 forKeyPath:v9];

  v10 = [a2 layer];
  v11 = sub_2749F9884();
  v12 = sub_2749FCD64();
  [v10 setValue:v11 forKeyPath:v12];

  v13 = *(a3 + 16);
  v15[0] = *a3;
  v15[1] = v13;
  v16 = v5;
  v17 = v6;
  return [a2 setTransform_];
}

void sub_2747F4E34(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v22 = sub_2747F59C8;
  v23 = v5;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_274760264;
  v21 = &block_descriptor_48;
  v6 = _Block_copy(&v18);
  v7 = a1;
  v8 = a2;

  v22 = CGSizeMake;
  v23 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_27480D7B8;
  v21 = &block_descriptor_51;
  v9 = _Block_copy(&v18);
  [v4 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
  _Block_release(v9);
  _Block_release(v6);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  v22 = sub_2747B68F4;
  v23 = v10;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_274760264;
  v21 = &block_descriptor_57;
  v11 = _Block_copy(&v18);
  v12 = v7;

  v22 = CGSizeMake;
  v23 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_27480D7B8;
  v21 = &block_descriptor_60;
  v13 = _Block_copy(&v18);
  [v4 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
  _Block_release(v13);
  _Block_release(v11);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v22 = sub_2747F59D0;
  v23 = v14;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_274760264;
  v21 = &block_descriptor_66;
  v15 = _Block_copy(&v18);
  v16 = v12;

  v22 = CGSizeMake;
  v23 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_27480D7B8;
  v21 = &block_descriptor_69;
  v17 = _Block_copy(&v18);
  [v4 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
  _Block_release(v17);
  _Block_release(v15);
}

void sub_2747F51F0(void *a1, void *a2)
{
  v3 = [a1 layer];
  v4 = sub_2749F9884();
  v5 = sub_2749FCD64();
  [v3 setValue:v4 forKeyPath:v5];

  v6 = [a2 layer];
  v7 = sub_2749F9884();
  v8 = sub_2749FCD64();
  [v6 setValue:v7 forKeyPath:v8];
}

id sub_2747F5300(void *a1)
{
  v1 = *(MEMORY[0x277CBF2C0] + 16);
  v3[0] = *MEMORY[0x277CBF2C0];
  v3[1] = v1;
  v3[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [a1 setTransform_];
}

uint64_t sub_2747F5344(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning);
  *(v1 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning) = a1;
  return sub_2747F42F8(v2);
}

uint64_t sub_2747F535C(char a1)
{
  v3 = sub_2749FCAC4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = sub_2749FCA74();
  MEMORY[0x28223BE20](v10);
  v1[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingRunningStateValue] = a1;
  OUTLINED_FUNCTION_86();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  aBlock[4] = sub_2747F5984;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274760264;
  aBlock[3] = &block_descriptor_15;
  _Block_copy(aBlock);
  v17[1] = MEMORY[0x277D84F90];
  sub_27473FC78();
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_27473FCD0();
  sub_2749FD7B4();
  sub_2749FCAF4();
  swift_allocObject();
  v13 = sub_2749FCAD4();

  *&v12[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingRunningStateValueTimeoutWorkItem] = v13;

  sub_27471CF08(0, &qword_28159E4E0);
  v14 = sub_2749FD404();
  sub_2749FCAB4();
  sub_2749FCB14();
  v15 = *(v4 + 8);
  v15(v7, v3);
  sub_2749FD3D4();

  return (v15)(v9, v3);
}

void sub_2747F5668()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_undoButton;
  *(v0 + v1) = [objc_opt_self() buttonWithType_];
  v2 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_redoButton;
  *(v0 + v2) = OUTLINED_FUNCTION_4_15();
  v3 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_infoButton;
  *(v0 + v3) = OUTLINED_FUNCTION_4_15();
  v4 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_shareButton;
  *(v0 + v4) = OUTLINED_FUNCTION_4_15();
  v5 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_playButton;
  *(v0 + v5) = OUTLINED_FUNCTION_4_15();
  v6 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_stopButton;
  *(v0 + v6) = OUTLINED_FUNCTION_4_15();
  *(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingWorkItem) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingRunningStateValue) = 2;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingRunningStateValueTimeoutWorkItem) = 0;
  sub_2749FDAE4();
  __break(1u);
}

id WFDrawerEmbeddedToolbarView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id WFDrawerEmbeddedToolbarView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFDrawerEmbeddedToolbarView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2747F59D8()
{
  v1 = 0.22;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setAlpha_];
}

id sub_2747F5B24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2749FCD64();

  v7 = [swift_getObjCClassFromMetadata() boundarySupplementaryItemWithLayoutSize:a1 elementKind:v6 alignment:a4];

  return v7;
}

uint64_t sub_2747F5BAC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_2747F5C34(v2, v1);
}

uint64_t sub_2747F5BE8()
{
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_2747F5C34(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2747F5CA0(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_2747F5D2C;
}

void sub_2747F5D2C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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
  }

  free(v3);
}