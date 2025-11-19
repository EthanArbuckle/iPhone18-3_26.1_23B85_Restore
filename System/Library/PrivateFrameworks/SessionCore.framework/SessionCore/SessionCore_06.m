uint64_t sub_22CF78BEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2728, qword_22D019070);
  result = sub_22D016C1C();
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
      sub_22D016EAC();

      sub_22D0166DC();
      result = sub_22D016ECC();
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

uint64_t sub_22CF78E24(uint64_t a1)
{
  v2 = v1;
  v38 = sub_22D01534C();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27B8, &qword_22D0190A8);
  v11 = sub_22D016C1C();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_22CF7C4D4(qword_28143FBB0, MEMORY[0x277D4D450]);
      result = sub_22D01661C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_22CF79140(uint64_t a1)
{
  v2 = v1;
  v38 = sub_22D0159DC();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27E8, &qword_22D019710);
  v11 = sub_22D016C1C();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_22CF7C4D4(&qword_28143DAE0, MEMORY[0x277D46790]);
      result = sub_22D01661C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_22CF7945C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A8, &qword_22D019098);
  result = sub_22D016C1C();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v35 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v6 + 40);
      sub_22D016EAC();

      sub_22D0166DC();
      sub_22D0166DC();
      MEMORY[0x2318C6020](v24);
      result = sub_22D016ECC();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v23;
      *(v15 + 24) = v22;
      *(v15 + 32) = v24;
      ++*(v6 + 16);
      v3 = v34;
      v11 = v35;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

uint64_t sub_22CF796E8(uint64_t a1)
{
  v2 = v1;
  v38 = sub_22D015E7C();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27F8, qword_22D0190F0);
  v11 = sub_22D016C1C();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_22CF7C4D4(&qword_28143DAD8, MEMORY[0x277D4D5D8]);
      result = sub_22D01661C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_22CF79A04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22D016C1C();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_22D016A5C();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

uint64_t sub_22CF79C10(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = a1;
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = (1 << v6) + 63;
  v9 = v8 >> 6;
  v10 = 8 * (v8 >> 6);
  if (v7 <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1, v10);
    v12 = v19 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    result = sub_22CF79E64(v12, v9, v5, a2);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  v15 = 8 * (v8 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v10 = v15;
    goto LABEL_2;
  }

  v16 = swift_slowAlloc();
  v17 = v3;
  v18 = sub_22CF7A744(v16, v9, v5, a2);
  result = MEMORY[0x2318C6860](v16, -1, -1);
  if (!v17)
  {
    result = v18;
  }

LABEL_4:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22CF79D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_22CEE9DF8(a1, a2, a3, sub_22CF7A270, sub_22CF7A270);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22CF79DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_22CEE9DF8(a1, a2, a3, sub_22CF7A528, sub_22CF7A528);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22CF79E64(unint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v45 = a2;
  v59 = a4;
  v46 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v5 = *(*(v58 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v58, v6);
  v57 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v56 = &v44 - v10;
  v11 = type metadata accessor for Assertion();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v54 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_22D01534C();
  v15 = *(*(v53 - 8) + 64);
  result = MEMORY[0x28223BE20](v53, v16);
  v62 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v60 = a3;
  v21 = *(a3 + 64);
  v49 = a3 + 64;
  v22 = 1 << *(a3 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v47 = 0;
  v48 = (v22 + 63) >> 6;
  v63 = v18;
  v51 = v18 + 1;
  v52 = v18 + 2;
  while (v24)
  {
    v25 = __clz(__rbit64(v24));
    v61 = (v24 - 1) & v24;
LABEL_11:
    v28 = v25 | (v20 << 6);
    v29 = v60;
    v30 = v63[2];
    v31 = v62;
    v32 = v53;
    v30(v62, v60[6] + v63[9] * v28, v53);
    v33 = v29[7];
    v34 = *(v55 + 72);
    v50 = v28;
    v35 = v33 + v34 * v28;
    v36 = v54;
    sub_22CF07D60(v35, v54, type metadata accessor for Assertion);
    v37 = v56;
    v30(v56, v31, v32);
    v38 = v58;
    sub_22CF07D60(v36, v37 + *(v58 + 48), type metadata accessor for Assertion);
    v39 = v57;
    sub_22CEEB6DC(v37, v57, &qword_27D9F2600, &qword_22D018B60);
    v40 = *(v38 + 48);
    v41 = sub_22D01531C();
    sub_22CEEC3D8(v37, &qword_27D9F2600, &qword_22D018B60);
    v42 = v63[1];
    v42(v39, v32);
    sub_22CF1CB18(v39 + v40, type metadata accessor for Assertion);
    sub_22CF1CB18(v36, type metadata accessor for Assertion);
    result = (v42)(v62, v32);
    v24 = v61;
    if (v41 == v59)
    {
      *(v46 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      if (__OFADD__(v47++, 1))
      {
        __break(1u);
        return sub_22CF070F0(v46, v45, v47, v60);
      }
    }
  }

  v26 = v20;
  while (1)
  {
    v20 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v20 >= v48)
    {
      return sub_22CF070F0(v46, v45, v47, v60);
    }

    v27 = *(v49 + 8 * v20);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v61 = (v27 - 1) & v27;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF7A270(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, char *))
{
  v42 = a4;
  v35 = a2;
  v36 = a1;
  v5 = sub_22D01436C();
  v6 = *(*(v5 - 8) + 64);
  result = MEMORY[0x28223BE20](v5, v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v12 = 0;
  v43 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v40 = v9 + 16;
  v41 = v9;
  v39 = (v9 + 8);
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v44 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v12 << 6);
    v24 = v43;
    (*(v41 + 16))(v11, v43[6] + *(v41 + 72) * v23, v5);
    v25 = v24[7];
    v38 = v23;
    v26 = (v25 + 32 * v23);
    v27 = *(v26 + 1);
    v28 = v26[16];
    v29 = v5;
    v30 = *(v26 + 3);
    v45[0] = *v26;
    v46 = v27;
    v47 = v28;
    v48 = v30;

    v31 = v49;
    v32 = v42(v11, v45);
    v49 = v31;
    if (v31)
    {

      return (*v39)(v11, v29);
    }

    v33 = v32;

    result = (*v39)(v11, v29);
    v5 = v29;
    v18 = v44;
    if (v33)
    {
      *(v36 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      if (__OFADD__(v37++, 1))
      {
        __break(1u);
        return sub_22CF7A86C(v36, v35, v37, v43);
      }
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
      return sub_22CF7A86C(v36, v35, v37, v43);
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v44 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF7A528(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *))
{
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 64;
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
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 56);
    v16 = (*(a3 + 48) + 16 * v14);
    v17 = v16[1];
    v25[0] = *v16;
    v25[1] = v17;
    v26 = *(v15 + 8 * v14);

    v18 = a4(v25, &v26);

    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_22CF7B0E0(v21, a2, v22, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_22CF7B0E0(v21, a2, v22, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_22CF7A6A0(unint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_22CF7B638(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_22CF7A744(void *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_22CF79E64(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_22CF7A7CC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_22CF7A86C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v46 = a1;
  v57 = sub_22D01436C();
  v54 = *(v57 - 8);
  v7 = *(v54 + 64);
  v9 = MEMORY[0x28223BE20](v57, v8);
  v56 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v47 = &v41 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A50, &qword_22D019718);
  result = sub_22D016D3C();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v46;
  }

  v16 = 0;
  v44 = v54 + 16;
  v45 = result;
  v55 = v54 + 32;
  v17 = result + 64;
  v42 = a2;
  v43 = a4;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v48 = (v15 - 1) & v15;
LABEL_16:
    v21 = v18 | (v16 << 6);
    v22 = a4[6];
    v23 = v54;
    v53 = *(v54 + 72);
    v24 = v47;
    v25 = v57;
    (*(v54 + 16))(v47, v22 + v53 * v21, v57);
    v26 = (a4[7] + 32 * v21);
    v27 = *v26;
    v28 = *(v26 + 1);
    v50 = v26[16];
    v51 = v27;
    v29 = *(v26 + 3);
    v49 = *(v23 + 32);
    v49(v56, v24, v25);
    v14 = v45;
    v30 = *(v45 + 40);
    sub_22CF7C4D4(&qword_28143F710, MEMORY[0x277CC95F0]);
    v52 = v28;

    result = sub_22D01661C();
    v31 = -1 << *(v14 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v31) >> 6;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v17 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v17 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    result = (v49)(*(v14 + 48) + v34 * v53, v56, v57);
    v39 = *(v14 + 56) + 32 * v34;
    *v39 = v51;
    *(v39 + 8) = v52;
    *(v39 + 16) = v50;
    *(v39 + 24) = v29;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a2 = v42;
    a4 = v43;
    v15 = v48;
    if (!a3)
    {
      return v14;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v20 = v46[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v48 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22CF7AC3C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v65 = sub_22D01436C();
  v61 = *(v65 - 8);
  v8 = *(v61 + 64);
  v10 = MEMORY[0x28223BE20](v65, v9);
  v64 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v55 = v51 - v13;
  v14 = sub_22D0159DC();
  v60 = *(v14 - 8);
  v15 = *(v60 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v63 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v54 = v51 - v20;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A40, &qword_22D019708);
  result = sub_22D016D3C();
  v22 = result;
  if (a2 < 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = *a1;
  }

  v24 = 0;
  v51[3] = v60 + 16;
  v52 = a2;
  v62 = v60 + 32;
  v25 = result + 64;
  v53 = a1;
  v51[0] = a4;
  v51[1] = v61 + 32;
  v51[2] = v61 + 16;
  while (v23)
  {
    v26 = __clz(__rbit64(v23));
    v56 = (v23 - 1) & v23;
LABEL_16:
    v29 = v26 | (v24 << 6);
    v30 = a4[6];
    v31 = v60;
    v59 = *(v60 + 72);
    v32 = v54;
    (*(v60 + 16))(v54, v30 + v59 * v29, v14);
    v33 = a4[7];
    v34 = v61;
    v58 = *(v61 + 72);
    v35 = v33 + v58 * v29;
    v36 = v14;
    v37 = v55;
    v38 = v65;
    (*(v61 + 16))(v55, v35, v65);
    v57 = *(v31 + 32);
    v57(v63, v32, v36);
    v39 = *(v34 + 32);
    v40 = v37;
    v14 = v36;
    v39(v64, v40, v38);
    v41 = *(v22 + 40);
    sub_22CF7C4D4(&qword_28143DAE0, MEMORY[0x277D46790]);
    result = sub_22D01661C();
    v42 = -1 << *(v22 + 32);
    v43 = result & ~v42;
    v44 = v43 >> 6;
    if (((-1 << v43) & ~*(v25 + 8 * (v43 >> 6))) == 0)
    {
      v46 = 0;
      v47 = (63 - v42) >> 6;
      a2 = v52;
      a1 = v53;
      while (++v44 != v47 || (v46 & 1) == 0)
      {
        v48 = v44 == v47;
        if (v44 == v47)
        {
          v44 = 0;
        }

        v46 |= v48;
        v49 = *(v25 + 8 * v44);
        if (v49 != -1)
        {
          v45 = __clz(__rbit64(~v49)) + (v44 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v45 = __clz(__rbit64((-1 << v43) & ~*(v25 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
    a2 = v52;
    a1 = v53;
LABEL_26:
    *(v25 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
    v57((*(v22 + 48) + v45 * v59), v63, v36);
    result = (v39)(*(v22 + 56) + v45 * v58, v64, v65);
    ++*(v22 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v51[0];
    v23 = v56;
    if (!a3)
    {
      return v22;
    }
  }

  v27 = v24;
  while (1)
  {
    v24 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v24 >= a2)
    {
      return v22;
    }

    v28 = a1[v24];
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v56 = (v28 - 1) & v28;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22CF7B0E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A38, &unk_22D0196F0);
  result = sub_22D016D3C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v33 = *(v17 + 8 * v16);
    v21 = *(v9 + 40);
    sub_22D016EAC();

    sub_22D0166DC();
    result = sub_22D016ECC();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22CF7B348(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v39 = *(v11 - 8);
  v12 = *(v39 + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14, v17);
  v20 = &v35 - v19;
  v40 = a4;
  v23 = *(a4 + 64);
  v22 = a4 + 64;
  v21 = v23;
  v24 = -1 << *(v22 - 32);
  if (-v24 < 64)
  {
    v25 = ~(-1 << -v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v21;
  if (!a2)
  {
LABEL_18:
    v27 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v40;
    a1[1] = v22;
    a1[2] = ~v24;
    a1[3] = v27;
    a1[4] = v26;
    return a3;
  }

  if (!a3)
  {
    v27 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v37 = a1;
    v38 = a3;
    result = 0;
    v27 = 0;
    v36 = v24;
    v28 = (63 - v24) >> 6;
    v29 = 1;
    while (v26)
    {
LABEL_14:
      v32 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      a1 = *(v39 + 72);
      sub_22CF07D60(*(v40 + 56) + a1 * (v32 | (v27 << 6)), v16, a6);
      sub_22CF7BE5C(v16, v20, a6);
      sub_22CF7BE5C(v20, a2, a6);
      if (v29 == v38)
      {
        a1 = v37;
        a3 = v38;
        goto LABEL_23;
      }

      a2 += a1;
      result = v29;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v30 = v27;
    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v31 >= v28)
      {
        break;
      }

      v26 = *(v22 + 8 * v31);
      ++v30;
      if (v26)
      {
        v27 = v31;
        goto LABEL_14;
      }
    }

    v26 = 0;
    if (v28 <= v27 + 1)
    {
      v34 = v27 + 1;
    }

    else
    {
      v34 = v28;
    }

    v27 = v34 - 1;
    a3 = result;
    a1 = v37;
LABEL_23:
    v24 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_22CF7B5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF7B638(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v76 = a5;
  v78 = a4;
  v60 = a2;
  v61 = a1;
  v74 = sub_22D01555C();
  v6 = *(v74 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v74, v8);
  v70 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v10 = *(*(v73 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v73, v11);
  v83 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v82 = &v59 - v15;
  v16 = type metadata accessor for Assertion();
  v71 = *(v16 - 8);
  v72 = v16;
  v17 = *(v71 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v81 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_22D01534C();
  v20 = *(*(v80 - 8) + 64);
  result = MEMORY[0x28223BE20](v80, v21);
  v79 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v75 = a3;
  v28 = a3[8];
  v27 = a3 + 8;
  v26 = v28;
  v29 = 1 << *(v27 - 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v26;
  v62 = 0;
  v63 = (v29 + 63) >> 6;
  v67 = (v6 + 16);
  v68 = v23 + 16;
  v69 = v23;
  v65 = (v23 + 8);
  v66 = (v6 + 8);
  while (v31)
  {
    v35 = __clz(__rbit64(v31));
    v77 = (v31 - 1) & v31;
LABEL_12:
    v38 = v35 | (v25 << 6);
    v39 = v75;
    v40 = *(v69 + 16);
    v41 = v79;
    v42 = v80;
    v40(v79, v75[6] + *(v69 + 72) * v38, v80);
    v43 = v39[7];
    v44 = *(v71 + 72);
    v64 = v38;
    v45 = v43 + v44 * v38;
    v46 = v81;
    sub_22CF07D60(v45, v81, type metadata accessor for Assertion);
    v47 = v82;
    v40(v82, v41, v42);
    v48 = v73;
    sub_22CF07D60(v46, v47 + *(v73 + 48), type metadata accessor for Assertion);
    v49 = v83;
    sub_22CEEB6DC(v47, v83, &qword_27D9F2600, &qword_22D018B60);
    v50 = v49 + *(v48 + 48);
    v51 = v70;
    v52 = v74;
    (*v67)(v70, v50 + *(v72 + 40), v74);
    sub_22CF1CB18(v50, type metadata accessor for Assertion);
    v53 = sub_22D01554C();
    v55 = v54;
    (*v66)(v51, v52);
    if (v53 == v78 && v55 == v76)
    {

      sub_22CEEC3D8(v82, &qword_27D9F2600, &qword_22D018B60);
      v56 = *v65;
      v57 = v80;
      (*v65)(v83, v80);
      sub_22CF1CB18(v81, type metadata accessor for Assertion);
      result = (v56)(v79, v57);
      v31 = v77;
      goto LABEL_15;
    }

    v32 = sub_22D016DFC();

    sub_22CEEC3D8(v82, &qword_27D9F2600, &qword_22D018B60);
    v33 = *v65;
    v34 = v80;
    (*v65)(v83, v80);
    sub_22CF1CB18(v81, type metadata accessor for Assertion);
    result = (v33)(v79, v34);
    v31 = v77;
    if (v32)
    {
LABEL_15:
      *(v61 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
      if (__OFADD__(v62++, 1))
      {
        __break(1u);
        return sub_22CF070F0(v61, v60, v62, v75);
      }
    }
  }

  v36 = v25;
  while (1)
  {
    v25 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v25 >= v63)
    {
      return sub_22CF070F0(v61, v60, v62, v75);
    }

    v37 = v27[v25];
    ++v36;
    if (v37)
    {
      v35 = __clz(__rbit64(v37));
      v77 = (v37 - 1) & v37;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF7BBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v13 = sub_22CF7A6A0(v16, v9, a1, a2, a3);
      MEMORY[0x2318C6860](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v11, v12);
  bzero(v17 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v13 = sub_22CF7B638((v17 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_22CF7BDC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2318C59E0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22CEE54CC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22CF7BE5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF7BEC4(uint64_t a1)
{
  v2 = sub_22D01534C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_22CF7C4D4(qword_28143FBB0, MEMORY[0x277D4D450]);
  result = MEMORY[0x2318C59E0](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v8, v18, v2);
      sub_22CF760C4(v11, v8);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t sub_22CF7C060(uint64_t a1)
{
  v2 = sub_22D0159DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_22CF7C4D4(&qword_28143DAE0, MEMORY[0x277D46790]);
  result = MEMORY[0x2318C59E0](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v8, v18, v2);
      sub_22CF763A4(v11, v8);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t sub_22CF7C1FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22CF7C2A4();
  result = MEMORY[0x2318C59E0](v2, &type metadata for AppRestriction, v3);
  v12 = result;
  if (v2)
  {
    v5 = (a1 + 64);
    do
    {
      v7 = *(v5 - 4);
      v6 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v5 += 40;
      v13[0] = v7;
      v13[1] = v6;
      v13[2] = v8;
      v13[3] = v9;
      v14 = v10;

      sub_22CF768E4(v11, v13);

      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

unint64_t sub_22CF7C2A4()
{
  result = qword_28143F400;
  if (!qword_28143F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143F400);
  }

  return result;
}

uint64_t sub_22CF7C338(uint64_t a1)
{
  v2 = sub_22D015E7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_22CF7C4D4(&qword_28143DAD8, MEMORY[0x277D4D5D8]);
  result = MEMORY[0x2318C59E0](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v8, v18, v2);
      sub_22CF76AFC(v11, v8);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t sub_22CF7C4D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CF7C540()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_22CF7C5D0()
{
  v1 = *v0;
  sub_22D016EAC();
  MEMORY[0x2318C6020](v1);
  return sub_22D016ECC();
}

uint64_t sub_22CF7C618()
{
  v1 = *v0;
  sub_22D016EAC();
  MEMORY[0x2318C6020](v1);
  return sub_22D016ECC();
}

uint64_t sub_22CF7C65C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 96);

  return swift_deallocClassInstance();
}

void sub_22CF7C6AC(void *a1, void (*a2)(char *, uint64_t), unint64_t a3, char a4, void (*a5)(void), uint64_t a6, double a7)
{
  v102 = a2;
  v103 = a5;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v12 = sub_22D0164CC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v99 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D01653C();
  v98 = *(v17 - 8);
  v18 = *(v98 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v97 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_22D0164BC();
  v92 = *(v93 - 8);
  v21 = *(v92 + 64);
  MEMORY[0x28223BE20](v93, v22);
  v24 = (&v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = sub_22D01656C();
  v96 = *(v101 - 8);
  v25 = *(v96 + 64);
  v27 = MEMORY[0x28223BE20](v101, v26);
  v29 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v95 = &v87 - v31;
  v32 = [a1 process];
  if (!v32)
  {
    if (qword_28143FB08 != -1)
    {
      swift_once();
    }

    v66 = sub_22D01637C();
    __swift_project_value_buffer(v66, qword_2814443D8);
    v67 = sub_22D01636C();
    v68 = sub_22D01690C();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_22CEE1000, v67, v68, "Cannot execute task; process does not exist", v69, 2u);
      MEMORY[0x2318C6860](v69, -1, -1);
    }

    sub_22CEEEBB4();
    v70 = swift_allocError();
    *v71 = 2;
    v103();
    v72 = *MEMORY[0x277D85DE8];
    v73 = v70;
    goto LABEL_27;
  }

  v33 = v32;
  v91 = v29;
  v89 = v13;
  v90 = v12;
  v100 = a6;
  if (qword_28143FB08 != -1)
  {
    swift_once();
  }

  v34 = sub_22D01637C();
  __swift_project_value_buffer(v34, qword_2814443D8);
  v104 = v33;

  v35 = sub_22D01636C();
  v36 = sub_22D01690C();

  v37 = os_log_type_enabled(v35, v36);
  v88 = v17;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = a4;
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v38 = 67240450;
    *(v38 + 4) = [v104 pid];

    *(v38 + 8) = 2082;
    *(v38 + 10) = sub_22CEEE31C(v102, a3, aBlock);
    _os_log_impl(&dword_22CEE1000, v35, v36, "Executing task for %{public}d with explanation %{public}s", v38, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x2318C6860](v40, -1, -1);
    MEMORY[0x2318C6860](v38, -1, -1);

    if (v39)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

  if (!a4)
  {
LABEL_17:
    if ([a1 taskState] == 4)
    {
      (v103)(0);
      v74 = *MEMORY[0x277D85DE8];
      v73 = v104;

LABEL_20:

      return;
    }

    v80 = v104;
    v81 = sub_22D01636C();
    v82 = sub_22D0168EC();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 67240192;
      *(v83 + 4) = [v80 pid];

      _os_log_impl(&dword_22CEE1000, v81, v82, "Rejecting low-priority task for %{public}d because process is unavailable", v83, 8u);
      MEMORY[0x2318C6860](v83, -1, -1);
    }

    else
    {

      v81 = v80;
    }

    sub_22CEEEBB4();
    v84 = swift_allocError();
    *v85 = 2;
    v103();

    v86 = *MEMORY[0x277D85DE8];
    v73 = v84;
LABEL_27:

    goto LABEL_20;
  }

LABEL_6:
  v41 = sub_22D01666C();
  v42 = sub_22D01666C();
  v43 = [objc_opt_self() attributeWithDomain:v41 name:v42];

  v44 = [objc_opt_self() targetWithPid_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2730, &unk_22D0196E0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_22D018FE0;
  *(v45 + 32) = v43;
  v46 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v47 = v44;
  v48 = v43;
  v49 = sub_22D01666C();
  sub_22CEEE550();
  v50 = sub_22D0167CC();
  v51 = v47;

  v52 = [v46 initWithExplanation:v49 target:v47 attributes:v50];

  aBlock[0] = 0;
  if (![v52 acquireWithError_])
  {
    v75 = aBlock[0];
    v76 = sub_22D01416C();

    swift_willThrow();
    sub_22CEEEBB4();
    v77 = swift_allocError();
    *v78 = 0;
    v103();

    goto LABEL_22;
  }

  v87 = v48;
  v53 = aBlock[0];
  (v103)(0);
  sub_22D01566C();

  v54 = sub_22D01563C();
  v55 = v91;
  sub_22D01654C();
  v56 = a7 * 1000.0;
  if (COERCE__INT64(fabs(a7 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v56 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  v103 = v51;
  if (v56 >= 9.22337204e18)
  {
    goto LABEL_32;
  }

  *v24 = v56;
  v57 = v92;
  v58 = v93;
  (*(v92 + 104))(v24, *MEMORY[0x277D85178], v93);
  v59 = v95;
  sub_22D01655C();
  (*(v57 + 8))(v24, v58);
  v102 = *(v96 + 8);
  v102(v55, v101);
  v100 = *(v94 + 104);
  v60 = swift_allocObject();
  v60[2] = v52;
  v60[3] = v54;
  aBlock[4] = sub_22CF7D8C8;
  aBlock[5] = v60;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF8B58;
  aBlock[3] = &block_descriptor_5;
  v61 = _Block_copy(aBlock);
  v62 = v52;

  v63 = v97;
  sub_22D0164EC();
  v105 = MEMORY[0x277D84F90];
  sub_22CF1A0D4(&qword_28143FA60, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CF0EDA8();
  v64 = v99;
  v65 = v90;
  sub_22D016ADC();
  MEMORY[0x2318C5A90](v59, v63, v64, v61);
  _Block_release(v61);

  (*(v89 + 8))(v64, v65);
  (*(v98 + 8))(v63, v88);
  v102(v59, v101);

LABEL_22:
  v79 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22CF7D2B4(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_22CF7D314(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(v6 + 32))(a1, a2, v5, v6);
}

uint64_t sub_22CF7D384(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 40))(a1, v3, v4);
}

void sub_22CF7D3E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, void *a8)
{
  sub_22D01562C();
  if (a2)
  {
    if (qword_28143FB08 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814443D8);

    v15 = sub_22D01636C();
    v16 = sub_22D0168EC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v36 = v18;
      *v17 = 136380675;
      *(v17 + 4) = sub_22CEEE31C(a4, a5, &v36);
      _os_log_impl(&dword_22CEE1000, v15, v16, "Error launching app %{private}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    sub_22CEEEBB4();
    v19 = swift_allocError();
    *v20 = a2;
    v21 = a2;
    v22 = v19;
    goto LABEL_22;
  }

  if (!a1)
  {
    if (qword_28143FB08 != -1)
    {
      swift_once();
    }

    v27 = sub_22D01637C();
    __swift_project_value_buffer(v27, qword_2814443D8);

    v28 = sub_22D01636C();
    v29 = sub_22D0168EC();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_21;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36 = v31;
    *v30 = 136380675;
    *(v30 + 4) = sub_22CEEE31C(a4, a5, &v36);
    v32 = "App may have launched but no handle was returned %{private}s";
    goto LABEL_20;
  }

  v23 = a8[5];
  v24 = a8[6];
  __swift_project_boxed_opaque_existential_1(a8 + 2, v23);
  v25 = (*(v24 + 32))(a4, a5, v23, v24);
  if (!v25)
  {
    if (qword_28143FB08 != -1)
    {
      swift_once();
    }

    v33 = sub_22D01637C();
    __swift_project_value_buffer(v33, qword_2814443D8);

    v28 = sub_22D01636C();
    v29 = sub_22D0168EC();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_21;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36 = v31;
    *v30 = 136380675;
    *(v30 + 4) = sub_22CEEE31C(a4, a5, &v36);
    v32 = "Could not retrieve RBSProcessState for BSHandle %{private}s";
LABEL_20:
    _os_log_impl(&dword_22CEE1000, v28, v29, v32, v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x2318C6860](v31, -1, -1);
    MEMORY[0x2318C6860](v30, -1, -1);
LABEL_21:

    sub_22CEEEBB4();
    v22 = swift_allocError();
    v19 = v22;
    *v34 = 0;
LABEL_22:
    a6(v22, 1);
    v26 = v19;

    goto LABEL_11;
  }

  v35 = v25;
  a6(v25, 0);
  v26 = v35;

LABEL_11:
}

void sub_22CF7D83C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_22CF7D8CC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void (*a5)(char *, uint64_t), unint64_t a6, char a7, void (*a8)(void), double a9, uint64_t a10)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  *(v18 + 32) = a6;
  v54 = a7;
  *(v18 + 40) = a7;
  *(v18 + 48) = a9;
  v55 = a8;
  *(v18 + 56) = a8;
  *(v18 + 64) = a10;
  v19 = qword_28143FB08;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_22D01637C();
  __swift_project_value_buffer(v20, qword_2814443D8);

  v21 = sub_22D01636C();
  v22 = sub_22D01690C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock = v24;
    *v23 = 136380675;
    *(v23 + 4) = sub_22CEEE31C(a1, a2, &aBlock);
    _os_log_impl(&dword_22CEE1000, v21, v22, "Launching %{private}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x2318C6860](v24, -1, -1);
    MEMORY[0x2318C6860](v23, -1, -1);
  }

  v25 = __swift_project_boxed_opaque_existential_1(a3 + 7, a3[10]);
  v26 = *v25;
  v27 = *(*(*v25 + 40) + 16);
  os_unfair_lock_lock(v27);
  swift_beginAccess();
  v28 = *(v26 + 48);

  v29 = sub_22CF24034(a1, a2, v28);

  os_unfair_lock_unlock(v27);
  if ((v29 & 1) == 0)
  {
    v34 = sub_22D01636C();
    v35 = sub_22D0168EC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_22CEE1000, v34, v35, "Could not launch an unknown client", v36, 2u);
      MEMORY[0x2318C6860](v36, -1, -1);
    }

    sub_22CEEEBB4();
    v38 = swift_allocError();
    v39 = 2;
    goto LABEL_11;
  }

  v30 = a3[5];
  v31 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v30);
  v32 = (*(v31 + 32))(a1, a2, v30, v31);
  if (v32)
  {
    v33 = v32;
    sub_22CF7C6AC(v32, a5, a6, v54, v55, a10, a9);

    return;
  }

  v40 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  if (!v40)
  {
    v51 = sub_22D01636C();
    v52 = sub_22D0168EC();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_22CEE1000, v51, v52, "Could not create an app launch service", v53, 2u);
      MEMORY[0x2318C6860](v53, -1, -1);
    }

    sub_22CEEEBB4();
    v38 = swift_allocError();
    v39 = 1;
LABEL_11:
    *v37 = v39;
    v55();

    return;
  }

  v41 = v40;
  sub_22D01566C();
  v42 = sub_22D01563C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A60, &qword_22D019810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0187A0;
  v44 = *MEMORY[0x277D0ABF0];
  aBlock = sub_22D01667C();
  v58 = v45;
  sub_22D016BFC();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 1;
  sub_22CFF69BC(inited);
  swift_setDeallocating();
  sub_22CF7DF70(inited + 32);
  v46 = sub_22D0165CC();

  v47 = [objc_opt_self() optionsWithDictionary_];

  v48 = sub_22D01666C();
  v49 = swift_allocObject();
  v49[2] = v42;
  v49[3] = a1;
  v49[4] = a2;
  v49[5] = sub_22CF7DF24;
  v49[6] = v18;
  v49[7] = a3;
  v61 = sub_22CF7DFD8;
  v62 = v49;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_22CF7D83C;
  v60 = &block_descriptor_13;
  v50 = _Block_copy(&aBlock);

  [v41 openApplication:v48 withOptions:v47 completion:v50];
  _Block_release(v50);
}

void sub_22CF7DF24(void *a1, char a2)
{
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  if (a2)
  {
    v5 = *(v2 + 64);
    v3();
  }

  else
  {
    v6 = *(v2 + 48);
    v7 = *(v2 + 24);
    v8 = *(v2 + 32);
    v9 = *(v2 + 40);
    v10 = *(v2 + 16);
    sub_22CF7C6AC(a1, v7, v8, v9, v3, v4, v6);
  }
}

uint64_t sub_22CF7DF70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A68, &qword_22D019818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22CF7DFE8(void *a1, void (*a2)(char *, uint64_t), NSObject *a3, int a4, uint64_t a5, void *a6, uint64_t a7, void *a8, double a9)
{
  v106 = a8;
  v95 = a5;
  LODWORD(v104) = a4;
  v105 = a2;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v14 = sub_22D0164CC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v100 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D01653C();
  v99 = *(v19 - 8);
  v20 = *(v99 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v98 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_22D0164BC();
  v93 = *(v94 - 8);
  v23 = *(v93 + 64);
  MEMORY[0x28223BE20](v94, v24);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_22D01656C();
  v97 = *(v103 - 8);
  v27 = *(v97 + 64);
  v29 = MEMORY[0x28223BE20](v103, v28);
  v101 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v96 = &v88 - v32;
  v33 = [a1 process];
  if (v33)
  {
    v34 = v33;
    v91 = v14;
    v102 = a6;
    if (qword_28143FB08 != -1)
    {
      swift_once();
    }

    v88 = v26;
    v92 = sub_22D01637C();
    __swift_project_value_buffer(v92, qword_2814443D8);
    v107 = v34;

    v35 = sub_22D01636C();
    v36 = sub_22D01690C();

    v37 = os_log_type_enabled(v35, v36);
    v90 = v15;
    v89 = v19;
    if (v37)
    {
      v38 = a7;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 67240450;
      *(v39 + 4) = [v107 pid];

      *(v39 + 8) = 2082;
      *(v39 + 10) = sub_22CEEE31C(v105, a3, aBlock);
      _os_log_impl(&dword_22CEE1000, v35, v36, "Executing task for %{public}d with explanation %{public}s", v39, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x2318C6860](v40, -1, -1);
      v41 = v39;
      a7 = v38;
      MEMORY[0x2318C6860](v41, -1, -1);
    }

    else
    {
    }

    if (!v104)
    {
      if ([a1 taskState] == 4)
      {
        sub_22D01562C();
LABEL_37:
        v87 = *MEMORY[0x277D85DE8];
        v78 = v107;
        goto LABEL_38;
      }

      a3 = v107;
      v80 = sub_22D01636C();
      v81 = sub_22D0168EC();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 67240192;
        *(v82 + 4) = [a3 &_OBJC_LABEL_PROTOCOL___MCProfileConnectionObserver];

        _os_log_impl(&dword_22CEE1000, v80, v81, "Rejecting low-priority task for %{public}d because process is unavailable", v82, 8u);
        MEMORY[0x2318C6860](v82, -1, -1);
      }

      else
      {

        v80 = a3;
      }

      sub_22D01562C();
      if (qword_28143FAE8 == -1)
      {
LABEL_32:
        __swift_project_value_buffer(v92, qword_281444390);

        v107 = sub_22D01636C();
        v83 = sub_22D0168EC();

        if (os_log_type_enabled(v107, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          aBlock[0] = v85;
          *v84 = 136380675;
          *(v84 + 4) = sub_22CEEE31C(a7, v106, aBlock);
          _os_log_impl(&dword_22CEE1000, v107, v83, "Did not launch process for push token delivery: %{private}s", v84, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v85);
          MEMORY[0x2318C6860](v85, -1, -1);
          MEMORY[0x2318C6860](v84, -1, -1);

          goto LABEL_34;
        }

        goto LABEL_37;
      }

LABEL_45:
      swift_once();
      goto LABEL_32;
    }

    v104 = a7;
    v49 = sub_22D01666C();
    v50 = sub_22D01666C();
    v51 = [objc_opt_self() attributeWithDomain:v49 name:v50];

    v52 = [objc_opt_self() targetWithPid_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2730, &unk_22D0196E0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_22D018FE0;
    *(v53 + 32) = v51;
    v54 = objc_allocWithZone(MEMORY[0x277D46DB8]);
    v55 = v52;
    v56 = v51;
    v57 = sub_22D01666C();
    sub_22CEEE550();
    v58 = sub_22D0167CC();

    v59 = [v54 initWithExplanation:v57 target:v55 attributes:v58];

    aBlock[0] = 0;
    if ([v59 acquireWithError_])
    {
      v106 = v56;
      v60 = aBlock[0];
      sub_22D01562C();
      sub_22D01566C();

      v61 = sub_22D01563C();
      v62 = v101;
      sub_22D01654C();
      v63 = a9 * 1000.0;
      if (COERCE__INT64(fabs(a9 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v63 <= -9.22337204e18)
        {
          __break(1u);
        }

        else if (v63 < 9.22337204e18)
        {
          v64 = v88;
          *v88 = v63;
          v65 = v93;
          v66 = v94;
          (*(v93 + 104))(v64, *MEMORY[0x277D85178], v94);
          v67 = v96;
          sub_22D01655C();
          (*(v65 + 8))(v64, v66);
          v105 = *(v97 + 8);
          v105(v62, v103);
          v104 = *(v95 + 104);
          v68 = swift_allocObject();
          v68[2] = v59;
          v68[3] = v61;
          aBlock[4] = sub_22CF7F1DC;
          aBlock[5] = v68;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_22CEF8B58;
          aBlock[3] = &block_descriptor_47_1;
          v69 = _Block_copy(aBlock);
          v102 = v59;

          v70 = v98;
          sub_22D0164EC();
          v108 = MEMORY[0x277D84F90];
          sub_22CF1A0D4(&qword_28143FA60, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
          sub_22CF0EDA8();
          v71 = v100;
          v72 = v91;
          sub_22D016ADC();
          MEMORY[0x2318C5A90](v67, v70, v71, v69);
          _Block_release(v69);

          (*(v90 + 8))(v71, v72);
          (*(v99 + 8))(v70, v89);
          v105(v67, v103);

LABEL_35:
          v86 = *MEMORY[0x277D85DE8];
          return;
        }

        __break(1u);
        goto LABEL_45;
      }

      __break(1u);
    }

    else
    {
      v73 = aBlock[0];
      a3 = sub_22D01416C();

      swift_willThrow();
      sub_22D01562C();
      if (qword_28143FAE8 == -1)
      {
LABEL_24:
        __swift_project_value_buffer(v92, qword_281444390);

        v74 = sub_22D01636C();
        v75 = sub_22D0168EC();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          aBlock[0] = v77;
          *v76 = 136380675;
          *(v76 + 4) = sub_22CEEE31C(v104, v106, aBlock);
          _os_log_impl(&dword_22CEE1000, v74, v75, "Did not launch process for push token delivery: %{private}s", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v77);
          MEMORY[0x2318C6860](v77, -1, -1);
          MEMORY[0x2318C6860](v76, -1, -1);
        }

        goto LABEL_35;
      }
    }

    swift_once();
    goto LABEL_24;
  }

  if (qword_28143FB08 != -1)
  {
    swift_once();
  }

  v42 = sub_22D01637C();
  __swift_project_value_buffer(v42, qword_2814443D8);
  v43 = sub_22D01636C();
  v44 = sub_22D01690C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_22CEE1000, v43, v44, "Cannot execute task; process does not exist", v45, 2u);
    MEMORY[0x2318C6860](v45, -1, -1);
  }

  sub_22D01562C();
  if (qword_28143FAE8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v42, qword_281444390);

  v107 = sub_22D01636C();
  v46 = sub_22D0168EC();

  if (os_log_type_enabled(v107, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock[0] = v48;
    *v47 = 136380675;
    *(v47 + 4) = sub_22CEEE31C(a7, v106, aBlock);
    _os_log_impl(&dword_22CEE1000, v107, v46, "Did not launch process for push token delivery: %{private}s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x2318C6860](v48, -1, -1);
    MEMORY[0x2318C6860](v47, -1, -1);
LABEL_34:

    goto LABEL_35;
  }

  v78 = v107;
  v79 = *MEMORY[0x277D85DE8];
LABEL_38:
}

uint64_t sub_22CF7EE60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v1 invalidate];
  return sub_22D01562C();
}

uint64_t sub_22CF7EE9C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22CF7EF00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_22CF7EF50(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ProcessManagerTaskExecutionOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessManagerTaskExecutionOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProcessManagerTaskExecutionOptions.Priority(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProcessManagerTaskExecutionOptions.Priority(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22CF7F184()
{
  result = qword_27D9F2A70;
  if (!qword_27D9F2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2A70);
  }

  return result;
}

uint64_t sub_22CF7F1F0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_22CF7F24C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_22CF460CC((v0 + 5));

  return swift_deallocClassInstance();
}

uint64_t sub_22CF7F2C0()
{
  v1 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 16) = xmmword_22D0187A0;
  *(inited + 40) = 0x800000022D01FA90;
  swift_beginAccess();
  v3 = *(v0 + 24);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_5:
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F25F8, &unk_22D018B50);
    *(inited + 48) = v5;
    v7 = sub_22CF11C44(inited);
    swift_setDeallocating();
    sub_22CF7F464(inited + 32);
    os_unfair_lock_unlock(v1);
    return v7;
  }

  v5 = sub_22CEE561C(v4, 0);
  v8 = sub_22CEE56A4(&v9, v5 + 4, v4, v3);

  result = sub_22CEE57FC();
  if (v8 == v4)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF7F464(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CF7F4CC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v1 = *(v0 + 72);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  v4 = *(v0 + 136);

  v5 = *(v0 + 144);

  v6 = *(v0 + 152);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  v7 = *(v0 + 200);

  sub_22CF460CC(v0 + 208);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 224));
  return v0;
}

uint64_t sub_22CF7F554()
{
  sub_22CF7F4CC();

  return swift_deallocClassInstance();
}

uint64_t sub_22CF7F5AC()
{
  result = sub_22D01483C();
  if (v1 <= 0x3F)
  {
    result = sub_22D0146BC();
    if (v2 <= 0x3F)
    {
      result = sub_22D01430C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22CF7F658(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_22CF7FA64;
  *(v8 + 24) = v7;
  v11[4] = sub_22CEF3C48;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_22CEF3C20;
  v11[3] = &block_descriptor_6;
  v9 = _Block_copy(v11);
  swift_unknownObjectRetain();

  dispatch_sync(v6, v9);
  swift_unknownObjectRelease();
  _Block_release(v9);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF7F7D4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A78, &unk_22D01B130);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v24 - v16;
  v18 = *a2;
  v19 = a2[1];
  v20 = type metadata accessor for XPCInputParticipant.ActivityUpdate();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  sub_22CF26EA8(v17, v18, v19);
  swift_endAccess();
  v21 = type metadata accessor for Activity();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  swift_beginAccess();
  sub_22CF0BC5C(v12, v18, v19);
  swift_endAccess();
  v22 = sub_22D01430C();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  swift_beginAccess();
  sub_22CF3318C(v7, v18, v19);
  swift_endAccess();
  return sub_22CF28F14();
}

uint64_t sub_22CF7FA64()
{
  v1 = v0[3];
  *(v0[2] + 216) = v0[4];
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_22CF7FA90()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22CF2737C();
  }

  return result;
}

id sub_22CF7FB48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2B20, &qword_22D019C18);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v16 - v4;
  v6 = &v0[OBJC_IVAR____TtC11SessionCore35ActivityPreferenceReplicationFilter_filterDidUpdate];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC11SessionCore35ActivityPreferenceReplicationFilter_appSettingsLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2B28, &qword_22D019C20);
  v8 = swift_allocObject();
  *(v8 + 20) = 0;
  *(v8 + 16) = 0;
  *&v0[v7] = v8;
  v9 = &v0[OBJC_IVAR____TtC11SessionCore35ActivityPreferenceReplicationFilter_lockedAppSettings];
  v10 = type metadata accessor for ActivityPreferenceReplicationFilter();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v16.receiver = v0;
  v16.super_class = v10;
  v11 = objc_msgSendSuper2(&v16, sel_init);
  v12 = sub_22D01681C();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v14 = v11;
  sub_22CF80110(0, 0, v5, &unk_22D019C30, v13);

  return v14;
}

uint64_t sub_22CF7FCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_22D01430C();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22CF7FD98, 0, 0);
}

uint64_t sub_22CF7FD98()
{
  if (sub_22CF80F40())
  {
    v2 = v0[5];
    v1 = v0[6];
    v3 = v0[3];
    v4 = v0[4];
    sub_22D0142FC();
    v5 = [objc_opt_self() sharedSettingsModel];
    sub_22D0142FC();
    sub_22D01424C();
    v7 = v6;
    v8 = *(v4 + 8);
    v8(v2, v3);
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v9 = v0[2];
    v10 = sub_22D01637C();
    __swift_project_value_buffer(v10, qword_2814442F0);
    v11 = v9;
    v12 = v5;
    v13 = sub_22D01636C();
    v14 = sub_22D01690C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[2];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412802;
      *(v16 + 4) = v15;
      *(v16 + 12) = 2112;
      *(v16 + 14) = v12;
      *v17 = v15;
      v17[1] = v12;
      *(v16 + 22) = 2048;
      *(v16 + 24) = v7;
      v18 = v15;
      v19 = v12;
      _os_log_impl(&dword_22CEE1000, v13, v14, "%@ received %@ after %f seconds", v16, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2380, &unk_22D019C50);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v17, -1, -1);
      MEMORY[0x2318C6860](v16, -1, -1);
    }

    v20 = v0[2];

    [v12 registerObserver_];
    v21 = *(v20 + OBJC_IVAR____TtC11SessionCore35ActivityPreferenceReplicationFilter_appSettingsLock);
    v22 = swift_task_alloc();
    *(v22 + 16) = v20;
    *(v22 + 24) = v12;
    os_unfair_lock_lock((v21 + 20));
    sub_22CF811DC((v21 + 16));
    os_unfair_lock_unlock((v21 + 20));
    v23 = v0[6];
    v24 = v0[3];

    v8(v23, v24);
  }

  v26 = v0[5];
  v25 = v0[6];

  v27 = v0[1];

  return v27();
}

uint64_t sub_22CF80070(_BYTE *a1, uint64_t a2, void *a3)
{
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2B18, &qword_22D019C10);
  v9[0] = a3;
  v6 = OBJC_IVAR____TtC11SessionCore35ActivityPreferenceReplicationFilter_lockedAppSettings;
  swift_beginAccess();
  v7 = a3;
  sub_22CF811F8(v9, a2 + v6);
  result = swift_endAccess();
  *a1 = 1;
  return result;
}

uint64_t sub_22CF80110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2B20, &qword_22D019C18);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_22CEEB6DC(a3, v28 - v12, &qword_27D9F2B20, &qword_22D019C18);
  v14 = sub_22D01681C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_22CEEC3D8(v13, &qword_27D9F2B20, &qword_22D019C18);
  }

  else
  {
    sub_22D01680C();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_22D0167FC();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_22D0166AC() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_22CEEC3D8(a3, &qword_27D9F2B20, &qword_22D019C18);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22CEEC3D8(a3, &qword_27D9F2B20, &qword_22D019C18);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

void sub_22CF80434(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unsigned __int8 *a5@<X8>)
{
  if (*a1 != 1)
  {
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814442F0);
    v15 = sub_22D01636C();
    v16 = sub_22D0168CC();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_16;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22CEE1000, v15, v16, "appSettings not set, allowing replication", v17, 2u);
    v18 = v17;
    goto LABEL_15;
  }

  v9 = OBJC_IVAR____TtC11SessionCore35ActivityPreferenceReplicationFilter_lockedAppSettings;
  swift_beginAccess();
  sub_22CEEB6DC(a2 + v9, v32, &qword_27D9F2B10, &unk_22D01B930);
  if (!v32[3])
  {
    sub_22CEEC3D8(v32, &qword_27D9F2B10, &unk_22D01B930);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2B18, &qword_22D019C10);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v19 = sub_22D01637C();
    __swift_project_value_buffer(v19, qword_2814442F0);
    v20 = a2;
    v15 = sub_22D01636C();
    v21 = sub_22D0168EC();

    if (!os_log_type_enabled(v15, v21))
    {
      goto LABEL_16;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33 = v23;
    *v22 = 136315138;
    sub_22CEEB6DC(a2 + v9, v32, &qword_27D9F2B10, &unk_22D01B930);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2B10, &unk_22D01B930);
    v24 = sub_22D01669C();
    v26 = sub_22CEEE31C(v24, v25, &v33);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_22CEE1000, v15, v21, "appSettings %s not set or not correct, allowing replication", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x2318C6860](v23, -1, -1);
    v18 = v22;
LABEL_15:
    MEMORY[0x2318C6860](v18, -1, -1);
LABEL_16:

LABEL_17:
    v13 = 1;
    goto LABEL_18;
  }

  v10 = v33;
  v11 = sub_22D01666C();
  v12 = [v10 resolvedSettingsForBundleIdentifier_];

  if (!v12)
  {
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v27 = sub_22D01637C();
    __swift_project_value_buffer(v27, qword_2814442F0);

    v28 = sub_22D01636C();
    v29 = sub_22D01690C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_22CEEE31C(a3, a4, v32);
      _os_log_impl(&dword_22CEE1000, v28, v29, "no appSettings for  %s, allowing replication", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x2318C6860](v31, -1, -1);
      MEMORY[0x2318C6860](v30, -1, -1);
    }

    goto LABEL_17;
  }

  v13 = [v12 allowLiveActivitiesForApp];

  swift_unknownObjectRelease();
LABEL_18:
  *a5 = v13;
}

id sub_22CF808B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityPreferenceReplicationFilter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22CF80970(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC11SessionCore35ActivityPreferenceReplicationFilter_filterDidUpdate);
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_22CF80A18(v4);
}

char *sub_22CF80994(char *result)
{
  v1 = *&result[OBJC_IVAR____TtC11SessionCore35ActivityPreferenceReplicationFilter_filterDidUpdate];
  if (v1)
  {
    v2 = *&result[OBJC_IVAR____TtC11SessionCore35ActivityPreferenceReplicationFilter_filterDidUpdate + 8];
    v3 = result;
    v4 = sub_22CF80C18(v1);
    v1(v4);

    return sub_22CF80A18(v1);
  }

  return result;
}

uint64_t sub_22CF80A18(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22CF80A28(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22CF80B20;

  return v7(a1);
}

uint64_t sub_22CF80B20()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22CF80C18(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22CF80C28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22CF80CDC;

  return sub_22CF7FCCC(a1, v4, v5, v6);
}

uint64_t sub_22CF80CDC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22CF80DD0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22CF81278;

  return sub_22CF80A28(a1, v5);
}

uint64_t sub_22CF80E88(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22CF80CDC;

  return sub_22CF80A28(a1, v5);
}

uint64_t sub_22CF80F40()
{
  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v8 = sub_22D01637C();
    __swift_project_value_buffer(v8, qword_2814442F0);
    v1 = sub_22D01636C();
    v9 = sub_22D0168EC();
    if (os_log_type_enabled(v1, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22CEE1000, v1, v9, "Unable to determine device class from MobileGestalt - defaulting to replication filters not supported", v10, 2u);
      MEMORY[0x2318C6860](v10, -1, -1);
    }

    goto LABEL_16;
  }

  v1 = v0;
  deviceClassNumber = MobileGestalt_get_deviceClassNumber();
  if (deviceClassNumber != 1)
  {
    v11 = deviceClassNumber;
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v12 = sub_22D01637C();
    __swift_project_value_buffer(v12, qword_2814442F0);
    v13 = sub_22D01636C();
    v14 = sub_22D01690C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = v11;
      _os_log_impl(&dword_22CEE1000, v13, v14, "Replication filters not supported on deviceClass %d", v15, 8u);
      MEMORY[0x2318C6860](v15, -1, -1);
    }

LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  if (qword_28143DA98 != -1)
  {
    swift_once();
  }

  v3 = sub_22D01637C();
  __swift_project_value_buffer(v3, qword_2814442F0);
  v4 = sub_22D01636C();
  v5 = sub_22D01690C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    v7 = 1;
    *(v6 + 4) = 1;
    _os_log_impl(&dword_22CEE1000, v4, v5, "Replication filters supported on deviceClass %d", v6, 8u);
    MEMORY[0x2318C6860](v6, -1, -1);
  }

  else
  {

    v7 = 1;
  }

LABEL_17:

  return v7;
}

uint64_t sub_22CF811F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2B10, &unk_22D01B930);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF8127C()
{
  v13[0] = sub_22D01697C();
  v1 = *(v13[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v13[0], v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D01691C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v9 = sub_22D01653C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  *(v0 + 16) = -1;
  sub_22CEEC38C();
  sub_22D01650C();
  v13[1] = MEMORY[0x277D84F90];
  sub_22CF65F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  sub_22D016ADC();
  (*(v1 + 104))(v5, *MEMORY[0x277D85268], v13[0]);
  *(v0 + 24) = sub_22D0169BC();
  sub_22CF8150C();
  return v0;
}

uint64_t sub_22CF81498()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 16));

  return swift_deallocClassInstance();
}

void sub_22CF8150C()
{
  sub_22D0155EC();
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_22CF81814;
  v9[5] = v2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22CEF261C;
  v9[3] = &block_descriptor_7;
  v3 = _Block_copy(v9);

  v4 = sub_22D0166AC();

  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + 16), v1, v3);
  swift_endAccess();

  _Block_release(v3);
  if (v1)
  {
    if (qword_27D9F1E50 != -1)
    {
      swift_once();
    }

    v5 = sub_22D01637C();
    __swift_project_value_buffer(v5, qword_27D9F40D0);
    v6 = sub_22D01636C();
    v7 = sub_22D0168EC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22CEE1000, v6, v7, "Could not register for stuck client notifications", v8, 2u);
      MEMORY[0x2318C6860](v8, -1, -1);
    }
  }
}

uint64_t sub_22CF816F4()
{
  state64[7] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    state64[0] = 0;
    v1 = result;
    swift_beginAccess();
    notify_get_state(*(v1 + 16), state64);
    v2 = sub_22D016DEC();
    sub_22CFAB920(0xD000000000000013, 0x800000022D01FCF0, 0x696C436B63757453, 0xEB00000000746E65, 0x696C436B63757453, 0xEB00000000746E65, v2, v3);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22CF8181C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22CF8187C(v1);
  }

  return result;
}

void sub_22CF8187C(uint64_t a1)
{
  v3 = type metadata accessor for ActivityParticipantEvent(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3 - 8, v6);
  v44 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v37 - v10;
  v12 = *(v1 + 16);
  v13 = *(v12 + 16);
  os_unfair_lock_lock(v13);
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = *(v1 + 88);
  os_unfair_lock_unlock(v13);
  if (Strong)
  {
    v16 = *(v12 + 16);
    os_unfair_lock_lock(v16);
    sub_22CF81C68(a1, v1, &v45);
    os_unfair_lock_unlock(v16);
    v17 = v45;
    v18 = v45[2];
    v19 = v44;
    if (v18)
    {
      ObjectType = swift_getObjectType();
      v42 = *(v15 + 24);
      v43 = v15 + 24;
      v21 = *(v4 + 80);
      v37[1] = v17;
      v22 = v17 + ((v21 + 32) & ~v21);
      v23 = *(v4 + 72);
      *&v24 = 136446210;
      v38 = v24;
      v40 = ObjectType;
      v41 = v11;
      v39 = v23;
      do
      {
        sub_22CF1C22C(v22, v11, type metadata accessor for ActivityParticipantEvent);
        if (qword_27D9F1E38 != -1)
        {
          swift_once();
        }

        v25 = sub_22D01637C();
        __swift_project_value_buffer(v25, qword_27D9F40A0);
        sub_22CF1C22C(v11, v19, type metadata accessor for ActivityParticipantEvent);
        v26 = sub_22D01636C();
        v27 = sub_22D01690C();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v45 = v29;
          *v28 = v38;
          v30 = v15;
          v31 = Strong;
          v32 = *v19;
          v33 = *(v44 + 8);

          sub_22CF82794(v44, type metadata accessor for ActivityParticipantEvent);
          v34 = sub_22CEEE31C(v32, v33, &v45);
          v19 = v44;

          *(v28 + 4) = v34;
          Strong = v31;
          v15 = v30;
          v11 = v41;
          _os_log_impl(&dword_22CEE1000, v26, v27, "Ending activity because frequent push permission was revoked: %{public}s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v35 = v29;
          v23 = v39;
          MEMORY[0x2318C6860](v35, -1, -1);
          v36 = v28;
          ObjectType = v40;
          MEMORY[0x2318C6860](v36, -1, -1);
        }

        else
        {

          sub_22CF82794(v19, type metadata accessor for ActivityParticipantEvent);
        }

        v42(v11, ObjectType, v15);
        sub_22CF82794(v11, type metadata accessor for ActivityParticipantEvent);
        v22 += v23;
        --v18;
      }

      while (v18);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_22CF81C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v99 = type metadata accessor for ActivityParticipantEvent(0);
  v96 = *(v99 - 8);
  v8 = *(v96 + 64);
  v10 = MEMORY[0x28223BE20](v99, v9);
  v98 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v97 = &v88 - v13;
  v115 = type metadata accessor for Activity();
  v110 = *(v115 - 8);
  v14 = *(v110 + 64);
  v16 = MEMORY[0x28223BE20](v115, v15);
  v111 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v109 = &v88 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3850, &unk_22D019D30);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20 - 8, v22);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v112 = (&v88 - v27);
  v28 = sub_22D01495C();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v103 = sub_22D01486C();
  v31 = *(v103 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v103, v33);
  v35 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D01494C();
  v102 = v35;
  sub_22D01485C();
  v36 = *(a1 + 64);
  v104 = a1 + 64;
  v37 = 1 << *(a1 + 32);
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  else
  {
    v38 = -1;
  }

  v39 = v38 & v36;

  v100 = a2;
  result = swift_beginAccess();
  v41 = 0;
  v42 = v31;
  v43 = (v37 + 63) >> 6;
  v44 = (v31 + 16);
  v105 = MEMORY[0x277D84F90];
  v116 = v25;
  do
  {
LABEL_6:
    if (!v39)
    {
      do
      {
        v47 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v47 >= v43)
        {

          result = (*(v42 + 8))(v102, v103);
          *a3 = v105;
          return result;
        }

        v39 = *(v104 + 8 * v47);
        ++v41;
      }

      while (!v39);
      v41 = v47;
    }

    v45 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v46 = v45 | (v41 << 6);
  }

  while ((*(*(a1 + 56) + v46) & 1) != 0);
  v95 = v44;
  v90 = v43;
  v91 = v42;
  v93 = a3;
  v94 = v4;
  v92 = a1;
  v48 = (*(a1 + 48) + 16 * v46);
  v49 = *v48;
  v113 = v48[1];
  v114 = v49;
  v50 = *(v100 + 72);
  v51 = *(v50 + 64);
  v101 = v50 + 64;
  v52 = 1 << *(v50 + 32);
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  else
  {
    v53 = -1;
  }

  v54 = v53 & v51;
  v55 = (v52 + 63) >> 6;

  v106 = v50;

  v56 = 0;
  v57 = v111;
  v108 = v55;
LABEL_15:
  for (i = v56; ; i = v56)
  {
    v59 = v116;
    if (!v54)
    {
      break;
    }

    v60 = i;
LABEL_27:
    v62 = __clz(__rbit64(v54));
    v54 &= v54 - 1;
    v63 = v62 | (v60 << 6);
    v64 = (*(v106 + 48) + 16 * v63);
    v66 = *v64;
    v65 = v64[1];
    v67 = v109;
    sub_22CF1C22C(*(v106 + 56) + *(v110 + 72) * v63, v109, type metadata accessor for Activity);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
    v69 = *(v68 + 48);
    v70 = v116;
    *v116 = v66;
    v70[1] = v65;
    v59 = v70;
    sub_22CF0A72C(v67, v70 + v69, type metadata accessor for Activity);
    (*(*(v68 - 8) + 56))(v59, 0, 1, v68);

    v56 = v60;
    v57 = v111;
LABEL_28:
    v71 = v112;
    sub_22CF82724(v59, v112);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
    if ((*(*(v72 - 8) + 48))(v71, 1, v72) == 1)
    {

      v4 = v94;
      a3 = v93;
      a1 = v92;
      v42 = v91;
      v43 = v90;
      v44 = v95;
      goto LABEL_6;
    }

    v73 = v71[1];
    v107 = *v71;
    sub_22CF0A72C(v71 + *(v72 + 48), v57, type metadata accessor for Activity);
    v74 = v57 + *(v115 + 24);
    if (sub_22D014F9C() == v114 && v75 == v113)
    {

      v55 = v108;
    }

    else
    {
      v76 = sub_22D016DFC();

      v55 = v108;
      if ((v76 & 1) == 0)
      {
        sub_22CF82794(v57, type metadata accessor for Activity);

        continue;
      }
    }

    v77 = *(v57 + *(v115 + 36));
    if (*(v77 + 16))
    {
      v89 = sub_22D01483C();
      v79 = *(v89 - 8);
      v88 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v80 = v97;
      (*v95)(&v97[*(v99 + 24)], v102, v103);
      type metadata accessor for ActivityParticipantEvent.EventType(0);
      swift_storeEnumTagMultiPayload();
      v81 = v99;
      (*(v79 + 16))(&v80[*(v99 + 28)], v77 + v88, v89);
      v82 = v81[9];
      v83 = sub_22D0146BC();
      (*(*(v83 - 8) + 56))(&v80[v82], 1, 1, v83);
      *v80 = v107;
      *(v80 + 1) = v73;
      *(v80 + 2) = 0;
      *(v80 + 3) = 0;
      v84 = &v80[v81[8]];
      *v84 = v100;
      *(v84 + 1) = &off_28402A658;
      v80[v81[10]] = 0;
      sub_22CF1C22C(v80, v98, type metadata accessor for ActivityParticipantEvent);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = sub_22CFCE570(0, v105[2] + 1, 1, v105);
      }

      v86 = v105[2];
      v85 = v105[3];
      v57 = v111;
      if (v86 >= v85 >> 1)
      {
        v105 = sub_22CFCE570(v85 > 1, v86 + 1, 1, v105);
      }

      sub_22CF82794(v97, type metadata accessor for ActivityParticipantEvent);
      sub_22CF82794(v57, type metadata accessor for Activity);
      v87 = v105;
      v105[2] = v86 + 1;
      result = sub_22CF0A72C(v98, v87 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v86, type metadata accessor for ActivityParticipantEvent);
      v55 = v108;
      goto LABEL_15;
    }

    result = sub_22CF82794(v57, type metadata accessor for Activity);
  }

  if (v55 <= i + 1)
  {
    v61 = i + 1;
  }

  else
  {
    v61 = v55;
  }

  v56 = v61 - 1;
  while (1)
  {
    v60 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v60 >= v55)
    {
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      (*(*(v78 - 8) + 56))(v59, 1, 1, v78);
      v54 = 0;
      goto LABEL_28;
    }

    v54 = *(v101 + 8 * v60);
    ++i;
    if (v54)
    {
      goto LABEL_27;
    }
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_22CF82638()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  v2 = v0[8];

  v3 = v0[9];

  sub_22CF460CC((v0 + 10));

  return swift_deallocClassInstance();
}

uint64_t sub_22CF826B4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + 16) + 16);
  os_unfair_lock_lock(v4);
  *(v2 + 88) = a2;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_22CF82724(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3850, &unk_22D019D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF82794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22CF8281C()
{
  v1 = *v0;
  sub_22D016EAC();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x2318C6020](v2);
  return sub_22D016ECC();
}

uint64_t sub_22CF8286C()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x2318C6020](v1);
}

uint64_t sub_22CF828A4()
{
  v1 = *v0;
  sub_22D016EAC();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x2318C6020](v2);
  return sub_22D016ECC();
}

void *sub_22CF828F0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_22CF82910(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_22CF82928()
{
  v1 = *v0;
  sub_22D016EAC();
  if (v1)
  {
    v2 = 10;
  }

  else
  {
    v2 = 5;
  }

  MEMORY[0x2318C6020](v2);
  return sub_22D016ECC();
}

uint64_t sub_22CF8297C()
{
  if (*v0)
  {
    v1 = 10;
  }

  else
  {
    v1 = 5;
  }

  return MEMORY[0x2318C6020](v1);
}

uint64_t sub_22CF829B8()
{
  v1 = *v0;
  sub_22D016EAC();
  if (v1)
  {
    v2 = 10;
  }

  else
  {
    v2 = 5;
  }

  MEMORY[0x2318C6020](v2);
  return sub_22D016ECC();
}

void *sub_22CF82A08@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 10)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_22CF82A28(uint64_t *a1@<X8>)
{
  v2 = 5;
  if (*v1)
  {
    v2 = 10;
  }

  *a1 = v2;
}

uint64_t sub_22CF82A44()
{
  v1 = *v0;
  sub_22D016EAC();
  MEMORY[0x2318C6020](v1 + 1);
  return sub_22D016ECC();
}

uint64_t sub_22CF82ABC()
{
  v1 = *v0;
  sub_22D016EAC();
  MEMORY[0x2318C6020](v1 + 1);
  return sub_22D016ECC();
}

uint64_t sub_22CF82B00@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22CF832EC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22CF82B64()
{
  result = sub_22D01430C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D01430C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22D01430C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22CF82DD0()
{
  result = sub_22D01430C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PowerLog.UpdateEvent.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PowerLog.UpdateEvent.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Activity.CreationSource(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Activity.CreationSource(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22CF83138()
{
  result = qword_27D9F2B30;
  if (!qword_27D9F2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2B30);
  }

  return result;
}

unint64_t sub_22CF83190()
{
  result = qword_27D9F2B38;
  if (!qword_27D9F2B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2B38);
  }

  return result;
}

unint64_t sub_22CF831E8()
{
  result = qword_27D9F2B40;
  if (!qword_27D9F2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2B40);
  }

  return result;
}

unint64_t sub_22CF83240()
{
  result = qword_27D9F2B48;
  if (!qword_27D9F2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2B48);
  }

  return result;
}

unint64_t sub_22CF83298()
{
  result = qword_27D9F2B50;
  if (!qword_27D9F2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2B50);
  }

  return result;
}

uint64_t sub_22CF832EC(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

id sub_22CF83348(void *a1)
{
  [a1 selector];
  if (sub_22D0143EC())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

id sub_22CF833C0(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D014BEC();
  sub_22D016A3C();
  (*(v5 + 8))(v9, v4);
  sub_22D014BDC();
  v10 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22CF834EC(void *a1, uint64_t a2, char *a3, int a4)
{
  sub_22D014BDC();
  v8 = sub_22D01666C();

  v9 = [objc_opt_self() interfaceWithIdentifier_];

  v26 = sub_22CF83348;
  v27 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22CEE5F40;
  v25 = &block_descriptor_47_2;
  v10 = _Block_copy(&v22);
  v11 = &unk_284040918;

  v12 = objc_opt_self();
  v13 = [v12 protocolForProtocol:v11 interpreter:v10];
  _Block_release(v10);

  [v9 setClient_];
  v14 = [v12 protocolForProtocol_];
  [v9 setServer_];

  v15 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v26 = sub_22CF84E84;
  v27 = v16;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_53_0;
  v17 = _Block_copy(&v22);
  v18 = a3;

  [a1 setInterruptionHandler_];
  _Block_release(v17);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a4;
  v26 = sub_22CF84EAC;
  v27 = v19;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_59_1;
  v20 = _Block_copy(&v22);
  v21 = v18;

  [a1 setInvalidationHandler_];
  _Block_release(v20);
}

void sub_22CF83860(uint64_t a1, uint64_t a2, unsigned int a3, const char *a4)
{
  v7 = sub_22D01637C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D01635C();
  v13 = sub_22D01636C();
  v14 = sub_22D0168EC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22CEE1000, v13, v14, a4, v15, 2u);
    MEMORY[0x2318C6860](v15, -1, -1);
  }

  (*(v8 + 8))(v12, v7);
  v16 = *(*(a2 + OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_lock) + 16);
  os_unfair_lock_lock(v16);
  swift_beginAccess();
  sub_22CFB3474(0, a3);
  swift_endAccess();
  os_unfair_lock_unlock(v16);
}

id sub_22CF83B90(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient_lock;
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *(v4 + 16) = v5;
  *v5 = 0;
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_bufferedPresentationUpdate] = 0;
  v1[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_pendingAck] = 0;
  v6 = OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_predicate;
  v7 = sub_22D014A7C();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient_connection] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PresentationObservationServiceClient();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_22CF83C98(uint64_t a1)
{
  v46 = a1;
  v2 = sub_22D01637C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D0148AC();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2C88, qword_22D01A200);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v43 - v16;
  v18 = sub_22D014A7C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*&v1[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient_connection] remoteTarget])
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  aBlock = v52;
  v48 = v53;
  if (*(&v53 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2C98, &qword_22D01A218);
    if (swift_dynamicCast())
    {
      v24 = v51;
      v25 = *(*&v1[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient_lock] + 16);
      os_unfair_lock_lock(v25);
      v26 = OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_predicate;
      swift_beginAccess();
      sub_22CF849CC(&v1[v26], v17);
      if ((*(v19 + 48))(v17, 1, v18) == 1)
      {
        sub_22CEEC3D8(v17, &unk_27D9F2C88, qword_22D01A200);
      }

      else
      {
        (*(v19 + 32))(v23, v17, v18);
        if ((v1[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_pendingAck] & 1) == 0)
        {
          v32 = v1;
          v1[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_pendingAck] = 1;
          v33 = sub_22D014A6C();
          (*(v19 + 8))(v23, v18);
          os_unfair_lock_unlock(v25);
          if (v33)
          {

            sub_22D01489C();
            sub_22CF84A3C(&qword_28143F6C0, MEMORY[0x277CB93C8]);
            v34 = sub_22D01517C();
            v35 = sub_22D0141EC();
            v37 = v36;

            sub_22D01566C();
            v38 = sub_22D01563C();
            v39 = sub_22D0141DC();
            v40 = swift_allocObject();
            *(v40 + 16) = v32;
            *(v40 + 24) = v38;
            v49 = sub_22CF84A84;
            v50 = v40;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v48 = sub_22CF217E0;
            *(&v48 + 1) = &block_descriptor_8;
            v41 = _Block_copy(&aBlock);
            v42 = v32;

            [v24 activityPresentationsDidChange:v39 completion:v41];
            sub_22CEE7524(v35, v37);
            _Block_release(v41);

            swift_unknownObjectRelease();

            return (*(v44 + 8))(v12, v45);
          }

          return swift_unknownObjectRelease();
        }

        (*(v19 + 8))(v23, v18);
        v31 = *&v1[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_bufferedPresentationUpdate];
        *&v1[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_bufferedPresentationUpdate] = v46;
      }

      os_unfair_lock_unlock(v25);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_22CEEC3D8(&aBlock, &qword_27D9F2B10, &unk_22D01B930);
  }

  sub_22D01635C();
  v27 = sub_22D01636C();
  v28 = sub_22D0168EC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_22CEE1000, v27, v28, "Client does not implement expected interface", v29, 2u);
    MEMORY[0x2318C6860](v29, -1, -1);
  }

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_22CF842A8(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient_lock) + 16);
  os_unfair_lock_lock(v3);
  *(a2 + OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_pendingAck) = 0;
  v4 = *(a2 + OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_bufferedPresentationUpdate);
  *(a2 + OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_bufferedPresentationUpdate) = 0;
  os_unfair_lock_unlock(v3);
  if (v4)
  {
    sub_22CF83C98(v4);
  }

  return sub_22D01562C();
}

id sub_22CF84378(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for PresentationObservationServiceClient()
{
  result = qword_28143DC78;
  if (!qword_28143DC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22CF84484()
{
  sub_22CF8454C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22CF8454C()
{
  if (!qword_28143F678)
  {
    sub_22D014A7C();
    v0 = sub_22D016A8C();
    if (!v1)
    {
      atomic_store(v0, &qword_28143F678);
    }
  }
}

uint64_t sub_22CF845A4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2C88, qword_22D01A200);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v17 - v6;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(*(v1 + OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient_lock) + 16);
    os_unfair_lock_lock(v10);
    v11 = sub_22D014A7C();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v7, a1, v11);
    (*(v12 + 56))(v7, 0, 1, v11);
    v13 = OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient__lock_predicate;
    swift_beginAccess();
    sub_22CF8495C(v7, v1 + v13);
    swift_endAccess();
    os_unfair_lock_unlock(v10);
    v14 = *(*(v9 + OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_lock) + 16);
    os_unfair_lock_lock(v14);
    v15 = OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer__lock_presentations;
    swift_beginAccess();
    v16 = *(v9 + v15);

    os_unfair_lock_unlock(v14);
    sub_22CF83C98(v16);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22CF8495C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2C88, qword_22D01A200);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF849CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2C88, qword_22D01A200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF84A3C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22CF84A8C(void *a1)
{
  v2 = v1;
  v4 = sub_22D01637C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 remoteProcess];
  v11 = sub_22D01666C();
  v12 = [v10 hasEntitlement_];

  if (v12)
  {
    v13 = objc_allocWithZone(type metadata accessor for PresentationObservationServiceClient());
    v14 = a1;
    v15 = sub_22CF83B90(v14);
    v16 = [v14 remoteProcess];
    v17 = [v16 pid];

    *&v15[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceClient_delegate + 8] = &off_28402A988;
    swift_unknownObjectWeakAssign();
    v18 = *(*&v2[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_lock] + 16);
    os_unfair_lock_lock(v18);
    v19 = OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer__lock_clients;
    swift_beginAccess();
    v20 = v15;
    v21 = *&v2[v19];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *&v2[v19];
    *&v2[v19] = 0x8000000000000000;
    sub_22CFBFA04(v20, v17, isUniquelyReferenced_nonNull_native);
    *&v2[v19] = v34;
    swift_endAccess();
    os_unfair_lock_unlock(v18);
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    *(v23 + 24) = v2;
    *(v23 + 32) = v17;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_22CF84E78;
    *(v24 + 24) = v23;
    aBlock[4] = sub_22CEE5B1C;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CEE5AA0;
    aBlock[3] = &block_descriptor_44_0;
    v25 = _Block_copy(aBlock);
    v26 = v20;
    v27 = v2;

    [v14 configureConnection_];
    _Block_release(v25);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      [v14 activate];
    }
  }

  else
  {
    sub_22D01635C();
    v29 = sub_22D01636C();
    v30 = sub_22D0168EC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22CEE1000, v29, v30, "Process is not entitled to listen to the presentation service", v31, 2u);
      MEMORY[0x2318C6860](v31, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    [a1 invalidate];
  }
}

uint64_t sub_22CF84EF0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22CF84F50(v1);
  }

  return result;
}

void sub_22CF84F50(uint64_t a1)
{
  v3 = type metadata accessor for ActivityParticipantEvent(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3 - 8, v6);
  v44 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v37 - v10;
  v12 = *(v1 + 16);
  v13 = *(v12 + 16);
  os_unfair_lock_lock(v13);
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = *(v1 + 88);
  os_unfair_lock_unlock(v13);
  if (Strong)
  {
    v16 = *(v12 + 16);
    os_unfair_lock_lock(v16);
    sub_22CF8533C(a1, v1, &v45);
    os_unfair_lock_unlock(v16);
    v17 = v45;
    v18 = v45[2];
    v19 = v44;
    if (v18)
    {
      ObjectType = swift_getObjectType();
      v42 = *(v15 + 24);
      v43 = v15 + 24;
      v21 = *(v4 + 80);
      v37[1] = v17;
      v22 = v17 + ((v21 + 32) & ~v21);
      v23 = *(v4 + 72);
      *&v24 = 136446210;
      v38 = v24;
      v40 = ObjectType;
      v41 = v11;
      v39 = v23;
      do
      {
        sub_22CF1C22C(v22, v11, type metadata accessor for ActivityParticipantEvent);
        if (qword_28143DAB8 != -1)
        {
          swift_once();
        }

        v25 = sub_22D01637C();
        __swift_project_value_buffer(v25, qword_281444338);
        sub_22CF1C22C(v11, v19, type metadata accessor for ActivityParticipantEvent);
        v26 = sub_22D01636C();
        v27 = sub_22D01690C();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v45 = v29;
          *v28 = v38;
          v30 = v15;
          v31 = Strong;
          v32 = *v19;
          v33 = *(v44 + 8);

          sub_22CF82794(v44, type metadata accessor for ActivityParticipantEvent);
          v34 = sub_22CEEE31C(v32, v33, &v45);
          v19 = v44;

          *(v28 + 4) = v34;
          Strong = v31;
          v15 = v30;
          v11 = v41;
          _os_log_impl(&dword_22CEE1000, v26, v27, "Ending activity because authorization was revoked: %{public}s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v35 = v29;
          v23 = v39;
          MEMORY[0x2318C6860](v35, -1, -1);
          v36 = v28;
          ObjectType = v40;
          MEMORY[0x2318C6860](v36, -1, -1);
        }

        else
        {

          sub_22CF82794(v19, type metadata accessor for ActivityParticipantEvent);
        }

        v42(v11, ObjectType, v15);
        sub_22CF82794(v11, type metadata accessor for ActivityParticipantEvent);
        v22 += v23;
        --v18;
      }

      while (v18);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_22CF8533C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v99 = type metadata accessor for ActivityParticipantEvent(0);
  v96 = *(v99 - 8);
  v8 = *(v96 + 64);
  v10 = MEMORY[0x28223BE20](v99, v9);
  v98 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v97 = &v88 - v13;
  v115 = type metadata accessor for Activity();
  v110 = *(v115 - 8);
  v14 = *(v110 + 64);
  v16 = MEMORY[0x28223BE20](v115, v15);
  v111 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v109 = &v88 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3850, &unk_22D019D30);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20 - 8, v22);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v112 = (&v88 - v27);
  v28 = sub_22D01495C();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v103 = sub_22D01486C();
  v31 = *(v103 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v103, v33);
  v35 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D01494C();
  v102 = v35;
  sub_22D01485C();
  v36 = *(a1 + 64);
  v104 = a1 + 64;
  v37 = 1 << *(a1 + 32);
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  else
  {
    v38 = -1;
  }

  v39 = v38 & v36;

  v100 = a2;
  result = swift_beginAccess();
  v41 = 0;
  v42 = v31;
  v43 = (v37 + 63) >> 6;
  v44 = (v31 + 16);
  v105 = MEMORY[0x277D84F90];
  v116 = v25;
  do
  {
LABEL_6:
    if (!v39)
    {
      do
      {
        v47 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v47 >= v43)
        {

          result = (*(v42 + 8))(v102, v103);
          *a3 = v105;
          return result;
        }

        v39 = *(v104 + 8 * v47);
        ++v41;
      }

      while (!v39);
      v41 = v47;
    }

    v45 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v46 = v45 | (v41 << 6);
  }

  while ((*(*(a1 + 56) + v46) & 1) != 0);
  v95 = v44;
  v90 = v43;
  v91 = v42;
  v93 = a3;
  v94 = v4;
  v92 = a1;
  v48 = (*(a1 + 48) + 16 * v46);
  v49 = *v48;
  v113 = v48[1];
  v114 = v49;
  v50 = *(v100 + 72);
  v51 = *(v50 + 64);
  v101 = v50 + 64;
  v52 = 1 << *(v50 + 32);
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  else
  {
    v53 = -1;
  }

  v54 = v53 & v51;
  v55 = (v52 + 63) >> 6;

  v106 = v50;

  v56 = 0;
  v57 = v111;
  v108 = v55;
LABEL_15:
  for (i = v56; ; i = v56)
  {
    v59 = v116;
    if (!v54)
    {
      break;
    }

    v60 = i;
LABEL_27:
    v62 = __clz(__rbit64(v54));
    v54 &= v54 - 1;
    v63 = v62 | (v60 << 6);
    v64 = (*(v106 + 48) + 16 * v63);
    v66 = *v64;
    v65 = v64[1];
    v67 = v109;
    sub_22CF1C22C(*(v106 + 56) + *(v110 + 72) * v63, v109, type metadata accessor for Activity);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
    v69 = *(v68 + 48);
    v70 = v116;
    *v116 = v66;
    v70[1] = v65;
    v59 = v70;
    sub_22CF0A72C(v67, v70 + v69, type metadata accessor for Activity);
    (*(*(v68 - 8) + 56))(v59, 0, 1, v68);

    v56 = v60;
    v57 = v111;
LABEL_28:
    v71 = v112;
    sub_22CF82724(v59, v112);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
    if ((*(*(v72 - 8) + 48))(v71, 1, v72) == 1)
    {

      v4 = v94;
      a3 = v93;
      a1 = v92;
      v42 = v91;
      v43 = v90;
      v44 = v95;
      goto LABEL_6;
    }

    v73 = v71[1];
    v107 = *v71;
    sub_22CF0A72C(v71 + *(v72 + 48), v57, type metadata accessor for Activity);
    v74 = v57 + *(v115 + 24);
    if (sub_22D014F9C() == v114 && v75 == v113)
    {

      v55 = v108;
    }

    else
    {
      v76 = sub_22D016DFC();

      v55 = v108;
      if ((v76 & 1) == 0)
      {
        sub_22CF82794(v57, type metadata accessor for Activity);

        continue;
      }
    }

    v77 = *(v57 + *(v115 + 36));
    if (*(v77 + 16))
    {
      v89 = sub_22D01483C();
      v79 = *(v89 - 8);
      v88 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v80 = v97;
      (*v95)(&v97[*(v99 + 24)], v102, v103);
      type metadata accessor for ActivityParticipantEvent.EventType(0);
      swift_storeEnumTagMultiPayload();
      v81 = v99;
      (*(v79 + 16))(&v80[*(v99 + 28)], v77 + v88, v89);
      v82 = v81[9];
      v83 = sub_22D0146BC();
      (*(*(v83 - 8) + 56))(&v80[v82], 1, 1, v83);
      *v80 = v107;
      *(v80 + 1) = v73;
      *(v80 + 2) = 0;
      *(v80 + 3) = 0;
      v84 = &v80[v81[8]];
      *v84 = v100;
      *(v84 + 1) = &off_28402AB40;
      v80[v81[10]] = 0;
      sub_22CF1C22C(v80, v98, type metadata accessor for ActivityParticipantEvent);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = sub_22CFCE570(0, v105[2] + 1, 1, v105);
      }

      v86 = v105[2];
      v85 = v105[3];
      v57 = v111;
      if (v86 >= v85 >> 1)
      {
        v105 = sub_22CFCE570(v85 > 1, v86 + 1, 1, v105);
      }

      sub_22CF82794(v97, type metadata accessor for ActivityParticipantEvent);
      sub_22CF82794(v57, type metadata accessor for Activity);
      v87 = v105;
      v105[2] = v86 + 1;
      result = sub_22CF0A72C(v98, v87 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v86, type metadata accessor for ActivityParticipantEvent);
      v55 = v108;
      goto LABEL_15;
    }

    result = sub_22CF82794(v57, type metadata accessor for Activity);
  }

  if (v55 <= i + 1)
  {
    v61 = i + 1;
  }

  else
  {
    v61 = v55;
  }

  v56 = v61 - 1;
  while (1)
  {
    v60 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v60 >= v55)
    {
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      (*(*(v78 - 8) + 56))(v59, 1, 1, v78);
      v54 = 0;
      goto LABEL_28;
    }

    v54 = *(v101 + 8 * v60);
    ++i;
    if (v54)
    {
      goto LABEL_27;
    }
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_22CF85D30()
{
  sub_22CF460CC(v0 + 16);
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PermissionsError()
{
  result = qword_27D9F2CA0;
  if (!qword_27D9F2CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22CF85EEC()
{
  sub_22CF85F60();
  if (v0 <= 0x3F)
  {
    sub_22D01502C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22CF85F60()
{
  if (!qword_27D9F2CB0)
  {
    v0 = sub_22D0145EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9F2CB0);
    }
  }
}

id sub_22CF85FA8(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D01519C();
  sub_22D016A3C();
  (*(v5 + 8))(v9, v4);
  sub_22D01518C();
  v10 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22CF860D4(void *a1, uint64_t a2)
{
  sub_22D01518C();
  v4 = sub_22D01666C();

  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v16 = sub_22CF86338;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_22D008590;
  v15 = &block_descriptor_13_0;
  v10 = _Block_copy(&v12);
  [a1 setInterruptionHandler_];
  _Block_release(v10);
  v16 = sub_22CF863D4;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_22D008590;
  v15 = &block_descriptor_16;
  v11 = _Block_copy(&v12);
  [a1 setInvalidationHandler_];
  _Block_release(v11);
}

uint64_t sub_22CF86338()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E08, qword_22D01A460);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22D0187A0;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x800000022D020110;
  sub_22D016E7C();
}

uint64_t sub_22CF863D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E08, qword_22D01A460);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22D0187A0;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x800000022D0200F0;
  sub_22D016E7C();
}

id sub_22CF86534()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateCaptureServiceServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22CF865E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = *__swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_stateCaptureManager), *(v2 + OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_stateCaptureManager + 24));
    v6 = sub_22CF685BC(a1, a2);
    v7 = MEMORY[0x277D84F98];
    if (v6)
    {
      v9 = *(v6 + 48);
      v8 = *(v6 + 56);

      v11 = v9(v10);

      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2DA0, &unk_22D01A450);
      *&v60 = v11;
      sub_22CF1D288(&v60, v59);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v7;
      sub_22CFBFA18(v59, a1, a2, isUniquelyReferenced_nonNull_native);

      return v62;
    }

    return v7;
  }

  v57 = (v2 + OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_stateCaptureManager);
  v13 = *__swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_stateCaptureManager), *(v2 + OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_stateCaptureManager + 24));
  if (qword_281441CE0 != -1)
  {
LABEL_34:
    swift_once();
  }

  v56 = off_281441CE8[0];
  v14 = *(off_281441CE8[0] + 16);
  os_unfair_lock_lock(v14);
  swift_beginAccess();
  v15 = *(v13 + 16);

  v17 = sub_22CF7C51C(v16);
  os_unfair_lock_unlock(v14);
  v13 = 0;
  v18 = v17 + 56;
  v58 = v17;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 56);
  v22 = (v19 + 63) >> 6;
  v53 = MEMORY[0x277D84F98];
  while (1)
  {
    while (1)
    {
      if (!v21)
      {
        while (1)
        {
          v23 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v23 >= v22)
          {

            return v53;
          }

          v21 = *(v18 + 8 * v23);
          ++v13;
          if (v21)
          {
            v13 = v23;
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_34;
      }

LABEL_17:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v25 = (*(v58 + 48) + ((v13 << 10) | (16 * v24)));
      v27 = *v25;
      v26 = v25[1];
      v28 = *__swift_project_boxed_opaque_existential_1(v57, v57[3]);
      v29 = *(v56 + 16);

      os_unfair_lock_lock(v29);
      swift_beginAccess();
      v30 = *(v28 + 16);
      if (!*(v30 + 16))
      {
        goto LABEL_10;
      }

      v31 = sub_22CEEC698(v27, v26);
      if ((v32 & 1) == 0)
      {

LABEL_10:
        os_unfair_lock_unlock(v29);
        goto LABEL_11;
      }

      v33 = *(*(v30 + 56) + 8 * v31);

      os_unfair_lock_unlock(v29);
      if (v33)
      {
        break;
      }

LABEL_11:
    }

    v35 = *(v33 + 48);
    v34 = *(v33 + 56);

    v37 = v35(v36);

    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2DA0, &unk_22D01A450);
    *&v60 = v37;
    sub_22CF1D288(&v60, v59);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v63 = v53;
    v39 = sub_22CEEC698(v27, v26);
    v40 = v53[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      break;
    }

    if (v53[3] >= v42)
    {
      if (v52)
      {
        if ((v38 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v55 = v38;
        sub_22CFB72D0();
        if ((v55 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

LABEL_27:

      v53 = v63;
      v45 = (v63[7] + 32 * v39);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      sub_22CF1D288(v59, v45);
    }

    else
    {
      v54 = v38;
      sub_22CFBA2E8(v42, v52);
      v43 = sub_22CEEC698(v27, v26);
      if ((v54 & 1) != (v44 & 1))
      {
        goto LABEL_37;
      }

      v39 = v43;
      if (v54)
      {
        goto LABEL_27;
      }

LABEL_29:
      v46 = v63;
      v63[(v39 >> 6) + 8] |= 1 << v39;
      v47 = (v46[6] + 16 * v39);
      *v47 = v27;
      v47[1] = v26;
      sub_22CF1D288(v59, (v46[7] + 32 * v39));

      v48 = v46[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_36;
      }

      v53 = v46;
      v46[2] = v50;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_22D016E1C();
  __break(1u);
  return result;
}

id sub_22CF86B14(void *a1)
{
  v3 = [a1 remoteProcess];
  v4 = sub_22D01666C();
  v5 = [v3 hasEntitlement_];

  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_22CF86D08;
    *(v7 + 24) = v6;
    v12[4] = sub_22CEE5B1C;
    v12[5] = v7;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_22CEE5AA0;
    v12[3] = &block_descriptor_9;
    v8 = _Block_copy(v12);
    v9 = v1;

    [a1 configureConnection_];
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      [a1 activate];
    }
  }

  else
  {

    return [a1 invalidate];
  }

  return result;
}

uint64_t sub_22CF86D34()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  v2 = [objc_opt_self() enumeratorWithOptions_];
  v25[4] = sub_22CF88644;
  v25[5] = v1;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1107296256;
  v25[2] = sub_22CF885EC;
  v25[3] = &block_descriptor_10;
  v3 = _Block_copy(v25);

  [v2 setFilter_];
  _Block_release(v3);
  v4 = [v2 nextObject];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = [v5 bundleIdentifier];
      if (v7)
      {
        v9 = v7;
        v10 = sub_22D01667C();
        v12 = v11;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_22CFCE000(0, *(v6 + 2) + 1, 1, v6);
        }

        v14 = *(v6 + 2);
        v13 = *(v6 + 3);
        if (v14 >= v13 >> 1)
        {
          v6 = sub_22CFCE000((v13 > 1), v14 + 1, 1, v6);
        }

        *(v6 + 2) = v14 + 1;
        v15 = &v6[16 * v14];
        *(v15 + 4) = v10;
        *(v15 + 5) = v12;
        v8 = [v2 nextObject];
      }

      else
      {

        v8 = [v2 nextObject];
      }

      v5 = v8;
    }

    while (v5);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v16 = sub_22CF7BDC4(v6);

  v17 = sub_22CF87CE4();
  v18 = sub_22CF7BDC4(v17);

  if (*(v18 + 16) <= *(v16 + 16) >> 3)
  {
    v25[0] = v16;

    sub_22CF627A8(v18);
    v19 = v25[0];
  }

  else
  {

    v19 = sub_22CF62C50(v18, v16);
  }

  if (*(v16 + 16) <= *(v18 + 16) >> 3)
  {
    goto LABEL_20;
  }

  v18 = sub_22CF62C50(v16, v18);

  v20 = *(v19 + 16);
  if (v20)
  {
    while (1)
    {
      v16 = sub_22CEE561C(v20, 0);
      v19 = sub_22CEE56A4(v25, (v16 + 32), v20, v19);
      sub_22CEE57FC();
      if (v19 == v20)
      {
        break;
      }

      __break(1u);
LABEL_20:
      v25[0] = v18;
      sub_22CF627A8(v16);

      v18 = v25[0];
      v20 = *(v19 + 16);
      if (!v20)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:

    v16 = MEMORY[0x277D84F90];
  }

  sub_22CF874AC(v16);

  v21 = *(v18 + 16);
  if (!v21)
  {
    goto LABEL_25;
  }

  v22 = sub_22CEE561C(*(v18 + 16), 0);
  v23 = sub_22CEE56A4(v25, v22 + 4, v21, v18);
  sub_22CEE57FC();
  if (v23 != v21)
  {
    __break(1u);
LABEL_25:

    v22 = MEMORY[0x277D84F90];
  }

  sub_22CF880A4(v22);
}

uint64_t sub_22CF870F4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22CF86D34();
  }

  return result;
}

uint64_t sub_22CF8714C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22CF86D34();
  }

  return result;
}

uint64_t sub_22CF871C8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 224);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + 224);
    }

    swift_unknownObjectRetain();
    sub_22D016B3C();
    sub_22D01640C();
    sub_22CF87454();
    result = sub_22D01689C();
    v6 = v21;
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v2;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_20:
      sub_22CEE57FC();

      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 96));
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 136));
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 176));

      v19 = *(v1 + 224);

      return v1;
    }

    while (1)
    {
      sub_22D0163FC();

      v8 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_22D016BAC())
      {
        sub_22D01640C();
        swift_dynamicCast();
        v16 = v8;
        v17 = v9;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_20;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF873FC()
{
  sub_22CF871C8();

  return swift_deallocClassInstance();
}

unint64_t sub_22CF87454()
{
  result = qword_27D9F2678;
  if (!qword_27D9F2678)
  {
    sub_22D01640C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2678);
  }

  return result;
}

uint64_t sub_22CF874AC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2700, &unk_22D01AEA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v22 - v7;
  v9 = sub_22D015C8C();
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x28223BE20](v9, v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = (v13 + 48);
    v22 = (v13 + 8);
    v23 = (v13 + 32);
    v18 = (a1 + 40);
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;

      sub_22CF876A4(v19, v20, v8);

      if ((*v17)(v8, 1, v9) == 1)
      {
        result = sub_22CF886DC(v8);
      }

      else
      {
        (*v23)(v15, v8, v9);
        v21 = v2[11];
        __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
        sub_22D015F6C();
        result = (*v22)(v15, v9);
      }

      v18 += 2;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_22CF876A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a1;
  v6 = sub_22D0162DC();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v57 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D0161DC();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = v64[8];
  MEMORY[0x28223BE20](v10, v12);
  v66 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2700, &unk_22D01AEA0);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v62 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v63 = &v57 - v20;
  v21 = *__swift_project_boxed_opaque_existential_1(v3 + 12, v3[15]);
  v22 = [objc_opt_self() enumeratorWithOptions_];
  v72 = sub_22CF88784;
  v73 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v70 = sub_22CF885EC;
  v71 = &block_descriptor_9;
  v23 = _Block_copy(&aBlock);

  [v22 setFilter_];
  _Block_release(v23);
  v24 = [v22 nextObject];
  if (v24)
  {
    v25 = v24;
    v26 = MEMORY[0x277D84F90];
    do
    {
      while (1)
      {
        v27 = [v25 bundleIdentifier];
        if (v27)
        {
          break;
        }

        v25 = [v22 nextObject];
        if (!v25)
        {
          goto LABEL_13;
        }
      }

      v60 = v3;
      v61 = a3;
      v28 = v27;
      v29 = sub_22D01667C();
      v31 = v30;

      v32 = a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_22CFCE000(0, *(v26 + 2) + 1, 1, v26);
      }

      v34 = *(v26 + 2);
      v33 = *(v26 + 3);
      if (v34 >= v33 >> 1)
      {
        v26 = sub_22CFCE000((v33 > 1), v34 + 1, 1, v26);
      }

      *(v26 + 2) = v34 + 1;
      v35 = &v26[16 * v34];
      *(v35 + 4) = v29;
      *(v35 + 5) = v31;
      v25 = [v22 nextObject];
      a2 = v32;
      v3 = v60;
      a3 = v61;
    }

    while (v25);
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

LABEL_13:

  v36 = v67;
  aBlock = v67;
  v69 = a2;
  MEMORY[0x28223BE20](v37, v38);
  *(&v57 - 2) = &aBlock;
  v39 = sub_22CEE7430(sub_22CF88744, (&v57 - 4), v26);

  if (v39)
  {

    v40 = v66;
    sub_22D0161EC();
    v41 = v3[11];
    __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
    v42 = sub_22D015F2C();
    MEMORY[0x28223BE20](v42, v43);
    *(&v57 - 2) = v40;
    v44 = v62;
    sub_22CF11BC8(sub_22CF88764, v42, v62);

    v45 = v63;
    sub_22CF8866C(v44, v63);
    v46 = v64[1];
    v47 = v40;
    v48 = v65;
    v46(v47, v65);
    v49 = sub_22D015C8C();
    v50 = *(v49 - 8);
    LODWORD(v42) = (*(v50 + 48))(v45, 1, v49);
    sub_22CF886DC(v45);
    if (v42 == 1 && (v51 = sub_22CFE04C4(v36, a2), v52))
    {
      v64 = v51;

      v53 = v66;
      sub_22D0161EC();
      v54 = v57;
      sub_22D015B2C();
      sub_22D015B1C();

      (*(v58 + 8))(v54, v59);
      v46(v53, v48);
      return (*(v50 + 56))(a3, 0, 1, v49);
    }

    else
    {
      return (*(v50 + 56))(a3, 1, 1, v49);
    }
  }

  else
  {
    v56 = sub_22D015C8C();
    return (*(*(v56 - 8) + 56))(a3, 1, 1, v56);
  }
}

char *sub_22CF87CE4()
{
  v40 = sub_22D0161DC();
  v1 = *(v40 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v40, v3);
  v39 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22D015B9C();
  v5 = *(v42 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v42, v7);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22D015C8C();
  v10 = *(v41 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v41, v12);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v16 = sub_22D015F2C();
  v17 = *(v16 + 16);
  if (v17)
  {
    v19 = *(v10 + 16);
    v18 = v10 + 16;
    v20 = *(v18 + 64);
    v37[1] = v16;
    v21 = v16 + ((v20 + 32) & ~v20);
    v47 = *(v18 + 56);
    v48 = v19;
    v46 = (v5 + 88);
    v45 = *MEMORY[0x277D4D548];
    v49 = v18;
    v22 = v1;
    v23 = (v18 - 8);
    v24 = (v5 + 8);
    v38 = (v22 + 8);
    v25 = MEMORY[0x277D84F90];
    v27 = v41;
    v26 = v42;
    v19(v14, v21, v41);
    while (1)
    {
      sub_22D015BDC();
      v28 = (*v46)(v9, v26);
      if (v28 == v45)
      {
        (*v24)(v9, v26);
        v29 = v39;
        sub_22D015C5C();
        v30 = sub_22D01619C();
        v43 = v31;
        v44 = v30;
        (*v38)(v29, v40);
        (*v23)(v14, v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_22CFCE000(0, *(v25 + 2) + 1, 1, v25);
        }

        v33 = *(v25 + 2);
        v32 = *(v25 + 3);
        if (v33 >= v32 >> 1)
        {
          v25 = sub_22CFCE000((v32 > 1), v33 + 1, 1, v25);
        }

        *(v25 + 2) = v33 + 1;
        v34 = &v25[16 * v33];
        v35 = v43;
        *(v34 + 4) = v44;
        *(v34 + 5) = v35;
        v27 = v41;
        v26 = v42;
      }

      else
      {
        (*v23)(v14, v27);
        (*v24)(v9, v26);
      }

      v21 += v47;
      if (!--v17)
      {
        break;
      }

      v48(v14, v21, v27);
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v25;
}

uint64_t sub_22CF880A4(uint64_t a1)
{
  v2 = v1;
  v46 = sub_22D0161DC();
  v4 = *(v46 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v46, v6);
  v43 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2700, &unk_22D01AEA0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v45 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v36 - v14;
  v44 = sub_22D015C8C();
  v16 = *(*(v44 - 8) + 64);
  result = MEMORY[0x28223BE20](v44, v17);
  v39 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v41 = (v19 + 48);
    v42 = (v4 + 8);
    v37 = (v19 + 8);
    v38 = (v19 + 32);
    v23 = (a1 + 40);
    do
    {
      v24 = *(v23 - 1);
      v25 = *v23;

      v26 = v43;
      sub_22D0161EC();
      v27 = v2[11];
      __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
      v28 = sub_22D015F2C();
      MEMORY[0x28223BE20](v28, v29);
      *(&v36 - 2) = v26;
      v30 = v45;
      sub_22CF11BC8(sub_22CF8864C, v28, v45);

      sub_22CF8866C(v30, v15);
      (*v42)(v26, v46);
      v31 = v44;
      if ((*v41)(v15, 1, v44) == 1)
      {
        result = sub_22CF886DC(v15);
      }

      else
      {
        v32 = *v38;
        v40 = v22;
        v33 = v39;
        v32(v39, v15, v31);
        v34 = v2[11];
        __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
        sub_22D015EFC();
        v35 = v33;
        v22 = v40;
        result = (*v37)(v35, v31);
      }

      v23 += 2;
      --v21;
    }

    while (v21);
  }

  return result;
}

uint64_t sub_22CF88418(uint64_t a1, uint64_t a2)
{
  v18[1] = a2;
  v2 = sub_22D0161DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D015B9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D015BDC();
  v14 = (*(v9 + 88))(v13, v8);
  v15 = *MEMORY[0x277D4D548];
  (*(v9 + 8))(v13, v8);
  if (v14 == v15)
  {
    sub_22D015C5C();
    v16 = sub_22D0161AC();
    (*(v3 + 8))(v7, v2);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_22CF885EC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_22CF8866C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2700, &unk_22D01AEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF886DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2700, &unk_22D01AEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*sub_22CF887D8())()
{
  v1 = *(v0 + OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_22CF8A7AC(&v4);
  os_unfair_lock_unlock(v1 + 4);
  if (!v4)
  {
    return 0;
  }

  v3 = v4;
  *(swift_allocObject() + 16) = v3;
  return sub_22CF8A7F0;
}

uint64_t sub_22CF88894@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_lock_didFire);
  v4 = *(a1 + OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_lock_didFire + 8);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22CF8A818;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  return sub_22CF80C18(v3);
}

uint64_t (*sub_22CF8891C(uint64_t a1, uint64_t a2))()
{
  result = sub_22CF887D8();
  if (result)
  {
    v4 = result;
    (result)(a2);

    return sub_22CF80A18(v4);
  }

  return result;
}

uint64_t sub_22CF8898C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22D01436C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *sub_22CF889F4()
{
  type metadata accessor for PreciseWakingTaskScheduler.Singleton();
  swift_allocObject();
  result = sub_22CF88A34();
  qword_28143DF48 = result;
  return result;
}

void *sub_22CF88A34()
{
  v25 = *v0;
  v26 = v0;
  v27 = sub_22D01697C();
  v1 = *(v27 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v27, v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D01691C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v9 = sub_22D01653C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v24[1] = sub_22CEEC38C();
  v24[4] = "larm";
  sub_22D0164EC();
  aBlock[0] = MEMORY[0x277D84F90];
  v24[3] = sub_22CF8A740(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8340(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  v12 = *MEMORY[0x277D85260];
  v13 = v1 + 104;
  v14 = *(v1 + 104);
  v24[2] = v13;
  v14(v5, v12, v27);
  v26[2] = sub_22D0169BC();
  sub_22D0164EC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22D016ADC();
  v14(v5, v12, v27);
  v15 = sub_22D0169BC();
  v16 = MEMORY[0x277D84F98];
  v17 = v26;
  v26[3] = v15;
  v17[4] = v16;
  v18 = v17[2];
  v19 = swift_allocObject();
  v20 = v25;
  *(v19 + 16) = v17;
  *(v19 + 24) = v20;
  aBlock[4] = sub_22CF8A788;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF2428;
  aBlock[3] = &block_descriptor_46_0;
  v21 = _Block_copy(aBlock);
  v22 = v18;

  xpc_set_event_stream_handler("com.apple.alarm", v22, v21);
  _Block_release(v21);

  return v17;
}

const char *sub_22CF88E28(void *a1)
{
  result = xpc_dictionary_get_string(a1, *MEMORY[0x277D86430]);
  if (result)
  {
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v2 = sub_22D01637C();
    __swift_project_value_buffer(v2, qword_2814443F0);
    v3 = sub_22D01636C();
    v4 = sub_22D01690C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136446210;
      v7 = sub_22D01670C();
      v9 = sub_22CEEE31C(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_22CEE1000, v3, v4, "Wake event received [alarm]: %{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x2318C6860](v6, -1, -1);
      MEMORY[0x2318C6860](v5, -1, -1);
    }

    sub_22D0166AC();
    xpc_set_event();

    return sub_22CF89348();
  }

  return result;
}

uint64_t sub_22CF88FD0(uint64_t a1)
{
  v3 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = *(v1 + 16);
  sub_22CF8A54C(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  sub_22CF8A60C(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22CF8A6E8;
  *(v10 + 24) = v9;
  aBlock[4] = sub_22CEF3C48;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF3C20;
  aBlock[3] = &block_descriptor_27;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF891B8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E18, &qword_22D01A5F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v16 - v6;
  v8 = sub_22D01436C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a2);
  sub_22CF8A54C(a2, v7);
  v14 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  swift_beginAccess();
  sub_22CEF57FC(v7, v12);
  swift_endAccess();
  return sub_22CEF5F4C();
}

uint64_t sub_22CF89348()
{
  v113 = sub_22D0164CC();
  v112 = *(v113 - 8);
  v1 = *(v112 + 64);
  MEMORY[0x28223BE20](v113, v2);
  v110 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_22D01653C();
  v109 = *(v111 - 8);
  v4 = *(v109 + 64);
  MEMORY[0x28223BE20](v111, v5);
  v108 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E18, &qword_22D01A5F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v116 = &v107 - v10;
  v128 = sub_22D01430C();
  v133 = *(v128 - 8);
  v11 = *(v133 + 64);
  MEMORY[0x28223BE20](v128, v12);
  v127 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  v129 = *(v134 - 8);
  v14 = *(v129 + 64);
  v16 = MEMORY[0x28223BE20](v134, v15);
  v115 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v126 = &v107 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v107 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v123 = &v107 - v26;
  v135 = sub_22D01436C();
  v27 = *(v135 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x28223BE20](v135, v29);
  v114 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v122 = &v107 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E20, &qword_22D01A5F8);
  v35 = *(*(v34 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v34 - 8, v36);
  v39 = &v107 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v107 - v41;
  v43 = sub_22D01659C();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43, v46);
  v48 = (&v107 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = *(v0 + 16);
  *v48 = v49;
  (*(v44 + 104))(v48, *MEMORY[0x277D85200], v43);
  v50 = v49;
  v51 = sub_22D0165BC();
  result = (*(v44 + 8))(v48, v43);
  if (v51)
  {
    swift_beginAccess();
    v107 = v0;
    v53 = *(v0 + 32);
    v54 = v53 + 64;
    v55 = 1 << *(v53 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & *(v53 + 64);
    v58 = (v55 + 63) >> 6;
    v130 = (v27 + 16);
    v119 = v27 + 32;
    v125 = (v133 + 8);
    v131 = v27;
    v133 = v27 + 8;
    v124 = v53;

    v59 = 0;
    v132 = MEMORY[0x277D84F90];
    v60 = v135;
    v121 = v24;
    v120 = v39;
    v118 = v42;
    v117 = v54;
    while (v57)
    {
      v61 = v59;
LABEL_17:
      v64 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v65 = v64 | (v61 << 6);
      v66 = v124;
      v67 = v131;
      (*(v131 + 16))(v122, *(v124 + 48) + *(v131 + 72) * v65, v60);
      v68 = *(v66 + 56) + *(v129 + 72) * v65;
      v69 = v123;
      sub_22CF8A54C(v68, v123);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E10, &qword_22D01A5E8);
      v71 = *(v70 + 48);
      v39 = v120;
      (*(v67 + 32))();
      sub_22CF8A60C(v69, &v39[v71]);
      (*(*(v70 - 8) + 56))(v39, 0, 1, v70);
      v24 = v121;
      v42 = v118;
      v54 = v117;
LABEL_18:
      sub_22CF8A670(v39, v42);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E10, &qword_22D01A5E8);
      if ((*(*(v72 - 8) + 48))(v42, 1, v72) == 1)
      {

        v80 = v132[2];
        v81 = v135;
        if (!v80)
        {
        }

        v82 = v132 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
        v83 = *(v129 + 72);
        v84 = (v129 + 56);
        v85 = v107;
        v86 = v131;
        v87 = v114;
        v129 += 56;
        do
        {
          v90 = v115;
          sub_22CF8A54C(v82, v115);
          (*v130)(v87, v90, v81);
          sub_22CF8A5B0(v90);
          swift_beginAccess();
          v91 = *(v85 + 32);
          v92 = sub_22CEF5CD8(v87);
          if (v93)
          {
            v94 = v92;
            v95 = *(v85 + 32);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v97 = *(v85 + 32);
            v136 = v97;
            *(v85 + 32) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_22CFB7BDC();
              v97 = v136;
            }

            v98 = *(v97 + 48) + *(v86 + 72) * v94;
            v99 = *(v131 + 8);
            v81 = v135;
            v99(v98, v135);
            v89 = v116;
            sub_22CF8A60C(*(v97 + 56) + v94 * v83, v116);
            sub_22CFBD9B0(v94, v97);
            v87 = v114;
            v99(v114, v81);
            v86 = v131;
            v100 = *(v85 + 32);
            *(v85 + 32) = v97;

            v88 = 0;
            v84 = v129;
          }

          else
          {
            (*v133)(v87, v81);
            v88 = 1;
            v89 = v116;
          }

          (*v84)(v89, v88, 1, v134);
          sub_22CEEC3D8(v89, &qword_27D9F2E18, &qword_22D01A5F0);
          swift_endAccess();
          v82 += v83;
          --v80;
        }

        while (v80);
        v101 = *(v85 + 24);
        v102 = swift_allocObject();
        *(v102 + 16) = v132;
        aBlock[4] = sub_22CF8A6E0;
        aBlock[5] = v102;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_22CEF8B58;
        aBlock[3] = &block_descriptor_11;
        v103 = _Block_copy(aBlock);
        v104 = v108;
        sub_22D0164EC();
        v136 = MEMORY[0x277D84F90];
        sub_22CF8A740(&qword_28143FA60, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
        sub_22CEE8340(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
        v105 = v110;
        v106 = v113;
        sub_22D016ADC();
        MEMORY[0x2318C5B10](0, v104, v105, v103);
        _Block_release(v103);
        (*(v112 + 8))(v105, v106);
        (*(v109 + 8))(v104, v111);
      }

      sub_22CF8A60C(&v42[*(v72 + 48)], v24);
      v73 = *(v134 + 20);
      v74 = v127;
      sub_22D0142DC();
      LOBYTE(v73) = sub_22D01428C();
      (*v125)(v74, v128);
      v60 = v135;
      if (v73)
      {
        sub_22CF8A54C(v24, v126);
        v75 = v132;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = sub_22CFCE598(0, v75[2] + 1, 1, v75);
        }

        v77 = v75[2];
        v76 = v75[3];
        v132 = v75;
        if (v77 >= v76 >> 1)
        {
          v132 = sub_22CFCE598(v76 > 1, v77 + 1, 1, v132);
        }

        sub_22CF8A5B0(v24);
        v78 = v132;
        v132[2] = v77 + 1;
        sub_22CF8A60C(v126, v78 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v77);
        v60 = v135;
      }

      else
      {
        sub_22CF8A5B0(v24);
      }

      result = (*v133)(v42, v60);
    }

    if (v58 <= v59 + 1)
    {
      v62 = v59 + 1;
    }

    else
    {
      v62 = v58;
    }

    v63 = v62 - 1;
    while (1)
    {
      v61 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v61 >= v58)
      {
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E10, &qword_22D01A5E8);
        (*(*(v79 - 8) + 56))(v39, 1, 1, v79);
        v57 = 0;
        v59 = v63;
        goto LABEL_18;
      }

      v57 = *(v54 + 8 * v61);
      ++v59;
      if (v57)
      {
        v59 = v61;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF89FD4(uint64_t a1)
{
  v2 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2, v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = &v8[*(result + 24)];
    v11 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = *(v6 + 72);
    do
    {
      sub_22CF8A54C(v11, v8);
      v14 = *v10;
      v13 = *(v10 + 1);

      v15 = sub_22CF8A5B0(v8);
      v14(v15);

      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_22CF8A0E4()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_22CF8A12C()
{
  v1 = OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_id;
  v2 = sub_22D01436C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_lock_didFire + 8);
  sub_22CF80A18(*(v0 + OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_lock_didFire));
  v4 = *(v0 + OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_lock);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22CF8A214()
{
  result = sub_22D01436C();
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

unint64_t sub_22CF8A2E0()
{
  result = sub_22D01436C();
  if (v1 <= 0x3F)
  {
    result = sub_22D01430C();
    if (v2 <= 0x3F)
    {
      result = sub_22CF8A37C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_22CF8A37C()
{
  result = qword_28143D8E0;
  if (!qword_28143D8E0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_28143D8E0);
  }

  return result;
}

uint64_t sub_22CF8A414(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_lock);
  os_unfair_lock_lock(v3 + 4);
  sub_22CF8A524();
  os_unfair_lock_unlock(v3 + 4);
  return sub_22CF80A18(a1);
}

uint64_t sub_22CF8A4A4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_lock_didFire);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_22CF80C18(v1);
  return sub_22CF80A18(v4);
}

uint64_t sub_22CF8A524()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22CF8A54C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF8A5B0(uint64_t a1)
{
  v2 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CF8A60C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF8A670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E20, &qword_22D01A5F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF8A740(unint64_t *a1, void (*a2)(uint64_t))
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

const char *sub_22CF8A788(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_22CF88E28(a1);
}

double sub_22CF8A7AC@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = *&v7;
    *a1 = v7;
  }

  return result;
}

uint64_t sub_22CF8A7F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22CF8A818()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22CF8A84C()
{
  v15 = sub_22D01697C();
  v0 = *(v15 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v15, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D01691C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v8 = sub_22D01653C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v14 = sub_22CEEC38C();
  sub_22D01651C();
  v17 = MEMORY[0x277D84F90];
  sub_22CF1A11C(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8340(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v0 + 104))(v4, *MEMORY[0x277D85268], v15);
  v11 = sub_22D0169BC();
  v12 = v16;
  *(v16 + 16) = v11;
  return v12;
}

uint64_t sub_22CF8AAA4()
{

  return swift_deallocClassInstance();
}

void sub_22CF8AB00()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    deviceSupportsDynamicIsland = MobileGestalt_get_deviceSupportsDynamicIsland();

    byte_281444380 = deviceSupportsDynamicIsland;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22CF8AB48(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x277D84F90];
  sub_22CF440C8(0, v1, 0);
  v2 = v30;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_22D016AEC();
  v7 = result;
  v8 = 0;
  v29 = *(a1 + 36);
  v27 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v28 = *v11;
    v13 = *(*(a1 + 56) + 8 * v7);

    result = sub_22D014BAC();
    v16 = *(v30 + 16);
    v15 = *(v30 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = v14;
      v26 = result;
      sub_22CF440C8((v15 > 1), v16 + 1, 1);
      v14 = v25;
      result = v26;
    }

    *(v30 + 16) = v16 + 1;
    v17 = (v30 + 32 * v16);
    v17[4] = v28;
    v17[5] = v12;
    v17[6] = result;
    v17[7] = v14;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v18 = *(a1 + 64 + 8 * v10);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v7 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (a1 + 72 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_22CF44CF8(v7, v29, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_22CF44CF8(v7, v29, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v27)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22CF8ADA8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  v3 = *(v0 + 128);

  return swift_deallocClassInstance();
}

uint64_t sub_22CF8AE2C()
{
  v2 = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29E8, &qword_22D019668);
  sub_22CF8B128();
  return sub_22D01646C();
}

uint64_t sub_22CF8AE88@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D01A630;
  *(inited + 32) = 7565169;
  *(inited + 40) = 0xE300000000000000;
  v6 = *(a1 + 24);

  v8 = sub_22CF8AB48(v7);

  if (*(v8 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
    v9 = sub_22D016D3C();
  }

  else
  {
    v9 = MEMORY[0x277D84F98];
  }

  v21 = v9;

  sub_22CF43CD4(v10, 1, &v21);
  if (v2)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    v11 = v21;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2020, &unk_22D01B140);
    *(inited + 48) = v11;
    *(inited + 72) = v12;
    *(inited + 80) = 0x64656B636F4C6975;
    *(inited + 88) = 0xE800000000000000;
    if (*(a1 + 32))
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (*(a1 + 32))
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    v15 = MEMORY[0x277D837D0];
    *(inited + 96) = v13;
    *(inited + 104) = v14;
    *(inited + 120) = v15;
    strcpy((inited + 128), "allowQoSBoost");
    *(inited + 142) = -4864;
    v16 = sub_22CEF4850();
    if (v16)
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    *(inited + 168) = v15;
    if (v16)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    *(inited + 144) = v17;
    *(inited + 152) = v18;
    v19 = sub_22CF11C44(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
    result = swift_arrayDestroy();
    *a2 = v19;
  }

  return result;
}

uint64_t sub_22CF8B0B4()
{
  v1 = *(*v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2DA0, &unk_22D01A450);
  sub_22D01699C();
  return v3;
}

unint64_t sub_22CF8B128()
{
  result = qword_28143FA80;
  if (!qword_28143FA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F29E8, &qword_22D019668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143FA80);
  }

  return result;
}

uint64_t sub_22CF8B1A8(uint64_t a1)
{
  v39 = sub_22D01436C();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v39, v5);
  v38 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v31 = v1;
    v43 = MEMORY[0x277D84F90];
    sub_22CF4412C(0, v7, 0);
    v42 = v43;
    v9 = a1 + 64;
    v10 = -1 << *(a1 + 32);
    result = sub_22D016AEC();
    v11 = result;
    v12 = 0;
    v36 = v3 + 8;
    v37 = v3 + 16;
    v32 = a1 + 72;
    v33 = v7;
    v34 = v3;
    v35 = a1 + 64;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v40 = *(a1 + 36);
      v15 = v38;
      v16 = v39;
      v17 = (*(v3 + 16))(v38, *(a1 + 48) + *(v3 + 72) * v11, v39);
      v41 = MEMORY[0x2318C34A0](v17);
      v19 = v18;
      result = (*(v3 + 8))(v15, v16);
      v20 = v42;
      v43 = v42;
      v22 = *(v42 + 16);
      v21 = *(v42 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_22CF4412C((v21 > 1), v22 + 1, 1);
        v20 = v43;
      }

      *(v20 + 16) = v22 + 1;
      v23 = v20 + 16 * v22;
      *(v23 + 32) = v41;
      *(v23 + 40) = v19;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v9 = v35;
      v24 = *(v35 + 8 * v14);
      if ((v24 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v42 = v20;
      if (v40 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v11 & 0x3F));
      if (v25)
      {
        v13 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v3 = v34;
      }

      else
      {
        v26 = v14 << 6;
        v27 = v14 + 1;
        v28 = (v32 + 8 * v14);
        v3 = v34;
        while (v27 < (v13 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_22CF44CF8(v11, v40, 0);
            v13 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_22CF44CF8(v11, v40, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v33)
      {
        return v42;
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

uint64_t sub_22CF8B4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F30, &qword_22D01A918);
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - v7;
  v9 = -1 << *(a1 + 32);
  v10 = sub_22D016AEC();
  if (v10 == 1 << *(a1 + 32))
  {
    v11 = *(v18 + 56);

    return v11(a2, 1, 1, v4);
  }

  else
  {
    v13 = *(v4 + 48);
    sub_22CFA3668(v8, &v8[v13], v10, *(a1 + 36), 0, a1);
    v14 = sub_22D0159DC();
    (*(*(v14 - 8) + 32))(a2, v8, v14);
    v15 = *(v4 + 48);
    v16 = sub_22D015A3C();
    (*(*(v16 - 8) + 32))(a2 + v15, &v8[v13], v16);
    return (*(v18 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_22CF8B6A0()
{
  if (*(v0 + 224))
  {
    v1 = *(v0 + 224);
  }

  else
  {
    v5 = *(v0 + 232);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2EF0, &unk_22D01A8C0);
    sub_22CEE8394(&qword_27D9F2EF8, &qword_27D9F2EF0, &unk_22D01A8C0);
    v2 = v0;
    v1 = sub_22D01646C();
    v3 = *(v0 + 224);
    *(v2 + 224) = v1;
  }

  return v1;
}

uint64_t sub_22CF8B764()
{
  v0 = sub_22D01582C();
  __swift_allocate_value_buffer(v0, qword_27D9F40E8);
  __swift_project_value_buffer(v0, qword_27D9F40E8);
  return sub_22D01581C();
}

uint64_t sub_22CF8B7B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22CFA63BC;
  *(v3 + 24) = a1;
  v6[4] = sub_22CEF4034;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_22CEF3C20;
  v6[3] = &block_descriptor_85;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF8B8F0()
{
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E78, &qword_22D01A888);
  v1 = *(*(v126 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v126, v2);
  v125 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v124 = &v106 - v7;
  MEMORY[0x28223BE20](v6, v8);
  v123 = &v106 - v9;
  v122 = type metadata accessor for ReplicatorParticipant.RelationshipSchedule(0);
  v121 = *(v122 - 8);
  v10 = *(v121 + 64);
  MEMORY[0x28223BE20](v122, v11);
  v13 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Activity();
  v109 = *(v14 - 8);
  v15 = *(v109 + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v107 = (&v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17, v19);
  v108 = &v106 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3850, &unk_22D019D30);
  v22 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v21 - 8, v23);
  v26 = (&v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v106 - v28;
  v30 = sub_22D01659C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  v35 = (&v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(v0 + 16);
  *v35 = v36;
  (*(v31 + 104))(v35, *MEMORY[0x277D85200], v30);
  v37 = v36;
  LOBYTE(v36) = sub_22D0165BC();
  result = (*(v31 + 8))(v35, v30);
  if (v36)
  {
    v112 = v29;
    swift_beginAccess();
    v39 = *(v0 + 200);
    v40 = *(v39 + 64);
    v113 = v39 + 64;
    v41 = 1 << *(v39 + 32);
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v117 = v42 & v40;
    v110 = v39;

    v114 = v0;
    result = swift_beginAccess();
    v43 = 0;
    v116 = 0;
    v44 = (v41 + 63) >> 6;
    v119 = *MEMORY[0x277D46828];
    v111 = v44;
    v45 = v107;
    v120 = v13;
    v106 = v26;
    while (1)
    {
      v47 = v117;
      if (!v117)
      {
        break;
      }

      v48 = v45;
      v115 = v43;
      v49 = v43;
LABEL_18:
      v117 = (v47 - 1) & v47;
      v52 = __clz(__rbit64(v47)) | (v49 << 6);
      v53 = (*(v110 + 48) + 16 * v52);
      v55 = *v53;
      v54 = v53[1];
      v56 = v108;
      sub_22CF0CBEC(*(v110 + 56) + *(v109 + 72) * v52, v108, type metadata accessor for Activity);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      v58 = *(v57 + 48);
      *v26 = v55;
      v26[1] = v54;
      sub_22CF0FFD8(v56, v26 + v58, type metadata accessor for Activity);
      (*(*(v57 - 8) + 56))(v26, 0, 1, v57);

      v45 = v48;
LABEL_19:
      v59 = v112;
      sub_22CEF0368(v26, v112, &qword_27D9F3850, &unk_22D019D30);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
      {
      }

      v61 = *(v59 + 8);

      v62 = sub_22CF0FFD8(v59 + *(v60 + 48), v45, type metadata accessor for Activity);
      v63 = *(v114 + 216);
      MEMORY[0x28223BE20](v62, v64);
      *(&v106 - 2) = v45;

      v65 = v116;
      v66 = sub_22CF79D7C(sub_22CFA61AC, (&v106 - 4), v63);
      v116 = v65;

      v67 = *(v66 + 16);
      if (v67)
      {
        v135 = MEMORY[0x277D84F90];
        sub_22CF44238(0, v67, 0);
        v134 = v135;
        v68 = v66 + 64;
        v69 = -1 << *(v66 + 32);
        result = sub_22D016AEC();
        v70 = result;
        v71 = 0;
        v118 = v66 + 72;
        v127 = v67;
        v128 = v66 + 64;
        v129 = v66;
        while ((v70 & 0x8000000000000000) == 0 && v70 < 1 << *(v66 + 32))
        {
          if ((*(v68 + 8 * (v70 >> 6)) & (1 << v70)) == 0)
          {
            goto LABEL_42;
          }

          v132 = 1 << v70;
          v133 = v70 >> 6;
          v73 = *(v66 + 36);
          v130 = v71;
          v131 = v73;
          v74 = *(v66 + 48);
          v75 = sub_22D01436C();
          v76 = *(v75 - 8);
          v77 = v123;
          (*(v76 + 16))(v123, v74 + *(v76 + 72) * v70, v75);
          v78 = *(v66 + 56) + 32 * v70;
          v79 = *v78;
          v80 = *(v78 + 8);
          v81 = *(v78 + 16);
          v82 = *(v78 + 24);
          v83 = *(v76 + 32);
          v84 = v124;
          v83(v124, v77, v75);
          v85 = v126;
          v86 = &v84[*(v126 + 48)];
          *v86 = v79;
          *(v86 + 1) = v80;
          v86[16] = v81;
          *(v86 + 3) = v82;
          v87 = v84;
          v88 = v125;
          sub_22CEF0368(v87, v125, &qword_27D9F2E78, &qword_22D01A888);
          v89 = v88 + *(v85 + 48);
          v90 = *(v89 + 8);

          v91 = v120;

          v92 = *(v89 + 24);

          v93 = *(v122 + 20);
          v94 = sub_22D015A5C();
          (*(*(v94 - 8) + 104))(v91 + v93, v119, v94);
          v83(v91, v88, v75);
          v95 = v134;
          v135 = v134;
          v97 = *(v134 + 16);
          v96 = *(v134 + 24);
          if (v97 >= v96 >> 1)
          {
            sub_22CF44238(v96 > 1, v97 + 1, 1);
            v95 = v135;
          }

          *(v95 + 16) = v97 + 1;
          result = sub_22CF0FFD8(v91, v95 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v97, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
          v66 = v129;
          v72 = 1 << *(v129 + 32);
          if (v70 >= v72)
          {
            goto LABEL_43;
          }

          v68 = v128;
          v98 = *(v128 + 8 * v133);
          if ((v98 & v132) == 0)
          {
            goto LABEL_44;
          }

          if (v131 != *(v129 + 36))
          {
            goto LABEL_45;
          }

          v134 = v95;
          v99 = v98 & (-2 << (v70 & 0x3F));
          if (v99)
          {
            v72 = __clz(__rbit64(v99)) | v70 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v100 = v133 << 6;
            v101 = v133 + 1;
            v102 = (v118 + 8 * v133);
            while (v101 < (v72 + 63) >> 6)
            {
              v104 = *v102++;
              v103 = v104;
              v100 += 64;
              ++v101;
              if (v104)
              {
                result = sub_22CF44CF8(v70, v131, 0);
                v72 = __clz(__rbit64(v103)) + v100;
                goto LABEL_23;
              }
            }

            result = sub_22CF44CF8(v70, v131, 0);
          }

LABEL_23:
          v71 = v130 + 1;
          v70 = v72;
          if (v130 + 1 == v127)
          {

            v45 = v107;
            v26 = v106;
            v46 = v134;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v46 = MEMORY[0x277D84F90];
LABEL_7:
      sub_22CF8D580(v45, v46);

      result = sub_22CF0F5E0(v45, type metadata accessor for Activity);
      v44 = v111;
      v43 = v115;
    }

    if (v44 <= v43 + 1)
    {
      v50 = v43 + 1;
    }

    else
    {
      v50 = v44;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v49 >= v44)
      {
        v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
        (*(*(v105 - 8) + 56))(v26, 1, 1, v105);
        v117 = 0;
        v115 = v51;
        goto LABEL_19;
      }

      v47 = *(v113 + 8 * v49);
      ++v43;
      if (v47)
      {
        v48 = v45;
        v115 = v49;
        goto LABEL_18;
      }
    }

LABEL_46:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF8C40C()
{
  v1 = sub_22D0164CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D01653C();
  v7 = *(v15 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v15, v9);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v0 + 16);
  aBlock[4] = sub_22CFA5C94;
  v18 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF8B58;
  aBlock[3] = &block_descriptor_28;
  v12 = _Block_copy(aBlock);

  sub_22D0164EC();
  v16 = MEMORY[0x277D84F90];
  sub_22CF1A164(&qword_28143FA60, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v11, v6, v12);
  _Block_release(v12);
  (*(v2 + 8))(v6, v1);
  (*(v7 + 8))(v11, v15);
}

void sub_22CF8C6C0(uint64_t a1)
{
  v3 = sub_22D01659C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = (v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22CF8C998();
  sub_22CEEB6DC(a1 + 32, v20, &qword_27D9F2E28, &unk_22D01A838);
  if (v21)
  {
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v1 = 0;
    sub_22D01588C();
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  else
  {
    sub_22CEEC3D8(v20, &qword_27D9F2E28, &unk_22D01A838);
  }

  v17 = *(a1 + 16);
  *v8 = v17;
  (*(v4 + 104))(v8, *MEMORY[0x277D85200], v3);
  v18 = v17;
  LOBYTE(v17) = sub_22D0165BC();
  (*(v4 + 8))(v8, v3);
  if (v17)
  {
    sub_22CF9B574();
    sub_22CF9CB04();
  }

  else
  {
    __break(1u);
    swift_once();
    v9 = sub_22D01637C();
    __swift_project_value_buffer(v9, qword_2814442F0);
    v10 = v1;
    v11 = sub_22D01636C();
    v12 = sub_22D0168EC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = v1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_22CEE1000, v11, v12, "Failed to register replicator client: %{public}@", v13, 0xCu);
      sub_22CEEC3D8(v14, &qword_27D9F2380, &unk_22D019C50);
      MEMORY[0x2318C6860](v14, -1, -1);
      MEMORY[0x2318C6860](v13, -1, -1);
    }

    else
    {
    }
  }
}

void sub_22CF8C998()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2B20, &qword_22D019C18);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v12 - v4;
  sub_22CEEB6DC(v0 + 32, &v12, &qword_27D9F2E28, &unk_22D01A838);
  if (v13)
  {
    sub_22CFA3864(&v12, v14);
    v6 = sub_22D01681C();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_22CFA5D28(v14, &v12);
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    sub_22CFA3864(&v12, (v7 + 32));
    *(v7 + 96) = v0;

    sub_22CF80110(0, 0, v5, &unk_22D01A8E8, v7);

    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    sub_22CEEC3D8(&v12, &qword_27D9F2E28, &unk_22D01A838);
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v8 = sub_22D01637C();
    __swift_project_value_buffer(v8, qword_2814442F0);
    v9 = sub_22D01636C();
    v10 = sub_22D0168EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22CEE1000, v9, v10, "Replicator is not available", v11, 2u);
      MEMORY[0x2318C6860](v11, -1, -1);
    }
  }
}

uint64_t sub_22CF8CBC4()
{
  sub_22CEEC3D8(v0 + 32, &qword_27D9F2E28, &unk_22D01A838);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  sub_22CEEC3D8(v0 + 136, &qword_27D9F2E40, &qword_22D01A858);
  v1 = *(v0 + 176);

  sub_22CF460CC(v0 + 184);
  v2 = *(v0 + 200);

  v3 = *(v0 + 208);

  v4 = *(v0 + 216);

  v5 = *(v0 + 224);

  v6 = *(v0 + 232);

  return v0;
}

uint64_t sub_22CF8CC5C()
{
  sub_22CF8CBC4();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22CF8CC9C(uint64_t a1, int a2)
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

uint64_t sub_22CF8CCE4(uint64_t result, int a2, int a3)
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

uint64_t sub_22CF8CD34()
{
  v1 = *(v0 + 176);
  os_unfair_lock_lock(v1 + 4);
  sub_22CFA1590(v2);
  os_unfair_lock_unlock(v1 + 4);
  return swift_unknownObjectRelease();
}

uint64_t sub_22CF8CDAC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22D01483C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v22 = a2;
    v15 = *(v5 + 16);
    v16 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    while (1)
    {
      v15(v10, v16, v4);
      if (sub_22D0147CC())
      {
        break;
      }

      (*(v5 + 8))(v10, v4);
      v16 += v17;
      if (!--v14)
      {
        v18 = 1;
        a2 = v22;
        return (*(v5 + 56))(a2, v18, 1, v4);
      }
    }

    v19 = *(v5 + 32);
    v19(v13, v10, v4);
    a2 = v22;
    v19(v22, v13, v4);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v5 + 56))(a2, v18, 1, v4);
}

void *sub_22CF8CF70(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E70, &qword_22D01A880);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v65 - v6;
  v8 = type metadata accessor for ReplicatorParticipant.RelationshipSchedule(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v67 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v66 = &v65 - v15;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E78, &qword_22D01A888);
  v16 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78, v17);
  v80 = &v65 - v18;
  v19 = sub_22D01659C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = (&v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v1 + 16);
  *v24 = v25;
  (*(v20 + 104))(v24, *MEMORY[0x277D85200], v19);
  v26 = v25;
  v27 = sub_22D0165BC();
  result = (*(v20 + 8))(v24, v19);
  if (v27)
  {
    v77 = a1;
    swift_beginAccess();
    v29 = *(v1 + 216);
    v30 = v29 + 64;
    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v29 + 64);
    v34 = (v31 + 63) >> 6;
    v72 = (v9 + 56);
    v70 = *MEMORY[0x277D46820];
    v69 = *MEMORY[0x277D46828];
    v65 = v9;
    v71 = (v9 + 48);
    v79 = v29;
    result = swift_bridgeObjectRetain_n();
    v35 = 0;
    v68 = MEMORY[0x277D84F90];
    v36 = v80;
    v73 = v34;
    v74 = v30;
    v75 = v8;
    v76 = v7;
    while (1)
    {
      v37 = v35;
      if (!v33)
      {
        break;
      }

LABEL_9:
      v38 = __clz(__rbit64(v33)) | (v35 << 6);
      v39 = v79;
      v40 = *(v79 + 48);
      v41 = sub_22D01436C();
      v42 = *(v41 - 8);
      v43 = v40 + *(v42 + 72) * v38;
      v80 = *(v42 + 16);
      (v80)(v36, v43, v41);
      v44 = (*(v39 + 56) + 32 * v38);
      v45 = *v44;
      v46 = *(v44 + 1);
      v47 = v44[16];
      v48 = *(v44 + 3);
      v49 = &v36[*(v78 + 48)];
      *v49 = v45;
      *(v49 + 1) = v46;
      v49[16] = v47;
      *(v49 + 3) = v48;

      v50 = v36;
      v51 = v77;
      if (sub_22CF924E4(v77, v45, v46, v47, v48))
      {
        v52 = sub_22CFA5558(v51, v45, v47, v48);
        v53 = v76;
        (v80)(v76, v50, v41);
        v54 = v75;
        v55 = *(v75 + 20);
        v56 = sub_22D015A5C();
        if (v52)
        {
          v57 = v69;
        }

        else
        {
          v57 = v70;
        }

        (*(*(v56 - 8) + 104))(v53 + v55, v57, v56);
        v58 = 0;
      }

      else
      {
        v58 = 1;
        v54 = v75;
        v53 = v76;
      }

      v36 = v50;
      v33 &= v33 - 1;
      (*v72)(v53, v58, 1, v54);
      sub_22CEEC3D8(v50, &qword_27D9F2E78, &qword_22D01A888);
      v59 = (*v71)(v53, 1, v54);
      v34 = v73;
      v30 = v74;
      if (v59 == 1)
      {
        result = sub_22CEEC3D8(v53, &qword_27D9F2E70, &qword_22D01A880);
      }

      else
      {
        v60 = v66;
        sub_22CF0FFD8(v53, v66, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
        sub_22CF0FFD8(v60, v67, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_22CFCE5E8(0, v68[2] + 1, 1, v68);
        }

        v62 = v68[2];
        v61 = v68[3];
        if (v62 >= v61 >> 1)
        {
          v68 = sub_22CFCE5E8(v61 > 1, v62 + 1, 1, v68);
        }

        v63 = v67;
        v64 = v68;
        v68[2] = v62 + 1;
        result = sub_22CF0FFD8(v63, v64 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v62, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
      }
    }

    while (1)
    {
      v35 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v35 >= v34)
      {

        return v68;
      }

      v33 = *(v30 + 8 * v35);
      ++v37;
      if (v33)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22CF8D580(uint64_t *a1, uint64_t a2)
{
  v242 = a1;
  v212 = sub_22D01589C();
  v245 = *(v212 - 8);
  v4 = *(v245 + 64);
  MEMORY[0x28223BE20](v212, v5);
  v211 = (v201 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v210 = sub_22D015A3C();
  v214 = *(v210 - 8);
  v7 = *(v214 + 64);
  MEMORY[0x28223BE20](v210, v8);
  v218 = v201 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_22D01582C();
  v247 = *(v221 - 8);
  v10 = *(v247 + 64);
  MEMORY[0x28223BE20](v221, v11);
  v220 = v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E30, &qword_22D01A848);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v230 = v201 - v16;
  v229 = sub_22D0159DC();
  v246 = *(v229 - 8);
  v17 = *(v246 + 64);
  MEMORY[0x28223BE20](v229, v18);
  v239 = v201 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_22D01594C();
  v20 = *(v243 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v243, v22);
  v238 = v201 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E38, &qword_22D01A850);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24 - 8, v26);
  v237 = v201 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v248 = v201 - v30;
  v249 = sub_22D01436C();
  v213 = *(v249 - 8);
  v31 = *(v213 + 64);
  MEMORY[0x28223BE20](v249, v32);
  v236 = v201 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for ReplicatorParticipant.RelationshipSchedule(0);
  v34 = *(v209 - 8);
  v35 = *(v34 + 64);
  v37 = MEMORY[0x28223BE20](v209, v36);
  v216 = v201 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v228 = v201 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v223 = v201 - v44;
  v46 = MEMORY[0x28223BE20](v43, v45);
  v240 = v201 - v47;
  MEMORY[0x28223BE20](v46, v48);
  v244 = v201 - v49;
  v50 = type metadata accessor for Activity();
  v51 = *(*(v50 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v50 - 8, v52);
  v215 = v201 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v53, v55);
  v58 = v201 - v57;
  v60 = MEMORY[0x28223BE20](v56, v59);
  v227 = (v201 - v61);
  v63 = MEMORY[0x28223BE20](v60, v62);
  v222 = (v201 - v64);
  v66 = MEMORY[0x28223BE20](v63, v65);
  v241 = (v201 - v67);
  MEMORY[0x28223BE20](v66, v68);
  v219 = v201 - v69;
  v70 = sub_22D01659C();
  v71 = *(v70 - 8);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70, v73);
  v75 = (v201 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = *(v2 + 16);
  *v75 = v76;
  (*(v71 + 104))(v75, *MEMORY[0x277D85200], v70);
  v77 = v76;
  v78 = sub_22D0165BC();
  (*(v71 + 8))(v75, v70);
  if ((v78 & 1) == 0)
  {
    __break(1u);
LABEL_46:
    swift_once();
    goto LABEL_7;
  }

  sub_22CEEB6DC(v2 + 32, &v252, &qword_27D9F2E28, &unk_22D01A838);
  if (v253)
  {
    sub_22CFA3864(&v252, &v254);
    swift_beginAccess();
    sub_22CEEB6DC(v2 + 136, &v250, &qword_27D9F2E40, &qword_22D01A858);
    if (v251)
    {
      v79 = sub_22CEF44D4(&v250, &v252);
      MEMORY[0x28223BE20](v79, v80);
      v81 = v242;
      v201[-2] = &v252;
      v201[-1] = v81;

      a2 = sub_22CF68C7C(sub_22CFA38BC, &v201[-4], a2);

      __swift_destroy_boxed_opaque_existential_1Tm(&v252);
      v82 = *(a2 + 16);

      if (v82)
      {
        v83 = v249;
        v84 = v236;
        v85 = v242;
LABEL_12:
        sub_22CFA011C(v85, v219);
        v92 = *(a2 + 16);
        v93 = a2;
        v94 = v244;
        v95 = v241;
        if (v92)
        {
          v96 = (*(v34 + 80) + 32) & ~*(v34 + 80);
          v201[1] = v93;
          v97 = v93 + v96;
          v235 = (v213 + 16);
          v234 = *(v34 + 72);
          v233 = (v20 + 48);
          v226 = (v20 + 32);
          v217 = (v247 + 8);
          v225 = (v20 + 8);
          v206 = v214 + 16;
          v205 = *MEMORY[0x277D46558];
          v204 = (v245 + 104);
          v203 = (v245 + 8);
          v202 = (v214 + 8);
          v224 = (v246 + 8);
          v232 = (v213 + 8);
          *&v91 = 136446466;
          v231 = v91;
          v208 = xmmword_22D0187A0;
          v98 = v240;
          do
          {
            v100 = v84;
            v247 = v92;
            v246 = v97;
            sub_22CF0CBEC(v97, v94, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
            if (qword_28143DA98 != -1)
            {
              swift_once();
            }

            v101 = sub_22D01637C();
            v102 = __swift_project_value_buffer(v101, qword_2814442F0);
            v103 = v85;
            sub_22CF0CBEC(v85, v95, type metadata accessor for Activity);
            v104 = v94;
            sub_22CF0CBEC(v94, v98, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
            v245 = v102;
            v105 = sub_22D01636C();
            v106 = sub_22D01690C();
            if (os_log_type_enabled(v105, v106))
            {
              v107 = v98;
              v108 = swift_slowAlloc();
              v109 = swift_slowAlloc();
              *&v252 = v109;
              *v108 = v231;
              v110 = *v95;
              v111 = v95[1];

              sub_22CF0F5E0(v95, type metadata accessor for Activity);
              v112 = sub_22CEEE31C(v110, v111, &v252);

              *(v108 + 4) = v112;
              *(v108 + 12) = 2082;
              sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0]);
              v113 = sub_22D016DEC();
              v115 = v114;
              v116 = v244;
              sub_22CF0F5E0(v107, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
              v117 = sub_22CEEE31C(v113, v115, &v252);
              v83 = v249;

              *(v108 + 14) = v117;
              _os_log_impl(&dword_22CEE1000, v105, v106, "Adding activity to replicator: %{public}s for relationship schedule: %{public}s", v108, 0x16u);
              swift_arrayDestroy();
              v118 = v109;
              v119 = v243;
              v120 = v242;
              MEMORY[0x2318C6860](v118, -1, -1);
              MEMORY[0x2318C6860](v108, -1, -1);
            }

            else
            {

              sub_22CF0F5E0(v98, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
              sub_22CF0F5E0(v95, type metadata accessor for Activity);
              v120 = v103;
              v116 = v104;
              v119 = v243;
            }

            v121 = *v235;
            (*v235)(v100, v116, v83);
            v122 = v256;
            __swift_project_boxed_opaque_existential_1(&v254, v255);
            v123 = *(v122 + 16);
            v124 = sub_22D0158AC();
            MEMORY[0x28223BE20](v124, v125);
            v201[-2] = v100;
            v126 = v248;
            sub_22CEEBAB4(sub_22CFA387C, v124, MEMORY[0x277D46770], v248);

            v127 = v237;
            sub_22CEEB6DC(v126, v237, &qword_27D9F2E38, &qword_22D01A850);
            if ((*v233)(v127, 1, v119) == 1)
            {
              sub_22CEEC3D8(v127, &qword_27D9F2E38, &qword_22D01A850);
              v128 = v120;
              v129 = v227;
              sub_22CF0CBEC(v120, v227, type metadata accessor for Activity);
              v130 = v228;
              sub_22CF0CBEC(v116, v228, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
              v131 = sub_22D01636C();
              v132 = sub_22D0168EC();
              if (os_log_type_enabled(v131, v132))
              {
                v133 = swift_slowAlloc();
                v134 = swift_slowAlloc();
                *&v252 = v134;
                *v133 = v231;
                v135 = v129;
                v136 = *v129;
                v137 = v129[1];

                sub_22CF0F5E0(v135, type metadata accessor for Activity);
                v138 = sub_22CEEE31C(v136, v137, &v252);

                *(v133 + 4) = v138;
                *(v133 + 12) = 2082;
                sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0]);
                v139 = v130;
                v99 = v249;
                v140 = sub_22D016DEC();
                v142 = v141;
                v143 = v139;
                v144 = v244;
                sub_22CF0F5E0(v143, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
                v145 = sub_22CEEE31C(v140, v142, &v252);
                v128 = v242;

                *(v133 + 14) = v145;
                _os_log_impl(&dword_22CEE1000, v131, v132, "Could not add activity to replicator: %{public}s no device for relationship ID: %{public}s", v133, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x2318C6860](v134, -1, -1);
                v146 = v133;
                v94 = v144;
                MEMORY[0x2318C6860](v146, -1, -1);

                sub_22CEEC3D8(v248, &qword_27D9F2E38, &qword_22D01A850);
                sub_22CF0F5E0(v144, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
              }

              else
              {
                v94 = v116;

                sub_22CF0F5E0(v130, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
                sub_22CF0F5E0(v129, type metadata accessor for Activity);
                sub_22CEEC3D8(v248, &qword_27D9F2E38, &qword_22D01A850);
                sub_22CF0F5E0(v116, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
                v99 = v249;
              }

              v98 = v240;
              v95 = v241;
            }

            else
            {
              (*v226)(v238, v127, v119);
              v147 = v239;
              sub_22CF90C14();
              v148 = sub_22D01593C();
              MEMORY[0x28223BE20](v148, v149);
              v201[-2] = v147;
              v150 = v230;
              sub_22CEEBAB4(sub_22CFA389C, v148, MEMORY[0x277D46670], v230);
              v151 = v150;

              v152 = sub_22D0158DC();
              v153 = *(v152 - 8);
              if ((*(v153 + 48))(v151, 1, v152) == 1)
              {
                sub_22CEEC3D8(v151, &qword_27D9F2E30, &qword_22D01A848);
              }

              else
              {
                v154 = v100;
                v155 = v220;
                sub_22D0158CC();
                (*(v153 + 8))(v151, v152);
                if (qword_27D9F1E60 != -1)
                {
                  swift_once();
                }

                v156 = v221;
                __swift_project_value_buffer(v221, qword_27D9F40E8);
                v157 = sub_22D01580C();
                v159 = v158;
                (*v217)(v155, v156);
                if ((v159 & 1) == 0)
                {
                  v175 = v218;
                  sub_22CF90D50(v154, v157, v218);
                  v207 = v257;
                  __swift_project_boxed_opaque_existential_1(&v254, v255);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E48, &qword_22D01A860);
                  v176 = v214;
                  v177 = *(v214 + 72);
                  v178 = (*(v214 + 80) + 32) & ~*(v214 + 80);
                  v179 = swift_allocObject();
                  *(v179 + 16) = v208;
                  v180 = v210;
                  (*(v176 + 16))(v179 + v178, v175, v210);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F20C8, &qword_22D0188F0);
                  v181 = *(v213 + 72);
                  v182 = (*(v213 + 80) + 32) & ~*(v213 + 80);
                  v183 = swift_allocObject();
                  *(v183 + 16) = v208;
                  v184 = v244;
                  v185 = v249;
                  v121(v183 + v182, v244, v249);
                  v186 = v211;
                  *v211 = v183;
                  v187 = v212;
                  (*v204)(v186, v205, v212);
                  v188 = v184 + *(v209 + 20);
                  sub_22D01585C();

                  (*v203)(v186, v187);
                  (*v202)(v218, v180);
                  (*v225)(v238, v243);
                  sub_22CEEC3D8(v248, &qword_27D9F2E38, &qword_22D01A850);
                  sub_22CF0F5E0(v184, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
                  (*v224)(v239, v229);
                  v189 = v236;
                  (*v232)(v236, v185);
                  v83 = v185;
                  v85 = v242;
                  v98 = v240;
                  v95 = v241;
                  v94 = v184;
                  v84 = v189;
                  goto LABEL_17;
                }
              }

              v128 = v120;
              v160 = v120;
              v161 = v222;
              sub_22CF0CBEC(v160, v222, type metadata accessor for Activity);
              v94 = v244;
              v162 = v223;
              sub_22CF0CBEC(v244, v223, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
              v163 = sub_22D01636C();
              v164 = sub_22D0168EC();
              if (os_log_type_enabled(v163, v164))
              {
                v165 = swift_slowAlloc();
                v166 = swift_slowAlloc();
                *&v252 = v166;
                *v165 = v231;
                v167 = *v161;
                v168 = v161[1];

                sub_22CF0F5E0(v161, type metadata accessor for Activity);
                v169 = sub_22CEEE31C(v167, v168, &v252);

                *(v165 + 4) = v169;
                *(v165 + 12) = 2082;
                sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0]);
                v99 = v249;
                v170 = sub_22D016DEC();
                v172 = v171;
                sub_22CF0F5E0(v162, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
                v173 = sub_22CEEE31C(v170, v172, &v252);
                v128 = v242;

                *(v165 + 14) = v173;
                _os_log_impl(&dword_22CEE1000, v163, v164, "Could not add activity to replicator: %{public}s no device for relationship ID: %{public}s", v165, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x2318C6860](v166, -1, -1);
                v174 = v165;
                v94 = v244;
                MEMORY[0x2318C6860](v174, -1, -1);

                (*v225)(v238, v243);
                sub_22CEEC3D8(v248, &qword_27D9F2E38, &qword_22D01A850);
                sub_22CF0F5E0(v94, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
              }

              else
              {

                sub_22CF0F5E0(v162, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
                sub_22CF0F5E0(v161, type metadata accessor for Activity);
                (*v225)(v238, v243);
                sub_22CEEC3D8(v248, &qword_27D9F2E38, &qword_22D01A850);
                sub_22CF0F5E0(v94, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
                v99 = v249;
              }

              v98 = v240;
              v95 = v241;
              (*v224)(v239, v229);
            }

            v84 = v236;
            (*v232)(v236, v99);
            v83 = v99;
            v85 = v128;
LABEL_17:
            v97 = v246 + v234;
            v92 = v247 - 1;
          }

          while (v247 != 1);
        }

        v190 = v219;
        goto LABEL_43;
      }
    }

    else
    {
      sub_22CEEC3D8(&v250, &qword_27D9F2E40, &qword_22D01A858);
      v83 = v249;
      v90 = v236;
      if (*(a2 + 16))
      {

        v85 = v242;
        v84 = v90;
        goto LABEL_12;
      }
    }

    v191 = v242;
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v192 = sub_22D01637C();
    __swift_project_value_buffer(v192, qword_2814442F0);
    sub_22CF0CBEC(v191, v58, type metadata accessor for Activity);
    v193 = sub_22D01636C();
    v194 = sub_22D01690C();
    if (os_log_type_enabled(v193, v194))
    {
      v195 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      *&v252 = v196;
      *v195 = 136315138;
      v197 = sub_22CF0B174();
      v199 = v198;
      sub_22CF0F5E0(v58, type metadata accessor for Activity);
      v200 = sub_22CEEE31C(v197, v199, &v252);

      *(v195 + 4) = v200;
      _os_log_impl(&dword_22CEE1000, v193, v194, "No applicable relationship schedules to replicate %s", v195, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v196);
      MEMORY[0x2318C6860](v196, -1, -1);
      MEMORY[0x2318C6860](v195, -1, -1);

LABEL_44:
      __swift_destroy_boxed_opaque_existential_1Tm(&v254);
      return;
    }

    v190 = v58;
LABEL_43:
    sub_22CF0F5E0(v190, type metadata accessor for Activity);
    goto LABEL_44;
  }

  sub_22CEEC3D8(&v252, &qword_27D9F2E28, &unk_22D01A838);
  if (qword_28143DA98 != -1)
  {
    goto LABEL_46;
  }

LABEL_7:
  v86 = sub_22D01637C();
  __swift_project_value_buffer(v86, qword_2814442F0);
  v87 = sub_22D01636C();
  v88 = sub_22D0168EC();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_22CEE1000, v87, v88, "Replicator is not available", v89, 2u);
    MEMORY[0x2318C6860](v89, -1, -1);
  }
}