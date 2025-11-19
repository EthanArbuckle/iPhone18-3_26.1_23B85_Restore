unint64_t sub_275462030()
{
  result = qword_2809DCBA8;
  if (!qword_2809DCBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCBA8);
  }

  return result;
}

void sub_275462084()
{
  if (!qword_2809DB580)
  {
    v0 = sub_27546E990();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DB580);
    }
  }
}

uint64_t sub_2754620D4(uint64_t result, uint64_t a2, __int128 *a3, double a4)
{
  v5 = 0;
  v6 = a3[1];
  v72 = *a3;
  v73 = v6;
  v74[0] = a3[2];
  *(v74 + 9) = *(a3 + 41);
  v7 = *(result + 16);
  v8 = result + 32;
  v56 = MEMORY[0x277D84F90];
  v57 = v7;
  v55 = result + 32;
LABEL_2:
  v9 = (v8 + (v5 << 6));
  while (v7 != v5)
  {
    if (v5 >= v7)
    {
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

    v10 = v9[1];
    v68 = *v9;
    v69 = v10;
    v11 = v9[3];
    v70 = v9[2];
    v71 = v11;
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_45;
    }

    v13 = v68;
    v14 = v69;
    v16 = v70;
    v15 = v71;
    sub_2753EF21C(&v68, v67);
    v17 = qword_2809DAD90;

    if (v17 != -1)
    {
      swift_once();
    }

    v19 = *&qword_2809DC3C8;
    v18 = unk_2809DC3D0;
    v20 = *&qword_2809DC3D8;
    v21 = qword_2809DC3E0;
    v22 = unk_2809DC3E8;
    v23 = v13 == qword_2809DC3B8.n128_u64[0] && *(&v13 + 1) == unk_2809DC3C0;
    if (!v23 && (sub_27546E9A0() & 1) == 0 || (*&v14 == v19 ? (v24 = *(&v14 + 1) == v18) : (v24 = 0), v24 ? (v25 = *&v16 == v20) : (v25 = 0), !v25))
    {

LABEL_30:
      v28 = v56;
      result = swift_isUniquelyReferenced_nonNull_native();
      *&v59 = v56;
      if ((result & 1) == 0)
      {
        result = sub_27544107C(0, *(v56 + 16) + 1, 1);
        v28 = v59;
      }

      v8 = v55;
      v30 = *(v28 + 16);
      v29 = *(v28 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_27544107C((v29 > 1), v30 + 1, 1);
        v28 = v59;
      }

      *(v28 + 16) = v30 + 1;
      v56 = v28;
      v31 = (v28 + (v30 << 6));
      v32 = v68;
      v33 = v69;
      v34 = v71;
      v31[4] = v70;
      v31[5] = v34;
      v31[2] = v32;
      v31[3] = v33;
      v5 = v12;
      v7 = v57;
      goto LABEL_2;
    }

    if (*(&v16 + 1) == v21 && v15 == v22)
    {
    }

    else
    {
      v27 = sub_27546E9A0();

      if ((v27 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    result = sub_2753EF278(&v68);
    ++v5;
    v9 += 4;
    v7 = v57;
  }

  v35 = *(v56 + 16);
  if (v35)
  {
    v66 = MEMORY[0x277D84F90];
    sub_2754410BC(0, v35, 0);
    v36 = v66;
    v37 = v35 - 1;
    for (i = 32; ; i += 64)
    {
      v39 = *(v56 + i);
      v40 = *(v56 + i + 16);
      v41 = *(v56 + i + 48);
      v67[2] = *(v56 + i + 32);
      v67[3] = v41;
      v67[0] = v39;
      v67[1] = v40;
      v42 = *(v56 + i);
      v43 = *(v56 + i + 16);
      v44 = *(v56 + i + 48);
      v61 = *(v56 + i + 32);
      v62 = v44;
      v59 = v42;
      v60 = v43;
      v63 = v72;
      v64 = v73;
      v65[0] = v74[0];
      *(v65 + 9) = *(v74 + 9);
      v70 = v61;
      v71 = v44;
      v68 = v42;
      v69 = v43;
      sub_2753EF21C(v67, v58);
      v66 = v36;
      v45 = *(v36 + 16);
      v46 = *(v36 + 24);

      if (v45 >= v46 >> 1)
      {
        sub_2754410BC((v46 > 1), v45 + 1, 1);
        v36 = v66;
      }

      *(v36 + 16) = v45 + 1;
      v47 = v36 + 144 * v45;
      v48 = v68;
      v49 = v69;
      v50 = v71;
      *(v47 + 64) = v70;
      *(v47 + 80) = v50;
      *(v47 + 32) = v48;
      *(v47 + 48) = v49;
      *(v47 + 96) = a2;
      *(v47 + 104) = a4;
      v51 = v63;
      v52 = v64;
      v53 = v65[0];
      *(v47 + 153) = *(v65 + 9);
      *(v47 + 128) = v52;
      *(v47 + 144) = v53;
      *(v47 + 112) = v51;
      if (!v37)
      {
        break;
      }

      --v37;
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v36;
}

BOOL sub_275462494(double *a1, double a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_27546EA90();
  sub_27540C440(a2);
  v7 = sub_27546EAC0();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    v11 = *(*(v5 + 48) + 8 * v9);
    if (a2 - v11 == 0.0)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  sub_275462F4C(v9, isUniquelyReferenced_nonNull_native, a2);
  *v2 = v15;
  v11 = a2;
LABEL_6:
  result = v10 == 0;
  *a1 = v11;
  return result;
}

BOOL sub_27546258C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_27546EA90();
  sub_27546E550();
  v9 = sub_27546EAC0();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_27546E9A0() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_275463088(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_2754626D8(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_27546EA90();
  MEMORY[0x277C77BF0](a2);
  v7 = sub_27546EAC0();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v5 + 48) + v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  sub_2754631F0(a2, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v14;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_2754627C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_275464C58(0, &qword_2809DCBB8, sub_275464BF0, &type metadata for TransitionTime, MEMORY[0x277D84098]);
  result = sub_27546E730();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_32:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_275463328(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v28;
    }

    *(v3 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_27546EA90();
    v19 = v17 == 0.0 ? 0.0 : v17;
    MEMORY[0x277C77C00](*&v19);
    result = sub_27546EAC0();
    v20 = -1 << *(v6 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v13 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v6 + 48) + 8 * v23) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v27 = *(v13 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_26;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_275462A4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_275464C58(0, &qword_2809DCBC0, sub_2753F2EC4, &_s14descr2884101A1C2IDVN, MEMORY[0x277D84098]);
  result = sub_27546E730();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_275463328(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_27546EA90();
    sub_27546E550();
    result = sub_27546EAC0();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_275462CD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_275464C58(0, &qword_2809DAFC8, sub_275406708, &type metadata for Transition.Complexity, MEMORY[0x277D84098]);
  result = sub_27546E730();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_275463328(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_27546EA90();
    MEMORY[0x277C77BF0](v17);
    result = sub_27546EAC0();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
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
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_275462F4C(uint64_t result, char a2, double a3)
{
  v4 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_2754627C8(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_2754637E8(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_27546EA90();
      sub_27540C440(a3);
      result = sub_27546EAC0();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        v4 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (a3 - *(*(v12 + 48) + 8 * v4) == 0.0)
        {
          goto LABEL_15;
        }

        result = v4 + 1;
      }
    }

    result = sub_27546338C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (v4 >> 6) + 56) |= 1 << v4;
  *(*(v8 + 48) + 8 * v4) = a3;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_27546EA40();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_275463088(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_275462A4C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_275463A30(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_27546EA90();
      sub_27546E550();
      result = sub_27546EAC0();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_27546E9A0() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2754634F8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_27546EA40();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_2754631F0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_275462CD4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_275463C90(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_27546EA90();
      MEMORY[0x277C77BF0](v5);
      result = sub_27546EAC0();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_27546367C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_27546EA40();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_275463328(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_27547EE20;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_27546338C()
{
  v1 = v0;
  sub_275464C58(0, &qword_2809DCBB8, sub_275464BF0, &type metadata for TransitionTime, MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_27546E720();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_2754634F8()
{
  v1 = v0;
  sub_275464C58(0, &qword_2809DCBC0, sub_2753F2EC4, &_s14descr2884101A1C2IDVN, MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_27546E720();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

void *sub_27546367C()
{
  v1 = v0;
  sub_275464C58(0, &qword_2809DAFC8, sub_275406708, &type metadata for Transition.Complexity, MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_27546E720();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_2754637E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_275464C58(0, &qword_2809DCBB8, sub_275464BF0, &type metadata for TransitionTime, MEMORY[0x277D84098]);
  result = sub_27546E730();
  v6 = result;
  if (*(v3 + 16))
  {
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_27546EA90();
        v18 = v16 == 0.0 ? 0.0 : v16;
        MEMORY[0x277C77C00](*&v18);
        result = sub_27546EAC0();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v6 + 48) + 8 * v22) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_28;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_28:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_275463A30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_275464C58(0, &qword_2809DCBC0, sub_2753F2EC4, &_s14descr2884101A1C2IDVN, MEMORY[0x277D84098]);
  result = sub_27546E730();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_27546EA90();

        sub_27546E550();
        result = sub_27546EAC0();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

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
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_275463C90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_275464C58(0, &qword_2809DAFC8, sub_275406708, &type metadata for Transition.Complexity, MEMORY[0x277D84098]);
  result = sub_27546E730();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_27546EA90();
        MEMORY[0x277C77BF0](v16);
        result = sub_27546EAC0();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_275463ED8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_275464B84(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_275463F44(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_275463F44(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_27546E970();
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
        v6 = sub_27546E630();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_275464094(v7, v8, a1, v4);
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
    return sub_275464038(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_275464038(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_275464094(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v80 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v75 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (v24 >= *v26)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v77 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = v7[2];
        sub_2754310F8();
        v7 = v73;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_2754310F8();
        v7 = v74;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v78 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_275464670((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v78);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v77;
      a4 = v75;
      if (v77 >= v5)
      {
        v80 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_275464544(&v80, *a1, a3);
LABEL_89:
}

uint64_t sub_275464544(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2754647E4(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_275464670((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_275464670(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_275440E2C(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_275440E2C(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

char *sub_2754647F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_275464B98();
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

void *sub_2754648EC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2754649D4(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!a2)
  {
    a3 = 0;
    goto LABEL_9;
  }

  if (!a3)
  {
LABEL_9:
    v6 = *(a4 + 16);
LABEL_10:
    *result = a4;
    result[1] = v6;
    return OUTLINED_FUNCTION_2_46(result, a2, a3);
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (v4 + v5)
    {
      *a2++ = *(a4 + 16 * v4 + 16 + 16 * v5--);
      if (!(a3 + v5))
      {
        v6 = v4 + v5;
        goto LABEL_10;
      }
    }

    v6 = 0;
    a3 = v4;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void *sub_275464A34(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return OUTLINED_FUNCTION_2_46(result, a2, a3);
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + (v12 | (v9 << 6)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_275464B14(void *result, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = a7 >> 1;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = a7;
    result[4] = v7;
    return OUTLINED_FUNCTION_2_46(result, a2, a3);
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v7 - a6;
    while (1)
    {
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
LABEL_13:
        v7 = a6;
        a3 = v9;
        goto LABEL_11;
      }

      if (v7 == a6)
      {
        goto LABEL_13;
      }

      if (v7 <= a6)
      {
        break;
      }

      --v7;
      *a2++ = *(a5 + 16 * v7);
      if (v8 == a3)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_275464B98()
{
  if (!qword_2809DB590)
  {
    sub_275432100();
    v0 = sub_27546E990();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DB590);
    }
  }
}

unint64_t sub_275464BF0()
{
  result = qword_2809DCBB0;
  if (!qword_2809DCBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCBB0);
  }

  return result;
}

void sub_275464C58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_52()
{

  return sub_27546E8D0();
}

uint64_t sub_275464D0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F756E69746E6F63 && a2 == 0xEA00000000007375;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657070657473 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_27546E9A0();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_275464DDC(char a1)
{
  if (a1)
  {
    return 0x64657070657473;
  }

  else
  {
    return 0x6F756E69746E6F63;
  }
}

uint64_t sub_275464E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275464D0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275464E48(uint64_t a1)
{
  v2 = sub_275465390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275464E84(uint64_t a1)
{
  v2 = sub_275465390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275464EC0(uint64_t a1)
{
  v2 = sub_27546533C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275464EFC(uint64_t a1)
{
  v2 = sub_27546533C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275464F38(uint64_t a1)
{
  v2 = sub_2754652E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275464F74(uint64_t a1)
{
  v2 = sub_2754652E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.Schedule.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_3_38();
  v2 = MEMORY[0x277D84538];
  sub_275465A20(0, v3, v4, v5, MEMORY[0x277D84538]);
  v7 = OUTLINED_FUNCTION_8_9(v6);
  v45 = v8;
  v46 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v14 = OUTLINED_FUNCTION_2_47();
  sub_275465A20(v14, v15, v16, v17, v2);
  v19 = OUTLINED_FUNCTION_8_9(v18);
  v43 = v20;
  v44 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v23);
  v25 = &v42 - v24;
  v26 = OUTLINED_FUNCTION_1_53();
  sub_275465A20(v26, v27, v28, &_s8ScheduleO10CodingKeysON, v2);
  v48 = v29;
  OUTLINED_FUNCTION_8_9(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v34);
  v36 = &v42 - v35;
  v37 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_275465390();
  sub_27546EB00();
  memcpy(v50, v47, 0x178uLL);
  LODWORD(a1) = sub_2754653E4(v50);
  v38 = sub_2754653F0(v50);
  if (a1 == 1)
  {
    v49[0] = 1;
    sub_2754652E8();
    OUTLINED_FUNCTION_8_17();
    memcpy(v49, v38, sizeof(v49));
    sub_275465400();
    v39 = v46;
    sub_27546E950();
    (*(v45 + 8))(v13, v39);
  }

  else
  {
    v49[0] = 0;
    sub_27546533C();
    OUTLINED_FUNCTION_8_17();
    memcpy(v49, v38, 0x99uLL);
    sub_275465454();
    v40 = v44;
    sub_27546E950();
    (*(v43 + 8))(v25, v40);
  }

  return (*(v31 + 8))(v36, v37);
}

unint64_t sub_2754652E8()
{
  result = qword_2809DCBD0;
  if (!qword_2809DCBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCBD0);
  }

  return result;
}

unint64_t sub_27546533C()
{
  result = qword_2809DCBE0;
  if (!qword_2809DCBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCBE0);
  }

  return result;
}

unint64_t sub_275465390()
{
  result = qword_2809DCBF0;
  if (!qword_2809DCBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCBF0);
  }

  return result;
}

unint64_t sub_275465400()
{
  result = qword_2809DCBF8;
  if (!qword_2809DCBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCBF8);
  }

  return result;
}

unint64_t sub_275465454()
{
  result = qword_2809DCC00;
  if (!qword_2809DCC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCC00);
  }

  return result;
}

uint64_t Transition.Schedule.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v76 = a2;
  OUTLINED_FUNCTION_3_38();
  v3 = MEMORY[0x277D844C8];
  sub_275465A20(0, v4, v5, v6, MEMORY[0x277D844C8]);
  v8 = OUTLINED_FUNCTION_8_9(v7);
  v71 = v9;
  v72 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v12);
  v73 = v68 - v13;
  v14 = OUTLINED_FUNCTION_2_47();
  sub_275465A20(v14, v15, v16, v17, v3);
  v75 = v18;
  OUTLINED_FUNCTION_8_9(v18);
  v70 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v22);
  v24 = v68 - v23;
  v25 = OUTLINED_FUNCTION_1_53();
  sub_275465A20(v25, v26, v27, &_s8ScheduleO10CodingKeysON, v3);
  v29 = v28;
  OUTLINED_FUNCTION_8_9(v28);
  v74 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v33);
  v35 = v68 - v34;
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275465390();
  v37 = v80;
  sub_27546EAE0();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v68[1] = v24;
  v80 = a1;
  v38 = v76;
  v39 = sub_27546E8E0();
  result = sub_275433874(v39, 0);
  if (v42 == v43 >> 1)
  {
    v69 = result;
LABEL_9:
    v58 = sub_27546E7D0();
    swift_allocError();
    v60 = v59;
    sub_2754333D4();
    v62 = *(v61 + 48);
    *v60 = &type metadata for Transition.Schedule;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x277D84160], v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v74 + 8))(v35, v29);
LABEL_10:
    a1 = v80;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v68[0] = 0;
  if (v42 < (v43 >> 1))
  {
    v44 = *(v41 + v42);
    v45 = sub_27543386C(v42 + 1);
    v47 = v46;
    v49 = v48;
    swift_unknownObjectRelease();
    v69 = v45;
    if (v47 != v49 >> 1)
    {
      goto LABEL_9;
    }

    if (v44)
    {
      v78[0] = 1;
      sub_2754652E8();
      OUTLINED_FUNCTION_7_22();
      v50 = v68[0];
      sub_27546E850();
      v51 = v38;
      v52 = v74;
      if (!v50)
      {
        sub_275465AB8();
        OUTLINED_FUNCTION_9_13();
        v68[0] = 0;
        swift_unknownObjectRelease();
        v53 = OUTLINED_FUNCTION_6_26();
        v54(v53);
        v55 = OUTLINED_FUNCTION_5_27();
        v56(v55);
        memcpy(v77, v78, sizeof(v77));
        sub_27544715C(v77);
        v57 = v77;
LABEL_15:
        memcpy(v79, v57, sizeof(v79));
        memcpy(v51, v79, 0x178uLL);
        return __swift_destroy_boxed_opaque_existential_1(v80);
      }
    }

    else
    {
      v78[0] = 0;
      sub_27546533C();
      v63 = v68[0];
      OUTLINED_FUNCTION_7_22();
      sub_27546E850();
      v51 = v38;
      v52 = v74;
      if (!v63)
      {
        sub_275465B0C();
        OUTLINED_FUNCTION_9_13();
        v68[0] = 0;
        swift_unknownObjectRelease();
        v64 = OUTLINED_FUNCTION_6_26();
        v65(v64);
        v66 = OUTLINED_FUNCTION_5_27();
        v67(v66);
        memcpy(v78, v77, 0x99uLL);
        sub_27544717C(v78);
        v57 = v78;
        goto LABEL_15;
      }
    }

    (*(v52 + 8))(v35, v44);
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_275465A20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_275465AB8()
{
  result = qword_2809DCC20;
  if (!qword_2809DCC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCC20);
  }

  return result;
}

unint64_t sub_275465B0C()
{
  result = qword_2809DCC28;
  if (!qword_2809DCC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCC28);
  }

  return result;
}

uint64_t sub_275465B6C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 376))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 161);
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void sub_275465BB0(char *a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
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
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      a1[376] = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      a1[376] = 0;
      if (!a2)
      {
        return;
      }
    }

    else if (!a2)
    {
      return;
    }

    v4 = -a2 << 8;
    bzero(a1, 0xA0uLL);
    *(a1 + 20) = v4;

    bzero(a1 + 168, 0xD0uLL);
  }
}

uint64_t sub_275465CA0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 240);
  v3 = *(result + 320) | (a2 << 63);
  *(result + 160) = *(result + 160);
  *(result + 240) = v2;
  *(result + 320) = v3;
  return result;
}

_BYTE *_s8ScheduleO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x275465D9CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_275465DE8(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x275465E84);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_275465EC0()
{
  result = qword_2809DCC30;
  if (!qword_2809DCC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCC30);
  }

  return result;
}

unint64_t sub_275465F18()
{
  result = qword_2809DCC38;
  if (!qword_2809DCC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCC38);
  }

  return result;
}

unint64_t sub_275465F70()
{
  result = qword_2809DCC40;
  if (!qword_2809DCC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCC40);
  }

  return result;
}

unint64_t sub_275465FC8()
{
  result = qword_2809DCC48;
  if (!qword_2809DCC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCC48);
  }

  return result;
}

unint64_t sub_275466020()
{
  result = qword_2809DCC50;
  if (!qword_2809DCC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCC50);
  }

  return result;
}

unint64_t sub_275466078()
{
  result = qword_2809DCC58;
  if (!qword_2809DCC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCC58);
  }

  return result;
}

unint64_t sub_2754660D0()
{
  result = qword_2809DCC60;
  if (!qword_2809DCC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCC60);
  }

  return result;
}

unint64_t sub_275466128()
{
  result = qword_2809DCC68;
  if (!qword_2809DCC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCC68);
  }

  return result;
}

unint64_t sub_275466180()
{
  result = qword_2809DCC70;
  if (!qword_2809DCC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCC70);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_17()
{
  v2 = *(v0 + 48);

  return sub_27546E8F0();
}

uint64_t OUTLINED_FUNCTION_9_13()
{

  return sub_27546E8D0();
}

uint64_t sub_2754662D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000027546FA00 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027546FA20 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_27546E9A0();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2754663E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2754662D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275466408(uint64_t a1)
{
  v2 = sub_2754667D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275466444(uint64_t a1)
{
  v2 = sub_2754667D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.MusicalCompatibility.encode(to:)(void *a1)
{
  sub_275466878(0, &qword_2809DCC78, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_9(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v16 - v11;
  v13 = *v1;
  v16 = v1[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754667D0();
  sub_27546EB00();
  v18 = v13;
  v17 = 0;
  sub_275466824();
  OUTLINED_FUNCTION_2_48();
  if (!v2)
  {
    v18 = v16;
    v17 = 1;
    OUTLINED_FUNCTION_2_48();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t Transition.MusicalCompatibility.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_275466878(0, &qword_2809DCC90, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v18 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754667D0();
  sub_27546EAE0();
  if (!v2)
  {
    v19 = 0;
    sub_2754668DC();
    OUTLINED_FUNCTION_0_52();
    v15 = v20;
    v19 = 1;
    OUTLINED_FUNCTION_0_52();
    (*(v9 + 8))(v13, v6);
    v17 = v20;
    *a2 = v15;
    a2[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2754667D0()
{
  result = qword_2809DCC80;
  if (!qword_2809DCC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCC80);
  }

  return result;
}

unint64_t sub_275466824()
{
  result = qword_2809DCC88;
  if (!qword_2809DCC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCC88);
  }

  return result;
}

void sub_275466878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2754667D0();
    v7 = a3(a1, &_s20MusicalCompatibilityV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2754668DC()
{
  result = qword_2809DCC98;
  if (!qword_2809DCC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCC98);
  }

  return result;
}

_BYTE *_s20MusicalCompatibilityV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x275466A0CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_275466A48()
{
  result = qword_2809DCCA0;
  if (!qword_2809DCCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCCA0);
  }

  return result;
}

unint64_t sub_275466AA0()
{
  result = qword_2809DCCA8;
  if (!qword_2809DCCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCCA8);
  }

  return result;
}

unint64_t sub_275466AF8()
{
  result = qword_2809DCCB0;
  if (!qword_2809DCCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCCB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_52()
{

  return sub_27546E8D0();
}

uint64_t OUTLINED_FUNCTION_2_48()
{

  return sub_27546E950();
}

unint64_t sub_275466BC4()
{
  result = qword_2809DCCB8;
  if (!qword_2809DCCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCCB8);
  }

  return result;
}

unint64_t sub_275466C1C()
{
  result = qword_2809DCCC0;
  if (!qword_2809DCCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCCC0);
  }

  return result;
}

unint64_t sub_275466D2C()
{
  result = qword_2809DCCC8;
  if (!qword_2809DCCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCCC8);
  }

  return result;
}

unint64_t sub_275466D84()
{
  result = qword_2809DCCD0;
  if (!qword_2809DCCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCCD0);
  }

  return result;
}

uint64_t sub_275466DD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = Transition.MusicalCompatibility.SongIssues.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_275466E18@<X0>(uint64_t *a1@<X8>)
{
  result = Transition.MusicalCompatibility.SongIssues.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_275466E6C(uint64_t a1)
{
  v2 = sub_275467628();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275466EA8(uint64_t a1)
{
  v2 = sub_275467628();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.TimingAccuracy.encode(to:)(void *a1)
{
  sub_2754676D0(0, &qword_2809DCCD8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_9(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v16 - v11;
  v13 = *v1;
  v16 = v1[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275467628();
  sub_27546EB00();
  v18 = v13;
  v17 = 0;
  sub_27546767C();
  OUTLINED_FUNCTION_2_48();
  if (!v2)
  {
    v18 = v16;
    v17 = 1;
    OUTLINED_FUNCTION_2_48();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t Transition.TimingAccuracy.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_2754676D0(0, &qword_2809DCCF0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v18 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275467628();
  sub_27546EAE0();
  if (!v2)
  {
    v19 = 0;
    sub_275467734();
    OUTLINED_FUNCTION_0_52();
    v15 = v20;
    v19 = 1;
    OUTLINED_FUNCTION_0_52();
    (*(v9 + 8))(v13, v6);
    v17 = v20;
    *a2 = v15;
    a2[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Transition.TimingAccuracy.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_6_27();
  sub_27546E770();

  sub_2754672AC();
  OUTLINED_FUNCTION_10_15();

  OUTLINED_FUNCTION_4_29();
  return 0x6341676E696D6954;
}

uint64_t sub_2754672AC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 | *v0;
  if (v3)
  {
    if (v1 == v3 && v2 == v3)
    {
      OUTLINED_FUNCTION_3_39();
    }

    else
    {
      if (!v2)
      {
        v12 = 0;
        sub_27546E770();

        OUTLINED_FUNCTION_0_53();
        v6 = 1701736270;
        v7 = 0xE400000000000000;
        switch(v1)
        {
          case 0:
            break;
          case 1:
            v7 = 0x800000027546FAF0;
            v6 = 0xD000000000000018;
            break;
          case 2:
            v7 = 0x800000027546FAD0;
            v6 = 0xD000000000000019;
            break;
          case 3:
            v7 = 0x800000027546FAA0;
            v6 = 0xD000000000000024;
            break;
          default:
            sub_27546E770();

            OUTLINED_FUNCTION_5_28();
            sub_27546E980();
            OUTLINED_FUNCTION_10_15();

            OUTLINED_FUNCTION_4_29();
            v6 = 0;
            v7 = 0xE400000000000000;
            break;
        }

        MEMORY[0x277C776B0](v6, v7);
        goto LABEL_29;
      }

      if (v1)
      {
        v12 = 0;
        sub_27546E770();

        OUTLINED_FUNCTION_0_53();
        switch(v1)
        {
          case 1:
            OUTLINED_FUNCTION_2_49();
            v5 = 0xD000000000000018;
            break;
          case 2:
            OUTLINED_FUNCTION_2_49();
            v5 = 0xD000000000000019;
            break;
          case 3:
            OUTLINED_FUNCTION_2_49();
            v5 = 0xD000000000000024;
            break;
          default:
            OUTLINED_FUNCTION_6_27();
            sub_27546E770();

            OUTLINED_FUNCTION_5_28();
            sub_27546E980();
            OUTLINED_FUNCTION_10_15();

            OUTLINED_FUNCTION_4_29();
            v5 = v10;
            v1 = v11;
            break;
        }

        MEMORY[0x277C776B0](v5, v1);

        MEMORY[0x277C776B0](0xD000000000000013, 0x800000027546FA80);
      }

      else
      {
        v12 = 0;
        sub_27546E770();

        OUTLINED_FUNCTION_0_53();
      }
    }

    switch(v2)
    {
      case 1:
        OUTLINED_FUNCTION_2_49();
        v8 = 0xD000000000000018;
        break;
      case 2:
        OUTLINED_FUNCTION_2_49();
        v8 = 0xD000000000000019;
        break;
      case 3:
        OUTLINED_FUNCTION_2_49();
        v8 = 0xD000000000000024;
        break;
      default:
        OUTLINED_FUNCTION_6_27();
        sub_27546E770();

        OUTLINED_FUNCTION_5_28();
        sub_27546E980();
        OUTLINED_FUNCTION_10_15();

        OUTLINED_FUNCTION_4_29();
        v8 = v10;
        v1 = v11;
        break;
    }

    MEMORY[0x277C776B0](v8, v1);
LABEL_29:

    return v12;
  }

  OUTLINED_FUNCTION_3_39();
  MEMORY[0x277C776B0](1701736270, 0xE400000000000000);
  return v12;
}

unint64_t sub_275467628()
{
  result = qword_2809DCCE0;
  if (!qword_2809DCCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCCE0);
  }

  return result;
}

unint64_t sub_27546767C()
{
  result = qword_2809DCCE8;
  if (!qword_2809DCCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCCE8);
  }

  return result;
}

void sub_2754676D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_275467628();
    v7 = a3(a1, &_s14TimingAccuracyV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_275467734()
{
  result = qword_2809DCCF8;
  if (!qword_2809DCCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCCF8);
  }

  return result;
}

_BYTE *_s14TimingAccuracyV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x275467864);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2754678A0()
{
  result = qword_2809DCD00;
  if (!qword_2809DCD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCD00);
  }

  return result;
}

unint64_t sub_2754678F8()
{
  result = qword_2809DCD08;
  if (!qword_2809DCD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCD08);
  }

  return result;
}

unint64_t sub_275467950()
{
  result = qword_2809DCD10;
  if (!qword_2809DCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCD10);
  }

  return result;
}

void OUTLINED_FUNCTION_4_29()
{

  JUMPOUT(0x277C776B0);
}

void OUTLINED_FUNCTION_10_15()
{

  JUMPOUT(0x277C776B0);
}

uint64_t sub_275467A38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_275467A98(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_275467AC4(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_2_50(a1);
}

void sub_275467C14(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_275467A90(a1);
}

void sub_275467C40(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_275467B0C(a1);
}

uint64_t sub_275467C68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = Transition.TimingAccuracy.SongIssues.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_275467CA8@<X0>(uint64_t *a1@<X8>)
{
  result = Transition.TimingAccuracy.SongIssues.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t Transition.TimingAccuracy.SongIssues.description.getter()
{
  result = 1701736270;
  switch(*v0)
  {
    case 0:
      return result;
    case 1:
      OUTLINED_FUNCTION_0_54();
      result = v2 + 3;
      break;
    case 2:
      OUTLINED_FUNCTION_0_54();
      result = v3 + 4;
      break;
    case 3:
      OUTLINED_FUNCTION_0_54();
      result = v4 + 15;
      break;
    default:
      sub_27546E770();

      v5 = sub_27546E980();
      MEMORY[0x277C776B0](v5);

      MEMORY[0x277C776B0](41, 0xE100000000000000);
      result = 0xD000000000000015;
      break;
  }

  return result;
}

unint64_t sub_275467E14()
{
  result = qword_2809DCD18;
  if (!qword_2809DCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCD18);
  }

  return result;
}

unint64_t sub_275467E6C()
{
  result = qword_2809DCD20;
  if (!qword_2809DCD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCD20);
  }

  return result;
}

unint64_t sub_275467EC4()
{
  result = qword_2809DCD28;
  if (!qword_2809DCD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCD28);
  }

  return result;
}

unint64_t sub_275467F1C()
{
  result = qword_2809DCD30;
  if (!qword_2809DCD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCD30);
  }

  return result;
}

uint64_t sub_275467FE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001CLL && 0x800000027546FB30 == a2;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F72437472616D73 && a2 == 0xEE00656461467373;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5272694164616564 && a2 == 0xEE006C61766F6D65;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x800000027546FB50 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_27546E9A0();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_275468154(char a1)
{
  result = 0x6F72437472616D73;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x5272694164616564;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD00000000000001CLL;
      break;
  }

  return result;
}

uint64_t sub_27546820C(uint64_t a1)
{
  v2 = sub_27546899C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275468248(uint64_t a1)
{
  v2 = sub_27546899C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27546828C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275467FE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2754682B4(uint64_t a1)
{
  v2 = sub_2754689F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2754682F0(uint64_t a1)
{
  v2 = sub_2754689F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27546832C(uint64_t a1)
{
  v2 = sub_2754688F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275468368(uint64_t a1)
{
  v2 = sub_2754688F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2754683A4(uint64_t a1)
{
  v2 = sub_2754688A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2754683E0(uint64_t a1)
{
  v2 = sub_2754688A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27546841C(uint64_t a1)
{
  v2 = sub_275468948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275468458(uint64_t a1)
{
  v2 = sub_275468948();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.Algorithm.encode(to:)(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_6_28();
  v4 = MEMORY[0x277D84538];
  sub_2754690F8(0, v5, v6, v7, MEMORY[0x277D84538]);
  v9 = OUTLINED_FUNCTION_8_9(v8);
  v78 = v10;
  v79 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_9();
  v77 = v14;
  v15 = OUTLINED_FUNCTION_4_30();
  sub_2754690F8(v15, v16, v17, v18, v4);
  v20 = OUTLINED_FUNCTION_8_9(v19);
  v75 = v21;
  v76 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10_9();
  v74 = v25;
  v26 = OUTLINED_FUNCTION_3_40();
  sub_2754690F8(v26, v27, v28, v29, v4);
  v31 = OUTLINED_FUNCTION_8_9(v30);
  v72 = v32;
  v73 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10_9();
  v71 = v36;
  v37 = OUTLINED_FUNCTION_5_29();
  sub_2754690F8(v37, v38, v39, v40, v4);
  v42 = OUTLINED_FUNCTION_8_9(v41);
  v69 = v43;
  v70 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v46);
  v48 = &v69 - v47;
  v49 = OUTLINED_FUNCTION_1_55();
  sub_2754690F8(v49, v50, v51, v52, v4);
  v54 = v53;
  OUTLINED_FUNCTION_8_9(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v59);
  v61 = &v69 - v60;
  v62 = *v2;
  v63 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754689F0();
  sub_27546EB00();
  v64 = (v56 + 8);
  switch(v62)
  {
    case 1:
      v81 = 1;
      sub_275468948();
      v65 = v71;
      OUTLINED_FUNCTION_8_18();
      v67 = v72;
      v66 = v73;
      goto LABEL_6;
    case 2:
      v82 = 2;
      sub_2754688F4();
      v65 = v74;
      OUTLINED_FUNCTION_8_18();
      v67 = v75;
      v66 = v76;
      goto LABEL_6;
    case 3:
      v83 = 3;
      sub_2754688A0();
      v65 = v77;
      OUTLINED_FUNCTION_8_18();
      v67 = v78;
      v66 = v79;
LABEL_6:
      (*(v67 + 8))(v65, v66);
      break;
    default:
      v80 = 0;
      sub_27546899C();
      sub_27546E8F0();
      (*(v69 + 8))(v48, v70);
      break;
  }

  return (*v64)(v61, v54);
}

unint64_t sub_2754688A0()
{
  result = qword_2809DCD40;
  if (!qword_2809DCD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCD40);
  }

  return result;
}

unint64_t sub_2754688F4()
{
  result = qword_2809DCD50;
  if (!qword_2809DCD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCD50);
  }

  return result;
}

unint64_t sub_275468948()
{
  result = qword_2809DCD60;
  if (!qword_2809DCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCD60);
  }

  return result;
}

unint64_t sub_27546899C()
{
  result = qword_2809DCD70;
  if (!qword_2809DCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCD70);
  }

  return result;
}

unint64_t sub_2754689F0()
{
  result = qword_2809DCD80;
  if (!qword_2809DCD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCD80);
  }

  return result;
}

uint64_t Transition.Algorithm.hashValue.getter()
{
  v1 = *v0;
  sub_27546EA90();
  MEMORY[0x277C77BF0](v1);
  return sub_27546EAC0();
}

uint64_t Transition.Algorithm.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v107 = a2;
  OUTLINED_FUNCTION_6_28();
  v3 = MEMORY[0x277D844C8];
  sub_2754690F8(0, v4, v5, v6, MEMORY[0x277D844C8]);
  v106 = v7;
  OUTLINED_FUNCTION_8_9(v7);
  v104 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_9();
  v103 = v12;
  v13 = OUTLINED_FUNCTION_4_30();
  sub_2754690F8(v13, v14, v15, v16, v3);
  v18 = OUTLINED_FUNCTION_8_9(v17);
  v99 = v19;
  v100 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_9();
  v102 = v23;
  v24 = OUTLINED_FUNCTION_3_40();
  sub_2754690F8(v24, v25, v26, v27, v3);
  v29 = OUTLINED_FUNCTION_8_9(v28);
  v97 = v30;
  v98 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_9();
  v101 = v34;
  v35 = OUTLINED_FUNCTION_5_29();
  sub_2754690F8(v35, v36, v37, v38, v3);
  v40 = v39;
  OUTLINED_FUNCTION_8_9(v39);
  v96 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v44);
  v46 = &v91 - v45;
  v47 = OUTLINED_FUNCTION_1_55();
  sub_2754690F8(v47, v48, v49, v50, v3);
  v52 = v51;
  OUTLINED_FUNCTION_8_9(v51);
  v105 = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v56);
  v58 = &v91 - v57;
  v59 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754689F0();
  v60 = v108;
  sub_27546EAE0();
  if (v60)
  {
    goto LABEL_8;
  }

  v93 = v40;
  v94 = v46;
  v61 = v106;
  v62 = v107;
  v95 = a1;
  v108 = v58;
  v63 = sub_27546E8E0();
  sub_275433874(v63, 0);
  if (v65 == v66 >> 1)
  {
    goto LABEL_7;
  }

  if (v65 >= (v66 >> 1))
  {
    __break(1u);
    JUMPOUT(0x2754690DCLL);
  }

  v67 = *(v64 + v65);
  sub_27543386C(v65 + 1);
  v69 = v68;
  v71 = v70;
  swift_unknownObjectRelease();
  if (v69 != v71 >> 1)
  {
LABEL_7:
    v78 = sub_27546E7D0();
    swift_allocError();
    v80 = v79;
    sub_2754333D4();
    v82 = *(v81 + 48);
    *v80 = &type metadata for Transition.Algorithm;
    v83 = v108;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v78 - 8) + 104))(v80, *MEMORY[0x277D84160], v78);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v105 + 8))(v83, v52);
    a1 = v95;
LABEL_8:
    v84 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v84);
  }

  v92 = v67;
  v72 = v67;
  v73 = v62;
  v74 = v61;
  v76 = v103;
  v75 = v104;
  switch(v72)
  {
    case 1:
      v110 = 1;
      sub_275468948();
      v86 = v101;
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_10_16();
      swift_unknownObjectRelease();
      v88 = v97;
      v87 = v98;
      goto LABEL_13;
    case 2:
      v111 = 2;
      sub_2754688F4();
      v86 = v102;
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_10_16();
      swift_unknownObjectRelease();
      v88 = v99;
      v87 = v100;
LABEL_13:
      (*(v88 + 8))(v86, v87);
      goto LABEL_14;
    case 3:
      v112 = 3;
      sub_2754688A0();
      v89 = v108;
      v90 = v108;
      sub_27546E850();
      OUTLINED_FUNCTION_10_16();
      swift_unknownObjectRelease();
      (*(v75 + 8))(v76, v74);
      v90[1](v89, v52);
      goto LABEL_15;
    default:
      v109 = 0;
      sub_27546899C();
      v77 = v94;
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_10_16();
      swift_unknownObjectRelease();
      (*(v96 + 8))(v77, v93);
LABEL_14:
      (*(v69 + 8))(v74, v52);
LABEL_15:
      *v73 = v92;
      v84 = v95;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v84);
}

void sub_2754690F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t Transition.Algorithm.description.getter()
{
  result = 0xD000000000000020;
  switch(*v0)
  {
    case 1:
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_275469220()
{
  result = qword_2809DCDB0;
  if (!qword_2809DCDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCDB0);
  }

  return result;
}

_BYTE *sub_27546928C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x275469358);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2754693D4()
{
  result = qword_2809DCDB8;
  if (!qword_2809DCDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCDB8);
  }

  return result;
}

unint64_t sub_27546942C()
{
  result = qword_2809DCDC0;
  if (!qword_2809DCDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCDC0);
  }

  return result;
}

unint64_t sub_275469484()
{
  result = qword_2809DCDC8;
  if (!qword_2809DCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCDC8);
  }

  return result;
}

unint64_t sub_2754694DC()
{
  result = qword_2809DCDD0;
  if (!qword_2809DCDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCDD0);
  }

  return result;
}

unint64_t sub_275469534()
{
  result = qword_2809DCDD8;
  if (!qword_2809DCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCDD8);
  }

  return result;
}

unint64_t sub_27546958C()
{
  result = qword_2809DCDE0;
  if (!qword_2809DCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCDE0);
  }

  return result;
}

unint64_t sub_2754695E4()
{
  result = qword_2809DCDE8;
  if (!qword_2809DCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCDE8);
  }

  return result;
}

unint64_t sub_27546963C()
{
  result = qword_2809DCDF0;
  if (!qword_2809DCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCDF0);
  }

  return result;
}

unint64_t sub_275469694()
{
  result = qword_2809DCDF8;
  if (!qword_2809DCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCDF8);
  }

  return result;
}

unint64_t sub_2754696EC()
{
  result = qword_2809DCE00;
  if (!qword_2809DCE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCE00);
  }

  return result;
}

unint64_t sub_275469744()
{
  result = qword_2809DCE08;
  if (!qword_2809DCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCE08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_51()
{
  v2 = *(v0 - 88);

  return sub_27546E850();
}

uint64_t OUTLINED_FUNCTION_8_18()
{

  return sub_27546E8F0();
}

uint64_t sub_2754698C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x687469726F676C61 && a2 == 0xE90000000000006DLL;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C797473 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_27546E9A0();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_275469990(char a1)
{
  if (a1)
  {
    return 0x4449656C797473;
  }

  else
  {
    return 0x687469726F676C61;
  }
}

uint64_t sub_2754699D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2754698C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2754699FC(uint64_t a1)
{
  v2 = sub_275469C00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275469A38(uint64_t a1)
{
  v2 = sub_275469C00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.Strategy.encode(to:)(void *a1)
{
  sub_275469E68(0, &qword_2809DCE10, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_9(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v16 - v11;
  v13 = *v1;
  v16[1] = *(v1 + 1);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275469C00();
  sub_27546EB00();
  v19 = v13;
  v18 = 0;
  sub_275469C54();
  sub_27546E950();
  if (!v2)
  {
    v17 = 1;
    sub_27546E940();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_275469C00()
{
  result = qword_2809DCE18;
  if (!qword_2809DCE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCE18);
  }

  return result;
}

unint64_t sub_275469C54()
{
  result = qword_2809DCE20;
  if (!qword_2809DCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCE20);
  }

  return result;
}

uint64_t Transition.Strategy.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_275469E68(0, &qword_2809DCE28, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v18 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275469C00();
  sub_27546EAE0();
  if (!v2)
  {
    v20 = 0;
    sub_275469ECC();
    sub_27546E8D0();
    v15 = v21;
    v19 = 1;
    v17 = sub_27546E8C0();
    (*(v9 + 8))(v13, v6);
    *a2 = v15;
    *(a2 + 8) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_275469E68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_275469C00();
    v7 = a3(a1, &_s8StrategyV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_275469ECC()
{
  result = qword_2809DCE30;
  if (!qword_2809DCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCE30);
  }

  return result;
}

uint64_t _s8StrategyVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && a1[16])
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 4;
      v2 = v3 - 4;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s8StrategyVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

_BYTE *_s8StrategyV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27546A0ACLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27546A0E8()
{
  result = qword_2809DCE38;
  if (!qword_2809DCE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCE38);
  }

  return result;
}

unint64_t sub_27546A140()
{
  result = qword_2809DCE40;
  if (!qword_2809DCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCE40);
  }

  return result;
}

unint64_t sub_27546A198()
{
  result = qword_2809DCE48;
  if (!qword_2809DCE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCE48);
  }

  return result;
}

void Transition.Summary.strategy.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t sub_27546A220(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7967657461727473 && a2 == 0xE800000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x800000027546F8C0 == a2;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x800000027546F900 == a2;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x800000027546FBB0 == a2;
        if (v8 || (sub_27546E9A0() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6341676E696D6974 && a2 == 0xEE00796361727563)
        {

          return 4;
        }

        else
        {
          v10 = sub_27546E9A0();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_27546A3D4(char a1)
{
  result = 0x7967657461727473;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6341676E696D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27546A4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27546A220(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27546A4C8(uint64_t a1)
{
  v2 = sub_27546A7E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27546A504(uint64_t a1)
{
  v2 = sub_27546A7E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.Summary.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_2_52();
  sub_27546AC30(0, v4, v5, v6, MEMORY[0x277D84538]);
  v8 = OUTLINED_FUNCTION_8_16(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v30 - v13;
  v15 = *v2;
  v16 = *(v2 + 1);
  v17 = *(v2 + 2);
  v18 = *(v2 + 3);
  v19 = *(v2 + 4);
  v20 = *(v2 + 5);
  v21 = *(v2 + 6);
  v33 = *(v2 + 7);
  v34 = v21;
  v22 = *(v2 + 9);
  v31 = *(v2 + 8);
  v32 = v22;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27546A7E4();
  sub_27546EB00();
  LOBYTE(v36) = v15;
  v37 = v16;
  v38 = 0;
  sub_27546A838();
  OUTLINED_FUNCTION_1_56();
  v24 = v35;
  sub_27546E950();
  if (!v24)
  {
    v25 = v34;
    v36 = v17;
    v37 = v18;
    v38 = 1;
    OUTLINED_FUNCTION_0_55();
    sub_27546AC30(0, v26, v27, v28, MEMORY[0x277D83638]);
    sub_27546ACEC(&qword_2809DB6E0, sub_27542D5D8);
    OUTLINED_FUNCTION_1_56();
    OUTLINED_FUNCTION_11_16();
    v36 = v19;
    v37 = v20;
    v38 = 2;
    OUTLINED_FUNCTION_1_56();
    OUTLINED_FUNCTION_11_16();
    v36 = v25;
    v37 = v33;
    v38 = 3;
    sub_27546A88C();
    OUTLINED_FUNCTION_1_56();
    sub_27546E950();
    v36 = v31;
    v37 = v32;
    v38 = 4;
    sub_27546A8E0();
    OUTLINED_FUNCTION_1_56();
    sub_27546E950();
  }

  return (*(v10 + 8))(v14, v1);
}

unint64_t sub_27546A7E4()
{
  result = qword_2809DCE58;
  if (!qword_2809DCE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCE58);
  }

  return result;
}

unint64_t sub_27546A838()
{
  result = qword_2809DCE60;
  if (!qword_2809DCE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCE60);
  }

  return result;
}

unint64_t sub_27546A88C()
{
  result = qword_2809DCE68;
  if (!qword_2809DCE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCE68);
  }

  return result;
}

unint64_t sub_27546A8E0()
{
  result = qword_2809DCE70;
  if (!qword_2809DCE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCE70);
  }

  return result;
}

uint64_t Transition.Summary.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v32 = a2;
  OUTLINED_FUNCTION_2_52();
  sub_27546AC30(0, v5, v6, &_s7SummaryV10CodingKeysON, MEMORY[0x277D844C8]);
  v8 = OUTLINED_FUNCTION_8_16(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27546A7E4();
  sub_27546EAE0();
  if (v3)
  {
    v27 = a1;
  }

  else
  {
    v31 = a1;
    v16 = v10;
    v35 = 0;
    sub_27546AC98();
    v17 = v2;
    sub_27546E8D0();
    v18 = v33;
    v19 = *(&v33 + 1);
    OUTLINED_FUNCTION_0_55();
    sub_27546AC30(0, v20, v21, v22, MEMORY[0x277D83638]);
    v35 = 1;
    sub_27546ACEC(&qword_2809DB708, sub_27542D478);
    OUTLINED_FUNCTION_4_31();
    v34 = v18;
    v30 = v19;
    v23 = v33;
    v35 = 2;
    OUTLINED_FUNCTION_4_31();
    v25 = v33;
    v35 = 3;
    sub_27546AD80();
    OUTLINED_FUNCTION_7_23();
    v26 = v33;
    v35 = 4;
    sub_27546ADD4();
    OUTLINED_FUNCTION_7_23();
    (*(v16 + 8))(v14, v17);
    v27 = v31;
    v28 = v32;
    *v32 = v34;
    *(v28 + 1) = v30;
    *(v28 + 1) = v23;
    *(v28 + 2) = v25;
    *(v28 + 3) = v26;
    *(v28 + 4) = v33;
  }

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

void sub_27546AC30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_27546AC98()
{
  result = qword_2809DCE80;
  if (!qword_2809DCE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCE80);
  }

  return result;
}

uint64_t sub_27546ACEC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_0_55();
    sub_27546AC30(255, v5, v6, v7, MEMORY[0x277D83638]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27546AD80()
{
  result = qword_2809DCE88;
  if (!qword_2809DCE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCE88);
  }

  return result;
}

unint64_t sub_27546ADD4()
{
  result = qword_2809DCE90;
  if (!qword_2809DCE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCE90);
  }

  return result;
}

uint64_t Transition.Summary.description.getter()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = 0xD000000000000020;
  v7 = "Smart Cross-Fade";
  v65 = *(v0 + 72);
  v68 = *(v0 + 64);
  switch(*v0)
  {
    case 1:
      v8 = "Smart Cross-Fade";
      goto LABEL_4;
    case 2:
      v8 = "Dead-Air Removal";
LABEL_4:
      v7 = (v8 - 32);
      v6 = 0xD000000000000010;
      break;
    case 3:
      v7 = "utgoing";
      v6 = 0xD000000000000013;
      break;
    default:
      break;
  }

  MEMORY[0x277C776B0](v6, v7 | 0x8000000000000000);

  v9 = sub_27546E980();
  MEMORY[0x277C776B0](v9);

  sub_27546E770();

  sub_27546B228();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D839F8];
  *(v10 + 16) = xmmword_275474500;
  v12 = MEMORY[0x277D83A80];
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  *(v10 + 32) = v3;
  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_10_17();
  v13 = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_3_41(v13, v14, v15, v16, v17, v18, v19, v20, v53, 0x444920656C797453, 0xEB00000000203A6DLL, 0x687469726F676C41, v65, v68, v21);
  *(v22 + 32) = v2;
  v23 = OUTLINED_FUNCTION_6_29();
  MEMORY[0x277C776B0](v23);

  MEMORY[0x277C776B0](v1);

  sub_27546E770();

  v24 = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_3_41(v24, v25, v26, v27, v28, v29, v30, v31, v54, v56, v59, v62, v66, v69, v32);
  *(v33 + 32) = v5;
  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_10_17();
  v34 = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_3_41(v34, v35, v36, v37, v38, v39, v40, v41, v55, v57, v60, v63, v67, v70, v42);
  *(v43 + 32) = v4;
  v44 = OUTLINED_FUNCTION_6_29();
  MEMORY[0x277C776B0](v44);

  MEMORY[0x277C776B0](v1);

  v45 = sub_2754672AC();
  v47 = v46;
  sub_27546B2DC(0, &qword_2809DBC88, MEMORY[0x277D84560]);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_2754802F0;
  *(v48 + 32) = v64;
  *(v48 + 40) = v61;
  *(v48 + 48) = v58;
  *(v48 + 56) = 0xEA0000000000203ALL;
  *(v48 + 64) = 0xD000000000000011;
  *(v48 + 72) = 0x800000027546FB70;
  *(v48 + 80) = 0xD000000000000011;
  *(v48 + 88) = 0x800000027546FB90;
  *(v48 + 96) = v45;
  *(v48 + 104) = v47;
  sub_27546B2DC(0, &qword_2809DB0E8, MEMORY[0x277D83940]);
  sub_275422184();
  v49 = sub_27546E4C0();
  v51 = v50;

  MEMORY[0x277C776B0](v49, v51);

  MEMORY[0x277C776B0](41, 0xE100000000000000);
  return 0x697469736E617254;
}

void sub_27546B228()
{
  if (!qword_2809DCE98)
  {
    sub_27546B280();
    v0 = sub_27546E990();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DCE98);
    }
  }
}

unint64_t sub_27546B280()
{
  result = qword_2809DCEA0;
  if (!qword_2809DCEA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2809DCEA0);
  }

  return result;
}

void sub_27546B2DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_27546B334(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && a1[80])
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 4;
      v2 = v3 - 4;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27546B370(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

_BYTE *_s7SummaryV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27546B4A4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27546B4E0()
{
  result = qword_2809DCEA8;
  if (!qword_2809DCEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCEA8);
  }

  return result;
}

unint64_t sub_27546B538()
{
  result = qword_2809DCEB0;
  if (!qword_2809DCEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCEB0);
  }

  return result;
}

unint64_t sub_27546B590()
{
  result = qword_2809DCEB8;
  if (!qword_2809DCEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCEB8);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_3_41(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15)
{
  result = a15;
  a1[1] = a15;
  a1[3].n128_u64[1] = v16;
  a1[4].n128_u64[0] = v15;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_31()
{

  return sub_27546E8D0();
}

uint64_t OUTLINED_FUNCTION_6_29()
{

  return MEMORY[0x28211E920](1714630181, 0xE400000000000000);
}

uint64_t OUTLINED_FUNCTION_7_23()
{

  return sub_27546E8D0();
}

uint64_t OUTLINED_FUNCTION_9_14()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_10_17()
{

  JUMPOUT(0x277C776B0);
}

uint64_t OUTLINED_FUNCTION_11_16()
{

  return sub_27546E950();
}

uint64_t Transition.schedule.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 80), 0x178uLL);
  memcpy(a1, (v1 + 80), 0x178uLL);
  return sub_27546B770(__dst, v4);
}

uint64_t Transition.audioGraph.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 464);
  *a1 = *(v1 + 456);
  a1[1] = v2;
}

uint64_t sub_27546B7D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6172476F69647561 && a2 == 0xEA00000000006870)
    {

      return 2;
    }

    else
    {
      v8 = sub_27546E9A0();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_27546B8F0(char a1)
{
  if (!a1)
  {
    return 0x7972616D6D7573;
  }

  if (a1 == 1)
  {
    return 0x656C756465686373;
  }

  return 0x6172476F69647561;
}

uint64_t sub_27546B954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27546B7D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27546B97C(uint64_t a1)
{
  v2 = sub_27546BC48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27546B9B8(uint64_t a1)
{
  v2 = sub_27546BC48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.encode(to:)(void *a1)
{
  v3 = v1;
  sub_27546C098(0, &qword_2809DCEC0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v19 - v12;
  memcpy(v25, v3 + 10, 0x178uLL);
  v14 = v3[57];
  v19 = v3[58];
  v20 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27546BC48();
  sub_27546EB00();
  memcpy(v24, v3, 0x50uLL);
  v23[0] = 0;
  sub_27546BC9C();
  sub_27546E950();
  if (!v2)
  {
    v16 = v19;
    v17 = v20;
    memcpy(v24, v25, sizeof(v24));
    v25[399] = 1;
    sub_27546B770(v25, v23);
    sub_27546BCF0();
    sub_27546E950();
    memcpy(v23, v24, sizeof(v23));
    sub_27546BD44(v23);
    v21 = v17;
    v22 = v16;
    v25[398] = 2;
    sub_27546BD98();

    sub_27546E950();
  }

  return (*(v9 + 8))(v13, v6);
}

unint64_t sub_27546BC48()
{
  result = qword_2809DCEC8;
  if (!qword_2809DCEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCEC8);
  }

  return result;
}

unint64_t sub_27546BC9C()
{
  result = qword_2809DCED0;
  if (!qword_2809DCED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCED0);
  }

  return result;
}

unint64_t sub_27546BCF0()
{
  result = qword_2809DCED8;
  if (!qword_2809DCED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCED8);
  }

  return result;
}

unint64_t sub_27546BD98()
{
  result = qword_2809DCEE0;
  if (!qword_2809DCEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCEE0);
  }

  return result;
}

uint64_t Transition.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_27546C098(0, &qword_2809DCEE8, MEMORY[0x277D844C8]);
  v20 = v5;
  v6 = OUTLINED_FUNCTION_8_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21[-1] - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27546BC48();
  sub_27546EAE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v8;
  v15 = a2;
  v29[479] = 0;
  sub_27546C0FC();
  v16 = v20;
  OUTLINED_FUNCTION_0_56();
  memcpy(v29, v28, 0x50uLL);
  v29[478] = 1;
  sub_27546C150();
  OUTLINED_FUNCTION_0_56();
  memcpy(&v29[80], v27, 0x178uLL);
  v29[477] = 2;
  sub_27546C1A4();
  OUTLINED_FUNCTION_0_56();
  (*(v14 + 8))(v12, v16);
  v17 = v25;
  v18 = v26;
  memcpy(v21, v29, 0x1C8uLL);
  v21[57] = v25;
  v21[58] = v26;
  memcpy(v15, v21, 0x1D8uLL);
  sub_27546C1F8(v21, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  memcpy(v22, v29, sizeof(v22));
  v23 = v17;
  v24 = v18;
  return sub_27546C230(v22);
}

void sub_27546C098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27546BC48();
    v7 = a3(a1, &type metadata for Transition.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_27546C0FC()
{
  result = qword_2809DCEF0;
  if (!qword_2809DCEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCEF0);
  }

  return result;
}

unint64_t sub_27546C150()
{
  result = qword_2809DCEF8;
  if (!qword_2809DCEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCEF8);
  }

  return result;
}

unint64_t sub_27546C1A4()
{
  result = qword_2809DCF00;
  if (!qword_2809DCF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCF00);
  }

  return result;
}

uint64_t sub_27546C298(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 472))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 241);
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void sub_27546C2DC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
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
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 472) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 472) = 0;
      if (!a2)
      {
        return;
      }
    }

    else if (!a2)
    {
      return;
    }

    v4 = -a2 << 8;
    bzero((a1 + 80), 0xA0uLL);
    *(a1 + 240) = v4;

    bzero((a1 + 248), 0xD0uLL);
  }
}

_BYTE *storeEnumTagSinglePayload for Transition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27546C4C0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27546C4FC()
{
  result = qword_2809DCF08;
  if (!qword_2809DCF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCF08);
  }

  return result;
}

unint64_t sub_27546C554()
{
  result = qword_2809DCF10;
  if (!qword_2809DCF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCF10);
  }

  return result;
}

unint64_t sub_27546C5AC()
{
  result = qword_2809DCF18;
  if (!qword_2809DCF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCF18);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_56()
{

  return sub_27546E8D0();
}

uint64_t sub_27546C648(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B6361626C6C6166 && a2 == 0xE800000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64614673736F7263 && a2 == 0xE900000000000065;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x800000027546FBD0 == a2;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000021 && 0x800000027546FBF0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_27546E9A0();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_27546C7B4(char a1)
{
  result = 0x6B6361626C6C6166;
  switch(a1)
  {
    case 1:
      result = 0x64614673736F7263;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27546C860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27546C648(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27546C888(uint64_t a1)
{
  v2 = sub_27546D03C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27546C8C4(uint64_t a1)
{
  v2 = sub_27546D03C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27546C900(uint64_t a1)
{
  v2 = sub_27546CF94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27546C93C(uint64_t a1)
{
  v2 = sub_27546CF94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27546C978(uint64_t a1)
{
  v2 = sub_27546CF40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27546C9B4(uint64_t a1)
{
  v2 = sub_27546CF40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27546C9F0(uint64_t a1)
{
  v2 = sub_27546CFE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27546CA2C(uint64_t a1)
{
  v2 = sub_27546CFE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27546CA68(uint64_t a1)
{
  v2 = sub_27546CEEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27546CAA4(uint64_t a1)
{
  v2 = sub_27546CEEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.Complexity.encode(to:)(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_6_30();
  v4 = MEMORY[0x277D84538];
  sub_27546D744(0, v5, v6, v7, MEMORY[0x277D84538]);
  v9 = OUTLINED_FUNCTION_8_9(v8);
  v78 = v10;
  v79 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_9();
  v77 = v14;
  v15 = OUTLINED_FUNCTION_4_32();
  sub_27546D744(v15, v16, v17, v18, v4);
  v20 = OUTLINED_FUNCTION_8_9(v19);
  v75 = v21;
  v76 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10_9();
  v74 = v25;
  v26 = OUTLINED_FUNCTION_3_42();
  sub_27546D744(v26, v27, v28, v29, v4);
  v31 = OUTLINED_FUNCTION_8_9(v30);
  v72 = v32;
  v73 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10_9();
  v71 = v36;
  v37 = OUTLINED_FUNCTION_5_30();
  sub_27546D744(v37, v38, v39, v40, v4);
  v42 = OUTLINED_FUNCTION_8_9(v41);
  v69 = v43;
  v70 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v46);
  v48 = &v69 - v47;
  v49 = OUTLINED_FUNCTION_1_57();
  sub_27546D744(v49, v50, v51, v52, v4);
  v54 = v53;
  OUTLINED_FUNCTION_8_9(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v59);
  v61 = &v69 - v60;
  v62 = *v2;
  v63 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27546D03C();
  sub_27546EB00();
  v64 = (v56 + 8);
  switch(v62)
  {
    case 1:
      v81 = 1;
      sub_27546CF94();
      v65 = v71;
      OUTLINED_FUNCTION_8_18();
      v67 = v72;
      v66 = v73;
      goto LABEL_6;
    case 2:
      v82 = 2;
      sub_27546CF40();
      v65 = v74;
      OUTLINED_FUNCTION_8_18();
      v67 = v75;
      v66 = v76;
      goto LABEL_6;
    case 3:
      v83 = 3;
      sub_27546CEEC();
      v65 = v77;
      OUTLINED_FUNCTION_8_18();
      v67 = v78;
      v66 = v79;
LABEL_6:
      (*(v67 + 8))(v65, v66);
      break;
    default:
      v80 = 0;
      sub_27546CFE8();
      sub_27546E8F0();
      (*(v69 + 8))(v48, v70);
      break;
  }

  return (*v64)(v61, v54);
}

unint64_t sub_27546CEEC()
{
  result = qword_2809DCF28;
  if (!qword_2809DCF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCF28);
  }

  return result;
}

unint64_t sub_27546CF40()
{
  result = qword_2809DCF38;
  if (!qword_2809DCF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCF38);
  }

  return result;
}

unint64_t sub_27546CF94()
{
  result = qword_2809DCF48;
  if (!qword_2809DCF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCF48);
  }

  return result;
}

unint64_t sub_27546CFE8()
{
  result = qword_2809DCF58;
  if (!qword_2809DCF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCF58);
  }

  return result;
}

unint64_t sub_27546D03C()
{
  result = qword_2809DCF68;
  if (!qword_2809DCF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCF68);
  }

  return result;
}

uint64_t Transition.Complexity.hashValue.getter()
{
  v1 = *v0;
  sub_27546EA90();
  MEMORY[0x277C77BF0](v1);
  return sub_27546EAC0();
}

uint64_t Transition.Complexity.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v107 = a2;
  OUTLINED_FUNCTION_6_30();
  v3 = MEMORY[0x277D844C8];
  sub_27546D744(0, v4, v5, v6, MEMORY[0x277D844C8]);
  v106 = v7;
  OUTLINED_FUNCTION_8_9(v7);
  v104 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_9();
  v103 = v12;
  v13 = OUTLINED_FUNCTION_4_32();
  sub_27546D744(v13, v14, v15, v16, v3);
  v18 = OUTLINED_FUNCTION_8_9(v17);
  v99 = v19;
  v100 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_9();
  v102 = v23;
  v24 = OUTLINED_FUNCTION_3_42();
  sub_27546D744(v24, v25, v26, v27, v3);
  v29 = OUTLINED_FUNCTION_8_9(v28);
  v97 = v30;
  v98 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_9();
  v101 = v34;
  v35 = OUTLINED_FUNCTION_5_30();
  sub_27546D744(v35, v36, v37, v38, v3);
  v40 = v39;
  OUTLINED_FUNCTION_8_9(v39);
  v96 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v44);
  v46 = &v91 - v45;
  v47 = OUTLINED_FUNCTION_1_57();
  sub_27546D744(v47, v48, v49, v50, v3);
  v52 = v51;
  OUTLINED_FUNCTION_8_9(v51);
  v105 = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v56);
  v58 = &v91 - v57;
  v59 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27546D03C();
  v60 = v108;
  sub_27546EAE0();
  if (v60)
  {
    goto LABEL_8;
  }

  v93 = v40;
  v94 = v46;
  v61 = v106;
  v62 = v107;
  v95 = a1;
  v108 = v58;
  v63 = sub_27546E8E0();
  sub_275433874(v63, 0);
  if (v65 == v66 >> 1)
  {
    goto LABEL_7;
  }

  if (v65 >= (v66 >> 1))
  {
    __break(1u);
    JUMPOUT(0x27546D728);
  }

  v67 = *(v64 + v65);
  sub_27543386C(v65 + 1);
  v69 = v68;
  v71 = v70;
  swift_unknownObjectRelease();
  if (v69 != v71 >> 1)
  {
LABEL_7:
    v78 = sub_27546E7D0();
    swift_allocError();
    v80 = v79;
    sub_2754333D4();
    v82 = *(v81 + 48);
    *v80 = &type metadata for Transition.Complexity;
    v83 = v108;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v78 - 8) + 104))(v80, *MEMORY[0x277D84160], v78);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v105 + 8))(v83, v52);
    a1 = v95;
LABEL_8:
    v84 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v84);
  }

  v92 = v67;
  v72 = v67;
  v73 = v62;
  v74 = v61;
  v76 = v103;
  v75 = v104;
  switch(v72)
  {
    case 1:
      v110 = 1;
      sub_27546CF94();
      v86 = v101;
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_10_16();
      swift_unknownObjectRelease();
      v88 = v97;
      v87 = v98;
      goto LABEL_13;
    case 2:
      v111 = 2;
      sub_27546CF40();
      v86 = v102;
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_10_16();
      swift_unknownObjectRelease();
      v88 = v99;
      v87 = v100;
LABEL_13:
      (*(v88 + 8))(v86, v87);
      goto LABEL_14;
    case 3:
      v112 = 3;
      sub_27546CEEC();
      v89 = v108;
      v90 = v108;
      sub_27546E850();
      OUTLINED_FUNCTION_10_16();
      swift_unknownObjectRelease();
      (*(v75 + 8))(v76, v74);
      v90[1](v89, v52);
      goto LABEL_15;
    default:
      v109 = 0;
      sub_27546CFE8();
      v77 = v94;
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_10_16();
      swift_unknownObjectRelease();
      (*(v96 + 8))(v77, v93);
LABEL_14:
      (*(v69 + 8))(v74, v52);
LABEL_15:
      *v73 = v92;
      v84 = v95;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v84);
}

void sub_27546D744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_27546D7E4()
{
  result = qword_2809DCF98;
  if (!qword_2809DCF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCF98);
  }

  return result;
}

_BYTE *sub_27546D84C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27546D918);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27546D994()
{
  result = qword_2809DCFA0;
  if (!qword_2809DCFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCFA0);
  }

  return result;
}

unint64_t sub_27546D9EC()
{
  result = qword_2809DCFA8;
  if (!qword_2809DCFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCFA8);
  }

  return result;
}

unint64_t sub_27546DA44()
{
  result = qword_2809DCFB0;
  if (!qword_2809DCFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCFB0);
  }

  return result;
}

unint64_t sub_27546DA9C()
{
  result = qword_2809DCFB8;
  if (!qword_2809DCFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCFB8);
  }

  return result;
}

unint64_t sub_27546DAF4()
{
  result = qword_2809DCFC0;
  if (!qword_2809DCFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCFC0);
  }

  return result;
}

unint64_t sub_27546DB4C()
{
  result = qword_2809DCFC8;
  if (!qword_2809DCFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCFC8);
  }

  return result;
}

unint64_t sub_27546DBA4()
{
  result = qword_2809DCFD0;
  if (!qword_2809DCFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCFD0);
  }

  return result;
}

unint64_t sub_27546DBFC()
{
  result = qword_2809DCFD8;
  if (!qword_2809DCFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCFD8);
  }

  return result;
}

unint64_t sub_27546DC54()
{
  result = qword_2809DCFE0;
  if (!qword_2809DCFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCFE0);
  }

  return result;
}

unint64_t sub_27546DCAC()
{
  result = qword_2809DCFE8;
  if (!qword_2809DCFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCFE8);
  }

  return result;
}

unint64_t sub_27546DD04()
{
  result = qword_2809DCFF0;
  if (!qword_2809DCFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCFF0);
  }

  return result;
}

uint64_t SmartTransitionsError.hashValue.getter()
{
  v1 = *v0;
  sub_27546EA90();
  MEMORY[0x277C77BF0](v1);
  return sub_27546EAC0();
}

unint64_t sub_27546DE84()
{
  result = qword_2809DCFF8;
  if (!qword_2809DCFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCFF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SmartTransitionsError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SmartTransitionsError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27546E03CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

id sub_27546E0A8()
{
  type metadata accessor for SonicKit_MusicKit_Packages_Locator();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2809F3C28 = result;
  return result;
}