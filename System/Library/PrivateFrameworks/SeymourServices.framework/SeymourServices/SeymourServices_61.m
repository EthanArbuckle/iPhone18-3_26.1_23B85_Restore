uint64_t sub_2274A494C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v41 = a1;
  v6 = sub_227663480();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v49 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v42 = 0;
  v43 = v9 + 16;
  v50 = a4 + 56;
  v44 = v9;
  v45 = (v9 + 8);
  v46 = v11;
  v47 = result;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_13:
    v23 = v20 | (v12 << 6);
    v24 = *(v49 + 48);
    v25 = *(v44 + 72);
    v48 = v23;
    (*(v44 + 16))(v11, v24 + v25 * v23, v6);
    v26 = sub_227663410();
    v28 = v27;
    if (*(a4 + 16) && (v29 = v26, v30 = *(a4 + 40), sub_22766D370(), sub_22766C100(), v31 = sub_22766D3F0(), v32 = -1 << *(a4 + 32), v33 = v31 & ~v32, ((*(v50 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
    {
      v34 = ~v32;
      while (1)
      {
        v35 = (*(a4 + 48) + 16 * v33);
        v36 = *v35 == v29 && v35[1] == v28;
        if (v36 || (sub_22766D190() & 1) != 0)
        {
          break;
        }

        v33 = (v33 + 1) & v34;
        if (((*(v50 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v11 = v46;
      v6 = v47;
      result = (*v45)(v46, v47);
      *(v41 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      if (__OFADD__(v42++, 1))
      {
        __break(1u);
LABEL_26:
        v38 = v49;

        return sub_22726AD50(v41, v40, v42, v38);
      }
    }

    else
    {
LABEL_5:

      v11 = v46;
      v6 = v47;
      result = (*v45)(v46, v47);
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_26;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2274A4C50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = *MEMORY[0x277D85DE8];
  v6 = sub_227663480();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;

  v55 = a2;
  if (v10 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v44 = v11;
    v45 = v3;
    v43 = &v43;
    MEMORY[0x28223BE20](v13);
    v46 = &v43 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v46, v12);
    v11 = 0;
    v14 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = v15 < 64 ? ~(-1 << v15) : -1;
    v17 = v16 & *(a1 + 56);
    v12 = (v15 + 63) >> 6;
    v18 = v7 + 16;
    v19 = v7;
    v7 = a2 + 56;
    v51 = v18;
    v52 = v19;
    v47 = 0;
    v48 = (v19 + 8);
    v49 = v6;
    v50 = a1;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v23 = v20 | (v11 << 6);
      v24 = *(a1 + 48);
      v25 = *(v52 + 72);
      v53 = v23;
      (*(v52 + 16))(v54, v24 + v25 * v23, v6);
      v26 = sub_227663410();
      v28 = v27;
      if (!*(v55 + 16))
      {
        goto LABEL_6;
      }

      v29 = v26;
      v30 = *(v55 + 40);
      sub_22766D370();
      sub_22766C100();
      v31 = sub_22766D3F0();
      v32 = v55;
      v33 = -1 << *(v55 + 32);
      v34 = v31 & ~v33;
      if ((*(v7 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v3 = ~v33;
        while (1)
        {
          v35 = (*(v32 + 48) + 16 * v34);
          v36 = *v35 == v29 && v35[1] == v28;
          if (v36 || (sub_22766D190() & 1) != 0)
          {
            break;
          }

          v34 = (v34 + 1) & v3;
          v32 = v55;
          if (((*(v7 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v6 = v49;
        (*v48)(v54, v49);
        *&v46[(v53 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v53;
        v37 = __OFADD__(v47++, 1);
        a1 = v50;
        if (v37)
        {
          __break(1u);
LABEL_27:
          v38 = sub_22726AD50(v46, v44, v47, a1);

          goto LABEL_28;
        }
      }

      else
      {
LABEL_6:

        v6 = v49;
        (*v48)(v54, v49);
        a1 = v50;
      }
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v11 >= v12)
      {
        goto LABEL_27;
      }

      v22 = *(v14 + 8 * v11);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a2 = v55;
  }

  v41 = swift_slowAlloc();
  v42 = v55;

  v38 = sub_2274A2B70(v41, v11, a1, v42);

  MEMORY[0x22AA9A450](v41, -1, -1);

LABEL_28:
  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t sub_2274A50A0()
{
  v0 = sub_227664AE0();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  sub_227663970();
  sub_2274A794C(v6, v4, MEMORY[0x277D50D68]);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    sub_2274A7C4C(v4, MEMORY[0x277D50D68]);
  }

  v7 = sub_227665FE0();
  v9 = v8;
  if (v7 == sub_227665FE0() && v9 == v10)
  {

    v11 = 0;
  }

  else
  {
    v12 = sub_22766D190();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_2274A53E4(uint64_t a1)
{
  v3 = *(sub_227663480() - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v5 = *(v1 + 16);
  return sub_22749AC94(*a1, *(a1 + 8), v4);
}

uint64_t sub_2274A54D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227663480() - 8);
  v6 = (*(v5 + 80) + 25) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22749E6B8(a1, v7, v8, (v2 + v6), v9, a2);
}

uint64_t sub_2274A55CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_227663480() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_22749EFD8(v4, v5, v6, v7, a1);
}

uint64_t sub_2274A5648()
{
  v1 = *(sub_227663480() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_22749FD64(v3, v0 + v2, v5, v6);
}

uint64_t sub_2274A5924()
{
  v1 = *(sub_227663480() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_22749473C(v2, v3);
}

uint64_t objectdestroy_126Tm_0()
{
  v1 = sub_227663480();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2274A5B20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = *(v4 + 16);
  v9 = v4 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return a4(a1, a2, v8, v9);
}

id sub_2274A5BBC(void *a1)
{
  v3 = *(sub_2276639B0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_22749BA58(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2274A5C6C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a1;
  v43 = sub_227664AE0();
  v4 = *(*(v43 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v43);
  v45 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v34 - v7;
  v8 = sub_2276639B0();
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v44 = a3;
  v17 = *(a3 + 56);
  v16 = a3 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v39 = v11 + 16;
  v40 = v11;
  v37 = 0;
  v38 = (v11 + 8);
  v41 = result;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
LABEL_12:
    v26 = v23 | (v14 << 6);
    (*(v40 + 16))(v13, *(v44 + 48) + *(v40 + 72) * v26, v8);
    v27 = v42;
    sub_227663970();
    sub_2274A794C(v27, v45, MEMORY[0x277D50D68]);
    if (swift_getEnumCaseMultiPayload() <= 1)
    {
      sub_2274A7C4C(v45, MEMORY[0x277D50D68]);
    }

    v28 = sub_227665FE0();
    v30 = v29;
    if (v28 == sub_227665FE0() && v30 == v31)
    {

      v8 = v41;
      result = (*v38)(v13, v41);
    }

    else
    {
      v22 = sub_22766D190();

      v8 = v41;
      result = (*v38)(v13, v41);
      if ((v22 & 1) == 0)
      {
        *(v36 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        if (__OFADD__(v37++, 1))
        {
          __break(1u);
LABEL_20:
          v33 = v44;

          return sub_22726B9F0(v36, v35, v37, v33);
        }
      }
    }
  }

  v24 = v14;
  while (1)
  {
    v14 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v14 >= v21)
    {
      goto LABEL_20;
    }

    v25 = *(v16 + 8 * v14);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v20 = (v25 - 1) & v25;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2274A5FF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v48 = *MEMORY[0x277D85DE8];
  v44 = sub_227664AE0();
  v6 = *(*(v44 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v44);
  v46 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = v34 - v9;
  v47 = sub_2276639B0();
  v10 = *(v47 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v47);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v12) = *(a1 + 32);
  v14 = v12 & 0x3F;
  v15 = ((1 << v12) + 63) >> 6;
  v16 = 8 * v15;

  if (v14 > 0xD)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v35 = v15;
    v36 = a2;
    v37 = v3;
    v34[1] = v34;
    MEMORY[0x28223BE20](v17);
    v38 = v34 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v38, v16);
    v18 = 0;
    v45 = a1;
    a2 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v15 = v20 & *(a1 + 56);
    v21 = (v19 + 63) >> 6;
    v41 = v10 + 16;
    v42 = v10;
    v39 = 0;
    v40 = (v10 + 8);
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v10 = v22 | (v18 << 6);
      (*(v42 + 16))(v13, *(v45 + 48) + *(v42 + 72) * v10, v47);
      v25 = v43;
      sub_227663970();
      sub_2274A794C(v25, v46, MEMORY[0x277D50D68]);
      if (swift_getEnumCaseMultiPayload() <= 1)
      {
        sub_2274A7C4C(v46, MEMORY[0x277D50D68]);
      }

      a1 = sub_227665FE0();
      v16 = v26;
      v27 = sub_227665FE0();
      v3 = v28;
      if (a1 == v27 && v16 == v28)
      {

        (*v40)(v13, v47);
      }

      else
      {
        a1 = sub_22766D190();

        (*v40)(v13, v47);
        if ((a1 & 1) == 0)
        {
          *&v38[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
          if (__OFADD__(v39++, 1))
          {
            __break(1u);
LABEL_21:
            v30 = sub_22726B9F0(v38, v35, v39, v45);

            goto LABEL_22;
          }
        }
      }
    }

    v23 = v18;
    while (1)
    {
      v18 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v18 >= v21)
      {
        goto LABEL_21;
      }

      v24 = *(a2 + 8 * v18);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v15 = (v24 - 1) & v24;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();

  v30 = sub_2274A2C0C(v33, v15, a1);

  MEMORY[0x22AA9A450](v33, -1, -1);

LABEL_22:
  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t sub_2274A64E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v38 = a1;
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2276639B0();
  v12 = *(*(v11 - 8) + 64);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a3;
  v47 = 0;
  v17 = 0;
  v18 = *(a3 + 56);
  v37 = a3 + 56;
  v19 = 1 << *(a3 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v44 = v14 + 16;
  v45 = v14;
  v39 = (v14 + 8);
  v40 = (v7 + 8);
  v41 = v22;
  v42 = v16;
  v43 = result;
  if (v21)
  {
LABEL_7:
    while (2)
    {
      v24 = __clz(__rbit64(v21));
      v49 = (v21 - 1) & v21;
LABEL_13:
      v27 = v24 | (v17 << 6);
      v28 = *(v46 + 48);
      v29 = *(v45 + 72);
      v48 = v27;
      (*(v45 + 16))(v16, v28 + v29 * v27, v11);
      sub_2276639A0();
      v30 = 0;
      v31 = *(a4 + 16);
      do
      {
        if (v31 == v30)
        {
          (*v40)(v10, v6);
          v16 = v42;
          v11 = v43;
          result = (*v39)(v42, v43);
          *(v38 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
          v23 = __OFADD__(v47++, 1);
          v22 = v41;
          v21 = v49;
          if (v23)
          {
            goto LABEL_20;
          }

          if (!v49)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        v32 = v30 + 1;
        v33 = a4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v30;
        sub_2274A72CC(&qword_28139BDD8, MEMORY[0x277CC9260]);
        v34 = sub_22766BFB0();
        v30 = v32;
      }

      while ((v34 & 1) == 0);
      (*v40)(v10, v6);
      v16 = v42;
      v11 = v43;
      result = (*v39)(v42, v43);
      v22 = v41;
      v21 = v49;
      if (v49)
      {
        continue;
      }

      break;
    }
  }

LABEL_8:
  v25 = v17;
  while (1)
  {
    v17 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v17 >= v22)
    {
      v35 = v46;

      return sub_22726B9F0(v38, v36, v47, v35);
    }

    v26 = *(v37 + 8 * v17);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v49 = (v26 - 1) & v26;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2274A6890(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = *MEMORY[0x277D85DE8];
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2276639B0();
  v11 = *(v52 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v52);
  v51 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v13) = *(a1 + 32);
  v14 = v13 & 0x3F;
  v39 = ((1 << v13) + 63) >> 6;
  v15 = 8 * v39;

  if (v14 > 0xD)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v38[1] = v38;
    v38[2] = v3;
    MEMORY[0x28223BE20](v16);
    v41 = v38 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v41, v15);
    v48 = 0;
    v3 = 0;
    v17 = *(a1 + 56);
    v40 = a1 + 56;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v43 = (v7 + 8);
    v44 = v11 + 2;
    v45 = v21;
    v46 = v11;
    v42 = (v11 + 1);
    v11 = &qword_28139BDD8;
    v47 = a1;
    if (v20)
    {
LABEL_8:
      while (2)
      {
        v23 = __clz(__rbit64(v20));
        v50 = (v20 - 1) & v20;
LABEL_14:
        v26 = v23 | (v3 << 6);
        v27 = *(a1 + 48);
        v28 = v46[9];
        v49 = v26;
        v15 = v51;
        (v46[2])(v51, v27 + v28 * v26, v52);
        sub_2276639A0();
        v29 = 0;
        v30 = *(a2 + 16);
        do
        {
          if (v30 == v29)
          {
            (*v43)(v10, v6);
            (*v42)(v51, v52);
            *&v41[(v49 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v49;
            a1 = v47;
            v22 = __OFADD__(v48++, 1);
            v21 = v45;
            v20 = v50;
            if (v22)
            {
              goto LABEL_22;
            }

            if (!v50)
            {
              goto LABEL_9;
            }

            goto LABEL_8;
          }

          v31 = v29 + 1;
          v32 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v29;
          sub_2274A72CC(&qword_28139BDD8, MEMORY[0x277CC9260]);
          v15 = v6;
          v33 = sub_22766BFB0();
          v29 = v31;
        }

        while ((v33 & 1) == 0);
        (*v43)(v10, v6);
        (*v42)(v51, v52);
        a1 = v47;
        v21 = v45;
        v20 = v50;
        if (v50)
        {
          continue;
        }

        break;
      }
    }

LABEL_9:
    v24 = v3;
    while (1)
    {
      v3 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v3 >= v21)
      {
        v34 = sub_22726B9F0(v41, v39, v48, a1);

        goto LABEL_20;
      }

      v25 = *(v40 + 8 * v3);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v50 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v37 = swift_slowAlloc();

  v34 = sub_2274A2CA4(v37, v39, a1, a2);

  MEMORY[0x22AA9A450](v37, -1, -1);

LABEL_20:
  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

unint64_t sub_2274A6D98()
{
  result = qword_27D7BDF50;
  if (!qword_27D7BDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDF50);
  }

  return result;
}

uint64_t sub_2274A6E2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_227663480() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_227496348(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t objectdestroy_19Tm_2()
{
  v1 = sub_227663480();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_2274A6F88@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_227663480() - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + *(v3 + 64));
  return sub_227496770(a1);
}

uint64_t sub_2274A70C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2273007B8(a1, v2 + v6, v7, a2);
}

uint64_t sub_2274A72CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2274A739C(uint64_t *a1)
{
  v3 = *(sub_227663480() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_227493A74(a1, v4, v5);
}

uint64_t objectdestroy_54Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_304Tm()
{
  v1 = sub_227663480();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2274A773C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, void, void))
{
  v5 = *(sub_227663480() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2274A7848(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t type metadata accessor for AssetBundleHandler.DownloadedAssetBundle()
{
  result = qword_27D7BDFA0;
  if (!qword_27D7BDFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2274A78E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetBundleHandler.DownloadedAssetBundle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2274A794C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2274A79B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AssetBundleHandler.DownloadedAssetBundle() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_227663480() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_226E92F34;

  return sub_227491DA0(a1, v10, v1 + v6, v1 + v9);
}

uint64_t sub_2274A7B84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_2274A7C4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2274A7D10()
{
  result = sub_2276624A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_2274A7E60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetMediaStreamKeyProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2274A7EDC@<X0>(void (*a1)(void, void, void)@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v113 = a2;
  v111 = a3;
  v115 = a4;
  v116 = a1;
  v110 = sub_2276639B0();
  v104 = *(v110 - 8);
  v4 = *(v104 + 64);
  MEMORY[0x28223BE20](v110);
  v102 = v5;
  v109 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v105 = *(v6 - 8);
  v106 = v6;
  v7 = *(v105 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v103 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v112 = (&v90 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
  v11 = *(v10 - 8);
  v107 = v10;
  v108 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v90 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v90 - v17;
  v19 = sub_227664AE0();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22766B390();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  v28 = v27;
  v29 = v116;
  (*(v24 + 8))(v28, v23);
  sub_227663970();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_226F32360(v22);
  if (EnumCaseMultiPayload)
  {
    v31 = sub_227663190();
    sub_226EB0FB0(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    v32 = swift_allocError();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D4FCF0], v31);
    *(swift_allocObject() + 16) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  }

  else
  {
    v97 = v7;
    v98 = v12;
    v34 = v113;
    v35 = v114;
    v99 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v100 = v18;
    v36 = v111;
    v101 = v16;
    v37 = [objc_opt_self() ams_sharedAccountStore];
    v38 = [v37 ams_activeiTunesAccount];

    if (v38)
    {
      v39 = [v38 ams_DSID];

      if (v39)
      {
        v40 = [v39 description];
        v41 = sub_22766C000();
        v43 = v42;

        v96 = v39;
        v44 = *(v35 + OBJC_IVAR____TtC15SeymourServices27AssetMediaStreamKeyProvider_persistenceStore + 24);
        v45 = *(v35 + OBJC_IVAR____TtC15SeymourServices27AssetMediaStreamKeyProvider_persistenceStore + 32);
        __swift_project_boxed_opaque_existential_0((v35 + OBJC_IVAR____TtC15SeymourServices27AssetMediaStreamKeyProvider_persistenceStore), v44);
        v46 = v29;
        v47 = swift_allocObject();
        v47[2] = v41;
        v91 = v43;
        v47[3] = v43;
        v47[4] = v34;
        v48 = v36;
        v47[5] = v36;

        sub_226ECF5D8(sub_2274AE65C, v47, v44, MEMORY[0x277D837D0], v45, v112);

        v49 = v104;
        v50 = *(v104 + 16);
        v94 = v104 + 16;
        v95 = v50;
        v51 = v109;
        v52 = v110;
        v50(v109, v46, v110);
        v53 = (*(v49 + 80) + 16) & ~*(v49 + 80);
        v93 = *(v49 + 80);
        v102 += v53;
        v54 = v53;
        v92 = v53;
        v55 = (v102 + 7) & 0xFFFFFFFFFFFFFFF8;
        v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
        v57 = swift_allocObject();
        v104 = *(v49 + 32);
        (v104)(v57 + v54, v51, v52);
        v58 = v114;
        *(v57 + v55) = v114;
        v59 = (v57 + v56);
        v60 = v91;
        *v59 = v41;
        v59[1] = v60;
        v61 = (v57 + ((v56 + 23) & 0xFFFFFFFFFFFFFFF8));
        v62 = v112;
        *v61 = v113;
        v61[1] = v48;
        v64 = v105;
        v63 = v106;
        v65 = v103;
        (*(v105 + 16))(v103, v62, v106);
        v66 = (*(v64 + 80) + 16) & ~*(v64 + 80);
        v67 = (v97 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
        v68 = swift_allocObject();
        (*(v64 + 32))(v68 + v66, v65, v63);
        v69 = (v68 + v67);
        *v69 = sub_2274AE67C;
        v69[1] = v57;

        v70 = v58;
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
        v71 = v101;
        sub_227669270();
        (*(v64 + 8))(v112, v63);
        v72 = v109;
        v73 = v110;
        v95(v109, v116, v110);
        v74 = swift_allocObject();
        (v104)(v74 + v92, v72, v73);
        v75 = v107;
        v76 = v108;
        v116 = *(v108 + 16);
        v77 = v99;
        v116(v99, v71, v107);
        v78 = (*(v76 + 80) + 16) & ~*(v76 + 80);
        v79 = (v98 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
        v80 = swift_allocObject();
        v112 = *(v76 + 32);
        (v112)(v80 + v78, v77, v75);
        v81 = (v80 + v79);
        *v81 = sub_2274AE770;
        v81[1] = v74;
        v82 = v100;
        sub_227669270();
        v113 = *(v76 + 8);
        v83 = v101;
        v113(v101, v75);
        v116(v83, v82, v75);
        v84 = swift_allocObject();
        (v112)(v84 + v78, v83, v75);
        v85 = (v84 + v79);
        *v85 = sub_2274A8DA0;
        v85[1] = 0;
        sub_227669270();

        return (v113)(v82, v75);
      }
    }

    v87 = sub_227663190();
    sub_226EB0FB0(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    v88 = swift_allocError();
    (*(*(v87 - 8) + 104))(v89, *MEMORY[0x277D4FD50], v87);
    *(swift_allocObject() + 16) = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  }

  return sub_227669280();
}

uint64_t sub_2274A8934@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2276639B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *a1;
  if (*(v16 + 16))
  {
    *(swift_allocObject() + 16) = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);

    return sub_227669280();
  }

  else
  {
    sub_22766A6C0();
    (*(v7 + 16))(v10, a2, v6);
    v18 = sub_22766B380();
    v19 = sub_22766C8B0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v33 = a3;
      v21 = v20;
      v32 = swift_slowAlloc();
      v34 = v32;
      *v21 = 141558274;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2080;
      sub_226EB0FB0(&qword_28139BCA0, MEMORY[0x277D501C8]);
      v22 = sub_22766D140();
      v31 = v19;
      v24 = v23;
      (*(v7 + 8))(v10, v6);
      v25 = sub_226E97AE8(v22, v24, &v34);

      *(v21 + 14) = v25;
      _os_log_impl(&dword_226E8E000, v18, v31, "[Keys] Key data not found in master playlist for request: %{mask.hash}s", v21, 0x16u);
      v26 = v32;
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AA9A450](v26, -1, -1);
      MEMORY[0x22AA9A450](v21, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    (*(v12 + 8))(v15, v11);
    v27 = sub_227663190();
    sub_226EB0FB0(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    v28 = swift_allocError();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D4FD98], v27);
    *(swift_allocObject() + 16) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
    return sub_227669280();
  }
}

uint64_t sub_2274A8DA0(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v27 - v8;
  v10 = *a1;
  if (*(a1 + 8))
  {
    sub_22766A6C0();
    v11 = v10;
    v12 = sub_22766B380();
    v13 = sub_22766C8B0();
    sub_226F38F34(v10, 1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = v15;
      *v14 = 136446210;
      swift_getErrorValue();
      v16 = MEMORY[0x22AA995D0](v27[2], v27[3]);
      v18 = sub_226E97AE8(v16, v17, &v28);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_226E8E000, v12, v13, "[Keys] fetchPersistentKeyRequests finished with error: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AA9A450](v15, -1, -1);
      MEMORY[0x22AA9A450](v14, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    sub_22766A6C0();

    v20 = sub_22766B380();
    v21 = sub_22766C8B0();
    sub_226F38F34(v10, 0);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 141558274;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2080;
      sub_2276639B0();
      sub_226EB0FB0(&qword_28139BCA8, MEMORY[0x277D501C8]);
      v24 = sub_22766C610();
      v26 = sub_226E97AE8(v24, v25, &v28);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_226E8E000, v20, v21, "[Keys] fetchPersistentKeyRequests finished with keys: %{mask.hash}s", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AA9A450](v23, -1, -1);
      MEMORY[0x22AA9A450](v22, -1, -1);
    }

    return (*(v3 + 8))(v9, v2);
  }
}

uint64_t sub_2274A90E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v69 = a6;
  v70 = a7;
  v67 = a4;
  v68 = a5;
  v77 = a3;
  v58 = a2;
  v75 = a8;
  v10 = sub_2276639B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD438, &qword_227684B58);
  v64 = *(v13 - 8);
  v65 = v13;
  v63 = *(v64 + 64);
  v14 = MEMORY[0x28223BE20](v13);
  v62 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD430, &qword_227684B50);
  v73 = *(v17 - 8);
  v74 = v17;
  v72 = *(v73 + 64);
  v18 = MEMORY[0x28223BE20](v17);
  v71 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v66 = &v57 - v20;
  v21 = *a1;
  v60 = a1[1];
  v61 = v21;
  v22 = *(v11 + 16);
  v22(&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v23 = *(v11 + 80);
  v24 = swift_allocObject();
  v59 = *(v11 + 32);
  v25 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59(v24 + ((v23 + 16) & ~v23), v25, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDFB8, &qword_227687528);
  v26 = v76;
  sub_227669270();
  v22(v25, v58, v10);
  v27 = (v23 + 24) & ~v23;
  v28 = (v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = v77;
  v59(v30 + v27, v25, v10);
  v31 = (v30 + v28);
  v32 = v68;
  *v31 = v67;
  v31[1] = v32;
  v33 = (v30 + v29);
  v34 = v70;
  *v33 = v69;
  v33[1] = v34;
  v35 = (v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8));
  v36 = v60;
  *v35 = v61;
  v35[1] = v36;
  v38 = v64;
  v37 = v65;
  v39 = v62;
  (*(v64 + 16))(v62, v26, v65);
  v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v41 = (v63 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v38 + 32))(v42 + v40, v39, v37);
  v43 = (v42 + v41);
  *v43 = sub_2274AE964;
  v43[1] = v30;
  v44 = v77;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDFC0, &unk_227687530);
  v45 = v66;
  sub_227669270();
  (*(v38 + 8))(v76, v37);
  v46 = swift_allocObject();
  *(v46 + 16) = sub_2274AA984;
  *(v46 + 24) = 0;
  v47 = v73;
  v48 = v74;
  v49 = v71;
  v50 = v45;
  (*(v73 + 16))(v71, v45, v74);
  v51 = v47;
  v52 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v53 = (v72 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v51 + 32))(v54 + v52, v49, v48);
  v55 = (v54 + v53);
  *v55 = sub_2274AEB10;
  v55[1] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  sub_227669270();
  return (*(v51 + 8))(v50, v48);
}

uint64_t sub_2274A967C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v31 = sub_22766B3B0();
  v34 = *(v31 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B3F0();
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2276639B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = sub_22766B3C0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  (*(v14 + 104))(v17, *MEMORY[0x277D851C8], v13);

  v19 = sub_22766C980();
  (*(v14 + 8))(v17, v13);
  (*(v11 + 16))(&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v10);
  v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v21 = swift_allocObject();
  (*(v11 + 32))(v21 + v20, &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v22 = (v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_226EBF9F4;
  v22[1] = v18;
  aBlock[4] = sub_2274AEFB4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_67;
  v23 = _Block_copy(aBlock);
  v24 = v29;
  sub_22766B3D0();
  v35 = MEMORY[0x277D84F90];
  sub_226EB0FB0(&qword_2813A5870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9CFD0(&qword_2813A5860, &unk_27D7BA240, &unk_227674420);
  v26 = v30;
  v25 = v31;
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v24, v26, v23);
  _Block_release(v23);

  (*(v34 + 8))(v26, v25);
  (*(v32 + 8))(v24, v33);
}

void sub_2274A9B44(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v69 = a3;
  v70 = a2;
  v4 = sub_2276624A0();
  v73 = *(v4 - 8);
  v5 = *(v73 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2276639B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B390();
  v71 = *(v13 - 8);
  v14 = *(v71 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v17 = *(v9 + 16);
  v72 = a1;
  v17(v12, a1, v8);
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v67 = v13;
    v21 = v20;
    v22 = swift_slowAlloc();
    v68 = v4;
    v66 = v22;
    v74[0] = v22;
    *v21 = 141558274;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2080;
    sub_2276639A0();
    v23 = sub_227662390();
    v25 = v24;
    (*(v73 + 8))(v7, v68);
    v26 = v8;
    v27 = v7;
    (*(v9 + 8))(v12, v26);
    v28 = sub_226E97AE8(v23, v25, v74);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_226E8E000, v18, v19, "[Key Metadata] Attempting metadata fetch from playlist: %{mask.hash}s", v21, 0x16u);
    v29 = v66;
    __swift_destroy_boxed_opaque_existential_0(v66);
    v4 = v68;
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v21, -1, -1);

    (*(v71 + 8))(v16, v67);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
    (*(v71 + 8))(v16, v13);
    v27 = v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9480, &unk_227678CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = 0x6567412D72657355;
  *(inited + 40) = 0xEA0000000000746ELL;
  v31 = objc_opt_self();
  v32 = [objc_opt_self() currentProcess];
  v33 = [v31 userAgentForProcessInfo_];

  v34 = sub_22766C000();
  v36 = v35;

  *(inited + 48) = v34;
  *(inited + 56) = v36;
  v37 = sub_227148E68(inited);
  swift_setDeallocating();
  sub_226E97D1C(inited + 32, &unk_27D7BE670, &unk_227674260);
  sub_2276639A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_2276728D0;
  v39 = *MEMORY[0x277CE6228];
  *(v38 + 32) = sub_22766C000();
  *(v38 + 40) = v40;
  *(v38 + 72) = MEMORY[0x277D839B0];
  *(v38 + 48) = 1;
  v41 = *MEMORY[0x277CE6220];
  *(v38 + 80) = sub_22766C000();
  *(v38 + 88) = v42;
  *(v38 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC58, qword_227687570);
  *(v38 + 96) = v37;
  sub_227149264(v38);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5C0, &qword_22767D1D0);
  swift_arrayDestroy();
  v43 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v44 = sub_2276623E0();
  v45 = sub_22766BE90();

  v46 = [v43 initWithURL:v44 options:v45];

  (*(v73 + 8))(v27, v4);
  v47 = [v46 metadata];
  sub_226E99364(0, &qword_27D7BDFE8, 0x277CE6520);
  v48 = sub_22766C2C0();

  v75 = MEMORY[0x277D84F90];
  if (v48 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
  {
    v71 = v46;
    v46 = 0;
    v50 = v48 & 0xC000000000000001;
    v51 = v48 & 0xFFFFFFFFFFFFFF8;
    v73 = 0x8000000227692980;
    v72 = v48 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v50)
      {
        v52 = MEMORY[0x22AA991A0](v46, v48);
      }

      else
      {
        if (v46 >= *(v51 + 16))
        {
          goto LABEL_25;
        }

        v52 = *(v48 + 8 * v46 + 32);
      }

      v53 = v52;
      v54 = (v46 + 1);
      if (__OFADD__(v46, 1))
      {
        break;
      }

      v55 = [v52 key];
      if (v55)
      {
        v74[2] = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDFD8, &qword_227687558);
        if (swift_dynamicCast())
        {
          v56 = i;
          v57 = v48;
          v58 = v50;
          if (v74[0] == 0xD000000000000012 && v73 == v74[1])
          {

            goto LABEL_19;
          }

          v59 = sub_22766D190();

          if (v59)
          {
LABEL_19:
            sub_22766CF00();
            v60 = *(v75 + 16);
            sub_22766CF40();
            sub_22766CF50();
            sub_22766CF10();
          }

          else
          {
          }

          v50 = v58;
          v48 = v57;
          i = v56;
          v51 = v72;
          goto LABEL_8;
        }
      }

LABEL_8:
      ++v46;
      if (v54 == i)
      {
        v61 = v75;
        v46 = v71;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v61 = MEMORY[0x277D84F90];
LABEL_28:

  if (v61 < 0 || (v61 & 0x4000000000000000) != 0)
  {
    if (sub_22766CD20())
    {
      goto LABEL_31;
    }
  }

  else if (*(v61 + 16))
  {
LABEL_31:
    v70(v61, 0);

    return;
  }

  v62 = sub_227663190();
  sub_226EB0FB0(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
  v63 = swift_allocError();
  (*(*(v62 - 8) + 104))(v64, *MEMORY[0x277D4FD98], v62);
  v70(v63, 1);
}

void sub_2274AA4CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *a1;
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v12[7] = a7;
  v12[8] = a8;
  v12[9] = a9;
  sub_2275F2D98(sub_2274AECB0, v12, v9);
  v12[10] = v10;
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v11 = sub_22766C950();
  sub_227669A50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85D0, &unk_227671060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDFC8, qword_227687540);
  sub_226E9CFD0(&qword_27D7BDFD0, &qword_27D7BDFC8, qword_227687540);
  sub_227669210();
}

uint64_t sub_2274AA608@<X0>(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v56 = a5;
  v51 = a3;
  v52 = a7;
  v54 = a4;
  v55 = a8;
  v53 = a9;
  v50 = sub_2276639B0();
  v47 = *(v50 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *a1;
  sub_22766A6C0();

  v18 = sub_22766B380();
  v19 = sub_22766C8B0();

  v20 = os_log_type_enabled(v18, v19);
  v46 = a6;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v45 = v13;
    v22 = v12;
    v23 = v21;
    v24 = a2;
    v25 = swift_slowAlloc();
    v57 = v25;
    *v23 = 136446210;
    *(v23 + 4) = sub_226E97AE8(v56, a6, &v57);
    _os_log_impl(&dword_226E8E000, v18, v19, "[Key Metadata] createKeyRequests for workout: %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v26 = v25;
    a2 = v24;
    MEMORY[0x22AA9A450](v26, -1, -1);
    v27 = v23;
    v12 = v22;
    MEMORY[0x22AA9A450](v27, -1, -1);

    (*(v14 + 8))(v17, v45);
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  v28 = v47;
  v30 = v49;
  v29 = v50;
  (*(v47 + 16))(v49, a2, v50);
  v31 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v32 = (v12 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = v48;
  *(v34 + 16) = v48;
  (*(v28 + 32))(v34 + v31, v30, v29);
  v36 = (v34 + v32);
  v38 = v53;
  v37 = v54;
  *v36 = v51;
  v36[1] = v37;
  v39 = (v34 + v33);
  v40 = v46;
  *v39 = v56;
  v39[1] = v40;
  v41 = (v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v41 = v52;
  v41[1] = v38;

  v42 = v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85D0, &unk_227671060);
  return sub_227669270();
}

uint64_t sub_2274AA984@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  result = sub_226F35CBC(v4);
  *a2 = result;
  return result;
}

uint64_t sub_2274AA9BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v143 = a4;
  v129 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA078, &unk_2276776F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v125 = &v123 - v12;
  v131 = sub_2276668A0();
  v127 = *(v131 - 8);
  v13 = *(v127 + 64);
  v14 = MEMORY[0x28223BE20](v131);
  v126 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v128 = &v123 - v16;
  v17 = sub_22766B390();
  v132 = *(v17 - 8);
  v133 = v17;
  v18 = *(v132 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v123 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v130 = &v123 - v22;
  MEMORY[0x28223BE20](v21);
  v124 = &v123 - v23;
  v24 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v25 = *v24;
  v26 = v24[1];
  v27 = *(v24 + 16);
  v28 = v24[3];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9698, &qword_2276776A0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  v33 = v25;
  v34 = v26;

  sub_22766A070();
  *(v32 + 16) = v33;
  *(v32 + 24) = v34;
  *(v32 + 32) = v27;
  *(v32 + 40) = v28;
  swift_getKeyPath();
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v142 = v135;
  v140 = a2;
  v141 = a3;
  v35 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v136 = v35;
  v36 = sub_22766C820();
  sub_226ED25F8(&v140, v138);
  v37 = v139;
  if (v139)
  {
    v38 = __swift_project_boxed_opaque_existential_0(v138, v139);
    v39 = *(v37 - 8);
    v40 = *(v39 + 64);
    MEMORY[0x28223BE20](v38);
    v42 = &v123 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v42);
    v43 = sub_22766D170();
    (*(v39 + 8))(v42, v37);
    __swift_destroy_boxed_opaque_existential_0(v138);
  }

  else
  {
    v43 = 0;
  }

  v44 = objc_opt_self();
  v45 = [v44 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96A8, &unk_2276776D0);
  v46 = [objc_allocWithZone(v134) initWithLeftExpression:v36 rightExpression:v45 modifier:0 type:4 options:0];

  sub_226E97D1C(&v140, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v47 = v46;
  v48 = sub_22766A080();
  v50 = v49;
  MEMORY[0x22AA985C0]();
  if (*((*v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v48(&v140, 0);
  swift_endAccess();

  swift_getKeyPath();
  v142 = v135;
  v140 = v143;
  v141 = a5;
  v135 = a5;

  v51 = sub_22766C820();
  sub_226ED25F8(&v140, v138);
  v52 = v139;
  if (v139)
  {
    v53 = __swift_project_boxed_opaque_existential_0(v138, v139);
    v136 = &v123;
    v54 = v44;
    v55 = *(v52 - 8);
    v56 = *(v55 + 64);
    MEMORY[0x28223BE20](v53);
    v58 = &v123 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v55 + 16))(v58);
    v59 = sub_22766D170();
    (*(v55 + 8))(v58, v52);
    v44 = v54;
    __swift_destroy_boxed_opaque_existential_0(v138);
  }

  else
  {
    v59 = 0;
  }

  v60 = [v44 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v61 = [objc_allocWithZone(v134) initWithLeftExpression:v51 rightExpression:v60 modifier:0 type:4 options:0];

  sub_226E97D1C(&v140, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v62 = v61;
  v63 = sub_22766A080();
  v65 = v64;
  MEMORY[0x22AA985C0]();
  if (*((*v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v122 = *((*v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v63(&v140, 0);
  swift_endAccess();

  v66 = v137;
  v67 = sub_227231CB8(100);
  if (v66)
  {
    swift_setDeallocating();

    v68 = *(v32 + 40);

    v69 = qword_2813B2078;
    v70 = sub_22766A100();
    (*(*(v70 - 8) + 8))(v32 + v69, v70);
    v71 = *(*v32 + 48);
    v72 = *(*v32 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v74 = v67;
    swift_setDeallocating();

    v75 = *(v32 + 40);

    v76 = qword_2813B2078;
    v77 = sub_22766A100();
    (*(*(v77 - 8) + 8))(v32 + v76, v77);
    v78 = *(*v32 + 48);
    v79 = *(*v32 + 52);
    swift_deallocClassInstance();
    v80 = v124;
    sub_22766A6C0();

    v81 = sub_22766B380();
    v82 = sub_22766C8B0();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v140 = v84;
      *v83 = 141558274;
      *(v83 + 4) = 1752392040;
      *(v83 + 12) = 2080;
      sub_226EB0FB0(&unk_28139B620, MEMORY[0x277D526D0]);
      v85 = v131;
      v86 = sub_22766C610();
      v137 = 0;
      v88 = sub_226E97AE8(v86, v87, &v140);

      *(v83 + 14) = v88;
      v89 = v85;
      _os_log_impl(&dword_226E8E000, v81, v82, "[Key Metadata] Found metadata matching workout and userIdentifier %{mask.hash}s", v83, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v84);
      MEMORY[0x22AA9A450](v84, -1, -1);
      MEMORY[0x22AA9A450](v83, -1, -1);

      v90 = *(v132 + 8);
      v90(v80, v133);
    }

    else
    {

      v90 = *(v132 + 8);
      v90(v80, v133);
      v89 = v131;
    }

    v91 = v130;
    v92 = v126;
    v93 = v127;
    v94 = v125;
    sub_22722AFB4(v74, v125);

    if ((*(v93 + 48))(v94, 1, v89) == 1)
    {
      sub_226E97D1C(v94, &qword_27D7BA078, &unk_2276776F0);
      v95 = sub_22766C0A0();
      v97 = v96;
      v98 = v123;
      sub_22766A6C0();
      v99 = v135;

      v100 = sub_22766B380();
      v101 = sub_22766C8B0();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v137 = v90;
        v103 = v102;
        v104 = swift_slowAlloc();
        v140 = v104;
        *v103 = 141558530;
        *(v103 + 4) = 1752392040;
        *(v103 + 12) = 2080;
        *(v103 + 14) = sub_226E97AE8(v95, v97, &v140);
        *(v103 + 22) = 2082;
        *(v103 + 24) = sub_226E97AE8(v143, v99, &v140);
        _os_log_impl(&dword_226E8E000, v100, v101, "[Key Metadata] Creating new slot identifier %{mask.hash}s for workout %{public}s", v103, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AA9A450](v104, -1, -1);
        MEMORY[0x22AA9A450](v103, -1, -1);

        result = (v137)(v98, v133);
      }

      else
      {

        result = (v90)(v98, v133);
      }
    }

    else
    {
      v137 = v90;
      v105 = v128;
      (*(v93 + 32))(v128, v94, v89);
      sub_22766A6C0();
      (*(v93 + 16))(v92, v105, v89);
      v106 = v135;

      v107 = sub_22766B380();
      v108 = sub_22766C8B0();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        LODWORD(v134) = v108;
        v110 = v92;
        v111 = v109;
        v136 = swift_slowAlloc();
        v140 = v136;
        *v111 = 141558530;
        *(v111 + 4) = 1752392040;
        *(v111 + 12) = 2080;
        sub_226EB0FB0(&qword_27D7BDFF0, MEMORY[0x277D526D0]);
        v112 = sub_22766D140();
        v114 = v113;
        v115 = *(v93 + 8);
        v115(v110, v131);
        v116 = sub_226E97AE8(v112, v114, &v140);
        v89 = v131;

        *(v111 + 14) = v116;
        *(v111 + 22) = 2082;
        *(v111 + 24) = sub_226E97AE8(v143, v106, &v140);
        _os_log_impl(&dword_226E8E000, v107, v134, "[Key Metadata] Reusing slot identifier in metadata %{mask.hash}s for workout: %{public}s", v111, 0x20u);
        v117 = v136;
        swift_arrayDestroy();
        MEMORY[0x22AA9A450](v117, -1, -1);
        MEMORY[0x22AA9A450](v111, -1, -1);

        v118 = v130;
      }

      else
      {

        v115 = *(v93 + 8);
        v115(v92, v89);
        v118 = v91;
      }

      v137(v118, v133);
      v119 = v128;
      v95 = sub_227666830();
      v97 = v120;
      result = (v115)(v119, v89);
    }

    v121 = v129;
    *v129 = v95;
    v121[1] = v97;
  }

  return result;
}

void sub_2274AB860(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v38 = a7;
  v39 = a8;
  v34 = a5;
  v35 = a6;
  v40 = a3;
  v36 = a10;
  v33 = a9;
  v13 = sub_2276639B0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;

  v37 = sub_22766C2B0();
  (*(v14 + 16))(v16, a4, v13);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v40;
  (*(v14 + 32))(v22 + v18, v16, v13);
  v23 = (v22 + v19);
  *v23 = sub_226EB438C;
  v23[1] = v17;
  v24 = (v22 + v20);
  v25 = v35;
  *v24 = v34;
  v24[1] = v25;
  v26 = (v22 + v21);
  v27 = v39;
  *v26 = v38;
  v26[1] = v27;
  v28 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  v29 = v36;
  *v28 = v33;
  v28[1] = v29;
  aBlock[4] = sub_2274AEEC8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_34;
  v30 = _Block_copy(aBlock);
  v31 = v40;

  v32 = v37;
  [v31 loadValuesAsynchronouslyForKeys:v37 completionHandler:v30];
  _Block_release(v30);
}

void sub_2274ABB04(void *a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v115 = a7;
  v116 = a8;
  v113 = a5;
  v114 = a6;
  v120 = a4;
  v121 = a3;
  v124[4] = *MEMORY[0x277D85DE8];
  v10 = sub_2276639B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v118 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v111 = &v109 - v15;
  v122 = sub_22766B390();
  v16 = *(v122 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v122);
  v119 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v112 = &v109 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v109 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v109 - v25;
  sub_22766A6C0();
  v27 = a1;
  v28 = sub_22766B380();
  v29 = sub_22766C8B0();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v117 = a2;
    v31 = v30;
    v32 = v11;
    v33 = v10;
    v34 = swift_slowAlloc();
    *v31 = 141558274;
    *(v31 + 4) = 1752392040;
    *(v31 + 12) = 2112;
    *(v31 + 14) = v27;
    *v34 = v27;
    v35 = v27;
    _os_log_impl(&dword_226E8E000, v28, v29, "[Key Metadata] Loaded metadata values for item: %{mask.hash}@", v31, 0x16u);
    sub_226E97D1C(v34, &unk_27D7B9660, &qword_2276740C0);
    v36 = v34;
    v10 = v33;
    v11 = v32;
    MEMORY[0x22AA9A450](v36, -1, -1);
    v37 = v31;
    a2 = v117;
    MEMORY[0x22AA9A450](v37, -1, -1);
  }

  v40 = *(v16 + 8);
  v38 = v16 + 8;
  v39 = v40;
  (v40)(v26, v122);
  v41 = [v27 value];
  if (!v41)
  {
    goto LABEL_13;
  }

  v123 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDFD8, &qword_227687558);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v42 = sub_227662510();
  v44 = v43;

  if (v44 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v45 = objc_opt_self();
  v46 = sub_227662560();
  v124[0] = 0;
  v47 = [v45 JSONObjectWithData:v46 options:0 error:v124];

  if (!v47)
  {
    v64 = v124[0];
    v65 = sub_2276622C0();
    v117 = a2;
    v66 = v38;
    v67 = v65;

    swift_willThrow();
    sub_226FB1424(v42, v44);
    v68 = v67;
    v38 = v66;
    a2 = v117;

LABEL_13:
    v69 = v119;
    sub_22766A6C0();
    v70 = v118;
    (*(v11 + 16))(v118, a2, v10);
    v71 = sub_22766B380();
    v72 = sub_22766C890();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v117 = v38;
      v74 = v73;
      v75 = swift_slowAlloc();
      v124[0] = v75;
      *v74 = 141558274;
      *(v74 + 4) = 1752392040;
      *(v74 + 12) = 2080;
      sub_226EB0FB0(&qword_28139BCA0, MEMORY[0x277D501C8]);
      v76 = sub_22766D140();
      v77 = v10;
      v79 = v78;
      (*(v11 + 8))(v70, v77);
      v80 = sub_226E97AE8(v76, v79, v124);

      *(v74 + 14) = v80;
      _os_log_impl(&dword_226E8E000, v71, v72, "[Key Metadata] Unable to decode key metadata for stream request %{mask.hash}s", v74, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x22AA9A450](v75, -1, -1);
      MEMORY[0x22AA9A450](v74, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v70, v10);
    }

    (v39)(v69, v122);
    v81 = sub_227663190();
    sub_226EB0FB0(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    v82 = swift_allocError();
    (*(*(v81 - 8) + 104))(v83, *MEMORY[0x277D4FD98], v81);
    v121(v82, 1);

    goto LABEL_17;
  }

  v110 = v42;
  v48 = v124[0];
  sub_22766CC20();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDF0, &qword_227687560);
  v49 = swift_dynamicCast();
  if ((v49 & 1) == 0)
  {
    sub_226FB1424(v110, v44);
    goto LABEL_13;
  }

  v119 = v44;
  v50 = v11;
  v51 = v123;
  MEMORY[0x28223BE20](v49);
  v52 = v114;
  *(&v109 - 8) = v113;
  *(&v109 - 7) = v52;
  v53 = v116;
  *(&v109 - 6) = v115;
  *(&v109 - 5) = v53;
  *(&v109 - 4) = v55;
  *(&v109 - 3) = v54;
  *(&v109 - 2) = a2;
  v56 = sub_226FDFF04(sub_2274AEF8C, (&v109 - 10), v51);
  if (*(v56 + 2))
  {

    sub_22766A6C0();

    v57 = sub_22766B380();
    v58 = sub_22766C8B0();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v124[0] = v60;
      *v59 = 141558274;
      *(v59 + 4) = 1752392040;
      *(v59 + 12) = 2080;
      v61 = MEMORY[0x22AA98660](v56, v10);
      v63 = sub_226E97AE8(v61, v62, v124);

      *(v59 + 14) = v63;
      _os_log_impl(&dword_226E8E000, v57, v58, "[Key Metadata] Created key requests: %{mask.hash}s", v59, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x22AA9A450](v60, -1, -1);
      MEMORY[0x22AA9A450](v59, -1, -1);
    }

    (v39)(v24, v122);
    v104 = v119;
    v105 = v110;
    v121(v56, 0);

    sub_226FB1424(v105, v104);
  }

  else
  {
    v85 = v10;
    v117 = v38;
    v118 = v39;

    v86 = v112;
    sub_22766A6C0();
    v87 = v50;
    v88 = *(v50 + 16);
    v89 = v111;
    v88(v111, a2, v10);

    v90 = sub_22766B380();
    v91 = sub_22766C890();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v124[0] = v93;
      *v92 = 136315650;
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA8, &unk_227675D20);
      v95 = MEMORY[0x22AA98660](v51, v94);
      v97 = v96;

      v98 = sub_226E97AE8(v95, v97, v124);

      *(v92 + 4) = v98;
      *(v92 + 12) = 2160;
      *(v92 + 14) = 1752392040;
      *(v92 + 22) = 2080;
      sub_226EB0FB0(&qword_28139BCA0, MEMORY[0x277D501C8]);
      v99 = sub_22766D140();
      v101 = v100;
      (*(v87 + 8))(v89, v85);
      v102 = sub_226E97AE8(v99, v101, v124);

      *(v92 + 24) = v102;
      _os_log_impl(&dword_226E8E000, v90, v91, "[Key Metadata] Failed to create key requests from metadata: %s for media stream request %{mask.hash}s", v92, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v93, -1, -1);
      MEMORY[0x22AA9A450](v92, -1, -1);

      v103 = v112;
    }

    else
    {

      (*(v87 + 8))(v89, v10);
      v103 = v86;
    }

    (v118)(v103, v122);
    v106 = sub_227663190();
    sub_226EB0FB0(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    v107 = swift_allocError();
    (*(*(v106 - 8) + 104))(v108, *MEMORY[0x277D4FD98], v106);
    v121(v107, 1);

    sub_226FB1424(v110, v119);
  }

LABEL_17:
  v84 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2274AC6D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v159 = a8;
  v153 = a7;
  v154 = a6;
  v157 = a4;
  v158 = a5;
  v155 = a2;
  v156 = a3;
  v166 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9688, &qword_2276776E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v141 - v14;
  v16 = sub_227662750();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v151 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2276668A0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v160 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22766B390();
  v164 = *(v23 - 8);
  v165 = v23;
  v24 = *(v164 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v163 = &v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v141 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v141 - v34;
  v169 = sub_2276624A0();
  v172 = *(v169 - 8);
  v36 = *(v172 + 64);
  v37 = MEMORY[0x28223BE20](v169);
  v150 = &v141 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v162 = &v141 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v161 = &v141 - v42;
  MEMORY[0x28223BE20](v41);
  v168 = &v141 - v43;
  v44 = *a1;
  v45 = *(v44 + 16);
  v167 = v44;
  v152 = v33;
  if (v45)
  {
    v46 = sub_226E92000(6910581, 0xE300000000000000);
    if (v47)
    {
      sub_226E97CC0(*(v44 + 56) + 32 * v46, v171);
      swift_dynamicCast();
    }
  }

  v48 = v169;
  sub_227662310();
  v49 = v172;
  if ((*(v172 + 48))(v35, 1, v48) == 1)
  {
    sub_226E97D1C(v35, &unk_27D7BB570, &unk_227670FC0);
    v50 = 1;
    v51 = v166;
LABEL_97:
    v140 = sub_2276639B0();
    return (*(*(v140 - 8) + 56))(v51, v50, 1, v140);
  }

  (*(v49 + 32))(v168, v35, v48);
  v52 = *(v167 + 16);
  v53 = v28;
  v145 = v15;
  v148 = v19;
  v144 = v20;
  if (!v52 || (v54 = sub_226E92000(0xD000000000000010, 0x80000002276A1470), v48 = v169, (v55 & 1) == 0) || (sub_226E97CC0(*(v167 + 56) + 32 * v54, v171), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0), result = swift_dynamicCast(), (result & 1) == 0))
  {
    v91 = 0;
    goto LABEL_87;
  }

  v149 = v9;
  v57 = v170;
  v58 = *(v170 + 2);
  if (!v58)
  {
    v147 = MEMORY[0x277D84F90];
LABEL_100:

    v10 = v149;
    v48 = v169;
    v91 = v147;
LABEL_87:
    sub_22766A6C0();
    v92 = v172;
    v93 = *(v172 + 16);
    v94 = v161;
    v147 = (v172 + 16);
    v146 = v93;
    (v93)(v161, v168, v48);

    v95 = v53;
    v96 = sub_22766B380();
    v97 = sub_22766C8B0();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v149 = v10;
      v142 = v99;
      v171[0] = v99;
      *v98 = 141558530;
      *(v98 + 4) = 1752392040;
      *(v98 + 12) = 2080;
      v143 = v95;
      v100 = sub_227662390();
      v102 = v101;
      v103 = v48;
      v104 = *(v92 + 8);
      v104(v94, v103);
      v105 = sub_226E97AE8(v100, v102, v171);

      *(v98 + 14) = v105;
      *(v98 + 22) = 2082;
      v170 = v91;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDFE0, &qword_227687568);
      v106 = sub_22766CB80();
      v108 = sub_226E97AE8(v106, v107, v171);

      *(v98 + 24) = v108;
      v51 = v166;
      v109 = v97;
      v110 = v104;
      _os_log_impl(&dword_226E8E000, v96, v109, "Versions for %{mask.hash}s: %{public}s", v98, 0x20u);
      v111 = v142;
      swift_arrayDestroy();
      v112 = v149;
      MEMORY[0x22AA9A450](v111, -1, -1);
      MEMORY[0x22AA9A450](v98, -1, -1);

      v113 = *(v164 + 8);
      v113(v143, v165);
      v48 = v169;
      v114 = v163;
      v115 = v162;
      if (v91)
      {
        goto LABEL_89;
      }
    }

    else
    {

      v110 = *(v92 + 8);
      v110(v94, v48);
      v113 = *(v164 + 8);
      v113(v95, v165);
      v114 = v163;
      v51 = v166;
      v112 = v10;
      v115 = v162;
      if (v91)
      {
LABEL_89:
        if (*(v91 + 2))
        {
          v142 = *(v91 + 4);

          sub_22766A6C0();
          (v146)(v115, v168, v48);

          v116 = sub_22766B380();
          v117 = sub_22766C8B0();

          v118 = os_log_type_enabled(v116, v117);
          v149 = v112;
          v161 = v110;
          if (v118)
          {
            v119 = v110;
            v120 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            v171[0] = v121;
            *v120 = 141558530;
            *(v120 + 4) = 1752392040;
            *(v120 + 12) = 2080;
            v122 = sub_227662390();
            v123 = v115;
            v125 = v124;
            v143 = (v172 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v119(v123, v169);
            v126 = sub_226E97AE8(v122, v125, v171);

            *(v120 + 14) = v126;
            *(v120 + 22) = 2082;
            v127 = sub_22766BEC0();
            v129 = sub_226E97AE8(v127, v128, v171);

            *(v120 + 24) = v129;
            _os_log_impl(&dword_226E8E000, v116, v117, "[Key Metadata] key URL %{mask.hash}s deserialized metadata: %{public}s", v120, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x22AA9A450](v121, -1, -1);
            MEMORY[0x22AA9A450](v120, -1, -1);

            v113(v163, v165);
            v130 = v172;
          }

          else
          {

            v131 = v172;
            v143 = (v172 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v110(v115, v169);
            v113(v114, v165);
            v130 = v131;
          }

          sub_22766C0A0();

          sub_227662740();
          sub_2276639A0();
          v132 = v160;
          sub_227666800();
          v133 = v144;
          v134 = v145;
          (*(v144 + 16))(v145, v132, v148);
          v135 = sub_227664AE0();
          swift_storeEnumTagMultiPayload();
          (*(*(v135 - 8) + 56))(v134, 0, 1, v135);
          v136 = v152;
          v138 = v168;
          v137 = v169;
          (v146)(v152, v168, v169);
          (*(v130 + 56))(v136, 0, 1, v137);
          v139 = v166;
          sub_227663980();

          sub_226E97D1C(v136, &unk_27D7BB570, &unk_227670FC0);
          sub_226E97D1C(v134, &qword_27D7B9688, &qword_2276776E0);
          (*(v133 + 8))(v160, v148);
          (v161)(v138, v137);
          v50 = 0;
          v51 = v139;
        }

        else
        {
          v110(v168, v48);

          v50 = 1;
        }

        goto LABEL_97;
      }
    }

    v110(v168, v48);
    v50 = 1;
    goto LABEL_97;
  }

  v59 = 0;
  v60 = v171 + 1;
  v147 = MEMORY[0x277D84F90];
  while (v59 < *(v57 + 2))
  {
    v61 = &v57[16 * v59 + 32];
    v63 = *v61;
    v62 = v61[1];
    ++v59;
    v64 = HIBYTE(v62) & 0xF;
    v65 = v63 & 0xFFFFFFFFFFFFLL;
    if ((v62 & 0x2000000000000000) != 0)
    {
      v66 = HIBYTE(v62) & 0xF;
    }

    else
    {
      v66 = v63 & 0xFFFFFFFFFFFFLL;
    }

    if (!v66)
    {
      goto LABEL_74;
    }

    if ((v62 & 0x1000000000000000) != 0)
    {

      v68 = sub_2274AD75C(v63, v62, 10);
      LODWORD(v146) = v86;

      if ((v146 & 1) == 0)
      {
        goto LABEL_79;
      }

      if (v59 == v58)
      {
LABEL_98:
        v53 = v28;
        goto LABEL_100;
      }
    }

    else
    {
      if ((v62 & 0x2000000000000000) != 0)
      {
        v171[0] = v63;
        v171[1] = v62 & 0xFFFFFFFFFFFFFFLL;
        if (v63 == 43)
        {
          if (!v64)
          {
            goto LABEL_102;
          }

          if (--v64)
          {
            v68 = 0;
            v78 = v60;
            while (1)
            {
              v79 = *v78 - 48;
              if (v79 > 9)
              {
                break;
              }

              v80 = 10 * v68;
              if ((v68 * 10) >> 64 != (10 * v68) >> 63)
              {
                break;
              }

              v68 = v80 + v79;
              if (__OFADD__(v80, v79))
              {
                break;
              }

              ++v78;
              if (!--v64)
              {
                goto LABEL_73;
              }
            }
          }
        }

        else if (v63 == 45)
        {
          if (!v64)
          {
            goto LABEL_104;
          }

          if (--v64)
          {
            v68 = 0;
            v72 = v60;
            while (1)
            {
              v73 = *v72 - 48;
              if (v73 > 9)
              {
                break;
              }

              v74 = 10 * v68;
              if ((v68 * 10) >> 64 != (10 * v68) >> 63)
              {
                break;
              }

              v68 = v74 - v73;
              if (__OFSUB__(v74, v73))
              {
                break;
              }

              ++v72;
              if (!--v64)
              {
                goto LABEL_73;
              }
            }
          }
        }

        else if (v64)
        {
          v68 = 0;
          v83 = v171;
          while (1)
          {
            v84 = *v83 - 48;
            if (v84 > 9)
            {
              break;
            }

            v85 = 10 * v68;
            if ((v68 * 10) >> 64 != (10 * v68) >> 63)
            {
              break;
            }

            v68 = v85 + v84;
            if (__OFADD__(v85, v84))
            {
              break;
            }

            v83 = (v83 + 1);
            if (!--v64)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_72;
      }

      if ((v63 & 0x1000000000000000) != 0)
      {
        result = (v62 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_22766CEC0();
      }

      v67 = *result;
      if (v67 == 43)
      {
        if (v65 < 1)
        {
          goto LABEL_105;
        }

        v64 = v65 - 1;
        if (v65 == 1)
        {
          goto LABEL_72;
        }

        v68 = 0;
        if (result)
        {
          v75 = (result + 1);
          while (1)
          {
            v76 = *v75 - 48;
            if (v76 > 9)
            {
              goto LABEL_72;
            }

            v77 = 10 * v68;
            if ((v68 * 10) >> 64 != (10 * v68) >> 63)
            {
              goto LABEL_72;
            }

            v68 = v77 + v76;
            if (__OFADD__(v77, v76))
            {
              goto LABEL_72;
            }

            ++v75;
            if (!--v64)
            {
              goto LABEL_73;
            }
          }
        }
      }

      else if (v67 == 45)
      {
        if (v65 < 1)
        {
          goto LABEL_103;
        }

        v64 = v65 - 1;
        if (v65 == 1)
        {
          goto LABEL_72;
        }

        v68 = 0;
        if (result)
        {
          v69 = (result + 1);
          while (1)
          {
            v70 = *v69 - 48;
            if (v70 > 9)
            {
              break;
            }

            v71 = 10 * v68;
            if ((v68 * 10) >> 64 != (10 * v68) >> 63)
            {
              break;
            }

            v68 = v71 - v70;
            if (__OFSUB__(v71, v70))
            {
              break;
            }

            ++v69;
            if (!--v64)
            {
              goto LABEL_73;
            }
          }

LABEL_72:
          v68 = 0;
          LOBYTE(v64) = 1;
          goto LABEL_73;
        }
      }

      else
      {
        if (!v65)
        {
          goto LABEL_72;
        }

        v68 = 0;
        if (result)
        {
          do
          {
            v81 = *result - 48;
            if (v81 > 9)
            {
              goto LABEL_72;
            }

            v82 = 10 * v68;
            if ((v68 * 10) >> 64 != (10 * v68) >> 63)
            {
              goto LABEL_72;
            }

            v68 = v82 + v81;
            if (__OFADD__(v82, v81))
            {
              goto LABEL_72;
            }

            ++result;
          }

          while (--v65);
        }
      }

      LOBYTE(v64) = 0;
LABEL_73:
      LOBYTE(v170) = v64;
      if (v64)
      {
LABEL_74:
        if (v59 == v58)
        {
          goto LABEL_98;
        }
      }

      else
      {
LABEL_79:
        v146 = v60;
        result = swift_isUniquelyReferenced_nonNull_native();
        v87 = v15;
        if ((result & 1) == 0)
        {
          result = sub_2273A5610(0, *(v147 + 2) + 1, 1, v147);
          v147 = result;
        }

        v89 = *(v147 + 2);
        v88 = *(v147 + 3);
        if (v89 >= v88 >> 1)
        {
          result = sub_2273A5610((v88 > 1), v89 + 1, 1, v147);
          v147 = result;
        }

        v90 = v147;
        *(v147 + 2) = v89 + 1;
        *&v90[8 * v89 + 32] = v68;
        v15 = v87;
        v53 = v28;
        v60 = v146;
        if (v59 == v58)
        {
          goto LABEL_100;
        }
      }
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

unsigned __int8 *sub_2274AD75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_22766C1D0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2274AE264();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22766CEC0();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_2274ADCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_22766C1D0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2274AE264();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22766CEC0();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_2274AE264()
{
  v0 = sub_22766C1E0();
  v4 = sub_2274AE2E4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2274AE2E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22766C0F0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_22766CBA0();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_226E9BED8(v9, 0);
  v12 = sub_2274AE43C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_22766C0F0();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_22766CEC0();
LABEL_4:

  return sub_22766C0F0();
}

unint64_t sub_2274AE43C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2274F117C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22766C190();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22766CEC0();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2274F117C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22766C170();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2274AE67C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + v8 + 8);
  v12 = (v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  return sub_2274A90E4(a1, v2 + v6, v9, v10, v11, v13, v14, a2);
}

uint64_t sub_2274AE770@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2274A8934(a1, v6, a2);
}

uint64_t objectdestroy_17Tm()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2274AE8E4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2274A967C(a1, a2, v6);
}

void sub_2274AE964(unint64_t *a1)
{
  v3 = *(sub_2276639B0() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2274AA4CC(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_2274AEA60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);

  return sub_227669270();
}

uint64_t sub_2274AEB40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_2274AEC08(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  sub_226F38F34(v6, 0);
}

uint64_t objectdestroy_36Tm_0()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 8);

  v10 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v3 | 7);
}

void sub_2274AEDF4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2274AB860(a1, a2, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_2274AEEC8()
{
  v1 = *(sub_2276639B0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + v6 + 8);
  sub_2274ABB04(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + v5 + 8));
}

void sub_2274AEFB4()
{
  v1 = *(sub_2276639B0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  sub_2274A9B44(v0 + v2, v4, v5);
}

uint64_t sub_2274AF058(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = v2;
  if (a2)
  {
    swift_getObjectType();
    v4 = sub_22766C420();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x2822009F8](sub_2274AF0EC, v4, v6);
}

uint64_t sub_2274AF114()
{
  v1 = v0[7];
  v2 = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[8] = v3;
  v3[2] = v2;
  v3[3] = sub_2274AFCB0;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[9] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE018, &qword_227687768);
  *v5 = v0;
  v5[1] = sub_2274AF244;
  v7 = v0[3];

  return MEMORY[0x2822008A0](v7, 0, 0, 0x2865747563657865, 0xEE00293A68746977, sub_2274AFCCC, v3, v6);
}

uint64_t sub_2274AF244()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2274AF38C, 0, 0);
  }

  else
  {
    v4 = v3[7];
    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2274AF38C()
{
  v1 = v0[7];
  v2 = v0[8];

  v3 = v0[5];
  v4 = v0[6];

  return MEMORY[0x2822009F8](sub_2274AF3F8, v3, v4);
}

uint64_t sub_2274AF3F8()
{
  v0[2] = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  swift_willThrowTypedImpl();
  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t sub_2274AF488()
{
  sqlite3_finalize(*(v0 + 24));
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_2274AF4F4(uint64_t a1)
{
  *(a1 + 8) = sub_2274AFC70(&qword_27D7BDFF8);
  result = sub_2274AFC70(&qword_27D7BE000);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2274AF55C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = sqlite3_step(*(a1 + 24));
  result = sub_2273946A4(v5);
  if (!v2)
  {
    if (result == 1)
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t sub_2274AF5C0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_2274AF5E8, 0, 0);
}

uint64_t sub_2274AF5E8()
{
  v1 = v0[3];
  v2 = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[4] = v3;
  v3[2] = v2;
  v3[3] = sub_2274AFD78;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE018, &qword_227687768);
  *v5 = v0;
  v5[1] = sub_2274AF718;
  v7 = v0[2];

  return MEMORY[0x2822008A0](v7, 0, 0, 0x2865747563657865, 0xEE00293A68746977, sub_2274AFD90, v3, v6);
}

uint64_t sub_2274AF718()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2274AF860, 0, 0);
  }

  else
  {
    v4 = v3[3];
    v5 = v3[4];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2274AF860()
{
  v1 = v0[3];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[6];

  return v3();
}

uint64_t sub_2274AF8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_2274AF998;

  return (sub_2274AF058)(a1, a2, a3);
}

uint64_t sub_2274AF998()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_2274AFAB8()
{
  v1 = v0[2];
  MEMORY[0x22AA996B0](*(v1 + 16));
  v2 = *(v1 + 24);
  v3 = sub_227669C30();
  MEMORY[0x22AA996B0](v3);
  MEMORY[0x22AA996B0](v0[3]);
  v4 = v0[4];
  result = MEMORY[0x22AA996B0](*(v4 + 16));
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = (v4 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      sub_22766C100();

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2274AFB54()
{
  v1 = *v0;
  sub_22766D370();
  sub_2274AFAB8();
  return sub_22766D3F0();
}

uint64_t sub_2274AFBBC()
{
  v1 = *v0;
  sub_22766D370();
  sub_2274AFAB8();
  return sub_22766D3F0();
}

uint64_t sub_2274AFC70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SQLiteDatabaseResult();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2274AFCD8(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*(v2 + 16) != *(v3 + 16))
  {
    return 0;
  }

  v6 = *(v2 + 24);
  v7 = *(v3 + 24);
  v8 = sub_227669C30();
  if (v8 != sub_227669C30() || a1[3] != a2[3])
  {
    return 0;
  }

  v10 = a1[4];
  v11 = a2[4];

  return sub_2273371D4(v10, v11);
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_2274AFDD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2274AFE18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
      *(result + 224) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2274AFEA0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, NSObject *, uint64_t)@<X3>, NSObject *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, double a9@<D0>)
{
  v132 = a7;
  v140 = a5;
  v141 = a6;
  v139 = a4;
  v134 = a8;
  v14 = sub_22766B390();
  v144 = *(v14 - 8);
  v145 = v14;
  v15 = *(v144 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v138 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v136 = &v124 - v18;
  v149 = sub_227664530();
  v143 = *(v149 - 8);
  v19 = *(v143 + 64);
  v20 = MEMORY[0x28223BE20](v149);
  v130 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v148 = &v124 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v124 - v25;
  v150 = sub_227667A70();
  v142 = *(v150 - 8);
  isa = v142[8].isa;
  v28 = MEMORY[0x28223BE20](v150);
  v133 = &v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v146 = &v124 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v131 = &v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v147 = &v124 - v35;
  v36 = sub_227666FF0();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v124 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_2274B6BAC(a1, v40);
  if (v9)
  {

    v129 = 0;
    v41 = 0;
  }

  else
  {
    v129 = sub_227666F70();
    v41 = v42;
    (*(v37 + 8))(v40, v36);
  }

  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v43 = sub_2274B6F0C(a3, a1);
  v44 = v150;
  v137 = v43;
  v45 = v146;
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_227664510();
  if (v46 >= 300.0 && (sub_227664500(), v47 >= 0.5))
  {
    v120 = sub_2274BD4AC(a3, a1);
    MEMORY[0x28223BE20](v120);
    *(&v124 - 2) = a1;
    v122 = sub_22735A914(sub_2274B0D50, (&v124 - 4), v121);
    v127 = 0;
    v123 = *(v122 + 16);

    v126 = v123 != 0;
  }

  else
  {
    v127 = 0;
    v126 = 0;
  }

  sub_226E93170(v139, v147, &unk_27D7BB920, &unk_227672480);
  v48 = v140;
  v139 = v142[2].isa;
  v140 = v142 + 2;
  v139(v45, v48, v44);
  sub_226E93170(v141, v26, &qword_27D7B8E38, &qword_22767C730);
  v49 = sub_22766A4C0();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(v26, 1, v49) == 1)
  {
    sub_226E97D1C(v26, &qword_27D7B8E38, &qword_22767C730);
    v135 = 0;
    v141 = 0xE000000000000000;
  }

  else
  {
    v135 = sub_22766A4B0();
    v141 = v51;
    (*(v50 + 8))(v26, v49);
  }

  v128 = a2;
  v52 = v129;
  if (!v41)
  {
    v52 = 0;
  }

  v125 = v52;
  v53 = 0xE000000000000000;
  if (v41)
  {
    v53 = v41;
  }

  v124 = v53;
  v54 = v143;
  v55 = *(v143 + 16);
  v56 = v148;
  v57 = v149;
  v55(v148, a3, v149);
  v58 = type metadata accessor for AchievementEnvironmentProvider();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v136;
  sub_22766A610();
  v63 = v130;
  v129 = v55;
  v55(v130, v56, v57);
  v64 = sub_22766B380();
  v65 = sub_22766C8B0();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = v54;
    v68 = swift_slowAlloc();
    v151 = v68;
    *v66 = 136315138;
    sub_2274B0CF8();
    v69 = sub_22766D140();
    v70 = v63;
    v72 = v71;
    v130 = *(v67 + 8);
    (v130)(v70, v149);
    v73 = sub_226E97AE8(v69, v72, &v151);

    *(v66 + 4) = v73;
    _os_log_impl(&dword_226E8E000, v64, v65, "Creating an environment provider for session: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x22AA9A450](v68, -1, -1);
    v74 = v66;
    v57 = v149;
    MEMORY[0x22AA9A450](v74, -1, -1);

    v75 = *(v144 + 8);
    v76 = v136;
  }

  else
  {

    v130 = *(v54 + 8);
    (v130)(v63, v57);
    v75 = *(v144 + 8);
    v76 = v62;
  }

  v136 = v75;
  (v75)(v76, v145);
  v77 = v147;
  sub_226E93170(v147, v61 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_workoutPlan, &unk_27D7BB920, &unk_227672480);
  v78 = v146;
  v139((v61 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_cache), v146, v150);
  v79 = (v61 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_HKWorkoutIdentifier);
  v80 = v141;
  *v79 = v135;
  v79[1] = v80;
  *(v61 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_isCompletingProgram) = v126;
  *(v61 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_isGuidedSession) = v137 & 1;
  v81 = (v61 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_modalityIdentifier);
  v82 = v124;
  *v81 = v125;
  v81[1] = v82;
  *(v61 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_planCompletedWorkoutCount) = v132;
  v129(v61 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_session, v148, v57);
  *(v61 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_sessionEnergyBurned) = a9;

  sub_227664510();
  v84 = v83;
  sub_227669DE0();
  sub_227669DB0();
  v86 = v85;
  *(v61 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_meetsDurationThreshold) = v85 < v84;
  sub_227664500();
  v88 = v87;
  sub_227669DA0();
  v90 = v89;
  *(v61 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_meetsCompletionThreshold) = v89 < v88;
  v91 = v131;
  sub_226E93170(v77, v131, &unk_27D7BB920, &unk_227672480);
  v92 = sub_2276638D0();
  v93 = *(v92 - 8);
  if ((*(v93 + 48))(v91, 1, v92) == 1)
  {
    sub_226E97D1C(v91, &unk_27D7BB920, &unk_227672480);
    v94 = 0;
  }

  else
  {
    v95 = sub_2276637D0();
    (*(v93 + 8))(v91, v92);
    v94 = *(v95 + 16);
  }

  v96 = v138;
  v97 = v133;
  *(v61 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_planTotalWorkoutCount) = v94;
  sub_22766A610();
  v98 = v150;
  v139(v97, v78, v150);
  v99 = v141;

  v100 = sub_22766B380();
  v101 = sub_22766C8B0();

  v140 = v100;
  if (os_log_type_enabled(v100, v101))
  {
    v102 = v97;
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v151 = v104;
    *v103 = 67110146;
    *(v103 + 4) = v86 < v84;
    *(v103 + 8) = 1024;
    *(v103 + 10) = v90 < v88;

    *(v103 + 14) = 2080;
    v105 = sub_226E97AE8(v135, v99, &v151);

    *(v103 + 16) = v105;
    *(v103 + 24) = 1024;
    *(v103 + 26) = v137 & 1;
    *(v103 + 30) = 2048;
    v106 = sub_2276679E0();
    v107 = v142[1].isa;
    v107(v102, v150);
    *(v103 + 32) = v106;
    v108 = v140;
    _os_log_impl(&dword_226E8E000, v140, v101, "[AchievementEnvironmentProvider] Creating provider with meetsDurationThreshold: %{BOOL}d, meetsCompletionThreshold: %{BOOL}d, HKWorkoutIdentifier: %s, isGuidedSession: %{BOOL}d, longestWeeklyStreak: %ld", v103, 0x28u);
    __swift_destroy_boxed_opaque_existential_0(v104);
    v109 = v104;
    v98 = v150;
    MEMORY[0x22AA9A450](v109, -1, -1);
    MEMORY[0x22AA9A450](v103, -1, -1);

    (v136)(v138, v145);
    v110 = v149;
    v111 = v130;
    (v130)(v148, v149);
    v107(v146, v98);
  }

  else
  {
    v107 = v142[1].isa;
    v107(v97, v98);

    (v136)(v96, v145);
    v110 = v149;
    v111 = v130;
    (v130)(v148, v149);
    v107(v78, v98);
  }

  sub_226E97D1C(v147, &unk_27D7BB920, &unk_227672480);
  v112 = sub_22732E2C4();
  swift_setDeallocating();
  sub_226E97D1C(v61 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_workoutPlan, &unk_27D7BB920, &unk_227672480);
  v107((v61 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_cache), v98);
  v113 = *(v61 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_HKWorkoutIdentifier + 8);

  v114 = *(v61 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_modalityIdentifier + 8);

  v111(v61 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_session, v110);
  v115 = *(*v61 + 48);
  v116 = *(*v61 + 52);
  swift_deallocClassInstance();
  v117 = v134;
  v134[3] = &type metadata for AchievementEvaluator;
  v117[4] = &off_283AB26A8;
  v118 = swift_allocObject();
  *v117 = v118;
  result = sub_226E91B50((v128 + 18), v118 + 24);
  *(v118 + 16) = v112;
  return result;
}

unint64_t sub_2274B0CF8()
{
  result = qword_27D7B8C68;
  if (!qword_27D7B8C68)
  {
    sub_227664530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8C68);
  }

  return result;
}

char *sub_2274B0D70(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = sub_2276624A0();
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v38 = v1;
    v52 = MEMORY[0x277D84F90];
    sub_226F1FF88(0, v7, 0);
    v8 = v52;
    v9 = a1 + 56;
    v10 = -1 << *(a1 + 32);
    v11 = sub_22766CC90();
    v12 = *(a1 + 36);
    v47 = objc_opt_self();
    if (v11 < 0 || v11 >= 1 << *(a1 + 32))
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    v13 = v12;
    v14 = v3;
    v45 = v48 + 16;
    v46 = (v48 + 8);
    v39 = a1 + 64;
    v40 = v7;
    v15 = 1;
    v41 = v6;
    v42 = v3;
    v43 = a1 + 56;
    v44 = a1;
    while (1)
    {
      v16 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_26;
      }

      v49 = v15;
      v50 = v13;
      v17 = v8;
      (*(v48 + 16))(v6, *(a1 + 48) + *(v48 + 72) * v11, v14);
      v18 = [v47 defaultManager];
      v19 = v14;
      v8 = v6;
      v20 = sub_2276623E0();
      v51 = 0;
      v21 = [v18 contentsOfDirectoryAtURL:v20 includingPropertiesForKeys:0 options:1 error:&v51];

      v22 = v51;
      if (!v21)
      {
        break;
      }

      v23 = sub_22766C2C0();
      v24 = v22;

      (*v46)(v8, v19);
      v8 = v17;
      v52 = v17;
      v25 = *(v17 + 2);
      v26 = *(v8 + 3);
      if (v25 >= v26 >> 1)
      {
        sub_226F1FF88((v26 > 1), v25 + 1, 1);
        v8 = v52;
      }

      *(v8 + 2) = v25 + 1;
      *&v8[8 * v25 + 32] = v23;
      a1 = v44;
      v27 = 1 << *(v44 + 32);
      if (v11 >= v27)
      {
        goto LABEL_27;
      }

      v9 = v43;
      v28 = *(v43 + 8 * v16);
      if ((v28 & (1 << v11)) == 0)
      {
        goto LABEL_28;
      }

      if (v50 != *(v44 + 36))
      {
        goto LABEL_29;
      }

      v29 = v28 & (-2 << (v11 & 0x3F));
      if (v29)
      {
        v11 = __clz(__rbit64(v29)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v6 = v41;
      }

      else
      {
        v30 = v16 << 6;
        v31 = v16 + 1;
        v32 = (v39 + 8 * v16);
        v6 = v41;
        while (v31 < (v27 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            sub_226EB526C(v11, v50, 0);
            v11 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        sub_226EB526C(v11, v50, 0);
        v11 = v27;
      }

LABEL_19:
      v14 = v42;
      if (v49 == v40)
      {
        goto LABEL_24;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
        v13 = *(a1 + 36);
        v15 = v49 + 1;
        if (v11 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    v35 = v51;
    sub_2276622C0();

    swift_willThrow();
    (*v46)(v8, v19);
  }

LABEL_24:
  v36 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_2274B11A8(uint64_t a1)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v40 - v8;
  v10 = sub_2276624A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v42 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v40 - v15;
  sub_227125BF8(a1 + OBJC_IVAR____TtC15SeymourServices14AssetFileStore_browsingAssetDirectory, v9);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v7 = v9;
LABEL_5:
    sub_226FB1188(v7);
    v21 = sub_227663190();
    sub_226F92508();
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D4FD00], v21);
    result = swift_willThrow();
    goto LABEL_6;
  }

  v40[1] = v1;
  v18 = v16;
  v19 = v11;
  v20 = *(v11 + 32);
  v41 = v18;
  v20();
  sub_227125BF8(a1 + OBJC_IVAR____TtC15SeymourServices14AssetFileStore_mediaStreamAssetDirectory, v7);
  if (v17(v7, 1, v10) == 1)
  {
    (*(v11 + 8))(v41, v10);
    goto LABEL_5;
  }

  v25 = v42;
  (v20)(v42, v7, v10);
  v26 = objc_opt_self();
  v27 = [v26 defaultManager];
  v28 = v41;
  v29 = sub_2276623E0();
  v43[0] = 0;
  v30 = [v27 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:v43];

  v31 = v43[0];
  if (!v30)
  {
    goto LABEL_10;
  }

  v32 = v43[0];
  v33 = [v26 defaultManager];
  v34 = sub_2276623E0();
  v43[0] = 0;
  v35 = [v33 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:v43];

  v31 = v43[0];
  if (v35)
  {
    v36 = *(v19 + 8);
    v37 = v43[0];
    v36(v25, v10);
    result = (v36)(v28, v10);
  }

  else
  {
LABEL_10:
    v38 = v31;
    sub_2276622C0();

    swift_willThrow();
    v39 = *(v19 + 8);
    v39(v25, v10);
    result = (v39)(v28, v10);
  }

LABEL_6:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2274B15D0()
{
  sub_226FB1188(v0 + OBJC_IVAR____TtC15SeymourServices14AssetFileStore_browsingAssetDirectory);
  sub_226FB1188(v0 + OBJC_IVAR____TtC15SeymourServices14AssetFileStore_mediaStreamAssetDirectory);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AssetFileStore()
{
  result = qword_2813A4218;
  if (!qword_2813A4218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2274B1698()
{
  sub_227027194();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

size_t sub_2274B1728(uint64_t a1)
{
  v89 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v76 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v76 - v10;
  v12 = sub_2276624A0();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v92 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v90 = v76 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v81 = v76 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = v76 - v20;
  v22 = v1;
  v23 = v1 + OBJC_IVAR____TtC15SeymourServices14AssetFileStore_browsingAssetDirectory;
  v25 = v24;
  sub_227125BF8(v23, v11);
  v26 = v25[6];
  if (v26(v11, 1, v12) == 1)
  {
    sub_226FB1188(v11);
LABEL_5:
    v28 = sub_227663190();
    sub_226F92508();
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D4FD00], v28);
    swift_willThrow();
    return v25;
  }

  v91 = v25[4];
  v91(v21, v11, v12);
  sub_227125BF8(v22 + OBJC_IVAR____TtC15SeymourServices14AssetFileStore_mediaStreamAssetDirectory, v9);
  if (v26(v9, 1, v12) == 1)
  {
    sub_226FB1188(v9);
    v27 = v25[1];
    ++v25;
    v27(v21, v12);
    goto LABEL_5;
  }

  v79 = v26;
  v80 = v25 + 6;
  v30 = v81;
  v31 = (v91)(v81, v9, v12);
  MEMORY[0x28223BE20](v31);
  v76[-2] = v21;
  v76[-1] = v30;
  v32 = v93;
  v33 = sub_2270A8500(MEMORY[0x277D84FA0], sub_2274B2DB8, &v76[-4], v89);
  v34 = sub_2274B0D70(v33);
  v76[1] = v32;
  if (v32)
  {

    v35 = v25[1];
    ++v25;
    v35(v30, v12);
    v35(v21, v12);
    return v25;
  }

  v36 = v34;
  v87 = v12;
  v88 = v25 + 4;
  v76[0] = v21;
  v82 = v25;

  v38 = *(v36 + 2);
  v89 = v6;
  if (!v38)
  {
    v40 = MEMORY[0x277D84F90];
    v47 = v91;
LABEL_26:

    v53 = *(v40 + 2);
    v54 = v87;
    if (!v53)
    {

      v74 = MEMORY[0x277D84F90];
LABEL_43:
      v25 = sub_226F40798(v74);

      v75 = v82[1];
      v75(v81, v54);
      v75(v76[0], v54);
      return v25;
    }

    v55 = v82[2];
    v83 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v84 = v55;
    v56 = &v40[v83];
    v57 = v82[9];
    v85 = v82 + 2;
    v77 = (v82 + 1);
    v78 = (v82 + 7);
    v93 = MEMORY[0x277D84F90];
    v58 = v90;
    v86 = v57;
    v55(v90, &v40[v83], v87);
    while (1)
    {
      if (sub_2276623C0())
      {
        sub_227662390();
        sub_22766C120();
        v63 = sub_22766C1E0();
        v65 = v64;
        v67 = v66;
        v69 = v68;
        v47 = v91;

        v70 = v65;
        v6 = v89;
        MEMORY[0x22AA98400](v63, v70, v67, v69);
        v54 = v87;

        sub_227662470();
        v58 = v90;

        (*v77)(v58, v54);
        if (v79(v6, 1, v54) == 1)
        {
          v59 = v6;
          v60 = v47;
          v61 = v59;
          sub_226FB1188(v59);
          v62 = v86;
          goto LABEL_29;
        }
      }

      else
      {
        v47(v6, v58, v54);
        (*v78)(v6, 0, 1, v54);
      }

      v47(v92, v6, v54);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v71 = v93;
      }

      else
      {
        v71 = sub_2273A4ECC(0, v93[2] + 1, 1, v93);
      }

      v61 = v6;
      v73 = v71[2];
      v72 = v71[3];
      v60 = v47;
      if (v73 >= v72 >> 1)
      {
        v71 = sub_2273A4ECC(v72 > 1, v73 + 1, 1, v71);
      }

      v71[2] = v73 + 1;
      v93 = v71;
      v62 = v86;
      v60(v71 + v83 + v73 * v86, v92, v54);
      v58 = v90;
LABEL_29:
      v56 += v62;
      --v53;
      v47 = v60;
      v6 = v61;
      if (!v53)
      {

        v74 = v93;
        goto LABEL_43;
      }

      v84(v58, v56, v54);
    }
  }

  v39 = 0;
  v40 = MEMORY[0x277D84F90];
  while (v39 < *(v36 + 2))
  {
    v41 = *&v36[8 * v39 + 32];
    v42 = *(v41 + 16);
    v43 = *(v40 + 2);
    v44 = v43 + v42;
    if (__OFADD__(v43, v42))
    {
      goto LABEL_46;
    }

    v45 = *&v36[8 * v39 + 32];

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v44 > *(v40 + 3) >> 1)
    {
      if (v43 <= v44)
      {
        v46 = v43 + v42;
      }

      else
      {
        v46 = v43;
      }

      result = sub_2273A4ECC(result, v46, 1, v40);
      v40 = result;
    }

    v6 = v89;
    v47 = v91;
    if (*(v41 + 16))
    {
      v48 = *(v40 + 2);
      if ((*(v40 + 3) >> 1) - v48 < v42)
      {
        goto LABEL_48;
      }

      v49 = &v40[((*(v82 + 80) + 32) & ~*(v82 + 80)) + v82[9] * v48];
      swift_arrayInitWithCopy();

      if (v42)
      {
        v50 = *(v40 + 2);
        v51 = __OFADD__(v50, v42);
        v52 = v50 + v42;
        if (v51)
        {
          goto LABEL_49;
        }

        *(v40 + 2) = v52;
      }
    }

    else
    {

      if (v42)
      {
        goto LABEL_47;
      }
    }

    if (v38 == ++v39)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_2274B1F3C@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC38, &unk_22767FF60);
  v10 = sub_2276624A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = xmmword_227670CD0;
  if (v9 == 1)
  {
    v16 = a4;
  }

  else
  {
    v16 = a3;
  }

  (*(v11 + 16))(v14 + v13, v16, v10);

  v17 = sub_22742F6CC(v15, v8);
  swift_setDeallocating();
  (*(v11 + 8))(v15 + v13, v10);
  result = swift_deallocClassInstance();
  *a5 = v17;
  return result;
}

void sub_2274B2098()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_227662460();
  v2 = sub_22766BFD0();

  v3 = [v1 fileExistsAtPath_];

  if (v3)
  {
    v4 = [v0 defaultManager];
    v5 = sub_2276623E0();
    v10[0] = 0;
    v6 = [v4 removeItemAtURL:v5 error:v10];

    if (v6)
    {
      v7 = v10[0];
    }

    else
    {
      v8 = v10[0];
      sub_2276622C0();

      swift_willThrow();
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2274B21E8(void (*a1)(char *, uint64_t))
{
  v2 = sub_2276624A0();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v54 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v65 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - v15;
  sub_22766A6C0();
  v17 = v3[2];
  v63 = a1;
  v61 = v2;
  v56 = v17;
  v57 = v3 + 2;
  v17(v9, a1, v2);
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();
  v20 = os_log_type_enabled(v18, v19);
  v64 = v11;
  v59 = v3;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v60 = v10;
    v22 = v21;
    v23 = swift_slowAlloc();
    v55 = v7;
    v24 = v23;
    v68 = v23;
    *v22 = 141558274;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2080;
    v25 = sub_227662390();
    v27 = v26;
    v28 = v9;
    v29 = v61;
    v58 = v3[1];
    v58(v28, v61);
    v30 = sub_226E97AE8(v25, v27, &v68);
    v31 = v64;

    *(v22 + 14) = v30;
    _os_log_impl(&dword_226E8E000, v18, v19, "Deleting local file %{mask.hash}s", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v32 = v24;
    v7 = v55;
    MEMORY[0x22AA9A450](v32, -1, -1);
    v33 = v22;
    v10 = v60;
    MEMORY[0x22AA9A450](v33, -1, -1);

    v34 = *(v31 + 8);
    v34(v16, v10);
    v35 = v29;
  }

  else
  {

    v35 = v61;
    v58 = v3[1];
    v58(v9, v61);
    v34 = *(v11 + 8);
    v34(v16, v10);
  }

  v36 = v62;
  v37 = v63;
  sub_2274B2098();
  v38 = v65;
  if (v36)
  {
    sub_22766A6C0();
    v56(v7, v37, v35);
    v39 = v36;
    v40 = sub_22766B380();
    v41 = sub_22766C8B0();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = v7;
      v43 = v35;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v60 = v10;
      v62 = v45;
      v68 = v45;
      *v44 = 141558530;
      *(v44 + 4) = 1752392040;
      *(v44 + 12) = 2080;
      v46 = sub_227662390();
      v63 = v34;
      v48 = v47;
      v58(v42, v43);
      v49 = sub_226E97AE8(v46, v48, &v68);

      *(v44 + 14) = v49;
      *(v44 + 22) = 2082;
      swift_getErrorValue();
      v50 = MEMORY[0x22AA995D0](v66, v67);
      v52 = sub_226E97AE8(v50, v51, &v68);

      *(v44 + 24) = v52;
      _os_log_impl(&dword_226E8E000, v40, v41, "Failed to delete %{mask.hash}s with error: %{public}s", v44, 0x20u);
      v53 = v62;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v53, -1, -1);
      MEMORY[0x22AA9A450](v44, -1, -1);

      v63(v65, v60);
    }

    else
    {

      v58(v7, v35);
      v34(v38, v10);
    }
  }
}

uint64_t sub_2274B2754(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v56 = &v42 - v4;
  v5 = sub_2276624A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = (&v42 - v10);
  v53 = sub_227663180();
  v55 = *(v53 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  v51 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = (a1 + 56);
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 56);
  v23 = (v20 + 63) >> 6;
  v47 = v55 + 8;
  v48 = v55 + 16;
  v46 = (v6 + 48);
  v44 = (v6 + 32);
  v54 = a1;

  v24 = MEMORY[0x277D84F90];
  v25 = 0;
  v49 = v23;
  v50 = (a1 + 56);
  v52 = v5;
LABEL_4:
  v26 = v25;
  if (!v22)
  {
    goto LABEL_6;
  }

  do
  {
    v25 = v26;
LABEL_9:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v28 = v55;
    v29 = v51;
    v30 = v53;
    (*(v55 + 16))(v51, *(v54 + 48) + *(v55 + 72) * (v27 | (v25 << 6)), v53);
    sub_227663160();
    v31 = v56;
    (*(v28 + 8))(v29, v30);
    v5 = v52;
    if ((*v46)(v31, 1, v52) != 1)
    {
      v32 = v31;
      v33 = *v44;
      (*v44)(v45, v32, v5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_2273A4ECC(0, *(v24 + 2) + 1, 1, v24);
      }

      v36 = *(v24 + 2);
      v35 = *(v24 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v43 = v36 + 1;
        v38 = sub_2273A4ECC(v35 > 1, v36 + 1, 1, v24);
        v37 = v43;
        v24 = v38;
      }

      *(v24 + 2) = v37;
      v33(&v24[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v36], v45, v5);
      v19 = v50;
      goto LABEL_4;
    }

    sub_226FB1188(v31);
    v26 = v25;
    v23 = v49;
    v19 = v50;
  }

  while (v22);
  while (1)
  {
LABEL_6:
    v25 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v25 >= v23)
    {
      break;
    }

    v22 = v19[v25];
    ++v26;
    if (v22)
    {
      goto LABEL_9;
    }
  }

  v39 = *(v24 + 2);
  if (!v39)
  {
  }

  v40 = 0;
  v19 = (v6 + 8);
  while (v40 < *(v24 + 2))
  {
    (*(v6 + 16))(v11, &v24[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v40], v5);
    sub_2274B21E8(v11);
    ++v40;
    (*v19)(v11, v5);
    if (v39 == v40)
    {
    }
  }

LABEL_23:
  __break(1u);

  result = (*v19)(v11, v5);
  __break(1u);
  return result;
}

id sub_2274B2CB0()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_2276623E0();
  v2 = sub_2276623E0();
  v7[0] = 0;
  v3 = [v0 moveItemAtURL:v1 toURL:v2 error:v7];

  if (v3)
  {
    result = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_2276622C0();

    result = swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2274B2DD4(uint64_t a1)
{
  sub_22766D370();
  sub_2276694E0();
  sub_2274B3174(&qword_2813A54D0, MEMORY[0x277D53DA0]);
  sub_22766BF60();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_2276625A0();
  return sub_22766D3F0();
}

uint64_t sub_2274B2E7C(uint64_t a1, uint64_t a2)
{
  sub_2276694E0();
  sub_2274B3174(&qword_2813A54D0, MEMORY[0x277D53DA0]);
  sub_22766BF60();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_2276625A0();
}

uint64_t sub_2274B2F18(uint64_t a1, uint64_t a2)
{
  sub_22766D370();
  sub_2276694E0();
  sub_2274B3174(&qword_2813A54D0, MEMORY[0x277D53DA0]);
  sub_22766BF60();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_2276625A0();
  return sub_22766D3F0();
}

uint64_t type metadata accessor for SyncZoneChangeWindow()
{
  result = qword_28139A4F0;
  if (!qword_28139A4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2274B3054(uint64_t a1, uint64_t a2)
{
  sub_2276694E0();
  sub_2274B3174(&qword_28139B260, MEMORY[0x277D53DA0]);
  sub_22766C290();
  sub_22766C290();
  if (v11 == v9 && v12 == v10)
  {
  }

  else
  {
    v5 = sub_22766D190();

    v6 = 0;
    if ((v5 & 1) == 0)
    {
      return v6 & 1;
    }
  }

  v7 = type metadata accessor for SyncZoneChangeWindow();
  v6 = sub_227130B5C(*(a1 + *(v7 + 20)), *(a1 + *(v7 + 20) + 8), *(a2 + *(v7 + 20)), *(a2 + *(v7 + 20) + 8));
  return v6 & 1;
}

uint64_t sub_2274B3174(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2274B31E4()
{
  result = sub_2276694E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2274B3258(void *a1)
{
  v3 = sub_227669180();
  v4 = *(*(v3 - 8) + 64);
  v5 = [a1 identifier];
  if (v5)
  {
    v6 = v5;
    sub_22766C000();

    [a1 startTime];
    [a1 duration];
    v7 = [a1 artwork];
    if (v7)
    {
      v8 = v7;
      sub_227662590();
    }

    sub_2274B3BC4(&qword_27D7BB870, MEMORY[0x277D53A78]);
    sub_2276683D0();
    if (v1)
    {

      return;
    }

    sub_227663620();
  }

  else
  {
    v9 = sub_227664DD0();
    sub_2274B3BC4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D51028], v9);
    swift_willThrow();
  }
}

size_t static MediaMoment.representativeSamples()()
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE020, &qword_2276878B8);
  v30 = *(v40 - 8);
  v0 = *(v30 + 64);
  MEMORY[0x28223BE20](v40);
  v2 = (&v30 - v1);
  v39 = sub_227663680();
  v41 = *(v39 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227669180();
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = v6[8];
  MEMORY[0x28223BE20](v5);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22766C090();
  sub_226F5D274();
  v32 = sub_22766BE70();
  v31 = sub_22766BE70();
  sub_227669170();
  v11 = sub_22766C380();
  *(v11 + 16) = 3;
  v12 = v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v13 = v6[2];
  v13(v12, v10, v5);
  v14 = v6[9];
  v35 = v7 + 2;
  v34 = v13;
  v13(v12 + v14, v10, v5);
  v15 = v7[4];
  v36 = v10;
  v37 = v5;
  v15(v12 + 2 * v14, v10, v5);
  v53 = v32;
  v54[0] = v33;
  v54[1] = v54;
  v54[2] = &v53;
  v51 = v11;
  v52 = v31;
  v54[3] = &v52;
  v54[4] = &v51;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v49 = v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE028, &qword_2276878C0);
  v43 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v44 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v45 = v44;
  v46 = sub_226F5BF60(&qword_27D7BE030, &qword_27D7BE028, &qword_2276878C0);
  v16 = sub_2276638E0();

  v17 = *(v16 + 16);
  if (v17)
  {
    v42 = MEMORY[0x277D84F90];
    result = sub_226F1F3E8(0, v17, 0);
    v19 = 0;
    v33 = v16 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v20 = v42;
    v32 = v41 + 32;
    v21 = v30;
    while (v19 < *(v16 + 16))
    {
      v22 = v21;
      sub_2274B3A94(v33 + *(v21 + 72) * v19, v2);
      v23 = *v2;
      v24 = v2[1];
      v25 = v2[2];
      v26 = v2[3];
      v34(v36, v2 + *(v40 + 80), v37);

      v27 = v38;
      sub_227663620();
      sub_2274B3B04(v2);
      v42 = v20;
      v29 = *(v20 + 16);
      v28 = *(v20 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_226F1F3E8(v28 > 1, v29 + 1, 1);
        v20 = v42;
      }

      ++v19;
      *(v20 + 16) = v29 + 1;
      result = (*(v41 + 32))(v20 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v29, v27, v39);
      v21 = v22;
      if (v17 == v19)
      {

        return v20;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2274B3A94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE020, &qword_2276878B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2274B3B04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE020, &qword_2276878B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2274B3B6C(uint64_t a1)
{
  result = sub_2274B3BC4(&qword_27D7BE038, MEMORY[0x277D50018]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2274B3BC4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2274B3C0C(void *a1)
{
  v3 = sub_227669180();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227663630();
  v8 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227663670();
  [a1 setStartTime_];
  sub_227663650();
  [a1 setDuration_];
  sub_227663640();
  sub_2274B3BC4(&qword_27D7BB870, MEMORY[0x277D53A78]);
  v9 = sub_2276683C0();
  if (v1)
  {
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v11 = v9;
    v12 = v7;
    v13 = v10;
    (*(v4 + 8))(v12, v3);
    v14 = sub_227662560();
    sub_226EDC420(v11, v13);
    [a1 setArtwork_];
  }
}

size_t static EstimatedCalories.representativeSamples()()
{
  v18 = sub_227665100();
  v0 = *(v18 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v18);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F5D220();
  v4 = sub_22766CFA0();
  sub_226F5D274();
  v5 = sub_22766BE70();
  v6 = sub_22766BE70();
  v27 = v5;
  v28[0] = v4;
  v28[1] = v28;
  v28[2] = &v27;
  v26 = v6;
  v28[3] = &v26;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CE8, &qword_227671E40);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v25 = v24;
  v20 = sub_226F5BF60(&qword_27D7B8D08, &qword_27D7B8CE8, &qword_227671E40);
  v21 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v22 = v21;
  v7 = sub_2276638E0();

  v8 = *(v7 + 16);
  if (v8)
  {
    v19 = MEMORY[0x277D84F90];
    result = sub_226F20208(0, v8, 0);
    v10 = 0;
    v11 = v19;
    v12 = (v7 + 48);
    while (v10 < *(v7 + 16))
    {
      v13 = *(v12 - 2);
      v14 = *(v12 - 1);
      v15 = *v12;
      sub_2276650B0();
      v19 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_226F20208(v16 > 1, v17 + 1, 1);
        v11 = v19;
      }

      ++v10;
      *(v11 + 16) = v17 + 1;
      result = (*(v0 + 32))(v11 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v17, v3, v18);
      v12 += 3;
      if (v8 == v10)
      {

        return v11;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_2274B40C0(void *a1)
{
  if (([a1 activityType] & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    [a1 activeCalorieRate];
    [a1 basalCalorieRate];
    sub_2276650B0();
  }
}

id sub_2274B4150(void *a1)
{
  v2 = sub_2276650C0();
  if (v2 >= 0x7FFFFFFF)
  {
    v3 = 0x7FFFFFFFLL;
  }

  else
  {
    v3 = v2;
  }

  [a1 setActivityType_];
  sub_2276650E0();
  [a1 setActiveCalorieRate_];
  sub_2276650D0();
  return [a1 setBasalCalorieRate_];
}

unint64_t sub_2274B41C4(uint64_t a1)
{
  result = sub_2274B41EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2274B41EC()
{
  result = qword_2813A5718;
  if (!qword_2813A5718)
  {
    sub_227665100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A5718);
  }

  return result;
}

unint64_t sub_2274B4268()
{
  result = qword_27D7BE040;
  if (!qword_27D7BE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE040);
  }

  return result;
}

unint64_t sub_2274B42BC(uint64_t a1)
{
  result = sub_2274B42E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2274B42E4()
{
  result = qword_27D7BE048;
  if (!qword_27D7BE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE048);
  }

  return result;
}

uint64_t sub_2274B4338()
{
  v0 = sub_22766C090();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_226F1ED70(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v10 + 16);
      v7 = *(v10 + 24);

      if (v6 >= v7 >> 1)
      {
        sub_226F1ED70((v7 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      v8 = v10 + 16 * v6;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

unint64_t sub_2274B44D4()
{
  result = qword_27D7BE050;
  if (!qword_27D7BE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE050);
  }

  return result;
}

unint64_t sub_2274B4528(uint64_t a1)
{
  result = sub_2274B4550();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2274B4550()
{
  result = qword_27D7BE058;
  if (!qword_27D7BE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE058);
  }

  return result;
}

uint64_t sub_2274B45A4()
{
  v0 = sub_22766C090();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_226F1EDF0(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v10 + 16);
      v7 = *(v10 + 24);

      if (v6 >= v7 >> 1)
      {
        sub_226F1EDF0((v7 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      v8 = v10 + 16 * v6;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

void sub_2274B46AC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 identifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22766C000();
    v8 = v7;

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    v9 = sub_227664DD0();
    sub_2274B4B24(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D51028], v9);
    swift_willThrow();
  }
}

uint64_t sub_2274B47BC(void *a1)
{
  v2 = sub_2276622D0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v24 = v4;
    v23 = a1;
    sub_22766CA80();
    sub_2274B4B24(&qword_28139BDF0, MEMORY[0x277CC9178]);
    sub_22766CBB0();
    if (v29)
    {
      v30 = MEMORY[0x277D84F90];
      v7 = &unk_227679670;
      do
      {
        sub_226F04970(&v28, v27);
        sub_226E97CC0(v27, v26);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC30, v7);
        if (swift_dynamicCast())
        {
          v8 = v2;
          v9 = v7;
          v10 = v25;
          ObjectType = swift_getObjectType();
          v12 = (*(v10 + 8))(ObjectType, v10);
          v14 = v13;
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(v27);
          if (v14)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_226EB3F78(0, *(v30 + 2) + 1, 1, v30);
            }

            v16 = *(v30 + 2);
            v15 = *(v30 + 3);
            if (v16 >= v15 >> 1)
            {
              v30 = sub_226EB3F78((v15 > 1), v16 + 1, 1, v30);
            }

            v17 = v30;
            *(v30 + 2) = v16 + 1;
            v18 = &v17[16 * v16];
            *(v18 + 4) = v12;
            *(v18 + 5) = v14;
          }

          v7 = v9;
          v2 = v8;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v27);
        }

        sub_22766CBB0();
      }

      while (v29);
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

    (*(v24 + 8))(v6, v2);
    v20 = sub_226F3E6A8(v30);
    v21 = v23;

    return v20;
  }

  else
  {
    sub_226F62704();
    return sub_22766C5E0();
  }
}

void sub_2274B4AD0(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_22766BFD0();
  [a1 setIdentifier_];
}

uint64_t sub_2274B4B24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2274B4BB0()
{
  result = qword_27D7BE060;
  if (!qword_27D7BE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE060);
  }

  return result;
}

uint64_t dispatch thunk of ZoneRestrictionProviding.restriction(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_226E93028;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ZoneRestrictionProviding.effectiveRestriction(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_226E92F34;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2274B4E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  swift_getKeyPath();
  v42[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v42[0] = a1;
  v42[1] = a2;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v18 = sub_22766C820();
  sub_226E93170(v42, v40, &unk_27D7BC990, &qword_227670A30);
  v19 = v41;
  if (v41)
  {
    v20 = __swift_project_boxed_opaque_existential_0(v40, v41);
    v21 = *(v19 - 8);
    v22 = *(v21 + 64);
    MEMORY[0x28223BE20](v20);
    v24 = v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24);
    v25 = sub_22766D170();
    (*(v21 + 8))(v24, v19);
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v27 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

  sub_226E97D1C(v42, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v28 = v27;
  v29 = sub_22766A080();
  v31 = v30;
  MEMORY[0x22AA985C0]();
  if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v39 = *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v29(v42, 0);
  swift_endAccess();

  v32 = MEMORY[0x22AA99A00]();
  sub_227544604(v15, a4);
  objc_autoreleasePoolPop(v32);
  swift_setDeallocating();

  v33 = *(v15 + 40);

  v34 = qword_2813B2078;
  v35 = sub_22766A100();
  (*(*(v35 - 8) + 8))(v15 + v34, v35);
  v36 = *(*v15 + 48);
  v37 = *(*v15 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_2274B52C0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v41 = a2;
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  swift_getKeyPath();
  v13 = sub_2276644F0();
  v15 = v14;
  v40[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v40[0] = v13;
  v40[1] = v15;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v16 = sub_22766C820();
  sub_226E93170(v40, v38, &unk_27D7BC990, &qword_227670A30);
  v17 = v39;
  if (v39)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v38, v39);
    v19 = *(v17 - 8);
    v20 = *(v19 + 64);
    MEMORY[0x28223BE20](v18);
    v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22);
    v23 = sub_22766D170();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v25 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226E97D1C(v40, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v26 = v25;
  v27 = sub_22766A080();
  v29 = v28;
  MEMORY[0x22AA985C0]();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v37 = *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v27(v40, 0);
  swift_endAccess();

  v30 = MEMORY[0x22AA99A00]();
  sub_227544C34(v10, v41);
  objc_autoreleasePoolPop(v30);
  swift_setDeallocating();

  v31 = *(v10 + 40);

  v32 = qword_2813B2078;
  v33 = sub_22766A100();
  (*(*(v33 - 8) + 8))(v10 + v32, v33);
  v34 = *(*v10 + 48);
  v35 = *(*v10 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_2274B56F4@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v41 = a2;
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB0, &qword_22767CDE0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  swift_getKeyPath();
  v13 = sub_227666A90();
  v15 = v14;
  v40[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v40[0] = v13;
  v40[1] = v15;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v16 = sub_22766C820();
  sub_226E93170(v40, v38, &unk_27D7BC990, &qword_227670A30);
  v17 = v39;
  if (v39)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v38, v39);
    v19 = *(v17 - 8);
    v20 = *(v19 + 64);
    MEMORY[0x28223BE20](v18);
    v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22);
    v23 = sub_22766D170();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v25 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1B8 qword_227688130))];

  sub_226E97D1C(v40, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v26 = v25;
  v27 = sub_22766A080();
  v29 = v28;
  MEMORY[0x22AA985C0]();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v37 = *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v27(v40, 0);
  swift_endAccess();

  v30 = MEMORY[0x22AA99A00]();
  sub_227544C9C(v10, v41);
  objc_autoreleasePoolPop(v30);
  swift_setDeallocating();

  v31 = *(v10 + 40);

  v32 = qword_2813B2078;
  v33 = sub_22766A100();
  (*(*(v33 - 8) + 8))(v10 + v32, v33);
  v34 = *(*v10 + 48);
  v35 = *(*v10 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_2274B5B28(uint64_t a1, char *a2, void (*a3)(char *, char *, uint64_t))
{
  v168 = a2;
  v169 = a3;
  v144 = a1;
  v170 = sub_227662750();
  v164 = *(v170 - 8);
  v3 = *(v164 + 64);
  v4 = MEMORY[0x28223BE20](v170);
  v156 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v162 = &v141 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v165 = &v141 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v163 = &v141 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v155 = &v141 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v154 = &v141 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v153 = &v141 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v161 = &v141 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v167 = &v141 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v141 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v141 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v141 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v141 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BF3D0, &unk_227675740);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v141 - v36;
  v38 = sub_2276629D0();
  v166 = *(v38 - 8);
  v39 = *(v166 + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v141 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DateIntervalSessionThreshold();
  v43 = (v42 - 8);
  v44 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v46 = &v141 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_227662010();
  (*(*(v47 - 8) + 16))(v46, v168, v47);
  *&v46[v43[7]] = 0x4072C00000000000;
  v48 = &v46[v43[8]];
  *v48 = 0;
  v48[8] = 1;
  *&v46[v43[9]] = 0x3FE0000000000000;
  v49 = v172;
  v50 = sub_2274B99DC(v46, v169);
  v51 = v49;
  if (v49)
  {
    sub_226F733F0(v46);
    return v37;
  }

  v168 = v28;
  v146 = v31;
  v158 = v23;
  v143 = 0;
  v142 = v46;
  v150 = v33;
  v52 = v164;
  v53 = v50;
  v54 = [objc_opt_self() hk_gregorianCalendar];
  if (!v54)
  {
    goto LABEL_49;
  }

  v55 = v54;
  sub_227662990();
  v56 = v166;
  if ((*(v166 + 48))(v37, 1, v38) == 1)
  {
    sub_226E97D1C(v37, &unk_27D7BF3D0, &unk_227675740);
  }

  else
  {
    (*(v56 + 32))(v41, v37, v38);
    v57 = sub_2276629A0();
    [v55 setTimeZone_];

    (*(v56 + 8))(v41, v38);
  }

  v58 = v161;
  v59 = v55;
  v60 = v143;
  v61 = sub_2274B8888(v53, v59);

  v160 = v59;

  v62 = sub_226F4374C(v61);

  v63 = *(v62 + 16);
  v159 = v62;
  if (!v63)
  {
    goto LABEL_10;
  }

  v64 = sub_2274CD808(v63, 0);
  v65 = sub_2274CE3D4(v171, &v64[(*(v52 + 80) + 32) & ~*(v52 + 80)], v63, v62);
  v172 = v171[3];
  v169 = v171[4];

  sub_226EBB21C();
  v66 = v150;
  if (v65 != v63)
  {
    __break(1u);
LABEL_10:
    v64 = MEMORY[0x277D84F90];
    v66 = v150;
  }

  v67 = v165;
  v68 = v58;
  v171[0] = v64;

  sub_2274B74A4(v171);
  v51 = v60;
  if (v60)
  {
    goto LABEL_50;
  }

  v69 = v171[0];
  v70 = v171[0][2];
  v71 = *(v52 + 56);
  v149 = v52 + 56;
  v148 = v71;
  v71(v66, 1, 1, v170);
  if (v70 < 2)
  {

    if (v70 != 1 || !v69[2])
    {

      sub_226E97D1C(v66, &qword_27D7B9690, qword_227670B50);
      sub_226F733F0(v142);
      v148(v144, 1, 1, v170);
      return 0;
    }

    v143 = 0;
    v72 = v52;
    v73 = v170;
    (*(v52 + 16))(v67, v69 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v170);

    v74 = v68;
    v75 = v163;
    v76 = *(v72 + 32);
    v172 = (v72 + 32);
    v169 = v76;
    v76(v163, v67, v73);
    v77 = *MEMORY[0x277CCE2F8];
    sub_227662720();
    v78 = sub_2276626A0();
    v79 = v73;
    v82 = *(v72 + 8);
    v81 = v72 + 8;
    v80 = v82;
    v82(v74, v73);
    v83 = v160;
    v84 = [v160 hk:v77 startOfWeekWithFirstWeekday:v78 beforeDate:0 addingWeeks:?];

    v85 = v162;
    sub_227662710();

    v86 = sub_2276626A0();
    v87 = [v83 dateByAddingUnit:16 value:-7 toDate:v86 options:0];

    if (v87)
    {
      v164 = v81;
      v88 = v156;
      sub_227662710();

      v89 = sub_2276626A0();
      v90 = sub_2276626A0();
      v91 = [v83 isDate:v89 equalToDate:v90 toUnitGranularity:16];

      if (v91)
      {

        v79 = v170;
        v80(v88, v170);
        v80(v85, v79);
        sub_226E97D1C(v150, &qword_27D7B9690, qword_227670B50);
        sub_226F733F0(v142);
LABEL_43:
        v135 = v168;
        v169(v168, v75, v79);
        v136 = 0;
        v137 = v79;
LABEL_45:
        v37 = 1;
        v148(v135, v136, 1, v137);
        v138 = v135;
        v139 = v150;
        sub_226EDDCD0(v138, v150);
        sub_226EDDCD0(v139, v144);
        return v37;
      }

      v132 = sub_2276626A0();
      v133 = sub_2276626A0();
      v134 = [v83 isDate:v132 equalToDate:v133 toUnitGranularity:16];

      v79 = v170;
      v80(v88, v170);
      v80(v85, v79);
      sub_226E97D1C(v150, &qword_27D7B9690, qword_227670B50);
      sub_226F733F0(v142);
      if (v134)
      {
        goto LABEL_43;
      }
    }

    else
    {

      v80(v85, v79);
      sub_226E97D1C(v66, &qword_27D7B9690, qword_227670B50);
      sub_226F733F0(v142);
    }

    v80(v75, v79);
    v136 = 1;
    v137 = v79;
    v135 = v168;
    goto LABEL_45;
  }

  v156 = v70;
  v143 = 0;
  v145 = 0;
  v37 = 0;
  v92 = *(v52 + 16);
  v93 = (v69 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));
  v94 = *(v52 + 72);
  v95 = 1;
  v152 = *MEMORY[0x277CCE2F8];
  v164 = v52 + 16;
  v165 = 1;
  v96 = 1;
  v97 = v158;
  v157 = v69;
  v162 = v92;
  v166 = v52 + 8;
  v151 = v94;
  while (1)
  {
    v168 = v95;
    v172 = v96;
    v99 = v94;
    v51 = v37;
    v100 = v99;
    v101 = v97;
    v102 = v170;
    v103 = v92;
    (v92)(v101, v93 + v99, v170);
    if (v172 - 1 >= v69[2])
    {
      break;
    }

    v169 = v93;
    v103(v68, v93, v102);
    sub_22766C510();
    sub_227662690();
    v104 = *v166;
    (*v166)(v68, v102);
    v105 = sub_2276626A0();
    v106 = sub_2276626A0();
    v107 = v160;
    v108 = [v160 isDate:v105 equalToDate:v106 toUnitGranularity:16];

    LODWORD(v163) = v108;
    if (v108)
    {
      v109 = v165 + 1;
      if (__OFADD__(v165, 1))
      {
        goto LABEL_48;
      }

      v37 = v51;
      v168 = (v165 + 1);
      v98 = v165 + 1;
    }

    else
    {
      v109 = 0;
      v98 = v165;
      v37 = v51;
    }

    v165 = v109;
    v94 = v100;
    if (v172 == (*(v159 + 16) - 1))
    {
      v110 = v170;
      v111 = v169 + v94;
      v112 = v153;
      (v162)(v153, v111, v170);
      v113 = v161;
      sub_227662720();
      v114 = sub_2276626A0();
      (v104)(v113, v110);
      v115 = [v107 hk:v152 startOfWeekWithFirstWeekday:v114 beforeDate:0 addingWeeks:?];

      v116 = v154;
      sub_227662710();

      v117 = sub_2276626A0();
      v118 = [v107 dateByAddingUnit:16 value:-7 toDate:v117 options:0];

      if (!v118)
      {
        v124 = v170;
        (v104)(v116, v170);
        (v104)(v112, v124);
        v123 = v167;
        v94 = v151;
LABEL_38:
        (v104)(v123, v170);
        v97 = v158;
        v104();
        v98 = v168;
        goto LABEL_20;
      }

      sub_227662710();

      v119 = sub_2276626A0();
      v120 = sub_2276626A0();
      v121 = [v107 isDate:v119 equalToDate:v120 toUnitGranularity:16];

      if (v121)
      {
        v122 = v170;
        (v104)(v155, v170);
        (v104)(v116, v122);
        (v104)(v112, v122);
        v123 = v167;
        v94 = v151;
      }

      else
      {
        v125 = sub_2276626A0();
        v126 = v155;
        v127 = sub_2276626A0();
        v147 = [v160 isDate:v125 equalToDate:v127 toUnitGranularity:16];

        v128 = v170;
        (v104)(v126, v170);
        (v104)(v116, v128);
        (v104)(v112, v128);
        v123 = v167;
        v94 = v151;
        if (!v147)
        {
          goto LABEL_38;
        }
      }

      v129 = v170;
      v130 = v146;
      (v162)(v146, v169 + v94, v170);
      (v104)(v123, v129);
      v97 = v158;
      v104();
      v131 = v150;
      sub_226E97D1C(v150, &qword_27D7B9690, qword_227670B50);
      v148(v130, 0, 1, v129);
      sub_226EDDCD0(v130, v131);
      v145 = v98;
    }

    else
    {
      (v104)(v167, v170);
      v97 = v158;
      v104();
      v98 = v168;
    }

LABEL_20:
    v96 = v172 + 1;
    if (v37 <= v98)
    {
      v37 = v98;
    }

    if (v163)
    {
      v95 = v98;
    }

    else
    {
      v95 = 0;
    }

    v93 = (v169 + v94);
    v69 = v157;
    v68 = v161;
    v92 = v162;
    if (v156 == v96)
    {

      sub_226F733F0(v142);
      sub_226EDDCD0(v150, v144);
      return v37;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:

  __break(1u);
  return result;
}

uint64_t sub_2274B6BAC@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FA8, &unk_227672A50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F20, &qword_2276767D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v23 - v11;
  v13 = sub_227666B60();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2274B52C0(a1, v12);
  if (!v2)
  {
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_226E97D1C(v12, &qword_27D7B8F20, &qword_2276767D0);
      sub_226F73CD0();
      swift_allocError();
      *v19 = 8;
      return swift_willThrow();
    }

    else
    {
      (*(v14 + 32))(v17, v12, v13);
      sub_2274B56F4(a1, v8);
      v20 = sub_227666FF0();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v8, 1, v20) == 1)
      {
        sub_226E97D1C(v8, &qword_27D7B8FA8, &unk_227672A50);
        sub_226F73CD0();
        swift_allocError();
        *v22 = 2;
        swift_willThrow();
        return (*(v14 + 8))(v17, v13);
      }

      else
      {
        (*(v14 + 8))(v17, v13);
        return (*(v21 + 32))(a2, v8, v20);
      }
    }
  }

  return result;
}

uint64_t sub_2274B6F0C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F20, &qword_2276767D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  v8 = sub_227666B60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2274B52C0(a2, v7);
  if (!v2)
  {
    v26 = 0;
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_226E97D1C(v7, &qword_27D7B8F20, &qword_2276767D0);
      sub_226F73CD0();
      swift_allocError();
      *v13 = 8;
      swift_willThrow();
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      v15 = sub_227666B50();
      v17 = v16;
      v27 = v15;
      v28 = v16;
      v19 = v18 & 1;
      v29 = v18 & 1;
      v30 = 0;
      sub_22738F9B0();
      sub_226ED56C4();
      v20 = sub_227663B30();
      sub_226EB2DFC(v15, v17, v19);
      if (v20)
      {
        (*(v9 + 8))(v12, v8);
        LOBYTE(v7) = 1;
      }

      else
      {
        v21 = sub_227666B50();
        v23 = v22;
        v27 = v21;
        v28 = v22;
        v25 = v24 & 1;
        v29 = v24 & 1;
        v30 = 1;
        LOBYTE(v7) = sub_227663B30();
        sub_226EB2DFC(v21, v23, v25);
        (*(v9 + 8))(v12, v8);
      }
    }
  }

  return v7 & 1;
}

uint64_t sub_2274B71C4@<X0>(char *a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v6 = sub_227662750();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  result = sub_2274B5B28(&v26 - v19, a1, a2);
  if (!v3)
  {
    v22 = v27;
    sub_226E93170(v20, v18, &qword_27D7B9690, qword_227670B50);
    if ((*(v7 + 48))(v18, 1, v6) == 1)
    {
      sub_226E97D1C(v20, &qword_27D7B9690, qword_227670B50);
      v23 = 1;
      v20 = v18;
      v24 = v22;
    }

    else
    {
      (*(v7 + 32))(v13, v18, v6);
      (*(v7 + 16))(v11, v13, v6);
      v24 = v22;
      sub_227666790();
      (*(v7 + 8))(v13, v6);
      v23 = 0;
    }

    sub_226E97D1C(v20, &qword_27D7B9690, qword_227670B50);
    v25 = sub_2276667B0();
    return (*(*(v25 - 8) + 56))(v24, v23, 1, v25);
  }

  return result;
}

uint64_t sub_2274B74A4(void **a1)
{
  v2 = *(sub_227662750() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_227117778(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2274B754C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2274B754C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22766D130();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_227662750();
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_227662750() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2274B7908(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2274B7678(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2274B7678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_227662750();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v45 = &v31 - v13;
  result = MEMORY[0x28223BE20](v12);
  v44 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v42 = *(v15 + 16);
    v43 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v20 = v17 + v18 * (a3 - 1);
    v38 = -v18;
    v39 = (v15 + 32);
    v21 = a1 - a3;
    v40 = v17;
    v32 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v36 = v20;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v22, v8);
      v25 = v45;
      v24(v45, v20, v8);
      sub_2274BD454();
      v26 = sub_22766BF80();
      v27 = *v19;
      (*v19)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v20 = v36 + v32;
        v21 = v35 - 1;
        v22 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v20, v29, v8);
      v20 += v38;
      v22 += v38;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2274B7908(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v126 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v134 = &v119 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v139 = &v119 - v17;
  result = MEMORY[0x28223BE20](v16);
  v140 = &v119 - v19;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_134;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_2271171D0(a4);
    }

    v142 = result;
    v114 = *(result + 16);
    if (v114 >= 2)
    {
      while (*a3)
      {
        a4 = v114 - 1;
        v115 = *(result + 16 * v114);
        v116 = result;
        v117 = *(result + 16 * (v114 - 1) + 40);
        sub_2274B82F8(*a3 + v10[9] * v115, *a3 + v10[9] * *(result + 16 * (v114 - 1) + 32), *a3 + v10[9] * v117, v5);
        if (v6)
        {
        }

        if (v117 < v115)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_2271171D0(v116);
        }

        if (v114 - 2 >= *(v116 + 2))
        {
          goto LABEL_122;
        }

        v118 = &v116[16 * v114];
        *v118 = v115;
        *(v118 + 1) = v117;
        v142 = v116;
        sub_227117144(a4);
        result = v142;
        v114 = *(v142 + 16);
        if (v114 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v21 = 0;
  v137 = (v10 + 1);
  v138 = v10 + 2;
  v136 = (v10 + 4);
  v22 = MEMORY[0x277D84F90];
  v124 = a3;
  v121 = a4;
  v141 = v9;
  v120 = v10;
  while (1)
  {
    v23 = v21;
    v127 = v22;
    if (v21 + 1 >= v20)
    {
      v37 = v21 + 1;
    }

    else
    {
      v132 = v20;
      v24 = v9;
      v25 = *a3;
      v26 = v10;
      v27 = v10[9];
      v5 = v25 + v27 * (v21 + 1);
      v128 = v25;
      v28 = v26[2];
      v28(v140, v5, v24);
      v29 = v25 + v27 * v23;
      v30 = v26;
      v123 = v23;
      v31 = v139;
      v131 = v28;
      v28(v139, v29, v24);
      v32 = sub_2274BD454();
      v33 = v140;
      v130 = v32;
      LODWORD(v133) = sub_22766BF80();
      v34 = v30[1];
      v34(v31, v24);
      v129 = v34;
      result = (v34)(v33, v24);
      v35 = v123 + 2;
      v135 = v27;
      v36 = v128 + v27 * (v123 + 2);
      while (1)
      {
        v37 = v132;
        if (v132 == v35)
        {
          break;
        }

        v39 = v140;
        v38 = v141;
        v40 = v131;
        (v131)(v140, v36, v141);
        v41 = v6;
        v42 = v139;
        v40(v139, v5, v38);
        v43 = sub_22766BF80() & 1;
        v44 = v42;
        v6 = v41;
        v45 = v129;
        v129(v44, v38);
        result = v45(v39, v38);
        ++v35;
        v36 += v135;
        v5 += v135;
        if ((v133 & 1) != v43)
        {
          v37 = v35 - 1;
          break;
        }
      }

      v23 = v123;
      a3 = v124;
      v10 = v120;
      v22 = v127;
      a4 = v121;
      v9 = v141;
      if (v133)
      {
        if (v37 < v123)
        {
          goto LABEL_125;
        }

        if (v123 < v37)
        {
          v46 = v135 * (v37 - 1);
          v5 = v37 * v135;
          v132 = v37;
          v47 = v37;
          v48 = v123;
          v49 = v123 * v135;
          do
          {
            if (v48 != --v47)
            {
              v51 = *a3;
              if (!v51)
              {
                goto LABEL_131;
              }

              v133 = *v136;
              (v133)(v126, v51 + v49, v141, v22);
              if (v49 < v46 || v51 + v49 >= v51 + v5)
              {
                v50 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v50 = v141;
                if (v49 != v46)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(v51 + v46, v126, v50);
              a3 = v124;
              v22 = v127;
            }

            ++v48;
            v46 -= v135;
            v5 -= v135;
            v49 += v135;
          }

          while (v48 < v47);
          v10 = v120;
          a4 = v121;
          v9 = v141;
          v23 = v123;
          v37 = v132;
        }
      }
    }

    v52 = a3[1];
    if (v37 < v52)
    {
      if (__OFSUB__(v37, v23))
      {
        goto LABEL_124;
      }

      if (v37 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_126;
        }

        if ((v23 + a4) >= v52)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v23 + a4;
        }

        if (v5 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v37 != v5)
        {
          break;
        }
      }
    }

    v5 = v37;
    if (v37 < v23)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v127;
    }

    else
    {
      result = sub_2273A4F9C(0, *(v127 + 2) + 1, 1, v127);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v53 = *(v22 + 3);
    v54 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      result = sub_2273A4F9C((v53 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v54;
    v55 = &v22[16 * a4];
    *(v55 + 4) = v23;
    *(v55 + 5) = v5;
    v56 = *v122;
    if (!*v122)
    {
      goto LABEL_133;
    }

    v128 = v5;
    if (a4)
    {
      while (1)
      {
        v5 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v57 = *(v22 + 4);
          v58 = *(v22 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_112;
          }

          v73 = &v22[16 * v54];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_115;
          }

          v79 = &v22[16 * v5 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_119;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v5 = v54 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v22[16 * v54];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_114;
        }

        v86 = &v22[16 * v5];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_117;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v5 - 1;
        if (v5 - 1 >= v54)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v94 = v22;
        v95 = *&v22[16 * a4 + 32];
        v96 = *&v22[16 * v5 + 40];
        sub_2274B82F8(*a3 + v10[9] * v95, *a3 + v10[9] * *&v22[16 * v5 + 32], *a3 + v10[9] * v96, v56);
        if (v6)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_2271171D0(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_109;
        }

        v97 = &v94[16 * a4];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        v142 = v94;
        result = sub_227117144(v5);
        v22 = v142;
        v54 = *(v142 + 16);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v22[16 * v54 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_110;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_111;
      }

      v68 = &v22[16 * v54];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_113;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_116;
      }

      if (v72 >= v64)
      {
        v90 = &v22[16 * v5 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_120;
        }

        if (v59 < v93)
        {
          v5 = v54 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v128;
    a4 = v121;
    v9 = v141;
    if (v128 >= v20)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v98 = *a3;
  v99 = v10[9];
  v135 = v10[2];
  v100 = v98 + v99 * (v37 - 1);
  v101 = v23;
  v102 = -v99;
  v123 = v101;
  v103 = v101 - v37;
  v133 = v98;
  v125 = v99;
  a4 = v98 + v37 * v99;
  v128 = v5;
LABEL_85:
  v131 = v100;
  v132 = v37;
  v129 = a4;
  v130 = v103;
  v104 = v100;
  while (1)
  {
    v105 = v140;
    v106 = v135;
    (v135)(v140, a4, v9, v22);
    v107 = v139;
    v106(v139, v104, v141);
    sub_2274BD454();
    v108 = sub_22766BF80();
    v109 = *v137;
    v110 = v107;
    v9 = v141;
    (*v137)(v110, v141);
    result = v109(v105, v9);
    if ((v108 & 1) == 0)
    {
LABEL_84:
      v37 = v132 + 1;
      v100 = &v131[v125];
      v103 = v130 - 1;
      a4 = v129 + v125;
      v5 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v6 = v119;
      v23 = v123;
      a3 = v124;
      v10 = v120;
      if (v128 < v123)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v111 = *v136;
    v112 = v134;
    (*v136)(v134, a4, v9);
    swift_arrayInitWithTakeFrontToBack();
    v111(v104, v112, v9);
    v104 += v102;
    a4 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_2274B82F8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = sub_227662750();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v57);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v54 = &v45 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v56 = a3;
  v17 = (a2 - a1) / v15;
  v60 = a1;
  v59 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v19;
    if (v19 >= 1)
    {
      v30 = -v15;
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v31 = a4 + v19;
      v32 = v56;
      v47 = a1;
      v48 = a4;
      v51 = v30;
      do
      {
        v45 = v29;
        v33 = a2 + v30;
        v34 = v29;
        v52 = a2;
        v53 = a2 + v30;
        while (1)
        {
          if (a2 <= a1)
          {
            v60 = a2;
            v29 = v45;
            goto LABEL_59;
          }

          v36 = v32;
          v46 = v34;
          v56 = v32 + v30;
          v37 = v31 + v30;
          v38 = *v50;
          v39 = v54;
          v40 = v31 + v30;
          v41 = v31;
          v42 = v57;
          (*v50)(v54, v40, v57);
          v43 = v55;
          (v38)(v55, v33, v42);
          sub_2274BD454();
          LOBYTE(v38) = sub_22766BF80();
          v44 = *v49;
          (*v49)(v43, v42);
          v44(v39, v42);
          if (v38)
          {
            break;
          }

          v34 = v37;
          v32 = v56;
          if (v36 < v41 || v56 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
            v33 = v53;
            a1 = v47;
          }

          else
          {
            v33 = v53;
            a1 = v47;
            if (v36 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v37;
          v35 = v37 > v48;
          v30 = v51;
          a2 = v52;
          if (!v35)
          {
            v29 = v34;
            goto LABEL_58;
          }
        }

        v32 = v56;
        if (v36 < v52 || v56 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v47;
          v31 = v41;
        }

        else
        {
          a2 = v53;
          a1 = v47;
          v31 = v41;
          if (v36 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v29 = v46;
        v30 = v51;
      }

      while (v31 > v48);
    }

LABEL_58:
    v60 = a2;
LABEL_59:
    v58 = v29;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a4 + v18;
    v58 = a4 + v18;
    if (v18 >= 1 && a2 < v56)
    {
      v51 = *(v8 + 16);
      v52 = v8 + 16;
      v49 = v15;
      v50 = (v8 + 8);
      do
      {
        v21 = v54;
        v22 = v57;
        v23 = v51;
        v51(v54, a2, v57);
        v24 = v55;
        v23(v55, a4, v22);
        sub_2274BD454();
        v25 = sub_22766BF80();
        v26 = *v50;
        (*v50)(v24, v22);
        v26(v21, v22);
        if (v25)
        {
          v27 = v49;
          if (a1 < a2 || a1 >= v49 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v27;
        }

        else
        {
          v27 = v49;
          v28 = v49 + a4;
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v59 = v28;
          a4 += v27;
        }

        a1 += v27;
        v60 = a1;
      }

      while (a4 < v53 && a2 < v56);
    }
  }

  sub_227117244(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_2274B8888(uint64_t a1, void *a2)
{
  v46 = a2;
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v45 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = v38 - v9;
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v38[1] = v2;
    v53 = MEMORY[0x277D84F90];
    sub_226F1FB88(0, v10, 0);
    v12 = -1 << *(a1 + 32);
    v51 = a1 + 56;
    v52 = v53;
    result = sub_22766CC90();
    v13 = result;
    v14 = 0;
    v15 = *MEMORY[0x277CCE2F8];
    v43 = v5 + 16;
    v44 = v15;
    v41 = v5 + 32;
    v42 = v5 + 8;
    v39 = a1 + 64;
    v40 = v10;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v17 = v13 >> 6;
      if ((*(v51 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_23;
      }

      v18 = *(a1 + 36);
      v48 = v14;
      v49 = v18;
      v19 = *(a1 + 48);
      v50 = *(v5 + 72);
      v20 = v45;
      (*(v5 + 16))(v45, v19 + v50 * v13, v4);
      v21 = sub_2276626A0();
      v22 = v5;
      v23 = [v46 hk:v44 startOfWeekWithFirstWeekday:v21 beforeDate:0 addingWeeks:?];

      v24 = v47;
      sub_227662710();

      (*(v22 + 8))(v20, v4);
      v25 = v52;
      v53 = v52;
      v26 = a1;
      v28 = *(v52 + 16);
      v27 = *(v52 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_226F1FB88(v27 > 1, v28 + 1, 1);
        v24 = v47;
        v25 = v53;
      }

      *(v25 + 16) = v28 + 1;
      v29 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v52 = v25;
      result = (*(v22 + 32))(v25 + v29 + v28 * v50, v24, v4);
      v16 = 1 << *(v26 + 32);
      if (v13 >= v16)
      {
        goto LABEL_24;
      }

      v30 = *(v51 + 8 * v17);
      if ((v30 & (1 << v13)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v26;
      if (v49 != *(v26 + 36))
      {
        goto LABEL_26;
      }

      v5 = v22;
      v31 = v30 & (-2 << (v13 & 0x3F));
      if (v31)
      {
        v16 = __clz(__rbit64(v31)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = v22;
        v33 = v17 << 6;
        v34 = v17 + 1;
        v35 = (v39 + 8 * v17);
        while (v34 < (v16 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_226EB526C(v13, v49, 0);
            v16 = __clz(__rbit64(v36)) + v33;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v13, v49, 0);
LABEL_19:
        v5 = v32;
      }

      v14 = v48 + 1;
      v13 = v16;
      if (v48 + 1 == v40)
      {
        return v52;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2274B8C4C(uint64_t a1, void *a2)
{
  v116 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v106 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v108 = &v101 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v101 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v101 - v12;
  v14 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v14 + 16);
  v18 = v14[3];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  v23 = v15;
  v24 = v16;

  sub_22766A070();
  *(v22 + 16) = v23;
  *(v22 + 24) = v24;
  *(v22 + 32) = v17;
  *(v22 + 40) = v18;
  swift_getKeyPath();
  sub_227662000();
  v25 = sub_227662750();
  v26 = *(v25 - 8);
  v104 = *(v26 + 56);
  v105 = v26 + 56;
  v104(v13, 0, 1, v25);
  v110 = v13;
  sub_226E93170(v13, v11, &qword_27D7B9690, qword_227670B50);
  v102 = *(v26 + 48);
  v103 = v26 + 48;
  v27 = v102(v11, 1, v25);
  v101 = v26;
  if (v27 == 1)
  {
    sub_226E97D1C(v11, &qword_27D7B9690, qword_227670B50);
    v114 = 0u;
    v115 = 0u;
  }

  else
  {
    *(&v115 + 1) = v25;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v114);
    (*(v26 + 32))(boxed_opaque_existential_0, v11, v25);
  }

  v29 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v107 = v29;
  v30 = sub_22766C820();
  sub_226E93170(&v114, v112, &unk_27D7BC990, &qword_227670A30);
  v31 = v113;
  if (v113)
  {
    v32 = __swift_project_boxed_opaque_existential_0(v112, v113);
    v33 = *(v31 - 8);
    v34 = *(v33 + 64);
    MEMORY[0x28223BE20](v32);
    v36 = &v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v36);
    v37 = sub_22766D170();
    (*(v33 + 8))(v36, v31);
    __swift_destroy_boxed_opaque_existential_0(v112);
  }

  else
  {
    v37 = 0;
  }

  v111 = objc_opt_self();
  v38 = [v111 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950, &unk_227670BB0);
  v39 = [objc_allocWithZone(v109) initWithLeftExpression:v30 rightExpression:v38 modifier:0 type:3 options:0];

  sub_226E97D1C(v110, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v114, &unk_27D7BC990, &qword_227670A30);
  v40 = qword_2813B2078;
  swift_beginAccess();
  v41 = v39;
  v110 = v40;
  v42 = sub_22766A080();
  v44 = v43;
  MEMORY[0x22AA985C0]();
  if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v42(&v114, 0);
  swift_endAccess();

  swift_getKeyPath();
  v45 = v108;
  sub_227661FE0();
  v104(v45, 0, 1, v25);
  v46 = v106;
  sub_226E93170(v45, v106, &qword_27D7B9690, qword_227670B50);
  if (v102(v46, 1, v25) == 1)
  {
    sub_226E97D1C(v46, &qword_27D7B9690, qword_227670B50);
    v114 = 0u;
    v115 = 0u;
  }

  else
  {
    *(&v115 + 1) = v25;
    v47 = __swift_allocate_boxed_opaque_existential_0(&v114);
    (*(v101 + 32))(v47, v46, v25);
  }

  v48 = sub_22766C820();
  sub_226E93170(&v114, v112, &unk_27D7BC990, &qword_227670A30);
  v49 = v113;
  if (v113)
  {
    v50 = __swift_project_boxed_opaque_existential_0(v112, v113);
    v51 = *(v49 - 8);
    v52 = *(v51 + 64);
    MEMORY[0x28223BE20](v50);
    v54 = &v101 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v51 + 16))(v54);
    v55 = sub_22766D170();
    (*(v51 + 8))(v54, v49);
    __swift_destroy_boxed_opaque_existential_0(v112);
  }

  else
  {
    v55 = 0;
  }

  v56 = [v111 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v57 = [objc_allocWithZone(v109) initWithLeftExpression:v48 rightExpression:v56 modifier:0 type:0 options:0];

  sub_226E97D1C(v108, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v114, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v58 = v57;
  v59 = sub_22766A080();
  v61 = v60;
  MEMORY[0x22AA985C0]();
  if (*((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v98 = *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v59(&v114, 0);
  swift_endAccess();

  swift_getKeyPath();
  v62 = type metadata accessor for DateIntervalSessionThreshold();
  v63 = *(v116 + *(v62 + 28));
  v64 = MEMORY[0x277D839F8];
  *(&v115 + 1) = MEMORY[0x277D839F8];
  *&v114 = v63;

  v65 = sub_22766C820();
  sub_226E93170(&v114, v112, &unk_27D7BC990, &qword_227670A30);
  v66 = v113;
  if (v113)
  {
    v67 = __swift_project_boxed_opaque_existential_0(v112, v113);
    v68 = *(v66 - 8);
    v69 = *(v68 + 64);
    MEMORY[0x28223BE20](v67);
    v71 = &v101 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v68 + 16))(v71);
    v72 = sub_22766D170();
    (*(v68 + 8))(v71, v66);
    v64 = MEMORY[0x277D839F8];
    __swift_destroy_boxed_opaque_existential_0(v112);
  }

  else
  {
    v72 = 0;
  }

  v73 = [v111 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v74 = [objc_allocWithZone(v109) initWithLeftExpression:v65 rightExpression:v73 modifier:0 type:2 options:0];

  sub_226E97D1C(&v114, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v75 = v74;
  v76 = sub_22766A080();
  v78 = v77;
  MEMORY[0x22AA985C0]();
  if (*((*v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v99 = *((*v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v76(&v114, 0);
  swift_endAccess();

  swift_getKeyPath();
  v79 = v116 + *(v62 + 24);
  v80 = *v79;
  if (*(v79 + 8))
  {
    v80 = 1.79769313e308;
  }

  *(&v115 + 1) = v64;
  *&v114 = v80;

  v81 = sub_22766C820();
  sub_226E93170(&v114, v112, &unk_27D7BC990, &qword_227670A30);
  v82 = v113;
  if (v113)
  {
    v83 = __swift_project_boxed_opaque_existential_0(v112, v113);
    v84 = *(v82 - 8);
    v85 = *(v84 + 64);
    MEMORY[0x28223BE20](v83);
    v87 = &v101 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v84 + 16))(v87);
    v88 = sub_22766D170();
    (*(v84 + 8))(v87, v82);
    __swift_destroy_boxed_opaque_existential_0(v112);
  }

  else
  {
    v88 = 0;
  }

  v89 = [v111 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v90 = [objc_allocWithZone(v109) initWithLeftExpression:v81 rightExpression:v89 modifier:0 type:1 options:0];

  sub_226E97D1C(&v114, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v91 = v90;
  v92 = sub_22766A080();
  v94 = v93;
  MEMORY[0x22AA985C0]();
  if (*((*v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v100 = *((*v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v92(&v114, 0);
  swift_endAccess();

  swift_getKeyPath();
  sub_227397FC8();

  KeyPath = swift_getKeyPath();
  v96 = sub_2273FC7CC(KeyPath);

  return v96;
}

uint64_t sub_2274B99DC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v134 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v136 = (&v129 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v129 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v129 - v13;
  v15 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v15 + 16);
  v19 = v15[3];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v24 = v16;
  v25 = v17;

  sub_22766A070();
  *(v23 + 16) = v24;
  *(v23 + 24) = v25;
  *(v23 + 32) = v18;
  *(v23 + 40) = v19;
  swift_getKeyPath();
  v145 = a1;
  sub_227662000();
  v26 = sub_227662750();
  v27 = *(v26 - 8);
  v132 = *(v27 + 7);
  v133 = v27 + 56;
  v132(v14, 0, 1, v26);
  sub_226E93170(v14, v12, &qword_27D7B9690, qword_227670B50);
  v130 = *(v27 + 6);
  v131 = v27 + 48;
  if (v130(v12, 1, v26) == 1)
  {
    sub_226E97D1C(v12, &qword_27D7B9690, qword_227670B50);
    v143 = 0u;
    v144 = 0u;
  }

  else
  {
    *(&v144 + 1) = v26;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v143);
    (*(v27 + 4))(boxed_opaque_existential_0, v12, v26);
  }

  v29 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v140 = v29;
  v30 = sub_22766C820();
  sub_226E93170(&v143, v141, &unk_27D7BC990, &qword_227670A30);
  v31 = v142;
  if (v142)
  {
    v32 = __swift_project_boxed_opaque_existential_0(v141, v142);
    v138 = v27;
    v139 = v14;
    v33 = *(v31 - 8);
    v34 = *(v33 + 64);
    MEMORY[0x28223BE20](v32);
    v36 = &v129 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v36);
    v37 = sub_22766D170();
    (*(v33 + 8))(v36, v31);
    v27 = v138;
    v14 = v139;
    __swift_destroy_boxed_opaque_existential_0(v141);
  }

  else
  {
    v37 = 0;
  }

  v139 = objc_opt_self();
  v38 = [v139 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950, &unk_227670BB0);
  v39 = [objc_allocWithZone(v138) initWithLeftExpression:v30 rightExpression:v38 modifier:0 type:3 options:0];

  sub_226E97D1C(v14, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v143, &unk_27D7BC990, &qword_227670A30);
  v40 = qword_2813B2078;
  swift_beginAccess();
  v41 = v39;
  v137 = v40;
  v42 = sub_22766A080();
  v44 = v43;
  MEMORY[0x22AA985C0]();
  if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v42(&v143, 0);
  swift_endAccess();

  swift_getKeyPath();
  v45 = v136;
  sub_227661FE0();
  v132(v45, 0, 1, v26);
  v46 = v134;
  sub_226E93170(v45, v134, &qword_27D7B9690, qword_227670B50);
  if (v130(v46, 1, v26) == 1)
  {
    sub_226E97D1C(v46, &qword_27D7B9690, qword_227670B50);
    v143 = 0u;
    v144 = 0u;
  }

  else
  {
    *(&v144 + 1) = v26;
    v47 = __swift_allocate_boxed_opaque_existential_0(&v143);
    (*(v27 + 4))(v47, v46, v26);
  }

  v48 = sub_22766C820();
  sub_226E93170(&v143, v141, &unk_27D7BC990, &qword_227670A30);
  v49 = v142;
  if (v142)
  {
    v50 = __swift_project_boxed_opaque_existential_0(v141, v142);
    v51 = *(v49 - 8);
    v52 = *(v51 + 64);
    MEMORY[0x28223BE20](v50);
    v54 = &v129 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v51 + 16))(v54);
    v55 = sub_22766D170();
    (*(v51 + 8))(v54, v49);
    __swift_destroy_boxed_opaque_existential_0(v141);
  }

  else
  {
    v55 = 0;
  }

  v56 = [v139 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v57 = [objc_allocWithZone(v138) initWithLeftExpression:v48 rightExpression:v56 modifier:0 type:0 options:0];

  sub_226E97D1C(v136, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v143, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v58 = v57;
  v59 = sub_22766A080();
  v61 = v60;
  MEMORY[0x22AA985C0]();
  if (*((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v125 = *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v59(&v143, 0);
  swift_endAccess();

  swift_getKeyPath();
  v62 = type metadata accessor for DateIntervalSessionThreshold();
  v63 = *(v145 + v62[5]);
  v64 = MEMORY[0x277D839F8];
  *(&v144 + 1) = MEMORY[0x277D839F8];
  *&v143 = v63;

  v65 = sub_22766C820();
  sub_226E93170(&v143, v141, &unk_27D7BC990, &qword_227670A30);
  v66 = v142;
  if (v142)
  {
    v67 = __swift_project_boxed_opaque_existential_0(v141, v142);
    v136 = &v129;
    v68 = v23;
    v69 = v64;
    v70 = *(v66 - 8);
    v71 = *(v70 + 64);
    MEMORY[0x28223BE20](v67);
    v73 = &v129 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v70 + 16))(v73);
    v74 = sub_22766D170();
    (*(v70 + 8))(v73, v66);
    v64 = v69;
    v23 = v68;
    __swift_destroy_boxed_opaque_existential_0(v141);
  }

  else
  {
    v74 = 0;
  }

  v75 = [v139 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v76 = [objc_allocWithZone(v138) initWithLeftExpression:v65 rightExpression:v75 modifier:0 type:2 options:0];

  sub_226E97D1C(&v143, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v77 = v76;
  v78 = sub_22766A080();
  v80 = v79;
  MEMORY[0x22AA985C0]();
  if (*((*v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v126 = *((*v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v78(&v143, 0);
  swift_endAccess();

  swift_getKeyPath();
  v81 = *(v145 + v62[7]);
  *(&v144 + 1) = v64;
  *&v143 = v81;

  v82 = sub_22766C820();
  sub_226E93170(&v143, v141, &unk_27D7BC990, &qword_227670A30);
  v83 = v142;
  if (v142)
  {
    v84 = __swift_project_boxed_opaque_existential_0(v141, v142);
    v136 = v23;
    v85 = v62;
    v86 = *(v83 - 8);
    v87 = *(v86 + 64);
    MEMORY[0x28223BE20](v84);
    v89 = &v129 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v86 + 16))(v89);
    v90 = sub_22766D170();
    (*(v86 + 8))(v89, v83);
    v62 = v85;
    v23 = v136;
    __swift_destroy_boxed_opaque_existential_0(v141);
  }

  else
  {
    v90 = 0;
  }

  v91 = [v139 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v92 = [objc_allocWithZone(v138) initWithLeftExpression:v82 rightExpression:v91 modifier:0 type:2 options:0];

  sub_226E97D1C(&v143, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v93 = v92;
  v94 = sub_22766A080();
  v96 = v95;
  MEMORY[0x22AA985C0]();
  if (*((*v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v127 = *((*v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v94(&v143, 0);
  swift_endAccess();

  swift_getKeyPath();
  v97 = v145 + v62[6];
  v98 = *v97;
  if (*(v97 + 8))
  {
    v98 = 1.79769313e308;
  }

  *(&v144 + 1) = v64;
  *&v143 = v98;

  v99 = sub_22766C820();
  sub_226E93170(&v143, v141, &unk_27D7BC990, &qword_227670A30);
  v100 = v142;
  if (v142)
  {
    v101 = __swift_project_boxed_opaque_existential_0(v141, v142);
    v102 = *(v100 - 8);
    v103 = *(v102 + 64);
    MEMORY[0x28223BE20](v101);
    v105 = &v129 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v102 + 16))(v105);
    v106 = sub_22766D170();
    (*(v102 + 8))(v105, v100);
    __swift_destroy_boxed_opaque_existential_0(v141);
  }

  else
  {
    v106 = 0;
  }

  v107 = [v139 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v108 = [objc_allocWithZone(v138) initWithLeftExpression:v99 rightExpression:v107 modifier:0 type:1 options:0];

  sub_226E97D1C(&v143, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v109 = v108;
  v110 = sub_22766A080();
  v112 = v111;
  MEMORY[0x22AA985C0]();
  if (*((*v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v128 = *((*v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v110(&v143, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v114 = v135;
  v115 = sub_2273FC8C8(KeyPath);
  if (v114)
  {

    swift_setDeallocating();

    v116 = *(v23 + 40);

    v117 = qword_2813B2078;
    v118 = sub_22766A100();
    (*(*(v118 - 8) + 8))(v23 + v117, v118);
  }

  else
  {
    v117 = sub_226F4374C(v115);

    swift_setDeallocating();

    v121 = *(v23 + 40);

    v122 = qword_2813B2078;
    v123 = sub_22766A100();
    (*(*(v123 - 8) + 8))(v23 + v122, v123);
  }

  v119 = *(*v23 + 48);
  v120 = *(*v23 + 52);
  swift_deallocClassInstance();
  return v117;
}

id sub_2274BAAE4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v139 = v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v141 = (v133 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v133 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v133 - v13;
  v15 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v15 + 16);
  v19 = v15[3];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v24 = v16;
  v25 = v17;

  sub_22766A070();
  *(v23 + 16) = v24;
  *(v23 + 24) = v25;
  v133[0] = v25;
  *(v23 + 32) = v18;
  v142 = v23;
  v133[1] = v19;
  *(v23 + 40) = v19;
  swift_getKeyPath();
  v150 = a1;
  sub_227662000();
  v26 = sub_227662750();
  v27 = *(v26 - 8);
  v137 = *(v27 + 56);
  v138 = v27 + 56;
  v137(v14, 0, 1, v26);
  sub_226E93170(v14, v12, &qword_27D7B9690, qword_227670B50);
  v135 = *(v27 + 48);
  v136 = v27 + 48;
  if (v135(v12, 1, v26) == 1)
  {
    sub_226E97D1C(v12, &qword_27D7B9690, qword_227670B50);
    v148 = 0u;
    v149 = 0u;
  }

  else
  {
    *(&v149 + 1) = v26;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v148);
    (*(v27 + 32))(boxed_opaque_existential_0, v12, v26);
  }

  v134 = v24;
  v29 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v145 = v29;
  v30 = sub_22766C820();
  sub_226E93170(&v148, v146, &unk_27D7BC990, &qword_227670A30);
  v31 = v147;
  if (v147)
  {
    v32 = __swift_project_boxed_opaque_existential_0(v146, v147);
    v144 = v14;
    v33 = *(v31 - 8);
    v34 = *(v33 + 64);
    MEMORY[0x28223BE20](v32);
    v36 = v133 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v36);
    v37 = sub_22766D170();
    (*(v33 + 8))(v36, v31);
    v14 = v144;
    __swift_destroy_boxed_opaque_existential_0(v146);
  }

  else
  {
    v37 = 0;
  }

  v144 = objc_opt_self();
  v38 = [v144 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950, &unk_227670BB0);
  v40 = [objc_allocWithZone(v39) initWithLeftExpression:v30 rightExpression:v38 modifier:0 type:3 options:0];

  sub_226E97D1C(v14, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v148, &unk_27D7BC990, &qword_227670A30);
  v41 = qword_2813B2078;
  v42 = v142;
  swift_beginAccess();
  v43 = v40;
  v44 = v42;
  v45 = v43;
  v143 = v41;
  v46 = sub_22766A080();
  v48 = v47;
  MEMORY[0x22AA985C0]();
  if (*((*v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v129 = *((*v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
    v44 = v142;
  }

  sub_22766C3A0();
  v46(&v148, 0);
  swift_endAccess();

  swift_getKeyPath();
  v49 = v141;
  sub_227661FE0();
  v137(v49, 0, 1, v26);
  v50 = v49;
  v51 = v139;
  sub_226E93170(v50, v139, &qword_27D7B9690, qword_227670B50);
  if (v135(v51, 1, v26) == 1)
  {
    sub_226E97D1C(v51, &qword_27D7B9690, qword_227670B50);
    v148 = 0u;
    v149 = 0u;
  }

  else
  {
    *(&v149 + 1) = v26;
    v52 = __swift_allocate_boxed_opaque_existential_0(&v148);
    (*(v27 + 32))(v52, v51, v26);
  }

  v53 = sub_22766C820();
  sub_226E93170(&v148, v146, &unk_27D7BC990, &qword_227670A30);
  v54 = v147;
  if (v147)
  {
    v55 = __swift_project_boxed_opaque_existential_0(v146, v147);
    v56 = *(v54 - 8);
    v57 = *(v56 + 64);
    MEMORY[0x28223BE20](v55);
    v59 = v133 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v56 + 16))(v59);
    v60 = sub_22766D170();
    (*(v56 + 8))(v59, v54);
    __swift_destroy_boxed_opaque_existential_0(v146);
  }

  else
  {
    v60 = 0;
  }

  v61 = [v144 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v62 = [objc_allocWithZone(v39) initWithLeftExpression:v53 rightExpression:v61 modifier:0 type:1 options:0];

  sub_226E97D1C(v141, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v148, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v63 = v62;
  v64 = sub_22766A080();
  v66 = v65;
  MEMORY[0x22AA985C0]();
  if (*((*v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v130 = *((*v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v64(&v148, 0);
  swift_endAccess();

  swift_getKeyPath();
  v67 = type metadata accessor for DateIntervalSessionThreshold();
  v68 = *(v150 + v67[5]);
  v69 = MEMORY[0x277D839F8];
  *(&v149 + 1) = MEMORY[0x277D839F8];
  *&v148 = v68;

  v70 = sub_22766C820();
  sub_226E93170(&v148, v146, &unk_27D7BC990, &qword_227670A30);
  v71 = v147;
  if (v147)
  {
    v72 = __swift_project_boxed_opaque_existential_0(v146, v147);
    v73 = *(v71 - 8);
    v74 = *(v73 + 64);
    MEMORY[0x28223BE20](v72);
    v76 = v133 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v73 + 16))(v76);
    v77 = sub_22766D170();
    v78 = v76;
    v69 = MEMORY[0x277D839F8];
    (*(v73 + 8))(v78, v71);
    v44 = v142;
    __swift_destroy_boxed_opaque_existential_0(v146);
  }

  else
  {
    v77 = 0;
  }

  v79 = [v144 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v80 = [objc_allocWithZone(v39) initWithLeftExpression:v70 rightExpression:v79 modifier:0 type:2 options:0];

  sub_226E97D1C(&v148, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v81 = v80;
  v82 = sub_22766A080();
  v84 = v83;
  MEMORY[0x22AA985C0]();
  if (*((*v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v131 = *((*v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v82(&v148, 0);
  swift_endAccess();

  swift_getKeyPath();
  v85 = *(v150 + v67[7]);
  *(&v149 + 1) = v69;
  *&v148 = v85;

  v86 = sub_22766C820();
  sub_226E93170(&v148, v146, &unk_27D7BC990, &qword_227670A30);
  v87 = v147;
  if (v147)
  {
    v88 = __swift_project_boxed_opaque_existential_0(v146, v147);
    v141 = v133;
    v89 = *(v87 - 8);
    v90 = *(v89 + 64);
    MEMORY[0x28223BE20](v88);
    v92 = v67;
    v93 = v39;
    v94 = v69;
    v95 = v133 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v89 + 16))(v95);
    v96 = sub_22766D170();
    v97 = v95;
    v69 = v94;
    v39 = v93;
    v67 = v92;
    (*(v89 + 8))(v97, v87);
    v44 = v142;
    __swift_destroy_boxed_opaque_existential_0(v146);
  }

  else
  {
    v96 = 0;
  }

  v98 = [v144 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v99 = [objc_allocWithZone(v39) initWithLeftExpression:v86 rightExpression:v98 modifier:0 type:2 options:0];

  sub_226E97D1C(&v148, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v100 = v99;
  v101 = sub_22766A080();
  v103 = v102;
  MEMORY[0x22AA985C0]();
  if (*((*v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v132 = *((*v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v101(&v148, 0);
  swift_endAccess();

  swift_getKeyPath();
  v104 = v150 + v67[6];
  v105 = *v104;
  if (*(v104 + 8))
  {
    v105 = 1.79769313e308;
  }

  *(&v149 + 1) = v69;
  *&v148 = v105;

  v106 = sub_22766C820();
  sub_226E93170(&v148, v146, &unk_27D7BC990, &qword_227670A30);
  v107 = v147;
  if (v147)
  {
    v108 = __swift_project_boxed_opaque_existential_0(v146, v147);
    v109 = *(v107 - 8);
    v110 = *(v109 + 64);
    MEMORY[0x28223BE20](v108);
    v112 = v133 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v109 + 16))(v112);
    v113 = sub_22766D170();
    (*(v109 + 8))(v112, v107);
    __swift_destroy_boxed_opaque_existential_0(v146);
  }

  else
  {
    v113 = 0;
  }

  v114 = [v144 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v115 = [objc_allocWithZone(v39) initWithLeftExpression:v106 rightExpression:v114 modifier:0 type:1 options:0];

  sub_226E97D1C(&v148, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v116 = v115;
  v117 = sub_22766A080();
  v119 = v118;
  MEMORY[0x22AA985C0]();
  if (*((*v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v115 = *((*v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v117(&v148, 0);
  swift_endAccess();

  v120 = v140;
  v121 = sub_226EC6320(0);
  if (v120)
  {
  }

  else
  {
    v122 = v121;
    [v121 setResultType_];
    [v122 setFetchLimit_];
    [v122 setFetchOffset_];
    [v122 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v123 = v134;
    v115 = sub_22766C9D0();

    swift_setDeallocating();
    v125 = qword_2813B2078;
    v126 = sub_22766A100();
    (*(*(v126 - 8) + 8))(v44 + v125, v126);
    v127 = *(*v44 + 48);
    v128 = *(*v44 + 52);
    swift_deallocClassInstance();
  }

  return v115;
}