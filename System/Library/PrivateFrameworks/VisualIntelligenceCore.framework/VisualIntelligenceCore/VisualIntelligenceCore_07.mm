void *sub_1D8817D24(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
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
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
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
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D8817EA0(unsigned int (**a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CVTrackSnapshot(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E28);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v25 - v19;
  sub_1D881BFE4(v4, v17, type metadata accessor for CVTrackSnapshot);
  v28 = v9;
  v21 = *(v9 + 56);
  v21(v17, 0, 1, v8);
  v27 = v21;
  v21(v20, 1, 1, v8);
  result = sub_1D881F4D8(v17, v20);
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    sub_1D881F6FC(v20, a1, &qword_1ECA63E28);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v26 = a1;
    a1 = (v28 + 48);
    v23 = 1;
    while (1)
    {
      sub_1D881F6FC(v20, v15, &qword_1ECA63E20);
      v27(v20, 1, 1, v8);
      if ((*a1)(v15, 1, v8) == 1)
      {
        break;
      }

      sub_1D881BFE4(v15, v11, type metadata accessor for CVTrackSnapshot);
      sub_1D881BFE4(v11, a2, type metadata accessor for CVTrackSnapshot);
      if (a3 == v23)
      {
        goto LABEL_12;
      }

      a2 += *(v28 + 72);
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_1D87A14E4(v15, &qword_1ECA63E20);
    a3 = v23 - 1;
LABEL_12:
    a1 = v26;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *sub_1D88181B8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
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
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7)) | (v9 << 6);
      v15 = *(*(a4 + 48) + v14);
      v16 = (*(a4 + 56) + 16 * v14);
      v17 = v16[1];
      v18 = *v16;
      v7 &= v7 - 1;
      *a2 = v15;
      *(a2 + 8) = v18;
      *(a2 + 16) = v17;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 24;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v20 = v9 + 1;
    }

    else
    {
      v20 = (63 - v6) >> 6;
    }

    v9 = v20 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D8818308(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v40 = a6;
  v41 = a7;
  v11 = a5(0);
  v39 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v38 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = a4 + 7;
  v18 = -1 << *(a4 + 32);
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & a4[7];
  if (!a2)
  {
LABEL_18:
    v21 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v17;
    a1[2] = ~v18;
    a1[3] = v21;
    a1[4] = v20;
    return a3;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = a1;
    v37 = a3;
    result = 0;
    v21 = 0;
    v35 = v18;
    v22 = (63 - v18) >> 6;
    v23 = 1;
    while (v20)
    {
LABEL_14:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      a1 = a4;
      v27 = a4[6];
      v28 = v38;
      v29 = *(v39 + 72);
      sub_1D881BDC4(v27 + v29 * (v26 | (v21 << 6)), v38, v40);
      v30 = v28;
      v31 = v41;
      sub_1D881BFE4(v30, v16, v41);
      sub_1D881BFE4(v16, a2, v31);
      if (v23 == v37)
      {
        a4 = a1;
        a1 = v36;
        a3 = v37;
        goto LABEL_23;
      }

      a2 += v29;
      result = v23;
      v32 = __OFADD__(v23++, 1);
      a4 = a1;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v24 = v21;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v25 >= v22)
      {
        break;
      }

      v20 = v17[v25];
      ++v24;
      if (v20)
      {
        v21 = v25;
        goto LABEL_14;
      }
    }

    v20 = 0;
    if (v22 <= v21 + 1)
    {
      v33 = v21 + 1;
    }

    else
    {
      v33 = v22;
    }

    v21 = v33 - 1;
    a3 = result;
    a1 = v36;
LABEL_23:
    v18 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1D881854C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D88186A0(uint64_t result, char *a2, unint64_t a3)
{
  v4 = result;
  if (!a2)
  {
    v5 = 0;
    goto LABEL_21;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_21:
    *v4 = v3;
    v4[1] = v5;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    result = swift_beginAccess();
    v7 = v3[2];
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = v7 + 32;
      while (1)
      {
        v11 = v3[4];
        if (v8 == v11)
        {
          v12 = v3[3];
          v13 = __OFADD__(v12, 1);
          v14 = v12 + 1;
          if (v13)
          {
            goto LABEL_25;
          }

          v15 = v14 % v8;
        }

        else
        {
          v15 = 0;
        }

        v13 = __OFADD__(v15, v9);
        v16 = v15 + v9;
        if (v13)
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_23;
        }

        if (v11 == -1 && v16 == 0x8000000000000000)
        {
          goto LABEL_26;
        }

        v18 = v16 % v11;
        if (v18 >= v8)
        {
          goto LABEL_24;
        }

        result = memmove(v6, (v10 + 88 * v18), 0x58uLL);
        if (v5 - 1 == v9)
        {
          goto LABEL_21;
        }

        v6 += 88;
        if (v8 == ++v9)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_19:
    v5 = v8;
    goto LABEL_21;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D88187DC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  if (!a2)
  {
    v5 = 0;
    goto LABEL_22;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_22:
    *v4 = v3;
    v4[1] = v5;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    result = swift_beginAccess();
    v7 = v3[2];
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = v7 + 32;
      while (1)
      {
        v11 = v3[4];
        if (v8 == v11)
        {
          v12 = v3[3];
          v13 = __OFADD__(v12, 1);
          v14 = v12 + 1;
          if (v13)
          {
            goto LABEL_26;
          }

          v15 = v14 % v8;
        }

        else
        {
          v15 = 0;
        }

        v13 = __OFADD__(v15, v9);
        v16 = v15 + v9;
        if (v13)
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_24;
        }

        if (v11 == -1 && v16 == 0x8000000000000000)
        {
          goto LABEL_27;
        }

        v18 = v16 % v11;
        if (v18 >= v8)
        {
          goto LABEL_25;
        }

        v19 = v10 + 16 * v18;
        v20 = *v19;
        v21 = *(v19 + 8);
        *v6 = *v19;
        *(v6 + 8) = v21;
        if (v5 - 1 == v9)
        {
          sub_1D881F4C0(v20, v21);
          goto LABEL_22;
        }

        v6 += 16;
        result = sub_1D881F4C0(v20, v21);
        if (v8 == ++v9)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_19:
    v5 = v8;
    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1D8818924(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D8818A80(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
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
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D8818B80(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1DA720250](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1DA720250](*&v3);
}

uint64_t sub_1D8818BD0(__int128 *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v68 = &v57 - v5;
  v61 = type metadata accessor for TextDetectorResult(0);
  v60 = *(v61 - 1);
  MEMORY[0x1EEE9AC00](v61);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DetectionRequest.Annotation(0);
  v72 = *(v73 - 8);
  v8 = MEMORY[0x1EEE9AC00](v73);
  v10 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v57 - v11;
  v12 = a1[3];
  v89 = a1[2];
  v90 = v12;
  v91 = *(a1 + 8);
  v13 = a1[1];
  v87 = *a1;
  v88 = v13;
  v71 = sub_1D8B16D80();
  v14 = a2 + 56;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 56);
  v74 = (v15 + 63) >> 6;

  v19 = 0;
  v20 = 0;
  v67 = "";
  v66 = "sualIntelligenceCamera";
  v65 = "IntelligenceCamera.ImageSearch";
  v64 = "gs.AppleIntelligence";
  v63 = "textComposition.OpenEndedSchema";
  v62 = "ucturedExtraction.addToCalendar";
  v69 = v10;
  v70 = a2 + 56;
  while (v17)
  {
    v76 = v19;
LABEL_12:
    v75 = v17;
    v23 = v77;
    sub_1D881BDC4(*(a2 + 48) + *(v72 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v77, type metadata accessor for DetectionRequest.Annotation);
    sub_1D8B16D20();
    sub_1D881BDC4(v23, v10, type metadata accessor for DetectionRequest.Annotation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v25 = v10;
        v26 = v68;
        sub_1D881F6FC(v25, v68, &qword_1ECA67750);
        MEMORY[0x1DA720210](1);
        sub_1D8A2FFD8(v86);
        v27 = v26;
        v10 = v69;
        sub_1D87A14E4(v27, &qword_1ECA67750);
      }

      else
      {
        MEMORY[0x1DA720210](2);
        sub_1D8B15A60();
      }
    }

    else
    {
      v28 = *v10;
      MEMORY[0x1DA720210](0);
      MEMORY[0x1DA720210](*(v28 + 16));
      v29 = *(v28 + 16);
      if (v29)
      {
        v58 = a2;
        v59 = a1;
        v30 = v61[6];
        v85 = v61[5];
        v31 = &v7[v30];
        v32 = v61[7];
        v84 = v61[8];
        v83 = &v7[v32];
        v33 = v61[10];
        v82 = v61[9];
        v81 = v33;
        v34 = v61[12];
        v80 = v61[11];
        v35 = &v7[v34];
        v79 = &v7[v61[13]];
        v36 = (*(v60 + 80) + 32) & ~*(v60 + 80);
        v57 = v28;
        v37 = v28 + v36;
        v78 = *(v60 + 72);
        do
        {
          sub_1D881BDC4(v37, v7, type metadata accessor for TextDetectorResult);
          sub_1D8B13240();
          sub_1D881BBCC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
          sub_1D8B157A0();
          sub_1D8B16D60();
          v39 = *v31;
          v40 = v31[1];
          v41 = v31[2];
          v42 = v31[3];
          v43 = v31[4];
          v44 = v31[5];
          v45 = v31[6];
          v46 = v31[7];
          if (*v31 == 0.0)
          {
            v39 = 0.0;
          }

          MEMORY[0x1DA720250](*&v39);
          if (v40 == 0.0)
          {
            v47 = 0.0;
          }

          else
          {
            v47 = v40;
          }

          MEMORY[0x1DA720250](*&v47);
          if (v41 == 0.0)
          {
            v48 = 0.0;
          }

          else
          {
            v48 = v41;
          }

          MEMORY[0x1DA720250](*&v48);
          if (v42 == 0.0)
          {
            v49 = 0.0;
          }

          else
          {
            v49 = v42;
          }

          MEMORY[0x1DA720250](*&v49);
          if (v43 == 0.0)
          {
            v50 = 0.0;
          }

          else
          {
            v50 = v43;
          }

          MEMORY[0x1DA720250](*&v50);
          if (v44 == 0.0)
          {
            v51 = 0.0;
          }

          else
          {
            v51 = v44;
          }

          MEMORY[0x1DA720250](*&v51);
          if (v45 == 0.0)
          {
            v52 = 0.0;
          }

          else
          {
            v52 = v45;
          }

          MEMORY[0x1DA720250](*&v52);
          if (v46 == 0.0)
          {
            v53 = 0.0;
          }

          else
          {
            v53 = v46;
          }

          MEMORY[0x1DA720250](*&v53);
          sub_1D8B15A60();
          v54 = *&v7[v84];
          if (v54 == 0.0)
          {
            v54 = 0.0;
          }

          MEMORY[0x1DA720250](*&v54);
          v55 = *&v7[v82];
          if (v55 == 0.0)
          {
            v55 = 0.0;
          }

          MEMORY[0x1DA720250](*&v55);
          sub_1D8819418(v86, *&v7[v81]);
          sub_1D87D0400(v86, *&v7[v80]);
          if (*v35)
          {
            v56 = *(v35 + 1);
            v38 = *(v35 + 2);
            MEMORY[0x1DA720210](1);
            sub_1D8B16410();
            MEMORY[0x1DA720210](v56);
          }

          else
          {
            v38 = 0;
          }

          MEMORY[0x1DA720210](v38);
          sub_1D8B15A60();
          sub_1D881BD44(v7, type metadata accessor for TextDetectorResult);
          v37 += v78;
          --v29;
        }

        while (v29);

        a1 = v59;
        a2 = v58;
      }

      else
      {
      }

      v10 = v69;
    }

    v17 = (v75 - 1) & v75;
    v21 = sub_1D8B16D80();
    result = sub_1D881BD44(v77, type metadata accessor for DetectionRequest.Annotation);
    v19 = v21 ^ v76;
    v14 = v70;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v74)
    {

      return MEMORY[0x1DA720210](v19);
    }

    v17 = *(v14 + 8 * v22);
    ++v20;
    if (v17)
    {
      v76 = v19;
      v20 = v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8819418(uint64_t a1, uint64_t a2)
{
  sub_1D8B16D80();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1DA720210](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1D8B16D20();

        sub_1D8B15A60();
        v11 = sub_1D8B16D80();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8819574(__int128 *a1, uint64_t a2)
{
  v4 = sub_1D8B152F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v25 = a1[2];
  v26 = v8;
  v27 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v22[0] = a1;
  v23 = v10;
  v24 = v9;
  v11 = sub_1D8B16D80();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v22[2] = v5 + 16;
  v22[3] = v11;
  v22[1] = v5 + 8;

  v17 = 0;
  for (i = 0; v14; v17 ^= v21)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v4);
    sub_1D881BBCC(&qword_1EE0E3A70, MEMORY[0x1E69E0248]);
    v21 = sub_1D8B15790();
    result = (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return MEMORY[0x1DA720210](v17);
    }

    v14 = *(a2 + 56 + 8 * v19);
    ++i;
    if (v14)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D88197A0(__int128 *a1, uint64_t a2)
{
  v38 = sub_1D8B13240();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetectionRequest.Originator(0);
  v42 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  v12 = a1[3];
  v46 = a1[2];
  v47 = v12;
  v48 = *(a1 + 8);
  v14 = *a1;
  v13 = a1[1];
  v39 = a1;
  v44 = v14;
  v45 = v13;
  v41 = sub_1D8B16D80();
  v15 = a2 + 56;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 56);
  v19 = (v16 + 63) >> 6;
  v36 = (v4 + 32);
  v35 = (v4 + 8);

  v21 = 0;
  v22 = 0;
  v40 = a2;
  while (v18)
  {
LABEL_11:
    sub_1D881BDC4(*(a2 + 48) + *(v42 + 72) * (__clz(__rbit64(v18)) | (v22 << 6)), v11, type metadata accessor for DetectionRequest.Originator);
    sub_1D8B16D20();
    sub_1D881BDC4(v11, v9, type metadata accessor for DetectionRequest.Originator);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      v30 = v6;
      if (EnumCaseMultiPayload)
      {
        if (v9[4])
        {
          if (v9[4] != 1)
          {
            MEMORY[0x1DA720210](1);
            goto LABEL_24;
          }

          v33 = 2;
        }

        else
        {
          v33 = 0;
        }

        MEMORY[0x1DA720210](v33);
        sub_1D8B16D60();
      }

      else
      {
        v31 = *v9;
        v32 = *(v9 + 1);
        sub_1D8B13060();
        sub_1D87A1598(v31, v32);
      }

LABEL_24:
      v6 = v30;
      a2 = v40;
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v23 = v37;
      v24 = v6;
      v25 = v38;
      (*v36)(v37, v9, v38);
      sub_1D881BBCC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
      sub_1D8B157A0();
      v26 = v25;
      v6 = v24;
      a2 = v40;
      (*v35)(v23, v26);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_1D88197A0(v43, *v9);
    }

    else
    {
      MEMORY[0x1DA720210](1);
    }

LABEL_5:
    v18 &= v18 - 1;
    v27 = sub_1D8B16D80();
    result = sub_1D881BD44(v11, type metadata accessor for DetectionRequest.Originator);
    v21 ^= v27;
  }

  while (1)
  {
    v28 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v28 >= v19)
    {

      return MEMORY[0x1DA720210](v21);
    }

    v18 = *(v15 + 8 * v28);
    ++v22;
    if (v18)
    {
      v22 = v28;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8819BD0(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionPin(0);
  v41 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v40 - v8;
  v10 = a1[3];
  *&v43[13] = a1[2];
  *&v43[15] = v10;
  v43[17] = *(a1 + 8);
  v12 = *a1;
  v11 = a1[1];
  v40[1] = a1;
  *&v43[9] = v12;
  *&v43[11] = v11;
  v40[2] = sub_1D8B16D80();
  v13 = a2 + 56;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a2 + 56);
  v17 = (v14 + 63) >> 6;
  v42 = a2;

  v19 = 0;
  for (i = 0; v16; v19 ^= v39)
  {
    v21 = i;
LABEL_9:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_1D881BDC4(*(v42 + 48) + *(v41 + 72) * (v22 | (v21 << 6)), v9, type metadata accessor for ActionPin);
    sub_1D881BFE4(v9, v7, type metadata accessor for ActionPin);
    sub_1D8B16D20();
    sub_1D8B13240();
    sub_1D881BBCC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
    sub_1D8B157A0();
    v23 = &v7[*(v4 + 20)];
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    v27 = v23[3];
    v28 = v23[4];
    v29 = v23[5];
    v31 = v23[6];
    v30 = v23[7];
    if (*v23 == 0.0)
    {
      v24 = 0.0;
    }

    MEMORY[0x1DA720250](*&v24);
    if (v25 == 0.0)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = v25;
    }

    MEMORY[0x1DA720250](*&v32);
    if (v26 == 0.0)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v26;
    }

    MEMORY[0x1DA720250](*&v33);
    if (v27 == 0.0)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = v27;
    }

    MEMORY[0x1DA720250](*&v34);
    if (v28 == 0.0)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = v28;
    }

    MEMORY[0x1DA720250](*&v35);
    if (v29 == 0.0)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = v29;
    }

    MEMORY[0x1DA720250](*&v36);
    if (v31 == 0.0)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = v31;
    }

    MEMORY[0x1DA720250](*&v37);
    if (v30 == 0.0)
    {
      v38 = 0.0;
    }

    else
    {
      v38 = v30;
    }

    MEMORY[0x1DA720250](*&v38);
    sub_1D8B15A60();
    sub_1D87CF3E8(v43, *&v7[*(v4 + 28)]);
    sub_1D8B16D40();
    v39 = sub_1D8B16D80();
    result = sub_1D881BD44(v7, type metadata accessor for ActionPin);
  }

  while (1)
  {
    v21 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v21 >= v17)
    {

      return MEMORY[0x1DA720210](v19);
    }

    v16 = *(v13 + 8 * v21);
    ++i;
    if (v16)
    {
      i = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8819F6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectionRequest(0);
  v21 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 48);
  *&v22[13] = *(a1 + 32);
  *&v22[15] = v7;
  v22[17] = *(a1 + 64);
  v8 = *(a1 + 16);
  *&v22[9] = *a1;
  *&v22[11] = v8;
  v20[1] = sub_1D8B16D80();
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  for (i = 0; v11; v14 ^= v19)
  {
    v16 = i;
LABEL_9:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    sub_1D881BDC4(*(a2 + 48) + *(v21 + 72) * (v17 | (v16 << 6)), v6, type metadata accessor for DetectionRequest);
    sub_1D8B16D20();
    MEMORY[0x1DA720210](*v6);
    DetectionRequest.Originator.hash(into:)(v22);
    sub_1D8818BD0(v22, *&v6[v4[6]]);
    sub_1D88911A0(*&v6[v4[7]], *&v6[v4[7] + 8], *&v6[v4[7] + 16], *&v6[v4[7] + 24]);
    v18 = *&v6[v4[8]];
    if (v18 == 0.0)
    {
      v18 = 0.0;
    }

    MEMORY[0x1DA720250](*&v18);
    v19 = sub_1D8B16D80();
    result = sub_1D881BD44(v6, type metadata accessor for DetectionRequest);
  }

  while (1)
  {
    v16 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      return MEMORY[0x1DA720210](v14);
    }

    v11 = *(a2 + 56 + 8 * v16);
    ++i;
    if (v11)
    {
      i = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D881A1C8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  v6 = type metadata accessor for BuiltInAction(0);
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 56) != 1)
  {
    v13 = *v1;
    v14 = v1[1];
    v16 = v1[2];
    v15 = v1[3];
    v17 = v1[4];
    v33 = a1;
    v34 = v16;
    if (v17)
    {
      v18 = v15;
LABEL_14:
      v22 = (v17 - 1) & v17;
      sub_1D881BDC4(*(v13 + 48) + *(v7 + 72) * (__clz(__rbit64(v17)) | (v18 << 6)), v5, type metadata accessor for BuiltInAction);
      (*(v7 + 56))(v5, 0, 1, v6);
      v21 = v18;
LABEL_15:
      *v1 = v13;
      v1[1] = v14;
      v1[2] = v34;
      v1[3] = v21;
      v1[4] = v22;
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_1D87A14E4(v5, &qword_1ECA63188);
        v23 = v33;
LABEL_19:
        *(v1 + 56) = 1;
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64018);
        return (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
      }

      result = sub_1D881BFE4(v5, v10, type metadata accessor for BuiltInAction);
      v25 = v1[5];
      v24 = v1[6];
      v26 = *(v25 + 16);
      v23 = v33;
      if (v24 == v26)
      {
        sub_1D881BD44(v10, type metadata accessor for BuiltInAction);
        goto LABEL_19;
      }

      if (v24 < v26)
      {
        v28 = sub_1D8B13240();
        v29 = *(v28 - 8);
        v30 = v25 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24;
        v1[6] = v24 + 1;
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64018);
        v32 = *(v31 + 48);
        sub_1D881BFE4(v10, v23, type metadata accessor for BuiltInAction);
        (*(v29 + 16))(v23 + v32, v30, v28);
        return (*(*(v31 - 8) + 56))(v23, 0, 1, v31);
      }
    }

    else
    {
      v19 = (v16 + 64) >> 6;
      if (v19 <= v15 + 1)
      {
        v20 = v15 + 1;
      }

      else
      {
        v20 = (v16 + 64) >> 6;
      }

      v21 = v20 - 1;
      while (1)
      {
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v18 >= v19)
        {
          (*(v7 + 56))(v5, 1, 1, v6);
          v22 = 0;
          goto LABEL_15;
        }

        v17 = *(v14 + 8 * v18);
        ++v15;
        if (v17)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64018);
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, 1, 1, v11);
}

uint64_t _s22VisualIntelligenceCore9ActionPinV4PillV6SourceO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BuiltInAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionPin.Pill.Source(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E58);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - v13;
  v15 = *(v12 + 56);
  sub_1D881BDC4(a1, &v19 - v13, type metadata accessor for ActionPin.Pill.Source);
  sub_1D881BDC4(a2, &v14[v15], type metadata accessor for ActionPin.Pill.Source);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D881BDC4(v14, v10, type metadata accessor for ActionPin.Pill.Source);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1D881BFE4(&v14[v15], v7, type metadata accessor for BuiltInAction);
      v17 = _s22VisualIntelligenceCore13BuiltInActionO2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_1D881BD44(v7, type metadata accessor for BuiltInAction);
      sub_1D881BD44(v10, type metadata accessor for BuiltInAction);
      sub_1D881BD44(v14, type metadata accessor for ActionPin.Pill.Source);
      return v17 & 1;
    }

    sub_1D881BD44(v10, type metadata accessor for BuiltInAction);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D87A14E4(v14, &qword_1ECA63E58);
    v17 = 0;
    return v17 & 1;
  }

  sub_1D881BD44(v14, type metadata accessor for ActionPin.Pill.Source);
  v17 = 1;
  return v17 & 1;
}

uint64_t _s22VisualIntelligenceCore9ActionPinV4PillV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D8B16BA0() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[7];
  v7 = a2[7];
  if (v6)
  {
    if (!v7 || (a1[6] != a2[6] || v6 != v7) && (sub_1D8B16BA0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (a1[8] != a2[8])
  {
    return 0;
  }

  v8 = *(type metadata accessor for ActionPin.Pill(0) + 36);

  return _s22VisualIntelligenceCore9ActionPinV4PillV6SourceO2eeoiySbAG_AGtFZ_0(a1 + v8, a2 + v8);
}

uint64_t _s22VisualIntelligenceCore9ActionPinV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1D8B13200() & 1) != 0 && (v4 = type metadata accessor for ActionPin(0), v5 = (a1 + v4[5]), v6 = v5[3], v18[2] = v5[2], v18[3] = v6, v7 = v5[1], v18[0] = *v5, v18[1] = v7, v8 = (a2 + v4[5]), v9 = v8[1], v17[0] = *v8, v17[1] = v9, v10 = v8[3], v17[2] = v8[2], v17[3] = v10, _s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(v18, v17)) && ((v11 = v4[6], v12 = *(a1 + v11), v13 = *(a1 + v11 + 8), v14 = (a2 + v11), v12 == *v14) && v13 == v14[1] || (sub_1D8B16BA0()) && (sub_1D88E245C(*(a1 + v4[7]), *(a2 + v4[7])))
  {
    v15 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t _s22VisualIntelligenceCore9ActionPinV13PermanentPillO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13E30();
  v5 = *(v4 - 8);
  v54 = v4;
  v55 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635B8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63FF8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v14 = type metadata accessor for ActionPin.PermanentPill(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64000);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v49 - v19;
  v21 = &v49 + *(v18 + 56) - v19;
  sub_1D881BDC4(a1, &v49 - v19, type metadata accessor for ActionPin.PermanentPill);
  sub_1D881BDC4(a2, v21, type metadata accessor for ActionPin.PermanentPill);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
  v23 = *(*(v22 - 8) + 48);
  v56 = v20;
  v24 = v23(v20, 6, v22);
  if (v24 <= 2)
  {
    v52 = v10;
    v53 = v13;
    v51 = v7;
    v26 = v55;
    if (v24)
    {
      if (v24 == 1)
      {
        v27 = v23(v21, 6, v22);
        v25 = v56;
        if (v27 == 1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v30 = v23(v21, 6, v22);
        v25 = v56;
        if (v30 == 2)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    v25 = v56;
    sub_1D881BDC4(v56, v16, type metadata accessor for ActionPin.PermanentPill);
    v28 = *(v22 + 48);
    v29 = *&v16[v28];
    if (v23(v21, 6, v22))
    {

      sub_1D87A14E4(v16, &qword_1ECA635B8);
      goto LABEL_22;
    }

    v50 = v29;
    v35 = *&v21[v28];
    v36 = *(v11 + 48);
    v37 = v16;
    v38 = v53;
    sub_1D881F6FC(v37, v53, &qword_1ECA635B8);
    sub_1D881F6FC(v21, v38 + v36, &qword_1ECA635B8);
    v39 = v26;
    v40 = *(v26 + 48);
    v41 = v54;
    if (v40(v38, 1, v54) == 1)
    {
      if (v40(v38 + v36, 1, v41) == 1)
      {
        sub_1D87A14E4(v38, &qword_1ECA635B8);
        v42 = v50;
        v43 = v56;
LABEL_34:
        v31 = sub_1D88E4BA0(v42, v35);

        sub_1D881BD44(v43, type metadata accessor for ActionPin.PermanentPill);
        return v31 & 1;
      }
    }

    else
    {
      v44 = v52;
      sub_1D87A0E38(v38, v52, &qword_1ECA635B8);
      if (v40(v38 + v36, 1, v41) != 1)
      {
        v45 = *(v26 + 32);
        v46 = v51;
        v45(v51, v38 + v36, v41);
        sub_1D881BBCC(&qword_1ECA65020, MEMORY[0x1E699C540]);
        v47 = sub_1D8B158C0();
        v48 = *(v39 + 8);
        v48(v46, v41);
        v48(v44, v41);
        sub_1D87A14E4(v38, &qword_1ECA635B8);
        v42 = v50;
        v43 = v56;
        if (v47)
        {
          goto LABEL_34;
        }

LABEL_32:
        sub_1D881BD44(v43, type metadata accessor for ActionPin.PermanentPill);
        goto LABEL_23;
      }

      (*(v26 + 8))(v44, v41);
    }

    v43 = v56;
    sub_1D87A14E4(v38, &qword_1ECA63FF8);
    goto LABEL_32;
  }

  if (v24 > 4)
  {
    v25 = v56;
    if (v24 != 5)
    {
      v33 = v23(v21, 6, v22);
      if (v33 != 6)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    if (v23(v21, 6, v22) == 5)
    {
      goto LABEL_18;
    }

LABEL_22:
    sub_1D87A14E4(v25, &qword_1ECA64000);
LABEL_23:
    v31 = 0;
    return v31 & 1;
  }

  v25 = v56;
  if (v24 == 3)
  {
    if (v23(v21, 6, v22) == 3)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v32 = v23(v21, 6, v22);
  if (v32 != 4)
  {
    goto LABEL_22;
  }

LABEL_18:
  sub_1D881BD44(v25, type metadata accessor for ActionPin.PermanentPill);
  v31 = 1;
  return v31 & 1;
}

uint64_t _s22VisualIntelligenceCore13BuiltInActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13E30();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v58 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63FF8);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v56 - v9;
  v10 = type metadata accessor for BuiltInAction(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v56 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v56 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v56 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64030);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = (&v56 + *(v23 + 56) - v24);
  v26 = a1;
  v27 = &v56 - v24;
  sub_1D881BDC4(v26, &v56 - v24, type metadata accessor for BuiltInAction);
  sub_1D881BDC4(a2, v25, type metadata accessor for BuiltInAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v39 = v27;
      sub_1D881BDC4(v27, v19, type metadata accessor for BuiltInAction);
      v41 = *v19;
      v40 = v19[1];
      v43 = v19[2];
      v42 = v19[3];
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        v27 = v39;
        goto LABEL_47;
      }

      v45 = v25[2];
      v44 = v25[3];
      if (v41 == *v25 && v40 == v25[1])
      {
      }

      else
      {
        v47 = sub_1D8B16BA0();

        if ((v47 & 1) == 0)
        {

          goto LABEL_58;
        }
      }

      if (v43 == v45 && v42 == v44)
      {

LABEL_57:
        v48 = v39;
        goto LABEL_44;
      }

      v51 = sub_1D8B16BA0();

      if (v51)
      {
        goto LABEL_57;
      }

LABEL_58:
      sub_1D881BD44(v39, type metadata accessor for BuiltInAction);
LABEL_48:
      v29 = 0;
      return v29 & 1;
    case 2u:
      sub_1D881BDC4(v27, v16, type metadata accessor for BuiltInAction);
      v30 = *v16;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_18;
      }

      v29 = sub_1D894DD7C(v30, *v25);

      goto LABEL_64;
    case 3u:
      sub_1D881BDC4(v27, v13, type metadata accessor for BuiltInAction);
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0) + 48);
      v32 = *&v13[v31];
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        sub_1D87A14E4(v13, &qword_1ECA635B8);
        goto LABEL_47;
      }

      v33 = *(v25 + v31);
      v34 = *(v8 + 48);
      v35 = v59;
      sub_1D881F6FC(v13, v59, &qword_1ECA635B8);
      sub_1D881F6FC(v25, v35 + v34, &qword_1ECA635B8);
      v37 = v60;
      v36 = v61;
      v38 = *(v60 + 48);
      if (v38(v35, 1, v61) == 1)
      {
        if (v38(v35 + v34, 1, v36) == 1)
        {
          sub_1D87A14E4(v35, &qword_1ECA635B8);
          goto LABEL_63;
        }
      }

      else
      {
        v50 = v58;
        sub_1D87A0E38(v35, v58, &qword_1ECA635B8);
        if (v38(v35 + v34, 1, v36) != 1)
        {
          v52 = v35 + v34;
          v53 = v57;
          (*(v37 + 32))(v57, v52, v36);
          sub_1D881BBCC(&qword_1ECA65020, MEMORY[0x1E699C540]);
          v54 = sub_1D8B158C0();
          v55 = *(v37 + 8);
          v55(v53, v36);
          v55(v50, v36);
          sub_1D87A14E4(v35, &qword_1ECA635B8);
          if (v54)
          {
LABEL_63:
            v29 = sub_1D88E4BA0(v32, v33);

LABEL_64:

            sub_1D881BD44(v27, type metadata accessor for BuiltInAction);
            return v29 & 1;
          }

LABEL_61:
          sub_1D881BD44(v27, type metadata accessor for BuiltInAction);
          goto LABEL_48;
        }

        (*(v37 + 8))(v50, v36);
      }

      sub_1D87A14E4(v35, &qword_1ECA63FF8);
      goto LABEL_61;
    case 4u:
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_47;
      }

      goto LABEL_43;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_47;
      }

      goto LABEL_43;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_47;
      }

      goto LABEL_43;
    case 7u:
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_47;
      }

      goto LABEL_43;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_43;
      }

      goto LABEL_47;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_47;
      }

      goto LABEL_43;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_47;
      }

      goto LABEL_43;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_47;
      }

      goto LABEL_43;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_47;
      }

      goto LABEL_43;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_47;
      }

      goto LABEL_43;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_47;
      }

      goto LABEL_43;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_47;
      }

      goto LABEL_43;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_47;
      }

LABEL_43:
      v48 = v27;
LABEL_44:
      sub_1D881BD44(v48, type metadata accessor for BuiltInAction);
      v29 = 1;
      return v29 & 1;
    default:
      sub_1D881BDC4(v27, v21, type metadata accessor for BuiltInAction);
      v28 = *v21;
      if (!swift_getEnumCaseMultiPayload())
      {
        v29 = sub_1D88E4BE8(v28, *v25);

        goto LABEL_64;
      }

LABEL_18:

LABEL_47:
      sub_1D87A14E4(v27, &qword_1ECA64030);
      goto LABEL_48;
  }
}

unint64_t sub_1D881BB24()
{
  result = qword_1ECA637D0;
  if (!qword_1ECA637D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA637D0);
  }

  return result;
}

unint64_t sub_1D881BB78()
{
  result = qword_1ECA689B0;
  if (!qword_1ECA689B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA689B0);
  }

  return result;
}

uint64_t sub_1D881BBCC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D881BC34()
{
  result = qword_1ECA63800;
  if (!qword_1ECA63800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63800);
  }

  return result;
}

uint64_t sub_1D881BC88(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA637E0);
    sub_1D881BBCC(a2, type metadata accessor for ActionPin.Pill);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D881BD44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D881BDC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D881BE2C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D8B15AA0();

    return sub_1D8B15BB0();
  }

  return result;
}

unint64_t sub_1D881BEE8()
{
  result = qword_1ECA63830;
  if (!qword_1ECA63830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63830);
  }

  return result;
}

unint64_t sub_1D881BF3C()
{
  result = qword_1ECA63838;
  if (!qword_1ECA63838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63838);
  }

  return result;
}

unint64_t sub_1D881BF90()
{
  result = qword_1ECA63840;
  if (!qword_1ECA63840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63840);
  }

  return result;
}

uint64_t sub_1D881BFE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D881C04C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionPin.Pill.Source(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D881C0B0()
{
  result = qword_1ECA63878;
  if (!qword_1ECA63878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63878);
  }

  return result;
}

unint64_t sub_1D881C104()
{
  result = qword_1ECA63880;
  if (!qword_1ECA63880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63880);
  }

  return result;
}

unint64_t sub_1D881C158()
{
  result = qword_1ECA63898;
  if (!qword_1ECA63898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63898);
  }

  return result;
}

uint64_t sub_1D881C1D8()
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](0);
  v0 = sub_1D8B16D80();

  return sub_1D881C1AC(v0);
}

unint64_t sub_1D881C230()
{
  result = qword_1ECA63938;
  if (!qword_1ECA63938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63938);
  }

  return result;
}

unint64_t sub_1D881C284()
{
  result = qword_1ECA63940;
  if (!qword_1ECA63940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63940);
  }

  return result;
}

unint64_t sub_1D881C2D8()
{
  result = qword_1ECA63948;
  if (!qword_1ECA63948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63948);
  }

  return result;
}

uint64_t sub_1D881C32C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA63958);
    sub_1D881BBCC(a2, MEMORY[0x1E699C540]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D881C3C8()
{
  result = qword_1ECA63968;
  if (!qword_1ECA63968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63968);
  }

  return result;
}

unint64_t sub_1D881C41C()
{
  result = qword_1ECA63970;
  if (!qword_1ECA63970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63970);
  }

  return result;
}

unint64_t sub_1D881C470()
{
  result = qword_1ECA63978;
  if (!qword_1ECA63978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63978);
  }

  return result;
}

unint64_t sub_1D881C4C4()
{
  result = qword_1ECA63980;
  if (!qword_1ECA63980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63980);
  }

  return result;
}

unint64_t sub_1D881C518()
{
  result = qword_1ECA63988;
  if (!qword_1ECA63988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63988);
  }

  return result;
}

unint64_t sub_1D881C56C()
{
  result = qword_1ECA63990;
  if (!qword_1ECA63990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63990);
  }

  return result;
}

unint64_t sub_1D881C5C0()
{
  result = qword_1ECA63998;
  if (!qword_1ECA63998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63998);
  }

  return result;
}

unint64_t sub_1D881C614()
{
  result = qword_1ECA639A0;
  if (!qword_1ECA639A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA639A0);
  }

  return result;
}

unint64_t sub_1D881C668()
{
  result = qword_1ECA639A8;
  if (!qword_1ECA639A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA639A8);
  }

  return result;
}

unint64_t sub_1D881C6BC()
{
  result = qword_1ECA639B0;
  if (!qword_1ECA639B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA639B0);
  }

  return result;
}

unint64_t sub_1D881C710()
{
  result = qword_1ECA639B8;
  if (!qword_1ECA639B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA639B8);
  }

  return result;
}

unint64_t sub_1D881C764()
{
  result = qword_1ECA639C0;
  if (!qword_1ECA639C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA639C0);
  }

  return result;
}

unint64_t sub_1D881C7B8()
{
  result = qword_1ECA639C8;
  if (!qword_1ECA639C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA639C8);
  }

  return result;
}

unint64_t sub_1D881C80C()
{
  result = qword_1ECA639D0;
  if (!qword_1ECA639D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA639D0);
  }

  return result;
}

unint64_t sub_1D881C860()
{
  result = qword_1ECA639E8;
  if (!qword_1ECA639E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA639E8);
  }

  return result;
}

unint64_t sub_1D881C8B4()
{
  result = qword_1ECA639F0;
  if (!qword_1ECA639F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA639F0);
  }

  return result;
}

unint64_t sub_1D881C908()
{
  result = qword_1ECA639F8;
  if (!qword_1ECA639F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA639F8);
  }

  return result;
}

unint64_t sub_1D881C95C()
{
  result = qword_1ECA63AA0;
  if (!qword_1ECA63AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63AA0);
  }

  return result;
}

uint64_t sub_1D881C9B0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA639D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D881CA28()
{
  result = qword_1ECA63AB0;
  if (!qword_1ECA63AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63AB0);
  }

  return result;
}

unint64_t sub_1D881CC4C()
{
  result = qword_1ECA63AE8;
  if (!qword_1ECA63AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63AE8);
  }

  return result;
}

unint64_t sub_1D881CCA4()
{
  result = qword_1ECA63AF0;
  if (!qword_1ECA63AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63AF0);
  }

  return result;
}

unint64_t sub_1D881CCF8()
{
  result = qword_1ECA63AF8;
  if (!qword_1ECA63AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63AF8);
  }

  return result;
}

unint64_t sub_1D881CD50()
{
  result = qword_1ECA63B00;
  if (!qword_1ECA63B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63B00);
  }

  return result;
}

unint64_t sub_1D881CDA8()
{
  result = qword_1EE0E3DF8[0];
  if (!qword_1EE0E3DF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0E3DF8);
  }

  return result;
}

unint64_t sub_1D881CDFC(void *a1)
{
  a1[1] = sub_1D881CE34();
  a1[2] = sub_1D87C5BFC();
  result = sub_1D881CE88();
  a1[3] = result;
  return result;
}

unint64_t sub_1D881CE34()
{
  result = qword_1ECA63B08;
  if (!qword_1ECA63B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63B08);
  }

  return result;
}

unint64_t sub_1D881CE88()
{
  result = qword_1ECA63B10;
  if (!qword_1ECA63B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63B10);
  }

  return result;
}

uint64_t sub_1D881CF20(unint64_t *a1, uint64_t *a2)
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

void sub_1D881D020()
{
  sub_1D8B13240();
  if (v0 <= 0x3F)
  {
    sub_1D881D0C4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D881D0C4()
{
  if (!qword_1EE0E3980)
  {
    type metadata accessor for ActionPin.Pill(255);
    v0 = sub_1D8B15DB0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3980);
    }
  }
}

void sub_1D881D160()
{
  if (!qword_1EE0E9870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA635B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA63958);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0E9870);
    }
  }
}

void sub_1D881D214()
{
  sub_1D881D4AC(319, &qword_1EE0E3A20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActionPin.Pill.Source(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D881D318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

void sub_1D881D3A4()
{
  sub_1D881D440();
  if (v0 <= 0x3F)
  {
    sub_1D881D4FC();
    if (v1 <= 0x3F)
    {
      sub_1D881D55C();
      if (v2 <= 0x3F)
      {
        sub_1D881D160();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D881D440()
{
  if (!qword_1EE0E3970)
  {
    sub_1D881D4AC(0, &qword_1EE0E3968, &type metadata for GeoLookup.GeoLookupResult, MEMORY[0x1E69E62F8]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3970);
    }
  }
}

void sub_1D881D4AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D881D4FC()
{
  if (!qword_1EE0E3A28)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0E3A28);
    }
  }
}

ValueMetadata *sub_1D881D55C()
{
  result = qword_1EE0E51A0;
  if (!qword_1EE0E51A0)
  {
    result = &type metadata for TextActionsClassifier.Result;
    atomic_store(&type metadata for TextActionsClassifier.Result, &qword_1EE0E51A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BuiltInAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BuiltInAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D881D8B8()
{
  result = qword_1ECA63B28;
  if (!qword_1ECA63B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63B28);
  }

  return result;
}

unint64_t sub_1D881D910()
{
  result = qword_1ECA63B30;
  if (!qword_1ECA63B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63B30);
  }

  return result;
}

unint64_t sub_1D881D968()
{
  result = qword_1ECA63B38;
  if (!qword_1ECA63B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63B38);
  }

  return result;
}

unint64_t sub_1D881D9C0()
{
  result = qword_1ECA63B40;
  if (!qword_1ECA63B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63B40);
  }

  return result;
}

unint64_t sub_1D881DA18()
{
  result = qword_1ECA63B48;
  if (!qword_1ECA63B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63B48);
  }

  return result;
}

unint64_t sub_1D881DA70()
{
  result = qword_1ECA63B50;
  if (!qword_1ECA63B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63B50);
  }

  return result;
}

unint64_t sub_1D881DAC8()
{
  result = qword_1ECA63B58;
  if (!qword_1ECA63B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63B58);
  }

  return result;
}

unint64_t sub_1D881DB20()
{
  result = qword_1ECA63B60;
  if (!qword_1ECA63B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63B60);
  }

  return result;
}

unint64_t sub_1D881DB78()
{
  result = qword_1ECA63B68;
  if (!qword_1ECA63B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63B68);
  }

  return result;
}

unint64_t sub_1D881DBD0()
{
  result = qword_1ECA63B70;
  if (!qword_1ECA63B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63B70);
  }

  return result;
}

unint64_t sub_1D881DC28()
{
  result = qword_1ECA63B78;
  if (!qword_1ECA63B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63B78);
  }

  return result;
}

unint64_t sub_1D881DC80()
{
  result = qword_1ECA63B80;
  if (!qword_1ECA63B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63B80);
  }

  return result;
}

unint64_t sub_1D881DCD8()
{
  result = qword_1ECA63B88;
  if (!qword_1ECA63B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63B88);
  }

  return result;
}

unint64_t sub_1D881DD30()
{
  result = qword_1ECA63B90;
  if (!qword_1ECA63B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63B90);
  }

  return result;
}

unint64_t sub_1D881DD88()
{
  result = qword_1ECA63B98;
  if (!qword_1ECA63B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63B98);
  }

  return result;
}

unint64_t sub_1D881DDE0()
{
  result = qword_1ECA63BA0;
  if (!qword_1ECA63BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63BA0);
  }

  return result;
}

unint64_t sub_1D881DE38()
{
  result = qword_1ECA63BA8;
  if (!qword_1ECA63BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63BA8);
  }

  return result;
}

unint64_t sub_1D881DE90()
{
  result = qword_1ECA63BB0;
  if (!qword_1ECA63BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63BB0);
  }

  return result;
}

unint64_t sub_1D881DEE8()
{
  result = qword_1ECA63BB8;
  if (!qword_1ECA63BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63BB8);
  }

  return result;
}

unint64_t sub_1D881DF40()
{
  result = qword_1ECA63BC0;
  if (!qword_1ECA63BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63BC0);
  }

  return result;
}

unint64_t sub_1D881DF98()
{
  result = qword_1ECA63BC8;
  if (!qword_1ECA63BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63BC8);
  }

  return result;
}

unint64_t sub_1D881DFF0()
{
  result = qword_1ECA63BD0;
  if (!qword_1ECA63BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63BD0);
  }

  return result;
}

unint64_t sub_1D881E048()
{
  result = qword_1ECA63BD8;
  if (!qword_1ECA63BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63BD8);
  }

  return result;
}

unint64_t sub_1D881E0A0()
{
  result = qword_1ECA63BE0;
  if (!qword_1ECA63BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63BE0);
  }

  return result;
}

unint64_t sub_1D881E0F8()
{
  result = qword_1ECA63BE8;
  if (!qword_1ECA63BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63BE8);
  }

  return result;
}

unint64_t sub_1D881E150()
{
  result = qword_1ECA63BF0;
  if (!qword_1ECA63BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63BF0);
  }

  return result;
}

unint64_t sub_1D881E1A8()
{
  result = qword_1ECA63BF8;
  if (!qword_1ECA63BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63BF8);
  }

  return result;
}

unint64_t sub_1D881E200()
{
  result = qword_1ECA63C00;
  if (!qword_1ECA63C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63C00);
  }

  return result;
}

unint64_t sub_1D881E258()
{
  result = qword_1ECA63C08;
  if (!qword_1ECA63C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63C08);
  }

  return result;
}

unint64_t sub_1D881E2B0()
{
  result = qword_1ECA63C10;
  if (!qword_1ECA63C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63C10);
  }

  return result;
}

unint64_t sub_1D881E308()
{
  result = qword_1ECA63C18;
  if (!qword_1ECA63C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63C18);
  }

  return result;
}

unint64_t sub_1D881E360()
{
  result = qword_1ECA63C20;
  if (!qword_1ECA63C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63C20);
  }

  return result;
}

unint64_t sub_1D881E3B8()
{
  result = qword_1ECA63C28;
  if (!qword_1ECA63C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63C28);
  }

  return result;
}

unint64_t sub_1D881E410()
{
  result = qword_1ECA63C30;
  if (!qword_1ECA63C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63C30);
  }

  return result;
}

unint64_t sub_1D881E468()
{
  result = qword_1ECA63C38;
  if (!qword_1ECA63C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63C38);
  }

  return result;
}

unint64_t sub_1D881E4C0()
{
  result = qword_1ECA63C40;
  if (!qword_1ECA63C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63C40);
  }

  return result;
}

unint64_t sub_1D881E518()
{
  result = qword_1ECA63C48;
  if (!qword_1ECA63C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63C48);
  }

  return result;
}

unint64_t sub_1D881E570()
{
  result = qword_1ECA63C50;
  if (!qword_1ECA63C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63C50);
  }

  return result;
}

unint64_t sub_1D881E5C8()
{
  result = qword_1ECA63C58;
  if (!qword_1ECA63C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63C58);
  }

  return result;
}

unint64_t sub_1D881E620()
{
  result = qword_1ECA63C60;
  if (!qword_1ECA63C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63C60);
  }

  return result;
}

unint64_t sub_1D881E678()
{
  result = qword_1ECA63C68;
  if (!qword_1ECA63C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63C68);
  }

  return result;
}

unint64_t sub_1D881E6D0()
{
  result = qword_1ECA63C70;
  if (!qword_1ECA63C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63C70);
  }

  return result;
}

unint64_t sub_1D881E728()
{
  result = qword_1ECA63C78;
  if (!qword_1ECA63C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63C78);
  }

  return result;
}

unint64_t sub_1D881E780()
{
  result = qword_1ECA63C80;
  if (!qword_1ECA63C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63C80);
  }

  return result;
}

unint64_t sub_1D881E7D8()
{
  result = qword_1ECA63C88;
  if (!qword_1ECA63C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63C88);
  }

  return result;
}

unint64_t sub_1D881E830()
{
  result = qword_1ECA63C90;
  if (!qword_1ECA63C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63C90);
  }

  return result;
}

unint64_t sub_1D881E888()
{
  result = qword_1ECA63C98;
  if (!qword_1ECA63C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63C98);
  }

  return result;
}

unint64_t sub_1D881E8E0()
{
  result = qword_1ECA63CA0;
  if (!qword_1ECA63CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63CA0);
  }

  return result;
}

unint64_t sub_1D881E938()
{
  result = qword_1ECA63CA8;
  if (!qword_1ECA63CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63CA8);
  }

  return result;
}

unint64_t sub_1D881E990()
{
  result = qword_1ECA63CB0;
  if (!qword_1ECA63CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63CB0);
  }

  return result;
}

unint64_t sub_1D881E9E8()
{
  result = qword_1ECA63CB8;
  if (!qword_1ECA63CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63CB8);
  }

  return result;
}

unint64_t sub_1D881EA40()
{
  result = qword_1ECA63CC0;
  if (!qword_1ECA63CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63CC0);
  }

  return result;
}

unint64_t sub_1D881EA98()
{
  result = qword_1ECA63CC8;
  if (!qword_1ECA63CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63CC8);
  }

  return result;
}

unint64_t sub_1D881EAF0()
{
  result = qword_1ECA63CD0;
  if (!qword_1ECA63CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63CD0);
  }

  return result;
}

unint64_t sub_1D881EB48()
{
  result = qword_1ECA63CD8;
  if (!qword_1ECA63CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63CD8);
  }

  return result;
}

uint64_t sub_1D881EB9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7372656E726F63 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEB00000000656761 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x695064656B6E6172 && a2 == 0xEB00000000736C6CLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D8B41EC0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

uint64_t sub_1D881ED54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6870796C67 && a2 == 0xE900000000000065 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D8B41EE0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

uint64_t sub_1D881EF58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796669746E656469 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461636F4C6F6567 && a2 == 0xE900000000000065 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756B6F6F4C6F6567 && a2 == 0xE900000000000070 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x437261426E616373 && a2 == 0xEB0000000065646FLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6165536567616D69 && a2 == 0xEB00000000686372 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7A6972616D6D7573 && a2 == 0xE900000000000065 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001D8B41F00 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x756F6C4164616572 && a2 == 0xE900000000000064 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746E657645646461 && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656D63416B7361 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D8B41F30 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x746F685065766173 && a2 == 0xE90000000000006FLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D8B41F50 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6974634174786574 && a2 == 0xEB00000000736E6FLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x74616C736E617274 && a2 == 0xE900000000000065 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6B63616264656566 && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D8B41F70 == a2)
  {

    return 16;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_1D881F4C0(uint64_t a1, char a2)
{
  if ((a2 & 0xE0) == 0x40)
  {
  }

  return result;
}

uint64_t sub_1D881F4D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D881F548()
{
  result = qword_1EE0E5038[0];
  if (!qword_1EE0E5038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0E5038);
  }

  return result;
}

uint64_t sub_1D881F6FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D881F764(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1D881F800(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x1E69E7CC0];
  sub_1D87F3F54(0, v1, 0);
  v2 = v29;
  v3 = a1 + 56;
  result = sub_1D8B16580();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v27 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v28 = *(v6 + 36);
    v11 = v6;
    result = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy_category.description.getter();
    v13 = v2;
    v30 = v2;
    v14 = *(v2 + 16);
    v15 = *(v13 + 24);
    if (v14 >= v15 >> 1)
    {
      v24 = v12;
      v25 = result;
      sub_1D87F3F54((v15 > 1), v14 + 1, 1);
      v12 = v24;
      result = v25;
      v13 = v30;
    }

    *(v13 + 16) = v14 + 1;
    v16 = v13 + 16 * v14;
    *(v16 + 32) = result;
    *(v16 + 40) = v12;
    v8 = 1 << *(v11 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v3 + 8 * v10);
    if ((v17 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v11;
    v2 = v13;
    if (v28 != *(v11 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v5 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v27;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 64 + 8 * v10);
      v9 = v27;
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1D87977B4(v5, v28, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_1D87977B4(v5, v28, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D881FA54(uint64_t a1)
{
  v3 = type metadata accessor for ActionPin(0);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v24 = v1;
  v32 = MEMORY[0x1E69E7CC0];
  sub_1D87F3F24(0, v5, 0);
  v6 = v32;
  v7 = a1 + 56;
  result = sub_1D8B16580();
  v9 = result;
  v10 = 0;
  v25 = a1 + 64;
  v26 = v5;
  v27 = a1 + 56;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v31 = *(a1 + 36);
    v13 = v28;
    sub_1D885E420(*(a1 + 48) + *(v29 + 72) * v9, v28, type metadata accessor for ActionPin);
    v14 = *(*(v13 + *(v30 + 28)) + 16);
    result = sub_1D885E3C0(v13, type metadata accessor for ActionPin);
    v32 = v6;
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_1D87F3F24((v15 > 1), v16 + 1, 1);
      v6 = v32;
    }

    *(v6 + 16) = v16 + 1;
    *(v6 + 8 * v16 + 32) = v14;
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v7 = v27;
    v17 = *(v27 + 8 * v12);
    if ((v17 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v31 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v9 & 0x3F));
    if (v18)
    {
      v11 = __clz(__rbit64(v18)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v12 << 6;
      v20 = v12 + 1;
      v21 = (v25 + 8 * v12);
      while (v20 < (v11 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1D87977B4(v9, v31, 0);
          v11 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_1D87977B4(v9, v31, 0);
    }

LABEL_4:
    ++v10;
    v9 = v11;
    if (v10 == v26)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D881FD38@<X0>(uint64_t a1@<X0>, int8x8_t *a2@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 16);
  if (!v4)
  {

    v7 = MEMORY[0x1E69E7CC0];
    v60 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v60)
    {
      goto LABEL_148;
    }

    goto LABEL_151;
  }

  v72 = MEMORY[0x1E69E7CC0];
  result = sub_1D87F3F24(0, v4, 0);
  v6 = 0;
  v7 = v72;
  do
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_159:
      __break(1u);
      return result;
    }

    v8 = v6 + 1;
    v9 = *(a1 + v6 + 32);
    v10 = 0xEA00000000007265;
    v11 = 0x62616D6165727473;
    if (byte_1F5425748 == 3)
    {
      v11 = 0x6E49746C697562;
    }

    v12 = 0xE700000000000000;
    if (byte_1F5425748 != 3)
    {
      v12 = 0xEA0000000000656CLL;
    }

    if (byte_1F5425748 == 2)
    {
      v11 = 0x7261507473726966;
      v12 = 0xEA00000000007974;
    }

    v13 = 0x6261686372616573;
    if (byte_1F5425748)
    {
      v14 = 0xEA0000000000656CLL;
    }

    else
    {
      v13 = 0x7474756853657270;
      v14 = 0xEA00000000007265;
    }

    if (byte_1F5425748 <= 1u)
    {
      v15 = v13;
    }

    else
    {
      v15 = v11;
    }

    if (byte_1F5425748 <= 1u)
    {
      v16 = v14;
    }

    else
    {
      v16 = v12;
    }

    if (*(a1 + v6 + 32) <= 1u)
    {
      v17 = 0x7474756853657270;
      if (!*(a1 + v6 + 32))
      {
        goto LABEL_29;
      }

      v18 = 0x686372616573;
      goto LABEL_27;
    }

    if (v9 == 2)
    {
      v17 = 0x7261507473726966;
      v19 = 31092;
LABEL_28:
      v10 = v19 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      goto LABEL_29;
    }

    if (v9 != 3)
    {
      v18 = 0x6D6165727473;
LABEL_27:
      v17 = v18 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v19 = 25964;
      goto LABEL_28;
    }

    v10 = 0xE700000000000000;
    v17 = 0x6E49746C697562;
LABEL_29:
    if (v15 == v17 && v16 == v10)
    {
      v20 = 0;
LABEL_32:

      goto LABEL_35;
    }

    v21 = sub_1D8B16BA0();

    if (v21)
    {
      v20 = 0;
      goto LABEL_35;
    }

    if (byte_1F5425749 <= 1u)
    {
      if (!byte_1F5425749)
      {
        v24 = 0xEA00000000007265;
        v25 = 0x7474756853657270;
        if (v9 > 1)
        {
          goto LABEL_54;
        }

        goto LABEL_43;
      }

      v29 = 0x686372616573;
    }

    else
    {
      if (byte_1F5425749 == 2)
      {
        v25 = 0x7261507473726966;
        v28 = 31092;
        goto LABEL_53;
      }

      if (byte_1F5425749 == 3)
      {
        v24 = 0xE700000000000000;
        v25 = 0x6E49746C697562;
        if (v9 > 1)
        {
          goto LABEL_54;
        }

        goto LABEL_43;
      }

      v29 = 0x6D6165727473;
    }

    v25 = v29 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    v28 = 25964;
LABEL_53:
    v24 = v28 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v9 > 1)
    {
LABEL_54:
      if (v9 == 2)
      {
        v27 = 0x7261507473726966;
        v31 = 31092;
LABEL_60:
        v26 = v31 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        goto LABEL_61;
      }

      if (v9 == 3)
      {
        v26 = 0xE700000000000000;
        v27 = 0x6E49746C697562;
        goto LABEL_61;
      }

      v30 = 0x6D6165727473;
LABEL_59:
      v27 = v30 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v31 = 25964;
      goto LABEL_60;
    }

LABEL_43:
    if (v9)
    {
      v30 = 0x686372616573;
      goto LABEL_59;
    }

    v26 = 0xEA00000000007265;
    v27 = 0x7474756853657270;
LABEL_61:
    if (v25 == v27 && v24 == v26)
    {
      v20 = 1;
      goto LABEL_32;
    }

    v32 = sub_1D8B16BA0();

    if (v32)
    {
      v20 = 1;
      goto LABEL_35;
    }

    if (byte_1F542574A <= 1u)
    {
      if (!byte_1F542574A)
      {
        v33 = 0xEA00000000007265;
        v34 = 0x7474756853657270;
        if (v9 > 1)
        {
          goto LABEL_81;
        }

        goto LABEL_70;
      }

      v38 = 0x686372616573;
    }

    else
    {
      if (byte_1F542574A == 2)
      {
        v34 = 0x7261507473726966;
        v37 = 31092;
        goto LABEL_80;
      }

      if (byte_1F542574A == 3)
      {
        v33 = 0xE700000000000000;
        v34 = 0x6E49746C697562;
        if (v9 > 1)
        {
          goto LABEL_81;
        }

        goto LABEL_70;
      }

      v38 = 0x6D6165727473;
    }

    v34 = v38 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    v37 = 25964;
LABEL_80:
    v33 = v37 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v9 > 1)
    {
LABEL_81:
      if (v9 == 2)
      {
        v36 = 0x7261507473726966;
        v40 = 31092;
LABEL_87:
        v35 = v40 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        goto LABEL_88;
      }

      if (v9 == 3)
      {
        v35 = 0xE700000000000000;
        v36 = 0x6E49746C697562;
        goto LABEL_88;
      }

      v39 = 0x6D6165727473;
LABEL_86:
      v36 = v39 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v40 = 25964;
      goto LABEL_87;
    }

LABEL_70:
    if (v9)
    {
      v39 = 0x686372616573;
      goto LABEL_86;
    }

    v35 = 0xEA00000000007265;
    v36 = 0x7474756853657270;
LABEL_88:
    if (v34 == v36 && v33 == v35)
    {
      v20 = 2;
      goto LABEL_32;
    }

    v41 = sub_1D8B16BA0();

    if (v41)
    {
      v20 = 2;
      goto LABEL_35;
    }

    if (byte_1F542574B <= 1u)
    {
      if (!byte_1F542574B)
      {
        v42 = 0xEA00000000007265;
        v43 = 0x7474756853657270;
        if (v9 > 1)
        {
          goto LABEL_108;
        }

        goto LABEL_97;
      }

      v47 = 0x686372616573;
    }

    else
    {
      if (byte_1F542574B == 2)
      {
        v43 = 0x7261507473726966;
        v46 = 31092;
        goto LABEL_107;
      }

      if (byte_1F542574B == 3)
      {
        v42 = 0xE700000000000000;
        v43 = 0x6E49746C697562;
        if (v9 > 1)
        {
          goto LABEL_108;
        }

        goto LABEL_97;
      }

      v47 = 0x6D6165727473;
    }

    v43 = v47 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    v46 = 25964;
LABEL_107:
    v42 = v46 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v9 > 1)
    {
LABEL_108:
      if (v9 == 2)
      {
        v45 = 0x7261507473726966;
        v49 = 31092;
LABEL_114:
        v44 = v49 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        goto LABEL_115;
      }

      if (v9 == 3)
      {
        v44 = 0xE700000000000000;
        v45 = 0x6E49746C697562;
        goto LABEL_115;
      }

      v48 = 0x6D6165727473;
LABEL_113:
      v45 = v48 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v49 = 25964;
      goto LABEL_114;
    }

LABEL_97:
    if (v9)
    {
      v48 = 0x686372616573;
      goto LABEL_113;
    }

    v44 = 0xEA00000000007265;
    v45 = 0x7474756853657270;
LABEL_115:
    if (v43 == v45 && v42 == v44)
    {
      v20 = 3;
      goto LABEL_32;
    }

    v50 = sub_1D8B16BA0();

    if (v50)
    {
      v20 = 3;
      goto LABEL_35;
    }

    if (byte_1F542574C <= 1u)
    {
      if (!byte_1F542574C)
      {
        v51 = 0xEA00000000007265;
        v52 = 0x7474756853657270;
        goto LABEL_131;
      }

      v54 = 0x686372616573;
      goto LABEL_129;
    }

    if (byte_1F542574C != 2)
    {
      if (byte_1F542574C == 3)
      {
        v51 = 0xE700000000000000;
        v52 = 0x6E49746C697562;
        goto LABEL_131;
      }

      v54 = 0x6D6165727473;
LABEL_129:
      v52 = v54 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v53 = 25964;
      goto LABEL_130;
    }

    v52 = 0x7261507473726966;
    v53 = 31092;
LABEL_130:
    v51 = v53 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_131:
    if (v9 <= 1)
    {
      if (!v9)
      {
        v55 = 0xEA00000000007265;
        v56 = 0x7474756853657270;
        goto LABEL_142;
      }

      v58 = 0x686372616573;
      goto LABEL_140;
    }

    if (v9 != 2)
    {
      if (v9 == 3)
      {
        v55 = 0xE700000000000000;
        v56 = 0x6E49746C697562;
        goto LABEL_142;
      }

      v58 = 0x6D6165727473;
LABEL_140:
      v56 = v58 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v57 = 25964;
      goto LABEL_141;
    }

    v56 = 0x7261507473726966;
    v57 = 31092;
LABEL_141:
    v55 = v57 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_142:
    if (v52 == v56 && v51 == v55)
    {
      v20 = 4;
      goto LABEL_32;
    }

    v59 = sub_1D8B16BA0();

    if ((v59 & 1) == 0)
    {
      goto LABEL_159;
    }

    v20 = 4;
LABEL_35:
    v23 = v72[1].u64[0];
    v22 = v72[1].u64[1];
    if (v23 >= v22 >> 1)
    {
      result = sub_1D87F3F24((v22 > 1), v23 + 1, 1);
    }

    v72[1].i64[0] = v23 + 1;
    v72[2].i64[v23] = 1 << v20;
    v6 = v8;
  }

  while (v4 != v8);

  v3 = a2;
  v60 = v72[1].u64[0];
  if (!v60)
  {
LABEL_151:
    v62 = 0;
    goto LABEL_157;
  }

LABEL_148:
  if (v60 <= 3)
  {
    v61 = 0;
    v62 = 0;
    goto LABEL_155;
  }

  v61 = v60 & 0x7FFFFFFFFFFFFFFCLL;
  v63 = v7 + 3;
  v64 = 0uLL;
  v65 = v60 & 0x7FFFFFFFFFFFFFFCLL;
  v66 = 0uLL;
  do
  {
    v64 = vorrq_s8(v63[-1], v64);
    v66 = vorrq_s8(*v63, v66);
    v63 += 2;
    v65 -= 4;
  }

  while (v65);
  v67 = vorrq_s8(v66, v64);
  v62 = vorr_s8(*v67.i8, *&vextq_s8(v67, v67, 8uLL));
  if (v60 != v61)
  {
LABEL_155:
    v68 = v60 - v61;
    v69 = &v7[2].i64[v61];
    do
    {
      v70 = *v69++;
      *&v62 |= v70;
      --v68;
    }

    while (v68);
  }

LABEL_157:

  *v3 = v62;
  return result;
}

void *sub_1D88205B4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64270);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v30 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *(sub_1D8B14E80() - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x1E69E7CC0];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_1D87A14E4(v9, &qword_1ECA64270);
    }

    else
    {
      v20 = v28;
      sub_1D885E538(v9, v28, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      sub_1D885E538(v20, v30, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1D87C7E68(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_1D87C7E68(v21 > 1, v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_1D885E538(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_1D88208D0(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v31 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641E8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v30 = type metadata accessor for TimeZonedTime();
  v25 = *(v30 - 8);
  v8 = MEMORY[0x1EEE9AC00](v30);
  v29 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v22 - v10;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D8B16610())
  {
    v12 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v28 = a3 & 0xC000000000000001;
    v13 = (v25 + 48);
    v14 = MEMORY[0x1E69E7CC0];
    v23 = a3;
    v26 = i;
    while (1)
    {
      if (v28)
      {
        v15 = MEMORY[0x1DA71FC20](v12, a3);
      }

      else
      {
        if (v12 >= *(v27 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v32 = v15;
      v31(&v32);
      if (v3)
      {

        return v14;
      }

      if ((*v13)(v7, 1, v30) == 1)
      {
        sub_1D87A14E4(v7, &qword_1ECA641E8);
      }

      else
      {
        v18 = v24;
        sub_1D885E538(v7, v24, type metadata accessor for TimeZonedTime);
        sub_1D885E538(v18, v29, type metadata accessor for TimeZonedTime);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1D87C7F2C(0, v14[2] + 1, 1, v14);
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          v14 = sub_1D87C7F2C(v19 > 1, v20 + 1, 1, v14);
        }

        v14[2] = v20 + 1;
        sub_1D885E538(v29, v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, type metadata accessor for TimeZonedTime);
        a3 = v23;
      }

      ++v12;
      if (v17 == v26)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

char *sub_1D8820C18(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1D8B131D0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v31 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(sub_1D8B15240() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = MEMORY[0x1E69E7CC0];
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_1D87A14E4(v8, &qword_1ECA631A8);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1D87C7898(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_1D87C7898(v20 > 1, v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(&v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}

void *sub_1D8820F44(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_1D8B152F0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v32 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v29 = &v25 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(v12 + 72);
  v26 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = a3 + v26;
  v30 = (v12 + 32);
  v31 = (v12 + 48);
  v17 = MEMORY[0x1E69E7CC0];
  v27 = v9;
  v28 = a1;
  v25 = v15;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v31)(v8, 1, v9) == 1)
    {
      sub_1D87A14E4(v8, &qword_1ECA641A8);
    }

    else
    {
      v18 = v29;
      v19 = *v30;
      (*v30)(v29, v8, v9);
      v19(v32, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1D87C91E8(0, v17[2] + 1, 1, v17);
      }

      v21 = v17[2];
      v20 = v17[3];
      if (v21 >= v20 >> 1)
      {
        v17 = sub_1D87C91E8(v20 > 1, v21 + 1, 1, v17);
      }

      v17[2] = v21 + 1;
      v22 = v25;
      v23 = v17 + v26 + v21 * v25;
      v9 = v27;
      v19(v23, v32, v27);
      v15 = v22;
      a1 = v28;
    }

    v16 += v15;
    if (!--v14)
    {
      return v17;
    }
  }

  return v17;
}

void *sub_1D8821218(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA632C0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v28 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v26 = &v23 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(type metadata accessor for DetectionRequest(0) - 8);
  v23 = v10;
  v16 = (v10 + 48);
  v17 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v18 = MEMORY[0x1E69E7CC0];
  v27 = *(v15 + 72);
  v24 = v9;
  v25 = a1;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_1D87A14E4(v8, &qword_1ECA641E0);
    }

    else
    {
      v19 = v26;
      sub_1D881F6FC(v8, v26, &qword_1ECA632C0);
      sub_1D881F6FC(v19, v28, &qword_1ECA632C0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1D87C9C70(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1D87C9C70(v20 > 1, v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_1D881F6FC(v28, v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, &qword_1ECA632C0);
      v9 = v24;
      a1 = v25;
    }

    v17 += v27;
    if (!--v14)
    {
      return v18;
    }
  }

  return v18;
}

char *sub_1D882154C(void (*a1)(void *__return_ptr, void), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D8B16610())
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v16 = i;
    v17 = a1;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA71FC20](v7, a3);
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v9 = *(a3 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v19 = v9;
      a1(&v18, &v19);
      if (v3)
      {

        return v8;
      }

      v12 = v18;
      if ((~v18 & 0xF000000000000007) != 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D87C7F54(0, *(v8 + 2) + 1, 1, v8);
        }

        v14 = *(v8 + 2);
        v13 = *(v8 + 3);
        if (v14 >= v13 >> 1)
        {
          v8 = sub_1D87C7F54((v13 > 1), v14 + 1, 1, v8);
        }

        *(v8 + 2) = v14 + 1;
        *&v8[8 * v14 + 32] = v12;
        i = v16;
        a1 = v17;
      }

      else
      {
        sub_1D88649A0(v18);
      }

      ++v7;
      if (v11 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D882170C(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v5 = type metadata accessor for DetectionRequest.Annotation(0);
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  while (v10)
  {
LABEL_9:
    sub_1D885E420(*(a3 + 48) + *(v24 + 72) * (__clz(__rbit64(v10)) | (v13 << 6)), v7, type metadata accessor for DetectionRequest.Annotation);
    v25(&v26, v7);
    if (v3)
    {
      sub_1D885E3C0(v7, type metadata accessor for DetectionRequest.Annotation);

LABEL_17:

      return v23;
    }

    v10 &= v10 - 1;
    result = sub_1D885E3C0(v7, type metadata accessor for DetectionRequest.Annotation);
    v15 = v26;
    if (v26)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D87C9E14(0, v23[2] + 1, 1, v23);
        v23 = result;
      }

      v17 = v23[2];
      v16 = v23[3];
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v21 = v23[2];
        v22 = v17 + 1;
        result = sub_1D87C9E14((v16 > 1), v17 + 1, 1, v23);
        v17 = v21;
        v18 = v22;
        v23 = result;
      }

      v19 = v23;
      v23[2] = v18;
      v19[v17 + 4] = v15;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_17;
    }

    v10 = *(a3 + 56 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

char *sub_1D8821974(void (*a1)(_OWORD *__return_ptr, _OWORD *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = a3 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = *(v6 + 48);
    v21[2] = *(v6 + 32);
    v21[3] = v10;
    v21[4] = *(v6 + 64);
    v22 = *(v6 + 80);
    v11 = *(v6 + 16);
    v21[0] = *v6;
    v21[1] = v11;
    a1(v19, v21);
    if (v3)
    {
      break;
    }

    if ((v20[24] & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D87CA2CC(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_1D87CA2CC((v12 > 1), v13 + 1, 1, v7);
      }

      v16 = v19[2];
      v17 = v19[3];
      *v18 = *v20;
      *&v18[9] = *&v20[9];
      v8 = v19[0];
      v15 = v19[1];
      *(v7 + 2) = v13 + 1;
      v9 = &v7[88 * v13];
      *(v9 + 3) = v15;
      *(v9 + 14) = *&v18[16];
      *(v9 + 5) = v17;
      *(v9 + 6) = *v18;
      *(v9 + 4) = v16;
      *(v9 + 2) = v8;
    }

    v6 += 88;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

void *sub_1D8821AF8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for CVTrackSnapshot(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v31 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v29 = &v25 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *(v13 + 72);
  v26 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = a3 + v26;
  v30 = (v13 + 48);
  v18 = MEMORY[0x1E69E7CC0];
  v27 = v10;
  v28 = a2;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v30)(v9, 1, v10) == 1)
    {
      sub_1D87A14E4(v9, &qword_1ECA63E20);
    }

    else
    {
      v19 = v29;
      sub_1D885E538(v9, v29, type metadata accessor for CVTrackSnapshot);
      sub_1D885E538(v19, v31, type metadata accessor for CVTrackSnapshot);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1D87C7834(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v23 = sub_1D87C7834(v20 > 1, v21 + 1, 1, v18);
        v22 = v16;
        v18 = v23;
      }

      else
      {
        v22 = v16;
      }

      v18[2] = v21 + 1;
      v16 = v22;
      sub_1D885E538(v31, v18 + v26 + v21 * v22, type metadata accessor for CVTrackSnapshot);
      v10 = v27;
    }

    v17 += v16;
    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

double sub_1D8821DD0@<D0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D8B14F20();
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D8B13240();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D885E420(v2, v12, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v14 + 32);
    v17(v16, v12, v13);
  }

  else
  {
    sub_1D885E538(v12, v9, type metadata accessor for CVTrackSnapshot);
    (*(v14 + 16))(v16, v9, v13);
    sub_1D885E3C0(v9, type metadata accessor for CVTrackSnapshot);
    v17 = *(v14 + 32);
  }

  v17(a1, v16, v13);
  sub_1D884F874(v33);
  v18 = sub_1D884F92C();
  v20 = v19;
  v21 = sub_1D8845D1C();
  type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  sub_1D8B14F00();
  sub_1D885E288(&qword_1EE0E3AA8, MEMORY[0x1E69DFB48]);
  sub_1D8B15C40();
  sub_1D8B15C40();
  (*(v30 + 8))(v6, v4);
  if (v32 == v31)
  {
    v22 = sub_1D8919304();
  }

  else
  {
    v22 = 0;
  }

  v23 = type metadata accessor for ActionPin(0);
  v24 = &a1[v23[5]];
  v25 = v33[1];
  *v24 = v33[0];
  *(v24 + 1) = v25;
  result = *&v34;
  v27 = v35;
  *(v24 + 2) = v34;
  *(v24 + 3) = v27;
  v28 = &a1[v23[6]];
  *v28 = v18;
  *(v28 + 1) = v20;
  *&a1[v23[7]] = v21;
  a1[v23[8]] = v22 & 1;
  return result;
}

void static ActionPredictor.Configuration.factorySettings.getter(uint64_t a1@<X8>)
{
  *a1 = 0x402E000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FE0000000000000;
  *(a1 + 24) = 1000;
  *(a1 + 32) = 0x3FF8000000000000;
}

unint64_t sub_1D8822298()
{
  v1 = *v0;
  v2 = 0x6974636964657270;
  if (v1 != 3)
  {
    v2 = 0xD000000000000011;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000014;
  }

  v3 = 0xD000000000000010;
  if (*v0)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8822350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8860DE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8822378(uint64_t a1)
{
  v2 = sub_1D885DD50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D88223B4(uint64_t a1)
{
  v2 = sub_1D885DD50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActionPredictor.Configuration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64058);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D885DD50();
  sub_1D8B16DD0();
  v14 = 0;
  sub_1D8B16AB0();
  if (!v2)
  {
    v13 = 1;
    sub_1D8B16AA0();
    v12 = 2;
    sub_1D8B16AB0();
    v11 = 3;
    sub_1D8B16AD0();
    v10 = 4;
    sub_1D8B16AB0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ActionPredictor.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64068);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D885DD50();
  sub_1D8B16DB0();
  if (!v2)
  {
    v18[15] = 0;
    sub_1D8B169E0();
    v10 = v9;
    v18[14] = 1;
    v11 = sub_1D8B169D0();
    v18[13] = 2;
    sub_1D8B169E0();
    v13 = v12;
    v18[12] = 3;
    v15 = sub_1D8B16A00();
    v18[11] = 4;
    sub_1D8B169E0();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 8) = v11 & 1;
    *(a2 + 16) = v13;
    *(a2 + 24) = v15;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D8822824(uint64_t a1@<X8>)
{
  *a1 = 0x402E000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FE0000000000000;
  *(a1 + 24) = 1000;
  *(a1 + 32) = 0x3FF8000000000000;
}

__n128 ActionPredictor.Output.latestFrameMetadata.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActionPredictor.Output(0) + 20);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(v3 + 64);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t ActionPredictor.Output.saliencyRankedActionPins.getter()
{
  type metadata accessor for ActionPredictor.Output(0);
}

uint64_t ActionPredictor.Output.guaranteedActionPins.getter()
{
  type metadata accessor for ActionPredictor.Output(0);
}

unint64_t sub_1D8822984()
{
  v1 = *v0;
  v2 = 0x696C616E69467369;
  if (v1 == 3)
  {
    v2 = 0xD000000000000014;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000018;
  }

  v3 = 0xD00000000000001DLL;
  if (*v0)
  {
    v3 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8822A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8860FA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8822A58(uint64_t a1)
{
  v2 = sub_1D885E144();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8822A94(uint64_t a1)
{
  v2 = sub_1D885E144();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActionPredictor.Output.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64078);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D885E144();
  sub_1D8B16DD0();
  v21 = 0;
  type metadata accessor for ActionPin(0);
  sub_1D885E288(&qword_1ECA64088, type metadata accessor for ActionPin);
  sub_1D8B16A80();
  if (!v2)
  {
    v9 = type metadata accessor for ActionPredictor.Output(0);
    v10 = (v3 + v9[5]);
    v11 = v10[3];
    v18 = v10[2];
    v19 = v11;
    v20 = v10[4];
    v12 = v10[1];
    v16 = *v10;
    v17 = v12;
    v15 = 1;
    sub_1D885E198();
    sub_1D8B16AE0();
    *&v16 = *(v3 + v9[6]);
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64098);
    sub_1D885E324(&qword_1ECA640A0, &qword_1ECA64088);
    sub_1D8B16AE0();
    *&v16 = *(v3 + v9[7]);
    v15 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640A8);
    sub_1D885E1EC(&qword_1ECA640B0, &qword_1ECA64088);
    sub_1D8B16AE0();
    LOBYTE(v16) = 4;
    sub_1D8B16AA0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ActionPredictor.Output.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ActionPin(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64070);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v23 - v9;
  sub_1D87A0E38(v2, v23 - v9, &qword_1ECA64070);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D8B16D40();
  }

  else
  {
    sub_1D885E538(v10, v7, type metadata accessor for ActionPin);
    sub_1D8B16D40();
    sub_1D8B13240();
    sub_1D885E288(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
    sub_1D8B157A0();
    v11 = &v7[*(v4 + 20)];
    v12 = v11[2];
    v13 = v11[3];
    v14 = v11[4];
    v15 = v11[5];
    v16 = v11[6];
    v17 = v11[7];
    sub_1D8818B80(*v11, v11[1]);
    sub_1D8818B80(v12, v13);
    sub_1D8818B80(v14, v15);
    sub_1D8818B80(v16, v17);
    sub_1D8B15A60();
    sub_1D87CF3E8(a1, *&v7[*(v4 + 28)]);
    sub_1D8B16D40();
    sub_1D885E3C0(v7, type metadata accessor for ActionPin);
  }

  v18 = type metadata accessor for ActionPredictor.Output(0);
  v19 = (v2 + v18[5]);
  v20 = v19[3];
  v23[2] = v19[2];
  v23[3] = v20;
  v23[4] = v19[4];
  v21 = v19[1];
  v23[0] = *v19;
  v23[1] = v21;
  CameraSourceFrameMetadata.hash(into:)();
  sub_1D87D0E4C(a1, *(v2 + v18[6]));
  sub_1D8819BD0(a1, *(v2 + v18[7]));
  return sub_1D8B16D40();
}

uint64_t ActionPredictor.Output.hashValue.getter()
{
  sub_1D8B16D20();
  ActionPredictor.Output.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t ActionPredictor.Output.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64070);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640B8);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ActionPredictor.Output(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D885E144();
  v25 = v9;
  sub_1D8B16DB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v23;
  v14 = v12;
  type metadata accessor for ActionPin(0);
  LOBYTE(v27) = 0;
  sub_1D885E288(&qword_1ECA640C0, type metadata accessor for ActionPin);
  v15 = v24;
  sub_1D8B169B0();
  sub_1D881F6FC(v6, v14, &qword_1ECA64070);
  v33 = 1;
  sub_1D885E2D0();
  sub_1D8B16A10();
  v16 = (v14 + v10[5]);
  v17 = v30;
  v16[2] = v29;
  v16[3] = v17;
  v16[4] = v31;
  v18 = v28;
  *v16 = v27;
  v16[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64098);
  v32 = 2;
  sub_1D885E324(&qword_1ECA640D0, &qword_1ECA640C0);
  sub_1D8B16A10();
  *(v14 + v10[6]) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640A8);
  v32 = 3;
  sub_1D885E1EC(&qword_1ECA640D8, &qword_1ECA640C0);
  sub_1D8B16A10();
  *(v14 + v10[7]) = v26;
  LOBYTE(v26) = 4;
  v19 = sub_1D8B169D0();
  (*(v13 + 8))(v25, v15);
  *(v14 + v10[8]) = v19 & 1;
  sub_1D885E420(v14, v22, type metadata accessor for ActionPredictor.Output);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D885E3C0(v14, type metadata accessor for ActionPredictor.Output);
}

__n128 sub_1D88236D0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 20);
  v4 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v4;
  *(a2 + 64) = *(v3 + 64);
  result = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1D88236F4@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for BundleSelector.Output(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for CVBundle(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_latestBundleSelectorOutput;
  swift_beginAccess();
  sub_1D87A0E38(v1 + v16, v8, &qword_1ECA640E8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1D87A14E4(v8, &qword_1ECA640E8);
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_4:
    sub_1D87A14E4(v11, &qword_1ECA67980);
    v17 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
    return (*(*(v17 - 8) + 56))(v22, 1, 1, v17);
  }

  sub_1D885E420(v8, v5, type metadata accessor for BundleSelector.Output);
  sub_1D87A14E4(v8, &qword_1ECA640E8);
  sub_1D87A0E38(v5, v11, &qword_1ECA67980);
  sub_1D885E3C0(v5, type metadata accessor for BundleSelector.Output);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  v19 = sub_1D885E538(v11, v15, type metadata accessor for CVBundle);
  v20 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_predictionResults);
  MEMORY[0x1EEE9AC00](v19);
  *(&v21 - 2) = v15;

  sub_1D87EDB98(sub_1D8864EF0, v20, v22);

  return sub_1D885E3C0(v15, type metadata accessor for CVBundle);
}

uint64_t sub_1D8823AF4(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v33 = a2;
  v2 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CVBundle.BundleType(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  v11 = sub_1D8B13240();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v31 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v30 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v30 - v21;
  sub_1D885E420(v32, v10, type metadata accessor for CVBundle.BundleType);
  v32 = v5;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = v4;
  if (EnumCaseMultiPayload == 1)
  {
    v24 = *(v12 + 32);
    v24(v20, v10, v11);
  }

  else
  {
    sub_1D885E538(v10, v4, type metadata accessor for CVTrackSnapshot);
    (*(v12 + 16))(v20, v4, v11);
    sub_1D885E3C0(v4, type metadata accessor for CVTrackSnapshot);
    v24 = *(v12 + 32);
  }

  v24(v22, v20, v11);
  sub_1D885E420(v33, v8, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v31;
    v24(v31, v8, v11);
  }

  else
  {
    v26 = v30;
    sub_1D885E538(v8, v30, type metadata accessor for CVTrackSnapshot);
    v25 = v31;
    (*(v12 + 16))(v31, v26, v11);
    sub_1D885E3C0(v26, type metadata accessor for CVTrackSnapshot);
  }

  v24(v17, v25, v11);
  v27 = sub_1D8B13200();
  v28 = *(v12 + 8);
  v28(v17, v11);
  v28(v22, v11);
  return v27 & 1;
}

uint64_t sub_1D8823EB0@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for BundleSelector.Output(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for CVBundle(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_latestBundleSelectorOutput;
  swift_beginAccess();
  sub_1D87A0E38(v1 + v16, v8, &qword_1ECA640E8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1D87A14E4(v8, &qword_1ECA640E8);
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_4:
    sub_1D87A14E4(v11, &qword_1ECA67980);
LABEL_5:
    v17 = type metadata accessor for ActionPin(0);
    return (*(*(v17 - 8) + 56))(v26, 1, 1, v17);
  }

  sub_1D885E420(v8, v5, type metadata accessor for BundleSelector.Output);
  sub_1D87A14E4(v8, &qword_1ECA640E8);
  sub_1D87A0E38(v5, v11, &qword_1ECA67980);
  sub_1D885E3C0(v5, type metadata accessor for BundleSelector.Output);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  sub_1D885E538(v11, v15, type metadata accessor for CVBundle);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634D0);
  v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D8B1AB90;
  sub_1D885E420(v15, v20 + v19, type metadata accessor for CVBundle);

  v22 = sub_1D8861160(v21, v20);

  swift_setDeallocating();
  sub_1D885E3C0(v20 + v19, type metadata accessor for CVBundle);
  swift_deallocClassInstance();
  if (!*(v22 + 16))
  {

    sub_1D885E3C0(v15, type metadata accessor for CVBundle);
    goto LABEL_5;
  }

  v23 = type metadata accessor for ActionPin(0);
  v24 = *(v23 - 8);
  v25 = v26;
  sub_1D885E420(v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v26, type metadata accessor for ActionPin);

  sub_1D885E3C0(v15, type metadata accessor for CVBundle);
  return (*(v24 + 56))(v25, 0, 1, v23);
}

uint64_t ActionPredictor.RequiredPixels.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8824444(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D8B13240();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  sub_1D885E420(v2, v9, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v11 + 32);
    v17(v14, v9, v10);
  }

  else
  {
    sub_1D885E538(v9, v6, type metadata accessor for CVTrackSnapshot);
    (*(v11 + 16))(v14, v6, v10);
    sub_1D885E3C0(v6, type metadata accessor for CVTrackSnapshot);
    v17 = *(v11 + 32);
  }

  v17(v16, v14, v10);
  v18 = sub_1D8B13200();
  (*(v11 + 8))(v16, v10);
  if (v18)
  {
    v19 = sub_1D8845D1C();
    v20 = sub_1D8846100(a2, v19);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1D88246E4@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  for (i = *(a2 + 16) - 1; i != -1; --i)
  {
    v8 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
    v9 = *(v8 - 8);
    v10 = v9;
    v11 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v9 + 72) * i;
    result = a1(v11);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      sub_1D885E420(v11, a3, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      return (*(v10 + 56))(a3, 0, 1, v8);
    }
  }

  v13 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
}

uint64_t sub_1D8824850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D8824880, v8, 0);
}

uint64_t sub_1D8824880()
{
  v1 = *(v0[10] + 120);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1D8824954;
  v4 = v0[7];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_1D8828310(v9, v7, v8, v1, v5, v6, v4, ObjectType);
}

uint64_t sub_1D8824954()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D8824A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[41] = v6;
  v7[42] = a6;
  v7[39] = a4;
  v7[40] = a5;
  v7[37] = a2;
  v7[38] = a3;
  v7[36] = a1;
  v7[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E0);
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  type metadata accessor for ActionPin(0);
  v7[47] = swift_task_alloc();
  v7[48] = swift_task_alloc();
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v8 = type metadata accessor for BundleSelector.Output(0);
  v7[54] = v8;
  v7[55] = *(v8 - 8);
  v7[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8);
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  type metadata accessor for CVTrackSnapshot(0);
  v7[59] = swift_task_alloc();
  v7[60] = type metadata accessor for CVBundle.BundleType(0);
  v7[61] = swift_task_alloc();
  v9 = sub_1D8B13240();
  v7[62] = v9;
  v7[63] = *(v9 - 8);
  v7[64] = swift_task_alloc();
  v7[65] = swift_task_alloc();
  v10 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v7[66] = v10;
  v7[67] = *(v10 - 8);
  v7[68] = swift_task_alloc();
  v7[69] = swift_task_alloc();
  v7[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64270);
  v7[71] = swift_task_alloc();
  v11 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v7[72] = v11;
  v7[73] = *(v11 - 8);
  v7[74] = swift_task_alloc();
  v7[75] = swift_task_alloc();
  v7[76] = swift_task_alloc();
  v7[77] = type metadata accessor for ActionPin.Pill(0);
  v7[78] = swift_task_alloc();
  v7[79] = swift_task_alloc();
  v7[80] = swift_task_alloc();
  v7[81] = swift_task_alloc();
  v7[82] = swift_task_alloc();
  v7[83] = swift_task_alloc();
  v7[84] = swift_task_alloc();
  v7[85] = swift_task_alloc();
  v7[86] = swift_task_alloc();
  v7[87] = swift_task_alloc();
  v12 = type metadata accessor for BuiltInAction(0);
  v7[88] = v12;
  v7[89] = *(v12 - 8);
  v7[90] = swift_task_alloc();
  type metadata accessor for ActionPin.Pill.Source(0);
  v7[91] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8824F28, v6, 0);
}

uint64_t sub_1D8824F28()
{
  v227 = v0;
  v1 = v0[91];
  v2 = v0[89];
  v3 = v0[88];
  sub_1D885E420(v0[40] + *(v0[77] + 36), v1, type metadata accessor for ActionPin.Pill.Source);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    goto LABEL_8;
  }

  sub_1D885E538(v0[91], v0[90], type metadata accessor for BuiltInAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if ((EnumCaseMultiPayload - 11) >= 2 && EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 10)
      {
        v59 = v0[57];
        v60 = v0[54];
        v61 = v0[55];
        v62 = v0[41];
        v63 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_latestBundleSelectorOutput;
        swift_beginAccess();
        sub_1D87A0E38(v62 + v63, v59, &qword_1ECA640E8);
        v64 = (*(v61 + 48))(v59, 1, v60);
        v65 = v0[57];
        if (v64)
        {
          sub_1D87A14E4(v65, &qword_1ECA640E8);
LABEL_59:
          if (qword_1EE0E43B8 != -1)
          {
            swift_once();
          }

          v163 = v0[80];
          v164 = v0[49];
          v166 = v0[39];
          v165 = v0[40];
          v167 = sub_1D8B151E0();
          v0[96] = __swift_project_value_buffer(v167, qword_1EE0E43C0);
          sub_1D885E420(v166, v164, type metadata accessor for ActionPin);
          sub_1D885E420(v165, v163, type metadata accessor for ActionPin.Pill);
          v168 = sub_1D8B151C0();
          v169 = sub_1D8B16230();
          if (os_log_type_enabled(v168, v169))
          {
            v170 = v0[86];
            v171 = v0[80];
            v172 = v0[49];
            v173 = swift_slowAlloc();
            v174 = swift_slowAlloc();
            v226[0] = v174;
            *v173 = 136315394;
            v175 = ActionPin.description.getter();
            v177 = v176;
            sub_1D885E3C0(v172, type metadata accessor for ActionPin);
            v178 = sub_1D89AC714(v175, v177, v226);

            *(v173 + 4) = v178;
            *(v173 + 12) = 2080;
            sub_1D885E420(v171, v170, type metadata accessor for ActionPin.Pill);
            v179 = sub_1D8B159E0();
            v181 = v180;
            sub_1D885E3C0(v171, type metadata accessor for ActionPin.Pill);
            v182 = sub_1D89AC714(v179, v181, v226);

            *(v173 + 14) = v182;
            _os_log_impl(&dword_1D8783000, v168, v169, "waiting for matching prediction result for pin: %s  pill: %s", v173, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1DA721330](v174, -1, -1);
            MEMORY[0x1DA721330](v173, -1, -1);
          }

          else
          {
            v183 = v0[80];
            v184 = v0[49];

            sub_1D885E3C0(v183, type metadata accessor for ActionPin.Pill);
            sub_1D885E3C0(v184, type metadata accessor for ActionPin);
          }

          v0[97] = *(v0[41] + 144);
          v58 = sub_1D8827358;
LABEL_21:

          return MEMORY[0x1EEE6DFA0](v58, 0, 0);
        }

        v140 = v0[56];
        v141 = v0[54];
        v142 = v0[57];
        sub_1D885E420(v65, v140, type metadata accessor for BundleSelector.Output);
        sub_1D87A14E4(v142, &qword_1ECA640E8);
        LODWORD(v142) = *(v140 + *(v141 + 20) + 40);
        sub_1D885E3C0(v140, type metadata accessor for BundleSelector.Output);
        if (v142 != 1)
        {
          goto LABEL_59;
        }

        if (qword_1EE0E43B8 == -1)
        {
          goto LABEL_57;
        }

        goto LABEL_77;
      }

LABEL_38:
      v90 = v0[73];
      v91 = v0[72];
      v92 = v0[67];
      v93 = v0[66];
      v94 = v0[41];
      v96 = v0[36];
      v95 = v0[37];
      sub_1D885E3C0(v0[90], type metadata accessor for BuiltInAction);
      (*(v92 + 56))(v96, 1, 1, v93);
      (*(v90 + 56))(v95, 1, 1, v91);
      v83 = (v94 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_actionToPredictionResultMap);
      goto LABEL_39;
    }

LABEL_8:
    v6 = v0[58];
    v7 = v0[54];
    v8 = v0[55];
    v9 = v0[41];
    v10 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_latestBundleSelectorOutput;
    swift_beginAccess();
    sub_1D87A0E38(v9 + v10, v6, &qword_1ECA640E8);
    v11 = (*(v8 + 48))(v6, 1, v7);
    v12 = v0[58];
    if (v11)
    {
      sub_1D87A14E4(v12, &qword_1ECA640E8);
    }

    else
    {
      v13 = v0[56];
      v14 = v0[54];
      v15 = v0[58];
      sub_1D885E420(v12, v13, type metadata accessor for BundleSelector.Output);
      sub_1D87A14E4(v15, &qword_1ECA640E8);
      LODWORD(v15) = *(v13 + *(v14 + 20) + 40);
      sub_1D885E3C0(v13, type metadata accessor for BundleSelector.Output);
      if (v15 == 1)
      {
        if (qword_1EE0E43B8 != -1)
        {
          swift_once();
        }

        v16 = v0[84];
        v17 = v0[53];
        v19 = v0[39];
        v18 = v0[40];
        v20 = sub_1D8B151E0();
        __swift_project_value_buffer(v20, qword_1EE0E43C0);
        sub_1D885E420(v19, v17, type metadata accessor for ActionPin);
        sub_1D885E420(v18, v16, type metadata accessor for ActionPin.Pill);
        v21 = sub_1D8B151C0();
        v22 = sub_1D8B16230();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = v0[86];
          v24 = v0[84];
          v25 = v0[53];
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v226[0] = v27;
          *v26 = 136315394;
          v28 = ActionPin.description.getter();
          v30 = v29;
          sub_1D885E3C0(v25, type metadata accessor for ActionPin);
          v31 = sub_1D89AC714(v28, v30, v226);

          *(v26 + 4) = v31;
          *(v26 + 12) = 2080;
          sub_1D885E420(v24, v23, type metadata accessor for ActionPin.Pill);
          v32 = sub_1D8B159E0();
          v34 = v33;
          sub_1D885E3C0(v24, type metadata accessor for ActionPin.Pill);
          v35 = sub_1D89AC714(v32, v34, v226);

          *(v26 + 14) = v35;
          _os_log_impl(&dword_1D8783000, v21, v22, "high resolution still is already available, so no need to wait for pin: %s  pill: %s", v26, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA721330](v27, -1, -1);
          MEMORY[0x1DA721330](v26, -1, -1);
        }

        else
        {
          v84 = v0[84];
          v85 = v0[53];

          sub_1D885E3C0(v84, type metadata accessor for ActionPin.Pill);
          sub_1D885E3C0(v85, type metadata accessor for ActionPin);
        }

        goto LABEL_37;
      }
    }

    if (qword_1EE0E43B8 != -1)
    {
      swift_once();
    }

    v36 = v0[83];
    v37 = v0[52];
    v39 = v0[39];
    v38 = v0[40];
    v40 = sub_1D8B151E0();
    v0[92] = __swift_project_value_buffer(v40, qword_1EE0E43C0);
    sub_1D885E420(v39, v37, type metadata accessor for ActionPin);
    sub_1D885E420(v38, v36, type metadata accessor for ActionPin.Pill);
    v41 = sub_1D8B151C0();
    v42 = sub_1D8B16230();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v0[86];
      v44 = v0[83];
      v45 = v0[52];
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v226[0] = v47;
      *v46 = 136315394;
      v48 = ActionPin.description.getter();
      v50 = v49;
      sub_1D885E3C0(v45, type metadata accessor for ActionPin);
      v51 = sub_1D89AC714(v48, v50, v226);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2080;
      sub_1D885E420(v44, v43, type metadata accessor for ActionPin.Pill);
      v52 = sub_1D8B159E0();
      v54 = v53;
      sub_1D885E3C0(v44, type metadata accessor for ActionPin.Pill);
      v55 = sub_1D89AC714(v52, v54, v226);

      *(v46 + 14) = v55;
      _os_log_impl(&dword_1D8783000, v41, v42, "waiting for high resolution still for pin: %s  pill: %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v47, -1, -1);
      MEMORY[0x1DA721330](v46, -1, -1);
    }

    else
    {
      v56 = v0[83];
      v57 = v0[52];

      sub_1D885E3C0(v56, type metadata accessor for ActionPin.Pill);
      sub_1D885E3C0(v57, type metadata accessor for ActionPin);
    }

    v0[93] = *(v0[41] + 144);
    v58 = sub_1D8826C4C;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload != 4)
    {
      goto LABEL_38;
    }
  }

  else
  {
    sub_1D885E3C0(v0[90], type metadata accessor for BuiltInAction);
  }

  v66 = v0[73];
  v67 = v0[72];
  v68 = *(v66 + 48);
  if (v68(v0[38], 1, v67) == 1)
  {
    if (qword_1EE0E43B8 != -1)
    {
      swift_once();
    }

    v69 = v0[87];
    v70 = v0[40];
    v71 = sub_1D8B151E0();
    __swift_project_value_buffer(v71, qword_1EE0E43C0);
    sub_1D885E420(v70, v69, type metadata accessor for ActionPin.Pill);
    v72 = sub_1D8B151C0();
    v73 = sub_1D8B16230();
    v74 = os_log_type_enabled(v72, v73);
    v75 = v0[87];
    if (v74)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v226[0] = v77;
      *v76 = 136315138;
      v78 = *v75;
      v79 = v75[1];

      sub_1D885E3C0(v75, type metadata accessor for ActionPin.Pill);
      v80 = sub_1D89AC714(v78, v79, v226);

      *(v76 + 4) = v80;
      _os_log_impl(&dword_1D8783000, v72, v73, "failed to find an underlying prediction that has an action with ID %s)", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x1DA721330](v77, -1, -1);
      MEMORY[0x1DA721330](v76, -1, -1);
    }

    else
    {

      sub_1D885E3C0(v75, type metadata accessor for ActionPin.Pill);
    }

    v98 = sub_1D8B151C0();
    v99 = sub_1D8B16230();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_1D8783000, v98, v99, "falling back to cached bundle", v100, 2u);
      MEMORY[0x1DA721330](v100, -1, -1);
    }

    v101 = v0[72];
    v102 = v0[71];
    v104 = v0[40];
    v103 = v0[41];

    v105 = (v103 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_actionToPredictionResultMap);
    swift_beginAccess();
    v106 = *v105;
    *(swift_task_alloc() + 16) = v104;

    sub_1D87EDC00(sub_1D8864ED0, v106, v102);

    v107 = v68(v102, 1, v101);
    v108 = v0[71];
    v224 = v105;
    if (v107 == 1)
    {
      v109 = v0[85];
      v110 = v0[40];
      sub_1D87A14E4(v108, &qword_1ECA64270);
      sub_1D885E420(v110, v109, type metadata accessor for ActionPin.Pill);
      v111 = sub_1D8B151C0();
      v112 = sub_1D8B16210();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = v0[86];
        v114 = v0[85];
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v226[0] = v116;
        *v115 = 136315138;
        sub_1D885E420(v114, v113, type metadata accessor for ActionPin.Pill);
        v117 = sub_1D8B159E0();
        v119 = v118;
        sub_1D885E3C0(v114, type metadata accessor for ActionPin.Pill);
        v120 = sub_1D89AC714(v117, v119, v226);

        *(v115 + 4) = v120;
        _os_log_impl(&dword_1D8783000, v111, v112, "Failed to find matching action for %s", v115, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v116);
        MEMORY[0x1DA721330](v116, -1, -1);
        MEMORY[0x1DA721330](v115, -1, -1);
      }

      else
      {
        v185 = v0[85];

        sub_1D885E3C0(v185, type metadata accessor for ActionPin.Pill);
      }

      v0[34] = 0xD00000000000001ELL;
      v0[35] = 0x80000001D8B426C0;
      sub_1D8864E7C();
      swift_willThrowTypedImpl();
      v223 = v0[42];
      *v105 = MEMORY[0x1E69E7CC8];

      *v223 = 0xD00000000000001ELL;
      v223[1] = 0x80000001D8B426C0;
      v97 = v0[1];
      goto LABEL_41;
    }

    sub_1D885E538(v108, v0[76], type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    v121 = *v105;
    if (*(*v105 + 16))
    {
      v122 = v0[76];

      v123 = sub_1D87EFCC8(v122);
      if (v124)
      {
        v125 = v0[70];
        v126 = v0[69];
        sub_1D885E420(*(v121 + 56) + *(v0[67] + 72) * v123, v125, type metadata accessor for ActionPredictor.BundleActionPredictionResult);

        sub_1D885E420(v125, v126, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        v127 = sub_1D8B151C0();
        v128 = sub_1D8B16230();
        v129 = os_log_type_enabled(v127, v128);
        v130 = v0[69];
        if (v129)
        {
          v131 = v0[61];
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          v226[0] = v133;
          *v132 = 136315138;
          sub_1D885E420(v130, v131, type metadata accessor for CVBundle.BundleType);
          v134 = swift_getEnumCaseMultiPayload();
          v136 = v0[63];
          v135 = v0[64];
          v137 = v0[61];
          v138 = v0[62];
          v222 = v128;
          v221 = v133;
          if (v134 == 1)
          {
            v139 = *(v136 + 32);
            v139(v135, v137, v138);
          }

          else
          {
            v186 = v0[59];
            sub_1D885E538(v137, v186, type metadata accessor for CVTrackSnapshot);
            (*(v136 + 16))(v135, v186, v138);
            sub_1D885E3C0(v186, type metadata accessor for CVTrackSnapshot);
            v139 = *(v136 + 32);
          }

          v187 = v0[69];
          v188 = v0[65];
          v189 = v0[63];
          v190 = v0[62];
          v139(v188, v0[64], v190);
          sub_1D885E288(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
          v191 = sub_1D8B16B50();
          v193 = v192;
          (*(v189 + 8))(v188, v190);
          sub_1D885E3C0(v187, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          v194 = sub_1D89AC714(v191, v193, v226);

          *(v132 + 4) = v194;
          _os_log_impl(&dword_1D8783000, v127, v222, "falling back to previous prediction results: %s", v132, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v221);
          MEMORY[0x1DA721330](v221, -1, -1);
          MEMORY[0x1DA721330](v132, -1, -1);
        }

        else
        {

          sub_1D885E3C0(v130, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        }

        v195 = v0[76];
        v196 = v0[74];
        sub_1D885E420(v195, v0[75], type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        sub_1D885E420(v195, v196, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        v197 = sub_1D8B151C0();
        v198 = sub_1D8B16230();
        if (os_log_type_enabled(v197, v198))
        {
          v199 = v0[86];
          v200 = v0[75];
          v201 = v0[74];
          v202 = swift_slowAlloc();
          v225 = swift_slowAlloc();
          v226[0] = v225;
          *v202 = 136315394;
          sub_1D88353FC(v199);
          sub_1D885E3C0(v200, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
          v203 = v199[2];
          v204 = v199[3];

          sub_1D885E3C0(v199, type metadata accessor for ActionPin.Pill);
          v205 = sub_1D89AC714(v203, v204, v226);

          *(v202 + 4) = v205;
          *(v202 + 12) = 2080;
          sub_1D88353FC(v199);
          sub_1D885E3C0(v201, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
          v206 = *v199;
          v207 = v199[1];

          sub_1D885E3C0(v199, type metadata accessor for ActionPin.Pill);
          v208 = sub_1D89AC714(v206, v207, v226);

          *(v202 + 14) = v208;
          _os_log_impl(&dword_1D8783000, v197, v198, "fallback action: %s (ID: %s", v202, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA721330](v225, -1, -1);
          MEMORY[0x1DA721330](v202, -1, -1);
        }

        else
        {
          v209 = v0[75];
          v210 = v0[74];

          sub_1D885E3C0(v210, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
          sub_1D885E3C0(v209, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        }

        v211 = v0[76];
        v212 = v0[73];
        v213 = v0[72];
        v214 = v0[67];
        v215 = v0[66];
        v217 = v0[36];
        v216 = v0[37];
        sub_1D885E538(v0[70], v217, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        (*(v214 + 56))(v217, 0, 1, v215);
        sub_1D885E538(v211, v216, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        (*(v212 + 56))(v216, 0, 1, v213);
        v83 = v224;
        goto LABEL_40;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_77:
    swift_once();
LABEL_57:
    v143 = v0[81];
    v144 = v0[50];
    v146 = v0[39];
    v145 = v0[40];
    v147 = sub_1D8B151E0();
    __swift_project_value_buffer(v147, qword_1EE0E43C0);
    sub_1D885E420(v146, v144, type metadata accessor for ActionPin);
    sub_1D885E420(v145, v143, type metadata accessor for ActionPin.Pill);
    v148 = sub_1D8B151C0();
    v149 = sub_1D8B16230();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = v0[86];
      v151 = v0[81];
      v152 = v0[50];
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      v226[0] = v154;
      *v153 = 136315394;
      v155 = ActionPin.description.getter();
      v157 = v156;
      sub_1D885E3C0(v152, type metadata accessor for ActionPin);
      v158 = sub_1D89AC714(v155, v157, v226);

      *(v153 + 4) = v158;
      *(v153 + 12) = 2080;
      sub_1D885E420(v151, v150, type metadata accessor for ActionPin.Pill);
      v159 = sub_1D8B159E0();
      v161 = v160;
      sub_1D885E3C0(v151, type metadata accessor for ActionPin.Pill);
      v162 = sub_1D89AC714(v159, v161, v226);

      *(v153 + 14) = v162;
      _os_log_impl(&dword_1D8783000, v148, v149, "high resolution still is already available, so no need to wait for pin: %s  pill: %s", v153, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v154, -1, -1);
      MEMORY[0x1DA721330](v153, -1, -1);
    }

    else
    {
      v218 = v0[81];
      v219 = v0[50];

      sub_1D885E3C0(v218, type metadata accessor for ActionPin.Pill);
      sub_1D885E3C0(v219, type metadata accessor for ActionPin);
    }

LABEL_37:
    v86 = v0[73];
    v87 = v0[72];
    v88 = v0[41];
    v89 = v0[37];
    (*(v0[67] + 56))(v0[36], 1, 1, v0[66]);
    (*(v86 + 56))(v89, 1, 1, v87);
    v83 = (v88 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_actionToPredictionResultMap);
    goto LABEL_39;
  }

  v81 = v0[41];
  v82 = v0[37];
  (*(v0[67] + 56))(v0[36], 1, 1, v0[66]);
  (*(v66 + 56))(v82, 1, 1, v67);
  v83 = (v81 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_actionToPredictionResultMap);
LABEL_39:
  swift_beginAccess();
LABEL_40:
  *v83 = MEMORY[0x1E69E7CC8];

  v97 = v0[1];
LABEL_41:

  return v97();
}

uint64_t sub_1D8826C4C()
{
  v1 = *(v0 + 744);
  v2 = swift_task_alloc();
  *(v0 + 752) = v2;
  v3 = *(v0 + 312);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 760) = v4;
  *v4 = v0;
  v4[1] = sub_1D8826D54;
  v5 = *(v0 + 368);
  v6 = *(v0 + 344);

  return MEMORY[0x1EEE6DDE0](v5, 0, 0, 0x726F662874696177, 0xEF293A6C6C69703ALL, sub_1D8864E70, v2, v6);
}

uint64_t sub_1D8826D54()
{
  v1 = *(*v0 + 328);

  return MEMORY[0x1EEE6DFA0](sub_1D8826E80, v1, 0);
}

uint64_t sub_1D8826E80()
{
  v28 = v0;
  v1 = v0[82];
  v2 = v0[40];
  sub_1D885E420(v0[39], v0[51], type metadata accessor for ActionPin);
  sub_1D885E420(v2, v1, type metadata accessor for ActionPin.Pill);
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16230();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[86];
    v6 = v0[82];
    v7 = v0[51];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27[0] = v9;
    *v8 = 136315394;
    v10 = ActionPin.description.getter();
    v12 = v11;
    sub_1D885E3C0(v7, type metadata accessor for ActionPin);
    v13 = sub_1D89AC714(v10, v12, v27);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    sub_1D885E420(v6, v5, type metadata accessor for ActionPin.Pill);
    v14 = sub_1D8B159E0();
    v16 = v15;
    sub_1D885E3C0(v6, type metadata accessor for ActionPin.Pill);
    v17 = sub_1D89AC714(v14, v16, v27);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1D8783000, v3, v4, "finished waiting for high resolution still for pin: %s  pill: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v9, -1, -1);
    MEMORY[0x1DA721330](v8, -1, -1);
  }

  else
  {
    v18 = v0[82];
    v19 = v0[51];

    sub_1D885E3C0(v18, type metadata accessor for ActionPin.Pill);
    sub_1D885E3C0(v19, type metadata accessor for ActionPin);
  }

  v20 = v0[73];
  v21 = v0[72];
  v22 = v0[41];
  v23 = v0[37];
  sub_1D881F6FC(v0[46], v0[36], &qword_1ECA640E0);
  (*(v20 + 56))(v23, 1, 1, v21);
  v24 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_actionToPredictionResultMap;
  swift_beginAccess();
  *(v22 + v24) = MEMORY[0x1E69E7CC8];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1D8827358()
{
  v1 = *(v0 + 776);
  v2 = swift_task_alloc();
  *(v0 + 784) = v2;
  v3 = *(v0 + 312);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 792) = v4;
  *v4 = v0;
  v4[1] = sub_1D8827460;
  v5 = *(v0 + 360);
  v6 = *(v0 + 344);

  return MEMORY[0x1EEE6DDE0](v5, 0, 0, 0x726F662874696177, 0xEF293A6C6C69703ALL, sub_1D8865578, v2, v6);
}

uint64_t sub_1D8827460()
{
  v1 = *(*v0 + 328);

  return MEMORY[0x1EEE6DFA0](sub_1D882758C, v1, 0);
}

uint64_t sub_1D882758C()
{
  v60 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 352);
  sub_1D87A0E38(*(v0 + 360), v3, &qword_1ECA640E0);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 624);
    v5 = *(v0 + 376);
    v7 = *(v0 + 312);
    v6 = *(v0 + 320);
    sub_1D87A14E4(*(v0 + 352), &qword_1ECA640E0);
    sub_1D885E420(v7, v5, type metadata accessor for ActionPin);
    sub_1D885E420(v6, v4, type metadata accessor for ActionPin.Pill);
    v8 = sub_1D8B151C0();
    v9 = sub_1D8B16210();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 688);
      v11 = *(v0 + 624);
      v12 = *(v0 + 376);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v59[0] = v14;
      *v13 = 136315394;
      v15 = ActionPin.description.getter();
      v17 = v16;
      sub_1D885E3C0(v12, type metadata accessor for ActionPin);
      v18 = sub_1D89AC714(v15, v17, v59);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2080;
      sub_1D885E420(v11, v10, type metadata accessor for ActionPin.Pill);
      v19 = sub_1D8B159E0();
      v21 = v20;
      sub_1D885E3C0(v11, type metadata accessor for ActionPin.Pill);
      v22 = sub_1D89AC714(v19, v21, v59);

      *(v13 + 14) = v22;
      _os_log_impl(&dword_1D8783000, v8, v9, "failed to execute action; no matching prediction result found for %s %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v14, -1, -1);
      MEMORY[0x1DA721330](v13, -1, -1);
    }

    else
    {
      v42 = *(v0 + 624);
      v43 = *(v0 + 376);

      sub_1D885E3C0(v42, type metadata accessor for ActionPin.Pill);
      sub_1D885E3C0(v43, type metadata accessor for ActionPin);
    }

    v44 = *(v0 + 360);
    v45 = *(v0 + 328);
    *(v0 + 256) = 0xD00000000000004BLL;
    *(v0 + 264) = 0x80000001D8B42670;
    sub_1D8864E7C();
    swift_willThrowTypedImpl();
    sub_1D87A14E4(v44, &qword_1ECA640E0);
    v46 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_actionToPredictionResultMap;
    swift_beginAccess();
    v58 = *(v0 + 336);
    *(v45 + v46) = MEMORY[0x1E69E7CC8];

    *v58 = 0xD00000000000004BLL;
    v58[1] = 0x80000001D8B42670;
    v47 = *(v0 + 8);
  }

  else
  {
    v23 = *(v0 + 632);
    v24 = *(v0 + 384);
    v26 = *(v0 + 312);
    v25 = *(v0 + 320);
    sub_1D885E538(*(v0 + 352), *(v0 + 544), type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    sub_1D885E420(v26, v24, type metadata accessor for ActionPin);
    sub_1D885E420(v25, v23, type metadata accessor for ActionPin.Pill);
    v27 = sub_1D8B151C0();
    v28 = sub_1D8B16230();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 688);
      v30 = *(v0 + 632);
      v31 = *(v0 + 384);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v59[0] = v33;
      *v32 = 136315394;
      v34 = ActionPin.description.getter();
      v36 = v35;
      sub_1D885E3C0(v31, type metadata accessor for ActionPin);
      v37 = sub_1D89AC714(v34, v36, v59);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      sub_1D885E420(v30, v29, type metadata accessor for ActionPin.Pill);
      v38 = sub_1D8B159E0();
      v40 = v39;
      sub_1D885E3C0(v30, type metadata accessor for ActionPin.Pill);
      v41 = sub_1D89AC714(v38, v40, v59);

      *(v32 + 14) = v41;
      _os_log_impl(&dword_1D8783000, v27, v28, "finished waiting for matching prediction result for pin: %s  pill: %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v33, -1, -1);
      MEMORY[0x1DA721330](v32, -1, -1);
    }

    else
    {
      v48 = *(v0 + 632);
      v49 = *(v0 + 384);

      sub_1D885E3C0(v48, type metadata accessor for ActionPin.Pill);
      sub_1D885E3C0(v49, type metadata accessor for ActionPin);
    }

    v50 = *(v0 + 544);
    v51 = *(v0 + 536);
    v52 = *(v0 + 528);
    v53 = *(v0 + 360);
    v54 = *(v0 + 328);
    v55 = *(v0 + 288);
    sub_1D88280A8(**(v0 + 320), *(*(v0 + 320) + 8), *(v0 + 296));
    sub_1D87A14E4(v53, &qword_1ECA640E0);
    sub_1D885E538(v50, v55, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    (*(v51 + 56))(v55, 0, 1, v52);
    v56 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_actionToPredictionResultMap;
    swift_beginAccess();
    *(v54 + v56) = MEMORY[0x1E69E7CC8];

    v47 = *(v0 + 8);
  }

  return v47();
}

uint64_t sub_1D8827FBC(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ActionPin.Pill(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D88353FC(v5);
  v7 = *v5;
  v6 = v5[1];

  sub_1D885E3C0(v5, type metadata accessor for ActionPin.Pill);
  if (v7 == *a2 && v6 == a2[1])
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D8B16BA0();
  }

  return v9 & 1;
}

uint64_t sub_1D88280A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v6 = type metadata accessor for ActionPin.Pill(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v9 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v13 = *(v3 + *(result + 20));
  v14 = *(v13 + 16);
  if (v14)
  {
    v21 = a3;
    v15 = 0;
    while (v15 < *(v13 + 16))
    {
      sub_1D885E420(v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v11, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      sub_1D88353FC(v8);
      v17 = *v8;
      v16 = v8[1];

      sub_1D885E3C0(v8, type metadata accessor for ActionPin.Pill);
      if (v17 == a1 && v16 == v23)
      {

LABEL_11:
        a3 = v21;
        sub_1D885E538(v11, v21, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        v19 = 0;
        return (*(v9 + 56))(a3, v19, 1, v22);
      }

      v18 = sub_1D8B16BA0();

      if (v18)
      {
        goto LABEL_11;
      }

      ++v15;
      result = sub_1D885E3C0(v11, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      if (v14 == v15)
      {
        v19 = 1;
        a3 = v21;
        return (*(v9 + 56))(a3, v19, 1, v22);
      }
    }

    __break(1u);
  }

  else
  {
    v19 = 1;
    return (*(v9 + 56))(a3, v19, 1, v22);
  }

  return result;
}

uint64_t sub_1D8828310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[53] = v38;
  v9[54] = v8;
  v9[51] = v36;
  v9[52] = v37;
  v9[49] = a7;
  v9[50] = a8;
  v9[47] = a5;
  v9[48] = a6;
  v9[45] = a3;
  v9[46] = a4;
  v9[43] = a1;
  v9[44] = a2;
  v12 = sub_1D8B14E50();
  v9[55] = v12;
  v9[56] = *(v12 - 8);
  v9[57] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64318);
  v9[58] = v13;
  v9[59] = *(v13 - 8);
  v9[60] = swift_task_alloc();
  v14 = type metadata accessor for ExecutionParameter();
  v9[61] = v14;
  v9[62] = *(v14 - 8);
  v9[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64320);
  v9[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  v9[65] = swift_task_alloc();
  v15 = type metadata accessor for CVBundle(0);
  v9[66] = v15;
  v16 = *(v15 - 8);
  v9[67] = v16;
  v9[68] = *(v16 + 64);
  v9[69] = swift_task_alloc();
  v9[70] = swift_task_alloc();
  v9[71] = type metadata accessor for ActionExecutionState(0);
  v9[72] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64328);
  v9[73] = v17;
  v9[74] = *(v17 - 8);
  v9[75] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64330);
  v9[76] = v18;
  v9[77] = *(v18 - 8);
  v9[78] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64338);
  v9[79] = v19;
  v9[80] = *(v19 - 8);
  v9[81] = swift_task_alloc();
  v9[82] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  v9[83] = swift_task_alloc();
  v9[84] = swift_task_alloc();
  v9[85] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64340);
  v9[86] = swift_task_alloc();
  v9[87] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  v9[88] = swift_task_alloc();
  v9[89] = swift_task_alloc();
  v9[90] = swift_task_alloc();
  v20 = type metadata accessor for BuiltInActionExecutor.Request();
  v9[91] = v20;
  v9[92] = *(v20 - 8);
  v9[93] = swift_task_alloc();
  v9[94] = swift_task_alloc();
  v9[95] = swift_task_alloc();
  v9[96] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64348);
  v9[97] = swift_task_alloc();
  v9[98] = swift_task_alloc();
  v9[99] = swift_task_alloc();
  type metadata accessor for ActionPin.Pill.Source(0);
  v9[100] = swift_task_alloc();
  v21 = sub_1D8B15030();
  v9[101] = v21;
  v9[102] = *(v21 - 8);
  v9[103] = swift_task_alloc();
  v9[104] = swift_task_alloc();
  v22 = sub_1D8B14E80();
  v9[105] = v22;
  v23 = *(v22 - 8);
  v9[106] = v23;
  v9[107] = *(v23 + 64);
  v9[108] = swift_task_alloc();
  v9[109] = swift_task_alloc();
  v9[110] = swift_task_alloc();
  v9[111] = swift_task_alloc();
  v9[112] = swift_task_alloc();
  v24 = type metadata accessor for BuiltInAction(0);
  v9[113] = v24;
  v9[114] = *(v24 - 8);
  v9[115] = swift_task_alloc();
  v9[116] = swift_task_alloc();
  v9[117] = swift_task_alloc();
  v9[118] = swift_task_alloc();
  v9[119] = swift_task_alloc();
  v9[120] = swift_task_alloc();
  v9[121] = swift_task_alloc();
  v9[122] = *(type metadata accessor for ActionPin.PermanentPill(0) - 8);
  v9[123] = swift_task_alloc();
  v9[124] = swift_task_alloc();
  v9[125] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641A0);
  v9[126] = swift_task_alloc();
  v25 = type metadata accessor for BundleClassification.ClassificationType(0);
  v9[127] = v25;
  v26 = *(v25 - 8);
  v9[128] = v26;
  v9[129] = *(v26 + 64);
  v9[130] = swift_task_alloc();
  v9[131] = swift_task_alloc();
  v9[132] = swift_task_alloc();
  v9[133] = *(type metadata accessor for BundleClassification(0) - 8);
  v9[134] = swift_task_alloc();
  v27 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v9[135] = v27;
  v9[136] = *(v27 - 8);
  v9[137] = swift_task_alloc();
  v9[138] = swift_task_alloc();
  v9[139] = swift_task_alloc();
  v9[140] = swift_task_alloc();
  v9[141] = swift_task_alloc();
  v9[142] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64270);
  v9[143] = swift_task_alloc();
  v9[144] = swift_task_alloc();
  v9[145] = swift_task_alloc();
  v9[146] = swift_task_alloc();
  v9[147] = swift_task_alloc();
  v9[148] = swift_task_alloc();
  v9[149] = swift_task_alloc();
  v28 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v9[150] = v28;
  v29 = *(v28 - 8);
  v9[151] = v29;
  v9[152] = *(v29 + 64);
  v9[153] = swift_task_alloc();
  v9[154] = swift_task_alloc();
  v9[155] = swift_task_alloc();
  v9[156] = swift_task_alloc();
  v9[157] = swift_task_alloc();
  v9[158] = swift_task_alloc();
  v9[159] = swift_task_alloc();
  v9[160] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E0);
  v9[161] = swift_task_alloc();
  v9[162] = swift_task_alloc();
  v9[163] = swift_task_alloc();
  v9[164] = swift_task_alloc();
  v9[165] = swift_task_alloc();
  v9[166] = swift_task_alloc();
  v9[167] = swift_task_alloc();
  v9[168] = swift_task_alloc();
  type metadata accessor for ActionPin(0);
  v9[169] = swift_task_alloc();
  v30 = type metadata accessor for BundleSelector.Output(0);
  v9[170] = v30;
  v9[171] = *(v30 - 8);
  v9[172] = swift_task_alloc();
  v9[173] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8);
  v9[174] = swift_task_alloc();
  v9[175] = swift_task_alloc();
  v31 = type metadata accessor for ActionPin.Pill(0);
  v9[176] = v31;
  v9[177] = *(v31 - 8);
  v9[178] = swift_task_alloc();
  v9[179] = swift_task_alloc();
  v9[180] = swift_task_alloc();
  v9[181] = swift_task_alloc();
  v9[182] = swift_task_alloc();
  v9[183] = swift_task_alloc();
  v9[184] = swift_task_alloc();
  v32 = sub_1D8B13240();
  v9[185] = v32;
  v33 = *(v32 - 8);
  v9[186] = v33;
  v9[187] = *(v33 + 64);
  v9[188] = swift_task_alloc();
  v9[189] = swift_task_alloc();
  v9[190] = *(a7 - 8);
  v9[191] = swift_task_alloc();
  v9[192] = swift_task_alloc();
  v9[193] = *(a6 - 8);
  v9[194] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D882910C, v8, 0);
}

uint64_t sub_1D882910C()
{
  v211 = v0;
  if (qword_1EE0E43B8 != -1)
  {
    swift_once();
  }

  v1 = v0[194];
  v2 = v0[193];
  v3 = v0[192];
  v4 = v0[190];
  v6 = v0[48];
  v5 = v0[49];
  v8 = v0[44];
  v7 = v0[45];
  v9 = sub_1D8B151E0();
  v0[195] = __swift_project_value_buffer(v9, qword_1EE0E43C0);
  (*(v2 + 16))(v1, v8, v6);
  v10 = *(v4 + 16);
  v10(v3, v7, v5);
  v11 = sub_1D8B151C0();
  v12 = sub_1D8B16230();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[194];
  v15 = v0[193];
  v16 = v0[192];
  v17 = v0[190];
  if (v13)
  {
    v18 = v0[189];
    v198 = v11;
    v200 = v10;
    v19 = v0[186];
    v191 = v0[185];
    v20 = v0[184];
    v196 = v12;
    v21 = v0[51];
    v22 = v0[48];
    v193 = v0[52];
    v194 = v0[49];
    v192 = v0[192];
    v23 = swift_slowAlloc();
    v195 = swift_slowAlloc();
    v210[0] = v195;
    *v23 = 136315394;
    (*(v21 + 8))(v22, v21);
    v24 = v22;
    v10 = v200;
    (*(v15 + 8))(v14, v24);
    sub_1D885E288(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
    v25 = sub_1D8B16B50();
    v27 = v26;
    (*(v19 + 8))(v18, v191);
    v28 = sub_1D89AC714(v25, v27, v210);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    (*(v193 + 8))(v194);
    v29 = *(v17 + 8);
    v29(v192, v194);
    v31 = *v20;
    v30 = v20[1];

    sub_1D885E3C0(v20, type metadata accessor for ActionPin.Pill);
    v32 = sub_1D89AC714(v31, v30, v210);

    *(v23 + 14) = v32;
    _os_log_impl(&dword_1D8783000, v198, v196, "executeAction(actionPin: %s, pill: %s)", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v195, -1, -1);
    MEMORY[0x1DA721330](v23, -1, -1);
  }

  else
  {
    v33 = v0[49];
    (*(v15 + 8))(v14, v0[48]);

    v29 = *(v17 + 8);
    v29(v16, v33);
  }

  v10(v0[191], v0[45], v0[49]);
  v34 = sub_1D8B151C0();
  v35 = sub_1D8B16230();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v0[191];
  if (v36)
  {
    v38 = v0[184];
    v204 = v29;
    v39 = v0[52];
    v40 = v0[49];
    v41 = swift_slowAlloc();
    v201 = swift_slowAlloc();
    v210[0] = v201;
    *v41 = 136315138;
    (*(v39 + 8))(v40, v39);
    v42 = *(v38 + 64);
    sub_1D885E3C0(v38, type metadata accessor for ActionPin.Pill);
    v0[42] = v42;
    v43 = sub_1D8B159E0();
    v45 = v44;
    v204(v37, v40);
    v46 = sub_1D89AC714(v43, v45, v210);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_1D8783000, v34, v35, "pill flags: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v201);
    MEMORY[0x1DA721330](v201, -1, -1);
    MEMORY[0x1DA721330](v41, -1, -1);
  }

  else
  {
    v47 = v0[49];

    v29(v37, v47);
  }

  v48 = v0[175];
  v49 = v0[171];
  v50 = v0[170];
  v51 = v0[54];
  v52 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_latestBundleSelectorOutput;
  v0[196] = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_latestBundleSelectorOutput;
  swift_beginAccess();
  sub_1D87A0E38(v51 + v52, v48, &qword_1ECA640E8);
  v53 = *(v49 + 48);
  v0[197] = v53;
  v0[198] = (v49 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v54 = v53(v48, 1, v50);
  v55 = v0[175];
  if (v54)
  {
    sub_1D87A14E4(v55, &qword_1ECA640E8);
  }

  else
  {
    v56 = v0[173];
    v57 = v0[170];
    v58 = v0[175];
    sub_1D885E420(v55, v56, type metadata accessor for BundleSelector.Output);
    sub_1D87A14E4(v58, &qword_1ECA640E8);
    LOBYTE(v58) = *(v56 + *(v57 + 20) + 40);
    sub_1D885E3C0(v56, type metadata accessor for BundleSelector.Output);
    if (v58)
    {
      goto LABEL_17;
    }
  }

  v59 = v0[54];
  if (*(v59 + 136))
  {
    v60 = v0[82];
    v61 = v0[79];
    v62 = v0[78];
    v63 = v0[77];
    v64 = v0[76];
    v65 = v0[74];
    v205 = v0[73];
    v208 = v0[80];
    v66 = v0[72];
    v67 = v0[43];
    v202 = v0[75];
    v67[3] = v0[58];
    v67[4] = sub_1D881CF20(&qword_1ECA64350, &qword_1ECA64318);
    __swift_allocate_boxed_opaque_existential_1(v67);
    (*(v63 + 104))(v62, *MEMORY[0x1E69E8650], v64);
    sub_1D8B15EB0();
    (*(v63 + 8))(v62, v64);
    *v66 = 0xD000000000000024;
    v66[1] = 0x80000001D8B428A0;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();
    (*(v65 + 8))(v202, v205);
    sub_1D8B15EF0();
    (*(v208 + 8))(v60, v61);

    v68 = v0[1];

    return v68();
  }

  *(v59 + 136) = 0;
LABEL_17:
  v70 = v0[183];
  v71 = v0[169];
  v72 = v0[167];
  v73 = v0[151];
  v206 = v0[150];
  v74 = v0[54];
  v75 = v0[52];
  v76 = v0[49];
  v77 = sub_1D87EED18(v0[48], v0[51], v71);
  (*(v75 + 8))(v76, v75, v77);
  v78 = *(v74 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_predictionResults);
  v79 = swift_task_alloc();
  *(v79 + 16) = v71;
  *(v79 + 24) = v70;

  sub_1D88246E4(sub_1D88650F4, v78, v72);

  v80 = *(v73 + 48);
  v0[199] = v80;
  v0[200] = (v73 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v80(v72, 1, v206) == 1)
  {
    v81 = v0[166];
    v82 = v0[150];
    v83 = v0[54];
    sub_1D87A14E4(v0[167], &qword_1ECA640E0);
    v84 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_selection;
    swift_beginAccess();
    sub_1D87A0E38(v83 + v84, v81, &qword_1ECA640E0);
    if (v80(v81, 1, v82) == 1)
    {
      sub_1D87A14E4(v0[166], &qword_1ECA640E0);
      v85 = 1;
    }

    else
    {
      v124 = v0[183];
      v125 = v0[169];
      sub_1D885E538(v0[166], v0[159], type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      if (sub_1D8824444(v125, v124))
      {
        sub_1D885E538(v0[159], v0[168], type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        v85 = 0;
      }

      else
      {
        sub_1D885E3C0(v0[159], type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        v85 = 1;
      }
    }
  }

  else
  {
    v86 = v0[168];
    v87 = v0[160];
    sub_1D885E538(v0[167], v87, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    sub_1D885E538(v87, v86, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    v85 = 0;
  }

  v88 = v0[168];
  v89 = v0[150];
  v90 = *(v0[151] + 56);
  v0[201] = v90;
  v90(v88, v85, 1, v89);
  if (v80(v88, 1, v89))
  {
    (*(v0[136] + 56))(v0[149], 1, 1, v0[135]);
  }

  else
  {
    v91 = v0[183];
    v92 = v0[158];
    v93 = v0[149];
    sub_1D885E420(v0[168], v92, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    sub_1D88280A8(*v91, v91[1], v93);
    sub_1D885E3C0(v92, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
  }

  sub_1D885E420(v0[183], v0[182], type metadata accessor for ActionPin.Pill);
  v94 = sub_1D8B151C0();
  v95 = sub_1D8B16230();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = v0[184];
    v97 = v0[182];
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v210[0] = v99;
    *v98 = 136315138;
    sub_1D885E420(v97, v96, type metadata accessor for ActionPin.Pill);
    v100 = sub_1D8B159E0();
    v102 = v101;
    sub_1D885E3C0(v97, type metadata accessor for ActionPin.Pill);
    v103 = sub_1D89AC714(v100, v102, v210);

    *(v98 + 4) = v103;
    _os_log_impl(&dword_1D8783000, v94, v95, "pill: %s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v99);
    MEMORY[0x1DA721330](v99, -1, -1);
    MEMORY[0x1DA721330](v98, -1, -1);
  }

  else
  {
    v104 = v0[182];

    sub_1D885E3C0(v104, type metadata accessor for ActionPin.Pill);
  }

  v105 = v0[165];
  v106 = v0[150];
  sub_1D87A0E38(v0[168], v105, &qword_1ECA640E0);
  v107 = v80(v105, 1, v106);
  v108 = v0[165];
  if (v107 == 1)
  {
    sub_1D87A14E4(v108, &qword_1ECA640E0);
    v109 = sub_1D8B151C0();
    v110 = sub_1D8B16230();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_1D8783000, v109, v110, "result: nil", v111, 2u);
      MEMORY[0x1DA721330](v111, -1, -1);
    }
  }

  else
  {
    sub_1D885E538(v108, v0[157], type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    v112 = sub_1D8834AF4();
    v113 = *(v112 + 16);
    if (v113)
    {
      v114 = v0[177];
      v115 = v0[136];
      v210[0] = MEMORY[0x1E69E7CC0];
      sub_1D87F40B8(0, v113, 0);
      v116 = v210[0];
      v117 = v112 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
      v118 = *(v115 + 72);
      do
      {
        v119 = v0[181];
        v120 = v0[142];
        sub_1D885E420(v117, v120, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        sub_1D88353FC(v119);
        sub_1D885E3C0(v120, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        v210[0] = v116;
        v122 = *(v116 + 16);
        v121 = *(v116 + 24);
        if (v122 >= v121 >> 1)
        {
          sub_1D87F40B8(v121 > 1, v122 + 1, 1);
          v116 = v210[0];
        }

        v123 = v0[181];
        *(v116 + 16) = v122 + 1;
        sub_1D885E538(v123, v116 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v122, type metadata accessor for ActionPin.Pill);
        v117 += v118;
        --v113;
      }

      while (v113);
    }

    else
    {

      v116 = MEMORY[0x1E69E7CC0];
    }

    sub_1D885E420(v0[157], v0[156], type metadata accessor for ActionPredictor.BundleActionPredictionResult);

    v126 = sub_1D8B151C0();
    v127 = sub_1D8B16230();

    if (os_log_type_enabled(v126, v127))
    {
      v203 = v127;
      v128 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      v209 = v199;
      v207 = v128;
      *v128 = 136315394;
      v129 = CVBundle.classifications.getter();
      v130 = v129[2];
      if (v130)
      {
        v197 = v126;
        v131 = v0[133];
        v210[0] = MEMORY[0x1E69E7CC0];
        sub_1D87F3F54(0, v130, 0);
        v132 = v210[0];
        v133 = v129 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
        v134 = *(v131 + 72);
        do
        {
          v135 = v0[134];
          v136 = v0[132];
          sub_1D885E420(v133, v135, type metadata accessor for BundleClassification);
          sub_1D885E420(v135, v136, type metadata accessor for BundleClassification.ClassificationType);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 4)
          {
            if (EnumCaseMultiPayload <= 6)
            {
              if (EnumCaseMultiPayload == 5)
              {
                sub_1D885E3C0(v0[132], type metadata accessor for BundleClassification.ClassificationType);
                v139 = 0x6974634174786574;
                v138 = 0xEB00000000736E6FLL;
              }

              else
              {
                v138 = 0xE500000000000000;
                v139 = 0x746E657665;
              }
            }

            else if (EnumCaseMultiPayload == 7)
            {
              v139 = 0x756F6C4164616572;
              v138 = 0xE900000000000064;
            }

            else
            {
              v138 = 0xE900000000000065;
              if (EnumCaseMultiPayload == 8)
              {
                v139 = 0x74616C736E617274;
              }

              else
              {
                v139 = 0x7A6972616D6D7573;
              }
            }
          }

          else if (EnumCaseMultiPayload <= 1)
          {
            if (EnumCaseMultiPayload)
            {
              sub_1D885E3C0(v0[132], type metadata accessor for BundleClassification.ClassificationType);
              v138 = 0xE800000000000000;
              v139 = 0x796669746E656469;
            }

            else
            {
              sub_1D885E3C0(v0[132], type metadata accessor for BundleClassification.ClassificationType);
              v138 = 0xE400000000000000;
              v139 = 1936744813;
            }
          }

          else if (EnumCaseMultiPayload == 2)
          {
            sub_1D885E3C0(v0[132], type metadata accessor for BundleClassification.ClassificationType);
            v138 = 0xE700000000000000;
            v139 = 0x65646F63726162;
          }

          else if (EnumCaseMultiPayload == 3)
          {
            v138 = 0xE600000000000000;
            v139 = 0x686372616573;
          }

          else
          {
            sub_1D885E3C0(v0[132], type metadata accessor for BundleClassification.ClassificationType);
            v138 = 0xE400000000000000;
            v139 = 1667459446;
          }

          sub_1D885E3C0(v0[134], type metadata accessor for BundleClassification);
          v210[0] = v132;
          v141 = *(v132 + 16);
          v140 = *(v132 + 24);
          if (v141 >= v140 >> 1)
          {
            sub_1D87F3F54((v140 > 1), v141 + 1, 1);
            v132 = v210[0];
          }

          *(v132 + 16) = v141 + 1;
          v142 = v132 + 16 * v141;
          *(v142 + 32) = v139;
          *(v142 + 40) = v138;
          v133 += v134;
          --v130;
        }

        while (v130);

        v126 = v197;
      }

      else
      {

        v132 = MEMORY[0x1E69E7CC0];
      }

      v145 = v0[176];
      v146 = v0[157];
      v147 = v0[156];
      v148 = MEMORY[0x1DA71F1E0](v132, MEMORY[0x1E69E6158]);
      v150 = v149;

      sub_1D885E3C0(v147, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v151 = sub_1D89AC714(v148, v150, &v209);

      *(v207 + 1) = v151;
      *(v207 + 6) = 2080;
      v152 = MEMORY[0x1DA71F1E0](v116, v145);
      v154 = v153;

      v155 = sub_1D89AC714(v152, v154, &v209);

      *(v207 + 14) = v155;
      _os_log_impl(&dword_1D8783000, v126, v203, "result: %s  %s", v207, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v199, -1, -1);
      MEMORY[0x1DA721330](v207, -1, -1);

      sub_1D885E3C0(v146, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    }

    else
    {
      v143 = v0[157];
      v144 = v0[156];

      sub_1D885E3C0(v144, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      sub_1D885E3C0(v143, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    }
  }

  v156 = sub_1D8B151C0();
  v157 = sub_1D8B16230();
  if (os_log_type_enabled(v156, v157))
  {
    v158 = v0[149];
    v159 = v0[136];
    v160 = v0[135];
    v161 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    v210[0] = v162;
    *v161 = 136315138;
    swift_beginAccess();
    v163 = 1;
    if (!(*(v159 + 48))(v158, 1, v160))
    {
      v164 = v0[142];
      v165 = v0[126];
      sub_1D885E420(v0[149], v164, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      sub_1D88353FC(v165);
      sub_1D885E3C0(v164, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      v163 = 0;
    }

    (*(v0[177] + 56))(v0[126], v163, 1, v0[176]);
    v166 = sub_1D8B159E0();
    v168 = sub_1D89AC714(v166, v167, v210);

    *(v161 + 4) = v168;
    _os_log_impl(&dword_1D8783000, v156, v157, "action: %s", v161, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v162);
    MEMORY[0x1DA721330](v162, -1, -1);
    MEMORY[0x1DA721330](v161, -1, -1);
  }

  sub_1D885E420(v0[183], v0[180], type metadata accessor for ActionPin.Pill);
  v169 = sub_1D8B151C0();
  v170 = sub_1D8B16230();
  v171 = os_log_type_enabled(v169, v170);
  v172 = v0[180];
  if (v171)
  {
    v173 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v210[0] = v174;
    *v173 = 136315138;
    v175 = sub_1D87E3F88();
    v176 = 0xE900000000000064;
    v177 = 0x656B636F6C626E75;
    v178 = 0x80000001D8B41FD0;
    v179 = 0xD00000000000002ELL;
    if (v175 != 2)
    {
      v179 = 0xD000000000000019;
      v178 = 0x80000001D8B41FB0;
    }

    if (v175)
    {
      v177 = 0xD00000000000001BLL;
      v176 = 0x80000001D8B42000;
    }

    if (v175 <= 1u)
    {
      v180 = v177;
    }

    else
    {
      v180 = v179;
    }

    if (v175 <= 1u)
    {
      v181 = v176;
    }

    else
    {
      v181 = v178;
    }

    sub_1D885E3C0(v0[180], type metadata accessor for ActionPin.Pill);
    v182 = sub_1D89AC714(v180, v181, v210);

    *(v173 + 4) = v182;
    _os_log_impl(&dword_1D8783000, v169, v170, "high resolution still policy: %s", v173, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v174);
    MEMORY[0x1DA721330](v174, -1, -1);
    MEMORY[0x1DA721330](v173, -1, -1);
  }

  else
  {

    sub_1D885E3C0(v172, type metadata accessor for ActionPin.Pill);
  }

  v183 = v0[149];
  v184 = v0[147];
  swift_beginAccess();
  sub_1D87A0E38(v183, v184, &qword_1ECA64270);
  v185 = swift_task_alloc();
  v0[202] = v185;
  *v185 = v0;
  v185[1] = sub_1D882AD90;
  v186 = v0[183];
  v187 = v0[169];
  v188 = v0[164];
  v189 = v0[148];
  v190 = v0[147];

  return sub_1D8824A48(v188, v189, v190, v187, v186, (v0 + 32));
}

uint64_t sub_1D882AD90()
{
  v2 = *v1;
  *(*v1 + 1624) = v0;

  if (v0)
  {
    v3 = v2[147];
    v4 = v2[54];
    v5 = v2[33];
    v2[204] = v2[32];
    v2[205] = v5;
    sub_1D87A14E4(v3, &qword_1ECA64270);
    v6 = sub_1D882AEE8;
  }

  else
  {
    v4 = v2[54];
    sub_1D87A14E4(v2[147], &qword_1ECA64270);
    v6 = sub_1D882B63C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, 0);
}

uint64_t sub_1D882AEE8()
{
  v12 = v0[204];
  v13 = v0[205];
  v17 = v0[169];
  v18 = v0[183];
  v19 = v0[149];
  v20 = v0[168];
  v1 = v0[82];
  v14 = v0[79];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[76];
  v11 = v0[75];
  v5 = v0[74];
  v15 = v0[73];
  v16 = v0[80];
  v6 = v0[72];
  v7 = v0[58];
  v8 = v0[43];
  (*(v3 + 104))(v2, *MEMORY[0x1E69E8650], v4);
  v8[3] = v7;
  v8[4] = sub_1D881CF20(&qword_1ECA64350, &qword_1ECA64318);
  __swift_allocate_boxed_opaque_existential_1(v8);
  sub_1D8B15EB0();
  (*(v3 + 8))(v2, v4);
  *v6 = v12;
  v6[1] = v13;
  swift_storeEnumTagMultiPayload();
  sub_1D8B15EE0();
  (*(v5 + 8))(v11, v15);
  sub_1D8B15EF0();
  (*(v16 + 8))(v1, v14);
  sub_1D885E3C0(v17, type metadata accessor for ActionPin);
  sub_1D885E3C0(v18, type metadata accessor for ActionPin.Pill);
  sub_1D87A14E4(v19, &qword_1ECA64270);
  sub_1D87A14E4(v20, &qword_1ECA640E0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D882B63C()
{
  v324 = v0;
  v1 = v0[199];
  v2 = v0[163];
  v3 = v0[150];
  sub_1D881F6FC(v0[164], v2, &qword_1ECA640E0);
  if (v1(v2, 1, v3) == 1)
  {
    sub_1D87A14E4(v0[163], &qword_1ECA640E0);
  }

  else
  {
    v4 = v0[201];
    v5 = v0[168];
    v6 = v0[155];
    v7 = v0[150];
    sub_1D885E538(v0[163], v6, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    sub_1D87A14E4(v5, &qword_1ECA640E0);
    sub_1D885E538(v6, v5, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    v4(v5, 0, 1, v7);
  }

  v8 = v0[146];
  v9 = v0[136];
  v10 = v0[135];
  sub_1D881F6FC(v0[148], v8, &qword_1ECA64270);
  v11 = *(v9 + 48);
  if (v11(v8, 1, v10) == 1)
  {
    sub_1D87A14E4(v0[146], &qword_1ECA64270);
  }

  else
  {
    v12 = v0[149];
    v13 = v0[145];
    v14 = v0[141];
    v15 = v0[136];
    v16 = v0[135];
    sub_1D885E538(v0[146], v14, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    sub_1D885E538(v14, v13, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    (*(v15 + 56))(v13, 0, 1, v16);
    sub_1D87B6EFC(v13, v12, &qword_1ECA64270);
  }

  v17 = v0[197];
  v18 = v0[174];
  v19 = v0[170];
  sub_1D87A0E38(v0[54] + v0[196], v18, &qword_1ECA640E8);
  if (v17(v18, 1, v19) == 1)
  {
    v303 = v0[169];
    v309 = v0[183];
    v315 = v0[149];
    v317 = v0[168];
    v20 = v0[82];
    v21 = v0[78];
    v22 = v0[77];
    v23 = v0[76];
    v275 = v0[75];
    v282 = v0[79];
    v24 = v0[74];
    v289 = v0[73];
    v296 = v0[80];
    v25 = v0[72];
    v26 = v0[58];
    v27 = v0[43];
    sub_1D87A14E4(v0[174], &qword_1ECA640E8);
    v27[3] = v26;
    v27[4] = sub_1D881CF20(&qword_1ECA64350, &qword_1ECA64318);
    __swift_allocate_boxed_opaque_existential_1(v27);
    (*(v22 + 104))(v21, *MEMORY[0x1E69E8650], v23);
    sub_1D8B15EB0();
    (*(v22 + 8))(v21, v23);
    *v25 = 0xD000000000000038;
    v25[1] = 0x80000001D8B42700;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();
    (*(v24 + 8))(v275, v289);
    sub_1D8B15EF0();
    (*(v296 + 8))(v20, v282);
LABEL_9:
    sub_1D885E3C0(v303, type metadata accessor for ActionPin);
    v28 = v309;
LABEL_10:
    sub_1D885E3C0(v28, type metadata accessor for ActionPin.Pill);
LABEL_11:
    sub_1D87A14E4(v315, &qword_1ECA64270);
    sub_1D87A14E4(v317, &qword_1ECA640E0);

    v29 = v0[1];

    return v29();
  }

  sub_1D885E538(v0[174], v0[172], type metadata accessor for BundleSelector.Output);
  if (qword_1EE0E3EA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v31 = off_1EE0E3EA8;
  v32 = *(off_1EE0E3EA8 + 2);
  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    v310 = v11;
    v318 = v0[179];
    v34 = v0[122];
    v322 = MEMORY[0x1E69E7CC0];

    sub_1D87F3F54(0, v32, 0);
    v33 = v322;
    v35 = v31 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v36 = *(v34 + 72);
    do
    {
      v37 = v0[124];
      v38 = v0[123];
      sub_1D885E420(v35, v37, type metadata accessor for ActionPin.PermanentPill);
      sub_1D885E420(v37, v38, type metadata accessor for ActionPin.PermanentPill);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
      if (!(*(*(v39 - 8) + 48))(v38, 6, v39))
      {
        v40 = v0[123];
        v41 = v0[121];
        v42 = *(v39 + 48);
        v43 = *(v40 + v42);
        sub_1D881F6FC(v40, v41, &qword_1ECA635B8);
        *(v41 + v42) = v43;
      }

      v44 = v0[179];
      v45 = v0[124];
      v46 = v0[121];
      swift_storeEnumTagMultiPayload();
      BuiltInAction.pill.getter(v44);
      sub_1D885E3C0(v46, type metadata accessor for BuiltInAction);
      v47 = *v44;
      v48 = *(v318 + 8);

      sub_1D885E3C0(v44, type metadata accessor for ActionPin.Pill);
      sub_1D885E3C0(v45, type metadata accessor for ActionPin.PermanentPill);
      v322 = v33;
      v50 = *(v33 + 16);
      v49 = *(v33 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1D87F3F54((v49 > 1), v50 + 1, 1);
        v33 = v322;
      }

      *(v33 + 16) = v50 + 1;
      v51 = v33 + 16 * v50;
      *(v51 + 32) = v47;
      *(v51 + 40) = v48;
      v35 += v36;
      --v32;
    }

    while (v32);

    v11 = v310;
  }

  v52 = v0[183];
  v53 = sub_1D87C4264(v33);

  LOBYTE(v52) = sub_1D89A4644(*v52, v52[1], v53);

  v54 = v0[199];
  v55 = v0[168];
  v56 = v0[150];
  if ((v52 & 1) == 0)
  {
    v60 = v0[161];
    sub_1D87A0E38(v55, v60, &qword_1ECA640E0);
    if (v54(v60, 1, v56) == 1)
    {
      v61 = v0[189];
      v62 = v0[186];
      v236 = v0[185];
      v303 = v0[169];
      v309 = v0[183];
      v315 = v0[149];
      v317 = v0[168];
      v290 = v0[80];
      v297 = v0[172];
      v63 = v0[77];
      v243 = v0[76];
      v247 = v0[78];
      v265 = v0[75];
      v270 = v0[74];
      v276 = v0[79];
      v283 = v0[73];
      v255 = v0[82];
      v260 = v0[72];
      v239 = v0[58];
      v64 = v0[51];
      v65 = v0[48];
      v66 = v0[43];
      sub_1D87A14E4(v0[161], &qword_1ECA640E0);
      v322 = 0;
      v323 = 0xE000000000000000;
      sub_1D8B16720();
      MEMORY[0x1DA71EFA0](0xD000000000000031, 0x80000001D8B42740);
      v67 = (*(v64 + 24))(v65, v64);
      MEMORY[0x1DA71EFA0](v67);

      MEMORY[0x1DA71EFA0](0x203A64692820, 0xE600000000000000);
      (*(v64 + 8))(v65, v64);
      sub_1D885E288(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v68 = sub_1D8B16B50();
      MEMORY[0x1DA71EFA0](v68);

      (*(v62 + 8))(v61, v236);
      MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
      v66[3] = v239;
      v66[4] = sub_1D881CF20(&qword_1ECA64350, &qword_1ECA64318);
      __swift_allocate_boxed_opaque_existential_1(v66);
      (*(v63 + 104))(v247, *MEMORY[0x1E69E8650], v243);
      sub_1D8B15EB0();
      (*(v63 + 8))(v247, v243);
      *v260 = 0;
      v260[1] = 0xE000000000000000;
      swift_storeEnumTagMultiPayload();
      sub_1D8B15EE0();
      (*(v270 + 8))(v265, v283);
      sub_1D8B15EF0();
      (*(v290 + 8))(v255, v276);
      sub_1D885E3C0(v297, type metadata accessor for BundleSelector.Output);
      goto LABEL_9;
    }

    v73 = v0[149];
    v74 = v0[143];
    v75 = v0[135];
    sub_1D885E538(v0[161], v0[153], type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    sub_1D87A0E38(v73, v74, &qword_1ECA64270);
    if (v11(v74, 1, v75) == 1)
    {
      v76 = v0[183];
      v304 = v0[172];
      v311 = v0[169];
      v77 = v0[153];
      v315 = v0[149];
      v317 = v0[168];
      v78 = v0[82];
      v79 = v0[78];
      v80 = v0[77];
      v266 = v0[75];
      v271 = v0[74];
      v277 = v0[79];
      v291 = v0[73];
      v298 = v0[80];
      v81 = v0[72];
      v256 = v0[76];
      v251 = v0[58];
      v82 = v0[43];
      sub_1D87A14E4(v0[143], &qword_1ECA64270);
      v322 = 0;
      v323 = 0xE000000000000000;
      sub_1D8B16720();
      MEMORY[0x1DA71EFA0](0xD000000000000013, 0x80000001D8B42780);
      v284 = v76;
      MEMORY[0x1DA71EFA0](*(v76 + 16), *(v76 + 24));
      MEMORY[0x1DA71EFA0](0xD000000000000017, 0x80000001D8B427A0);
      v83 = CVBundle.debugLabel.getter();
      MEMORY[0x1DA71EFA0](v83);

      MEMORY[0x1DA71EFA0](0x6465746F6F722820, 0xEE00206D6F726620);
      CVBundle.latestDetection.getter(v320);
      v320[1] = v320[0];
      CVDetection.detectionType.getter(&v321);

      v84 = CVDetection.DetectionType.description.getter();
      MEMORY[0x1DA71EFA0](v84);

      MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
      v85 = v322;
      v86 = v323;
      v82[3] = v251;
      v82[4] = sub_1D881CF20(&qword_1ECA64350, &qword_1ECA64318);
      __swift_allocate_boxed_opaque_existential_1(v82);
      (*(v80 + 104))(v79, *MEMORY[0x1E69E8650], v256);
      sub_1D8B15EB0();
      (*(v80 + 8))(v79, v256);
      *v81 = v85;
      v81[1] = v86;
      swift_storeEnumTagMultiPayload();
      sub_1D8B15EE0();
      (*(v271 + 8))(v266, v291);
      sub_1D8B15EF0();
      (*(v298 + 8))(v78, v277);
      sub_1D885E3C0(v77, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      sub_1D885E3C0(v304, type metadata accessor for BundleSelector.Output);
      sub_1D885E3C0(v311, type metadata accessor for ActionPin);
      v28 = v284;
      goto LABEL_10;
    }

    v98 = v0[153];
    v99 = v0[70];
    sub_1D885E538(v0[143], v0[138], type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    sub_1D885E420(v98, v99, type metadata accessor for CVBundle);
    if (qword_1EE0E54C0 != -1)
    {
      swift_once();
    }

    if (sub_1D8B0AAA4())
    {
      if (qword_1ECA62268 != -1)
      {
        swift_once();
      }

      v100 = qword_1ECA675B0;
      v0[215] = qword_1ECA675B0;

      return MEMORY[0x1EEE6DFA0](sub_1D8830538, v100, 0);
    }

    sub_1D885E420(v0[138], v0[137], type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v162 = v0[188];
      v163 = v0[186];
      v164 = v0[185];
      v165 = v0[137];
      v166 = v0[131];
      v167 = v0[114];
      v168 = v0[113];
      v169 = v0[83];
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E0);
      v171 = *(v170 + 48);
      v172 = (v165 + *(v170 + 64));
      v319 = *v172;
      v313 = v172[1];
      sub_1D885E538(v165, v166, type metadata accessor for BundleClassification.ClassificationType);
      v316 = *(v163 + 32);
      v316(v162, v165 + v171, v164);
      BundleClassification.ClassificationType.builtInAction.getter(v169);
      if ((*(v167 + 48))(v169, 1, v168) == 1)
      {
        v272 = v0[185];
        v279 = v0[188];
        v300 = v0[169];
        v306 = v0[183];
        v286 = v0[153];
        v293 = v0[172];
        v315 = v0[149];
        v317 = v0[168];
        v173 = v0[138];
        v262 = v0[131];
        v268 = v0[186];
        v174 = v0[83];
        v175 = v0[82];
        v252 = v0[80];
        v244 = v0[79];
        v233 = v0[78];
        v176 = v0[77];
        v231 = v0[76];
        v237 = v0[75];
        v240 = v0[74];
        v248 = v0[73];
        v177 = v0[72];
        v258 = v0[70];
        v228 = v0[58];
        v178 = v0[43];

        sub_1D87A14E4(v174, &qword_1ECA63188);
        sub_1D8B16720();
        v0[36] = 0;
        v0[37] = 0xE000000000000000;
        MEMORY[0x1DA71EFA0](0xD000000000000018, 0x80000001D8B42800);
        v230 = v173;
        sub_1D8B168A0();
        MEMORY[0x1DA71EFA0](0xD000000000000030, 0x80000001D8B42820);

        v322 = 0;
        v323 = 0xE000000000000000;
        sub_1D8B16720();
        v0[38] = 0;
        v0[39] = 0xE000000000000000;
        MEMORY[0x1DA71EFA0](0xD000000000000018, 0x80000001D8B42800);
        sub_1D8B168A0();
        MEMORY[0x1DA71EFA0](0xD000000000000030, 0x80000001D8B42820);
        v179 = v0[38];
        v180 = v0[39];
        v178[3] = v228;
        v178[4] = sub_1D881CF20(&qword_1ECA64350, &qword_1ECA64318);
        __swift_allocate_boxed_opaque_existential_1(v178);
        (*(v176 + 104))(v233, *MEMORY[0x1E69E8650], v231);
        sub_1D8B15EB0();
        (*(v176 + 8))(v233, v231);
        *v177 = v179;
        v177[1] = v180;
        swift_storeEnumTagMultiPayload();
        sub_1D8B15EE0();
        (*(v240 + 8))(v237, v248);
        sub_1D8B15EF0();
        (*(v252 + 8))(v175, v244);
        (*(v268 + 8))(v279, v272);
        sub_1D885E3C0(v262, type metadata accessor for BundleClassification.ClassificationType);
        sub_1D885E3C0(v258, type metadata accessor for CVBundle);
        sub_1D885E3C0(v230, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        sub_1D885E3C0(v286, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        sub_1D885E3C0(v293, type metadata accessor for BundleSelector.Output);
        sub_1D885E3C0(v300, type metadata accessor for ActionPin);
        v28 = v306;
        goto LABEL_10;
      }

      v194 = v0[189];
      v232 = v194;
      v224 = v0[188];
      v250 = v0[187];
      v195 = v0[186];
      v196 = v0[185];
      v197 = v0[158];
      v238 = v197;
      v225 = v0[153];
      v246 = v0[151];
      v223 = v0[131];
      v198 = v0[130];
      v234 = v198;
      v242 = v0[129];
      v235 = v0[128];
      v281 = v0[116];
      v288 = v0[115];
      v295 = v0[88];
      v199 = v0[70];
      v274 = v199;
      v200 = v0[69];
      v227 = v0[68];
      v229 = v200;
      v302 = v0[66];
      v308 = v0[67];
      v201 = v0[65];
      v264 = v201;
      v254 = v0[54];
      sub_1D885E538(v0[83], v281, type metadata accessor for BuiltInAction);
      v202 = sub_1D8B15EA0();
      (*(*(v202 - 8) + 56))(v201, 1, 1, v202);
      sub_1D885E420(v199, v200, type metadata accessor for CVBundle);
      sub_1D885E420(v223, v198, type metadata accessor for BundleClassification.ClassificationType);
      (*(v195 + 16))(v194, v224, v196);
      sub_1D885E420(v225, v197, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v226 = sub_1D885E288(&qword_1EE0E7928, type metadata accessor for ActionPredictor);
      v203 = (*(v308 + 80) + 32) & ~*(v308 + 80);
      v204 = (v227 + *(v235 + 80) + v203) & ~*(v235 + 80);
      v205 = (v242 + *(v195 + 80) + v204) & ~*(v195 + 80);
      v206 = (v250 + v205 + 7) & 0xFFFFFFFFFFFFFFF8;
      v207 = (v206 + 23) & 0xFFFFFFFFFFFFFFF8;
      v208 = (*(v246 + 80) + v207 + 8) & ~*(v246 + 80);
      v209 = swift_allocObject();
      *(v209 + 16) = v254;
      *(v209 + 24) = v226;
      sub_1D885E538(v229, v209 + v203, type metadata accessor for CVBundle);
      sub_1D885E538(v234, v209 + v204, type metadata accessor for BundleClassification.ClassificationType);
      v316(v209 + v205, v232, v196);
      v210 = (v209 + v206);
      *v210 = v319;
      v210[1] = v313;
      *(v209 + v207) = v254;
      sub_1D885E538(v238, v209 + v208, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      swift_retain_n();
      sub_1D8891CA0(0, 0, v264, &unk_1D8B23D00, v209);

      v0[217] = *(v254 + 112);
      sub_1D885E420(v281, v288, type metadata accessor for BuiltInAction);
      sub_1D885E420(v274, v295, type metadata accessor for CVBundle);
      (*(v308 + 56))(v295, 0, 1, v302);
      v211 = swift_task_alloc();
      v0[218] = v211;
      *v211 = v0;
      v211[1] = sub_1D8831B2C;
      v127 = v0[116];
LABEL_60:
      v143 = v0[113];
      v144 = v0[54];
      v145 = v0[51];
      v146 = v0[48];
      v147 = v0[44];
      v148 = &off_1F542BE48;
LABEL_61:

      return sub_1D885D45C(v147, v127, v144, v146, v143, v145, v148);
    }

    if (EnumCaseMultiPayload != 1)
    {
      v280 = v0[172];
      v287 = v0[169];
      v315 = v0[149];
      v317 = v0[168];
      v263 = v0[138];
      v269 = v0[153];
      v294 = v0[137];
      v301 = v0[183];
      v307 = v0[106];
      v314 = v0[105];
      v181 = v0[82];
      v182 = v0[78];
      v183 = v0[77];
      v184 = v0[76];
      v241 = v0[75];
      v245 = v0[79];
      v185 = v0[74];
      v249 = v0[73];
      v253 = v0[80];
      v186 = v0[72];
      v259 = v0[70];
      v187 = v0[58];
      v188 = v0[43];
      v273 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635C0) + 48);
      v188[3] = v187;
      v188[4] = sub_1D881CF20(&qword_1ECA64350, &qword_1ECA64318);
      __swift_allocate_boxed_opaque_existential_1(v188);
      (*(v183 + 104))(v182, *MEMORY[0x1E69E8650], v184);
      sub_1D8B15EB0();
      (*(v183 + 8))(v182, v184);
      *v186 = 0xD00000000000003FLL;
      v186[1] = 0x80000001D8B427C0;
      swift_storeEnumTagMultiPayload();
      sub_1D8B15EE0();
      (*(v185 + 8))(v241, v249);
      sub_1D8B15EF0();
      (*(v253 + 8))(v181, v245);
      sub_1D885E3C0(v259, type metadata accessor for CVBundle);
      sub_1D885E3C0(v263, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      sub_1D885E3C0(v269, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      sub_1D885E3C0(v280, type metadata accessor for BundleSelector.Output);
      sub_1D885E3C0(v287, type metadata accessor for ActionPin);
      sub_1D885E3C0(v301, type metadata accessor for ActionPin.Pill);
      sub_1D885E3C0(v294 + v273, type metadata accessor for ActionPin.PermanentPill);
      (*(v307 + 8))(v294, v314);
      goto LABEL_11;
    }

    v150 = v0[137];
    v151 = v0[111];
    v152 = v0[106];
    v153 = v0[105];
    v154 = v0[86];
    v155 = v0[61];
    v156 = v0[62];
    v157 = v0[47];
    v158 = *(v152 + 32);
    v0[220] = v158;
    v0[221] = (v152 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    (v158)(v151, v150, v153);
    sub_1D87A0E38(v157, v154, &qword_1ECA64340);
    if ((*(v156 + 48))(v154, 1, v155) == 1)
    {
      v159 = v0[106];
      v160 = v0[105];
      v161 = v0[64];
      sub_1D87A14E4(v0[86], &qword_1ECA64340);
      (*(v159 + 56))(v161, 1, 1, v160);
      goto LABEL_81;
    }

    sub_1D885E420(v0[86], v0[63], type metadata accessor for ExecutionParameter);
    v189 = swift_getEnumCaseMultiPayload();
    v190 = v0[106];
    v191 = v0[105];
    v192 = v0[64];
    if (v189 <= 1)
    {
      if (!v189)
      {
        v212 = v0[64];
        v213 = v0[105];
        sub_1D885E3C0(v0[63], type metadata accessor for ExecutionParameter);
        (*(v190 + 56))(v212, 1, 1, v213);
        goto LABEL_80;
      }
    }

    else
    {
      if (v189 == 2)
      {
        v214 = v0[64];
        v215 = v0[105];
        v158();
        (*(v190 + 56))(v214, 0, 1, v215);
LABEL_80:
        v216 = v0[106];
        v217 = v0[105];
        v218 = v0[64];
        sub_1D885E3C0(v0[86], type metadata accessor for ExecutionParameter);
        if ((*(v216 + 48))(v218, 1, v217) != 1)
        {
          (v158)(v0[110], v0[64], v0[105]);
LABEL_84:
          v222 = swift_task_alloc();
          v0[222] = v222;
          *v222 = v0;
          v222[1] = sub_1D8832560;
          v127 = v0[110];
          v143 = v0[105];
          v144 = v0[54];
          v145 = v0[51];
          v146 = v0[48];
          v147 = v0[44];
          v148 = &off_1F542B9D8;
          goto LABEL_61;
        }

LABEL_81:
        v219 = v0[106];
        v220 = v0[105];
        v221 = v0[64];
        (*(v219 + 16))(v0[110], v0[111], v220);
        if ((*(v219 + 48))(v221, 1, v220) != 1)
        {
          sub_1D87A14E4(v0[64], &qword_1ECA64320);
        }

        goto LABEL_84;
      }

      if (v189 == 3)
      {
        v193 = v0[63];
        (*(v190 + 56))(v192, 1, 1, v191);
        sub_1D885E3C0(v193, type metadata accessor for ExecutionParameter);
        goto LABEL_80;
      }
    }

    (*(v190 + 56))(v192, 1, 1, v191);
    goto LABEL_80;
  }

  v57 = v0[162];
  sub_1D87A0E38(v55, v57, &qword_1ECA640E0);
  v58 = v54(v57, 1, v56);
  v59 = v0[162];
  if (v58 == 1)
  {
    sub_1D87A14E4(v59, &qword_1ECA640E0);
    goto LABEL_46;
  }

  v69 = v0[149];
  v70 = v0[144];
  v71 = v0[135];
  sub_1D885E538(v59, v0[154], type metadata accessor for ActionPredictor.BundleActionPredictionResult);
  sub_1D87A0E38(v69, v70, &qword_1ECA64270);
  if (v11(v70, 1, v71) == 1)
  {
    v72 = v0[144];
    sub_1D885E3C0(v0[154], type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    sub_1D87A14E4(v72, &qword_1ECA64270);
    goto LABEL_46;
  }

  v87 = v0[140];
  v88 = v0[139];
  sub_1D885E538(v0[144], v87, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
  sub_1D885E420(v87, v88, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v101 = v0[154];
    v102 = v0[139];
    sub_1D885E3C0(v0[140], type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    sub_1D885E3C0(v101, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    sub_1D885E3C0(v102, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
LABEL_46:
    v103 = v0[114];
    v104 = v0[113];
    v105 = v0[100];
    sub_1D885E420(v0[183] + *(v0[176] + 36), v105, type metadata accessor for ActionPin.Pill.Source);
    v106 = *(v103 + 48);
    if (v106(v105, 1, v104) == 1)
    {
      v107 = v0[183];
      v108 = v0[178];
      sub_1D885E3C0(v0[100], type metadata accessor for ActionPin.Pill.Source);
      sub_1D885E420(v107, v108, type metadata accessor for ActionPin.Pill);
      if (qword_1EE0E8888 != -1)
      {
        swift_once();
      }

      v109 = v0[178];
      v110 = v0[113];
      v111 = v0[84];
      v112 = off_1EE0E8890;
      *(swift_task_alloc() + 16) = v109;
      sub_1D87ED90C(sub_1D886555C, v112, v111);

      v113 = v106(v111, 1, v110);
      v114 = v0[178];
      v115 = v0[114];
      v116 = v0[113];
      v117 = v0[85];
      v118 = v0[84];
      if (v113 == 1)
      {
        sub_1D87A14E4(v118, &qword_1ECA63188);
        sub_1D885E3C0(v114, type metadata accessor for ActionPin.Pill);
        (*(v115 + 56))(v117, 1, 1, v116);
      }

      else
      {
        sub_1D885E538(v118, v0[85], type metadata accessor for BuiltInAction);
        (*(v115 + 56))(v117, 0, 1, v116);
        sub_1D885E3C0(v114, type metadata accessor for ActionPin.Pill);
      }

      v128 = v0[85];
      if (v106(v128, 1, v0[113]) == 1)
      {
        v129 = v0[183];
        v305 = v0[172];
        v312 = v0[169];
        v315 = v0[149];
        v317 = v0[168];
        v130 = v0[82];
        v131 = v0[78];
        v132 = v0[77];
        v261 = v0[76];
        v267 = v0[75];
        v278 = v0[74];
        v285 = v0[79];
        v292 = v0[73];
        v299 = v0[80];
        v133 = v0[72];
        v257 = v0[58];
        v134 = v0[43];
        sub_1D87A14E4(v128, &qword_1ECA63188);
        sub_1D8B16720();

        v322 = 0xD00000000000001ELL;
        v323 = 0x80000001D8B42880;
        MEMORY[0x1DA71EFA0](*(v129 + 16), *(v129 + 24));
        MEMORY[0x1DA71EFA0](46, 0xE100000000000000);
        v134[3] = v257;
        v134[4] = sub_1D881CF20(&qword_1ECA64350, &qword_1ECA64318);
        __swift_allocate_boxed_opaque_existential_1(v134);
        (*(v132 + 104))(v131, *MEMORY[0x1E69E8650], v261);
        sub_1D8B15EB0();
        (*(v132 + 8))(v131, v261);
        *v133 = 0xD00000000000001ELL;
        v133[1] = 0x80000001D8B42880;
        swift_storeEnumTagMultiPayload();
        sub_1D8B15EE0();
        (*(v278 + 8))(v267, v292);
        sub_1D8B15EF0();
        (*(v299 + 8))(v130, v285);
        sub_1D885E3C0(v305, type metadata accessor for BundleSelector.Output);
        sub_1D885E3C0(v312, type metadata accessor for ActionPin);
        v28 = v129;
        goto LABEL_10;
      }

      v135 = v0[199];
      v136 = v0[168];
      v137 = v0[150];
      v138 = v0[118];
      v139 = v0[117];
      v140 = v0[54];
      sub_1D885E538(v128, v138, type metadata accessor for BuiltInAction);
      v0[212] = *(v140 + 112);
      sub_1D885E420(v138, v139, type metadata accessor for BuiltInAction);
      v141 = 1;
      if (!v135(v136, 1, v137))
      {
        sub_1D885E420(v0[168], v0[89], type metadata accessor for CVBundle);
        v141 = 0;
      }

      (*(v0[67] + 56))(v0[89], v141, 1, v0[66]);
      v142 = swift_task_alloc();
      v0[213] = v142;
      *v142 = v0;
      v142[1] = sub_1D882FBC8;
      v127 = v0[118];
    }

    else
    {
      v119 = v0[199];
      v120 = v0[168];
      v121 = v0[150];
      v122 = v0[120];
      v123 = v0[119];
      v124 = v0[54];
      sub_1D885E538(v0[100], v122, type metadata accessor for BuiltInAction);
      v0[209] = *(v124 + 112);
      sub_1D885E420(v122, v123, type metadata accessor for BuiltInAction);
      v125 = 1;
      if (!v119(v120, 1, v121))
      {
        sub_1D885E420(v0[168], v0[90], type metadata accessor for CVBundle);
        v125 = 0;
      }

      (*(v0[67] + 56))(v0[90], v125, 1, v0[66]);
      v126 = swift_task_alloc();
      v0[210] = v126;
      *v126 = v0;
      v126[1] = sub_1D882F258;
      v127 = v0[120];
    }

    goto LABEL_60;
  }

  v89 = v0[139];
  v90 = v0[112];
  v91 = v0[106];
  v92 = v0[105];
  v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635C0) + 48);
  (*(v91 + 32))(v90, v89, v92);
  sub_1D885E3C0(v89 + v93, type metadata accessor for ActionPin.PermanentPill);
  v94 = swift_task_alloc();
  v0[206] = v94;
  *v94 = v0;
  v94[1] = sub_1D882E268;
  v95 = v0[154];
  v96 = v0[112];
  v97 = v0[104];

  return sub_1D8837994(v97, v96, v95, 0);
}

uint64_t sub_1D882E268()
{
  v2 = *v1;
  *(*v1 + 1656) = v0;

  if (v0)
  {
    v3 = v2[54];
    v4 = sub_1D88332C8;
  }

  else
  {
    v5 = v2[54];
    (*(v2[102] + 8))(v2[104], v2[101]);
    v4 = sub_1D882E3A4;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D882E3A4()
{
  v1 = swift_task_alloc();
  v0[208] = v1;
  *v1 = v0;
  v1[1] = sub_1D882E440;
  v2 = v0[154];
  v3 = v0[112];

  return sub_1D8839E44(v3, v2);
}

uint64_t sub_1D882E440()
{
  v1 = *(*v0 + 432);

  return MEMORY[0x1EEE6DFA0](sub_1D882E550, v1, 0);
}

uint64_t sub_1D882E550()
{
  v1 = v0[154];
  v2 = v0[140];
  (*(v0[106] + 8))(v0[112], v0[105]);
  sub_1D885E3C0(v2, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
  sub_1D885E3C0(v1, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
  v3 = v0[114];
  v4 = v0[113];
  v5 = v0[100];
  sub_1D885E420(v0[183] + *(v0[176] + 36), v5, type metadata accessor for ActionPin.Pill.Source);
  v6 = *(v3 + 48);
  if (v6(v5, 1, v4) == 1)
  {
    v7 = v0[183];
    v8 = v0[178];
    sub_1D885E3C0(v0[100], type metadata accessor for ActionPin.Pill.Source);
    sub_1D885E420(v7, v8, type metadata accessor for ActionPin.Pill);
    if (qword_1EE0E8888 != -1)
    {
      swift_once();
    }

    v9 = v0[178];
    v10 = v0[113];
    v11 = v0[84];
    v12 = off_1EE0E8890;
    *(swift_task_alloc() + 16) = v9;
    sub_1D87ED90C(sub_1D886555C, v12, v11);

    v13 = v6(v11, 1, v10);
    v14 = v0[178];
    v15 = v0[114];
    v16 = v0[113];
    v17 = v0[85];
    v18 = v0[84];
    if (v13 == 1)
    {
      sub_1D87A14E4(v18, &qword_1ECA63188);
      sub_1D885E3C0(v14, type metadata accessor for ActionPin.Pill);
      (*(v15 + 56))(v17, 1, 1, v16);
    }

    else
    {
      sub_1D885E538(v18, v0[85], type metadata accessor for BuiltInAction);
      (*(v15 + 56))(v17, 0, 1, v16);
      sub_1D885E3C0(v14, type metadata accessor for ActionPin.Pill);
    }

    v28 = v0[85];
    if (v6(v28, 1, v0[113]) == 1)
    {
      v29 = v0[183];
      v57 = v0[172];
      v58 = v0[169];
      v59 = v0[149];
      v60 = v0[168];
      v30 = v0[82];
      v31 = v0[78];
      v32 = v0[77];
      v51 = v0[76];
      v52 = v0[75];
      v53 = v0[74];
      v54 = v0[79];
      v55 = v0[73];
      v56 = v0[80];
      v33 = v0[72];
      v50 = v0[58];
      v34 = v0[43];
      sub_1D87A14E4(v28, &qword_1ECA63188);
      sub_1D8B16720();

      MEMORY[0x1DA71EFA0](*(v29 + 16), *(v29 + 24));
      MEMORY[0x1DA71EFA0](46, 0xE100000000000000);
      v34[3] = v50;
      v34[4] = sub_1D881CF20(&qword_1ECA64350, &qword_1ECA64318);
      __swift_allocate_boxed_opaque_existential_1(v34);
      (*(v32 + 104))(v31, *MEMORY[0x1E69E8650], v51);
      sub_1D8B15EB0();
      (*(v32 + 8))(v31, v51);
      *v33 = 0xD00000000000001ELL;
      v33[1] = 0x80000001D8B42880;
      swift_storeEnumTagMultiPayload();
      sub_1D8B15EE0();
      (*(v53 + 8))(v52, v55);
      sub_1D8B15EF0();
      (*(v56 + 8))(v30, v54);
      sub_1D885E3C0(v57, type metadata accessor for BundleSelector.Output);
      sub_1D885E3C0(v58, type metadata accessor for ActionPin);
      sub_1D885E3C0(v29, type metadata accessor for ActionPin.Pill);
      sub_1D87A14E4(v59, &qword_1ECA64270);
      sub_1D87A14E4(v60, &qword_1ECA640E0);

      v35 = v0[1];

      return v35();
    }

    v37 = v0[199];
    v38 = v0[168];
    v39 = v0[150];
    v40 = v0[118];
    v41 = v0[117];
    v42 = v0[54];
    sub_1D885E538(v28, v40, type metadata accessor for BuiltInAction);
    v0[212] = *(v42 + 112);
    sub_1D885E420(v40, v41, type metadata accessor for BuiltInAction);
    v43 = 1;
    if (!v37(v38, 1, v39))
    {
      sub_1D885E420(v0[168], v0[89], type metadata accessor for CVBundle);
      v43 = 0;
    }

    (*(v0[67] + 56))(v0[89], v43, 1, v0[66]);
    v44 = swift_task_alloc();
    v0[213] = v44;
    *v44 = v0;
    v44[1] = sub_1D882FBC8;
    v27 = v0[118];
  }

  else
  {
    v19 = v0[199];
    v20 = v0[168];
    v21 = v0[150];
    v22 = v0[120];
    v23 = v0[119];
    v24 = v0[54];
    sub_1D885E538(v0[100], v22, type metadata accessor for BuiltInAction);
    v0[209] = *(v24 + 112);
    sub_1D885E420(v22, v23, type metadata accessor for BuiltInAction);
    v25 = 1;
    if (!v19(v20, 1, v21))
    {
      sub_1D885E420(v0[168], v0[90], type metadata accessor for CVBundle);
      v25 = 0;
    }

    (*(v0[67] + 56))(v0[90], v25, 1, v0[66]);
    v26 = swift_task_alloc();
    v0[210] = v26;
    *v26 = v0;
    v26[1] = sub_1D882F258;
    v27 = v0[120];
  }

  v45 = v0[113];
  v46 = v0[54];
  v47 = v0[51];
  v48 = v0[48];
  v49 = v0[44];

  return sub_1D885D45C(v49, v27, v46, v48, v45, v47, &off_1F542BE48);
}

uint64_t sub_1D882F258(uint64_t a1)
{
  v2 = *(*v1 + 432);
  *(*v1 + 1688) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D882F370, v2, 0);
}

uint64_t sub_1D882F370()
{
  v31 = v0;
  v23 = v0[211];
  v27 = v0[183];
  v1 = v0[172];
  v17 = v0[170];
  v28 = v0[149];
  v29 = v0[168];
  v25 = v0[120];
  v26 = v0[169];
  v21 = v0[119];
  v22 = v0[99];
  v2 = v0[95];
  v3 = v0[92];
  v24 = v0[91];
  v19 = v0[90];
  v4 = v0[87];
  v5 = v0[53];
  v6 = v0[50];
  v8 = v0[46];
  v7 = v0[47];
  v9 = v0[54] + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_visionProvider;
  v20 = v0[43];
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = *(v9 + 8);
  sub_1D87A0E38(v7, v4, &qword_1ECA64340);
  v11 = (v1 + *(v17 + 20));
  v12 = v11[3];
  v30[2] = v11[2];
  v30[3] = v12;
  v30[4] = v11[4];
  v13 = v11[1];
  v30[0] = *v11;
  v30[1] = v13;
  swift_unknownObjectRetain();
  v14 = sub_1D8884514();
  sub_1D8865584(v21, v19, v23, Strong, v10, v14 & 1, v8, v4, v2, v30);
  sub_1D88656A4(v2, v6, v5, v22);
  (*(v3 + 8))(v2, v24);
  v20[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64358);
  v20[4] = sub_1D881CF20(&qword_1ECA64360, &qword_1ECA64358);
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_1D881CF20(&qword_1ECA64368, &qword_1ECA64348);
  sub_1D8B168B0();
  sub_1D885E3C0(v25, type metadata accessor for BuiltInAction);
  sub_1D885E3C0(v1, type metadata accessor for BundleSelector.Output);
  sub_1D885E3C0(v26, type metadata accessor for ActionPin);
  sub_1D885E3C0(v27, type metadata accessor for ActionPin.Pill);
  sub_1D87A14E4(v28, &qword_1ECA64270);
  sub_1D87A14E4(v29, &qword_1ECA640E0);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D882FBC8(uint64_t a1)
{
  v2 = *(*v1 + 432);
  *(*v1 + 1712) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D882FCE0, v2, 0);
}

uint64_t sub_1D882FCE0()
{
  v31 = v0;
  v23 = v0[214];
  v27 = v0[183];
  v1 = v0[172];
  v17 = v0[170];
  v28 = v0[149];
  v29 = v0[168];
  v25 = v0[118];
  v26 = v0[169];
  v21 = v0[117];
  v22 = v0[98];
  v2 = v0[94];
  v3 = v0[92];
  v24 = v0[91];
  v19 = v0[89];
  v4 = v0[87];
  v5 = v0[53];
  v6 = v0[50];
  v8 = v0[46];
  v7 = v0[47];
  v9 = v0[54] + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_visionProvider;
  v20 = v0[43];
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = *(v9 + 8);
  sub_1D87A0E38(v7, v4, &qword_1ECA64340);
  v11 = (v1 + *(v17 + 20));
  v12 = v11[3];
  v30[2] = v11[2];
  v30[3] = v12;
  v30[4] = v11[4];
  v13 = v11[1];
  v30[0] = *v11;
  v30[1] = v13;
  swift_unknownObjectRetain();
  v14 = sub_1D8884514();
  sub_1D8865584(v21, v19, v23, Strong, v10, v14 & 1, v8, v4, v2, v30);
  sub_1D88656A4(v2, v6, v5, v22);
  (*(v3 + 8))(v2, v24);
  v20[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64358);
  v20[4] = sub_1D881CF20(&qword_1ECA64360, &qword_1ECA64358);
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_1D881CF20(&qword_1ECA64368, &qword_1ECA64348);
  sub_1D8B168B0();
  sub_1D885E3C0(v25, type metadata accessor for BuiltInAction);
  sub_1D885E3C0(v1, type metadata accessor for BundleSelector.Output);
  sub_1D885E3C0(v26, type metadata accessor for ActionPin);
  sub_1D885E3C0(v27, type metadata accessor for ActionPin.Pill);
  sub_1D87A14E4(v28, &qword_1ECA64270);
  sub_1D87A14E4(v29, &qword_1ECA640E0);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D8830538()
{
  v1 = v0[54];
  v0[216] = *(v0[215] + 160);
  return MEMORY[0x1EEE6DFA0](sub_1D8830560, v1, 0);
}

uint64_t sub_1D8830560()
{
  v1 = *(v0 + 1728);
  v2 = *(v0 + 1720);
  *(v0 + 64) = *(v0 + 528);
  *(v0 + 72) = sub_1D885E288(&qword_1ECA64370, type metadata accessor for CVBundle);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 40));
  CVBundle.sanitizeForJSON()(boxed_opaque_existential_1);
  *(v0 + 80) = 3;
  *(v0 + 16) = 0xD000000000000017;
  *(v0 + 24) = 0x80000001D8B42860;
  *(v0 + 32) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D883064C, v2, 0);
}

uint64_t sub_1D883064C()
{
  v1 = *(v0 + 432);
  sub_1D8A3B1F4(v0 + 16, 0x736E6F69746361, 0xE700000000000000);

  return MEMORY[0x1EEE6DFA0](sub_1D88306D0, v1, 0);
}

uint64_t sub_1D88306D0()
{
  sub_1D87DC9A0((v0 + 2));
  sub_1D885E420(v0[138], v0[137], type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[137];
      v3 = v0[111];
      v4 = v0[106];
      v5 = v0[105];
      v6 = v0[86];
      v7 = v0[61];
      v8 = v0[62];
      v9 = v0[47];
      v10 = *(v4 + 32);
      v0[220] = v10;
      v0[221] = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      (v10)(v3, v2, v5);
      sub_1D87A0E38(v9, v6, &qword_1ECA64340);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        v11 = v0[106];
        v12 = v0[105];
        v13 = v0[64];
        sub_1D87A14E4(v0[86], &qword_1ECA64340);
        (*(v11 + 56))(v13, 1, 1, v12);
        goto LABEL_22;
      }

      sub_1D885E420(v0[86], v0[63], type metadata accessor for ExecutionParameter);
      v43 = swift_getEnumCaseMultiPayload();
      v44 = v0[106];
      v45 = v0[105];
      v46 = v0[64];
      if (v43 <= 1)
      {
        if (!v43)
        {
          v73 = v0[64];
          v74 = v0[105];
          sub_1D885E3C0(v0[63], type metadata accessor for ExecutionParameter);
          (*(v44 + 56))(v73, 1, 1, v74);
          goto LABEL_21;
        }
      }

      else
      {
        if (v43 == 2)
        {
          v75 = v0[64];
          v76 = v0[105];
          v10();
          (*(v44 + 56))(v75, 0, 1, v76);
LABEL_21:
          v77 = v0[106];
          v78 = v0[105];
          v79 = v0[64];
          sub_1D885E3C0(v0[86], type metadata accessor for ExecutionParameter);
          if ((*(v77 + 48))(v79, 1, v78) != 1)
          {
            (v10)(v0[110], v0[64], v0[105]);
LABEL_25:
            v83 = swift_task_alloc();
            v0[222] = v83;
            *v83 = v0;
            v83[1] = sub_1D8832560;
            v66 = v0[110];
            v67 = v0[105];
            v68 = v0[54];
            v69 = v0[51];
            v70 = v0[48];
            v71 = v0[44];
            v72 = &off_1F542B9D8;
            goto LABEL_26;
          }

LABEL_22:
          v80 = v0[106];
          v81 = v0[105];
          v82 = v0[64];
          (*(v80 + 16))(v0[110], v0[111], v81);
          if ((*(v80 + 48))(v82, 1, v81) != 1)
          {
            sub_1D87A14E4(v0[64], &qword_1ECA64320);
          }

          goto LABEL_25;
        }

        if (v43 == 3)
        {
          v47 = v0[63];
          (*(v44 + 56))(v46, 1, 1, v45);
          sub_1D885E3C0(v47, type metadata accessor for ExecutionParameter);
          goto LABEL_21;
        }
      }

      (*(v44 + 56))(v46, 1, 1, v45);
      goto LABEL_21;
    }

    v122 = v0[172];
    v125 = v0[169];
    v139 = v0[149];
    v141 = v0[168];
    v114 = v0[138];
    v117 = v0[153];
    v128 = v0[137];
    v131 = v0[183];
    v134 = v0[106];
    v137 = v0[105];
    v33 = v0[82];
    v34 = v0[78];
    v35 = v0[77];
    v36 = v0[76];
    v100 = v0[75];
    v103 = v0[79];
    v37 = v0[74];
    v106 = v0[73];
    v109 = v0[80];
    v38 = v0[72];
    v112 = v0[70];
    v39 = v0[58];
    v40 = v0[43];
    v119 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635C0) + 48);
    v40[3] = v39;
    v40[4] = sub_1D881CF20(&qword_1ECA64350, &qword_1ECA64318);
    __swift_allocate_boxed_opaque_existential_1(v40);
    (*(v35 + 104))(v34, *MEMORY[0x1E69E8650], v36);
    sub_1D8B15EB0();
    (*(v35 + 8))(v34, v36);
    *v38 = 0xD00000000000003FLL;
    v38[1] = 0x80000001D8B427C0;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();
    (*(v37 + 8))(v100, v106);
    sub_1D8B15EF0();
    (*(v109 + 8))(v33, v103);
    sub_1D885E3C0(v112, type metadata accessor for CVBundle);
    sub_1D885E3C0(v114, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    sub_1D885E3C0(v117, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    sub_1D885E3C0(v122, type metadata accessor for BundleSelector.Output);
    sub_1D885E3C0(v125, type metadata accessor for ActionPin);
    sub_1D885E3C0(v131, type metadata accessor for ActionPin.Pill);
    sub_1D885E3C0(v128 + v119, type metadata accessor for ActionPin.PermanentPill);
    (*(v134 + 8))(v128, v137);
  }

  else
  {
    v14 = v0[188];
    v15 = v0[186];
    v16 = v0[185];
    v17 = v0[137];
    v18 = v0[131];
    v19 = v0[114];
    v20 = v0[113];
    v21 = v0[83];
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E0);
    v23 = *(v22 + 48);
    v24 = (v17 + *(v22 + 64));
    v140 = *v24;
    v136 = v24[1];
    sub_1D885E538(v17, v18, type metadata accessor for BundleClassification.ClassificationType);
    v138 = *(v15 + 32);
    v138(v14, v17 + v23, v16);
    BundleClassification.ClassificationType.builtInAction.getter(v21);
    if ((*(v19 + 48))(v21, 1, v20) != 1)
    {
      v48 = v0[189];
      v93 = v48;
      v85 = v0[188];
      v107 = v0[187];
      v49 = v0[186];
      v50 = v0[185];
      v51 = v0[158];
      v98 = v51;
      v86 = v0[153];
      v104 = v0[151];
      v84 = v0[131];
      v52 = v0[130];
      v101 = v0[129];
      v95 = v52;
      v96 = v0[128];
      v123 = v0[116];
      v126 = v0[115];
      v129 = v0[88];
      v53 = v0[70];
      v120 = v53;
      v54 = v0[69];
      v88 = v0[68];
      v90 = v54;
      v132 = v0[66];
      v135 = v0[67];
      v55 = v0[65];
      v115 = v55;
      v110 = v0[54];
      sub_1D885E538(v0[83], v123, type metadata accessor for BuiltInAction);
      v56 = sub_1D8B15EA0();
      (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
      sub_1D885E420(v53, v54, type metadata accessor for CVBundle);
      sub_1D885E420(v84, v52, type metadata accessor for BundleClassification.ClassificationType);
      (*(v49 + 16))(v48, v85, v50);
      sub_1D885E420(v86, v51, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v87 = sub_1D885E288(&qword_1EE0E7928, type metadata accessor for ActionPredictor);
      v57 = (*(v135 + 80) + 32) & ~*(v135 + 80);
      v58 = (v88 + *(v96 + 80) + v57) & ~*(v96 + 80);
      v59 = (v101 + *(v49 + 80) + v58) & ~*(v49 + 80);
      v60 = (v107 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
      v61 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
      v62 = (*(v104 + 80) + v61 + 8) & ~*(v104 + 80);
      v63 = swift_allocObject();
      *(v63 + 16) = v110;
      *(v63 + 24) = v87;
      sub_1D885E538(v90, v63 + v57, type metadata accessor for CVBundle);
      sub_1D885E538(v95, v63 + v58, type metadata accessor for BundleClassification.ClassificationType);
      v138(v63 + v59, v93, v50);
      v64 = (v63 + v60);
      *v64 = v140;
      v64[1] = v136;
      *(v63 + v61) = v110;
      sub_1D885E538(v98, v63 + v62, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      swift_retain_n();
      sub_1D8891CA0(0, 0, v115, &unk_1D8B23D00, v63);

      v0[217] = *(v110 + 112);
      sub_1D885E420(v123, v126, type metadata accessor for BuiltInAction);
      sub_1D885E420(v120, v129, type metadata accessor for CVBundle);
      (*(v135 + 56))(v129, 0, 1, v132);
      v65 = swift_task_alloc();
      v0[218] = v65;
      *v65 = v0;
      v65[1] = sub_1D8831B2C;
      v66 = v0[116];
      v67 = v0[113];
      v68 = v0[54];
      v69 = v0[51];
      v70 = v0[48];
      v71 = v0[44];
      v72 = &off_1F542BE48;
LABEL_26:

      return sub_1D885D45C(v71, v66, v68, v70, v67, v69, v72);
    }

    v118 = v0[185];
    v121 = v0[188];
    v130 = v0[169];
    v133 = v0[183];
    v124 = v0[153];
    v127 = v0[172];
    v139 = v0[149];
    v141 = v0[168];
    v25 = v0[138];
    v113 = v0[131];
    v116 = v0[186];
    v26 = v0[83];
    v27 = v0[82];
    v28 = v0[77];
    v92 = v0[76];
    v94 = v0[78];
    v99 = v0[74];
    v102 = v0[79];
    v105 = v0[73];
    v108 = v0[80];
    v29 = v0[72];
    v97 = v0[75];
    v111 = v0[70];
    v89 = v0[58];
    v30 = v0[43];

    sub_1D87A14E4(v26, &qword_1ECA63188);
    sub_1D8B16720();
    v0[36] = 0;
    v0[37] = 0xE000000000000000;
    MEMORY[0x1DA71EFA0](0xD000000000000018, 0x80000001D8B42800);
    v91 = v25;
    sub_1D8B168A0();
    MEMORY[0x1DA71EFA0](0xD000000000000030, 0x80000001D8B42820);

    sub_1D8B16720();
    v0[38] = 0;
    v0[39] = 0xE000000000000000;
    MEMORY[0x1DA71EFA0](0xD000000000000018, 0x80000001D8B42800);
    sub_1D8B168A0();
    MEMORY[0x1DA71EFA0](0xD000000000000030, 0x80000001D8B42820);
    v31 = v0[38];
    v32 = v0[39];
    v30[3] = v89;
    v30[4] = sub_1D881CF20(&qword_1ECA64350, &qword_1ECA64318);
    __swift_allocate_boxed_opaque_existential_1(v30);
    (*(v28 + 104))(v94, *MEMORY[0x1E69E8650], v92);
    sub_1D8B15EB0();
    (*(v28 + 8))(v94, v92);
    *v29 = v31;
    v29[1] = v32;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();
    (*(v99 + 8))(v97, v105);
    sub_1D8B15EF0();
    (*(v108 + 8))(v27, v102);
    (*(v116 + 8))(v121, v118);
    sub_1D885E3C0(v113, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D885E3C0(v111, type metadata accessor for CVBundle);
    sub_1D885E3C0(v91, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    sub_1D885E3C0(v124, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    sub_1D885E3C0(v127, type metadata accessor for BundleSelector.Output);
    sub_1D885E3C0(v130, type metadata accessor for ActionPin);
    sub_1D885E3C0(v133, type metadata accessor for ActionPin.Pill);
  }

  sub_1D87A14E4(v139, &qword_1ECA64270);
  sub_1D87A14E4(v141, &qword_1ECA640E0);

  v41 = v0[1];

  return v41();
}