uint64_t sub_22FA6C198(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_22FCC9514();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_22FCC9844();
      sub_22FCC8B14();
      result = sub_22FCC9894();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_22FA6C460(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_22FCC9514();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 40 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        sub_22FA2D328(v27, v38);
      }

      sub_22FCC9844();
      sub_22FCC8B14();
      result = sub_22FCC9894();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 40 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

uint64_t sub_22FA6C730(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7338);
  v33 = a2;
  result = sub_22FCC9514();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_22FA32554(v24, v34);
      }

      else
      {
        sub_22FA2F7D8(v24, v34);
      }

      sub_22FCC9844();
      sub_22FCC8B14();
      result = sub_22FCC9894();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_22FA32554(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_22FA6C9E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72C0);
  v37 = a2;
  result = sub_22FCC9514();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_22FCC9844();
      sub_22FCC8B14();
      result = sub_22FCC9894();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22FA6CCA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7610);
  v46 = a2;
  result = sub_22FCC9514();
  v8 = result;
  if (*(v5 + 16))
  {
    v45 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 200 * v22;
      if (v46)
      {
        v53 = *(v26 + 8);
        v54 = *(v26 + 24);
        v55 = *v26;
        v56 = *(v26 + 32);
        v57 = *(v26 + 16);
        v58 = *(v26 + 40);
        v59 = *(v26 + 48);
        v60 = *(v26 + 49);
        v61 = *(v26 + 56);
        v62 = *(v26 + 64);
        v27 = *(v26 + 72);
        v63 = *(v26 + 80);
        v64 = *(v26 + 96);
        v47 = *(v26 + 88);
        v48 = *(v26 + 104);
        v65 = *(v26 + 108);
        v66 = *(v26 + 116);
        v49 = *(v26 + 112);
        v50 = *(v26 + 120);
        v68 = *(v26 + 128);
        v51 = *(v26 + 136);
        v7.i32[0] = *(v26 + 137);
        v67 = vmovl_u8(v7).u64[0];
        v69 = *(v26 + 144);
        v52 = *(v26 + 160);
        v70 = *(v26 + 168);
        v71 = *(v26 + 184);
      }

      else
      {
        v73 = *v26;
        v28 = *(v26 + 64);
        v30 = *(v26 + 16);
        v29 = *(v26 + 32);
        v76 = *(v26 + 48);
        v77 = v28;
        v74 = v30;
        v75 = v29;
        v31 = *(v26 + 128);
        v33 = *(v26 + 80);
        v32 = *(v26 + 96);
        v80 = *(v26 + 112);
        v81 = v31;
        v78 = v33;
        v79 = v32;
        v35 = *(v26 + 160);
        v34 = *(v26 + 176);
        v36 = *(v26 + 144);
        *&v83[32] = *(v26 + 192);
        *v83 = v35;
        *&v83[16] = v34;
        v82 = v36;
        v70 = *&v83[8];
        v71 = *&v83[24];
        v52 = v35;
        v69 = v36;
        v67 = vmovl_u8(__PAIR64__(HIDWORD(v35), *(&v81 + 9))).u64[0];
        v68 = v81;
        v50 = BYTE8(v80);
        v51 = BYTE8(v81);
        v65 = HIDWORD(v79);
        v66 = DWORD1(v80);
        v48 = BYTE8(v79);
        v49 = v80;
        v63 = v33;
        v64 = v79;
        v47 = BYTE8(v33);
        v27 = BYTE8(v77);
        v61 = *(&v76 + 1);
        v62 = v77;
        v59 = v76;
        v60 = BYTE1(v76);
        v56 = v75;
        v57 = v74;
        v58 = *(&v75 + 1);
        v54 = *(&v74 + 1);
        v53 = *(&v73 + 1);
        v55 = v73;

        sub_22FA72B60(&v73, v72);
      }

      sub_22FCC9844();
      sub_22FCC8B14();
      result = sub_22FCC9894();
      v37 = -1 << *(v8 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v15 + 8 * (v38 >> 6))) == 0)
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
          v43 = *(v15 + 8 * v39);
          if (v43 != -1)
          {
            v16 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v38) & ~*(v15 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v73) = v27;
      v72[0] = v47;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 200 * v16;
      *v18 = v55;
      *(v18 + 8) = v53;
      *(v18 + 16) = v57;
      *(v18 + 24) = v54;
      *(v18 + 32) = v56;
      *(v18 + 40) = v58;
      *(v18 + 48) = v59;
      *(v18 + 49) = v60;
      *(v18 + 56) = v61;
      *(v18 + 64) = v62;
      *(v18 + 72) = v73;
      *(v18 + 80) = v63;
      *(v18 + 88) = v72[0];
      *(v18 + 96) = v64;
      *(v18 + 104) = v48;
      *(v18 + 108) = v65;
      *(v18 + 112) = v49;
      *(v18 + 116) = v66;
      *(v18 + 120) = v50;
      *(v18 + 128) = v68;
      *(v18 + 136) = v51;
      *(v18 + 137) = vuzp1_s8(v67, v67).u32[0];
      *(v18 + 144) = v69;
      *(v18 + 160) = v52;
      v7.i32[1] = DWORD1(v70);
      *(v18 + 184) = v71;
      *(v18 + 168) = v70;
      ++*(v8 + 16);
      v5 = v45;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v2;
    if (v44 >= 64)
    {
      bzero(v10, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v8;
  return result;
}

uint64_t sub_22FA6D1E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72D8);
  result = sub_22FCC9514();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_22FA32554(v21, v31);
      }

      else
      {
        sub_22FA2F7D8(v21, v31);
      }

      result = sub_22FCC9834();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_22FA32554(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_22FA6D458(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_22FCC7234();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7568);
  v40 = a2;
  result = sub_22FCC9514();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_22FA729EC(&qword_27DAD7570, MEMORY[0x277D3C0C8]);
      result = sub_22FCC8A04();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_22FA6D82C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_22FCC9514();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_22FCC9844();
      sub_22FCC8B14();
      result = sub_22FCC9894();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_22FA6DB08(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v48 = a6;
  v8 = v6;
  v10 = a3(0);
  v45 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v47 = &v42 - v11;
  v12 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v46 = a2;
  result = sub_22FCC9514();
  v14 = result;
  if (*(v12 + 16))
  {
    v43 = v6;
    v44 = v12;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v45 + 72);
      v33 = v28 + v32 * v27;
      if (v46)
      {
        sub_22FA72AF8(v33, v47, v48);
      }

      else
      {
        sub_22FA72A90(v33, v47, v48);
      }

      sub_22FCC9844();
      sub_22FCC8B14();
      result = sub_22FCC9894();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
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
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      result = sub_22FA72AF8(v47, *(v14 + 56) + v32 * v22, v48);
      ++*(v14 + 16);
      v12 = v44;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v8 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v8 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
  return result;
}

uint64_t sub_22FA6DE48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7328);
  v34 = a2;
  result = sub_22FCC9514();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_22FCC9844();
      sub_22FCC8B14();
      result = sub_22FCC9894();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22FA6E0E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7330);
  v30 = a2;
  result = sub_22FCC9514();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_22FCC9844();
      MEMORY[0x231908CB0](v20);
      result = sub_22FCC9894();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22FA6E3B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7588);
  v31 = a2;
  result = sub_22FCC9514();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_22FCC9844();
      MEMORY[0x231908CB0](v20);
      result = sub_22FCC9894();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22FA6E640(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD75C0);
  v34 = a2;
  result = sub_22FCC9514();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      sub_22FCC9844();
      sub_22FCC90B4();
      result = sub_22FCC9894();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22FA6E8DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD75B8);
  v30 = a2;
  result = sub_22FCC9514();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_22FCC9844();
      sub_22FCC90B4();
      result = sub_22FCC9894();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22FA6EBBC(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = v4;
  v48 = a3(0);
  v8 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v40 - v9;
  v10 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v45 = a2;
  result = sub_22FCC9514();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v41 = v4;
    v42 = (v8 + 16);
    v43 = v10;
    v44 = v8;
    v46 = (v8 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v25 = v22 | (v13 << 6);
      v26 = *(v10 + 56);
      v27 = (*(v10 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v44 + 72);
      v31 = v26 + v30 * v25;
      if (v45)
      {
        (*v46)(v47, v31, v48);
      }

      else
      {
        (*v42)(v47, v31, v48);
      }

      sub_22FCC9844();
      sub_22FCC8B14();
      result = sub_22FCC9894();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v19 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v19 + 8 * v34);
          if (v38 != -1)
          {
            v20 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v33) & ~*(v19 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v46)(*(v12 + 56) + v30 * v20, v47, v48);
      ++*(v12 + 16);
      v10 = v43;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v6 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v6 = v41;
    if (v39 >= 64)
    {
      bzero(v14, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v6 = v12;
  return result;
}

uint64_t sub_22FA6EF40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD75C8);
  v31 = a2;
  result = sub_22FCC9514();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v32 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v31 & 1) == 0)
      {

        v22 = v20;
      }

      sub_22FCC9844();
      sub_22FCC9864();
      if (v21)
      {
        sub_22FCC8B14();
      }

      result = sub_22FCC9894();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v32;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_22FA6F218(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_22FCC9514();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_22FCC9844();
      sub_22FCC8B14();
      result = sub_22FCC9894();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_22FA6F4F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7250);
  v36 = a2;
  result = sub_22FCC9514();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v38 = *(v25 + 1);
      v39 = *v25;
      v26 = *(v25 + 16);
      v37 = *(v25 + 8);
      if ((v36 & 1) == 0)
      {
      }

      sub_22FCC9844();
      sub_22FCC8B14();
      result = sub_22FCC9894();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v39;
      *(v17 + 1) = v38;
      *(v17 + 8) = v37;
      *(v17 + 16) = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_22FA6F7C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD75E8);
  v2 = *v0;
  v3 = sub_22FCC9504();
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
        sub_22FA728C0(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void *sub_22FA6F95C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7348);
  v2 = *v0;
  v3 = sub_22FCC9504();
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

char *sub_22FA6FAC4()
{
  v1 = v0;
  v2 = type metadata accessor for TemplatedPrompt();
  v35 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD75F8);
  v4 = *v0;
  v5 = sub_22FCC9504();
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
    v36 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v4;
    v16 = v6;
    if (v14)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v40 = (v14 - 1) & v14;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v34;
        v22 = *(v35 + 72) * v20;
        sub_22FA72A90(*(v4 + 48) + v22, v34, type metadata accessor for TemplatedPrompt);
        v23 = *(v4 + 56);
        v24 = 48 * v20;
        v25 = (v23 + 48 * v20);
        v26 = v25[1];
        v39 = *v25;
        v27 = v25[2];
        v28 = v25[3];
        v37 = v25[4];
        v38 = *(v25 + 40);
        sub_22FA72AF8(v21, *(v16 + 48) + v22, type metadata accessor for TemplatedPrompt);
        v29 = *(v16 + 56) + v24;
        v4 = v33;
        *v29 = v39;
        *(v29 + 8) = v26;
        *(v29 + 16) = v27;
        *(v29 + 24) = v28;
        *(v29 + 32) = v37;
        *(v29 + 40) = v38;

        v30 = v27;

        v14 = v40;
      }

      while (v40);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v36;
        goto LABEL_18;
      }

      v19 = *(v32 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
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

void *sub_22FA6FDC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7320);
  v2 = *v0;
  v3 = sub_22FCC9504();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void *sub_22FA6FF24()
{
  v1 = v0;
  v29 = sub_22FCC7FF4();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7580);
  v3 = *v0;
  v4 = sub_22FCC9504();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_22FA701DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD75E0);
  v2 = *v0;
  v3 = sub_22FCC9504();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_22FA70358()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7238);
  v2 = *v0;
  v3 = sub_22FCC9504();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_22FA70540(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_22FCC9504();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
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
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_22FA706C8(uint64_t *a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v5 = *v3;
  v6 = sub_22FCC9504();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
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
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 40 * v20;
        sub_22FA2D328(*(v5 + 56) + 40 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
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

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_22FA7086C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7338);
  v2 = *v0;
  v3 = sub_22FCC9504();
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
        sub_22FA2F7D8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22FA32554(v25, (*(v4 + 56) + v22));
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

void *sub_22FA70A10()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72C0);
  v2 = *v0;
  v3 = sub_22FCC9504();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_22FA70B88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7610);
  v2 = *v0;
  v3 = sub_22FCC9504();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_22FA72B60(&v43, v42))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 200;
      v21 = *(v2 + 56) + v16;
      v23 = *(v21 + 16);
      v22 = *(v21 + 32);
      v24 = *(v21 + 64);
      v46 = *(v21 + 48);
      v47 = v24;
      v25 = *(v21 + 128);
      v27 = *(v21 + 80);
      v26 = *(v21 + 96);
      v50 = *(v21 + 112);
      v51 = v25;
      v48 = v27;
      v49 = v26;
      v29 = *(v21 + 160);
      v28 = *(v21 + 176);
      v30 = *(v21 + 144);
      v55 = *(v21 + 192);
      v53 = v29;
      v54 = v28;
      v52 = v30;
      v43 = *v21;
      v44 = v23;
      v45 = v22;
      v31 = (*(v4 + 48) + v17);
      *v31 = v20;
      v31[1] = v19;
      v32 = *(v4 + 56) + v16;
      *v32 = v43;
      v33 = v44;
      v34 = v45;
      v35 = v47;
      *(v32 + 48) = v46;
      *(v32 + 64) = v35;
      *(v32 + 16) = v33;
      *(v32 + 32) = v34;
      v36 = v48;
      v37 = v49;
      v38 = v51;
      *(v32 + 112) = v50;
      *(v32 + 128) = v38;
      *(v32 + 80) = v36;
      *(v32 + 96) = v37;
      v39 = v52;
      v40 = v53;
      v41 = v54;
      *(v32 + 192) = v55;
      *(v32 + 160) = v40;
      *(v32 + 176) = v41;
      *(v32 + 144) = v39;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_22FA70D98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72D8);
  v2 = *v0;
  v3 = sub_22FCC9504();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_22FA2F7D8(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_22FA32554(v19, (*(v4 + 56) + 32 * v17));
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

char *sub_22FA70F14()
{
  v1 = v0;
  v31 = sub_22FCC7234();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7568);
  v3 = *v0;
  v4 = sub_22FCC9504();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_22FA71198(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_22FCC9504();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
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
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_22FA71334(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v40 = a4;
  v6 = v4;
  v7 = a1(0);
  v39 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v38 = &v37 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = *v4;
  v10 = sub_22FCC9504();
  v11 = v10;
  if (*(v9 + 16))
  {
    v37 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v41 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = v9;
        v30 = *v28;
        v31 = v28[1];
        v32 = v38;
        v33 = *(v39 + 72) * v25;
        v34 = v40;
        sub_22FA72A90(v27 + v33, v38, v40);
        v35 = v41;
        v36 = (*(v41 + 48) + v26);
        *v36 = v30;
        v36[1] = v31;
        v9 = v29;
        sub_22FA72AF8(v32, *(v35 + 56) + v33, v34);

        v20 = v42;
      }

      while (v42);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v37;
        v11 = v41;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v42 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

void *sub_22FA71588()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7328);
  v2 = *v0;
  v3 = sub_22FCC9504();
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

void *sub_22FA716F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7330);
  v2 = *v0;
  v3 = sub_22FCC9504();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

id sub_22FA71888()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7588);
  v2 = *v0;
  v3 = sub_22FCC9504();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void *sub_22FA719E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD75C0);
  v2 = *v0;
  v3 = sub_22FCC9504();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_22FA71B4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD75B8);
  v2 = *v0;
  v3 = sub_22FCC9504();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_22FA71CF8(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v41 = a1(0);
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = *v2;
  v7 = sub_22FCC9504();
  v8 = v7;
  if (*(v6 + 16))
  {
    v36 = v4;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v13 = 0;
    v14 = *(v6 + 16);
    v42 = v8;
    *(v8 + 16) = v14;
    v15 = 1 << *(v6 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v6 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = v43 + 32;
    v38 = v43 + 16;
    v39 = v6;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v44 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = 16 * v22;
        v24 = *(v6 + 56);
        v25 = (*(v6 + 48) + 16 * v22);
        v26 = *v25;
        v27 = v25[1];
        v28 = v43;
        v29 = *(v43 + 72) * v22;
        v30 = v40;
        v31 = v41;
        (*(v43 + 16))(v40, v24 + v29, v41);
        v32 = v42;
        v33 = (*(v42 + 48) + v23);
        *v33 = v26;
        v33[1] = v27;
        v34 = *(v32 + 56) + v29;
        v6 = v39;
        (*(v28 + 32))(v34, v30, v31);

        v17 = v44;
      }

      while (v44);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v4 = v36;
        v8 = v42;
        goto LABEL_21;
      }

      v21 = *(v10 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v44 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

id sub_22FA71F80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD75C8);
  v2 = *v0;
  v3 = sub_22FCC9504();
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
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;

        result = v18;
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

id sub_22FA720FC(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_22FCC9504();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;

        result = v21;
      }

      while (v13);
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
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_22FA72294()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7250);
  v2 = *v0;
  v3 = sub_22FCC9504();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 1);
        v25 = *(v22 + 8);
        v26 = *(v22 + 16);
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = *(v4 + 56) + v17;
        *v28 = v23;
        *(v28 + 1) = v24;
        *(v28 + 8) = v25;
        *(v28 + 16) = v26;
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

uint64_t sub_22FA72424(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_22FCC92C4();
LABEL_9:
  result = sub_22FCC93C4();
  *v1 = result;
  return result;
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

uint64_t sub_22FA72550(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22FA72598(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_22FA725F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22FA72638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22FA726C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22FA7270C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22FA72784(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_22FA727CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22FA72828(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22FA72870(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_22FA729EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FA72A34(uint64_t a1)
{
  v2 = type metadata accessor for TemplatedPrompt();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FA72A90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FA72AF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22FA72BD8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (*(v0 + 32) <= 1u)
  {
    if (!*(v0 + 32))
    {
      sub_22FCC9384();

      v11[0] = 0xD00000000000001ALL;
      v11[1] = 0x800000022FCE0D40;
      MEMORY[0x231907FA0](v1, v2);
      MEMORY[0x231907FA0](8250, 0xE200000000000000);
      v5 = v4;
      v6 = v3;
LABEL_8:
      MEMORY[0x231907FA0](v5, v6);
      return v11[0];
    }

    sub_22FCC9384();

    v11[0] = 0xD00000000000001CLL;
    v11[1] = 0x800000022FCE0D20;
LABEL_7:
    v5 = v1;
    v6 = v2;
    goto LABEL_8;
  }

  if (*(v0 + 32) == 2)
  {
    strcpy(v11, "Unsupported: ");
    HIWORD(v11[1]) = -4864;
    goto LABEL_7;
  }

  if (!(v4 | v2 | v1 | v3))
  {
    return 0xD000000000000012;
  }

  v8 = v4 | v2 | v3;
  v9 = 0xD000000000000020;
  if (v8)
  {
    v9 = 0x6C616E7265746E49;
  }

  if (v1 != 2)
  {
    v9 = 0x6C616E7265746E49;
  }

  if (v1 == 1 && v8 == 0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_22FA72DC0(uint64_t a1)
{
  v2 = sub_22FA7F9F4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22FA72DFC(uint64_t a1)
{
  v2 = sub_22FA7F9F4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22FA72E44(uint64_t a1)
{
  v2 = sub_22FA7FAA0();

  return MEMORY[0x28219CB78](a1, v2);
}

void *sub_22FA72E80()
{
  type metadata accessor for InstanceCounter();
  result = swift_allocObject();
  result[2] = 0xD000000000000013;
  result[3] = 0x800000022FCD2AC0;
  result[4] = 0;
  qword_2814880A0 = result;
  return result;
}

uint64_t sub_22FA72ED0()
{
  if (qword_281481FA8 != -1)
  {
    swift_once();
  }

  sub_22FB5A80C();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FA73108(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 64) = a1;
  *(v4 + 56) = a3;
  *(v4 + 88) = *v3;
  return MEMORY[0x2822009F8](sub_22FA73158, 0, 0);
}

uint64_t sub_22FA73158()
{
  v1 = v0[11];
  v2 = *(v0[10] + 128);
  v3 = *(*(v2 + 112) + 112);
  v0[12] = v3;
  v0[5] = type metadata accessor for PhotoLibraryWorker();
  v0[6] = sub_22FA7E874(&qword_281482350, 255, type metadata accessor for PhotoLibraryWorker);
  v0[2] = v2;
  v4 = swift_allocObject();
  v0[13] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = v3;

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_22FA732CC;
  v7 = v0[9];
  v8 = v0[8];
  v9.n128_u64[0] = v0[7];

  return (sub_22FBDAF94)(v0 + 2, v8, v7, sub_22FA7EDF0, v4, v9);
}

uint64_t sub_22FA732CC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_22FA73454;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v2 + 16);
    v3 = sub_22FA733F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FA733F0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FA73454()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FA734C8(void *a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FA7E874(&qword_281481F90, v8, type metadata accessor for PhotoLibraryService);
  sub_22FA2CEC4(a2, v9);
  v10 = a1;
  v11 = sub_22FCC8664();
  v12 = sub_22FCC8F34();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = [v10 isReadyForAnalysis];

    _os_log_impl(&dword_22FA28000, v11, v12, "Running with photoLibrary ready: %{BOOL}d", v13, 8u);
    MEMORY[0x23190A000](v13, -1, -1);
  }

  else
  {

    v11 = v10;
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_22FA7381C(int a1, void *aBlock, double a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_22FCC8A84();
  v8 = v7;
  v4[4] = v7;

  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_22FA73900;

  return sub_22FA73108(v6, v8, a3);
}

uint64_t sub_22FA73900()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = sub_22FCC6504();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_22FA73AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v4[22] = swift_task_alloc();
  v5 = sub_22FCC65F4();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = sub_22FCC8684();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA73C24, 0, 0);
}

uint64_t sub_22FA73C24(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 168);
  v4 = sub_22FA7E874(&qword_281481F90, a2, type metadata accessor for PhotoLibraryService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "SocialGroups - updateKeyFaceOfSocialGroups", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v8 = *(v2 + 216);
  v9 = *(v2 + 224);
  v10 = *(v2 + 208);
  v11 = *(v2 + 160);
  v12 = *(v2 + 144);
  v33 = *(v2 + 152);
  v34 = *(v2 + 168);
  v35 = *(v2 + 136);

  (*(v8 + 8))(v9, v10);
  v13 = v11[16];
  v14 = *(*(v13 + 112) + 112);
  *(v2 + 232) = v14;
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 graphServicesURLWithPhotoLibrary_];
  sub_22FCC65A4();

  v18 = objc_allocWithZone(MEMORY[0x277D3B658]);
  v19 = v16;
  v20 = sub_22FCC6564();
  v21 = [v18 initWithPhotoLibrary:v19 cacheURL:v20];
  *(v2 + 240) = v21;
  v32 = v21;

  v22 = [objc_allocWithZone(MEMORY[0x277D3C790]) initWithPhotoLibrary_];
  *(v2 + 248) = v22;
  v36 = v11[14];
  v37 = v11[15];

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v12, v33);
  *(v2 + 40) = type metadata accessor for PhotoLibraryWorker();
  *(v2 + 48) = sub_22FA7E874(&qword_281482350, 255, type metadata accessor for PhotoLibraryWorker);
  *(v2 + 16) = v13;
  v23 = swift_allocObject();
  *(v23 + 16) = v34;
  v24 = swift_allocObject();
  v24[2] = v35;
  v24[3] = v19;
  v24[4] = v11;
  v24[5] = v21;
  v24[6] = v22;
  v24[7] = v34;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD76C0);
  v26 = swift_allocObject();
  *(v2 + 256) = v26;
  *(v26 + 48) = 0;
  *(v26 + 56) = 0;
  *(v26 + 16) = 0xD000000000000020;
  *(v26 + 24) = 0x800000022FCE0B80;
  *(v26 + 32) = v36;
  *(v26 + 40) = v37;
  *(v26 + 64) = 0;
  *(v26 + 72) = 0;
  *(v26 + 80) = 0;
  *(v26 + 88) = 0u;
  *(v26 + 104) = 0u;
  *(v26 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v26 + 144);
  *(v26 + 128) = &unk_22FCD2C78;
  *(v26 + 136) = v24;
  *(v26 + 184) = sub_22FA7EC1C;
  *(v26 + 192) = v23;
  v27 = v11[19];
  *(v2 + 264) = v27;
  *(v2 + 80) = v25;
  *(v2 + 88) = sub_22FA7ED2C(&qword_281481680, &qword_27DAD76C0);
  *(v2 + 56) = v26;
  v28 = v19;

  v29 = v32;
  v30 = v22;

  return MEMORY[0x2822009F8](sub_22FA74040, v27, 0);
}

uint64_t sub_22FA74040()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 176);
  v4 = sub_22FCC8D14();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_22FA2D328(v0 + 56, v0 + 96);
  v5 = sub_22FA7E874(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  sub_22FA2CF78((v0 + 96), (v6 + 5));
  swift_retain_n();
  v7 = sub_22FB22A48(0, 0, v3, &unk_22FCD2C88, v6);
  *(v0 + 272) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8);
  v8 = swift_allocObject();
  *(v0 + 280) = v8;
  *(v8 + 16) = xmmword_22FCD1800;
  v9 = *(v2 + 40);
  *(v8 + 32) = *(v2 + 32);
  *(v8 + 40) = v9;

  v10 = swift_task_alloc();
  *(v0 + 288) = v10;
  *v10 = v0;
  v10[1] = sub_22FA7424C;
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);

  return sub_22FBE5228(v10, 0xD00000000000001BLL, 0x800000022FCE0BB0, v7, v8, v11, v12);
}

uint64_t sub_22FA7424C()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    v4 = sub_22FA744BC;
  }

  else
  {
    v4 = sub_22FA74378;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FA74378()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  return MEMORY[0x2822009F8](sub_22FA743F4, 0, 0);
}

uint64_t sub_22FA743F4()
{
  v1 = v0[31];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22FA744BC()
{

  return MEMORY[0x2822009F8](sub_22FA74530, 0, 0);
}

uint64_t sub_22FA74530()
{
  v1 = v0[31];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];

  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_0((v0 + 7));

  v7 = v0[1];

  return v7();
}

uint64_t sub_22FA74600(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v9 = sub_22FA7E874(&qword_281481F90, v6, type metadata accessor for PhotoLibraryService);
    sub_22FA2CEC4(a2, v9);
    v10 = sub_22FCC8664();
    v11 = sub_22FCC8F24();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22FA28000, v10, v11, "updateKeyFaceOfSocialGroups is stuck", v12, 2u);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_22FA747D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 192) = v13;
  *(v8 + 176) = v12;
  *(v8 + 160) = a7;
  *(v8 + 168) = a8;
  *(v8 + 144) = a5;
  *(v8 + 152) = a6;
  *(v8 + 136) = a4;
  v9 = sub_22FCC8684();
  *(v8 + 200) = v9;
  *(v8 + 208) = *(v9 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA748E8, 0, 0);
}

void sub_22FA748E8()
{
  v121 = v0;
  v120 = *MEMORY[0x277D85DE8];
  v2 = v0[17];
  v1 = v0[18];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[6] = sub_22FA4ED4C;
  v0[7] = v3;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_98;
  v4 = _Block_copy(v0 + 2);
  v5 = objc_opt_self();

  v6 = [v5 progressReporterWithProgressBlock_];
  _Block_release(v4);

  sub_22FCC8FF4();
  sub_22FA3A77C(0, &qword_27DAD76C8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = sub_22FCC8E64();
  v9 = [ObjCClassFromMetadata localIdentifiersWithUUIDs_];

  if (!v9)
  {
    __break(1u);
    return;
  }

  v10 = sub_22FCC8E84();

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = sub_22FA86B08(*(v10 + 16), 0);
    v13 = sub_22FA88270(&v118, v12 + 4, v11, v10);
    sub_22FA72BC8();
    if (v13 == v11)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v12 = MEMORY[0x277D84F90];
LABEL_6:
  v14 = [v0[20] librarySpecificFetchOptions];
  v15 = objc_opt_self();
  v16 = sub_22FCC8C24();
  v17 = [v15 fetchSocialGroupsWithLocalIdentifiers:v16 options:v14];

  v113 = v17;
  v114 = v6;
  v111 = v14;
  if ([v17 count] != v12[2])
  {
    aBlock = v12;
    v52 = [v17 fetchedObjects];
    v12 = MEMORY[0x277D84F90];
    if (v52)
    {
      v53 = v52;
      v116 = sub_22FCC8C44();
    }

    else
    {
      v116 = MEMORY[0x277D84F90];
    }

    if (!(v116 >> 62))
    {
      v54 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v54)
      {
LABEL_35:

        v56 = MEMORY[0x277D84F90];
LABEL_36:
        v69 = aBlock;
        v70 = aBlock[2];
        if (v70)
        {
          v71 = 0;
          v72 = -v70;
          v73 = (aBlock + 5);
          v112 = MEMORY[0x277D84F90];
          while (1)
          {
            v74 = &v73[16 * v71++];
            while (1)
            {
              if ((v71 - 1) >= v69[2])
              {
                __break(1u);
LABEL_58:
                __break(1u);
              }

              v76 = *(v74 - 1);
              v75 = *v74;
              v0[14] = v76;
              v0[15] = v75;
              v77 = swift_task_alloc();
              *(v77 + 16) = v0 + 14;

              v78 = sub_22FB34410(sub_22FA7EDC8, v77, v56);

              if ((v78 & 1) == 0)
              {
                break;
              }

              ++v71;
              v74 += 16;
              v69 = aBlock;
              if (v72 + v71 == 1)
              {
                goto LABEL_50;
              }
            }

            v79 = v112;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v118 = v112;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_22FA86EA8(0, *(v112 + 16) + 1, 1);
              v79 = v118;
            }

            v82 = *(v79 + 16);
            v81 = *(v79 + 24);
            if (v82 >= v81 >> 1)
            {
              sub_22FA86EA8((v81 > 1), v82 + 1, 1);
              v79 = v118;
            }

            *(v79 + 16) = v82 + 1;
            v112 = v79;
            v83 = v79 + 16 * v82;
            *(v83 + 32) = v76;
            *(v83 + 40) = v75;
            v69 = aBlock;
            v73 = (aBlock + 5);
            if (!(v72 + v71))
            {
              goto LABEL_50;
            }
          }
        }

        v112 = MEMORY[0x277D84F90];
LABEL_50:
        v84 = v0[24];

        v86 = sub_22FA7E874(&qword_281481F90, v85, type metadata accessor for PhotoLibraryService);
        sub_22FA2CEC4(v84, v86);
        v87 = v112;

        v88 = sub_22FCC8664();
        v89 = sub_22FCC8F14();

        v90 = os_log_type_enabled(v88, v89);
        v91 = v0[28];
        v92 = v0[25];
        v93 = v0[26];
        if (v90)
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v118 = v95;
          *v94 = 136315138;
          v96 = MEMORY[0x2319080B0](v112, MEMORY[0x277D837D0]);
          v98 = sub_22FA2F600(v96, v97, &v118);

          *(v94 + 4) = v98;
          v87 = v112;
          _os_log_impl(&dword_22FA28000, v88, v89, "updateKeyFaceOfSocialGroups could not find %s groups", v94, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v95);
          MEMORY[0x23190A000](v95, -1, -1);
          MEMORY[0x23190A000](v94, -1, -1);
        }

        (*(v93 + 8))(v91, v92);
        v68 = v113;
        v32 = v114;
        v99 = v0[21];
        v101 = *(v99 + 112);
        v100 = *(v99 + 120);
        v118 = 0;
        v119 = 0xE000000000000000;

        sub_22FCC9384();

        v118 = 0xD00000000000001ELL;
        v119 = 0x800000022FCE0BD0;
        v102 = MEMORY[0x2319080B0](v87, MEMORY[0x277D837D0]);
        v104 = v103;

        MEMORY[0x231907FA0](v102, v104);

        v105 = v118;
        v106 = v119;
        sub_22FA7E8BC();
        swift_allocError();
        *v107 = v101;
        *(v107 + 8) = v100;
        *(v107 + 16) = v105;
        *(v107 + 24) = v106;
        *(v107 + 32) = 0;
        swift_willThrow();
        v31 = v111;
LABEL_53:

        v66 = v0[1];
        goto LABEL_54;
      }

LABEL_23:
      v118 = v12;
      sub_22FA86EA8(0, v54 & ~(v54 >> 63), 0);
      if (v54 < 0)
      {
        goto LABEL_58;
      }

      v55 = 0;
      v56 = v118;
      do
      {
        if ((v116 & 0xC000000000000001) != 0)
        {
          v57 = MEMORY[0x231908810](v55, v116);
        }

        else
        {
          v57 = *(v116 + 8 * v55 + 32);
        }

        v58 = v57;
        v59 = [v57 localIdentifier];
        v60 = sub_22FCC8A84();
        v62 = v61;

        v118 = v56;
        v64 = *(v56 + 16);
        v63 = *(v56 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_22FA86EA8((v63 > 1), v64 + 1, 1);
          v56 = v118;
        }

        ++v55;
        *(v56 + 16) = v64 + 1;
        v65 = v56 + 16 * v64;
        *(v65 + 32) = v60;
        *(v65 + 40) = v62;
      }

      while (v54 != v55);

      goto LABEL_36;
    }

LABEL_34:
    v54 = sub_22FCC92C4();
    if (!v54)
    {
      goto LABEL_35;
    }

    goto LABEL_23;
  }

  v18 = [v17 count];
  v19 = [v17 count];
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v20 = v19;
  if (v19)
  {
    v21 = 0;
    v22 = 1.0 / v18;
    v110 = (v0[26] + 8);
    v23 = 0.0;
    v117 = v19;
    do
    {
      v23 = v22 + v23;
      sub_22FCC8FF4();
      v24 = [v17 objectAtIndexedSubscript_];
      sub_22FCC6B24();
      v25 = sub_22FCC6B14();
      if (v25)
      {
        v27 = v25;
        v28 = v0[20];
        v29 = swift_allocObject();
        *(v29 + 16) = v24;
        *(v29 + 24) = v27;
        v0[12] = sub_22FA7EDE8;
        v0[13] = v29;
        v0[8] = MEMORY[0x277D85DD0];
        v0[9] = 1107296256;
        v0[10] = sub_22FA2B268;
        v0[11] = &block_descriptor_104;
        v30 = _Block_copy(v0 + 8);
        v31 = v24;
        v32 = v27;

        v0[16] = 0;
        v33 = [v28 performChangesAndWait:v30 error:v0 + 16];
        _Block_release(v30);
        v34 = v0[16];
        if (!v33)
        {
          v67 = v34;
          sub_22FCC6514();

          swift_willThrow();
          v68 = v111;
          goto LABEL_53;
        }

        v35 = v34;

        v17 = v113;
        v6 = v114;
        v20 = v117;
      }

      else
      {
        v36 = v0[24];
        v37 = sub_22FA7E874(&qword_281481F90, v26, type metadata accessor for PhotoLibraryService);
        sub_22FA2CEC4(v36, v37);
        v38 = v24;
        v39 = sub_22FCC8664();
        v40 = sub_22FCC8F14();

        v41 = os_log_type_enabled(v39, v40);
        v42 = v0[27];
        v43 = v0[25];
        if (v41)
        {
          v109 = v0[27];
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v118 = v45;
          *v44 = 136315138;
          v46 = [v38 localIdentifier];
          v47 = sub_22FCC8A84();
          v108 = v43;
          v49 = v48;

          v50 = sub_22FA2F600(v47, v49, &v118);

          *(v44 + 4) = v50;
          v20 = v117;
          _os_log_impl(&dword_22FA28000, v39, v40, "No key asset candidate for social group: %s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v45);
          v51 = v45;
          v17 = v113;
          v6 = v114;
          MEMORY[0x23190A000](v51, -1, -1);
          MEMORY[0x23190A000](v44, -1, -1);

          (*v110)(v109, v108);
        }

        else
        {

          (*v110)(v42, v43);
        }
      }

      ++v21;
    }

    while (v20 != v21);
  }

  sub_22FCC8FF4();

  v66 = v0[1];
LABEL_54:

  v66();
}

void sub_22FA75504(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() changeRequestForSocialGroup:a1 userAction:0];
  if (v3)
  {
    v4 = v3;
    [v3 setKeyAsset_];
  }

  else
  {
    sub_22FCC94D4();
    __break(1u);
  }
}

uint64_t sub_22FA75764(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = sub_22FCC8E84();
  v4[4] = v5;
  v6 = sub_22FCC8A84();
  v8 = v7;
  v4[5] = v7;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_22FA75868;

  return sub_22FA73AA4(v5, v6, v8);
}

uint64_t sub_22FA75868()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = sub_22FCC6504();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_22FA75A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v5[17] = *v4;
  v6 = sub_22FCC8684();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA75B20, 0, 0);
}

uint64_t sub_22FA75B20(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 136);
  v4 = sub_22FA7E874(&qword_281481F90, a2, type metadata accessor for PhotoLibraryService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "SocialGroups - updateKeyFaceOfSocialGroupWithPersonUUIDs", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = *(v2 + 152);
  v8 = *(v2 + 160);
  v10 = *(v2 + 144);
  v12 = *(v2 + 120);
  v11 = *(v2 + 128);
  v14 = *(v2 + 104);
  v13 = *(v2 + 112);
  v28 = *(v2 + 136);
  v29 = *(v2 + 96);

  (*(v9 + 8))(v8, v10);
  v15 = v11[16];
  v16 = *(*(v15 + 112) + 112);
  *(v2 + 168) = v16;
  v30 = v11[14];
  v31 = v11[15];
  v17 = v16;

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v13, v12);
  *(v2 + 40) = type metadata accessor for PhotoLibraryWorker();
  *(v2 + 48) = sub_22FA7E874(&qword_281482350, 255, type metadata accessor for PhotoLibraryWorker);
  *(v2 + 16) = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = v28;
  v19 = swift_allocObject();
  v19[2] = v29;
  v19[3] = v14;
  v19[4] = v17;
  v20 = v17;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD76B0);
  v22 = swift_allocObject();
  *(v2 + 176) = v22;
  *(v22 + 48) = 0;
  *(v22 + 56) = 0;
  *(v22 + 16) = 0xD000000000000031;
  *(v22 + 24) = 0x800000022FCE0AD0;
  *(v22 + 32) = v30;
  *(v22 + 40) = v31;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;
  *(v22 + 80) = 0;
  *(v22 + 88) = 0u;
  *(v22 + 104) = 0u;
  *(v22 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v22 + 144);
  *(v22 + 128) = &unk_22FCD2C60;
  *(v22 + 136) = v19;
  *(v22 + 184) = sub_22FA7EB30;
  *(v22 + 192) = v18;
  *(v2 + 80) = v21;
  *(v2 + 88) = sub_22FA7ED2C(&qword_27DAD76B8, &qword_27DAD76B0);
  *(v2 + 56) = v22;
  v23 = v20;

  v24 = swift_task_alloc();
  *(v2 + 184) = v24;
  *v24 = v2;
  v24[1] = sub_22FA75EDC;
  v25 = *(v2 + 112);
  v26 = *(v2 + 120);

  return sub_22FB7CDB0(v2 + 56, 0xD000000000000029, 0x800000022FCE0B10, v25, v26);
}

uint64_t sub_22FA75EDC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {
    v7 = sub_22FA76094;
  }

  else
  {
    *(v6 + 200) = a2;
    *(v6 + 208) = a1;
    __swift_destroy_boxed_opaque_existential_0(v6 + 56);
    v7 = sub_22FA76018;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22FA76018()
{

  v1 = *(v0 + 8);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);

  return v1(v2, v3);
}

uint64_t sub_22FA76094()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FA76114(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v9 = sub_22FA7E874(&qword_281481F90, v6, type metadata accessor for PhotoLibraryService);
    sub_22FA2CEC4(a2, v9);
    v10 = sub_22FCC8664();
    v11 = sub_22FCC8F24();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22FA28000, v10, v11, "updateKeyFaceOfSocialGroupsWithPersonUUIDs is stuck", v12, 2u);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_22FA762E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a1;
  v8[3] = a6;
  return MEMORY[0x2822009F8](sub_22FA7630C, 0, 0);
}

uint64_t sub_22FA7630C()
{
  sub_22FCC6B24();
  v1 = sub_22FCC6B04();
  v2 = *(v0 + 16);
  *v2 = v1;
  v2[1] = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22FA76560(int a1, int a2, int a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v6 = sub_22FCC8E84();
  v5[4] = v6;
  v7 = sub_22FCC8E84();
  v5[5] = v7;
  v8 = sub_22FCC8A84();
  v10 = v9;
  v5[6] = v9;

  v11 = swift_task_alloc();
  v5[7] = v11;
  *v11 = v5;
  v11[1] = sub_22FA7668C;

  return sub_22FA75A30(v6, v7, v8, v10);
}

uint64_t sub_22FA7668C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;

  if (v2)
  {
    v5 = sub_22FCC6504();

    v6 = v5;
    v7 = 0;
  }

  else
  {
    v8 = sub_22FCC8A54();

    v7 = v8;
    v6 = 0;
    v5 = v8;
  }

  v9 = *(v3 + 24);
  (v9)[2](v9, v7, v6);

  _Block_release(v9);
  v10 = *(v4 + 8);

  return v10();
}

uint64_t sub_22FA7687C(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v9 = sub_22FA7E874(&qword_281481F90, v6, type metadata accessor for PhotoLibraryService);
    sub_22FA2CEC4(a2, v9);
    v10 = sub_22FCC8664();
    v11 = sub_22FCC8F24();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22FA28000, v10, v11, "keyAssetFromCandidateAssets is stuck", v12, 2u);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_22FA76A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a1;
  v8[9] = a4;
  return MEMORY[0x2822009F8](sub_22FA76A78, 0, 0);
}

uint64_t sub_22FA76A78()
{
  v1 = v0[11];
  v2 = [objc_allocWithZone(MEMORY[0x277D3B650]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277D3BA28]) initWithCurationCriteriaFactory_];

  v4 = [objc_allocWithZone(MEMORY[0x277D3BA18]) init];
  v5 = [v1 librarySpecificFetchOptions];
  v6 = [objc_opt_self() assetPropertySetsForCuration];
  if (!v6)
  {
    sub_22FCC8C44();
    v6 = sub_22FCC8C24();
  }

  [v5 setFetchPropertySets_];

  v7 = objc_opt_self();
  v8 = sub_22FCC8C24();
  v9 = [v7 fetchAssetsWithUUIDs:v8 options:v5];

  if (v9)
  {
    v10 = [v7 clsAllAssetsFromFetchResult:v9 prefetchOptions:31 curationContext:v0[13]];
    if (!v10)
    {
      sub_22FA3A77C(0, &qword_28147ADE8);
      sub_22FCC8C44();
      v10 = sub_22FCC8C24();
    }

    v12 = v0[9];
    v11 = v0[10];
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;
    v0[6] = sub_22FA7FB2C;
    v0[7] = v13;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_22FB59114;
    v0[5] = &block_descriptor_244;
    v14 = _Block_copy(v0 + 2);

    v15 = [v3 keyAssetInAssets:v10 options:v4 progressBlock:v14];
    _Block_release(v14);

    if (v15)
    {
      v16 = [v15 uuid];
      if (v16)
      {
        v17 = v0[8];
        v18 = v16;
        v19 = sub_22FCC8A84();
        v21 = v20;

        *v17 = v19;
        v17[1] = v21;
        v22 = v0[1];
        goto LABEL_12;
      }
    }

    sub_22FA7E8BC();
    swift_allocError();
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 3;
    swift_willThrow();
  }

  else
  {
    sub_22FA7E8BC();
    swift_allocError();
    *v24 = 0u;
    *(v24 + 16) = 0u;
    *(v24 + 32) = 3;
    swift_willThrow();
  }

  v22 = v0[1];
LABEL_12:

  return v22();
}

uint64_t sub_22FA76FE8(int a1, int a2, int a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v6 = sub_22FCC8C44();
  v5[4] = v6;
  v7 = sub_22FCC8A84();
  v9 = v8;
  v5[5] = v8;

  v10 = swift_task_alloc();
  v5[6] = v10;
  *v10 = v5;
  v10[1] = sub_22FA770F8;

  return sub_22FA7D1E8(v6, v7, v9);
}

uint64_t sub_22FA770F8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;

  if (v2)
  {
    v5 = sub_22FCC6504();

    v6 = v5;
    v7 = 0;
  }

  else
  {
    v8 = sub_22FCC8A54();

    v7 = v8;
    v6 = 0;
    v5 = v8;
  }

  v9 = *(v3 + 24);
  (v9)[2](v9, v7, v6);

  _Block_release(v9);
  v10 = *(v4 + 8);

  return v10();
}

uint64_t sub_22FA772CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v5[17] = *v4;
  v6 = sub_22FCC8684();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA773BC, 0, 0);
}

uint64_t sub_22FA773BC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 136);
  v4 = sub_22FA7E874(&qword_281481F90, a2, type metadata accessor for PhotoLibraryService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Calling curatedAssets(from:options:)", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = *(v2 + 152);
  v8 = *(v2 + 160);
  v10 = *(v2 + 136);
  v11 = *(v2 + 144);
  v13 = *(v2 + 120);
  v12 = *(v2 + 128);
  v14 = *(v2 + 112);
  v33 = *(v2 + 104);
  v34 = *(v2 + 96);

  (*(v9 + 8))(v8, v11);
  v15 = v12[16];
  v16 = *(*(v15 + 112) + 112);
  *(v2 + 168) = v16;
  v17 = objc_allocWithZone(MEMORY[0x277D3C790]);
  v18 = v16;
  v19 = [v17 initWithPhotoLibrary_];
  *(v2 + 176) = v19;
  v20 = v19;
  v32 = v19;
  v35 = v12[14];
  v36 = v12[15];

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v14, v13);
  *(v2 + 40) = type metadata accessor for PhotoLibraryWorker();
  *(v2 + 48) = sub_22FA7E874(&qword_281482350, 255, type metadata accessor for PhotoLibraryWorker);
  *(v2 + 16) = v15;
  v21 = swift_allocObject();
  *(v21 + 16) = v10;
  v22 = swift_allocObject();
  v22[2] = v33;
  v22[3] = v18;
  v22[4] = v34;
  v22[5] = v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7690);
  v24 = swift_allocObject();
  *(v2 + 184) = v24;
  *(v24 + 48) = 0;
  *(v24 + 56) = 0;
  *(v24 + 16) = 0xD00000000000001ALL;
  *(v24 + 24) = 0x800000022FCE0A80;
  *(v24 + 32) = v35;
  *(v24 + 40) = v36;
  *(v24 + 64) = 0;
  *(v24 + 72) = 0;
  *(v24 + 80) = 0;
  *(v24 + 88) = 0u;
  *(v24 + 104) = 0u;
  *(v24 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v24 + 144);
  *(v24 + 128) = &unk_22FCD2C48;
  *(v24 + 136) = v22;
  *(v24 + 184) = sub_22FA7EA30;
  *(v24 + 192) = v21;
  *(v2 + 80) = v23;
  v25 = sub_22FA7ED2C(&qword_281481688, &qword_27DAD7690);
  *(v2 + 56) = v24;
  *(v2 + 88) = v25;
  v26 = v18;

  v27 = v32;

  v28 = swift_task_alloc();
  *(v2 + 192) = v28;
  *v28 = v2;
  v28[1] = sub_22FA777B0;
  v29 = *(v2 + 112);
  v30 = *(v2 + 120);

  return sub_22FB7D354(v2 + 56, 0x4164657461727563, 0xED00007374657373, v29, v30);
}

uint64_t sub_22FA777B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_22FA77968;
  }

  else
  {
    *(v4 + 208) = a1;
    __swift_destroy_boxed_opaque_existential_0(v4 + 56);
    v5 = sub_22FA778E0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FA778E0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);
  v3 = *(v0 + 208);

  return v2(v3);
}

uint64_t sub_22FA77968()
{
  v1 = *(v0 + 176);

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FA779F4(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v9 = sub_22FA7E874(&qword_281481F90, v6, type metadata accessor for PhotoLibraryService);
    sub_22FA2CEC4(a2, v9);
    v10 = sub_22FCC8664();
    v11 = sub_22FCC8F24();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22FA28000, v10, v11, "curatedAssetsFromAssets is stuck", v12, 2u);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_22FA77BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v10;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  v8[9] = a1;
  return MEMORY[0x2822009F8](sub_22FA77BFC, 0, 0);
}

uint64_t sub_22FA77BFC()
{
  v1 = *(v0 + 96);
  v2 = [objc_allocWithZone(MEMORY[0x277D3B670]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277D3B660]) initWithDuration_];
  v4 = sub_22FCC8A84();
  if (*(v1 + 16))
  {
    v6 = sub_22FA2DB54(v4, v5);
    v8 = v7;

    if (v8)
    {
      sub_22FA2F7D8(*(*(v0 + 96) + 56) + 32 * v6, v0 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478);
      if (swift_dynamicCast())
      {
        [v3 setTargetNumberOfItems_];
      }
    }
  }

  else
  {
  }

  v9 = sub_22FCC8A84();
  if (*(v1 + 16))
  {
    v11 = sub_22FA2DB54(v9, v10);
    v13 = v12;

    if (v13)
    {
      sub_22FA2F7D8(*(*(v0 + 96) + 56) + 32 * v11, v0 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
      if (swift_dynamicCast())
      {
        sub_22FAA99B0(*(v0 + 64));

        v14 = sub_22FCC8E64();

        [v3 setUuidsOfEligibleAssets_];
      }
    }
  }

  else
  {
  }

  v15 = sub_22FCC8A84();
  if (*(v1 + 16))
  {
    v17 = sub_22FA2DB54(v15, v16);
    v19 = v18;

    if (v19)
    {
      sub_22FA2F7D8(*(*(v0 + 96) + 56) + 32 * v17, v0 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
      if (swift_dynamicCast())
      {
        sub_22FAA99B0(*(v0 + 64));

        v20 = sub_22FCC8E64();

        [v3 setUuidsOfRequiredAssets_];
      }
    }
  }

  else
  {
  }

  v21 = [*(v0 + 104) librarySpecificFetchOptions];
  v22 = [objc_opt_self() assetPropertySetsForCuration];
  if (!v22)
  {
    sub_22FCC8C44();
    v22 = sub_22FCC8C24();
  }

  [v21 setFetchPropertySets_];

  v23 = objc_opt_self();
  v24 = sub_22FCC8C24();
  v25 = [v23 fetchAssetsWithUUIDs:v24 options:v21];

  if (!v25)
  {
    sub_22FA7E8BC();
    swift_allocError();
    *v50 = 1;
    *(v50 + 8) = 0;
    *(v50 + 16) = 0;
    *(v50 + 24) = 0;
    *(v50 + 32) = 3;
    swift_willThrow();

    v51 = *(v0 + 8);
    goto LABEL_43;
  }

  v57 = v21;
  v26 = *(v0 + 120);
  v27 = *(v0 + 80);
  v28 = *(v0 + 88);
  v56 = v25;
  v29 = [objc_opt_self() transientAssetCollectionWithAssetFetchResult:v25 title:0];
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 feederPrefetchOptionsWithDefaultMode_];
  v33 = [objc_allocWithZone(MEMORY[0x277D27710]) initWithAssetCollection:v31 assetFetchOptions:0 feederPrefetchOptions:v32 curationContext:v26];

  v34 = swift_allocObject();
  *(v34 + 16) = v27;
  *(v34 + 24) = v28;
  *(v0 + 48) = sub_22FA7EB2C;
  *(v0 + 56) = v34;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_22FB59114;
  *(v0 + 40) = &block_descriptor_65;
  v35 = _Block_copy((v0 + 16));

  v58 = v3;
  v59 = v2;
  v55 = v33;
  v36 = [v2 bestAssetsForFeeder:v33 options:v3 debugInfo:0 progressBlock:v35];
  _Block_release(v35);
  sub_22FA3A77C(0, &qword_28147ADE8);
  v37 = sub_22FCC8C44();

  if (v37 >> 62)
  {
LABEL_40:
    v38 = sub_22FCC92C4();
    if (v38)
    {
LABEL_21:
      v39 = 0;
      v60 = MEMORY[0x277D84F90];
      do
      {
        v40 = v39;
        while (1)
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            v41 = MEMORY[0x231908810](v40, v37);
          }

          else
          {
            if (v40 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            v41 = *(v37 + 8 * v40 + 32);
          }

          v42 = v41;
          v39 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          v43 = [v41 uuid];
          if (v43)
          {
            break;
          }

          ++v40;
          if (v39 == v38)
          {
            goto LABEL_42;
          }
        }

        v44 = v43;
        v45 = sub_22FCC8A84();
        v54 = v46;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_22FAC1D0C(0, *(v60 + 2) + 1, 1, v60);
        }

        v48 = *(v60 + 2);
        v47 = *(v60 + 3);
        if (v48 >= v47 >> 1)
        {
          v60 = sub_22FAC1D0C((v47 > 1), v48 + 1, 1, v60);
        }

        *(v60 + 2) = v48 + 1;
        v49 = &v60[16 * v48];
        *(v49 + 4) = v45;
        *(v49 + 5) = v54;
      }

      while (v39 != v38);
      goto LABEL_42;
    }
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
      goto LABEL_21;
    }
  }

  v60 = MEMORY[0x277D84F90];
LABEL_42:
  v52 = *(v0 + 72);

  *v52 = v60;
  v51 = *(v0 + 8);
LABEL_43:

  return v51();
}

uint64_t sub_22FA78554(int a1, int a2, int a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v6 = sub_22FCC8C44();
  v5[4] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478);
  v7 = sub_22FCC89D4();
  v5[5] = v7;
  v8 = sub_22FCC8A84();
  v10 = v9;
  v5[6] = v9;

  v11 = swift_task_alloc();
  v5[7] = v11;
  *v11 = v5;
  v11[1] = sub_22FA78690;

  return sub_22FA772CC(v6, v7, v8, v10);
}

uint64_t sub_22FA78690()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;

  if (v2)
  {
    v5 = sub_22FCC6504();

    v6 = v5;
    v7 = 0;
  }

  else
  {
    v8 = sub_22FCC8C24();

    v7 = v8;
    v6 = 0;
    v5 = v8;
  }

  v9 = *(v3 + 24);
  (v9)[2](v9, v7, v6);

  _Block_release(v9);
  v10 = *(v4 + 8);

  return v10();
}

uint64_t sub_22FA78880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v5[17] = *v4;
  v6 = sub_22FCC8684();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA78970, 0, 0);
}

uint64_t sub_22FA78970(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 136);
  v4 = sub_22FA7E874(&qword_281481F90, a2, type metadata accessor for PhotoLibraryService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Calling extendedCuratedAssets(from:options:)", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = *(v2 + 152);
  v8 = *(v2 + 160);
  v11 = *(v2 + 136);
  v10 = *(v2 + 144);
  v13 = *(v2 + 120);
  v12 = *(v2 + 128);
  v14 = *(v2 + 112);
  v33 = *(v2 + 96);
  v34 = *(v2 + 104);

  (*(v9 + 8))(v8, v10);
  v15 = v12[16];
  v16 = *(*(v15 + 112) + 112);
  *(v2 + 168) = v16;
  v17 = objc_allocWithZone(MEMORY[0x277D3C790]);
  v31 = v16;
  v18 = [v17 initWithPhotoLibrary_];
  *(v2 + 176) = v18;
  v19 = v18;
  v32 = v18;
  v35 = v12[14];
  v36 = v12[15];

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v14, v13);
  *(v2 + 40) = type metadata accessor for PhotoLibraryWorker();
  *(v2 + 48) = sub_22FA7E874(&qword_281482350, 255, type metadata accessor for PhotoLibraryWorker);
  *(v2 + 16) = v15;
  v20 = swift_allocObject();
  v21 = v11;
  *(v20 + 16) = v11;
  v22 = swift_allocObject();
  v22[2] = v33;
  v22[3] = v34;
  v22[4] = v31;
  v22[5] = v19;
  v22[6] = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7690);
  v24 = swift_allocObject();
  *(v2 + 184) = v24;
  *(v24 + 48) = 0;
  *(v24 + 56) = 0;
  *(v24 + 16) = 0xD000000000000023;
  *(v24 + 24) = 0x800000022FCE09D0;
  *(v24 + 32) = v35;
  *(v24 + 40) = v36;
  *(v24 + 64) = 0;
  *(v24 + 72) = 0;
  *(v24 + 80) = 0;
  *(v24 + 88) = 0u;
  *(v24 + 104) = 0u;
  *(v24 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v24 + 144);
  *(v24 + 128) = &unk_22FCD2C30;
  *(v24 + 136) = v22;
  *(v24 + 184) = sub_22FA7E918;
  *(v24 + 192) = v20;
  *(v2 + 80) = v23;
  *(v2 + 88) = sub_22FA7ED2C(&qword_281481688, &qword_27DAD7690);
  *(v2 + 56) = v24;
  v25 = v31;

  v26 = v32;

  v27 = swift_task_alloc();
  *(v2 + 192) = v27;
  *v27 = v2;
  v27[1] = sub_22FA78D6C;
  v28 = *(v2 + 112);
  v29 = *(v2 + 120);

  return sub_22FB7D354(v2 + 56, 0xD000000000000015, 0x800000022FCE0A00, v28, v29);
}

uint64_t sub_22FA78D6C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_22FA7FB0C;
  }

  else
  {
    *(v4 + 208) = a1;
    __swift_destroy_boxed_opaque_existential_0(v4 + 56);
    v5 = sub_22FA7FB10;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FA78E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v10;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  return MEMORY[0x2822009F8](sub_22FA78ED0, 0, 0);
}

uint64_t sub_22FA78ED0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  v8 = sub_22FA7D8F8(v4, v3, v1, v2, sub_22FA7FB2C, v7);

  **(v0 + 16) = v8;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22FA79174(int a1, int a2, int a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v6 = sub_22FCC8C44();
  v5[4] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478);
  v7 = sub_22FCC89D4();
  v5[5] = v7;
  v8 = sub_22FCC8A84();
  v10 = v9;
  v5[6] = v9;

  v11 = swift_task_alloc();
  v5[7] = v11;
  *v11 = v5;
  v11[1] = sub_22FA7FB08;

  return sub_22FA78880(v6, v7, v8, v10);
}

uint64_t sub_22FA792B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v6[18] = *v5;
  v7 = sub_22FCC8684();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA793A0, 0, 0);
}

uint64_t sub_22FA793A0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 144);
  v4 = sub_22FA7E874(&qword_281481F90, a2, type metadata accessor for PhotoLibraryService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Calling hastings(from:options:)", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v8 = *(v2 + 160);
  v9 = *(v2 + 168);
  v11 = *(v2 + 144);
  v10 = *(v2 + 152);
  v13 = *(v2 + 128);
  v12 = *(v2 + 136);
  v14 = *(v2 + 120);
  v31 = *(v2 + 104);
  v32 = *(v2 + 96);
  v33 = *(v2 + 112);

  (*(v8 + 8))(v9, v10);
  v15 = v12[16];
  v16 = *(*(v15 + 112) + 112);
  *(v2 + 176) = v16;
  v17 = objc_allocWithZone(MEMORY[0x277D3C790]);
  v29 = v16;
  v18 = [v17 initWithPhotoLibrary_];
  *(v2 + 184) = v18;
  v30 = v18;
  v34 = v12[14];
  v35 = v12[15];

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v14, v13);
  *(v2 + 40) = type metadata accessor for PhotoLibraryWorker();
  *(v2 + 48) = sub_22FA7E874(&qword_281482350, 255, type metadata accessor for PhotoLibraryWorker);
  *(v2 + 16) = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = v11;
  v20 = swift_allocObject();
  v20[2] = v31;
  v20[3] = v33;
  v20[4] = v32;
  v20[5] = v29;
  v20[6] = v18;
  v20[7] = v11;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7690);
  v22 = swift_allocObject();
  *(v2 + 192) = v22;
  *(v22 + 48) = 0;
  *(v22 + 56) = 0;
  *(v22 + 16) = 0xD000000000000023;
  *(v22 + 24) = 0x800000022FCE09D0;
  *(v22 + 32) = v34;
  *(v22 + 40) = v35;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;
  *(v22 + 80) = 0;
  *(v22 + 88) = 0u;
  *(v22 + 104) = 0u;
  *(v22 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v22 + 144);
  *(v22 + 128) = &unk_22FCD2C18;
  *(v22 + 136) = v20;
  *(v22 + 184) = sub_22FA7E6A4;
  *(v22 + 192) = v19;
  *(v2 + 80) = v21;
  *(v2 + 88) = sub_22FA7ED2C(&qword_281481688, &qword_27DAD7690);
  *(v2 + 56) = v22;
  v23 = v29;

  sub_22FA7E820(v31, v33);

  v24 = v30;

  v25 = swift_task_alloc();
  *(v2 + 200) = v25;
  *v25 = v2;
  v25[1] = sub_22FA797AC;
  v26 = *(v2 + 120);
  v27 = *(v2 + 128);

  return sub_22FB7D354(v2 + 56, 0xD000000000000015, 0x800000022FCE0A00, v26, v27);
}

uint64_t sub_22FA797AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = sub_22FA79964;
  }

  else
  {
    *(v4 + 216) = a1;
    __swift_destroy_boxed_opaque_existential_0(v4 + 56);
    v5 = sub_22FA798DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FA798DC()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);
  v3 = *(v0 + 216);

  return v2(v3);
}

uint64_t sub_22FA79964()
{
  v1 = *(v0 + 184);

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FA799F0(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v9 = sub_22FA7E874(&qword_281481F90, v6, type metadata accessor for PhotoLibraryService);
    sub_22FA2CEC4(a2, v9);
    v10 = sub_22FCC8664();
    v11 = sub_22FCC8F24();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22FA28000, v10, v11, "extendedCuratedAssetsFromAssets is stuck", v12, 2u);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_22FA79BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v12;
  v8[9] = v13;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  v9 = sub_22FCC8384();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA79C98, 0, 0);
}

uint64_t sub_22FA79C98()
{
  sub_22FCC64B4();
  swift_allocObject();
  sub_22FCC64A4();
  sub_22FA7E874(&qword_27DAD7698, 255, MEMORY[0x277D3C718]);
  sub_22FCC6494();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;

  v8 = sub_22FA7E11C(v4, v1, v3, v11, sub_22FA7FB2C, v7);
  (*(v2 + 8))(v1, v12);

  **(v0 + 16) = v8;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22FA7A00C(int a1, void *a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = sub_22FCC8C44();
  v5[4] = v8;
  v9 = a2;
  v10 = a3;

  v11 = sub_22FCC6664();
  v13 = v12;

  v5[5] = v11;
  v5[6] = v13;
  v14 = sub_22FCC8A84();
  v16 = v15;

  v5[7] = v16;
  v17 = swift_task_alloc();
  v5[8] = v17;
  *v17 = v5;
  v17[1] = sub_22FA7A144;

  return sub_22FA792B0(v8, v11, v13, v14, v16);
}

uint64_t sub_22FA7A144()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  sub_22FA7E6C4(*(v3 + 40), *(v3 + 48));

  if (v2)
  {
    v6 = sub_22FCC6504();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    v6 = sub_22FCC8C24();

    v8 = v6;
    v7 = 0;
  }

  v9 = *(v4 + 24);
  (v9)[2](v9, v8, v7);

  _Block_release(v9);
  v10 = *(v5 + 8);

  return v10();
}

uint64_t sub_22FA7A340()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = sub_22FCC8684();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA7A44C, 0, 0);
}

uint64_t sub_22FA7A44C(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = sub_22FA7E874(&qword_281481F90, a2, type metadata accessor for PhotoLibraryService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Calling computeCacheDidLoad", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v8 = v2[9];
  v9 = v2[4];
  v10 = v2[5];
  v11 = v2[2];

  v12 = *(v10 + 8);
  v12(v8, v9);
  v13 = *(*(*(v11 + 128) + 112) + 112);
  if (sub_22FAE1C88(v13))
  {
    v32 = v13;
    sub_22FA2CEC4(v2[3], v4);
    v14 = sub_22FCC8664();
    v15 = sub_22FCC8EF4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22FA28000, v14, v15, "Submitting Social Groups Fast Pass Activity", v16, 2u);
      MEMORY[0x23190A000](v16, -1, -1);
    }

    v17 = v2[8];
    v18 = v2[4];

    v12(v17, v18);
    v19 = type metadata accessor for SocialGroupsFastPassActivityTaskSource();
    v20 = sub_22FA7E874(qword_28147C2E0, 255, type metadata accessor for SocialGroupsFastPassActivityTaskSource);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7688);
    v21 = sub_22FCC77B4();
    v22 = *(v21 - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_22FCD1800;
    (*(v22 + 104))(v24 + v23, *MEMORY[0x277D3C258], v21);
    type metadata accessor for FastPassActivity();
    swift_allocObject();
    sub_22FADBF34(0xD000000000000015, 0x800000022FCE09B0, v19, v20, 0, v24, &unk_2844A5930);
    sub_22FADB564();

    v13 = v32;
  }

  sub_22FA2CEC4(v2[3], v4);
  v25 = sub_22FCC8664();
  v26 = sub_22FCC8EF4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_22FA28000, v25, v26, "computeCacheDidLoad completed", v27, 2u);
    MEMORY[0x23190A000](v27, -1, -1);
  }

  v28 = v2[7];
  v29 = v2[4];

  v12(v28, v29);

  v30 = v2[1];

  return v30();
}

uint64_t sub_22FA7AB54(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FA7FB14;

  return sub_22FA7A340();
}

uint64_t sub_22FA7ABFC()
{
  v1[2] = *v0;
  v2 = sub_22FCC8684();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA7ACE0, 0, 0);
}

uint64_t sub_22FA7ACE0(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = sub_22FA7E874(&qword_281481F90, a2, type metadata accessor for PhotoLibraryService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "PLService requestPersonalizedSensingRefresh", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = v2[4];
  v8 = v2[5];
  v10 = v2[3];

  (*(v9 + 8))(v8, v10);
  v11 = swift_task_alloc();
  v2[6] = v11;
  *v11 = v2;
  v11[1] = sub_22FA7AE68;

  return sub_22FA8F6E4();
}

uint64_t sub_22FA7AE68(char a1)
{
  v4 = *v2;

  v5 = *(v4 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_22FA7B110(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FA7B1B8;

  return sub_22FA7ABFC();
}

uint64_t sub_22FA7B1B8(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_22FCC6504();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_22FA7B34C()
{
  v1[2] = *v0;
  v2 = sub_22FCC8684();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA7B430, 0, 0);
}

uint64_t sub_22FA7B430(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = sub_22FA7E874(&qword_281481F90, a2, type metadata accessor for PhotoLibraryService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "PLService exportMomentContextData", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = v2[4];
  v8 = v2[5];
  v10 = v2[3];

  v11 = *(v9 + 8);
  v2[6] = v11;
  v11(v8, v10);
  type metadata accessor for MomentContextProvider(0);
  v2[7] = swift_allocObject();
  sub_22FCC8674();
  v12 = swift_task_alloc();
  v2[8] = v12;
  *v12 = v2;
  v12[1] = sub_22FA7B604;

  return sub_22FB1FA70();
}

uint64_t sub_22FA7B604(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v7 = sub_22FA7B818;
  }

  else
  {
    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v7 = sub_22FA7B738;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22FA7B738()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];
  swift_setDeallocating();
  v2(v1 + OBJC_IVAR____TtC13PhotoAnalysis21MomentContextProvider_logger, v3);
  swift_deallocClassInstance();

  v4 = v0[1];
  v6 = v0[10];
  v5 = v0[11];

  return v4(v5, v6);
}

uint64_t sub_22FA7B818()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];
  swift_setDeallocating();
  v2(v1 + OBJC_IVAR____TtC13PhotoAnalysis21MomentContextProvider_logger, v3);
  swift_deallocClassInstance();

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FA7BA6C(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FA7BB14;

  return sub_22FA7B34C();
}

uint64_t sub_22FA7BB14()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;

  if (v2)
  {
    v5 = sub_22FCC6504();

    v6 = v5;
    v7 = 0;
  }

  else
  {
    v8 = sub_22FCC8A54();

    v7 = v8;
    v6 = 0;
    v5 = v8;
  }

  v9 = *(v3 + 24);
  (v9)[2](v9, v7, v6);

  _Block_release(v9);
  v10 = *(v4 + 8);

  return v10();
}

uint64_t sub_22FA7BCA8(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v2[15] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v2[16] = swift_task_alloc();
  v3 = sub_22FCC8684();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA7BDD4, 0, 0);
}

uint64_t sub_22FA7BDD4(uint64_t a1, uint64_t a2)
{
  v3 = v2[13];
  v4 = sub_22FA7E874(&qword_281481F90, a2, type metadata accessor for PhotoLibraryService);
  v5 = v2[15];
  if (v3 == 1)
  {
    sub_22FA2CEC4(v5, v4);
    v6 = sub_22FCC8664();
    v7 = sub_22FCC8F34();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22FA28000, v6, v7, "notifyAvailability: executing MemoryCreationFeatureAvailabilityTask", v8, 2u);
      MEMORY[0x23190A000](v8, -1, -1);
    }

    v9 = v2[20];
    v10 = v2[17];
    v11 = v2[18];
    v12 = v2[14];

    (*(v11 + 8))(v9, v10);
    v13 = *(v12 + 128);
    v14 = *(v13 + 112);
    v15 = type metadata accessor for MemoryCreationFeatureAvailabilityTask();
    swift_allocObject();

    v16 = sub_22FB33AE4(v13, v14);
    v2[21] = v16;

    v17 = *(v12 + 152);
    v2[22] = v17;
    v2[5] = v15;
    v2[6] = sub_22FA7E874(&qword_28147C3F0, 255, type metadata accessor for MemoryCreationFeatureAvailabilityTask);
    v2[2] = v16;

    return MEMORY[0x2822009F8](sub_22FA7C0E4, v17, 0);
  }

  else
  {
    sub_22FA2CEC4(v5, v4);
    v18 = sub_22FCC8664();
    v19 = sub_22FCC8F34();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = v2[13];
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v18, v19, "notifyAvailability: skipping %lu", v21, 0xCu);
      MEMORY[0x23190A000](v21, -1, -1);
    }

    v23 = v2[18];
    v22 = v2[19];
    v24 = v2[17];

    (*(v23 + 8))(v22, v24);

    v25 = v2[1];

    return v25();
  }
}

uint64_t sub_22FA7C0E4()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 128);
  *(v0 + 96) = *(v1 + 152);
  v4 = sub_22FCC96C4();
  MEMORY[0x231907FA0](v4);

  *(v0 + 184) = 0xEA0000000000206ELL;
  v5 = sub_22FCC8D14();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_22FA2D328(v0 + 16, v0 + 56);
  v6 = sub_22FA7E874(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager);
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v6;
  v7[4] = v1;
  sub_22FA2CF78((v0 + 56), (v7 + 5));
  swift_retain_n();
  v8 = sub_22FB22A48(0, 0, v3, &unk_22FCD2BF0, v7);
  *(v0 + 192) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8);
  v9 = swift_allocObject();
  *(v0 + 200) = v9;
  *(v9 + 16) = xmmword_22FCD1800;
  v10 = *(v2 + 80);
  *(v9 + 32) = *(v2 + 72);
  *(v9 + 40) = v10;

  v11 = swift_task_alloc();
  *(v0 + 208) = v11;
  *v11 = v0;
  v11[1] = sub_22FA7C34C;

  return sub_22FBE5228(v11, 0x6F6974617265704FLL, 0xEA0000000000206ELL, v8, v9, 0, 0xE000000000000000);
}

uint64_t sub_22FA7C34C()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = sub_22FA7C580;
  }

  else
  {
    v4 = sub_22FA7C478;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FA7C478()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2822009F8](sub_22FA7C500, 0, 0);
}

uint64_t sub_22FA7C500()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FA7C580()
{

  return MEMORY[0x2822009F8](sub_22FA7C600, 0, 0);
}

uint64_t sub_22FA7C600()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FA7C840(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_22FA7C8FC;

  return sub_22FA7BCA8(a1);
}

uint64_t sub_22FA7C8FC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = sub_22FCC6504();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_22FA7CAA8()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_22FA7CAF8()
{
  v1 = *(*(v0 + 16) + 144);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_22FA7CBA4;

  return sub_22FAE2BD8(v1);
}

uint64_t sub_22FA7CBA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22FA7CCEC(uint64_t a1, uint64_t a2)
{
  result = sub_22FA7E874(&qword_281481F98, a2, type metadata accessor for PhotoLibraryService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FA7CD44(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_22FA7E874(&qword_281481F88, a2, type metadata accessor for PhotoLibraryService);
  result = sub_22FA7E874(&qword_281481FA0, v3, type metadata accessor for PhotoLibraryService);
  *(a1 + 16) = result;
  return result;
}

uint64_t *sub_22FA7CDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a1;
  v29 = a4;
  v10 = *v6;
  v11 = sub_22FCC8684();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  swift_defaultActor_initialize();
  v6[14] = a1;
  v6[15] = a2;
  v6[16] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7680);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22FCD1800;
  *(v18 + 56) = type metadata accessor for PhotoLibraryWorker();
  *(v18 + 64) = sub_22FA7E874(&qword_281482350, 255, type metadata accessor for PhotoLibraryWorker);
  *(v18 + 32) = a3;
  v6[17] = v18;
  v20 = sub_22FA7E874(&qword_281481F90, v19, type metadata accessor for PhotoLibraryService);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_22FA2CEC4(v10, v20);
  type metadata accessor for StateHolder();
  v21 = swift_allocObject();
  *(v21 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) = 0;
  v21[2] = 0xD000000000000013;
  v21[3] = 0x800000022FCD2AC0;
  v22 = v28;
  v21[4] = v28;
  v21[5] = a2;
  v23 = *(v12 + 16);
  v23(v21 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger, v17, v11);
  v23(v15, v17, v11);
  sub_22FCC85E4();
  (*(v12 + 8))(v17, v11);
  v6[18] = v21;
  type metadata accessor for ServiceOperationManager();
  v24 = swift_allocObject();
  v25 = v29;

  swift_defaultActor_initialize();
  *(v24 + 144) = MEMORY[0x277D84F98];
  *(v24 + 152) = 0;
  *(v24 + 112) = v22;
  *(v24 + 120) = a2;
  *(v24 + 128) = v25;
  *(v24 + 136) = v30;
  v6[19] = v24;
  if (qword_281481FA8 != -1)
  {
    swift_once();
  }

  sub_22FB5A674();
  return v6;
}

uint64_t sub_22FA7D128(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FBE5060(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_22FA7D1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = *v3;
  v5 = sub_22FCC8684();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA7D2D4, 0, 0);
}

uint64_t sub_22FA7D2D4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 128);
  v4 = sub_22FA7E874(&qword_281481F90, a2, type metadata accessor for PhotoLibraryService);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Calling keyAsset(from:in:)", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = *(v2 + 144);
  v8 = *(v2 + 152);
  v11 = *(v2 + 128);
  v10 = *(v2 + 136);
  v13 = *(v2 + 112);
  v12 = *(v2 + 120);
  v14 = *(v2 + 104);
  v30 = *(v2 + 96);

  (*(v9 + 8))(v8, v10);
  v15 = v12[16];
  v16 = *(*(v15 + 112) + 112);
  *(v2 + 160) = v16;
  v17 = objc_allocWithZone(MEMORY[0x277D3C790]);
  v18 = v16;
  v19 = [v17 initWithPhotoLibrary_];
  *(v2 + 168) = v19;
  v31 = v12[14];
  v32 = v12[15];

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v14, v13);
  *(v2 + 40) = type metadata accessor for PhotoLibraryWorker();
  *(v2 + 48) = sub_22FA7E874(&qword_281482350, 255, type metadata accessor for PhotoLibraryWorker);
  *(v2 + 16) = v15;
  v20 = swift_allocObject();
  *(v20 + 16) = v11;
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v30;
  v21[4] = v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD76B0);
  v23 = swift_allocObject();
  *(v2 + 176) = v23;
  *(v23 + 48) = 0;
  *(v23 + 56) = 0;
  *(v23 + 16) = 0xD00000000000001FLL;
  *(v23 + 24) = 0x800000022FCE0C40;
  *(v23 + 32) = v31;
  *(v23 + 40) = v32;
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 80) = 0;
  *(v23 + 88) = 0u;
  *(v23 + 104) = 0u;
  *(v23 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v23 + 144);
  *(v23 + 128) = &unk_22FCD2DA0;
  *(v23 + 136) = v21;
  *(v23 + 184) = sub_22FA7F410;
  *(v23 + 192) = v20;
  *(v2 + 80) = v22;
  *(v2 + 88) = sub_22FA7ED2C(&qword_27DAD76B8, &qword_27DAD76B0);
  *(v2 + 56) = v23;
  v24 = v18;

  v25 = v19;

  v26 = swift_task_alloc();
  *(v2 + 184) = v26;
  *v26 = v2;
  v26[1] = sub_22FA7D6A8;
  v27 = *(v2 + 104);
  v28 = *(v2 + 112);

  return sub_22FB7CDB0(v2 + 56, 0xD00000000000001BLL, 0x800000022FCE0C60, v27, v28);
}

uint64_t sub_22FA7D6A8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {
    v7 = sub_22FA7D86C;
  }

  else
  {
    *(v6 + 200) = a2;
    *(v6 + 208) = a1;
    __swift_destroy_boxed_opaque_existential_0(v6 + 56);
    v7 = sub_22FA7D7E4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22FA7D7E4()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);

  return v2(v3, v4);
}

uint64_t sub_22FA7D86C()
{
  v1 = *(v0 + 168);

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

char *sub_22FA7D8F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char *a5, uint64_t a6)
{
  v10 = sub_22FCC8A84();
  if (!*(a2 + 16))
  {

    goto LABEL_11;
  }

  v12 = sub_22FA2DB54(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_22FA2F7D8(*(a2 + 56) + 32 * v12, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (*&v66 != sub_22FCC8A84() || v67 != v15)
  {
    v17 = sub_22FCC9704();

    if (v17)
    {
      goto LABEL_61;
    }

LABEL_11:
    sub_22FA3A77C(0, &qword_27DAD76A8);
    v18 = &selRef_initForCuratedLibrary;
    goto LABEL_12;
  }

LABEL_61:
  sub_22FA3A77C(0, &qword_28147AE20);
  v18 = &selRef_initForMemories;
LABEL_12:
  v69 = [objc_allocWithZone(MEMORY[0x277D3B678]) *v18];
  v19 = sub_22FCC8A84();
  if (*(a2 + 16))
  {
    v21 = sub_22FA2DB54(v19, v20);
    v23 = v22;

    if (v23)
    {
      sub_22FA2F7D8(*(a2 + 56) + 32 * v21, aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478);
      if (swift_dynamicCast())
      {
        [v69 setDoSemanticalDeduping_];
      }
    }
  }

  else
  {
  }

  v24 = sub_22FCC8A84();
  if (*(a2 + 16))
  {
    v26 = sub_22FA2DB54(v24, v25);
    v28 = v27;

    if (v28)
    {
      sub_22FA2F7D8(*(a2 + 56) + 32 * v26, aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478);
      if (swift_dynamicCast())
      {
        [v69 setPersonDedupingType_];
      }
    }
  }

  else
  {
  }

  v29 = sub_22FCC8A84();
  if (*(a2 + 16))
  {
    v31 = sub_22FA2DB54(v29, v30);
    v33 = v32;

    if (v33)
    {
      sub_22FA2F7D8(*(a2 + 56) + 32 * v31, aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478);
      if (swift_dynamicCast())
      {
        [v69 setDoFinalPass_];
      }
    }
  }

  else
  {
  }

  v34 = sub_22FCC8A84();
  if (*(a2 + 16))
  {
    v36 = sub_22FA2DB54(v34, v35);
    v38 = v37;

    if (v38)
    {
      sub_22FA2F7D8(*(a2 + 56) + 32 * v36, aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478);
      if (swift_dynamicCast())
      {
        [v69 setFinalPassTimeInterval_];
      }
    }
  }

  else
  {
  }

  v39 = [objc_allocWithZone(MEMORY[0x277D3B688]) initWithSimilarityModelClass_];
  v40 = [a3 librarySpecificFetchOptions];
  v41 = [objc_opt_self() assetPropertySetsForCuration];
  if (!v41)
  {
    sub_22FCC8C44();
    v41 = sub_22FCC8C24();
  }

  [v40 setFetchPropertySets_];

  v42 = objc_opt_self();
  v43 = sub_22FCC8C24();
  v44 = [v42 fetchAssetsWithUUIDs:v43 options:v40];

  if (v44)
  {
    v45 = [v42 clsAllAssetsFromFetchResult:v44 prefetchOptions:31 curationContext:a4];
    if (!v45)
    {
      sub_22FA3A77C(0, &qword_28147ADE8);
      sub_22FCC8C44();
      v45 = sub_22FCC8C24();
    }

    aBlock[4] = a5;
    aBlock[5] = a6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22FB59114;
    aBlock[3] = &block_descriptor_50;
    v46 = _Block_copy(aBlock);

    v47 = [v39 dejunkedDedupedAssetsInAssets:v45 options:v69 debugInfo:0 progressBlock:v46];
    _Block_release(v46);

    sub_22FA3A77C(0, &qword_28147ADE8);
    v48 = sub_22FCC8C44();

    if (v48 >> 62)
    {
LABEL_64:
      v49 = sub_22FCC92C4();
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v62 = v44;
    v63 = v40;
    v64 = v39;
    if (v49)
    {
      v40 = 0;
      a5 = MEMORY[0x277D84F90];
      v44 = &selRef_setDateStyle_;
      do
      {
        v50 = v40;
        while (1)
        {
          if ((v48 & 0xC000000000000001) != 0)
          {
            v51 = MEMORY[0x231908810](v50, v48);
          }

          else
          {
            if (v50 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_63;
            }

            v51 = *(v48 + 8 * v50 + 32);
          }

          v39 = v51;
          v40 = (v50 + 1);
          if (__OFADD__(v50, 1))
          {
            __break(1u);
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          v52 = [v51 uuid];
          if (v52)
          {
            break;
          }

          ++v50;
          if (v40 == v49)
          {
            goto LABEL_58;
          }
        }

        v53 = v52;
        v61 = sub_22FCC8A84();
        v55 = v54;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a5 = sub_22FAC1D0C(0, *(a5 + 2) + 1, 1, a5);
        }

        v57 = *(a5 + 2);
        v56 = *(a5 + 3);
        v39 = (v57 + 1);
        if (v57 >= v56 >> 1)
        {
          a5 = sub_22FAC1D0C((v56 > 1), v57 + 1, 1, a5);
        }

        *(a5 + 2) = v39;
        v58 = &a5[16 * v57];
        *(v58 + 4) = v61;
        *(v58 + 5) = v55;
      }

      while (v40 != v49);
    }

    else
    {
      a5 = MEMORY[0x277D84F90];
    }

LABEL_58:
  }

  else
  {
    sub_22FA7E8BC();
    swift_allocError();
    *v59 = 2;
    *(v59 + 8) = 0;
    *(v59 + 16) = 0;
    *(v59 + 24) = 0;
    *(v59 + 32) = 3;
    swift_willThrow();
  }

  return a5;
}

char *sub_22FA7E11C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = [objc_allocWithZone(MEMORY[0x277D3B670]) init];
  v46 = [objc_allocWithZone(MEMORY[0x277D3B660]) initWithDuration_];
  [v46 setTargetNumberOfItems_];
  if (sub_22FCC8364())
  {
    v10 = sub_22FCC8E64();
  }

  else
  {
    v10 = 0;
  }

  [v46 setUuidsOfRequiredAssets_];

  if (sub_22FCC8354())
  {
    v11 = sub_22FCC8E64();
  }

  else
  {
    v11 = 0;
  }

  [v46 setUuidsOfEligibleAssets_];

  v12 = [a3 librarySpecificFetchOptions];
  v13 = [objc_opt_self() assetPropertySetsForCuration];
  if (!v13)
  {
    sub_22FCC8C44();
    v13 = sub_22FCC8C24();
  }

  [v12 setFetchPropertySets_];

  v14 = objc_opt_self();
  v15 = sub_22FCC8C24();
  v16 = [v14 fetchAssetsWithUUIDs:v15 options:v12];

  if (v16)
  {
    v41 = v16;
    v17 = [objc_opt_self() transientAssetCollectionWithAssetFetchResult:v16 title:0];
    v18 = objc_opt_self();
    v19 = v17;
    v20 = [v18 feederPrefetchOptionsWithDefaultMode_];
    v21 = [objc_allocWithZone(MEMORY[0x277D27710]) initWithAssetCollection:v19 assetFetchOptions:0 feederPrefetchOptions:v20 curationContext:a4];

    aBlock[4] = a5;
    aBlock[5] = a6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22FB59114;
    aBlock[3] = &block_descriptor_3;
    v22 = _Block_copy(aBlock);

    v40 = v21;
    v23 = [v43 bestAssetsForFeeder:v21 options:v46 debugInfo:0 progressBlock:v22];
    _Block_release(v22);
    sub_22FA3A77C(0, &qword_28147ADE8);
    v24 = sub_22FCC8C44();

    v42 = v12;
    if (v24 >> 62)
    {
LABEL_31:
      v25 = sub_22FCC92C4();
      if (v25)
      {
LABEL_12:
        v26 = 0;
        v44 = MEMORY[0x277D84F90];
        do
        {
          v27 = v26;
          while (1)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v28 = MEMORY[0x231908810](v27, v24);
            }

            else
            {
              if (v27 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v28 = *(v24 + 8 * v27 + 32);
            }

            v29 = v28;
            v26 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              __break(1u);
LABEL_30:
              __break(1u);
              goto LABEL_31;
            }

            v30 = [v28 uuid];
            if (v30)
            {
              break;
            }

            ++v27;
            if (v26 == v25)
            {
              goto LABEL_33;
            }
          }

          v31 = v30;
          v32 = sub_22FCC8A84();
          v39 = v33;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_22FAC1D0C(0, *(v44 + 2) + 1, 1, v44);
          }

          v35 = *(v44 + 2);
          v34 = *(v44 + 3);
          if (v35 >= v34 >> 1)
          {
            v44 = sub_22FAC1D0C((v34 > 1), v35 + 1, 1, v44);
          }

          *(v44 + 2) = v35 + 1;
          v36 = &v44[16 * v35];
          *(v36 + 4) = v32;
          *(v36 + 5) = v39;
        }

        while (v26 != v25);
        goto LABEL_33;
      }
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_12;
      }
    }

    v44 = MEMORY[0x277D84F90];
LABEL_33:

    return v44;
  }

  sub_22FA7E8BC();
  swift_allocError();
  *v37 = 1;
  *(v37 + 8) = 0;
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = 3;
  swift_willThrow();

  return v44;
}

uint64_t sub_22FA7E6C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22FA7E718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22FA2C21C;

  return sub_22FA79BC4(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_22FA7E820(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22FA7E874(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22FA7E8BC()
{
  result = qword_27DAD76A0;
  if (!qword_27DAD76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD76A0);
  }

  return result;
}

uint64_t sub_22FA7E938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[2];
  v12 = v5[3];
  v13 = v5[4];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_22FA2C21C;

  return sub_22FA78E9C(a1, a2, a3, a4, a5, v11, v12, v13);
}

uint64_t sub_22FA7EA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22FA2C030;

  return sub_22FA77BC8(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_22FA7EB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22FA2C21C;

  return sub_22FA762E8(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_22FA7EC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22FA2C21C;

  return sub_22FA747D4(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_22FA7ED2C(unint64_t *a1, uint64_t *a2)
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

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22FA7EDF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22FA2C21C;

  return sub_22FA7C840(v2, v3, v4);
}

uint64_t sub_22FA7EEAC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22FA2C21C;

  return sub_22FA7BA6C(v2, v3);
}

uint64_t sub_22FA7EF58()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22FA2C21C;

  return sub_22FA7B110(v2, v3);
}

uint64_t objectdestroy_126Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA7F044()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22FA2C21C;

  return sub_22FA7AB54(v2, v3);
}

uint64_t sub_22FA7F0F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22FA2C21C;

  return sub_22FA7A00C(v2, v3, v4, v5, v6);
}

uint64_t sub_22FA7F1B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22FA2C21C;

  return sub_22FA79174(v2, v3, v4, v5, v6);
}

uint64_t sub_22FA7F280()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22FA2C21C;

  return sub_22FA78554(v2, v3, v4, v5, v6);
}

uint64_t sub_22FA7F348()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22FA2C21C;

  return sub_22FA76FE8(v2, v3, v4, v5, v6);
}

uint64_t sub_22FA7F418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22FA2C21C;

  return sub_22FA76A50(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_22FA7F4FC(BOOL *a1)
{
  result = (*(v1 + 16))();
  if (a1)
  {
    *a1 = (result & 1) == 0;
  }

  return result;
}

uint64_t objectdestroy_171Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22FA7F590()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22FA2C21C;

  return sub_22FA76560(v2, v3, v4, v5, v6);
}

uint64_t sub_22FA7F658()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C21C;

  return sub_22FA75764(v2, v3, v5, v4);
}

uint64_t sub_22FA7F718()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C030;

  return sub_22FA7381C(v3, v4, v2, v5);
}

uint64_t objectdestroy_117Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22FA7F82C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FA2C21C;

  return sub_22FBE3398(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t get_enum_tag_for_layout_string_13PhotoAnalysis0A14LibraryServiceC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
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

uint64_t sub_22FA7F930(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_22FA7F978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_22FA7F9C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_22FA7F9F4()
{
  result = qword_27DAD76D0;
  if (!qword_27DAD76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD76D0);
  }

  return result;
}

unint64_t sub_22FA7FA4C()
{
  result = qword_27DAD76D8;
  if (!qword_27DAD76D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD76D8);
  }

  return result;
}

unint64_t sub_22FA7FAA0()
{
  result = qword_27DAD76E0;
  if (!qword_27DAD76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD76E0);
  }

  return result;
}

uint64_t sub_22FA7FB30@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_22FCC6524();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22FCC65F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x277D3B238]);
  v10 = sub_22FCC6564();
  v11 = [v9 initWithLibraryURL_];

  v12 = [v11 privateCacheDirectoryWithSubType_];
  sub_22FCC8A84();

  sub_22FCC6544();

  v14[2] = 0xD00000000000001CLL;
  v14[3] = 0x800000022FCE0D60;
  (*(v2 + 104))(v4, *MEMORY[0x277CC91D8], v1);
  sub_22FA7FD88();
  sub_22FCC65E4();

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_22FA7FD88()
{
  result = qword_28147AFD0;
  if (!qword_28147AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147AFD0);
  }

  return result;
}

uint64_t sub_22FA7FDE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FCC65F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for MomentGraphResource()
{
  result = qword_28147FCE0;
  if (!qword_28147FCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FA7FEC4()
{
  result = sub_22FCC65F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FA7FF38()
{
  v0 = sub_22FC154F0();
  MEMORY[0x231907FA0](v0);

  return 0x656372756F736552;
}

unint64_t sub_22FA7FF94(uint64_t a1)
{
  result = sub_22FA7FFBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22FA7FFBC()
{
  result = qword_28147FCF8[0];
  if (!qword_28147FCF8[0])
  {
    type metadata accessor for MomentGraphResource();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28147FCF8);
  }

  return result;
}

unint64_t sub_22FA8003C()
{
  result = qword_281482350;
  if (!qword_281482350)
  {
    type metadata accessor for PhotoLibraryWorker();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281482350);
  }

  return result;
}

uint64_t sub_22FA80094@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SocialGroupsFastPassActivityTaskSource();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a1 = v2;
  return result;
}

uint64_t sub_22FA800D0()
{
  sub_22FA812F8();
  result = sub_22FCC91C4();
  qword_28147F5C8 = result;
  return result;
}

uint64_t sub_22FA80138()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_27DAD76E8);
  __swift_project_value_buffer(v0, qword_27DAD76E8);
  if (qword_28147F5C0 != -1)
  {
    swift_once();
  }

  v1 = qword_28147F5C8;
  return sub_22FCC8694();
}

Swift::Void __swiftcall PublicEventCachingTask.timeout(fatal:)(Swift::Bool fatal)
{
  if (fatal)
  {
    sub_22FCC94D4();
    __break(1u);
  }
}

uint64_t sub_22FA80228(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_22FA8024C, 0, 0);
}

uint64_t sub_22FA8024C()
{
  if (qword_28147F5C0 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = qword_28147F5C8;
  sub_22FCC76D4();
  swift_allocObject();
  v4 = v3;
  v0[11] = sub_22FCC76C4();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v0[6] = sub_22FA4ED4C;
  v0[7] = v5;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_4;
  v6 = _Block_copy(v0 + 2);
  v7 = objc_opt_self();

  v8 = [v7 progressReporterWithProgressBlock_];
  v0[12] = v8;
  _Block_release(v6);

  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_22FA8042C;

  return sub_22FA8066C(v8);
}

uint64_t sub_22FA8042C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_22FA805F4;
  }

  else
  {
    v2 = sub_22FA80540;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FA80540()
{
  sub_22FCC9004();

  sub_22FCC76B4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FA805F4()
{
  sub_22FCC76B4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FA8066C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FA8068C, 0, 0);
}

uint64_t sub_22FA8068C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D3C7B8]) initForSceneNetOnly_];
  if (qword_28147F5C0 != -1)
  {
    swift_once();
  }

  v3 = v0[2];
  v2 = v0[3];
  v4 = [objc_allocWithZone(MEMORY[0x277D3BB80]) initWithSceneTaxonomy:v1 loggingConnection:qword_28147F5C8];
  v0[4] = v4;

  v5 = [objc_allocWithZone(MEMORY[0x277D3BB68]) initWithDisambiguator_];
  v0[5] = v5;
  v6 = *(v2 + OBJC_IVAR___PHAPublicEventCachingTask_graphManager);
  v0[6] = v6;
  v7 = swift_task_alloc();
  v0[7] = v7;
  v7[2] = v2;
  v7[3] = v5;
  v7[4] = v3;

  return MEMORY[0x2822009F8](sub_22FA807C4, v6, 0);
}

uint64_t sub_22FA807C4()
{
  v1 = [*(*(v0 + 48) + 112) workingContext];
  sub_22FCC9114();
  *(v0 + 64) = 0;

  return MEMORY[0x2822009F8](sub_22FA8089C, 0, 0);
}

uint64_t sub_22FA8089C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FA80904()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

id PublicEventCachingTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PublicEventCachingTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22FA80AF8()
{
  v1 = *(*v0 + OBJC_IVAR___PHAPublicEventCachingTask_name);

  return v1;
}

uint64_t sub_22FA80B38()
{
  v1 = *(*v0 + OBJC_IVAR___PHAPublicEventCachingTask_identifier);

  return v1;
}

uint64_t sub_22FA80B8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72B8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22FCD1800;
  *(v0 + 32) = type metadata accessor for PublicEventCacheInvalidationTask();
  return v0;
}

uint64_t sub_22FA80C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FA80228(a2, a3);
}

uint64_t sub_22FA80CAC(uint64_t result)
{
  if (result)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_22FA80D10()
{
  v1 = *(*v0 + OBJC_IVAR___PHAPublicEventCachingTask_incrementalKey);

  return v1;
}

uint64_t sub_22FA80D50(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_22FA814F4(&qword_28147F5A0, a2, type metadata accessor for PublicEventCachingTask);
  result = sub_22FA814F4(&qword_28147F5A8, v3, type metadata accessor for PublicEventCachingTask);
  *(a1 + 16) = result;
  return result;
}

void sub_22FA80E10(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = [a1 momentNodes];
  v9 = [objc_allocWithZone(MEMORY[0x277D3BB70]) initWithGraph:a1 momentNodeCollection:v8 cachingOptions:*(a2 + OBJC_IVAR___PHAPublicEventCachingTask_cachingOptions)];
  v10 = [*(*(a2 + OBJC_IVAR___PHAPublicEventCachingTask_graphManager) + 112) publicEventManager];
  v14[0] = 0;
  v11 = [a3 executeFetchRequest:v9 publicEventManager:v10 progressReporter:a4 error:v14];

  if (v11)
  {
    v12 = v14[0];
  }

  else
  {
    v13 = v14[0];
    sub_22FCC6514();

    swift_willThrow();
  }
}

id sub_22FA80F7C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = sub_22FCC67F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR___PHAPublicEventCachingTask_periodicity] = 0x40F5180000000000;
  v12 = &v4[OBJC_IVAR___PHAPublicEventCachingTask_name];
  *v12 = 0xD000000000000016;
  v12[1] = 0x800000022FCD3060;
  v13 = &v4[OBJC_IVAR___PHAPublicEventCachingTask_identifier];
  sub_22FCC67E4();
  v14 = sub_22FCC67B4();
  v16 = v15;
  (*(v9 + 8))(v11, v8);
  *v13 = v14;
  v13[1] = v16;
  *&v4[OBJC_IVAR___PHAPublicEventCachingTask_version] = 0;
  *&v4[OBJC_IVAR___PHAPublicEventCachingTask_priority] = 4;
  v17 = &v4[OBJC_IVAR___PHAPublicEventCachingTask_incrementalKey];
  *v17 = 0;
  v17[1] = 0;
  v4[OBJC_IVAR___PHAPublicEventCachingTask_shouldRecordCompletion] = 1;
  v18 = &v4[OBJC_IVAR___PHAPublicEventCachingTask_worker];
  v18[3] = type metadata accessor for MomentGraphWorker();
  v18[4] = sub_22FA814F4(&qword_281480230, 255, type metadata accessor for MomentGraphWorker);
  *v18 = a2;
  *&v4[OBJC_IVAR___PHAPublicEventCachingTask_graphManager] = *(a2 + 112);
  sub_22FA2E6E4(a3, &v4[OBJC_IVAR___PHAPublicEventCachingTask_taskProductivityReporter]);
  if (a1)
  {
    *&v4[OBJC_IVAR___PHAPublicEventCachingTask_cachingOptions] = a1;

    if ([a1 jobContext] == 4)
    {
      if (qword_27DAD6E68 != -1)
      {
        swift_once();
      }

      v19 = sub_22FCC8684();
      __swift_project_value_buffer(v19, qword_27DAD76E8);
      v20 = sub_22FCC8664();
      v21 = sub_22FCC8F14();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_22FA28000, v20, v21, "Received caching options with unexpected job context 'unknown'.", v22, 2u);
        MEMORY[0x23190A000](v22, -1, -1);
      }
    }
  }

  else
  {
    v23 = objc_allocWithZone(MEMORY[0x277D27778]);

    v24 = [v23 init];
    v25 = OBJC_IVAR___PHAPublicEventCachingTask_cachingOptions;
    *&v4[OBJC_IVAR___PHAPublicEventCachingTask_cachingOptions] = v24;
    [v24 setFetchLimit_];
    [*&v4[v25] setJobContext_];
  }

  v30.receiver = v4;
  v30.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v30, sel_init);
  sub_22FA518B4(a3);
  return v26;
}