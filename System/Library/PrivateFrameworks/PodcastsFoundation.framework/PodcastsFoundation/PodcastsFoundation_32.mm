uint64_t sub_1D9009844(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A98, &unk_1D91A6B50);
  v34 = a2;
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v35 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v34 & 1) == 0)
      {

        v23 = v21;
      }

      v24 = *(v8 + 40);
      sub_1D9179DBC();
      sub_1D9179DDC();
      if (v22)
      {
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }

      result = sub_1D9179E1C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v35;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_37;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v8;
  return result;
}

uint64_t sub_1D9009B1C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1D917978C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v24;
      }

      v26 = *(v10 + 40);
      result = sub_1D9179DAC();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v7 + 32);
      if (v34 >= 64)
      {
        bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v34;
      }

      *(v7 + 16) = 0;
    }

    v5 = v35;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

uint64_t sub_1D9009D7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B08, &qword_1D9199738);
  v38 = a2;
  result = sub_1D917978C();
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
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v39 = *(v23 + 8);
      v25 = *(v23 + 16);
      v26 = *(v22 + 8 * v21);
      if ((v38 & 1) == 0)
      {
        sub_1D8DB5EC8(v24, v39, *(v23 + 16));
      }

      v27 = *(v8 + 40);
      sub_1D9179DBC();
      if (v25)
      {
        MEMORY[0x1DA72B390](1);
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        MEMORY[0x1DA72B390](0);
        MEMORY[0x1DA72B3C0](v24);
      }

      result = sub_1D9179E1C();
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

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v24;
      *(v17 + 8) = v39;
      *(v17 + 16) = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
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
        goto LABEL_40;
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
      goto LABEL_38;
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

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_1D900A094(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1D917978C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v23;
      }

      v26 = *(v10 + 40);
      result = sub_1D917913C();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1D900A2FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4230, &unk_1D91946B0);
  v67 = a2;
  v7 = sub_1D917978C();
  v8 = v7;
  if (*(v5 + 16))
  {
    v9 = 0;
    v65 = (v5 + 64);
    v66 = v5;
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
    v63 = v3;
    v64 = (v10 + 63) >> 6;
    v13 = v7 + 64;
    v68 = v7;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v20 = (v12 - 1) & v12;
LABEL_17:
      v24 = v19 | (v9 << 6);
      v77 = v20;
      if (v67)
      {
        v25 = *(v5 + 56);
        v26 = *(v5 + 48) + 96 * v24;
        v27 = *v26;
        v28 = *(v26 + 8);
        v29 = *(v26 + 9);
        v30 = *(v26 + 10);
        v31 = *(v26 + 11);
        v32 = *(v26 + 12);
        v33 = *(v26 + 13);
        v34 = *(v26 + 16);
        v35 = *(v26 + 32);
        v36 = *(v26 + 88) | (*(v26 + 90) << 16);
        v37 = *(v26 + 40);
        v39 = *(v26 + 48);
        v38 = *(v26 + 64);
        v40 = *(v26 + 80);
        v76 = *(v25 + 8 * v24);
      }

      else
      {
        v41 = (*(v5 + 48) + 96 * v24);
        v42 = v41[2];
        v43 = v41[3];
        v44 = v41[4];
        *&v89[11] = *(v41 + 75);
        v88 = v43;
        *v89 = v44;
        v45 = v41[1];
        v85 = *v41;
        v86 = v45;
        v87 = v42;
        v46 = *(*(v5 + 56) + 8 * v24);
        v80 = v43;
        v82 = *v89;
        v40 = *&v89[16];
        v74 = *&v89[24] | (v89[26] << 16);
        v37 = BYTE8(v42);
        v35 = v42;
        v78 = v45;
        v33 = BYTE13(v85);
        v70 = BYTE11(v85);
        v72 = BYTE12(v85);
        v47 = BYTE10(v85);
        v29 = BYTE9(v85);
        v28 = BYTE8(v85);
        v27 = v85;
        sub_1D8F0C914(&v85, v84);
        v76 = v46;
        v8 = v68;

        v30 = v47;
        v36 = v74;
        v31 = v70;
        v32 = v72;
        v34 = v78;
        v39 = v80;
        v38 = v82;
      }

      v48 = *(v8 + 40);
      v69 = v27;
      *&v85 = v27;
      BYTE8(v85) = v28;
      v71 = v29;
      BYTE9(v85) = v29;
      v49 = v30;
      BYTE10(v85) = v30;
      v50 = v31;
      BYTE11(v85) = v31;
      v51 = v32;
      BYTE12(v85) = v32;
      v75 = v33;
      BYTE13(v85) = v33;
      v79 = v34;
      v81 = v39;
      v86 = v34;
      *&v87 = v35;
      v52 = v37;
      BYTE8(v87) = v37;
      v88 = v39;
      *v89 = v38;
      v83 = v38;
      v73 = v40;
      *&v89[16] = v40;
      v53 = HIWORD(v36);
      v89[26] = BYTE2(v36);
      v54 = v36;
      *&v89[24] = v36;
      sub_1D9179DBC();
      EpisodeStateModel.hash(into:)(v84);
      result = sub_1D9179E1C();
      v8 = v68;
      v55 = -1 << *(v68 + 32);
      v56 = result & ~v55;
      v57 = v56 >> 6;
      if (((-1 << v56) & ~*(v13 + 8 * (v56 >> 6))) == 0)
      {
        v58 = 0;
        v59 = (63 - v55) >> 6;
        v16 = v81;
        v15 = v83;
        v17 = v79;
        while (++v57 != v59 || (v58 & 1) == 0)
        {
          v60 = v57 == v59;
          if (v57 == v59)
          {
            v57 = 0;
          }

          v58 |= v60;
          v61 = *(v13 + 8 * v57);
          if (v61 != -1)
          {
            v14 = __clz(__rbit64(~v61)) + (v57 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v56) & ~*(v13 + 8 * (v56 >> 6)))) | v56 & 0x7FFFFFFFFFFFFFC0;
      v16 = v81;
      v15 = v83;
      v17 = v79;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v18 = *(v68 + 48) + 96 * v14;
      *v18 = v69;
      *(v18 + 8) = v28;
      *(v18 + 9) = v71;
      *(v18 + 10) = v49;
      *(v18 + 11) = v50;
      *(v18 + 12) = v51;
      *(v18 + 13) = v75;
      *(v18 + 16) = v17;
      *(v18 + 32) = v35;
      *(v18 + 40) = v52;
      *(v18 + 48) = v16;
      *(v18 + 64) = v15;
      *(v18 + 80) = v73;
      *(v18 + 90) = v53;
      *(v18 + 88) = v54;
      *(*(v68 + 56) + 8 * v14) = v76;
      ++*(v68 + 16);
      v5 = v66;
      v12 = v77;
    }

    v21 = v9;
    result = v65;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v64)
      {
        break;
      }

      v23 = v65[v9];
      ++v21;
      if (v23)
      {
        v19 = __clz(__rbit64(v23));
        v20 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v67 & 1) == 0)
    {

      v3 = v63;
      goto LABEL_36;
    }

    v62 = 1 << *(v5 + 32);
    v3 = v63;
    if (v62 >= 64)
    {
      bzero(v65, ((v62 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v65 = -1 << v62;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1D900A760(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AF0, &qword_1D9199728);
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v21);
      result = sub_1D9179E1C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_1D900A9E0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for EpisodePlayState();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE8, &unk_1D91A6BD0);
  v40 = a2;
  result = sub_1D917978C();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + 8 * v24);
      v26 = *(v39 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v40)
      {
        sub_1D900C004(v27, v41, type metadata accessor for EpisodePlayState);
      }

      else
      {
        sub_1D900BF9C(v27, v41, type metadata accessor for EpisodePlayState);
      }

      v28 = *(v12 + 40);
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v25);
      result = sub_1D9179E1C();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + 8 * v20) = v25;
      result = sub_1D900C004(v41, *(v12 + 56) + v26 * v20, type metadata accessor for EpisodePlayState);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1D900AD3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AC8, &qword_1D91946A0);
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v21);
      result = sub_1D9179E1C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_1D900AFBC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1D9176EAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4228, &unk_1D9188D70);
  v43 = a2;
  result = sub_1D917978C();
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
      sub_1D8D111F4(&qword_1EDCD5920, MEMORY[0x1E69695A8]);
      result = sub_1D917813C();
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

uint64_t sub_1D900B398(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4218, &qword_1D9188D60);
  v33 = a2;
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1D9179DBC();
      if (v21 == 2)
      {
        MEMORY[0x1DA72B390](1);
      }

      else
      {
        MEMORY[0x1DA72B390](0);
        sub_1D9179DDC();
      }

      result = sub_1D9179E1C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_38;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_1D900B648(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4210, &unk_1D91A6BC0);
  v39 = a2;
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 32 * v22;
      v40 = *v26;
      v41 = *(v26 + 8);
      v27 = *(v26 + 24);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 32 * v16;
      *v18 = v40;
      *(v18 + 8) = v41;
      *(v18 + 24) = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1D900B924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9A50, &unk_1D9197130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D900B998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *(type metadata accessor for MediaRequest.Params() - 8);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v13 = v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  v15 = *(v13 + 8);
  return sub_1D90011C0(a1, a2, a3, a4, a5, *(v5 + 16), v5 + v12, *v13);
}

uint64_t type metadata accessor for BaseFeedResponse()
{
  result = qword_1ECAB8C80;
  if (!qword_1ECAB8C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D900BB94()
{
  result = type metadata accessor for MediaRequest.Params();
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

uint64_t sub_1D900BF9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D900C004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D900C078(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v42 = MEMORY[0x1E69E7CC0];
  sub_1D8D41BE0(0, v1, 0);
  v2 = v42;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_1D91792DC();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v33 = v3 + 72;
  v34 = v1;
  v35 = v9;
  v36 = v3 + 64;
  v37 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_28;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_29;
    }

    v38 = v8;
    v12 = *(*(v3 + 48) + 8 * v7);
    v13 = (*(v3 + 56) + 32 * v7);
    v14 = v13[1];
    v39 = *v13;
    v40 = v2;
    v15 = v13[3];

    v16 = v12;

    v17 = [v16 description];
    v18 = sub_1D917820C();
    v20 = v19;

    v41 = v18;
    MEMORY[0x1DA7298F0](46, 0xE100000000000000);
    if (v14)
    {
      v21 = v39;
    }

    else
    {
      v21 = 0;
    }

    if (v14)
    {
      v22 = v14;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    MEMORY[0x1DA7298F0](v21, v22);
    v2 = v40;

    v24 = *(v40 + 16);
    v23 = *(v40 + 24);
    if (v24 >= v23 >> 1)
    {
      result = sub_1D8D41BE0((v23 > 1), v24 + 1, 1);
      v2 = v40;
    }

    *(v2 + 16) = v24 + 1;
    v25 = v2 + 16 * v24;
    *(v25 + 32) = v41;
    *(v25 + 40) = v20;
    v3 = v37;
    v10 = 1 << *(v37 + 32);
    if (v7 >= v10)
    {
      goto LABEL_30;
    }

    v4 = v36;
    v26 = *(v36 + 8 * v11);
    if ((v26 & (1 << v7)) == 0)
    {
      goto LABEL_31;
    }

    v9 = v35;
    if (v35 != *(v37 + 36))
    {
      goto LABEL_32;
    }

    v27 = v26 & (-2 << (v7 & 0x3F));
    if (v27)
    {
      v10 = __clz(__rbit64(v27)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v11 << 6;
      v29 = v11 + 1;
      v30 = (v33 + 8 * v11);
      while (v29 < (v10 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_1D8D9B144(v7, v35, 0);
          v10 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_1D8D9B144(v7, v35, 0);
    }

LABEL_4:
    v8 = v38 + 1;
    v7 = v10;
    if (v38 + 1 == v34)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1D900C36C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v1, 0);
    v3 = v37;
    v4 = v2 + 64;
    v5 = -1 << *(v2 + 32);
    v6 = sub_1D91792DC();
    v7 = 0;
    v8 = *(v2 + 36);
    v30 = v2 + 72;
    v31 = v1;
    v32 = v8;
    v33 = v2 + 64;
    v34 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_28;
      }

      if (v8 != *(v2 + 36))
      {
        goto LABEL_29;
      }

      v35 = v7;
      v11 = *(*(v2 + 48) + 8 * v6);
      v12 = (*(v2 + 56) + 32 * v6);
      v13 = v3;
      v14 = *v12;
      v15 = v12[1];
      v16 = v12[2];
      v17 = v12[3];

      v36 = v11;

      MEMORY[0x1DA7298F0](v16, v17);
      MEMORY[0x1DA7298F0](2112032, 0xE300000000000000);
      if (v15)
      {
        v18 = v14;
      }

      else
      {
        v18 = 1162760014;
      }

      v3 = v13;
      if (v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      MEMORY[0x1DA7298F0](v18, v19);

      MEMORY[0x1DA7298F0](93, 0xE100000000000000);

      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1D8D41BE0((v20 > 1), v21 + 1, 1);
        v3 = v13;
      }

      *(v3 + 16) = v21 + 1;
      v22 = v3 + 16 * v21;
      *(v22 + 32) = 91;
      *(v22 + 40) = 0xE100000000000000;
      v2 = v34;
      v9 = 1 << *(v34 + 32);
      if (v6 >= v9)
      {
        goto LABEL_30;
      }

      v4 = v33;
      v23 = *(v33 + 8 * v10);
      if ((v23 & (1 << v6)) == 0)
      {
        goto LABEL_31;
      }

      v8 = v32;
      if (v32 != *(v34 + 36))
      {
        goto LABEL_32;
      }

      v24 = v23 & (-2 << (v6 & 0x3F));
      if (v24)
      {
        v9 = __clz(__rbit64(v24)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v10 << 6;
        v26 = v10 + 1;
        v27 = (v30 + 8 * v10);
        while (v26 < (v9 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_1D8D9B144(v6, v32, 0);
            v9 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_1D8D9B144(v6, v32, 0);
      }

LABEL_4:
      v7 = v35 + 1;
      v6 = v9;
      if (v35 + 1 == v31)
      {
        return;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }
}

void sub_1D900C668()
{
  v14 = sub_1D9178E0C();
  v0 = *(v14 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9178D8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v13[1] = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D9177E4C();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1D9014D64(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v14);
  v8 = sub_1D9178E4C();
  v9 = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
  v10 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_responseQueue;
  swift_beginAccess();
  v11 = *&v9[v10];
  *&v9[v10] = v8;
  v12 = v9;

  qword_1ECAB8CA0 = v12;
}

uint64_t sub_1D900C934()
{
  v10 = sub_1D9178E0C();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9178D8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D9177E4C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D9014D64(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1D9178E4C();
  qword_1ECAB18F0 = result;
  return result;
}

uint64_t sub_1D900CBA8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1D917906C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_1D9176EAC();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D900CCDC, 0, 0);
}

uint64_t sub_1D900CCDC()
{
  v36 = v0;
  v1 = v0[3];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v27 = v0[3];
    }

    if (!sub_1D917935C())
    {
      goto LABEL_17;
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1DA72AA90](0, v0[3]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_22;
    }

    v2 = *(v0[3] + 32);
  }

  v3 = v2;
  v4 = [v2 managedObjectContext];
  v0[13] = v4;

  if (v4)
  {
    v5 = v0[12];
    sub_1D9176E9C();
    if (qword_1EDCD1100 == -1)
    {
LABEL_8:
      v6 = v0[11];
      v7 = v0[12];
      v8 = v0[8];
      v9 = v0[9];
      v10 = sub_1D917744C();
      v0[14] = __swift_project_value_buffer(v10, qword_1EDCD1108);
      v11 = *(v9 + 16);
      v0[15] = v11;
      v0[16] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v11(v6, v7, v8);
      v12 = sub_1D917741C();
      v13 = sub_1D9178D1C();
      v14 = os_log_type_enabled(v12, v13);
      v15 = v0[11];
      v16 = v0[8];
      v17 = v0[9];
      if (v14)
      {
        v18 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = v34;
        *v18 = 136315138;
        sub_1D9014D64(&qword_1EDCD5918, MEMORY[0x1E69695A8]);
        v19 = sub_1D9179A4C();
        v21 = v20;
        v22 = *(v17 + 8);
        v22(v15, v16);
        v23 = sub_1D8CFA924(v19, v21, &v35);

        *(v18 + 4) = v23;
        _os_log_impl(&dword_1D8CEC000, v12, v13, "[BatchFeedRequest] (%s) Starting", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x1DA72CB90](v34, -1, -1);
        MEMORY[0x1DA72CB90](v18, -1, -1);
      }

      else
      {

        v22 = *(v17 + 8);
        v22(v15, v16);
      }

      v0[17] = v22;
      v24 = swift_task_alloc();
      v0[18] = v24;
      *v24 = v0;
      v24[1] = sub_1D900D060;
      v25 = v0[3];

      return sub_1D9013418(v25);
    }

LABEL_22:
    swift_once();
    goto LABEL_8;
  }

LABEL_17:
  v29 = v0[11];
  v28 = v0[12];
  v30 = v0[10];
  v31 = v0[7];

  v32 = v0[1];
  v33 = MEMORY[0x1E69E7CD0];

  return v32(v33);
}

uint64_t sub_1D900D060(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v7 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v5 = sub_1D900D3A8;
  }

  else
  {
    v5 = sub_1D900D174;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D900D174()
{
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[4];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
  v5 = swift_task_alloc();
  v0[21] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = *(MEMORY[0x1E69E88A0] + 4);
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_1D900D28C;

  return MEMORY[0x1EEE6DD58](v0 + 2, v4, v4, 0, 0, &unk_1D91A6D00, v5, v4);
}

uint64_t sub_1D900D28C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_1D900D954;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_1D900D460;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D900D3A8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 88);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 72) + 8;
  (*(v0 + 136))(*(v0 + 96), *(v0 + 64));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D900D460()
{
  v1 = v0[13];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v0[24] = v6;
  v7 = swift_allocObject();
  v0[25] = v7;
  v7[2] = v5;
  v7[3] = v6;
  v7[4] = v1;
  (*(v3 + 104))(v2, *MEMORY[0x1E695D2B8], v4);
  v8 = *(MEMORY[0x1E695D2C0] + 4);

  v9 = v1;
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = sub_1D900D5A8;
  v11 = v0[13];
  v12 = v0[7];
  v13 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v10, v12, sub_1D9013CD0, v7, v13);
}

void sub_1D900D5A8()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v6 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[25];
    v5 = v2[19];
    (*(v2[6] + 8))(v2[7], v2[5]);

    MEMORY[0x1EEE6DFA0](sub_1D900D708, 0, 0);
  }
}

uint64_t sub_1D900D708()
{
  v26 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  (*(v0 + 120))(*(v0 + 80), *(v0 + 96), *(v0 + 64));
  v3 = sub_1D917741C();
  v4 = sub_1D9178D1C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 136);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 64);
  if (v5)
  {
    v24 = *(v0 + 104);
    v23 = *(v0 + 136);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    sub_1D9014D64(&qword_1EDCD5918, MEMORY[0x1E69695A8]);
    v12 = sub_1D9179A4C();
    v14 = v13;
    v23(v7, v9);
    v15 = sub_1D8CFA924(v12, v14, &v25);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1D8CEC000, v3, v4, "[BatchFeedRequest] (%s) Finished", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1DA72CB90](v11, -1, -1);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  else
  {

    v6(v7, v9);
  }

  (*(v0 + 136))(*(v0 + 96), *(v0 + 64));
  v16 = *(v0 + 192);
  v18 = *(v0 + 88);
  v17 = *(v0 + 96);
  v19 = *(v0 + 80);
  v20 = *(v0 + 56);

  v21 = *(v0 + 8);

  return v21(v16);
}

uint64_t sub_1D900D954()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  v3 = *(v0 + 184);
  v4 = *(v0 + 88);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 72) + 8;
  (*(v0 + 136))(*(v0 + 96), *(v0 + 64));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D900DA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_1D9176EAC();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v5[16] = *(v7 + 64);
  v5[17] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D900DB38, 0, 0);
}

uint64_t sub_1D900DB38()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v33 = **(v0 + 80);
    v34 = *(v0 + 120);
    v32 = *(v0 + 128) + 7;
    v4 = sub_1D917886C();
    v5 = *(v4 - 8);
    v31 = *(v5 + 56);
    v30 = (v5 + 48);
    v29 = (v5 + 8);
    do
    {
      v39 = v2;
      v7 = *(v0 + 152);
      v37 = *(v0 + 144);
      v8 = *(v0 + 136);
      v9 = *(v0 + 112);
      v35 = v7;
      v36 = *(v0 + 104);
      v10 = *(v0 + 96);
      v38 = v3;
      v11 = *v3;
      v31();
      (*(v34 + 16))(v8, v10, v9);
      v12 = (*(v34 + 80) + 40) & ~*(v34 + 80);
      v13 = swift_allocObject();
      v13[2] = 0;
      v14 = v13 + 2;
      v13[3] = 0;
      v13[4] = v11;
      (*(v34 + 32))(v13 + v12, v8, v9);
      *(v13 + ((v32 + v12) & 0xFFFFFFFFFFFFFFF8)) = v36;
      sub_1D8CF5C74(v35, v37);
      v15 = (*v30)(v37, 1, v4);

      v16 = *(v0 + 144);
      if (v15 == 1)
      {
        sub_1D8D08A50(*(v0 + 144), &qword_1ECABB890, &qword_1D918B960);
      }

      else
      {
        sub_1D917885C();
        (*v29)(v16, v4);
      }

      if (*v14)
      {
        v17 = v13[3];
        v18 = *v14;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v19 = sub_1D917874C();
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
      v22 = v21 | v19;
      if (v21 | v19)
      {
        v22 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v19;
        *(v0 + 40) = v21;
      }

      v6 = *(v0 + 152);
      *(v0 + 48) = 1;
      *(v0 + 56) = v22;
      *(v0 + 64) = v33;
      swift_task_create();

      sub_1D8D08A50(v6, &qword_1ECABB890, &qword_1D918B960);
      v3 = v38 + 1;
      v2 = v39 - 1;
    }

    while (v39 != 1);
  }

  v23 = *(v0 + 96);
  v24 = **(v0 + 80);
  v25 = swift_task_alloc();
  *(v0 + 160) = v25;
  *(v25 + 16) = v23;
  v26 = swift_task_alloc();
  *(v0 + 168) = v26;
  *v26 = v0;
  v26[1] = sub_1D900DF10;
  v27 = MEMORY[0x1E69E7CD0];

  return sub_1D900EA6C(v27, &unk_1D91A6EE8, v25, v24);
}

uint64_t sub_1D900DF10(uint64_t a1)
{
  v4 = *(*v2 + 168);
  v5 = *v2;
  *(v5 + 176) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D900E090, 0, 0);
  }

  else
  {
    v7 = *(v5 + 152);
    v6 = *(v5 + 160);
    v9 = *(v5 + 136);
    v8 = *(v5 + 144);
    **(v5 + 72) = a1;

    v10 = *(v5 + 8);

    return v10();
  }
}

uint64_t sub_1D900E090()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];

  v5 = v0[1];
  v6 = v0[22];

  return v5();
}

uint64_t sub_1D900E118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  v7 = sub_1D9176EAC();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D900E1DC, 0, 0);
}

uint64_t sub_1D900E1DC()
{
  v29 = v0;
  sub_1D900C36C(v0[4]);
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
  v2 = sub_1D917817C();
  v4 = v3;

  if (qword_1EDCD1100 != -1)
  {
    swift_once();
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[5];
  v9 = sub_1D917744C();
  __swift_project_value_buffer(v9, qword_1EDCD1108);
  (*(v6 + 16))(v5, v8, v7);

  v10 = sub_1D917741C();
  v11 = sub_1D9178D1C();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28[0] = v27;
    *v16 = 136315394;
    sub_1D9014D64(&qword_1EDCD5918, MEMORY[0x1E69695A8]);
    v26 = v2;
    v17 = sub_1D9179A4C();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_1D8CFA924(v17, v19, v28);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_1D8CFA924(v26, v4, v28);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_1D8CEC000, v10, v11, "[BatchFeedRequest] (%s) Sync tokens for batch - %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v27, -1, -1);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v22 = swift_task_alloc();
  v0[10] = v22;
  *v22 = v0;
  v22[1] = sub_1D900E528;
  v23 = v0[6];
  v24 = v0[4];

  return sub_1D9011A64(v24);
}

uint64_t sub_1D900E528(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 72);

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 88) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D900E67C, 0, 0);
  }
}

uint64_t sub_1D900E67C()
{
  v1 = *(v0 + 72);
  **(v0 + 24) = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D900E6EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v5 = sub_1D9176EAC();
  v3[4] = v5;
  v6 = *(v5 - 8);
  v3[5] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a2;
  v3[6] = v8;
  v3[7] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D900E7B4, 0, 0);
}

uint64_t sub_1D900E7B4()
{
  v32 = v0;
  if (qword_1EDCD1100 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD1108);
  (*(v4 + 16))(v1, v5, v3);

  v7 = sub_1D917741C();
  v8 = sub_1D9178D1C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[6];
    v30 = v0[7];
    v11 = v0[4];
    v10 = v0[5];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315394;
    sub_1D9014D64(&qword_1EDCD5918, MEMORY[0x1E69695A8]);
    v14 = sub_1D9179A4C();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1D8CFA924(v14, v16, &v31);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v18 = sub_1D9178AAC();
    v20 = sub_1D8CFA924(v18, v19, &v31);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_1D8CEC000, v7, v8, "[BatchFeedRequest] (%s) Adding out of date uuids for batch - %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v13, -1, -1);
    MEMORY[0x1DA72CB90](v12, -1, -1);
  }

  else
  {
    v22 = v0[5];
    v21 = v0[6];
    v23 = v0[4];

    (*(v22 + 8))(v21, v23);
  }

  v25 = v0[6];
  v24 = v0[7];
  v26 = v0[2];

  sub_1D9111F88(v27);

  v28 = v0[1];

  return v28();
}

uint64_t sub_1D900EA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8D30, &unk_1D91A6EF8);
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[2] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D900EB44, 0, 0);
}

uint64_t sub_1D900EB44()
{
  v1 = v0[10];
  v2 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D917899C();
  v3 = sub_1D8CF48EC(&qword_1ECAB8D38, &qword_1ECAB8D30, &unk_1D91A6EF8);
  v4 = *(MEMORY[0x1E69E85A8] + 4);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1D900EC74;
  v6 = v0[10];
  v7 = v0[8];

  return MEMORY[0x1EEE6D8C8](v0 + 4, v7, v3);
}

uint64_t sub_1D900EC74()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    (*(v2[9] + 8))(v2[10], v2[8]);
    v4 = v2[2];

    v5 = sub_1D900EF24;
  }

  else
  {
    v5 = sub_1D900EDA8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D900EDA8()
{
  v1 = v0[4];
  v0[13] = v1;
  if (v1)
  {
    v2 = v0[5];
    v0[3] = v1;
    v9 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_1D900EF88;
    v5 = v0[6];

    return (v9)(v0 + 2, v0 + 3);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    v7 = v0[2];

    v8 = v0[1];

    return v8(v7);
  }
}

uint64_t sub_1D900EF24()
{
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D900EF88()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v11 = *v1;
  *(*v1 + 120) = v0;

  v4 = v2[13];
  if (v0)
  {
    v6 = v2[9];
    v5 = v2[10];
    v7 = v2[8];

    (*(v6 + 8))(v5, v7);
    v8 = v2[2];

    v9 = sub_1D900F1B4;
  }

  else
  {

    v9 = sub_1D900F0DC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D900F0DC()
{
  v1 = sub_1D8CF48EC(&qword_1ECAB8D38, &qword_1ECAB8D30, &unk_1D91A6EF8);
  v2 = *(MEMORY[0x1E69E85A8] + 4);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1D900EC74;
  v4 = v0[10];
  v5 = v0[8];

  return MEMORY[0x1EEE6D8C8](v0 + 4, v5, v1);
}

uint64_t sub_1D900F1B4()
{
  v1 = v0[15];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

id sub_1D900F218(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v6 = 0;
    v7 = a2 + 56;
    v25 = i;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA72AA90](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v8 = *(a1 + 32 + 8 * v6);
      }

      v9 = v8;
      if (__OFADD__(v6++, 1))
      {
        break;
      }

      v11 = [v8 uuid];
      if (v11)
      {
        v12 = v11;
        v13 = sub_1D917820C();
        v15 = v14;

        if (*(a2 + 16) && (v16 = *(a2 + 40), sub_1D9179DBC(), _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0(), v17 = sub_1D9179E1C(), v18 = -1 << *(a2 + 32), v19 = v17 & ~v18, ((*(v7 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
        {
          v20 = ~v18;
          while (1)
          {
            v21 = (*(a2 + 48) + 16 * v19);
            v22 = *v21 == v13 && v21[1] == v15;
            if (v22 || (sub_1D9179ACC() & 1) != 0)
            {
              break;
            }

            v19 = (v19 + 1) & v20;
            if (((*(v7 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
LABEL_20:

          [objc_opt_self() timeIntervalSinceReferenceDate];
          [v9 setLastFetchedDate_];
        }

        i = v25;
        if (v6 == v25)
        {
          return [a3 saveInCurrentBlock];
        }
      }

      else
      {

        if (v6 == i)
        {
          return [a3 saveInCurrentBlock];
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  return [a3 saveInCurrentBlock];
}

uint64_t sub_1D900F5C4(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
  v3 = sub_1D91785FC();
  v2[3] = v3;
  swift_getObjCClassMetadata();
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1D900F6A0;

  return sub_1D900CBA8(v3);
}

uint64_t sub_1D900F6A0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_1D9176A5C();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = sub_1D9178A8C();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 16);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1D900F834(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 144) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D900F858, 0, 0);
}

uint64_t sub_1D900F858()
{
  if (qword_1EDCD1100 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  *(v0 + 104) = __swift_project_value_buffer(v1, qword_1EDCD1108);
  v2 = sub_1D917741C();
  v3 = sub_1D9178D1C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D8CEC000, v2, v3, "[BatchFeedRequest] [Full Fetch] Starting", v4, 2u);
    MEMORY[0x1DA72CB90](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_1D900F9B0;
  v6 = *(v0 + 96);
  v7 = *(v0 + 144);

  return sub_1D90103A4(v7);
}

uint64_t sub_1D900F9B0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 145) = a1 & 1;

    return MEMORY[0x1EEE6DFA0](sub_1D900FB00, 0, 0);
  }
}

uint64_t sub_1D900FB00()
{
  if (*(v0 + 145))
  {
    v1 = swift_task_alloc();
    *(v0 + 120) = v1;
    *v1 = v0;
    v1[1] = sub_1D900FD80;
    v2 = *(v0 + 144);

    return sub_1D9013EE0(v2);
  }

  else
  {
    v4 = *(v0 + 104);
    v5 = sub_1D917741C();
    v6 = sub_1D9178CFC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D8CEC000, v5, v6, "[BatchFeedRequest] [Full Fetch] Not enough store shows in library", v7, 2u);
      MEMORY[0x1DA72CB90](v7, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189080;
    v9 = *MEMORY[0x1E696A578];
    *(inited + 32) = sub_1D917820C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v10;
    *(inited + 48) = 0xD000000000000039;
    *(inited + 56) = 0x80000001D91D26E0;
    sub_1D8E2696C(inited);
    swift_setDeallocating();
    sub_1D8D08A50(inited + 32, &qword_1ECAB42E8, &qword_1D9193650);
    v11 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v13 = sub_1D917802C();

    [v11 initWithDomain:v12 code:0 userInfo:v13];

    swift_willThrow();
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1D900FD80(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v5 = *v1;
  v3[16] = a1;

  v6 = swift_task_alloc();
  v3[17] = v6;
  *v6 = v5;
  v6[1] = sub_1D900FED4;
  v7 = v3[12];

  return sub_1D900CBA8(a1);
}

uint64_t sub_1D900FED4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;

  v7 = *(v4 + 128);

  v9 = *(v6 + 8);
  if (!v1)
  {
    v8 = a1;
  }

  return v9(v8);
}

uint64_t sub_1D901017C(char a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1D901022C;

  return sub_1D900F834(a1);
}

uint64_t sub_1D901022C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *v1;

  if (v2)
  {
    v6 = sub_1D9176A5C();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    v9 = sub_1D9178A8C();

    v8 = v9;
    v7 = 0;
    v6 = v9;
  }

  v10 = *(v3 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_1D90103A4(char a1)
{
  *(v2 + 1352) = v1;
  *(v2 + 1424) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D90103C8, 0, 0);
}

uint64_t sub_1D90103C8()
{
  v1 = *(v0 + 1352);
  v2 = *(v0 + 1424);
  v3 = swift_allocObject();
  *(v0 + 1360) = v3;
  *(v3 + 16) = v1;
  swift_asyncLet_begin();
  v4 = sub_1D9013CF0(v2);
  *(v0 + 1368) = v4;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 privateQueueContext];
  *(v0 + 1376) = v6;

  v7 = swift_allocObject();
  *(v0 + 1384) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  v8 = v6;
  v9 = v4;
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 656, v0 + 1344, sub_1D9010534, v0 + 1296);
}

uint64_t sub_1D9010534()
{
  v1[174] = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 168, sub_1D90106F0, v1 + 162);
  }

  v1[175] = v1[168];
  return MEMORY[0x1EEE6DEC0](v1 + 2, v1 + 167, sub_1D9010584, v1 + 162);
}

uint64_t sub_1D9010584()
{
  v1[176] = v0;
  if (v0)
  {
    v2 = sub_1D9010810;
  }

  else
  {
    v1[177] = v1[167];
    v2 = sub_1D90105C4;
  }

  return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 168, v2, v1 + 162);
}

uint64_t sub_1D90105E0()
{
  v1 = *(v0 + 1368);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1336, sub_1D9010654, v0 + 656);
}

uint64_t sub_1D9010670()
{
  v1 = v0[173];
  v2 = v0[170];

  v3 = v0[1];
  v4 = v0[175] >= v0[177];

  return v3(v4);
}

uint64_t sub_1D901070C()
{
  v1 = *(v0 + 1368);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1336, sub_1D9010780, v0 + 656);
}

uint64_t sub_1D901079C()
{
  v1 = v0[174];
  v2 = v0[173];
  v3 = v0[170];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_1D901082C()
{
  v1 = *(v0 + 1368);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1336, sub_1D90108A0, v0 + 656);
}

uint64_t sub_1D90108BC()
{
  v1 = v0[176];
  v2 = v0[173];
  v3 = v0[170];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_1D9010950()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 batchFeedFetchShowCountMinimum];
  v0[21] = v2;

  if (qword_1ECAB18E8 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECAB18F0;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D9010AEC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41B8, qword_1D91BEDB0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D8D5F354;
  v0[13] = &block_descriptor_104_0;
  v0[14] = v4;
  [v2 asyncValueOnQueue:v3 withCompletion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D9010AEC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1D9010C88;
  }

  else
  {
    v3 = sub_1D9010BFC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D9010BFC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = [v3 integerValue];

  *v2 = v4;
  v5 = v0[1];

  return v5();
}

uint64_t sub_1D9010C88()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t sub_1D9010CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1D917906C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9010DBC, 0, 0);
}

uint64_t sub_1D9010DBC()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = swift_allocObject();
  v0[8] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v7 = *(MEMORY[0x1E695D2C0] + 4);
  v8 = v5;
  v9 = v4;
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_1D9010EE4;
  v11 = v0[7];
  v12 = v0[2];
  v13 = v0[3];
  v14 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEDB6538](v12, v11, sub_1D9015134, v6, v14);
}

uint64_t sub_1D9010EE4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 80) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D90110BC, 0, 0);
  }

  else
  {
    v9 = *(v2 + 56);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_1D90110BC()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1D9011120@<X0>(uint64_t *a1@<X8>)
{
  sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
  result = sub_1D917907C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D9011188@<X0>(uint64_t *a1@<X8>)
{
  sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
  result = sub_1D917908C();
  if (v1)
  {

    result = MEMORY[0x1E69E7CC0];
  }

  *a1 = result;
  return result;
}

uint64_t sub_1D9011204@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1;
  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v53 = a3;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_41:
    v3 = MEMORY[0x1E69E7CC8];
    v55 = MEMORY[0x1E69E7CC0];
LABEL_42:
    if (!v3[2])
    {

      v5 = v53;
      v6 = v55;
LABEL_48:
      *v5 = v6;
      return result;
    }

    v6 = v55;
    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v53;
    if (result)
    {
LABEL_44:
      v45 = *(v6 + 16);
      v44 = *(v6 + 24);
      if (v45 >= v44 >> 1)
      {
        result = sub_1D8ECD804((v44 > 1), v45 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v45 + 1;
      *(v6 + 8 * v45 + 32) = v3;
      goto LABEL_48;
    }

LABEL_51:
    result = sub_1D8ECD804(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
    goto LABEL_44;
  }

  v8 = sub_1D917935C();
  v53 = a3;
  if (!v8)
  {
    goto LABEL_41;
  }

LABEL_3:
  v9 = objc_opt_self();
  if (v8 < 1)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v10 = v9;
  v11 = 0;
  v55 = MEMORY[0x1E69E7CC0];
  v3 = MEMORY[0x1E69E7CC8];
  v12 = &selRef_redirectURLForStoreCollectionId_;
  v46 = v4;
  v52 = v9;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1DA72AA90](v11, v6);
    }

    else
    {
      v13 = *(v6 + 8 * v11 + 32);
    }

    v14 = v13;
    if (([v10 isEmpty_] & 1) != 0 || (v15 = objc_msgSend(v14, v12[445]), (v15 & 0x8000000000000000) != 0) || v15 == 1000000000000 || !v15)
    {

      goto LABEL_6;
    }

    v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    if (!v16)
    {
      goto LABEL_19;
    }

    v17 = v16;
    v18 = [v14 uuid];
    if (!v18)
    {

LABEL_19:
LABEL_37:
      v12 = &selRef_redirectURLForStoreCollectionId_;
      goto LABEL_6;
    }

    v19 = v18;
    v49 = sub_1D917820C();
    v50 = v20;

    v21 = [v14 nextSyncToken];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1D917820C();
      v47 = v24;
      v48 = v23;
    }

    else
    {
      v47 = 0;
      v48 = 0;
    }

    v5 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v5;
    v27 = sub_1D8F06D7C(v5);
    v28 = v3[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      __break(1u);
      goto LABEL_50;
    }

    v31 = v26;
    if (v3[3] >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v26)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_1D8F844A8();
        if (v31)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      sub_1D9007BB8(v30, isUniquelyReferenced_nonNull_native);
      v32 = sub_1D8F06D7C(v54);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_53;
      }

      v27 = v32;
      if (v31)
      {
LABEL_29:
        v38 = (v3[7] + 32 * v27);
        v39 = v38[1];
        v40 = v38[3];
        *v38 = v48;
        v38[1] = v47;
        v38[2] = v49;
        v38[3] = v50;

        v37 = v3[2];
        goto LABEL_30;
      }
    }

    v3[(v27 >> 6) + 8] |= 1 << v27;
    *(v3[6] + 8 * v27) = v54;
    v34 = (v3[7] + 32 * v27);
    *v34 = v48;
    v34[1] = v47;
    v34[2] = v49;
    v34[3] = v50;
    v35 = v3[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      break;
    }

    v3[2] = v37;
LABEL_30:
    v10 = v52;
    v12 = &selRef_redirectURLForStoreCollectionId_;
    if (v37 >= a2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_1D8ECD804(0, v55[2] + 1, 1, v55);
      }

      v42 = v55[2];
      v41 = v55[3];
      if (v42 >= v41 >> 1)
      {
        v55 = sub_1D8ECD804((v41 > 1), v42 + 1, 1, v55);
      }

      v55[2] = v42 + 1;
      v55[v42 + 4] = v3;
      v3 = MEMORY[0x1E69E7CC8];
      v10 = v52;
      goto LABEL_37;
    }

LABEL_6:
    if (v8 == ++v11)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_53:
  sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  result = sub_1D9179CFC();
  __break(1u);
  return result;
}

uint64_t sub_1D901169C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - v6;
  v36 = &v30 - v6;
  v40 = sub_1D900C078(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
  v8 = sub_1D917817C();
  v10 = v9;

  v39 = sub_1D8E272CC(&unk_1F5461490);
  sub_1D8D08A50(&unk_1F54614B0, &qword_1ECAB8D08, &qword_1D91A6E10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8D10, &unk_1D91A7620);
  inited = swift_initStackObject();
  v38 = xmmword_1D9189080;
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v12 = swift_allocObject();
  *(v12 + 16) = v38;
  *(v12 + 32) = v8;
  *(v12 + 40) = v10;
  *(inited + 40) = v12;
  *&v38 = sub_1D8E272A4(inited);
  swift_setDeallocating();
  sub_1D8D08A50(inited + 32, &qword_1ECAB8D18, &qword_1D91A6E18);
  v37 = sub_1D8E272F4(&unk_1F54614C8);
  sub_1D8D08A50(&unk_1F54614E8, &qword_1ECAB8D20, &unk_1D91A6E20);
  v13 = sub_1D9176C2C();
  v14 = *(*(v13 - 8) + 56);
  v14(v7, 1, 1, v13);
  v15 = MEMORY[0x1E69E7CC0];
  v35 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v34 = sub_1D8D94DF8(v15);
  v33 = sub_1D8D951E0(v15);
  v32 = sub_1D8D9536C(v15);
  v31 = sub_1D8D9536C(v15);
  v16 = sub_1D8D953C4(v15);
  v17 = sub_1D8D952D8(v15);
  *(a2 + 41) = 263;
  *(a2 + 43) = 5;
  *(a2 + 152) = 1;
  *(a2 + 201) = 1;
  v18 = type metadata accessor for MediaRequest.Params();
  v19 = v18[28];
  v14((a2 + v19), 1, 1, v13);
  v20 = (a2 + v18[29]);
  v21 = (a2 + v18[31]);
  v22 = v18[33];
  v30 = v18[34];
  v23 = (a2 + v22);
  v24 = (a2 + v18[35]);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 40) = 83951876;
  v25 = v34;
  *(a2 + 48) = v35;
  *(a2 + 56) = v25;
  *(a2 + 64) = v33;
  *(a2 + 72) = v15;
  v26 = v31;
  v27 = v32;
  *(a2 + 80) = v39;
  *(a2 + 88) = v27;
  *(a2 + 96) = v26;
  *(a2 + 104) = v16;
  *(a2 + 112) = v15;
  *(a2 + 120) = v17;
  *(a2 + 128) = &unk_1F5461438;
  *(a2 + 136) = v15;
  *(a2 + 144) = v15;
  *(a2 + 152) = 1;
  *(a2 + 160) = 0;
  *(a2 + 168) = 1;
  v28 = v37;
  *(a2 + 176) = v38;
  *(a2 + 184) = v28;
  *(a2 + 192) = 0;
  *(a2 + 200) = 257;
  *(a2 + 202) = 0;
  result = sub_1D8E26828(v36, a2 + v19);
  *v20 = 0;
  v20[1] = 0;
  *(a2 + v18[30]) = 0;
  *v21 = 0;
  v21[1] = 0;
  *(a2 + v18[32]) = v15;
  *v23 = 0;
  v23[1] = 0;
  *(a2 + v30) = 2;
  *v24 = 0;
  v24[1] = 0;
  return result;
}

uint64_t sub_1D9011A64(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = *(*(type metadata accessor for MediaRequest.Params() - 8) + 64) + 15;
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9011AF4, 0, 0);
}

uint64_t sub_1D9011AF4()
{
  sub_1D901169C(v0[22], v0[24]);
  if (qword_1ECAB36B0 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v0[19] = qword_1ECAB8CA0;
  v2 = swift_task_alloc();
  v0[25] = v2;
  *(v2 + 16) = v0 + 19;
  *(v2 + 24) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[26] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8CF8, &unk_1D91A6E00);
  *v4 = v0;
  v4[1] = sub_1D9011C48;

  return MEMORY[0x1EEE6DE38](v0 + 12, 0, 0, 0xD000000000000010, 0x80000001D91D27C0, sub_1D9014C50, v2, v5);
}

uint64_t sub_1D9011C48()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v7 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_1D9012324;
  }

  else
  {
    v5 = *(v2 + 200);

    v4 = sub_1D9011D64;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D9011D64()
{
  v1 = v0[27];
  v2 = v0[14];
  v3 = v0[15];
  v4 = sub_1D917656C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1D917655C();
  sub_1D9014C5C();
  sub_1D917654C();
  v7 = v1;

  if (v1)
  {
    v8 = v0[24];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189080;
    v10 = *MEMORY[0x1E696AA08];
    *(inited + 32) = sub_1D917820C();
    *(inited + 40) = v11;
    swift_getErrorValue();
    v12 = v0[16];
    v13 = v0[17];
    *(inited + 72) = v13;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v12, v13);
    sub_1D8E2696C(inited);
    swift_setDeallocating();
    sub_1D8D08A50(inited + 32, &qword_1ECAB42E8, &qword_1D9193650);
    v15 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v16 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v17 = sub_1D917802C();

    [v15 initWithDomain:v16 code:0 userInfo:v17];

    swift_willThrow();
    sub_1D8D90BEC(v8);
    sub_1D8D7567C(v2, v3);
    v18 = v0[24];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v60 = v2;
    v21 = 0;
    v22 = v0[20];
    v23 = *(v22 + 16);
    v24 = MEMORY[0x1E69E7CC0];
    v25 = MEMORY[0x1E69E7CC0];
    v59 = v3;
LABEL_6:
    v26 = (v22 + 40 + 16 * v21);
    while (v23 != v21)
    {
      if (v21 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      v27 = (v26 + 16);
      ++v21;
      v28 = *v26;
      v26 += 16;
      if ((v28 & 1) == 0)
      {
        v29 = *(v27 - 3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D8E31720(0, *(v25 + 16) + 1, 1);
        }

        v31 = *(v25 + 16);
        v30 = *(v25 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1D8E31720((v30 > 1), v31 + 1, 1);
        }

        *(v25 + 16) = v31 + 1;
        v32 = v25 + 16 * v31;
        *(v32 + 32) = v29;
        *(v32 + 40) = 0;
        goto LABEL_6;
      }
    }

    v61 = v24;
    v21 = *(v25 + 16);
    if (!v21)
    {
LABEL_22:

      v21 = v24 & 0xFFFFFFFFFFFFFF8;
      if (v24 >> 62)
      {
        goto LABEL_46;
      }

      v36 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36)
      {
        goto LABEL_24;
      }

      goto LABEL_47;
    }

    v33 = 0;
    v34 = (v25 + 32);
    while (v33 < *(v25 + 16))
    {
      v24 = *v34;
      MEMORY[0x1DA729B90]();
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v35 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D917863C();
      }

      ++v33;
      sub_1D917869C();
      v34 += 2;
      if (v21 == v33)
      {
        v24 = v61;
        goto LABEL_22;
      }
    }

LABEL_43:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      v36 = sub_1D917935C();
      if (!v36)
      {
        break;
      }

LABEL_24:
      v37 = 0;
      v38 = v0[22];
      v39 = MEMORY[0x1E69E7CC0];
LABEL_25:
      v58 = v39;
      v40 = v37;
      while (1)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v41 = MEMORY[0x1DA72AA90](v40, v24);
        }

        else
        {
          if (v40 >= *(v21 + 16))
          {
            goto LABEL_45;
          }

          v41 = *(v24 + 8 * v40 + 32);
        }

        v42 = v41;
        v37 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (*(v38 + 16))
        {
          v43 = v0[22];
          v44 = sub_1D8F06D7C(v41);
          if (v45)
          {
            v46 = *(v38 + 56) + 32 * v44;
            v47 = *(v46 + 24);
            v57 = *(v46 + 16);

            v48 = v58;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v48 = sub_1D8D4241C(0, *(v58 + 16) + 1, 1, v58);
            }

            v51 = *(v48 + 2);
            v50 = *(v48 + 3);
            v52 = v48;
            if (v51 >= v50 >> 1)
            {
              v52 = sub_1D8D4241C((v50 > 1), v51 + 1, 1, v48);
            }

            *(v52 + 2) = v51 + 1;
            v39 = v52;
            v53 = &v52[16 * v51];
            *(v53 + 4) = v57;
            *(v53 + 5) = v47;
            if (v37 != v36)
            {
              goto LABEL_25;
            }

            goto LABEL_48;
          }
        }

        ++v40;
        if (v37 == v36)
        {
          v39 = v58;
          goto LABEL_48;
        }
      }
    }

LABEL_47:
    v39 = MEMORY[0x1E69E7CC0];
LABEL_48:
    v54 = v0[24];

    v55 = sub_1D8FC0F28(v39);

    sub_1D8D90BEC(v54);
    sub_1D8D7567C(v60, v59);

    v56 = v0[1];

    return v56(v55);
  }
}

uint64_t sub_1D9012324()
{
  v1 = v0[27];
  v3 = v0[24];
  v2 = v0[25];

  swift_willThrow();
  sub_1D8D90BEC(v3);
  v4 = v0[27];
  v5 = v0[24];

  v6 = v0[1];

  return v6();
}

id BatchFeedRequestController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BatchFeedRequestController.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BatchFeedRequestController();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BatchFeedRequestController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BatchFeedRequestController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D90124A4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D917980C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D90124FC(uint64_t a1)
{
  v2 = sub_1D90146E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9012538(uint64_t a1)
{
  v2 = sub_1D90146E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D9012574@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D9014560(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D90125A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1635018093;
  }

  else
  {
    v4 = 25705;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1635018093;
  }

  else
  {
    v6 = 25705;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();
  }

  return v9 & 1;
}

uint64_t sub_1D9012634()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D90126A4()
{
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D9012700()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D901276C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D917980C();

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

void sub_1D90127CC(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 1635018093;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D90127F8()
{
  if (*v0)
  {
    result = 1635018093;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1D9012820@<X0>(char *a1@<X8>)
{
  v2 = sub_1D917980C();

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

uint64_t sub_1D9012884(uint64_t a1)
{
  v2 = sub_1D9014B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90128C0(uint64_t a1)
{
  v2 = sub_1D9014B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9012914()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D9012994()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D90129EC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D917980C();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1D9012A70@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D917980C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D9012AC8(uint64_t a1)
{
  v2 = sub_1D9014BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9012B04(uint64_t a1)
{
  v2 = sub_1D9014BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9012B40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D9014810(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

void sub_1D9012B74(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = a2;
  v5 = type metadata accessor for MediaRequest.Params();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB96D0, &unk_1D91AC2F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v30 - v13;
  (*(v10 + 16))(&v30 - v13, a1, v9, v12);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v14, v9);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D9014CB0;
  *(v17 + 24) = v16;
  v18 = type metadata accessor for MediaRequestBuilder();

  sub_1D8D96644(a3);
  v19 = sub_1D8D963C0(a3);
  sub_1D8D85B08(a3, v8);
  v20 = *(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  sub_1D8D85D0C(v8, v21 + ((v20 + 24) & ~v20));
  v36 = sub_1D8D85180;
  v37 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1D8D85118;
  v35 = &block_descriptor_61;
  v22 = _Block_copy(&aBlock);

  v23 = [v19 thenWithBlock_];
  _Block_release(v22);

  sub_1D8D85B08(a3, v8);
  v24 = (v20 + 40) & ~v20;
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = sub_1D9014D5C;
  v26[4] = v17;
  sub_1D8D85D0C(v8, v26 + v24);
  v27 = v31;
  *(v26 + v25) = v31;
  *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0;
  v36 = sub_1D8D90CE8;
  v37 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1D8D5960C;
  v35 = &block_descriptor_31_2;
  v28 = _Block_copy(&aBlock);

  v29 = v27;

  [v23 addFinishBlock_];
  _Block_release(v28);
}

uint64_t sub_1D9012F5C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1D8D5FF18;

  return v7();
}

uint64_t sub_1D9013044(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1D8D58924;

  return v8();
}

uint64_t sub_1D901312C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1D8CF5C74(a3, v25 - v11);
  v13 = sub_1D917886C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D8D08A50(v12, &qword_1ECABB890, &qword_1D918B960);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1D917885C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1D917874C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1D917829C() + 32;
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

    sub_1D8D08A50(a3, &qword_1ECABB890, &qword_1D918B960);

    return v23;
  }

LABEL_8:
  sub_1D8D08A50(a3, &qword_1ECABB890, &qword_1D918B960);
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

uint64_t sub_1D9013418(uint64_t a1)
{
  v1[21] = a1;
  v2 = sub_1D917906C();
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D90134D8, 0, 0);
}

uint64_t sub_1D90134D8()
{
  v2 = v0[21];
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v9 = v0[21];
    }

    if (!sub_1D917935C())
    {
      goto LABEL_14;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA72AA90](0, v0[21]);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v3 = *(v0[21] + 32);
  }

  v4 = v3;
  v5 = [v3 managedObjectContext];
  v0[25] = v5;

  if (v5)
  {
    v1 = v0 + 18;
    v6 = [objc_opt_self() sharedInstance];
    v2 = [v6 batchFeedFetchShowBatchSize];
    v0[26] = v2;

    if (qword_1ECAB18E8 == -1)
    {
LABEL_8:
      v7 = qword_1ECAB18F0;
      v0[2] = v0;
      v0[7] = v1;
      v0[3] = sub_1D9013748;
      v8 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41B8, qword_1D91BEDB0);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1D8D5F354;
      v0[13] = &block_descriptor_120_0;
      v0[14] = v8;
      [v2 asyncValueOnQueue:v7 withCompletion:v0 + 10];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

LABEL_19:
    swift_once();
    goto LABEL_8;
  }

LABEL_14:
  v10 = v0[24];

  v11 = v0[1];
  v12 = MEMORY[0x1E69E7CC0];

  return v11(v12);
}

uint64_t sub_1D9013748()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_1D9013B84;
  }

  else
  {
    v3 = sub_1D9013858;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D9013858()
{
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[18];
  v7 = [v6 integerValue];

  v8 = swift_allocObject();
  v0[28] = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  (*(v3 + 104))(v2, *MEMORY[0x1E695D2B8], v4);
  v9 = *(MEMORY[0x1E695D2C0] + 4);

  v10 = swift_task_alloc();
  v0[29] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8D40, &qword_1D91A6F08);
  *v10 = v0;
  v10[1] = sub_1D90139B8;
  v12 = v0[24];
  v13 = v0[25];

  return MEMORY[0x1EEDB6538](v0 + 20, v12, sub_1D9015358, v8, v11);
}

void sub_1D90139B8()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[28];
    (*(v2[23] + 8))(v2[24], v2[22]);

    MEMORY[0x1EEE6DFA0](sub_1D9013B10, 0, 0);
  }
}

uint64_t sub_1D9013B10()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1D9013B84()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[27];

  return v5();
}

uint64_t sub_1D9013C0C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D8D5FF18;

  return sub_1D900DA24(a1, a2, v6, v7, v8);
}

id sub_1D9013CF0(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v3 = objc_opt_self();
  v4 = [v3 predicateForAreMediaAPI_];
  v5 = [v3 predicateForNotHiddenPodcasts];
  v6 = [v4 AND_];

  if ((a1 & 1) == 0)
  {
    v7 = [v3 predicateForNotImplicitlyFollowedPodcasts];
    v8 = [v6 AND_];

    v6 = v8;
  }

  [v2 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D9189060;
  v10 = sub_1D917820C();
  v11 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v13 = sub_1D917820C();
  *(v9 + 88) = v11;
  *(v9 + 64) = v13;
  *(v9 + 72) = v14;
  v15 = sub_1D917820C();
  *(v9 + 120) = v11;
  *(v9 + 96) = v15;
  *(v9 + 104) = v16;
  v17 = sub_1D91785DC();

  [v2 setPropertiesToFetch_];

  return v2;
}

uint64_t sub_1D9013EE0(char a1)
{
  *(v1 + 80) = a1;
  v2 = sub_1D917906C();
  *(v1 + 24) = v2;
  v3 = *(v2 - 8);
  *(v1 + 32) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9013FA0, 0, 0);
}

uint64_t sub_1D9013FA0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = sub_1D9013CF0(*(v0 + 80));
  *(v0 + 48) = v4;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 privateQueueContext];
  *(v0 + 56) = v6;

  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v8 = *(MEMORY[0x1E695D2C0] + 4);
  v6;
  v9 = v4;
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8D28, &unk_1D91A6E98);
  *v10 = v0;
  v10[1] = sub_1D9014130;
  v12 = *(v0 + 40);

  return MEMORY[0x1EEDB6538](v0 + 16, v12, sub_1D9014FCC, v7, v11);
}

void sub_1D9014130()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[8];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[3];

    (*(v7 + 8))(v6, v8);

    MEMORY[0x1EEE6DFA0](sub_1D901428C, 0, 0);
  }
}

uint64_t sub_1D901428C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = *(v0 + 16);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t dispatch thunk of static BatchFeedRequestController.fetchOutOfDateShowUUIDs(with:)(uint64_t a1)
{
  v4 = *(v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D90157D8;

  return v8(a1);
}

uint64_t dispatch thunk of static BatchFeedRequestController.fetchOutOfDateShowUUIDs(includeImplicit:)(uint64_t a1)
{
  v4 = *(v1 + 88);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8E24548;

  return v8(a1);
}

void *sub_1D9014560(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8CA8, &qword_1D91A6DE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90146E4();
  sub_1D9179EEC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8CB8, &qword_1D91A6DE8);
    sub_1D9014738();
    sub_1D91798FC();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v9;
}

unint64_t sub_1D90146E4()
{
  result = qword_1ECAB8CB0;
  if (!qword_1ECAB8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8CB0);
  }

  return result;
}

unint64_t sub_1D9014738()
{
  result = qword_1ECAB8CC0;
  if (!qword_1ECAB8CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8CB8, &qword_1D91A6DE8);
    sub_1D90147BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8CC0);
  }

  return result;
}

unint64_t sub_1D90147BC()
{
  result = qword_1ECAB8CC8;
  if (!qword_1ECAB8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8CC8);
  }

  return result;
}

uint64_t sub_1D9014810(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8CD0, &qword_1D91A6DF0);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8CD8, &qword_1D91A6DF8);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1D9014B54();
  sub_1D9179EEC();
  if (!v1)
  {
    v22 = a1;
    v12 = v6;
    v13 = v3;
    v14 = v24;
    v26 = 0;
    v15 = sub_1D91798BC();
    v11 = v16;
    v17 = sub_1D8FE6808(v15, v16);

    if (v17)
    {
      v18 = v17 == 1000000000000;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
      if (v20)
      {
        v11 = v20;
        v25 = 1;
        sub_1D9014BFC();
        sub_1D917982C();
        sub_1D91798CC();
        (*(v23 + 8))(v12, v13);
        (*(v14 + 8))(v10, v7);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        return v11;
      }
    }

    sub_1D9014BA8();
    swift_allocError();
    swift_willThrow();
    (*(v14 + 8))(v10, v7);
    a1 = v22;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v11;
}

unint64_t sub_1D9014B54()
{
  result = qword_1ECAB8CE0;
  if (!qword_1ECAB8CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8CE0);
  }

  return result;
}

unint64_t sub_1D9014BA8()
{
  result = qword_1ECAB8CE8;
  if (!qword_1ECAB8CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8CE8);
  }

  return result;
}

unint64_t sub_1D9014BFC()
{
  result = qword_1ECAB8CF0;
  if (!qword_1ECAB8CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8CF0);
  }

  return result;
}

unint64_t sub_1D9014C5C()
{
  result = qword_1ECAB8D00;
  if (!qword_1ECAB8D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D00);
  }

  return result;
}

uint64_t sub_1D9014CB0(int a1, char a2, void *a3, unint64_t a4, char a5)
{
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB96D0, &unk_1D91AC2F0) - 8) + 80);

  return sub_1D904EDF0(a1, a2 & 1, a3, a4, a5 & 1);
}

uint64_t sub_1D9014D64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9014DAC()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D8D58924;

  return sub_1D901017C(v2, v4);
}

uint64_t sub_1D9014E60(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8D5FF18;

  return sub_1D8CF7944(a1, v5);
}

uint64_t sub_1D9014F18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D8D5FF18;

  return sub_1D900F5C4(v2, v3);
}

uint64_t sub_1D9014FCC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1D9011188(a1);
}

uint64_t sub_1D9014FE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8D5FF18;

  return sub_1D9010930(a1);
}

uint64_t sub_1D9015088(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8D5FF18;

  return sub_1D9010CF8(a1, v5, v4);
}

uint64_t sub_1D9015134@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1D9011120(a1);
}

uint64_t sub_1D901517C(uint64_t a1)
{
  v4 = *(sub_1D9176EAC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D8D58924;

  return sub_1D900E118(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1D90152AC(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D8D5FF18;

  return sub_1D900E6EC(a1, a2, v6);
}

uint64_t sub_1D90153C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1D901540C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D9015460()
{
  result = qword_1ECAB8D48;
  if (!qword_1ECAB8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D48);
  }

  return result;
}

unint64_t sub_1D90154B8()
{
  result = qword_1ECAB8D50;
  if (!qword_1ECAB8D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D50);
  }

  return result;
}

unint64_t sub_1D9015510()
{
  result = qword_1ECAB8D58;
  if (!qword_1ECAB8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D58);
  }

  return result;
}

unint64_t sub_1D9015568()
{
  result = qword_1ECAB8D60;
  if (!qword_1ECAB8D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D60);
  }

  return result;
}

unint64_t sub_1D90155C0()
{
  result = qword_1ECAB8D68;
  if (!qword_1ECAB8D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D68);
  }

  return result;
}

unint64_t sub_1D9015618()
{
  result = qword_1ECAB8D70;
  if (!qword_1ECAB8D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D70);
  }

  return result;
}

unint64_t sub_1D9015670()
{
  result = qword_1ECAB8D78;
  if (!qword_1ECAB8D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D78);
  }

  return result;
}

unint64_t sub_1D90156C8()
{
  result = qword_1ECAB8D80;
  if (!qword_1ECAB8D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D80);
  }

  return result;
}

unint64_t sub_1D9015720()
{
  result = qword_1ECAB8D88;
  if (!qword_1ECAB8D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D88);
  }

  return result;
}

unint64_t sub_1D9015778()
{
  result = qword_1ECAB8D90;
  if (!qword_1ECAB8D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8D90);
  }

  return result;
}

id FullFeedRequest.__allocating_init(storeID:isSerial:hasSeasons:)(uint64_t a1, char a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR___MTFullFeedRequest_isSerial] = a2;
  v7[OBJC_IVAR___MTFullFeedRequest_hasSeasons] = a3;
  *&v7[OBJC_IVAR___MTBaseFeedRequest_showMetadata] = 0;
  *&v7[OBJC_IVAR___MTBaseFeedRequest_storeID] = a1;
  v9.receiver = v7;
  v9.super_class = type metadata accessor for BaseFeedRequest();
  return objc_msgSendSuper2(&v9, sel_init);
}

id FullFeedResponse.__allocating_init(jsonArray:request:params:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for MediaRequest.Params();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(v4);
  type metadata accessor for FullFeedRequest();
  *&v12[OBJC_IVAR___MTFullFeedResponse_fullFeedRequest] = swift_dynamicCastClassUnconditional();
  sub_1D8D85B08(a3, v11);
  v13 = a2;
  v14 = BaseFeedResponse.init(jsonArray:request:params:)(a1, v13, v11);
  sub_1D9001E64();

  sub_1D8D90BEC(a3);
  return v14;
}

id FullFeedRequest.init(storeID:isSerial:hasSeasons:)(uint64_t a1, char a2, char a3)
{
  v3[OBJC_IVAR___MTFullFeedRequest_isSerial] = a2;
  v3[OBJC_IVAR___MTFullFeedRequest_hasSeasons] = a3;
  *&v3[OBJC_IVAR___MTBaseFeedRequest_showMetadata] = 0;
  *&v3[OBJC_IVAR___MTBaseFeedRequest_storeID] = a1;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for BaseFeedRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1D9015A5C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v26 - v5;
  v35 = &v26 - v5;
  v36 = sub_1D8D946F4(&unk_1F54612C0);
  sub_1D900B924(&unk_1F54612E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D9189080;
  v37 = *(v1 + OBJC_IVAR___MTBaseFeedRequest_storeID);
  *(v7 + 32) = sub_1D9179A4C();
  *(v7 + 40) = v8;
  v9 = sub_1D9176C2C();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 1, 1, v9);
  v11 = MEMORY[0x1E69E7CC0];
  v34 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v33 = sub_1D8D94DF8(v11);
  v32 = sub_1D8D951E0(v11);
  v31 = sub_1D8D9503C(v11);
  v30 = sub_1D8D9536C(v11);
  v28 = sub_1D8D953C4(v11);
  v26 = sub_1D8D952D8(v11);
  v29 = sub_1D8D95394(v11);
  v27 = sub_1D8D957C4(v11);
  *(a1 + 41) = 263;
  *(a1 + 43) = 5;
  *(a1 + 152) = 1;
  *(a1 + 201) = 1;
  v12 = type metadata accessor for MediaRequest.Params();
  v13 = v12[28];
  v10((a1 + v13), 1, 1, v9);
  v14 = (a1 + v12[29]);
  v15 = (a1 + v12[31]);
  v16 = v12[34];
  v17 = (a1 + v12[33]);
  v18 = (a1 + v12[35]);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 65796;
  v19 = v33;
  *(a1 + 48) = v34;
  *(a1 + 56) = v19;
  v20 = v31;
  *(a1 + 64) = v32;
  *(a1 + 72) = v11;
  v21 = v30;
  *(a1 + 80) = v20;
  *(a1 + 88) = v21;
  v22 = v28;
  *(a1 + 96) = v36;
  *(a1 + 104) = v22;
  v23 = v26;
  *(a1 + 112) = v11;
  *(a1 + 120) = v23;
  *(a1 + 128) = v11;
  *(a1 + 136) = v11;
  *(a1 + 144) = v7;
  *(a1 + 152) = 1;
  *(a1 + 160) = 300;
  *(a1 + 168) = 0;
  v24 = v27;
  *(a1 + 176) = v29;
  *(a1 + 184) = v24;
  *(a1 + 192) = 0;
  *(a1 + 200) = 257;
  *(a1 + 202) = 1;
  result = sub_1D8E26828(v35, a1 + v13);
  *v14 = 0;
  v14[1] = 0;
  *(a1 + v12[30]) = 0;
  *v15 = 0;
  v15[1] = 0;
  *(a1 + v12[32]) = v11;
  *v17 = 0;
  v17[1] = 0;
  *(a1 + v16) = 2;
  *v18 = 0;
  v18[1] = 0;
  return result;
}

id sub_1D9015D40(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for MediaRequest.Params();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  sub_1D8D85B08(a3, &v17 - v10);
  v12 = objc_allocWithZone(type metadata accessor for FullFeedResponse());
  type metadata accessor for FullFeedRequest();
  *&v12[OBJC_IVAR___MTFullFeedResponse_fullFeedRequest] = swift_dynamicCastClassUnconditional();
  sub_1D8D85B08(v11, v8);
  v13 = a2;

  v15 = BaseFeedResponse.init(jsonArray:request:params:)(v14, v13, v8);
  sub_1D9001E64();

  sub_1D8D90BEC(v11);
  return v15;
}

id FullFeedResponse.init(jsonArray:request:params:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for MediaRequest.Params();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FullFeedRequest();
  *(v3 + OBJC_IVAR___MTFullFeedResponse_fullFeedRequest) = swift_dynamicCastClassUnconditional();
  sub_1D8D85B08(a3, v10);
  v11 = a2;
  v12 = BaseFeedResponse.init(jsonArray:request:params:)(a1, v11, v10);
  sub_1D9001E64();

  sub_1D8D90BEC(a3);
  return v12;
}

uint64_t sub_1D9015FFC()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {

    v7 = sub_1D91796FC();

    return v7;
  }

  else
  {
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    swift_bridgeObjectRetain_n();
    sub_1D9179C4C();
    if (swift_dynamicCastMetatype() || (v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_3:
    }

    else
    {
      v6 = (v3 + 32);
      while (*v6)
      {
        ++v6;
        if (!--v5)
        {
          goto LABEL_3;
        }
      }

      return v3 | 1;
    }
  }

  return v2;
}

uint64_t sub_1D901619C(unint64_t a1, unint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR___MTFullFeedResponse_fullFeedRequest) + OBJC_IVAR___MTFullFeedRequest_isSerial);
  v5 = (v2 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache);
  if (v4 == 1)
  {
    swift_beginAccess();
    v10 = *v5;
    v11 = v5[1];
    v12 = v5[2];
    v13 = v5[3];
    v7 = sub_1D90016D0(a1);
    swift_unknownObjectRetain();

    result = swift_unknownObjectRelease();
    if ((v7 & 0xC000000000000001) == 0)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
        {
          v9 = *(v7 + 8 * a2 + 32);
          swift_unknownObjectRetain();
LABEL_6:

          return v9;
        }

        goto LABEL_16;
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_13:
    v9 = MEMORY[0x1DA72AA90](a2, v7);
    goto LABEL_6;
  }

  result = swift_beginAccess();
  v7 = *v5;
  if ((v7 & 0xC000000000000001) != 0)
  {

    goto LABEL_13;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v9 = *(v7 + 8 * a2 + 32);
    swift_unknownObjectRetain();
    return v9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D90163A0(unint64_t a1)
{
  v2 = *(*(v1 + OBJC_IVAR___MTFullFeedResponse_fullFeedRequest) + OBJC_IVAR___MTFullFeedRequest_isSerial);
  v3 = (v1 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache);
  if (v2 != 1)
  {
    swift_beginAccess();
    if (!(*v3 >> 62))
    {
      return *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    goto LABEL_9;
  }

  swift_beginAccess();
  v9 = *v3;
  v10 = v3[1];
  v11 = v3[2];
  v12 = v3[3];
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    v8 = sub_1D917935C();
    if ((v8 & 0x8000000000000000) == 0)
    {
      return v8;
    }

    __break(1u);
LABEL_11:
    v6 = sub_1D917935C();

    if ((v6 & 0x8000000000000000) == 0)
    {
      return v6;
    }

    __break(1u);
    return v8;
  }

  v5 = sub_1D90016D0(a1);
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  if (v5 >> 62)
  {
    goto LABEL_11;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

  return v6;
}

uint64_t sub_1D9016564()
{
  if (*(*(v0 + OBJC_IVAR___MTFullFeedResponse_fullFeedRequest) + OBJC_IVAR___MTFullFeedRequest_isSerial) != 1)
  {
    return 1;
  }

  v1 = v0 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache;
  swift_beginAccess();
  return *(*(v1 + 16) + 16);
}

id sub_1D9016658(unint64_t a1)
{
  v1 = sub_1D90167AC(a1);
  v3 = v2;
  v4 = type metadata accessor for GenericDataSourceSection();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  *v6 = sub_1D8E3B050;
  v6[1] = 0;
  v7 = &v5[OBJC_IVAR___MTGenericDataSourceSection_storedTitle];
  *v7 = v1;
  v7[1] = v3;
  v9.receiver = v5;
  v9.super_class = v4;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_1D90167AC(unint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(v3 + 16);
  if (*(v4 + 16) <= a1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = *(v1 + OBJC_IVAR___MTFullFeedResponse_fullFeedRequest);
  if (*(v5 + OBJC_IVAR___MTFullFeedRequest_isSerial) != 1)
  {
    return 0;
  }

  v6 = *(v4 + 8 * a1 + 32);
  if (v6 == -1)
  {
    if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

LABEL_18:
    swift_once();
    return sub_1D917693C();
  }

  if (!v6)
  {
    if (*(v5 + OBJC_IVAR___MTFullFeedRequest_hasSeasons) == 1)
    {
      if (qword_1EDCD5F00 == -1)
      {
        return sub_1D917693C();
      }

      goto LABEL_18;
    }

    return 0;
  }

  if (*(v5 + OBJC_IVAR___MTFullFeedRequest_hasSeasons) != 1)
  {
    return 0;
  }

  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E6530];
  *(v8 + 16) = xmmword_1D9189080;
  v10 = MEMORY[0x1E69E65A8];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  *(v8 + 32) = v6;
  v11 = sub_1D91781DC();

  return v11;
}

id sub_1D9016A78(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for FullFeedResponse()
{
  result = qword_1ECAB8DB0;
  if (!qword_1ECAB8DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9016BF8()
{
  v1 = OBJC_IVAR___MTPartialFeedRequest_limit;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D9016C90(uint64_t a1)
{
  v3 = OBJC_IVAR___MTPartialFeedRequest_limit;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D9016DBC()
{
  v1 = OBJC_IVAR___MTPartialFeedRequest_sections;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1D9016E70(uint64_t a1)
{
  v3 = OBJC_IVAR___MTPartialFeedRequest_sections;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D9016EC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MTPartialFeedRequest_sections;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_1D9016FD8()
{
  v1 = OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D9017070(char a1)
{
  v3 = OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D9017120@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - v6;
  v39 = &v29 - v6;
  v41 = sub_1D8D946F4(&unk_1F5461370);
  sub_1D900B924(&unk_1F5461390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D9189080;
  v42 = *(v1 + OBJC_IVAR___MTBaseFeedRequest_storeID);
  *(v8 + 32) = sub_1D9179A4C();
  *(v8 + 40) = v9;
  v10 = OBJC_IVAR___MTPartialFeedRequest_limit;
  swift_beginAccess();
  v40 = *(v2 + v10);
  v11 = sub_1D9176C2C();
  v12 = *(*(v11 - 8) + 56);
  v12(v7, 1, 1, v11);
  v13 = MEMORY[0x1E69E7CC0];
  v38 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v37 = sub_1D8D94DF8(v13);
  v36 = sub_1D8D951E0(v13);
  v35 = sub_1D8D9503C(v13);
  v34 = sub_1D8D9536C(v13);
  v33 = sub_1D8D953C4(v13);
  v31 = sub_1D8D952D8(v13);
  v32 = sub_1D8D95394(v13);
  v30 = sub_1D8D957C4(v13);
  *(a1 + 41) = 263;
  *(a1 + 43) = 5;
  *(a1 + 152) = 1;
  *(a1 + 201) = 1;
  v14 = type metadata accessor for MediaRequest.Params();
  v15 = v14[28];
  v12((a1 + v15), 1, 1, v11);
  v16 = (a1 + v14[29]);
  v17 = (a1 + v14[31]);
  v18 = v14[34];
  v19 = (a1 + v14[33]);
  v20 = (a1 + v14[35]);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 65796;
  v21 = v37;
  *(a1 + 48) = v38;
  *(a1 + 56) = v21;
  v22 = v35;
  *(a1 + 64) = v36;
  *(a1 + 72) = v13;
  v23 = v34;
  *(a1 + 80) = v22;
  *(a1 + 88) = v23;
  v24 = v33;
  *(a1 + 96) = v41;
  *(a1 + 104) = v24;
  v25 = v31;
  *(a1 + 112) = v13;
  *(a1 + 120) = v25;
  *(a1 + 128) = v13;
  *(a1 + 136) = v13;
  *(a1 + 144) = v8;
  *(a1 + 152) = 1;
  v26 = v39;
  *(a1 + 160) = v40;
  *(a1 + 168) = 0;
  v27 = v30;
  *(a1 + 176) = v32;
  *(a1 + 184) = v27;
  *(a1 + 192) = 0;
  *(a1 + 200) = 257;
  *(a1 + 202) = 0;
  result = sub_1D8E26828(v26, a1 + v15);
  *v16 = 0;
  v16[1] = 0;
  *(a1 + v14[30]) = 0;
  *v17 = 0;
  v17[1] = 0;
  *(a1 + v14[32]) = v13;
  *v19 = 0;
  v19[1] = 0;
  *(a1 + v18) = 2;
  *v20 = 0;
  v20[1] = 0;
  return result;
}

id sub_1D9017428(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for MediaRequest.Params();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  sub_1D90189A4(a3, &v15 - v11, type metadata accessor for MediaRequest.Params);
  objc_allocWithZone(type metadata accessor for PartialFeedResponse());
  sub_1D90189A4(v12, v9, type metadata accessor for MediaRequest.Params);

  v13 = BaseFeedResponse.init(jsonArray:request:params:)(a1, a2, v9);
  sub_1D9018A0C(v12, type metadata accessor for MediaRequest.Params);
  return v13;
}

id PartialFeedResponse.__allocating_init(jsonArray:request:params:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for MediaRequest.Params();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v3);
  sub_1D90189A4(a3, v10, type metadata accessor for MediaRequest.Params);
  v12 = BaseFeedResponse.init(jsonArray:request:params:)(a1, a2, v10);
  sub_1D9018A0C(a3, type metadata accessor for MediaRequest.Params);
  return v12;
}

id PartialFeedRequest.__allocating_init(storeID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___MTPartialFeedRequest_limit] = 25;
  *&v3[OBJC_IVAR___MTPartialFeedRequest_sections] = MEMORY[0x1E69E7CC0];
  v3[OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial] = 0;
  *&v3[OBJC_IVAR___MTBaseFeedRequest_showMetadata] = 0;
  *&v3[OBJC_IVAR___MTBaseFeedRequest_storeID] = a1;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for BaseFeedRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

id PartialFeedRequest.init(storeID:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___MTPartialFeedRequest_limit] = 25;
  *&v1[OBJC_IVAR___MTPartialFeedRequest_sections] = MEMORY[0x1E69E7CC0];
  v1[OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial] = 0;
  *&v1[OBJC_IVAR___MTBaseFeedRequest_showMetadata] = 0;
  *&v1[OBJC_IVAR___MTBaseFeedRequest_storeID] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BaseFeedRequest();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1D90177FC()
{
  sub_1D9001E64();
  v1 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {

    v7 = sub_1D91796FC();

    return v7;
  }

  else
  {
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    swift_bridgeObjectRetain_n();
    sub_1D9179C4C();
    if (swift_dynamicCastMetatype() || (v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_3:
    }

    else
    {
      v6 = (v3 + 32);
      while (*v6)
      {
        ++v6;
        if (!--v5)
        {
          goto LABEL_3;
        }
      }

      return v3 | 1;
    }
  }

  return v2;
}

uint64_t sub_1D90179A0(unint64_t a1, unint64_t a2)
{
  sub_1D9001E64();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v5 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_request);
  type metadata accessor for PartialFeedRequest();
  v6 = swift_dynamicCastClassUnconditional();
  v7 = OBJC_IVAR___MTPartialFeedRequest_sections;
  result = swift_beginAccess();
  v9 = *(v6 + v7);
  if (*(v9 + 16) <= a1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(v9 + 8 * a1 + 32);
  if (v10 == 1)
  {
    v13 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache;
    swift_beginAccess();
    v2 = *(v2 + v13);
    if ((v2 & 0xC000000000000001) == 0)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
      {
        v12 = *(v2 + 8 * a2 + 32);
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_19:

    v12 = MEMORY[0x1DA72AA90](a2, v2);

    return v12;
  }

  if (v10)
  {
    goto LABEL_25;
  }

  v11 = (v2 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache);
  swift_beginAccess();
  result = v11[3];
  if (result)
  {
    v12 = v11[3];
LABEL_15:
    swift_unknownObjectRetain();
    return v12;
  }

  v2 = *v11;
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_22:

    v12 = MEMORY[0x1DA72AA90](a2, v2);

    goto LABEL_15;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v12 = *(v2 + 8 * a2 + 32);
    swift_unknownObjectRetain();
    goto LABEL_15;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D9017BE0(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_request);
  type metadata accessor for PartialFeedRequest();
  result = swift_dynamicCastClassUnconditional();
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = result;
  v6 = OBJC_IVAR___MTPartialFeedRequest_sections;
  result = swift_beginAccess();
  v7 = *(v5 + v6);
  if (*(v7 + 16) <= a1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = *(v7 + 8 * a1 + 32);
  if (!v8)
  {
    return 1;
  }

  if (v8 == 1)
  {
    v9 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_response;
    swift_beginAccess();
    v10 = *(v1 + v9);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = *(v1 + v9);

      v13 = 0;
      for (i = 32; ; i += 8)
      {
        v15 = *(v10 + i);

        sub_1D91793EC();
        if (*(v15 + 16) && (v16 = sub_1D8D6550C(v20), (v17 & 1) != 0))
        {
          sub_1D8CFAD1C(*(v15 + 56) + 32 * v16, v21);
          sub_1D8D9A308(v20);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
          result = swift_dynamicCast();
          if (result)
          {
            v18 = MEMORY[0x61746174];

            goto LABEL_13;
          }
        }

        else
        {

          result = sub_1D8D9A308(v20);
        }

        v18 = 0;
LABEL_13:
        v19 = __CFADD__(v13, v18);
        v13 += v18;
        if (v19)
        {
          __break(1u);
          goto LABEL_20;
        }

        if (!--v11)
        {

          return v13;
        }
      }
    }

    return 0;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1D9017E28()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_request);
  type metadata accessor for PartialFeedRequest();
  v2 = swift_dynamicCastClassUnconditional();
  v3 = OBJC_IVAR___MTPartialFeedRequest_sections;
  swift_beginAccess();
  return *(*(v2 + v3) + 16);
}

char *sub_1D9017F18(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x100))();
  v5 = v4;
  v6 = type metadata accessor for GenericDataSourceSection();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  *v8 = sub_1D8E3B050;
  v8[1] = 0;
  v9 = &v7[OBJC_IVAR___MTGenericDataSourceSection_storedTitle];
  *v9 = v3;
  v9[1] = v5;
  v16.receiver = v7;
  v16.super_class = v6;
  v10 = objc_msgSendSuper2(&v16, sel_init);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  v12 = &v10[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  swift_beginAccess();
  v13 = v12[1];
  *v12 = sub_1D901899C;
  v12[1] = v11;
  v14 = v1;

  return v10;
}

uint64_t sub_1D9018054(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_request);
  type metadata accessor for PartialFeedRequest();
  result = swift_dynamicCastClassUnconditional();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = OBJC_IVAR___MTPartialFeedRequest_sections;
  result = swift_beginAccess();
  v8 = *(v6 + v7);
  if (*(v8 + 16) <= a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = *(v8 + 8 * a2 + 32);
  if (v9)
  {
    if (v9 != 1)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v10 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_response;
    result = swift_beginAccess();
    v11 = *(a1 + v10);
    if (*(v11 + 16))
    {
      v12 = *(v11 + 32);

      _s18PodcastsFoundation26MediaRequestResponseParserC15extractNextPageySSSgSDys11AnyHashableVypGFZ_0(v13);
      v15 = v14;

      if (v15)
      {

        return 1;
      }

      return 0;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_1D90182BC(unint64_t a1)
{
  v3 = type metadata accessor for EyebrowBuilder.ListContext(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_request);
  type metadata accessor for PartialFeedRequest();
  v8 = swift_dynamicCastClassUnconditional();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  v10 = OBJC_IVAR___MTPartialFeedRequest_sections;
  swift_beginAccess();
  v11 = *(v9 + v10);
  if (*(v11 + 16) <= a1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = *(v11 + 8 * a1 + 32);
  if (v12)
  {
    if (v12 == 1)
    {
      if (qword_1EDCD5F00 == -1)
      {
        return sub_1D917693C();
      }

LABEL_15:
      swift_once();
      return sub_1D917693C();
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1D90179A0(a1, 0);
  type metadata accessor for ServerPodcastEpisode();
  v13 = swift_dynamicCastClassUnconditional();
  v14 = swift_dynamicCastClassUnconditional();
  v15 = OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial;
  swift_beginAccess();
  LOBYTE(v15) = *(v14 + v15);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for EyebrowBuilder(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v36 = &type metadata for IntermediateEyebrowBuilderEpisode;
  v37 = &protocol witness table for IntermediateEyebrowBuilderEpisode;
  v34 = v13;
  v35 = v15;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 64) = 0u;
  *(v19 + 80) = 0u;
  *(v19 + 96) = 0u;
  *(v19 + 112) = 0u;
  *(v19 + 128) = 0u;
  *(v19 + 159) = 0;
  *(v19 + 16) = 0u;
  *(v19 + 144) = 0u;
  sub_1D8CFD9D8(&v34, v19 + 168);
  sub_1D90189A4(v6, v19 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, type metadata accessor for EyebrowBuilder.ListContext);
  *(v19 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) = 0;
  swift_beginAccess();
  *(v19 + 152) = 0;
  *(v19 + 144) = 0;
  *(v19 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_showsSubscriptionBadge) = 1;
  *(v19 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_hostingViewHasLimitedSpace) = 0;
  *(v19 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_suppressPubDate) = 0;
  v20 = v13;
  sub_1D8D2EF54();
  v21 = sub_1D8D3C1DC();
  v23 = v22;
  sub_1D9018A0C(v6, type metadata accessor for EyebrowBuilder.ListContext);
  __swift_destroy_boxed_opaque_existential_1Tm(&v34);
  swift_beginAccess();
  v24 = *(v19 + 24);
  *(v19 + 16) = v21;
  *(v19 + 24) = v23;

  if (v23)
  {

    swift_setDeallocating();
    v25 = *EyebrowBuilder.deinit();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_deallocClassInstance();
    return v21;
  }

  else
  {
    if (qword_1EDCD5F00 != -1)
    {
      swift_once();
    }

    v29 = sub_1D917693C();

    swift_setDeallocating();
    v30 = *EyebrowBuilder.deinit();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_deallocClassInstance();
    return v29;
  }
}

unint64_t sub_1D9018718(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_request);
  type metadata accessor for PartialFeedRequest();
  result = swift_dynamicCastClassUnconditional();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  v6 = OBJC_IVAR___MTPartialFeedRequest_sections;
  result = swift_beginAccess();
  v7 = *(v5 + v6);
  if (*(v7 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = *(v7 + 8 * a1 + 32);
  if (result > 1)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t PartialFeedResponse.SectionType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1D90187E4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id PartialFeedResponse.init(jsonArray:request:params:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MediaRequest.Params();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D90189A4(a3, v9, type metadata accessor for MediaRequest.Params);
  v10 = BaseFeedResponse.init(jsonArray:request:params:)(a1, a2, v9);
  sub_1D9018A0C(a3, type metadata accessor for MediaRequest.Params);
  return v10;
}

id sub_1D90188F4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for PartialFeedResponse()
{
  result = qword_1ECAB8DF0;
  if (!qword_1ECAB8DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D90189A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9018A0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D9018A70()
{
  result = qword_1ECAB8DD8;
  if (!qword_1ECAB8DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8DD8);
  }

  return result;
}

unint64_t sub_1D9018AC8()
{
  result = qword_1ECAB8DE0;
  if (!qword_1ECAB8DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8DE8, &qword_1D91A7530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8DE0);
  }

  return result;
}

uint64_t sub_1D9018E90()
{
  v1 = OBJC_IVAR___MTSeasonFeedRequest_seasons;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1D9018F44(uint64_t a1)
{
  v3 = OBJC_IVAR___MTSeasonFeedRequest_seasons;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D9018F9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MTSeasonFeedRequest_seasons;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

id SeasonFeedRequest.__allocating_init(storeID:seasons:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___MTSeasonFeedRequest_seasons] = a2;
  *&v5[OBJC_IVAR___MTPartialFeedRequest_limit] = 25;
  *&v5[OBJC_IVAR___MTPartialFeedRequest_sections] = MEMORY[0x1E69E7CC0];
  v5[OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial] = 0;
  *&v5[OBJC_IVAR___MTBaseFeedRequest_showMetadata] = 0;
  *&v5[OBJC_IVAR___MTBaseFeedRequest_storeID] = a1;
  v7.receiver = v5;
  v7.super_class = type metadata accessor for BaseFeedRequest();
  return objc_msgSendSuper2(&v7, sel_init);
}

id SeasonFeedRequest.init(storeID:seasons:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___MTSeasonFeedRequest_seasons] = a2;
  *&v2[OBJC_IVAR___MTPartialFeedRequest_limit] = 25;
  *&v2[OBJC_IVAR___MTPartialFeedRequest_sections] = MEMORY[0x1E69E7CC0];
  v2[OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial] = 0;
  *&v2[OBJC_IVAR___MTBaseFeedRequest_showMetadata] = 0;
  *&v2[OBJC_IVAR___MTBaseFeedRequest_storeID] = a1;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BaseFeedRequest();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1D901927C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v36 - v6;
  v45 = sub_1D8E27040(&unk_1F5461318);
  sub_1D8D08A50(&unk_1F5461338, &qword_1ECAB8E08, &qword_1D91A7608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8E10, &unk_1D91A7610);
  inited = swift_initStackObject();
  v46 = xmmword_1D9189080;
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 0;
  v9 = OBJC_IVAR___MTPartialFeedRequest_limit;
  swift_beginAccess();
  *(inited + 40) = *(v2 + v9);
  v10 = sub_1D8E271B8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v11 = swift_allocObject();
  *(v11 + 16) = v46;
  v48 = *(v2 + OBJC_IVAR___MTBaseFeedRequest_storeID);
  *(v11 + 32) = sub_1D9179A4C();
  *(v11 + 40) = v12;
  v43 = v11;
  sub_1D9019874();
  v44 = v10;
  if (v13)
  {
    *&v46 = sub_1D8E272A4(MEMORY[0x1E69E7CC0]);
LABEL_5:
    v20 = sub_1D9176C2C();
    v21 = *(*(v20 - 8) + 56);
    v21(v7, 1, 1, v20);
    v22 = MEMORY[0x1E69E7CC0];
    v41 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
    v40 = sub_1D8D9503C(v22);
    v39 = sub_1D8D9536C(v22);
    v38 = sub_1D8D9536C(v22);
    v37 = sub_1D8D953C4(v22);
    v23 = sub_1D8D952D8(v22);
    v42 = v7;
    v24 = v23;
    v36 = sub_1D8D957C4(v22);
    *(a1 + 41) = 263;
    *(a1 + 43) = 5;
    *(a1 + 152) = 1;
    *(a1 + 201) = 1;
    v25 = type metadata accessor for MediaRequest.Params();
    v26 = v25[28];
    v21((a1 + v26), 1, 1, v20);
    v27 = (a1 + v25[29]);
    v28 = (a1 + v25[31]);
    v29 = v25[34];
    v30 = (a1 + v25[33]);
    v31 = (a1 + v25[35]);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 40) = 33620228;
    v32 = v41;
    *(a1 + 48) = v45;
    *(a1 + 56) = v32;
    *(a1 + 64) = v44;
    *(a1 + 72) = v22;
    v33 = v39;
    *(a1 + 80) = v40;
    *(a1 + 88) = v33;
    v34 = v37;
    *(a1 + 96) = v38;
    *(a1 + 104) = v34;
    *(a1 + 112) = v22;
    *(a1 + 120) = v24;
    *(a1 + 128) = v22;
    *(a1 + 136) = v22;
    *(a1 + 144) = v43;
    *(a1 + 152) = 1;
    *(a1 + 160) = 0;
    *(a1 + 168) = 1;
    v35 = v36;
    *(a1 + 176) = v46;
    *(a1 + 184) = v35;
    *(a1 + 192) = 0;
    *(a1 + 200) = 257;
    *(a1 + 202) = 0;
    result = sub_1D8E26828(v42, a1 + v26);
    *v27 = 0;
    v27[1] = 0;
    *(a1 + v25[30]) = 0;
    *v28 = 0;
    v28[1] = 0;
    *(a1 + v25[32]) = v22;
    *v30 = 0;
    v30[1] = 0;
    *(a1 + v29) = 2;
    *v31 = 0;
    v31[1] = 0;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8D10, &unk_1D91A7620);
  v14 = swift_initStackObject();
  *(v14 + 16) = v46;
  *(v14 + 32) = 1;
  v15 = swift_allocObject();
  *(v15 + 16) = v46;
  v48 = 0;
  v49 = 0xE000000000000000;
  result = sub_1D9019874();
  if ((v17 & 1) == 0)
  {
    v47 = result;
    v18 = sub_1D9179A4C();
    MEMORY[0x1DA7298F0](v18);

    v19 = v49;
    *(v15 + 32) = v48;
    *(v15 + 40) = v19;
    *(v14 + 40) = v15;
    *&v46 = sub_1D8E272A4(v14);
    swift_setDeallocating();
    sub_1D8D08A50(v14 + 32, &qword_1ECAB8D18, &qword_1D91A6E18);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

_BYTE *sub_1D9019718(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for MediaRequest.Params();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D90189A4(a3, v9, type metadata accessor for MediaRequest.Params);
  objc_allocWithZone(type metadata accessor for SeasonFeedResponse());

  return SeasonFeedResponse.init(jsonArray:request:params:)(a1, a2, v9);
}

uint64_t sub_1D901982C()
{
  v1 = OBJC_IVAR___MTSeasonFeedRequest_seasons;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

int64_t sub_1D9019874()
{
  v1 = OBJC_IVAR___MTSeasonFeedRequest_seasons;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  result = *(v2 + 32);
  v5 = v3 - 1;
  if (v3 == 1)
  {
    return result;
  }

  if (v3 > 4)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v7 = vdupq_n_s64(result);
    v8 = (v2 + 56);
    v9 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = v7;
    do
    {
      v7 = vbslq_s8(vcgtq_s64(v7, v8[-1]), v7, v8[-1]);
      v10 = vbslq_s8(vcgtq_s64(v10, *v8), v10, *v8);
      v8 += 2;
      v9 -= 4;
    }

    while (v9);
    v11 = vbslq_s8(vcgtq_s64(v7, v10), v7, v10);
    v12 = vextq_s8(v11, v11, 8uLL).u64[0];
    result = vbsl_s8(vcgtd_s64(v11.i64[0], v12), *v11.i8, v12);
    if (v5 == (v5 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }
  }

  else
  {
    v6 = 1;
  }

  v13 = v3 - v6;
  v14 = (v2 + 8 * v6 + 32);
  do
  {
    v16 = *v14++;
    v15 = v16;
    if (result <= v16)
    {
      result = v15;
    }

    --v13;
  }

  while (v13);
  return result;
}

_BYTE *SeasonFeedResponse.init(jsonArray:request:params:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for MediaRequest.Params();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v42 - v12;
  *(v3 + OBJC_IVAR___MTSeasonFeedResponse_seasonHasMoreEpisodes) = 0;
  sub_1D90189A4(a3, v42 - v12, type metadata accessor for MediaRequest.Params);
  sub_1D90189A4(v13, v10, type metadata accessor for MediaRequest.Params);
  v14 = a2;
  v15 = BaseFeedResponse.init(jsonArray:request:params:)(a1, v14, v10);
  sub_1D9018A0C(v13, type metadata accessor for MediaRequest.Params);
  v16 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_response;
  swift_beginAccess();
  v17 = *&v15[v16];
  if (!*(v17 + 16))
  {
    goto LABEL_15;
  }

  v18 = *(v17 + 32);
  v42[0] = 1635017060;
  v42[1] = 0xE400000000000000;

  sub_1D91793EC();
  if (!*(v18 + 16) || (v19 = sub_1D8D6550C(v43), (v20 & 1) == 0))
  {

    sub_1D8D9A308(v43);
    goto LABEL_17;
  }

  sub_1D8CFAD1C(*(v18 + 56) + 32 * v19, v44);
  sub_1D8D9A308(v43);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
  if (swift_dynamicCast())
  {
    if (*(v42[0] + 16))
    {
      v21 = *(v42[0] + 32);

      strcpy(v42, "attributes");
      BYTE3(v42[1]) = 0;
      HIDWORD(v42[1]) = -369098752;
      sub_1D91793EC();
      if (*(v21 + 16))
      {
        v22 = sub_1D8D6550C(v43);
        if (v23)
        {
          sub_1D8CFAD1C(*(v21 + 56) + 32 * v22, v44);
          sub_1D8D9A308(v43);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4638, &qword_1D918A078);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_21;
          }

          v24 = v42[0];
          strcpy(v42, "episodeCount");
          BYTE5(v42[1]) = 0;
          HIWORD(v42[1]) = -5120;
          sub_1D91793EC();
          if (*(v24 + 16))
          {
            v25 = sub_1D8D6550C(v43);
            if (v26)
            {
              sub_1D8CFAD1C(*(v24 + 56) + 32 * v25, v44);
              sub_1D8D9A308(v43);

              if (swift_dynamicCast())
              {
                v27 = v42[0];
                v28 = *(a3 + 64);
                if (*(v28 + 16))
                {
                  v29 = sub_1D8F06C58(0);
                  v30 = v27;
                  if (v31)
                  {
                    v30 = *(*(v28 + 56) + 8 * v29);
                  }
                }

                else
                {
                  v30 = v42[0];
                }

                v15[OBJC_IVAR___MTSeasonFeedResponse_seasonHasMoreEpisodes] = v30 < v27;
              }

LABEL_21:
              strcpy(v42, "relationships");
              HIWORD(v42[1]) = -4864;
              sub_1D91793EC();
              if (*(v21 + 16))
              {
                v33 = sub_1D8D6550C(v43);
                if (v34)
                {
                  sub_1D8CFAD1C(*(v21 + 56) + 32 * v33, v44);
                  sub_1D8D9A308(v43);

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4638, &qword_1D918A078);
                  if ((swift_dynamicCast() & 1) == 0)
                  {
                    goto LABEL_29;
                  }

                  v35 = v42[0];
                  strcpy(v42, "episodes");
                  BYTE1(v42[1]) = 0;
                  WORD1(v42[1]) = 0;
                  HIDWORD(v42[1]) = -402653184;
                  sub_1D91793EC();
                  if (*(v35 + 16))
                  {
                    v36 = sub_1D8D6550C(v43);
                    if (v37)
                    {
                      sub_1D8CFAD1C(*(v35 + 56) + 32 * v36, v44);
                      sub_1D8D9A308(v43);

                      if (swift_dynamicCast())
                      {
                        v38 = v42[0];
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4630, &unk_1D9192070);
                        v39 = swift_allocObject();
                        *(v39 + 16) = xmmword_1D9189080;
                        *(v39 + 32) = v38;

                        v40 = *&v15[v16];
                        *&v15[v16] = v39;

                        goto LABEL_17;
                      }

LABEL_29:

                      v41 = *&v15[v16];
                      *&v15[v16] = MEMORY[0x1E69E7CC0];

                      goto LABEL_17;
                    }
                  }
                }
              }

              sub_1D8D9A308(v43);
              goto LABEL_29;
            }
          }
        }
      }

      sub_1D8D9A308(v43);
      goto LABEL_21;
    }
  }

  else
  {
LABEL_15:
  }

LABEL_17:
  sub_1D9018A0C(a3, type metadata accessor for MediaRequest.Params);
  return v15;
}

char *sub_1D9019F88(unint64_t a1)
{
  v3 = sub_1D901A2D4(a1);
  v5 = v4;
  v6 = type metadata accessor for GenericDataSourceSection();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  *v8 = sub_1D8E3B050;
  v8[1] = 0;
  v9 = &v7[OBJC_IVAR___MTGenericDataSourceSection_storedTitle];
  *v9 = v3;
  v9[1] = v5;
  v16.receiver = v7;
  v16.super_class = v6;
  v10 = objc_msgSendSuper2(&v16, sel_init);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  v12 = &v10[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  swift_beginAccess();
  v13 = v12[1];
  *v12 = sub_1D901A82C;
  v12[1] = v11;
  v14 = v1;

  return v10;
}

uint64_t sub_1D901A08C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_request);
  type metadata accessor for PartialFeedRequest();
  result = swift_dynamicCastClassUnconditional();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = OBJC_IVAR___MTPartialFeedRequest_sections;
  result = swift_beginAccess();
  v8 = *(v6 + v7);
  if (*(v8 + 16) <= a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v9 = *(v8 + 8 * a2 + 32);
  if (!v9)
  {
    return 0;
  }

  if (v9 != 1)
  {
    goto LABEL_12;
  }

  if (*(a1 + OBJC_IVAR___MTSeasonFeedResponse_seasonHasMoreEpisodes))
  {
    return 1;
  }

  type metadata accessor for SeasonFeedRequest();
  v10 = swift_dynamicCastClassUnconditional();
  v11 = OBJC_IVAR___MTSeasonFeedRequest_seasons;
  swift_beginAccess();
  return *(*(v10 + v11) + 16) > 1uLL;
}

uint64_t sub_1D901A2D4(unint64_t a1)
{
  v3 = type metadata accessor for EyebrowBuilder.ListContext(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_request);
  type metadata accessor for PartialFeedRequest();
  v8 = swift_dynamicCastClassUnconditional();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  v10 = OBJC_IVAR___MTPartialFeedRequest_sections;
  swift_beginAccess();
  v11 = *(v9 + v10);
  if (*(v11 + 16) <= a1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = *(v11 + 8 * a1 + 32);
  if (!v12)
  {
    sub_1D90179A0(a1, 0);
    type metadata accessor for ServerPodcastEpisode();
    v13 = swift_dynamicCastClassUnconditional();
    swift_storeEnumTagMultiPayload();
    v14 = type metadata accessor for EyebrowBuilder(0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    v17 = swift_allocObject();
    v37 = &type metadata for IntermediateEyebrowBuilderEpisode;
    v38 = &protocol witness table for IntermediateEyebrowBuilderEpisode;
    v35 = v13;
    v36 = 1;
    *(v17 + 32) = 0u;
    *(v17 + 48) = 0u;
    *(v17 + 64) = 0u;
    *(v17 + 80) = 0u;
    *(v17 + 96) = 0u;
    *(v17 + 112) = 0u;
    *(v17 + 128) = 0u;
    *(v17 + 159) = 0;
    *(v17 + 16) = 0u;
    *(v17 + 144) = 0u;
    sub_1D8CFD9D8(&v35, v17 + 168);
    sub_1D90189A4(v6, v17 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, type metadata accessor for EyebrowBuilder.ListContext);
    *(v17 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) = 0;
    swift_beginAccess();
    *(v17 + 152) = 0;
    *(v17 + 144) = 0;
    *(v17 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_showsSubscriptionBadge) = 1;
    *(v17 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_hostingViewHasLimitedSpace) = 0;
    *(v17 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_suppressPubDate) = 0;
    a1 = v13;
    sub_1D8D2EF54();
    v18 = sub_1D8D3C1DC();
    v20 = v19;
    sub_1D9018A0C(v6, type metadata accessor for EyebrowBuilder.ListContext);
    __swift_destroy_boxed_opaque_existential_1Tm(&v35);
    swift_beginAccess();
    v21 = *(v17 + 24);
    *(v17 + 16) = v18;
    *(v17 + 24) = v20;

    if (v20)
    {
LABEL_7:

      swift_setDeallocating();
      v22 = *EyebrowBuilder.deinit();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_deallocClassInstance();
      return v18;
    }

    if (qword_1EDCD5F00 == -1)
    {
LABEL_6:
      v18 = sub_1D917693C();
      goto LABEL_7;
    }

LABEL_19:
    swift_once();
    goto LABEL_6;
  }

  if (v12 != 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  type metadata accessor for SeasonFeedRequest();
  if (!swift_dynamicCastClass())
  {
    return 0;
  }

  v25 = sub_1D9019874();
  if (v26)
  {
    return 0;
  }

  v27 = v25;
  v28 = qword_1EDCD5F00;
  v29 = v7;
  if (v28 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E6530];
  *(v30 + 16) = xmmword_1D9189080;
  v32 = MEMORY[0x1E69E65A8];
  *(v30 + 56) = v31;
  *(v30 + 64) = v32;
  *(v30 + 32) = v27;
  v18 = sub_1D91781DC();

  return v18;
}

id sub_1D901A780(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for SeasonFeedResponse()
{
  result = qword_1ECAB8E20;
  if (!qword_1ECAB8E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id RecommendationModuleContentRequest.__allocating_init(moduleID:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___MTRecommendationModuleContentRequest_moduleID];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id RecommendationModuleContentRequest.init(moduleID:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___MTRecommendationModuleContentRequest_moduleID];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for RecommendationModuleContentRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1D901AB44(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v51 = a2;
  v52 = a1;
  v4 = sub_1D917744C();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9176AAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9176C2C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RecommendationModulesCache();
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_opt_self() sharedCacheDirectory];
  sub_1D9176B9C();

  strcpy(v53, "ListenNowCache");
  v53[15] = -18;
  (*(v8 + 104))(v11, *MEMORY[0x1E6968F58], v7);
  sub_1D8D447DC();
  sub_1D9176C0C();
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
  v23 = &v21[*(v18 + 28)];
  *v23 = 0x4D73656C75646F4DLL;
  *(v23 + 1) = 0xEF61746164617465;
  v24 = &v21[*(v18 + 32)];
  strcpy(v24, "ModuleContent-");
  v24[15] = -18;
  v25 = &v3[OBJC_IVAR___MTRecommendationModuleContentRequest_moduleID];
  v26 = *&v3[OBJC_IVAR___MTRecommendationModuleContentRequest_moduleID];
  v27 = *&v3[OBJC_IVAR___MTRecommendationModuleContentRequest_moduleID + 8];

  v28 = RecommendationModulesCache.moduleContent(moduleID:)(v26, v27);

  sub_1D901B7D8(v21);
  v29 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v30 = *&v28[OBJC_IVAR___MTRecommendationModule_attributes];
    if (v30)
    {
      v31 = OBJC_IVAR___MTRecommendationModuleAttributes_resourceTypes;
      swift_beginAccess();
      v32 = *(v30 + v31);
      if (v32)
      {
        if (*(v32 + 16))
        {
          v33 = *(v32 + 32);
          v34 = v48;
          if (v33 <= 1)
          {
            if (v33)
            {
              v35 = &OBJC_IVAR___MTRecommendationModule_shows;
LABEL_11:
              v36 = *v35;
              swift_beginAccess();
              if (*&v28[v36])
              {
                v37 = *&v28[v36];
              }

              else
              {
                v37 = v29;
              }

              if (v37 >> 62)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4620, &qword_1D918A070);
                v29 = sub_1D91796FC();
              }

              else
              {
                sub_1D9179C4C();

                v29 = v37;
              }

              goto LABEL_17;
            }

LABEL_10:
            v35 = &OBJC_IVAR___MTRecommendationModule_episodes;
            goto LABEL_11;
          }

          if (v33 == 6)
          {
            goto LABEL_10;
          }
        }
      }
    }

    while (1)
    {
      sub_1D91796DC();
      __break(1u);
    }
  }

  v34 = v48;
LABEL_17:
  sub_1D917742C();
  v38 = v3;
  v39 = sub_1D917741C();
  v40 = sub_1D9178D1C();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v54 = v42;
    *v41 = 136315138;
    v43 = *v25;
    v44 = v25[1];

    v45 = sub_1D8CFA924(v43, v44, &v54);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_1D8CEC000, v39, v40, "Displaying items from Listen Now module with ID %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x1DA72CB90](v42, -1, -1);
    MEMORY[0x1DA72CB90](v41, -1, -1);
  }

  (*(v49 + 8))(v34, v50);
  v46 = v52;
  type metadata accessor for RecommendationModuleContentResponse();
  *(swift_allocObject() + 16) = v29;
  v46();
}

uint64_t RecommendationModuleContentResponse.__allocating_init(serverObjects:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id RecommendationModuleContentRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecommendationModuleContentRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecommendationModuleContentRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D901B348()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v6 = *(v0 + 16);
    }

    v7 = sub_1D91796FC();

    return v7;
  }

  else
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    swift_bridgeObjectRetain_n();
    sub_1D9179C4C();
    if (swift_dynamicCastMetatype() || (v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_3:
    }

    else
    {
      v5 = (v2 + 32);
      while (*v5)
      {
        ++v5;
        if (!--v4)
        {
          goto LABEL_3;
        }
      }

      return v2 | 1;
    }

    return v1;
  }
}

void sub_1D901B498(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 16);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = *(v2 + 16);

    MEMORY[0x1DA72AA90](a2, v3);

    return;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = *(v3 + 8 * a2 + 32);

  swift_unknownObjectRetain();
}

uint64_t sub_1D901B5D0()
{
  v1 = *(v0 + 16);
  if (!(v1 >> 62))
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 < 0)
  {
    v3 = *(v0 + 16);
  }

  result = sub_1D917935C();
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

id sub_1D901B668()
{
  v0 = type metadata accessor for GenericDataSourceSection();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  *v2 = sub_1D8E3B050;
  v2[1] = 0;
  v3 = &v1[OBJC_IVAR___MTGenericDataSourceSection_storedTitle];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t RecommendationModuleContentResponse.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t RecommendationModuleContentResponse.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D901B7D8(uint64_t a1)
{
  v2 = type metadata accessor for RecommendationModulesCache();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D901B998(char *a1, const void *a2)
{
  v52 = a2;
  v3 = sub_1D917744C();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9176AAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RecommendationModulesCache();
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_opt_self() sharedCacheDirectory];
  sub_1D9176B9C();

  strcpy(v53, "ListenNowCache");
  v53[15] = -18;
  (*(v7 + 104))(v10, *MEMORY[0x1E6968F58], v6);
  sub_1D8D447DC();
  sub_1D9176C0C();
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
  v22 = &v20[*(v17 + 28)];
  *v22 = 0x4D73656C75646F4DLL;
  *(v22 + 1) = 0xEF61746164617465;
  v23 = &v20[*(v17 + 32)];
  strcpy(v23, "ModuleContent-");
  v23[15] = -18;
  v24 = &a1[OBJC_IVAR___MTRecommendationModuleContentRequest_moduleID];
  v25 = *&a1[OBJC_IVAR___MTRecommendationModuleContentRequest_moduleID];
  v26 = *&a1[OBJC_IVAR___MTRecommendationModuleContentRequest_moduleID + 8];

  v27 = RecommendationModulesCache.moduleContent(moduleID:)(v25, v26);

  sub_1D901B7D8(v20);
  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    v29 = *&v27[OBJC_IVAR___MTRecommendationModule_attributes];
    if (v29)
    {
      v30 = OBJC_IVAR___MTRecommendationModuleAttributes_resourceTypes;
      swift_beginAccess();
      v31 = *(v29 + v30);
      if (v31)
      {
        if (*(v31 + 16))
        {
          v32 = *(v31 + 32);
          v33 = v49;
          if (v32 <= 1)
          {
            if (v32)
            {
              v34 = &OBJC_IVAR___MTRecommendationModule_shows;
LABEL_11:
              v35 = *v34;
              swift_beginAccess();
              if (*&v27[v35])
              {
                v36 = *&v27[v35];
              }

              else
              {
                v36 = v28;
              }

              if (v36 >> 62)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4620, &qword_1D918A070);
                v28 = sub_1D91796FC();
              }

              else
              {
                sub_1D9179C4C();

                v28 = v36;
              }

              goto LABEL_17;
            }

LABEL_10:
            v34 = &OBJC_IVAR___MTRecommendationModule_episodes;
            goto LABEL_11;
          }

          if (v32 == 6)
          {
            goto LABEL_10;
          }
        }
      }
    }

    while (1)
    {
      _Block_release(v52);
      sub_1D91796DC();
      __break(1u);
    }
  }

  v33 = v49;
LABEL_17:
  sub_1D917742C();
  v37 = a1;
  v38 = sub_1D917741C();
  v39 = sub_1D9178D1C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v54 = v41;
    *v40 = 136315138;
    v42 = *v24;
    v43 = v24[1];

    v44 = sub_1D8CFA924(v42, v43, &v54);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_1D8CEC000, v38, v39, "Displaying items from Listen Now module with ID %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x1DA72CB90](v41, -1, -1);
    MEMORY[0x1DA72CB90](v40, -1, -1);
  }

  (*(v50 + 8))(v33, v51);
  v45 = v52;
  type metadata accessor for RecommendationModuleContentResponse();
  v46 = swift_allocObject();
  *(v46 + 16) = v28;
  v45[2](v45, v46, 0);
}

uint64_t sub_1D901C01C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v12 = *i;

      a1(&v11, &v12);
      if (v3)
      {
        break;
      }

      if (v11)
      {
        MEMORY[0x1DA729B90](v8);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v9 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
        }

        sub_1D917869C();
        v4 = v13;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

char *sub_1D901C138(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *v5++;
    v17 = v8;
    a1(&v15, &v17);
    if (v3)
    {
      break;
    }

    v9 = v16;
    if (v16)
    {
      v10 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D8D4241C(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_1D8D4241C((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      v7 = &v6[16 * v12];
      *(v7 + 4) = v10;
      *(v7 + 5) = v9;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

uint64_t RecommendationModulesCache.moduleContent(moduleID:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D917744C();
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v27[2] = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9176AAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9176C2C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D917656C();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v30 = sub_1D917655C();
  v21 = (v2 + *(type metadata accessor for RecommendationModulesCache() + 24));
  v22 = v21[1];
  v31 = *v21;
  v32 = v22;

  v27[0] = a1;
  v27[1] = a2;
  MEMORY[0x1DA7298F0](a1, a2);
  (*(v9 + 104))(v12, *MEMORY[0x1E6968F70], v8);
  sub_1D8D447DC();
  sub_1D9176C0C();
  (*(v9 + 8))(v12, v8);

  v23 = sub_1D9176C3C();
  v25 = v24;
  type metadata accessor for RecommendationModule();
  (*(v14 + 8))(v17, v13);
  sub_1D901F4E4(&qword_1ECAB8E50, type metadata accessor for RecommendationModule);
  sub_1D917654C();
  sub_1D8D7567C(v23, v25);

  return v33;
}

uint64_t type metadata accessor for RecommendationModulesCache()
{
  result = qword_1ECAB8E78;
  if (!qword_1ECAB8E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D901C79C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  __swift_allocate_value_buffer(v0, qword_1ECAB8E38);
  v1 = __swift_project_value_buffer(v0, qword_1ECAB8E38);
  v2 = sub_1D9176E3C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static RecommendationModulesCache.dateLastCached.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECAB36C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v3 = __swift_project_value_buffer(v2, qword_1ECAB8E38);
  swift_beginAccess();
  return sub_1D8CF6B1C(v3, a1);
}

uint64_t sub_1D901C8D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECAB36C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v3 = __swift_project_value_buffer(v2, qword_1ECAB8E38);
  swift_beginAccess();
  return sub_1D8CF6B1C(v3, a1);
}

uint64_t sub_1D901C96C(uint64_t a1)
{
  if (qword_1ECAB36C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v3 = __swift_project_value_buffer(v2, qword_1ECAB8E38);
  swift_beginAccess();
  sub_1D901F474(a1, v3);
  return swift_endAccess();
}

Swift::Void __swiftcall RecommendationModulesCache.writeToCache(with:)(Swift::OpaquePointer with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v80 - v6;
  v104 = sub_1D9176AAC();
  v87 = *(v104 - 8);
  v8 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v103 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1D9176C2C();
  v88 = *(v105 - 8);
  v10 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v85 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v102 = v80 - v13;
  v107 = sub_1D917744C();
  v14 = *(v107 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v107);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v80 - v17;
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v101 = v80 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v26 = v80 - v25;
  if (*(with._rawValue + 2))
  {
    v83 = v24;
    v84 = v23;
    v82 = v7;
    sub_1D901DA60();
    v27 = _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(with._rawValue);
    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC0];
    }

    MEMORY[0x1EEE9AC00](v27);
    v80[-2] = v2;
    v29 = sub_1D901C01C(sub_1D901F318, &v80[-4], v28);

    v30 = sub_1D91765CC();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    v106 = sub_1D91765BC();
    if (v29 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D917935C())
    {
      v81 = v4;
      v86 = v14;
      if (!i)
      {
        break;
      }

      v80[1] = v18;
      v35 = 0;
      v100 = v29 & 0xC000000000000001;
      v99 = v29 & 0xFFFFFFFFFFFFFF8;
      v94 = *MEMORY[0x1E6968F70];
      v93 = (v87 + 104);
      v92 = (v87 + 8);
      v95 = (v88 + 8);
      v97 = "6@?<B@?@MTEpisode>24";
      v98 = (v86 + 8);
      *&v33 = 136315138;
      v89 = v33;
      v91 = v2;
      v96 = v29;
      v90 = i;
      while (1)
      {
        if (v100)
        {
          v40 = MEMORY[0x1DA72AA90](v35, v29);
        }

        else
        {
          if (v35 >= *(v99 + 16))
          {
            goto LABEL_26;
          }

          v40 = *(v29 + 8 * v35 + 32);
        }

        v18 = v40;
        v4 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        v111 = v40;
        type metadata accessor for RecommendationModule();
        sub_1D901F4E4(&qword_1ECAB8E58, type metadata accessor for RecommendationModule);
        v41 = sub_1D91765AC();
        v43 = v42;
        v108 = v35 + 1;
        v109 = v35;
        v44 = &v2[*(type metadata accessor for RecommendationModulesCache() + 24)];
        v46 = *v44;
        v45 = v44[1];
        v47 = &v18[OBJC_IVAR___MTRecommendationModule_id];
        swift_beginAccess();
        v110 = v18;
        v18 = v2;
        v49 = *v47;
        v48 = v47[1];
        v111 = v46;
        v112 = v45;

        MEMORY[0x1DA7298F0](v49, v48);
        v50 = v103;
        v51 = v104;
        (*v93)(v103, v94, v104);
        sub_1D8D447DC();
        v52 = v102;
        sub_1D9176C0C();
        (*v92)(v50, v51);

        sub_1D9176CAC();
        (*v95)(v52, v105);
        sub_1D8D7567C(v41, v43);
        v53 = v101;
        sub_1D917742C();
        v54 = v110;
        v55 = sub_1D917741C();
        v14 = sub_1D9178D1C();

        if (os_log_type_enabled(v55, v14))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v111 = v57;
          *v56 = v89;
          v59 = *v47;
          v58 = v47[1];

          v60 = sub_1D8CFA924(v59, v58, &v111);

          *(v56 + 4) = v60;
          _os_log_impl(&dword_1D8CEC000, v55, v14, "Cached module content for id %s", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v57);
          MEMORY[0x1DA72CB90](v57, -1, -1);
          MEMORY[0x1DA72CB90](v56, -1, -1);
        }

        (*v98)(v53, v107);
        v2 = v91;
        v29 = v96;
        v36 = v90;
        v37 = OBJC_IVAR___MTRecommendationModule_shows;
        swift_beginAccess();
        v38 = *&v54[v37];
        *&v54[v37] = 0;

        v4 = OBJC_IVAR___MTRecommendationModule_episodes;
        swift_beginAccess();
        v39 = *&v54[v4];
        *&v54[v4] = 0;

        v35 = v109 + 1;
        if (v108 == v36)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_20:
    v111 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8E60, &qword_1D91A7768);
    sub_1D901F334(&qword_1ECAB8E68, &qword_1ECAB8E58);
    v64 = sub_1D91765AC();
    v66 = v65;

    v67 = &v2[*(type metadata accessor for RecommendationModulesCache() + 20)];
    v68 = v67[1];
    v111 = *v67;
    v112 = v68;
    v69 = v87;
    v70 = v103;
    v71 = v104;
    (*(v87 + 104))(v103, *MEMORY[0x1E6968F70], v104);
    sub_1D8D447DC();

    v72 = v85;
    sub_1D9176C0C();
    (*(v69 + 8))(v70, v71);

    sub_1D9176CAC();
    v73 = v86;
    (*(v88 + 8))(v72, v105);
    sub_1D8D7567C(v64, v66);
    sub_1D917742C();
    v74 = sub_1D917741C();
    v75 = sub_1D9178D1C();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1D8CEC000, v74, v75, "Write to Listen Now cache succeeded", v76, 2u);
      MEMORY[0x1DA72CB90](v76, -1, -1);
    }

    (*(v73 + 8))(v83, v107);
    if (qword_1ECAB36C0 != -1)
    {
      swift_once();
    }

    v77 = __swift_project_value_buffer(v81, qword_1ECAB8E38);
    v78 = v82;
    sub_1D9176E2C();
    v79 = sub_1D9176E3C();
    (*(*(v79 - 8) + 56))(v78, 0, 1, v79);
    swift_beginAccess();
    sub_1D8CF6C70(v78, v77);
    swift_endAccess();
  }

  else
  {
    sub_1D917742C();
    v61 = sub_1D917741C();
    v62 = sub_1D9178D1C();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1D8CEC000, v61, v62, "Write to Listen Now cache failed because the json is empty", v63, 2u);
      MEMORY[0x1DA72CB90](v63, -1, -1);
    }

    (*(v14 + 8))(v26, v107);
  }
}

void sub_1D901DA60()
{
  v27[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D917744C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v5 = objc_opt_self();
  v6 = [v5 defaultManager];
  sub_1D9176BCC();
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v8 = [v6 fileExistsAtPath_];

  if (v8)
  {
LABEL_10:
    v25 = *MEMORY[0x1E69E9840];
    return;
  }

  v9 = [v5 defaultManager];
  v10 = sub_1D9176B1C();
  v27[0] = 0;
  v11 = [v9 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:v27];

  v12 = v27[0];
  if (!v11)
  {
    v26 = v27[0];
    v15 = v27[0];
    v16 = sub_1D9176A6C();

    swift_willThrow();
    sub_1D917742C();
    v17 = v16;
    v18 = sub_1D917741C();
    v19 = sub_1D9178CFC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27[0] = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_1D9179D2C();
      v24 = sub_1D8CFA924(v22, v23, v27);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1D8CEC000, v18, v19, "Failed to create Listen Now Cache directory with error: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1DA72CB90](v21, -1, -1);
      MEMORY[0x1DA72CB90](v20, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v4, v0);
    goto LABEL_10;
  }

  v13 = *MEMORY[0x1E69E9840];

  v14 = v12;
}

uint64_t RecommendationModulesCache.modulesMetadata.getter()
{
  v1 = sub_1D917744C();
  v24 = *(v1 - 8);
  v25 = v1;
  v2 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v23[1] = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9176AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D917656C();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_1D917655C();
  v17 = (v0 + *(type metadata accessor for RecommendationModulesCache() + 20));
  v18 = v17[1];
  v26 = *v17;
  v27 = v18;
  (*(v5 + 104))(v8, *MEMORY[0x1E6968F70], v4);
  sub_1D8D447DC();

  sub_1D9176C0C();
  (*(v5 + 8))(v8, v4);

  v19 = sub_1D9176C3C();
  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8E60, &qword_1D91A7768);
  (*(v10 + 8))(v13, v9);
  sub_1D901F334(&qword_1ECAB8E70, &qword_1ECAB8E50);
  sub_1D917654C();
  sub_1D8D7567C(v19, v21);

  return v28;
}

void sub_1D901E250(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v7 = sub_1D917744C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = objc_opt_self();
  v14 = sub_1D917802C();
  *&v65[0] = 0;
  v15 = [v13 dataWithJSONObject:v14 options:0 error:v65];

  v16 = *&v65[0];
  if (!v15)
  {
    v34 = v16;
    v35 = sub_1D9176A6C();

    swift_willThrow();
LABEL_12:
    v37 = 0;
LABEL_13:
    *a3 = v37;
    v42 = *MEMORY[0x1E69E9840];
    return;
  }

  v60 = v8;
  v59 = a2;
  v17 = sub_1D9176C8C();
  v19 = v18;

  v20 = sub_1D917656C();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_1D917655C();
  type metadata accessor for RecommendationModule();
  sub_1D901F4E4(&qword_1ECAB8E50, type metadata accessor for RecommendationModule);
  v61 = v17;
  sub_1D917654C();
  if (v3)
  {

    sub_1D917742C();
    v23 = v3;
    v24 = sub_1D917741C();
    v25 = sub_1D9178CFC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v58 = a3;
      v28 = v27;
      *&v65[0] = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v29 = sub_1D9179D2C();
      v31 = sub_1D8CFA924(v29, v30, v65);
      v59 = v19;
      v32 = v31;

      *(v26 + 4) = v32;
      _os_log_impl(&dword_1D8CEC000, v24, v25, "Could not decode RecommendationModules from JSON with error: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      v33 = v28;
      a3 = v58;
      MEMORY[0x1DA72CB90](v33, -1, -1);
      MEMORY[0x1DA72CB90](v26, -1, -1);
      sub_1D8D7567C(v61, v59);
    }

    else
    {
      sub_1D8D7567C(v61, v19);
    }

    (*(v60 + 8))(v11, v7);
    goto LABEL_12;
  }

  v36 = v19;

  v37 = *&v65[0];
  v38 = *(*&v65[0] + OBJC_IVAR___MTRecommendationModule_attributes);
  if (v38 && (v39 = OBJC_IVAR___MTRecommendationModuleAttributes_resourceTypes, swift_beginAccess(), *(v38 + v39)))
  {

    v41 = *(v40 + 16);
    if (!v41)
    {
LABEL_9:

LABEL_18:
      sub_1D8D7567C(v61, v36);
LABEL_19:

      v37 = 0;
      goto LABEL_13;
    }
  }

  else
  {

    v40 = MEMORY[0x1E69E7CC0];
    v41 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v41)
    {
      goto LABEL_9;
    }
  }

  v43 = *(v40 + 32);

  if (v41 != 1)
  {
    goto LABEL_18;
  }

  v58 = a3;
  v44 = sub_1D917802C();
  v45 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v46 = [v44 valueForKeyPath_];

  if (v46)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
  }

  v65[0] = v63;
  v65[1] = v64;
  if (*(&v64 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
    if (swift_dynamicCast())
    {
      v47 = v62;
      goto LABEL_26;
    }
  }

  else
  {
    sub_1D8D64450(v65);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4630, &unk_1D9192070);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1D9189080;
  *(v47 + 32) = sub_1D8D653BC(MEMORY[0x1E69E7CC0]);
LABEL_26:
  if (!v43)
  {
    v48 = sub_1D901EE60(v47);

    v49 = OBJC_IVAR___MTRecommendationModule_episodes;
    goto LABEL_30;
  }

  if (v43 == 1)
  {
    v48 = sub_1D901E9A8(v47);

    v49 = OBJC_IVAR___MTRecommendationModule_shows;
LABEL_30:
    swift_beginAccess();
    v50 = *&v37[v49];
    *&v37[v49] = v48;

    v51 = OBJC_IVAR___MTRecommendationModule_shows;
    swift_beginAccess();
    v52 = *&v37[v51];
    if (v52)
    {
      if (v52 >> 62)
      {
        if (v52 < 0)
        {
          v53 = *&v37[v51];
        }

        if (sub_1D917935C())
        {
          goto LABEL_33;
        }
      }

      else if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_33:
        sub_1D8D7567C(v61, v36);
        goto LABEL_43;
      }
    }

    v54 = OBJC_IVAR___MTRecommendationModule_episodes;
    swift_beginAccess();
    v55 = *&v37[v54];
    if (v55)
    {
      a3 = v58;
      if (v55 >> 62)
      {
        if (v55 < 0)
        {
          v57 = *&v37[v54];
        }

        v56 = sub_1D917935C();
      }

      else
      {
        v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1D8D7567C(v61, v36);
      if (v56)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }

    sub_1D8D7567C(v61, v36);

    v37 = 0;
LABEL_43:
    a3 = v58;
    goto LABEL_13;
  }

  sub_1D91796DC();
  __break(1u);
}

unint64_t sub_1D901E9A8(uint64_t a1)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D917744C();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 0;
  v8 = 0;
  v34 = MEMORY[0x1E69E7CC0];
  v36[0] = MEMORY[0x1E69E7CC0];
  v9 = *(a1 + 16);
  v10 = a1 + 32;
  if (v9)
  {
    do
    {
      while (1)
      {
        if (v7 >= v9)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          v11 = sub_1D917935C();
LABEL_5:
          *(v8 + 4) = v11;

          *(v8 + 12) = 2080;
          v35 = type metadata accessor for ServerPodcast();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8E88, &qword_1D91A77C8);
          v12 = sub_1D917826C();
          v14 = sub_1D8CFA924(v12, v13, v36);

          *(v8 + 14) = v14;
          _os_log_impl(&dword_1D8CEC000, v1, v7, "Parsed %ld %s(s)", v8, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v2);
          MEMORY[0x1DA72CB90](v2, -1, -1);
          MEMORY[0x1DA72CB90](v8, -1, -1);

          goto LABEL_17;
        }

        v2 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          goto LABEL_19;
        }

        v16 = *(v10 + 8 * v7);
        v17 = objc_opt_self();

        v18 = sub_1D917802C();
        v35 = 0;
        v19 = [v17 dataWithJSONObject:v18 options:0 error:&v35];

        v20 = v35;
        if (v19)
        {
          break;
        }

        v15 = v20;
        v1 = sub_1D9176A6C();

        swift_willThrow();

        v8 = 0;
        v7 = (v7 + 1);
LABEL_7:
        if (v9 == v7)
        {
          goto LABEL_2;
        }
      }

      v21 = sub_1D9176C8C();
      v23 = v22;

      v24 = sub_1D917656C();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v1 = sub_1D917655C();
      type metadata accessor for ServerPodcast();
      sub_1D901F4E4(&qword_1ECAB26C0, type metadata accessor for ServerPodcast);
      sub_1D917654C();

      sub_1D8D7567C(v21, v23);

      v7 = (v7 + 1);
      if (!v35)
      {
        goto LABEL_7;
      }

      v1 = v36;
      MEMORY[0x1DA729B90](v27);
      if (*((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28 = *((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D917863C();
      }

      sub_1D917869C();
      v34 = v36[0];
      v7 = v2;
    }

    while (v9 != v2);
  }

LABEL_2:
  v9 = v31;
  sub_1D917742C();
  v10 = v34;

  v1 = sub_1D917741C();
  LOBYTE(v7) = sub_1D9178D1C();
  if (os_log_type_enabled(v1, v7))
  {
    v8 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v36[0] = v2;
    *v8 = 134218242;
    if (v10 >> 62)
    {
      goto LABEL_20;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

LABEL_17:
  (*(v32 + 8))(v9, v33);
  v29 = *MEMORY[0x1E69E9840];
  return v10;
}

unint64_t sub_1D901EE60(uint64_t a1)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D917744C();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 0;
  v8 = 0;
  v34 = MEMORY[0x1E69E7CC0];
  v36[0] = MEMORY[0x1E69E7CC0];
  v9 = *(a1 + 16);
  v10 = a1 + 32;
  if (v9)
  {
    do
    {
      while (1)
      {
        if (v7 >= v9)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          v11 = sub_1D917935C();
LABEL_5:
          *(v8 + 4) = v11;

          *(v8 + 12) = 2080;
          v35 = type metadata accessor for ServerPodcastEpisode();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8E90, &qword_1D91A77D0);
          v12 = sub_1D917826C();
          v14 = sub_1D8CFA924(v12, v13, v36);

          *(v8 + 14) = v14;
          _os_log_impl(&dword_1D8CEC000, v1, v7, "Parsed %ld %s(s)", v8, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v2);
          MEMORY[0x1DA72CB90](v2, -1, -1);
          MEMORY[0x1DA72CB90](v8, -1, -1);

          goto LABEL_17;
        }

        v2 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          goto LABEL_19;
        }

        v16 = *(v10 + 8 * v7);
        v17 = objc_opt_self();

        v18 = sub_1D917802C();
        v35 = 0;
        v19 = [v17 dataWithJSONObject:v18 options:0 error:&v35];

        v20 = v35;
        if (v19)
        {
          break;
        }

        v15 = v20;
        v1 = sub_1D9176A6C();

        swift_willThrow();

        v8 = 0;
        v7 = (v7 + 1);
LABEL_7:
        if (v9 == v7)
        {
          goto LABEL_2;
        }
      }

      v21 = sub_1D9176C8C();
      v23 = v22;

      v24 = sub_1D917656C();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v1 = sub_1D917655C();
      type metadata accessor for ServerPodcastEpisode();
      sub_1D901F4E4(&qword_1ECAB1D70, type metadata accessor for ServerPodcastEpisode);
      sub_1D917654C();

      sub_1D8D7567C(v21, v23);

      v7 = (v7 + 1);
      if (!v35)
      {
        goto LABEL_7;
      }

      v1 = v36;
      MEMORY[0x1DA729B90](v27);
      if (*((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28 = *((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D917863C();
      }

      sub_1D917869C();
      v34 = v36[0];
      v7 = v2;
    }

    while (v9 != v2);
  }

LABEL_2:
  v9 = v31;
  sub_1D917742C();
  v10 = v34;

  v1 = sub_1D917741C();
  LOBYTE(v7) = sub_1D9178D1C();
  if (os_log_type_enabled(v1, v7))
  {
    v8 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v36[0] = v2;
    *v8 = 134218242;
    if (v10 >> 62)
    {
      goto LABEL_20;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

LABEL_17:
  (*(v32 + 8))(v9, v33);
  v29 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1D901F334(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8E60, &qword_1D91A7768);
    sub_1D901F4E4(a2, type metadata accessor for RecommendationModule);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D901F3F8()
{
  result = sub_1D9176C2C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D901F474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D901F4E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D901F52C(void (*a1)(uint64_t, void), uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_1D917744C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecommendationModulesResponse();
  swift_allocObject();
  if (RecommendationModulesResponse.init()())
  {
    sub_1D917742C();
    v15 = sub_1D917741C();
    v16 = sub_1D9178D1C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D8CEC000, v15, v16, "RecommendationModulesRequest returning cached response", v17, 2u);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }

    (*(v11 + 8))(v14, v10);

    a1(v18, 0);
  }

  else
  {
    v20 = sub_1D917886C();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v3;
    v21[5] = a1;
    v21[6] = a2;
    v22 = v3;

    sub_1D8E91268(0, 0, v9, &unk_1D91A77E8, v21);
  }
}

uint64_t sub_1D901F828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90) - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v8 = type metadata accessor for MediaRequest.Params();
  v6[14] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v10 = sub_1D917744C();
  v6[16] = v10;
  v11 = *(v10 - 8);
  v6[17] = v11;
  v12 = *(v11 + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D901F960, 0, 0);
}

uint64_t sub_1D901F960()
{
  v1 = v0[19];
  sub_1D917742C();
  v2 = sub_1D917741C();
  v3 = sub_1D9178D1C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D8CEC000, v2, v3, "RecommendationModulesRequest creating personalized payload", v4, 2u);
    MEMORY[0x1DA72CB90](v4, -1, -1);
  }

  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[17];

  (*(v7 + 8))(v5, v6);
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_1D901FAB4;
  v9 = v0[10];

  return sub_1D902054C();
}

uint64_t sub_1D901FAB4(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D901FBB4, 0, 0);
}

uint64_t sub_1D901FBB4()
{
  v41 = v0[21];
  v43 = v0[18];
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v39 = v3;
  v40 = sub_1D8D946F4(&unk_1F5461610);
  sub_1D8D08A50(&unk_1F5461630, &unk_1ECAB9A50, &unk_1D9197130);
  v38 = sub_1D8D946F4(&unk_1F5461640);
  sub_1D8D08A50(&unk_1F5461660, &unk_1ECAB9A50, &unk_1D9197130);
  v4 = sub_1D9176C2C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  v6 = MEMORY[0x1E69E7CC0];
  v37 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v36 = sub_1D8D94DF8(v6);
  v35 = sub_1D8D951E0(v6);
  v33 = sub_1D8D9503C(v6);
  v30 = sub_1D8D953C4(v6);
  v32 = sub_1D8D952D8(v6);
  v34 = sub_1D8D95394(v6);
  v29 = sub_1D8D957C4(v6);
  *(v1 + 41) = 263;
  *(v1 + 43) = 5;
  *(v1 + 152) = 1;
  *(v1 + 201) = 1;
  v7 = v2[28];
  v5(v1 + v7, 1, 1, v4);
  v8 = (v1 + v2[29]);
  v9 = (v1 + v2[31]);
  v31 = v2[34];
  v10 = (v1 + v2[33]);
  v11 = (v1 + v2[35]);
  *v1 = v41;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 83953409;
  *(v1 + 48) = v37;
  *(v1 + 56) = v36;
  *(v1 + 64) = v35;
  *(v1 + 72) = v6;
  *(v1 + 80) = v33;
  *(v1 + 88) = v40;
  *(v1 + 96) = v38;
  *(v1 + 104) = v30;
  *(v1 + 112) = v6;
  *(v1 + 120) = v32;
  *(v1 + 128) = &unk_1F54615E8;
  *(v1 + 136) = &unk_1F5461698;
  *(v1 + 144) = v6;
  *(v1 + 152) = 1;
  *(v1 + 160) = 0;
  *(v1 + 168) = 1;
  *(v1 + 176) = v34;
  *(v1 + 184) = v29;
  *(v1 + 192) = 0;
  *(v1 + 200) = 1;
  *(v1 + 202) = 0;
  sub_1D8E26828(v39, v1 + v7);
  *v8 = 0;
  v8[1] = 0;
  *(v1 + v2[30]) = 0;
  *v9 = 0;
  v9[1] = 0;
  *(v1 + v2[32]) = &unk_1F5461670;
  *v10 = 0;
  v10[1] = 0;
  *(v1 + v31) = 2;
  *v11 = 0;
  v11[1] = 0;
  sub_1D917742C();
  v12 = sub_1D917741C();
  v13 = sub_1D9178D1C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D8CEC000, v12, v13, "RecommendationModulesRequest fetching recommendations", v14, 2u);
    MEMORY[0x1DA72CB90](v14, -1, -1);
  }

  v15 = v0[18];
  v16 = v0[16];
  v17 = v0[17];
  v18 = v0[15];
  v19 = v0[12];
  v42 = v0[19];
  v44 = v0[13];
  v21 = v0[10];
  v20 = v0[11];

  (*(v17 + 8))(v15, v16);
  v22 = OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController;
  swift_beginAccess();
  sub_1D8CFD9D8(v21 + v22, (v0 + 2));
  v23 = v0[5];
  v24 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  *(v25 + 24) = v19;
  v26 = *(v24 + 56);

  v26(v18, sub_1D9026F38, v25, v23, v24);

  sub_1D9026F40(v18, type metadata accessor for MediaRequest.Params);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v27 = v0[1];

  return v27();
}

void sub_1D9020030(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(void, void), uint64_t a7)
{
  v11 = sub_1D917744C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v44 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v44 - v20;
  if (a5)
  {
    v22 = a5;
    sub_1D917742C();
    v23 = a5;
    v24 = sub_1D917741C();
    v25 = sub_1D9178CFC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v45 = a6;
      v27 = v26;
      v28 = swift_slowAlloc();
      v44[1] = a7;
      v29 = v28;
      v46 = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v30 = sub_1D9179D2C();
      v32 = sub_1D8CFA924(v30, v31, &v46);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1D8CEC000, v24, v25, "RecommendationModulesRequest fetching recommendations failed with error: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1DA72CB90](v29, -1, -1);
      v33 = v27;
      a6 = v45;
      MEMORY[0x1DA72CB90](v33, -1, -1);
    }

    (*(v12 + 8))(v21, v11);
    v34 = a5;
    a6(0, a5);
  }

  else
  {
    if (a3)
    {

      sub_1D917742C();
      v35 = sub_1D917741C();
      v36 = sub_1D9178D1C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1D8CEC000, v35, v36, "RecommendationModulesRequest completed", v37, 2u);
        MEMORY[0x1DA72CB90](v37, -1, -1);
      }

      (*(v12 + 8))(v15, v11);
      type metadata accessor for RecommendationModulesResponse();
      v38 = swift_allocObject();
      RecommendationModulesResponse.init(json:)(a3);
      a6(v38, 0);
    }

    else
    {
      sub_1D917742C();
      v39 = sub_1D917741C();
      v40 = sub_1D9178D1C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1D8CEC000, v39, v40, "RecommendationModulesRequest returned no results", v41, 2u);
        MEMORY[0x1DA72CB90](v41, -1, -1);
      }

      (*(v12 + 8))(v18, v11);
      v42 = sub_1D8D653BC(MEMORY[0x1E69E7CC0]);
      type metadata accessor for RecommendationModulesResponse();
      v43 = swift_allocObject();
      RecommendationModulesResponse.init(json:)(v42);
      a6(v43, 0);
    }
  }
}

uint64_t RecommendationModulesResponse.__allocating_init(json:)(void *a1)
{
  v2 = swift_allocObject();
  RecommendationModulesResponse.init(json:)(a1);
  return v2;
}

uint64_t sub_1D902054C()
{
  v1[97] = v0;
  v2 = sub_1D917744C();
  v1[98] = v2;
  v3 = *(v2 - 8);
  v1[99] = v3;
  v4 = *(v3 + 64) + 15;
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v5 = *(*(sub_1D917825C() - 8) + 64) + 15;
  v1[109] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9020698, 0, 0);
}

uint64_t sub_1D9020698()
{
  v0[110] = sub_1D8E2696C(MEMORY[0x1E69E7CC0]);
  v1 = sub_1D91765CC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[111] = sub_1D91765BC();
  v4 = swift_task_alloc();
  v0[112] = v4;
  *v4 = v0;
  v4[1] = sub_1D9020760;
  v5 = v0[97];

  return sub_1D9022E14((v0 + 79));
}

uint64_t sub_1D9020760()
{
  v1 = *(*v0 + 896);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D902085C, 0, 0);
}

uint64_t sub_1D902085C()
{
  v54 = v0;
  v1 = *(v0 + 888);
  v2 = *(v0 + 632);
  *(v0 + 904) = v2;
  v52 = *(v0 + 640);
  *(v0 + 912) = v52;
  *(v0 + 760) = v2;

  *(v0 + 928) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8A10, &qword_1D91A4DB0);
  *(v0 + 936) = sub_1D9026800(&qword_1ECAAFF28, &qword_1ECAB8A10, &qword_1D91A4DB0, sub_1D8FEEE60);
  v3 = sub_1D91765AC();
  v5 = v4;
  v6 = *(v0 + 872);
  sub_1D917824C();
  v7 = sub_1D917822C();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    sub_1D8D7567C(v3, v5);
  }

  else
  {
    sub_1D8D7567C(v3, v5);

    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = *(v0 + 864);
  *(v0 + 944) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8EB0, &qword_1D91A78C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 0x6465776F6C6C6F66;
  *(inited + 40) = 0xE800000000000000;
  *(v0 + 952) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8EB8, &unk_1D91A78C8);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1D9189080;
  *(v13 + 32) = 0x7374736163646F70;
  *(v13 + 40) = 0xE800000000000000;
  *(v13 + 48) = v9;
  *(v13 + 56) = v10;

  v14 = sub_1D8E27090(v13);
  swift_setDeallocating();
  sub_1D8D08A50(v13 + 32, &qword_1ECAB8C48, &unk_1D91A6960);
  *(inited + 48) = v14;
  *(v0 + 960) = sub_1D8E2731C(inited);
  swift_setDeallocating();
  sub_1D8D08A50(inited + 32, &qword_1ECAB8EC0, &qword_1D91A78D8);
  sub_1D917742C();

  v15 = sub_1D917741C();
  v16 = sub_1D9178CEC();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 864);
  v19 = *(v0 + 792);
  v20 = *(v0 + 784);
  if (v17)
  {
    v21 = swift_slowAlloc();
    v50 = v18;
    v22 = swift_slowAlloc();
    v53[0] = v22;
    *v21 = 136315138;
    v23 = sub_1D8CFA924(v9, v10, v53);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_1D8CEC000, v15, v16, "Recommendations Metadata - followed shows %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1DA72CB90](v22, -1, -1);
    MEMORY[0x1DA72CB90](v21, -1, -1);

    v24 = *(v19 + 8);
    v24(v50, v20);
  }

  else
  {

    v24 = *(v19 + 8);
    v24(v18, v20);
  }

  v51 = v24;
  *(v0 + 968) = v24;
  v25 = *(v0 + 888);
  *(v0 + 728) = v52;

  v26 = sub_1D91765AC();
  v28 = v27;
  *(v0 + 976) = 0;
  v29 = *(v0 + 872);
  sub_1D917824C();
  v30 = sub_1D917822C();
  if (v31)
  {
    v32 = v30;
    v33 = v31;
    sub_1D8D7567C(v26, v28);
  }

  else
  {
    sub_1D8D7567C(v26, v28);

    v32 = 0;
    v33 = 0xE000000000000000;
  }

  v34 = *(v0 + 856);
  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_1D9189080;
  strcpy((v35 + 32), "not-followed");
  *(v35 + 45) = 0;
  *(v35 + 46) = -5120;
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1D9189080;
  *(v36 + 32) = 0x7374736163646F70;
  *(v36 + 40) = 0xE800000000000000;
  *(v36 + 48) = v32;
  *(v36 + 56) = v33;

  v37 = sub_1D8E27090(v36);
  swift_setDeallocating();
  sub_1D8D08A50(v36 + 32, &qword_1ECAB8C48, &unk_1D91A6960);
  *(v35 + 48) = v37;
  *(v0 + 984) = sub_1D8E2731C(v35);
  swift_setDeallocating();
  sub_1D8D08A50(v35 + 32, &qword_1ECAB8EC0, &qword_1D91A78D8);
  sub_1D917742C();

  v38 = sub_1D917741C();
  v39 = sub_1D9178CEC();

  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 856);
  v42 = *(v0 + 792);
  v43 = *(v0 + 784);
  if (v40)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v53[0] = v45;
    *v44 = 136315138;
    v46 = sub_1D8CFA924(v32, v33, v53);

    *(v44 + 4) = v46;
    _os_log_impl(&dword_1D8CEC000, v38, v39, "Recommendations Metadata - nonfollowed shows %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x1DA72CB90](v45, -1, -1);
    MEMORY[0x1DA72CB90](v44, -1, -1);
  }

  else
  {
  }

  v51(v41, v43);
  v47 = swift_task_alloc();
  *(v0 + 992) = v47;
  *v47 = v0;
  v47[1] = sub_1D9020F28;
  v48 = *(v0 + 776);

  return sub_1D9023714(v0 + 656);
}

uint64_t sub_1D9020F28()
{
  v1 = *(*v0 + 992);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D9021024, 0, 0);
}

uint64_t sub_1D9021024()
{
  v35 = v0;
  v1 = *(v0 + 976);
  v2 = *(v0 + 888);
  v3 = *(v0 + 656);
  *(v0 + 1000) = v3;
  *(v0 + 1016) = *(v0 + 672);
  *(v0 + 704) = v3;

  *(v0 + 1024) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89C0, &qword_1D91A4D80);
  *(v0 + 1032) = sub_1D9026800(&qword_1ECAAFF20, &qword_1ECAB89C0, &qword_1D91A4D80, sub_1D8FEEA58);
  v4 = sub_1D91765AC();
  if (v1)
  {

    v6 = 0;
    v7 = 0xC000000000000000;
  }

  else
  {
    v6 = v4;
    v7 = v5;
  }

  *(v0 + 1040) = 0;
  v8 = *(v0 + 872);
  sub_1D917824C();
  v9 = sub_1D917822C();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    sub_1D8D7567C(v6, v7);
  }

  else
  {
    sub_1D8D7567C(v6, v7);

    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v32 = v11;
  v13 = *(v0 + 952);
  v14 = *(v0 + 944);
  v15 = *(v0 + 848);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 0x6269726373627573;
  *(inited + 40) = 0xEA00000000006465;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1D9189080;
  *(v17 + 32) = 0xD000000000000010;
  *(v17 + 40) = 0x80000001D91C7F60;
  *(v17 + 48) = v11;
  *(v17 + 56) = v12;

  v18 = sub_1D8E27090(v17);
  swift_setDeallocating();
  sub_1D8D08A50(v17 + 32, &qword_1ECAB8C48, &unk_1D91A6960);
  *(inited + 48) = v18;
  *(v0 + 1048) = sub_1D8E2731C(inited);
  swift_setDeallocating();
  sub_1D8D08A50(inited + 32, &qword_1ECAB8EC0, &qword_1D91A78D8);
  sub_1D917742C();

  v19 = sub_1D917741C();
  v20 = sub_1D9178CEC();

  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 968);
  v23 = *(v0 + 848);
  v24 = *(v0 + 792);
  v25 = *(v0 + 784);
  if (v21)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34 = v27;
    *v26 = 136315138;
    v33 = v22;
    v28 = sub_1D8CFA924(v32, v12, &v34);

    *(v26 + 4) = v28;
    _os_log_impl(&dword_1D8CEC000, v19, v20, "Recommendations Metadata - subscribed channels %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1DA72CB90](v27, -1, -1);
    MEMORY[0x1DA72CB90](v26, -1, -1);

    v33(v23, v25);
  }

  else
  {

    v22(v23, v25);
  }

  v29 = swift_task_alloc();
  *(v0 + 1056) = v29;
  *v29 = v0;
  v29[1] = sub_1D902142C;
  v30 = *(v0 + 776);

  return sub_1D90242B0(v0 + 696);
}

uint64_t sub_1D902142C()
{
  v1 = *(*v0 + 1056);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D9021528, 0, 0);
}

uint64_t sub_1D9021528()
{
  v34 = v0;
  v1 = v0[130];
  v2 = v0[111];
  v0[96] = v0[87];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89E8, &qword_1D91A4D98);
  sub_1D9026800(&qword_1ECAAFF18, &qword_1ECAB89E8, &qword_1D91A4D98, sub_1D8FEEC5C);
  v3 = sub_1D91765AC();
  if (v1)
  {

    v5 = 0;
    v6 = 0xC000000000000000;
  }

  else
  {
    v5 = v3;
    v6 = v4;
  }

  v0[133] = 0;
  v7 = v0[109];
  sub_1D917824C();
  v8 = sub_1D917822C();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    sub_1D8D7567C(v5, v6);
  }

  else
  {
    sub_1D8D7567C(v5, v6);

    v10 = 0;
    v11 = 0xE000000000000000;
  }

  v31 = v10;
  v12 = v0[119];
  v13 = v0[118];
  v14 = v0[105];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 0x796C746E65636572;
  *(inited + 40) = 0xEF646579616C702DLL;
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1D9189080;
  *(v16 + 32) = 0xD000000000000010;
  *(v16 + 40) = 0x80000001D91C7F20;
  *(v16 + 48) = v10;
  *(v16 + 56) = v11;

  v17 = sub_1D8E27090(v16);
  swift_setDeallocating();
  sub_1D8D08A50(v16 + 32, &qword_1ECAB8C48, &unk_1D91A6960);
  *(inited + 48) = v17;
  v0[134] = sub_1D8E2731C(inited);
  swift_setDeallocating();
  sub_1D8D08A50(inited + 32, &qword_1ECAB8EC0, &qword_1D91A78D8);
  sub_1D917742C();

  v18 = sub_1D917741C();
  v19 = sub_1D9178CEC();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[121];
  v22 = v0[105];
  v23 = v0[99];
  v24 = v0[98];
  if (v20)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33 = v26;
    *v25 = 136315138;
    v32 = v21;
    v27 = sub_1D8CFA924(v31, v11, &v33);

    *(v25 + 4) = v27;
    _os_log_impl(&dword_1D8CEC000, v18, v19, "Recommendations Metadata - recently played %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1DA72CB90](v26, -1, -1);
    MEMORY[0x1DA72CB90](v25, -1, -1);

    v32(v22, v24);
  }

  else
  {

    v21(v22, v24);
  }

  v28 = swift_task_alloc();
  v0[135] = v28;
  *v28 = v0;
  v28[1] = sub_1D9021914;
  v29 = v0[97];

  return sub_1D902480C((v0 + 85));
}

uint64_t sub_1D9021914()
{
  v1 = *(*v0 + 1080);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D9021A10, 0, 0);
}