void sub_20B903D18(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v35 = a2;
  v36 = a1;
  v42 = sub_20C133244();
  v8 = *(v42 - 8);
  v9 = MEMORY[0x28223BE20](v42);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v12 = 0;
  v41 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v39 = (v8 + 8);
  v40 = v8 + 16;
  v38 = a5;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_12:
    v23 = v20 | (v12 << 6);
    (*(v8 + 16))(v11, *(v41 + 48) + *(v8 + 72) * v23, v42, v9);
    if (*(a4 + 16) && (sub_20B65A98C(v11), (v24 & 1) != 0))
    {
      (*v39)(v11, v42);
    }

    else
    {
      if ((v38 - 2) >= 4)
      {
        if (v38)
        {
          (*v39)(v11, v42);
          goto LABEL_21;
        }

        v28 = sub_20B90385C(v11, a4);
        v29 = sub_20B8DD120(0, v28);
        v34 = a4;
        v30 = v29;

        v27 = v30 ^ 1;
        a4 = v34;
      }

      else
      {
        v25 = sub_20B90385C(v11, a4);
        if (qword_27C760D18 != -1)
        {
          swift_once();
        }

        v26 = *(sub_20B605150(qword_27C79D668, v25) + 2);

        v27 = v26 == 0;
      }

      (*v39)(v11, v42);
      if (v27)
      {
LABEL_21:
        *(v36 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        if (__OFADD__(v37++, 1))
        {
          goto LABEL_27;
        }
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
      v32 = v41;

      sub_20BC11130(v36, v35, v37, v32);
      return;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_20B90402C(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v41 = a6;
  v44 = a3;
  v46 = *MEMORY[0x277D85DE8];
  v45 = sub_20C133244();
  v12 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v13) = *(a1 + 32);
  v15 = v13 & 0x3F;
  v16 = ((1 << v13) + 63) >> 6;
  v17 = 8 * v16;

  if (v15 > 0xD)
  {
    goto LABEL_29;
  }

  while (2)
  {
    v35 = v16;
    v36 = a4;
    v37 = v7;
    v34[1] = v34;
    MEMORY[0x28223BE20](v18);
    v38 = v34 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v38, v17);
    v39 = 0;
    v40 = a5;
    a2 = 0;
    v44 = a1;
    a4 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v7 = v20 & *(a1 + 56);
    a1 = (v19 + 63) >> 6;
    v42 = (v12 + 8);
    v43 = v12 + 16;
    v21 = v12;
    while (v7)
    {
      v22 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v17 = v22 | (a2 << 6);
      v16 = v21;
      (*(v21 + 16))(v14, *(v44 + 48) + *(v21 + 72) * v17, v45);
      if (*(a5 + 16) && (v12 = a5, sub_20B65A98C(v14), (v25 & 1) != 0))
      {
        (*v42)(v14, v45);
        v21 = v16;
      }

      else
      {
        if (v41 - 2 >= 4)
        {
          if (v41)
          {
            (*v42)(v14, v45);
            v21 = v16;
            goto LABEL_22;
          }

          v28 = sub_20B90385C(v14, a5);
          v29 = sub_20B8DD120(0, v28);

          v12 = v29 ^ 1u;
        }

        else
        {
          v26 = sub_20B90385C(v14, a5);
          if (qword_27C760D18 != -1)
          {
            swift_once();
          }

          v27 = *(sub_20B605150(qword_27C79D668, v26) + 2);

          v12 = v27 == 0;
        }

        (*v42)(v14, v45);
        a5 = v40;
        v21 = v16;
        if (v12)
        {
LABEL_22:
          *&v38[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
          if (__OFADD__(v39++, 1))
          {
            __break(1u);
          }
        }
      }
    }

    v23 = a2;
    while (1)
    {
      a2 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (a2 >= a1)
      {
        v31 = sub_20BC11130(v38, v35, v39, v44);

        return v31;
      }

      v24 = *(a4 + 8 * a2);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v7 = (v24 - 1) & v24;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_29:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v33 = swift_slowAlloc();

  v31 = sub_20B90330C(v33, v16, a1, a2, v44, a4, a5, v41);

  MEMORY[0x20F2F6A40](v33, -1, -1);

  return v31;
}

void sub_20B9044B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v29 = a4;
  v24 = a1;
  v30 = sub_20C133244();
  v6 = MEMORY[0x28223BE20](v30);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v27 = v5 + 16;
  v28 = v5;
  v25 = 0;
  v26 = (v5 + 8);
  while (v12)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = v16 | (v9 << 6);
    v18 = v29;
LABEL_12:
    (*(v28 + 16))(v8, *(a3 + 48) + *(v28 + 72) * v17, v30, v6);
    if (*(v18 + 16) && (sub_20B65A98C(v8), (v21 & 1) != 0))
    {
      (*v26)(v8, v30);
    }

    else
    {
      v14 = sub_20B90385C(v8, v18);
      v15 = sub_20B8DD120(0, v14);

      (*v26)(v8, v30);
      if ((v15 & 1) == 0)
      {
        *(v24 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v25++, 1))
        {
          __break(1u);
LABEL_18:

          sub_20BC11130(v24, v23, v25, a3);
          return;
        }
      }
    }
  }

  v19 = v9;
  v18 = v29;
  while (1)
  {
    v9 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      goto LABEL_18;
    }

    v20 = *(a3 + 56 + 8 * v9);
    ++v19;
    if (v20)
    {
      v12 = (v20 - 1) & v20;
      v17 = __clz(__rbit64(v20)) | (v9 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_20B904724(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v42 = *MEMORY[0x277D85DE8];
  v41 = sub_20C133244();
  v12 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v13) = *(a1 + 32);
  v14 = v13 & 0x3F;
  v33 = ((1 << v13) + 63) >> 6;
  v15 = 8 * v33;

  v40 = a5;

  if (v14 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v32[2] = a4;
    v32[3] = v6;
    v32[1] = v32;
    MEMORY[0x28223BE20](v16);
    v34 = v32 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v15);
    v35 = 0;
    v36 = v12;
    a3 = 0;
    a2 = a1 + 56;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    a4 = v18 & *(a1 + 56);
    v6 = (v17 + 63) >> 6;
    v37 = (v12 + 8);
    v38 = v12 + 16;
    v15 = a1;
    v19 = v12;
    while (a4)
    {
      v22 = __clz(__rbit64(a4));
      a4 &= a4 - 1;
      v12 = v22 | (a3 << 6);
      a1 = v39;
      v23 = v40;
LABEL_13:
      (*(v19 + 16))(a1, *(v15 + 48) + *(v19 + 72) * v12, v41);
      if (*(v23 + 16) && (sub_20B65A98C(a1), (v26 & 1) != 0))
      {
        (*v37)(a1, v41);
        v19 = v36;
      }

      else
      {
        v20 = sub_20B90385C(a1, v23);
        v21 = sub_20B8DD120(0, v20);

        (*v37)(a1, v41);
        v19 = v36;
        if ((v21 & 1) == 0)
        {
          *&v34[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
          if (__OFADD__(v35++, 1))
          {
            __break(1u);
LABEL_19:
            v28 = sub_20BC11130(v34, v33, v35, v15);

            return v28;
          }
        }
      }
    }

    v24 = a3;
    a1 = v39;
    v23 = v40;
    while (1)
    {
      a3 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (a3 >= v6)
      {
        goto LABEL_19;
      }

      v25 = *(a2 + 8 * a3);
      ++v24;
      if (v25)
      {
        a4 = (v25 - 1) & v25;
        v12 = __clz(__rbit64(v25)) | (a3 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v30 = swift_slowAlloc();

  v31 = v40;

  v28 = sub_20B903258(v30, v33, a1, a2, a3, a4, v31);

  MEMORY[0x20F2F6A40](v30, -1, -1);

  return v28;
}

uint64_t sub_20B904B14(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v50 = a5;
  v42 = sub_20C133244();
  v9 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A08);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v43 = a1;
  v44 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v45 = v16;
  v46 = 0;
  v47 = v19 & v17;
  v48 = a2;
  v49 = a3;
  v20 = (v9 + 32);
  v40 = (v9 + 8);
  v41 = v9;

  v39 = a3;

  while (1)
  {
    sub_20BEF598C(v14);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A18);
    if ((*(*(v21 - 8) + 48))(v14, 1, v21) == 1)
    {
      sub_20B583EDC();
    }

    v22 = *(v21 + 48);
    v23 = *v20;
    (*v20)(v11, v14, v42);
    v24 = v14[v22];
    v25 = *v50;
    v27 = sub_20B65A98C(v11);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((a4 & 1) == 0)
      {
        sub_20BA10A78();
      }
    }

    else
    {
      sub_20BA0AE6C(v30, a4 & 1);
      v32 = sub_20B65A98C(v11);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_19;
      }

      v27 = v32;
    }

    v34 = *v50;
    if (v31)
    {
      (*v40)(v11, v42);
      *(v34[7] + v27) = v24;
      a4 = 1;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v23((v34[6] + *(v41 + 72) * v27), v11, v42);
      *(v34[7] + v27) = v24;
      v35 = v34[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_18;
      }

      v34[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_20C13E054();
  __break(1u);
  return result;
}

unint64_t sub_20B904E50()
{
  result = qword_27C767A10;
  if (!qword_27C767A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767A10);
  }

  return result;
}

uint64_t sub_20B904EF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_20B904F38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20B904F98()
{
  v1 = v0;
  sub_20C13E164();
  v2 = *v0;
  v3 = v0[1];
  v4 = v1[3];
  sub_20BDA7B8C(v6, v2);
  sub_20BDA7A9C(v6, v3);
  if (!v4)
  {
    sub_20C13E184();
    if (v1[5])
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_20C13E184();
    goto LABEL_6;
  }

  sub_20C13E184();
  sub_20C13CA64();
  if (!v1[5])
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_20C13E184();
  sub_20C13CA64();
LABEL_6:
  MEMORY[0x20F2F58E0](*(v1 + 48));
  return sub_20C13E1B4();
}

uint64_t sub_20B905070(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  sub_20BDA7B8C(a1, *v1);
  sub_20BDA7A9C(a1, v3);
  if (!v4)
  {
    sub_20C13E184();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_20C13E184();
    return MEMORY[0x20F2F58E0](v6);
  }

  sub_20C13E184();
  sub_20C13CA64();
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_20C13E184();
  sub_20C13CA64();
  return MEMORY[0x20F2F58E0](v6);
}

uint64_t sub_20B905134()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_20C13E164();
  sub_20BDA7B8C(v7, v1);
  sub_20BDA7A9C(v7, v2);
  if (!v3)
  {
    sub_20C13E184();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_20C13E184();
    goto LABEL_6;
  }

  sub_20C13E184();
  sub_20C13CA64();
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_20C13E184();
  sub_20C13CA64();
LABEL_6:
  MEMORY[0x20F2F58E0](v5);
  return sub_20C13E1B4();
}

uint64_t sub_20B905210(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_20B9052C4(v5, v7) & 1;
}

unint64_t sub_20B905270()
{
  result = qword_27C767A20;
  if (!qword_27C767A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767A20);
  }

  return result;
}

uint64_t sub_20B9052C4(uint64_t a1, uint64_t a2)
{
  if ((sub_20BB7FE40(*a1, *a2) & 1) == 0 || (sub_20BB800B0(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4)
  {
    if (!v5 || (*(a1 + 16) != *(a2 + 16) || v4 != v5) && (sub_20C13DFF4() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v5)
  {
    goto LABEL_17;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  if (v6)
  {
    if (v7 && (*(a1 + 32) == *(a2 + 32) && v6 == v7 || (sub_20C13DFF4() & 1) != 0))
    {
      goto LABEL_15;
    }

LABEL_17:
    v8 = 0;
    return v8 & 1;
  }

  if (v7)
  {
    goto LABEL_17;
  }

LABEL_15:
  v8 = *(a1 + 48) ^ *(a2 + 48) ^ 1;
  return v8 & 1;
}

unint64_t sub_20B9053AC()
{
  result = qword_27C767A28;
  if (!qword_27C767A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767A28);
  }

  return result;
}

uint64_t sub_20B905400(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763970);
    v1 = sub_20C13DE84();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    sub_20B908124();
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_20B6B3B74((v27 + 8), v25);
    sub_20B6B3B74(v25, v27);
    sub_20C13C954();
    sub_20C13E164();
    sub_20C13CA64();
    v16 = sub_20C13E1B4();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v6 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v6 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v6 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_20B6B3B74(v27, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_20B9056A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767A40);
    v2 = sub_20C13DE84();
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
    sub_20B51D968(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_20B6B3B74(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_20B6B3B74(v35, v24);
    result = sub_20C13DBB4();
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
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_20B6B3B74(v24, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_20B905994(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767A40);
    v2 = sub_20C13DE84();
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
    sub_20B51F1D8(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_20B6B3B74(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_20B6B3B74(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_20B6B3B74(v31, v32);
    result = sub_20C13DBB4();
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
    result = sub_20B6B3B74(v32, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_20B905C5C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A68);
    v1 = sub_20C13DE84();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    v24 = *(*(a1 + 56) + v11);
    v13 = v12;
    swift_dynamicCast();
    sub_20B6B3B74((v25 + 8), v23);
    sub_20B6B3B74(v23, v25);
    sub_20C13C954();
    sub_20C13E164();
    sub_20C13CA64();
    v14 = sub_20C13E1B4();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v6 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v6 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v6 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = sub_20B6B3B74(v25, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_20B905EF4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767A50);
    v2 = sub_20C13DE84();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        sub_20B51D968(*(a1 + 56) + 40 * v14, &v29);
        v27 = v17;
        v28 = v16;

        swift_dynamicCast();
        sub_20B6B3B74(&v23, v25);
        sub_20B6B3B74(v25, v26);
        sub_20B6B3B74(v26, &v24);
        result = sub_20B65AA60(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_20B6B3B74(&v24, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          result = sub_20B6B3B74(&v24, (v2[7] + 32 * result));
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_20B906164(char a1, void *a2, uint64_t a3)
{
  v6 = sub_20C132C14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = sub_20C13BB84();
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  if (a1)
  {
    v45 = v17;
    sub_20C13B534();
    (*(v7 + 16))(v12, a3, v6);
    v20 = sub_20C13BB74();
    v21 = sub_20C13D1F4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v48 = v23;
      *v22 = 141558274;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2080;
      sub_20B9080CC();
      v24 = sub_20C13DFA4();
      v44 = v13;
      v26 = v25;
      (*(v7 + 8))(v12, v6);
      v27 = sub_20B51E694(v24, v26, &v48);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_20B517000, v20, v21, "Successfully loaded %{mask.hash}s", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x20F2F6A40](v23, -1, -1);
      MEMORY[0x20F2F6A40](v22, -1, -1);

      (*(v45 + 8))(v19, v44);
      return;
    }

    (*(v7 + 8))(v12, v6);
    v41 = *(v45 + 8);
    v42 = v19;
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v45 = v17;
    v28 = a2;
    sub_20C13B534();
    (*(v7 + 16))(v9, a3, v6);
    v29 = a2;
    v30 = sub_20C13BB74();
    v31 = sub_20C13D1D4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v48 = v43;
      *v32 = 141558530;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2080;
      sub_20B9080CC();
      v33 = sub_20C13DFA4();
      v44 = v13;
      v35 = v34;
      (*(v7 + 8))(v9, v6);
      v36 = sub_20B51E694(v33, v35, &v48);

      *(v32 + 14) = v36;
      *(v32 + 22) = 2082;
      swift_getErrorValue();
      v37 = MEMORY[0x20F2F5850](v46, v47);
      v39 = sub_20B51E694(v37, v38, &v48);

      *(v32 + 24) = v39;
      _os_log_impl(&dword_20B517000, v30, v31, "Unable to load marketingLink %{mask.hash}s: %{public}s", v32, 0x20u);
      v40 = v43;
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v40, -1, -1);
      MEMORY[0x20F2F6A40](v32, -1, -1);

      (*(v45 + 8))(v15, v44);
      return;
    }

    (*(v7 + 8))(v9, v6);
    v41 = *(v45 + 8);
    v42 = v15;
  }

  v41(v42, v13);
}

void sub_20B906664(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_20B9066DC()
{
  v1 = v0;
  v220 = sub_20C132704();
  v223 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v205 = &v204 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v3 - 8);
  v221 = &v204 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665D8);
  MEMORY[0x28223BE20](v5 - 8);
  v222 = &v204 - v6;
  v7 = sub_20C138894();
  v231 = *(v7 - 8);
  v232 = v7;
  MEMORY[0x28223BE20](v7);
  v230 = (&v204 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for MarketingUserInterfaceConfiguration();
  MEMORY[0x28223BE20](v9);
  v226 = &v204 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v216 = &v204 - v12;
  MEMORY[0x28223BE20](v13);
  v214 = &v204 - v14;
  MEMORY[0x28223BE20](v15);
  v211 = &v204 - v16;
  MEMORY[0x28223BE20](v17);
  v215 = (&v204 - v18);
  MEMORY[0x28223BE20](v19);
  v213 = &v204 - v20;
  MEMORY[0x28223BE20](v21);
  v210 = &v204 - v22;
  MEMORY[0x28223BE20](v23);
  v207 = &v204 - v24;
  MEMORY[0x28223BE20](v25);
  v217 = &v204 - v26;
  MEMORY[0x28223BE20](v27);
  v212 = &v204 - v28;
  MEMORY[0x28223BE20](v29);
  v209 = &v204 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v204 - v32;
  v34 = sub_20C13BB84();
  v234 = *(v34 - 8);
  v235 = v34;
  MEMORY[0x28223BE20](v34);
  v225 = &v204 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v224 = &v204 - v37;
  MEMORY[0x28223BE20](v38);
  v227 = &v204 - v39;
  v40 = sub_20C132C14();
  v41 = *(v40 - 8);
  v42 = *(v41 + 8);
  MEMORY[0x28223BE20](v40);
  v229 = &v204 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v219 = &v204 - v44;
  MEMORY[0x28223BE20](v45);
  v208 = &v204 - v46;
  MEMORY[0x28223BE20](v47);
  v236 = &v204 - v48;
  MEMORY[0x28223BE20](v49);
  v206 = &v204 - v50;
  MEMORY[0x28223BE20](v51);
  v228 = &v204 - v52;
  v53 = type metadata accessor for MarketingUserInterfaceResource();
  MEMORY[0x28223BE20](v53);
  v55 = &v204 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = objc_opt_self();
  v56 = [v218 currentProcess];
  sub_20C138E44();
  v238 = sub_20C13D244();

  v233 = v9;
  v57 = *(v9 + 32);
  v237 = v1;
  sub_20B907F88(v1 + v57, v55, type metadata accessor for MarketingUserInterfaceResource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v159 = v229;
      (*(v41 + 4))(v229, v55, v40);
      v160 = objc_allocWithZone(MEMORY[0x277CDD340]);
      v161 = sub_20C132B64();
      v162 = [v160 initWithAccountURL_];

      (*(v41 + 1))(v159, v40);
      v163 = v162;
LABEL_20:
      v172 = v163;
LABEL_26:
      v164 = v238;
      goto LABEL_27;
    }

    v232 = *&v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A30) + 48)];
    v94 = v41;
    v95 = v41 + 32;
    v96 = *(v41 + 4);
    v97 = v236;
    v98 = v40;
    v227 = v96;
    v228 = v95;
    (v96)(v236, v55, v40);
    v99 = v225;
    sub_20C13B544();
    v100 = v237;
    v101 = v211;
    sub_20B907F88(v237, v211, type metadata accessor for MarketingUserInterfaceConfiguration);
    v102 = v214;
    sub_20B907F88(v100, v214, type metadata accessor for MarketingUserInterfaceConfiguration);
    v103 = v216;
    sub_20B907F88(v100, v216, type metadata accessor for MarketingUserInterfaceConfiguration);
    v224 = v94;
    v104 = (v94 + 16);
    v105 = *(v94 + 2);
    v106 = v208;
    v230 = v105;
    v231 = v104;
    (v105)(v208, v97, v98);
    v107 = v226;
    sub_20B907F88(v100, v226, type metadata accessor for MarketingUserInterfaceConfiguration);
    v108 = sub_20C13BB74();
    LODWORD(v218) = sub_20C13D1B4();
    if (os_log_type_enabled(v108, v218))
    {
      v109 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      v240 = v217;
      *v109 = 67110402;
      v110 = *(v233 + 36);
      v215 = v108;
      v111 = *(v101 + v110);
      sub_20B907FF0(v101);
      *(v109 + 4) = v111;
      *(v109 + 8) = 2048;
      aBlock = sub_20C136324();
      LOBYTE(v242) = v112 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A38);
      sub_20C133BB4();
      v113 = v239;
      sub_20B907FF0(v102);
      *(v109 + 10) = v113;
      *(v109 + 18) = 2082;
      v114 = sub_20C139344();
      v115 = v103;
      v117 = v116;
      sub_20B907FF0(v115);
      v118 = sub_20B51E694(v114, v117, &v240);

      *(v109 + 20) = v118;
      *(v109 + 28) = 2160;
      *(v109 + 30) = 1752392040;
      *(v109 + 38) = 2080;
      v119 = sub_20C132B24();
      v121 = v120;
      v122 = v224;
      v233 = *(v224 + 1);
      (v233)(v106, v98);
      v123 = sub_20B51E694(v119, v121, &v240);

      *(v109 + 40) = v123;
      *(v109 + 48) = 2080;
      v100 = v237;
      v124 = v226;
      v125 = sub_20C13C764();
      v127 = v126;
      sub_20B907FF0(v124);
      v128 = sub_20B51E694(v125, v127, &v240);

      *(v109 + 50) = v128;
      v129 = v215;
      _os_log_impl(&dword_20B517000, v215, v218, "[AMSUIWeb] Launching AMS web marketing controller: anon=%{BOOL}d, privacy=%ld sub=%{public}s for url=%{mask.hash}s with metrics=%s", v109, 0x3Au);
      v130 = v217;
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v130, -1, -1);
      MEMORY[0x20F2F6A40](v109, -1, -1);

      (*(v234 + 8))(v225, v235);
      v131 = v238;
      v132 = v98;
      v133 = v122;
    }

    else
    {
      sub_20B907FF0(v102);
      sub_20B907FF0(v101);

      sub_20B907FF0(v107);
      v173 = v224;
      v233 = *(v224 + 1);
      (v233)(v106, v98);
      sub_20B907FF0(v103);
      (*(v234 + 8))(v99, v235);
      v131 = v238;
      v132 = v98;
      v133 = v173;
    }

    v174 = *v100;
    v175 = [objc_allocWithZone(MEMORY[0x277CEE940]) initWithBag:v100[1] account:*v100 clientInfo:0];
    [v175 setAccount_];
    [v175 setDelegate_];
    v176 = sub_20C13C744();
    [v175 setMetricsOverlay_];

    [v175 setClientInfo_];
    sub_20C132B24();
    v177 = v222;
    sub_20C1326E4();

    v178 = *(v223 + 48);
    v179 = v220;
    if (!v178(v177, 1, v220))
    {
      sub_20C1326D4();
    }

    if (v178(v177, 1, v179))
    {
      v180 = v221;
      (*(v133 + 7))(v221, 1, 1, v132);
    }

    else
    {
      v190 = v223;
      v191 = v205;
      (*(v223 + 16))(v205, v177, v179);
      v180 = v221;
      sub_20C132694();
      (*(v190 + 8))(v191, v179);
      if ((*(v133 + 6))(v180, 1, v132) != 1)
      {
        v193 = v133;
        v192 = v219;
        (v227)(v219, v180, v132);
LABEL_25:
        v194 = sub_20C132B64();
        v195 = [v175 loadURL_];

        v196 = v229;
        v197 = v236;
        (v230)(v229, v236, v132);
        v198 = (v193[80] + 16) & ~v193[80];
        v199 = swift_allocObject();
        (v227)(v199 + v198, v196, v132);
        v245 = sub_20B90804C;
        v246 = v199;
        aBlock = MEMORY[0x277D85DD0];
        v242 = 1107296256;
        v243 = sub_20B906664;
        v244 = &block_descriptor_47;
        v200 = _Block_copy(&aBlock);

        [v195 addFinishBlock_];
        _Block_release(v200);
        swift_unknownObjectRelease();

        v201 = v233;
        (v233)(v192, v132);
        v201(v197, v132);
        v172 = v175;
        sub_20B520158(v177, &qword_27C7665D8);
        goto LABEL_26;
      }
    }

    v192 = v219;
    (v230)(v219, v236, v132);
    v193 = v133;
    if ((*(v133 + 6))(v180, 1, v132) != 1)
    {
      sub_20B520158(v180, &unk_27C7617F0);
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload)
  {
    v134 = *&v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764260) + 48)];
    (*(v231 + 32))(v230, v55, v232);
    v135 = v224;
    sub_20C13B544();
    v136 = v237;
    v137 = v207;
    sub_20B907F88(v237, v207, type metadata accessor for MarketingUserInterfaceConfiguration);
    v138 = v210;
    sub_20B907F88(v136, v210, type metadata accessor for MarketingUserInterfaceConfiguration);
    v139 = v213;
    sub_20B907F88(v136, v213, type metadata accessor for MarketingUserInterfaceConfiguration);
    v140 = v215;
    sub_20B907F88(v136, v215, type metadata accessor for MarketingUserInterfaceConfiguration);
    v141 = sub_20C13BB74();
    v142 = sub_20C13D1B4();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v236 = swift_slowAlloc();
      v240 = v236;
      *v143 = 67109890;
      v144 = v137;
      v145 = v233;
      v146 = *(v144 + *(v233 + 36));
      sub_20B907FF0(v144);
      *(v143 + 4) = v146;
      *(v143 + 8) = 2048;
      aBlock = sub_20C136324();
      LOBYTE(v242) = v147 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A38);
      sub_20C133BB4();
      v148 = v239;
      sub_20B907FF0(v138);
      *(v143 + 10) = v148;
      *(v143 + 18) = 2082;
      v149 = sub_20C139344();
      v150 = v139;
      v152 = v151;
      sub_20B907FF0(v150);
      v153 = sub_20B51E694(v149, v152, &v240);

      *(v143 + 20) = v153;
      *(v143 + 28) = 2080;
      v154 = sub_20C13C764();
      v156 = v155;
      sub_20B907FF0(v140);
      v157 = sub_20B51E694(v154, v156, &v240);

      *(v143 + 30) = v157;
      _os_log_impl(&dword_20B517000, v141, v142, "[AMSUIMarketingItem] Launching AMS marketing item controller: anon=%{BOOL}d, privacy=%ld sub=%{public}s with metrics=%s", v143, 0x26u);
      v158 = v236;
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v158, -1, -1);
      MEMORY[0x20F2F6A40](v143, -1, -1);

      (*(v234 + 8))(v224, v235);
    }

    else
    {
      sub_20B907FF0(v138);
      sub_20B907FF0(v137);

      sub_20B907FF0(v140);
      sub_20B907FF0(v139);
      (*(v234 + 8))(v135, v235);
      v145 = v233;
    }

    v181 = v230;
    v182 = sub_20C138814();
    v183 = [objc_allocWithZone(MEMORY[0x277CEE8E8]) initWithMarketingItem:v182 bag:v136[1]];

    [v183 setOfferHints_];
    v184 = *(v136 + *(v145 + 36));
    v185 = v183;
    [v185 setAnonymousMetrics_];
    sub_20B905994(v136[2]);
    v186 = sub_20C13C744();

    [v185 setMetricsOverlay_];

    [v185 setAccount_];
    sub_20C138E34();
    v187 = sub_20C13C914();

    [v185 setMediaClientIdentifier_];

    [v185 setDelegate_];
    v188 = [v218 currentProcess];
    sub_20C138E44();
    v189 = sub_20C13D244();

    [v185 setClientInfo_];
    swift_unknownObjectRelease();

    (*(v231 + 8))(v181, v232);
    v163 = v185;
    goto LABEL_20;
  }

  v236 = *&v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764258) + 48)];
  v59 = v41;
  v60 = *(v41 + 4);
  v61 = v228;
  v60(v228, v55, v40);
  sub_20C13B544();
  v62 = v237;
  sub_20B907F88(v237, v33, type metadata accessor for MarketingUserInterfaceConfiguration);
  v63 = v209;
  sub_20B907F88(v62, v209, type metadata accessor for MarketingUserInterfaceConfiguration);
  v64 = v212;
  sub_20B907F88(v62, v212, type metadata accessor for MarketingUserInterfaceConfiguration);
  v65 = *(v59 + 2);
  v66 = v206;
  v232 = v40;
  v65(v206, v61, v40);
  v67 = v217;
  sub_20B907F88(v62, v217, type metadata accessor for MarketingUserInterfaceConfiguration);
  v68 = sub_20C13BB74();
  v69 = sub_20C13D1B4();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = v64;
    v71 = swift_slowAlloc();
    v231 = swift_slowAlloc();
    v240 = v231;
    *v71 = 67110402;
    LODWORD(v229) = v69;
    v72 = *(v233 + 36);
    v230 = v68;
    v73 = v33[v72];
    sub_20B907FF0(v33);
    *(v71 + 4) = v73;
    *(v71 + 8) = 2048;
    aBlock = sub_20C136324();
    LOBYTE(v242) = v74 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A38);
    sub_20C133BB4();
    v75 = v239;
    sub_20B907FF0(v63);
    *(v71 + 10) = v75;
    *(v71 + 18) = 2082;
    v76 = sub_20C139344();
    v78 = v77;
    sub_20B907FF0(v70);
    v79 = sub_20B51E694(v76, v78, &v240);

    *(v71 + 20) = v79;
    *(v71 + 28) = 2160;
    *(v71 + 30) = 1752392040;
    *(v71 + 38) = 2080;
    v80 = sub_20C132B24();
    v82 = v81;
    v83 = *(v59 + 1);
    v84 = v232;
    v83(v66, v232);
    v85 = sub_20B51E694(v80, v82, &v240);

    *(v71 + 40) = v85;
    *(v71 + 48) = 2080;
    v86 = sub_20C13C764();
    v87 = v67;
    v89 = v88;
    sub_20B907FF0(v87);
    v90 = sub_20B51E694(v86, v89, &v240);

    *(v71 + 50) = v90;
    v91 = v230;
    _os_log_impl(&dword_20B517000, v230, v229, "[AMSUIDynamic] Launching AMS dynamic marketing controller: anon=%{BOOL}d, privacy=%ld sub=%{public}s for url=%{mask.hash}s with metrics=%s", v71, 0x3Au);
    v92 = v231;
    swift_arrayDestroy();
    v93 = v92;
    v62 = v237;
    MEMORY[0x20F2F6A40](v93, -1, -1);
    MEMORY[0x20F2F6A40](v71, -1, -1);
  }

  else
  {
    sub_20B907FF0(v63);
    sub_20B907FF0(v33);

    sub_20B907FF0(v67);
    v83 = *(v59 + 1);
    v84 = v232;
    v83(v66, v232);
    sub_20B907FF0(v64);
  }

  (*(v234 + 8))(v227, v235);
  v164 = v238;
  v165 = v62[1];
  v166 = objc_allocWithZone(MEMORY[0x277CEE8C8]);
  v167 = v228;
  v168 = sub_20C132B64();
  v169 = [v166 initWithBag:v165 URL:v168];

  [v169 setAccount_];
  [v169 setAnonymousMetrics_];
  [v169 setDelegate_];
  sub_20C138E34();
  v170 = sub_20C13C914();

  [v169 setMediaClientIdentifier_];

  sub_20B905994(v62[2]);
  v171 = sub_20C13C744();

  [v169 setMetricsOverlay_];

  [v169 setClientInfo_];
  swift_unknownObjectRelease();
  v83(v167, v84);
  v172 = v169;
LABEL_27:
  v202 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  return v202;
}

uint64_t sub_20B907F88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B907FF0(uint64_t a1)
{
  v2 = type metadata accessor for MarketingUserInterfaceConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20B90804C(char a1, void *a2)
{
  v5 = *(sub_20C132C14() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_20B906164(a1, a2, v6);
}

unint64_t sub_20B9080CC()
{
  result = qword_27C768AB0;
  if (!qword_27C768AB0)
  {
    sub_20C132C14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C768AB0);
  }

  return result;
}

unint64_t sub_20B908124()
{
  result = qword_27C767A60;
  if (!qword_27C767A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C767A60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentInsetInitialBehavior(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContentInsetInitialBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
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
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_20B9081FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B908210(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
  }

  else if (a2)
  {
    *(result + 8) = a2 + 2;
  }

  return result;
}

uint64_t sub_20B908248(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  sub_20C13E164();
  if (v4 == 3)
  {
    v5 = 1;
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x20F2F5910](v6);
    v5 = a2;
  }

  MEMORY[0x20F2F58E0](v5);
  return sub_20C13E1B4();
}

uint64_t sub_20B9082D8()
{
  v1 = *(v0 + 8);
  if (v1 == 3)
  {
    v1 = 1;
  }

  else
  {
    v2 = *v0;
    MEMORY[0x20F2F58E0](0);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x20F2F5910](v3);
  }

  return MEMORY[0x20F2F58E0](v1);
}

uint64_t sub_20B908338()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_20C13E164();
  if (v2 == 3)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x20F2F5910](v3);
  }

  MEMORY[0x20F2F58E0](v2);
  return sub_20C13E1B4();
}

BOOL sub_20B9083B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 3)
  {
    return v3 == 3;
  }

  return *a1 == *a2 && v3 != 3 && v2 == v3;
}

unint64_t sub_20B9083F0()
{
  result = qword_27C767A70;
  if (!qword_27C767A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767A70);
  }

  return result;
}

char *sub_20B908444(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_commonConstraints] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_standardConstraints] = v11;
  *&v4[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_accessibilityConstraints] = v11;
  v12 = &v4[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_standardLayout];
  *v12 = xmmword_20C162360;
  *(v12 + 2) = 0x4010000000000000;
  v13 = &v4[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_accessibilityLayout];
  *v13 = xmmword_20C162360;
  *(v13 + 2) = 0x4030000000000000;
  v4[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_showSeparator] = 1;
  v14 = &v4[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_commonLayout];
  *v14 = xmmword_20C162370;
  *(v14 + 2) = 0xC000000000000000;
  v15 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v16 = 16.0;
  }

  else
  {
    v16 = 2.0;
  }

  v17 = &v4[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView];
  v18 = [v15 layer];
  [v18 setCornerRadius_];

  [v15 setClipsToBounds_];
  *v17 = v15;
  v17[1] = &off_2822B63E8;
  v19 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_titleLabel;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v20 &selRef_count + 2];
  [v20 setAdjustsFontForContentSizeCategory_];
  v161 = objc_opt_self();
  v21 = [v161 preferredFontForTextStyle_];
  [v20 setFont_];

  [v20 setAllowsDefaultTighteningForTruncation_];
  v22 = objc_opt_self();
  v23 = [v22 whiteColor];
  [v20 setTextColor_];

  LODWORD(v24) = 1132068864;
  [v20 setContentCompressionResistancePriority:0 forAxis:v24];
  LODWORD(v25) = 1148846080;
  [v20 setContentCompressionResistancePriority:1 forAxis:v25];

  *&v4[v19] = v20;
  v26 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_subtitleLabel;
  v27 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  [v27 setAdjustsFontForContentSizeCategory_];
  v28 = *MEMORY[0x277D76968];
  v29 = [v161 preferredFontForTextStyle_];
  [v27 setFont_];

  [v27 setAllowsDefaultTighteningForTruncation_];
  v30 = [v22 systemGrayColor];
  [v27 setTextColor_];

  LODWORD(v31) = 1132068864;
  [v27 setContentCompressionResistancePriority:0 forAxis:v31];
  LODWORD(v32) = 1148846080;
  [v27 setContentCompressionResistancePriority:1 forAxis:v32];

  *&v4[v26] = v27;
  v163 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_explicitIconLabel;
  v33 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  [v33 setAdjustsFontForContentSizeCategory_];
  v34 = *MEMORY[0x277D74410];
  v35 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v28 compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v37 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v38 = swift_initStackObject();
  v39 = MEMORY[0x277D74430];
  *(v38 + 16) = xmmword_20C14F980;
  v40 = *v39;
  *(v38 + 32) = *v39;
  *(v38 + 40) = v34;
  v41 = v37;
  v42 = v40;
  v43 = sub_20B6B134C(v38);
  swift_setDeallocating();
  sub_20B520158(v38 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v43;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v44 = sub_20C13C744();

  v45 = [v35 fontDescriptorByAddingAttributes_];

  v46 = [v161 fontWithDescriptor:v45 size:0.0];
  [v33 setFont_];

  [v33 setAllowsDefaultTighteningForTruncation_];
  v47 = [v22 secondaryLabelColor];
  [v33 setTextColor_];

  LODWORD(v48) = 1144750080;
  [v33 setContentCompressionResistancePriority:0 forAxis:v48];
  LODWORD(v49) = 1148846080;
  [v33 setContentCompressionResistancePriority:1 forAxis:v49];

  *&v4[v163] = v33;
  v50 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_separator;
  v51 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v51 setTranslatesAutoresizingMaskIntoConstraints_];
  v52 = [v22 separatorColor];
  [v51 setBackgroundColor_];

  *&v4[v50] = v51;
  v165.receiver = v4;
  v165.super_class = type metadata accessor for MusicTrackCell();
  v53 = objc_msgSendSuper2(&v165, sel_initWithFrame_, a1, a2, a3, a4);
  v54 = *&v53[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView];
  v55 = *&v53[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView + 8];
  v56 = &v53[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView];
  ObjectType = swift_getObjectType();
  v58 = *(v55 + 288);
  v59 = v53;
  v60 = v54;
  v58(0, ObjectType, v55);

  v61 = [v59 contentView];
  [v61 addSubview_];

  v62 = [v59 &selRef_setMaximumFractionDigits_];
  v160 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_titleLabel;
  [v62 addSubview_];

  v63 = [v59 &selRef_setMaximumFractionDigits_];
  v164 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_subtitleLabel;
  [v63 addSubview_];

  v64 = [v59 &selRef_setMaximumFractionDigits_];
  v65 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_explicitIconLabel;
  [v64 addSubview_];

  v66 = [v59 &selRef_setMaximumFractionDigits_];
  v159 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_separator;
  [v66 addSubview_];

  v162 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v67 = [v59 &selRef_setMaximumFractionDigits_];
  [v67 addLayoutGuide_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_20C150930;
  v69 = v68;
  v70 = [*v56 leadingAnchor];
  v71 = [v59 &selRef_setMaximumFractionDigits_];
  v72 = [v71 leadingAnchor];

  v73 = [v70 constraintEqualToAnchor_];
  v74 = v69;
  v69[4] = v73;
  v75 = [*v56 widthAnchor];
  v76 = &v59[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_commonLayout];
  v77 = [v75 constraintEqualToConstant_];

  v74[5] = v77;
  v78 = [*v56 heightAnchor];
  v79 = [v78 &selRef_visibleCells + 1];

  v74[6] = v79;
  v80 = [*&v59[v65] leadingAnchor];
  v81 = [*&v59[v160] trailingAnchor];
  v82 = [v80 constraintEqualToAnchor:v81 constant:v76[1]];

  v74[7] = v82;
  v83 = [*&v59[v65] trailingAnchor];
  v84 = [v59 contentView];
  v85 = [v84 trailingAnchor];

  v86 = [v83 constraintLessThanOrEqualToAnchor_];
  v74[8] = v86;
  v87 = [*&v59[v65] bottomAnchor];
  v88 = [*&v59[v160] &selRef_secondaryLabel + 5];
  v89 = [v87 &selRef_passwordEntryCancelledHandler + 6];

  v74[9] = v89;
  v90 = [*&v59[v164] trailingAnchor];
  v91 = [v59 contentView];
  v92 = [v91 trailingAnchor];

  v93 = [v90 constraintEqualToAnchor_];
  v74[10] = v93;
  v94 = [*&v59[v164] topAnchor];
  v95 = [*&v59[v160] bottomAnchor];
  v96 = [v94 constraintEqualToAnchor:v95 constant:v76[1]];

  v74[11] = v96;
  v97 = [v162 leadingAnchor];
  v98 = [*&v59[v65] leadingAnchor];
  v99 = [v97 constraintEqualToAnchor_];

  v74[12] = v99;
  v100 = [v162 topAnchor];
  v101 = [*&v59[v160] topAnchor];
  v102 = [v100 &selRef:v101 alertControllerReleasedDictationButton:? + 5];

  v74[13] = v102;
  v103 = [v162 bottomAnchor];
  v104 = [*&v59[v164] bottomAnchor];
  v105 = [v103 &selRef:v104 alertControllerReleasedDictationButton:? + 5];

  v74[14] = v105;
  v106 = [*&v59[v159] leadingAnchor];
  v107 = [*&v59[v160] leadingAnchor];
  v108 = [v106 &selRef:v107 alertControllerReleasedDictationButton:? + 5];

  v74[15] = v108;
  v109 = [*&v59[v159] trailingAnchor];
  v110 = [v59 contentView];
  v111 = [v110 trailingAnchor];

  sub_20B90B824();
  v112 = [v109 constraintEqualToAnchor:v111 constant:?];

  v74[16] = v112;
  v113 = [*&v59[v159] bottomAnchor];
  v114 = [v59 contentView];
  v115 = [v114 bottomAnchor];

  v116 = [v113 &selRef:v115 alertControllerReleasedDictationButton:? + 5];
  v74[17] = v116;
  v117 = [*&v59[v159] heightAnchor];
  sub_20C1387F4();
  v118 = [v117 constraintEqualToConstant_];

  v74[18] = v118;
  *&v59[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_commonConstraints] = v74;

  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_20C150050;
  v120 = [*v56 topAnchor];
  v121 = [v59 contentView];
  v122 = [v121 topAnchor];

  v123 = [v120 constraintEqualToAnchor:v122 constant:4.0];
  *(v119 + 32) = v123;
  v124 = [*v56 bottomAnchor];
  v125 = [v59 contentView];
  v126 = [v125 bottomAnchor];

  v127 = [v124 constraintEqualToAnchor:v126 constant:-4.0];
  *(v119 + 40) = v127;
  v128 = [*&v59[v160] leadingAnchor];
  v129 = [*v56 trailingAnchor];
  v130 = [v128 constraintEqualToAnchor:v129 constant:16.0];

  *(v119 + 48) = v130;
  v131 = [*&v59[v164] leadingAnchor];
  v132 = [*v56 trailingAnchor];
  v133 = [v131 constraintEqualToAnchor:v132 constant:16.0];

  *(v119 + 56) = v133;
  v134 = [v162 centerYAnchor];
  v135 = [v59 contentView];
  v136 = [v135 centerYAnchor];

  v137 = [v134 constraintEqualToAnchor_];
  *(v119 + 64) = v137;
  *&v59[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_standardConstraints] = v119;

  v138 = swift_allocObject();
  *(v138 + 16) = xmmword_20C151850;
  v139 = [*v56 topAnchor];
  v140 = [v59 contentView];

  v141 = [v140 topAnchor];
  v142 = [v139 constraintEqualToAnchor:v141 constant:4.0];

  *(v138 + 32) = v142;
  v143 = [*&v59[v160] leadingAnchor];
  v144 = [*v56 leadingAnchor];
  v145 = [v143 constraintEqualToAnchor_];

  *(v138 + 40) = v145;
  v146 = [*&v59[v160] topAnchor];
  v147 = [*v56 bottomAnchor];
  v148 = [v146 constraintEqualToAnchor:v147 constant:16.0];

  *(v138 + 48) = v148;
  v149 = [*&v59[v164] leadingAnchor];
  v150 = [*v56 leadingAnchor];
  v151 = [v149 constraintEqualToAnchor_];

  *(v138 + 56) = v151;
  v152 = [*&v59[v164] topAnchor];
  v153 = [*&v59[v160] bottomAnchor];
  v154 = [v152 constraintEqualToAnchor_];

  *(v138 + 64) = v154;
  v155 = [*&v59[v159] topAnchor];
  v156 = [*&v59[v164] bottomAnchor];
  v157 = [v155 constraintEqualToAnchor:v156 constant:16.0];

  *(v138 + 72) = v157;
  *&v59[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_accessibilityConstraints] = v138;

  sub_20B909B6C();
  sub_20B909CFC();

  return v59;
}

void sub_20B909B6C()
{
  v1 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500);

  v2 = sub_20C13CC54();

  [v1 activateConstraints_];

  v3 = [v0 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  sub_20C13D424();

  v5 = sub_20C13CC54();

  [v1 deactivateConstraints_];

  v6 = sub_20C13CC54();

  [v1 activateConstraints_];
}

id sub_20B909CFC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_20C13D424();
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_titleLabel];
  v4 = (v1 & 1) == 0;
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 4;
  }

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  [*&v0[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_titleLabel] setLineBreakMode_];
  [v3 setNumberOfLines_];
  v8 = *&v0[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_subtitleLabel];
  [v8 setLineBreakMode_];

  return [v8 setNumberOfLines_];
}

id sub_20B909E00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicTrackCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MusicTrackCell()
{
  result = qword_281103840;
  if (!qword_281103840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B909F68()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B90A078(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B90A0C4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B90A11C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20B90A180(char a1)
{
  v2 = *v1;
  *(v2 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_showSeparator) = a1;
  return [*(v2 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_separator) setHidden_];
}

uint64_t sub_20B90A1D0(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v203 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v165 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v186 = &v165 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v187 = &v165 - v9;
  v185 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v165 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v14 - 8);
  v193 = &v165 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v184 = &v165 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v18;
  MEMORY[0x28223BE20](v19);
  v197 = &v165 - v20;
  v192 = sub_20C1391C4();
  v190 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v191 = &v165 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20C138A64();
  v194 = *(v22 - 8);
  v195 = v22;
  MEMORY[0x28223BE20](v22);
  v196 = &v165 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v24 - 8);
  v189 = &v165 - v25;
  v26 = sub_20C13C554();
  v201 = *(v26 - 8);
  v202 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = (&v165 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(sub_20C137C24() - 8);
  MEMORY[0x28223BE20](*(v29 + 64));
  MEMORY[0x28223BE20](v30);
  v36 = &v165 - v35;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x29)
  {
    v178 = v31;
    v188 = v34;
    v176 = v17;
    v177 = v16;
    v172 = v13;
    v173 = v6;
    v174 = v5;
    v37 = v32;
    v38 = v33;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A80);
    v40 = swift_projectBox();
    v181 = *v40;
    v182 = v40[2];
    v41 = *(v39 + 64);
    v42 = v40 + *(v39 + 80);
    v43 = *v42;
    v44 = *(v42 + 1);
    v45 = v42[16];
    v198 = v38;
    v199 = v36;
    v46 = *(v38 + 16);
    v200 = v37;
    v180 = v38 + 16;
    v179 = v46;
    v46(v36, v40 + v41, v37);

    sub_20B6A6418(v43, v44, v45);
    v47 = sub_20C13C914();
    v48 = [objc_opt_self() systemImageNamed_];

    v49 = &unk_281103000;
    v50 = v204;
    v203 = v48;
    if (v48)
    {
      v51 = [v203 imageWithRenderingMode_];
      if (v51)
      {
        v52 = v51;
        v53 = [objc_opt_self() textAttachmentWithImage_];
        v54 = [objc_opt_self() attributedStringWithAttachment_];
        [*&v50[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_explicitIconLabel] setAttributedText_];

        v49 = &unk_281103000;
      }
    }

    v55 = *&v50[v49[268]];
    v207[0] = v43;
    v207[1] = v44;
    v208 = v45;
    v205 = xmmword_20C152300;
    v206 = 1;
    sub_20B654378();
    sub_20B652F70();
    v56 = sub_20C133BF4();
    sub_20B583F4C(v43, v44, v45);
    [v55 setHidden_];
    v57 = sub_20C13C914();
    [v55 setAccessibilityIdentifier_];

    v58 = *&v50[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_titleLabel];
    v59 = sub_20C13C914();

    [v58 setText_];

    v60 = *&v50[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_subtitleLabel];
    v61 = sub_20C13C914();

    [v60 setText_];

    v62 = sub_20C138044();
    v64 = v63;
    v65 = sub_20C138054();
    v67 = v66;
    sub_20B51C88C(0, &qword_281100530);
    *v28 = sub_20C13D374();
    v69 = v201;
    v68 = v202;
    (*(v201 + 104))(v28, *MEMORY[0x277D85200], v202);
    v70 = sub_20C13C584();
    result = (*(v69 + 8))(v28, v68);
    if (v70)
    {
      v73 = *&v50[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView];
      v72 = *&v50[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v73 setContentMode_];
      v75 = v199;
      if (sub_20BA66C54(v199, v73, v72, 0))
      {
        v76 = swift_allocObject();
        v175 = v65;
        v202 = v62;
        v77 = v76;
        swift_unknownObjectWeakInit();
        v201 = ObjectType;
        v78 = v200;
        v179(v188, v75, v200);
        v79 = v198;
        v80 = *(v198 + 80);
        v171 = v72;
        v81 = (v80 + 24) & ~v80;
        v166 = v178 + 7;
        v182 = v67;
        v181 = v64;
        v82 = (v178 + 7 + v81) & 0xFFFFFFFFFFFFFFF8;
        v83 = (v82 + 23) & 0xFFFFFFFFFFFFFFF8;
        v84 = (v83 + 23) & 0xFFFFFFFFFFFFFFF8;
        v170 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
        v169 = v80;
        v85 = swift_allocObject();
        *(v85 + 16) = v77;
        v86 = *(v79 + 32);
        v168 = v79 + 32;
        v167 = v86;
        v86(v85 + v81, v188, v78);
        v87 = (v85 + v82);
        v88 = v181;
        v89 = v182;
        *v87 = v202;
        v87[1] = v88;
        v90 = (v85 + v83);
        *v90 = v175;
        v90[1] = v89;
        *(v85 + v84) = 2;
        v91 = v85 + v170;
        *v91 = MEMORY[0x277D84F90];
        *(v91 + 8) = 0;
        v92 = (v85 + ((v84 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v92 = 0;
        v92[1] = 0;
        v93 = v171;
        v94 = *(v171 + 152);

        v95 = v201;
        v94(sub_20B90B5DC, v85, v201, v93);

        [v73 bounds];
        if (v96 <= 0.0 || (v98 = v97, v97 <= 0.0))
        {
        }

        else
        {
          v99 = v96;
          v100 = v93;
          v170 = ~v169;
          (*(v93 + 120))(0, v95, v93);
          v101 = v189;
          v102 = v199;
          v103 = v200;
          v179(v189, v199, v200);
          (*(v198 + 56))(v101, 0, 1, v103);
          (*(v100 + 16))(v101, v95, v100);
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v104 = sub_20C13D5A4();
          [v73 setBackgroundColor_];

          (*(v100 + 176))(COERCE_DOUBLE(*&v99), COERCE_DOUBLE(*&v98), 0, v95, v100);
          v105 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v106 = v188;
          v107 = v103;
          v108 = v179;
          v179(v188, v102, v107);
          v109 = (v169 + 16) & v170;
          v110 = (v166 + v109) & 0xFFFFFFFFFFFFFFF8;
          v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
          v112 = swift_allocObject();
          v113 = v112 + v109;
          v114 = v200;
          v167(v113, v106, v200);
          *(v112 + v110) = v105;
          v115 = (v112 + v111);
          *v115 = v99;
          v115[1] = v98;
          v201 = v112;
          v116 = (v112 + ((v111 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v116 = 0;
          v116[1] = 0;
          v108(v106, v199, v114);
          (*(v190 + 104))(v191, *MEMORY[0x277D542A8], v192);
          v117 = v196;
          sub_20C138A54();
          v118 = v193;
          sub_20B5F17F8(v117, v193);
          v119 = v176;
          v120 = v177;
          if ((*(v176 + 48))(v118, 1, v177) == 1)
          {
            sub_20B520158(v118, &unk_27C766670);
            sub_20BA1D95C();

            (*(v194 + 8))(v117, v195);
          }

          else
          {
            v134 = *(v119 + 32);
            v134(v197, v118, v120);
            v135 = v134;
            v136 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v137 = v200;
            v108(v106, v199, v200);
            v138 = (v169 + 40) & v170;
            v139 = v138 + v178;
            v140 = (v138 + v178) & 0xFFFFFFFFFFFFFFF8;
            v141 = swift_allocObject();
            *(v141 + 2) = v136;
            v141[3] = v99;
            v141[4] = v98;
            v167(v141 + v138, v106, v137);
            *(v141 + v139) = 0;
            v142 = v141 + v140;
            *(v142 + 1) = 0;
            *(v142 + 2) = 0;
            v143 = swift_allocObject();
            *(v143 + 16) = sub_20B90B770;
            *(v143 + 24) = v141;
            v144 = v184;
            v145 = v177;
            (*(v119 + 16))(v184, v197, v177);
            v146 = (*(v119 + 80) + 16) & ~*(v119 + 80);
            v147 = (v183 + v146 + 7) & 0xFFFFFFFFFFFFFFF8;
            v148 = swift_allocObject();
            v135(v148 + v146, v144, v145);
            v149 = (v148 + v147);
            *v149 = sub_20B5F67A4;
            v149[1] = v143;
            v150 = v187;
            sub_20C137C94();
            v151 = swift_allocObject();
            v152 = v201;
            *(v151 + 16) = sub_20B90B6B4;
            *(v151 + 24) = v152;
            v153 = swift_allocObject();
            *(v153 + 16) = sub_20B5F67D4;
            *(v153 + 24) = v151;
            v154 = v173;
            v155 = v186;
            v156 = v174;
            (*(v173 + 16))(v186, v150, v174);
            v157 = (*(v154 + 80) + 16) & ~*(v154 + 80);
            v158 = (v185 + v157 + 7) & 0xFFFFFFFFFFFFFFF8;
            v159 = swift_allocObject();
            (*(v154 + 32))(v159 + v157, v155, v156);
            v160 = (v159 + v158);
            *v160 = sub_20B5DF204;
            v160[1] = v153;

            v161 = v172;
            sub_20C137C94();
            v162 = *(v154 + 8);
            v162(v150, v156);
            v163 = sub_20C137CB4();
            v164 = swift_allocObject();
            *(v164 + 16) = 0;
            *(v164 + 24) = 0;
            v163(sub_20B52347C, v164);

            v162(v161, v156);
            (*(v119 + 8))(v197, v177);
            (*(v194 + 8))(v196, v195);
          }
        }

        v133 = v199;
        v132 = *(v198 + 8);
      }

      else
      {

        v132 = *(v198 + 8);
        v133 = v75;
      }

      return v132(v133, v200);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_20C13B534();

    v121 = v204;
    v122 = sub_20C13BB74();
    v123 = sub_20C13D1D4();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v207[0] = v126;
      *v124 = 138543618;
      *(v124 + 4) = v121;
      *v125 = v121;
      *(v124 + 12) = 2082;
      *&v205 = a1;
      v127 = sub_20B5F66D0();
      v128 = v121;
      v129 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v127);
      v131 = sub_20B51E694(v129, v130, v207);

      *(v124 + 14) = v131;
      _os_log_impl(&dword_20B517000, v122, v123, "Attempted to configure %{public}@ with item: %{public}s", v124, 0x16u);
      sub_20B520158(v125, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v125, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v126);
      MEMORY[0x20F2F6A40](v126, -1, -1);
      MEMORY[0x20F2F6A40](v124, -1, -1);
    }

    return (*(v203 + 1))(v4, v2);
  }

  return result;
}

void sub_20B90B5DC()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA315A8(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B90B6B4(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA62EE0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B90B770(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F25E8(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_20B90B824()
{
  result = sub_20C1380F4();
  if (result)
  {
    if (result != 1)
    {
      sub_20C13DC94();
      MEMORY[0x20F2F4230](0xD000000000000018, 0x800000020C1A0510);
      sub_20C1380F4();
      sub_20C13DDF4();
      result = sub_20C13DE24();
      __break(1u);
    }
  }

  else if (qword_27C7606D0 != -1)
  {
    return swift_once();
  }

  return result;
}

void sub_20B90B93C()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_commonConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_standardConstraints) = v3;
  *(v0 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_accessibilityConstraints) = v3;
  v4 = v0 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_standardLayout;
  *v4 = xmmword_20C162360;
  *(v4 + 16) = 0x4010000000000000;
  v5 = v0 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_accessibilityLayout;
  *v5 = xmmword_20C162360;
  *(v5 + 16) = 0x4030000000000000;
  *(v0 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_showSeparator) = 1;
  v6 = v0 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_commonLayout;
  *v6 = xmmword_20C162370;
  *(v6 + 16) = 0xC000000000000000;
  v7 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v8 = 16.0;
  }

  else
  {
    v8 = 2.0;
  }

  v9 = (v0 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView);
  v10 = [v7 layer];
  [v10 setCornerRadius_];

  [v7 setClipsToBounds_];
  *v9 = v7;
  v9[1] = &off_2822B63E8;
  v11 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_titleLabel;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v12 &selRef_count + 2];
  [v12 setAdjustsFontForContentSizeCategory_];
  v43 = objc_opt_self();
  v13 = [v43 preferredFontForTextStyle_];
  [v12 setFont_];

  [v12 setAllowsDefaultTighteningForTruncation_];
  v44 = objc_opt_self();
  v14 = [v44 whiteColor];
  [v12 setTextColor_];

  LODWORD(v15) = 1132068864;
  [v12 setContentCompressionResistancePriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v12 setContentCompressionResistancePriority:1 forAxis:v16];

  *(v0 + v11) = v12;
  v17 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_subtitleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setAdjustsFontForContentSizeCategory_];
  v19 = *MEMORY[0x277D76968];
  v20 = [v43 preferredFontForTextStyle_];
  [v18 setFont_];

  [v18 setAllowsDefaultTighteningForTruncation_];
  v21 = [v44 systemGrayColor];
  [v18 setTextColor_];

  LODWORD(v22) = 1132068864;
  [v18 setContentCompressionResistancePriority:0 forAxis:v22];
  LODWORD(v23) = 1148846080;
  [v18 setContentCompressionResistancePriority:1 forAxis:v23];

  *(v0 + v17) = v18;
  v45 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_explicitIconLabel;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  [v24 setAdjustsFontForContentSizeCategory_];
  v25 = *MEMORY[0x277D74410];
  v26 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v19 compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v28 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_20C14F980;
  v30 = *MEMORY[0x277D74430];
  *(v29 + 32) = *MEMORY[0x277D74430];
  *(v29 + 40) = v25;
  v31 = v28;
  v32 = v30;
  v33 = sub_20B6B134C(v29);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v33;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v34 = sub_20C13C744();

  v35 = [v26 fontDescriptorByAddingAttributes_];

  v36 = [v43 fontWithDescriptor:v35 size:0.0];
  [v24 setFont_];

  [v24 setAllowsDefaultTighteningForTruncation_];
  v37 = [v44 secondaryLabelColor];
  [v24 setTextColor_];

  LODWORD(v38) = 1144750080;
  [v24 &selRef:0 setBackgroundColor:v38 + 6];
  LODWORD(v39) = 1148846080;
  [v24 &selRef:1 setBackgroundColor:v39 + 6];

  *(v0 + v45) = v24;
  v40 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_separator;
  v41 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v41 setTranslatesAutoresizingMaskIntoConstraints_];
  v42 = [v44 separatorColor];
  [v41 setBackgroundColor_];

  *(v0 + v40) = v41;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B90C090(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B90C6DC(v1, v2, v3, v4);
  }

  return result;
}

uint64_t sub_20B90C118(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v39 - v7;
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v41 = a2 & 1;
  v42 = a1;

  v13 = 0;
  while (v11)
  {
LABEL_11:
    v17 = (*(v42 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v11)))));
    v19 = *v17;
    v18 = v17[1];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *(v3 + 128);
    v21 = v43;
    *(v3 + 128) = 0x8000000000000000;
    v22 = sub_20B65AA60(v19, v18);
    v24 = v21[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_23;
    }

    v28 = v23;
    if (v21[3] < v27)
    {
      sub_20BA09650(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_20B65AA60(v19, v18);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v28)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v33 = v22;
    sub_20BA0FD80();
    v22 = v33;
    if (v28)
    {
LABEL_4:
      v14 = v22;

      v15 = v43;
      *(v43[7] + v14) = v41;
      goto LABEL_5;
    }

LABEL_17:
    v15 = v43;
    v43[(v22 >> 6) + 8] |= 1 << v22;
    v30 = (v15[6] + 16 * v22);
    *v30 = v19;
    v30[1] = v18;
    *(v15[7] + v22) = v41;
    v31 = v15[2];
    v26 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v26)
    {
      goto LABEL_24;
    }

    v15[2] = v32;
LABEL_5:
    v11 &= v11 - 1;
    *(v3 + 128) = v15;
    swift_endAccess();
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
      v34 = v42;

      v35 = sub_20C13CDF4();
      v36 = v40;
      (*(*(v35 - 8) + 56))(v40, 1, 1, v35);
      v37 = swift_allocObject();
      v37[2] = 0;
      v37[3] = 0;
      v37[4] = v3;
      v37[5] = v34;

      sub_20B6383D0(0, 0, v36, &unk_20C162538, v37);
    }

    v11 = *(v8 + 8 * v16);
    ++v13;
    if (v11)
    {
      v13 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_20C13E054();
  __break(1u);
  return result;
}

uint64_t sub_20B90C448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_20B90C468, 0, 0);
}

uint64_t sub_20B90C468()
{
  __swift_project_boxed_opaque_existential_1((v0[2] + 80), *(v0[2] + 104));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20B772B0C;
  v2 = v0[3];

  return sub_20C0A07BC(v2, 1);
}

uint64_t sub_20B90C514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_20B90C538, 0, 0);
}

uint64_t sub_20B90C538()
{
  __swift_project_boxed_opaque_existential_1((v0[2] + 80), *(v0[2] + 104));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_20B90C5E8;
  v3 = v0[3];
  v2 = v0[4];

  return sub_20C0A1328(v3, v2, 0, 3);
}

uint64_t sub_20B90C5E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_20B90C6DC(uint64_t a1, unint64_t a2, void *a3, int a4)
{
  v5 = v4;
  LODWORD(v65) = a4;
  v64 = a3;
  v8 = sub_20C13BB84();
  v66 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - v12;
  v14 = sub_20C13C554();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v17 = sub_20C13D374();
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v18 = sub_20C13C584();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    swift_beginAccess();
    v19 = v5[16];
    if (*(v19 + 16))
    {

      v20 = sub_20B65AA60(a1, a2);
      if ((v21 & 1) == 0)
      {

        return;
      }

      v62 = *(*(v19 + 56) + v20);

      swift_beginAccess();
      v22 = v5[15];
      if (*(v22 + 16))
      {

        v23 = sub_20B65AA60(a1, a2);
        if (v24)
        {
          v25 = *(v22 + 56) + 16 * v23;
          v26 = *v25;
          v61 = *(v25 + 8);
          v27 = v26;
        }

        else
        {
          v26 = 0;
          v61 = 0;
        }
      }

      else
      {
        v26 = 0;
        v61 = 0;
      }

      sub_20C13B424();

      v28 = sub_20C13BB74();
      v29 = sub_20C13D1F4();

      v30 = os_log_type_enabled(v28, v29);
      v63 = a1;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = a1;
        v34 = v26;
        v35 = v32;
        aBlock = v32;
        *v31 = 141558274;
        *(v31 + 4) = 1752392040;
        *(v31 + 12) = 2080;
        *(v31 + 14) = sub_20B51E694(v33, a2, &aBlock);
        _os_log_impl(&dword_20B517000, v28, v29, "[UM] Placement for %{mask.hash}s", v31, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v35);
        v36 = v35;
        v26 = v34;
        MEMORY[0x20F2F6A40](v36, -1, -1);
        MEMORY[0x20F2F6A40](v31, -1, -1);
      }

      v37 = *(v66 + 8);
      v37(v13, v8);
      if (v65 == 1)
      {
        v38 = v64;
        v39 = v64;
        v40 = [v39 style];
        v41 = v63;
        if (v40 == 4 || [v39 style] == 8)
        {
          v42 = [objc_allocWithZone(MEMORY[0x277CEE8A0]) initWithRequest_];
          v43 = [v42 loadPromise];
          v44 = swift_allocObject();
          swift_weakInit();
          v45 = swift_allocObject();
          *(v45 + 16) = v41;
          *(v45 + 24) = a2;
          *(v45 + 32) = v44;
          *(v45 + 40) = v42;
          *(v45 + 48) = v62;
          v46 = v61;
          *(v45 + 56) = v26;
          *(v45 + 64) = v46;
          v71 = sub_20B90DF38;
          v72 = v45;
          aBlock = MEMORY[0x277D85DD0];
          v68 = 1107296256;
          v69 = sub_20B7B548C;
          v70 = &block_descriptor_48;
          v47 = _Block_copy(&aBlock);
          v48 = v26;

          v49 = v42;

          [v43 addSuccessBlock_];
          _Block_release(v47);
          v50 = swift_allocObject();
          *(v50 + 16) = v41;
          *(v50 + 24) = a2;
          v71 = sub_20B90DF50;
          v72 = v50;
          aBlock = MEMORY[0x277D85DD0];
          v68 = 1107296256;
          v69 = sub_20B90D6B8;
          v70 = &block_descriptor_37_0;
          v51 = _Block_copy(&aBlock);

          [v43 addErrorBlock_];

          _Block_release(v51);
          sub_20B8E0828(v38, 1u);
          return;
        }

        sub_20B8E0828(v38, 1u);
      }

      else
      {
        sub_20C13B424();

        v52 = sub_20C13BB74();
        v53 = sub_20C13D1F4();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v65 = v26;
          v56 = v55;
          aBlock = v55;
          *v54 = 141558274;
          *(v54 + 4) = 1752392040;
          *(v54 + 12) = 2080;
          v57 = v63;
          *(v54 + 14) = sub_20B51E694(v63, a2, &aBlock);
          _os_log_impl(&dword_20B517000, v52, v53, "[UM] Removing placement content for %{mask.hash}s)", v54, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v56);
          v58 = v56;
          v26 = v65;
          MEMORY[0x20F2F6A40](v58, -1, -1);
          MEMORY[0x20F2F6A40](v54, -1, -1);

          v37(v10, v8);
        }

        else
        {

          v37(v10, v8);
          v57 = v63;
        }

        swift_beginAccess();

        sub_20C0C0A08(0, 0, v57, a2);
        swift_endAccess();
        v59 = v5[17];
        if (v59)
        {

          v59(v57, a2, v62, v26, v61, 0, 0);

          sub_20B583ECC(v59);

          return;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20B90CE98(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, int a5, void *a6, uint64_t a7)
{
  v41 = a7;
  v42 = a6;
  v40 = a5;
  v43 = a3;
  v47 = a1;
  v9 = sub_20C13C4B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13C4F4();
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C13BB84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();

  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = a4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v39 = v10;
    v24 = v9;
    v25 = v23;
    aBlock[0] = v23;
    *v22 = 141558274;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_20B51E694(v47, a2, aBlock);
    _os_log_impl(&dword_20B517000, v19, v20, "[UM] Successfully fetched assets for placement %{mask.hash}s", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v26 = v25;
    v9 = v24;
    v10 = v39;
    MEMORY[0x20F2F6A40](v26, -1, -1);
    v27 = v22;
    a4 = v38;
    MEMORY[0x20F2F6A40](v27, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  sub_20B5E2E18();
  v28 = sub_20C13D374();
  v29 = swift_allocObject();
  v30 = v42;
  v31 = v47;
  *(v29 + 16) = v43;
  *(v29 + 24) = v31;
  *(v29 + 32) = a2;
  *(v29 + 40) = a4;
  *(v29 + 48) = v40 & 1;
  v32 = v41;
  *(v29 + 56) = v30;
  *(v29 + 64) = v32;
  aBlock[4] = sub_20B90DF58;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_43;
  v33 = _Block_copy(aBlock);
  v34 = v30;

  v35 = a4;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B5267DC(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  v36 = v46;
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v14, v36, v33);
  _Block_release(v33);

  (*(v10 + 8))(v36, v9);
  return (*(v44 + 8))(v14, v45);
}

uint64_t sub_20B90D320(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();

    v15 = a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v14 + 120);
    *(v14 + 120) = 0x8000000000000000;
    sub_20B90DF8C(v15, a2, a3, isUniquelyReferenced_nonNull_native, &v19);

    *(v14 + 120) = v19;
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + 136);
    sub_20B584050(v18);

    if (v18)
    {
      v18(a2, a3, a5 & 1, a6, a7, a4, &off_2822A4C78);
      return sub_20B583ECC(v18);
    }
  }

  return result;
}

uint64_t sub_20B90D490(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();

  v10 = a1;
  v11 = sub_20C13BB74();
  v12 = sub_20C13D1D4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = a2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 141558530;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_20B51E694(v13, a3, &v21);
    *(v14 + 22) = 2082;
    swift_getErrorValue();
    v16 = MEMORY[0x20F2F5850](v20[2], v20[3]);
    v18 = sub_20B51E694(v16, v17, &v21);

    *(v14 + 24) = v18;
    _os_log_impl(&dword_20B517000, v11, v12, "[UM] Error fetching assets for placement %{mask.hash}s): %{public}s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v15, -1, -1);
    MEMORY[0x20F2F6A40](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_20B90D6B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_20B90D720(uint64_t a1)
{
  v53 = a1;
  v2 = sub_20C1391E4();
  v3 = *(v2 - 8);
  v57 = v2;
  v58 = v3;
  MEMORY[0x28223BE20](v2);
  v56 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C134C44();
  MEMORY[0x28223BE20](v5 - 8);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v11 - 8);
  v49 = &v45 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v13 - 8);
  v45 = &v45 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - v16;
  v18 = sub_20C135D24();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_20C134F74();
  v50 = *(v22 - 8);
  v51 = v22;
  MEMORY[0x28223BE20](v22);
  v48 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v47 = &v45 - v25;
  v26 = sub_20C132E94();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  sub_20C132E64();
  v30 = sub_20C139204();
  (*(v27 + 8))(v29, v26);
  *v21 = v30;
  (*(v19 + 104))(v21, *MEMORY[0x277D52100], v18);
  v31 = sub_20C1333A4();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v17, v53, v31);
  (*(v32 + 56))(v17, 0, 1, v31);
  v33 = sub_20C135664();
  (*(*(v33 - 8) + 56))(v45, 1, 1, v33);
  v34 = sub_20C135674();
  (*(*(v34 - 8) + 56))(v49, 1, 1, v34);
  v35 = v52;
  sub_20C134F94();
  v36 = sub_20C134FB4();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
  (*(*(v37 - 8) + 56))(v54, 1, 1, v37);
  v38 = sub_20C135F14();
  (*(*(v38 - 8) + 56))(v55, 1, 1, v38);
  v39 = v47;
  sub_20C134F54();
  v41 = v50;
  v40 = v51;
  (*(v50 + 16))(v48, v39, v51);
  v42 = v56;
  sub_20C1391F4();
  swift_getObjectType();
  sub_20B5267DC(&qword_281103B30, MEMORY[0x277D542C0]);
  v43 = v57;
  sub_20C13A764();
  (*(v58 + 8))(v42, v43);
  return (*(v41 + 8))(v39, v40);
}

uint64_t sub_20B90DEA0()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  sub_20B583ECC(*(v0 + 136));

  return swift_deallocClassInstance();
}

void sub_20B90DF8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_20B65AA60(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_20BA0B4FC(v16, a4 & 1);
      v11 = sub_20B65AA60(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_20C13E054();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_20BA10EA0();
      v11 = v19;
    }
  }

  v21 = *a5;
  if (v17)
  {
    v22 = v21[7] + 16 * v11;
    v23 = *v22;
    *v22 = a1;
    *(v22 + 8) = &off_2822A4C78;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + 16 * v11);
  *v25 = a1;
  v25[1] = &off_2822A4C78;
  v26 = v21[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v27;
}

uint64_t sub_20B90E120(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52A9D4;

  return sub_20B90C448(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for WorkoutPlanScheduledItemUpdated()
{
  result = qword_27C767A88;
  if (!qword_27C767A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B90E264()
{
  result = type metadata accessor for WorkoutPlanScheduledItemUpdate(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20B90E2DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_20C133244();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  swift_beginAccess();
  sub_20B52F9E8(v3 + v14, v9, &unk_27C7629C0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20B520158(v9, &unk_27C7629C0);
    return (*(v11 + 56))(a3, 1, 1, v10);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_20B90E778(v13, a1, a3);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_20B90E4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_20C133244();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 16))(a2, a3, v13);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20B520158(v10, &unk_27C7629C0);
    return (*(v12 + 56))(a4, 1, 1, v11);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    sub_20B90E9C4(v15, a1, a4);
    return (*(v12 + 8))(v15, v11);
  }
}

char *sub_20B90E778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v6 = [v5 numberOfSections];
  result = sub_20C133234();
  if (result >= v6)
  {
    goto LABEL_9;
  }

  v8 = [v5 numberOfItemsInSection_];
  if (sub_20C133224() >= v8)
  {
    result = sub_20C133234();
    if (v6 < result)
    {
      goto LABEL_24;
    }

    v14 = result;
    while (v6 != v14)
    {
      v15 = v14 + 1;
      result = [v5 numberOfItemsInSection_];
      v14 = v15;
      if (result > 0)
      {
        v16 = (v15 - 1);
        result = 0;
        goto LABEL_17;
      }
    }

LABEL_9:
    if ((v6 & 0x8000000000000000) == 0)
    {
      do
      {
        if (!v6)
        {
          v20 = sub_20C133244();
          v10 = *(*(v20 - 8) + 56);
          v13 = v20;
          v11 = a3;
          v12 = 1;
          goto LABEL_18;
        }

        --v6;
      }

      while ([v5 numberOfItemsInSection_] < 1);
      if (sub_20C133234() == v6)
      {
        v17 = [v5 numberOfItemsInSection_];
        v18 = __OFSUB__(v17, 1);
        result = v17 - 1;
        if (v18)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = 0;
      }

      v16 = v6;
LABEL_17:
      MEMORY[0x20F2EA980](result, v16, v14);
      v19 = sub_20C133244();
      v10 = *(*(v19 - 8) + 56);
      v13 = v19;
      v11 = a3;
      v12 = 0;
      goto LABEL_18;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v9 = sub_20C133244();
  v21 = *(v9 - 8);
  (*(v21 + 16))(a3, a1, v9);
  v10 = *(v21 + 56);
  v11 = a3;
  v12 = 0;
  v13 = v9;
LABEL_18:

  return v10(v11, v12, 1, v13);
}

uint64_t sub_20B90E9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v6 = [v5 numberOfSections];
  result = sub_20C133234();
  if (result >= v6)
  {
    goto LABEL_9;
  }

  v8 = [v5 numberOfItemsInSection_];
  if (sub_20C133224() >= v8)
  {
    result = sub_20C133234();
    if (v6 < result)
    {
      goto LABEL_24;
    }

    v14 = result;
    while (v6 != v14)
    {
      v15 = v14 + 1;
      result = [v5 numberOfItemsInSection_];
      v14 = v15;
      if (result >= 1)
      {
        v16 = (v15 - 1);
        result = 0;
        goto LABEL_17;
      }
    }

LABEL_9:
    if ((v6 & 0x8000000000000000) == 0)
    {
      do
      {
        if (!v6)
        {
          v20 = sub_20C133244();
          v10 = *(*(v20 - 8) + 56);
          v13 = v20;
          v11 = a3;
          v12 = 1;
          goto LABEL_18;
        }

        --v6;
      }

      while ([v5 numberOfItemsInSection_] <= 0);
      if (sub_20C133234() == v6)
      {
        v17 = [v5 numberOfItemsInSection_];
        v18 = __OFSUB__(v17, 1);
        result = v17 - 1;
        if (v18)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = 0;
      }

      v16 = v6;
LABEL_17:
      MEMORY[0x20F2EA980](result, v16, v14);
      v19 = sub_20C133244();
      v10 = *(*(v19 - 8) + 56);
      v13 = v19;
      v11 = a3;
      v12 = 0;
      goto LABEL_18;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v9 = sub_20C133244();
  v21 = *(v9 - 8);
  (*(v21 + 16))(a3, a1, v9);
  v10 = *(v21 + 56);
  v11 = a3;
  v12 = 0;
  v13 = v9;
LABEL_18:

  return v10(v11, v12, 1, v13);
}

uint64_t sub_20B90EC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a3)
  {
    v6 = result;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v8 = sub_20C133224();
    (*(v6 + 24))(a2, v8, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B90ECDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(a8 + 80))(a2, a6, a8);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a3)
  {
    v11 = result;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_20C133224();
    (*(v11 + 24))(a2, v13, ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_20B90EEF0(uint64_t a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v61 = a4;
  *&v67 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x28223BE20](v10);
  v62 = v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v54 - v13;
  v69 = sub_20C133244();
  v15 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v60 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v54 - v18;
  v59 = v20;
  v22 = MEMORY[0x28223BE20](v21);
  v68 = v54 - v23;
  v24 = *(a5 + 48);
  v70 = a5;
  if (v24(a3, a5, v22))
  {
    (*(v70 + 72))(&v76, a3);
    v65 = a2;
    v66 = v15;
    __swift_project_boxed_opaque_existential_1(&v76, *(&v77 + 1));
    a2 = v65;
    v15 = v66;
    sub_20C13AE44();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v76);
  }

  result = [a2 nextFocusedIndexPath];
  if (result)
  {
    v26 = result;
    sub_20C1331E4();

    v28 = v68;
    v27 = v69;
    v65 = *(v15 + 32);
    v65(v68, v19, v69);
    v58 = *(v15 + 16);
    v58(v14, v28, v27);
    (*(v15 + 56))(v14, 0, 1, v27);
    (*(v70 + 24))(v14, a3);
    v29 = [*(v67 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) dataSource];
    if (v29)
    {
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
      if (swift_dynamicCastClass())
      {
        v56 = v30;
        v57 = v15 + 16;
        v54[3] = v15 + 32;
        v31 = v62;
        sub_20C13BFA4();
        v32 = v64;
        v33 = sub_20C13BE74();
        (*(v63 + 8))(v31, v32);
        result = sub_20C133234();
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *(v33 + 16))
        {
          v34 = *(v33 + 24 * result + 32);

          if ((v34 & 0x8000000000000000) == 0)
          {
            v64 = v6;
            v66 = v15;
            v55 = a3;
            v35 = *(v67 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
            if (v34 < *(v35 + 16))
            {
              v67 = *(v35 + 16 * v34 + 32);
              v36 = v67;
              ObjectType = swift_getObjectType();
              v38 = *(&v67 + 1);
              v39 = *(*(&v67 + 1) + 40);
              swift_unknownObjectRetain();
              v39(v74, ObjectType, v38);
              v84 = v74[8];
              v85 = v74[9];
              v86 = v75;
              v80 = v74[4];
              v81 = v74[5];
              v82 = v74[6];
              v83 = v74[7];
              v76 = v74[0];
              v77 = v74[1];
              v78 = v74[2];
              v79 = v74[3];
              if (sub_20B5EAF8C(&v76) == 1)
              {
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                return (*(v66 + 8))(v68, v69);
              }

              v63 = v36;
              v40 = *(&v82 + 1);
              v87[0] = *(&v82 + 1);
              sub_20B52F9E8(v87, v71, &qword_27C763188);
              sub_20B520158(v74, &qword_27C762340);
              v41 = v68;
              result = sub_20C133224();
              if ((result & 0x8000000000000000) == 0)
              {
                v42 = v55;
                v43 = v64;
                if (result < *(v40 + 16))
                {
                  v54[0] = *(v40 + 8 * result + 32);

                  sub_20B520158(v87, &qword_27C763188);
                  v44 = v70;
                  (*(v70 + 72))(v71, v42, v70);
                  v54[2] = v72;
                  v62 = v73;
                  v54[1] = __swift_project_boxed_opaque_existential_1(v71, v72);
                  (*(v44 + 40))(v42, v44);
                  sub_20B5E2E18();
                  v45 = sub_20C13D374();
                  v46 = v60;
                  v47 = v69;
                  v58(v60, v41, v69);
                  v48 = v66;
                  v49 = (*(v66 + 80) + 72) & ~*(v66 + 80);
                  v50 = swift_allocObject();
                  v51 = v61;
                  *(v50 + 16) = v42;
                  *(v50 + 24) = v51;
                  *(v50 + 32) = v44;
                  *(v50 + 40) = v43;
                  *(v50 + 48) = v54[0];
                  *(v50 + 56) = v67;
                  v65(v50 + v49, v46, v47);
                  swift_unknownObjectRetain();

                  v52 = v43;
                  v53 = sub_20C13AE34();

                  (*(v44 + 56))(v53, v55, v44);

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  (*(v48 + 8))(v68, v47);
                  return __swift_destroy_boxed_opaque_existential_1(v71);
                }

LABEL_23:
                __break(1u);
                return result;
              }

LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
    }

    return (*(v15 + 8))(v28, v69);
  }

  return result;
}

uint64_t sub_20B90F698()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(sub_20C133244() - 8);
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0 + ((*(v4 + 80) + 72) & ~*(v4 + 80));

  return sub_20B90ECDC(v5, v6, v7, v8, v9, v1, v2, v3);
}

unint64_t sub_20B90F724(uint64_t a1, void *a2)
{
  v3 = v2;
  *&v57 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  v53 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - v8;
  v10 = sub_20C133244();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v50 = v12;
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v43 - v14;
  v52 = OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_settlingTimer;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_settlingTimer])
  {
    v56 = &v43 - v14;
    __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_timerProvider], *&v2[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_timerProvider + 24]);
    swift_unknownObjectRetain();
    v3 = v2;
    v16 = v56;
    sub_20C13AE44();
    swift_unknownObjectRelease();
  }

  result = [a2 nextFocusedIndexPath];
  if (result)
  {
    v18 = result;
    sub_20C1331E4();

    v19 = *(v11 + 16);
    v19(v9, v16, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v20 = OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_lastFocusedIndexPath;
    swift_beginAccess();
    sub_20B59784C(v9, &v3[v20]);
    swift_endAccess();
    v21 = [*(v57 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) dataSource];
    if (v21)
    {
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
      if (swift_dynamicCastClass())
      {
        v48 = v11 + 16;
        v49 = v22;
        v23 = v53;
        sub_20C13BFA4();
        v24 = v55;
        v25 = sub_20C13BE74();
        v54[1](v23, v24);
        result = sub_20C133234();
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *(v25 + 16))
        {
          v26 = *(v25 + 24 * result + 32);

          if ((v26 & 0x8000000000000000) == 0)
          {
            v53 = v19;
            v54 = v3;
            v55 = v10;
            v56 = v16;
            v27 = *(v57 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
            if (v26 < *(v27 + 16))
            {
              v57 = *(v27 + 16 * v26 + 32);
              ObjectType = swift_getObjectType();
              v29 = *(&v57 + 1);
              v30 = *(*(&v57 + 1) + 40);
              swift_unknownObjectRetain();
              v30(v59, ObjectType, v29);
              v64 = v59[8];
              v65 = v59[9];
              v66 = v60;
              v61[4] = v59[4];
              v61[5] = v59[5];
              v62 = v59[6];
              v63 = v59[7];
              v61[0] = v59[0];
              v61[1] = v59[1];
              v61[2] = v59[2];
              v61[3] = v59[3];
              if (sub_20B5EAF8C(v61) == 1)
              {
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                return (*(v11 + 8))(v56, v55);
              }

              v31 = *(&v62 + 1);
              v67[0] = *(&v62 + 1);
              sub_20B52F9E8(v67, &v58, &qword_27C763188);
              sub_20B520158(v59, &qword_27C762340);
              result = sub_20C133224();
              if ((result & 0x8000000000000000) == 0)
              {
                if (result < *(v31 + 16))
                {
                  v32 = *(v31 + 8 * result + 32);

                  sub_20B520158(v67, &qword_27C763188);
                  v33 = v54;
                  v34 = *(v54 + OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_timerProvider + 32);
                  v46 = *(v54 + OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_timerProvider + 24);
                  v47 = v34;
                  v45 = __swift_project_boxed_opaque_existential_1((v54 + OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_timerProvider), v46);
                  sub_20B5E2E18();
                  v44 = sub_20C13D374();
                  v35 = v51;
                  v37 = v55;
                  v36 = v56;
                  (v53)(v51, v56, v55);
                  v38 = (*(v11 + 80) + 48) & ~*(v11 + 80);
                  v39 = swift_allocObject();
                  *(v39 + 16) = v33;
                  *(v39 + 24) = v32;
                  *(v39 + 32) = v57;
                  (*(v11 + 32))(v39 + v38, v35, v37);
                  swift_unknownObjectRetain();

                  v40 = v33;
                  v41 = v44;
                  v42 = sub_20C13AE34();

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  (*(v11 + 8))(v36, v37);
                  *(v33 + v52) = v42;
                  return swift_unknownObjectRelease();
                }

                goto LABEL_23;
              }

LABEL_22:
              __break(1u);
LABEL_23:
              __break(1u);
              return result;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
    }

    return (*(v11 + 8))(v16, v10);
  }

  return result;
}

unint64_t sub_20B90FDB4(uint64_t a1, void *a2)
{
  v3 = v2;
  *&v57 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  v53 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - v8;
  v10 = sub_20C133244();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v50 = v12;
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v43 - v14;
  v52 = OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_settlingTimer;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_settlingTimer])
  {
    v56 = &v43 - v14;
    __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_timerProvider], *&v2[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_timerProvider + 24]);
    swift_unknownObjectRetain();
    v3 = v2;
    v16 = v56;
    sub_20C13AE44();
    swift_unknownObjectRelease();
  }

  result = [a2 nextFocusedIndexPath];
  if (result)
  {
    v18 = result;
    sub_20C1331E4();

    v19 = *(v11 + 16);
    v19(v9, v16, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v20 = OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_lastFocusedIndexPath;
    swift_beginAccess();
    sub_20B59784C(v9, &v3[v20]);
    swift_endAccess();
    v21 = [*(v57 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) dataSource];
    if (v21)
    {
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
      if (swift_dynamicCastClass())
      {
        v48 = v11 + 16;
        v49 = v22;
        v23 = v53;
        sub_20C13BFA4();
        v24 = v55;
        v25 = sub_20C13BE74();
        v54[1](v23, v24);
        result = sub_20C133234();
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *(v25 + 16))
        {
          v26 = *(v25 + 24 * result + 32);

          if ((v26 & 0x8000000000000000) == 0)
          {
            v53 = v19;
            v54 = v3;
            v55 = v10;
            v56 = v16;
            v27 = *(v57 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
            if (v26 < *(v27 + 16))
            {
              v57 = *(v27 + 16 * v26 + 32);
              ObjectType = swift_getObjectType();
              v29 = *(&v57 + 1);
              v30 = *(*(&v57 + 1) + 40);
              swift_unknownObjectRetain();
              v30(v59, ObjectType, v29);
              v64 = v59[8];
              v65 = v59[9];
              v66 = v60;
              v61[4] = v59[4];
              v61[5] = v59[5];
              v62 = v59[6];
              v63 = v59[7];
              v61[0] = v59[0];
              v61[1] = v59[1];
              v61[2] = v59[2];
              v61[3] = v59[3];
              if (sub_20B5EAF8C(v61) == 1)
              {
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                return (*(v11 + 8))(v56, v55);
              }

              v31 = *(&v62 + 1);
              v67[0] = *(&v62 + 1);
              sub_20B52F9E8(v67, &v58, &qword_27C763188);
              sub_20B520158(v59, &qword_27C762340);
              result = sub_20C133224();
              if ((result & 0x8000000000000000) == 0)
              {
                if (result < *(v31 + 16))
                {
                  v32 = *(v31 + 8 * result + 32);

                  sub_20B520158(v67, &qword_27C763188);
                  v33 = v54;
                  v34 = *(v54 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_timerProvider + 32);
                  v46 = *(v54 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_timerProvider + 24);
                  v47 = v34;
                  v45 = __swift_project_boxed_opaque_existential_1((v54 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_timerProvider), v46);
                  sub_20B5E2E18();
                  v44 = sub_20C13D374();
                  v35 = v51;
                  v37 = v55;
                  v36 = v56;
                  (v53)(v51, v56, v55);
                  v38 = (*(v11 + 80) + 48) & ~*(v11 + 80);
                  v39 = swift_allocObject();
                  *(v39 + 16) = v33;
                  *(v39 + 24) = v32;
                  *(v39 + 32) = v57;
                  (*(v11 + 32))(v39 + v38, v35, v37);
                  swift_unknownObjectRetain();

                  v40 = v33;
                  v41 = v44;
                  v42 = sub_20C13AE34();

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  (*(v11 + 8))(v36, v37);
                  *(v33 + v52) = v42;
                  return swift_unknownObjectRelease();
                }

                goto LABEL_23;
              }

LABEL_22:
              __break(1u);
LABEL_23:
              __break(1u);
              return result;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
    }

    return (*(v11 + 8))(v16, v10);
  }

  return result;
}

uint64_t objectdestroy_2Tm_1()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B9105A8()
{
  v1 = sub_20C13C554();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = swift_allocObject();
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_title + 8);
  *(v5 + 16) = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_title);
  *(v5 + 24) = v6;
  v7 = v5 | 0x3000000000000001;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20C14F980;
  *(v8 + 32) = v7;
  v31 = 0uLL;
  LOBYTE(v32) = 1;
  *(&v32 + 1) = 0;
  *&v33 = 0;
  WORD4(v33) = 128;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  LOBYTE(v37) = 0;
  *(&v37 + 1) = v8;
  *&v38[0] = MEMORY[0x277D84F90];
  *(v38 + 8) = 0u;
  *(&v38[1] + 8) = 0u;
  *(&v38[2] + 1) = 0;
  v39 = 2;
  nullsub_1(&v31);
  v9 = v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 144);
  v40[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 128);
  v40[9] = v10;
  v41 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 160);
  v11 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 80);
  v40[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 64);
  v40[5] = v11;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 112);
  v40[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 96);
  v40[7] = v12;
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 16);
  v40[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row);
  v40[1] = v13;
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 48);
  v40[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 32);
  v40[3] = v14;
  v15 = v38[2];
  *(v9 + 128) = v38[1];
  *(v9 + 144) = v15;
  *(v9 + 160) = v39;
  v16 = v36;
  *(v9 + 64) = v35;
  *(v9 + 80) = v16;
  v17 = v38[0];
  *(v9 + 96) = v37;
  *(v9 + 112) = v17;
  v18 = v32;
  *v9 = v31;
  *(v9 + 16) = v18;
  v19 = v34;
  *(v9 + 32) = v33;
  *(v9 + 48) = v19;

  sub_20B634408(v40);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v21 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    v22 = sub_20B61CF88(v0, Strong);
    if (v23)
    {
      v25 = v22;
      v26 = v23;
      v27 = v24;
      v30 = v0;
      sub_20B5E2E18();
      *v4 = sub_20C13D374();
      (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
      v28 = sub_20C13C584();
      result = (*(v2 + 8))(v4, v1);
      if ((v28 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      sub_20B620584(v25, v26, v27, v30, 0, v21);
    }

    else
    {
      sub_20C0C2D50(0);
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_20B9108BC()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVLibraryGalleryHeaderShelf()
{
  result = qword_27C767A98;
  if (!qword_27C767A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B910A08()
{
  result = sub_20C132EE4();
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

uint64_t sub_20B910AB8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B910B30@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

char *sub_20B910BE0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_indexPath;
  v11 = sub_20C133244();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  *&v5[OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_shelf];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_titleLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v14 setLineBreakMode_];
  [v14 setNumberOfLines_];
  v15 = objc_opt_self();
  v16 = [v15 preferredFontForTextStyle_];
  [v16 pointSize];
  v18 = v17;

  v19 = [v15 systemFontOfSize:v18 weight:*MEMORY[0x277D743F8]];
  [v14 setFont_];

  [v14 setAllowsDefaultTighteningForTruncation_];
  v20 = sub_20BD518BC();

  v21 = v20;
  [v21 setAlpha_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];

  [v21 setAdjustsFontForContentSizeCategory_];
  *&v5[v13] = v21;
  v22 = OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_subtitleLabel;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v23 setLineBreakMode_];
  [v23 setNumberOfLines_];
  v24 = [v15 preferredFontForTextStyle_];
  [v23 setFont_];

  [v23 setAllowsDefaultTighteningForTruncation_];
  v25 = sub_20BD518BC();

  v26 = v25;
  [v26 setAlpha_];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];

  [v26 setAdjustsFontForContentSizeCategory_];
  *&v5[v22] = v26;
  v27 = OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_textStackView;
  v28 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v28 setDistribution_];
  [v28 setAxis_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v27] = v28;
  v49.receiver = v5;
  v49.super_class = type metadata accessor for TVShelfLargeTitleView();
  v29 = objc_msgSendSuper2(&v49, sel_initWithFrame_, a1, a2, a3, a4);
  v30 = OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_textStackView;
  v31 = *&v29[OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_textStackView];
  v32 = v29;
  [v32 addSubview_];
  [*&v29[v30] addArrangedSubview_];
  [*&v29[v30] addArrangedSubview_];
  v33 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_20C14FE90;
  v35 = [*&v29[v30] topAnchor];
  v36 = [v32 topAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v34 + 32) = v37;
  v38 = [*&v29[v30] leadingAnchor];
  v39 = [v32 leadingAnchor];

  v40 = [v38 constraintEqualToAnchor_];
  *(v34 + 40) = v40;
  v41 = [*&v29[v30] trailingAnchor];
  v42 = [v32 trailingAnchor];

  v43 = [v41 constraintEqualToAnchor_];
  *(v34 + 48) = v43;
  v44 = [*&v29[v30] bottomAnchor];
  v45 = [v32 bottomAnchor];

  v46 = [v44 constraintEqualToAnchor_];
  *(v34 + 56) = v46;
  sub_20B5E29D0();
  v47 = sub_20C13CC54();

  [v33 activateConstraints_];

  return v32;
}

void sub_20B91141C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_titleLabel);
  if (a2)
  {
    v7 = sub_20C13C914();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText_];

  v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_subtitleLabel);
  if (a4)
  {
    v9 = sub_20C13C914();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [v8 setText_];
}

id sub_20B9114FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVShelfLargeTitleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVShelfLargeTitleView()
{
  result = qword_27C767AA8;
  if (!qword_27C767AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B911624()
{
  sub_20B595A38();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B911708@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_indexPath;
  swift_beginAccess();
  return sub_20B800360(v1 + v3, a1);
}

uint64_t sub_20B911760(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_20B9117B0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_indexPath;
  v3 = sub_20C133244();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = (v1 + OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_shelf);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_titleLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v6 setLineBreakMode_];
  [v6 setNumberOfLines_];
  v7 = objc_opt_self();
  v8 = [v7 preferredFontForTextStyle_];
  [v8 pointSize];
  v10 = v9;

  v11 = [v7 systemFontOfSize:v10 weight:*MEMORY[0x277D743F8]];
  [v6 setFont_];

  [v6 setAllowsDefaultTighteningForTruncation_];
  v12 = sub_20BD518BC();

  v13 = v12;
  [v13 setAlpha_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  [v13 setAdjustsFontForContentSizeCategory_];
  *(v1 + v5) = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_subtitleLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v15 setLineBreakMode_];
  [v15 setNumberOfLines_];
  v16 = [v7 preferredFontForTextStyle_];
  [v15 setFont_];

  [v15 setAllowsDefaultTighteningForTruncation_];
  v17 = sub_20BD518BC();

  v18 = v17;
  [v18 setAlpha_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];

  [v18 setAdjustsFontForContentSizeCategory_];
  *(v1 + v14) = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_textStackView;
  v20 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v20 setDistribution_];
  [v20 setAxis_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v19) = v20;
  sub_20C13DE24();
  __break(1u);
}

id sub_20B911B50(uint64_t *a1, void *a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for TVShelfLargeTitleView()) initWithFrame_];
  sub_20B91141C(a1[17], a1[18], a1[15], a1[16]);
  [objc_msgSend(a2 container)];
  v6 = v5;
  swift_unknownObjectRelease();
  LODWORD(v7) = 1112014848;
  LODWORD(v8) = 1112014848;
  [v4 systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:COERCE_DOUBLE(1) verticalFittingPriority:{v7, v8}];
  v10 = v9;
  v12 = v11;
  v13 = objc_opt_self();
  v14 = [v13 estimatedDimension_];
  v15 = [v13 estimatedDimension_];
  v16 = [objc_opt_self() sizeWithWidthDimension:v14 heightDimension:v15];

  v17 = sub_20C13C914();
  v18 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v16 elementKind:v17 alignment:2 absoluteOffset:{0.0, -10.0}];

  return v18;
}

uint64_t sub_20B911D04(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_shelf);
  *v4 = a1;
  v4[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 40);
  v6(v12, ObjectType, a2);
  v22 = v12[8];
  v23 = v12[9];
  v24 = v13;
  v21[4] = v12[4];
  v21[5] = v12[5];
  v21[6] = v12[6];
  v21[7] = v12[7];
  v21[0] = v12[0];
  v21[1] = v12[1];
  v21[2] = v12[2];
  v21[3] = v12[3];
  if (sub_20B5EAF8C(v21) == 1)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = *(&v22 + 1);
    v8 = v23;

    sub_20B520158(v12, &qword_27C762340);
  }

  v6(v14, ObjectType, a2);
  v18 = v14[8];
  v19 = v14[9];
  v20 = v15;
  v16[4] = v14[4];
  v16[5] = v14[5];
  v16[6] = v14[6];
  v17 = v14[7];
  v16[0] = v14[0];
  v16[1] = v14[1];
  v16[2] = v14[2];
  v16[3] = v14[3];
  if (sub_20B5EAF8C(v16) == 1)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = *(&v17 + 1);
    v10 = v18;

    sub_20B520158(v14, &qword_27C762340);
  }

  sub_20B91141C(v7, v8, v9, v10);
}

double sub_20B911EC0@<D0>(uint64_t a1@<X8>)
{
  *&v69 = sub_20C137884();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v3 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WorkoutPlanBannerContent();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767AE8);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  v13 = sub_20C13BB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B454();
  sub_20C13BB64();
  (*(v14 + 8))(v16, v13);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767B00);
  v68 = swift_allocBox();
  v62 = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_content;
  sub_20B52F9E8(v70 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_content, v12, &qword_27C767AE8);
  v19 = *(v5 + 48);
  v64 = v5 + 48;
  v65 = v4;
  v20 = v19(v12, 1, v4);
  v21 = &OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality;
  v60 = v7;
  v61 = v3;
  if (v20 == 1)
  {
    sub_20B520158(v12, &qword_27C767AE8);
  }

  else
  {
    sub_20B914C60(v12, v7, type metadata accessor for WorkoutPlanBannerContent);
    v22 = v3;
    v23 = v18;
    v24 = v19;
    v25 = v67;
    v26 = v69;
    (*(v67 + 32))(v22, v7, v69);
    v27 = sub_20C137864();
    v29 = v28;
    v30 = v25;
    v19 = v24;
    v18 = v23;
    v31 = v26;
    v21 = &OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality;
    (*(v30 + 8))(v22, v31);
    sub_20B914CC8(v12, type metadata accessor for WorkoutPlanBannerContent);
    if (v29)
    {
      goto LABEL_5;
    }
  }

  __swift_project_boxed_opaque_existential_1((*(v70 + v21[386]) + 48), *(*(v70 + v21[386]) + 72));
  v27 = sub_20B5E107C();
  v29 = v32;

LABEL_5:
  v33 = v62;
  *v62 = v27;
  v33[1] = v29;
  v34 = v33;
  v35 = v70 + v18;
  v36 = v63;
  sub_20B52F9E8(v35, v63, &qword_27C767AE8);
  v37 = v19(v36, 1, v65);
  v38 = v69;
  if (v37 == 1)
  {
    sub_20B520158(v36, &qword_27C767AE8);
LABEL_8:
    __swift_project_boxed_opaque_existential_1((*(v70 + v21[386]) + 48), *(*(v70 + v21[386]) + 72));
    v42 = sub_20B5E107C();
    v45 = v46;

    goto LABEL_9;
  }

  v39 = v60;
  sub_20B914C60(v36, v60, type metadata accessor for WorkoutPlanBannerContent);
  v40 = v67;
  v41 = v61;
  (*(v67 + 32))(v61, v39, v38);
  v42 = sub_20C137874();
  v43 = v38;
  v45 = v44;
  (*(v40 + 8))(v41, v43);
  sub_20B914CC8(v36, type metadata accessor for WorkoutPlanBannerContent);
  if (!v45)
  {
    goto LABEL_8;
  }

LABEL_9:
  v34[2] = v42;
  v34[3] = v45;
  v47 = v66[16];
  v48 = (v34 + v66[20]);
  v49 = v66[24];
  v50 = sub_20C137C24();
  (*(*(v50 - 8) + 56))(v34 + v47, 1, 1, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0);
  v51 = *(type metadata accessor for ButtonAction(0) - 8);
  v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v53 = swift_allocObject();
  v69 = xmmword_20C14F980;
  *(v53 + 16) = xmmword_20C14F980;
  sub_20B914C60(v70 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_bannerAction, v53 + v52, type metadata accessor for ButtonAction);
  *(v34 + v49) = v53;
  *v48 = sub_20C138044();
  v48[1] = v54;
  v55 = v68 | 0x8000000000000005;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v56 = swift_allocObject();
  *(v56 + 16) = v69;
  *(v56 + 32) = v55;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 17) = *v73;
  *(a1 + 20) = *&v73[3];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 128;
  *(a1 + 42) = *&v71[7];
  *(a1 + 46) = v72;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = xmmword_20C162710;
  *(a1 + 80) = xmmword_20C162720;
  *(a1 + 96) = 1;
  *(a1 + 97) = *v71;
  *(a1 + 100) = *&v71[3];
  v57 = MEMORY[0x277D84F90];
  *(a1 + 104) = v56;
  *(a1 + 112) = v57;
  result = 0.0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 2;
  return result;
}

uint64_t sub_20B912624(uint64_t a1)
{
  v3 = sub_20C13C554();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row;
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 144);
  v30[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 128);
  v30[9] = v8;
  v31 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 160);
  v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 80);
  v30[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 64);
  v30[5] = v9;
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 112);
  v30[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 96);
  v30[7] = v10;
  v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 16);
  v30[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row);
  v30[1] = v11;
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 48);
  v30[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 32);
  v30[3] = v12;
  v13 = *(a1 + 144);
  *(v7 + 128) = *(a1 + 128);
  *(v7 + 144) = v13;
  *(v7 + 160) = *(a1 + 160);
  v14 = *(a1 + 80);
  *(v7 + 64) = *(a1 + 64);
  *(v7 + 80) = v14;
  v15 = *(a1 + 112);
  *(v7 + 96) = *(a1 + 96);
  *(v7 + 112) = v15;
  v16 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 16) = v16;
  v17 = *(a1 + 48);
  *(v7 + 32) = *(a1 + 32);
  *(v7 + 48) = v17;
  sub_20B52F9E8(a1, &v29, &qword_27C762340);
  sub_20B520158(v30, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v20 = sub_20B61DAB8(v1, result);
      if (v21)
      {
        v23 = v20;
        v24 = v21;
        v25 = v22;
        v26 = v1;
        sub_20B5E2E18();
        *v6 = sub_20C13D374();
        (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
        v27 = sub_20C13C584();
        result = (*(v4 + 8))(v6, v3);
        if ((v27 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B621024(v23, v24, v25, v26, 1, v19);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B912878()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_bookmarkClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_catalogClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_remoteBrowsingSource);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_workoutPlanClient);
  swift_unknownObjectRelease();

  sub_20B914CC8(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_bannerAction, type metadata accessor for ButtonAction);

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_content, &qword_27C767AE8);
  return v0;
}

uint64_t sub_20B912A00()
{
  sub_20B912878();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanBannerShelf()
{
  result = qword_27C767AD0;
  if (!qword_27C767AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B912AAC()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ButtonAction(319);
    if (v1 <= 0x3F)
    {
      sub_20B912C0C();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20B912C0C()
{
  if (!qword_27C767AE0)
  {
    type metadata accessor for WorkoutPlanBannerContent();
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C767AE0);
    }
  }
}

uint64_t sub_20B912C64()
{
  swift_getObjectType();
  sub_20C13AB84();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  swift_allocObject();
  swift_weakInit();
  sub_20B621B88();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_20B912DE8();
}

uint64_t sub_20B912DE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_20C136F94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  v17 = sub_20C138104();
  if (v17 != sub_20C138104())
  {
    goto LABEL_6;
  }

  v27 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_remoteBrowsingSource), *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_remoteBrowsingSource + 24));
  sub_20C13B174();
  v18 = sub_20C136C64();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v6, 1, v18) == 1)
  {
    return sub_20B520158(v6, &qword_27C768690);
  }

  sub_20C1369E4();
  (*(v19 + 8))(v6, v18);
  (*(v8 + 32))(v16, v13, v7);
  sub_20C136F54();
  sub_20B914C18(&qword_27C767AF0, MEMORY[0x277D53030]);
  v21 = sub_20C13DA74();
  v22 = *(v8 + 8);
  v22(v10, v7);
  if ((v21 & 1) == 0)
  {
    return (v22)(v16, v7);
  }

  sub_20C136F44();
  v23 = sub_20C13DA74();
  v22(v10, v7);
  result = (v22)(v16, v7);
  v0 = v27;
  if (v23)
  {
LABEL_6:
    v24 = sub_20C13CDF4();
    (*(*(v24 - 8) + 56))(v3, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v0;

    sub_20B6383D0(0, 0, v3, &unk_20C162850, v25);
  }

  return result;
}

uint64_t sub_20B9131FC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B912DE8();
  }

  return result;
}

uint64_t sub_20B913254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[128] = a4;
  v5 = sub_20C132EE4();
  v4[129] = v5;
  v4[130] = *(v5 - 8);
  v4[131] = swift_task_alloc();
  v6 = sub_20C133954();
  v4[132] = v6;
  v4[133] = *(v6 - 8);
  v4[134] = swift_task_alloc();
  v4[135] = swift_task_alloc();
  v7 = sub_20C13BB84();
  v4[136] = v7;
  v4[137] = *(v7 - 8);
  v4[138] = swift_task_alloc();
  v4[139] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B9133E4, 0, 0);
}

uint64_t sub_20B9133E4()
{
  v1 = v0[139];
  v2 = v0[137];
  v3 = v0[136];
  v4 = v0[128];
  sub_20C13B454();
  sub_20C13BB64();
  v5 = *(v2 + 8);
  v0[140] = v5;
  v0[141] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = *(v4 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_workoutPlanClient + 24);
  v7 = *(v4 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_workoutPlanClient + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_workoutPlanClient), v6);
  v8 = swift_task_alloc();
  v0[142] = v8;
  *v8 = v0;
  v8[1] = sub_20B913520;
  v9 = v0[135];

  return MEMORY[0x2821ADE88](v9, v6, v7);
}

uint64_t sub_20B913520()
{
  *(*v1 + 1144) = v0;

  if (v0)
  {
    v2 = sub_20B913AE8;
  }

  else
  {
    v2 = sub_20B913634;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B913634()
{
  v50 = v0;
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1064);
  v4 = *(v0 + 1056);
  sub_20C13B454();
  (*(v3 + 16))(v2, v1, v4);
  v5 = sub_20C13BB74();
  v6 = sub_20C13D1F4();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1120);
  v9 = *(v0 + 1104);
  v10 = *(v0 + 1088);
  v11 = *(v0 + 1072);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v7)
  {
    v46 = v6;
    v14 = *(v0 + 1048);
    v43 = *(v0 + 1056);
    v15 = *(v0 + 1040);
    v48 = *(v0 + 1120);
    v16 = *(v0 + 1032);
    v47 = *(v0 + 1088);
    v17 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v49 = v45;
    *v17 = 136315138;
    sub_20C133804();
    sub_20B914C18(&qword_27C763EF0, MEMORY[0x277CC95F0]);
    v18 = sub_20C13DFA4();
    v44 = v9;
    v20 = v19;
    (*(v15 + 8))(v14, v16);
    v23 = *(v12 + 8);
    v22 = v12 + 8;
    v21 = v23;
    v23(v11, v43);
    v24 = sub_20B51E694(v18, v20, &v49);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_20B517000, v5, v46, "Found active workout plan: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x20F2F6A40](v45, -1, -1);
    MEMORY[0x20F2F6A40](v17, -1, -1);

    v48(v44, v47);
  }

  else
  {

    v25 = *(v12 + 8);
    v22 = v12 + 8;
    v21 = v25;
    v25(v11, v13);
    v8(v9, v10);
  }

  *(v0 + 1160) = v21;
  *(v0 + 1152) = v22;
  *(v0 + 856) = 0u;
  *(v0 + 872) = 1;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 128;
  *(v0 + 952) = 0;
  *(v0 + 904) = 0u;
  *(v0 + 920) = 0u;
  *(v0 + 936) = 0u;
  v26 = MEMORY[0x277D84F90];
  *(v0 + 960) = MEMORY[0x277D84F90];
  *(v0 + 968) = v26;
  *(v0 + 976) = 0u;
  *(v0 + 992) = 0u;
  *(v0 + 1008) = 0;
  *(v0 + 1016) = 2;
  v27 = *(v0 + 984);
  v28 = *(v0 + 1000);
  *(v0 + 848) = 2;
  *(v0 + 816) = v27;
  *(v0 + 832) = v28;
  v29 = *(v0 + 872);
  *(v0 + 688) = *(v0 + 856);
  *(v0 + 704) = v29;
  v30 = *(v0 + 888);
  v31 = *(v0 + 904);
  v32 = *(v0 + 968);
  *(v0 + 784) = *(v0 + 952);
  *(v0 + 800) = v32;
  v33 = *(v0 + 936);
  *(v0 + 752) = *(v0 + 920);
  *(v0 + 768) = v33;
  *(v0 + 720) = v30;
  *(v0 + 736) = v31;
  nullsub_1(v0 + 688);
  v34 = *(v0 + 816);
  v35 = *(v0 + 832);
  v36 = *(v0 + 784);
  *(v0 + 296) = *(v0 + 800);
  *(v0 + 312) = v34;
  *(v0 + 328) = v35;
  v37 = *(v0 + 720);
  *(v0 + 232) = *(v0 + 736);
  v38 = *(v0 + 768);
  *(v0 + 248) = *(v0 + 752);
  *(v0 + 264) = v38;
  *(v0 + 280) = v36;
  v39 = *(v0 + 704);
  *(v0 + 184) = *(v0 + 688);
  *(v0 + 200) = v39;
  *(v0 + 344) = *(v0 + 848);
  *(v0 + 216) = v37;
  sub_20C13CDA4();
  *(v0 + 1168) = sub_20C13CD94();
  v41 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B9139B8, v41, v40);
}

uint64_t sub_20B9139B8()
{

  sub_20B912624(v0 + 184);
  sub_20B621D00(v0 + 856);

  return MEMORY[0x2822009F8](sub_20B913A34, 0, 0);
}

uint64_t sub_20B913A34()
{
  (*(v0 + 1160))(*(v0 + 1080), *(v0 + 1056));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B913AE8()
{
  sub_20B911EC0(v0 + 352);
  v1 = *(v0 + 496);
  *(v0 + 648) = *(v0 + 480);
  *(v0 + 664) = v1;
  *(v0 + 680) = *(v0 + 512);
  v2 = *(v0 + 432);
  *(v0 + 584) = *(v0 + 416);
  *(v0 + 600) = v2;
  v3 = *(v0 + 464);
  *(v0 + 616) = *(v0 + 448);
  *(v0 + 632) = v3;
  v4 = *(v0 + 368);
  *(v0 + 520) = *(v0 + 352);
  *(v0 + 536) = v4;
  v5 = *(v0 + 400);
  *(v0 + 552) = *(v0 + 384);
  *(v0 + 568) = v5;
  nullsub_1(v0 + 520);
  v6 = *(v0 + 664);
  *(v0 + 144) = *(v0 + 648);
  *(v0 + 160) = v6;
  *(v0 + 176) = *(v0 + 680);
  v7 = *(v0 + 600);
  *(v0 + 80) = *(v0 + 584);
  *(v0 + 96) = v7;
  v8 = *(v0 + 632);
  *(v0 + 112) = *(v0 + 616);
  *(v0 + 128) = v8;
  v9 = *(v0 + 536);
  *(v0 + 16) = *(v0 + 520);
  *(v0 + 32) = v9;
  v10 = *(v0 + 568);
  *(v0 + 48) = *(v0 + 552);
  *(v0 + 64) = v10;
  sub_20C13CDA4();
  *(v0 + 1176) = sub_20C13CD94();
  v12 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B913BF4, v12, v11);
}

uint64_t sub_20B913BF4()
{

  sub_20B912624(v0 + 16);
  sub_20B621D00(v0 + 352);

  return MEMORY[0x2822009F8](sub_20B913C70, 0, 0);
}

uint64_t sub_20B913C70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B913D10@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B913D88@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B913E98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_canCreateWorkoutPlan) = 0;
  v5 = v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row;
  sub_20B5D8060(v19);
  v6 = v19[9];
  *(v5 + 128) = v19[8];
  *(v5 + 144) = v6;
  *(v5 + 160) = v20;
  v7 = v19[5];
  *(v5 + 64) = v19[4];
  *(v5 + 80) = v7;
  v8 = v19[7];
  *(v5 + 96) = v19[6];
  *(v5 + 112) = v8;
  v9 = v19[1];
  *v5 = v19[0];
  *(v5 + 16) = v9;
  v10 = v19[3];
  *(v5 + 32) = v19[2];
  *(v5 + 48) = v10;
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_platform) = v18[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_bag) = *&v18[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(v18, v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v18, v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(v18, v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_remoteBrowsingSource);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B51C710(v18, v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_workoutPlanClient);
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  v11 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_workoutPlanStringBuilder;
  *(v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_workoutPlanStringBuilder) = *&v18[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_eventHub) = v18[0];
  sub_20B52F9E8(a2, v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_content, &qword_27C767AE8);
  __swift_project_boxed_opaque_existential_1((*(v2 + v11) + 48), *(*(v2 + v11) + 72));

  v12 = sub_20B5E107C();
  v14 = v13;

  v15 = v3 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_bannerAction;
  type metadata accessor for ButtonAction(0);
  type metadata accessor for ButtonAction.ActionType(0);
  swift_storeEnumTagMultiPayload();
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v16 = sub_20C13A914();
  sub_20B520158(a2, &qword_27C767AE8);
  *(v3 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_subscriptionToken) = v16;
  return v3;
}

uint64_t sub_20B914254()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v24 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v24 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_platform);
  v24 = v12;
  v25 = v11;
  if (v10 < 2)
  {
    v13 = 0xED00006E616C5072;
    v14 = 0x756F59646C697542;
LABEL_5:
    v15 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_bannerAction;
    v16 = sub_20C135ED4();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    v17 = *MEMORY[0x277D51768];
    v18 = sub_20C1352E4();
    v19 = *(v18 - 8);
    (*(v19 + 104))(v3, v17, v18);
    (*(v19 + 56))(v3, 0, 1, v18);
    sub_20B5A7248((v0 + v15), v14, v13, v6, 0, 0, v3, v9);

    sub_20B520158(v3, &unk_27C765D50);
    sub_20B520158(v6, &unk_27C7621D0);
    v20 = v25;
    v21 = sub_20C137CB4();
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    v21(sub_20B52347C, v22);

    return (*(v24 + 8))(v9, v20);
  }

  if (v10 == 3)
  {
    v13 = 0xEE00656E6F685069;
    v14 = 0x6E4F657461657243;
    goto LABEL_5;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20B914608(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v33 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v33 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x28223BE20](v9);
  v34 = &v33 - v10;
  v11 = sub_20C1352E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ButtonAction(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (&v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B914C60(a1, v17, type metadata accessor for ShelfItemAction);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v25 = type metadata accessor for ShelfItemAction;
    v26 = v17;
    return sub_20B914CC8(v26, v25);
  }

  sub_20B5F6860(v17, v20);
  v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_platform);
  if (v21 < 2)
  {
    v22 = 0xED00006E616C5072;
    v23 = 0x756F59646C697542;
    v24 = MEMORY[0x277D51748];
LABEL_7:
    (*(v12 + 104))(v14, *v24, v11);
    v27 = sub_20C135ED4();
    (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
    (*(v12 + 16))(v5, v14, v11);
    (*(v12 + 56))(v5, 0, 1, v11);
    v28 = v34;
    sub_20B5A7248(v20, v23, v22, v8, 0, 0, v5, v34);

    sub_20B520158(v5, &unk_27C765D50);
    sub_20B520158(v8, &unk_27C7621D0);
    v29 = v36;
    v30 = sub_20C137CB4();
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    v30(sub_20B5DF6DC, v31);

    (*(v35 + 8))(v28, v29);
    (*(v12 + 8))(v14, v11);
    v25 = type metadata accessor for ButtonAction;
    v26 = v20;
    return sub_20B914CC8(v26, v25);
  }

  if (v21 == 3)
  {
    v22 = 0xEE00656E6F685069;
    v23 = 0x6E4F657461657243;
    v24 = MEMORY[0x277D51768];
    goto LABEL_7;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20B914B64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B913254(a1, v4, v5, v6);
}

uint64_t sub_20B914C18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B914C60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B914CC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_20B914D2C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v43 = a2;
  v8 = sub_20C1325D4();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  v42 = v4;
  v11 = sub_20B915158(a1);
  v12 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];

  sub_20C132594();
  v13 = [v12 string];
  v14 = sub_20C13C954();
  v16 = v15;

  v44 = v10;
  v17 = sub_20BC233E0(v10, v14, v16);

  v18 = *(v17 + 2);
  if (v18)
  {
    v48 = MEMORY[0x277D84F90];
    sub_20C13DD64();
    v19 = v17 + 40;
    do
    {
      v20 = [v12 attributedSubstringFromRange_];
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      v19 += 2;
      --v18;
    }

    while (v18);

    v21 = v48;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  if (v21 >> 62)
  {
LABEL_22:
    v22 = sub_20C13DB34();
    if (v22)
    {
      goto LABEL_8;
    }

LABEL_23:
    v27 = 0;
    goto LABEL_24;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_23;
  }

LABEL_8:
  v23 = 0;
  v24 = 0;
  v25 = 0.0;
  while (2)
  {
    v47 = v23;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x20F2F5430](v24, v21);
      }

      else
      {
        if (v24 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v26 = *(v21 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      [v26 boundingRectWithSize:0 options:0 context:{1.79769313e308, 1.79769313e308}];
      Width = CGRectGetWidth(v49);
      if (v25 < Width)
      {
        break;
      }

      ++v24;
      if (v28 == v22)
      {
        v27 = v47;
        goto LABEL_24;
      }
    }

    v25 = Width;

    v23 = v27;
    ++v24;
    if (v28 != v22)
    {
      continue;
    }

    break;
  }

LABEL_24:

  (*(v45 + 8))(v44, v46);
  if (v27)
  {
    v30 = floor(a3);
    v31 = floor(a4);
    if (sub_20B9152AC(1, 0, v30, v31))
    {
      v32 = sub_20B915158(v41);
      v33 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
      v34 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
      [v34 setLineBreakMode_];
      v35 = v33;
      v36 = [v35 length];
      v37 = *MEMORY[0x277D74118];
      v38 = v34;
      [v35 addAttribute:v37 value:v38 range:{0, v36}];

      v39 = sub_20B9152AC(v43, 0, v30, v31);
      v27 = v35;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    return 1;
  }

  return v39;
}

id sub_20B915158(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v3 = [v2 length];
  [v2 addAttribute:*MEMORY[0x277D740A8] value:a1 range:{0, v3}];
  v4 = sub_20C13C914();
  [v2 removeAttribute:v4 range:{0, v3}];

  [v2 copy];
  sub_20C13DA64();

  swift_unknownObjectRelease();
  sub_20B76EC8C();
  if (swift_dynamicCast())
  {
    return v7;
  }

  return v6;
}

BOOL sub_20B9152AC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v10 = [objc_allocWithZone(MEMORY[0x277D74278]) initWithSize_];
  [v10 setLineBreakMode_];
  [v10 setMaximumNumberOfLines_];
  v11 = [objc_allocWithZone(MEMORY[0x277D742A8]) init];
  [v11 setTextContainer_];
  v12 = [objc_allocWithZone(MEMORY[0x277D74280]) init];
  v13 = [objc_allocWithZone(MEMORY[0x277D742D8]) initWithAttributedString_];
  [v12 setTextStorage_];

  [v12 addTextLayoutManager_];
  v14 = [v11 documentRange];
  [v11 ensureLayoutForRange_];

  [v11 usageBoundsForTextContainer];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v10 setMaximumNumberOfLines_];
  v23 = [v11 documentRange];
  [v11 invalidateLayoutForRange_];

  v24 = [v11 documentRange];
  [v11 ensureLayoutForRange_];

  [v11 usageBoundsForTextContainer];
  v26 = v25;
  v28 = v27;
  v32.origin.x = v16;
  v32.origin.y = v18;
  v32.size.width = v20;
  v32.size.height = v22;
  if (v26 <= CGRectGetWidth(v32))
  {
    v33.origin.x = v16;
    v33.origin.y = v18;
    v33.size.width = v20;
    v33.size.height = v22;
    Height = CGRectGetHeight(v33);

    v31 = v28 <= Height;
    if (v26 > a3)
    {
      v31 = 0;
    }

    return v28 <= a4 && v31;
  }

  else
  {

    return 0;
  }
}

UIColor __swiftcall UIColor.elevated(using:)(UITraitCollection using)
{
  v2 = v1;
  v3 = sub_20C13D3B4();
  v4 = [v2 resolvedColorWithTraitCollection_];

  return v4;
}

UIColor __swiftcall UIColor.dark(using:)(UITraitCollection using)
{
  v2 = v1;
  v3 = sub_20C13D3B4();
  v4 = [v2 resolvedColorWithTraitCollection_];

  return v4;
}

uint64_t sub_20B915640(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  return a3(a2, v5, v6);
}

uint64_t URL.withQueryItems(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20C132704();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_20C132684();
  v9 = *(v3 + 48);
  if (!v9(v8, 1, v2))
  {

    sub_20C132674();
  }

  if (v9(v8, 1, v2))
  {
    v10 = sub_20C132C14();
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_20C132694();
    (*(v3 + 8))(v5, v2);
  }

  return sub_20B91588C(v8);
}

uint64_t sub_20B91588C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t URL.queryItems.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665D8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  sub_20C132684();
  v3 = sub_20C132704();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_20B91588C(v2);
  }

  else
  {
    v5 = sub_20C132664();
    (*(v4 + 8))(v2, v3);
    if (v5)
    {
      return v5;
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_20B915A20(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_20C13C914();
  }

  else
  {
    v3 = 0;
  }

  [v2 setCategory_];
}

uint64_t sub_20B915AA0()
{
  v1 = [v0 availableRoutes];
  sub_20B915C3C();
  v2 = sub_20C13CC74();

  return v2;
}

void sub_20B915AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8[4] = a3;
    v8[5] = a4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_20B915BD0;
    v8[3] = &block_descriptor_49;
    v7 = _Block_copy(v8);
  }

  else
  {
    v7 = 0;
  }

  [v4 selectRoute:a1 operation:a2 completion:v7];
  _Block_release(v7);
}

void sub_20B915BD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

unint64_t sub_20B915C3C()
{
  result = qword_27C762500;
  if (!qword_27C762500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C762500);
  }

  return result;
}

id sub_20B915D04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVSlideTransitionAnimationCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B915D5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  MEMORY[0x28223BE20](v11);
  v36 = &v35 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v14 = *(v13 - 8);
  v38 = v13;
  v39 = v14;
  MEMORY[0x28223BE20](v13);
  v37 = &v35 - v15;
  v40 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_bookmarkClient), *(v0 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_bookmarkClient + 24));
  sub_20C13A184();
  v16 = *(v2 + 16);
  v41 = v2 + 16;
  v44 = v16;
  v16(v4, v7, v1);
  v17 = *(v2 + 80);
  v43 = (v17 + 16) & ~v17;
  v18 = (v3 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v42 = *(v2 + 32);
  v42(v19 + ((v17 + 16) & ~v17), v4, v1);
  v20 = (v19 + v18);
  v21 = v40;
  *v20 = sub_20B917CE8;
  v20[1] = v21;
  v35 = sub_20C138204();

  sub_20C137C94();
  v22 = *(v2 + 8);
  v22(v7, v1);
  sub_20B5E2E18();
  v23 = sub_20C13D374();
  v44(v7, v10, v1);
  v24 = swift_allocObject();
  v42(v24 + v43, v7, v1);
  *(v24 + v18) = v23;
  v25 = v36;
  sub_20C137C94();
  v22(v10, v1);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_20B917D08;
  *(v27 + 24) = v26;
  v44(v10, v25, v1);
  v28 = swift_allocObject();
  v42(v28 + v43, v10, v1);
  v29 = (v28 + v18);
  *v29 = sub_20B7DB940;
  v29[1] = v27;
  v30 = v37;
  sub_20C137C94();
  v22(v25, v1);
  v31 = v38;
  v32 = sub_20C137CB4();
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  v32(sub_20B52347C, v33);

  return (*(v39 + 8))(v30, v31);
}

uint64_t sub_20B91626C(uint64_t a1)
{
  v2 = sub_20C138204();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v8 = swift_allocObject();
  *(v8 + 16) = "SeymourUI/TVPlaylistListDataProvider.swift";
  *(v8 + 24) = 42;
  *(v8 + 32) = 2;
  *(v8 + 40) = 71;
  *(v8 + 48) = &unk_20C162978;
  *(v8 + 56) = v7;
  return sub_20C137C94();
}

uint64_t sub_20B91641C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11[-v3];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_headerShelf);

    v7 = sub_20C138204();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v4, a1, v7);
    (*(v8 + 56))(v4, 0, 1, v7);
    v9 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_playlist;
    swift_beginAccess();
    sub_20B66A790(v4, v6 + v9);
    swift_endAccess();
    sub_20BB89E38();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_20B6676EC(a1);
  }

  return result;
}

uint64_t sub_20B9165F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B916698, 0, 0);
}

uint64_t sub_20B916698()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_contentAvailabilityFilter, (v0 + 2));

    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v2 = sub_20C1381E4();
    v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763320);
    v0[11] = sub_20B917F9C();
    v0[7] = v2;
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_20B9168A8;

    return sub_20C0A6C2C((v0 + 7));
  }

  else
  {
    v5 = sub_20C133D94();
    sub_20B918068(&qword_27C765B10, MEMORY[0x277D50470]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D50460], v5);
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_20B9168A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_20B916B98;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 56);
    v4 = sub_20B9169C4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20B9169C4()
{
  v1 = v0[20];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (*(v1 + 16))
  {
    v2 = v0[18];
    sub_20B717280(v0[20]);

    v3 = sub_20C132E94();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    sub_20C1381F4();

    sub_20B918000(v2);
  }

  else
  {

    v5 = sub_20C133D94();
    sub_20B918068(&qword_27C765B10, MEMORY[0x277D50470]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D50460], v5);
    swift_willThrow();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B916B98()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B916C0C()
{
  sub_20B5E0F50(*(v0 + 16));

  v1 = OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_metricPage;
  v2 = sub_20C1333A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_bookmarkClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_contentAvailabilityFilter);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_20B916D14()
{
  sub_20B916C0C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVPlaylistListDataProvider()
{
  result = qword_27C767B50;
  if (!qword_27C767B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B916DC0()
{
  result = sub_20C1333A4();
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

uint64_t sub_20B916E94()
{
  sub_20B915D5C();
  swift_getObjectType();
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20B916F8C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B915D5C();
  }

  return result;
}

uint64_t sub_20B916FE4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20B917084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v99 = a3;
  v97 = a2;
  v10 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v10 - 8);
  *&v98 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v12 - 8);
  v96 = v91 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v14 - 8);
  v94 = v91 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v16 - 8);
  v92 = v91 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v91 - v19;
  v95 = sub_20C1333A4();
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v22 = v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v23 = (v6 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_pageIdentifier);
  *v23 = 0x7465446B63617453;
  v23[1] = 0xEB000000006C6961;
  v24 = (v6 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_playlistIdentifier);
  *v24 = a4;
  v24[1] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A980);
  sub_20C133AA4();
  sub_20B51C710(&v110, v6 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_contentAvailabilityFilter);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(&v110, v6 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_bookmarkClient);
  *(v6 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v25 = *(&v110 + 1);
  v26 = (v6 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_eventHub);
  *v26 = v110;
  v26[1] = v25;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v6 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_subscriptionToken) = sub_20C13A914();
  v91[1] = *v23;
  v27 = *MEMORY[0x277D51838];
  v28 = sub_20C1352F4();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v20, v27, v28);
  (*(v29 + 56))(v20, 0, 1, v28);
  v30 = sub_20C132C14();
  (*(*(v30 - 8) + 56))(v92, 1, 1, v30);
  v31 = sub_20C135ED4();
  (*(*(v31 - 8) + 56))(v94, 1, 1, v31);
  v32 = sub_20C136914();
  (*(*(v32 - 8) + 56))(v96, 1, 1, v32);

  sub_20C133384();
  v33 = OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_metricPage;
  v34 = v93;
  v35 = v95;
  (*(v93 + 32))(v6 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_metricPage, v22, v95);
  (*(v34 + 16))(v22, v6 + v33, v35);
  type metadata accessor for TVPlaylistHeaderShelf();
  swift_allocObject();

  v37 = sub_20BB8F3A4(v36, v22);

  v38 = OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_headerShelf;
  *(v6 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_headerShelf) = v37;
  type metadata accessor for TVPlaylistGalleryShelf();
  swift_allocObject();

  v40 = sub_20B669E68(v39);

  *(v6 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_galleryShelf) = v40;
  v41 = v23[1];
  v97 = *v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v99 = v6;
  *(inited + 32) = *(v6 + v38);
  *(inited + 40) = &off_2822D06A8;
  *(inited + 48) = v40;
  *(inited + 56) = &off_28229B5E8;
  v96 = v41;

  LODWORD(v95) = sub_20C1380F4();
  v43 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v94 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v43 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v44 = sub_20C13C724();
  v45 = type metadata accessor for CatalogPageImpressionTracker();
  v46 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v47 = MEMORY[0x277D221C0];
  v46[2] = sub_20C13C6D4();
  v46[3] = v44;
  v46[4] = v47;
  v111 = v45;
  v48 = sub_20B918068(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v112 = v48;
  *&v110 = v46;
  v49 = type metadata accessor for MetricLocationStore();
  v50 = swift_allocObject();
  v51 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F98];
  *(v50 + 16) = MEMORY[0x277D84F90];
  *(v50 + 24) = v52;
  v53 = __swift_mutable_project_boxed_opaque_existential_1(&v110, v45);
  v54 = MEMORY[0x28223BE20](v53);
  v56 = (v91 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56, v54);
  v58 = *v56;
  v109[3] = v45;
  v109[4] = v48;
  v109[0] = v58;
  v108[3] = v49;
  v108[4] = &off_2822B6968;
  v108[0] = v50;
  v107[0] = v51;
  sub_20BB5D394(0, 2, 0);
  v59 = v107[0];
  v60 = *(v107[0] + 16);
  v61 = *(v107[0] + 24);
  v98 = *(inited + 32);
  swift_unknownObjectRetain();
  if (v60 >= v61 >> 1)
  {
    sub_20BB5D394((v61 > 1), v60 + 1, 1);
    v59 = v107[0];
  }

  *(v59 + 16) = v60 + 1;
  v62 = v59 + 24 * v60;
  *(v62 + 32) = v98;
  *(v62 + 48) = 0;
  swift_unknownObjectRetain();

  v64 = *(v59 + 16);
  v63 = *(v59 + 24);
  if (v64 >= v63 >> 1)
  {
    sub_20BB5D394((v63 > 1), v64 + 1, 1);
    v59 = v107[0];
  }

  *(v59 + 16) = v64 + 1;
  v65 = v59 + 24 * v64;
  *(v65 + 32) = v40;
  *(v65 + 40) = &off_28229B5E8;
  *(v65 + 48) = 0;
  sub_20B51CC64(v109, v107);
  sub_20B51CC64(v108, v106);
  v66 = __swift_mutable_project_boxed_opaque_existential_1(v107, v107[3]);
  v67 = MEMORY[0x28223BE20](v66);
  v69 = (v91 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v70 + 16))(v69, v67);
  v71 = __swift_mutable_project_boxed_opaque_existential_1(v106, v106[3]);
  v72 = MEMORY[0x28223BE20](v71);
  v74 = (v91 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v75 + 16))(v74, v72);
  v76 = *v69;
  v77 = *v74;
  v104 = v45;
  v105 = v48;
  v103[0] = v76;
  v101 = v49;
  v102 = &off_2822B6968;
  v100[0] = v77;
  v78 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v79 = __swift_mutable_project_boxed_opaque_existential_1(v103, v104);
  v80 = MEMORY[0x28223BE20](v79);
  v82 = (v91 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v83 + 16))(v82, v80);
  v84 = __swift_mutable_project_boxed_opaque_existential_1(v100, v101);
  v85 = MEMORY[0x28223BE20](v84);
  v87 = (v91 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v88 + 16))(v87, v85);
  v89 = sub_20BE3AA74(v97, v96, v59, v95, v94, *v82, *v87, 2, v78);
  __swift_destroy_boxed_opaque_existential_1(v108);
  __swift_destroy_boxed_opaque_existential_1(v109);
  __swift_destroy_boxed_opaque_existential_1(v100);
  __swift_destroy_boxed_opaque_existential_1(v103);
  __swift_destroy_boxed_opaque_existential_1(v106);
  __swift_destroy_boxed_opaque_existential_1(v107);
  __swift_destroy_boxed_opaque_existential_1(&v110);
  result = v99;
  *(v99 + 32) = v89;
  return result;
}

uint64_t objectdestroy_10Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B917DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646D8) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2, v3 + v7, v9, v10);
}

uint64_t sub_20B917EB8(uint64_t a1)
{
  v4 = *(sub_20C138204() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B9165F8(a1, v6, v1 + v5);
}

unint64_t sub_20B917F9C()
{
  result = qword_27C763328;
  if (!qword_27C763328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C763320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763328);
  }

  return result;
}

uint64_t sub_20B918000(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B918068(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20B9180C4()
{
  result = qword_27C767B60;
  if (!qword_27C767B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767B60);
  }

  return result;
}

void sub_20B918140(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_20B9181D0()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet);
  if (v2)
  {
    v3 = *(v1 + 8);
    [v2 size];
    v4 = *(v1 + 16);
    result = [v2 size];
    if (v3)
    {
      if (v4 == 0x8000000000000000 && v3 == -1)
      {
        goto LABEL_12;
      }

      if (!__OFADD__(v4 / v3, v4 % v3 != 0))
      {
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

void sub_20B918360()
{
  v1 = v0;
  v2 = sub_20C13C4B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C4F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13C4C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v1[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
  if (v14)
  {
    v34 = v6;
    v35 = v7;
    v36 = v3;
    v37 = v14;
    v15 = [v37 renderingMode];
    v16 = [v1 layer];
    v17 = v16;
    if (v15 == 2)
    {
      [v16 contentsScale];
      v19 = v18;

      if ([objc_opt_self() smu_canDecodeOnRenderThread])
      {
        v20 = sub_20B918D84();
        v21 = [v1 layer];
        if (v20 && (v22 = [v20 CGImage]) != 0)
        {
          aBlock[0] = v22;
          type metadata accessor for CGImage(0);
          v23 = sub_20C13DFD4();
        }

        else
        {
          v23 = 0;
        }

        [v21 setContents_];

        swift_unknownObjectRelease();
        v31 = [v1 &selRef_setFragmentFunction_];
        if (v20)
        {
          [v20 scale];
          v19 = v32;
        }

        [v31 setContentsScale_];
      }

      else
      {
        sub_20B5E2E18();
        (*(v11 + 104))(v13, *MEMORY[0x277D851B8], v10);
        v27 = sub_20C13D3A4();
        (*(v11 + 8))(v13, v10);
        v28 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v29 = swift_allocObject();
        *(v29 + 2) = v28;
        v29[3] = v19;
        aBlock[4] = sub_20B91A620;
        aBlock[5] = v29;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_20B7B548C;
        aBlock[3] = &block_descriptor_21_0;
        v30 = _Block_copy(aBlock);

        sub_20C13C4D4();
        v38 = MEMORY[0x277D84F90];
        sub_20B7E9080();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
        sub_20B682EA8();
        sub_20C13DA94();
        MEMORY[0x20F2F4AF0](0, v9, v5, v30);

        _Block_release(v30);
        (*(v36 + 8))(v5, v2);
        (*(v35 + 8))(v9, v34);
      }
    }

    else
    {
      v24 = [v37 CGImage];
      [v17 setContents_];

      v25 = [v1 layer];
      [v37 scale];
      [v25 setContentsScale_];

      v26 = v37;
    }
  }
}

uint64_t sub_20B918908(double a1)
{
  v2 = sub_20C13C4B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C13C4F4();
  v6 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_20B918D84();
  }

  else
  {
    v11 = 0;
  }

  sub_20B5E2E18();
  v12 = sub_20C13D374();
  v13 = swift_allocObject();
  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v11;
  *(v15 + 32) = a1;
  aBlock[4] = sub_20B91A62C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_28_1;
  v16 = _Block_copy(aBlock);
  v17 = v11;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v8, v5, v16);
  _Block_release(v16);

  (*(v3 + 8))(v5, v2);
  return (*(v6 + 8))(v8, v20);
}

void sub_20B918C24(double a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong layer];

    if (a3 && (v8 = [a3 CGImage]) != 0)
    {
      v14 = v8;
      type metadata accessor for CGImage(0);
      v9 = sub_20C13DFD4();
    }

    else
    {
      v9 = 0;
    }

    [v7 setContents_];

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 layer];

    if (a3)
    {
      [a3 scale];
      a1 = v13;
    }

    [v12 setContentsScale_];
  }
}

id sub_20B918D84()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  [v2 size];
  v5 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_20B91A5F0;
  *(v7 + 24) = v6;
  v13[4] = sub_20B91A5F8;
  v13[5] = v7;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_20B918140;
  v13[3] = &block_descriptor_50;
  v8 = _Block_copy(v13);
  v9 = v2;
  v10 = v0;

  v11 = [v5 imageWithActions_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
    return 0;
  }

  return v11;
}

void sub_20B918F58(void *a1, void *a2, void *a3)
{
  c = [a1 CGContext];
  [a2 size];
  v6 = v5;
  [a2 size];
  v8 = v7;
  [a2 drawInRect:20 blendMode:0.0 alpha:{0.0, v6, v7, 1.0}];
  [a2 drawInRect_];
  CGContextSetBlendMode(c, kCGBlendModeSourceAtop);
  v9 = [a3 tintColor];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 CGColor];
    CGContextSetFillColorWithColor(c, v11);
  }

  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = v6;
  v14.size.height = v8;
  CGContextFillRect(c, v14);
}

void sub_20B91909C()
{
  v1 = [v0 layer];
  v2 = sub_20C13C914();
  v11 = [v1 animationForKey_];

  v3 = v11;
  if (!v11)
  {
    v4 = sub_20C13C914();
    v5 = [objc_opt_self() animationWithKeyPath_];

    v6 = *&v0[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet + 16] / *&v0[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate];
    v7 = v5;
    [v7 setDuration_];
    sub_20BEF67DC(*&v0[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets]);
    v8 = sub_20C13CC54();

    [v7 setValues_];

    LODWORD(v9) = 2139095039;
    [v7 setRepeatCount_];

    [v7 setCalculationMode_];
    v10 = [v0 layer];
    v12 = sub_20C13C914();
    [v10 addAnimation:v7 forKey:v12];

    v3 = v12;
  }
}

id sub_20B9193E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpriteSheetView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

objc_super *sub_20B9194AC(uint64_t a1)
{
  if (a1 <= 56)
  {
    if (a1 > 36)
    {
      if (a1 == 37)
      {
        v61 = sub_20B9C7D00(37);
        v2 = [v61 imageWithRenderingMode_];

        v3 = type metadata accessor for SpriteSheetView();
        v62 = objc_allocWithZone(v3);
        v63 = &v62[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
        *v63 = 0xD00000000000001DLL;
        *(v63 + 1) = 0x800000020C1A0930;
        v64 = MEMORY[0x277D84F90];
        *&v62[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_20BC062A0(0, *(v64 + 2) + 1, 1, v64);
        }

        v65 = 0;
        v66 = *(v64 + 2);
        v67 = 16 * v66;
        while (1)
        {
          v68 = *(v64 + 3);
          if (v66 + v65 >= v68 >> 1)
          {
            v64 = sub_20BC062A0((v68 > 1), v66 + v65 + 1, 1, v64);
          }

          *(v64 + 2) = v66 + v65 + 1;
          v69 = &v64[v67];
          *(v69 + 4) = v65 / 10.0;
          *(v69 + 5) = 0;
          if (v66 + v65 == 18)
          {
            break;
          }

          ++v65;
          v67 += 16;
          if (v65 == 10)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v64 = sub_20BC062A0(0, *(v64 + 2) + 1, 1, v64);
            }

            v128 = 0;
            v129 = *(v64 + 2);
            v130 = 16 * v129;
            do
            {
              v131 = *(v64 + 3);
              if (v129 + v128 >= v131 >> 1)
              {
                v64 = sub_20BC062A0((v131 > 1), v129 + v128 + 1, 1, v64);
              }

              *(v64 + 2) = v129 + v128 + 1;
              v132 = &v64[v130];
              *(v132 + 4) = v128 / 10.0;
              *(v132 + 5) = 0x3FE0000000000000;
              if (v129 + v128 == 18)
              {
                break;
              }

              v130 += 16;
              v125 = v128++ == 9;
            }

            while (!v125);
            break;
          }
        }

        *&v62[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v64;
        v133 = &v62[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
        *v133 = v2;
        *(v133 + 8) = xmmword_20C162A50;
        *&v62[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
        v153 = v62;
        v47 = &v153;
        goto LABEL_138;
      }

      if (a1 == 52)
      {
        v26 = sub_20B9C7D00(52);
        v2 = [v26 imageWithRenderingMode_];

        v3 = type metadata accessor for SpriteSheetView();
        v27 = objc_allocWithZone(v3);
        v28 = 0;
        v29 = &v27[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
        *v29 = 0xD00000000000001DLL;
        *(v29 + 1) = 0x800000020C1A0930;
        v30 = MEMORY[0x277D84F90];
        *&v27[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
LABEL_32:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_20BC062A0(0, *(v30 + 2) + 1, 1, v30);
        }

        v31 = 0;
        v32 = v28 + 1;
        v33 = *(v30 + 2);
        v34 = 16 * v33;
        while (1)
        {
          v35 = *(v30 + 3);
          if (v33 + v31 >= v35 >> 1)
          {
            v30 = sub_20BC062A0((v35 > 1), v33 + v31 + 1, 1, v30);
          }

          *(v30 + 2) = v33 + v31 + 1;
          v36 = &v30[v34];
          *(v36 + 4) = v31 / 10.0;
          *(v36 + 5) = v28 / 7.0;
          if (v33 + v31 == 63)
          {
            break;
          }

          ++v31;
          v34 += 16;
          if (v31 == 10)
          {
            ++v28;
            if (v32 != 7)
            {
              goto LABEL_32;
            }

            break;
          }
        }

        *&v27[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v30;
        v48 = &v27[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
        *v48 = v2;
        *(v48 + 8) = xmmword_20C162A40;
        *&v27[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
        v154 = v27;
        v47 = &v154;
        goto LABEL_138;
      }
    }

    else
    {
      if (a1 == 13)
      {
        v49 = sub_20B9C7D00(13);
        v2 = [v49 imageWithRenderingMode_];

        v3 = type metadata accessor for SpriteSheetView();
        v50 = objc_allocWithZone(v3);
        v51 = 0;
        v52 = &v50[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
        *v52 = 0xD00000000000001DLL;
        *(v52 + 1) = 0x800000020C1A0930;
        v53 = MEMORY[0x277D84F90];
        *&v50[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
LABEL_54:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_20BC062A0(0, *(v53 + 2) + 1, 1, v53);
        }

        v54 = 0;
        v55 = v51 + 1;
        v56 = vcvtd_n_f64_u64(v51, 2uLL);
        v57 = *(v53 + 2);
        v58 = 16 * v57;
        while (1)
        {
          v59 = *(v53 + 3);
          if (v57 + v54 >= v59 >> 1)
          {
            v53 = sub_20BC062A0((v59 > 1), v57 + v54 + 1, 1, v53);
          }

          *(v53 + 2) = v57 + v54 + 1;
          v60 = &v53[v58];
          *(v60 + 4) = v54 / 10.0;
          *(v60 + 5) = v56;
          if (v57 + v54 == 37)
          {
            break;
          }

          ++v54;
          v58 += 16;
          if (v54 == 10)
          {
            ++v51;
            if (v55 != 4)
            {
              goto LABEL_54;
            }

            break;
          }
        }

        *&v50[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v53;
        v70 = &v50[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
        *v70 = v2;
        *(v70 + 8) = xmmword_20C162AC0;
        *&v50[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
        v146 = v50;
        v47 = &v146;
        goto LABEL_138;
      }

      if (a1 == 35)
      {
        v14 = sub_20B9C7D00(35);
        v2 = [v14 imageWithRenderingMode_];

        v3 = type metadata accessor for SpriteSheetView();
        v15 = objc_allocWithZone(v3);
        v16 = 0;
        v17 = &v15[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
        *v17 = 0xD00000000000001DLL;
        *(v17 + 1) = 0x800000020C1A0930;
        v18 = MEMORY[0x277D84F90];
        *&v15[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
LABEL_20:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_20BC062A0(0, *(v18 + 2) + 1, 1, v18);
        }

        v19 = 0;
        v20 = v16 + 1;
        v21 = vcvtd_n_f64_u64(v16, 3uLL);
        v22 = *(v18 + 2);
        v23 = 16 * v22;
        while (1)
        {
          v24 = *(v18 + 3);
          if (v22 + v19 >= v24 >> 1)
          {
            v18 = sub_20BC062A0((v24 > 1), v22 + v19 + 1, 1, v18);
          }

          *(v18 + 2) = v22 + v19 + 1;
          v25 = &v18[v23];
          *(v25 + 4) = v19 / 10.0;
          *(v25 + 5) = v21;
          if (v22 + v19 == 72)
          {
            break;
          }

          ++v19;
          v23 += 16;
          if (v19 == 10)
          {
            ++v16;
            if (v20 != 8)
            {
              goto LABEL_20;
            }

            break;
          }
        }

        *&v15[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v18;
        v46 = &v15[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
        *v46 = v2;
        *(v46 + 8) = xmmword_20C162A80;
        *&v15[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
        v150 = v15;
        v47 = &v150;
        goto LABEL_138;
      }
    }

LABEL_103:
    v110 = sub_20B9C7D00(37);
    v2 = [v110 imageWithRenderingMode_];

    v3 = type metadata accessor for SpriteSheetView();
    v111 = objc_allocWithZone(v3);
    v112 = &v111[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
    *v112 = 0xD00000000000001DLL;
    *(v112 + 1) = 0x800000020C1A0930;
    v113 = MEMORY[0x277D84F90];
    *&v111[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v113 = sub_20BC062A0(0, *(v113 + 2) + 1, 1, v113);
    }

    v114 = 0;
    v115 = *(v113 + 2);
    v116 = 16 * v115;
    while (1)
    {
      v117 = *(v113 + 3);
      if (v115 + v114 >= v117 >> 1)
      {
        v113 = sub_20BC062A0((v117 > 1), v115 + v114 + 1, 1, v113);
      }

      *(v113 + 2) = v115 + v114 + 1;
      v118 = &v113[v116];
      *(v118 + 4) = v114 / 10.0;
      *(v118 + 5) = 0;
      if (v115 + v114 == 18)
      {
        break;
      }

      ++v114;
      v116 += 16;
      if (v114 == 10)
      {
        v134 = swift_isUniquelyReferenced_nonNull_native();
        if ((v134 & 1) == 0)
        {
          v113 = sub_20BC062A0(0, *(v113 + 2) + 1, 1, v113);
        }

        v135 = 0;
        v136 = *(v113 + 2);
        v137 = 16 * v136;
        do
        {
          v138 = *(v113 + 3);
          if (v136 + v135 >= v138 >> 1)
          {
            v113 = sub_20BC062A0((v138 > 1), v136 + v135 + 1, 1, v113);
          }

          *(v113 + 2) = v136 + v135 + 1;
          v139 = &v113[v137];
          *(v139 + 4) = v135 / 10.0;
          *(v139 + 5) = 0x3FE0000000000000;
          if (v136 + v135 == 18)
          {
            break;
          }

          v137 += 16;
          v125 = v135++ == 9;
        }

        while (!v125);
        break;
      }
    }

    *&v111[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v113;
    v140 = &v111[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
    *v140 = v2;
    *(v140 + 8) = xmmword_20C162A50;
    *&v111[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
    v155 = v111;
    v47 = &v155;
    goto LABEL_138;
  }

  if (a1 <= 64)
  {
    if (a1 == 57)
    {
      v84 = sub_20B9C7D00(57);
      v2 = [v84 imageWithRenderingMode_];

      v3 = type metadata accessor for SpriteSheetView();
      v85 = objc_allocWithZone(v3);
      v86 = 0;
      v87 = &v85[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
      *v87 = 0xD00000000000001DLL;
      *(v87 + 1) = 0x800000020C1A0930;
      v88 = MEMORY[0x277D84F90];
      *&v85[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
LABEL_83:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_20BC062A0(0, *(v88 + 2) + 1, 1, v88);
      }

      v89 = 0;
      v90 = v86 + 1;
      v91 = vcvtd_n_f64_u64(v86, 4uLL);
      v92 = *(v88 + 2);
      v93 = 16 * v92;
      while (1)
      {
        v94 = *(v88 + 3);
        if (v92 + v89 >= v94 >> 1)
        {
          v88 = sub_20BC062A0((v94 > 1), v92 + v89 + 1, 1, v88);
        }

        *(v88 + 2) = v92 + v89 + 1;
        v95 = &v88[v93];
        *(v95 + 4) = v89 / 10.0;
        *(v95 + 5) = v91;
        if (v92 + v89 == 157)
        {
          break;
        }

        ++v89;
        v93 += 16;
        if (v89 == 10)
        {
          ++v86;
          if (v90 != 16)
          {
            goto LABEL_83;
          }

          break;
        }
      }

      *&v85[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v88;
      v96 = &v85[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
      *v96 = v2;
      *(v96 + 8) = xmmword_20C162A60;
      *&v85[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
      v152 = v85;
      v47 = &v152;
      goto LABEL_138;
    }

    if (a1 == 63)
    {
      v37 = sub_20B9C7D00(63);
      v2 = [v37 imageWithRenderingMode_];

      v3 = type metadata accessor for SpriteSheetView();
      v38 = objc_allocWithZone(v3);
      v39 = &v38[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
      *v39 = 0xD00000000000001DLL;
      *(v39 + 1) = 0x800000020C1A0930;
      v40 = MEMORY[0x277D84F90];
      *&v38[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_20BC062A0(0, *(v40 + 2) + 1, 1, v40);
      }

      v41 = 0;
      v42 = *(v40 + 2);
      v43 = 16 * v42;
      while (1)
      {
        v44 = *(v40 + 3);
        if (v42 + v41 >= v44 >> 1)
        {
          v40 = sub_20BC062A0((v44 > 1), v42 + v41 + 1, 1, v40);
        }

        *(v40 + 2) = v42 + v41 + 1;
        v45 = &v40[v43];
        *(v45 + 4) = v41 / 10.0;
        *(v45 + 5) = 0;
        if (v42 + v41 == 16)
        {
          break;
        }

        ++v41;
        v43 += 16;
        if (v41 == 10)
        {
          v119 = swift_isUniquelyReferenced_nonNull_native();
          if ((v119 & 1) == 0)
          {
            v40 = sub_20BC062A0(0, *(v40 + 2) + 1, 1, v40);
          }

          v120 = 0;
          v121 = *(v40 + 2);
          v122 = 16 * v121;
          do
          {
            v123 = *(v40 + 3);
            if (v121 + v120 >= v123 >> 1)
            {
              v40 = sub_20BC062A0((v123 > 1), v121 + v120 + 1, 1, v40);
            }

            *(v40 + 2) = v121 + v120 + 1;
            v124 = &v40[v122];
            *(v124 + 4) = v120 / 10.0;
            *(v124 + 5) = 0x3FE0000000000000;
            if (v121 + v120 == 16)
            {
              break;
            }

            v122 += 16;
            v125 = v120++ == 9;
          }

          while (!v125);
          break;
        }
      }

      *&v38[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v40;
      v126 = &v38[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
      *v126 = v2;
      *(v126 + 8) = xmmword_20C162AB0;
      *&v38[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
      v147 = v38;
      v47 = &v147;
      goto LABEL_138;
    }

    goto LABEL_103;
  }

  switch(a1)
  {
    case 'A':
      v71 = sub_20B9C7D00(65);
      v2 = [v71 imageWithRenderingMode_];

      v3 = type metadata accessor for SpriteSheetView();
      v72 = objc_allocWithZone(v3);
      v73 = 0;
      v74 = &v72[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
      *v74 = 0xD00000000000001DLL;
      *(v74 + 1) = 0x800000020C1A0930;
      v75 = MEMORY[0x277D84F90];
      *&v72[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
LABEL_73:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_20BC062A0(0, *(v75 + 2) + 1, 1, v75);
      }

      v76 = 0;
      v77 = v73 + 1;
      v78 = vcvtd_n_f64_u64(v73, 2uLL);
      v79 = *(v75 + 2);
      v80 = 16 * v79;
      while (1)
      {
        v81 = *(v75 + 3);
        if (v79 + v76 >= v81 >> 1)
        {
          v75 = sub_20BC062A0((v81 > 1), v79 + v76 + 1, 1, v75);
        }

        *(v75 + 2) = v79 + v76 + 1;
        v82 = &v75[v80];
        *(v82 + 4) = v76 / 10.0;
        *(v82 + 5) = v78;
        if (v79 + v76 == 30)
        {
          break;
        }

        ++v76;
        v80 += 16;
        if (v76 == 10)
        {
          ++v73;
          if (v77 != 4)
          {
            goto LABEL_73;
          }

          break;
        }
      }

      *&v72[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v75;
      v83 = &v72[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
      *v83 = v2;
      *(v83 + 8) = xmmword_20C162AA0;
      *&v72[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
      v148 = v72;
      v47 = &v148;
      break;
    case 'B':
      v98 = sub_20B9C7D00(66);
      v2 = [v98 imageWithRenderingMode_];

      v3 = type metadata accessor for SpriteSheetView();
      v99 = objc_allocWithZone(v3);
      v100 = 0;
      v101 = &v99[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
      *v101 = 0xD00000000000001DLL;
      *(v101 + 1) = 0x800000020C1A0930;
      v102 = MEMORY[0x277D84F90];
      *&v99[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
LABEL_94:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_20BC062A0(0, *(v102 + 2) + 1, 1, v102);
      }

      v103 = 0;
      v104 = v100 + 1;
      v105 = *(v102 + 2);
      v106 = 16 * v105;
      while (1)
      {
        v107 = *(v102 + 3);
        if (v105 + v103 >= v107 >> 1)
        {
          v102 = sub_20BC062A0((v107 > 1), v105 + v103 + 1, 1, v102);
        }

        *(v102 + 2) = v105 + v103 + 1;
        v108 = &v102[v106];
        *(v108 + 4) = v103 / 10.0;
        *(v108 + 5) = v100 / 11.0;
        if (v105 + v103 == 102)
        {
          break;
        }

        ++v103;
        v106 += 16;
        if (v103 == 10)
        {
          ++v100;
          if (v104 != 11)
          {
            goto LABEL_94;
          }

          break;
        }
      }

      *&v99[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v102;
      v109 = &v99[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
      *v109 = v2;
      *(v109 + 8) = xmmword_20C162A90;
      *&v99[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
      v149 = v99;
      v47 = &v149;
      break;
    case 'H':
      v1 = sub_20B9C7D00(72);
      v2 = [v1 imageWithRenderingMode_];

      v3 = type metadata accessor for SpriteSheetView();
      v4 = objc_allocWithZone(v3);
      v5 = 0;
      v6 = &v4[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
      *v6 = 0xD00000000000001DLL;
      *(v6 + 1) = 0x800000020C1A0930;
      v7 = MEMORY[0x277D84F90];
      *&v4[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
LABEL_7:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_20BC062A0(0, *(v7 + 2) + 1, 1, v7);
      }

      v8 = 0;
      v9 = v5 + 1;
      v10 = *(v7 + 2);
      v11 = 16 * v10;
      while (1)
      {
        v12 = *(v7 + 3);
        if (v10 + v8 >= v12 >> 1)
        {
          v7 = sub_20BC062A0((v12 > 1), v10 + v8 + 1, 1, v7);
        }

        *(v7 + 2) = v10 + v8 + 1;
        v13 = &v7[v11];
        *(v13 + 4) = v8 / 10.0;
        *(v13 + 5) = v5 / 23.0;
        if (v10 + v8 == 223)
        {
          break;
        }

        ++v8;
        v11 += 16;
        if (v8 == 10)
        {
          ++v5;
          if (v9 != 23)
          {
            goto LABEL_7;
          }

          break;
        }
      }

      *&v4[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v7;
      v97 = &v4[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
      *v97 = v2;
      *(v97 + 8) = xmmword_20C162A70;
      *&v4[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
      v151 = v4;
      v47 = &v151;
      break;
    default:
      goto LABEL_103;
  }

LABEL_138:
  v47->super_class = v3;
  v141 = v2;
  v142 = [(objc_super *)v47 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v143 = [(objc_super *)v142 layer];
  [v143 setContentsGravity_];

  v144 = [(objc_super *)v142 layer];
  [v144 setMasksToBounds_];

  sub_20B918360();
  *(&v142->receiver + OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate) = 0x403E000000000000;
  return v142;
}

uint64_t sub_20B91A638(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  v5 = &v4[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
  *v5 = 0xD00000000000001DLL;
  *(v5 + 1) = 0x800000020C1A0930;
  *&v4[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
  if (!a2)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (a2 == -1 && a3 == 0x8000000000000000)
  {
    goto LABEL_33;
  }

  v9 = a3 % a2 != 0;
  v10 = a3 / a2 + v9;
  if (__OFADD__(a3 / a2, v9))
  {
    goto LABEL_30;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v26 = result;
  if (v10)
  {
    if (a2 < 0)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    v11 = 0;
    v12 = a2;
    v13 = MEMORY[0x277D84F90];
    while (v11 < v10)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_28;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC062A0(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
      }

      v15 = 0;
      v16 = v11 / v10;
      do
      {
        if (v15 >= a2)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        if (__OFADD__(v15, 1))
        {
          goto LABEL_26;
        }

        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        v19 = v18 + 1;
        if (v18 >= v17 >> 1)
        {
          result = sub_20BC062A0((v17 > 1), v18 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v19;
        v20 = v13 + 16 * v18;
        *(v20 + 32) = v15 / v12;
        *(v20 + 40) = v16;
        if (v15 + 1 == a2)
        {
          break;
        }

        ++v15;
      }

      while (v19 != a3);
      if (v19 != a3)
      {
        v11 = v14;
        if (v14 != v10)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_24:
  *&v4[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v13;
  v21 = &v4[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
  *v21 = v26;
  *(v21 + 1) = a2;
  *(v21 + 2) = a3;
  *&v4[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = a4;
  v27.receiver = v4;
  v27.super_class = type metadata accessor for SpriteSheetView();
  v22 = v26;
  v23 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v24 = [v23 layer];
  [v24 setContentsGravity_];

  v25 = [v23 layer];
  [v25 setMasksToBounds_];

  sub_20B918360();
  return v23;
}

void sub_20B91A94C(void *a1)
{
  v17 = a1;
  v2 = sub_20C13C4C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_imageView);
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_flipsContentForRightToLeftDirection) == 1)
  {
    if (v17)
    {
      v7 = v6;
      v8 = [v17 imageFlippedForRightToLeftLayoutDirection];
    }

    else
    {
      v9 = v6;
      v8 = 0;
    }

    [v6 setImage_];
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_imageView) setImage_];
  }

  v10 = [*(v1 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_imageView) image];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0x277D851C0];
    if (*(v1 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_recencyIconView))
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v3 + 104))(v5, *v12, v2);

      sub_20BD519D8(v11, v5, sub_20B91B5D0, v13);

      (*(v3 + 8))(v5, v2);
    }

    if (*(v1 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_stackIconView))
    {
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v3 + 104))(v5, *v12, v2);

      sub_20BD519D8(v11, v5, sub_20B91B5A4, v14);

      (*(v3 + 8))(v5, v2);
    }

    else
    {
    }
  }

  else
  {
    v15 = v17;
  }
}

void sub_20B91AC58(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + *a3);
    v9 = Strong;
    v10 = v8;

    if (v8)
    {
      [*&v10[*a4] setImage_];
      [v10 setNeedsLayout];
    }
  }
}

uint64_t sub_20B91ADBC()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for ArtworkView();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  if (v0[OBJC_IVAR____TtC9SeymourUI11ArtworkView_style] == 1)
  {
    v1 = [v0 layer];
    [v0 bounds];
    [v1 setCornerRadius_];
  }

  [v0 bounds];
  Width = CGRectGetWidth(v17);
  v4 = &v0[OBJC_IVAR____TtC9SeymourUI11ArtworkView_oldBounds];
  v5 = CGRectGetWidth(*&v0[OBJC_IVAR____TtC9SeymourUI11ArtworkView_oldBounds]);
  [v0 bounds];
  Height = CGRectGetHeight(v18);
  v7 = CGRectGetHeight(*v4);
  [v0 bounds];
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = 0.0;
  v21.size.height = 0.0;
  result = CGRectEqualToRect(v19, v21);
  if ((result & 1) == 0)
  {
    [v0 bounds];
    result = CGRectEqualToRect(v20, *v4);
    v9 = fmax(vabdd_f64(Width, v5), vabdd_f64(Height, v7)) < 1.0;
    if ((result & 1) == 0 && !v9)
    {
      result = [v0 bounds];
      *v4 = v10;
      *(v4 + 1) = v11;
      *(v4 + 2) = v12;
      *(v4 + 3) = v13;
      v14 = *&v0[OBJC_IVAR____TtC9SeymourUI11ArtworkView_layoutHandler];
      if (v14)
      {

        v14(v15);
        return sub_20B583ECC(v14);
      }
    }
  }

  return result;
}

id sub_20B91AFB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ArtworkView()
{
  result = qword_2811039F0;
  if (!qword_2811039F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B91B114()
{
  sub_20B52CA1C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_20B91B210()
{
  result = qword_27C767B90;
  if (!qword_27C767B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767B90);
  }

  return result;
}

uint64_t sub_20B91B264@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI11ArtworkView_artwork;
  swift_beginAccess();
  return sub_20B654504(v1 + v3, a1);
}

uint64_t sub_20B91B2BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI11ArtworkView_artwork;
  swift_beginAccess();
  sub_20B69AB5C(a1, v1 + v3);
  return swift_endAccess();
}

void *sub_20B91B31C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_completedIconView);
  v2 = v1;
  return v1;
}

void sub_20B91B34C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_completedIconView);
  *(v1 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_completedIconView) = a1;
}

uint64_t sub_20B91B360()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_iconConstraints);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_20B91B464(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_layoutHandler);
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_layoutHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_20B583ECC(v4);
}

uint64_t sub_20B91B49C(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_pendingArtworkSize;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

void *sub_20B91B4B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_recencyIconView);
  v2 = v1;
  return v1;
}

void sub_20B91B4E8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_recencyIconView);
  *(v1 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_recencyIconView) = a1;
}

void *sub_20B91B4FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_stackIconView);
  v2 = v1;
  return v1;
}

void sub_20B91B52C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_stackIconView);
  *(v1 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_stackIconView) = a1;
}

void sub_20B91B558(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_shelfArtworkIconSafeAreaInsets);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

char *sub_20B91B5FC(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI11ArtworkView_artwork;
  v4 = sub_20C137C24();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC9SeymourUI11ArtworkView_completedIconView] = 0;
  v1[OBJC_IVAR____TtC9SeymourUI11ArtworkView_flipsContentForRightToLeftDirection] = 0;
  v5 = &v1[OBJC_IVAR____TtC9SeymourUI11ArtworkView_iconConstraints];
  *v5 = 0u;
  v5[1] = 0u;
  v6 = &v1[OBJC_IVAR____TtC9SeymourUI11ArtworkView_layoutHandler];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v1[OBJC_IVAR____TtC9SeymourUI11ArtworkView_pendingArtworkSize];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  *&v1[OBJC_IVAR____TtC9SeymourUI11ArtworkView_recencyIconView] = 0;
  *&v1[OBJC_IVAR____TtC9SeymourUI11ArtworkView_stackIconView] = 0;
  v8 = &v1[OBJC_IVAR____TtC9SeymourUI11ArtworkView_layout];
  v8[3] = &type metadata for ArtworkView.Layout;
  v8[4] = &off_2822B6600;
  v9 = swift_allocObject();
  *v8 = v9;
  __asm
  {
    FMOV            V0.2D, #2.5
    FMOV            V1.2D, #5.0
  }

  *(v9 + 16) = _Q0;
  *(v9 + 32) = _Q1;
  *(v9 + 48) = _Q1;
  *(v9 + 64) = 0x4014000000000000;
  v16 = OBJC_IVAR____TtC9SeymourUI11ArtworkView_imageView;
  type metadata accessor for NoIntrinsicImageView();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v16] = v17;
  v18 = &v1[OBJC_IVAR____TtC9SeymourUI11ArtworkView_oldBounds];
  *v18 = 0u;
  v18[1] = 0u;
  v1[OBJC_IVAR____TtC9SeymourUI11ArtworkView_style] = a1 & 1;
  v19 = &v1[OBJC_IVAR____TtC9SeymourUI11ArtworkView_shelfArtworkIconSafeAreaInsets];
  v20 = *(MEMORY[0x277D75060] + 16);
  *v19 = *MEMORY[0x277D75060];
  v19[1] = v20;
  v42.receiver = v1;
  v42.super_class = type metadata accessor for ArtworkView();
  v21 = objc_msgSendSuper2(&v42, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  [v23 setBackgroundColor_];

  [v23 setClipsToBounds_];
  v25 = OBJC_IVAR____TtC9SeymourUI11ArtworkView_imageView;
  [*&v23[OBJC_IVAR____TtC9SeymourUI11ArtworkView_imageView] setContentMode_];
  [v23 addSubview_];
  v26 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_20C14FE90;
  v28 = [*&v23[v25] leadingAnchor];
  v29 = [v23 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v27 + 32) = v30;
  v31 = [*&v23[v25] trailingAnchor];
  v32 = [v23 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v27 + 40) = v33;
  v34 = [*&v23[v25] topAnchor];
  v35 = [v23 topAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v27 + 48) = v36;
  v37 = [*&v23[v25] bottomAnchor];
  v38 = [v23 bottomAnchor];

  v39 = [v37 constraintEqualToAnchor_];
  *(v27 + 56) = v39;
  sub_20B5E29D0();
  v40 = sub_20C13CC54();

  [v26 activateConstraints_];

  return v23;
}

void sub_20B91BA74()
{
  v1 = OBJC_IVAR____TtC9SeymourUI11ArtworkView_artwork;
  v2 = sub_20C137C24();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_completedIconView) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_flipsContentForRightToLeftDirection) = 0;
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_iconConstraints);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (v0 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_layoutHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = v0 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_pendingArtworkSize;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_recencyIconView) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_stackIconView) = 0;
  v6 = (v0 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_layout);
  v6[3] = &type metadata for ArtworkView.Layout;
  v6[4] = &off_2822B6600;
  v7 = swift_allocObject();
  *v6 = v7;
  __asm
  {
    FMOV            V0.2D, #2.5
    FMOV            V1.2D, #5.0
  }

  *(v7 + 16) = _Q0;
  *(v7 + 32) = _Q1;
  *(v7 + 48) = _Q1;
  *(v7 + 64) = 0x4014000000000000;
  v14 = OBJC_IVAR____TtC9SeymourUI11ArtworkView_imageView;
  type metadata accessor for NoIntrinsicImageView();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v14) = v15;
  v16 = (v0 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_oldBounds);
  *v16 = 0u;
  v16[1] = 0u;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B91BC2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B91BCA8(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = MEMORY[0x277D84F90];
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 96) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v3 + 32) = v22[0];
  *(v3 + 48) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51C710(v22, v3 + 56);
  type metadata accessor for TVQueueFocusedWorkoutPresenter();
  swift_allocObject();

  v9 = sub_20B89AED0();

  *(v4 + 16) = v9;
  v10 = objc_allocWithZone(type metadata accessor for TVUpNextQueueListDataProvider());
  v11 = sub_20B85F448(a1, a2, a3);

  *(v4 + 24) = v11;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = &v11[OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_onFocusSettled];
  v14 = *&v11[OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_onFocusSettled];
  *v13 = sub_20B91C528;
  v13[1] = v12;
  v15 = v11;

  sub_20B583ECC(v14);

  v16 = *(v4 + 24);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v16;

  v19 = &v18[OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_onUpNextQueueItemsChanged];
  v20 = *&v18[OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_onUpNextQueueItemsChanged];
  *v19 = sub_20B91C530;
  v19[1] = v17;

  sub_20B583ECC(v20);

  return v4;
}

uint64_t sub_20B91BED4(unint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B91BFDC(a1);
  }

  return result;
}

uint64_t sub_20B91BF34(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 96) = a1;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B91C150();
  }

  return result;
}

uint64_t sub_20B91BFDC(unint64_t a1)
{
  v3 = sub_20C134014();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v7 == 30)
  {
    v8 = v1;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0);
    v9 = swift_projectBox() + *(v10 + 48);
  }

  else
  {
    if (v7 != 32)
    {
      *(v1 + 104) = 0;
      *(v1 + 112) = 0;
      goto LABEL_7;
    }

    v8 = v1;
    v9 = swift_projectBox();
  }

  (*(v4 + 16))(v6, v9, v3);
  v11 = sub_20C133E44();
  v13 = v12;
  (*(v4 + 8))(v6, v3);
  *(v8 + 104) = v11;
  *(v8 + 112) = v13;
LABEL_7:

  return sub_20B91C150();
}

uint64_t sub_20B91C150()
{
  v1 = sub_20C134B14();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[14];
  if (v6)
  {
    v7 = v0[13];
    v8 = v0[2];
    v9 = *(v8 + 184);
    if (!v9 || ((result = *(v8 + 176), result == v7) ? (v11 = v9 == v6) : (v11 = 0), !v11 && (result = sub_20C13DFF4(), (result & 1) == 0)))
    {

      sub_20B89915C(v7, v6);
    }
  }

  else
  {
    v12 = v0[12];
    if (*(v12 + 16))
    {
      v13 = v3;
      (*(v2 + 16))(v5, v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v3);
      v14 = sub_20C134AB4();
      v16 = v15;
      (*(v2 + 8))(v5, v13);
      v17 = v0[2];
      v18 = *(v17 + 184);
      if (!v18 || (*(v17 + 176) == v14 ? (v19 = v18 == v16) : (v19 = 0), !v19 && (sub_20C13DFF4() & 1) == 0))
      {
        sub_20B89915C(v14, v16);
      }
    }

    else
    {
      v20 = v0[2];
      result = *(v20 + 184);
      if (result)
      {
        *(v20 + 176) = 0;
        *(v20 + 184) = 0;

        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v21 = result;
          v22 = swift_allocObject();
          *(v22 + 16) = v21;
          result = [swift_unknownObjectRetain() view];
          if (result)
          {
            v23 = result;
            v24 = objc_opt_self();
            v25 = swift_allocObject();
            v25[2] = sub_20B89B014;
            v25[3] = v22;
            v25[4] = v21;
            aBlock[4] = sub_20B89B01C;
            aBlock[5] = v25;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_20B7B548C;
            aBlock[3] = &block_descriptor_51;
            v26 = _Block_copy(aBlock);
            swift_unknownObjectRetain();

            [v24 transitionWithView:v23 duration:5242880 options:v26 animations:0 completion:0.3];

            _Block_release(v26);
            return swift_unknownObjectRelease();
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_20B91C49C()
{

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t MetricClickMarketingFields.impressionDictionary()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C1582F0;
  *(inited + 32) = 0x79546C6C65737075;
  *(inited + 40) = 0xEA00000000006570;
  v1 = sub_20C136E14();
  if (v2)
  {
    v3 = MEMORY[0x277D837D0];
  }

  else
  {
    v1 = 0;
    v3 = 0;
    *(inited + 64) = 0;
  }

  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0x6C69626967696C65;
  *(inited + 88) = 0xEF65707954797469;
  v4 = sub_20C136E44();
  if (v5)
  {
    v6 = MEMORY[0x277D837D0];
  }

  else
  {
    v4 = 0;
    v6 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v4;
  *(inited + 104) = v5;
  *(inited + 120) = v6;
  *(inited + 128) = 0x6E656D6563616C70;
  *(inited + 136) = 0xE900000000000074;
  v7 = sub_20C136E84();
  if (v8)
  {
    v9 = MEMORY[0x277D837D0];
  }

  else
  {
    v7 = 0;
    v9 = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v7;
  *(inited + 152) = v8;
  *(inited + 168) = v9;
  strcpy((inited + 176), "placementType");
  *(inited + 190) = -4864;
  v10 = sub_20C136E24();
  if (v11)
  {
    v12 = MEMORY[0x277D837D0];
  }

  else
  {
    v10 = 0;
    v12 = 0;
    *(inited + 208) = 0;
  }

  *(inited + 192) = v10;
  *(inited + 200) = v11;
  *(inited + 216) = v12;
  strcpy((inited + 224), "channelPartner");
  *(inited + 239) = -18;
  v13 = sub_20C136E34();
  if (v14)
  {
    v15 = MEMORY[0x277D837D0];
  }

  else
  {
    v13 = 0;
    v15 = 0;
    *(inited + 256) = 0;
  }

  *(inited + 240) = v13;
  *(inited + 248) = v14;
  *(inited + 264) = v15;
  v16 = sub_20B6B18A8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763AB0);
  swift_arrayDestroy();
  v17 = sub_20B91C8BC(v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767BB0);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_20C1517D0;
  *(v18 + 32) = 0x6E6974656B72616DLL;
  *(v18 + 40) = 0xEF64496D65744967;
  *(v18 + 48) = sub_20C136E54();
  *(v18 + 56) = v19;
  *(v18 + 64) = 0x496567617373656DLL;
  *(v18 + 72) = 0xE900000000000064;
  *(v18 + 80) = sub_20C136E74();
  *(v18 + 88) = v20;
  *(v18 + 96) = 0x636544726566666FLL;
  *(v18 + 104) = 0xEF64496E6F697369;
  *(v18 + 112) = sub_20C136E64();
  *(v18 + 120) = v21;
  v22 = sub_20B6B19D8(v18);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767BB8);
  swift_arrayDestroy();
  v23 = sub_20B91CB88(v22);

  if (*(v23 + 16))
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767BC0);
    *&v27 = v23;
    sub_20B6B3B74(&v27, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20B91CFC0(v26, 0x6E6974656B72616DLL, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  }

  else
  {
  }

  return v17;
}

uint64_t sub_20B91C8BC(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v39 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_12:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_20B68E264(*(a1 + 56) + 32 * v13, v38);
    *&v37 = v16;
    *(&v37 + 1) = v15;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_20B68E264(&v35, &v28);
    if (v29)
    {
      sub_20B6B3B74(&v28, v33);
      v31 = v34;
      v32[0] = v35;
      v32[1] = v36;
      sub_20B6B3B74(v33, v30);
      v17 = *(v2 + 16);
      if (*(v2 + 24) <= v17)
      {

        sub_20BA07354(v17 + 1, 1);
        v2 = v39;
      }

      else
      {
      }

      v18 = v31;
      sub_20C13E164();
      sub_20C13CA64();
      result = sub_20C13E1B4();
      v19 = v2 + 64;
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v2 + 48) + 16 * v23) = v18;
      sub_20B6B3B74(v30, (*(v2 + 56) + 32 * v23));
      ++*(v2 + 16);
      v10 = v32;
    }

    else
    {

      sub_20B520158(&v34, &unk_27C767BE0);
      v10 = &v28;
    }

    result = sub_20B520158(v10, &unk_27C768A00);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_20B91CB88(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v9 << 6);
        v12 = (*(a1 + 56) + 16 * v11);
        v13 = v12[1];
        if (v13)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v15 = (*(a1 + 48) + 16 * v11);
      v31 = v15[1];
      v32 = *v15;
      v30 = *v12;
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {

        sub_20BA0760C(v16 + 1, 1);
        v2 = v33;
      }

      else
      {
      }

      sub_20C13E164();
      sub_20C13CA64();
      result = sub_20C13E1B4();
      v17 = v2 + 64;
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      v22 = v31;
LABEL_24:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = 16 * v21;
      v28 = (*(v2 + 48) + v27);
      *v28 = v32;
      v28[1] = v22;
      v29 = (*(v2 + 56) + v27);
      *v29 = v30;
      v29[1] = v13;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v23 = 0;
    v24 = (63 - v18) >> 6;
    v22 = v31;
    while (++v20 != v24 || (v23 & 1) == 0)
    {
      v25 = v20 == v24;
      if (v20 == v24)
      {
        v20 = 0;
      }

      v23 |= v25;
      v26 = *(v17 + 8 * v20);
      if (v26 != -1)
      {
        v21 = __clz(__rbit64(~v26)) + (v20 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v14 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v14);
      ++v9;
      if (v6)
      {
        v9 = v14;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20B91CDF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20C132EE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_20B65AAD8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_20BA0EB2C();
      goto LABEL_7;
    }

    sub_20BA06D9C(v17, a3 & 1);
    v23 = sub_20B65AAD8(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_20BE3A0C8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_20C13E054();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 168 * v14;

  return sub_20B91F2F8(a1, v21);
}

_OWORD *sub_20B91CFC0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20B65AA60(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_20BA0EE38();
      v11 = v19;
      goto LABEL_8;
    }

    sub_20BA07354(v16, a4 & 1);
    v11 = sub_20B65AA60(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_20C13E054();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_20B6B3B74(a1, v22);
  }

  else
  {
    sub_20BE3A1B4(v11, a2, a3, a1, v21);
  }
}